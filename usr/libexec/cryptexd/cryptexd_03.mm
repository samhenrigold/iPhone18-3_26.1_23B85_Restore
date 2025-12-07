CFErrorRef _quire_parse_watchdog_service_descriptions(uint64_t a1, uint64_t (*a2)(CFTypeRef))
{
  v46 = 0;
  v47 = 0;
  memset(v45, 0, sizeof(v45));
  cf = 0;
  if (!watchdog_available(&v47) || (info_asset = cryptex_core_get_info_asset()) == 0)
  {
    v13 = 0;
    goto LABEL_12;
  }

  file = _read_file(*(info_asset + 16), v45);
  if (file)
  {
    v7 = file;
    v8 = file;
    v9 = *(a1 + 72);
    if (v9)
    {
      if (os_log_type_enabled(*(a1 + 72), OS_LOG_TYPE_ERROR))
      {
        v10 = 3;
      }

      else
      {
        v10 = 2;
      }

      v11 = *(a1 + 56);
      if (!v11)
      {
        v11 = "[anonymous]";
      }

      v48 = 136446466;
      v49 = v11;
      v50 = 1024;
      v51 = v7;
      v12 = _os_log_send_and_compose_impl(v10, 0, 0, 0, &_mh_execute_header, v9, 16, "%{public}s: Failed to read Info.plist %{darwin.errno}d", COERCE_DOUBLE(136446466), &v48, 18);
    }

    else
    {
      v20 = *(a1 + 56);
      if (!v20)
      {
        v20 = "[anonymous]";
      }

      v48 = 136446466;
      v49 = v20;
      v50 = 1024;
      v51 = file;
      v12 = _os_log_send_and_compose_impl(2, 0, 0, 0, &_mh_execute_header, &_os_log_default, 16, "%{public}s: Failed to read Info.plist %{darwin.errno}d", COERCE_DOUBLE(136446466), &v48, 18);
    }

    v21 = v12;
    Error = createError("_quire_parse_watchdog_service_descriptions", "quire.c", 1244, "com.apple.security.cryptex.posix", v8, 0, v12);
    free(v21);
    v13 = 0;
LABEL_30:
    v14 = 0;
    v47 = Error;
    goto LABEL_31;
  }

  v15 = xpc_create_from_plist();
  v13 = v15;
  if (!v15 || xpc_get_type(v15) != &_xpc_type_dictionary)
  {
    v16 = *(a1 + 72);
    if (v16)
    {
      if (os_log_type_enabled(*(a1 + 72), OS_LOG_TYPE_ERROR))
      {
        v17 = 3;
      }

      else
      {
        v17 = 2;
      }

      v18 = *(a1 + 56);
      if (!v18)
      {
        v18 = "[anonymous]";
      }

      v48 = 136446210;
      v49 = v18;
      v19 = _os_log_send_and_compose_impl(v17, 0, 0, 0, &_mh_execute_header, v16, 16, "%{public}s: Invalid Info.plist", COERCE_DOUBLE(136446210), &v48, 12);
    }

    else
    {
      v23 = *(a1 + 56);
      if (!v23)
      {
        v23 = "[anonymous]";
      }

      v48 = 136446210;
      v49 = v23;
      v19 = _os_log_send_and_compose_impl(2, 0, 0, 0, &_mh_execute_header, &_os_log_default, 16, "%{public}s: Invalid Info.plist", COERCE_DOUBLE(136446210), &v48, 12);
    }

    v24 = v19;
    Error = createError("_quire_parse_watchdog_service_descriptions", "quire.c", 1250, "com.apple.security.cryptex", 11, 0, v19);
    free(v24);
    goto LABEL_30;
  }

  v27 = watchdog_create_service_descriptions(v13, &cf);
  if (v27)
  {
    v14 = v27;
    v28 = *(a1 + 72);
    if (v28)
    {
      if (os_log_type_enabled(*(a1 + 72), OS_LOG_TYPE_ERROR))
      {
        v29 = 3;
      }

      else
      {
        v29 = 2;
      }

      v30 = *(a1 + 56);
      if (!v30)
      {
        v30 = "[anonymous]";
      }

      v48 = 136446210;
      v49 = v30;
      v31 = _os_log_send_and_compose_impl(v29, 0, 0, 0, &_mh_execute_header, v28, 16, "%{public}s: Unable to read watchdog service descriptions.", COERCE_DOUBLE(136446210), &v48, 12);
    }

    else
    {
      v37 = *(a1 + 56);
      if (!v37)
      {
        v37 = "[anonymous]";
      }

      v48 = 136446210;
      v49 = v37;
      v31 = _os_log_send_and_compose_impl(2, 0, 0, 0, &_mh_execute_header, &_os_log_default, 16, "%{public}s: Unable to read watchdog service descriptions.", COERCE_DOUBLE(136446210), &v48, 12);
    }

    v38 = v31;
    v39 = createError("_quire_parse_watchdog_service_descriptions", "quire.c", 1256, "com.apple.security.cryptex", 11, v14, v31);
    free(v38);
    v47 = v39;
    goto LABEL_31;
  }

  if (!cf || CFArrayGetCount(cf) < 1)
  {
LABEL_12:
    v14 = 0;
LABEL_31:
    buff_destroy(v45, v4);
    v25 = v47;
    goto LABEL_32;
  }

  v32 = watchdog_copy_service_description_labels(cf);
  v14 = _quire_validate_watchdog_service_labels(a1, v32);
  if (v14)
  {
    v33 = *(a1 + 72);
    if (v33)
    {
      if (os_log_type_enabled(*(a1 + 72), OS_LOG_TYPE_ERROR))
      {
        v34 = 3;
      }

      else
      {
        v34 = 2;
      }

      v35 = *(a1 + 56);
      if (!v35)
      {
        v35 = "[anonymous]";
      }

      v48 = 136446210;
      v49 = v35;
      v36 = _os_log_send_and_compose_impl(v34, 0, 0, 0, &_mh_execute_header, v33, 16, "%{public}s: Failed to validate watchdog service labels.", COERCE_DOUBLE(136446210), &v48, 12);
    }

    else
    {
      v42 = *(a1 + 56);
      if (!v42)
      {
        v42 = "[anonymous]";
      }

      v48 = 136446210;
      v49 = v42;
      v36 = _os_log_send_and_compose_impl(2, 0, 0, 0, &_mh_execute_header, &_os_log_default, 16, "%{public}s: Failed to validate watchdog service labels.", COERCE_DOUBLE(136446210), &v48, 12);
    }

    v43 = v36;
    v41 = createError("_quire_parse_watchdog_service_descriptions", "quire.c", 1264, "com.apple.security.cryptex", 11, v14, v36);
    free(v43);
  }

  else
  {
    v41 = a2(cf);
  }

  v47 = v41;
  buff_destroy(v45, v40);
  v25 = v47;
  if (v32)
  {
    CFRelease(v32);
  }

LABEL_32:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  if (v13)
  {
    os_release(v13);
  }

  return v25;
}

CFErrorRef _quire_validate_watchdog_service_labels(uint64_t a1, CFArrayRef theArray)
{
  Count = CFArrayGetCount(theArray);
  if (Count)
  {
    v5 = Count;
    v6 = malloc_type_calloc(Count, 8uLL, 0xC0040B8AA526DuLL);
    v26.location = 0;
    v26.length = v5;
    CFArrayGetValues(theArray, v26, v6);
    v7 = CFSetCreate(0, v6, v5, &kCFTypeSetCallBacks);
    if (CFSetGetCount(v7) == v5)
    {
      if (v5 < 1)
      {
        Error = 0;
      }

      else
      {
        v8 = 0;
        while (2)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(theArray, v8);
          v10 = _CFStringCopyUTF8String(ValueAtIndex);
          v11 = (a1 + 448);
          do
          {
            v11 = *v11;
            if (!v11)
            {
              v17 = *(a1 + 72);
              if (v17)
              {
                if (os_log_type_enabled(*(a1 + 72), OS_LOG_TYPE_ERROR))
                {
                  v18 = 3;
                }

                else
                {
                  v18 = 2;
                }

                v19 = *(a1 + 56);
                if (!v19)
                {
                  v19 = "[anonymous]";
                }

                *v25 = 136446466;
                *&v25[4] = v19;
                *&v25[12] = 2114;
                *&v25[14] = ValueAtIndex;
                v20 = _os_log_send_and_compose_impl(v18, 0, 0, 0, &_mh_execute_header, v17, 16, "%{public}s: Job '%{public}@' which would be registered for watchdog was not loaded from cryptex.", COERCE_DOUBLE(136446466), v25, 22, *v25, *&v25[8]);
              }

              else
              {
                v23 = *(a1 + 56);
                if (!v23)
                {
                  v23 = "[anonymous]";
                }

                *v25 = 136446466;
                *&v25[4] = v23;
                *&v25[12] = 2114;
                *&v25[14] = ValueAtIndex;
                v20 = _os_log_send_and_compose_impl(2, 0, 0, 0, &_mh_execute_header, &_os_log_default, 16, "%{public}s: Job '%{public}@' which would be registered for watchdog was not loaded from cryptex.", COERCE_DOUBLE(136446466), v25, 22, *v25, *&v25[8]);
              }

              v24 = v20;
              Error = createError("_quire_validate_watchdog_service_labels", "quire.c", 1215, "com.apple.security.cryptex", 11, 0, v20);
              free(v24);
              goto LABEL_37;
            }
          }

          while (strcmp(v11[1], v10));
          free(v10);
          Error = 0;
          if (++v8 != v5)
          {
            continue;
          }

          break;
        }
      }

      if (v7)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v13 = *(a1 + 72);
      if (v13)
      {
        if (os_log_type_enabled(*(a1 + 72), OS_LOG_TYPE_ERROR))
        {
          v14 = 3;
        }

        else
        {
          v14 = 2;
        }

        v15 = *(a1 + 56);
        if (!v15)
        {
          v15 = "[anonymous]";
        }

        *v25 = 136446210;
        *&v25[4] = v15;
        v16 = _os_log_send_and_compose_impl(v14, 0, 0, 0, &_mh_execute_header, v13, 16, "%{public}s: List of jobs to watchdog has duplicate labels", COERCE_DOUBLE(136446210), v25, 12, *v25, *&v25[8]);
      }

      else
      {
        v22 = *(a1 + 56);
        if (!v22)
        {
          v22 = "[anonymous]";
        }

        *v25 = 136446210;
        *&v25[4] = v22;
        v16 = _os_log_send_and_compose_impl(2, 0, 0, 0, &_mh_execute_header, &_os_log_default, 16, "%{public}s: List of jobs to watchdog has duplicate labels", COERCE_DOUBLE(136446210), v25, 12, *v25, *&v25[8]);
      }

      v10 = v16;
      Error = createError("_quire_validate_watchdog_service_labels", "quire.c", 1194, "com.apple.security.cryptex", 11, 0, v16);
LABEL_37:
      free(v10);
      if (v7)
      {
LABEL_27:
        CFRelease(v7);
      }
    }
  }

  else
  {
    Error = 0;
    v6 = 0;
  }

  free(v6);
  return Error;
}

int *___quire_reset_rsd_devices_block_invoke(int *result, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    v3 = result;
    result = remote_device_reset();
    if ((result & 1) == 0)
    {
      v4 = *__error();
      v5 = *(*(v3 + 4) + 56);
      v6 = *__error();
      v7 = *(*(v3 + 4) + 72);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        if (!v5)
        {
          v5 = "[anonymous]";
        }

        v8 = 136446722;
        v9 = v5;
        v10 = 2080;
        name = remote_device_get_name();
        v12 = 1024;
        v13 = v4;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%{public}s: failed to reset remote device: %s: %{darwin.errno}d", &v8, 0x1Cu);
      }

      result = __error();
      *result = v6;
    }
  }

  return result;
}

char *_quire_iter_feature_flags(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, void *, uint64_t))
{
  object = 0;
  p_object = &object;
  object = view_create(&_view_application, *(a1 + 392), 0);
  v6 = *(a1 + 56);
  v7 = *__error();
  v8 = *(a1 + 72);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = "[anonymous]";
    if (v6)
    {
      v9 = v6;
    }

    *buf = 136446210;
    v14 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%{public}s: iterating feature_flag_domains", buf, 0xCu);
  }

  *__error() = v7;
  v10 = _quire_iter_resource_for_views(a1, a2, &_resource_feature_flags, &p_object, 1, 0, a3);
  if (object)
  {
    os_release(object);
  }

  return v10;
}

CFErrorRef _quire_remove_resource_from_data_volume(uint64_t a1, uint64_t a2)
{
  v2 = **(a2 + 48);
  v3 = _quire_unbootstrap_library;
  if (v2 <= 4)
  {
    if ((v2 - 2) >= 3)
    {
      if (v2)
      {
        v4 = _quire_unbootstrap_binary;
LABEL_12:
        v3 = v4;
        goto LABEL_13;
      }

      goto LABEL_13;
    }

LABEL_7:
    v5 = *(a2 + 72);
    v9 = 136446210;
    v10 = v5;
    v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &_mh_execute_header, &_os_log_default, 16, "Removing %{public}s from Data volume is unsupported", &v9, 12);
    Error = createError("_quire_remove_resource_from_data_volume", "quire.c", 2159, "com.apple.security.cryptex", 10, 0, v6);
    free(v6);
    return Error;
  }

  if (v2 > 0xC)
  {
    goto LABEL_13;
  }

  if (((1 << v2) & 0x1B00) != 0)
  {
    goto LABEL_7;
  }

  if (v2 == 7)
  {
    v4 = _quire_unbootstrap_log_plist;
    goto LABEL_12;
  }

  if (v2 == 10)
  {
    v4 = _quire_unbootstrap_feature_flags_domain;
    goto LABEL_12;
  }

LABEL_13:

  return (v3)(a1);
}

char *_quire_iter_resource_for_views(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t **a4, uint64_t a5, char a6, uint64_t (*a7)(uint64_t, void *, uint64_t))
{
  if (a5 < 1)
  {
    return 0;
  }

  v7 = a5;
  while (1)
  {
    v12 = **a4;
    v13 = *(v12 + 48);
    if (v13 == &_view_internal)
    {
      if ((os_variant_has_internal_content() & 1) == 0)
      {
        v14 = *(a1 + 56);
        v15 = *__error();
        v16 = *(a1 + 72);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v17 = "[anonymous]";
          if (v14)
          {
            v17 = v14;
          }

          *buf = 136446210;
          v37 = v17;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%{public}s: trying to bootstrap internal content on non internal system", buf, 0xCu);
        }

        *__error() = v15;
      }

      v13 = *(v12 + 48);
    }

    if (v13 == &_view_platform && *(a1 + 188))
    {
      v28 = *(a1 + 56);
      v20 = *__error();
      v29 = *(a1 + 72);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        v30 = "[anonymous]";
        if (v28)
        {
          v30 = v28;
        }

        *buf = 136446210;
        v37 = v30;
        v24 = v29;
        v25 = OS_LOG_TYPE_INFO;
        v26 = "%{public}s: not bootstrapping platform content for session";
        v27 = 12;
        goto LABEL_23;
      }

      goto LABEL_24;
    }

    v18 = view_iterate_resource(v12, a3, a2, a7, a6);
    v19 = *(a1 + 56) ? *(a1 + 56) : "[anonymous]";
    v20 = *__error();
    v21 = *(a1 + 72);
    if (v18)
    {
      break;
    }

    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      v22 = *(a3 + 8);
      v23 = *(*(v12 + 48) + 8);
      *buf = 136446722;
      v37 = v19;
      v38 = 2082;
      v39 = v22;
      v40 = 2082;
      v41 = v23;
      v24 = v21;
      v25 = OS_LOG_TYPE_DEBUG;
      v26 = "%{public}s: iterate '%{public}s' resources for '%{public}s' view [no error]";
      v27 = 32;
LABEL_23:
      _os_log_impl(&_mh_execute_header, v24, v25, v26, buf, v27);
    }

LABEL_24:
    *__error() = v20;
    ++a4;
    if (!--v7)
    {
      return 0;
    }
  }

  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    v31 = *(a3 + 8);
    v32 = *(*(v12 + 48) + 8);
    *buf = 136446978;
    v37 = v19;
    v38 = 2082;
    v39 = v31;
    v40 = 2082;
    v41 = v32;
    v42 = 2112;
    v43 = v18;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "%{public}s: iterate '%{public}s' resources for '%{public}s' view: %@", buf, 0x2Au);
  }

  *__error() = v20;
  return v18;
}

uint64_t _quire_unbootstrap_library(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  bzero(__str, 0x400uLL);
  snprintf(__str, 0x400uLL, "%s/%s", a3[7], *(a2 + 72));
  v6 = openat(*(a3 + 12), *(a2 + 72), 0x200000);
  if ((v6 & 0x80000000) == 0)
  {
    *__error() = 0;
  }

  v7 = *__error();
  if (!v7)
  {
    Error = cryptex_core_metadata_matches_xattrs();
    if (Error)
    {
      goto LABEL_25;
    }

    v26 = *(v5 + 56);
    v9 = *__error();
    v27 = *(v5 + 72);
    if (!os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_10;
    }

    v28 = "[anonymous]";
    if (v26)
    {
      v28 = v26;
    }

    *buf = 136446466;
    v31 = v28;
    v32 = 2080;
    v33 = __str;
    v12 = "%{public}s: %s not deleted because metadata does not match cryptex";
    v13 = v27;
    v14 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_9;
  }

  if (v7 == 2)
  {
    v8 = *(v5 + 56);
    v9 = *__error();
    v10 = *(v5 + 72);
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
LABEL_10:
      Error = 0;
      *__error() = v9;
      goto LABEL_25;
    }

    v11 = "[anonymous]";
    if (v8)
    {
      v11 = v8;
    }

    *buf = 136446466;
    v31 = v11;
    v32 = 2080;
    v33 = __str;
    v12 = "%{public}s: No library symlink found at %s";
    v13 = v10;
    v14 = OS_LOG_TYPE_DEBUG;
LABEL_9:
    _os_log_impl(&_mh_execute_header, v13, v14, v12, buf, 0x16u);
    goto LABEL_10;
  }

  v16 = *__error();
  v17 = *(v5 + 72);
  if (v17)
  {
    v18 = os_log_type_enabled(*(v5 + 72), OS_LOG_TYPE_ERROR);
    v19 = *(v5 + 56);
    if (v18)
    {
      v20 = 3;
    }

    else
    {
      v20 = 2;
    }

    *buf = 136446722;
    if (v19)
    {
      v21 = v19;
    }

    else
    {
      v21 = "[anonymous]";
    }

    v31 = v21;
    v32 = 2080;
    v33 = __str;
    v34 = 1024;
    v35 = v16;
    LODWORD(v29) = 28;
    v22 = _os_log_send_and_compose_impl(v20, 0, 0, 0, &_mh_execute_header, v17, 16, "%{public}s: failed to open symlink at %s %{darwin.errno}d", COERCE_DOUBLE(136446722), buf, v29);
  }

  else
  {
    v23 = "[anonymous]";
    if (*(v5 + 56))
    {
      v23 = *(v5 + 56);
    }

    *buf = 136446722;
    v31 = v23;
    v32 = 2080;
    v33 = __str;
    v34 = 1024;
    v35 = v16;
    LODWORD(v29) = 28;
    v22 = _os_log_send_and_compose_impl(2, 0, 0, 0, &_mh_execute_header, &_os_log_default, 16, "%{public}s: failed to open symlink at %s %{darwin.errno}d", COERCE_DOUBLE(136446722), buf, v29);
  }

  v24 = v22;
  Error = createError("_quire_unbootstrap_library", "quire.c", 1536, "com.apple.security.cryptex.posix", v16, 0, v22);
  free(v24);
LABEL_25:
  if (v6 != -1 && close(v6) == -1)
  {
    daemon_init_cold_13(buf, __str);
  }

  return Error;
}

uint64_t _quire_unbootstrap_log_plist(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a3;
  bzero(__str, 0x400uLL);
  memset(v42, 0, 64);
  v39 = 0u;
  v40 = 0u;
  *__n = 0u;
  v38 = 0u;
  v5 = basename(*(a2 + 72));
  snprintf(__str, 0x400uLL, "%s%s", "/Library/Preferences/Logging/Subsystems/", v5);
  v6 = open(__str, 256);
  if ((v6 & 0x80000000) == 0)
  {
    *__error() = 0;
  }

  v7 = *__error();
  if (!v7)
  {
    Error = cryptex_core_metadata_matches_xattrs();
    if (Error)
    {
      goto LABEL_25;
    }

    v27 = *(v4 + 56);
    v9 = *__error();
    v28 = *(v4 + 72);
    if (!os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_10;
    }

    v29 = "[anonymous]";
    if (v27)
    {
      v29 = v27;
    }

    *buf = 136446466;
    v32 = v29;
    v33 = 2080;
    v34 = __str;
    v12 = "%{public}s: %s not deleted because metadata does not match cryptex";
    v13 = v28;
    v14 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_9;
  }

  if (v7 == 2)
  {
    v8 = *(v4 + 56);
    v9 = *__error();
    v10 = *(v4 + 72);
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
LABEL_10:
      Error = 0;
      *__error() = v9;
      goto LABEL_25;
    }

    v11 = "[anonymous]";
    if (v8)
    {
      v11 = v8;
    }

    *buf = 136446466;
    v32 = v11;
    v33 = 2080;
    v34 = __str;
    v12 = "%{public}s: No log profile found at %s";
    v13 = v10;
    v14 = OS_LOG_TYPE_DEBUG;
LABEL_9:
    _os_log_impl(&_mh_execute_header, v13, v14, v12, buf, 0x16u);
    goto LABEL_10;
  }

  v16 = *__error();
  v17 = v16;
  v18 = *(v4 + 72);
  if (v18)
  {
    v19 = os_log_type_enabled(*(v4 + 72), OS_LOG_TYPE_ERROR);
    v20 = *(v4 + 56);
    if (v19)
    {
      v21 = 3;
    }

    else
    {
      v21 = 2;
    }

    *buf = 136446722;
    if (v20)
    {
      v22 = v20;
    }

    else
    {
      v22 = "[anonymous]";
    }

    v32 = v22;
    v33 = 2080;
    v34 = __str;
    v35 = 1024;
    v36 = v16;
    LODWORD(v30) = 28;
    v23 = _os_log_send_and_compose_impl(v21, 0, 0, 0, &_mh_execute_header, v18, 16, "%{public}s: failed to open trampoline at %s %{darwin.errno}d", COERCE_DOUBLE(136446722), buf, v30);
  }

  else
  {
    v24 = "[anonymous]";
    if (*(v4 + 56))
    {
      v24 = *(v4 + 56);
    }

    *buf = 136446722;
    v32 = v24;
    v33 = 2080;
    v34 = __str;
    v35 = 1024;
    v36 = v16;
    LODWORD(v30) = 28;
    v23 = _os_log_send_and_compose_impl(2, 0, 0, 0, &_mh_execute_header, &_os_log_default, 16, "%{public}s: failed to open trampoline at %s %{darwin.errno}d", COERCE_DOUBLE(136446722), buf, v30);
  }

  v25 = v23;
  Error = createError("_quire_unbootstrap_log_plist", "quire.c", 1671, "com.apple.security.cryptex.posix", v17, 0, v23);
  free(v25);
LABEL_25:
  if (v6 != -1 && close(v6) == -1)
  {
    daemon_init_cold_13(__n, v42);
  }

  return Error;
}

uint64_t _quire_unbootstrap_feature_flags_domain(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a3;
  bzero(__str, 0x400uLL);
  LOBYTE(v39) = 0;
  v5 = basename(*(a2 + 72));
  snprintf(__str, 0x400uLL, "%s/%s", "/Library/Preferences/FeatureFlags/Domain", v5);
  v6 = open(__str, 256);
  if ((v6 & 0x80000000) == 0)
  {
    *__error() = 0;
  }

  v7 = *__error();
  if (!v7)
  {
    Error = cryptex_core_metadata_matches_xattrs();
    if (Error)
    {
      goto LABEL_33;
    }

    if ((v39 & 1) == 0)
    {
      v33 = *(v4 + 56);
      v9 = *__error();
      v34 = *(v4 + 72);
      if (!os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_11;
      }

      v35 = "[anonymous]";
      if (v33)
      {
        v35 = v33;
      }

      *buf = 136446466;
      v42 = v35;
      v43 = 2080;
      v44 = __str;
      v12 = "%{public}s: %s not deleted because metadata does not match cryptex";
      v13 = v34;
      v14 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_10;
    }

    if (!unlink(__str) || (v16 = *__error()) == 0)
    {
      v36 = *(v4 + 56);
      v9 = *__error();
      v10 = *(v4 + 72);
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_11;
      }

      v37 = "[anonymous]";
      if (v36)
      {
        v37 = v36;
      }

      *buf = 136446466;
      v42 = v37;
      v43 = 2080;
      v44 = __str;
      v12 = "%{public}s: unlink %s: success";
      goto LABEL_9;
    }

    v17 = v16;
    v18 = *(v4 + 56);
    v19 = *__error();
    v20 = *(v4 + 72);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = "[anonymous]";
      *buf = 136446722;
      if (v18)
      {
        v21 = v18;
      }

      v42 = v21;
      v43 = 2080;
      v44 = __str;
      v45 = 1024;
      v46 = v16;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%{public}s: unlink %s: %{darwin.errno}d", buf, 0x1Cu);
    }

    *__error() = v19;
    *buf = 136315394;
    v42 = __str;
    v43 = 1024;
    LODWORD(v44) = v16;
    LODWORD(v38) = 18;
    v30 = _os_log_send_and_compose_impl(2, 0, 0, 0, &_mh_execute_header, &_os_log_default, 16, "unlink %s %{darwin.errno}d", buf, v38);
    v31 = 2875;
LABEL_32:
    Error = createError("_quire_unbootstrap_feature_flags_domain", "quire.c", v31, "com.apple.security.cryptex.posix", v17, 0, v30);
    free(v30);
    goto LABEL_33;
  }

  if (v7 != 2)
  {
    v22 = *__error();
    v17 = v22;
    v23 = *(v4 + 72);
    if (v23)
    {
      v24 = os_log_type_enabled(*(v4 + 72), OS_LOG_TYPE_ERROR);
      v25 = *(v4 + 56);
      if (v24)
      {
        v26 = 3;
      }

      else
      {
        v26 = 2;
      }

      *buf = 136446722;
      if (v25)
      {
        v27 = v25;
      }

      else
      {
        v27 = "[anonymous]";
      }

      v42 = v27;
      v43 = 2080;
      v44 = __str;
      v45 = 1024;
      v46 = v22;
      LODWORD(v38) = 28;
      v28 = _os_log_send_and_compose_impl(v26, 0, 0, 0, &_mh_execute_header, v23, 16, "%{public}s: failed to open ff at %s %{darwin.errno}d", COERCE_DOUBLE(136446722), buf, v38);
    }

    else
    {
      v29 = "[anonymous]";
      if (*(v4 + 56))
      {
        v29 = *(v4 + 56);
      }

      *buf = 136446722;
      v42 = v29;
      v43 = 2080;
      v44 = __str;
      v45 = 1024;
      v46 = v22;
      LODWORD(v38) = 28;
      v28 = _os_log_send_and_compose_impl(2, 0, 0, 0, &_mh_execute_header, &_os_log_default, 16, "%{public}s: failed to open ff at %s %{darwin.errno}d", COERCE_DOUBLE(136446722), buf, v38);
    }

    v30 = v28;
    v31 = 2859;
    goto LABEL_32;
  }

  v8 = *(v4 + 56);
  v9 = *__error();
  v10 = *(v4 + 72);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v11 = "[anonymous]";
    if (v8)
    {
      v11 = v8;
    }

    *buf = 136446466;
    v42 = v11;
    v43 = 2080;
    v44 = __str;
    v12 = "%{public}s: No feature flag file found at %s";
LABEL_9:
    v13 = v10;
    v14 = OS_LOG_TYPE_DEBUG;
LABEL_10:
    _os_log_impl(&_mh_execute_header, v13, v14, v12, buf, 0x16u);
  }

LABEL_11:
  Error = 0;
  *__error() = v9;
LABEL_33:
  if (v6 != -1 && close(v6) == -1)
  {
    daemon_init_cold_13(&v39, buf);
  }

  return Error;
}

uint64_t _quire_unbootstrap_binary(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = a3[7];
  v5 = *a3;
  bzero(__str, 0x400uLL);
  snprintf(__str, 0x400uLL, "%s/%s", v4, *(a2 + 72));
  v6 = open(v4, 0);
  v7 = v6;
  if ((v6 & 0x80000000) == 0)
  {
    v8 = openat(v6, *(a2 + 72), 256);
    if ((v8 & 0x80000000) == 0)
    {
      *__error() = 0;
    }

    v9 = *__error();
    if (v9)
    {
      if (v9 == 2)
      {
        v10 = *(v5 + 56);
        v11 = *__error();
        v12 = *(v5 + 72);
        if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
LABEL_11:
          Error = 0;
          *__error() = v11;
          goto LABEL_39;
        }

        v13 = "[anonymous]";
        if (v10)
        {
          v13 = v10;
        }

        *buf = 136446466;
        v42 = v13;
        v43 = 2080;
        v44 = __str;
        v14 = "%{public}s: No trampoline found at %s";
        v15 = v12;
        v16 = OS_LOG_TYPE_DEBUG;
LABEL_10:
        _os_log_impl(&_mh_execute_header, v15, v16, v14, buf, 0x16u);
        goto LABEL_11;
      }

      v24 = *__error();
      v25 = *(v5 + 72);
      if (v25)
      {
        v26 = os_log_type_enabled(*(v5 + 72), OS_LOG_TYPE_ERROR);
        v27 = *(v5 + 56);
        if (v26)
        {
          v28 = 3;
        }

        else
        {
          v28 = 2;
        }

        *buf = 136446722;
        if (v27)
        {
          v29 = v27;
        }

        else
        {
          v29 = "[anonymous]";
        }

        v42 = v29;
        v43 = 2080;
        v44 = __str;
        v45 = 1024;
        v46 = v24;
        LODWORD(v40) = 28;
        v30 = _os_log_send_and_compose_impl(v28, 0, 0, 0, &_mh_execute_header, v25, 16, "%{public}s: failed to open trampoline at %s %{darwin.errno}d", COERCE_DOUBLE(136446722), buf, v40);
      }

      else
      {
        v34 = "[anonymous]";
        if (*(v5 + 56))
        {
          v34 = *(v5 + 56);
        }

        *buf = 136446722;
        v42 = v34;
        v43 = 2080;
        v44 = __str;
        v45 = 1024;
        v46 = v24;
        LODWORD(v40) = 28;
        v30 = _os_log_send_and_compose_impl(2, 0, 0, 0, &_mh_execute_header, &_os_log_default, 16, "%{public}s: failed to open trampoline at %s %{darwin.errno}d", COERCE_DOUBLE(136446722), buf, v40);
      }

      v35 = v30;
      Error = createError("_quire_unbootstrap_binary_from", "quire.c", 1866, "com.apple.security.cryptex.posix", v24, 0, v30);
      free(v35);
    }

    else
    {
      Error = cryptex_core_metadata_matches_xattrs();
      if (!Error)
      {
        v37 = *(v5 + 56);
        v11 = *__error();
        v38 = *(v5 + 72);
        if (!os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_11;
        }

        v39 = "[anonymous]";
        if (v37)
        {
          v39 = v37;
        }

        *buf = 136446466;
        v42 = v39;
        v43 = 2080;
        v44 = __str;
        v14 = "%{public}s: %s not deleted because metadata does not match cryptex";
        v15 = v38;
        v16 = OS_LOG_TYPE_DEFAULT;
        goto LABEL_10;
      }
    }

LABEL_39:
    if (close(v7) != -1)
    {
      if (v8 != -1 && close(v8) == -1)
      {
        daemon_init_cold_13(buf, __str);
      }

      return Error;
    }

LABEL_47:
    daemon_init_cold_13(buf, __str);
  }

  v18 = *__error();
  v19 = *(v5 + 72);
  if (v19)
  {
    if (os_log_type_enabled(*(v5 + 72), OS_LOG_TYPE_ERROR))
    {
      v20 = 3;
    }

    else
    {
      v20 = 2;
    }

    v21 = *(v5 + 56);
    v22 = *(a2 + 72);
    *buf = 136446722;
    if (!v21)
    {
      v21 = "[anonymous]";
    }

    v42 = v21;
    v43 = 2080;
    v44 = v22;
    v45 = 1024;
    v46 = v18;
    LODWORD(v40) = 28;
    v23 = _os_log_send_and_compose_impl(v20, 0, 0, 0, &_mh_execute_header, v19, 16, "%{public}s: failed to open root path for %s %{darwin.errno}d", buf, v40);
  }

  else
  {
    v31 = *(v5 + 56);
    if (!v31)
    {
      v31 = "[anonymous]";
    }

    v32 = *(a2 + 72);
    *buf = 136446722;
    v42 = v31;
    v43 = 2080;
    v44 = v32;
    v45 = 1024;
    v46 = v18;
    LODWORD(v40) = 28;
    v23 = _os_log_send_and_compose_impl(2, 0, 0, 0, &_mh_execute_header, &_os_log_default, 16, "%{public}s: failed to open root path for %s %{darwin.errno}d", buf, v40);
  }

  v33 = v23;
  Error = createError("_quire_unbootstrap_binary_from", "quire.c", 1852, "com.apple.security.cryptex.posix", v18, 0, v23);
  free(v33);
  if (v7 != -1 && close(v7) == -1)
  {
    goto LABEL_47;
  }

  return Error;
}

void _quire_iter_binaries(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, void *, uint64_t))
{
  v11 = 0;
  v12 = 0;
  object = 0;
  v15[0] = &v12;
  v15[1] = &v11;
  v15[2] = &object;
  v12 = view_create(&_view_application, *(a1 + 392), 0);
  v11 = view_create(&_view_internal, *(a1 + 392), 0);
  object = view_create(&_view_platform, *(a1 + 392), 0);
  v6 = *(a1 + 56);
  v7 = *__error();
  v8 = *(a1 + 72);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = "[anonymous]";
    if (v6)
    {
      v9 = v6;
    }

    *buf = 136446210;
    v14 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%{public}s: iterating binaries", buf, 0xCu);
  }

  *__error() = v7;
  _quire_iter_resource_for_views_best_effort(a1, a2, &_resource_bin, v15, 3, a3);
  if (object)
  {
    os_release(object);
  }

  if (v11)
  {
    os_release(v11);
  }

  if (v12)
  {
    os_release(v12);
  }
}

void _quire_iter_resource_for_views_best_effort(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t **a4, uint64_t a5, uint64_t (*a6)(uint64_t, void *, uint64_t))
{
  v6 = _quire_iter_resource_for_views(a1, a2, a3, a4, a5, 2, a6);
  if (v6)
  {

    CFRelease(v6);
  }
}

void _quire_iter_libraries(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, void *, uint64_t))
{
  v11 = 0;
  v12 = 0;
  object = 0;
  v15[0] = &v12;
  v15[1] = &v11;
  v15[2] = &object;
  v12 = view_create(&_view_application, *(a1 + 392), 0);
  v11 = view_create(&_view_internal, *(a1 + 392), 0);
  object = view_create(&_view_platform, *(a1 + 392), 0);
  v6 = *(a1 + 56);
  v7 = *__error();
  v8 = *(a1 + 72);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = "[anonymous]";
    if (v6)
    {
      v9 = v6;
    }

    *buf = 136446210;
    v14 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%{public}s: iterating libraries", buf, 0xCu);
  }

  *__error() = v7;
  _quire_iter_resource_for_views_best_effort(a1, a2, &_resource_lib, v15, 3, a3);
  _quire_iter_resource_for_views_best_effort(a1, a2, &_resource_framework, v15, 3, a3);
  _quire_iter_resource_for_views_best_effort(a1, a2, &_resource_private_framework, v15, 3, a3);
  if (object)
  {
    os_release(object);
  }

  if (v11)
  {
    os_release(v11);
  }

  if (v12)
  {
    os_release(v12);
  }
}

void _quire_iter_log_profiles(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, void *, uint64_t))
{
  object = 0;
  v11 = 0;
  v14[0] = &v11;
  v14[1] = &object;
  v11 = view_create(&_view_application, *(a1 + 392), 0);
  object = view_create(&_view_platform, *(a1 + 392), 0);
  v6 = *(a1 + 56);
  v7 = *__error();
  v8 = *(a1 + 72);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = "[anonymous]";
    if (v6)
    {
      v9 = v6;
    }

    *buf = 136446210;
    v13 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%{public}s: iterating log_profiles", buf, 0xCu);
  }

  *__error() = v7;
  _quire_iter_resource_for_views_best_effort(a1, a2, &_resource_log_profile, v14, 2, a3);
  if (object)
  {
    os_release(object);
  }

  if (v11)
  {
    os_release(v11);
  }
}

void _quire_unbootstrap_trust_cache_continue(uint64_t a1, const void *a2, uint64_t a3)
{
  if (a2)
  {
    v5 = *(a1 + 72);
    if (v5)
    {
      if (os_log_type_enabled(*(a1 + 72), OS_LOG_TYPE_ERROR))
      {
        v6 = 3;
      }

      else
      {
        v6 = 2;
      }

      v7 = *(a1 + 56);
      if (!v7)
      {
        v7 = "[anonymous]";
      }

      *buf = 136446210;
      v40 = v7;
      v8 = _os_log_send_and_compose_impl(v6, 0, 0, 0, &_mh_execute_header, v5, 16, "%{public}s: failed to authenticate trust cache before unloading it", COERCE_DOUBLE(136446210), buf, 12);
    }

    else
    {
      v17 = *(a1 + 56);
      if (!v17)
      {
        v17 = "[anonymous]";
      }

      *buf = 136446210;
      v40 = v17;
      v8 = _os_log_send_and_compose_impl(2, 0, 0, 0, &_mh_execute_header, &_os_log_default, 16, "%{public}s: failed to authenticate trust cache before unloading it", COERCE_DOUBLE(136446210), buf, 12);
    }

    v18 = v8;
    createError("_quire_unbootstrap_trust_cache_continue", "quire.c", 2452, "com.apple.security.cryptex", 38, a2, v8);
    free(v18);
    goto LABEL_20;
  }

  tc_asset = cryptex_core_get_tc_asset();
  v10 = _amfi_unload_trust_cache(*(tc_asset + 16), *(a1 + 72));
  if (v10)
  {
    v11 = v10;
    if (_CFErrorHasDomainAndCode(v10, @"com.apple.security.cryptex", 10))
    {
      v12 = *(a1 + 56);
      v13 = *__error();
      v14 = *(a1 + 72);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = "[anonymous]";
        if (v12)
        {
          v15 = v12;
        }

        *buf = 136446210;
        v40 = v15;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%{public}s: unloading trust cache is not supported", buf, 0xCu);
      }

      *__error() = v13;
      CFRelease(v11);
      Error = 0;
      goto LABEL_57;
    }

    v23 = *(a1 + 72);
    if (v23)
    {
      if (os_log_type_enabled(*(a1 + 72), OS_LOG_TYPE_ERROR))
      {
        v24 = 3;
      }

      else
      {
        v24 = 2;
      }

      v25 = *(a1 + 56);
      if (!v25)
      {
        v25 = "[anonymous]";
      }

      *buf = 136446210;
      v40 = v25;
      v26 = _os_log_send_and_compose_impl(v24, 0, 0, 0, &_mh_execute_header, v23, 16, "%{public}s: failed to unload trust cache", COERCE_DOUBLE(136446210), buf, 12);
    }

    else
    {
      v27 = *(a1 + 56);
      if (!v27)
      {
        v27 = "[anonymous]";
      }

      *buf = 136446210;
      v40 = v27;
      v26 = _os_log_send_and_compose_impl(2, 0, 0, 0, &_mh_execute_header, &_os_log_default, 16, "%{public}s: failed to unload trust cache", COERCE_DOUBLE(136446210), buf, 12);
    }

    v28 = v26;
    v29 = 2422;
    v30 = 38;
  }

  else
  {
    v11 = quire_boot_session_set(a1, ".trustcache-loaded", 0);
    if (!v11)
    {
LABEL_20:
      Error = 0;
      goto LABEL_57;
    }

    v19 = *(a1 + 72);
    if (v19)
    {
      if (os_log_type_enabled(*(a1 + 72), OS_LOG_TYPE_ERROR))
      {
        v20 = 3;
      }

      else
      {
        v20 = 2;
      }

      v21 = *(a1 + 56);
      if (!v21)
      {
        v21 = "[anonymous]";
      }

      *buf = 136446210;
      v40 = v21;
      v22 = _os_log_send_and_compose_impl(v20, 0, 0, 0, &_mh_execute_header, v19, 16, "%{public}s: failed to clear trustcache-loaded flag", COERCE_DOUBLE(136446210), buf, 12);
    }

    else
    {
      v31 = *(a1 + 56);
      if (!v31)
      {
        v31 = "[anonymous]";
      }

      *buf = 136446210;
      v40 = v31;
      v22 = _os_log_send_and_compose_impl(2, 0, 0, 0, &_mh_execute_header, &_os_log_default, 16, "%{public}s: failed to clear trustcache-loaded flag", COERCE_DOUBLE(136446210), buf, 12);
    }

    v28 = v22;
    v29 = 2430;
    v30 = 34;
  }

  Error = createError("_quire_unbootstrap_authentic_trust_cache", "quire.c", v29, "com.apple.security.cryptex", v30, v11, v28);
  free(v28);
  CFRelease(v11);
  if (Error)
  {
    v32 = *(a1 + 72);
    if (v32)
    {
      if (os_log_type_enabled(*(a1 + 72), OS_LOG_TYPE_ERROR))
      {
        v33 = 3;
      }

      else
      {
        v33 = 2;
      }

      v34 = *(a1 + 56);
      if (!v34)
      {
        v34 = "[anonymous]";
      }

      *buf = 136446210;
      v40 = v34;
      LODWORD(v38) = 12;
      v35 = _os_log_send_and_compose_impl(v33, 0, 0, 0, &_mh_execute_header, v32, 16, "%{public}s: failed to unload authentic trust cache", COERCE_DOUBLE(136446210), buf, v38);
    }

    else
    {
      v36 = *(a1 + 56);
      if (!v36)
      {
        v36 = "[anonymous]";
      }

      *buf = 136446210;
      v40 = v36;
      LODWORD(v38) = 12;
      v35 = _os_log_send_and_compose_impl(2, 0, 0, 0, &_mh_execute_header, &_os_log_default, 16, "%{public}s: failed to unload authentic trust cache", COERCE_DOUBLE(136446210), buf, v38);
    }

    v37 = v35;
    createError("_quire_unbootstrap_trust_cache_continue", "quire.c", 2461, "com.apple.security.cryptex", 38, Error, v35);
    free(v37);
  }

LABEL_57:
  cryptex_async();
  if (Error)
  {
    CFRelease(Error);
  }
}

void ___quire_unbootstrap_trust_cache_continue_block_invoke(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(a1 + 40);
  if (v2)
  {

    CFRelease(v2);
  }
}

uint64_t _quire_bootstrap_continue3(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 56);
  v3 = *__error();
  v4 = *(v1 + 72);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = "[anonymous]";
    if (v2)
    {
      v5 = v2;
    }

    v7 = 136446210;
    v8 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "%{public}s: quire bootstrap succeeded", &v7, 0xCu);
  }

  *__error() = v3;
  *(v1 + 176) |= 2uLL;
  return cryptex_target_async_f();
}

CFErrorRef _quire_populate_resource_in_data_volume(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = *a3;
  v7 = _quire_remove_resource_from_data_volume(a1, a2);
  if (v7)
  {
    v8 = v7;
    if ((_CFErrorHasDomainAndCode(v7, @"com.apple.security.cryptex", 10) & 1) == 0)
    {
      v9 = *(v6 + 56);
      v10 = *__error();
      v11 = *(v6 + 72);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = "[anonymous]";
        v13 = *(a2 + 72);
        if (v9)
        {
          v12 = v9;
        }

        *buf = 136446722;
        v33 = v12;
        v34 = 2082;
        v35 = v13;
        v36 = 2112;
        v37 = v8;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%{public}s: Unbootstrap existing %{public}s: %@", buf, 0x20u);
      }

      *__error() = v10;
    }

    CFRelease(v8);
  }

  else
  {
    v14 = *(v6 + 56);
    v15 = *__error();
    v16 = *(v6 + 72);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      v17 = "[anonymous]";
      v18 = *(a2 + 72);
      if (v14)
      {
        v17 = v14;
      }

      *buf = 136446466;
      v33 = v17;
      v34 = 2082;
      v35 = v18;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "%{public}s: Unbootstrap existing %{public}s [no error]", buf, 0x16u);
    }

    *__error() = v15;
  }

  v19 = **(a2 + 48);
  if (v19 > 6)
  {
    if (v19 > 9)
    {
      if (v19 == 10)
      {
        v21 = _quire_bootstrap_feature_flags_domain;
      }

      else if (v19 == 11)
      {
        v21 = _quire_bootstrap_python_lib;
      }

      else
      {
        v21 = _quire_bootstrap_astro;
      }

      goto LABEL_30;
    }

    if (v19 == 7)
    {
      v21 = _quire_bootstrap_log_plist;
      goto LABEL_30;
    }

    if (v19 != 8)
    {
      v21 = _quire_bootstrap_luacore_lib;
      goto LABEL_30;
    }

    goto LABEL_22;
  }

  v20 = _quire_bootstrap_library;
  if (v19 > 4)
  {
    goto LABEL_31;
  }

  if ((v19 - 2) < 3)
  {
LABEL_22:
    v22 = *(a2 + 72);
    *buf = 136446210;
    v33 = v22;
    v23 = _os_log_send_and_compose_impl(2, 0, 0, 0, &_mh_execute_header, &_os_log_default, 16, "Populating %{public}s in Data volume is unsupported", buf, 12);
    Error = createError("_quire_populate_resource_in_data_volume", "quire.c", 2214, "com.apple.security.cryptex", 10, 0, v23);
    free(v23);
    return Error;
  }

  if (v19)
  {
    v21 = _quire_bootstrap_binary;
LABEL_30:
    v20 = v21;
  }

LABEL_31:
  Error = v20(a1, a2, a3);
  if (*(v6 + 56))
  {
    v25 = *(v6 + 56);
  }

  else
  {
    v25 = "[anonymous]";
  }

  v26 = *__error();
  v27 = *(v6 + 72);
  if (Error)
  {
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = *(a2 + 72);
      *buf = 136446722;
      v33 = v25;
      v34 = 2082;
      v35 = v28;
      v36 = 2112;
      v37 = Error;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "%{public}s: Bootstrap %{public}s: %@", buf, 0x20u);
    }

    v29 = __error();
  }

  else
  {
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      v30 = *(a2 + 72);
      *buf = 136446466;
      v33 = v25;
      v34 = 2082;
      v35 = v30;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEBUG, "%{public}s: Bootstrap %{public}s [no error]", buf, 0x16u);
    }

    v29 = __error();
    Error = 0;
  }

  *v29 = v26;
  return Error;
}

uint64_t _quire_bootstrap_library(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  bzero(v43, 0x400uLL);
  bzero(__str, 0x400uLL);
  v6 = realpath_np();
  if (v6)
  {
    v7 = v6;
    v8 = v6;
    v9 = *(v5 + 72);
    if (v9)
    {
      if (os_log_type_enabled(*(v5 + 72), OS_LOG_TYPE_ERROR))
      {
        v10 = 3;
      }

      else
      {
        v10 = 2;
      }

      v11 = *(v5 + 56);
      v12 = *(a2 + 72);
      *v40 = 136446722;
      if (!v11)
      {
        v11 = "[anonymous]";
      }

      *&v40[4] = v11;
      *&v40[12] = 2080;
      *&v40[14] = v12;
      *&v40[22] = 1024;
      LODWORD(v41) = v7;
      v13 = _os_log_send_and_compose_impl(v10, 0, 0, 0, &_mh_execute_header, v9, 16, "%{public}s: failed to get abs path for %s %{darwin.errno}d", v40, 28, *v40, *&v40[8], v41);
    }

    else
    {
      v21 = *(v5 + 56);
      if (!v21)
      {
        v21 = "[anonymous]";
      }

      v22 = *(a2 + 72);
      *v40 = 136446722;
      *&v40[4] = v21;
      *&v40[12] = 2080;
      *&v40[14] = v22;
      *&v40[22] = 1024;
      LODWORD(v41) = v6;
      v13 = _os_log_send_and_compose_impl(2, 0, 0, 0, &_mh_execute_header, &_os_log_default, 16, "%{public}s: failed to get abs path for %s %{darwin.errno}d", v40, 28, *v40, *&v40[8], v41);
    }

    v23 = v13;
    v24 = 1578;
LABEL_27:
    Error = createError("_quire_bootstrap_library", "quire.c", v24, "com.apple.security.cryptex.posix", v8, 0, v23);
    free(v23);
    return Error;
  }

  v14 = fs_symlinkat(v43, *(a3 + 12), *(a2 + 72), 2);
  if (v14)
  {
    v15 = v14;
    v8 = v14;
    v16 = *(v5 + 72);
    if (v16)
    {
      if (os_log_type_enabled(*(v5 + 72), OS_LOG_TYPE_ERROR))
      {
        v17 = 3;
      }

      else
      {
        v17 = 2;
      }

      v18 = *(v5 + 56);
      v19 = *(a2 + 72);
      *v40 = 136446722;
      if (!v18)
      {
        v18 = "[anonymous]";
      }

      *&v40[4] = v18;
      *&v40[12] = 2080;
      *&v40[14] = v19;
      *&v40[22] = 1024;
      LODWORD(v41) = v15;
      v20 = _os_log_send_and_compose_impl(v17, 0, 0, 0, &_mh_execute_header, v16, 16, "%{public}s: failed to create symlink for %s %{darwin.errno}d", v40, 28, *v40, *&v40[8], v41);
    }

    else
    {
      v27 = *(v5 + 56);
      if (!v27)
      {
        v27 = "[anonymous]";
      }

      v28 = *(a2 + 72);
      *v40 = 136446722;
      *&v40[4] = v27;
      *&v40[12] = 2080;
      *&v40[14] = v28;
      *&v40[22] = 1024;
      LODWORD(v41) = v14;
      v20 = _os_log_send_and_compose_impl(2, 0, 0, 0, &_mh_execute_header, &_os_log_default, 16, "%{public}s: failed to create symlink for %s %{darwin.errno}d", v40, 28, *v40, *&v40[8], v41);
    }

    v23 = v20;
    v24 = 1586;
    goto LABEL_27;
  }

  snprintf(__str, 0x400uLL, "%s/%s", a3[7], *(a2 + 72));
  v25 = openat(*(a3 + 12), *(a2 + 72), 0x200000);
  if ((v25 & 0x80000000) == 0)
  {
    Error = cryptex_core_write_metadata_to_xattrs();
LABEL_41:
    if (close(v25) == -1)
    {
      daemon_init_cold_13(v40, __str);
    }

    return Error;
  }

  v30 = *__error();
  v31 = *(v5 + 72);
  if (v31)
  {
    v32 = os_log_type_enabled(*(v5 + 72), OS_LOG_TYPE_ERROR);
    v33 = *(v5 + 56);
    if (v32)
    {
      v34 = 3;
    }

    else
    {
      v34 = 2;
    }

    *v40 = 136446722;
    if (v33)
    {
      v35 = v33;
    }

    else
    {
      v35 = "[anonymous]";
    }

    *&v40[4] = v35;
    *&v40[12] = 2080;
    *&v40[14] = __str;
    *&v40[22] = 1024;
    LODWORD(v41) = v30;
    LODWORD(v39) = 28;
    v36 = _os_log_send_and_compose_impl(v34, 0, 0, 0, &_mh_execute_header, v31, 16, "%{public}s: failed to open symlink at %s %{darwin.errno}d", COERCE_DOUBLE(136446722), v40, v39, *v40, *&v40[8], v41);
  }

  else
  {
    v37 = "[anonymous]";
    if (*(v5 + 56))
    {
      v37 = *(v5 + 56);
    }

    *v40 = 136446722;
    *&v40[4] = v37;
    *&v40[12] = 2080;
    *&v40[14] = __str;
    *&v40[22] = 1024;
    LODWORD(v41) = v30;
    LODWORD(v39) = 28;
    v36 = _os_log_send_and_compose_impl(2, 0, 0, 0, &_mh_execute_header, &_os_log_default, 16, "%{public}s: failed to open symlink at %s %{darwin.errno}d", COERCE_DOUBLE(136446722), v40, v39, *v40, *&v40[8], v41);
  }

  v38 = v36;
  Error = createError("_quire_bootstrap_library", "quire.c", 1596, "com.apple.security.cryptex.posix", v30, 0, v36);
  free(v38);
  if (v25 != -1)
  {
    goto LABEL_41;
  }

  return Error;
}

uint64_t _quire_bootstrap_binary(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3[7];
  v5 = *a3;
  v6 = bin_trampoline_write(*(*a3 + 208), v4, *(a2 + 72), v4, (_cryptex_content_type_factory[2] & *(*a3 + 320)) != 0);
  if (v6)
  {
    v7 = v6;
    v8 = v6;
    v9 = *(v5 + 72);
    if (v9)
    {
      if (os_log_type_enabled(*(v5 + 72), OS_LOG_TYPE_ERROR))
      {
        v10 = 3;
      }

      else
      {
        v10 = 2;
      }

      v11 = *(v5 + 56);
      v12 = *(a2 + 72);
      v41 = 136446722;
      if (!v11)
      {
        v11 = "[anonymous]";
      }

      v42 = v11;
      v43 = 2080;
      v44 = v12;
      v45 = 1024;
      v46 = v7;
      v13 = _os_log_send_and_compose_impl(v10, 0, 0, 0, &_mh_execute_header, v9, 16, "%{public}s: failed to create trampoline for %s %{darwin.errno}d", &v41, 28);
    }

    else
    {
      v18 = *(v5 + 56);
      if (!v18)
      {
        v18 = "[anonymous]";
      }

      v19 = *(a2 + 72);
      v41 = 136446722;
      v42 = v18;
      v43 = 2080;
      v44 = v19;
      v45 = 1024;
      v46 = v6;
      v13 = _os_log_send_and_compose_impl(2, 0, 0, 0, &_mh_execute_header, &_os_log_default, 16, "%{public}s: failed to create trampoline for %s %{darwin.errno}d", &v41, 28);
    }

    v20 = v13;
    Error = createError("_quire_bootstrap_binary_to", "quire.c", 1807, "com.apple.security.cryptex.posix", v8, 0, v13);
    free(v20);
    return Error;
  }

  v14 = open(v4, 0);
  v15 = v14;
  if ((v14 & 0x80000000) == 0)
  {
    v16 = openat(v14, *(a2 + 72), 0);
    if (v16 < 0)
    {
      v28 = *__error();
      v29 = *(v5 + 72);
      if (v29)
      {
        if (os_log_type_enabled(*(v5 + 72), OS_LOG_TYPE_ERROR))
        {
          v30 = 3;
        }

        else
        {
          v30 = 2;
        }

        v31 = *(v5 + 56);
        v32 = *(a2 + 72);
        v41 = 136446722;
        if (!v31)
        {
          v31 = "[anonymous]";
        }

        v42 = v31;
        v43 = 2080;
        v44 = v32;
        v45 = 1024;
        v46 = v28;
        v33 = _os_log_send_and_compose_impl(v30, 0, 0, 0, &_mh_execute_header, v29, 16, "%{public}s: failed to open trampoline for %s %{darwin.errno}d", &v41, 28);
      }

      else
      {
        v37 = *(v5 + 56);
        if (!v37)
        {
          v37 = "[anonymous]";
        }

        v38 = *(a2 + 72);
        v41 = 136446722;
        v42 = v37;
        v43 = 2080;
        v44 = v38;
        v45 = 1024;
        v46 = v28;
        v33 = _os_log_send_and_compose_impl(2, 0, 0, 0, &_mh_execute_header, &_os_log_default, 16, "%{public}s: failed to open trampoline for %s %{darwin.errno}d", &v41, 28);
      }

      v39 = v33;
      Error = createError("_quire_bootstrap_binary_to", "quire.c", 1823, "com.apple.security.cryptex.posix", v28, 0, v33);
      free(v39);
    }

    else
    {
      Error = cryptex_core_write_metadata_to_xattrs();
    }

    if (close(v15) != -1)
    {
      if (v16 != -1 && close(v16) == -1)
      {
        daemon_init_cold_13(&v40, &v41);
      }

      return Error;
    }

LABEL_45:
    daemon_init_cold_13(&v40, &v41);
  }

  v22 = *__error();
  v23 = *(v5 + 72);
  if (v23)
  {
    if (os_log_type_enabled(*(v5 + 72), OS_LOG_TYPE_ERROR))
    {
      v24 = 3;
    }

    else
    {
      v24 = 2;
    }

    v25 = *(v5 + 56);
    v26 = *(a2 + 72);
    v41 = 136446722;
    if (!v25)
    {
      v25 = "[anonymous]";
    }

    v42 = v25;
    v43 = 2080;
    v44 = v26;
    v45 = 1024;
    v46 = v22;
    v27 = _os_log_send_and_compose_impl(v24, 0, 0, 0, &_mh_execute_header, v23, 16, "%{public}s: failed to open destination path for %s %{darwin.errno}d", &v41, 28);
  }

  else
  {
    v34 = *(v5 + 56);
    if (!v34)
    {
      v34 = "[anonymous]";
    }

    v35 = *(a2 + 72);
    v41 = 136446722;
    v42 = v34;
    v43 = 2080;
    v44 = v35;
    v45 = 1024;
    v46 = v22;
    v27 = _os_log_send_and_compose_impl(2, 0, 0, 0, &_mh_execute_header, &_os_log_default, 16, "%{public}s: failed to open destination path for %s %{darwin.errno}d", &v41, 28);
  }

  v36 = v27;
  Error = createError("_quire_bootstrap_binary_to", "quire.c", 1815, "com.apple.security.cryptex.posix", v22, 0, v27);
  free(v36);
  if (v15 != -1 && close(v15) == -1)
  {
    goto LABEL_45;
  }

  return Error;
}

uint64_t _quire_bootstrap_log_plist(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a3;
  bzero(from, 0x400uLL);
  bzero(__str, 0x400uLL);
  v5 = realpath_np();
  if (v5)
  {
    v6 = v5;
    v7 = v5;
    v8 = *(v4 + 72);
    if (v8)
    {
      if (os_log_type_enabled(*(v4 + 72), OS_LOG_TYPE_ERROR))
      {
        v9 = 3;
      }

      else
      {
        v9 = 2;
      }

      v10 = *(v4 + 56);
      v11 = *(a2 + 72);
      *buf = 136446722;
      if (!v10)
      {
        v10 = "[anonymous]";
      }

      v45 = v10;
      v46 = 2080;
      v47 = v11;
      v48 = 1024;
      LODWORD(v49) = v6;
      v12 = _os_log_send_and_compose_impl(v9, 0, 0, 0, &_mh_execute_header, v8, 16, "%{public}s: failed to get abs path for %s %{darwin.errno}d", buf, 28);
    }

    else
    {
      v20 = *(v4 + 56);
      if (!v20)
      {
        v20 = "[anonymous]";
      }

      v21 = *(a2 + 72);
      *buf = 136446722;
      v45 = v20;
      v46 = 2080;
      v47 = v21;
      v48 = 1024;
      LODWORD(v49) = v5;
      v12 = _os_log_send_and_compose_impl(2, 0, 0, 0, &_mh_execute_header, &_os_log_default, 16, "%{public}s: failed to get abs path for %s %{darwin.errno}d", buf, 28);
    }

    v22 = v12;
    v23 = 1732;
LABEL_19:
    Error = createError("_quire_bootstrap_log_plist", "quire.c", v23, "com.apple.security.cryptex.posix", v7, 0, v22);
    free(v22);
    return Error;
  }

  v13 = basename(*(a2 + 72));
  snprintf(__str, 0x400uLL, "%s/%s", "/Library/Preferences/Logging/Subsystems", v13);
  if (copyfile(from, __str, 0, 0xE0008u))
  {
    v14 = *__error();
    if (v14)
    {
      v7 = v14;
      v15 = *(v4 + 56);
      v16 = *__error();
      v17 = *(v4 + 72);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = "[anonymous]";
        v19 = *(a2 + 72);
        if (v15)
        {
          v18 = v15;
        }

        *buf = 136446978;
        v45 = v18;
        v46 = 2082;
        v47 = v19;
        v48 = 2082;
        v49 = __str;
        v50 = 1024;
        v51 = v14;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%{public}s: copyfile %{public}s to %{public}s: %{darwin.errno}d", buf, 0x26u);
      }

      *__error() = v16;
      v36 = *(a2 + 72);
      *buf = 136446722;
      v45 = v36;
      v46 = 2082;
      v47 = __str;
      v48 = 1024;
      LODWORD(v49) = v14;
      LODWORD(v40) = 28;
      v22 = _os_log_send_and_compose_impl(2, 0, 0, 0, &_mh_execute_header, &_os_log_default, 16, "failed to copy %{public}s to %{public}s %{darwin.errno}d", buf, v40);
      v23 = 1744;
      goto LABEL_19;
    }
  }

  v25 = *(v4 + 56);
  v26 = *__error();
  v27 = *(v4 + 72);
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
  {
    v28 = "[anonymous]";
    v29 = *(a2 + 72);
    if (v25)
    {
      v28 = v25;
    }

    *buf = 136446722;
    v45 = v28;
    v46 = 2082;
    v47 = v29;
    v48 = 2082;
    v49 = __str;
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEBUG, "%{public}s: copyfile %{public}s to %{public}s: success", buf, 0x20u);
  }

  *__error() = v26;
  v30 = open(__str, 256);
  if ((v30 & 0x80000000) == 0)
  {
    Error = cryptex_core_write_metadata_to_xattrs();
LABEL_38:
    if (close(v30) == -1)
    {
      daemon_init_cold_13(v41, buf);
    }

    return Error;
  }

  v31 = *__error();
  v32 = *(v4 + 72);
  if (v32)
  {
    if (os_log_type_enabled(*(v4 + 72), OS_LOG_TYPE_ERROR))
    {
      v33 = 3;
    }

    else
    {
      v33 = 2;
    }

    v34 = *(v4 + 56);
    if (!v34)
    {
      v34 = "[anonymous]";
    }

    *buf = 136446466;
    v45 = v34;
    v46 = 1024;
    LODWORD(v47) = v31;
    LODWORD(v40) = 18;
    v35 = _os_log_send_and_compose_impl(v33, 0, 0, 0, &_mh_execute_header, v32, 16, "%{public}s: failed to open logging profile plist %{darwin.errno}d", COERCE_DOUBLE(136446466), buf, v40);
  }

  else
  {
    v37 = *(v4 + 56);
    if (!v37)
    {
      v37 = "[anonymous]";
    }

    *buf = 136446466;
    v45 = v37;
    v46 = 1024;
    LODWORD(v47) = v31;
    LODWORD(v40) = 18;
    v35 = _os_log_send_and_compose_impl(2, 0, 0, 0, &_mh_execute_header, &_os_log_default, 16, "%{public}s: failed to open logging profile plist %{darwin.errno}d", COERCE_DOUBLE(136446466), buf, v40);
  }

  v38 = v35;
  Error = createError("_quire_bootstrap_log_plist", "quire.c", 1752, "com.apple.security.cryptex.posix", v31, 0, v35);
  free(v38);
  if (v30 != -1)
  {
    goto LABEL_38;
  }

  return Error;
}

CFErrorRef _quire_bootstrap_luacore_lib(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a3;
  bzero(v34, 0x400uLL);
  v5 = realpath_np();
  if (v5)
  {
    v6 = v5;
    v7 = v5;
    v8 = *(v4 + 72);
    if (v8)
    {
      if (os_log_type_enabled(*(v4 + 72), OS_LOG_TYPE_ERROR))
      {
        v9 = 3;
      }

      else
      {
        v9 = 2;
      }

      v10 = *(v4 + 56);
      v11 = *(a2 + 72);
      *buf = 136446722;
      if (!v10)
      {
        v10 = "[anonymous]";
      }

      *&buf[4] = v10;
      *&buf[12] = 2080;
      *&buf[14] = v11;
      *&buf[22] = 1024;
      LODWORD(v33) = v6;
      v12 = _os_log_send_and_compose_impl(v9, 0, 0, 0, &_mh_execute_header, v8, 16, "%{public}s: failed to get abs path for %s %{darwin.errno}d", buf, 28, *buf, *&buf[8], v33);
    }

    else
    {
      v20 = *(v4 + 56);
      if (!v20)
      {
        v20 = "[anonymous]";
      }

      v21 = *(a2 + 72);
      *buf = 136446722;
      *&buf[4] = v20;
      *&buf[12] = 2080;
      *&buf[14] = v21;
      *&buf[22] = 1024;
      LODWORD(v33) = v5;
      v12 = _os_log_send_and_compose_impl(2, 0, 0, 0, &_mh_execute_header, &_os_log_default, 16, "%{public}s: failed to get abs path for %s %{darwin.errno}d", buf, 28, *buf, *&buf[8], v33);
    }

    v22 = v12;
    v23 = 1983;
LABEL_22:
    Error = createError("_quire_bootstrap_luacore_lib", "quire.c", v23, "com.apple.security.cryptex.posix", v7, 0, v22);
    free(v22);
    return Error;
  }

  if (access(*(a2 + 72), 0))
  {
    v13 = fs_symlink(v34, *(a2 + 72), 6);
    if (!v13)
    {
      return 0;
    }

    v14 = v13;
    v7 = v13;
    v15 = *(v4 + 72);
    if (v15)
    {
      if (os_log_type_enabled(*(v4 + 72), OS_LOG_TYPE_ERROR))
      {
        v16 = 3;
      }

      else
      {
        v16 = 2;
      }

      v17 = *(v4 + 56);
      v18 = *(a2 + 72);
      *buf = 136446722;
      if (!v17)
      {
        v17 = "[anonymous]";
      }

      *&buf[4] = v17;
      *&buf[12] = 2080;
      *&buf[14] = v18;
      *&buf[22] = 1024;
      LODWORD(v33) = v14;
      v19 = _os_log_send_and_compose_impl(v16, 0, 0, 0, &_mh_execute_header, v15, 16, "%{public}s: failed to create symlink for %s %{darwin.errno}d", buf, 28, *buf, *&buf[8], v33);
    }

    else
    {
      v30 = *(v4 + 56);
      if (!v30)
      {
        v30 = "[anonymous]";
      }

      v31 = *(a2 + 72);
      *buf = 136446722;
      *&buf[4] = v30;
      *&buf[12] = 2080;
      *&buf[14] = v31;
      *&buf[22] = 1024;
      LODWORD(v33) = v13;
      v19 = _os_log_send_and_compose_impl(2, 0, 0, 0, &_mh_execute_header, &_os_log_default, 16, "%{public}s: failed to create symlink for %s %{darwin.errno}d", buf, 28, *buf, *&buf[8], v33);
    }

    v22 = v19;
    v23 = 1995;
    goto LABEL_22;
  }

  v26 = *(v4 + 56);
  v27 = *__error();
  v28 = *(v4 + 72);
  if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
  {
    v29 = "[anonymous]";
    if (v26)
    {
      v29 = v26;
    }

    *buf = 136446210;
    *&buf[4] = v29;
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "%{public}s: symlink exists, skipping", buf, 0xCu);
  }

  Error = 0;
  *__error() = v27;
  return Error;
}

uint64_t _quire_bootstrap_feature_flags_domain(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a3;
  bzero(from, 0x400uLL);
  bzero(__str, 0x400uLL);
  v5 = realpath_np();
  if (v5)
  {
    v6 = v5;
    v7 = v5;
    v8 = *(v4 + 72);
    if (v8)
    {
      if (os_log_type_enabled(*(v4 + 72), OS_LOG_TYPE_ERROR))
      {
        v9 = 3;
      }

      else
      {
        v9 = 2;
      }

      v10 = *(v4 + 56);
      v11 = *(a2 + 72);
      v50 = 136446722;
      if (!v10)
      {
        v10 = "[anonymous]";
      }

      v51 = v10;
      v52 = 2080;
      v53 = v11;
      v54 = 1024;
      LODWORD(v55) = v6;
      v12 = _os_log_send_and_compose_impl(v9, 0, 0, 0, &_mh_execute_header, v8, 16, "%{public}s: failed to get abs path for %s %{darwin.errno}d", &v50, 28);
    }

    else
    {
      v23 = *(v4 + 56);
      if (!v23)
      {
        v23 = "[anonymous]";
      }

      v24 = *(a2 + 72);
      v50 = 136446722;
      v51 = v23;
      v52 = 2080;
      v53 = v24;
      v54 = 1024;
      LODWORD(v55) = v5;
      v12 = _os_log_send_and_compose_impl(2, 0, 0, 0, &_mh_execute_header, &_os_log_default, 16, "%{public}s: failed to get abs path for %s %{darwin.errno}d", &v50, 28);
    }

    v25 = v12;
    v26 = 2794;
    v27 = v7;
    goto LABEL_24;
  }

  v13 = mkpath_np("/Library/Preferences/FeatureFlags/Domain", 0x1FFu);
  if (v13)
  {
    v14 = v13;
    if (v13 != 17)
    {
      v30 = *(v4 + 72);
      if (v30)
      {
        if (os_log_type_enabled(*(v4 + 72), OS_LOG_TYPE_ERROR))
        {
          v31 = 3;
        }

        else
        {
          v31 = 2;
        }

        v32 = *(v4 + 56);
        v50 = 136446722;
        if (!v32)
        {
          v32 = "[anonymous]";
        }

        v51 = v32;
        v52 = 2080;
        v53 = "/Library/Preferences/FeatureFlags/Domain";
        v54 = 1024;
        LODWORD(v55) = v14;
        v33 = _os_log_send_and_compose_impl(v31, 0, 0, 0, &_mh_execute_header, v30, 16, "%{public}s: failed to create directory: %s %{darwin.errno}d", &v50, 28);
      }

      else
      {
        v38 = *(v4 + 56);
        if (!v38)
        {
          v38 = "[anonymous]";
        }

        v50 = 136446722;
        v51 = v38;
        v52 = 2080;
        v53 = "/Library/Preferences/FeatureFlags/Domain";
        v54 = 1024;
        LODWORD(v55) = v13;
        v33 = _os_log_send_and_compose_impl(2, 0, 0, 0, &_mh_execute_header, &_os_log_default, 16, "%{public}s: failed to create directory: %s %{darwin.errno}d", &v50, 28);
      }

      v25 = v33;
      v26 = 2802;
      v27 = v14;
      goto LABEL_24;
    }
  }

  v15 = basename(*(a2 + 72));
  snprintf(__str, 0x400uLL, "%s/%s", "/Library/Preferences/FeatureFlags/Domain", v15);
  if (copyfile(from, __str, 0, 0xE0008u))
  {
    v16 = *__error();
    v17 = *(v4 + 72);
    if (v17)
    {
      if (os_log_type_enabled(*(v4 + 72), OS_LOG_TYPE_ERROR))
      {
        v18 = 3;
      }

      else
      {
        v18 = 2;
      }

      if (*(v4 + 56))
      {
        v19 = *(v4 + 56);
      }

      else
      {
        v19 = "[anonymous]";
      }

      v20 = *(a2 + 72);
      v21 = *__error();
      v50 = 136446978;
      v51 = v19;
      v52 = 2080;
      v53 = v20;
      v54 = 2080;
      v55 = "/Library/Preferences/FeatureFlags/Domain";
      v56 = 1024;
      v57 = v21;
      LODWORD(v46) = 38;
      v22 = _os_log_send_and_compose_impl(v18, 0, 0, 0, &_mh_execute_header, v17, 16, "%{public}s: failed to copy %s to %s %{darwin.errno}d", &v50, v46);
    }

    else
    {
      if (*(v4 + 56))
      {
        v35 = *(v4 + 56);
      }

      else
      {
        v35 = "[anonymous]";
      }

      v36 = *(a2 + 72);
      v37 = *__error();
      v50 = 136446978;
      v51 = v35;
      v52 = 2080;
      v53 = v36;
      v54 = 2080;
      v55 = "/Library/Preferences/FeatureFlags/Domain";
      v56 = 1024;
      v57 = v37;
      LODWORD(v46) = 38;
      v22 = _os_log_send_and_compose_impl(2, 0, 0, 0, &_mh_execute_header, &_os_log_default, 16, "%{public}s: failed to copy %s to %s %{darwin.errno}d", &v50, v46);
    }

    v25 = v22;
    v26 = 2812;
    v27 = v16;
LABEL_24:
    Error = createError("_quire_bootstrap_feature_flags_domain", "quire.c", v26, "com.apple.security.cryptex.posix", v27, 0, v25);
    free(v25);
    return Error;
  }

  v34 = open(__str, 256);
  if ((v34 & 0x80000000) == 0)
  {
    Error = cryptex_core_write_metadata_to_xattrs();
LABEL_55:
    if (close(v34) == -1)
    {
      daemon_init_cold_13(&v47, &v50);
    }

    return Error;
  }

  v39 = *__error();
  v40 = *(v4 + 72);
  if (v40)
  {
    if (os_log_type_enabled(*(v4 + 72), OS_LOG_TYPE_ERROR))
    {
      v41 = 3;
    }

    else
    {
      v41 = 2;
    }

    v42 = *(v4 + 56);
    if (!v42)
    {
      v42 = "[anonymous]";
    }

    v50 = 136446466;
    v51 = v42;
    v52 = 1024;
    LODWORD(v53) = v39;
    LODWORD(v46) = 18;
    v43 = _os_log_send_and_compose_impl(v41, 0, 0, 0, &_mh_execute_header, v40, 16, "%{public}s: failed to open feature flag file %{darwin.errno}d", COERCE_DOUBLE(136446466), &v50, v46);
  }

  else
  {
    v44 = *(v4 + 56);
    if (!v44)
    {
      v44 = "[anonymous]";
    }

    v50 = 136446466;
    v51 = v44;
    v52 = 1024;
    LODWORD(v53) = v39;
    LODWORD(v46) = 18;
    v43 = _os_log_send_and_compose_impl(2, 0, 0, 0, &_mh_execute_header, &_os_log_default, 16, "%{public}s: failed to open feature flag file %{darwin.errno}d", COERCE_DOUBLE(136446466), &v50, v46);
  }

  v45 = v43;
  Error = createError("_quire_bootstrap_feature_flags_domain", "quire.c", 2820, "com.apple.security.cryptex.posix", v39, 0, v43);
  free(v45);
  if (v34 != -1)
  {
    goto LABEL_55;
  }

  return Error;
}

CFErrorRef _quire_bootstrap_python_lib(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  bzero(v31, 0x400uLL);
  v6 = realpath_np();
  if (v6)
  {
    v7 = v6;
    v8 = v6;
    v9 = *(v5 + 72);
    if (v9)
    {
      if (os_log_type_enabled(*(v5 + 72), OS_LOG_TYPE_ERROR))
      {
        v10 = 3;
      }

      else
      {
        v10 = 2;
      }

      v11 = *(v5 + 56);
      v12 = *(a2 + 72);
      *v29 = 136446722;
      if (!v11)
      {
        v11 = "[anonymous]";
      }

      *&v29[4] = v11;
      *&v29[12] = 2080;
      *&v29[14] = v12;
      *&v29[22] = 1024;
      LODWORD(v30) = v7;
      v13 = _os_log_send_and_compose_impl(v10, 0, 0, 0, &_mh_execute_header, v9, 16, "%{public}s: failed to get abs path for %s %{darwin.errno}d", v29, 28, *v29, *&v29[8], v30);
    }

    else
    {
      v21 = *(v5 + 56);
      if (!v21)
      {
        v21 = "[anonymous]";
      }

      v22 = *(a2 + 72);
      *v29 = 136446722;
      *&v29[4] = v21;
      *&v29[12] = 2080;
      *&v29[14] = v22;
      *&v29[22] = 1024;
      LODWORD(v30) = v6;
      v13 = _os_log_send_and_compose_impl(2, 0, 0, 0, &_mh_execute_header, &_os_log_default, 16, "%{public}s: failed to get abs path for %s %{darwin.errno}d", v29, 28, *v29, *&v29[8], v30);
    }

    v23 = v13;
    v24 = 2018;
LABEL_26:
    Error = createError("_quire_bootstrap_python_lib", "quire.c", v24, "com.apple.security.cryptex.posix", v8, 0, v23);
    free(v23);
    return Error;
  }

  v14 = fs_symlinkat(v31, *(a3 + 12), *(a2 + 72), 6);
  if (v14)
  {
    v15 = v14;
    v8 = v14;
    v16 = *(v5 + 72);
    if (v16)
    {
      if (os_log_type_enabled(*(v5 + 72), OS_LOG_TYPE_ERROR))
      {
        v17 = 3;
      }

      else
      {
        v17 = 2;
      }

      v18 = *(v5 + 56);
      v19 = *(a2 + 72);
      *v29 = 136446722;
      if (!v18)
      {
        v18 = "[anonymous]";
      }

      *&v29[4] = v18;
      *&v29[12] = 2080;
      *&v29[14] = v19;
      *&v29[22] = 1024;
      LODWORD(v30) = v15;
      v20 = _os_log_send_and_compose_impl(v17, 0, 0, 0, &_mh_execute_header, v16, 16, "%{public}s: failed to create symlink for %s %{darwin.errno}d", v29, 28, *v29, *&v29[8], v30);
    }

    else
    {
      v26 = *(v5 + 56);
      if (!v26)
      {
        v26 = "[anonymous]";
      }

      v27 = *(a2 + 72);
      *v29 = 136446722;
      *&v29[4] = v26;
      *&v29[12] = 2080;
      *&v29[14] = v27;
      *&v29[22] = 1024;
      LODWORD(v30) = v14;
      v20 = _os_log_send_and_compose_impl(2, 0, 0, 0, &_mh_execute_header, &_os_log_default, 16, "%{public}s: failed to create symlink for %s %{darwin.errno}d", v29, 28, *v29, *&v29[8], v30);
    }

    v23 = v20;
    v24 = 2027;
    goto LABEL_26;
  }

  return 0;
}

CFErrorRef _quire_bootstrap_astro(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a3;
  bzero(v34, 0x400uLL);
  v5 = realpath_np();
  if (v5)
  {
    v6 = v5;
    v7 = v5;
    v8 = *(v4 + 72);
    if (v8)
    {
      if (os_log_type_enabled(*(v4 + 72), OS_LOG_TYPE_ERROR))
      {
        v9 = 3;
      }

      else
      {
        v9 = 2;
      }

      v10 = *(v4 + 56);
      v11 = *(a2 + 72);
      *buf = 136446722;
      if (!v10)
      {
        v10 = "[anonymous]";
      }

      *&buf[4] = v10;
      *&buf[12] = 2080;
      *&buf[14] = v11;
      *&buf[22] = 1024;
      LODWORD(v33) = v6;
      v12 = _os_log_send_and_compose_impl(v9, 0, 0, 0, &_mh_execute_header, v8, 16, "%{public}s: failed to get abs path for %s %{darwin.errno}d", buf, 28, *buf, *&buf[8], v33);
    }

    else
    {
      v20 = *(v4 + 56);
      if (!v20)
      {
        v20 = "[anonymous]";
      }

      v21 = *(a2 + 72);
      *buf = 136446722;
      *&buf[4] = v20;
      *&buf[12] = 2080;
      *&buf[14] = v21;
      *&buf[22] = 1024;
      LODWORD(v33) = v5;
      v12 = _os_log_send_and_compose_impl(2, 0, 0, 0, &_mh_execute_header, &_os_log_default, 16, "%{public}s: failed to get abs path for %s %{darwin.errno}d", buf, 28, *buf, *&buf[8], v33);
    }

    v22 = v12;
    v23 = 2049;
LABEL_22:
    Error = createError("_quire_bootstrap_astro", "quire.c", v23, "com.apple.security.cryptex.posix", v7, 0, v22);
    free(v22);
    return Error;
  }

  if (access(*(a2 + 72), 0))
  {
    v13 = fs_symlink(v34, *(a2 + 72), 6);
    if (!v13)
    {
      return 0;
    }

    v14 = v13;
    v7 = v13;
    v15 = *(v4 + 72);
    if (v15)
    {
      if (os_log_type_enabled(*(v4 + 72), OS_LOG_TYPE_ERROR))
      {
        v16 = 3;
      }

      else
      {
        v16 = 2;
      }

      v17 = *(v4 + 56);
      v18 = *(a2 + 72);
      *buf = 136446722;
      if (!v17)
      {
        v17 = "[anonymous]";
      }

      *&buf[4] = v17;
      *&buf[12] = 2080;
      *&buf[14] = v18;
      *&buf[22] = 1024;
      LODWORD(v33) = v14;
      v19 = _os_log_send_and_compose_impl(v16, 0, 0, 0, &_mh_execute_header, v15, 16, "%{public}s: failed to create symlink for %s %{darwin.errno}d", buf, 28, *buf, *&buf[8], v33);
    }

    else
    {
      v30 = *(v4 + 56);
      if (!v30)
      {
        v30 = "[anonymous]";
      }

      v31 = *(a2 + 72);
      *buf = 136446722;
      *&buf[4] = v30;
      *&buf[12] = 2080;
      *&buf[14] = v31;
      *&buf[22] = 1024;
      LODWORD(v33) = v13;
      v19 = _os_log_send_and_compose_impl(2, 0, 0, 0, &_mh_execute_header, &_os_log_default, 16, "%{public}s: failed to create symlink for %s %{darwin.errno}d", buf, 28, *buf, *&buf[8], v33);
    }

    v22 = v19;
    v23 = 2061;
    goto LABEL_22;
  }

  v26 = *(v4 + 56);
  v27 = *__error();
  v28 = *(v4 + 72);
  if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
  {
    v29 = "[anonymous]";
    if (v26)
    {
      v29 = v26;
    }

    *buf = 136446210;
    *&buf[4] = v29;
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "%{public}s: symlink exists, skipping", buf, 0xCu);
  }

  Error = 0;
  *__error() = v27;
  return Error;
}

CFErrorRef _quire_bootstrap_diags(uint64_t a1)
{
  __chkstk_darwin(a1);
  v2 = v1;
  v4 = *v3;
  bzero(&v87, 0x878uLL);
  v79 = 0;
  memset(v86, 0, 255);
  memset(v85, 0, 255);
  bzero(v84, 0x400uLL);
  bzero(from, 0x400uLL);
  bzero(to, 0x400uLL);
  bzero(__str, 0x400uLL);
  __s1 = 0;
  v77 = 0;
  v5 = *(v4 + 56);
  v6 = *__error();
  v7 = *(v4 + 72);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = "[anonymous]";
    if (v5)
    {
      v8 = v5;
    }

    buf = 136446210;
    v89 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "%{public}s: bootstrapping diags", &buf, 0xCu);
  }

  *__error() = v6;
  if (statfs("/", &v87))
  {
    v9 = *__error();
    v10 = *(v4 + 56);
    v11 = *__error();
    v12 = *(v4 + 72);
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
LABEL_12:
      v17 = -1;
      goto LABEL_13;
    }

    v13 = "[anonymous]";
    if (v10)
    {
      v13 = v10;
    }

    buf = 136446466;
    v89 = v13;
    v90 = 1024;
    LODWORD(v91) = v9;
    v14 = "%{public}s: failed to statfs root path: %{darwin.errno}d";
    goto LABEL_10;
  }

  sscanf(v87.f_mntfromname, "/dev/disk%d", &v79);
  snprintf(v86, 0xFFuLL, "disk%d", v79);
  if (apfs_volume_role_exists(v86, 640))
  {
    v19 = apfs_volume_copy_formatter(640, &__s1, *(v4 + 72));
    if (v19)
    {
      v9 = v19;
      v20 = *(v4 + 56);
      v21 = *__error();
      v22 = *(v4 + 72);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v23 = "[anonymous]";
        if (v20)
        {
          v23 = v20;
        }

        buf = 136446466;
        v89 = v23;
        v90 = 1024;
        LODWORD(v91) = v9;
        v24 = "%{public}s: failed to copy diags volume formatter: %{darwin.errno}d";
LABEL_43:
        v35 = v22;
        v36 = 18;
LABEL_44:
        _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, v24, &buf, v36);
        goto LABEL_45;
      }

      goto LABEL_45;
    }

    if (!strstr(__s1, "cryptexd"))
    {
      v33 = *(v4 + 56);
      v21 = *__error();
      v22 = *(v4 + 72);
      v9 = 17;
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v34 = "[anonymous]";
        if (v33)
        {
          v34 = v33;
        }

        buf = 136446466;
        v89 = v34;
        v90 = 1024;
        LODWORD(v91) = 17;
        v24 = "%{public}s: diags volume already exists but not formatted by us: %{darwin.errno}d";
        goto LABEL_43;
      }

      goto LABEL_45;
    }

    if (access("/System/Volumes/Diags/AppleInternal/Diags", 1) || (snprintf(__str, 0x400uLL, "%s/.%s", "/System/Volumes/Diags/AppleInternal/Diags", *(v4 + 208)), access(__str, 0)))
    {
      v28 = *(v4 + 56);
      v21 = *__error();
      v22 = *(v4 + 72);
      v9 = 17;
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v29 = "[anonymous]";
        if (v28)
        {
          v29 = v28;
        }

        buf = 136446466;
        v89 = v29;
        v90 = 1024;
        LODWORD(v91) = 17;
        v24 = "%{public}s: diags volume already created by another cryptex install. please uninstall it first: %{darwin.errno}d";
        goto LABEL_43;
      }

LABEL_45:
      *__error() = v21;
      v17 = -1;
      goto LABEL_46;
    }

    v50 = *(v4 + 56);
    v51 = *__error();
    v52 = *(v4 + 72);
    if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
    {
      v53 = "[anonymous]";
      if (v50)
      {
        v53 = v50;
      }

      buf = 136446210;
      v89 = v53;
      _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEBUG, "%{public}s: diags volume already created", &buf, 0xCu);
    }

    *__error() = v51;
    *(v4 + 176) |= 0x20uLL;
    if (unlink("/AppleInternal/Diags") && *__error() != 2)
    {
      v9 = *__error();
      v61 = *(v4 + 56);
      v11 = *__error();
      v12 = *(v4 + 72);
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_12;
      }

      v62 = "[anonymous]";
      if (v61)
      {
        v62 = v61;
      }

      buf = 136446466;
      v89 = v62;
      v90 = 1024;
      LODWORD(v91) = v9;
      v14 = "%{public}s: failed to unlink diags symlink: %{darwin.errno}d";
    }

    else
    {
      if (!symlink("/System/Volumes/Diags/AppleInternal/Diags", "/AppleInternal/Diags") || *__error() == 17)
      {
        Error = 0;
        goto LABEL_59;
      }

      v9 = *__error();
      v63 = *(v4 + 56);
      v11 = *__error();
      v12 = *(v4 + 72);
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_12;
      }

      v64 = "[anonymous]";
      if (v63)
      {
        v64 = v63;
      }

      buf = 136446466;
      v89 = v64;
      v90 = 1024;
      LODWORD(v91) = v9;
      v14 = "%{public}s: failed to create symlink for diags: %{darwin.errno}d";
    }

LABEL_10:
    v15 = v12;
    v16 = 18;
LABEL_11:
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, v14, &buf, v16);
    goto LABEL_12;
  }

  v25 = apfs_volume_create(v86, "AppleInternalDiags", 640, &v77, *(v4 + 72));
  if (v25)
  {
    v9 = v25;
    v26 = *(v4 + 56);
    v21 = *__error();
    v22 = *(v4 + 72);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v27 = "[anonymous]";
      if (v26)
      {
        v27 = v26;
      }

      buf = 136446466;
      v89 = v27;
      v90 = 1024;
      LODWORD(v91) = v9;
      v24 = "%{public}s: failed to create diags volume: %{darwin.errno}d";
      goto LABEL_43;
    }

    goto LABEL_45;
  }

  *(v4 + 176) |= 0x20uLL;
  __strlcpy_chk();
  if (!mkdtemp(v84))
  {
    v9 = *__error();
    v44 = *(v4 + 56);
    v11 = *__error();
    v12 = *(v4 + 72);
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    v45 = "[anonymous]";
    if (v44)
    {
      v45 = v44;
    }

    buf = 136446466;
    v89 = v45;
    v90 = 1024;
    LODWORD(v91) = v9;
    v14 = "%{public}s: failed to create temporary mount point: %{darwin.errno}d";
    goto LABEL_10;
  }

  snprintf(v85, 0xFFuLL, "/dev/%ss%d", v86, v77);
  v30 = apfs_volume_mount(v85, v84, *(v4 + 72));
  if (v30)
  {
    v9 = v30;
    v31 = *(v4 + 56);
    v21 = *__error();
    v22 = *(v4 + 72);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v32 = "[anonymous]";
      if (v31)
      {
        v32 = v31;
      }

      buf = 136446466;
      v89 = v32;
      v90 = 1024;
      LODWORD(v91) = v9;
      v24 = "%{public}s: failed to mount diags volume: %{darwin.errno}d";
      goto LABEL_43;
    }

    goto LABEL_45;
  }

  snprintf(from, 0x400uLL, "%s/%s", *(v4 + 416), *(v2 + 72));
  snprintf(to, 0x400uLL, "%s/%s", v84, "AppleInternal");
  v46 = mkdir(to, 0x1FFu);
  if (v46)
  {
    v9 = v46;
    v47 = *(v4 + 56);
    v21 = *__error();
    v48 = *(v4 + 72);
    if (!os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_45;
    }

    v49 = "[anonymous]";
    buf = 136446722;
    if (v47)
    {
      v49 = v47;
    }

    v89 = v49;
    v90 = 2080;
    v91 = to;
    v92 = 1024;
    LODWORD(v93) = v9;
    v24 = "%{public}s: failed to mkdir %s: %{darwin.errno}d";
    v35 = v48;
    v36 = 28;
    goto LABEL_44;
  }

  if (copyfile(from, to, 0, 0xC8008u))
  {
    v9 = *__error();
    v54 = *(v4 + 56);
    v11 = *__error();
    v55 = *(v4 + 72);
    if (!os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    v56 = "[anonymous]";
    buf = 136446978;
    if (v54)
    {
      v56 = v54;
    }

    v89 = v56;
    v90 = 2080;
    v91 = from;
    v92 = 2080;
    v93 = to;
    v94 = 1024;
    v95 = v9;
    v14 = "%{public}s: failed to copyfile from %s to %s: %{darwin.errno}d";
    v15 = v55;
    v16 = 38;
    goto LABEL_11;
  }

  snprintf(__str, 0x400uLL, "%s/%s/.%s", v84, *(v2 + 72), *(v4 + 208));
  v17 = open(__str, 512, 420);
  if (v17 < 0)
  {
    v9 = *__error();
    v65 = *(v4 + 56);
    v11 = *__error();
    v66 = *(v4 + 72);
    if (!os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    v67 = "[anonymous]";
    buf = 136446722;
    if (v65)
    {
      v67 = v65;
    }

    v89 = v67;
    v90 = 2080;
    v91 = __str;
    v92 = 1024;
    LODWORD(v93) = v9;
    v68 = "%{public}s: failed to open %s: %{darwin.errno}d";
    v69 = v66;
    v70 = 28;
    goto LABEL_115;
  }

  if (unlink("/AppleInternal/Diags") && *__error() != 2)
  {
    v9 = *__error();
    v71 = *(v4 + 56);
    v11 = *__error();
    v72 = *(v4 + 72);
    if (!os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    v73 = "[anonymous]";
    if (v71)
    {
      v73 = v71;
    }

    buf = 136446466;
    v89 = v73;
    v90 = 1024;
    LODWORD(v91) = v9;
    v68 = "%{public}s: failed to unlink diags symlink: %{darwin.errno}d";
LABEL_114:
    v69 = v72;
    v70 = 18;
LABEL_115:
    _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_ERROR, v68, &buf, v70);
LABEL_13:
    *__error() = v11;
    if (!v9)
    {
      Error = 0;
      goto LABEL_57;
    }

LABEL_46:
    v37 = *(v4 + 72);
    if (v37)
    {
      if (os_log_type_enabled(*(v4 + 72), OS_LOG_TYPE_ERROR))
      {
        v38 = 3;
      }

      else
      {
        v38 = 2;
      }

      v39 = *(v4 + 56);
      if (!v39)
      {
        v39 = "[anonymous]";
      }

      buf = 136446466;
      v89 = v39;
      v90 = 1024;
      LODWORD(v91) = v9;
      LODWORD(v76) = 18;
      v40 = _os_log_send_and_compose_impl(v38, 0, 0, 0, &_mh_execute_header, v37, 16, "%{public}s: Failed to bootstrap quire libraries. %{darwin.errno}d", COERCE_DOUBLE(136446466), &buf, v76);
    }

    else
    {
      v41 = *(v4 + 56);
      if (!v41)
      {
        v41 = "[anonymous]";
      }

      buf = 136446466;
      v89 = v41;
      v90 = 1024;
      LODWORD(v91) = v9;
      LODWORD(v76) = 18;
      v40 = _os_log_send_and_compose_impl(2, 0, 0, 0, &_mh_execute_header, &_os_log_default, 16, "%{public}s: Failed to bootstrap quire libraries. %{darwin.errno}d", COERCE_DOUBLE(136446466), &buf, v76);
    }

    v42 = v40;
    Error = createError("_quire_bootstrap_diags", "quire.c", 2676, "com.apple.security.cryptex.posix", v9, 0, v40);
    free(v42);
LABEL_57:
    if (v17 == -1)
    {
      goto LABEL_59;
    }

    goto LABEL_58;
  }

  snprintf(to, 0x400uLL, "%s/%s", v84, *(v2 + 72));
  if (symlink(to, "/AppleInternal/Diags") && *__error() != 17)
  {
    v9 = *__error();
    v74 = *(v4 + 56);
    v11 = *__error();
    v72 = *(v4 + 72);
    if (!os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    v75 = "[anonymous]";
    if (v74)
    {
      v75 = v74;
    }

    buf = 136446466;
    v89 = v75;
    v90 = 1024;
    LODWORD(v91) = v9;
    v68 = "%{public}s: failed to create symlink for diags: %{darwin.errno}d";
    goto LABEL_114;
  }

  v57 = *(v4 + 56);
  v58 = *__error();
  v59 = *(v4 + 72);
  if (os_log_type_enabled(v59, OS_LOG_TYPE_DEBUG))
  {
    v60 = "[anonymous]";
    if (v57)
    {
      v60 = v57;
    }

    buf = 136446210;
    v89 = v60;
    _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEBUG, "%{public}s: bootstrap diags successfully", &buf, 0xCu);
  }

  Error = 0;
  *__error() = v58;
LABEL_58:
  if (close(v17) == -1)
  {
    daemon_init_cold_13(&v80, &buf);
  }

LABEL_59:
  free(__s1);
  return Error;
}

CFErrorRef _quire_read_agent(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a3;
  v5 = malloc_type_calloc(1uLL, 0xC8uLL, 0x8709206FuLL);
  if (!v5)
  {
    _quire_read_agent_cold_1(&v38, buf);
  }

  v6 = v5;
  *(v5 + 136) = 0u;
  v7 = v5 + 136;
  *(v5 + 23) = 0;
  *(v5 + 152) = 0u;
  *(v5 + 168) = 0u;
  v8 = *(v4 + 56);
  v9 = *__error();
  v10 = *(v4 + 72);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v11 = "[anonymous]";
    v12 = *(a2 + 56);
    if (v8)
    {
      v11 = v8;
    }

    *buf = 136446466;
    v40 = v11;
    v41 = 2080;
    v42 = v12;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "%{public}s: _quire_read_agent: processing agent: %s", buf, 0x16u);
  }

  *__error() = v9;
  if (*(v4 + 188))
  {
    v13 = *(v4 + 192);
    if (v13)
    {
      v14 = *(v4 + 188);
    }

    else
    {
      v14 = 0;
    }

    if (v13)
    {
      v15 = 24;
    }

    else
    {
      v13 = 0;
      v15 = 8;
    }
  }

  else
  {
    v14 = 0;
    v13 = 0;
    v15 = 8;
  }

  v6[2] = *(v4 + 416);
  v6[12] = 0;
  *(v6 + 26) = v14;
  v6[14] = *(v4 + 72);
  v6[15] = v13;
  *(v6 + 128) = 0;
  v16 = *(v4 + 472);
  if (v16)
  {
    v17 = *(v6 + 22);
    v18 = &v6[v17 + 3];
    do
    {
      *v18++ = *(*v16 + 416);
      v16 = v16[1];
      LODWORD(v17) = v17 + 1;
    }

    while (v16);
    *(v6 + 22) = v17;
  }

  v6[1] = v15;
  v19 = *(v4 + 56);
  v20 = *__error();
  v21 = *(v4 + 72);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    v22 = "[anonymous]";
    v23 = *(a2 + 56);
    if (v19)
    {
      v22 = v19;
    }

    *buf = 136446466;
    v40 = v22;
    v41 = 2080;
    v42 = v23;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEBUG, "%{public}s: reading agent plist: %s", buf, 0x16u);
  }

  *__error() = v20;
  file = _read_file(*(a2 + 80), v7);
  if (file)
  {
    v25 = file;
    v26 = file;
    v27 = *(v4 + 72);
    if (v27)
    {
      if (os_log_type_enabled(*(v4 + 72), OS_LOG_TYPE_ERROR))
      {
        v28 = 3;
      }

      else
      {
        v28 = 2;
      }

      v29 = *(v4 + 56);
      v30 = *(a2 + 56);
      *buf = 136446722;
      if (!v29)
      {
        v29 = "[anonymous]";
      }

      v40 = v29;
      v41 = 2080;
      v42 = v30;
      v43 = 1024;
      v44 = v25;
      v31 = _os_log_send_and_compose_impl(v28, 0, 0, 0, &_mh_execute_header, v27, 16, "%{public}s: failed to read agent: %s. %{darwin.errno}d", buf, 28);
    }

    else
    {
      v33 = *(v4 + 56);
      if (!v33)
      {
        v33 = "[anonymous]";
      }

      v34 = *(a2 + 56);
      *buf = 136446722;
      v40 = v33;
      v41 = 2080;
      v42 = v34;
      v43 = 1024;
      v44 = file;
      v31 = _os_log_send_and_compose_impl(2, 0, 0, 0, &_mh_execute_header, &_os_log_default, 16, "%{public}s: failed to read agent: %s. %{darwin.errno}d", buf, 28);
    }

    v35 = v31;
    Error = createError("_quire_read_agent", "quire.c", 998, "com.apple.security.cryptex.posix", v26, 0, v31);
    free(v35);
    if (Error)
    {
      buff_destroy(v7, v36);
      free(v6);
    }
  }

  else
  {
    _quire_activate(v4);
    Error = 0;
    *v6 = *(v4 + 456);
    *(v4 + 456) = v6;
  }

  return Error;
}

CFErrorRef _quire_bootstrap_service(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *a3;
  v63 = 0;
  v61 = 0u;
  v62 = 0u;
  v60 = 0u;
  v6 = *(v5 + 56);
  v7 = *__error();
  v8 = *(v5 + 72);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    if (v6)
    {
      v9 = v6;
    }

    else
    {
      v9 = "[anonymous]";
    }

    v10 = *(a2 + 56);
    LODWORD(buf[0]) = 136446466;
    *(buf + 4) = v9;
    WORD2(buf[1]) = 2080;
    *(&buf[1] + 6) = v10;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%{public}s: _quire_bootstrap_service: bootstrapping service: %s", buf, 0x16u);
  }

  *__error() = v7;
  v11 = *(v5 + 188);
  if (v11)
  {
    v12 = *(v5 + 192);
    if (v12)
    {
      v13 = 24;
      goto LABEL_12;
    }

    v11 = 0;
  }

  else
  {
    v12 = 0;
  }

  v13 = 8;
LABEL_12:
  if ((_cryptex_content_type_factory[2] & *(v5 + 320)) != 0)
  {
    v14 = v13 | 0x20;
  }

  else
  {
    v14 = v13;
  }

  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  memset(buf, 0, sizeof(buf));
  buf[1] = *(v5 + 416);
  LODWORD(v75) = v11;
  *(&v75 + 1) = *(v5 + 72);
  *&v76 = v12;
  BYTE8(v76) = quire_boot_session_test(v5, ".jobs-loaded");
  v15 = *(v5 + 472);
  if (v15)
  {
    v16 = 0;
    do
    {
      buf[v16++ + 2] = *(*v15 + 416);
      v15 = v15[1];
    }

    while (v15);
    LODWORD(v74) = v16;
  }

  v17 = *(*(v5 + 200) + 40);
  v18 = *(v5 + 56);
  v19 = *__error();
  v20 = *(v5 + 72);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    if (v18)
    {
      v21 = v18;
    }

    else
    {
      v21 = "[anonymous]";
    }

    v22 = *(a2 + 56);
    *v64 = 136446466;
    v65 = v21;
    v66 = 2080;
    v67 = v22;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "%{public}s: bootstrapping service: %s", v64, 0x16u);
  }

  *__error() = v19;
  v23 = _read_file(*(a2 + 80), &v60);
  if (v23)
  {
    v24 = v23;
    v25 = *(v5 + 56);
    v26 = *__error();
    v27 = *(v5 + 72);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      if (v25)
      {
        v28 = v25;
      }

      else
      {
        v28 = "[anonymous]";
      }

      *v64 = 136446466;
      v65 = v28;
      v66 = 1024;
      LODWORD(v67) = v24;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "%{public}s: failed to read plist: %{darwin.errno}d", v64, 0x12u);
    }

    *__error() = v26;
    buff_destroy(&v60, v29);
    v30 = *(v5 + 72);
    if (v30)
    {
      if (os_log_type_enabled(*(v5 + 72), OS_LOG_TYPE_ERROR))
      {
        v31 = 3;
      }

      else
      {
        v31 = 2;
      }

      v32 = *(v5 + 56);
      v33 = *(a2 + 56);
      if (!v32)
      {
        v32 = "[anonymous]";
      }

      *v64 = 136446722;
      v65 = v32;
      v66 = 2080;
      v67 = v33;
      v68 = 1024;
      v69 = v24;
      v34 = _os_log_send_and_compose_impl(v31, 0, 0, 0, &_mh_execute_header, v30, 16, "%{public}s: Failed to bootstrap plist: %s. %{darwin.errno}d", COERCE_DOUBLE(136446722), v64, 28, v60, v61, v62, v63);
    }

    else
    {
      v51 = *(v5 + 56);
      if (!v51)
      {
        v51 = "[anonymous]";
      }

      v52 = *(a2 + 56);
      *v64 = 136446722;
      v65 = v51;
      v66 = 2080;
      v67 = v52;
      v68 = 1024;
      v69 = v24;
      v34 = _os_log_send_and_compose_impl(2, 0, 0, 0, &_mh_execute_header, &_os_log_default, 16, "%{public}s: Failed to bootstrap plist: %s. %{darwin.errno}d", COERCE_DOUBLE(136446722), v64, 28, v60, v61, v62, v63);
    }

    v53 = v34;
    Error = createError("_quire_bootstrap_service", "quire.c", 904, "com.apple.security.cryptex.posix", v24, 0, v34);
    free(v53);
  }

  else
  {
    buf[0] = v14 & 0xFFFFFFFFFFFFFFBFLL | (((v17 >> 1) & 1) << 6);
    v35 = sm_pending_service_create(0);
    v37 = v75;
    v36 = v76;
    v38 = v74;
    v40 = v71;
    v39 = v72;
    v41 = *buf;
    *(v35 + 2) = *&buf[2];
    *(v35 + 3) = v40;
    *(v35 + 1) = v41;
    v42 = v73;
    *(v35 + 6) = v38;
    *(v35 + 7) = v37;
    *(v35 + 4) = v39;
    *(v35 + 5) = v42;
    *(v35 + 8) = v36;
    v43 = sm_bootstrap_service(&v60, buf, v35[1], *(v5 + 368));
    if (v43)
    {
      v45 = v43;
      v46 = *(v5 + 72);
      if (v46)
      {
        if (os_log_type_enabled(*(v5 + 72), OS_LOG_TYPE_ERROR))
        {
          v47 = 3;
        }

        else
        {
          v47 = 2;
        }

        v48 = *(v5 + 56);
        v49 = *(a2 + 56);
        if (!v48)
        {
          v48 = "[anonymous]";
        }

        *v64 = 136446466;
        v65 = v48;
        v66 = 2080;
        v67 = v49;
        v50 = _os_log_send_and_compose_impl(v47, 0, 0, 0, &_mh_execute_header, v46, 16, "%{public}s: failed to bootstrap service: %s.", COERCE_DOUBLE(136446466), v64, 22, v60, v61, v62, v63);
      }

      else
      {
        v55 = *(v5 + 56);
        if (!v55)
        {
          v55 = "[anonymous]";
        }

        v56 = *(a2 + 56);
        *v64 = 136446466;
        v65 = v55;
        v66 = 2080;
        v67 = v56;
        v50 = _os_log_send_and_compose_impl(2, 0, 0, 0, &_mh_execute_header, &_os_log_default, 16, "%{public}s: failed to bootstrap service: %s.", COERCE_DOUBLE(136446466), v64, 22, v60, v61, v62, v63);
      }

      v57 = v50;
      Error = createError("_quire_bootstrap_service", "quire.c", 890, "com.apple.security.cryptex", 14, v45, v50);
      free(v57);
      sm_pending_service_destroy(v35);
      buff_destroy(&v60, v58);
      CFRelease(v45);
    }

    else
    {
      *v35 = 0;
      **(a3 + 40) = v35;
      *(a3 + 40) = v35;
      buff_destroy(&v60, v44);
      return 0;
    }
  }

  return Error;
}

CFErrorRef _quire_bootstrap_watchdog_registration(uint64_t a1)
{
  v2 = _quire_parse_watchdog_service_descriptions(a1, watchdog_bootstrap_service_descriptions);
  if (v2)
  {
    v3 = v2;
    v4 = *(a1 + 72);
    if (v4)
    {
      if (os_log_type_enabled(*(a1 + 72), OS_LOG_TYPE_ERROR))
      {
        v5 = 3;
      }

      else
      {
        v5 = 2;
      }

      v6 = *(a1 + 56);
      if (!v6)
      {
        v6 = "[anonymous]";
      }

      LODWORD(v12) = 136446210;
      *(&v12 + 4) = v6;
      v7 = _os_log_send_and_compose_impl(v5, 0, 0, 0, &_mh_execute_header, v4, 16, "%{public}s: Failed to register services with watchdog.", COERCE_DOUBLE(136446210), &v12, 12, v12);
    }

    else
    {
      v9 = *(a1 + 56);
      if (!v9)
      {
        v9 = "[anonymous]";
      }

      LODWORD(v12) = 136446210;
      *(&v12 + 4) = v9;
      v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &_mh_execute_header, &_os_log_default, 16, "%{public}s: Failed to register services with watchdog.", COERCE_DOUBLE(136446210), &v12, 12, v12);
    }

    v10 = v7;
    Error = createError("_quire_bootstrap_watchdog_registration", "quire.c", 1290, "com.apple.security.cryptex", 33, v3, v7);
    free(v10);
    CFRelease(v3);
    return Error;
  }

  else
  {

    return quire_boot_session_set(a1, ".registered-for-watchdog", 1);
  }
}

CFErrorRef ___quire_bootstrap_launch_agents_block_invoke(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 48) == 3)
  {
    return _quire_attach_launch_agents(*(a1 + 32), *(a2 + 40), *(a2 + 80), *(a1 + 40));
  }

  else
  {
    return 0;
  }
}

void _quire_unlink_launch_agents(void *a1)
{
  v2 = a1[58];
  if (v2)
  {
    do
    {
      v3 = *v2;
      v4 = a1[7];
      v5 = *__error();
      v6 = a1[9];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        v7 = a1[52];
        if (v4)
        {
          v8 = v4;
        }

        else
        {
          v8 = "[anonymous]";
        }

        *buf = 136446466;
        v20 = v8;
        v21 = 2080;
        v22 = v7;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "%{public}s: Found a Launch Agent while removing quire: %s - going to deactivate it.", buf, 0x16u);
      }

      *__error() = v5;
      _quire_deactivate_launch_agent(v2, a1);
      v2 = v3;
    }

    while (v3);
  }

  _quire_activate(a1);
  v10 = a1[57];
  if (v10)
  {
    v11 = (a1 + 57);
    do
    {
      v12 = *v11;
      if (*v11 == v10)
      {
        v13 = a1 + 57;
      }

      else
      {
        do
        {
          v13 = v12;
          v12 = *v12;
        }

        while (v12 != v10);
      }

      v14 = *v10;
      *v13 = *v12;
      *v10 = -1;
      buff_destroy(v10 + 17, v9);
      free(v10);
      _quire_deactivate(a1);
      v10 = v14;
    }

    while (v14);
  }

  v15 = a1[7];
  v16 = *__error();
  v17 = a1[9];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    if (v15)
    {
      v18 = v15;
    }

    else
    {
      v18 = "[anonymous]";
    }

    *buf = 136446210;
    v20 = v18;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "%{public}s: Removed all launch agents.", buf, 0xCu);
  }

  *__error() = v16;
  _quire_deactivate(a1);
}

void ___quire_unbootstrap_continue_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *v1;
  _quire_iter_feature_flags(*v1, v1, _quire_remove_resource_from_data_volume);
  _quire_iter_binaries(v2, v1, _quire_remove_resource_from_data_volume);
  _quire_iter_libraries(v2, v1, _quire_remove_resource_from_data_volume);
  _quire_iter_log_profiles(v2, v1, _quire_remove_resource_from_data_volume);
  _quire_unbootstrap_diags(v2);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 0x40000000;
  v3[2] = ___quire_unbootstrap_continue2_block_invoke;
  v3[3] = &__block_descriptor_tmp_81;
  v3[4] = v1;
  _quire_unbootstrap_trust_cache(v2, v3);
}

void ___quire_unbootstrap_continue2_block_invoke(uint64_t a1, const void *a2)
{
  v2 = *(a1 + 32);
  v3 = *v2;
  if (a2)
  {
    v5 = *(v3 + 72);
    if (v5)
    {
      if (os_log_type_enabled(*(v3 + 72), OS_LOG_TYPE_ERROR))
      {
        v6 = 3;
      }

      else
      {
        v6 = 2;
      }

      v7 = *(v3 + 56);
      if (!v7)
      {
        v7 = "[anonymous]";
      }

      LODWORD(v12) = 136446210;
      *(&v12 + 4) = v7;
      v8 = _os_log_send_and_compose_impl(v6, 0, 0, 0, &_mh_execute_header, v5, 16, "%{public}s: Failed to unbootstrap trust cache.", COERCE_DOUBLE(136446210), &v12, 12, v12, *(&v12 + 1));
    }

    else
    {
      v9 = *(v3 + 56);
      if (!v9)
      {
        v9 = "[anonymous]";
      }

      LODWORD(v12) = 136446210;
      *(&v12 + 4) = v9;
      v8 = _os_log_send_and_compose_impl(2, 0, 0, 0, &_mh_execute_header, &_os_log_default, 16, "%{public}s: Failed to unbootstrap trust cache.", COERCE_DOUBLE(136446210), &v12, 12, v12, *(&v12 + 1));
    }

    v10 = v8;
    Error = createError("_quire_unbootstrap_continue3", "quire.c", 3157, "com.apple.security.cryptex", 38, a2, v8);
    free(v10);
    if (Error)
    {
      v2[2] = CFRetain(Error);
      cryptex_target_async_f();
      CFRelease(Error);
    }
  }

  else
  {
    *&v12 = _NSConcreteStackBlock;
    *(&v12 + 1) = 0x40000000;
    v13 = ___quire_unbootstrap_continue3_block_invoke;
    v14 = &__block_descriptor_tmp_82;
    v15 = v2;
    cryptex_async();
  }
}

uint64_t ___quire_unbootstrap_continue3_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *v1;
  *(v2 + 176) = *(*v1 + 176) & 0xFFFFFFFFFFFFFFFDLL;
  if ((*(v2 + 400) & 0x80000000) == 0)
  {
    close_drop_np();
  }

  v1[2] = 0;

  return cryptex_target_async_f();
}

uint64_t OUTLINED_FUNCTION_2_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, const char *a8)
{

  return _os_log_send_and_compose_impl(v11, v8, v9, 80, a5, v10, 16, a8);
}

double OUTLINED_FUNCTION_9_0(void *a1, _OWORD *a2)
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

uint64_t sysctl_upgrade_set(int a1)
{
  v2 = a1;
  result = sysctlbyname("kern.proc_rsr_in_progress", 0, 0, &v2, 4uLL);
  if (result)
  {
    return *__error();
  }

  return result;
}

uint64_t sysctl_upgrade_is_ongoing(BOOL *a1)
{
  v4 = 0;
  v3 = 4;
  if (sysctlbyname("kern.proc_rsr_in_progress", &v4, &v3, 0, 0))
  {
    return *__error();
  }

  result = 0;
  if (a1)
  {
    *a1 = v4 != 0;
  }

  return result;
}

uint64_t _codex_demux(void *a1, uint64_t a2, _BYTE *a3)
{
  v6 = proc_create(a2, 0);
  v7 = proc_resolve(v6);
  if (v7)
  {
    v8 = v7;
    v9 = a1[7];
    v10 = *__error();
    v11 = a1[9];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = "[anonymous]";
      if (v9)
      {
        v12 = v9;
      }

      *buf = 136446466;
      v67 = v12;
      v68 = 1024;
      LODWORD(v69) = v8;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%{public}s: failed to resolve proc: %{darwin.errno}d", buf, 0x12u);
    }

    *__error() = v10;
    goto LABEL_15;
  }

  v13 = *(a2 + 24);
  if (v13 > 4)
  {
    v8 = 22;
    goto LABEL_15;
  }

  v14 = off_100073F88[v13];
  v15 = (&off_100073FD8)[v13];
  v8 = proc_entitled(v6, (&off_100073FB0)[v13]);
  v16 = a1[7];
  v65 = *__error();
  v17 = a1[9];
  if (v8)
  {
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = "[anonymous]";
      v19 = v6[8];
      v20 = v6[9];
      if (v16)
      {
        v18 = v16;
      }

      *buf = 136447490;
      v67 = v18;
      v68 = 2080;
      v69 = v15;
      v70 = 2080;
      v71 = v14;
      v72 = 2080;
      v73 = v19;
      v74 = 2080;
      v75 = v20;
      v76 = 1024;
      v77 = v8;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%{public}s: proc not entitled for %s: entitlement = %s, proc = %s, signing id = %s: %{darwin.errno}d", buf, 0x3Au);
    }

    *__error() = v65;
    goto LABEL_15;
  }

  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    v22 = "[anonymous]";
    if (v16)
    {
      v22 = v16;
    }

    v23 = v6[8];
    v24 = v6[9];
    *buf = 136447234;
    v67 = v22;
    v68 = 2080;
    v69 = v15;
    v70 = 2080;
    v71 = v14;
    v72 = 2080;
    v73 = v23;
    v74 = 2080;
    v75 = v24;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "%{public}s: authorized proc for %s: entitlement = %s, proc = %s, signing id = %s", buf, 0x34u);
  }

  *__error() = v65;
  if (v13 > 2)
  {
    v8 = 45;
    goto LABEL_15;
  }

  if (!v13)
  {
    v26 = proc_create(a2, 0);
    v27 = proc_resolve(v26);
    if (v27)
    {
      v8 = v27;
      v28 = a1[7];
      v29 = *__error();
      v30 = a1[9];
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        v31 = "[anonymous]";
        if (v28)
        {
          v31 = v28;
        }

        *buf = 136446466;
        v67 = v31;
        v68 = 1024;
        LODWORD(v69) = v8;
        v32 = "%{public}s: failed to resolve proc: %{darwin.errno}d";
        v33 = v30;
        v34 = 18;
LABEL_42:
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, v32, buf, v34);
        goto LABEL_43;
      }

      goto LABEL_43;
    }

    v36 = proc_entitled(v26, "com.apple.private.security.cryptex.install");
    if (v36)
    {
      v8 = v36;
      v37 = a1[7];
      v29 = *__error();
      v38 = a1[9];
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        v39 = "[anonymous]";
        if (v37)
        {
          v39 = v37;
        }

        v40 = v26[8];
        v41 = v26[9];
        *buf = 136447234;
        v67 = v39;
        v68 = 2080;
        v69 = "com.apple.private.security.cryptex.install";
        v70 = 2080;
        v71 = v40;
        v72 = 2080;
        v73 = v41;
        v74 = 1024;
        LODWORD(v75) = v8;
        v32 = "%{public}s: proc not entitled for install: entitlement = %s, proc = %s, signing id = %s: %{darwin.errno}d";
        v33 = v38;
        v34 = 48;
        goto LABEL_42;
      }

LABEL_43:
      *__error() = v29;
LABEL_44:
      if (v26)
      {
        os_release(v26);
      }

      goto LABEL_15;
    }

    v42 = codex_install_unpack();
    if (v42)
    {
      v8 = v42;
      v43 = xpc_copy_description(*(a2 + 296));
      v44 = a1[7];
      v45 = *__error();
      v46 = a1[9];
      if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
      {
        v47 = "[anonymous]";
        *buf = 136446722;
        if (v44)
        {
          v47 = v44;
        }

        v67 = v47;
        v68 = 2080;
        v69 = v43;
        v70 = 1024;
        LODWORD(v71) = v8;
        _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_ERROR, "%{public}s: failed to unpack ipc: %s: %{darwin.errno}d", buf, 0x1Cu);
      }

      *__error() = v45;
      free(v43);
      goto LABEL_44;
    }

    v48 = cryptex_core_create();
    v49 = cryptex_core_set_assets_from_fds();
    if (v49)
    {
      v8 = v49;
      v50 = a1[7];
      v51 = *__error();
      v52 = a1[9];
      if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
      {
        v53 = "[anonymous]";
        if (v50)
        {
          v53 = v50;
        }

        *buf = 136446466;
        v67 = v53;
        v68 = 1024;
        LODWORD(v69) = v8;
        _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_ERROR, "%{public}s: set assets to core from fds failed: %{darwin.errno}d", buf, 0x12u);
      }

      *__error() = v51;
    }

    else
    {
      if (cryptex_core_is_cryptex1())
      {
        object = cryptex_core_cx1_properties_create_with_xpc_dictionary();
        if (!object)
        {
          v60 = a1[7];
          v61 = *__error();
          v62 = a1[9];
          if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
          {
            v63 = "[anonymous]";
            if (v60)
            {
              v63 = v60;
            }

            *buf = 136446466;
            v67 = v63;
            v68 = 1024;
            LODWORD(v69) = 22;
            _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_ERROR, "%{public}s: failed to parse Cryptex1 properties.: %{darwin.errno}d", buf, 0x12u);
          }

          *__error() = v61;
          v8 = 22;
          goto LABEL_74;
        }

        cryptex_core_set_cryptex1_properties();
      }

      else
      {
        object = 0;
      }

      v54 = a1[7];
      v55 = *__error();
      v56 = a1[9];
      if (os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
      {
        v57 = "[anonymous]";
        if (v54)
        {
          v57 = v54;
        }

        *buf = 136446210;
        v67 = v57;
        _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEBUG, "%{public}s: using default signing service", buf, 0xCu);
      }

      *__error() = v55;
      v48[6] = 0;
      v48[7] = 0;
      v58 = sub_state_alloc(a1, a2, a3);
      started = pipeline_start_state_alloc(a1, v58, 0, 0, 0, _codex_rpc_install_continue2);
      codex_install_cryptex(a1, v48, started);
      v8 = 36;
      if (object)
      {
        os_release(object);
      }
    }

LABEL_74:
    if (v48)
    {
      os_release(v48);
    }

    goto LABEL_44;
  }

  if (v13 == 1)
  {
    v8 = codex_list_unpack();
    if (v8)
    {
      goto LABEL_15;
    }

    v25 = sub_state_alloc(a1, a2, a3);
    codex_list_installed(a1, v25, _codex_rpc_list_reply);
  }

  else
  {
    v35 = sub_state_alloc(a1, a2, a3);
    codex_lockdown(a1, v35, _codex_rpc_lockdown_continue);
  }

  v8 = 36;
LABEL_15:
  if (v6)
  {
    os_release(v6);
  }

  if (a1)
  {
    os_release(a1);
  }

  return v8;
}

void _codex_rpc_install_continue2(uint64_t a1, void *a2, const void *a3, uint64_t a4)
{
  v29 = a4;
  if (a3)
  {
    v7 = *(a1 + 72);
    if (v7)
    {
      if (os_log_type_enabled(*(a1 + 72), OS_LOG_TYPE_ERROR))
      {
        v8 = 3;
      }

      else
      {
        v8 = 2;
      }

      v9 = *(a1 + 56);
      if (!v9)
      {
        v9 = "[anonymous]";
      }

      v30 = 136446210;
      v31 = v9;
      v10 = _os_log_send_and_compose_impl(v8, 0, 0, 0, &_mh_execute_header, v7, 16, "%{public}s: installation failed", COERCE_DOUBLE(136446210), &v30, 12);
    }

    else
    {
      v16 = *(a1 + 56);
      if (!v16)
      {
        v16 = "[anonymous]";
      }

      v30 = 136446210;
      v31 = v16;
      v10 = _os_log_send_and_compose_impl(2, 0, 0, 0, &_mh_execute_header, &_os_log_default, 16, "%{public}s: installation failed", COERCE_DOUBLE(136446210), &v30, 12);
    }

    v17 = v10;
    v18 = "com.apple.security.cryptex";
    v19 = 167;
    v20 = 14;
    v21 = a3;
  }

  else
  {
    v11 = *(a4 + 8);
    if (v11)
    {
      v12 = *(a1 + 72);
      if (v12)
      {
        if (os_log_type_enabled(*(a1 + 72), OS_LOG_TYPE_ERROR))
        {
          v13 = 3;
        }

        else
        {
          v13 = 2;
        }

        v14 = *(a1 + 56);
        if (!v14)
        {
          v14 = "[anonymous]";
        }

        v30 = 136446466;
        v31 = v14;
        v32 = 1024;
        v33 = v11;
        v15 = _os_log_send_and_compose_impl(v13, 0, 0, 0, &_mh_execute_header, v12, 16, "%{public}s: _codex_rpc_install_continue2 context error %{darwin.errno}d", COERCE_DOUBLE(136446466), &v30, 18);
      }

      else
      {
        v26 = *(a1 + 56);
        if (!v26)
        {
          v26 = "[anonymous]";
        }

        v30 = 136446466;
        v31 = v26;
        v32 = 1024;
        v33 = v11;
        v15 = _os_log_send_and_compose_impl(2, 0, 0, 0, &_mh_execute_header, &_os_log_default, 16, "%{public}s: _codex_rpc_install_continue2 context error %{darwin.errno}d", COERCE_DOUBLE(136446466), &v30, 18);
      }

      v17 = v15;
      v18 = "com.apple.security.cryptex.posix";
      v19 = 175;
      v20 = v11;
      v21 = 0;
    }

    else
    {
      if (!*(a4 + 16))
      {
        codex_bootstrap(a1, a2, a4, _codex_rpc_install_continue3);
        return;
      }

      v22 = *(a1 + 72);
      if (v22)
      {
        if (os_log_type_enabled(*(a1 + 72), OS_LOG_TYPE_ERROR))
        {
          v23 = 3;
        }

        else
        {
          v23 = 2;
        }

        v24 = *(a1 + 56);
        if (!v24)
        {
          v24 = "[anonymous]";
        }

        v30 = 136446210;
        v31 = v24;
        v25 = _os_log_send_and_compose_impl(v23, 0, 0, 0, &_mh_execute_header, v22, 16, "%{public}s: _codex_rpc_install_continue2 context error", COERCE_DOUBLE(136446210), &v30, 12);
      }

      else
      {
        v27 = *(a1 + 56);
        if (!v27)
        {
          v27 = "[anonymous]";
        }

        v30 = 136446210;
        v31 = v27;
        v25 = _os_log_send_and_compose_impl(2, 0, 0, 0, &_mh_execute_header, &_os_log_default, 16, "%{public}s: _codex_rpc_install_continue2 context error", COERCE_DOUBLE(136446210), &v30, 12);
      }

      v17 = v25;
      v21 = *(a4 + 16);
      v18 = "com.apple.security.cryptex";
      v19 = 183;
      v20 = 4;
    }
  }

  Error = createError("_codex_rpc_install_continue2", "sub_codex.c", v19, v18, v20, v21, v17);
  free(v17);
  if (Error)
  {
    sub_reply_and_consume_with_cferr((a4 + 32), Error);
    pipeline_start_state_destroy(&v29);
    CFRelease(Error);
  }
}

void _codex_rpc_install_continue3(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4)
{
  v18 = a4;
  if (a3)
  {
    v8 = *(a1 + 56);
    v9 = *__error();
    v10 = *(a1 + 72);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = "[anonymous]";
      if (v8)
      {
        v11 = v8;
      }

      *buf = 136446466;
      *&buf[4] = v11;
      *&buf[12] = 2112;
      *&buf[14] = a3;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%{public}s: bootstrap failed, unbootstrapping: %@", buf, 0x16u);
    }

    *__error() = v9;
    *(a4 + 16) = CFRetain(a3);
    codex_unbootstrap(a1, a2, 1uLL, a4, _codex_rpc_install_failure_unbootstrap_callback);
  }

  else
  {
    *buf = *(a2 + 208);
    *&buf[8] = **(a2 + 224);
    *&buf[16] = *(a2 + 424);
    v26 = *(a2 + 416);
    codex_install_reply_pack();
    v12 = *(a1 + 56);
    v13 = *__error();
    v14 = *(a1 + 72);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v15 = "[anonymous]";
      if (v12)
      {
        v15 = v12;
      }

      v16 = *(a2 + 208);
      v17 = *(a2 + 416);
      *v19 = 136446722;
      v20 = v15;
      v21 = 2080;
      v22 = v16;
      v23 = 2080;
      v24 = v17;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "%{public}s: replying: name = %s, mnt path = %s", v19, 0x20u);
    }

    *__error() = v13;
    sub_reply_and_consume((a4 + 32), 0);
    pipeline_start_state_destroy(&v18);
  }
}

void _codex_rpc_install_failure_unbootstrap_callback(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a1[7])
  {
    v8 = a1[7];
  }

  else
  {
    v8 = "[anonymous]";
  }

  v9 = *__error();
  v10 = a1[9];
  if (a3)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v15 = 136446466;
      v16 = v8;
      v17 = 2112;
      v18 = a3;
      v11 = "%{public}s: unbootstrap: %@";
      v12 = v10;
      v13 = OS_LOG_TYPE_ERROR;
      v14 = 22;
LABEL_9:
      _os_log_impl(&_mh_execute_header, v12, v13, v11, &v15, v14);
    }
  }

  else if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v15 = 136446210;
    v16 = v8;
    v11 = "%{public}s: unbootstrap [no error]";
    v12 = v10;
    v13 = OS_LOG_TYPE_DEBUG;
    v14 = 12;
    goto LABEL_9;
  }

  *__error() = v9;
  codex_uninstall(a1, a2, a4, _codex_rpc_install_failure_uninstall_callback);
}

void _codex_rpc_install_failure_uninstall_callback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14 = a4;
  if (*(a1 + 56))
  {
    v7 = *(a1 + 56);
  }

  else
  {
    v7 = "[anonymous]";
  }

  v8 = *__error();
  v9 = *(a1 + 72);
  if (a3)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v16 = v7;
      v17 = 2112;
      v18 = a3;
      v10 = "%{public}s: uninstall: %@";
      v11 = v9;
      v12 = OS_LOG_TYPE_ERROR;
      v13 = 22;
LABEL_9:
      _os_log_impl(&_mh_execute_header, v11, v12, v10, buf, v13);
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136446210;
    v16 = v7;
    v10 = "%{public}s: uninstall [no error]";
    v11 = v9;
    v12 = OS_LOG_TYPE_DEBUG;
    v13 = 12;
    goto LABEL_9;
  }

  *__error() = v8;
  sub_reply_and_consume_with_cferr((a4 + 32), *(a4 + 16));
  pipeline_start_state_destroy(&v14);
}

void _codex_rpc_list_reply(int a1, int a2, xpc_object_t object, uint64_t a4)
{
  v4 = a4;
  if (xpc_get_type(object) == &_xpc_type_array)
  {
    codex_list_reply_pack();
    sub_reply_and_consume(&v4, 0);
  }

  else
  {
    __break(1u);
  }
}

void _codex_rpc_lockdown_continue(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a3;
  if (a2)
  {
    v5 = *(a1 + 56);
    v6 = *__error();
    v7 = *(a1 + 72);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = "[anonymous]";
      if (v5)
      {
        v8 = v5;
      }

      *buf = 136446466;
      v11 = v8;
      v12 = 1024;
      v13 = a2;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%{public}s: codex lockdown failed: %{darwin.errno}d", buf, 0x12u);
    }

    *__error() = v6;
  }

  sub_reply_and_consume(&v9, a2);
}

void upgrade_sub_trampoline_block_client(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = xpc_dictionary_get_remote_connection(v1);
    string = xpc_dictionary_get_string(v2, "cryptex_name");
    if (string)
    {
      v5 = string;
      buffer = *"unknown";
      v26 = unk_1000597A0;
      pid = xpc_connection_get_pid(v3);
      proc_name(pid, &buffer, 0x20u);
      v7 = __error();
      v8 = *v7;
      v9 = _upgrade_sub_trampoline_osl(v7);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        if (v3)
        {
          v10 = xpc_connection_get_pid(v3);
        }

        else
        {
          v10 = -1;
        }

        v19 = 136315650;
        p_buffer = &buffer;
        v21 = 1024;
        v22 = v10;
        v23 = 2080;
        v24 = v5;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "XPC client <process=%s pid=%d>: Blocking client during upgrade for cryptex '%s'.", &v19, 0x1Cu);
      }

      *__error() = v8;
      upgrade_cryptex_set_complete_callback(v5, v2, _upgrade_sub_trampoline_unblock_client);
    }

    else
    {
      buffer = *"unknown";
      v26 = unk_1000597A0;
      v14 = xpc_connection_get_pid(v3);
      proc_name(v14, &buffer, 0x20u);
      v15 = __error();
      v16 = *v15;
      v17 = _upgrade_sub_trampoline_osl(v15);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        if (v3)
        {
          v18 = xpc_connection_get_pid(v3);
        }

        else
        {
          v18 = -1;
        }

        v19 = 136315394;
        p_buffer = &buffer;
        v21 = 1024;
        v22 = v18;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "XPC client <process=%s pid=%d>: Client did not provide the name of a cryptex to block on.", &v19, 0x12u);
      }

      *__error() = v16;
      _upgrade_sub_trampoline_unblock_client(v2, 0);
    }
  }

  else
  {
    v11 = __error();
    v12 = *v11;
    v13 = _upgrade_sub_trampoline_osl(v11);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buffer) = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Invalid input.", &buffer, 2u);
    }

    *__error() = v12;
  }
}

id _upgrade_sub_trampoline_osl(uint64_t a1)
{
  if (_upgrade_sub_trampoline_osl_onceToken != -1)
  {
    _upgrade_sub_trampoline_osl_cold_1();
  }

  v2 = _upgrade_sub_trampoline_osl_trampoline_log;

  return v2;
}

void _upgrade_sub_trampoline_unblock_client(xpc_object_t xdict, uint64_t a2)
{
  if (xdict)
  {
    v4 = xpc_dictionary_get_remote_connection(xdict);
    string = xpc_dictionary_get_string(xdict, "cryptex_name");
    if (!string)
    {
      goto LABEL_19;
    }

    v6 = string;
    *buffer = *"unknown";
    *&buffer[16] = unk_1000597A0;
    pid = xpc_connection_get_pid(v4);
    proc_name(pid, buffer, 0x20u);
    v8 = __error();
    v9 = *v8;
    v10 = _upgrade_sub_trampoline_osl(v8);
    v11 = v10;
    if (a2)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        if (v4)
        {
          v12 = xpc_connection_get_pid(v4);
        }

        else
        {
          v12 = -1;
        }

        *v33 = 136315906;
        *&v33[4] = buffer;
        *&v33[12] = 1024;
        *&v33[14] = v12;
        *&v33[18] = 2080;
        *&v33[20] = v6;
        *&v33[28] = 2112;
        *&v33[30] = a2;
        v17 = "XPC client <process=%s pid=%d>: Upgrade for cryptex '%s' has finished.: %@";
        v18 = v11;
        v19 = OS_LOG_TYPE_ERROR;
        v20 = 38;
LABEL_17:
        _os_log_impl(&_mh_execute_header, v18, v19, v17, v33, v20);
      }
    }

    else if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      if (v4)
      {
        v16 = xpc_connection_get_pid(v4);
      }

      else
      {
        v16 = -1;
      }

      *v33 = 136315650;
      *&v33[4] = buffer;
      *&v33[12] = 1024;
      *&v33[14] = v16;
      *&v33[18] = 2080;
      *&v33[20] = v6;
      v17 = "XPC client <process=%s pid=%d>: Upgrade for cryptex '%s' has finished. [no error]";
      v18 = v11;
      v19 = OS_LOG_TYPE_DEBUG;
      v20 = 28;
      goto LABEL_17;
    }

    *__error() = v9;
LABEL_19:
    *v33 = *"unknown";
    *&v33[16] = unk_1000597A0;
    v21 = xpc_connection_get_pid(v4);
    proc_name(v21, v33, 0x20u);
    v22 = __error();
    v23 = *v22;
    v24 = _upgrade_sub_trampoline_osl(v22);
    v25 = v24;
    if (a2)
    {
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        if (v4)
        {
          v26 = xpc_connection_get_pid(v4);
        }

        else
        {
          v26 = -1;
        }

        *buffer = 136315650;
        *&buffer[4] = v33;
        *&buffer[12] = 1024;
        *&buffer[14] = v26;
        *&buffer[18] = 2112;
        *&buffer[20] = a2;
        v28 = "XPC client <process=%s pid=%d>: Unblocking client.: %@";
        v29 = v25;
        v30 = OS_LOG_TYPE_ERROR;
        v31 = 28;
LABEL_30:
        _os_log_impl(&_mh_execute_header, v29, v30, v28, buffer, v31);
      }
    }

    else if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      if (v4)
      {
        v27 = xpc_connection_get_pid(v4);
      }

      else
      {
        v27 = -1;
      }

      *buffer = 136315394;
      *&buffer[4] = v33;
      *&buffer[12] = 1024;
      *&buffer[14] = v27;
      v28 = "XPC client <process=%s pid=%d>: Unblocking client. [no error]";
      v29 = v25;
      v30 = OS_LOG_TYPE_DEBUG;
      v31 = 18;
      goto LABEL_30;
    }

    *__error() = v23;
    reply = xpc_dictionary_create_reply(xdict);
    xpc_dictionary_send_reply();

    goto LABEL_32;
  }

  v13 = __error();
  v14 = *v13;
  v15 = _upgrade_sub_trampoline_osl(v13);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    *v33 = 0;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Invalid input.", v33, 2u);
  }

  *__error() = v14;
LABEL_32:
}

void ___upgrade_sub_trampoline_osl_block_invoke(id a1)
{
  _upgrade_sub_trampoline_osl_trampoline_log = os_log_create("com.apple.libcryptex", "upgrade_sub_trampoline");

  _objc_release_x1();
}

void *pipeline_start_state_alloc(void *a1, uint64_t a2, void *a3, int a4, void *a5, uint64_t a6)
{
  v11 = ctx_new(a1, 0x48uLL);
  *(v11 + 14) = a4;
  v11[4] = a2;
  v11[5] = a3;
  if (a3)
  {
    os_retain(a3);
  }

  v11[8] = 0;
  if (a5)
  {
    v11[8] = xpc_retain(a5);
  }

  v11[6] = a6;
  return v11;
}

void pipeline_start_state_destroy(uint64_t *result)
{
  if (result)
  {
    v2 = *result;
    if (*(*result + 32))
    {
      pipeline_start_state_destroy_cold_1();
    }

    v3 = *(v2 + 40);
    if (v3)
    {
      os_release(v3);
      *(v2 + 40) = 0;
    }

    v4 = *(v2 + 64);
    if (v4)
    {
      xpc_release(v4);
      *(v2 + 64) = 0;
    }

    ctx_destroy(v2);
    *result = 0;
  }
}

const char *get_session_type_for_domain(uint64_t a1)
{
  if (a1)
  {
    return "UNK";
  }

  else
  {
    return "System";
  }
}

id getLaunchdDomainForUser(uint64_t a1)
{
  if (a1)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      getLaunchdDomainForUser_cold_1();
    }

    v1 = 0;
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *v3 = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Using system domain", v3, 2u);
    }

    v1 = +[OSLaunchdDomain currentDomain];
  }

  return v1;
}

uint64_t launchd_session_uncork(uint64_t a1)
{
  v1 = a1;
  v2 = [OSLaunchdDomain domainForRoleAccountUser:a1];
  if (v2)
  {
    v3 = 0;
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
    {
      launchd_session_uncork_cold_1(v1);
    }

    v3 = 33;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v9 = v1;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Uncorking session for uid %d", buf, 8u);
  }

  v7 = 0;
  v4 = [v2 unpendLaunches:&v7];
  v5 = v7;
  if ((v4 & 1) == 0)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      launchd_session_uncork_cold_2(v5);
    }

    v3 = 22;
  }

  return v3;
}

CFErrorRef launchd_session_destroy(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [OSLaunchdDomain domainForRoleAccountUser:a1];
  if (v4)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v19 = a1;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Closing domain for uid %d", buf, 8u);
    }

    v17 = 0;
    v5 = [v4 initiateRemoval:&v17];
    v6 = v17;
    v7 = v6;
    if (v5)
    {
      Error = 0;
    }

    else if ([v6 code] == 124)
    {
      v11 = *__error();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "Session is being torn down already", buf, 2u);
      }

      Error = 0;
      *__error() = v11;
    }

    else
    {
      if (v3)
      {
        if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
        {
          v12 = 3;
        }

        else
        {
          v12 = 2;
        }

        *buf = 67109376;
        v19 = a1;
        v20 = 1024;
        v21 = 22;
        v13 = _os_log_send_and_compose_impl(v12, 0, 0, 0, &_mh_execute_header, v3, 16, "Failed to initiate remove of domain %d %{darwin.errno}d", COERCE_DOUBLE(67109376), buf, 14);
      }

      else
      {
        *buf = 67109376;
        v19 = a1;
        v20 = 1024;
        v21 = 22;
        v13 = _os_log_send_and_compose_impl(2, 0, 0, 0, &_mh_execute_header, &_os_log_default, 16, "Failed to initiate remove of domain %d %{darwin.errno}d", COERCE_DOUBLE(67109376), buf, 14);
      }

      v15 = v13;
      Error = createError("launchd_session_destroy", "launchd_session.m", 253, "com.apple.security.cryptex.posix", 22, v7, v13);
      free(v15);
    }
  }

  else
  {
    if (v3)
    {
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        v9 = 3;
      }

      else
      {
        v9 = 2;
      }

      *buf = 67109376;
      v19 = a1;
      v20 = 1024;
      v21 = 33;
      v10 = _os_log_send_and_compose_impl(v9, 0, 0, 0, &_mh_execute_header, v3, 16, "Failed to find domain for uid %d %{darwin.errno}d", COERCE_DOUBLE(67109376), buf, 14);
    }

    else
    {
      *buf = 67109376;
      v19 = a1;
      v20 = 1024;
      v21 = 33;
      v10 = _os_log_send_and_compose_impl(2, 0, 0, 0, &_mh_execute_header, &_os_log_default, 16, "Failed to find domain for uid %d %{darwin.errno}d", COERCE_DOUBLE(67109376), buf, 14);
    }

    v14 = v10;
    Error = createError("launchd_session_destroy", "launchd_session.m", 240, "com.apple.security.cryptex.posix", 33, 0, v10);
    free(v14);
    v7 = 0;
  }

  return Error;
}

uint64_t launchd_session_remove_job(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (!v3)
  {
LABEL_7:
    v8 = 0;
    goto LABEL_16;
  }

  v15 = 0;
  [v3 remove:&v15];
  v5 = v15;
  if (v5)
  {
    v6 = v5;
    if ([v5 code] == 36)
    {
      v7 = *__error();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "Removing launchd job", buf, 2u);
      }

      *__error() = v7;

      goto LABEL_7;
    }

    if ([v6 code] == 3)
    {
      v10 = *__error();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
      {
        *v12 = 0;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "Couldn't find job to stop it from being monitored", v12, 2u);
      }

      *__error() = v10;

      v8 = 3;
    }

    else
    {
      v8 = [v6 code];
    }
  }

  else
  {
    v9 = *__error();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "Removed launchd job", v14, 2u);
    }

    v8 = 0;
    *__error() = v9;
  }

LABEL_16:

  return v8;
}

CFErrorRef launchd_session_create_job(void *a1, int a2, uint64_t a3, void *a4)
{
  v7 = a1;
  v8 = xpc_dictionary_get_array(v7, "_ManagedBy");
  string = xpc_dictionary_get_string(v7, "_ManagedBy");
  v10 = getLaunchdDomainForUser(0);
  if (v10)
  {
    if (v8 | string)
    {
      if (v8)
      {
        empty = xpc_copy(v8);
      }

      else
      {
        empty = xpc_array_create_empty();
        v16 = xpc_string_create(string);
        xpc_array_append_value(empty, v16);
      }

      v17 = xpc_string_create("com.apple.security.cryptexd");
      xpc_array_append_value(empty, v17);

      xpc_dictionary_set_value(v7, "_ManagedBy", empty);
    }

    else
    {
      xpc_dictionary_set_string(v7, "_ManagedBy", "com.apple.security.cryptexd");
    }

    _xpc_object_set_string_if_absent(v7, "_PersistToBootMode", "rem");
    v15 = [[OSLaunchdJob alloc] initWithPlist:v7 domain:v10];
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138413058;
      *v21 = v15;
      *&v21[8] = 1024;
      v22 = a2;
      v23 = 2112;
      v24 = v10;
      v25 = 2080;
      v26 = a3;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Created job %@ for uid %d: %@ (session: %s)", buf, 0x26u);
    }

    if (a4)
    {
      v18 = v15;
      Error = 0;
      *a4 = v15;
    }

    else
    {
      Error = 0;
    }
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v12 = 3;
    }

    else
    {
      v12 = 2;
    }

    *buf = 67109376;
    *v21 = a2;
    *&v21[4] = 1024;
    *&v21[6] = 33;
    v13 = _os_log_send_and_compose_impl(v12, 0, 0, 0, &_mh_execute_header, &_os_log_default, 16, "Failed to find targetDomain %d %{darwin.errno}d", buf, 14);
    Error = createError("launchd_session_create_job", "launchd_session.m", 311, "com.apple.security.cryptex.posix", 33, 0, v13);
    free(v13);
    v15 = 0;
  }

  return Error;
}

CFErrorRef launchd_session_find_job(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  v7 = getLaunchdDomainForUser(0);
  if (!v7)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v14 = 3;
    }

    else
    {
      v14 = 2;
    }

    *buf = 67109376;
    *v20 = a2;
    *&v20[4] = 1024;
    *&v20[6] = 33;
    v15 = _os_log_send_and_compose_impl(v14, 0, 0, 0, &_mh_execute_header, &_os_log_default, 16, "Failed to find targetDomain %d %{darwin.errno}d", buf, 14);
    Error = createError("launchd_session_find_job", "launchd_session.m", 394, "com.apple.security.cryptex.posix", 33, 0, v15);
    goto LABEL_16;
  }

  v8 = [NSString stringWithUTF8String:a1];
  v9 = [OSLaunchdJob copyJobWithLabel:v8 domain:v7];

  if (!v9)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v17 = 3;
    }

    else
    {
      v17 = 2;
    }

    *buf = 136446466;
    *v20 = a1;
    *&v20[8] = 1024;
    LODWORD(v21) = 2;
    v15 = _os_log_send_and_compose_impl(v17, 0, 0, 0, &_mh_execute_header, &_os_log_default, 16, "No job found with label '%{public}s' %{darwin.errno}d", buf, 18);
    Error = createError("launchd_session_find_job", "launchd_session.m", 401, "com.apple.security.cryptex.posix", 2, 0, v15);
LABEL_16:
    v13 = Error;
    free(v15);
    goto LABEL_17;
  }

  if (a4)
  {
    v10 = v9;
    *a4 = v9;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [v9 handle];
    v12 = [v11 UUIDString];
    *buf = 136446722;
    *v20 = a1;
    *&v20[8] = 2082;
    v21 = [v12 UTF8String];
    v22 = 1024;
    v23 = a2;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Rediscovered job %{public}s (UUID: %{public}s) for uid %d", buf, 0x1Cu);
  }

  v13 = 0;
LABEL_17:

  return v13;
}

void (*InventoryXPC.init(queue:)(void *a1))(char *, uint64_t)
{
  v54 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13CryptexServer16VirtualEnvConfigVSgMd, &_s13CryptexServer16VirtualEnvConfigVSgMR);
  v2 = __chkstk_darwin(v1 - 8);
  v49 = v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v51 = v43 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6System8FilePathVSgMd, &_s6System8FilePathVSgMR);
  v6 = __chkstk_darwin(v5 - 8);
  v48 = v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = v43 - v8;
  v10 = type metadata accessor for FilePath();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v47 = v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v16 = v43 - v15;
  v17 = __chkstk_darwin(v14);
  v19 = v43 - v18;
  __chkstk_darwin(v17);
  v21 = v43 - v20;
  FilePath.init(_:)();
  FilePath.init(_:)();
  v22 = type metadata accessor for Inventory();
  v50 = "com.apple.security.cryptexd";
  v23 = v11[2];
  v60 = v21;
  v23(v16, v21, v10);
  v46 = v23;
  v23(v9, v19, v10);
  v24 = v11[7];
  v53 = v10;
  v45 = v24;
  v24(v9, 0, 1, v10);
  v25 = type metadata accessor for VirtualEnvConfig();
  v26 = *(v25 - 8);
  v27 = *(v26 + 56);
  v43[1] = v26 + 56;
  v44 = v27;
  v27(v51, 1, 1, v25);
  v43[0] = type metadata accessor for Image4Auth();
  v58 = v43[0];
  v59 = &protocol witness table for Image4Auth;
  __swift_allocate_boxed_opaque_existential_1(v57);
  Image4Auth.init()();
  v51 = v22;
  v28 = v52;
  v29 = Inventory.__allocating_init(name:runtimeDirectory:cryptexStorage:authenticator:venvConfig:)();
  if (v28)
  {

    v30 = v11[1];
    v31 = v53;
    v30(v19, v53);
    v30(v60, v31);
    type metadata accessor for InventoryXPC();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v50 = v29;
    v52 = v19;
    v32 = v53;
    v46(v47, v60, v53);
    v45(v48, 1, 1, v32);
    v44(v49, 1, 1, v25);
    v58 = v43[0];
    v59 = &protocol witness table for Image4Auth;
    __swift_allocate_boxed_opaque_existential_1(v57);
    Image4Auth.init()();
    Inventory.__allocating_init(name:runtimeDirectory:cryptexStorage:authenticator:venvConfig:)();
    v33 = v32;
    v34 = v60;
    type metadata accessor for Server();

    v35 = v54;
    v36 = static Server.createAnonymous(queue:persistentInventory:ephemeralInventory:)();
    v37 = v52;
    v39 = v36;

    v40 = v11[1];
    v40(v37, v33);
    v40(v34, v33);
    v41 = v55;
    *&v55[OBJC_IVAR____TtC8cryptexd12InventoryXPC_server] = v39;
    v42 = type metadata accessor for InventoryXPC();
    v56.receiver = v41;
    v56.super_class = v42;
    v30 = objc_msgSendSuper2(&v56, "init");
  }

  return v30;
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

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t InventoryXPC.start()()
{
  *(v1 + 16) = v0;
  return _swift_task_switch(InventoryXPC.start(), 0, 0);
}

{
  v3 = (&async function pointer to dispatch thunk of Server.start() + async function pointer to dispatch thunk of Server.start());
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = InventoryXPC.start();

  return v3();
}

{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t @objc closure #1 in InventoryXPC.start()(const void *a1, void *a2)
{
  *(v2 + 16) = a2;
  *(v2 + 24) = _Block_copy(a1);
  v4 = a2;

  return _swift_task_switch(@objc closure #1 in InventoryXPC.start(), 0, 0);
}

uint64_t @objc closure #1 in InventoryXPC.start()()
{
  v3 = (&async function pointer to dispatch thunk of Server.start() + async function pointer to dispatch thunk of Server.start());
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = @objc closure #1 in InventoryXPC.start();

  return v3();
}

{
  v2 = *v1;
  *(v2 + 40) = v0;

  if (v0)
  {

    return _swift_task_switch(@objc closure #1 in InventoryXPC.start(), 0, 0);
  }

  else
  {
    v3 = *(v2 + 24);

    (*(v3 + 16))(v3, 0);
    _Block_release(*(v2 + 24));
    v4 = *(v2 + 8);

    return v4();
  }
}

{
  v1 = *(v0 + 24);

  v2 = _convertErrorToNSError(_:)();

  (*(v1 + 16))(v1, v2);

  _Block_release(*(v0 + 24));
  v3 = *(v0 + 8);

  return v3();
}

uint64_t InventoryXPC.createEndpoint()()
{
  *(v1 + 16) = v0;
  return _swift_task_switch(InventoryXPC.createEndpoint(), 0, 0);
}

{
  v3 = (&async function pointer to dispatch thunk of Server.createEndpoint() + async function pointer to dispatch thunk of Server.createEndpoint());
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = InventoryXPC.createEndpoint();

  return v3();
}

{
  v1 = *(v0 + 32);
  v2 = SendableXPCObj.value.getter();

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t InventoryXPC.createEndpoint()(uint64_t a1)
{
  *(*v1 + 32) = a1;

  return _swift_task_switch(InventoryXPC.createEndpoint(), 0, 0);
}

uint64_t @objc closure #1 in InventoryXPC.createEndpoint()(const void *a1, void *a2)
{
  *(v2 + 16) = a2;
  *(v2 + 24) = _Block_copy(a1);
  v4 = a2;

  return _swift_task_switch(@objc closure #1 in InventoryXPC.createEndpoint(), 0, 0);
}

uint64_t @objc closure #1 in InventoryXPC.createEndpoint()()
{
  v3 = (&async function pointer to dispatch thunk of Server.createEndpoint() + async function pointer to dispatch thunk of Server.createEndpoint());
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = @objc closure #1 in InventoryXPC.createEndpoint();

  return v3();
}

{
  v1 = v0[5];
  v3 = v0[2];
  v2 = v0[3];
  v4 = SendableXPCObj.value.getter();

  v2[2](v2, v4, 0);
  _Block_release(v2);
  swift_unknownObjectRelease();
  v5 = v0[1];

  return v5();
}

uint64_t @objc closure #1 in InventoryXPC.createEndpoint()(uint64_t a1)
{
  *(*v1 + 40) = a1;

  return _swift_task_switch(@objc closure #1 in InventoryXPC.createEndpoint(), 0, 0);
}

id InventoryXPC.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id InventoryXPC.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InventoryXPC();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t partial apply for @objc closure #1 in InventoryXPC.createEndpoint()()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = partial apply for @objc closure #1 in InventoryXPC.createEndpoint();

  return @objc closure #1 in InventoryXPC.createEndpoint()(v2, v3);
}

{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t _sIeghH_IeAgH_TR(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = _sIeghH_IeAgH_TRTATQ0_;

  return v6();
}

uint64_t _sIeghH_IeAgH_TRTA()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = _sIeghH_IeAgH_TRTATQ0_;

  return _sIeghH_IeAgH_TR(v2, v3, v4);
}

uint64_t _sIeAgH_ytIeAgHr_TR(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = partial apply for @objc closure #1 in InventoryXPC.createEndpoint();

  return v7();
}

uint64_t _sIeAgH_ytIeAgHr_TRTA(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = _sIeghH_IeAgH_TRTATQ0_;

  return _sIeAgH_ytIeAgHr_TR(a1, v4, v5, v6);
}

uint64_t _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  __chkstk_darwin(v9 - 8);
  v11 = v23 - v10;
  outlined init with copy of TaskPriority?(a3, v23 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    outlined destroy of TaskPriority?(v11);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  TaskPriority.rawValue.getter();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = dispatch thunk of Actor.unownedExecutor.getter();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = String.utf8CString.getter() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    outlined destroy of TaskPriority?(a3);

    return v21;
  }

LABEL_8:
  outlined destroy of TaskPriority?(a3);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

uint64_t outlined init with copy of TaskPriority?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of TaskPriority?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tgq5(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tgq5TQ0_;

  return v6(a1);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tgq5TQ0_()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100049BC4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tgq5TA(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = _sIeghH_IeAgH_TRTATQ0_;

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tgq5(a1, v4);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tgq5TA_21(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for @objc closure #1 in InventoryXPC.createEndpoint();

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tgq5(a1, v4);
}

uint64_t objectdestroyTm()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t partial apply for @objc closure #1 in InventoryXPC.start()()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = _sIeghH_IeAgH_TRTATQ0_;

  return @objc closure #1 in InventoryXPC.start()(v2, v3);
}

uint64_t objectdestroy_7Tm()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t validateImage4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6)
{
  v19 = 0;
  memset(v18, 0, sizeof(v18));
  bzero(v17, 0x600uLL);
  if (a6 < 3)
  {
    v7 = (a6 << 16) + 0x10000;
LABEL_5:
    v8 = 8448;
LABEL_6:
    v9 = 2;
    return v8 | v9 | v7;
  }

  if (a6 > 0x19)
  {
    v7 = 0x40000;
    goto LABEL_5;
  }

  v11 = &TCTypeConfig + 40 * a6;
  if (!(*v11)())
  {
    v7 = 327680;
    v8 = 42752;
    goto LABEL_6;
  }

  v12 = *(v11 + 1);
  if (v12)
  {
    if (!v12())
    {
      v7 = 393216;
      v8 = 43008;
      goto LABEL_6;
    }

    v13 = v18;
    v14 = img4_nonce_domain_copy_nonce();
    if (v14 > 18)
    {
      if (v14 == 19)
      {
        v7 = 589824;
        v8 = 43264;
        goto LABEL_6;
      }

      if (v14 == 70)
      {
        v7 = 458752;
        v8 = 40960;
        goto LABEL_6;
      }

      goto LABEL_26;
    }

    if (v14)
    {
      if (v14 == 1)
      {
        v7 = 0x80000;
        v8 = 42496;
        goto LABEL_6;
      }

LABEL_26:
      v7 = 655360;
      v8 = 44800;
      goto LABEL_6;
    }

    v16 = &v20;
  }

  else
  {
    v16 = 0;
    v13 = 0;
  }

  v15 = *(v11 + 3);
  if (v15)
  {
    v15();
  }

  img4_firmware_init_from_buff();
  img4_firmware_init();
  result = img4_firmware_attach_manifest();
  if (!v13 || v13 < v16)
  {
    img4_firmware_execute();
    img4_firmware_destroy();
    v9 = 0;
    v7 = 0;
    v8 = 256;
    return v8 | v9 | v7;
  }

  __break(0x5519u);
  return result;
}

uint64_t firmwareExecuteCallback(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  if (a3 > 32)
  {
    if (a3 > 78)
    {
      switch(a3)
      {
        case 'O':
          v6 = 172291;
          break;
        case 'P':
          *(a4 + 24) = 303875;
          v5 = "libCS: failed AppleImage4 callback: Wrong Crypto";
          goto LABEL_30;
        case '\\':
          v6 = 106755;
          break;
        default:
          goto LABEL_29;
      }

      *(a4 + 24) = v6;
      v5 = "libCS: failed AppleImage4 callback: Unknown Format";
      goto LABEL_30;
    }

    if (a3 == 33)
    {
      *(a4 + 24) = 567811;
      v5 = "libCS: failed AppleImage4 callback: Decode Error";
      goto LABEL_30;
    }

    if (a3 == 70)
    {
      *(a4 + 24) = 434179;
      v5 = "libCS: failed AppleImage4 callback: Stale Nonce";
      goto LABEL_30;
    }

LABEL_29:
    *(a4 + 24) = 700163;
    v5 = "libCS: failed AppleImage4 callback: Unknown Error";
    goto LABEL_30;
  }

  if (a3 <= 1)
  {
    if (a3)
    {
      if (a3 != 1)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v7 = *(*a4 + 40);
      if (!v7 || v7(a2, a2))
      {
        result = img4_image_get_bytes();
        v10 = *(result + 8);
        v9 = *(result + 16);
        if (v10 > v10 + v9)
        {
          __break(0x5519u);
        }

        else
        {
          *(a4 + 8) = v10;
          *(a4 + 16) = v9;
          *(a4 + 24) = 3;
        }

        return result;
      }
    }

    *(a4 + 24) = 633603;
    v5 = "libCS: failed AppleImage4 callback: Auxiliary Error";
    goto LABEL_30;
  }

  if (a3 == 2)
  {
    *(a4 + 24) = 238083;
    v5 = "libCS: failed AppleImage4 callback: Wrong Object";
    goto LABEL_30;
  }

  if (a3 == 8)
  {
    *(a4 + 24) = 500995;
    v5 = "libCS: failed AppleImage4 callback: Payload Violation";
    goto LABEL_30;
  }

  if (a3 != 13)
  {
    goto LABEL_29;
  }

  *(a4 + 24) = 369667;
  v5 = "libCS: failed AppleImage4 callback: Manifest Violation";
LABEL_30:

  return puts(v5);
}

uint64_t extractImage4Payload(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v33 = 0;
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
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  memset(v12, 0, sizeof(v12));
  Img4DecodeInitPayload(a1, a2, v12);
  if (v8)
  {
    Img4DecodeInit(a1, a2, v12);
    if (v9)
    {
      return 109185;
    }
  }

  v11 = v14;
  *a3 = *(&v13 + 1);
  *a4 = v11;
  return 129;
}

uint64_t validateModule0(_DWORD *a1, unint64_t a2)
{
  if (a2 < 0x18)
  {
    return 75331;
  }

  if (*a1)
  {
    return 139843;
  }

  if (20 * a1[5] + 24 <= a2)
  {
    return 67;
  }

  return 337475;
}

uint64_t queryModule0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = 74818;
  v5 = *(a1 + 20);
  if (v5)
  {
    for (i = a1 + 24; ; i += 20)
    {
      v7 = *i == *a2 && *(i + 8) == *(a2 + 8);
      if (v7 && *(i + 16) == *(a2 + 16))
      {
        break;
      }

      if (!--v5)
      {
        return result;
      }
    }

    if (a3)
    {
      *(a3 + 8) = i;
    }

    return 66;
  }

  return result;
}

uint64_t validateModule1(_DWORD *a1, unint64_t a2)
{
  if (a2 < 0x18)
  {
    return 75333;
  }

  if (*a1 != 1)
  {
    return 139845;
  }

  if (22 * a1[5] + 24 <= a2)
  {
    return 69;
  }

  return 337477;
}

uint64_t queryModule1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = 140356;
  v5 = *(a1 + 20);
  if (!v5)
  {
    return 74820;
  }

  v6 = 0;
  v7 = v5 - 1;
  v8 = a1 + 24;
  v9 = v8 + 22 * v5;
  while (1)
  {
    v10 = (v6 + v7) >> 1;
    v11 = v8 + 22 * v10;
    if (v11 >= v9 || v11 < v8)
    {
      __break(0x5519u);
      return result;
    }

    v13 = bswap64(*v11);
    v14 = bswap64(*a2);
    if (v13 == v14)
    {
      v13 = bswap64(*(v11 + 8));
      v14 = bswap64(*(a2 + 8));
      if (v13 == v14)
      {
        v13 = bswap32(*(v11 + 16));
        v14 = bswap32(*(a2 + 16));
        if (v13 == v14)
        {
          break;
        }
      }
    }

    if (v13 < v14)
    {
      v15 = -1;
    }

    else
    {
      v15 = 1;
    }

    if (v15 < 0)
    {
      v6 = v10 + 1;
    }

    else
    {
      if (v6 + v7 < 2)
      {
        return result;
      }

      v7 = v10 - 1;
    }

    if (v6 > v7)
    {
      return result;
    }
  }

  if (v11)
  {
    if (a3)
    {
      *(a3 + 8) = v11;
    }

    return 68;
  }

  return result;
}

uint64_t validateModule2(_DWORD *a1, unint64_t a2)
{
  if (a2 < 0x18)
  {
    return 75335;
  }

  if (*a1 != 2)
  {
    return 139847;
  }

  if (24 * a1[5] + 24 <= a2)
  {
    return 71;
  }

  return 337479;
}

uint64_t queryModule2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = 140358;
  v5 = *(a1 + 20);
  if (!v5)
  {
    return 74822;
  }

  v6 = 0;
  v7 = v5 - 1;
  v8 = a1 + 24;
  v9 = v8 + 24 * v5;
  while (1)
  {
    v10 = (v6 + v7) >> 1;
    v11 = v8 + 24 * v10;
    if (v11 >= v9 || v11 < v8)
    {
      __break(0x5519u);
      return result;
    }

    v13 = bswap64(*v11);
    v14 = bswap64(*a2);
    if (v13 == v14)
    {
      v13 = bswap64(*(v11 + 8));
      v14 = bswap64(*(a2 + 8));
      if (v13 == v14)
      {
        v13 = bswap32(*(v11 + 16));
        v14 = bswap32(*(a2 + 16));
        if (v13 == v14)
        {
          break;
        }
      }
    }

    if (v13 < v14)
    {
      v15 = -1;
    }

    else
    {
      v15 = 1;
    }

    if (v15 < 0)
    {
      v6 = v10 + 1;
    }

    else
    {
      if (v6 + v7 < 2)
      {
        return result;
      }

      v7 = v10 - 1;
    }

    if (v6 > v7)
    {
      return result;
    }
  }

  if (v11)
  {
    if (a3)
    {
      *(a3 + 8) = v11;
    }

    return 70;
  }

  return result;
}

uint64_t moduleUUID(int *a1)
{
  v1 = *a1;
  if (*a1 == 2)
  {
    return module2UUID(a1);
  }

  if (v1 == 1)
  {
    return module1UUID(a1);
  }

  if (v1)
  {
    return 0;
  }

  return module0UUID(a1);
}

uint64_t validateModule(int *a1, unint64_t a2)
{
  if (a2 < 4)
  {
    return 75329;
  }

  v3 = *a1;
  if (*a1 == 2)
  {
    LODWORD(result) = validateModule2(a1, a2);
  }

  else if (v3 == 1)
  {
    LODWORD(result) = validateModule1(a1, a2);
  }

  else
  {
    if (v3)
    {
      return 139585;
    }

    LODWORD(result) = validateModule0(a1, a2);
  }

  if ((result & 0xFF00) != 0)
  {
    return result;
  }

  else
  {
    return 65;
  }
}

uint64_t moduleCapabilities(unsigned int *a1, uint64_t *a2)
{
  v2 = *a1;
  switch(v2)
  {
    case 0:
LABEL_5:
      if (!a2)
      {
        return 72;
      }

LABEL_6:
      *a2 = v2;
      return 72;
    case 1:
      v2 = 3;
      if (!a2)
      {
        return 72;
      }

      goto LABEL_6;
    case 2:
      v2 = 7;
      goto LABEL_5;
  }

  return 74056;
}

uint64_t queryModule(int *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  if (*a1 == 2)
  {
    LODWORD(result) = queryModule2(a1, a2, a3);
  }

  else if (v3 == 1)
  {
    LODWORD(result) = queryModule1(a1, a2, a3);
  }

  else
  {
    if (v3)
    {
      return 74048;
    }

    LODWORD(result) = queryModule0(a1, a2, a3);
  }

  if ((result & 0xFF00) != 0)
  {
    return result;
  }

  else
  {
    return 64;
  }
}

uint64_t moduleEntryHashType(int *a1, uint64_t a2, _BYTE *a3)
{
  result = 74004;
  v5 = *a1;
  if (v5)
  {
    if (v5 == 2)
    {
      v7 = module2EntryHashType(a2);
      if (!a3)
      {
        return 20;
      }

LABEL_7:
      *a3 = v7;
      return 20;
    }

    if (v5 == 1)
    {
      v7 = module1EntryHashType(a2);
      if (!a3)
      {
        return 20;
      }

      goto LABEL_7;
    }

    return 139540;
  }

  return result;
}

uint64_t moduleEntryFlags(int *a1, uint64_t a2, void *a3)
{
  result = 74005;
  v5 = *a1;
  if (v5)
  {
    if (v5 == 2)
    {
      v7 = module2EntryFlags(a2);
      if (!a3)
      {
        return 21;
      }

LABEL_7:
      *a3 = v7;
      return 21;
    }

    if (v5 == 1)
    {
      v7 = module1EntryFlags(a2);
      if (!a3)
      {
        return 21;
      }

      goto LABEL_7;
    }

    return 139541;
  }

  return result;
}

uint64_t moduleEntryConstraintCategory(int *a1, uint64_t a2, _BYTE *a3)
{
  result = 74006;
  v5 = *a1;
  if (v5)
  {
    if (v5 == 2)
    {
      v7 = module2EntryConstraintCategory(a2);
      if (a3)
      {
        *a3 = v7;
      }

      return 22;
    }

    else if (v5 == 1)
    {
      return 139542;
    }

    else
    {
      return 205078;
    }
  }

  return result;
}

uint64_t addLinkAtHead(atomic_ullong *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a1;
  do
  {
    atomic_store(v2, a2);
    atomic_compare_exchange_strong_explicit(a1, &v3, a2, memory_order_release, memory_order_relaxed);
    v4 = v3 == v2;
    v2 = v3;
  }

  while (!v4);
  return 128;
}

atomic_ullong *acquireHead(atomic_ullong *result)
{
  if (result)
  {
    return atomic_load_explicit(result, memory_order_acquire);
  }

  return result;
}

uint64_t trustCacheCheckRuntimeForUUID(uint64_t a1, void *a2, int **a3)
{
  result = 75013;
  if (a1)
  {
    if (a2)
    {
      v6 = searchRuntimeForUUID(a1, a2);
      if (v6)
      {
        if (a3)
        {
          *a3 = v6;
        }

        return 5;
      }

      else
      {
        return 205829;
      }
    }

    else
    {
      return 140549;
    }
  }

  return result;
}

uint64_t trustCacheExtractModule(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = 75014;
  v5 = 0;
  v6 = 0;
  if (a2)
  {
    if (a3)
    {
      if (__CFADD__(a2, a3))
      {
        return 204806;
      }

      else
      {
        result = extractImage4Payload(a2, a3, &v5, &v6);
        if ((result & 0xFF00) == 0)
        {
          LODWORD(result) = trustCacheConstructInvalid(a1, v5, v6);
          if ((result & 0xFF00) != 0)
          {
            return result;
          }

          else
          {
            return 6;
          }
        }
      }
    }

    else
    {
      return 140550;
    }
  }

  return result;
}

unsigned int *trustCacheGetCapabilities(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 16);
  result = *(a1 + 24);
  if (v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = result == 0;
  }

  if (v4)
  {
    return moduleCapabilities(result, a2);
  }

  __break(0x5519u);
  return result;
}

uint64_t trustCacheGetUUID(uint64_t a1, _OWORD *a2)
{
  result = 75015;
  if (a1)
  {
    if (a2)
    {
      result = *(a1 + 24);
      if (*(a1 + 16))
      {
        v5 = 1;
      }

      else
      {
        v5 = result == 0;
      }

      if (v5)
      {
        v6 = moduleUUID(result);
        if (v6)
        {
          *a2 = *v6;
          return 7;
        }

        else
        {
          return 205319;
        }
      }

      else
      {
        __break(0x5519u);
      }
    }

    else
    {
      return 140551;
    }
  }

  return result;
}

uint64_t trustCacheGetModule(uint64_t a1, void *a2, void *a3)
{
  if (!a1)
  {
    return 75016;
  }

  result = 8;
  if (a2)
  {
    if (a3)
    {
      v5 = *(a1 + 16);
      *a2 = *(a1 + 24);
      *a3 = v5;
    }
  }

  return result;
}

int *searchChainForUUID(atomic_ullong *a1, void *a2)
{
  for (i = acquireHead(a1); i; i = atomic_load(i))
  {
    if ((*(i + 9) & 1) == 0)
    {
      result = i[3];
      if (i[2])
      {
        v5 = 1;
      }

      else
      {
        v5 = result == 0;
      }

      if (!v5)
      {
        __break(0x5519u);
        return result;
      }

      v6 = moduleUUID(result);
      if (v6)
      {
        if (*v6 == *a2 && v6[1] == a2[1])
        {
          return i;
        }
      }
    }
  }

  return i;
}

int *searchRuntimeForUUID(uint64_t a1, void *a2)
{
  v3 = 0;
  v7[0] = a1 + 16;
  v7[1] = a1 + 24;
  v4 = *(a1 + 32) + 8;
  v7[2] = *(a1 + 32);
  v7[3] = v4;
  do
  {
    result = searchChainForUUID(v7[v3], a2);
    if (result)
    {
      v6 = 1;
    }

    else
    {
      v6 = v3 == 3;
    }

    ++v3;
  }

  while (!v6);
  return result;
}

uint64_t trustCacheConstructInvalid(uint64_t a1, int *a2, unint64_t a3)
{
  result = 75012;
  if (a2)
  {
    if (a3)
    {
      if (__CFADD__(a2, a3))
      {
        return 204804;
      }

      else
      {
        result = validateModule(a2, a3);
        if ((result & 0xFF00) == 0)
        {
          if (a1)
          {
            *(a1 + 16) = a3;
            *(a1 + 24) = a2;
            atomic_store(0, a1);
            *(a1 + 8) = -1;
          }

          return 4;
        }
      }
    }

    else
    {
      return 140548;
    }
  }

  return result;
}

uint64_t trustCacheLoadModuleRange(uint64_t a1, int a2, uint64_t a3, int *a4, unint64_t a5)
{
  v14 = 0u;
  v15 = 0u;
  v16 = 0uLL;
  if (!a3)
  {
    return 75008;
  }

  result = trustCacheConstructInvalid(&v14, a4, a5);
  if ((result & 0xFF00) != 0)
  {
    return result;
  }

  trustCacheGetUUID(&v14, &v16);
  if ((trustCacheCheckRuntimeForUUID(a1, &v16, 0) & 0xFF00) == 0)
  {
    return 140032;
  }

  result = 206592;
  if (a2 == 2)
  {
    if (!*(a1 + 10))
    {
      return 403200;
    }

    v9 = *(a1 + 32);
  }

  else if (a2 == 1)
  {
    if (!*(a1 + 9))
    {
      return 337664;
    }

    v9 = (a1 + 24);
  }

  else
  {
    if (a2)
    {
      return 468736;
    }

    v9 = (a1 + 16);
    if (atomic_load((a1 + 16)))
    {
      v11 = atomic_load(v9);
      if (atomic_load(v11))
      {
        return result;
      }

      if (!*(a1 + 8))
      {
        return 272128;
      }
    }
  }

  v13 = v15;
  *a3 = v14;
  *(a3 + 16) = v13;
  *(a3 + 8) = a2;
  LODWORD(result) = addLinkAtHead(v9, a3);
  if ((result & 0xFF00) != 0)
  {
    return result;
  }

  else
  {
    return 0;
  }
}

uint64_t trustCacheLoadModule(uint64_t a1, int a2, uint64_t a3, int *a4, unint64_t a5)
{
  if ((a4 + a5) >= a4)
  {
    return trustCacheLoadModuleRange(a1, a2, a3, a4, a5);
  }

  __break(0x5519u);
  return a1;
}

uint64_t trustCacheLoadRange(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = 0u;
  v14 = 0u;
  v15 = 0uLL;
  result = 75009;
  if (a4)
  {
    if (!a5)
    {
      return (result + 0x10000);
    }

    if (!a6)
    {
      return 206081;
    }

    if (!a7)
    {
      return 271617;
    }

    if (!a3)
    {
      return 337153;
    }

    if (!*a1)
    {
      return 729345;
    }

    result = 401409;
    if (!__CFADD__(a4, a5))
    {
      if (__CFADD__(a6, a7))
      {
        return (result + 0x10000);
      }

      result = validateImage4(a1, a4, a5, a6, a7, a2);
      if ((result & 0xFF00) == 0)
      {
        result = trustCacheConstructInvalid(&v13, 0, 0);
        if ((result & 0xFF00) == 0)
        {
          trustCacheGetUUID(&v13, &v15);
          if ((trustCacheCheckRuntimeForUUID(a1, &v15, 0) & 0xFF00) == 0)
          {
            return 533249;
          }

          if (a2 - 4 < 0x15)
          {
LABEL_19:
            v11 = *(a1 + 32);
            goto LABEL_20;
          }

          if (a2 == 25)
          {
            v11 = (*(a1 + 32) + 8);
LABEL_20:
            v12 = v14;
            *a3 = v13;
            *(a3 + 16) = v12;
            *(a3 + 8) = a2;
            LODWORD(result) = addLinkAtHead(v11, a3);
            if ((result & 0xFF00) != 0)
            {
              return result;
            }

            else
            {
              return 1;
            }
          }

          result = 599809;
          if (a2 == 3)
          {
            if (!*(a1 + 9))
            {
              return result;
            }

            goto LABEL_19;
          }

          return (result + 0x10000);
        }
      }
    }
  }

  return result;
}

uint64_t trustCacheLoad(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a4 + a5 >= a4 && a6 + a7 >= a6)
  {
    return trustCacheLoadRange(a1, a2, a3, a4, a5, a6, a7);
  }

  __break(0x5519u);
  return a1;
}

unint64_t trustCacheUnload(uint64_t a1, void *a2, unint64_t *a3)
{
  result = searchRuntimeForUUID(a1, a2);
  if (!result)
  {
    return 74761;
  }

  if (*(result + 8) < 2u)
  {
    return 141065;
  }

  *(result + 9) = 1;
  if (!a3)
  {
    return 9;
  }

  if (result < result + 32)
  {
    *a3 = result;
    return 9;
  }

  __break(0x5519u);
  return result;
}

double hash_init(_OWORD *a1)
{
  result = 0.0;
  a1[17] = 0u;
  a1[18] = 0u;
  a1[15] = 0u;
  a1[16] = 0u;
  a1[13] = 0u;
  a1[14] = 0u;
  a1[11] = 0u;
  a1[12] = 0u;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

size_t hash_node_init_cstr(uint64_t a1, char *__s)
{
  result = strlen(__s);
  *a1 |= 2u;
  *(a1 + 16) = __s;
  *(a1 + 24) = result;
  return result;
}

uint64_t hash_insert(uint64_t a1, uint64_t a2)
{
  v4 = os_simple_hash();
  if ((*a2 & 2) == 0)
  {
    hash_insert_cold_3();
  }

  v5 = v4;
  result = hash_lookup(a1, *(a2 + 16), *(a2 + 24));
  if (result)
  {
    hash_insert_cold_1();
  }

  *(a2 + 8) = *(a1 + 8 * (v5 % 0x25));
  *(a1 + 8 * (v5 % 0x25)) = a2;
  if (*a2)
  {
    hash_insert_cold_2();
  }

  *a2 |= 1u;
  ++*(a1 + 296);
  return result;
}

uint64_t hash_lookup(uint64_t a1, const void *a2, size_t a3)
{
  for (i = *(a1 + 8 * (os_simple_hash() % 0x25uLL)); i; i = *(i + 8))
  {
    if (*(i + 24) == a3 && !memcmp(*(i + 16), a2, a3))
    {
      break;
    }
  }

  return i;
}

uint64_t hash_lookup_cstr(uint64_t a1, char *__s)
{
  v4 = strlen(__s);

  return hash_lookup(a1, __s, v4);
}

unint64_t hash_remove(uint64_t a1, uint64_t a2)
{
  result = os_simple_hash();
  v5 = (a1 + 8 * (result % 0x25));
  v6 = *v5;
  if (*v5 != a2)
  {
    do
    {
      v7 = v6;
      v6 = *(v6 + 8);
    }

    while (v6 != a2);
    v5 = (v7 + 8);
  }

  *v5 = *(v6 + 8);
  *(a2 + 8) = -1;
  if ((*a2 & 1) == 0)
  {
    hash_remove_cold_1();
  }

  *a2 &= ~1u;
  --*(a1 + 296);
  return result;
}

void rpc_init_remote(uint64_t a1, xpc_object_t a2, void *a3)
{
  v6 = xpc_array_create(0, 0);
  if (a2)
  {
    xpc_retain(a2);
  }

  else
  {
    a2 = xpc_dictionary_create(0, 0, 0);
  }

  xpc_dictionary_set_value(a2, "argv", v6);
  xpc_dictionary_set_uint64(a2, "subsystem", *(a1 + 16));
  xpc_dictionary_set_uint64(a2, "routine", *(a1 + 24));
  xpc_dictionary_set_uint64(a2, "target-type", *(a1 + 32));
  v7 = *(a1 + 32);
  switch(v7)
  {
    case 2:
      xpc_dictionary_set_mach_send();
      break;
    case 1:
      xpc_dictionary_set_string(a2, "target", (a1 + 40));
      break;
    case 0:
      xpc_dictionary_set_uint64(a2, "target", *(a1 + 40));
      break;
  }

  *a1 = 1;
  if (a3)
  {
    v8 = os_retain(a3);
  }

  else
  {
    v8 = &_os_log_default;
  }

  *(a1 + 8) = v8;
  *(a1 + 296) = a2;
  *(a1 + 304) = v6;
  *(a1 + 312) = -1;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 0u;
  if (v6)
  {

    os_release(v6);
  }
}

CFErrorRef rpc_init_local(uint64_t a1, xpc_object_t xdict, NSObject *a3)
{
  cf = 0;
  v45 = 0u;
  v46 = 0u;
  value = xpc_dictionary_get_value(xdict, "argv");
  if (!value || (v7 = value, xpc_get_type(value) != &_xpc_type_array))
  {
    if (a3)
    {
      if (os_log_type_enabled(a3, OS_LOG_TYPE_ERROR))
      {
        v8 = 3;
      }

      else
      {
        v8 = 2;
      }

      v48 = 67109120;
      v49 = 94;
      v9 = _os_log_send_and_compose_impl(v8, 0, 0, 0, &_mh_execute_header, a3, 16, "Invalid type for rpc argv %{darwin.errno}d", &v48, 8, v45, v46);
    }

    else
    {
      v48 = 67109120;
      v49 = 94;
      v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &_mh_execute_header, &_os_log_default, 16, "Invalid type for rpc argv %{darwin.errno}d", &v48, 8, v45, v46);
    }

    v10 = v9;
    v11 = "com.apple.security.cryptex.posix";
    v12 = 105;
LABEL_10:
    v13 = 94;
LABEL_11:
    v14 = 0;
    goto LABEL_12;
  }

  v17 = xpc_dictionary_get_value(xdict, "subsystem");
  if (!v17 || (v18 = v17, xpc_get_type(v17) != &_xpc_type_uint64))
  {
    if (a3)
    {
      if (os_log_type_enabled(a3, OS_LOG_TYPE_ERROR))
      {
        v19 = 3;
      }

      else
      {
        v19 = 2;
      }

      v48 = 67109120;
      v49 = 94;
      v20 = _os_log_send_and_compose_impl(v19, 0, 0, 0, &_mh_execute_header, a3, 16, "Invalid type for rpc subsystem %{darwin.errno}d", &v48, 8, v45, v46);
    }

    else
    {
      v48 = 67109120;
      v49 = 94;
      v20 = _os_log_send_and_compose_impl(2, 0, 0, 0, &_mh_execute_header, &_os_log_default, 16, "Invalid type for rpc subsystem %{darwin.errno}d", &v48, 8, v45, v46);
    }

    v10 = v20;
    v11 = "com.apple.security.cryptex.posix";
    v12 = 113;
    goto LABEL_10;
  }

  v21 = xpc_dictionary_get_value(xdict, "routine");
  if (!v21 || (v22 = v21, xpc_get_type(v21) != &_xpc_type_uint64))
  {
    if (a3)
    {
      if (os_log_type_enabled(a3, OS_LOG_TYPE_ERROR))
      {
        v23 = 3;
      }

      else
      {
        v23 = 2;
      }

      v48 = 67109120;
      v49 = 94;
      v24 = _os_log_send_and_compose_impl(v23, 0, 0, 0, &_mh_execute_header, a3, 16, "Invalid type for rpc routine %{darwin.errno}d", &v48, 8, v45, v46);
    }

    else
    {
      v48 = 67109120;
      v49 = 94;
      v24 = _os_log_send_and_compose_impl(2, 0, 0, 0, &_mh_execute_header, &_os_log_default, 16, "Invalid type for rpc routine %{darwin.errno}d", &v48, 8, v45, v46);
    }

    v10 = v24;
    v11 = "com.apple.security.cryptex.posix";
    v12 = 121;
    goto LABEL_10;
  }

  v25 = xpc_dictionary_get_value(xdict, "target-type");
  if (!v25 || (v26 = v25, xpc_get_type(v25) != &_xpc_type_uint64))
  {
    if (a3)
    {
      if (os_log_type_enabled(a3, OS_LOG_TYPE_ERROR))
      {
        v27 = 3;
      }

      else
      {
        v27 = 2;
      }

      v48 = 67109120;
      v49 = 94;
      v28 = _os_log_send_and_compose_impl(v27, 0, 0, 0, &_mh_execute_header, a3, 16, "Invalid type for rpc target %{darwin.errno}d", &v48, 8, v45, v46);
    }

    else
    {
      v48 = 67109120;
      v49 = 94;
      v28 = _os_log_send_and_compose_impl(2, 0, 0, 0, &_mh_execute_header, &_os_log_default, 16, "Invalid type for rpc target %{darwin.errno}d", &v48, 8, v45, v46);
    }

    v10 = v28;
    v11 = "com.apple.security.cryptex.posix";
    v12 = 129;
    goto LABEL_10;
  }

  v29 = xpc_dictionary_get_value(xdict, "target");
  v30 = xpc_uint64_get_value(v26);
  if (v30 == 2)
  {
    if (xpc_get_type(v29) != &_xpc_type_mach_send)
    {
      if (a3)
      {
        if (os_log_type_enabled(a3, OS_LOG_TYPE_ERROR))
        {
          v35 = 3;
        }

        else
        {
          v35 = 2;
        }

        v48 = 67109120;
        v49 = 22;
        v36 = _os_log_send_and_compose_impl(v35, 0, 0, 0, &_mh_execute_header, a3, 16, "Invalid value for rpc target %{darwin.errno}d", &v48, 8, v45, v46);
      }

      else
      {
        v48 = 67109120;
        v49 = 22;
        v36 = _os_log_send_and_compose_impl(2, 0, 0, 0, &_mh_execute_header, &_os_log_default, 16, "Invalid value for rpc target %{darwin.errno}d", &v48, 8, v45, v46);
      }

      v10 = v36;
      v11 = "com.apple.security.cryptex.posix";
      v12 = 167;
      goto LABEL_100;
    }

    *(a1 + 40) = xpc_mach_send_copy_right();
  }

  else if (v30 == 1)
  {
    if (xpc_get_type(v29) != &_xpc_type_string)
    {
      if (a3)
      {
        if (os_log_type_enabled(a3, OS_LOG_TYPE_ERROR))
        {
          v33 = 3;
        }

        else
        {
          v33 = 2;
        }

        v48 = 67109120;
        v49 = 22;
        v34 = _os_log_send_and_compose_impl(v33, 0, 0, 0, &_mh_execute_header, a3, 16, "Invalid value for rpc target %{darwin.errno}d", &v48, 8, v45, v46);
      }

      else
      {
        v48 = 67109120;
        v49 = 22;
        v34 = _os_log_send_and_compose_impl(2, 0, 0, 0, &_mh_execute_header, &_os_log_default, 16, "Invalid value for rpc target %{darwin.errno}d", &v48, 8, v45, v46);
      }

      v10 = v34;
      v11 = "com.apple.security.cryptex.posix";
      v12 = 148;
      goto LABEL_100;
    }

    if (xpc_string_get_length(v29) >= 0xFF)
    {
      if (a3)
      {
        if (os_log_type_enabled(a3, OS_LOG_TYPE_ERROR))
        {
          v39 = 3;
        }

        else
        {
          v39 = 2;
        }

        v48 = 67109120;
        v49 = 22;
        v40 = _os_log_send_and_compose_impl(v39, 0, 0, 0, &_mh_execute_header, a3, 16, "Invalid value for rpc target %{darwin.errno}d", &v48, 8, v45, v46);
      }

      else
      {
        v48 = 67109120;
        v49 = 22;
        v40 = _os_log_send_and_compose_impl(2, 0, 0, 0, &_mh_execute_header, &_os_log_default, 16, "Invalid value for rpc target %{darwin.errno}d", &v48, 8, v45, v46);
      }

      v10 = v40;
      v11 = "com.apple.security.cryptex.posix";
      v12 = 156;
      goto LABEL_100;
    }

    string_ptr = xpc_string_get_string_ptr(v29);
    strlcpy((a1 + 40), string_ptr, 0xFFuLL);
  }

  else
  {
    if (v30)
    {
      if (a3)
      {
        if (os_log_type_enabled(a3, OS_LOG_TYPE_ERROR))
        {
          v37 = 3;
        }

        else
        {
          v37 = 2;
        }

        v48 = 67109120;
        v49 = 22;
        v38 = _os_log_send_and_compose_impl(v37, 0, 0, 0, &_mh_execute_header, a3, 16, "Invalid value for rpc target %{darwin.errno}d", &v48, 8, v45, v46);
      }

      else
      {
        v48 = 67109120;
        v49 = 22;
        v38 = _os_log_send_and_compose_impl(2, 0, 0, 0, &_mh_execute_header, &_os_log_default, 16, "Invalid value for rpc target %{darwin.errno}d", &v48, 8, v45, v46);
      }

      v10 = v38;
      v11 = "com.apple.security.cryptex.posix";
      v12 = 175;
      goto LABEL_100;
    }

    if (xpc_get_type(v29) != &_xpc_type_uint64)
    {
      if (a3)
      {
        if (os_log_type_enabled(a3, OS_LOG_TYPE_ERROR))
        {
          v31 = 3;
        }

        else
        {
          v31 = 2;
        }

        v48 = 67109120;
        v49 = 22;
        v32 = _os_log_send_and_compose_impl(v31, 0, 0, 0, &_mh_execute_header, a3, 16, "Invalid value for rpc target %{darwin.errno}d", &v48, 8, v45, v46);
      }

      else
      {
        v48 = 67109120;
        v49 = 22;
        v32 = _os_log_send_and_compose_impl(2, 0, 0, 0, &_mh_execute_header, &_os_log_default, 16, "Invalid value for rpc target %{darwin.errno}d", &v48, 8, v45, v46);
      }

      v10 = v32;
      v11 = "com.apple.security.cryptex.posix";
      v12 = 139;
LABEL_100:
      v13 = 22;
      goto LABEL_11;
    }

    *(a1 + 40) = xpc_uint64_get_value(v29);
  }

  if (_xpc_dictionary_try_get_cferr(xdict, "cferror", &cf))
  {
    *a1 = 1;
    if (a3)
    {
      v42 = os_retain(a3);
    }

    else
    {
      v42 = &_os_log_default;
    }

    *(a1 + 8) = v42;
    *(a1 + 16) = xpc_uint64_get_value(v18);
    *(a1 + 24) = xpc_uint64_get_value(v22);
    *(a1 + 32) = xpc_uint64_get_value(v26);
    *(a1 + 296) = xpc_retain(xdict);
    *(a1 + 304) = v7;
    xpc_dictionary_get_audit_token();
    rpc_cred_init_with_audit_token((a1 + 328), &v45);
    Error = 0;
    goto LABEL_13;
  }

  if (a3)
  {
    if (os_log_type_enabled(a3, OS_LOG_TYPE_ERROR))
    {
      v43 = 3;
    }

    else
    {
      v43 = 2;
    }

    LOWORD(v48) = 0;
    v44 = _os_log_send_and_compose_impl(v43, 0, 0, 0, &_mh_execute_header, a3, 16, "Error from daemon", &v48, 2, v45, v46);
  }

  else
  {
    LOWORD(v48) = 0;
    v44 = _os_log_send_and_compose_impl(2, 0, 0, 0, &_mh_execute_header, &_os_log_default, 16, "Error from daemon", &v48, 2, v45, v46);
  }

  v10 = v44;
  v14 = cf;
  v11 = "com.apple.security.cryptex";
  v12 = 181;
  v13 = 16;
LABEL_12:
  Error = createError("rpc_init_local", "rpc.c", v12, v11, v13, v14, v10);
  free(v10);
LABEL_13:
  if (cf)
  {
    CFRelease(cf);
  }

  return Error;
}

uint64_t rpc_cred_init_with_audit_token(uid_t *a1, _OWORD *a2)
{
  v4 = a2[1];
  *v13.val = *a2;
  *&v13.val[4] = v4;
  *a1 = audit_token_to_auid(&v13);
  v5 = a2[1];
  *v13.val = *a2;
  *&v13.val[4] = v5;
  a1[1] = audit_token_to_euid(&v13);
  v6 = a2[1];
  *v13.val = *a2;
  *&v13.val[4] = v6;
  a1[2] = audit_token_to_egid(&v13);
  v7 = a2[1];
  *v13.val = *a2;
  *&v13.val[4] = v7;
  a1[3] = audit_token_to_ruid(&v13);
  v8 = a2[1];
  *v13.val = *a2;
  *&v13.val[4] = v8;
  a1[4] = audit_token_to_rgid(&v13);
  v9 = a2[1];
  *v13.val = *a2;
  *&v13.val[4] = v9;
  a1[5] = audit_token_to_pid(&v13);
  v10 = a2[1];
  *v13.val = *a2;
  *&v13.val[4] = v10;
  a1[6] = audit_token_to_asid(&v13);
  v11 = a2[1];
  *v13.val = *a2;
  *&v13.val[4] = v11;
  result = audit_token_to_pidversion(&v13);
  a1[7] = result;
  return result;
}

void rpc_init_reply(void *a1, uint64_t a2)
{
  memcpy(a1 + 2, (a2 + 16), 0x118uLL);
  reply = xpc_dictionary_create_reply(*(a2 + 296));
  if (reply)
  {
    v5 = reply;
    v6 = 2;
  }

  else
  {
    v5 = xpc_dictionary_create(0, 0, 0);
    v6 = 10;
  }

  rpc_init_remote(a1, v5, *(a2 + 8));
  *a1 |= v6;
  *a2 |= 4uLL;
  if (v5)
  {

    os_release(v5);
  }
}

uint64_t *rpc_copy(_BYTE *a1)
{
  if ((*a1 & 0x40) != 0)
  {
    rpc_copy_cold_1();
  }

  v2 = malloc_type_calloc(1uLL, 0x168uLL, 0x8709206FuLL);
  if (!v2)
  {
    rpc_copy_cold_2(&v6, v7);
  }

  v3 = v2;
  memcpy(v2, a1, 0x168uLL);
  v4 = *v3;
  v3[37] = xpc_retain(*(a1 + 37));
  *v3 = v4 | 0xC0;
  if (*(a1 + 4) == 2)
  {
    *(a1 + 10) = mach_right_send_retain();
  }

  return v3;
}

void rpc_destroy(_BYTE *a1)
{
  if (*a1)
  {
    if (*(a1 + 4) == 2)
    {
      mach_right_send_release();
    }

    xpc_release(*(a1 + 37));
    os_release(*(a1 + 1));
    if ((*a1 & 0x40) != 0)
    {

      free(a1);
    }
  }
}

void rpc_reply(uint64_t a1, _BYTE *a2, int a3)
{
  if (a3 == 36)
  {
    if ((*a1 & 4) == 0)
    {
      rpc_reply_cold_2();
    }

    if ((*a2 & 0x80) == 0)
    {
      rpc_reply_cold_1();
    }

    v5 = *__error();
    v6 = *(a1 + 8);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "reply in-progress", buf, 2u);
    }

    *__error() = v5;
  }

  else if (a3)
  {
    v7 = a3;
    *buf = 67109120;
    v11 = a3;
    v8 = _os_log_send_and_compose_impl(2, 0, 0, 0, &_mh_execute_header, &_os_log_default, 16, "Daemon replying with POSIX error code %{darwin.errno}d", buf, 8);
    Error = createError("rpc_reply", "rpc.c", 373, "com.apple.security.cryptex.posix", v7, 0, v8);
    free(v8);
    rpc_reply_with_cferr(a1, a2, Error);
    if (Error)
    {
      CFRelease(Error);
    }
  }

  else
  {

    rpc_reply_with_cferr(a1, a2, 0);
  }
}

void rpc_reply_with_cferr(uint64_t a1, uint64_t a2, __CFError *a3)
{
  if ((*a2 & 8) == 0)
  {
    if ((*a2 & 0x10) != 0)
    {
      rpc_reply_with_cferr_cold_1();
    }

    v6 = *__error();
    v7 = *(a1 + 8);
    if (a3)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        *&buf[4] = a3;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "sending reply: %@", buf, 0xCu);
      }

      *__error() = v6;
      *a2 |= 0x10uLL;
      v8 = _xpc_cferr_to_dictionary(a3);
      xpc_dictionary_set_value(*(a2 + 296), "cferror", v8);
    }

    else
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "sending reply [no error]", buf, 2u);
      }

      v8 = 0;
      *__error() = v6;
      *a2 |= 0x10uLL;
    }

    v11 = xpc_pipe_routine_reply();
    if (v11 == 32)
    {
      v12 = *__error();
      v13 = *(a1 + 8);
      if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_20;
      }

      *buf = 0;
      v14 = "caller died";
    }

    else
    {
      if (v11)
      {
        rpc_reply_with_cferr_cold_2(&v15, buf, v11);
      }

      v12 = *__error();
      v13 = *(a1 + 8);
      if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_20;
      }

      *buf = 0;
      v14 = "reply sent";
    }

    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, v14, buf, 2u);
LABEL_20:
    *__error() = v12;
    if (v8)
    {
      os_release(v8);
    }

    return;
  }

  v9 = *__error();
  v10 = *(a1 + 8);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "fake reply, not sending", buf, 2u);
  }

  *__error() = v9;
}

void rpc_copy_cold_2(void *a1, _OWORD *a2)
{
  *a1 = 0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    v4 = 3;
  }

  else
  {
    v4 = 2;
  }

  v5 = __error();
  v6 = strerror(*v5);
  v8 = 136315650;
  v9 = "known-constant allocation";
  v10 = 2048;
  v11 = 360;
  v12 = 2080;
  v13 = v6;
  v7 = 32;
  _os_log_send_and_compose_impl(v4, a1, a2, 80, &_mh_execute_header, &_os_log_default, 16, "allocation failed: obj = %s, size = %lu, error = %s", &v8, v7);
  _os_crash_msg();
  __break(1u);
}

void rpc_reply_with_cferr_cold_2(void *a1, _OWORD *a2, int a3)
{
  *a1 = 0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    v6 = 3;
  }

  else
  {
    v6 = 2;
  }

  v8[0] = 67109120;
  v8[1] = a3;
  v7 = 8;
  _os_log_send_and_compose_impl(v6, a1, a2, 80, &_mh_execute_header, &_os_log_default, 16, "unexpected failure: xpc_pipe_routine_reply: %{darwin.errno}d", v8, v7);
  _os_crash_msg();
  __break(1u);
}

os_log_t object_proto_init(uint64_t a1, int a2, char *category)
{
  result = os_log_create("com.apple.libcryptex", category);
  *(a1 + 16) = result;
  return result;
}

char *object_set_name(uint64_t a1, const char *a2)
{
  v4 = *a1;
  v5 = *__error();
  v6 = *(a1 + 16);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG);
  if (v4)
  {
    if (v7)
    {
      v8 = *a1;
      *buf = 136446722;
      v12 = v4;
      v13 = 2080;
      v14 = v8;
      v15 = 2080;
      v16 = a2;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "%{public}s: changing name: %s -> %s", buf, 0x20u);
    }

    *__error() = v5;
    free(*(a1 + 8));
  }

  else
  {
    if (v7)
    {
      *buf = 136446466;
      v12 = "[anonymous]";
      v13 = 2080;
      v14 = a2;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "%{public}s: setting name: %s", buf, 0x16u);
    }

    *__error() = v5;
  }

  if (_dispatch_is_multithreaded())
  {
    while (1)
    {
      result = strdup(a2);
      if (result)
      {
        break;
      }

      __os_temporary_resource_shortage();
    }
  }

  else
  {
    result = strdup(a2);
    if (!result)
    {
      _protex_init_cold_1(a2, v10, buf);
    }
  }

  *a1 = result;
  *(a1 + 8) = result;
  return result;
}

void object_set_name_nocopy(uint64_t a1, const char *a2)
{
  v4 = *a1;
  v5 = *__error();
  v6 = *(a1 + 16);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG);
  if (v4)
  {
    if (v7)
    {
      v8 = *a1;
      v9 = 136446722;
      v10 = v4;
      v11 = 2080;
      v12 = v8;
      v13 = 2080;
      v14 = a2;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "%{public}s: changing name: %s -> %s", &v9, 0x20u);
    }

    *__error() = v5;
    free(*(a1 + 8));
  }

  else
  {
    if (v7)
    {
      v9 = 136446466;
      v10 = "[anonymous]";
      v11 = 2080;
      v12 = a2;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "%{public}s: setting name: %s", &v9, 0x16u);
    }

    *__error() = v5;
  }

  *a1 = a2;
  *(a1 + 8) = 0;
}

void object_proto_destroy(uint64_t a1)
{
  free(*(a1 + 8));
  v2 = *(a1 + 16);

  os_release(v2);
}

uint64_t _xferfd_unguarded(_DWORD *a1)
{
  v1 = *a1;
  *a1 = -1;
  return v1;
}

size_t _sscandgst(_BYTE *a1, char *__s)
{
  result = strlen(__s);
  if (result)
  {
    v4 = result;
    for (i = 0; i < v4; i += 2)
    {
      v8 = 0;
      *__str = 0;
      __strlcpy_chk();
      result = strtoul(__str, 0, 16);
      if (result >= 0x100)
      {
        _sscandgst_cold_1(v6, v9);
      }

      *a1++ = result;
    }
  }

  return result;
}

uint64_t _opendirat(int a1, char *a2, int a3, uint64_t a4, int *a5)
{
  v8 = a3 | 0x100000;
  if ((a3 & 0x200) != 0)
  {
    if ((mkdirat(a1, a2, a4) & 0x80000000) == 0)
    {
      *__error() = 0;
    }

    v9 = *__error();
    if (v9 != 17 && v9 != 0)
    {
      v11 = -1;
      goto LABEL_11;
    }

    v8 &= ~0x200u;
  }

  v11 = openat(a1, a2, v8, a4);
  if (v11 < 0)
  {
LABEL_11:
    result = *__error();
    if (result)
    {
      return result;
    }
  }

  result = 0;
  *a5 = v11;
  return result;
}

uint64_t _rmrfdirat(uint64_t a1, char *a2)
{
  v3 = a1;
  p_vtable = OS_resource.vtable;
  if (a2)
  {
    v5 = openat(a1, a2, 0x100000);
    v74 = *__error();
    if (v5 < 0)
    {
      v12 = *__error();
      if (log_util_onceToken != -1)
      {
        _rmrfdirat_cold_1();
      }

      v13 = log_util_log;
      if (os_log_type_enabled(log_util_log, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        LODWORD(d_name) = v74;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "openat: %{darwin.errno}d", buf, 8u);
      }

      *__error() = v12;
      return v74;
    }

    if (log_util_onceToken != -1)
    {
      _rmrfdirat_cold_1();
    }

    v6 = log_util_log;
    if (os_log_type_enabled(log_util_log, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      d_name = a2;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "top-level directory: %s", buf, 0xCu);
    }

    *__error() = v74;
  }

  else
  {
    v5 = dup_np();
  }

  v73 = a2;
  v72 = v3;
  if (log_util_onceToken != -1)
  {
    _rmrfdirat_cold_3();
  }

  v7 = log_util_log;
  bzero(buf, 0x400uLL);
  memset(&v89, 0, sizeof(v89));
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    if (fstat(v5, &v89) == -1)
    {
      v14 = *__error();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v15 = *__error();
        *v77 = 136315650;
        v78 = "subdirfd";
        v79 = 1024;
        v80 = v5;
        v81 = 1024;
        LODWORD(v82) = v15;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%s fd[%d] : [invalid descriptor]: %{darwin.errno}d", v77, 0x18u);
      }

      *__error() = v14;
    }

    else
    {
      if (fcntl(v5, 50, buf))
      {
        v8 = __error();
        v9 = strerror(*v8);
        snprintf(buf, 0x400uLL, "[%s]", v9);
      }

      v10 = v89.st_mode >> 12;
      if (v10 == 7)
      {
        v11 = "[unknown]";
      }

      else
      {
        v11 = off_1000749E8[v10 ^ 8];
      }

      v16 = os_flagset_copy_string();
      v17 = *__error();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        *v77 = 136316418;
        v78 = "subdirfd";
        v79 = 1024;
        v80 = v5;
        v81 = 2080;
        v82 = v11;
        v83 = 2048;
        st_size = v89.st_size;
        v85 = 2080;
        v86 = v16;
        v87 = 2080;
        v88 = buf;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "%s fd[%d]: type = %s, size = %lld, flags = %s, path = %s", v77, 0x3Au);
      }

      *__error() = v17;
      free(v16);
      p_vtable = OS_resource.vtable;
    }
  }

  v18 = fdopendir(v5);
  if (!v18)
  {
    view_iterate_resource_cold_3(&v89, buf);
  }

  v19 = v18;
  v76 = 0;
  v20 = 0;
  v21 = 0;
  v74 = -1;
  v75 = v18;
  while (1)
  {
    v22 = v20;
    if ((v20 & 1) == 0)
    {
      break;
    }

    v23 = 128;
LABEL_35:
    v25 = dirfd(v19);
    if (v76 >= 4)
    {
      _rmrfdirat_cold_24(&v89, buf);
    }

    v26 = v25;
    if (v21->d_name[0] == 46)
    {
      v20 = 0;
      if (!v21->d_name[1])
      {
        continue;
      }

      if (v21->d_name[1] == 46)
      {
        v20 = 0;
        if (!v21->d_name[2])
        {
          continue;
        }
      }
    }

    v27 = *__error();
    if (log_util_onceToken != -1)
    {
      _rmrfdirat_cold_3();
    }

    v28 = p_vtable[421];
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      d_name = v21->d_name;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEBUG, "removing: %s", buf, 0xCu);
    }

    *__error() = v27;
    v29 = openat(v26, v21->d_name, 256);
    if ((v29 & 0x80000000) == 0)
    {
      *__error() = 0;
    }

    v30 = *__error();
    if (v30 == 62)
    {
      v41 = *__error();
      if (log_util_onceToken != -1)
      {
        _rmrfdirat_cold_3();
      }

      v42 = p_vtable[421];
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315138;
        d_name = v21->d_name;
        _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEBUG, "%s is a symlink", buf, 0xCu);
      }

      *__error() = v41;
    }

    else
    {
      if (v30 == 2)
      {
        v38 = *__error();
        if (log_util_onceToken != -1)
        {
          _rmrfdirat_cold_3();
        }

        v39 = p_vtable[421];
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315138;
          d_name = v21->d_name;
          _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEBUG, "file disappeared: %s", buf, 0xCu);
        }

        v76 = 0;
        v20 = 0;
        *__error() = v38;
        v40 = 9;
        goto LABEL_131;
      }

      if (v30)
      {
        v74 = *__error();
        v43 = *__error();
        if (log_util_onceToken != -1)
        {
          _rmrfdirat_cold_3();
        }

        v44 = p_vtable[421];
        if (!os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_130;
        }

        *buf = 67109120;
        LODWORD(d_name) = v74;
        v45 = buf;
        v46 = v44;
        v47 = "openat: %{darwin.errno}d";
        goto LABEL_128;
      }

      if (log_util_onceToken != -1)
      {
        _rmrfdirat_cold_3();
      }

      v31 = p_vtable[421];
      bzero(buf, 0x400uLL);
      memset(&v89, 0, sizeof(v89));
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
      {
        if (fstat(v29, &v89) == -1)
        {
          v48 = *__error();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
          {
            v49 = *__error();
            *v77 = 136315650;
            v78 = "defd";
            v79 = 1024;
            v80 = v29;
            v81 = 1024;
            LODWORD(v82) = v49;
            _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "%s fd[%d] : [invalid descriptor]: %{darwin.errno}d", v77, 0x18u);
          }

          *__error() = v48;
        }

        else
        {
          if (fcntl(v29, 50, buf))
          {
            v32 = __error();
            v33 = strerror(*v32);
            snprintf(buf, 0x400uLL, "[%s]", v33);
          }

          v34 = v89.st_mode >> 12;
          v35 = "[unknown]";
          if (v34 != 7)
          {
            v35 = off_1000749E8[v34 ^ 8];
          }

          v36 = os_flagset_copy_string();
          v37 = *__error();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
          {
            *v77 = 136316418;
            v78 = "defd";
            v79 = 1024;
            v80 = v29;
            v81 = 2080;
            v82 = v35;
            v83 = 2048;
            st_size = v89.st_size;
            v85 = 2080;
            v86 = v36;
            v87 = 2080;
            v88 = buf;
            _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEBUG, "%s fd[%d]: type = %s, size = %lld, flags = %s, path = %s", v77, 0x3Au);
          }

          *__error() = v37;
          free(v36);
          p_vtable = (OS_resource + 24);
        }
      }
    }

    if ((unlinkat(v26, v21->d_name, v23) & 0x80000000) == 0)
    {
      *__error() = 0;
    }

    v50 = *__error();
    if (v50 <= 15)
    {
      if (!v50)
      {
        v51 = *__error();
        if (log_util_onceToken != -1)
        {
          _rmrfdirat_cold_3();
        }

        v59 = p_vtable[421];
        if (os_log_type_enabled(v59, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315138;
          d_name = v21->d_name;
          _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEBUG, "removed: %s", buf, 0xCu);
        }

        v53 = __error();
        v40 = 0;
        v76 = 0;
        goto LABEL_110;
      }

      if (v50 != 1)
      {
        if (v50 == 2)
        {
          v51 = *__error();
          if (log_util_onceToken != -1)
          {
            _rmrfdirat_cold_3();
          }

          v52 = p_vtable[421];
          if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315138;
            d_name = v21->d_name;
            _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEBUG, "file disappeared: %s", buf, 0xCu);
          }

          v53 = __error();
          v40 = 0;
LABEL_110:
          v20 = 0;
          *v53 = v51;
          goto LABEL_131;
        }

LABEL_124:
        v74 = *__error();
        v43 = *__error();
        if (log_util_onceToken != -1)
        {
          _rmrfdirat_cold_3();
        }

        v63 = p_vtable[421];
        if (!os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_130;
        }

        *buf = 67109120;
        LODWORD(d_name) = v74;
        v45 = buf;
        v46 = v63;
        v47 = "unlinkat: %{darwin.errno}d";
LABEL_128:
        v64 = 8;
LABEL_129:
        _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_ERROR, v47, v45, v64);
        goto LABEL_130;
      }

      goto LABEL_96;
    }

    if (v50 != 16)
    {
      if (v50 != 21)
      {
        if (v50 == 66)
        {
          v54 = *__error();
          if (log_util_onceToken != -1)
          {
            _rmrfdirat_cold_3();
          }

          v55 = p_vtable[421];
          if (os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315138;
            d_name = v21->d_name;
            _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEBUG, "re-trying directory cleanup: %s", buf, 0xCu);
          }

          v40 = 0;
          v20 = 0;
          *__error() = v54;
          ++v76;
          goto LABEL_131;
        }

        goto LABEL_124;
      }

LABEL_96:
      v56 = *__error();
      if (log_util_onceToken != -1)
      {
        _rmrfdirat_cold_3();
      }

      v57 = p_vtable[421];
      if (os_log_type_enabled(v57, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315138;
        d_name = v21->d_name;
        _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEBUG, "emptying subdirectory: %s", buf, 0xCu);
      }

      *__error() = v56;
      v74 = _rmrfdirat(v29, 0);
      if (!v74)
      {
        goto LABEL_123;
      }

      v43 = *__error();
      if (log_util_onceToken != -1)
      {
        _rmrfdirat_cold_3();
      }

      v58 = p_vtable[421];
      if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        LODWORD(d_name) = v74;
        v45 = buf;
        v46 = v58;
        v47 = "emptydir [recurse]: %{darwin.errno}d";
        goto LABEL_128;
      }

      goto LABEL_130;
    }

    if ((v22 & 1) == 0 && v21->d_type != 4)
    {
      v74 = *__error();
      v43 = *__error();
      if (log_util_onceToken != -1)
      {
        _rmrfdirat_cold_3();
      }

      v65 = p_vtable[421];
      if (!os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_130;
      }

      *buf = 136315394;
      d_name = v21->d_name;
      v92 = 1024;
      v93 = v74;
      v45 = buf;
      v46 = v65;
      v47 = "file busy: %s: %{darwin.errno}d";
      v64 = 18;
      goto LABEL_129;
    }

    bzero(buf, 0x400uLL);
    if (realpath_np())
    {
      _rmrfdirat_cold_16(v77, &v89);
    }

    v60 = *__error();
    if (log_util_onceToken != -1)
    {
      _rmrfdirat_cold_3();
    }

    v61 = p_vtable[421];
    if (os_log_type_enabled(v61, OS_LOG_TYPE_DEBUG))
    {
      v89.st_dev = 136315138;
      *&v89.st_mode = v21->d_name;
      _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEBUG, "mount point; forcing unmount: %s", &v89, 0xCu);
    }

    *__error() = v60;
    if (!unmount(buf, 0x80000))
    {
LABEL_123:
      v40 = 0;
      v74 = 0;
      v20 = 1;
      goto LABEL_131;
    }

    v74 = *__error();
    v43 = *__error();
    if (log_util_onceToken != -1)
    {
      _rmrfdirat_cold_3();
    }

    v62 = p_vtable[421];
    if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
    {
      v89.st_dev = 67109120;
      *&v89.st_mode = v74;
      v45 = &v89;
      v46 = v62;
      v47 = "unmount + MNT_FORCE: %{darwin.errno}d";
      goto LABEL_128;
    }

LABEL_130:
    v20 = 0;
    *__error() = v43;
    v40 = 4;
LABEL_131:
    if (v29 != -1 && close(v29) == -1)
    {
      daemon_init_cold_13(&v89, buf);
    }

    v19 = v75;
    if (v40 && v40 != 9)
    {
      goto LABEL_157;
    }
  }

  v24 = readdir(v19);
  if (v24)
  {
    v21 = v24;
    v23 = 0;
    goto LABEL_35;
  }

  if (v73)
  {
    v66 = unlinkat(v72, v73, 128);
    v74 = *__error();
    if (v66)
    {
      v67 = *__error();
      if (log_util_onceToken != -1)
      {
        _rmrfdirat_cold_3();
      }

      v68 = p_vtable[421];
      if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        LODWORD(d_name) = v74;
        _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_ERROR, "unlinkat [top level]: %{darwin.errno}d", buf, 8u);
      }

      goto LABEL_156;
    }

    if (log_util_onceToken != -1)
    {
      _rmrfdirat_cold_3();
    }

    v70 = p_vtable[421];
    if (os_log_type_enabled(v70, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      d_name = v73;
      _os_log_impl(&_mh_execute_header, v70, OS_LOG_TYPE_DEBUG, "removed top-level directory: %s", buf, 0xCu);
    }

    v67 = v74;
  }

  else
  {
    v67 = *__error();
    if (log_util_onceToken != -1)
    {
      _rmrfdirat_cold_3();
    }

    v69 = p_vtable[421];
    if (os_log_type_enabled(v69, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_DEBUG, "removed subdirectory", buf, 2u);
    }
  }

  v74 = 0;
LABEL_156:
  *__error() = v67;
LABEL_157:
  if (closedir(v19) == -1)
  {
    view_iterate_resource_cold_2(&v89, buf);
  }

  return v74;
}

uint64_t _rmrfdir(char *a1)
{
  v2 = open("/", 0);
  v3 = v2;
  v4 = _rmrfdirat(v2, a1);
  if (v3 != -1 && close(v3) == -1)
  {
    daemon_init_cold_13(&v6, v7);
  }

  return v4;
}

uint64_t _unmountat(int *a1, int a2)
{
  bzero(v14, 0x400uLL);
  v4 = realpath_np();
  v5 = *__error();
  if (v4)
  {
    v6 = *__error();
    if (log_util_onceToken != -1)
    {
      _rmrfdirat_cold_3();
    }

    v7 = log_util_log;
    if (os_log_type_enabled(log_util_log, OS_LOG_TYPE_ERROR))
    {
      v12 = 67109120;
      LODWORD(v13) = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "could not resolve mount point for unmount: %{darwin.errno}d", &v12, 8u);
    }

    *__error() = v6;
  }

  else
  {
    if (log_util_onceToken != -1)
    {
      _rmrfdirat_cold_3();
    }

    v9 = log_util_log;
    if (os_log_type_enabled(log_util_log, OS_LOG_TYPE_DEBUG))
    {
      v12 = 136315138;
      v13 = v14;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "unmounting: %s", &v12, 0xCu);
    }

    *__error() = v5;
    close_drop_np();
    if (unmount(v14, a2))
    {
      v5 = *__error();
      v10 = *__error();
      if (log_util_onceToken != -1)
      {
        _rmrfdirat_cold_3();
      }

      v11 = log_util_log;
      if (os_log_type_enabled(log_util_log, OS_LOG_TYPE_ERROR))
      {
        v12 = 67109120;
        LODWORD(v13) = v5;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "unmount: %{darwin.errno}d", &v12, 8u);
      }

      *__error() = v10;
      if (v5)
      {
        *a1 = open(v14, 1048832);
      }
    }

    else
    {
      return 0;
    }
  }

  return v5;
}

uint64_t _mkodtempat(int a1, char *a2, int *a3)
{
  v5 = mkdtempat_np(a1, a2);
  if (!v5)
  {
    return *__error();
  }

  v6 = openat(a1, v5, 1048832);
  if (v6 < 0)
  {
    return *__error();
  }

  v7 = v6;
  result = 0;
  *a3 = v7;
  return result;
}

uint64_t _mkdir(const char *a1, mode_t a2, int *a3)
{
  if ((mkdir(a1, a2) & 0x80000000) == 0)
  {
    *__error() = 0;
  }

  v5 = *__error();
  if (v5)
  {
    v6 = v5 == 17;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    v10 = __error();
    return *v10;
  }

  v7 = opendir(a1);
  v10 = __error();
  if (!v7)
  {
    return *v10;
  }

  *v10 = 0;
  while (1)
  {
    v8 = readdir(v7);
    if (!v8)
    {
      break;
    }

    if (v8->d_name[0] != 46 || v8->d_name[1] && (v8->d_name[1] != 46 || v8->d_name[2]))
    {
      v9 = 17;
      goto LABEL_21;
    }
  }

  if (*__error() || (v11 = open(a1, 1048832), v11 < 0))
  {
    v9 = *__error();
  }

  else
  {
    v9 = 0;
    *a3 = v11;
  }

LABEL_21:
  if (closedir(v7) == -1)
  {
    view_iterate_resource_cold_2(&v13, v14);
  }

  return v9;
}

BOOL _streq_optional(const char *a1, const char *a2)
{
  if (a1 && a2)
  {
    return strcmp(a1, a2) == 0;
  }

  else
  {
    return a1 == a2;
  }
}

uint64_t _read_file(int a1, void *a2)
{
  memset(&v20, 0, sizeof(v20));
  if (fstat(a1, &v20))
  {
    v4 = *__error();
    v5 = *__error();
    if (log_util_onceToken != -1)
    {
      _rmrfdirat_cold_3();
    }

    v6 = log_util_log;
    if (os_log_type_enabled(log_util_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      LODWORD(v22) = v4;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "stat: %{darwin.errno}d", buf, 8u);
    }

    st_size = 0;
LABEL_7:
    v8 = 0;
    *__error() = v5;
LABEL_8:
    if (!v4)
    {
      goto LABEL_9;
    }

    goto LABEL_10;
  }

  st_size = v20.st_size;
  if (v20.st_size < 0)
  {
    _read_file_cold_6();
  }

  v10 = malloc_type_malloc(v20.st_size, 0xB48626A3uLL);
  if (!v10)
  {
    v4 = *__error();
    v5 = *__error();
    if (log_util_onceToken != -1)
    {
      _rmrfdirat_cold_3();
    }

    v15 = log_util_log;
    if (os_log_type_enabled(log_util_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      LODWORD(v22) = v4;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "malloc: %{darwin.errno}d", buf, 8u);
    }

    goto LABEL_7;
  }

  v8 = v10;
  while (1)
  {
    v11 = pread(a1, v8, st_size, 0);
    if ((v11 & 0x8000000000000000) == 0)
    {
      break;
    }

    v12 = *__error();
    if (log_util_onceToken != -1)
    {
      _rmrfdirat_cold_3();
    }

    v13 = log_util_log;
    if (os_log_type_enabled(log_util_log, OS_LOG_TYPE_ERROR))
    {
      v14 = *__error();
      *buf = 67109120;
      LODWORD(v22) = v14;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "pread: %{darwin.errno}d", buf, 8u);
    }

    *__error() = v12;
    v4 = *__error();
    if (v4 != 4)
    {
      goto LABEL_8;
    }
  }

  v16 = v11;
  v17 = *__error();
  if (v16 == st_size)
  {
    if (log_util_onceToken != -1)
    {
      _rmrfdirat_cold_3();
    }

    v18 = log_util_log;
    if (os_log_type_enabled(log_util_log, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134217984;
      v22 = st_size;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "read %ld bytes", buf, 0xCu);
    }

    *__error() = v17;
LABEL_9:
    buff_init(a2, 0, _buff_destructor_free, v8, st_size);
    v4 = 0;
    v8 = 0;
    goto LABEL_10;
  }

  if (log_util_onceToken != -1)
  {
    _rmrfdirat_cold_3();
  }

  v19 = log_util_log;
  if (os_log_type_enabled(log_util_log, OS_LOG_TYPE_ERROR))
  {
    *buf = 134218240;
    v22 = v16;
    v23 = 2048;
    v24 = st_size;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "truncated read: actual = %ld, expected = %lu", buf, 0x16u);
  }

  *__error() = v17;
  v4 = 5;
LABEL_10:
  free(v8);
  return v4;
}

uint64_t _digest_file(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  memset(&v19, 0, sizeof(v19));
  __chkstk_darwin(a1);
  v7 = &v17 - v6;
  bzero(&v17 - v6, v8);
  if (*a2 >= 0x31uLL)
  {
    _digest_file_cold_5(&v18, buf);
  }

  if (fstat(v5, &v19))
  {
    v9 = *__error();
    v10 = *__error();
    if (log_util_onceToken != -1)
    {
      _rmrfdirat_cold_3();
    }

    v11 = log_util_log;
    if (!os_log_type_enabled(log_util_log, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_8;
    }

    *buf = 67109120;
    *&buf[4] = v9;
    v12 = "failed to stat file: %{darwin.errno}d";
LABEL_7:
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, v12, buf, 8u);
LABEL_8:
    *__error() = v10;
    return v9;
  }

  st_size = v19.st_size;
  if (v19.st_size < 0)
  {
    _read_file_cold_6();
  }

  v14 = mmap(0, v19.st_size, 1, 1, v5, 0);
  if (v14 == -1)
  {
    v9 = *__error();
    v10 = *__error();
    if (log_util_onceToken != -1)
    {
      _rmrfdirat_cold_3();
    }

    v11 = log_util_log;
    if (!os_log_type_enabled(log_util_log, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_8;
    }

    *buf = 67109120;
    *&buf[4] = v9;
    v12 = "failed to map file into memory: %{darwin.errno}d";
    goto LABEL_7;
  }

  v15 = v14;
  ccdigest_init();
  ccdigest_update();
  (*(a2 + 56))(a2, v7, a3 + 16);
  *(a3 + 8) = *a2;
  if (munmap(v15, st_size) == -1)
  {
    _digest_file_cold_2(&v18, buf);
  }

  return 0;
}