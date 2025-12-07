uint64_t _mount_filesystem(uint64_t a1, char *a2)
{
  v12[0] = "/sbin/mount";
  v12[1] = "-t";
  v12[2] = "apfs";
  v12[3] = "-o";
  v12[4] = "nobrowse";
  v12[5] = a1;
  v12[6] = a2;
  v12[7] = 0;
  mkdir(a2, 0x1C0u);
  if (_executeCommandPtr)
  {
    v10 = _executeCommandPtr(v12, _partition_execution_log, 0);
    if (!v10)
    {
      return v10;
    }
  }

  else
  {
    v10 = 0xFFFFFFFFLL;
  }

  _partition_log("mounting %s at %s failed: %d", v3, v4, v5, v6, v7, v8, v9, a1);
  return v10;
}

const char *mount_recovery_boot(const char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = _partition_log("entering %s\n", a2, a3, a4, a5, a6, a7, a8, "mount_recovery_boot");
  if (partition_probe_media(v9, v10, v11, v12, v13, v14, v15, v16))
  {
    if (!recovery_os_volume_device_node_path)
    {
      _partition_log("%s: no device node found for recovery volume\n", v17, v18, v19, v20, v21, v22, v23, "mount_recovery_boot");
    }

    bzero(&v54, 0x878uLL);
    if (!statfs(a1, &v54) && !strcmp(v54.f_mntonname, a1) && !strcmp(v54.f_mntfromname, &recovery_os_volume_device_node_path))
    {
      _partition_log("%s: Recovery device already mounted at %s\n", v24, v25, v26, v27, v28, v29, v30, "mount_recovery_boot");
      return a1;
    }

    if (!statfs("/", &v54) && !strcmp(v54.f_mntfromname, &recovery_os_volume_device_node_path))
    {
      _partition_log("%s: Recovery device already mounted at %s\n", v31, v32, v33, v34, v35, v36, v37, "mount_recovery_boot");
      return "/";
    }

    v53[0] = 0;
    v53[1] = &recovery_os_volume_device_node_path;
    if (!mount("apfs", a1, 0x20000000, v53))
    {
      _partition_log("%s: Successfully mounted recovery boot at %s", v38, v39, v40, v41, v42, v43, v44, "mount_recovery_boot");
      return a1;
    }

    __error();
    _partition_log("%s: Recovery boot failed to mount at %s: %d, errno %d\n", v45, v46, v47, v48, v49, v50, v51, "mount_recovery_boot");
  }

  else
  {
    _partition_log("%s : partition_probe_media() failed.\n", v17, v18, v19, v20, v21, v22, v23, "mount_recovery_boot");
  }

  return 0;
}

uint64_t mount_update_partition_if_exists(const char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = _partition_log("entering %s\n", a2, a3, a4, a5, a6, a7, a8, "mount_update_partition_if_exists");
  if (!partition_probe_media(v9, v10, v11, v12, v13, v14, v15, v16))
  {
    _partition_log("%s : partition_probe_media() failed.\n", v17, v18, v19, v20, v21, v22, v23, "mount_update_partition_if_exists");
    return 0xFFFFFFFFLL;
  }

  if (!update_device_node_path)
  {
    _partition_log("%s : no device node found for update partition\n", v17, v18, v19, v20, v21, v22, v23, "mount_update_partition_if_exists");
    return 0xFFFFFFFFLL;
  }

  v62 = 0;
  v24 = realpath_DARWIN_EXTSN(a1, 0);
  if (!v24)
  {
    __error();
    _partition_log("Failed to realpath(%s). errno=%d", v37, v38, v39, v40, v41, v42, v43, a1);
    return 0xFFFFFFFFLL;
  }

  v25 = v24;
  v26 = getmntinfo_r_np(&v62, 2);
  if (v26 < 1)
  {
    _partition_log("Failed to get mount info for all mounted file systems", v27, v28, v29, v30, v31, v32, v33, v61);
    v44 = *__error();
  }

  else
  {
    v34 = v62;
    v35 = v26;
    v36 = 1112;
    while (strcmp(v34 + v36, &update_device_node_path))
    {
      v36 += 2168;
      if (!--v35)
      {
        goto LABEL_16;
      }
    }

    if (!strcmp(v34 + v36 - 1024, v25))
    {
      _partition_log("Update partition is already mounted\n", v45, v46, v47, v48, v49, v50, v51, v61);
      v44 = 0;
      goto LABEL_19;
    }

    _partition_log("unmounting %s at %s", v45, v46, v47, v48, v49, v50, v51, v34 + v36);
    _unmount_filesystem(v62 + v36 - 1024);
LABEL_16:
    v44 = _mount_filesystem(&update_device_node_path, v25);
    v59 = "Failed to mount";
    if (!v44)
    {
      v59 = "Successfully mounted";
    }

    _partition_log("%s update partition at %s", v52, v53, v54, v55, v56, v57, v58, v59);
  }

LABEL_19:
  if (v62)
  {
    free(v62);
  }

  free(v25);
  return v44;
}

uint64_t _partition_wait_for_device(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  _partition_log("entering %s: '%s'\n", a2, a3, a4, a5, a6, a7, a8, "_partition_wait_for_device");
  if (!a1)
  {
    v41 = "path argument is NULL";
    goto LABEL_16;
  }

  v16 = CFStringCreateWithCString(kCFAllocatorDefault, "EmbeddedDeviceTypeRoot", 0x8000100u);
  if (!v16)
  {
LABEL_15:
    v41 = "failed to allocate device lookup dict";
LABEL_16:
    _partition_log(v41, v9, v10, v11, v12, v13, v14, v15, v111);
    return 0;
  }

  v17 = v16;
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (!Mutable)
  {
    v19 = v17;
LABEL_14:
    CFRelease(v19);
    goto LABEL_15;
  }

  v19 = Mutable;
  CFDictionaryAddValue(Mutable, v17, kCFBooleanTrue);
  v20 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (!v20)
  {
    CFRelease(v17);
    goto LABEL_14;
  }

  v21 = v20;
  CFDictionaryAddValue(v20, @"IOPropertyMatch", v19);
  CFRelease(v17);
  CFRelease(v19);
  v22 = 0;
  while (1)
  {
    CFRetain(v21);
    MatchingService = IOServiceGetMatchingService(kIOMasterPortDefault, v21);
    if (MatchingService)
    {
      break;
    }

    if (30 - v22 >= 3)
    {
      v24 = 3;
    }

    else
    {
      v24 = 30 - v22;
    }

    v25 = CFCopyDescription(v21);
    CStringPtr = CFStringGetCStringPtr(v25, 0);
    _partition_log("waiting for matching IOKit service: %s\n", v27, v28, v29, v30, v31, v32, v33, CStringPtr);
    sleep(v24);
    v22 += v24;
    CFRelease(v25);
    if (v22 >= 0x1E)
    {
      CFRelease(v21);
      _partition_log("failed to lookup IO service for %s", v34, v35, v36, v37, v38, v39, v40, "EmbeddedDeviceTypeRoot");
      return 0;
    }
  }

  v44 = MatchingService;
  CFRelease(v21);
  IOObjectRetain(v44);
  v45 = v44;
  do
  {
    iterator = 0;
    if (IORegistryEntryGetChildIterator(v45, "IOService", &iterator))
    {
      v100 = "Could not create child iterator";
      goto LABEL_45;
    }

    v53 = IOIteratorNext(iterator);
    v54 = 0;
    if (!v53)
    {
      v55 = iterator;
LABEL_44:
      IOObjectRelease(v55);
      v111 = v54;
      v100 = "Found %d child nodes (expected 1)";
LABEL_45:
      _partition_log(v100, v46, v47, v48, v49, v50, v51, v52, v111);
      v42 = 0;
      v55 = v45;
      goto LABEL_52;
    }

    v55 = 0;
    do
    {
      if (v55)
      {
        IOObjectRelease(v53);
      }

      else
      {
        v55 = v53;
      }

      v53 = IOIteratorNext(iterator);
      v54 = (v54 + 1);
    }

    while (v53);
    IOObjectRelease(iterator);
    if (v54 != 1)
    {
      goto LABEL_44;
    }

    IOObjectRelease(v45);
    v45 = v55;
  }

  while (!IOObjectConformsTo(v55, "IOMedia"));
  CFProperty = IORegistryEntryCreateCFProperty(v55, @"Whole", kCFAllocatorDefault, 0);
  if (!CFProperty)
  {
    _partition_log("Did not find Whole property on IOMedia class", v57, v58, v59, v60, v61, v62, v63, v111);
    goto LABEL_51;
  }

  v64 = CFProperty;
  v65 = CFGetTypeID(CFProperty);
  if (v65 != CFBooleanGetTypeID())
  {
    v101 = "Expected Whole to be BOOLean";
LABEL_50:
    _partition_log(v101, v66, v67, v68, v69, v70, v71, v72, v111);
    CFRelease(v64);
LABEL_51:
    v42 = 0;
    goto LABEL_52;
  }

  if (!CFBooleanGetValue(v64))
  {
    v101 = "Expected Whole=true";
    goto LABEL_50;
  }

  CFRelease(v64);
  v73 = IORegistryEntryCreateCFProperty(v55, @"BSD Name", kCFAllocatorDefault, 0);
  if (!v73)
  {
    _partition_log("no BSD device name for service %s", v74, v75, v76, v77, v78, v79, v80, "EmbeddedDeviceTypeRoot");
    goto LABEL_51;
  }

  v81 = v73;
  v82 = CFGetTypeID(v73);
  if (v82 == CFStringGetTypeID())
  {
    strcpy(a1, "/dev/");
    v90 = strlen(a1);
    if (CFStringGetCString(v81, &a1[v90], 32 - v90, 0x8000100u))
    {
      _partition_log("Using device path %s for %s\n", v91, v92, v93, v94, v95, v96, v97, a1);
      v98 = -10;
      while (1)
      {
        if (!access(a1, 0))
        {
          v42 = 1;
          goto LABEL_61;
        }

        if (*__error() != 2)
        {
          break;
        }

        sleep(3u);
        if (__CFADD__(v98++, 1))
        {
          goto LABEL_58;
        }
      }

      v103 = __error();
      strerror(*v103);
      _partition_log("stat error while waiting for device '%s': %s\n", v104, v105, v106, v107, v108, v109, v110, a1);
LABEL_58:
      v111 = "EmbeddedDeviceTypeRoot";
      v102 = "timeout waiting for %s";
    }

    else
    {
      v102 = "failed to create C string from BSD name";
    }

    _partition_log(v102, v91, v92, v93, v94, v95, v96, v97, v111);
  }

  else
  {
    _partition_log("returnbed BSD device name for service %s is wrong type", v83, v84, v85, v86, v87, v88, v89, "EmbeddedDeviceTypeRoot");
  }

  v42 = 0;
LABEL_61:
  CFRelease(v81);
LABEL_52:
  IOObjectRelease(v55);
  IOObjectRelease(v44);
  return v42;
}

uint64_t _partition_execution_log()
{
  if (_executionLoggingPtr)
  {
    return _executionLoggingPtr();
  }

  return result;
}

void __copy_helper_block_e8_32o40b(uint64_t a1, uint64_t a2)
{
  _Block_object_assign((a1 + 32), *(a2 + 32), 3);
  v4 = *(a2 + 40);

  _Block_object_assign((a1 + 40), v4, 7);
}

void __destroy_helper_block_e8_32o40b(uint64_t a1)
{
  _Block_object_dispose(*(a1 + 40), 7);
  v2 = *(a1 + 32);

  _Block_object_dispose(v2, 3);
}

CFStringRef checkpoint_nvram_encode_string(uint64_t a1, const char **a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = *a2;
  if (!*a2)
  {
    return 0;
  }

  v3 = strlen(*a2);
  if (v3 > 0x100)
  {
    return CFStringCreateWithFormat(0, 0, @"~%s", &v2[v3 - 255]);
  }

  else
  {
    return CFStringCreateWithFormat(0, 0, @"%s", v2);
  }
}

CFStringRef checkpoint_nvram_encode_id_string(uint64_t a1, unsigned int *a2)
{
  if (!a2)
  {
    return 0;
  }

  v3 = *(a2 + 1);
  if (!v3)
  {
    return 0;
  }

  v4 = strlen(*(a2 + 1));
  if (v4 > 0xF2)
  {
    return CFStringCreateWithFormat(0, 0, @"{0x%08X:~%s}", *a2, v3 + v4 - 241);
  }

  else
  {
    return CFStringCreateWithFormat(0, 0, @"{0x%08X:%s}", *a2, v3);
  }
}

CFStringRef checkpoint_nvram_encode_long(uint64_t a1, void *a2)
{
  if (a2)
  {
    return CFStringCreateWithFormat(0, 0, @"%ld", *a2);
  }

  else
  {
    return 0;
  }
}

CFStringRef checkpoint_nvram_encode_by_boot(uint64_t a1, const __CFString *a2)
{
  v2 = a2;
  if (a2)
  {
    v10 = 0;
    asprintf(&v10, "{");
    v3 = v10;
    if (v10)
    {
      v4 = 0;
      v9 = 0;
      v5 = 1;
      do
      {
        v6 = v5;
        v7 = *(&v2->isa + v4);
        if (v7)
        {
          v3 = checkpoint_append_and_free_key_v(v3, checkpoint_boot_type_name[v4], v7, &v9);
          v10 = v3;
        }

        v5 = 0;
        v4 = 1;
      }

      while ((v6 & 1) != 0);
      v10 = checkpoint_append_and_free(v3, "}");
      v2 = CFStringCreateWithFormat(0, 0, @"%s", v10);
      if (v10)
      {
        free(v10);
      }
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

CFStringRef checkpoint_nvram_encode_by_id(uint64_t a1, const __CFString *a2)
{
  v2 = a2;
  if (a2)
  {
    v8 = 0;
    asprintf(&v8, "{");
    v3 = v8;
    if (v8)
    {
      v7 = 0;
      p_info = &v2->info;
      v5 = 8;
      do
      {
        if (*p_info)
        {
          v3 = checkpoint_append_and_free_id_v(v3, *(p_info - 2), *p_info, &v7);
          v8 = v3;
        }

        p_info += 2;
        --v5;
      }

      while (v5);
      v8 = checkpoint_append_and_free(v3, "}");
      v2 = CFStringCreateWithFormat(0, 0, @"%s", v8);
      if (v8)
      {
        free(v8);
      }
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

CFStringRef checkpoint_nvram_encode_by_id_int(uint64_t a1, const __CFString *a2)
{
  v2 = a2;
  if (a2)
  {
    v7 = 0;
    asprintf(&v7, "{");
    if (v7)
    {
      v6 = 0;
      v3 = 8;
      do
      {
        if (LODWORD(v2->isa))
        {
          v5 = 0;
          asprintf(&v5, "%d", HIDWORD(v2->isa));
          if (v5)
          {
            v7 = checkpoint_append_and_free_id_v(v7, v2->isa, v5, &v6);
            if (v5)
            {
              free(v5);
            }
          }
        }

        v2 = (v2 + 8);
        --v3;
      }

      while (v3);
      v7 = checkpoint_append_and_free(v7, "}");
      v2 = CFStringCreateWithFormat(0, 0, @"%s", v7);
      if (v7)
      {
        free(v7);
      }
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

CFStringRef checkpoint_nvram_encode_by_id_try(uint64_t a1, const __CFString *a2)
{
  v2 = a2;
  if (a2)
  {
    v12 = 0;
    asprintf(&v12, "{");
    if (v12)
    {
      v3 = 0;
      v11 = 0;
      p_info = &v2->info;
      do
      {
        v5 = v2 + 18 * v3;
        if (*v5)
        {
          v15 = 0;
          asprintf(&v15, "{");
          if (v15)
          {
            v6 = 0;
            v14 = 0;
            do
            {
              v7 = p_info[v6];
              if (v7)
              {
                v13 = 0;
                asprintf(&v13, "%s", v7);
                if (v13)
                {
                  v15 = checkpoint_append_and_free_try_v(v15, v6, v13, &v14);
                  if (v13)
                  {
                    free(v13);
                  }
                }
              }

              ++v6;
            }

            while (v6 != 8);
            v8 = checkpoint_append_and_free(v15, "}");
            if (v8)
            {
              v9 = v8;
              v12 = checkpoint_append_and_free_id_v(v12, *v5, v8, &v11);
              free(v9);
            }
          }
        }

        ++v3;
        p_info += 9;
      }

      while (v3 != 8);
      v12 = checkpoint_append_and_free(v12, "}");
      v2 = CFStringCreateWithFormat(0, 0, @"%s", v12);
      if (v12)
      {
        free(v12);
      }
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

CFStringRef checkpoint_nvram_encode_by_id_try_int(uint64_t a1, const __CFString *a2)
{
  v2 = a2;
  if (a2)
  {
    v11 = 0;
    asprintf(&v11, "{");
    if (v11)
    {
      v3 = 0;
      v10 = 0;
      v4 = v2;
      do
      {
        v5 = v2 + 11 * v3;
        if (*v5)
        {
          v14 = 0;
          asprintf(&v14, "{");
          if (v14)
          {
            v6 = 0;
            v13 = 0;
            do
            {
              if (*(&v4[1].isa + v6 + 4))
              {
                v12 = 0;
                asprintf(&v12, "%d", *(&v4->isa + v6 + 1));
                if (v12)
                {
                  v14 = checkpoint_append_and_free_try_v(v14, v6, v12, &v13);
                  if (v12)
                  {
                    free(v12);
                  }
                }
              }

              ++v6;
            }

            while (v6 != 8);
            v7 = checkpoint_append_and_free(v14, "}");
            if (v7)
            {
              v8 = v7;
              v11 = checkpoint_append_and_free_id_v(v11, *v5, v7, &v10);
              free(v8);
            }
          }
        }

        ++v3;
        v4 = (v4 + 44);
      }

      while (v3 != 8);
      v11 = checkpoint_append_and_free(v11, "}");
      v2 = CFStringCreateWithFormat(0, 0, @"%s", v11);
      if (v11)
      {
        free(v11);
      }
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

uint64_t checkpoint_nvram_is_available(uint64_t a1, int a2, int a3)
{
  v5 = *(a1 + 688);
  if (!v5)
  {
    goto LABEL_155;
  }

  if (v5 == 1)
  {
    v6 = 1;
    goto LABEL_20;
  }

  v6 = 0;
  if (a2)
  {
    if (v5 == 2)
    {
LABEL_155:
      if (ramrod_check_NVRAM_access())
      {
        if (*(a1 + 2296))
        {
          if (!*(a1 + 2297))
          {
LABEL_24:
            v11 = *(a1 + 688);
            if (*(a1 + 693))
            {
LABEL_148:
              v6 = 1;
              *(a1 + 688) = 1;
              if (!a3)
              {
                if (v11)
                {
                  checkpoint_history_add(a1, 2, 1, 0, 256, "NVRAM access has become available", 0, 0, 0);
                }

                else
                {
                  checkpoint_history_add(a1, 2, 1, 0, 256, "NVRAM access available on initial check", 0, 0, 0);
                }
              }

              goto LABEL_20;
            }

            v12 = *a1 == 1 && v11 == 2;
            v13 = 696;
            if (v12)
            {
              v13 = 1088;
            }

            v14 = a1 + v13;
            if (*(a1 + v13 + 4))
            {
              ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): first available indication when already collected\n", "checkpoint_nvram_handle_first_available");
            }

            else
            {
              checkpoint_nvram_collect(a1, v14);
            }

            if (*a1 == 1)
            {
              v15 = *(a1 + 88);
              if (*(a1 + 96))
              {
                if (v15 == 2)
                {
                  v19 = &checkpoint_nvram_ota_monitor_aware_awoken;
                }

                else
                {
                  v19 = &checkpoint_nvram_restore_monitor_aware_awoken;
                }
              }

              else
              {
                if (v15 == 2)
                {
                  v17 = checkpoint_nvram_check_collection(a1, v14, checkpoint_nvram_ota_monitor_aware_init);
                  checkpoint_nvram_delete_var_if_matches(a1, v14);
                  goto LABEL_53;
                }

                v19 = &checkpoint_nvram_restore_monitor_aware_init;
              }

              v17 = checkpoint_nvram_check_collection(a1, v14, v19);
LABEL_53:
              if (!*(v14 + 48))
              {
                goto LABEL_111;
              }

              outcome_type = checkpoint_get_outcome_type(a1, v14);
              if (outcome_type < 0x22)
              {
                v25 = &checkpoint_outcome_attributes[3 * outcome_type];
              }

              else
              {
                ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): invalid outcome=%d\n", "checkpoint_get_outcome_attributes", outcome_type);
                v25 = checkpoint_outcome_attributes;
              }

              v26 = *(v14 + 48);
              bzero(v49, 0x400uLL);
              if (*v25 == 2)
              {
                v27 = *(v25 + 8);
                if (*(v25 + 8))
                {
                  *(a1 + 106) = 1;
                }

                if (*(v25 + 7))
                {
                  v17 = 0;
                  *(a1 + 102) = 1;
                }

                if (!*(v25 + 5))
                {
                  if (!*(v25 + 4) || !*(v25 + 6))
                  {
                    goto LABEL_111;
                  }

                  if (v27)
                  {
                    *(a1 + 101) = 1;
                    goto LABEL_111;
                  }

                  if (!*(v14 + 64))
                  {
                    goto LABEL_111;
                  }

LABEL_97:
                  v35 = *(v14 + 56);
                  *(a1 + 101) = 1;
                  if (!v35 || CFStringCompare(v35, @"true", 0))
                  {
                    goto LABEL_99;
                  }

                  *(a1 + 100) = 1;
                  if (*(v25 + 5))
                  {
                    *(a1 + 104) = 257;
                  }

                  else
                  {
                    *(a1 + 103) = 1;
                  }

LABEL_111:
                  if (v17 && !*(a1 + 106) && !*(a1 + 100) && !*(a1 + 104))
                  {
                    checkpoint_nvram_store_anomaly(a1, v18, "[monitor_aware]pre-existing NVRAM implied reboot-retry but values were inconsistent");
                  }

                  goto LABEL_116;
                }

                if (v27)
                {
                  *(a1 + 101) = 1;
                  *(a1 + 104) = 257;
                  goto LABEL_111;
                }

                if (*(v14 + 64))
                {
                  goto LABEL_97;
                }
              }

              else
              {
                if (!*(v25 + 5))
                {
                  goto LABEL_111;
                }

                if (!*(v14 + 64))
                {
                  checkpoint_get_nvram_value_string(v26, v49);
                  checkpoint_nvram_store_anomaly(a1, v37, "[monitor_aware]outcome=%s(reboot_retry_not_in_zone)");
                  goto LABEL_116;
                }

                v28 = *(v14 + 56);
                if (!v28 || CFStringCompare(v28, @"true", 0))
                {
LABEL_99:
                  checkpoint_get_nvram_value_string(v26, v49);
                  checkpoint_nvram_store_anomaly(a1, v36, "[monitor_aware]outcome=%s(reboot_retry_disabled)");
LABEL_116:
                  if (*(a1 + 104))
                  {
                    if (v11 == 2)
                    {
                      v39 = 0;
                      v40 = (a1 + 1520);
                      v41 = &dword_100099DD0;
                      do
                      {
                        v43 = *v41;
                        v41 += 8;
                        v42 = v43;
                        if (v39 != v43)
                        {
                          v44 = a1 + 1512 + 16 * v42;
                          *(v44 + 4) = *(v40 - 4);
                          *(v40 - 4) = 0;
                          v45 = *v40;
                          *v40 = *(v44 + 8);
                          *(v44 + 8) = v45;
                        }

                        ++v39;
                        v40 += 2;
                      }

                      while (v39 != 48);
                    }
                  }

                  else if (*a1 != 1 && *(a1 + 88) == 2)
                  {
                    ramrod_log_msg("%s\n", "void clear_stale_ota_nvram(void)");
                    checkpoint_nvram_delete_var_raw(@"boot-breadcrumbs");
                    checkpoint_nvram_delete_var_raw(@"OTA-pre-conversion");
                    checkpoint_nvram_delete_var_raw(@"OTA-post-conversion");
                    checkpoint_nvram_delete_var_raw(@"ota-conv-panic-indicator");
                    checkpoint_nvram_delete_var_raw(@"OTA-fsck-metrics");
                    checkpoint_nvram_delete_var_raw(@"OTA-sealvolume-metrics");
                    checkpoint_nvram_delete_var_raw(@"OTA-migrator-metrics");
                    for (i = 0; i != 28; ++i)
                    {
                      v47 = &checkpoint_nvram_map[4 * dword_100082BA8[i]];
                      checkpoint_nvram_delete_var_raw(v47[1]);
                      checkpoint_nvram_delete_var_raw(*v47);
                    }
                  }

                  if (*(a1 + 96))
                  {
                    if (*(a1 + 101))
                    {
                      if (*(a1 + 104))
                      {
                        if (*(a1 + 106))
                        {
                          v48 = 9;
                        }

                        else if (*(a1 + 105))
                        {
                          v48 = 12;
                        }

                        else if (*(a1 + 100))
                        {
                          v48 = 10;
                        }

                        else
                        {
                          v48 = 11;
                        }
                      }

                      else if (*(a1 + 103))
                      {
                        v48 = 10;
                      }

                      else
                      {
                        v48 = 3;
                      }
                    }

                    else if (*(a1 + 102))
                    {
                      if (*(a1 + 104))
                      {
                        v48 = 7;
                      }

                      else
                      {
                        v48 = 6;
                      }
                    }

                    else
                    {
                      v48 = 2;
                    }

                    checkpoint_outcome_progress(a1, v48);
                  }

                  else
                  {
                    checkpoint_outcome_init(a1, 1);
                  }

                  *(a1 + 693) = 1;
                  goto LABEL_148;
                }
              }

              *(a1 + 104) = 1;
              goto LABEL_111;
            }

            v16 = *(v14 + 56);
            if (v16 && CFStringCompare(v16, @"true", 0) == kCFCompareEqualTo)
            {
              *(a1 + 100) = 1;
            }

            else
            {
              ramrod_log_msg("AP nonce will not be touched\n");
            }

            v20 = *(a1 + 88);
            if (*(a1 + 96))
            {
              if (v20 == 2)
              {
                v21 = checkpoint_nvram_check_collection(a1, v14, checkpoint_nvram_ota_engine_aware_step);
                checkpoint_nvram_delete_var_if_matches(a1, v14);
                goto LABEL_71;
              }

              v23 = &checkpoint_nvram_restore_engine_aware_step;
            }

            else if (v20 == 2)
            {
              v23 = &checkpoint_nvram_ota_engine_aware_init;
            }

            else
            {
              v23 = &checkpoint_nvram_restore_engine_aware_init;
            }

            v21 = checkpoint_nvram_check_collection(a1, v14, v23);
LABEL_71:
            if (!*(v14 + 48))
            {
              *(a1 + 1480) = 1;
              *(a1 + 1488) = "access now enabled";
              if (*(a1 + 88) == 2)
              {
                if (*(v14 + 64))
                {
                  checkpoint_nvram_delete_var(a1, 7u, 0, 0);
                }

                v31 = *(v14 + 24);
                if (v31 && CFStringCompare(v31, @"recover", 0))
                {
                  checkpoint_nvram_delete_var(a1, 2u, 1, 0);
                }

                if (*(v14 + 32))
                {
                  checkpoint_nvram_delete_var(a1, 3u, 1, 0);
                }
              }

              goto LABEL_103;
            }

            v29 = checkpoint_get_outcome_type(a1, v14);
            if (v29 < 0x22)
            {
              v30 = &checkpoint_outcome_attributes[3 * v29];
            }

            else
            {
              ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): invalid outcome=%d\n", "checkpoint_get_outcome_attributes", v29);
              v30 = checkpoint_outcome_attributes;
            }

            v32 = *(v14 + 48);
            bzero(v49, 0x400uLL);
            if (*v30 != 1)
            {
              if (*(v30 + 6))
              {
                if (*(v14 + 64))
                {
                  checkpoint_reboot_retry_chassis_aware(a1, v32);
                }

                else
                {
                  checkpoint_get_nvram_value_string(v32, v49);
                  checkpoint_nvram_store_anomaly(a1, v38, "[chassis_aware]outcome=%s(pre_existing_reboot_retry_not_in_zone)", v49);
                }
              }

              *(a1 + 1480) = 1;
              *(a1 + 1488) = "access now enabled";
              goto LABEL_103;
            }

            v33 = *(v14 + 64);
            if (*(v30 + 5))
            {
              if (!v33)
              {
                checkpoint_get_nvram_value_string(v32, v49);
                checkpoint_nvram_store_anomaly(a1, v34, "[chassis_aware]outcome=%s(pre_existing_reboot_retry_not_in_zone)", v49);
LABEL_103:
                if (v21 && !*(a1 + 104))
                {
                  checkpoint_nvram_store_anomaly(a1, v22, "[chassis_aware]pre-existing NVRAM implied reboot-retry but values were inconsistent");
                }

                goto LABEL_116;
              }
            }

            else if (!v33)
            {
              goto LABEL_103;
            }

            checkpoint_reboot_retry_chassis_aware(a1, v32);
            goto LABEL_103;
          }
        }

        else
        {
          checkpoint_nvram_collect_var(a1, 1u, 0x2Fu, (a1 + 1080));
          if (!*(a1 + 1080))
          {
            *(a1 + 2296) = 1;
            goto LABEL_24;
          }

          if (*a1 == 2)
          {
            checkpoint_nvram_delete_var(a1, 0x2Fu, 0, 0);
          }

          *(a1 + 2297) = 1;
          *(a1 + 692) = 0;
          v7 = (a1 + 1016);
          v8 = -4;
          do
          {
            checkpoint_nvram_collect_var(a1, 1u, v8 + 43, v7++);
          }

          while (!__CFADD__(v8++, 1));
          *(a1 + 2296) = 1;
        }
      }

      *(a1 + 688) = 2;
      if (!a3)
      {
        checkpoint_history_add(a1, 2, 1, 0, 256, "NVRAM access is not currently available", 0, 0, 0);
      }

      v6 = 0;
    }
  }

LABEL_20:
  if (!*(a1 + 96))
  {
    checkpoint_outcome_init(a1, v6);
  }

  return v6;
}

void *checkpoint_history_add(int *a1, int a2, int a3, int a4, int a5, const char *a6, int a7, int a8, const void *a9)
{
  v17 = calloc(1uLL, 0x78uLL);
  if (!v17)
  {
    return v17;
  }

  v94 = 0;
  asprintf(&v94, "%s", a6);
  if (!v94)
  {
    free(v17);
    return 0;
  }

  *(v17 + 2) = a2;
  v17[2] = time(0);
  gettimeofday((v17 + 3), 0);
  *(v17 + 10) = getpid();
  *(v17 + 11) = getppid();
  *(v17 + 12) = a3;
  *(v17 + 13) = a4;
  *(v17 + 14) = a5;
  v17[8] = v94;
  *(v17 + 18) = a7;
  *(v17 + 19) = a8;
  if (a9)
  {
    v17[10] = a9;
    CFRetain(a9);
    a5 = *(v17 + 14);
  }

  *(v17 + 22) = a5 | (*(v17 + 2) << 16) | 0x11000000;
  *v98 = 0x1500000001;
  v95[0] = 0;
  v95[1] = 0;
  v96 = 16;
  if (sysctl(v98, 2u, v95, &v96, 0, 0))
  {
    v18 = -1;
  }

  else
  {
    v18 = v17[2] - v95[0];
  }

  v19 = *(v17 + 2);
  if (v19 <= 0x21)
  {
    if (((1 << v19) & 0x100000090) != 0)
    {
      checkpoint_nvram_store_by_id_try_int(a1, 0xDu, *(v17 + 14) | 0x11070000, *(v17 + 18), *(v17 + 19));
      v22 = v17[10];
      if (v22)
      {
        Code = CFErrorGetCode(v22);
        Domain = CFErrorGetDomain(v17[10]);
        v25 = checkpoint_cferror_alloc_string(v17[10]);
        checkpoint_nvram_store_by_id_try_int(a1, 0xFu, *(v17 + 22), *(v17 + 18), Code);
        if (Domain)
        {
          bzero(buffer, 0x400uLL);
          CFStringGetCString(Domain, buffer, 1024, 0x8000100u);
          checkpoint_nvram_store_by_id_try(a1, 0x10u, *(v17 + 22), *(v17 + 18), buffer);
        }

        if (v25)
        {
          checkpoint_nvram_store_by_id(a1, 0x11u, *(v17 + 22), v25);
          free(v25);
        }
      }

      goto LABEL_76;
    }

    if (((1 << v19) & 0x200000020) != 0)
    {
      v20 = *(v17 + 18);
      v21 = *(v17 + 14);
      if (v20)
      {
        checkpoint_nvram_store_by_id_try_int(a1, 0xDu, v21 | 0x11070000, v20, 0);
        goto LABEL_76;
      }

      v35 = a1 + 378;
      v36 = 92;
      if (!*(a1 + 104))
      {
        v36 = 44;
      }

      v37 = &v35[v36];
      v38 = *(v37 + 1);
      if (v38)
      {
        v39 = v21 | 0x11030000;
        if (*v38 == v39)
        {
          v40 = 0;
          *v38 = 0;
LABEL_41:
          v41 = &v38[v40 + 1];
          v42 = v40 - 7;
          do
          {
            *(v41 - 1) = *v41;
            ++v41;
            v43 = __CFADD__(v42++, 1);
          }

          while (!v43);
LABEL_44:
          v38[7] = 0;
          *(v37 + 4) = 1;
          goto LABEL_53;
        }

        v44 = v38 + 1;
        v45 = -1;
        while (v45 != 6)
        {
          v46 = *v44;
          v44 += 2;
          ++v45;
          if (v46 == v39)
          {
            *(v44 - 1) = 0;
            if (v45 > 5)
            {
              goto LABEL_44;
            }

            v40 = v45 + 1;
            goto LABEL_41;
          }
        }
      }

      v47 = a1[376];
      if (!v47)
      {
        ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): {%s} tracking information lost on remove [%s]\n", "checkpoint_nvram_remove_lost", "checkpoint_nvram_remove_by_id_int", "not removed");
        v47 = a1[376];
      }

      a1[376] = v47 + 1;
LABEL_53:
      v48 = 24;
      if (!*(a1 + 104))
      {
        v48 = 12;
      }

      if ((0x1001100uLL >> v48))
      {
        v49 = &v35[4 * v48];
        v50 = *(v49 + 1);
        if (v50)
        {
          v51 = *(v17 + 14) | 0x11030000;
          v52 = v50 + 28;
          if (*v50 == v51)
          {
            v53 = 0;
LABEL_66:
            v57 = &v50[4 * v53];
            v58 = v57[1];
            if (v58)
            {
              free(v58);
            }

            *v57 = 0;
            v57[1] = 0;
            if (v53 <= 6)
            {
              v59 = v57 + 2;
              v60 = v53 - 7;
              do
              {
                *(v59 - 1) = *v59;
                ++v59;
                v43 = __CFADD__(v60++, 1);
              }

              while (!v43);
            }

            *v52 = 0;
            v52[1] = 0;
            *(v49 + 4) = 1;
            goto LABEL_76;
          }

          v53 = 0;
          v55 = v50 + 4;
          while (v53 != 7)
          {
            ++v53;
            v56 = *v55;
            v55 += 4;
            if (v56 == v51)
            {
              goto LABEL_66;
            }
          }
        }
      }

      v61 = a1[376];
      if (!v61)
      {
        ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): {%s} tracking information lost on remove [%s]\n", "checkpoint_nvram_remove_lost", "checkpoint_nvram_remove_by_id", "not removed");
        v61 = a1[376];
      }

      a1[376] = v61 + 1;
LABEL_76:
      checkpoint_nvram_store_long(a1, 0x12u, v18);
      checkpoint_nvram_store_long(a1, 0x15u, *(v17 + 14));
      goto LABEL_77;
    }

    if (v19 == 6)
    {
      checkpoint_nvram_store_by_id_try(a1, 0xEu, *(v17 + 22), *(v17 + 18), v17[8]);
      goto LABEL_77;
    }
  }

  if (v19 == 3)
  {
    if (!*(v17 + 18))
    {
      v26 = a1[374] + 1;
      a1[374] = v26;
      v27 = *(v17 + 22);
      v28 = 92;
      if (!*(a1 + 104))
      {
        v28 = 44;
      }

      v29 = &a1[v28];
      v30 = *(v29 + 190);
      if (!v30)
      {
        goto LABEL_59;
      }

      v31 = 0;
      v32 = *(v29 + 190);
      do
      {
        v33 = *v32;
        v32 += 2;
        if (v33)
        {
          v34 = 0;
        }

        else
        {
          v34 = v30;
        }

        if (v31 > 6)
        {
          break;
        }

        ++v31;
        v30 = v32;
      }

      while (!v34);
      if (v34)
      {
        *v34 = v27;
        v34[1] = v26;
        *(v29 + 1516) = 1;
      }

      else
      {
LABEL_59:
        v54 = a1[375];
        if (!v54)
        {
          ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): {%s} tracking information lost on store [%s]\n", "checkpoint_nvram_store_lost", "checkpoint_nvram_store_by_id_int", "dest_store == NULL");
          v54 = a1[375];
          v27 = *(v17 + 22);
        }

        a1[375] = v54 + 1;
      }

      checkpoint_nvram_store_by_id(a1, 0xCu, v27, v17[8]);
    }

    goto LABEL_76;
  }

  if (v19 == 1)
  {
    checkpoint_nvram_store_by_id(a1, 0xAu, *(v17 + 22), v17[8]);
  }

LABEL_77:
  *v17 = 0;
  **(a1 + 27) = v17;
  *(a1 + 27) = v17;
  v62 = a1[56] + 1;
  a1[56] = v62;
  if (v62 >= 0x201)
  {
    v63 = a1 + 52;
    do
    {
      v64 = *v63;
      v65 = **v63;
      *v63 = v65;
      if (!v65)
      {
        *(a1 + 27) = v63;
      }

      a1[56] = v62 - 1;
      v66 = v64[8];
      if (v66)
      {
        free(v66);
        v64[8] = 0;
      }

      v67 = v64[10];
      if (v67)
      {
        CFRelease(v67);
      }

      free(v64);
      v62 = a1[56];
    }

    while (v62 > 0x200);
  }

  memset(buffer, 0, 56);
  v95[0] = 0;
  gmtime_r(v17 + 2, buffer);
  v68 = *(v17 + 2);
  if (v68 > 0x21)
  {
    v69 = "GENERAL";
  }

  else
  {
    v69 = checkpoint_history_type_name[v68];
  }

  asprintf(v95, "[%02u:%02u:%02u.%04u-GMT]{%u>%u} CHECKPOINT %s", buffer[0].tm_hour, buffer[0].tm_min, buffer[0].tm_sec, *(v17 + 8) / 1000, *(v17 + 11), *(v17 + 10), v69);
  v70 = v95[0];
  *&buffer[0].tm_sec = 0;
  if (*(v17 + 19))
  {
    asprintf(buffer, "(FAILURE:%d) ");
  }

  else
  {
    v71 = *(v17 + 2);
    if (v71 <= 0x1C && ((1 << v71) & 0x18000080) != 0)
    {
      asprintf(buffer, "(SUCCESS) ", v92);
    }

    else
    {
      asprintf(buffer, " ", v92);
    }
  }

  v72 = *&buffer[0].tm_sec;
  if (!v70 || !*&buffer[0].tm_sec)
  {
    goto LABEL_158;
  }

  *&buffer[0].tm_sec = 0;
  if (*(v17 + 14))
  {
    v73 = *(v17 + 2);
    if (v73 == 28 || v73 == 1)
    {
      asprintf(buffer, "[0x%04X] %s");
    }

    else if (*(v17 + 12) == 1)
    {
      asprintf(buffer, "%s");
    }

    else
    {
      asprintf(buffer, "%s:[0x%04X] %s");
    }

    v74 = *&buffer[0].tm_sec;
  }

  else
  {
    v74 = 0;
  }

  v95[0] = 0;
  v75 = *(v17 + 2);
  if (v75 == 28)
  {
    *&buffer[0].tm_sec = 0;
    if (!*(v17 + 19))
    {
      asprintf(buffer, "... %s");
      goto LABEL_131;
    }

    v78 = checkpoint_nvram_copy_encode_c_string(a1, 9);
    v79 = checkpoint_nvram_copy_string(a1, (a1 + 272), 0xCu);
    v80 = v79;
    v81 = a1[27];
    if (v81 > 6)
    {
      v82 = "GENERAL";
    }

    else
    {
      v82 = checkpoint_failure_type_name[v81];
    }

    if (v78)
    {
      if (!v79)
      {
        asprintf(buffer, "[%s] %s", v82, v78);
        v84 = v78;
        goto LABEL_130;
      }

      asprintf(buffer, "[%s] %s %s", v82, v79, v78);
      free(v78);
    }

    else
    {
      if (!v79)
      {
        asprintf(buffer, "[%s]");
LABEL_131:
        v77 = *&buffer[0].tm_sec;
        if (v74)
        {
          goto LABEL_115;
        }

LABEL_132:
        if (v77)
        {
          asprintf(v95, "%s:%s %s", v70, v72, v77);
LABEL_135:
          v83 = 1;
          goto LABEL_136;
        }

LABEL_134:
        asprintf(v95, "%s:%s", v70, v72);
        v77 = 0;
        goto LABEL_135;
      }

      asprintf(buffer, "[%s] %s", v82, v79);
    }

    v84 = v80;
LABEL_130:
    free(v84);
    goto LABEL_131;
  }

  if (v75 == 27)
  {
    v76 = checkpoint_nvram_copy_encode_c_string(a1, 13);
    v77 = v76;
    if (*v76 == 123 && v76[1] == 125 && !v76[2])
    {
      free(v76);
      if (!v74)
      {
        goto LABEL_134;
      }

      goto LABEL_117;
    }
  }

  else
  {
    v77 = checkpoint_cferror_alloc_string(v17[10]);
  }

  if (!v74)
  {
    goto LABEL_132;
  }

LABEL_115:
  if (!v77)
  {
LABEL_117:
    asprintf(v95, "%s:%s%s", v70, v72, v74);
    v83 = 0;
    v77 = 0;
    goto LABEL_136;
  }

  asprintf(v95, "%s:%s%s %s", v70, v72, v74, v77);
  v83 = 0;
LABEL_136:
  v85 = v95[0];
  if (v95[0])
  {
    v93 = v83;
    if (*(v17 + 2) == 28)
    {
      if (a1[22] == 2)
      {
        v86 = 1;
      }

      else
      {
        v86 = 3;
      }
    }

    else
    {
      v86 = 1;
    }

    while (1)
    {
      ramrod_log_msg("%s\n", v85);
      if (*(v17 + 2) == 28)
      {
        ramrod_log_msg("\n^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^\n");
      }

      if (v86 < 2)
      {
        break;
      }

      --v86;
      sleep(1u);
    }

    v87 = v95[0];
    v88 = calloc(1uLL, 0x10uLL);
    if (v88)
    {
      v89 = v88;
      v88[1] = v87;
      if (*a1 == 1)
      {
        *v88 = 0;
        **(a1 + 63) = v88;
        *(a1 + 63) = v88;
      }

      else
      {
        pthread_mutex_lock(a1 + 4);
        v90 = *a1;
        *v89 = 0;
        **(a1 + 63) = v89;
        *(a1 + 63) = v89;
        if (v90 != 1)
        {
          pthread_mutex_unlock(a1 + 4);
        }
      }

      *(a1 + 232) = 1;
      v83 = v93;
    }

    else if (v87)
    {
      free(v87);
    }
  }

  if ((v83 & 1) == 0)
  {
    free(v74);
  }

  if (v77)
  {
    free(v77);
  }

LABEL_158:
  if (v70)
  {
    free(v70);
  }

  if (v72)
  {
    free(v72);
  }

  return v17;
}

void checkpoint_nvram_collect(int *a1, unsigned int *a2)
{
  if (*(a2 + 4))
  {
    ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): first available indication when already collected\n", "checkpoint_nvram_collect");
    return;
  }

  v4 = 0;
  v5 = 0;
  v6 = a2 + 2;
  do
  {
    checkpoint_nvram_collect_var(a1, *a2, v5, &v6[v4]);
    v7 = *a1;
    if ((v5 - 39) <= 3 && v7 == 2)
    {
      if (*&v6[2 * v5])
      {
        goto LABEL_13;
      }
    }

    else if (v5 >= 0x2B && v5 != 47 && v7 == 2)
    {
      v8 = *&v6[2 * v5];
      if (v8)
      {
        bzero(v9, 0x400uLL);
        checkpoint_get_nvram_value_string(v8, v9);
        checkpoint_nvram_store_string(a1, v5 - 4, v9);
LABEL_13:
        checkpoint_nvram_delete_var(a1, v5, 0, 0);
      }
    }

    ++v5;
    v4 += 2;
  }

  while (v5 != 48);
  *(a2 + 4) = 1;
}

uint64_t checkpoint_get_outcome_type(uint64_t a1, uint64_t a2)
{
  v2 = checkpoint_nvram_copy_string(a1, a2, 5u);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = 0;
  do
  {
    if (!strcmp(v3, checkpoint_outcome_names[v4]))
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    if (v5)
    {
      break;
    }
  }

  while (v4++ < 0x21);
  free(v3);
  return v5;
}

void checkpoint_nvram_store_anomaly(int *a1, uint64_t a2, char *a3, ...)
{
  va_start(va, a3);
  v4[0] = 0;
  va_copy(&v4[1], va);
  vasprintf(v4, a3, va);
  if (v4[0])
  {
    checkpoint_history_add(a1, 30, 1, 0, 260, v4[0], 0, 0, 0);
    checkpoint_nvram_store_by_id(a1, 8u, a1[30], v4[0]);
    if (v4[0])
    {
      free(v4[0]);
      v4[0] = 0;
    }
  }

  ++a1[30];
}

void checkpoint_outcome_progress(uint64_t result, uint64_t a2)
{
  v2 = *(result + 96);
  v3 = *(&checkpoint_outcome_progress_table + v2);
  if (*(v3 + 4 * a2))
  {
    v4 = a2;
    *(result + 92) = v2;
    v6 = *(v3 + 4 * a2);
    *(result + 96) = v6;
    if (v6 > 0x21)
    {
      v7 = "unknown";
    }

    else
    {
      v7 = checkpoint_outcome_names[v6];
    }

    checkpoint_nvram_store_string(result, 5u, v7);

    checkpoint_log_progress(result, v4);
  }
}

void checkpoint_nvram_delete_var(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  if (a2 < 0x30)
  {
    v5 = &checkpoint_nvram_map[4 * a2];
    if (a3 || (*(v5 + 6) - 5) < 0xFFFFFFFD)
    {
      bzero(buffer, 0x400uLL);
      if (*(a1 + 88) == 1)
      {
        v6 = v5;
      }

      else
      {
        v6 = (v5 + 1);
      }

      v7 = *v6;
      CFStringGetCString(*v6, buffer, 1024, 0x8000100u);
      checkpoint_nvram_delete_var_raw(v7);
    }

    else
    {
      ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): invalid delete of BOOT-CONTROL NVRAM ID %u\n");
    }
  }

  else
  {
    ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): invalid delete of NVRAM ID %u\n");
  }
}

char *checkpoint_get_nvram_value_string(const __CFString *a1, char *a2)
{
  if (a1)
  {
    CFStringGetCString(a1, a2, 1024, 0x8000100u);
  }

  else
  {
    bzero(a2, 0x400uLL);
  }

  return a2;
}

void checkpoint_nvram_store_string(uint64_t result, unsigned int a2, const char *a3)
{
  if (*(result + 104))
  {
    if (a2 > 0x2F)
    {
      ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): invalid variable ID=%d\n", "checkpoint_nvram_adjust_id", a2);
      v5 = 0;
      v6 = result + 1512;
      goto LABEL_7;
    }

    a2 = checkpoint_nvram_map[4 * a2 + 2];
  }

  if (a2 > 0x2F)
  {
    goto LABEL_12;
  }

  v5 = a2;
  v6 = result + 16 * a2 + 1512;
LABEL_7:
  if ((0xFFFC000000FEuLL >> v5))
  {
    v7 = *(v6 + 8);
    if (v7)
    {
      if (*v7)
      {
        free(*v7);
        *v7 = 0;
      }

      checkpoint_nvram_store_set_string(result + 1480, v7, a3);
      *(v6 + 4) = 1;
      return;
    }
  }

LABEL_12:
  v8 = *(result + 1500);
  if (!v8)
  {
    ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): {%s} tracking information lost on store [%s]\n", "checkpoint_nvram_store_lost", "checkpoint_nvram_store_string", "wrong type or internalStore.string == NULL");
    v8 = *(result + 1500);
  }

  *(result + 1500) = v8 + 1;
}

void checkpoint_access_obtain(_DWORD *result)
{
  if (result)
  {
    if (*result != 1)
    {
      v2 = (result + 2);

      pthread_mutex_lock(v2);
    }
  }

  else
  {
    ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): checkpoint context not initialized\n", "checkpoint_access_obtain");
  }
}

void checkpoint_access_yield(_DWORD *result)
{
  if (result)
  {
    if (*result != 1)
    {
      v2 = (result + 2);

      pthread_mutex_unlock(v2);
    }
  }

  else
  {
    ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): checkpoint context not initialized\n", "checkpoint_access_yield");
  }
}

timeval *checkpoint_time_copy_current_time()
{
  v0 = calloc(1uLL, 0x18uLL);
  if (!v0)
  {
    abort();
  }

  v1 = v0;
  v0[1].tv_sec = mach_absolute_time();
  gettimeofday(v1, 0);
  return v1;
}

timeval *checkpoint_closure_context_set_start_time(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    *(a1 + 72) = 1;
    free(v2);
  }

  result = checkpoint_time_copy_current_time();
  *(a1 + 56) = result;
  return result;
}

timeval *checkpoint_closure_context_set_end_time(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    free(v2);
  }

  result = checkpoint_time_copy_current_time();
  *(a1 + 64) = result;
  return result;
}

void checkpoint_closure_context_set_encountered_async_error(_DWORD *result, uint64_t a2, __CFError *a3)
{
  if (a3)
  {
    v4 = a2;
    v6 = checkpoint_chassis_context;
    if (!checkpoint_error_is_cancel_error(a3))
    {
      v7 = *(result + 1);
      if (!v7 || (*(v7 + 36) & 3) == 0 || !checkpoint_tolerated_treat_as_success_minimized(v6, v7))
      {
        checkpoint_access_obtain(v6);
        v8 = (v6 + 48);
        v9 = (v6 + 48);
        while (1)
        {
          v9 = *v9;
          if (!v9)
          {
            break;
          }

          if (*(v9 + 32) == result[19])
          {
            goto LABEL_12;
          }
        }

        v9 = *v8;
        if (!*v8)
        {
          checkpoint_chassis_set_global_async_error(v6, v4, a3, *(result + 1));
          goto LABEL_19;
        }

LABEL_12:
        if (!*(v9 + 144) && !*(v9 + 137))
        {
          checkpoint_engine_set_async_error(v9, v4, a3, *(result + 1));
          for (i = *v8; i != v9; i = *i)
          {
            checkpoint_engine_cancel(i);
          }

          checkpoint_engine_cancel(v9);
        }

LABEL_19:

        checkpoint_access_yield(v6);
      }
    }
  }
}

__CFError *checkpoint_error_is_cancel_error(__CFError *result)
{
  if (result)
  {
    v1 = result;
    if (CFErrorGetCode(result) == 1)
    {
      Domain = CFErrorGetDomain(v1);
      return (CFEqual(Domain, @"CheckpointEngineErrorDomain") != 0);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t checkpoint_tolerated_treat_as_success_minimized(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 984);
  if (v4)
  {
    v5 = CFStringCompare(v4, @"true", 0) == kCFCompareEqualTo;
  }

  else
  {
    v5 = 0;
  }

  should_do_legacy_restored_internal_behaviors = ramrod_should_do_legacy_restored_internal_behaviors();
  v7 = *(a1 + 88);
  v8 = (v7 == 1) & (should_do_legacy_restored_internal_behaviors ^ 1 | v5);
  v9 = v7 != 2 || v5;
  if (v9 != 1 || v8 != 0)
  {
    v11 = *(a2 + 36);
    if ((v11 & 3) != 0)
    {
      if ((v11 & 2) == 0)
      {
        return 1;
      }

      v13 = 0;
      v14 = a2 + 40;
      do
      {
        v15 = *(v14 + v13);
        if (!v15)
        {
          break;
        }

        failed_entry = checkpoint_tolerated_get_failed_entry(*(a1 + 2280), v15);
        if (failed_entry && (!*(a1 + 104) || *(failed_entry + 48) == 1 && *(failed_entry + 14)))
        {
          return 1;
        }

        v13 += 4;
      }

      while (v13 != 40);
    }
  }

  return 0;
}

__n128 checkpoint_engine_set_async_error(uint64_t a1, int a2, __CFError *a3, uint64_t a4)
{
  if (checkpoint_error_is_cancel_error(a3))
  {
    abort();
  }

  v8 = *(a1 + 144);
  if (v8)
  {
    CFRelease(v8);
  }

  *(a1 + 144) = 0;
  free(*(a1 + 160));
  *(a1 + 160) = 0;
  *(a1 + 152) = 0;
  if (a3)
  {
    if (!a4)
    {
      checkpoint_engine_set_async_error_cold_1();
    }

    *(a1 + 152) = a2;
    *(a1 + 144) = CFRetain(a3);
    v10 = calloc(1uLL, 0x60uLL);
    *(a1 + 160) = v10;
    v11 = *(a4 + 16);
    *v10 = *a4;
    v10[1] = v11;
    result = *(a4 + 64);
    v12 = *(a4 + 80);
    v14 = *(a4 + 32);
    v13 = *(a4 + 48);
    v10[4] = result;
    v10[5] = v12;
    v10[2] = v14;
    v10[3] = v13;
  }

  return result;
}

void *checkpoint_engine_cancel(void *result)
{
  if (!*(result + 137))
  {
    v1 = result;
    v2 = result[2];
    if (*v2)
    {
      v3 = v2 + 24;
      do
      {
        result = *(v3 - 2);
        if (result)
        {
          if (!*(v3 - 8))
          {
            result = [result cancel];
          }
        }

        v4 = *v3;
        v3 += 24;
      }

      while (v4);
    }

    *(v1 + 137) = 1;
  }

  return result;
}

__n128 checkpoint_chassis_set_global_async_error(uint64_t a1, int a2, __CFError *a3, uint64_t a4)
{
  if (checkpoint_error_is_cancel_error(a3))
  {
    abort();
  }

  v8 = *(a1 + 168);
  if (v8)
  {
    CFRelease(v8);
  }

  *(a1 + 168) = 0;
  free(*(a1 + 184));
  *(a1 + 184) = 0;
  *(a1 + 176) = 0;
  if (a3)
  {
    if (!a4)
    {
      checkpoint_chassis_set_global_async_error_cold_1();
    }

    CFRetain(a3);
    *(a1 + 176) = a2;
    *(a1 + 168) = a3;
    v10 = calloc(1uLL, 0x60uLL);
    *(a1 + 184) = v10;
    v11 = *(a4 + 16);
    *v10 = *a4;
    v10[1] = v11;
    result = *(a4 + 64);
    v12 = *(a4 + 80);
    v14 = *(a4 + 32);
    v13 = *(a4 + 48);
    v10[4] = result;
    v10[5] = v12;
    v10[2] = v14;
    v10[3] = v13;
  }

  return result;
}

char *checkpoint_cferror_alloc_string(CFErrorRef err)
{
  if (!err)
  {
    return 0;
  }

  v1 = err;
  v2 = 0;
  v3 = 0;
  do
  {
    v4 = CFErrorCopyUserInfo(v1);
    v2 = checkpoint_append_and_free(v2, "[%d]", v3);
    if (!v4)
    {
      break;
    }

    v16 = 0;
    Value = CFDictionaryGetValue(v4, kCFErrorLocalizedRecoverySuggestionKey);
    v6 = checkpoint_cferror_append(v2, "RS", Value, &v16);
    v7 = CFDictionaryGetValue(v4, kCFErrorLocalizedDescriptionKey);
    v8 = checkpoint_cferror_append(v6, "LD", v7, &v16);
    v9 = CFDictionaryGetValue(v4, kCFErrorDescriptionKey);
    v10 = checkpoint_cferror_append(v8, "D", v9, &v16);
    v11 = CFDictionaryGetValue(v4, kCFErrorLocalizedFailureReasonKey);
    v2 = checkpoint_cferror_append(v10, "FR", v11, &v16);
    v1 = CFDictionaryGetValue(v4, kCFErrorUnderlyingErrorKey);
    CFRelease(v4);
    if (!v1)
    {
      break;
    }
  }

  while (v3++ < 0xF);
  v13 = strlen(v2);
  if (v13 >= 0xF3)
  {
    v15 = 0;
    asprintf(&v15, "%s", &v2[v13 - 242]);
    if (v2)
    {
      free(v2);
    }

    return v15;
  }

  return v2;
}

uint64_t checkpoint_closure_context_get_step_desc(uint64_t result)
{
  if (result)
  {
    return *result;
  }

  return result;
}

uint64_t checkpoint_closure_context_should_retry(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 48);
    *(result + 48) = v1 + 1;
    return !*(result + 19) && v1 < *(*result + 28);
  }

  return result;
}

uint64_t checkpoint_closure_context_handle_simulator_actions(uint64_t *a1, uint64_t a2, int *a3, __CFError **a4)
{
  if (!a1)
  {
    ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): closure context is NULL\n", a2);
    return a2;
  }

  if (!checkpoint_chassis_context)
  {
    ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): %s called too early, checkpoint_chassis_context == NULL\n", a2, a3);
    return a2;
  }

  v5 = *a1;
  v6 = checkpoint_chassis_context;

  return checkpoint_simulator_action(v6, v5, a2, a3, a4);
}

uint64_t checkpoint_simulator_action(uint64_t a1, uint64_t a2, unsigned int a3, int *a4, __CFError **a5)
{
  if (a5 && checkpoint_error_is_cancel_error(*a5))
  {
    return 0;
  }

  v11 = a3;
  checkpoint_access_obtain(a1);
  checkpoint_simulator_configure(a1);
  if (!*(a1 + 2300) || !*(a1 + 2312))
  {
    goto LABEL_17;
  }

  v12 = CFStringCreateWithCString(kCFAllocatorDefault, *(a2 + 8), 0x8000100u);
  Count = CFArrayGetCount(*(a1 + 2312));
  if (Count < 1)
  {
    v20 = 0;
    if (!v12)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v14 = Count;
  ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 2312), 0);
  if (CFStringCompare(v12, ValueAtIndex, 0) == kCFCompareEqualTo)
  {
    v20 = 1;
    if (!v12)
    {
      goto LABEL_13;
    }

LABEL_12:
    CFRelease(v12);
    goto LABEL_13;
  }

  v16 = 1;
  do
  {
    v17 = v16;
    if (v14 == v16)
    {
      break;
    }

    v18 = CFArrayGetValueAtIndex(*(a1 + 2312), v16);
    v19 = CFStringCompare(v12, v18, 0);
    v16 = v17 + 1;
  }

  while (v19);
  v20 = v17 < v14;
  if (v12)
  {
    goto LABEL_12;
  }

LABEL_13:
  if (v20)
  {
    v21 = *(a1 + 2308);
    if (!v21)
    {
      if (a3)
      {
        checkpoint_history_add(a1, *(a1 + 2300), 1, 0, *a2, *(a2 + 8), *(a1 + 2304), *a4, *a5);
      }

      checkpoint_access_yield(a1);
      v26 = 0;
      v22 = 0;
      switch(*(a1 + 2300))
      {
        case 9:
          goto LABEL_77;
        case 0xA:
          if (*(a1 + 2299) == a3)
          {
            *a4 = 181;
            ramrod_create_error_cf(a5, @"CheckpointErrorDomain", 181, 0, @"checkpoint simulator error", v23, v24, v25, v35);
          }

          goto LABEL_73;
        case 0xB:
          if (*(a1 + 2299) == a3)
          {
            abort();
          }

          goto LABEL_73;
        case 0xC:
          if (*(a1 + 2299) == a3)
          {
            exit(182);
          }

          goto LABEL_73;
        case 0xD:
          if (*(a1 + 2299) == a3)
          {
            _exit(183);
          }

          goto LABEL_73;
        case 0xE:
          if (*(a1 + 2299) == a3)
          {
            for (i = 0; ; ++i)
            {
              ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): simulator signal executing after dereference of %p [%d]\n", "checkpoint_simulator_action", i, *i);
            }
          }

          goto LABEL_73;
        case 0xF:
          if (*(a1 + 2299) == a3)
          {
              ;
            }
          }

          goto LABEL_73;
        case 0x10:
          if (*(a1 + 2299) == a3)
          {
            memset(&v37, 0, sizeof(v37));
            v36.__sig = 0;
            *v36.__opaque = 0;
            pthread_mutexattr_init(&v36);
            pthread_mutex_init(&v37, &v36);
            pthread_mutex_lock(&v37);
            pthread_mutex_lock(&v37);
          }

          goto LABEL_73;
        case 0x11:
          if (*(a1 + 2299) != a3)
          {
            goto LABEL_73;
          }

          v30 = mach_host_self();
          v31 = 0;
          goto LABEL_72;
        case 0x12:
          goto LABEL_51;
        case 0x13:
          ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): simulator PAUSE not supported\n");
          goto LABEL_73;
        case 0x14:
          ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): simulator RESUME not supported\n");
          goto LABEL_73;
        case 0x15:
          if (*(a1 + 2299) != a3)
          {
            goto LABEL_73;
          }

          __break(1u);
LABEL_51:
          if (*(a1 + 2299) != a3)
          {
            goto LABEL_73;
          }

          v30 = mach_host_self();
          v31 = 4096;
LABEL_72:
          host_reboot(v30, v31);
LABEL_73:
          v22 = 0;
LABEL_74:
          v26 = a3;
LABEL_75:
          if (!a3)
          {
            goto LABEL_77;
          }

          v11 = v26;
          if (!v26)
          {
            goto LABEL_77;
          }

          goto LABEL_18;
        case 0x16:
          v22 = a3 == 0;
          goto LABEL_74;
        case 0x17:
          v22 = 0;
          if (*(a1 + 2299) == a3)
          {
            v26 = 0;
          }

          else
          {
            v26 = a3;
          }

          if (a3 || *(a1 + 2299))
          {
            goto LABEL_75;
          }

          if (*a4)
          {
            ramrod_log_msg("CHECKPOINT_SIMULATOR_NOTICE(%s): checkpoint simulator ignoring error on step %s result: %d\n", "checkpoint_simulator_action", *(a2 + 8), *a4);
            *a4 = 0;
            if (*a5)
            {
              v28 = checkpoint_cferror_alloc_string(*a5);
              if (v28)
              {
                v29 = v28;
                ramrod_log_msg("CHECKPOINT_SIMULATOR_NOTICE(%s): checkpoint simulator ignoring error on step %s error: %s\n", "checkpoint_simulator_action", *(a2 + 8), v28);
                free(v29);
              }

              CFRelease(*a5);
              v26 = 0;
              v22 = 0;
              *a5 = 0;
LABEL_77:
              v33 = *(a1 + 2304);
              if (v33)
              {
                v34 = v33 - 1;
                *(a1 + 2304) = v34;
                if (!v34)
                {
                  *(a1 + 2300) = 0;
                }
              }

              v11 = v26;
              goto LABEL_18;
            }
          }

          else
          {
            ramrod_log_msg("CHECKPOINT_SIMULATOR_NOTICE(%s): checkpoint simulator to ignore error on step %s, but step was successful\n", "checkpoint_simulator_action", *(a2 + 8));
          }

          v26 = 0;
          v22 = 0;
          goto LABEL_77;
        case 0x18:
          if (*(a1 + 2299) == a3)
          {
            checkpoint_simulator_jetsam();
            ramrod_log_msg("CHECKPOINT_SIMULATOR_NOTICE(%s): returned from checkpoint jetsam attempt; continuing engine\n");
          }

          goto LABEL_73;
        case 0x19:
          if (*(a1 + 2299) == a3)
          {
            v27 = fork();
            if (v27 < 1)
            {
              if (!v27)
              {
                checkpoint_simulator_jetsam();
                exit(0);
              }

              __error();
              ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): error %d attempting to fork jetsam child\n");
            }

            else
            {
              LODWORD(v37.__sig) = 0;
              if (waitpid(v27, &v37, 0) < 0)
              {
                __error();
                ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): error %d waiting for jetsam child\n");
              }

              else if ((v37.__sig & 0x7F) == 0x7F)
              {
                ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): unexpected status of jetsam child: %d\n");
              }

              else if ((v37.__sig & 0x7F) != 0)
              {
                ramrod_log_msg("CHECKPOINT_SIMULATOR_NOTICE(%s): jetsam child signalled: %d\n");
              }

              else
              {
                ramrod_log_msg("CHECKPOINT_SIMULATOR_NOTICE(%s): jetsam child exited: %d\n");
              }
            }
          }

          goto LABEL_73;
        default:
          ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): unknown simulator command ignored\n", "checkpoint_simulator_action");
          v22 = 0;
          v26 = 1;
          goto LABEL_75;
      }
    }

    if (!a3)
    {
      *(a1 + 2308) = v21 - 1;
    }
  }

LABEL_17:
  checkpoint_access_yield(a1);
  v22 = 0;
LABEL_18:
  if (a3)
  {
    return v11;
  }

  else
  {
    return v22;
  }
}

uint64_t checkpoint_closure_context_handle_simulator_match_name(uint64_t *a1)
{
  if (!a1)
  {
    ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): closure context is NULL\n");
    return 0;
  }

  if (!checkpoint_chassis_context)
  {
    ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): %s called too early, checkpoint_chassis_context == NULL\n");
    return 0;
  }

  v1 = *a1;
  v2 = checkpoint_chassis_context;

  return checkpoint_simulator_action_match(v2, v1);
}

uint64_t checkpoint_simulator_action_match(uint64_t a1, uint64_t a2)
{
  checkpoint_access_obtain(a1);
  checkpoint_simulator_configure(a1);
  if (*(a1 + 2300))
  {
    Count = CFArrayGetCount(*(a1 + 2312));
    v5 = CFStringCreateWithCString(kCFAllocatorDefault, *(a2 + 8), 0x8000100u);
    if (Count < 1)
    {
LABEL_6:
      v8 = 0;
    }

    else
    {
      v6 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 2312), v6);
        if (CFStringCompare(v5, ValueAtIndex, 0) == kCFCompareEqualTo)
        {
          break;
        }

        if (Count == ++v6)
        {
          goto LABEL_6;
        }
      }

      v8 = 1;
    }

    checkpoint_access_yield(a1);
    if (v5)
    {
      CFRelease(v5);
    }
  }

  else
  {
    checkpoint_access_yield(a1);
    return 0;
  }

  return v8;
}

char *checkpoint_append_and_free_key_v(char *a1, const char *a2, const char *a3, int *a4)
{
  v11 = 0;
  v12 = 0;
  asprintf(&v12, "%s:%s", a2, a3);
  v6 = v12;
  if (!v12)
  {
    return a1;
  }

  if (!a1)
  {
    return v12;
  }

  v7 = strlen(a1);
  v8 = strlen(v12);
  v9 = 1;
  if (*a4 > 0)
  {
    v9 = 2;
  }

  if (v8 + v7 + v9 >= 0x81)
  {
    v11 = a1;
LABEL_13:
    free(v6);
    return v11;
  }

  if (*a4 <= 0)
  {
    asprintf(&v11, "%s%s");
  }

  else
  {
    asprintf(&v11, "%s;%s");
  }

  ++*a4;
  free(a1);
  v6 = v12;
  if (v12)
  {
    goto LABEL_13;
  }

  return v11;
}

char *checkpoint_append_and_free(char *a1, const char *a2, ...)
{
  va_start(va, a2);
  v4 = 0;
  v5[0] = 0;
  va_copy(&v5[1], va);
  vasprintf(v5, a2, va);
  if (!v5[0])
  {
    return a1;
  }

  if (!a1)
  {
    return v5[0];
  }

  asprintf(&v4, "%s%s", a1, v5[0]);
  if (v4)
  {
    free(a1);
  }

  else
  {
    v4 = a1;
  }

  if (v5[0])
  {
    free(v5[0]);
    v5[0] = 0;
  }

  return v4;
}

char *checkpoint_append_and_free_id_v(char *a1, int a2, const char *a3, int *a4)
{
  v8 = 0;
  asprintf(&v8, "0x%08X", a2);
  if (v8)
  {
    a1 = checkpoint_append_and_free_key_v(a1, v8, a3, a4);
    if (v8)
    {
      free(v8);
    }
  }

  return a1;
}

char *checkpoint_append_and_free_try_v(char *a1, int a2, const char *a3, int *a4)
{
  v8 = 0;
  asprintf(&v8, "%d", a2);
  if (v8)
  {
    a1 = checkpoint_append_and_free_key_v(a1, v8, a3, a4);
    if (v8)
    {
      free(v8);
    }
  }

  return a1;
}

void checkpoint_outcome_init(uint64_t a1, int a2)
{
  if (*a1 == 1)
  {
    if (a2)
    {
      if (*(a1 + 104))
      {
        v3 = 17;
        goto LABEL_14;
      }

      v4 = *(a1 + 101) == 0;
      v3 = 5;
    }

    else
    {
      v4 = *(a1 + 88) == 2;
      v3 = 1;
    }
  }

  else if (a2)
  {
    if (*(a1 + 104))
    {
      v3 = 19;
      goto LABEL_14;
    }

    v4 = *(a1 + 101) == 0;
    v3 = 7;
  }

  else
  {
    v4 = *(a1 + 88) == 2;
    v3 = 3;
  }

  if (!v4)
  {
    ++v3;
  }

LABEL_14:
  *(a1 + 96) = v3;
  checkpoint_nvram_store_string(a1, 5u, checkpoint_outcome_names[v3]);

  checkpoint_log_progress(a1, 1);
}

void checkpoint_nvram_collect_var(int *a1, unsigned int a2, unsigned int a3, const __CFString **a4)
{
  cf = 0;
  bzero(buffer, 0x400uLL);
  bzero(v19, 0x400uLL);
  if (a3 < 0x30)
  {
    if (a1[22] == 1)
    {
      v9 = &checkpoint_nvram_map[4 * a3];
    }

    else
    {
      v9 = &checkpoint_nvram_map[4 * a3 + 1];
    }

    v10 = *v9;
    CFStringGetCString(*v9, buffer, 1024, 0x8000100u);
    v11 = ramrod_copy_NVRAM_variable(v10);
    if (!v11)
    {
      return;
    }

    v8 = v11;
    v12 = CFGetTypeID(v11);
    if (v12 == CFStringGetTypeID())
    {
      CFStringGetCString(v8, v19, 1024, 0x8000100u);
      *a4 = v8;
      v8 = 0;
      goto LABEL_22;
    }

    if (v12 == CFNumberGetTypeID())
    {
      LODWORD(valuePtr) = 0;
      if (!CFNumberGetValue(v8, kCFNumberIntType, &valuePtr))
      {
        v14 = "CHECKPOINT_INTERNAL_ERROR(%s): number that is not an int %s\n";
        goto LABEL_29;
      }

      v13 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%d", valuePtr);
      if (!v13)
      {
        v14 = "CHECKPOINT_INTERNAL_ERROR(%s): failed to get valid number for %s\n";
LABEL_29:
        ramrod_log_msg(v14, "checkpoint_nvram_collect_var", buffer);
        goto LABEL_3;
      }
    }

    else
    {
      if (v12 != CFDataGetTypeID())
      {
        ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): unsupported nvram variable type for %s\n");
        goto LABEL_3;
      }

      v13 = CFStringCreateFromExternalRepresentation(kCFAllocatorDefault, v8, 0x8000100u);
      if (!v13)
      {
        ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): failed to get string from data %s\n");
        goto LABEL_3;
      }
    }

    v15 = v13;
    CFStringGetCString(v13, v19, 1024, 0x8000100u);
    *a4 = v15;
LABEL_22:
    valuePtr = 0;
    if (a2 > 2)
    {
      v16 = "Unknown";
    }

    else
    {
      v16 = checkpoint_nvram_collection_name[a2];
    }

    asprintf(&valuePtr, "%s NVRAM variable: %s=%s", v16, buffer, v19);
    if (valuePtr)
    {
      checkpoint_history_add(a1, 2, 1, 0, 257, valuePtr, 0, 0, 0);
      free(valuePtr);
    }

    goto LABEL_3;
  }

  ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): invalid variable id=%u\n");
  v8 = 0;
LABEL_3:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v8)
  {
    CFRelease(v8);
  }
}

uint64_t checkpoint_nvram_adjust_id(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 104))
  {
    if (a2 > 0x2F)
    {
      ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): invalid variable ID=%d\n", "checkpoint_nvram_adjust_id", a2);
      return 0;
    }

    else
    {
      return LODWORD(checkpoint_nvram_map[4 * a2 + 2]);
    }
  }

  return a2;
}

uint64_t checkpoint_nvram_check_collection(int *a1, uint64_t a2, unsigned int *a3)
{
  memset(v23, 0, sizeof(v23));
  v4 = *a3;
  v5 = 1;
  v6 = 0;
  if (*a3)
  {
    v7 = 0;
    v20 = a2;
    v8 = a2 + 8;
    v9 = a3 + 2;
    do
    {
      *(v23 + v4) = 1;
      if (*(v8 + 8 * v4))
      {
        if (*(v9 - 3))
        {
          v6 = 1;
        }

        if (*(v9 - 2))
        {
          v7 = 1;
        }

        if (*(v9 - 1))
        {
          v10 = v4 <= 0x2F && (LODWORD(checkpoint_nvram_map[4 * v4 + 3]) - 2) < 3;
          checkpoint_nvram_delete_var(a1, v4, v10, 1);
        }
      }

      else if (*(v9 - 4))
      {
        bzero(buffer, 0x400uLL);
        if (v4 >= 0x30)
        {
          ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): invalid variable ID=%d\n", "checkpoint_get_nvram_name", v4);
          v4 = 0;
        }

        if (a1[22] == 1)
        {
          v11 = &checkpoint_nvram_map[4 * v4];
        }

        else
        {
          v11 = &checkpoint_nvram_map[4 * v4 + 1];
        }

        CFStringGetCString(*v11, buffer, 1024, 0x8000100u);
        checkpoint_nvram_store_anomaly(a1, v12, "[check_collection]%s(does_not_exist)", buffer);
      }

      v13 = *v9;
      v9 += 2;
      v4 = v13;
    }

    while (v13);
    v5 = v7 == 0;
    a2 = v20;
  }

  v14 = 0;
  v15 = a2 + 16;
  v16 = off_100099DE0;
  do
  {
    if (!*(v23 + v14 + 1) && *(v15 + 8 * v14))
    {
      bzero(buffer, 0x400uLL);
      bzero(v21, 0x400uLL);
      if (a1[22] == 1)
      {
        v17 = v16;
      }

      else
      {
        v17 = (v16 + 1);
      }

      CFStringGetCString(*v17, buffer, 1024, 0x8000100u);
      checkpoint_get_nvram_value_string(*(v15 + 8 * v14), v21);
      checkpoint_nvram_store_anomaly(a1, v18, "[check_collection]%s=%s(exists_when_not_expected)", buffer, v21);
      checkpoint_nvram_delete_var(a1, v14 + 1, 0, 1);
    }

    ++v14;
    v16 += 4;
  }

  while (v14 != 47);
  if (!v5)
  {
    checkpoint_history_add(a1, 2, 1, 0, 262, "Old restore failure indication(s)", 0, 0, 0);
  }

  return v6;
}

void checkpoint_nvram_delete_var_if_matches(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3 && CFStringCompare(v3, @"upgrade", 0) == kCFCompareEqualTo)
  {

    checkpoint_nvram_delete_var(a1, 2u, 1, 0);
  }
}

void checkpoint_reboot_retry_chassis_aware(int *a1, const __CFString *a2)
{
  if (*(a1 + 100))
  {
    *(a1 + 104) = 1;
    *(a1 + 101) = 1;

    ramrod_log_msg("AP nonce will not be touched\n", a2);
  }

  else
  {
    bzero(v5, 0x400uLL);
    checkpoint_get_nvram_value_string(a2, v5);
    checkpoint_nvram_store_anomaly(a1, v4, "[reboot_retry_chassis]outcome=%s(pre_existing_reboot_retry_disabled)", v5);
  }
}

void checkpoint_nvram_delete_var_raw(const __CFString *a1)
{
  bzero(buffer, 0x400uLL);
  CFStringGetCString(a1, buffer, 1024, 0x8000100u);
  ramrod_delete_NVRAM_variable();
}

void checkpoint_log_progress(uint64_t a1, int a2)
{
  v7 = 0;
  v3 = *(a1 + 92);
  if (v3 > 0x21)
  {
    v4 = "unknown";
  }

  else
  {
    v4 = checkpoint_outcome_names[v3];
  }

  v5 = *(a1 + 96);
  if (v5 > 0x21)
  {
    v6 = "unknown";
  }

  else
  {
    v6 = checkpoint_outcome_names[v5];
  }

  asprintf(&v7, "%s (%s) -> (%s)", checkpoint_progress_names[a2], v4, v6);
  if (v7)
  {
    checkpoint_history_add(a1, 29, 1, 0, 260, v7, 0, 0, 0);
    if (v7)
    {
      free(v7);
    }
  }
}

uint64_t checkpoint_nvram_alloc_encode(uint64_t a1, uint64_t a2)
{
  v3 = checkpoint_nvram_adjust_id(a1, a2);
  if (v3 > 0x2F)
  {
    v4 = 0;
  }

  else
  {
    v4 = HIDWORD(checkpoint_nvram_map[4 * v3 + 2]);
  }

  v5 = checkpoint_nvram_encoder[v4];
  v6 = *(a1 + 16 * v3 + 1520);

  return (v5)(a1, v6);
}

void checkpoint_nvram_store_by_id(uint64_t result, unsigned int a2, int a3, const char *a4)
{
  if (*(result + 104))
  {
    if (a2 > 0x2F)
    {
      ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): invalid variable ID=%d\n", "checkpoint_nvram_adjust_id", a2);
      v7 = 0;
      v8 = result + 1512;
      goto LABEL_7;
    }

    a2 = checkpoint_nvram_map[4 * a2 + 2];
  }

  if (a2 > 0x2F)
  {
    goto LABEL_18;
  }

  v7 = a2;
  v8 = result + 16 * a2 + 1512;
LABEL_7:
  if ((0x20420400uLL >> v7))
  {
    v9 = *(v8 + 8);
    if (v9)
    {
      goto LABEL_21;
    }
  }

  if ((0x1001100uLL >> v7))
  {
    v10 = *(v8 + 8);
    if (v10)
    {
      v11 = 0;
      v9 = v10 - 16;
      do
      {
        v13 = *(v9 + 16);
        v9 += 16;
        v12 = v13;
        if (v13)
        {
          v14 = v11 >= 7;
        }

        else
        {
          v14 = 1;
        }

        ++v11;
      }

      while (!v14);
      if (!v12)
      {
LABEL_21:
        *v9 = a3;
        checkpoint_nvram_store_set_string(result + 1480, (v9 + 8), a4);
        *(v8 + 4) = 1;
        return;
      }
    }
  }

LABEL_18:
  v15 = *(result + 1500);
  if (!v15)
  {
    ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): {%s} tracking information lost on store [%s]\n", "checkpoint_nvram_store_lost", "checkpoint_nvram_store_by_id", "dest_store == NULL");
    v15 = *(result + 1500);
  }

  *(result + 1500) = v15 + 1;
}

void checkpoint_nvram_store_long(uint64_t result, unsigned int a2, uint64_t a3)
{
  if (*(result + 104))
  {
    if (a2 > 0x2F)
    {
      ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): invalid variable ID=%d\n", "checkpoint_nvram_adjust_id", a2);
      v5 = 0;
      v6 = result + 1512;
      goto LABEL_7;
    }

    a2 = checkpoint_nvram_map[4 * a2 + 2];
  }

  if (a2 > 0x2F)
  {
    goto LABEL_10;
  }

  v5 = a2;
  v6 = result + 16 * a2 + 1512;
LABEL_7:
  if ((0x3C03C0000uLL >> v5))
  {
    v7 = *(v6 + 8);
    if (v7)
    {
      *v7 = a3;
      *(v6 + 4) = 1;
      return;
    }
  }

LABEL_10:
  v8 = *(result + 1500);
  if (!v8)
  {
    ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): {%s} tracking information lost on store [%s]\n", "checkpoint_nvram_store_lost", "checkpoint_nvram_store_long", "wrong type or internalStore.longVal == NULL");
    v8 = *(result + 1500);
  }

  *(result + 1500) = v8 + 1;
}

void checkpoint_nvram_store_by_id_try_int(uint64_t result, unsigned int a2, int a3, int a4, int a5)
{
  if (*(result + 104))
  {
    if (a2 > 0x2F)
    {
      ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): invalid variable ID=%d\n", "checkpoint_nvram_adjust_id", a2);
      v9 = 0;
      v10 = result + 1512;
      goto LABEL_7;
    }

    a2 = checkpoint_nvram_map[4 * a2 + 2];
  }

  if (a2 > 0x2F)
  {
    goto LABEL_8;
  }

  v9 = a2;
  v10 = result + 16 * a2 + 1512;
LABEL_7:
  if (((0xA00A000uLL >> v9) & 1) != 0 && a4 <= 7)
  {
    v12 = *(v10 + 8);
    if (v12)
    {
      v13 = 0;
      v14 = 0;
      v15 = *(v10 + 8);
      do
      {
        v17 = *v15;
        v15 += 11;
        v16 = v17;
        if (v17)
        {
          v18 = v14;
        }

        else
        {
          v18 = v12;
        }

        v19 = v16 == a3;
        if (v16 == a3)
        {
          v20 = v12;
        }

        else
        {
          v20 = 0;
        }

        if (!v19)
        {
          v14 = v18;
        }

        if (v20)
        {
          v21 = 1;
        }

        else
        {
          v21 = v13 >= 7;
        }

        ++v13;
        v12 = v15;
      }

      while (!v21);
      if (v20)
      {
        v14 = v20;
      }

      if (v14)
      {
        *v14 = a3;
        v14[a4 + 1] = a5;
        *(v14 + a4 + 36) = 1;
        *(v10 + 4) = 1;
        return;
      }
    }
  }

LABEL_8:
  v11 = *(result + 1500);
  if (!v11)
  {
    ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): {%s} tracking information lost on store [%s]\n", "checkpoint_nvram_store_lost", "checkpoint_nvram_store_by_id_try_int", "dest_store == NULL");
    v11 = *(result + 1500);
  }

  *(result + 1500) = v11 + 1;
}

void checkpoint_nvram_store_by_id_try(uint64_t result, unsigned int a2, int a3, int a4, const char *a5)
{
  if (*(result + 104))
  {
    if (a2 > 0x2F)
    {
      ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): invalid variable ID=%d\n", "checkpoint_nvram_adjust_id", a2);
      v9 = 0;
      v10 = result + 1512;
      goto LABEL_7;
    }

    a2 = checkpoint_nvram_map[4 * a2 + 2];
  }

  if (a2 > 0x2F)
  {
    goto LABEL_8;
  }

  v9 = a2;
  v10 = result + 16 * a2 + 1512;
LABEL_7:
  if (((0x14014000uLL >> v9) & 1) != 0 && a4 <= 7)
  {
    v12 = *(v10 + 8);
    if (v12)
    {
      v13 = 0;
      v14 = 0;
      v15 = *(v10 + 8);
      do
      {
        v17 = *v15;
        v15 += 18;
        v16 = v17;
        if (v17)
        {
          v18 = v14;
        }

        else
        {
          v18 = v12;
        }

        v19 = v16 == a3;
        if (v16 == a3)
        {
          v20 = v12;
        }

        else
        {
          v20 = 0;
        }

        if (!v19)
        {
          v14 = v18;
        }

        if (v20)
        {
          v21 = 1;
        }

        else
        {
          v21 = v13 >= 7;
        }

        ++v13;
        v12 = v15;
      }

      while (!v21);
      if (v20)
      {
        v14 = v20;
      }

      if (v14)
      {
        *v14 = a3;
        checkpoint_nvram_store_set_string(result + 1480, &v14[2 * a4 + 2], a5);
        *(v10 + 4) = 1;
        return;
      }
    }
  }

LABEL_8:
  v11 = *(result + 1500);
  if (!v11)
  {
    ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): {%s} tracking information lost on store [%s]\n", "checkpoint_nvram_store_lost", "checkpoint_nvram_store_by_id_try", "dest_store == NULL");
    v11 = *(result + 1500);
  }

  *(result + 1500) = v11 + 1;
}

void checkpoint_nvram_store_set_string(uint64_t a1, char **a2, const char *a3)
{
  if (a2)
  {
    if (*a2)
    {
      free(*a2);
      *a2 = 0;
    }

    if (a3)
    {
      asprintf(a2, "%s", a3);
    }
  }

  else
  {
    v6 = *(a1 + 20);
    if (!v6)
    {
      ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): {%s} tracking information lost on store [%s]\n", "checkpoint_nvram_store_lost", "checkpoint_nvram_store_set_string", "dest == NULL");
      v6 = *(a1 + 20);
    }

    *(a1 + 20) = v6 + 1;
  }
}

char *checkpoint_nvram_copy_encode_c_string(uint64_t a1, uint64_t a2)
{
  result = checkpoint_nvram_alloc_encode(a1, a2);
  v4 = 0;
  if (result)
  {
    v3 = result;
    bzero(buffer, 0x400uLL);
    CFStringGetCString(v3, buffer, 1024, 0x8000100u);
    asprintf(&v4, "%s", buffer);
    CFRelease(v3);
    return v4;
  }

  return result;
}

char *checkpoint_nvram_copy_string(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v6 = 0;
  if (*(a1 + 104))
  {
    if (a3 > 0x2F)
    {
      ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): invalid variable ID=%d\n", "checkpoint_nvram_adjust_id", a3);
      a3 = 0;
    }

    else
    {
      a3 = checkpoint_nvram_map[4 * a3 + 2];
    }
  }

  v4 = *(a2 + 8 * a3 + 8);
  if (!v4)
  {
    return 0;
  }

  bzero(buffer, 0x400uLL);
  CFStringGetCString(v4, buffer, 1024, 0x8000100u);
  asprintf(&v6, "%s", buffer);
  return v6;
}

const __CFDictionary *checkpoint_tolerated_get_failed_entry(const __CFDictionary *a1, uint64_t a2)
{
  v2 = a1;
  valuePtr = a2;
  if (a1)
  {
    v3 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt64Type, &valuePtr);
    if (v3)
    {
      v4 = v3;
      Value = CFDictionaryGetValue(v2, v3);
      if (Value)
      {
        v2 = *(Value + 2);
      }

      else
      {
        v2 = 0;
      }

      CFRelease(v4);
    }

    else
    {
      ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): unable to create step ID number for tolerated failure lookup\n", "checkpoint_tolerated_get_failed_entry");
      return 0;
    }
  }

  return v2;
}

char *checkpoint_cferror_append(char *a1, uint64_t a2, const __CFString *a3, _BYTE *a4)
{
  if (a3)
  {
    bzero(buffer, 0x400uLL);
    CFStringGetCString(a3, buffer, 1024, 0x8000100u);
    if (*a4)
    {
      v7 = checkpoint_append_and_free(a1, "|%s(%s)");
    }

    else
    {
      v7 = checkpoint_append_and_free(a1, "%s(%s)");
    }

    a1 = v7;
    *a4 = 1;
  }

  return a1;
}

void checkpoint_simulator_configure(uint64_t result)
{
  if (!*(result + 2298) && checkpoint_nvram_is_available(result, 0, 0))
  {
    if (!*(result + 1016))
    {
      goto LABEL_23;
    }

    bzero(__s, 0x400uLL);
    bzero(v14, 0x400uLL);
    *(result + 2300) = 0;
    *(result + 2312) = 0;
    __strlcpy_chk();
    v2 = strlen(__s);
    CFStringGetCString(*(result + 1016), &__s[v2], 1024 - v2, 0x8000100u);
    __strlcpy_chk();
    v3 = strlen(v14);
    CFStringGetCString(*(result + 1016), &v14[v3], 1024 - v3, 0x8000100u);
    v4 = 0;
    while (1)
    {
      v5 = checkpoint_history_type_name[v4];
      if (!strncasecmp(__s, v5, 0x400uLL))
      {
        *(result + 2300) = v4;
        goto LABEL_11;
      }

      if (!strncasecmp(v14, v5, 0x400uLL))
      {
        break;
      }

      if (++v4 == 34)
      {
        LODWORD(v4) = *(result + 2300);
        goto LABEL_11;
      }
    }

    *(result + 2300) = v4;
    *(result + 2299) = 1;
LABEL_11:
    if (!v4)
    {
      goto LABEL_23;
    }

    v6 = *(result + 1040);
    if (v6)
    {
      ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(kCFAllocatorDefault, v6, @",");
      *(result + 2312) = ArrayBySeparatingStrings;
      if (ArrayBySeparatingStrings)
      {
        Count = CFArrayGetCount(ArrayBySeparatingStrings);
        if (Count >= 1)
        {
          v9 = Count;
          for (i = 0; i != v9; ++i)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(*(result + 2312), i);
            CFStringGetCStringPtr(ValueAtIndex, 0x8000100u);
          }
        }

        v12 = *(result + 1024);
        if (v12)
        {
          *(result + 2304) = CFStringGetIntValue(v12);
        }

        v13 = *(result + 1032);
        if (v13)
        {
          *(result + 2308) = CFStringGetIntValue(v13);
        }

        goto LABEL_23;
      }
    }

    else
    {
      ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): simulator command without stepName\n", "checkpoint_simulator_configure");
    }

    *(result + 2300) = 0;
LABEL_23:
    *(result + 2298) = 1;
  }
}

void *checkpoint_simulator_jetsam()
{
  v5 = 0;
  v0 = &v5;
  v1 = 0x100000;
  do
  {
    v2 = malloc(v1);
    *v0 = v2;
    if (v2)
    {
      bzero(v2, v1);
      v0 = *v0;
    }

    else
    {
      v1 >>= 1;
    }
  }

  while (v1 > 4095);
  result = v5;
  if (v5)
  {
    do
    {
      v4 = *result;
      free(result);
      result = v4;
    }

    while (v4);
  }

  return result;
}

void ramrod_execute_config_free(const void **a1)
{
  _Block_release(*a1);
  _Block_release(a1[1]);
  _Block_release(a1[2]);
  _Block_release(a1[3]);

  free(a1);
}

uint64_t ramrod_execute_command_with_config(const char **a1, void *a2)
{
  v37 = 0;
  ramrod_log_msg("entering ramrod_execute_command_with_config: %s\n", *a1);
  *v43 = -1;
  *v44 = -1;
  ramrod_log_msg("executing %s", *a1);
  v4 = a1[1];
  if (v4)
  {
    v5 = a1 + 2;
    v6 = 1;
    do
    {
      ramrod_log_msg(" %s", v4);
      if (v6 > 8)
      {
        break;
      }

      ++v6;
      v7 = *v5++;
      v4 = v7;
    }

    while (v7);
  }

  ramrod_log_msg("\n");
  if (pipe(v44) == -1)
  {
    v13 = *a1;
    v14 = __error();
    v15 = strerror(*v14);
    ramrod_log_msg("pipe failed while preparing to execute %s: %s\n", v13, v15);
    v16 = 0;
    v17 = -1;
    goto LABEL_43;
  }

  if (pipe(v43) == -1)
  {
    v18 = *a1;
    v19 = __error();
    v20 = strerror(*v19);
    ramrod_log_msg("pipe failed while preparing to execute %s: %s\n", v18, v20);
    v11 = 0xFFFFFFFFLL;
    v12 = -1;
  }

  else
  {
    fcntl(v43[1], 73, 1);
    v39 = 0;
    posix_spawn_file_actions_init(&v39);
    posix_spawn_file_actions_adddup2(&v39, v43[0], 0);
    posix_spawn_file_actions_adddup2(&v39, v44[1], 1);
    posix_spawn_file_actions_adddup2(&v39, 2, 2);
    v38 = 0;
    posix_spawnattr_init(&v38);
    posix_spawnattr_setflags(&v38, 0x4000);
    if (*(a2 + 8))
    {
      posix_spawnattr_set_qos_clamp_np();
    }

    if (*a2)
    {
      (*(*a2 + 16))(*a2, &v39);
    }

    v8 = posix_spawn(&v37, *a1, &v39, &v38, a1, 0);
    if (v8)
    {
      v9 = *a1;
      v10 = strerror(v8);
      ramrod_log_msg("posix_spawn %s failed: %s\n", v9, v10);
      close(v44[0]);
      close(v43[1]);
      v11 = 0xFFFFFFFFLL;
      v12 = -1;
    }

    else
    {
      v11 = v43[1];
      v12 = v44[0];
      v22 = v37;
      if (v37 != -1)
      {
        v23 = realpath_DARWIN_EXTSN(*a1, 0);
        if (v23)
        {
          v24 = v23;
          bzero(v46, 0x400uLL);
          v25 = basename_r(v24, v46);
          if (v25 && ((v26 = v25, v42 = 256, _get_image_exec_options_bootargs) || !sysctlbyname("kern.bootargs", &_get_image_exec_options_bootargs, &v42, 0, 0)) && (bzero(__str, 0x400uLL), v40 = 0, v41 = 0, snprintf(__str, 0x3FFuLL, "\\bramrod_exec-\\Q%s\\E=((0[0-7]+)|(([+-])?[[:digit:]]+)|(0[xX][[:xdigit:]]+))", v26), _find_tagged_regex(&_get_image_exec_options_bootargs, v42, __str, &v41, &v40)))
          {
            ramrod_log_msg("found ramrod_execute_command option in boot-args: ramrod_exec-%s=%.*s\n", v26, v40, v41);
            v27 = strtol(v41, 0, 0);
            free(v24);
            v28 = v27 & 0x1F;
            if ((v27 & 0x1F) != 0)
            {
              v29 = (v27 >> 8);
              ramrod_log_msg("sending signal %d to process %d in %d millisecond(s)...\n", v28, v22, v29);
              usleep(1000 * v29);
              if (kill(v22, v28) == -1)
              {
                v30 = __error();
                ramrod_log_msg("could not send signal %d to process %d: error %d\n", v28, v22, *v30);
              }
            }
          }

          else
          {
            free(v24);
          }
        }

        v36 = a2[3];
        if (v36)
        {
          (*(v36 + 16))(v36, v37);
        }
      }
    }

    posix_spawnattr_destroy(&v38);
    posix_spawn_file_actions_destroy(&v39);
    close(v43[0]);
  }

  close(v44[1]);
  v16 = 0;
  v17 = -1;
  if (v12 != -1 && v11 != -1)
  {
    bzero(v46, 0x400uLL);
    v21 = a2[1];
    if (v21)
    {
      v16 = (*(v21 + 16))(v21, v11) != 0;
    }

    else
    {
      v16 = 0;
    }

    close(v11);
    v31 = read(v12, v46, 0x3FFuLL);
    if (v31 >= 1)
    {
      for (i = v31; i > 0; i = read(v12, v46, 0x3FFuLL))
      {
        v46[i] = 0;
        v33 = a2[2];
        if (v33)
        {
          (*(v33 + 16))(v33, v46);
        }
      }
    }

    ramrod_log_msg("waiting for child to exit\n");
    *__str = 0;
    if (waitpid(v37, __str, 0) == -1)
    {
      v34 = __error();
      strerror(*v34);
      ramrod_log_msg("waitpid failed for %s: %s\n");
    }

    else
    {
      ramrod_log_msg("child exited\n");
      if ((__str[0] & 0x7F) == 0x7F)
      {
        ramrod_log_msg("%s was stopped by signal %d\n");
      }

      else
      {
        if ((__str[0] & 0x7F) == 0)
        {
          ramrod_log_msg("exit status: %d\n", __str[1]);
          v17 = __str[1];
LABEL_42:
          close(v12);
          goto LABEL_43;
        }

        ramrod_log_msg("%s was terminated by signal %d\n");
      }
    }

    v17 = -1;
    goto LABEL_42;
  }

LABEL_43:
  if (v17 == 0 && v16)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return v17;
  }
}

uint64_t _ramrod_execute_command_with_input_data_output_block(const char **a1, uint64_t a2, uint64_t a3, char a4, const void *a5)
{
  v10 = calloc(1uLL, 0x30uLL);
  *(v10 + 18) = 0;
  v10[5] = 0x7FFFFFFF000000B4;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 3221225472;
  aBlock[2] = ___ramrod_execute_command_with_input_data_output_block_block_invoke;
  aBlock[3] = &__block_descriptor_33_e10_i16__0__v8l;
  v18 = a4;
  v11 = _Block_copy(aBlock);
  _Block_release(*v10);
  *v10 = v11;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = ___ramrod_execute_command_with_input_data_output_block_block_invoke_2;
  v16[3] = &__block_descriptor_48_e8_i12__0i8l;
  v16[4] = a2;
  v16[5] = a3;
  v12 = _Block_copy(v16);
  _Block_release(v10[1]);
  v10[1] = v12;
  v13 = _Block_copy(a5);
  _Block_release(v10[2]);
  v10[2] = v13;
  v14 = ramrod_execute_command_with_config(a1, v10);
  ramrod_execute_config_free(v10);
  return v14;
}

uint64_t ramrod_execute_command(const char **a1)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = __ramrod_execute_command_with_callback_block_invoke;
  v2[3] = &__block_descriptor_48_e13_v24__0r_v8Q16l;
  v2[4] = log_output_buf;
  v2[5] = 0;
  return _ramrod_execute_command_with_input_data_output_block(a1, 0, 0, 1, v2);
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
  storage_device_node_path_0 = 0;
  apfs_container_device_node_path_0 = 0;
  apfs_recovery_os_container_device_node_path_0 = 0;
  system_device_node_path_0 = 0;
  data_device_node_path_0 = 0;
  user_device_node_path_0 = 0;
  update_device_node_path_0 = 0;
  baseband_data_partition_device_node_path_0 = 0;
  log_partition_device_node_path = 0;
  xart_partition_node_path = 0;
  hardware_partition_node_path = 0;
  scratch_partition_node_path = 0;
  preboot_partition_device_node_path_0 = 0;
  recovery_os_volume_device_node_path_0 = 0;
  iboot_system_container_device_node_path_0 = 0;
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

  if (!wait_for_device("EmbeddedDeviceTypeRoot", &storage_device_node_path_0, 0x20uLL, &cf))
  {
    ramrod_log_msg("Unable to find storage device node for service named: %s", "EmbeddedDeviceTypeRoot");
LABEL_12:
    v27 = 0;
    v22 = 0;
    goto LABEL_13;
  }

  v20 = IOBSDNameMatching(kIOMasterPortDefault, 0, byte_1000B54CD);
  MatchingService = IOServiceGetMatchingService(kIOMasterPortDefault, v20);
  v22 = MatchingService;
  if (!MatchingService)
  {
    ramrod_log_msg("unable to find service for %s\n", byte_1000B54CD);
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
        v32 = Value && (v40 = Value, v41 = CFGetTypeID(Value), v41 == CFStringGetTypeID()) && CFStringGetCString(v40, buffer, 32, 0x600u) && (v42 = strlen(byte_1000B54CD), !strncmp(buffer, byte_1000B54CD, v42)) && strcmp("s1s1", &buffer[v42]) == 0;
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
          v50 = &user_device_node_path_0;
          goto LABEL_85;
        }

        if (v91 && !strcmp(name, v91))
        {
          v50 = &update_device_node_path_0;
          goto LABEL_85;
        }

        if (v90 && !strcmp(name, v90))
        {
          v50 = &baseband_data_partition_device_node_path_0;
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
              v50 = &recovery_os_volume_device_node_path_0;
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
          v33 = &apfs_recovery_os_container_device_node_path_0;
        }

        else
        {
          if (*name ^ 0x737953746F6F4269 | *&name[8] ^ 0x61746E6F436D6574 | *&name[13] ^ 0x72656E6961746ELL)
          {
            v33 = &apfs_container_device_node_path_0;
          }

          else
          {
            v33 = &iboot_system_container_device_node_path_0;
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

uint64_t ramrod_get_system_partition_device_node(char *a1, size_t __size)
{
  if (!system_device_node_path_0)
  {
    return 0;
  }

  strlcpy(a1, &system_device_node_path_0, __size);
  return 1;
}

uint64_t ramrod_get_gestalt_BOOLean_answer(uint64_t a1)
{
  v1 = MGCopyAnswer();
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = CFGetTypeID(v1);
  if (v3 == CFBooleanGetTypeID())
  {
    Value = CFBooleanGetValue(v2);
  }

  else
  {
    Value = 0;
  }

  CFRelease(v2);
  return Value;
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

uint64_t ramrod_mount_filesystem_no_fsck_opt_err(const char *a1, char *a2, int a3, CFErrorRef *a4)
{
  bzero(v22, 0x400uLL);
  v21 = 0u;
  v20 = 0u;
  v19 = 0u;
  v18 = 0u;
  v17 = 0u;
  v16 = 0u;
  v15 = 0u;
  v14[0] = "/sbin/mount_apfs";
  v14[1] = "-R";
  if (a3)
  {
    *&v15 = "-o";
    *(&v15 + 1) = "rdonly";
    v8 = 4;
    if (a2)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v8 = 2;
    if (a2)
    {
      goto LABEL_7;
    }
  }

  ramrod_log_msg("Creating temporary mount point to mount %s\n", a1);
  a2 = v22;
  __strlcpy_chk();
  if (!mkdtemp(v22))
  {
    v9 = __error();
    ramrod_log_msg("unable to create temporary mount directory (%d). Using %s instead\n", *v9, "/mnt5");
    a2 = v22;
    __strlcpy_chk();
  }

LABEL_7:
  v14[v8] = a1;
  v14[v8 | 1u] = a2;
  v14[v8 + 2] = 0;
  mkdir(a2, 0x1C0u);
  if (ramrod_execute_command(v14))
  {
    ramrod_log_msg("mounting %s on %s failed\n", a1, a2);
    ramrod_create_error_cf(a4, @"RamrodErrorDomain", 7, 0, @"%s: mounting %s on %s failed", v10, v11, v12, "ramrod_mount_filesystem_no_fsck_opt_err");
    ramrod_dump_mounted_filesystem_info();
    return 0xFFFFFFFFLL;
  }

  else
  {
    ramrod_log_msg("%s mounted on %s\n", a1, a2);
    return 0;
  }
}

void ramrod_dump_mounted_filesystem_info()
{
  ramrod_log_msg("%s:**********DUMPING MOUNTED FILESYSTEMS********\n", "ramrod_dump_mounted_filesystem_info");
  v3 = 0;
  v0 = getmntinfo(&v3, 2);
  ramrod_log_msg("%s: %d filesystems are mounted\n", "ramrod_dump_mounted_filesystem_info", v0);
  if (v3)
  {
    if (v0 >= 1)
    {
      v1 = v0 + 1;
      v2 = 2168 * v0 - 2080;
      do
      {
        ramrod_log_msg("%s is mounted at %s\n", &v3->f_mntonname[v2 + 936], v3 + v2);
        --v1;
        v2 -= 2168;
      }

      while (v1 > 1);
    }
  }

  else
  {
    ramrod_log_msg("Failed to get info regarding mounted filesystems\n");
  }

  ramrod_log_msg("%s: *********DONE DUMPING MOUNTED FILESYSTEMS********\n", "ramrod_dump_mounted_filesystem_info");
}

BOOL _find_tagged_regex(const char *a1, regoff_t a2, char *a3, void *a4, void *a5)
{
  if (a4)
  {
    *a4 = 0;
  }

  if (a5)
  {
    *a5 = 0;
  }

  memset(&v13, 0, sizeof(v13));
  v9 = regcomp(&v13, a3, 265);
  if (v9)
  {
    v20 = 0uLL;
    v21 = 0uLL;
    v18 = 0uLL;
    v19 = 0uLL;
    v16 = 0uLL;
    v17 = 0uLL;
    __pmatch = 0;
    v15 = 0uLL;
    regerror(v9, &v13, &__pmatch, 0x80uLL);
    ramrod_log_msg("regcomp failed: %s\n", &__pmatch);
    return 0;
  }

  else
  {
    v22 = 0uLL;
    v23 = 0uLL;
    v20 = 0uLL;
    v21 = 0uLL;
    v18 = 0uLL;
    v19 = 0uLL;
    v16 = 0uLL;
    v17 = 0uLL;
    __pmatch.rm_so = 0;
    v15 = 0uLL;
    __pmatch.rm_eo = a2;
    v10 = regexec(&v13, a1, 0xAuLL, &__pmatch, 7);
    v11 = v10 == 0;
    if (!v10)
    {
      if (a4)
      {
        *a4 = &a1[v15];
      }

      if (a5)
      {
        *a5 = *(&v15 + 1) - v15;
      }
    }

    regfree(&v13);
  }

  return v11;
}

uint64_t ___ramrod_execute_command_with_input_data_output_block_block_invoke(uint64_t a1, posix_spawn_file_actions_t *a2)
{
  if (*(a1 + 32) == 1)
  {
    posix_spawn_file_actions_adddup2(a2, 1, 2);
  }

  return 0;
}

uint64_t ___ramrod_execute_command_with_input_data_output_block_block_invoke_2(uint64_t a1, int __fd)
{
  v2 = *(a1 + 40);
  if (v2 >= 1)
  {
    v4 = *(a1 + 32);
    while (1)
    {
      v5 = write(__fd, v4, v2);
      if (v5 == -1)
      {
        break;
      }

      v4 += v5;
      v6 = v2 <= v5;
      v2 -= v5;
      if (v6)
      {
        return 0;
      }
    }

    v7 = __error();
    v8 = strerror(*v7);
    ramrod_log_msg("write failed for subprocess: %s\n", v8);
  }

  return 0;
}

void OUTLINED_FUNCTION_0_0(CFErrorRef *a1@<X0>, const __CFString *a2@<X1>, const __CFString *a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>)
{

  ramrod_create_error_cf(a1, a2, 6, 0, a3, a4, a5, a6, a7);
}

BOOL ramrod_device_has_centauri()
{
  v0 = IOServiceNameMatching("centauri");
  MatchingService = IOServiceGetMatchingService(kIOMasterPortDefault, v0);
  v2 = MatchingService;
  if (MatchingService)
  {
    IOObjectRelease(MatchingService);
    v3 = "yes";
  }

  else
  {
    v3 = "no";
  }

  ramrod_log_msg("%s: %s\n", "ramrod_device_has_centauri", v3);
  return v2 != 0;
}

uint64_t __os_cleanup_iorelease(unsigned int *a1)
{
  result = *a1;
  if (result)
  {
    result = IOObjectRelease(result);
    if (result)
    {
      __os_cleanup_iorelease_cold_1(&v2, v3);
    }
  }

  return result;
}

uint64_t _ioreg_property_is_nonzero(char *a1, const __CFString *a2)
{
  v4 = _ioreg_copy_property(a1, a2);
  if (v4)
  {
    v5 = v4;
    v6 = CFGetTypeID(v4);
    if (v6 != CFDataGetTypeID() || (BytePtr = CFDataGetBytePtr(v5), (Length = CFDataGetLength(v5)) != 0) && (Length > 4 || !memcmp(BytePtr, &_ioreg_property_is_nonzero_kZeroBytes, Length)))
    {
      v9 = 0;
      v10 = "NO";
    }

    else
    {
      v9 = 1;
      v10 = "YES";
    }

    ramrod_log_msg_cf(@"Boot Firmware Updater: property_is_nonzero(%s, %@) = %s (%@)\n", a1, a2, v10, v5);
    CFRelease(v5);
  }

  else
  {
    ramrod_log_msg_cf(@"Boot Firmware Updater: property_is_nonzero(%s, %@) = %s (%@)\n", a1, a2, "NO", 0);
    return 0;
  }

  return v9;
}

BOOL _ioreg_property_exists(const __CFString *a1)
{
  v2 = _ioreg_copy_property("IODeviceTree:/defaults", a1);
  v3 = v2;
  if (v2)
  {
    CFRelease(v2);
    v4 = "YES";
  }

  else
  {
    v4 = "NO";
  }

  ramrod_log_msg_cf(@"Boot Firmware Updater: property_exists(%s, %@) = %s\n", "IODeviceTree:/defaults", a1, v4);
  return v3 != 0;
}

void sub_100031C08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, ...)
{
  va_start(va, a33);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

CFTypeRef _ioreg_copy_property(char *path, const __CFString *a2)
{
  v3 = IORegistryEntryFromPath(kIOMasterPortDefault, path);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  CFProperty = IORegistryEntryCreateCFProperty(v3, a2, kCFAllocatorDefault, 0);
  IOObjectRelease(v4);
  return CFProperty;
}

uint64_t MSUBootFirmwareFindNamespace(io_registry_entry_t a1, uint64_t a2)
{
  entryID = 0;
  IORegistryEntryGetRegistryEntryID(a1, &entryID);
  IOServiceWaitQuiet(a1, 0);
  v11[0] = @"IOParentMatch";
  v4 = IORegistryEntryIDMatching(entryID);
  v11[1] = @"IOPropertyMatch";
  v12[0] = v4;
  v9 = a2;
  v10 = [NSNumber numberWithBool:1];
  v12[1] = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  v5 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:2];
  if (v5)
  {
    v6 = CFRetain(v5);
  }

  else
  {
    v6 = 0;
  }

  return IOServiceGetMatchingService(kIOMasterPortDefault, v6);
}

uint64_t OUTLINED_FUNCTION_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return __os_log_send_and_compose_impl(a1, v6, v5, 80, a5, v7, 16);
}

void OUTLINED_FUNCTION_2(CFErrorRef *a1@<X0>, const __CFString *a2@<X1>, const __CFString *a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>)
{

  ramrod_create_error_cf(a1, a2, 2, 0, a3, a4, a5, a6, a7);
}

uint64_t __os_cleanup_iorelease_0(unsigned int *a1)
{
  result = *a1;
  if (result)
  {
    result = IOObjectRelease(result);
    if (result)
    {
      __os_cleanup_iorelease_cold_1_0(&v2, v3);
    }
  }

  return result;
}

uint64_t __os_cleanup_ioclose(unsigned int *a1)
{
  result = *a1;
  if (result)
  {
    result = IOServiceClose(result);
    if (result)
    {
      __os_cleanup_ioclose_cold_1(&v2, v3);
    }
  }

  return result;
}

double OUTLINED_FUNCTION_2_0(void *a1, _OWORD *a2)
{
  *a1 = 0;
  result = 0.0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  return result;
}

BOOL OUTLINED_FUNCTION_3()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_ERROR);
}

void iBU_LOG_real(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = [[NSString alloc] initWithFormat:a1 arguments:&a9];
  v11 = v10;
  if (_loggingPtr_0)
  {
    v12 = [v10 UTF8String];
    _loggingPtr_0("%s: %s\n", a2, v12);
  }

  else
  {
    NSLog(@"%s: %@", a2, v10);
  }
}

NSError *MSUBootFirmwareError(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = [[NSString alloc] initWithFormat:a3 arguments:&a9];
  if (a2)
  {
    v18 = NSLocalizedDescriptionKey;
    v19 = NSUnderlyingErrorKey;
    v20 = v11;
    v21 = a2;
    v12 = &v20;
    v13 = &v18;
    v14 = 2;
  }

  else
  {
    v16 = NSLocalizedDescriptionKey;
    v17 = v11;
    v12 = &v17;
    v13 = &v16;
    v14 = 1;
  }

  return [NSError errorWithDomain:@"MSUFirmwareUpdaterErrorDomain" code:a1 userInfo:[NSDictionary dictionaryWithObjects:v12 forKeys:v13 count:v14, &a9, v16, v17, v18, v19, v20, v21]];
}

BOOL _is_firmware_info_entry(io_registry_entry_t a1)
{
  CFProperty = IORegistryEntryCreateCFProperty(a1, @"low-level-fw-device-info", 0, 0);
  v2 = CFProperty;
  if (CFProperty)
  {
    CFRelease(CFProperty);
  }

  return v2 != 0;
}

uint64_t __os_cleanup_iorelease_1(unsigned int *a1)
{
  result = *a1;
  if (result)
  {
    result = IOObjectRelease(result);
    if (result)
    {
      __os_cleanup_iorelease_cold_1_1(&v2, v3);
    }
  }

  return result;
}

uint64_t AMSupportX509DecodeVerifyCertIssuer(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 136);
  if (v2 != *(a1 + 104) || memcmp(*(a2 + 128), *(a1 + 96), v2))
  {
    AMSupportLogInternal(3, "AMSupportX509DecodeVerifyCertIssuer", "PKI: cert was not issued by issuer (subject != issuer)");
    return 18;
  }

  memset(v9, 0, sizeof(v9));
  v8 = 0;
  v6 = 0;
  v7 = 0;
  if (DERParseSequenceContent((a1 + 16), DERNumAlgorithmIdItemSpecs, &DERAlgorithmIdItemSpecs, v9, 0x20uLL))
  {
    AMSupportLogInternal(3, "AMSupportX509DecodeVerifyCertIssuer", "decodeAlgId failed");
    return 19;
  }

  if (DERParseBitString(a1 + 32, &v6, &v8))
  {
    AMSupportLogInternal(3, "AMSupportX509DecodeVerifyCertIssuer", "DERParseBitString(sig) failed");
    return 19;
  }

  if (v8)
  {
    AMSupportLogInternal(3, "AMSupportX509DecodeVerifyCertIssuer", "numUnused != 0");
    return 19;
  }

  if (!_AMSupportX509DecodeRsaVerifySignatureDataWithOid(*(a2 + 208), *(a2 + 216), v6, v7, *a1, *(a1 + 8), *&v9[0], DWORD2(v9[0])))
  {
    AMSupportLogInternal(7, "AMSupportX509DecodeVerifyCertIssuer", "PKI: verify cert was issued and signed by issuer (success)");
    return 0;
  }

  AMSupportLogInternal(3, "AMSupportX509DecodeVerifyCertIssuer", "PKI: cert signature validation with issuer pubkey failed amstatus=%d");
  return 18;
}

uint64_t _AMSupportX509DecodeRsaVerifySignatureDataWithOid(uint64_t a1, unsigned int a2, uint64_t a3, unsigned int a4, uint64_t a5, unsigned int a6, uint64_t a7, unsigned int a8)
{
  v10[0] = a7;
  v10[1] = a8;
  if (DEROidCompare(v10, &oidSha1Rsa))
  {
    v11 = 0uLL;
    LODWORD(v12) = 0;
    if (AMSupportDigestSha1(a5))
    {
      return 6;
    }

    result = AMSupportRsaVerifySignatureSha1();
    if (result)
    {
      return 6;
    }
  }

  else if (DEROidCompare(v10, &oidSha256Rsa))
  {
    v11 = 0u;
    v12 = 0u;
    if (AMSupportDigestSha256(a5))
    {
      return 6;
    }

    result = AMSupportRsaVerifySignatureSha256();
    if (result)
    {
      return 6;
    }
  }

  else
  {
    return 13;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va2, a4);
  va_start(va1, a4);
  va_start(va, a4);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  va_copy(va2, va1);
  v9 = va_arg(va2, void);
  v11 = va_arg(va2, void);

  return verify_pkcs1_sig(va2, a2, va, va1);
}

uint64_t verify_pkcs1_sig(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v13[199] = 0;
  v13[200] = 0;
  bzero(v13, 0x638uLL);
  v12 = 64;
  v5 = *(a1 + 8);
  v11[0] = *a1;
  v11[1] = v5;
  memset(v10, 0, sizeof(v10));
  if (DERParseSequence(v11, DERNumRSAPubKeyPKCS1ItemSpecs, &DERRSAPubKeyPKCS1ItemSpecs, v10, 0x20uLL))
  {
    return 0xFFFFFFFFLL;
  }

  v6 = *(&v10[0] + 1);
  v7 = *&v10[0];
  if (*(&v10[0] + 1))
  {
    v8 = 7;
    while (!*v7)
    {
      ++v7;
      if (!--v6)
      {
        goto LABEL_10;
      }
    }

    v8 = v6 + 7;
    if ((v6 + 7) >= 0x208)
    {
      return 0xFFFFFFFFLL;
    }
  }

  else
  {
    v8 = 7;
  }

LABEL_10:
  v12 = v8 >> 3;
  result = ccrsa_make_pub();
  if (!result)
  {
    if (&CCRSA_PKCS1_FAULT_CANARY && &_ccrsa_verify_pkcs1v15_digest)
    {
      result = ccrsa_verify_pkcs1v15_digest();
      if (result)
      {
        return result;
      }

      cc_cmp_safe();
      return 0;
    }

    LOBYTE(v10[0]) = 0;
    result = ccrsa_verify_pkcs1v15();
    if (!result && (v10[0] & 1) != 0)
    {
      return 0;
    }
  }

  return result;
}

void AMSupportSafeRelease(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

void AMSupportSafeFree(void *a1)
{
  if (a1)
  {
    free(a1);
  }
}

CFURLRef AMSupportCreateURLFromString(const __CFAllocator *a1, const __CFString *cf)
{
  if (!cf)
  {
    AMSupportLogInternal(3, "AMSupportCreateURLFromString", "%s: theString is NULL");
    return 0;
  }

  v4 = CFGetTypeID(cf);
  if (v4 == CFURLGetTypeID())
  {
    AMSupportLogInternal(4, "AMSupportCreateURLFromString", "%s: CFURLRef passed, retaining copy", "AMSupportCreateURLFromString");

    return CFRetain(cf);
  }

  v6 = CFGetTypeID(cf);
  if (v6 != CFStringGetTypeID())
  {
    AMSupportLogInternal(3, "AMSupportCreateURLFromString", "%s: invalid string");
    return 0;
  }

  if (CFStringFind(cf, @"://", 0).location == -1)
  {

    return CFURLCreateWithFileSystemPath(a1, cf, kCFURLPOSIXPathStyle, 0);
  }

  else
  {

    return CFURLCreateWithString(a1, cf, 0);
  }
}

const __CFDictionary *AMSupportGetValueForKeyPathInDict(const __CFAllocator *a1, const __CFDictionary *a2, CFStringRef theString)
{
  Value = a2;
  if (!a2)
  {
    AMSupportGetValueForKeyPathInDict_cold_4(a1);
    return Value;
  }

  if (!theString)
  {
    AMSupportGetValueForKeyPathInDict_cold_3(a1);
    return 0;
  }

  ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(a1, theString, @".");
  if (!ArrayBySeparatingStrings)
  {
    AMSupportGetValueForKeyPathInDict_cold_2(0);
    return 0;
  }

  v5 = ArrayBySeparatingStrings;
  Count = CFArrayGetCount(ArrayBySeparatingStrings);
  if (Count >= 1)
  {
    v7 = Count;
    v8 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v5, v8);
      if (!ValueAtIndex)
      {
        break;
      }

      Value = CFDictionaryGetValue(Value, ValueAtIndex);
      if (Value)
      {
        if (v7 != ++v8)
        {
          continue;
        }
      }

      goto LABEL_9;
    }

    AMSupportGetValueForKeyPathInDict_cold_1(0);
    Value = 0;
  }

LABEL_9:
  CFRelease(v5);
  return Value;
}

uint64_t _AMSupportPlatformWriteDataToFileURLInternal(const __CFData *a1, const __CFURL *a2, int a3)
{
  v5 = AMSupportPlatformOpenFileStreamWithURL(a2, "wb");
  if (!v5)
  {
    return 4;
  }

  v6 = v5;
  if (a3)
  {
    v7 = fileno(v5);
    fcntl(v7, 48, 1);
  }

  Length = CFDataGetLength(a1);
  BytePtr = CFDataGetBytePtr(a1);
  v10 = 4 * (fwrite(BytePtr, 1uLL, Length, v6) != Length);
  fclose(v6);
  return v10;
}

uint64_t AMSupportHttpCopyProxySettings(uint64_t a1, const void *a2)
{
  v3 = dispatch_semaphore_create(0);
  v4 = v3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2000000000;
  v14 = 0;
  if (!&_RPCopyProxyDictionaryWithOptions || !&_RPRegistrationInvalidate || !&_RPRegisterForAvailability || !&_RPRegistrationResume)
  {
    AMSupportHttpCopyProxySettings_cold_2();
    v5 = 0;
    goto LABEL_12;
  }

  v10 = v3;
  v5 = RPRegisterForAvailability();
  if (!v5)
  {
    AMSupportLogInternal(3, "AMSupportHttpCopyProxySettings", "failed to register for reverse proxy availability");
LABEL_12:
    Mutable = 0;
    goto LABEL_13;
  }

  RPRegistrationResume();
  dispatch_semaphore_wait(v4, 0xFFFFFFFFFFFFFFFFLL);
  RPRegistrationInvalidate();
  if ((v12[3] & 1) == 0)
  {
    AMSupportLogInternal(3, "AMSupportHttpCopyProxySettings", "No proxy available%s");
    goto LABEL_12;
  }

  if (a2)
  {
    Mutable = CFRetain(a2);
    if (CFDictionaryContainsKey(a2, @"TestReachability"))
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (Mutable)
  {
LABEL_16:
    CFDictionaryAddValue(Mutable, @"TestReachability", kCFBooleanFalse);
LABEL_17:
    v8 = RPCopyProxyDictionaryWithOptions();
    v7 = v8;
    if (v8)
    {
      AMSupportLogInternal(6, "AMSupportHttpCopyProxySettings", "proxyInfo = %@", v8, _NSConcreteStackBlock, 1107296256, __AMSupportHttpCopyProxySettings_block_invoke, &__block_descriptor_tmp_2, &v11, v10, v11);
    }

    if (v4)
    {
      goto LABEL_20;
    }

    goto LABEL_21;
  }

  AMSupportHttpCopyProxySettings_cold_1();
LABEL_13:
  v7 = 0;
  if (v4)
  {
LABEL_20:
    dispatch_release(v4);
  }

LABEL_21:
  if (v5)
  {
    CFRelease(v5);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  _Block_object_dispose(&v11, 8);
  return v7;
}

intptr_t __AMSupportHttpCopyProxySettings_block_invoke(intptr_t result, int a2)
{
  v2 = result;
  switch(a2)
  {
    case 3:
      AMSupportLogInternal(6, "AMSupportHttpCopyProxySettings_block_invoke", "AMSupportHttpCopyProxySettings: RPNotificationAborted");
      break;
    case 2:
      AMSupportLogInternal(6, "AMSupportHttpCopyProxySettings_block_invoke", "AMSupportHttpCopyProxySettings: RPNotificationProxyUnavailable");
      break;
    case 1:
      AMSupportLogInternal(6, "AMSupportHttpCopyProxySettings_block_invoke", "Proxy available");
      *(*(*(v2 + 32) + 8) + 24) = 1;
      AMSupportLogInternal(6, "AMSupportHttpCopyProxySettings_block_invoke", "AMSupportHttpCopyProxySettings: RPNotificationProxyAvailable");
      break;
    default:
      return result;
  }

  v3 = *(v2 + 40);

  return dispatch_semaphore_signal(v3);
}

uint64_t AMSupportHttpURLSessionSendSync(void *a1, uint64_t a2, CFTypeRef *a3, CFTypeRef *a4, uint64_t *a5)
{
  v7 = objc_autoreleasePoolPush();
  context = v7;
  v31 = 1;
  valuePtr = 1;
  if (!a1)
  {
    AMSupportHttpURLSessionSendSync_cold_3(v7);
LABEL_62:
    v19 = 2;
    goto LABEL_58;
  }

  if (!a2)
  {
    AMSupportHttpURLSessionSendSync_cold_2(v7);
    goto LABEL_62;
  }

  v8 = [a1 options];
  Value = CFDictionaryGetValue(v8, @"ValidResponses");
  if (Value)
  {
    TypeID = CFSetGetTypeID();
    v11 = CFGetTypeID(Value);
    if (TypeID != v11)
    {
      AMSupportHttpURLSessionSendSync_cold_1(v11);
      v19 = 16;
      goto LABEL_58;
    }
  }

  v30 = a2;
  v12 = 0;
  v13 = 0;
  v14 = 1;
  do
  {
    if (v13)
    {
      CFRelease(v13);
    }

    if (v12)
    {
      CFRelease(v12);
    }

    v15 = CFDictionaryGetValue(v8, @"Backoff");
    if (!v15 || !CFNumberGetValue(v15, kCFNumberSInt32Type, &valuePtr))
    {
      valuePtr = 1;
    }

    v16 = CFDictionaryGetValue(v8, @"MaxAttempts");
    if (!v16 || !CFNumberGetValue(v16, kCFNumberSInt32Type, &v31))
    {
      v31 = 1;
    }

    v50 = 0;
    v51 = &v50;
    v52 = 0x3052000000;
    v53 = __Block_byref_object_copy__0;
    v54 = __Block_byref_object_dispose__0;
    v55 = 0;
    v44 = 0;
    v45 = &v44;
    v46 = 0x3052000000;
    v47 = __Block_byref_object_copy__0;
    v48 = __Block_byref_object_dispose__0;
    v49 = 0;
    v38 = 0;
    v39 = &v38;
    v40 = 0x3052000000;
    v41 = __Block_byref_object_copy__0;
    v42 = __Block_byref_object_dispose__0;
    v43 = 0;
    v34 = 0;
    v35 = &v34;
    v36 = 0x2020000000;
    v37 = 0;
    v17 = dispatch_semaphore_create(0);
    v18 = v17;
    if (!v17)
    {
      AMSupportLogInternal(3, "_AMSupportHttpURLSessionSendSyncNoRetry", "Failed to create semaphore");
      v13 = 0;
      v12 = 0;
      v19 = 2;
LABEL_21:
      v20 = -1;
      goto LABEL_24;
    }

    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3254779904;
    v33[2] = ___AMSupportHttpURLSessionSendSyncNoRetry_block_invoke;
    v33[3] = &__block_descriptor_72_e8_32o40r48r56r64r_e46_v32__0__NSData_8__NSURLResponse_16__NSError_24l;
    v33[6] = &v44;
    v33[7] = &v38;
    v33[8] = &v34;
    v33[4] = v17;
    v33[5] = &v50;
    [a1 sendRequest:v30 completion:v33];
    dispatch_semaphore_wait(v18, 0xFFFFFFFFFFFFFFFFLL);
    if (v39[5])
    {
      AMSupportLogInternal(3, "_AMSupportHttpURLSessionSendSyncNoRetry", "HTTP request failed with error %@", v39[5]);
      v13 = 0;
      v12 = 0;
      if ([a1 sslEvalFailed])
      {
        v19 = 23;
      }

      else
      {
        v19 = 16;
      }

      goto LABEL_21;
    }

    v21 = v51[5];
    if (!v21)
    {
      AMSupportLogInternal(3, "_AMSupportHttpURLSessionSendSyncNoRetry", "HTTP request provided no response data");
      v13 = 0;
      v12 = 0;
      v19 = 16;
      goto LABEL_21;
    }

    v13 = v21;
    v12 = v45[5];
    v19 = 0;
    v20 = *(v35 + 6);
LABEL_24:

    if (v18)
    {
      dispatch_release(v18);
    }

    _Block_object_dispose(&v34, 8);
    _Block_object_dispose(&v38, 8);
    _Block_object_dispose(&v44, 8);
    _Block_object_dispose(&v50, 8);
    if (v19)
    {
      if (v19 == 23)
      {
        AMSupportLogInternal(3, "AMSupportHttpURLSessionSendSync", "SSL trust evaluation failed");
        goto LABEL_54;
      }

      AMSupportLogInternal(3, "AMSupportHttpURLSessionSendSync", "HTTP request failed (status=%d)", v19);
      v22 = 1;
      if (!v13)
      {
LABEL_29:
        AMSupportLogInternal(3, "AMSupportHttpURLSessionSendSync", "HTTP request failed, httpResponseData is NULL");
        v22 = 1;
        if (!Value)
        {
          goto LABEL_34;
        }

        goto LABEL_33;
      }
    }

    else
    {
      v22 = 0;
      if (!v13)
      {
        goto LABEL_29;
      }
    }

    if (!Value)
    {
      goto LABEL_34;
    }

LABEL_33:
    if (![Value member:{+[NSNumber numberWithLong:](NSNumber, "numberWithLong:", v20)}])
    {
      AMSupportLogInternal(3, "AMSupportHttpURLSessionSendSync", "HTTP server returned unexpected HTTP response code %ld", v20);
      goto LABEL_37;
    }

LABEL_34:
    if (!v22)
    {
      if (a3 && v13)
      {
        *a3 = CFRetain(v13);
      }

      if (a4 && v12)
      {
        *a4 = CFRetain(v12);
      }

      if (a5 && v20)
      {
        *a5 = v20;
      }

      goto LABEL_54;
    }

LABEL_37:
    v23 = v31;
    if (v14 < v31)
    {
      v24 = valuePtr * v14;
      AMSupportLogInternal(3, "AMSupportHttpURLSessionSendSync", "-------------------- Attempt %d of %d failed, sleeping for %d seconds --------------------", v14, v31, valuePtr * v14);
      sleep(v24);
      v23 = v31;
    }

    ++v14;
  }

  while (v14 <= v23);
  if (v23 >= 2)
  {
    AMSupportLogInternal(3, "AMSupportHttpURLSessionSendSync", "!!!!!!!!!!!!!!!!!!!!!!!!!! Retries exhausted on attempt %d !!!!!!!!!!!!!!!!!!!!!!!!!!", v23);
  }

LABEL_54:
  if (v13)
  {
    CFRelease(v13);
  }

  if (v12)
  {
    CFRelease(v12);
  }

LABEL_58:
  objc_autoreleasePoolPop(context);
  return v19;
}

void sub_100039C88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, ...)
{
  va_start(va, a38);
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v38 - 224), 8);
  _Block_object_dispose((v38 - 176), 8);
  _Unwind_Resume(a1);
}

uint64_t AMSupportHttpSendSync(uint64_t a1, uint64_t a2, CFTypeRef *a3, CFTypeRef *a4, uint64_t *a5)
{
  v10 = objc_autoreleasePoolPush();
  v11 = [[AMSupportStaticURLSession alloc] initWithOptions:a2];
  v12 = AMSupportHttpURLSessionSendSync(v11, a1, a3, a4, a5);
  [(AMSupportStaticURLSession *)v11 invalidateAndCancel];
  AMSupportSafeRelease(v11);
  objc_autoreleasePoolPop(v10);
  return v12;
}

void __copy_helper_block_e8_32o40r48r56r64r(uint64_t a1, uint64_t a2)
{
  _Block_object_assign((a1 + 32), *(a2 + 32), 3);
  _Block_object_assign((a1 + 40), *(a2 + 40), 8);
  _Block_object_assign((a1 + 48), *(a2 + 48), 8);
  _Block_object_assign((a1 + 56), *(a2 + 56), 8);
  v4 = *(a2 + 64);

  _Block_object_assign((a1 + 64), v4, 8);
}

void __destroy_helper_block_e8_32o40r48r56r64r(uint64_t a1)
{
  _Block_object_dispose(*(a1 + 64), 8);
  _Block_object_dispose(*(a1 + 56), 8);
  _Block_object_dispose(*(a1 + 48), 8);
  _Block_object_dispose(*(a1 + 40), 8);
  v2 = *(a1 + 32);

  _Block_object_dispose(v2, 3);
}

void AMSupportLogInternal(uint64_t a1, uint64_t a2, const char *a3, ...)
{
  va_start(va, a3);
  v3 = __chkstk_darwin(a1, a2, a3);
  v5 = v4;
  v7 = v6;
  v8 = v3;
  bzero(__str, 0x1000uLL);
  v9 = "";
  if (v7)
  {
    v9 = v7;
  }

  v10 = snprintf(__str, 0x1000uLL, "%s: ", v9);
  v11 = CFStringCreateWithCStringNoCopy(kCFAllocatorDefault, v5, 0x8000100u, kCFAllocatorNull);
  if (!v11)
  {
    v13 = 0;
    goto LABEL_9;
  }

  v12 = CFStringCreateWithFormatAndArguments(kCFAllocatorDefault, 0, v11, va);
  v13 = v12;
  if (!v12)
  {
LABEL_9:
    v21 = 0;
    v20 = 0;
    goto LABEL_14;
  }

  v14 = v10;
  v15 = 4096 - v10;
  Length = CFStringGetLength(v12);
  v17 = Length;
  if (4096 - v10 < Length && (v18 = malloc(v10 + Length + 1)) != 0)
  {
    v19 = v18;
    v15 = v17 + 1;
    memcpy(v18, __str, v10);
    v20 = v19;
  }

  else
  {
    v20 = 0;
    v19 = __str;
  }

  if (CFStringGetCString(v13, &v19[v14], v15, 0x8000100u))
  {
    v21 = v19;
  }

  else
  {
    v21 = 0;
  }

LABEL_14:
  if (v21)
  {
    v22 = v21;
  }

  else
  {
    v22 = "failed to format log message";
  }

  _logHandler(v8, v22);
  AMSupportSafeRelease(v11);
  AMSupportSafeRelease(v13);
  AMSupportSafeFree(v20);
}

uint64_t AMSupportPlatformCopyURLToNewTempDirectory(const __CFAllocator *a1, const char *a2, CFURLRef *a3)
{
  bzero(v13, 0x400uLL);
  bzero(__str, 0x400uLL);
  result = 1;
  if (a2 && a3)
  {
    _AMSupportPlatformTempDirCString(v13);
    v7 = snprintf(__str, 0x400uLL, "%s/%s", v13, a2);
    if (mkdtemp(__str))
    {
      v8 = CFURLCreateFromFileSystemRepresentation(a1, __str, v7, 1u);
      if (v8)
      {
        v9 = v8;
        result = 0;
        *a3 = v9;
      }

      else
      {
        unlink(__str);
        return 2;
      }
    }

    else
    {
      v10 = __error();
      v11 = strerror(*v10);
      AMSupportLogInternal(3, "AMSupportPlatformCopyURLToNewTempDirectory", "failed to create %s: %s", __str, v11);
      return 4;
    }
  }

  return result;
}

size_t _AMSupportPlatformTempDirCString(char *a1)
{
  v2 = getenv("TMPDIR");
  if (!v2 || (v3 = strlcpy(a1, v2, 0x400uLL), v3 - 1024 < 0xFFFFFFFFFFFFFC01) || (v4 = v3, access(a1, 7)))
  {
    v5 = confstr(65537, a1, 0x400uLL);
    if (v5 - 1024 < 0xFFFFFFFFFFFFFC01)
    {
LABEL_7:
      strcpy(a1, "/tmp/");
      return 5;
    }

    v4 = v5;
  }

  if (access(a1, 7))
  {
    goto LABEL_7;
  }

  return v4;
}

FILE *AMSupportPlatformOpenFileStreamWithURL(const __CFURL *a1, const char *a2)
{
  bzero(buffer, 0x400uLL);
  if (CFURLGetFileSystemRepresentation(a1, 1u, buffer, 1024))
  {
    return fopen(buffer, a2);
  }

  AMSupportLogInternal(3, "AMSupportPlatformOpenFileStreamWithURL", "failed to convert url to file system representation");
  AMSupportLogInternal(8, "AMSupportPlatformOpenFileStreamWithURL", "%@", a1);
  return 0;
}

uint64_t AMSupportX509ChainEvaluateTrust(__SecTrust *a1, CFArrayRef theArray, _DWORD *a3)
{
  v42 = 0;
  v43 = 0;
  *__s1 = 0u;
  v41 = 0u;
  memset(v39, 0, sizeof(v39));
  *__s2 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  if (!a1)
  {
    AMSupportX509ChainEvaluateTrust_cold_3(0);
LABEL_37:
    v13 = 4294967292;
    goto LABEL_13;
  }

  if (!theArray)
  {
    AMSupportX509ChainEvaluateTrust_cold_2(a1);
    goto LABEL_37;
  }

  if (!a3)
  {
    AMSupportX509ChainEvaluateTrust_cold_1(a1);
    goto LABEL_37;
  }

  if (CFArrayGetCount(theArray) <= 0)
  {
    AMSupportLogInternal(3, "AMSupportX509ChainEvaluateTrust", "trustedRootArray must be non NULL and have at least one element");
    v13 = 4294966387;
    goto LABEL_13;
  }

  Count = CFArrayGetCount(theArray);
  AMSupportLogInternal(7, "AMSupportX509ChainEvaluateTrust", "Number of trusted roots: %d", Count);
  CertificateCount = SecTrustGetCertificateCount(a1);
  if (CertificateCount <= 0)
  {
    v19 = 0;
    v11 = "Array index of root server cert out of range. (%d)";
    v12 = 7;
LABEL_11:
    AMSupportLogInternal(v12, "AMSupportX509ChainEvaluateTrust", v11, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36);
    *a3 = 6;
LABEL_12:
    v13 = 4294967246;
    goto LABEL_13;
  }

  v8 = CertificateCount;
  AMSupportLogInternal(7, "AMSupportX509ChainEvaluateTrust", "Number of server certificates: %d", CertificateCount);
  AMSupportLogInternal(7, "AMSupportX509ChainEvaluateTrust", "Checking server certificate %d of %d", 0, v8);
  CertificateAtIndex = SecTrustGetCertificateAtIndex(a1, 0);
  v10 = _SecCertificateCopyAMSupportCert(CertificateAtIndex, &v21, &v43);
  if (v10)
  {
    v19 = v10;
    v11 = "PKI: decoding top-level server cert failed with error 0x%08X";
LABEL_8:
    v12 = 3;
    goto LABEL_11;
  }

  AMSupportLogInternal(7, "AMSupportX509ChainEvaluateTrust", "First server cert length %d", LODWORD(__s2[1]));
  if (CFArrayGetCount(theArray) < 1)
  {
LABEL_27:
    AMSupportLogInternal(3, "AMSupportX509ChainEvaluateTrust", "Root cert not signed by any trusted roots.");
    v13 = 0;
    *a3 = 3;
  }

  else
  {
    v15 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, v15);
      v17 = _SecCertificateCopyAMSupportCert(ValueAtIndex, v39, &v42);
      if (v17)
      {
        AMSupportLogInternal(3, "AMSupportX509ChainEvaluateTrust", "PKI: decoding trusted root %d failed with error 0x%08X", v15, v17);
        goto LABEL_12;
      }

      AMSupportLogInternal(7, "AMSupportX509ChainEvaluateTrust", "Trusted root #%d has length %d", v15, LODWORD(__s1[1]));
      if (__s1[1] == __s2[1] && !memcmp(__s1[0], __s2[0], __s1[1]))
      {
        AMSupportLogInternal(7, "AMSupportX509ChainEvaluateTrust", "PKI: Root cert is identical to trusted root. (success)");
        goto LABEL_33;
      }

      v18 = AMSupportX509DecodeVerifyCertIssuer(&v21, v39);
      if (v18 != 18)
      {
        break;
      }

      if (v42)
      {
        CFRelease(v42);
      }

      v42 = 0;
      if (++v15 >= CFArrayGetCount(theArray))
      {
        goto LABEL_27;
      }
    }

    if (v18)
    {
      v19 = v15;
      v20 = v18;
      v11 = "PKI: verify cert was issued by trusted root %d failed with error 0x%08X";
      goto LABEL_8;
    }

    AMSupportLogInternal(7, "AMSupportX509ChainEvaluateTrust", "PKI: verify cert was issued by trusted root %d (success)");
LABEL_33:
    AMSupportLogInternal(7, "AMSupportX509ChainEvaluateTrust", "PKI: Chain validation complete. (success)");
    v13 = 0;
    *a3 = 1;
  }

LABEL_13:
  if (v43)
  {
    CFRelease(v43);
    v43 = 0;
  }

  if (v42)
  {
    CFRelease(v42);
  }

  return v13;
}

uint64_t _SecCertificateCopyAMSupportCert(__SecCertificate *a1, unint64_t *a2, CFTypeRef *a3)
{
  if (!a3)
  {
    _SecCertificateCopyAMSupportCert_cold_4(a1);
    return 99;
  }

  if (!a2)
  {
    _SecCertificateCopyAMSupportCert_cold_3(a1);
    return 99;
  }

  if (!a1)
  {
    _SecCertificateCopyAMSupportCert_cold_2(0);
    return 99;
  }

  v5 = SecCertificateCopyData(a1);
  if (!v5)
  {
    _SecCertificateCopyAMSupportCert_cold_1(0);
    return 99;
  }

  v6 = v5;
  BytePtr = CFDataGetBytePtr(v5);
  Length = CFDataGetLength(v6);
  if (BytePtr && Length)
  {
    v9 = AMSupportX509DecodeCertificate(a2, BytePtr, Length);
    v10 = v9;
    if (v9)
    {
      AMSupportLogInternal(7, "_SecCertificateCopyAMSupportCert", "PKI: decoding cert failed with error 0x%08X", v9);
    }

    else
    {
      *a3 = CFRetain(v6);
    }
  }

  else
  {
    AMSupportLogInternal(3, "_SecCertificateCopyAMSupportCert", "chain_blob must be non NULL and chain_blob_length must be non 0");
    v10 = 99;
  }

  CFRelease(v6);
  return v10;
}

void _AMAuthInstallFinalize(uint64_t a1)
{
  if (!a1)
  {
    _AMAuthInstallFinalize_cold_1();
  }

  if (!*(a1 + 520))
  {
    *(a1 + 520) = 1;
    AMAuthInstallApFinalize(a1);
    AMAuthInstallBasebandFinalize(a1);
    AMAuthInstallBundleFinalize(a1);
    SafeRelease(*(a1 + 120));
    SafeRelease(*(a1 + 376));
    SafeRelease(*(a1 + 384));
    SafeRelease(*(a1 + 416));
    SafeRelease(*(a1 + 336));
    SafeRelease(*(a1 + 96));
    SafeRelease(*(a1 + 72));
    SafeRelease(*(a1 + 88));
    SafeRelease(*(a1 + 64));
    SafeRelease(*(a1 + 352));
    SafeRelease(*(a1 + 296));
    SafeRelease(*(a1 + 312));
    SafeRelease(*(a1 + 320));
    SafeRelease(*(a1 + 424));
    SafeRelease(*(a1 + 456));
    SafeRelease(*(a1 + 464));
    SafeRelease(*(a1 + 472));
    SafeRelease(*(a1 + 480));
    SafeRelease(*(a1 + 496));
    SafeRelease(*(a1 + 40));
    SafeRelease(*(a1 + 512));
    SafeRelease(*(a1 + 360));
    SafeRelease(*(a1 + 488));

    bzero((a1 + 16), 0x208uLL);
  }
}

const __CFString *AMAuthInstallGetLocalizedStatusString(CFDictionaryRef *cf, int a2)
{
  valuePtr = a2;
  if (a2 > 98)
  {
    if (a2 <= 3500)
    {
      switch(a2)
      {
        case 99:
          return @"Generic";
        case 3194:
          return @"Declined to authorize this image on this device for this user.";
        case 3500:
          return @"The signing server returned an internal error";
      }
    }

    else if (a2 > 3503)
    {
      if (a2 == 3504)
      {
        return @"The signing server could not find the resource requested";
      }

      if (a2 == 3507)
      {
        return @"You must authorize with a proxy server before making this request";
      }
    }

    else
    {
      if (a2 == 3501)
      {
        return @"You must authorize with the signing server before making this request";
      }

      if (a2 == 3503)
      {
        return @"You are not authorized to make this request. Please check your device or credentials";
      }
    }

LABEL_42:
    Value = &stru_1000A1550;
    if (cf)
    {
      if ((a2 - 3100) <= 0x383)
      {
        v5 = CFGetAllocator(cf);
        v6 = CFNumberCreate(v5, kCFNumberIntType, &valuePtr);
        if (v6)
        {
          v7 = v6;
          Value = CFDictionaryGetValue(cf[44], v6);
          CFRelease(v7);
          if (!Value)
          {
            AMAuthInstallLog(7, "AMAuthInstallGetLocalizedStatusString", "no cached text for tss error code %d", valuePtr);
          }
        }
      }
    }
  }

  else
  {
    Value = @"No error";
    switch(a2)
    {
      case 0:
        return Value;
      case 1:
        Value = @"Bad parameter";
        break;
      case 2:
        Value = @"Allocation error";
        break;
      case 3:
        Value = @"Conversion error";
        break;
      case 4:
        Value = @"File error";
        break;
      case 5:
        Value = @"Hash error";
        break;
      case 6:
        Value = @"Crypto error";
        break;
      case 7:
        Value = @"Bad build identity";
        break;
      case 8:
        Value = @"Entry not found";
        break;
      case 9:
        Value = @"Invalid img3 object";
        break;
      case 10:
        Value = @"Invalid bbfw object";
        break;
      case 11:
        Value = @"Server not reachable";
        break;
      case 12:
        Value = @"Server timed out";
        break;
      case 13:
        Value = @"Unimplemented";
        break;
      case 14:
        Value = @"Internal error";
        break;
      case 15:
        Value = @"Invalid bbfw file";
        break;
      case 16:
        Value = @"Network error";
        break;
      case 17:
        Value = @"Bad response";
        break;
      case 18:
        Value = @"Fusing failed";
        break;
      case 19:
        Value = @"Baseband provisioning failed";
        break;
      case 20:
        Value = @"AppleConnect not found";
        break;
      case 21:
        Value = @"AppleConnect user canceled";
        break;
      case 22:
        Value = @"AppleConnect bad credentials";
        break;
      default:
        goto LABEL_42;
    }
  }

  return Value;
}

uint64_t _AMAuthInstallClassInitialize()
{
  result = _CFRuntimeRegisterClass();
  _AMAuthInstallTypeID = result;
  return result;
}

CFStringRef _AMAuthInstallCopyFormattingDescription(uint64_t a1, const __CFDictionary *a2)
{
  if (!a1)
  {
    _AMAuthInstallCopyFormattingDescription_cold_1();
  }

  v4 = AMAuthInstallApCopyDescription(a1);
  v5 = AMAuthInstallBasebandCopyDescription(a1);
  v6 = CFGetAllocator(a1);
  v7 = *(a1 + 72);
  if (*(a1 + 64))
  {
    v8 = *(a1 + 64);
  }

  else
  {
    v8 = @"default";
  }

  if (*(a1 + 56))
  {
    v9 = @"YES";
  }

  else
  {
    v9 = @"NO";
  }

  if (*(a1 + 104))
  {
    v10 = @"YES";
  }

  else
  {
    v10 = @"NO";
  }

  LibraryVersionString = AMAuthInstallSupportGetLibraryVersionString();
  PlatformInfoString = AMAuthInstallPlatformGetPlatformInfoString();
  v13 = CFStringCreateWithFormat(v6, a2, @"<AMAuthInstall %p>{ap=%@, bp=%@, UserAuth=%@, iTunes=%@, server=%@, locale=%@, version=%@, platform=%@}", a1, v4, v5, v10, v9, v7, v8, LibraryVersionString, PlatformInfoString);
  SafeRelease(v4);
  SafeRelease(v5);
  return v13;
}

CFMutableDictionaryRef OUTLINED_FUNCTION_1_2(uint64_t a1, uint64_t a2, const CFDictionaryKeyCallBacks *a3, const CFDictionaryValueCallBacks *a4)
{

  return CFDictionaryCreateMutable(v4, 0, a3, a4);
}

__CFString *AMAuthInstallApCopyDescription(uint64_t a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 64);
  CFStringAppend(Mutable, @"(");
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = "YES";
    if (*(a1 + 57))
    {
      v6 = "YES";
    }

    else
    {
      v6 = "NO";
    }

    if (*(v4 + 20))
    {
      v7 = "YES";
    }

    else
    {
      v7 = "NO";
    }

    if (*(v4 + 97))
    {
      v8 = "YES";
    }

    else
    {
      v8 = "NO";
    }

    if (*(v4 + 88))
    {
      v9 = "YES";
    }

    else
    {
      v9 = "NO";
    }

    if (*(v4 + 98))
    {
      v10 = "YES";
    }

    else
    {
      v10 = "NO";
    }

    if (*(v4 + 112))
    {
      v11 = "YES";
    }

    else
    {
      v11 = "NO";
    }

    if (*(v4 + 136))
    {
      v12 = "YES";
    }

    else
    {
      v12 = "NO";
    }

    if (!*(v4 + 144))
    {
      v5 = "NO";
    }

    CFStringAppendFormat(Mutable, 0, @"personalize=%s %@ ecid=0x%llx, chipid=0x%x, boardid=0x%x, secDom=%d, isProduction=%s, EPRO=%s, isSecure=%s, ESEC=%s, img4=%s, demotionPolicy=%@, managedBaaCert=%s, slowRollBaaCert=%s, dpoc=%@", v6, *(v4 + 120), *v4, *(v4 + 8), *(v4 + 12), *(v4 + 16), v7, v8, v9, v10, v11, *(v4 + 104), v12, v5, *(v4 + 208));
    v13 = *(a1 + 16);
    if (*(v13 + 24))
    {
      v14 = CFGetAllocator(a1);
      v15 = _CopyHexStringFromData(v14, *(*(a1 + 16) + 24));
      CFStringAppendFormat(Mutable, 0, @", nonce=0x%@", v15);
      CFRelease(v15);
      v13 = *(a1 + 16);
    }

    if (*(v13 + 48))
    {
      v16 = CFGetAllocator(a1);
      v17 = _CopyHexStringFromData(v16, *(*(a1 + 16) + 48));
      CFStringAppendFormat(Mutable, 0, @", sepNonce=0x%@", v17);
      CFRelease(v17);
    }
  }

  CFStringAppend(Mutable, @""));
  return Mutable;
}

void AMAuthInstallApFinalize(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    SafeRelease(*(v2 + 24));
    SafeRelease(*(a1[2] + 32));
    SafeRelease(*(a1[2] + 48));
    SafeRelease(*(a1[2] + 56));
    SafeRelease(*(a1[2] + 104));
    SafeRelease(*(a1[2] + 120));
    SafeRelease(*(a1[2] + 136));
    SafeRelease(*(a1[2] + 144));
    SafeRelease(*(a1[2] + 152));
    SafeRelease(*(a1[2] + 176));
    SafeRelease(*(a1[2] + 184));
    SafeRelease(*(a1[2] + 192));
    SafeRelease(*(a1[2] + 200));
    SafeRelease(*(a1[2] + 208));
    SafeRelease(*(a1[2] + 64));
    SafeRelease(*(a1[2] + 72));
    SafeFree(a1[2]);
    a1[2] = 0;
  }

  SafeRelease(a1[3]);
  SafeRelease(a1[66]);
  a1[3] = 0;
  a1[66] = 0;
}

__CFString *AMAuthInstallApImg4GetTypeForEntryName(CFStringRef theString1)
{
  v2 = off_10009AAB8;
  v3 = 218;
  while (CFStringCompare(theString1, *(v2 - 1), 0))
  {
    v2 += 2;
    if (!--v3)
    {
      v4 = 0;
      goto LABEL_6;
    }
  }

  v4 = *v2;
LABEL_6:
  if (v4)
  {
    return v4;
  }

  else
  {
    return theString1;
  }
}

uint64_t AMAuthInstallApImg4EncodeRestoreInfo(const __CFData *a1, CFDictionaryRef theDict, CFDataRef *a3)
{
  v32[0] = 0;
  v32[1] = 0;
  v31 = 0;
  v30 = 0;
  v28 = 0;
  bytes = 0;
  v26 = 0;
  length = 0;
  v24 = 0;
  v25 = 0;
  v23 = 0;
  if (!a1 || !theDict || (Count = CFDictionaryGetCount(theDict), !a3) || Count < 1)
  {
    Mutable = 0;
    if (!a3)
    {
      v11 = 3;
      v15 = 0;
      v13 = 0;
      goto LABEL_20;
    }

    v13 = 0;
    v15 = 0;
    goto LABEL_33;
  }

  v7 = CFDataGetLength(a1);
  v31 = v7;
  BytePtr = CFDataGetBytePtr(a1);
  if (DERDecoderInitialize(v32, BytePtr, &v31, v7))
  {
    v21 = "DERDecoderInitialize top level failed";
    goto LABEL_32;
  }

  if (DERDecoderGetDataWithTag(v32, 0, 0x10u, 1, &bytes, &length + 1, &v30))
  {
    v21 = "could not find im4p top level sequence";
    goto LABEL_32;
  }

  if (DERDecoderInitialize(v32, bytes, &length + 1, HIDWORD(length)))
  {
    v21 = "DERDecoderInitialize sequence failed";
    goto LABEL_32;
  }

  v30 = 3;
  EncodingWithTag = DERDecoderGetEncodingWithTag(v32, 2u, 1u, 1, &v28, &length, &v30);
  if (EncodingWithTag)
  {
    if (!AMAuthInstallApImg4EncodeRestoreDict(theDict, &v24, &v26 + 1))
    {
      Mutable = 0;
      goto LABEL_15;
    }

    v21 = "AMAuthInstallApImg4EncodeRestoreDict failed";
LABEL_32:
    AMAuthInstallApImg4EncodeRestoreInfo_cold_1(v21);
    Mutable = 0;
    v13 = 0;
    v15 = 0;
    goto LABEL_33;
  }

  HIDWORD(length) -= length;
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v25 = Mutable;
  if (AMAuthInstallApImg4DecodeRestoreInfo(a1, &v25))
  {
    v20 = AMAuthInstallApImg4EncodeRestoreDict(theDict, &v24, &v26 + 1);
    if (v20)
    {
      v11 = v20;
      AMAuthInstallApImg4EncodeRestoreInfo_cold_2();
      goto LABEL_35;
    }
  }

  else
  {
    v22 = 0;
    AMSupportCreateMergedDictionary(kCFAllocatorDefault, Mutable, theDict, &v22);
    if (!v22)
    {
      v11 = 0;
      AMAuthInstallLog(3, "AMAuthInstallApImg4EncodeRestoreInfo", "failed to create merged restore Info dictionary");
      goto LABEL_35;
    }

    v11 = AMAuthInstallApImg4EncodeRestoreDict(v22, &v24, &v26 + 1);
    SafeRelease(v22);
    if (v11)
    {
      AMAuthInstallLog(3, "AMAuthInstallApImg4EncodeRestoreInfo", "AMAuthInstallApImg4EncodeRestoreDict merged restoreInfo failed");
LABEL_35:
      v15 = 0;
      v13 = 0;
      goto LABEL_20;
    }
  }

LABEL_15:
  v12 = CFDataCreateMutable(0, 0);
  v13 = v12;
  if (!v12 || (CFDataAppendBytes(v12, bytes, HIDWORD(length)), CFDataAppendBytes(v13, v24, HIDWORD(v26)), (v14 = DEREncoderCreate(0)) == 0))
  {
    v15 = 0;
    if (!EncodingWithTag)
    {
      v11 = 2;
      goto LABEL_20;
    }

LABEL_33:
    *a3 = 0;
    v11 = 3;
    goto LABEL_20;
  }

  v15 = v14;
  v16 = CFDataGetBytePtr(v13);
  v17 = CFDataGetLength(v13);
  if (DEREncoderAddData(v15, 0, 16, v16, v17, 1) || DEREncoderCreateEncodedBuffer(v15, &v23, &v26))
  {
    goto LABEL_33;
  }

  v18 = CFDataCreate(0, v23, v26);
  *a3 = v18;
  v11 = 2 * (v18 == 0);
LABEL_20:
  SafeRelease(Mutable);
  SafeFree(v24);
  SafeFree(v23);
  SafeRelease(v13);
  DEREncoderDestroy(v15);
  return v11;
}

BOOL AMAuthInstallApImg4SupportsLocalSigning(uint64_t a1)
{
  result = 0;
  if (a1)
  {
    v1 = *(a1 + 16);
    if (v1)
    {
      if (*(v1 + 92))
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t AMAuthInstallApImg4GetTagAsInteger(CFStringRef theString)
{
  v4 = 0;
  if (!theString)
  {
    return 0xFFFFFFFFLL;
  }

  for (i = 0; i != 4; ++i)
  {
    if (i == CFStringGetLength(theString))
    {
      break;
    }

    *(&v4 + i) = CFStringGetCharacterAtIndex(theString, i);
  }

  return bswap32(v4);
}

uint64_t AMAuthInstallApImg4AddInteger32Property(uint64_t *a1, const __CFString *a2, const __CFNumber *a3)
{
  v3 = 0;
  valuePtr = 0;
  if (!a1)
  {
    goto LABEL_17;
  }

  if (!a2)
  {
    goto LABEL_17;
  }

  if (!a3)
  {
    goto LABEL_17;
  }

  v3 = DEREncoderCreate(0);
  if (!v3)
  {
    goto LABEL_17;
  }

  CString = CFStringGetCString(a2, buffer, 256, 0x8000100u);
  if (CString)
  {
    v8 = strlen(buffer);
    if (DEREncoderAddData(v3, 0, 22, buffer, v8, 0))
    {
      AMAuthInstallLog(3, "AMAuthInstallApImg4AddInteger32Property", "failed to add %@ string", a2);
      goto LABEL_17;
    }
  }

  if (!CFNumberGetValue(a3, kCFNumberSInt32Type, &valuePtr))
  {
    AMAuthInstallLog(3, "AMAuthInstallApImg4AddInteger32Property", "%s: invalid datatype", "AMAuthInstallApImg4AddInteger32Property");
    if (CString)
    {
      v10 = 1;
      goto LABEL_11;
    }

LABEL_17:
    v10 = 3;
    AMAuthInstallLog(3, "AMAuthInstallApImg4AddInteger32Property", "%s failed to create DER file", "AMAuthInstallApImg4AddInteger32Property");
    goto LABEL_11;
  }

  if (DEREncoderAddUInt32(v3, 0, 2u, valuePtr))
  {
    AMAuthInstallLog(3, "AMAuthInstallApImg4AddInteger32Property", "failed to add %@ value", a2);
    goto LABEL_17;
  }

  TagAsInteger = AMAuthInstallApImg4GetTagAsInteger(a2);
  if (DEREncoderAddPrivateFromEncoder(v3, a1, TagAsInteger))
  {
    AMAuthInstallApImg4AddInteger32Property_cold_1();
    goto LABEL_17;
  }

  v10 = 0;
LABEL_11:
  DEREncoderDestroy(v3);
  return v10;
}

uint64_t AMAuthInstallApImg4AddInteger64Property(uint64_t *a1, const __CFString *a2, const __CFNumber *a3)
{
  v3 = 0;
  valuePtr = 0;
  if (!a1)
  {
    goto LABEL_17;
  }

  if (!a2)
  {
    goto LABEL_17;
  }

  if (!a3)
  {
    goto LABEL_17;
  }

  v3 = DEREncoderCreate(0);
  if (!v3)
  {
    goto LABEL_17;
  }

  CString = CFStringGetCString(a2, buffer, 256, 0x8000100u);
  if (CString)
  {
    v8 = strlen(buffer);
    if (DEREncoderAddData(v3, 0, 22, buffer, v8, 0))
    {
      AMAuthInstallLog(3, "AMAuthInstallApImg4AddInteger64Property", "failed to add %@ string", a2);
      goto LABEL_17;
    }
  }

  if (!CFNumberGetValue(a3, kCFNumberSInt64Type, &valuePtr))
  {
    AMAuthInstallLog(3, "AMAuthInstallApImg4AddInteger64Property", "%s: invalid datatype", "AMAuthInstallApImg4AddInteger64Property");
    if (CString)
    {
      v10 = 1;
      goto LABEL_11;
    }

LABEL_17:
    v10 = 3;
    AMAuthInstallLog(3, "AMAuthInstallApImg4AddInteger64Property", "%s failed to create DER file", "AMAuthInstallApImg4AddInteger64Property");
    goto LABEL_11;
  }

  if (DEREncoderAddUInt64(v3, 0, 2u, valuePtr))
  {
    AMAuthInstallLog(3, "AMAuthInstallApImg4AddInteger64Property", "failed to add %@ value", a2);
    goto LABEL_17;
  }

  TagAsInteger = AMAuthInstallApImg4GetTagAsInteger(a2);
  if (DEREncoderAddPrivateFromEncoder(v3, a1, TagAsInteger))
  {
    AMAuthInstallApImg4AddInteger64Property_cold_1();
    goto LABEL_17;
  }

  v10 = 0;
LABEL_11:
  DEREncoderDestroy(v3);
  return v10;
}

uint64_t AMAuthInstallApImg4AddBooleanProperty(uint64_t *a1, const __CFString *a2, int a3)
{
  v3 = 0;
  if (a3)
  {
    v4 = -1;
  }

  else
  {
    v4 = 0;
  }

  v11 = v4;
  if (!a1)
  {
    goto LABEL_16;
  }

  if (!a2)
  {
    goto LABEL_16;
  }

  v3 = DEREncoderCreate(0);
  if (!v3)
  {
    goto LABEL_16;
  }

  if (CFStringGetCString(a2, buffer, 256, 0x8000100u))
  {
    v7 = strlen(buffer);
    if (DEREncoderAddData(v3, 0, 22, buffer, v7, 0))
    {
      AMAuthInstallLog(3, "AMAuthInstallApImg4AddBooleanProperty", "failed to add %@ string", a2);
      goto LABEL_16;
    }
  }

  if (DEREncoderAddData(v3, 0, 1, &v11, 1, 0))
  {
    AMAuthInstallApImg4AddBooleanProperty_cold_1();
LABEL_16:
    v9 = 3;
    AMAuthInstallLog(3, "AMAuthInstallApImg4AddBooleanProperty", "%s failed to create DER file", "AMAuthInstallApImg4AddBooleanProperty");
    goto LABEL_12;
  }

  TagAsInteger = AMAuthInstallApImg4GetTagAsInteger(a2);
  if (DEREncoderAddPrivateFromEncoder(v3, a1, TagAsInteger))
  {
    AMAuthInstallApImg4AddBooleanProperty_cold_2();
    goto LABEL_16;
  }

  v9 = 0;
LABEL_12:
  DEREncoderDestroy(v3);
  return v9;
}

uint64_t AMAuthInstallApImg4AddDataProperty(uint64_t *a1, const __CFString *a2, const __CFData *a3)
{
  v3 = 0;
  if (!a1)
  {
    goto LABEL_14;
  }

  if (!a2)
  {
    goto LABEL_14;
  }

  if (!a3)
  {
    goto LABEL_14;
  }

  v3 = DEREncoderCreate(0);
  if (!v3)
  {
    goto LABEL_14;
  }

  if (CFStringGetCString(a2, buffer, 256, 0x8000100u))
  {
    v7 = strlen(buffer);
    if (DEREncoderAddData(v3, 0, 22, buffer, v7, 0))
    {
      AMAuthInstallLog(3, "AMAuthInstallApImg4AddDataProperty", "failed to add %@ string", a2);
      goto LABEL_14;
    }
  }

  BytePtr = CFDataGetBytePtr(a3);
  Length = CFDataGetLength(a3);
  if (DEREncoderAddData(v3, 0, 4, BytePtr, Length, 0))
  {
    AMAuthInstallLog(3, "AMAuthInstallApImg4AddDataProperty", "failed to add %@ data", a2);
LABEL_14:
    v11 = 3;
    AMAuthInstallLog(3, "AMAuthInstallApImg4AddDataProperty", "%s failed to create DER file", "AMAuthInstallApImg4AddDataProperty");
    goto LABEL_10;
  }

  TagAsInteger = AMAuthInstallApImg4GetTagAsInteger(a2);
  if (DEREncoderAddPrivateFromEncoder(v3, a1, TagAsInteger))
  {
    AMAuthInstallApImg4AddDataProperty_cold_1();
    goto LABEL_14;
  }

  v11 = 0;
LABEL_10:
  DEREncoderDestroy(v3);
  return v11;
}

uint64_t AMAuthInstallApImg4AddDictionaryProperty(uint64_t **a1, uint64_t *a2, const __CFString *a3)
{
  v3 = 0;
  if (!a1)
  {
    goto LABEL_14;
  }

  if (!a2)
  {
    goto LABEL_14;
  }

  if (!a3)
  {
    goto LABEL_14;
  }

  v3 = DEREncoderCreate(0);
  if (!v3)
  {
    goto LABEL_14;
  }

  if (CFStringGetCString(a3, buffer, 256, 0x8000100u))
  {
    v7 = strlen(buffer);
    if (DEREncoderAddData(v3, 0, 22, buffer, v7, 0))
    {
      AMAuthInstallLog(3, "AMAuthInstallApImg4AddDictionaryProperty", "failed to add %@ string", a3);
      goto LABEL_14;
    }
  }

  if (DEREncoderAddSetFromEncoder(a1, v3))
  {
    AMAuthInstallApImg4AddDictionaryProperty_cold_1();
LABEL_14:
    v9 = 3;
    AMAuthInstallLog(3, "AMAuthInstallApImg4AddDictionaryProperty", "%s failed to create DER file", "AMAuthInstallApImg4AddDictionaryProperty");
    goto LABEL_10;
  }

  TagAsInteger = AMAuthInstallApImg4GetTagAsInteger(a3);
  if (DEREncoderAddPrivateFromEncoder(v3, a2, TagAsInteger))
  {
    AMAuthInstallApImg4AddDictionaryProperty_cold_2();
    goto LABEL_14;
  }

  v9 = 0;
LABEL_10:
  DEREncoderDestroy(v3);
  return v9;
}

uint64_t AMAuthInstallApImg4LocalCreateManifestBody(CFURLRef *a1, CFTypeRef a2, CFDataRef *a3)
{
  LODWORD(length) = 0;
  bytes = 0;
  if (!a1 || !a2 || !a3)
  {
    v67 = 3;
    AMAuthInstallLog(3, "AMAuthInstallApImg4LocalCreateManifestBody", "%s DER operation failed", "AMAuthInstallApImg4LocalCreateManifestBody");
    v63 = 0;
    if (!a3)
    {
      v61 = 0;
      v57 = 0;
      v6 = 0;
      v8 = 0;
      goto LABEL_68;
    }

    v8 = 0;
    v6 = 0;
    v57 = 0;
    v61 = 0;
LABEL_89:
    SafeRelease(*a3);
    v67 = 3;
    goto LABEL_68;
  }

  AMAuthInstallDebugWriteObject(a1, a2, @"tss-request", 2);
  v6 = DEREncoderCreate(1);
  if (!v6)
  {
    v8 = 0;
    goto LABEL_87;
  }

  v7 = CFGetAllocator(a1);
  v8 = CFNumberCreate(v7, kCFNumberIntType, a1[2] + 84);
  if (!v8)
  {
    goto LABEL_87;
  }

  if (AMAuthInstallApImg4AddInteger32Property(v6, @"CEPO", v8))
  {
    goto LABEL_87;
  }

  Value = CFDictionaryGetValue(a2, @"ApChipID");
  if (Value)
  {
    v10 = Value;
    v11 = CFGetTypeID(Value);
    if (v11 == CFNumberGetTypeID())
    {
      if (AMAuthInstallApImg4AddInteger32Property(v6, @"CHIP", v10))
      {
        goto LABEL_87;
      }
    }
  }

  v12 = CFDictionaryGetValue(a2, @"ApBoardID");
  if (v12)
  {
    v13 = v12;
    v14 = CFGetTypeID(v12);
    if (v14 == CFNumberGetTypeID())
    {
      if (AMAuthInstallApImg4AddInteger32Property(v6, @"BORD", v13))
      {
        goto LABEL_87;
      }
    }
  }

  v15 = CFDictionaryGetValue(a2, @"ApECID");
  if (v15)
  {
    v16 = v15;
    v17 = CFGetTypeID(v15);
    if (v17 == CFNumberGetTypeID())
    {
      v18 = AMAuthInstallApImg4AddInteger64Property(v6, @"ECID", v16);
      if (!v18)
      {
        v19 = 1;
        goto LABEL_18;
      }

      AMAuthInstallApImg4LocalCreateManifestBody_cold_1(v18);
LABEL_87:
      v57 = 0;
      v61 = 0;
      v63 = 0;
      goto LABEL_88;
    }
  }

  v19 = 0;
LABEL_18:
  v20 = CFDictionaryGetValue(a2, @"ApSecurityDomain");
  if (v20 && (v21 = v20, v22 = CFGetTypeID(v20), v22 == CFNumberGetTypeID()) && (v23 = AMAuthInstallApImg4AddInteger32Property(v6, @"SDOM", v21), v23) || ((v24 = CFDictionaryGetValue(a2, @"ApProductionMode")) == 0 || (v25 = v24, v26 = CFGetTypeID(v24), v26 != CFBooleanGetTypeID()) || !CFBooleanGetValue(v25) ? (v27 = 0) : (v27 = 1), (v23 = AMAuthInstallApImg4AddBooleanProperty(v6, @"CPRO", v27), v23) || ((v28 = CFDictionaryGetValue(a2, @"ApSecurityMode")) == 0 || (v29 = v28, v30 = CFGetTypeID(v28), v30 != CFBooleanGetTypeID()) || !CFBooleanGetValue(v29) ? (v31 = 0) : (v31 = 1), (v23 = AMAuthInstallApImg4AddBooleanProperty(v6, @"CSEC", v31), v23) || (v32 = CFDictionaryGetValue(a2, @"ApLocalNonceHash")) != 0 && (v33 = v32, v34 = CFGetTypeID(v32), v34 == CFDataGetTypeID()) && (v23 = AMAuthInstallApImg4AddDataProperty(v6, @"LNCH", v33), v23) || (v35 = CFDictionaryGetValue(a2, @"ApNonce")) != 0 && (v36 = v35, v37 = CFGetTypeID(v35), v37 == CFDataGetTypeID()) && (v23 = AMAuthInstallApImg4AddDataProperty(v6, @"BNCH", v36), v23) || (v38 = CFDictionaryGetValue(a2, @"SepNonce")) != 0 && (v39 = v38, v40 = CFGetTypeID(v38), v40 == CFDataGetTypeID()) && (v23 = AMAuthInstallApImg4AddDataProperty(v6, @"snon", v39), v23) || (v41 = CFDictionaryGetValue(a2, @"ApAllowMixAndMatch")) != 0 && (v42 = v41, v43 = CFGetTypeID(v41), v43 == CFBooleanGetTypeID()) && CFBooleanGetValue(v42) && (v23 = AMAuthInstallApImg4AddBooleanProperty(v6, @"AMNM", 1), v23) || (v44 = CFDictionaryGetValue(a2, @"Ap,NextStageIM4MHash")) != 0 && (v45 = v44, v46 = CFGetTypeID(v44), v46 == CFDataGetTypeID()) && (v23 = AMAuthInstallApImg4AddDataProperty(v6, @"nsih", v45), v23) || (v47 = CFDictionaryGetValue(a2, @"Ap,RecoveryOSPolicyNonceHash")) != 0 && (v48 = v47, v49 = CFGetTypeID(v47), v49 == CFDataGetTypeID()) && (v23 = AMAuthInstallApImg4AddDataProperty(v6, @"ronh", v48), v23) || (v50 = CFDictionaryGetValue(a2, @"Ap,VolumeUUID")) != 0 && (v51 = v50, v52 = CFGetTypeID(v50), v52 == CFDataGetTypeID()) && (v23 = AMAuthInstallApImg4AddDataProperty(v6, @"vuid", v51), v23) || (v53 = CFDictionaryGetValue(a2, @"Ap,LocalBoot")) != 0 && (v54 = v53, v55 = CFGetTypeID(v53), v55 == CFBooleanGetTypeID()) && (v56 = CFBooleanGetValue(v54), v23 = AMAuthInstallApImg4AddBooleanProperty(v6, @"lobo", v56), v23))))
  {
    v67 = v23;
    v57 = 0;
LABEL_70:
    v61 = 0;
LABEL_81:
    v63 = 0;
    goto LABEL_82;
  }

  v57 = DEREncoderCreate(1);
  if (!v57)
  {
    v61 = 0;
    goto LABEL_76;
  }

  v58 = AMAuthInstallApImg4AddDictionaryProperty(v6, v57, @"MANP");
  if (v58)
  {
    v67 = v58;
    goto LABEL_70;
  }

  v59 = CFGetAllocator(a1);
  v60 = AMAuthInstallApImg4LocalAddImages(v59, a2, v57);
  if (v60)
  {
    v67 = v60;
    v61 = 0;
    AMAuthInstallLog(3, "AMAuthInstallApImg4LocalCreateManifestBody", "failed to add img objects to the manifest body");
    goto LABEL_81;
  }

  v61 = DEREncoderCreate(0);
  if (!v61)
  {
LABEL_76:
    v63 = 0;
    goto LABEL_77;
  }

  v62 = AMAuthInstallApImg4AddDictionaryProperty(v57, v61, @"MANB");
  if (v62)
  {
    v67 = v62;
    AMAuthInstallLog(3, "AMAuthInstallApImg4LocalCreateManifestBody", "failed to create the signed section");
    goto LABEL_81;
  }

  v63 = DEREncoderCreate(0);
  if (!v63)
  {
LABEL_77:
    v67 = 2;
    goto LABEL_82;
  }

  v64 = DEREncoderAddSetFromEncoder(v61, v63);
  if (v64)
  {
    v67 = v64;
LABEL_82:
    if (v19)
    {
      goto LABEL_68;
    }

    goto LABEL_88;
  }

  if (DEREncoderCreateEncodedBuffer(v63, &bytes, &length))
  {
LABEL_88:
    AMAuthInstallLog(3, "AMAuthInstallApImg4LocalCreateManifestBody", "%s DER operation failed", "AMAuthInstallApImg4LocalCreateManifestBody");
    goto LABEL_89;
  }

  v65 = CFGetAllocator(a1);
  v66 = CFDataCreate(v65, bytes, length);
  *a3 = v66;
  if (v66)
  {
    v67 = 0;
  }

  else
  {
    AMAuthInstallApImg4LocalCreateManifestBody_cold_2();
    v67 = 2;
  }

LABEL_68:
  SafeFree(bytes);
  DEREncoderDestroy(v6);
  DEREncoderDestroy(v57);
  DEREncoderDestroy(v61);
  DEREncoderDestroy(v63);
  SafeRelease(v8);
  return v67;
}

CFDataRef AMAuthInstallApImg4LocalCreateEncodedTag(const __CFString *a1)
{
  *length = 0;
  bytes = 0;
  if (!a1)
  {
    AMAuthInstallApImg4LocalCreateEncodedTag_cold_2();
    goto LABEL_9;
  }

  if (!CFStringGetCString(a1, &length[4], 256, 0x8000100u))
  {
    AMAuthInstallApImg4LocalCreateEncodedTag_cold_3();
LABEL_9:
    v2 = 0;
    goto LABEL_10;
  }

  v2 = DEREncoderCreate(0);
  if (!v2)
  {
LABEL_10:
    SafeRelease(0);
    v4 = 0;
    goto LABEL_7;
  }

  v3 = strlen(&length[4]);
  if (DEREncoderAddData(v2, 0, 22, &length[4], v3, 0))
  {
    AMAuthInstallLog(3, "AMAuthInstallApImg4LocalCreateEncodedTag", "failed to add %@ string", a1, bytes);
    goto LABEL_10;
  }

  if (DEREncoderCreateEncodedBuffer(v2, &bytes, length))
  {
    AMAuthInstallApImg4LocalCreateEncodedTag_cold_1();
    goto LABEL_10;
  }

  v4 = CFDataCreate(0, bytes, *length);
LABEL_7:
  SafeFree(bytes);
  DEREncoderDestroy(v2);
  return v4;
}

CFDataRef AMAuthInstallApImg4LocalCreateEncodedVersion(uint64_t a1)
{
  v1 = a1;
  LODWORD(length) = 0;
  bytes = 0;
  v2 = DEREncoderCreate(0);
  v3 = v2;
  if (!v2)
  {
    goto LABEL_8;
  }

  v4 = DEREncoderAddUInt32(v2, 0, 2u, v1);
  if (v4)
  {
    AMAuthInstallApImg4LocalCreateEncodedVersion_cold_1(v4);
LABEL_8:
    SafeRelease(0);
    v5 = 0;
    goto LABEL_5;
  }

  if (DEREncoderCreateEncodedBuffer(v3, &bytes, &length))
  {
    AMAuthInstallApImg4LocalCreateEncodedVersion_cold_2();
    goto LABEL_8;
  }

  v5 = CFDataCreate(0, bytes, length);
LABEL_5:
  SafeFree(bytes);
  DEREncoderDestroy(v3);
  return v5;
}

CFDataRef AMAuthInstallApImg4LocalCreateEncodedData(const __CFData *a1)
{
  LODWORD(length) = 0;
  bytes = 0;
  v2 = DEREncoderCreate(0);
  if (!v2)
  {
    goto LABEL_8;
  }

  BytePtr = CFDataGetBytePtr(a1);
  v4 = CFDataGetLength(a1);
  if (DEREncoderAddData(v2, 0, 4, BytePtr, v4, 0))
  {
    AMAuthInstallApImg4LocalCreateEncodedData_cold_1();
LABEL_8:
    SafeRelease(0);
    v5 = 0;
    goto LABEL_5;
  }

  if (DEREncoderCreateEncodedBuffer(v2, &bytes, &length))
  {
    AMAuthInstallApImg4LocalCreateEncodedData_cold_2();
    goto LABEL_8;
  }

  v5 = CFDataCreate(0, bytes, length);
LABEL_5:
  SafeFree(bytes);
  DEREncoderDestroy(v2);
  return v5;
}

uint64_t _AMAuthInstallApImg4LocalCreateSignedManifest(void *a1, const void *a2, const void *a3, const void *a4, const void *a5, CFDataRef *a6, int a7)
{
  LODWORD(length) = 0;
  v46 = 0;
  theData = 0;
  bytes = 0;
  v45 = 0;
  if (!a1 || !a2 || !a6)
  {
    v25 = 3;
    AMAuthInstallLog(3, "_AMAuthInstallApImg4LocalCreateSignedManifest", "%s failed to create DER file", "_AMAuthInstallApImg4LocalCreateSignedManifest");
    v29 = 0;
    v28 = 0;
    v21 = 0;
    v17 = 0;
    Mutable = 0;
    if (!a6)
    {
      goto LABEL_16;
    }

    goto LABEL_40;
  }

  v14 = CFGetAllocator(a1);
  Mutable = CFDataCreateMutable(v14, 0);
  if (!Mutable)
  {
    v17 = 0;
LABEL_48:
    v21 = 0;
    goto LABEL_37;
  }

  EncodedTag = AMAuthInstallApImg4LocalCreateEncodedTag(@"IM4M");
  v17 = EncodedTag;
  if (!EncodedTag)
  {
    _AMAuthInstallApImg4LocalCreateSignedManifest_cold_9();
    goto LABEL_48;
  }

  BytePtr = CFDataGetBytePtr(EncodedTag);
  v19 = CFDataGetLength(v17);
  CFDataAppendBytes(Mutable, BytePtr, v19);
  EncodedVersion = AMAuthInstallApImg4LocalCreateEncodedVersion(0);
  v21 = EncodedVersion;
  if (!EncodedVersion)
  {
    _AMAuthInstallApImg4LocalCreateSignedManifest_cold_8();
    goto LABEL_37;
  }

  cf = a5;
  v22 = CFDataGetBytePtr(EncodedVersion);
  v23 = CFDataGetLength(v21);
  CFDataAppendBytes(Mutable, v22, v23);
  if (a3)
  {
    v24 = CFRetain(a3);
    theData = v24;
    v25 = 99;
    if (v24)
    {
      goto LABEL_9;
    }

LABEL_19:
    _AMAuthInstallApImg4LocalCreateSignedManifest_cold_7();
    goto LABEL_37;
  }

  if (AMAuthInstallApImg4LocalCreateManifestBody(a1, a2, &theData))
  {
    _AMAuthInstallApImg4LocalCreateSignedManifest_cold_1();
    goto LABEL_37;
  }

  v25 = 0;
  v24 = theData;
  if (!theData)
  {
    goto LABEL_19;
  }

LABEL_9:
  v26 = CFDataGetBytePtr(v24);
  v27 = CFDataGetLength(theData);
  CFDataAppendBytes(Mutable, v26, v27);
  if (!a7)
  {
    if (!AMAuthInstallApImg4LocalRegisterKeys(a1))
    {
      if (a4)
      {
        v35 = CFRetain(a4);
        v46 = v35;
        if (v35)
        {
          EncodedData = AMAuthInstallApImg4LocalCreateEncodedData(v35);
          v28 = EncodedData;
          if (EncodedData)
          {
            v37 = CFDataGetBytePtr(EncodedData);
            v38 = CFDataGetLength(v28);
            CFDataAppendBytes(Mutable, v37, v38);
            if (cf)
            {
              v39 = CFRetain(cf);
              v45 = v39;
              if (v39)
              {
LABEL_26:
                v40 = CFDataGetBytePtr(v39);
                v41 = CFDataGetLength(v45);
                CFDataAppendBytes(Mutable, v40, v41);
                v25 = 0;
                goto LABEL_11;
              }
            }

            else
            {
              if (AMAuthInstallApImg4LocalCreateEncodedCertificateChain(a1, &v45))
              {
                _AMAuthInstallApImg4LocalCreateSignedManifest_cold_2();
                goto LABEL_38;
              }

              v39 = v45;
              if (v45)
              {
                goto LABEL_26;
              }
            }

            _AMAuthInstallApImg4LocalCreateSignedManifest_cold_4();
          }

          else
          {
            _AMAuthInstallApImg4LocalCreateSignedManifest_cold_5();
          }

LABEL_38:
          v29 = 0;
LABEL_39:
          AMAuthInstallLog(3, "_AMAuthInstallApImg4LocalCreateSignedManifest", "%s failed to create DER file", "_AMAuthInstallApImg4LocalCreateSignedManifest");
LABEL_40:
          SafeRelease(*a6);
          *a6 = 0;
          v25 = 3;
          goto LABEL_16;
        }

        goto LABEL_35;
      }

      v42 = *(a1[2] + 128);
      if (v42 != 384)
      {
        if (v42 == 256)
        {
          CFDataGetBytePtr(theData);
          CFDataGetLength(theData);
          if (AMAuthInstallCryptoCreateRsaSignature_SHA256())
          {
            goto LABEL_37;
          }
        }

        else
        {
          if (v42 != 1)
          {
            AMAuthInstallLog(3, "_AMAuthInstallApImg4LocalCreateSignedManifest", "Unsupported digest type: %d", *(a1[2] + 128));
            goto LABEL_37;
          }

          CFDataGetBytePtr(theData);
          CFDataGetLength(theData);
          if (AMAuthInstallCryptoCreateRsaSignature())
          {
            goto LABEL_37;
          }
        }

        goto LABEL_35;
      }

      CFDataGetBytePtr(theData);
      CFDataGetLength(theData);
      if (!AMAuthInstallCryptoCreateRsaSignature_SHA384())
      {
LABEL_35:
        _AMAuthInstallApImg4LocalCreateSignedManifest_cold_6();
      }
    }

LABEL_37:
    v28 = 0;
    goto LABEL_38;
  }

  v28 = 0;
LABEL_11:
  v29 = DEREncoderCreate(0);
  if (!v29)
  {
    goto LABEL_39;
  }

  v30 = CFDataGetBytePtr(Mutable);
  v31 = CFDataGetLength(Mutable);
  if (DEREncoderAddData(v29, 0, 16, v30, v31, 1) || DEREncoderCreateEncodedBuffer(v29, &bytes, &length))
  {
    goto LABEL_39;
  }

  v32 = CFGetAllocator(a1);
  v33 = CFDataCreate(v32, bytes, length);
  *a6 = v33;
  if (!v33)
  {
    _AMAuthInstallApImg4LocalCreateSignedManifest_cold_3();
    v25 = 2;
  }

LABEL_16:
  SafeRelease(Mutable);
  SafeRelease(v17);
  SafeRelease(v21);
  SafeRelease(theData);
  SafeRelease(v46);
  SafeRelease(v28);
  SafeRelease(v45);
  SafeFree(bytes);
  DEREncoderDestroy(v29);
  return v25;
}

uint64_t OUTLINED_FUNCTION_1_3(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return AMAuthInstallCryptoRegisterKeysFromPEMBuffer();
}

void _AMAuthInstallBasebandParametersFinalize(void *a1)
{
  if (a1)
  {
    SafeRelease(a1[2]);
    SafeRelease(a1[3]);
    SafeRelease(a1[4]);
    SafeRelease(a1[5]);
    SafeRelease(a1[8]);
    SafeRelease(a1[9]);
    SafeRelease(a1[13]);
    SafeRelease(a1[14]);
    SafeRelease(a1[15]);
    SafeRelease(a1[16]);
    SafeRelease(a1[17]);
    SafeRelease(a1[18]);
    SafeRelease(a1[19]);
    SafeRelease(a1[21]);

    free(a1);
  }
}

__CFString *AMAuthInstallBasebandCopyDescription(uint64_t a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 256);
  CFStringAppend(Mutable, @"(");
  if (*(a1 + 58))
  {
    v4 = "YES";
  }

  else
  {
    v4 = "NO";
  }

  CFStringAppendFormat(Mutable, 0, @"personalize=%s", v4);
  if (*(a1 + 48))
  {
    CFStringAppendFormat(Mutable, 0, @", ");
    if (*(*(a1 + 48) + 16))
    {
      v5 = CFGetAllocator(a1);
      v6 = _CopyHexStringFromData(v5, *(*(a1 + 48) + 16));
      if (v6)
      {
        v7 = v6;
        CFStringAppendFormat(Mutable, 0, @"snum=0x%@, ", v6);
        CFRelease(v7);
      }
    }

    CFStringAppendFormat(Mutable, 0, @"chipid=0x%x, certid=0x%x", *(*(a1 + 48) + 4), *(*(a1 + 48) + 8));
    if (*(*(a1 + 48) + 24))
    {
      v8 = CFGetAllocator(a1);
      v9 = _CopyHexStringFromData(v8, *(*(a1 + 48) + 24));
      if (v9)
      {
        v10 = v9;
        CFStringAppendFormat(Mutable, 0, @", nonce=0x%@", v9);
        CFRelease(v10);
      }
    }
  }

  CFStringAppend(Mutable, @""));
  return Mutable;
}

void AMAuthInstallBundleFinalize(uint64_t result)
{
  v1 = *(result + 128);
  if (v1)
  {
    SafeRelease(*v1);
    SafeRelease(*(*(result + 128) + 8));
    SafeRelease(*(*(result + 128) + 16));
    SafeRelease(*(*(result + 128) + 24));
    SafeRelease(*(*(result + 128) + 32));
    SafeRelease(*(*(result + 128) + 40));
    SafeFree(*(result + 128));
    *(result + 128) = 0;
  }
}

uint64_t AMAuthInstallHttpMessageSendSyncNew(CFAllocatorRef allocator, uint64_t a2, CFTypeRef *a3, _DWORD *a4, CFDictionaryRef theDict, double a6)
{
  valuePtr = a6;
  v18 = 0;
  cf = 0;
  v17 = -1;
  if (theDict)
  {
    Count = CFDictionaryGetCount(theDict);
    MutableCopy = CFDictionaryCreateMutableCopy(allocator, Count, theDict);
    if (CFDictionaryContainsKey(MutableCopy, @"SocksProxySettings"))
    {
      AMAuthInstallLog(7, "AMAuthInstallHttpMessageSendSyncNew", "Options dictionary contains proxy information. Will attempt to use a proxy.");
    }

    Mutable = CFDictionaryContainsKey(MutableCopy, @"TrustedServerCAs");
    if (Mutable)
    {
      AMAuthInstallLog(7, "AMAuthInstallHttpMessageSendSyncNew", "Options dictionary contains trusted server CAs. Will authenticate SSL against CAs.");
    }
  }

  else
  {
    Mutable = CFDictionaryCreateMutable(allocator, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    MutableCopy = Mutable;
  }

  if (!MutableCopy)
  {
    AMAuthInstallHttpMessageSendSyncNew_cold_3(Mutable);
    v14 = 0;
LABEL_18:
    v15 = 2;
    goto LABEL_15;
  }

  v14 = CFNumberCreate(allocator, kCFNumberDoubleType, &valuePtr);
  if (!v14)
  {
    AMAuthInstallHttpMessageSendSyncNew_cold_2();
    goto LABEL_18;
  }

  CFDictionarySetValue(MutableCopy, @"Timeout", v14);
  AMSupportHttpSendSync(a2, MutableCopy, &cf, 0, &v17);
  if (v18)
  {
    AMAuthInstallLog(3, "AMAuthInstallHttpMessageSendSyncNew", "HTTP request failed with error %@", v18);
LABEL_21:
    v15 = 16;
    goto LABEL_15;
  }

  if (!cf)
  {
    AMAuthInstallHttpMessageSendSyncNew_cold_1();
    goto LABEL_21;
  }

  if (a3)
  {
    *a3 = CFRetain(cf);
  }

  v15 = 0;
  if (a4)
  {
    *a4 = v17;
  }

LABEL_15:
  AMSupportSafeRelease(cf);
  AMSupportSafeRelease(MutableCopy);
  AMSupportSafeRelease(v14);
  return v15;
}

uint64_t AMAuthInstallLockCreate(uint64_t a1)
{
  pthread_once(&_AMAuthInstallLockClassInitializeOnce, _AMAuthInstallLockClassInitialize);
  result = _CFRuntimeCreateInstance();
  if (result)
  {
    *(result + 16) = 0;
  }

  return result;
}

uint64_t _AMAuthInstallLockClassInitialize()
{
  result = _CFRuntimeRegisterClass();
  _AMAuthInstallLockTypeID = result;
  return result;
}

void (*AMAuthInstallLogSetHandler(void (*result)(int a1, uint64_t a2)))(int a1, uint64_t a2)
{
  if (result)
  {
    v1 = result;
  }

  else
  {
    v1 = _DefaultLogHandler_0;
  }

  _logHandler_0 = v1;
  return result;
}

void _DefaultLogHandler_0(unsigned int a1, uint64_t a2)
{
  if (_DefaultLogHandler_once != -1)
  {
    _DefaultLogHandler_cold_1();
  }

  if (a1 <= 2)
  {
    if (os_log_type_enabled(_DefaultLogHandler_logHandle, OS_LOG_TYPE_FAULT))
    {
      _DefaultLogHandler_cold_5();
    }

    return;
  }

  if (a1 == 3)
  {
    if (os_log_type_enabled(_DefaultLogHandler_logHandle, OS_LOG_TYPE_ERROR))
    {
      _DefaultLogHandler_cold_4();
    }

    return;
  }

  if (a1 <= 5)
  {
    v4 = _DefaultLogHandler_logHandle;
    if (!os_log_type_enabled(_DefaultLogHandler_logHandle, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v9 = 136446210;
    v10 = a2;
    v5 = v4;
    v6 = OS_LOG_TYPE_DEFAULT;
LABEL_15:
    _os_log_impl(&_mh_execute_header, v5, v6, "%{public}s", &v9, 0xCu);
    return;
  }

  if (a1 == 6)
  {
    v7 = _DefaultLogHandler_logHandle;
    if (!os_log_type_enabled(_DefaultLogHandler_logHandle, OS_LOG_TYPE_INFO))
    {
      return;
    }

    v9 = 136446210;
    v10 = a2;
    v5 = v7;
    v6 = OS_LOG_TYPE_INFO;
    goto LABEL_15;
  }

  v8 = os_log_type_enabled(_DefaultLogHandler_logHandle, OS_LOG_TYPE_DEBUG);
  if (a1 > 7)
  {
    if (v8)
    {
      _DefaultLogHandler_cold_2();
    }
  }

  else if (v8)
  {
    _DefaultLogHandler_cold_3();
  }
}

void AMAuthInstallLog(uint64_t a1, uint64_t a2, const char *a3, ...)
{
  va_start(va, a3);
  v3 = __chkstk_darwin(a1, a2, a3);
  v6 = v5;
  v7 = v3;
  v8 = "";
  if (v4)
  {
    v8 = v4;
  }

  v9 = snprintf(__str, 0x1000uLL, "%s: ", v8);
  v10 = CFStringCreateWithCStringNoCopy(kCFAllocatorDefault, v6, 0x8000100u, kCFAllocatorNull);
  if (!v10)
  {
    v12 = 0;
    goto LABEL_9;
  }

  v11 = CFStringCreateWithFormatAndArguments(kCFAllocatorDefault, 0, v10, va);
  v12 = v11;
  if (!v11)
  {
LABEL_9:
    v20 = 0;
    v19 = 0;
    goto LABEL_14;
  }

  v13 = v9;
  v14 = 4096 - v9;
  Length = CFStringGetLength(v11);
  v16 = Length;
  if (4096 - v9 < Length && (v17 = malloc(v9 + Length + 1)) != 0)
  {
    v18 = v17;
    v14 = v16 + 1;
    memcpy(v17, __str, v9);
    v19 = v18;
  }

  else
  {
    v19 = 0;
    v18 = __str;
  }

  if (CFStringGetCString(v12, &v18[v13], v14, 0x8000100u))
  {
    v20 = v18;
  }

  else
  {
    v20 = 0;
  }

LABEL_14:
  if (v20)
  {
    v21 = v20;
  }

  else
  {
    v21 = "failed to format log message";
  }

  _logHandler_0(v7, v21);
  SafeRelease(v10);
  SafeRelease(v12);
  SafeFree(v19);
}

uint64_t AMAuthInstallDebugWriteObject(CFURLRef *cf, CFTypeRef a2, uint64_t a3, int a4)
{
  cfa = 0;
  if (!cf)
  {
    goto LABEL_19;
  }

  if ((cf[43] & a4) == 0)
  {
    v14 = 0;
LABEL_16:
    Data = 0;
    goto LABEL_20;
  }

  if (!cf[42])
  {
    v19 = CFGetAllocator(cf);
    v20 = AMAuthInstallSupportCopyURLToNewTempDirectory(v19, "amai-debug.XXXXXX", cf + 42);
    if (v20)
    {
      v14 = v20;
      AMAuthInstallLog(3, "AMAuthInstallDebugWriteObject", "failed to create debug output directory");
      goto LABEL_16;
    }
  }

  v7 = CFGetTypeID(a2);
  if (v7 == CFDataGetTypeID())
  {
    Data = CFRetain(a2);
    v9 = "";
    if (Data)
    {
      goto LABEL_6;
    }

LABEL_13:
    v14 = 0;
    goto LABEL_20;
  }

  v16 = CFGetTypeID(a2);
  if (v16 != CFDictionaryGetTypeID())
  {
    v17 = CFGetTypeID(a2);
    if (v17 != CFArrayGetTypeID())
    {
      AMAuthInstallLog(3, "AMAuthInstallDebugWriteObject", "can't prepare data for output to file");
      AMAuthInstallLog(8, "AMAuthInstallDebugWriteObject", "%@", a2);
LABEL_19:
      Data = 0;
      v14 = 1;
      goto LABEL_20;
    }
  }

  v18 = CFGetAllocator(cf);
  Data = CFPropertyListCreateData(v18, a2, kCFPropertyListXMLFormat_v1_0, 0, 0);
  v9 = ".plist";
  if (!Data)
  {
    goto LABEL_13;
  }

LABEL_6:
  v10 = CFGetAllocator(cf);
  v11 = CFStringCreateWithFormat(v10, 0, @"%@%s", a3, v9);
  if (v11)
  {
    v12 = v11;
    v13 = CFGetAllocator(cf);
    v14 = AMAuthInstallSupportCopyURLWithAppendedComponent(v13, cf[42], v12, 0, &cfa);
    CFRelease(v12);
    if (!v14)
    {
      v15 = CFGetAllocator(cf);
      v14 = AMAuthInstallSupportWriteDataToFileURL(v15, Data, cfa, 0);
      AMAuthInstallLog(8, "AMAuthInstallDebugWriteObject", "debug object written: %@", cfa);
    }
  }

  else
  {
    v14 = 2;
  }

LABEL_20:
  SafeRelease(Data);
  SafeRelease(cfa);
  return v14;
}

uint64_t AMAuthInstallPlatformRemoveFile(const __CFURL *a1)
{
  if (!CFURLGetFileSystemRepresentation(a1, 1u, buffer, 1024))
  {
    return 3;
  }

  result = remove(buffer, v2);
  if (result)
  {
    v4 = __error();
    v5 = strerror(*v4);
    AMAuthInstallLog(3, "AMAuthInstallPlatformRemoveFile", "failed to file: %s", v5);
    AMAuthInstallLog(7, "AMAuthInstallPlatformRemoveFile", "url=%@, path=%s", a1, buffer);
    return 4;
  }

  return result;
}

const __CFString *_AMAuthInstallPlatformConstantsInitialize()
{
  v1 = 32;
  result = sysctlbyname("kern.osversion", v3, &v1, 0, 0);
  if (!result)
  {
    v1 = 32;
    if (!sysctlbyname("hw.product", v2, &v1, 0, 0) || (result = sysctlbyname("hw.machine", v2, &v1, 0, 0), !result))
    {
      result = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"mac/%s/%s", v3, v2);
      if (result)
      {
        goto LABEL_5;
      }
    }
  }

  if (!_platformInfoStr)
  {
    result = @"???";
LABEL_5:
    _platformInfoStr = result;
  }

  return result;
}

void _ApplyTagPrefix(const __CFString *a1, const void *a2, CFMutableDictionaryRef *a3)
{
  MutableCopy = kCFAllocatorDefault;
  v7 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@,", *(*(*a3 + 2) + 160));
  v8 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"@%@", *(*a3 + 11));
  if (v8 && (MutableCopy = CFStringCreateMutableCopy(kCFAllocatorDefault, 0, a1)) != 0)
  {
    if (CFStringHasPrefix(a1, @"Ap,"))
    {
      v9 = MutableCopy;
      v10.location = 0;
      v10.length = 3;
LABEL_7:
      CFStringReplace(v9, v10, v7);
      v11 = a3[1];
      v12 = MutableCopy;
LABEL_8:
      CFDictionarySetValue(v11, v12, a2);
      CFDictionaryRemoveValue(a3[1], a1);
      goto LABEL_9;
    }

    if (CFStringHasPrefix(a1, @"Ap"))
    {
      v9 = MutableCopy;
      v10.location = 0;
      v10.length = 2;
      goto LABEL_7;
    }

    if (CFStringCompare(a1, @"@ApImg4Ticket", 0) == kCFCompareEqualTo)
    {
      v11 = a3[1];
      v12 = v8;
      goto LABEL_8;
    }
  }

  else
  {
    _ApplyTagPrefix_cold_1(0);
  }

LABEL_9:
  SafeRelease(v7);
  SafeRelease(v8);

  SafeRelease(MutableCopy);
}

void _ApplyOverrideTags(void *key, const void *a2, CFDictionaryRef theDict)
{
  if (CFDictionaryContainsKey(theDict, key))
  {
    Value = CFDictionaryGetValue(theDict, key);
    CFDictionarySetValue(theDict, a2, Value);

    CFDictionaryRemoveValue(theDict, key);
  }
}

void _CFDictionarySetInteger64Str(__CFDictionary *a1, const void *a2, uint64_t a3)
{
  v5 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%lld", a3);
  v6 = v5;
  if (a1 && a2 && v5)
  {
    CFDictionarySetValue(a1, a2, v5);
  }

  else if (!v5)
  {
    return;
  }

  CFRelease(v6);
}

void SafeRelease(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

CFTypeRef SafeRetain(CFTypeRef cf)
{
  if (cf)
  {
    return CFRetain(cf);
  }

  return cf;
}

void SafeFree(void *a1)
{
  if (a1)
  {
    free(a1);
  }
}

uint64_t AMAuthInstallSupportBase64Encode(const __CFAllocator *a1, CFDataRef theData, CFTypeRef *a3)
{
  if (!theData)
  {
    AMAuthInstallSupportBase64Encode_cold_2(a1);
    return 1;
  }

  Length = CFDataGetLength(theData);
  if (!Length)
  {
    AMAuthInstallLog(3, "AMAuthInstallSupportBase64Encode", "value length == 0: '%@'", theData);
    return 1;
  }

  if (!a3)
  {
    AMAuthInstallSupportBase64Encode_cold_1(Length);
    return 1;
  }

  BytePtr = CFDataGetBytePtr(theData);
  v8 = CFDataGetLength(theData);
  v9 = b64encode(BytePtr, v8);
  if (v9)
  {
    v10 = v9;
    v11 = strlen(v9);
    if (v11)
    {
      v12 = CFStringCreateWithBytes(a1, v10, v11, 0x8000100u, 0);
      if (v12)
      {
        v13 = v12;
        *a3 = CFRetain(v12);
        free(v10);
        CFRelease(v13);
        return 0;
      }

      AMAuthInstallLog(3, "AMAuthInstallSupportBase64Encode", "encodedValue == NULL: '%@'", theData);
    }

    else
    {
      AMAuthInstallLog(3, "AMAuthInstallSupportBase64Encode", "encodedLength == 0: '%@'", theData);
    }

    free(v10);
  }

  else
  {
    AMAuthInstallLog(3, "AMAuthInstallSupportBase64Encode", "encodedBuffer == NULL: '%@'", theData);
  }

  return 99;
}

uint64_t DERDecoderInitialize(uint64_t a1, unsigned __int8 *a2, unsigned int *a3, uint64_t a4)
{
  if (!a1)
  {
    DERDecoderInitialize_cold_3();
  }

  if (!a2)
  {
    DERDecoderInitialize_cold_2();
  }

  if (!a3)
  {
    DERDecoderInitialize_cold_1();
  }

  v6 = a4;
  v8 = *a3;
  if (*a3)
  {
LABEL_5:
    if (v8 > v6)
    {
      return 2;
    }

    result = 0;
    *a3 = v8;
    *a1 = a2;
    *(a1 + 8) = v8;
    return result;
  }

  v12 = 0;
  v13 = 0;
  v11 = 0;
  result = _DERDecodeTag(a2, a4, &v13, &v12 + 1, &v12, &v11);
  if (!result)
  {
    v10 = v11;
    result = _DERDecodeLength(&a2[v11], v6 - v11, &v13 + 1, &v11);
    if (!result)
    {
      v8 = v10 + v11 + HIDWORD(v13);
      if (__CFADD__(v10 + v11, HIDWORD(v13)))
      {
        return 6;
      }

      goto LABEL_5;
    }
  }

  return result;
}

uint64_t _DERDecodeTag(unsigned __int8 *a1, int a2, unsigned int *a3, int *a4, int *a5, _DWORD *a6)
{
  if (!a1)
  {
    _DERDecodeTag_cold_5();
  }

  if (!a3)
  {
    _DERDecodeTag_cold_4();
  }

  if (!a4)
  {
    _DERDecodeTag_cold_3();
  }

  if (!a5)
  {
    _DERDecodeTag_cold_2();
  }

  if (!a6)
  {
    _DERDecodeTag_cold_1();
  }

  if (!a2)
  {
    return 3;
  }

  v6 = *a1;
  *a3 = v6 >> 6;
  v7 = *a1;
  if ((~v6 & 0x1F) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
    *a5 = (v7 >> 5) & 1;
    v11 = a2 - 1;
    v12 = a1 + 1;
    while (v11)
    {
      v13 = *v12;
      v14 = *v12 & 0x7F | (v8 << 7);
      v10 |= v14 != 0;
      if (v10)
      {
        v9 += 7;
        if (v9 > 0x20)
        {
          return 6;
        }
      }

      --v11;
      ++v12;
      v8 = v14;
      if ((v13 & 0x80000000) == 0)
      {
        *a4 = v14;
        goto LABEL_16;
      }
    }

    return 3;
  }

  *a4 = v7 & 0x1F;
  *a5 = (*a1 >> 5) & 1;
  v11 = a2 - 1;
LABEL_16:
  result = 0;
  *a6 = a2 - v11;
  return result;
}

uint64_t _DERDecodeLength(char *a1, int a2, int *a3, _DWORD *a4)
{
  if (!a1)
  {
    _DERDecodeLength_cold_3();
  }

  if (!a3)
  {
    _DERDecodeLength_cold_2();
  }

  if (!a4)
  {
    _DERDecodeLength_cold_1();
  }

  if (!a2)
  {
    return 4;
  }

  v4 = *a1;
  v5 = a2 - 1;
  if ((*a1 & 0x80000000) == 0)
  {
LABEL_6:
    result = 0;
    *a3 = v4;
    *a4 = a2 - v5;
    return result;
  }

  v7 = v4 & 0x7F;
  v8 = v5 >= v7;
  v5 -= v7;
  if (!v8)
  {
    return 4;
  }

  if ((v4 & 0x7F) == 0)
  {
    v4 = 0;
    goto LABEL_6;
  }

  v9 = 0;
  v10 = 0;
  v4 = 0;
  v11 = (a1 + 1);
  while (1)
  {
    v12 = *v11++;
    v4 = v12 | (v4 << 8);
    v9 |= v4 != 0;
    if (v9)
    {
      v10 += 8;
      if (v10 > 0x20)
      {
        return 6;
      }
    }

    if (!--v7)
    {
      goto LABEL_6;
    }
  }
}

uint64_t DERDecoderGetDataWithTag(uint64_t a1, unsigned int a2, unsigned int a3, int a4, void *a5, _DWORD *a6, int *a7)
{
  if (!a1)
  {
    DERDecoderGetDataWithTag_cold_2();
  }

  v13 = 0u;
  v14 = 0u;
  v12 = 0u;
  *(&v13 + 4) = __PAIR64__(a3, a2);
  HIDWORD(v14) = a4;
  if (a7)
  {
    v10 = *a7;
  }

  else
  {
    v10 = 0;
  }

  DWORD1(v12) = v10;
  result = _DERDecoderTraverseAllItems(a1, _DERDecoderGetDataWithTagCallback, &v12);
  if (!result)
  {
    if (!v14)
    {
      DERDecoderGetDataWithTag_cold_1();
    }

    if (a5)
    {
      *a5 = v14;
    }

    if (a6)
    {
      *a6 = DWORD2(v14);
    }

    if (a7)
    {
      *a7 = v12;
    }
  }

  return result;
}

uint64_t _DERDecoderTraverseAllItems(uint64_t a1, uint64_t (*a2)(unsigned __int8 **, uint64_t), uint64_t a3)
{
  if (!a1)
  {
    _DERDecoderTraverseAllItems_cold_3();
  }

  v3 = *(a1 + 8);
  if (!v3)
  {
    return 1;
  }

  v6 = *a1;
  while (1)
  {
    v12 = 0;
    v14 = 0u;
    v15 = 0u;
    v13 = v6;
    result = _DERDecodeTag(v6, v3, &v14 + 1, &v14 + 2, &v15 + 3, &v12);
    if (result)
    {
      break;
    }

    if (!v12)
    {
      _DERDecoderTraverseAllItems_cold_2();
    }

    v8 = v3 - v12;
    v9 = &v6[v12];
    result = _DERDecodeLength(v9, v8, &v15 + 2, &v12);
    if (result)
    {
      break;
    }

    if (!v12)
    {
      _DERDecoderTraverseAllItems_cold_1();
    }

    v10 = v8 - v12;
    if (v10 < DWORD2(v15))
    {
      return 2;
    }

    v11 = &v9[v12];
    *&v15 = v11;
    LODWORD(v14) = DWORD2(v15) + v11 - v13;
    result = a2(&v13, a3);
    if (result != 1)
    {
      return result;
    }

    v6 = &v11[DWORD2(v15)];
    v3 = v10 - DWORD2(v15);
    if (v10 == DWORD2(v15))
    {
      return 1;
    }
  }

  return result;
}

uint64_t _DERDecoderGetDataWithTagCallback(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 12) == *(a2 + 20) && *(a1 + 16) == *(a2 + 24) && *(a1 + 36) == *(a2 + 44) && *a2 >= *(a2 + 4))
  {
    v2 = 0;
    *(a2 + 32) = *(a1 + 24);
    *(a2 + 40) = *(a1 + 32);
    *(a2 + 8) = *a1;
    *(a2 + 16) = *(a1 + 8);
  }

  else
  {
    ++*a2;
    return 1;
  }

  return v2;
}

uint64_t DERDecoderGetEncodingWithTag(uint64_t a1, unsigned int a2, unsigned int a3, int a4, void *a5, _DWORD *a6, int *a7)
{
  if (!a1)
  {
    DERDecoderGetEncodingWithTag_cold_2();
  }

  v13 = 0u;
  v14 = 0u;
  v12 = 0u;
  *(&v13 + 4) = __PAIR64__(a3, a2);
  HIDWORD(v14) = a4;
  if (a7)
  {
    v10 = *a7;
  }

  else
  {
    v10 = 0;
  }

  DWORD1(v12) = v10;
  result = _DERDecoderTraverseAllItems(a1, _DERDecoderGetDataWithTagCallback, &v12);
  if (!result)
  {
    if (!*(&v12 + 1))
    {
      DERDecoderGetEncodingWithTag_cold_1();
    }

    if (a5)
    {
      *a5 = *(&v12 + 1);
    }

    if (a6)
    {
      *a6 = v13;
    }

    if (a7)
    {
      *a7 = v12;
    }
  }

  return result;
}

unint64_t b64_ntop(unsigned __int8 *a1, unint64_t a2, _BYTE *a3, unint64_t a4)
{
  *a3 = 0;
  if (a2 >= 3)
  {
    v5 = 0;
    while (1)
    {
      result = v5 + 4;
      if (v5 + 4 > a4)
      {
        goto LABEL_16;
      }

      v7 = a1[2];
      v8 = a1[1];
      v9 = *a1;
      a1 += 3;
      a2 -= 3;
      v10 = &a3[v5];
      *v10 = Base64[v9 >> 2];
      v10[1] = Base64[(v8 >> 4) & 0xFFFFFFFFFFFFFFCFLL | (16 * (v9 & 3))];
      v10[2] = Base64[(v7 >> 6) & 0xFFFFFFFFFFFFFFC3 | (4 * (v8 & 0xF))];
      v10[3] = Base64[v7 & 0x3F];
      v5 = result;
      if (a2 <= 2)
      {
        if (a2)
        {
          goto LABEL_8;
        }

        goto LABEL_14;
      }
    }
  }

  result = 0;
  if (a2)
  {
LABEL_8:
    v11 = 0;
    v18 = 0;
    v17 = 0;
    do
    {
      *(&v17 + v11) = a1[v11];
      ++v11;
    }

    while (a2 > v11);
    if (result + 4 > a4)
    {
      goto LABEL_16;
    }

    v12 = HIBYTE(v17);
    v13 = (HIBYTE(v17) >> 4) & 0xFFFFFFFFFFFFFFCFLL | (16 * (v17 & 3));
    v14 = &a3[result];
    *v14 = Base64[v17 >> 2];
    v15 = v18;
    v14[1] = Base64[v13];
    v16 = 61;
    if (a2 != 1)
    {
      v16 = Base64[(v15 >> 6) & 0xFFFFFFFFFFFFFFC3 | (4 * (v12 & 0xF))];
    }

    a3[result | 2] = v16;
    v14[3] = 61;
    result += 4;
  }

LABEL_14:
  if (result < a4)
  {
    a3[result] = 0;
    return result;
  }

LABEL_16:
  a3[a4 - 1] = 0;
  *a3 = 0;
  return 0xFFFFFFFFLL;
}

_BYTE *b64encode(unsigned __int8 *a1, int a2)
{
  v2 = 0;
  if (a1 && a2 >= 1)
  {
    v5 = a2 / 3u;
    if (a2 != 3 * (a2 / 3u))
    {
      ++v5;
    }

    v6 = (4 * v5) | 1;
    v2 = malloc(v6);
    if (v2)
    {
      b64_ntop(a1, a2, v2, v6);
    }
  }

  return v2;
}

const __CFString *tss_lookup_error(int a1)
{
  v1 = off_1000B4810;
  if (off_1000B4810)
  {
    if (tss_err_map == a1)
    {
      return CFStringCreateWithCString(kCFAllocatorDefault, v1, 0x8000100u);
    }

    for (i = &off_1000B4820; ; i += 2)
    {
      v1 = *i;
      if (!*i)
      {
        break;
      }

      v3 = *(i - 2);
      if (v3 == a1)
      {
        return CFStringCreateWithCString(kCFAllocatorDefault, v1, 0x8000100u);
      }
    }
  }

  return @"Unknown";
}

void *tss_create_session(const void *a1, const void *a2)
{
  v4 = malloc(0x60uLL);
  v5 = v4;
  if (!v4)
  {
    goto LABEL_7;
  }

  v4[4] = 0u;
  v4[5] = 0u;
  v4[2] = 0u;
  v4[3] = 0u;
  *v4 = 0u;
  v4[1] = 0u;
  if (!a2)
  {
    AMAuthInstallLog(3, "tss_create_session", "signingServerURL is NULL");
    goto LABEL_10;
  }

  v6 = CFGetTypeID(a2);
  if (v6 != CFURLGetTypeID())
  {
    AMAuthInstallLog(3, "tss_create_session", "signingServerURL is malformed");
    goto LABEL_10;
  }

  v5[1] = CFRetain(a2);
  *(v5 + 10) = 256;
  if (a1)
  {
    CFRetain(a1);
  }

  *v5 = a1;
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v5[3] = Mutable;
  if (!Mutable)
  {
LABEL_7:
    AMAuthInstallLog(3, "tss_create_session", "out of memory");
LABEL_10:
    free(v5);
    return 0;
  }

  return v5;
}

uint64_t tss_close_session(void *a1)
{
  v2 = tss_reset_session(a1);
  if (!v2)
  {
    free(a1);
  }

  return v2;
}

uint64_t tss_reset_session(uint64_t a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      CFRelease(v2);
    }

    v3 = *(a1 + 24);
    if (v3)
    {
      CFRelease(v3);
    }

    v4 = *(a1 + 40);
    if (v4)
    {
      CFRelease(v4);
    }

    v5 = *(a1 + 8);
    if (v5)
    {
      CFRelease(v5);
    }

    v6 = *(a1 + 32);
    if (v6)
    {
      CFRelease(v6);
    }

    v7 = *(a1 + 72);
    if (v7)
    {
      CFRelease(v7);
      *(a1 + 72) = 0;
    }

    v8 = *(a1 + 56);
    if (v8)
    {
      free(v8);
    }

    result = 0;
    *(a1 + 64) = 0u;
    *(a1 + 80) = 0u;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  else
  {
    AMAuthInstallLog(3, "tss_reset_session", "NULL session");
    return 10009;
  }

  return result;
}

uint64_t tss_submit(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    AMAuthInstallLog(3, "tss_submit", "NULL session");
    return 10009;
  }

  if (!*(a1 + 24))
  {
    AMAuthInstallLog(3, "tss_submit", "NULL request in session");
    v5 = 10008;
    v6 = a1;
    v7 = 10008;
LABEL_10:
    tss_set_last_error(v6, v7);
    return v5;
  }

  if (!*(a1 + 48))
  {
    tss_submit_job_with_retry(a1, a2, a3);
    return *(a1 + 64);
  }

  v4 = malloc(8uLL);
  *(a1 + 56) = v4;
  if (!v4)
  {
    AMAuthInstallLog(3, "tss_submit_non_block", "out of memory");
    v5 = 10006;
    v6 = a1;
    v7 = 10006;
    goto LABEL_10;
  }

  pthread_create(v4, 0, tss_submit_job_with_retry, a1);
  return 0;
}

const __CFString *tss_set_last_error(const __CFString *result, int a2)
{
  if (result)
  {
    v3 = result;
    LODWORD(result[2].isa) = a2;
    info = result[2].info;
    if (info)
    {
      CFRelease(info);
    }

    result = tss_lookup_error(a2);
    v3[2].info = result;
  }

  return result;
}

uint64_t tss_submit_job_with_retry(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = __chkstk_darwin(a1, a2, a3);
  v4 = v3;
  if (v3)
  {
    if (*(v3 + 16) <= 1u)
    {
      v5 = 1;
    }

    else
    {
      v5 = *(v3 + 16);
    }
  }

  else
  {
    v5 = 1;
  }

  v6 = 0;
  v7 = kCFAllocatorDefault;
  key = _kCFSystemVersionBuildVersionKey;
  do
  {
    AMAuthInstallLog(6, "tss_submit_job_with_retry", "TSS Connection attempt %d of %d.  (Will retry if TSS_ERR_SERVER_NOT_REACHABLE.)", ++v6, v5);
    error = 0;
    bzero(v87, 0x19000uLL);
    if (!*(v4 + 8))
    {
      AMAuthInstallLog(3, "tss_submit_job", "no server URL");
      v23 = 10008;
LABEL_25:
      tss_set_last_error(v4, v23);
      v24 = 0;
      v13 = 0;
      v25 = 0;
      v18 = 0;
      Request = 0;
      v11 = 0;
      *(v4 + 64) = v23;
      goto LABEL_35;
    }

    v8 = CFPropertyListCreateData(v7, *(v4 + 24), kCFPropertyListXMLFormat_v1_0, 0, &error);
    if (!v8)
    {
      AMAuthInstallLog(3, "tss_submit_job", "CFPropertyListCreateXMLData failed %@", error);
      v23 = 10036;
      goto LABEL_25;
    }

    v9 = v8;
    Length = CFDataGetLength(v8);
    v11 = CFURLCreateWithString(v7, @"TSS/controller?action=2", *(v4 + 8));
    if (!v11)
    {
      AMAuthInstallLog(3, "tss_submit_job", "CFURLCreateCopyAppendingPathComponent() failed");
      v26 = 10041;
      tss_set_last_error(v4, 10041);
      v24 = 0;
      v13 = 0;
      v18 = 0;
      Request = 0;
LABEL_34:
      *(v4 + 64) = v26;
      CFRelease(v9);
      v25 = 0;
      goto LABEL_35;
    }

    Request = CFHTTPMessageCreateRequest(v7, @"POST", v11, kCFHTTPVersion1_1);
    if (!Request)
    {
      AMAuthInstallLog(3, "tss_submit_job", "CFHTTPMessageCreateRequest failed");
      v26 = 10041;
      tss_set_last_error(v4, 10041);
      v24 = 0;
      v13 = 0;
      v18 = 0;
      goto LABEL_34;
    }

    v13 = CFStringCreateWithFormat(v7, 0, @"%d", Length);
    CFHTTPMessageSetHeaderFieldValue(Request, @"Proxy-Connection", @"Keep-Alive");
    CFHTTPMessageSetHeaderFieldValue(Request, @"Pragma", @"no-cache");
    CFHTTPMessageSetHeaderFieldValue(Request, @"Content-Type", @"text/xml; charset=utf-8");
    CFHTTPMessageSetHeaderFieldValue(Request, @"Content-Length", v13);
    v14 = _CFCopySystemVersionDictionary();
    if (v14)
    {
      v15 = v14;
      Value = CFDictionaryGetValue(v14, key);
      CFHTTPMessageSetHeaderFieldValue(Request, @"X-OS-Version", Value);
      CFRelease(v15);
    }

    if (*(v4 + 32))
    {
      AMAuthInstallLog(7, "tss_submit_job", "Attempting to add additional entries to HTTP header");
      CFDictionaryApplyFunction(*(v4 + 32), _AMAuthInstallUpdateHTTPHeaderWithEntry, Request);
      AMAuthInstallLog(7, "tss_submit_job", "Done adding additional fields to HTTP header");
    }

    CFHTTPMessageSetBody(Request, v9);
    Mutable = CFDictionaryCreateMutable(v7, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    v18 = Mutable;
    v19 = *(v4 + 80);
    if (v19)
    {
      CFDictionaryAddValue(Mutable, @"SocksProxySettings", v19);
      AMAuthInstallLog(7, "tss_submit_job", "Found a SOCKS proxy setting. Will attempt to use it.");
    }

    v20 = *(v4 + 88);
    if (v20)
    {
      CFDictionaryAddValue(v18, @"TrustedServerCAs", v20);
      AMAuthInstallLog(7, "tss_submit_job", "Found a trusted server CA. Will attempt to use it.");
    }

    theData[0] = 0;
    v21 = CFURLCopyScheme(*(v4 + 8));
    if (!v21)
    {
      AMAuthInstallLog(3, "tss_submit_job", "Invalid scheme in url");
      goto LABEL_31;
    }

    v22 = v21;
    *__s = 10000;
    if (CFStringCompare(v21, @"https", 1uLL) && CFStringCompare(v22, @"http", 1uLL))
    {
      CFRelease(v22);
      AMAuthInstallLog(3, "tss_submit_job", "unsupported URL scheme");
LABEL_31:
      v26 = 10008;
      v27 = v4;
      v28 = 10008;
      goto LABEL_32;
    }

    CFRelease(v22);
    if (AMAuthInstallHttpMessageSendSyncNew(v7, Request, theData, __s, v18, 300.0))
    {
      AMAuthInstallLog(3, "tss_submit_job", "failed to send http request");
      v26 = 10002;
      v27 = v4;
      v28 = 10002;
LABEL_32:
      tss_set_last_error(v27, v28);
LABEL_33:
      v24 = @"Content-Length";
      goto LABEL_34;
    }

    v26 = *__s;
    if (*__s != 200)
    {
      AMAuthInstallLog(3, "tss_submit_job", "SendHttpRequest failed %d", *__s);
      if (*__s == -1)
      {
        v26 = 10002;
      }

      v30 = v4;
      v31 = v26;
      goto LABEL_61;
    }

    if (CFDataGetLength(theData[0]) > 0x19000)
    {
      AMAuthInstallLog(3, "tss_submit_job", "Response too large");
      v26 = 10052;
      v30 = v4;
      v31 = 10052;
LABEL_61:
      tss_set_last_error(v30, v31);
      CFRelease(theData[0]);
      goto LABEL_33;
    }

    CFDataGetBytePtr(theData[0]);
    CFDataGetLength(theData[0]);
    __memcpy_chk();
    v32 = CFDataGetLength(theData[0]);
    CFRelease(theData[0]);
    v33 = v32;
    *v85 = 0;
    *__s = 0u;
    v70 = 0u;
    v71 = 0u;
    v72 = 0u;
    v73 = 0u;
    v74 = 0u;
    v75 = 0u;
    v76 = 0u;
    v77 = 0u;
    v78 = 0u;
    v79 = 0u;
    v80 = 0u;
    v81 = 0u;
    v82 = 0u;
    v83 = 0u;
    v84 = 0u;
    v57 = v32;
    if (v32 < 1)
    {
      v37 = 0;
      v62 = 0;
      cfb = 0;
      goto LABEL_108;
    }

    v34 = 0;
    v35 = 0;
    v36 = 0;
    v37 = 0;
    v38 = v87;
    do
    {
      if (v36)
      {
        if (v35)
        {
          goto LABEL_66;
        }
      }

      else if (v37 + 7 >= v33)
      {
        v36 = 0;
        if (v35)
        {
          goto LABEL_66;
        }
      }

      else
      {
        v61 = v35;
        cf = v34;
        if (!strncmp(v38, "STATUS", 6uLL))
        {
          v39 = 0;
          v36 = v38 + 7;
          v34 = cf;
          do
          {
            v40 = v38[v39 + 7];
            if (v40 == 38)
            {
              break;
            }

            v85[v39++] = v40;
          }

          while (v39 != 8);
          v85[7] = 0;
          v33 = v57;
        }

        else
        {
          v36 = 0;
          v33 = v57;
          v34 = cf;
        }

        v35 = v61;
        if (v61)
        {
LABEL_66:
          if (v34)
          {
            goto LABEL_98;
          }

          goto LABEL_67;
        }
      }

      if (v37 + 8 >= v33)
      {
        v35 = 0;
        if (v34)
        {
          goto LABEL_98;
        }
      }

      else
      {
        v59 = v36;
        cfa = v34;
        if (!strncmp(v38, "MESSAGE", 7uLL))
        {
          v41 = 0;
          v35 = v38 + 8;
          v34 = cfa;
          v36 = v59;
          do
          {
            v42 = v38[v41 + 8];
            if (v42 == 10)
            {
              break;
            }

            if (v42 == 38)
            {
              break;
            }

            __s[v41++] = v42;
          }

          while (v41 != 256);
          HIBYTE(v84) = 0;
          v33 = v57;
          if (cfa)
          {
            goto LABEL_98;
          }
        }

        else
        {
          v35 = 0;
          v33 = v57;
          v36 = v59;
          v34 = cfa;
          if (cfa)
          {
            goto LABEL_98;
          }
        }
      }

LABEL_67:
      if (v37 + 15 >= v33)
      {
        v34 = 0;
        goto LABEL_98;
      }

      v58 = v36;
      v60 = v35;
      if (strncmp(v38, "REQUEST_STRING", 0xEuLL))
      {
        v34 = 0;
        v33 = v57;
        v36 = v58;
LABEL_97:
        v35 = v60;
        goto LABEL_98;
      }

      v34 = v38 + 15;
      v36 = v58;
      if (!v58)
      {
        v33 = v57;
        goto LABEL_97;
      }

      v33 = v57;
      v35 = v60;
      if (v60)
      {
        goto LABEL_100;
      }

LABEL_98:
      ++v38;
      ++v37;
    }

    while (v37 != v33);
    v37 = v33;
LABEL_100:
    cfb = v34;
    if (v36)
    {
      v43 = v35 == 0;
    }

    else
    {
      v43 = 1;
    }

    v44 = !v43;
    v62 = v44;
LABEL_108:
    AMAuthInstallLog(8, "tss_submit_job", "----Begin request");
    AMAuthInstallLog(8, "tss_submit_job", "%@", *(v4 + 24));
    AMAuthInstallLog(8, "tss_submit_job", "----End request");
    AMAuthInstallLog(8, "tss_submit_job", "----Begin response");
    AMAuthInstallLog(8, "tss_submit_job", "%s", v87);
    AMAuthInstallLog(8, "tss_submit_job", "----End response");
    if ((v62 & 1) == 0)
    {
      AMAuthInstallLog(3, "tss_submit_job", "invalid response");
      v46 = 10052;
      v50 = v4;
      v51 = 10052;
      goto LABEL_115;
    }

    v45 = atoi(v85);
    if (!v45)
    {
      if (cfb)
      {
        __memcpy_chk();
        v52 = CFDataCreate(kCFAllocatorDefault, theData, v57 - v37 - 15);
        if (v52)
        {
          v53 = v52;
          if (error)
          {
            CFRelease(error);
          }

          cfc = v53;
          v25 = CFPropertyListCreateWithData(kCFAllocatorDefault, v53, 0, 0, &error);
          if (v25)
          {
            Copy = CFDictionaryCreateCopy(kCFAllocatorDefault, v25);
            *(v4 + 40) = Copy;
            if (Copy)
            {
              v55 = 0;
LABEL_130:
              *(v4 + 64) = v55;
              CFRelease(v9);
              CFRelease(cfc);
              goto LABEL_117;
            }

            AMAuthInstallLog(3, "tss_submit_job", "CFDictionaryCreateCopy failed");
            v55 = 10056;
          }

          else
          {
            AMAuthInstallLog(3, "tss_submit_job", "CFPropertyListCreateFromXMLData failed (%@)", error);
            v55 = 10055;
          }

          tss_set_last_error(v4, v55);
          goto LABEL_130;
        }

        AMAuthInstallLog(3, "tss_submit_job", "CFDataCreate failed");
        v46 = 10054;
        v50 = v4;
        v51 = 10054;
      }

      else
      {
        AMAuthInstallLog(3, "tss_submit_job", "no data in response");
        v46 = 10053;
        v50 = v4;
        v51 = 10053;
      }

LABEL_115:
      tss_set_last_error(v50, v51);
      goto LABEL_116;
    }

    v46 = v45;
    AMAuthInstallLog(3, "tss_submit_job", "error from server=%d (%s)", v45, __s);
    v47 = *(v4 + 72);
    if (v47)
    {
      CFRelease(v47);
    }

    v48 = strlen(__s);
    v49 = CFStringCreateWithBytes(kCFAllocatorDefault, __s, v48, 0x8000100u, 0);
    *(v4 + 72) = v49;
    if (!v49)
    {
      AMAuthInstallLog(3, "tss_submit_job", "Server message failed to convert: %d", v46);
    }

LABEL_116:
    *(v4 + 64) = v46;
    CFRelease(v9);
    v25 = 0;
LABEL_117:
    v24 = @"Content-Length";
LABEL_35:
    if (error)
    {
      CFRelease(error);
    }

    if (v11)
    {
      CFRelease(v11);
    }

    if (Request)
    {
      CFRelease(Request);
    }

    if (v24)
    {
      CFRelease(v24);
    }

    if (v13)
    {
      CFRelease(v13);
    }

    v7 = kCFAllocatorDefault;
    if (v25)
    {
      CFRelease(v25);
    }

    if (v18)
    {
      CFRelease(v18);
    }

    v29 = *(v4 + 48);
    if (v29)
    {
      v29(v4);
    }
  }

  while (v4 && v6 < v5 && *(v4 + 64) == 10002);
  return 0;
}