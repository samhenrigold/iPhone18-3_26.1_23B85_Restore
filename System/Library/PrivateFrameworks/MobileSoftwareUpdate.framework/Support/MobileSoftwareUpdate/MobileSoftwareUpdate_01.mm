__CFDictionary *create_embedded_storage_service_query_dict(char *cStr)
{
  v1 = CFStringCreateWithCString(kCFAllocatorDefault, cStr, 0x8000100u);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (Mutable)
  {
    v4 = Mutable;
    CFDictionaryAddValue(Mutable, v2, kCFBooleanTrue);
    v5 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    v6 = v5;
    if (v5)
    {
      CFDictionaryAddValue(v5, @"IOPropertyMatch", v4);
    }

    CFRelease(v2);
  }

  else
  {
    v6 = 0;
    v4 = v2;
  }

  CFRelease(v4);
  return v6;
}

uint64_t ramrod_log_msg_to_fd(uint64_t a1, uint64_t a2, int __fd)
{
  result = 0;
  if (a1 && a2)
  {
    v7 = 0;
    while (1)
    {
      v8 = write(__fd, (a1 + v7), a2 - v7);
      if (v8 == -1)
      {
        break;
      }

      v7 += v8;
      if (v7 == a2)
      {
        return 0;
      }
    }

    return *__error();
  }

  return result;
}

uint64_t ramrod_remove_log_fd_no_locking(int a1)
{
  valuePtr = a1;
  memset(&v16, 0, sizeof(v16));
  v1 = fstat(a1, &v16);
  v2 = v16.st_mode <= -1 && v1 == 0;
  v3 = &log_fds;
  if (v2)
  {
    v3 = &log_fds_fileonly;
  }

  v4 = *v3;
  if (!*v3)
  {
    v12 = __stderrp;
    v13 = "can't remove logging fd since none were added";
    v14 = 45;
LABEL_13:
    fwrite(v13, v14, 1uLL, v12);
    return 0xFFFFFFFFLL;
  }

  v5 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &valuePtr);
  if (!v5)
  {
    v12 = __stderrp;
    v13 = "failed to convert fd to number";
    v14 = 30;
    goto LABEL_13;
  }

  v6 = v5;
  CFSetRemoveValue(v4, v5);
  if (close(valuePtr))
  {
    v7 = __error();
    v8 = *v7;
    v9 = __stderrp;
    v10 = valuePtr;
    v11 = strerror(*v7);
    fprintf(v9, "failed to close file descriptor '%d', error:%s", v10, v11);
  }

  else
  {
    v8 = 0;
  }

  CFRelease(v6);
  return v8;
}

uint64_t ramrod_log_msg_to_all_fds(uint64_t a1, uint64_t a2)
{
  context = 0u;
  *theArray = 0u;
  valuePtr = -1;
  pthread_mutex_lock(&log_fds_mutex);
  if (a1 && __PAIR128__(log_fds, log_fds_fileonly) != 0)
  {
    *&context = a1;
    *(&context + 1) = a2;
    theArray[0] = 0;
    LOBYTE(theArray[1]) = 0;
    if (log_fds)
    {
      CFSetApplyFunction(log_fds, ramrod_log_to_fd_set_applier, &context);
    }

    ramrod_log_msg_to_all_fds_bytes_to_sync += a2;
    if (ramrod_log_msg_to_all_fds_bytes_to_sync)
    {
      LOBYTE(theArray[1]) = 1;
      ramrod_log_msg_to_all_fds_bytes_to_sync = 0;
    }

    if (log_fds_fileonly)
    {
      CFSetApplyFunction(log_fds_fileonly, ramrod_log_to_fd_set_applier, &context);
    }

    if (theArray[0])
    {
      Count = CFArrayGetCount(theArray[0]);
      if (Count >= 1)
      {
        v5 = Count;
        for (i = 0; i != v5; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(theArray[0], i);
          if (CFNumberGetValue(ValueAtIndex, kCFNumberIntType, &valuePtr))
          {
            ramrod_remove_log_fd_no_locking(valuePtr);
          }

          else
          {
            fwrite("Failed to convert CFNumberRef into int value\n", 0x2DuLL, 1uLL, __stderrp);
          }
        }
      }

      CFRelease(theArray[0]);
    }
  }

  pthread_mutex_unlock(&log_fds_mutex);
  return 0;
}

void ramrod_log_to_fd_set_applier(const void *a1, uint64_t a2)
{
  valuePtr = -1;
  if (a1)
  {
    if (a2)
    {
      if (*a2)
      {
        if (CFNumberGetValue(a1, kCFNumberIntType, &valuePtr))
        {
          if (ramrod_log_msg_to_fd(*a2, *(a2 + 8), valuePtr))
          {
            fprintf(__stderrp, "Removing file descriptor %d since it failed to be written to.\n", valuePtr);
            Mutable = *(a2 + 16);
            if (!Mutable)
            {
              Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 1, &kCFTypeArrayCallBacks);
              *(a2 + 16) = Mutable;
            }

            CFArrayAppendValue(Mutable, a1);
          }

          else if (*(a2 + 24) == 1)
          {
            fsync(valuePtr);
          }
        }

        else
        {
          fwrite("Failed to convert num to int\n", 0x1DuLL, 1uLL, __stderrp);
        }
      }

      return;
    }

    v5 = __stderrp;
    v6 = "Missing logging context.\n";
    v7 = 25;
  }

  else
  {
    v5 = __stderrp;
    v6 = "NULL fd num in fd set, weird.\n";
    v7 = 30;
  }

  fwrite(v6, v7, 1uLL, v5);
}

void ramrod_log_msg_cf(CFStringRef format, ...)
{
  va_start(va, format);
  v1 = CFStringCreateWithFormatAndArguments(kCFAllocatorDefault, 0, format, va);
  if (v1)
  {
    v2 = v1;
    if (CFStringGetCStringPtr(v1, 0x8000100u))
    {
      ramrod_log_msg("%s");
    }

    else
    {
      Length = CFStringGetLength(v2);
      MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
      v5 = malloc(MaximumSizeForEncoding + 1);
      if (v5)
      {
        v6 = v5;
        if (CFStringGetCString(v2, v5, MaximumSizeForEncoding + 1, 0x8000100u))
        {
          ramrod_log_msg("%s");
        }

        else
        {
          ramrod_log_msg("(Failed to alloc and convert log message)\n");
        }

        free(v6);
      }

      else
      {
        ramrod_log_msg("(Failed to alloc and convert log message)\n");
      }
    }

    CFRelease(v2);
  }

  else
  {
    ramrod_log_msg("(Failed to format log message)\n");
  }
}

void do_ramrod_log_msg(int a1, const char *a2, va_list a3)
{
  __s = 0;
  if (vasprintf(&__s, a2, a3) != -1)
  {
    pthread_mutex_lock(&log_mutex);
    if (a1 == 1)
    {
      fputs(__s, __stdoutp);
      if (_log_handler)
      {
        _log_handler(__s);
      }
    }

    v4 = strlen(__s);
    ramrod_log_msg_to_all_fds(__s, v4);
    if ((_log_buffermsgs & 1) == 0)
    {
      goto LABEL_23;
    }

    v5 = log_buffer;
    if (!log_buffer)
    {
      v5 = malloc(0x100000uLL);
      log_buffer = v5;
      if (!v5)
      {
        fprintf(__stderrp, "unable to allocate %lu bytes for log buffer\n", 0x100000);
LABEL_23:
        pthread_mutex_unlock(&log_mutex);
        goto LABEL_24;
      }

      log_buffer_head = v5;
      log_buffer_tail = v5;
    }

    v6 = *__s;
    if (*__s)
    {
      v7 = v5 + 0x100000;
      v8 = log_buffer_tail;
      v9 = log_buffer_head;
      v10 = __s + 1;
      do
      {
        *v8 = v6;
        if (v8 + 1 == v7)
        {
          v8 = v5;
        }

        else
        {
          ++v8;
        }

        log_buffer_tail = v8;
        if (v9 == v8)
        {
          if ((v9 + 1) == v7)
          {
            v9 = v5;
          }

          else
          {
            ++v9;
          }

          log_buffer_head = v9;
        }

        v11 = *v10++;
        v6 = v11;
      }

      while (v11);
    }

    goto LABEL_23;
  }

  fwrite("unable to allocate storage for log message\n", 0x2BuLL, 1uLL, __stderrp);
LABEL_24:
  free(__s);
}

uint64_t wait_for_device(char *a1, char *a2, size_t a3, CFErrorRef *a4)
{
  ramrod_log_msg("entering %s: '%s'\n", "wait_for_device", a1);
  if (!a1)
  {
    wait_for_device_cold_4(a4, v8, v9, v10, v11, v12, v13, v14);
    return 0;
  }

  if (!a2)
  {
    wait_for_device_cold_3(a4, v8, v9, v10, v11, v12, v13, v14);
    return 0;
  }

  embedded_storage_service_query_dict = create_embedded_storage_service_query_dict(a1);
  if (!embedded_storage_service_query_dict)
  {
    wait_for_device_cold_2(a4, v16, v17, v18, v19, v20, v21, v22);
    return 0;
  }

  v23 = wait_for_io_service_matching_dict(embedded_storage_service_query_dict, 0x1Eu);
  if (!v23)
  {
    wait_for_device_cold_1(a4, a1, v24, v25, v26, v27, v28, v29);
    return 0;
  }

  v30 = v23;
  v68 = a4;
  IOObjectRetain(v23);
  v31 = v30;
  do
  {
    iterator.st_dev = 0;
    if (IORegistryEntryGetChildIterator(v31, "IOService", &iterator))
    {
      ramrod_log_msg("Could not create child iterator\n");
LABEL_30:
      st_dev = v31;
LABEL_35:
      IOObjectRelease(st_dev);
      ramrod_create_error_cf(v68, @"RamrodErrorDomain", 4, 0, @"%s: failed to lookup whole node for IO service for %s", v56, v57, v58, "wait_for_device");
      v59 = 0;
      goto LABEL_36;
    }

    v32 = IOIteratorNext(iterator.st_dev);
    v33 = 0;
    if (!v32)
    {
      st_dev = iterator.st_dev;
LABEL_29:
      IOObjectRelease(st_dev);
      ramrod_log_msg("Found %d child nodes (expected 1)\n");
      goto LABEL_30;
    }

    st_dev = 0;
    do
    {
      if (st_dev)
      {
        IOObjectRelease(v32);
      }

      else
      {
        st_dev = v32;
      }

      v32 = IOIteratorNext(iterator.st_dev);
      ++v33;
    }

    while (v32);
    IOObjectRelease(iterator.st_dev);
    if (v33 != 1)
    {
      goto LABEL_29;
    }

    IOObjectRelease(v31);
    v31 = st_dev;
  }

  while (!IOObjectConformsTo(st_dev, "IOMedia"));
  CFProperty = IORegistryEntryCreateCFProperty(st_dev, @"Whole", kCFAllocatorDefault, 0);
  v36 = CFProperty;
  if (!CFProperty)
  {
    ramrod_log_msg("Did not find Whole property on IOMedia class\n");
LABEL_34:
    CFRelease(v36);
    goto LABEL_35;
  }

  v37 = CFGetTypeID(CFProperty);
  if (v37 != CFBooleanGetTypeID())
  {
    ramrod_log_msg("Expected Whole to be BOOLean\n");
    goto LABEL_34;
  }

  if (!CFBooleanGetValue(v36))
  {
    ramrod_log_msg("Expected Whole=true\n");
    goto LABEL_34;
  }

  CFRelease(v36);
  v38 = IORegistryEntryCreateCFProperty(st_dev, @"BSD Name", kCFAllocatorDefault, 0);
  if (v38)
  {
    v42 = v38;
    v43 = CFGetTypeID(v38);
    if (v43 == CFStringGetTypeID())
    {
      strlcpy(a2, "/dev/", a3);
      v47 = strlen(a2);
      if (CFStringGetCString(v42, &a2[v47], a3 - v47, 0x8000100u))
      {
        ramrod_log_msg("Using device path %s for %s\n", a2, a1);
        v51 = -10;
        while (1)
        {
          memset(&iterator, 0, sizeof(iterator));
          if (!stat(a2, &iterator))
          {
            v59 = 1;
            goto LABEL_45;
          }

          if (*__error() != 2)
          {
            break;
          }

          sleep(3u);
          if (__CFADD__(v51++, 1))
          {
            goto LABEL_43;
          }
        }

        v61 = __error();
        v62 = strerror(*v61);
        ramrod_log_msg("stat error while waiting for device '%s': %s\n", a2, v62);
        v63 = *__error();
        v64 = __error();
        strerror(*v64);
        ramrod_create_error_cf(v68, kCFErrorDomainPOSIX, v63, 0, @"%s: stat error while waiting for device '%s': %s", v65, v66, v67, "wait_for_device");
LABEL_43:
        ramrod_create_error_cf(v68, @"RamrodErrorDomain", 4, 0, @"%s: timeout waiting for %s", v52, v53, v54, "wait_for_device");
      }

      else
      {
        ramrod_create_error_cf(v68, @"RamrodErrorDomain", 5, 0, @"%s: failed to create C string from BSD name", v48, v49, v50, "wait_for_device");
      }
    }

    else
    {
      ramrod_create_error_cf(v68, @"RamrodErrorDomain", 3, 0, @"%s: returnbed BSD device name for service %s is wrong type", v44, v45, v46, "wait_for_device");
    }

    v59 = 0;
LABEL_45:
    CFRelease(v42);
  }

  else
  {
    ramrod_create_error_cf(v68, @"RamrodErrorDomain", 4, 0, @"%s: no BSD device name for service %s", v39, v40, v41, "wait_for_device");
    v59 = 0;
  }

  IOObjectRelease(st_dev);
LABEL_36:
  IOObjectRelease(v30);
  return v59;
}

uint64_t ramrod_probe_media_internal(uint64_t a1, CFTypeRef *a2)
{
  cf = 0;
  iterator = 0;
  ramrod_log_msg("entering %s\n", "ramrod_probe_media_internal");
  storage_device_node_path = 0;
  apfs_container_device_node_path_0 = 0;
  apfs_recovery_os_container_device_node_path = 0;
  system_device_node_path_0 = 0;
  data_device_node_path_0 = 0;
  user_device_node_path = 0;
  update_device_node_path = 0;
  baseband_data_partition_device_node_path = 0;
  log_partition_device_node_path = 0;
  xart_partition_node_path = 0;
  hardware_partition_node_path = 0;
  scratch_partition_node_path = 0;
  preboot_partition_device_node_path_0 = 0;
  recovery_os_volume_device_node_path = 0;
  iboot_system_container_device_node_path = 0;
  recovery_preboot_partition_device_node_path = 0;
  isc_preboot_partition_device_node_path = 0;
  isc_recovery_os_volume_device_node_path = 0;
  paired_recovery_os_volume_device_node_path = 0;
  if (additional_encrypted_volume_node_paths)
  {
    CFRelease(additional_encrypted_volume_node_paths);
    additional_encrypted_volume_node_paths = 0;
  }

  if (additional_eds_volume_node_paths)
  {
    CFRelease(additional_eds_volume_node_paths);
    additional_eds_volume_node_paths = 0;
  }

  Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  if (!Mutable)
  {
    ramrod_probe_media_internal_cold_2(&cf, v4, v5, v6, v7, v8, v9, v10);
    v19 = 0;
    goto LABEL_12;
  }

  v19 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  if (!v19)
  {
    ramrod_probe_media_internal_cold_1(&cf, v12, v13, v14, v15, v16, v17, v18);
    goto LABEL_12;
  }

  if (!wait_for_device("EmbeddedDeviceTypeRoot", &storage_device_node_path, 0x20uLL, &cf))
  {
    ramrod_log_msg("Unable to find storage device node for service named: %s", "EmbeddedDeviceTypeRoot");
LABEL_12:
    v27 = 0;
    v22 = 0;
    goto LABEL_13;
  }

  v20 = IOBSDNameMatching(kIOMasterPortDefault, 0, byte_100057CED);
  MatchingService = IOServiceGetMatchingService(kIOMasterPortDefault, v20);
  v22 = MatchingService;
  if (!MatchingService)
  {
    ramrod_log_msg("unable to find service for %s\n", byte_100057CED);
LABEL_19:
    v27 = 0;
    goto LABEL_20;
  }

  IOServiceWaitQuiet(MatchingService, 0);
  v23 = IORegistryEntryCreateIterator(v22, "IOService", 1u, &iterator);
  if (v23)
  {
    ramrod_create_error_cf(&cf, kCFErrorDomainMach, v23, 0, @"%s: unable to create child iterator", v24, v25, v26, "ramrod_probe_media_internal");
    v27 = 0;
LABEL_13:
    v28 = 0;
    goto LABEL_14;
  }

  v95 = a1;
  v31 = IOIteratorNext(iterator);
  if (v31)
  {
    v27 = v31;
    LOBYTE(v32) = 0;
    v96 = 0;
    v33 = 0;
    v83 = 0;
    v84 = 0;
    v85 = 0;
    v86 = 0;
    v87 = 0;
    v88 = 0;
    v89 = 0;
    v90 = 0;
    v91 = 0;
    v92 = 0;
    v93 = 0;
    __s2 = 0;
    do
    {
      if (!IOObjectConformsTo(v27, "IOMedia"))
      {
        if (IOObjectConformsTo(v27, "IOPartitionScheme"))
        {
          if (IOObjectConformsTo(v27, "IOGUIDPartitionScheme"))
          {
            ramrod_log_msg("device partitioning scheme is GPT\n");
            v93 = "Data";
            __s2 = "System";
            v91 = "Update";
            v92 = "User";
            v89 = "Logs";
            v90 = "Baseband Data";
            v87 = "Hardware";
            v88 = "xART";
            v86 = "Scratch";
          }

          else
          {
            if (!IOObjectConformsTo(v27, "AppleAPFSContainer"))
            {
              ramrod_create_error_cf(&cf, kCFErrorDomainMach, -536870201, 0, @"%s: unrecognized partitioning scheme", v61, v62, v63, "ramrod_probe_media_internal");
              goto LABEL_13;
            }

            ramrod_log_msg("device is APFS formatted\n");
            v93 = "Data";
            __s2 = "System";
            v91 = "Update";
            v92 = "User";
            v89 = "Logs";
            v90 = "Baseband Data";
            v87 = "Hardware";
            v88 = "xART";
            v85 = "Preboot";
            v86 = "Scratch";
            v83 = "Recovery";
            v84 = "iSCPreboot";
          }
        }

        goto LABEL_124;
      }

      properties = 0;
      memset(name, 0, sizeof(name));
      v34 = IORegistryEntryGetName(v27, name);
      if (v34)
      {
        v75 = kCFErrorDomainMach;
        v76 = v34;
        v77 = @"%s: unable to get name for media registry entry";
LABEL_169:
        ramrod_create_error_cf(&cf, v75, v76, 0, v77, v35, v36, v37, "ramrod_probe_media_internal");
        goto LABEL_170;
      }

      v38 = IORegistryEntryCreateCFProperties(v27, &properties, kCFAllocatorDefault, 0);
      if (v38)
      {
        v75 = kCFErrorDomainMach;
        v76 = v38;
        v77 = @"%s: unable to get properties for media registry entry";
        goto LABEL_169;
      }

      if (v32)
      {
        v32 = 1;
      }

      else
      {
        *buffer = 0u;
        v101 = 0u;
        Value = CFDictionaryGetValue(properties, @"BSD Name");
        v32 = Value && (v40 = Value, v41 = CFGetTypeID(Value), v41 == CFStringGetTypeID()) && CFStringGetCString(v40, buffer, 32, 0x600u) && (v42 = strlen(byte_100057CED), !strncmp(buffer, byte_100057CED, v42)) && strcmp("s1s1", &buffer[v42]) == 0;
      }

      v43 = CFDictionaryGetValue(properties, @"Content Hint");
      if (!v43 || (v44 = v43, !CFEqual(v43, @"7C3457EF-0000-11AA-AA11-00306543ECAC")) && !CFEqual(v44, @"52637672-7900-11AA-AA11-00306543ECAC") && !CFEqual(v44, @"69646961-6700-11AA-AA11-00306543ECAC") && !CFEqual(v44, @"EF57347C-0000-11AA-AA11-00306543ECAC"))
      {
        if (__s2 && (!strcmp(name, __s2) || strstr(name, "OS") || strstr(name, "System")))
        {
          if (!v32)
          {
            ramrod_log_msg("found system volume not at %ss1s1: %s\n");
          }

          goto LABEL_84;
        }

        if (v93 && !strcmp(name, v93))
        {
          v50 = &data_device_node_path_0;
          goto LABEL_85;
        }

        if (v92 && !strcmp(name, v92))
        {
          v50 = &user_device_node_path;
          goto LABEL_85;
        }

        if (v91 && !strcmp(name, v91))
        {
          v50 = &update_device_node_path;
          goto LABEL_85;
        }

        if (v90 && !strcmp(name, v90))
        {
          v50 = &baseband_data_partition_device_node_path;
          goto LABEL_85;
        }

        if (v89 && !strcmp(name, v89))
        {
          v50 = &log_partition_device_node_path;
          goto LABEL_85;
        }

        if (v88 && !strcmp(name, v88))
        {
          if (!xart_partition_node_path || !ramrod_should_have_xart_partition())
          {
            v51 = 0;
            theArray = &xart_partition_node_path;
            goto LABEL_87;
          }

          v79 = kCFErrorDomainMach;
LABEL_178:
          v80 = @"%s: encountered second '%s' partition; original was '%s'";
LABEL_179:
          ramrod_create_error_cf(&cf, v79, -536870911, 0, v80, v47, v48, v49, "ramrod_probe_media_internal");
LABEL_173:
          v78 = 0;
LABEL_174:
          v28 = 0;
          if (v95 >= 1 && v78)
          {
            sleep(1u);
            v28 = ramrod_probe_media_internal(v95 - 1, 0);
          }

LABEL_14:
          v29 = cf;
          if (a2 && !v28 && cf)
          {
            v28 = 0;
            *a2 = CFRetain(cf);
            goto LABEL_21;
          }

          goto LABEL_22;
        }

        if (v87 && !strcmp(name, v87))
        {
          v50 = &hardware_partition_node_path;
          goto LABEL_85;
        }

        if (v86 && !strcmp(name, v86))
        {
          v50 = &scratch_partition_node_path;
          goto LABEL_85;
        }

        if (v85 && !strcmp(name, v85))
        {
          if (v96 != 1)
          {
            if (v96 == 2)
            {
              ramrod_log_msg("Captured preboot partition on main OS container %d\n", 2);
              v50 = &preboot_partition_device_node_path_0;
            }

            else
            {
              if (v96 != 3)
              {
                goto LABEL_155;
              }

              ramrod_log_msg("Captured preboot partition on recovery container %d\n", 3);
              v50 = &recovery_preboot_partition_device_node_path;
            }

            goto LABEL_85;
          }

          v71 = 1;
        }

        else
        {
          if (!v84 || strcmp(name, v84))
          {
            if (v83 && !strcmp(name, v83))
            {
              v50 = &recovery_os_volume_device_node_path;
            }

            else
            {
              if (!v32 || system_device_node_path_0)
              {
                ramrod_log_msg("unexpected partition '%s' - skipping\n", name);
LABEL_155:
                theArray = 0;
                v51 = 1;
                goto LABEL_87;
              }

              ramrod_log_msg("looking for a system volume, and found unknown volume '%s'. using it as the system volume.\n");
LABEL_84:
              LOBYTE(v32) = 1;
              v50 = &system_device_node_path_0;
            }

LABEL_85:
            if (*v50)
            {
              v79 = kCFErrorDomainMach;
              goto LABEL_178;
            }

            theArray = v50;
            v51 = 0;
LABEL_87:
            while (1)
            {
              v52 = CFDictionaryGetValue(properties, @"Leaf");
              if (v52)
              {
                if (CFBooleanGetValue(v52) == 1)
                {
                  break;
                }
              }

              IOObjectRelease(v27);
              CFRelease(properties);
              v53 = IOIteratorNext(iterator);
              if (!v53)
              {
LABEL_172:
                ramrod_create_error_cf(&cf, kCFErrorDomainMach, -536870911, 0, @"%s: ran out of registry entries without finding a leaf media object", v54, v55, v56, "ramrod_probe_media_internal");
                v27 = 0;
                goto LABEL_173;
              }

              v27 = v53;
              while (!IOObjectConformsTo(v27, "IOMedia"))
              {
                IOObjectRelease(v27);
                v27 = IOIteratorNext(iterator);
                if (!v27)
                {
                  goto LABEL_172;
                }
              }

              v57 = IORegistryEntryCreateCFProperties(v27, &properties, kCFAllocatorDefault, 0);
              if (v57)
              {
                ramrod_create_error_cf(&cf, kCFErrorDomainMach, v57, 0, @"%s: unable to get properties for media registry entry", v58, v59, v60, "ramrod_probe_media_internal");
                goto LABEL_173;
              }
            }

            if (v51)
            {
              if (CFDictionaryGetValue(properties, @"Encrypted") == kCFBooleanTrue)
              {
                v64 = CFDictionaryGetValue(properties, @"BSD Name");
                if (v64)
                {
                  v65 = v64;
                  *buffer = 0;
                  v66 = CFDictionaryGetValue(properties, @"RoleValue");
                  if (v66)
                  {
                    CFNumberGetValue(v66, kCFNumberSInt16Type, buffer);
                  }

                  if (*buffer == 576)
                  {
                    v67 = @"Found additional enterprise volume at %@\n";
                  }

                  else
                  {
                    v67 = @"Found additional encrypted volume at %@\n";
                  }

                  if (*buffer == 576)
                  {
                    v68 = Mutable;
                  }

                  else
                  {
                    v68 = v19;
                  }

                  theArraya = v68;
                  ramrod_log_msg_cf(v67, v65);
                  v69 = CFStringCreateWithFormat(0, 0, @"%s%@", "/dev/", v65);
                  CFArrayAppendValue(theArraya, v69);
                  CFRelease(v69);
                }
              }
            }

            else
            {
              v70 = CFDictionaryGetValue(properties, @"BSD Name");
              if (!v70)
              {
                v79 = kCFErrorDomainMach;
                v80 = @"%s: leaf media object with no bsd name";
                goto LABEL_179;
              }

              *buffer = 0u;
              v101 = 0u;
              CFStringGetCString(v70, buffer, 32, 0x8000100u);
              snprintf(theArray, 0x20uLL, "%s%s", "/dev/", buffer);
            }

            CFRelease(properties);
LABEL_124:
            IOObjectRelease(v27);
            goto LABEL_73;
          }

          v71 = v96;
        }

        ramrod_log_msg("Captured preboot partition on ISC %d\n", v71);
        v50 = &isc_preboot_partition_device_node_path;
        goto LABEL_85;
      }

      v45 = CFDictionaryGetValue(properties, @"BSD Name");
      if (!v45)
      {
        ramrod_log_msg("APFS Container object with no bsd name");
        goto LABEL_173;
      }

      *buffer = 0u;
      v101 = 0u;
      CFStringGetCString(v45, buffer, 32, 0x8000100u);
      if (CFEqual(v44, @"7C3457EF-0000-11AA-AA11-00306543ECAC") == 1)
      {
        if (strstr(name, "RecoveryOSContainer"))
        {
          v96 = 3;
          v33 = &apfs_recovery_os_container_device_node_path;
        }

        else
        {
          if (*name ^ 0x737953746F6F4269 | *&name[8] ^ 0x61746E6F436D6574 | *&name[13] ^ 0x72656E6961746ELL)
          {
            v33 = &apfs_container_device_node_path_0;
          }

          else
          {
            v33 = &iboot_system_container_device_node_path;
          }

          if (*name ^ 0x737953746F6F4269 | *&name[8] ^ 0x61746E6F436D6574 | *&name[13] ^ 0x72656E6961746ELL)
          {
            v46 = 2;
          }

          else
          {
            v46 = 1;
          }

          v96 = v46;
        }

        snprintf(v33, 0x20uLL, "%s%s", "/dev/", buffer);
        ramrod_log_msg("APFS Container '%s' %s\n", name, v33);
LABEL_70:
        if (!*v33)
        {
          snprintf(v33, 0x20uLL, "%s%s", "/dev/", buffer);
          ramrod_log_msg("APFS Container '%s' %s\n", name, v33);
        }

        goto LABEL_72;
      }

      if (CFEqual(v44, @"EF57347C-0000-11AA-AA11-00306543ECAC") == 1)
      {
        if (v33 && *v33)
        {
          ramrod_log_msg("Found synthesized APFS container. Using %s instead of %s\n", buffer, v33);
          snprintf(v33, 0x20uLL, "%s%s", "/dev/", buffer);
          v33 = 0;
          goto LABEL_72;
        }

        ramrod_log_msg("found synthesized container without original device node\n");
      }

      if (v33)
      {
        goto LABEL_70;
      }

LABEL_72:
      IOObjectRelease(v27);
      CFRelease(properties);
LABEL_73:
      v27 = IOIteratorNext(iterator);
    }

    while (v27);
  }

  if (!IOIteratorIsValid(iterator))
  {
    ramrod_create_error_cf(&cf, kCFErrorDomainMach, -536870165, 0, @"%s: media iterator invalidated", v72, v73, v74, "ramrod_probe_media_internal");
    v27 = 0;
LABEL_170:
    v78 = 1;
    goto LABEL_174;
  }

  if (CFArrayGetCount(v19) >= 1)
  {
    additional_encrypted_volume_node_paths = CFRetain(v19);
  }

  if (CFArrayGetCount(Mutable) < 1)
  {
    goto LABEL_19;
  }

  v27 = 0;
  additional_eds_volume_node_paths = CFRetain(Mutable);
LABEL_20:
  v28 = 1;
LABEL_21:
  v29 = cf;
LABEL_22:
  if (v29)
  {
    CFRelease(v29);
  }

  if (v27)
  {
    IOObjectRelease(v27);
  }

  if (iterator)
  {
    IOObjectRelease(iterator);
  }

  if (v22)
  {
    IOObjectRelease(v22);
  }

  if (v19)
  {
    CFRelease(v19);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v28;
}

uint64_t ramrod_get_apfs_container_device_node(char *a1, size_t __size)
{
  if (!apfs_container_device_node_path_0)
  {
    return 0;
  }

  strlcpy(a1, &apfs_container_device_node_path_0, __size);
  return 1;
}

uint64_t ramrod_should_have_xart_partition()
{
  v0 = IORegistryEntryFromPath(kIOMasterPortDefault, "IODeviceTree:/arm-io/sep/iop-sep-nub/xART");
  if (v0)
  {
    ramrod_log_msg("IODeviceTree:/arm-io/sep/iop-sep-nub/xART found\n");
    IOObjectRelease(v0);
    v0 = 1;
  }

  v1 = IORegistryEntryFromPath(kIOMasterPortDefault, "IODeviceTree:/chosen/has-xart");
  if (v1)
  {
    v2 = v1;
    ramrod_log_msg("IODeviceTree:/chosen/has-xart found\n");
    IOObjectRelease(v2);
    v0 = 1;
  }

  v3 = IORegistryEntryFromPath(kIOMasterPortDefault, "IODeviceTree:/defaults");
  if (v3)
  {
    v4 = v3;
    CFProperty = IORegistryEntryCreateCFProperty(v3, @"has-xart", kCFAllocatorDefault, 0);
    if (CFProperty)
    {
      v6 = CFProperty;
      v7 = CFGetTypeID(CFProperty);
      if (v7 == CFNumberGetTypeID())
      {
        valuePtr = 0;
        CFNumberGetValue(v6, kCFNumberSInt32Type, &valuePtr);
        if (valuePtr)
        {
          v8 = "IODeviceTree:/defaults/has-xart found\n";
        }

        else
        {
          v8 = "IODeviceTree:/defaults/has-xart found but is zero\n";
        }

        if (valuePtr)
        {
          v0 = 1;
        }

        else
        {
          v0 = v0;
        }

        ramrod_log_msg(v8);
      }

      else
      {
        v9 = CFGetTypeID(v6);
        if (v9 == CFDataGetTypeID())
        {
          *buffer = 0;
          if (CFDataGetLength(v6) == 4)
          {
            v13.location = 0;
            v13.length = 4;
            CFDataGetBytes(v6, v13, buffer);
            if (*buffer)
            {
              ramrod_log_msg("IODeviceTree:/defaults/has-xart found\n");
              v0 = 1;
            }

            else
            {
              ramrod_log_msg("IODeviceTree:/defaults/has-xart found but is zero\n");
            }
          }

          else
          {
            ramrod_log_msg("IODeviceTree:/defaults/has-xart found but is not int sized\n");
          }
        }
      }

      CFRelease(v6);
    }

    IOObjectRelease(v4);
  }

  else
  {
    ramrod_log_msg("Failed to read IODeviceTree:/defaults\n");
  }

  if (v0)
  {
    ramrod_log_msg("We should have an xART partition.\n");
  }

  else
  {
    ramrod_log_msg("We should not have an xART partition.\n");
  }

  return v0;
}

void OUTLINED_FUNCTION_0_1(CFErrorRef *a1@<X0>, const __CFString *a2@<X1>, const __CFString *a5@<X4>, uint64_t x5_0@<X5>, uint64_t x6_0@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>)
{

  ramrod_create_error_cf(a1, a2, 6, 0, a5, x5_0, x6_0, a6, a7);
}

void ramrod_create_error_internal_va(CFErrorRef *a1, const __CFString *a2, CFIndex a3, const void *a4, const __CFString *a5, va_list a6)
{
  if (a1)
  {
    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (Mutable)
    {
      v13 = Mutable;
      v14 = CFStringCreateWithFormatAndArguments(kCFAllocatorDefault, 0, a5, a6);
      if (v14)
      {
        v15 = v14;
        CFDictionaryAddValue(v13, kCFErrorDescriptionKey, v14);
        CFRelease(v15);
      }

      if (a4)
      {
        CFDictionaryAddValue(v13, kCFErrorUnderlyingErrorKey, a4);
      }

      *a1 = CFErrorCreate(kCFAllocatorDefault, a2, a3, v13);

      CFRelease(v13);
    }
  }
}

id _options_get_BOOL(void *a1, uint64_t a2)
{
  v2 = [a1 objectForKeyedSubscript:a2];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  return [v2 BOOLValue];
}

id _get_os_preboot_path(void *a1)
{
  v2 = [a1 objectForKeyedSubscript:@"PrebootDirOverride"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || !v2)
  {
    v2 = [a1 objectForKeyedSubscript:@"PrebootMountpoint"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || !v2)
    {
      ramrod_log_msg("%s: RAMROD_SPLAT_OPT_PREBOOT_MOUNTPOINT is required\n", "_get_os_preboot_path");
      return 0;
    }
  }

  return v2;
}

BOOL _get_splat_preboot_paths(void *a1, void *a2, void *a3, void *a4, CFErrorRef *a5)
{
  if (a1)
  {
    if (_options_get_BOOL(a2, @"SafariDownlevelUpdate"))
    {
      v8 = @"downlevel";
    }

    else
    {
      v8 = @"cryptex1";
    }

    v9 = [a1 stringByAppendingPathComponent:v8];
    v10 = v9;
    if (a3)
    {
      *a3 = [v9 stringByAppendingPathComponent:@"current"];
    }

    if (a4)
    {
      *a4 = [v10 stringByAppendingPathComponent:@"proposed"];
    }
  }

  else
  {
    ramrod_log_msg("%s: %s\n", "_get_splat_preboot_paths", "preboot directory is nil");
    ramrod_create_error_cf(a5, @"RamrodErrorDomain", 2001, 0, @"%s", v12, v13, v14, "preboot directory is nil");
  }

  return a1 != 0;
}

id ramrod_splat_copy_object_path(const char *a1, void *a2)
{
  v10 = 0;
  v11 = 0;
  os_preboot_path = _get_os_preboot_path(a2);
  if (!_get_splat_preboot_paths(os_preboot_path, a2, &v11, &v10, 0))
  {
    return 0;
  }

  v5 = v11;
  if (_options_get_BOOL(a2, @"StageToProposed"))
  {
    v6 = v10;
  }

  else
  {
    v6 = v5;
  }

  if (!a1)
  {
    if (v6)
    {
      return CFRetain(v6);
    }

    return 0;
  }

  v7 = &splat_objects;
  v8 = 9;
  while (*v7 || strcmp(*(v7 + 1), a1))
  {
    v7 += 16;
    if (!--v8)
    {
      return 0;
    }
  }

  result = [v6 stringByAppendingPathComponent:{+[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", *(v7 + 4))}];
  v6 = result;
  if (result)
  {
    return CFRetain(v6);
  }

  return result;
}

void submitRestoreLogFileToLogDir_cold_1()
{
  __error();
  _os_assert_log();
  _os_crash();
  __break(1u);
}

__CFString *get_short_error_domain(__CFString *result)
{
  if (result)
  {
    Domain = CFErrorGetDomain(result);
    if (CFStringCompare(Domain, @"MobileSoftwareUpdateErrorDomain", 0))
    {
      if (CFStringCompare(Domain, @"RamrodErrorDomain", 0))
      {
        if (CFStringCompare(Domain, @"NRDUpdateErrorDomain", 0))
        {
          return Domain;
        }

        else
        {
          return @"NRD";
        }
      }

      else
      {
        return @"RRD";
      }
    }

    else
    {
      return @"MSU";
    }
  }

  return result;
}

void copy_underlying_error_description_cold_1(__CFString *a1, __CFString *a2)
{
  v4 = 0;
  do
  {
    short_error_domain = get_short_error_domain(a1);
    CFStringAppend(a2, short_error_domain);
    Code = CFErrorGetCode(a1);
    CFStringAppendFormat(a2, 0, @" %ld", Code);
    v7 = CFErrorCopyUserInfo(a1);
    if (v7)
    {
      v8 = v7;
      Value = CFDictionaryGetValue(v7, kCFErrorLocalizedDescriptionKey);
      if (Value || (Value = CFDictionaryGetValue(v8, kCFErrorDescriptionKey)) != 0 || (Value = CFDictionaryGetValue(v8, kCFErrorLocalizedFailureReasonKey)) != 0 || (Value = CFDictionaryGetValue(v8, @"NSDebugDescription")) != 0)
      {
        CFStringAppendFormat(a2, 0, @" (%@)", Value);
      }

      a1 = CFDictionaryGetValue(v8, kCFErrorUnderlyingErrorKey);
      CFRelease(v8);
    }

    CFStringAppend(a2, @";");
    if (!a1)
    {
      break;
    }
  }

  while (v4++ < 9);
}

void main_cold_2()
{
  v0 = __error();
  strerror(*v0);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_4_0(&_mh_execute_header, v1, v2, "[MAIN] Could not register atexit: %s", v3, v4, v5, v6);
}

void main_cold_3()
{
  OUTLINED_FUNCTION_1_1(__stack_chk_guard);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void main_cold_4()
{
  OUTLINED_FUNCTION_1_1(__stack_chk_guard);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void main_cold_5()
{
  OUTLINED_FUNCTION_1_1(__stack_chk_guard);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __main_block_invoke_11_cold_1()
{
  OUTLINED_FUNCTION_1_1(__stack_chk_guard);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __main_block_invoke_2_cold_1(void *a1)
{
  xpc_dictionary_get_string(a1, _xpc_error_key_description);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_4_0(&_mh_execute_header, v1, v2, "[PEER_CONNECTION] XPC error on peer listener connection: %s", v3, v4, v5, v6);
}

void __main_block_invoke_3_cold_1()
{
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __main_block_invoke_3_cold_3(void *a1)
{
  xpc_dictionary_get_string(a1, _xpc_error_key_description);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_4_0(&_mh_execute_header, v1, v2, "[PEER_CONNECTION] Unexpected XPC error on peer connection (%s) | Potential connection issue", v3, v4, v5, v6);
}

void handle_update_metrics_cold_3()
{
  OUTLINED_FUNCTION_1_1(__stack_chk_guard);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void handle_get_stashed_connectivity_data_command_cold_3()
{
  OUTLINED_FUNCTION_1_1(__stack_chk_guard);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void handle_perform_report_and_cleanup_command_cold_1()
{
  OUTLINED_FUNCTION_1_1(__stack_chk_guard);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void handle_perform_cryptegraft_semisplat_cold_1()
{
  OUTLINED_FUNCTION_1_1(__stack_chk_guard);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void handle_perform_cryptegraft_downlevel_cold_1()
{
  OUTLINED_FUNCTION_1_1(__stack_chk_guard);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __copy_shared_update_brain_connection_block_invoke_cold_1()
{
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __copy_shared_update_brain_connection_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_1_1(__stack_chk_guard);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

uint64_t CryptoPerformEncryptDecrypt(const __CFData *a1, CFDataRef *a2, int a3)
{
  Length = CFDataGetLength(a1);
  connect[0] = 0;
  v7 = IOServiceMatching("IOAESAccelerator");
  if (!v7)
  {
    logfunction("", 1, @"Could not allocate matching dict for kIOAESAcceleratorClass\n", v8, v9, v10, v11, v12);
    return 0;
  }

  v13 = v7;
  CFRetain(v7);
  MatchingService = IOServiceGetMatchingService(kIOMasterPortDefault, v13);
  if (!MatchingService)
  {
    logfunction("", 1, @"Could not find kIOAESAcceleratorClass\n", v15, v16, v17, v18, v19);
    CFRelease(v13);
    return 0;
  }

  v20 = MatchingService;
  v21 = IOServiceOpen(MatchingService, mach_task_self_, 0, connect);
  if (v21)
  {
    logfunction("", 1, @"Return %d trying to open kIOAESAcceleratorClass\n", v22, v23, v24, v25, v26, v21);
  }

  CFRelease(v13);
  IOObjectRelease(v20);
  v27 = connect[0];
  if (!connect[0])
  {
    return 0;
  }

  v28 = Length;
  if (a3)
  {
    if (Length << 32)
    {
      BytePtr = CFDataGetBytePtr(a1);
      v30 = CryptoBufferAllocate((Length + 19) & 0xFFFFFFFFFFFFFFF0);
      if (v30)
      {
        v31 = v30;
        *v30 = Length;
        memcpy(v30 + 1, BytePtr, Length);
        v28 = (Length + 19) & 0xFFFFFFFFFFFFFFF0;
        goto LABEL_13;
      }
    }

    goto LABEL_24;
  }

  if (Length < 5 || (v32 = CFDataGetBytePtr(a1), (v33 = CryptoBufferAllocate(v28)) == 0))
  {
LABEL_24:
    IOServiceClose(v27);
    return 0;
  }

  v31 = v33;
  memcpy(v33, v32, v28);
LABEL_13:
  v34 = CryptoBufferAllocate(v28);
  v35 = v34;
  if (!v34)
  {
LABEL_23:
    v45 = 0;
    goto LABEL_32;
  }

  v63 = 0;
  outputStructCnt = 88;
  if (a3)
  {
    v36 = v31;
  }

  else
  {
    v36 = v34;
  }

  if (a3)
  {
    v37 = v34;
  }

  else
  {
    v37 = v31;
  }

  *connect = v36;
  v54 = v37;
  v55 = v28;
  v57 = 0;
  v56 = 0;
  v58 = a3 ^ 1;
  v59 = 128;
  v60 = 0u;
  v61 = 0u;
  v62 = 2108;
  v38 = IOConnectCallStructMethod(v27, 1u, connect, 0x58uLL, connect, &outputStructCnt);
  if (v38)
  {
    v51 = v38;
    v44 = @"perform aes => %d\n";
LABEL_22:
    logfunction("", 1, v44, v39, v40, v41, v42, v43, v51, outputStructCnt);
    goto LABEL_23;
  }

  if (a3)
  {
    v46 = kCFAllocatorDefault;
    v47 = v35;
    v48 = v28;
  }

  else
  {
    v48 = *v35;
    if (v28 - 4 < v48)
    {
      goto LABEL_23;
    }

    v46 = kCFAllocatorDefault;
    v47 = v35 + 4;
  }

  v49 = CFDataCreate(v46, v47, v48);
  *a2 = v49;
  if (!v49)
  {
    v44 = @"Unable to allocate return crypto CFData\n";
    goto LABEL_22;
  }

  v45 = 1;
LABEL_32:
  IOServiceClose(v27);
  free(v31);
  if (v35)
  {
    free(v35);
  }

  return v45;
}