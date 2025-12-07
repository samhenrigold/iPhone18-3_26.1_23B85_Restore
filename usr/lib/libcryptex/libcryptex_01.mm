uint64_t ___cryptex_bundle_manifest_remove_build_identity_block_invoke(uint64_t a1, int a2, xpc_object_t xdict)
{
  v30 = *MEMORY[0x29EDCA608];
  value = xpc_dictionary_get_value(xdict, "Info");
  string = xpc_dictionary_get_string(value, "Variant");
  v7 = xpc_dictionary_get_string(xdict, "ApBoardID");
  v8 = xpc_dictionary_get_string(xdict, "ApChipID");
  v9 = xpc_dictionary_get_string(xdict, "ApSecurityDomain");
  v10 = _strtou32(v7, 0, 0);
  if (*__error())
  {
    v11 = *(*(a1 + 32) + 16);
    v12 = *__error();
    v13 = *(*(a1 + 32) + 32);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      if (!v11)
      {
        v11 = "[anonymous]";
      }

      v14 = *__error();
      v24 = 136446722;
      v25 = v11;
      v26 = 2080;
      v27 = v7;
      v28 = 1024;
      v29 = v14;
      v15 = "%{public}s: unable to convert to uint for BORD: %s: %{darwin.errno}d";
LABEL_16:
      _os_log_impl(&dword_2986C0000, v13, OS_LOG_TYPE_ERROR, v15, &v24, 0x1Cu);
      goto LABEL_17;
    }

    goto LABEL_17;
  }

  v16 = _strtou32(v8, 0, 0);
  if (*__error())
  {
    v17 = *(*(a1 + 32) + 16);
    v12 = *__error();
    v13 = *(*(a1 + 32) + 32);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      if (!v17)
      {
        v17 = "[anonymous]";
      }

      v18 = *__error();
      v24 = 136446722;
      v25 = v17;
      v26 = 2080;
      v27 = v8;
      v28 = 1024;
      v29 = v18;
      v15 = "%{public}s: unable to convert to uint for CHIP: %s: %{darwin.errno}d";
      goto LABEL_16;
    }

LABEL_17:
    *__error() = v12;
    return 1;
  }

  v19 = _strtou32(v9, 0, 0);
  if (*__error())
  {
    v20 = *(*(a1 + 32) + 16);
    v12 = *__error();
    v13 = *(*(a1 + 32) + 32);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      if (!v20)
      {
        v20 = "[anonymous]";
      }

      v21 = *__error();
      v24 = 136446722;
      v25 = v20;
      v26 = 2080;
      v27 = v9;
      v28 = 1024;
      v29 = v21;
      v15 = "%{public}s: unable to convert to uint for SDOM: %s: %{darwin.errno}d";
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  v23 = *(a1 + 40);
  if (strcmp(*(v23 + 16), string) || *(v23 + 72) != v10 || *(v23 + 76) != v16 || *(v23 + 80) != v19)
  {
    xpc_array_append_value(*(a1 + 48), xdict);
  }

  return 1;
}

char *_cryptex_bundle_default_asset_path(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 16);
  v4 = *(*(a2 + 8) + 40);
  v5 = 0;
  if (asprintf(&v5, "%s/%s/%s", "Cryptex", v2, v4) < 0)
  {
    _cryptex_bundle_add_cryptex_assets_cold_1(&v6, v7);
  }

  return v5;
}

double OUTLINED_FUNCTION_1_3(void *a1, _OWORD *a2)
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

uint64_t OUTLINED_FUNCTION_5_2(uint64_t a1)
{

  return _os_crash_msg();
}

uint64_t collation_create_for_user(uint64_t a1)
{
  v2 = [Collation alloc];

  return [(Collation *)v2 initForUser:a1];
}

uint64_t collation_get_id(void *a1)
{
  v1 = [a1 ccore];
  v2 = [v1 getID];

  return v2;
}

void collation_foreach(void *a1, void *a2)
{
  v3 = a2;
  v4 = [a1 ccore];
  [v4 enumerateElements:v3];
}

void *collation_get_description(void *a1)
{
  v1 = a1;
  v2 = [v1 package];
  v10 = 0;
  v3 = [MEMORY[0x29EDB9FF0] dataWithJSONObject:v2 options:1 error:&v10];
  if (v10)
  {
    v4 = [v1 log];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      collation_get_description_cold_1();
    }
  }

  v5 = [objc_alloc(MEMORY[0x29EDBA0F8]) initWithData:v3 encoding:4];
  [v1 setColl_description:v5];

  v6 = [v1 coll_description];

  if (v6)
  {
    v7 = [v1 coll_description];
    v8 = [v7 UTF8String];
  }

  else
  {
    v8 = &unk_2986EE629;
  }

  return v8;
}

char *collation_copy_mount_point_for_cryptex_bundle_id(void *a1, uint64_t a2)
{
  v3 = MEMORY[0x29EDBA0F8];
  v4 = a1;
  v5 = [v3 stringWithUTF8String:a2];
  v6 = [v4 mountPointOfBundleID:v5];

  if (v6)
  {
    v7 = [v6 UTF8String];
  }

  else
  {
    v7 = &unk_2986EE629;
  }

  v8 = strdup(v7);

  return v8;
}

char *collation_copy_search_path(void *a1, uint64_t a2, void *a3)
{
  v5 = a1;
  v6 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:a2];
  if (a3)
  {
    a3 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:a3];
  }

  v7 = [v5 getValidPaths:v6 forLabels:a3];
  v8 = strdup([v7 UTF8String]);

  return v8;
}

uint64_t collation_element_scope_get_description(uint64_t a1)
{
  v1 = [MEMORY[0x29EDC9620] scopeToString:a1];
  v2 = [v1 UTF8String];

  return v2;
}

uint64_t cryptex_mount(void *a1, void *a2, char **a3, CFTypeRef *a4)
{
  v128 = *MEMORY[0x29EDCA608];
  v6 = a2;
  cf = 0;
  v113 = dispatch_get_global_queue(0, 0);
  persistence = _cryptex_attr_get_persistence(v6);
  v8 = persistence;
  if (persistence)
  {
    v9 = _mount_log(persistence);

    if (v9)
    {
      v11 = _mount_log(v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = 3;
      }

      else
      {
        v12 = 2;
      }

      *buf = 134217984;
      *&buf[4] = v8;
      v13 = _os_log_send_and_compose_impl(v12, 0, 0, 0, &dword_2986C0000, v11, 16, "Unsupported cryptex persistence: %llu", buf);
    }

    else
    {
      *buf = 134217984;
      *&buf[4] = v8;
      v13 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986C0000, MEMORY[0x29EDCA988], 16, "Unsupported cryptex persistence: %llu", buf);
    }

    Error = createError("cryptex_mount", "cryptex_mount.m", 49, "com.apple.security.cryptex", 2, 0, v13);
    v18 = 0;
    v17 = 0;
    v14 = 0;
    goto LABEL_84;
  }

  v14 = _cryptex_get_core(a1);
  is_cryptex1 = cryptex_core_is_cryptex1();
  if ((is_cryptex1 & 1) == 0)
  {
    v20 = _mount_log(is_cryptex1);

    if (v20)
    {
      v22 = _mount_log(v21);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v23 = 3;
      }

      else
      {
        v23 = 2;
      }

      *buf = 0;
      v13 = _os_log_send_and_compose_impl(v23, 0, 0, 0, &dword_2986C0000, v22, 16, "Cryptex1 bundle format is required to mount.", buf, 2);
    }

    else
    {
      *buf = 0;
      v13 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986C0000, MEMORY[0x29EDCA988], 16, "Cryptex1 bundle format is required to mount.", buf, 2);
    }

    v24 = createError("cryptex_mount", "cryptex_mount.m", 57, "com.apple.security.cryptex", 2, 0, v13);
    goto LABEL_83;
  }

  if (!cryptex_core_get_asset())
  {
    v25 = _mount_log(0);

    if (v25)
    {
      v27 = _mount_log(v26);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v28 = 3;
      }

      else
      {
        v28 = 2;
      }

      *buf = 0;
      v13 = _os_log_send_and_compose_impl(v28, 0, 0, 0, &dword_2986C0000, v27, 16, "Cryptex is not personalized.", buf, 2);
    }

    else
    {
      *buf = 0;
      v13 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986C0000, MEMORY[0x29EDCA988], 16, "Cryptex is not personalized.", buf, 2);
    }

    v24 = createError("cryptex_mount", "cryptex_mount.m", 64, "com.apple.security.cryptex", 2, 0, v13);
    goto LABEL_83;
  }

  if (!cryptex_core_get_image_asset())
  {
    v29 = _mount_log(0);

    if (v29)
    {
      v31 = _mount_log(v30);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        v32 = 3;
      }

      else
      {
        v32 = 2;
      }

      *buf = 0;
      v13 = _os_log_send_and_compose_impl(v32, 0, 0, 0, &dword_2986C0000, v31, 16, "Failed to load dmg asset", buf, 2);
    }

    else
    {
      *buf = 0;
      v13 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986C0000, MEMORY[0x29EDCA988], 16, "Failed to load dmg asset", buf, 2);
    }

    v24 = createError("cryptex_mount", "cryptex_mount.m", 71, "com.apple.security.cryptex", 2, 0, v13);
    goto LABEL_83;
  }

  if (!cryptex_core_get_tc_asset())
  {
    v33 = _mount_log(0);

    if (v33)
    {
      v35 = _mount_log(v34);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        v36 = 3;
      }

      else
      {
        v36 = 2;
      }

      *buf = 0;
      v13 = _os_log_send_and_compose_impl(v36, 0, 0, 0, &dword_2986C0000, v35, 16, "Failed to load trust cache asset.", buf, 2);
    }

    else
    {
      *buf = 0;
      v13 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986C0000, MEMORY[0x29EDCA988], 16, "Failed to load trust cache asset.", buf, 2);
    }

    v24 = createError("cryptex_mount", "cryptex_mount.m", 78, "com.apple.security.cryptex", 2, 0, v13);
    goto LABEL_83;
  }

  if (!cryptex_core_get_info_asset())
  {
    v37 = _mount_log(0);

    if (v37)
    {
      v39 = _mount_log(v38);
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        v40 = 3;
      }

      else
      {
        v40 = 2;
      }

      *buf = 0;
      v13 = _os_log_send_and_compose_impl(v40, 0, 0, 0, &dword_2986C0000, v39, 16, "Failed to load info asset.", buf, 2);
    }

    else
    {
      *buf = 0;
      v13 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986C0000, MEMORY[0x29EDCA988], 16, "Failed to load info asset.", buf, 2);
    }

    v24 = createError("cryptex_mount", "cryptex_mount.m", 85, "com.apple.security.cryptex", 2, 0, v13);
    goto LABEL_83;
  }

  if (!cryptex_core_get_volumehash_asset())
  {
    v16 = _mount_log(0);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_2986C0000, v16, OS_LOG_TYPE_INFO, "No volume root hash present.", buf, 2u);
    }
  }

  v17 = cryptex_core_get_cryptex1_properties();
  if (!v17)
  {
    v41 = _mount_log(0);

    if (v41)
    {
      v43 = _mount_log(v42);
      if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        v44 = 3;
      }

      else
      {
        v44 = 2;
      }

      *buf = 0;
      v13 = _os_log_send_and_compose_impl(v44, 0, 0, 0, &dword_2986C0000, v43, 16, "Failed to load Cryptex1 properties.", buf, 2);
    }

    else
    {
      *buf = 0;
      v13 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986C0000, MEMORY[0x29EDCA988], 16, "Failed to load Cryptex1 properties.", buf, 2);
    }

    v24 = createError("cryptex_mount", "cryptex_mount.m", 97, "com.apple.security.cryptex", 2, 0, v13);
LABEL_83:
    Error = v24;
    v18 = 0;
    v17 = 0;
LABEL_84:
    v59 = 0;
    v51 = 0;
LABEL_85:
    v57 = 0;
    goto LABEL_86;
  }

  v18 = cryptex_core_cx1_copy_xpc_dictionary();
  if (!v18)
  {
    v45 = _mount_log(0);

    if (v45)
    {
      v47 = _mount_log(v46);
      if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
      {
        v48 = 3;
      }

      else
      {
        v48 = 2;
      }

      *buf = 0;
      v13 = _os_log_send_and_compose_impl(v48, 0, 0, 0, &dword_2986C0000, v47, 16, "Failed to parse Cryptex1 properties.", buf, 2);
    }

    else
    {
      *buf = 0;
      v13 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986C0000, MEMORY[0x29EDCA988], 16, "Failed to parse Cryptex1 properties.", buf, 2);
    }

    Error = createError("cryptex_mount", "cryptex_mount.m", 104, "com.apple.security.cryptex", 2, 0, v13);
    v18 = 0;
    goto LABEL_84;
  }

  mount_request = mount_interface_create_mount_request();
  v50 = 0;
  v51 = v50;
  if (mount_request)
  {
    v52 = _mount_log(v50);

    if (v52)
    {
      v54 = _mount_log(v53);
      if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
      {
        v55 = 3;
      }

      else
      {
        v55 = 2;
      }

      *buf = 0;
      v13 = _os_log_send_and_compose_impl(v55, 0, 0, 0, &dword_2986C0000, v54, 16, "Failed to create mount request.", buf, 2);
    }

    else
    {
      *buf = 0;
      v13 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986C0000, MEMORY[0x29EDCA988], 16, "Failed to create mount request.", buf, 2);
    }

    v66 = createError("cryptex_mount", "cryptex_mount.m", 122, "com.apple.security.cryptex", 2, mount_request, v13);
    v59 = 0;
    v57 = 0;
LABEL_96:
    Error = v66;
    goto LABEL_86;
  }

  connection = cryptex_xpc_create_connection();
  v57 = connection;
  if (!connection)
  {
    v67 = _mount_log(0);

    if (v67)
    {
      v69 = _mount_log(v68);
      if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
      {
        v70 = 3;
      }

      else
      {
        v70 = 2;
      }

      *buf = 0;
      v13 = _os_log_send_and_compose_impl(v70, 0, 0, 0, &dword_2986C0000, v69, 16, "Failed to connect to cryptexd.", buf, 2);
    }

    else
    {
      *buf = 0;
      v13 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986C0000, MEMORY[0x29EDCA988], 16, "Failed to connect to cryptexd.", buf, 2);
    }

    Error = createError("cryptex_mount", "cryptex_mount.m", 129, "com.apple.security.cryptex", 2, 0, v13);
    v59 = 0;
    goto LABEL_85;
  }

  v58 = xpc_connection_send_message_with_reply_sync(connection, v51);
  v59 = v58;
  if (v58)
  {
    if (MEMORY[0x29C28F4F0](v58) == MEMORY[0x29EDCAA18])
    {
      v13 = xpc_copy_debug_description();
      v75 = _mount_log(v13);

      if (v75)
      {
        v77 = _mount_log(v76);
        if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
        {
          v78 = 3;
        }

        else
        {
          v78 = 2;
        }

        *buf = 136315138;
        *&buf[4] = v13;
        __s1 = _os_log_send_and_compose_impl(v78, 0, 0, 0, &dword_2986C0000, v77, 16, "XPC error in response to mount request: %s", buf);

        v79 = createError("cryptex_mount", "cryptex_mount.m", 141, "com.apple.security.cryptex", 2, 0, __s1);
      }

      else
      {
        *buf = 136315138;
        *&buf[4] = v13;
        __s1 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986C0000, MEMORY[0x29EDCA988], 16, "XPC error in response to mount request: %s", buf);
        v79 = createError("cryptex_mount", "cryptex_mount.m", 141, "com.apple.security.cryptex", 2, 0, __s1);
      }
    }

    else
    {
      if (MEMORY[0x29C28F4F0](v59) == MEMORY[0x29EDCAA00])
      {
        cferr = _xpc_dictionary_try_get_cferr(v59, "MOUNT:ERROR_DICT", &cf);
        v81 = cferr;
        if ((cferr | 2) == 2)
        {
          Error = cf;
          if (cf && (HasDomainAndCode = _CFErrorHasDomainAndCode(cf, @"com.apple.security.cryptex", 1), (HasDomainAndCode & 1) == 0))
          {
            v89 = _mount_log(HasDomainAndCode);

            if (v89)
            {
              v91 = _mount_log(v90);
              if (os_log_type_enabled(v91, OS_LOG_TYPE_ERROR))
              {
                v92 = 3;
              }

              else
              {
                v92 = 2;
              }

              *buf = 138543362;
              *&buf[4] = cf;
              v13 = _os_log_send_and_compose_impl(v92, 0, 0, 0, &dword_2986C0000, v91, 16, "Error in response to mount request: %{public}@", buf, 12);
            }

            else
            {
              *buf = 138543362;
              *&buf[4] = cf;
              v13 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986C0000, MEMORY[0x29EDCA988], 16, "Error in response to mount request: %{public}@", buf, 12);
            }

            v66 = createError("cryptex_mount", "cryptex_mount.m", 173, "com.apple.security.cryptex", 2, cf, v13);
          }

          else
          {
            string = xpc_dictionary_get_string(v59, "MOUNT:MOUNTPATH_STR");
            __s1a = string;
            if (string)
            {
              if (a3)
              {
                v109 = Error;
                if (_dispatch_is_multithreaded())
                {
                  while (1)
                  {
                    string = strdup(__s1a);
                    if (string)
                    {
                      break;
                    }

                    __os_temporary_resource_shortage();
                  }

                  v97 = string;
                }

                else
                {
                  v97 = strdup(__s1a);
                  string = strlen(__s1a);
                  __s1b = string;
                  if (!v97)
                  {
                    v116 = 0;
                    v126 = 0u;
                    v127 = 0u;
                    v124 = 0u;
                    v125 = 0u;
                    *buf = 0u;
                    v98 = MEMORY[0x29EDCA988];
                    v99 = MEMORY[0x29EDCA988];
                    if (os_log_type_enabled(v98, OS_LOG_TYPE_ERROR))
                    {
                      v100 = 3;
                    }

                    else
                    {
                      v100 = 2;
                    }

                    v101 = __error();
                    v102 = strerror(*v101);
                    v117 = 136315650;
                    v118 = "known-constant allocation";
                    v119 = 2048;
                    v120 = __s1b;
                    v121 = 2080;
                    v122 = v102;
                    v103 = MEMORY[0x29EDCA988];
                    _os_log_send_and_compose_impl(v100, &v116, buf, 80, &dword_2986C0000, MEMORY[0x29EDCA988], 16, "allocation failed: obj = %s, size = %lu, error = %s", &v117, 32, v108);

                    _os_crash_msg();
                    cryptex_mount_cold_1();
                  }
                }

                *a3 = v97;
                Error = v109;
              }

              if (!Error)
              {
                v64 = 1;
                goto LABEL_89;
              }

              v104 = _mount_log(string);

              if (v104)
              {
                v106 = _mount_log(v105);
                if (os_log_type_enabled(v106, OS_LOG_TYPE_ERROR))
                {
                  v107 = 3;
                }

                else
                {
                  v107 = 2;
                }

                *buf = 0;
                v13 = _os_log_send_and_compose_impl(v107, 0, 0, 0, &dword_2986C0000, v106, 16, "This cryptex is already mounted.", buf, 2);
              }

              else
              {
                *buf = 0;
                v13 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986C0000, MEMORY[0x29EDCA988], 16, "This cryptex is already mounted.", buf, 2);
              }

              v66 = createError("cryptex_mount", "cryptex_mount.m", 192, "com.apple.security.cryptex", 1, 0, v13);
            }

            else
            {
              v93 = _mount_log(0);

              if (v93)
              {
                v95 = _mount_log(v94);
                if (os_log_type_enabled(v95, OS_LOG_TYPE_ERROR))
                {
                  v96 = 3;
                }

                else
                {
                  v96 = 2;
                }

                *buf = 136315138;
                *&buf[4] = "MOUNT:MOUNTPATH_STR";
                v13 = _os_log_send_and_compose_impl(v96, 0, 0, 0, &dword_2986C0000, v95, 16, "Missing expected reply key: %s", buf);
              }

              else
              {
                *buf = 136315138;
                *&buf[4] = "MOUNT:MOUNTPATH_STR";
                v13 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986C0000, MEMORY[0x29EDCA988], 16, "Missing expected reply key: %s", buf);
              }

              v66 = createError("cryptex_mount", "cryptex_mount.m", 181, "com.apple.security.cryptex", 2, 0, v13);
            }
          }
        }

        else
        {
          v84 = _mount_log(cferr);

          if (v84)
          {
            v86 = _mount_log(v85);
            if (os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
            {
              v87 = 3;
            }

            else
            {
              v87 = 2;
            }

            *buf = 67109120;
            *&buf[4] = v81;
            v88 = v86;
            v13 = _os_log_send_and_compose_impl(v87, 0, 0, 0, &dword_2986C0000, v86, 16, "Error unpacking mount response: %{darwin.errno}d", buf, 8);
          }

          else
          {
            *buf = 67109120;
            *&buf[4] = v81;
            v13 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986C0000, MEMORY[0x29EDCA988], 16, "Error unpacking mount response: %{darwin.errno}d", buf, 8);
          }

          v66 = createError("cryptex_mount", "cryptex_mount.m", 160, "com.apple.security.cryptex", 2, 0, v13);
        }

        goto LABEL_96;
      }

      v13 = xpc_copy_debug_description();
      v60 = _mount_log(v13);

      if (v60)
      {
        v62 = _mount_log(v61);
        if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
        {
          v63 = 3;
        }

        else
        {
          v63 = 2;
        }

        *buf = 136315138;
        *&buf[4] = v13;
        __s1 = _os_log_send_and_compose_impl(v63, 0, 0, 0, &dword_2986C0000, v62, 16, "Unexpected response to mount request: %s", buf);
      }

      else
      {
        *buf = 136315138;
        *&buf[4] = v13;
        __s1 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986C0000, MEMORY[0x29EDCA988], 16, "Unexpected response to mount request: %s", buf);
      }

      v79 = createError("cryptex_mount", "cryptex_mount.m", 146, "com.apple.security.cryptex", 2, 0, __s1);
    }

    Error = v79;
    free(__s1);
    goto LABEL_86;
  }

  v71 = _mount_log(0);

  if (v71)
  {
    v73 = _mount_log(v72);
    if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
    {
      v74 = 3;
    }

    else
    {
      v74 = 2;
    }

    *buf = 0;
    v13 = _os_log_send_and_compose_impl(v74, 0, 0, 0, &dword_2986C0000, v73, 16, "Failed to get response to mount request.", buf, 2);
  }

  else
  {
    *buf = 0;
    v13 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986C0000, MEMORY[0x29EDCA988], 16, "Failed to get response to mount request.", buf, 2);
  }

  Error = createError("cryptex_mount", "cryptex_mount.m", 136, "com.apple.security.cryptex", 2, 0, v13);
  v59 = 0;
LABEL_86:
  free(v13);
  v64 = 0;
  if (a4 && Error)
  {
    v64 = 0;
    *a4 = CFRetain(Error);
  }

LABEL_89:

  if (Error)
  {
    CFRelease(Error);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v64;
}

void sub_2986D4F3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }

  _Unwind_Resume(exception_object);
}

id _mount_log(uint64_t a1)
{
  if (_mount_log_onceToken != -1)
  {
    _mount_log_cold_1();
  }

  v2 = _mount_log_osl;

  return v2;
}

uint64_t cryptex_unmount(void *a1, void *a2, CFTypeRef *a3)
{
  *&v78[5] = *MEMORY[0x29EDCA608];
  v5 = a2;
  cf = 0;
  v6 = dispatch_get_global_queue(0, 0);
  if (v5)
  {
    _cryptex_attr_get_mount_flags(v5);
  }

  v7 = _cryptex_get_core(a1);
  is_cryptex1 = cryptex_core_is_cryptex1();
  if ((is_cryptex1 & 1) == 0)
  {
    v18 = _mount_log(is_cryptex1);

    if (v18)
    {
      v20 = _mount_log(v19);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v21 = 3;
      }

      else
      {
        v21 = 2;
      }

      LOWORD(v77) = 0;
      v17 = _os_log_send_and_compose_impl(v21, 0, 0, 0, &dword_2986C0000, v20, 16, "Cryptex1 bundle format is required to unmount.", &v77, 2);
    }

    else
    {
      LOWORD(v77) = 0;
      v17 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986C0000, MEMORY[0x29EDCA988], 16, "Cryptex1 bundle format is required to unmount.", &v77, 2);
    }

    Error = createError("cryptex_unmount", "cryptex_mount.m", 229, "com.apple.security.cryptex", 2, 0, v17);
    goto LABEL_45;
  }

  info_asset = cryptex_core_get_info_asset();
  if (!info_asset)
  {
    v23 = _mount_log(0);

    if (v23)
    {
      v25 = _mount_log(v24);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v26 = 3;
      }

      else
      {
        v26 = 2;
      }

      v77 = 136315138;
      *v78 = MEMORY[0x28];
      v17 = _os_log_send_and_compose_impl(v26, 0, 0, 0, &dword_2986C0000, v25, 16, "Failed to load asset: %s", &v77);
    }

    else
    {
      v77 = 136315138;
      *v78 = MEMORY[0x28];
      v17 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986C0000, MEMORY[0x29EDCA988], 16, "Failed to load asset: %s", &v77);
    }

    Error = createError("cryptex_unmount", "cryptex_mount.m", 236, "com.apple.security.cryptex", 2, 0, v17);
    goto LABEL_45;
  }

  if ((*(info_asset + 16) & 0x80000000) != 0)
  {
    v27 = _mount_log(info_asset);

    if (v27)
    {
      v29 = _mount_log(v28);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        v30 = 3;
      }

      else
      {
        v30 = 2;
      }

      v77 = 136315138;
      *v78 = MEMORY[0x28];
      v17 = _os_log_send_and_compose_impl(v30, 0, 0, 0, &dword_2986C0000, v29, 16, "Invalid fd for asset: %s", &v77);
    }

    else
    {
      v77 = 136315138;
      *v78 = MEMORY[0x28];
      v17 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986C0000, MEMORY[0x29EDCA988], 16, "Invalid fd for asset: %s", &v77);
    }

    Error = createError("cryptex_unmount", "cryptex_mount.m", 243, "com.apple.security.cryptex", 2, 0, v17);
LABEL_45:
    v41 = Error;
    v34 = 0;
    v12 = 0;
LABEL_46:
    v32 = 0;
    goto LABEL_47;
  }

  unmount_request = mount_interface_create_unmount_request();
  v11 = 0;
  v12 = v11;
  if (unmount_request)
  {
    v13 = _mount_log(v11);

    if (v13)
    {
      v15 = _mount_log(v14);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = 3;
      }

      else
      {
        v16 = 2;
      }

      LOWORD(v77) = 0;
      v17 = _os_log_send_and_compose_impl(v16, 0, 0, 0, &dword_2986C0000, v15, 16, "Failed to create unmount request.", &v77, 2);
    }

    else
    {
      LOWORD(v77) = 0;
      v17 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986C0000, MEMORY[0x29EDCA988], 16, "Failed to create unmount request.", &v77, 2);
    }

    v40 = createError("cryptex_unmount", "cryptex_mount.m", 250, "com.apple.security.cryptex", 2, unmount_request, v17);
    v34 = 0;
    v32 = 0;
LABEL_42:
    v41 = v40;
    goto LABEL_47;
  }

  connection = cryptex_xpc_create_connection();
  v32 = connection;
  if (!connection)
  {
    v44 = _mount_log(0);

    if (v44)
    {
      v46 = _mount_log(v45);
      if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
      {
        v47 = 3;
      }

      else
      {
        v47 = 2;
      }

      LOWORD(v77) = 0;
      v17 = _os_log_send_and_compose_impl(v47, 0, 0, 0, &dword_2986C0000, v46, 16, "Failed to connect to cryptexd.", &v77, 2);
    }

    else
    {
      LOWORD(v77) = 0;
      v17 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986C0000, MEMORY[0x29EDCA988], 16, "Failed to connect to cryptexd.", &v77, 2);
    }

    v41 = createError("cryptex_unmount", "cryptex_mount.m", 257, "com.apple.security.cryptex", 2, 0, v17);
    v34 = 0;
    goto LABEL_46;
  }

  v33 = xpc_connection_send_message_with_reply_sync(connection, v12);
  v34 = v33;
  if (v33)
  {
    if (MEMORY[0x29C28F4F0](v33) == MEMORY[0x29EDCAA18])
    {
      v17 = xpc_copy_debug_description();
      v52 = _mount_log(v17);

      if (v52)
      {
        v54 = _mount_log(v53);
        if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
        {
          v55 = 3;
        }

        else
        {
          v55 = 2;
        }

        v77 = 136315138;
        *v78 = v17;
        cStrb = _os_log_send_and_compose_impl(v55, 0, 0, 0, &dword_2986C0000, v54, 16, "XPC error in response to unmount request: %s", &v77);

        v56 = cStrb;
      }

      else
      {
        v77 = 136315138;
        *v78 = v17;
        v56 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986C0000, MEMORY[0x29EDCA988], 16, "XPC error in response to unmount request: %s", &v77);
      }

      cStr = v56;
      v63 = createError("cryptex_unmount", "cryptex_mount.m", 269, "com.apple.security.cryptex", 2, 0, v56);
    }

    else
    {
      if (MEMORY[0x29C28F4F0](v34) == MEMORY[0x29EDCAA00])
      {
        cferr = _xpc_dictionary_try_get_cferr(v34, "UNMOUNT:ERROR_DICT", &cf);
        v58 = cferr;
        if ((cferr | 2) == 2)
        {
          if (!cf)
          {
            v41 = 0;
            v42 = 1;
            goto LABEL_50;
          }

          v59 = _mount_log(cferr);

          if (v59)
          {
            v61 = _mount_log(v60);
            if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
            {
              v62 = 3;
            }

            else
            {
              v62 = 2;
            }

            v77 = 138543362;
            *v78 = cf;
            v17 = _os_log_send_and_compose_impl(v62, 0, 0, 0, &dword_2986C0000, v61, 16, "Error in response to unmount request: %{public}@", &v77, 12);
          }

          else
          {
            v77 = 138543362;
            *v78 = cf;
            v17 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986C0000, MEMORY[0x29EDCA988], 16, "Error in response to unmount request: %{public}@", &v77, 12);
          }

          v40 = createError("cryptex_unmount", "cryptex_mount.m", 297, "com.apple.security.cryptex", 2, cf, v17);
        }

        else
        {
          v64 = _mount_log(cferr);

          if (v64)
          {
            v66 = _mount_log(v65);
            cStrc = os_log_type_enabled(v66, OS_LOG_TYPE_ERROR);
            v67 = strerror(v58);
            if (cStrc)
            {
              v68 = 3;
            }

            else
            {
              v68 = 2;
            }

            v77 = 67109378;
            v78[0] = v58;
            LOWORD(v78[1]) = 2080;
            *(&v78[1] + 2) = v67;
            v69 = _os_log_send_and_compose_impl(v68, 0, 0, 0, &dword_2986C0000, v66, 16, "Error unpacking unmount response: %d (%s)", COERCE_DOUBLE(67109378), &v77, 18);
          }

          else
          {
            v70 = MEMORY[0x29EDCA988];
            v71 = strerror(v58);
            v77 = 67109378;
            v78[0] = v58;
            LOWORD(v78[1]) = 2080;
            *(&v78[1] + 2) = v71;
            v66 = MEMORY[0x29EDCA988];
            v69 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986C0000, MEMORY[0x29EDCA988], 16, "Error unpacking unmount response: %d (%s)", COERCE_DOUBLE(67109378), &v77, 18);
          }

          v17 = v69;

          v40 = createError("cryptex_unmount", "cryptex_mount.m", 288, "com.apple.security.cryptex", 2, 0, v17);
        }

        goto LABEL_42;
      }

      v17 = xpc_copy_debug_description();
      v35 = _mount_log(v17);

      if (v35)
      {
        v37 = _mount_log(v36);
        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          v38 = 3;
        }

        else
        {
          v38 = 2;
        }

        v77 = 136315138;
        *v78 = v17;
        cStra = _os_log_send_and_compose_impl(v38, 0, 0, 0, &dword_2986C0000, v37, 16, "Unexpected response to unmount request: %s", &v77);

        v39 = cStra;
      }

      else
      {
        v77 = 136315138;
        *v78 = v17;
        v39 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986C0000, MEMORY[0x29EDCA988], 16, "Unexpected response to unmount request: %s", &v77);
      }

      cStr = v39;
      v63 = createError("cryptex_unmount", "cryptex_mount.m", 274, "com.apple.security.cryptex", 2, 0, v39);
    }

    v41 = v63;
    free(cStr);
    goto LABEL_47;
  }

  v48 = _mount_log(0);

  if (v48)
  {
    v50 = _mount_log(v49);
    if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
    {
      v51 = 3;
    }

    else
    {
      v51 = 2;
    }

    LOWORD(v77) = 0;
    v17 = _os_log_send_and_compose_impl(v51, 0, 0, 0, &dword_2986C0000, v50, 16, "Failed to get response to unmount request.", &v77, 2);
  }

  else
  {
    LOWORD(v77) = 0;
    v17 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986C0000, MEMORY[0x29EDCA988], 16, "Failed to get response to unmount request.", &v77, 2);
  }

  v41 = createError("cryptex_unmount", "cryptex_mount.m", 264, "com.apple.security.cryptex", 2, 0, v17);
  v34 = 0;
LABEL_47:
  free(v17);
  v42 = 0;
  if (a3 && v41)
  {
    v42 = 0;
    *a3 = CFRetain(v41);
  }

LABEL_50:

  if (v41)
  {
    CFRelease(v41);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v42;
}

void sub_2986D5CD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, CFTypeRef cf)
{
  free(0);
  if (cf)
  {
    CFRelease(cf);
  }

  _Unwind_Resume(a1);
}

uint64_t ___mount_log_block_invoke()
{
  _mount_log_osl = os_log_create("com.apple.libcryptex", "mount");

  return MEMORY[0x2A1C71028]();
}

uint64_t cryptex_identity_set_host_identity(unsigned int *a1)
{
  v4 = *MEMORY[0x29EDCA608];
  memset(v3, 0, sizeof(v3));
  LOWORD(v3[0]) = 6;
  if (!a1)
  {
    return 22;
  }

  result = img4_chip_instantiate();
  if (!result)
  {
    return cryptex_identity_set_chip(a1, v3);
  }

  return result;
}

uint64_t cryptex_identity_set_chip(unsigned int *a1, uint64_t a2)
{
  v2 = 22;
  if (a1)
  {
    if (a2)
    {
      *(a1 + 1) = 0;
      *(a1 + 2) = *(a2 + 28);
      a1[6] = *(a2 + 36);
      v2 = *a1;
      if (v2)
      {
        v3 = *(a2 + 16);
        if ((v3 & 0x58000) != 0)
        {
          return 0;
        }

        *(a1 + 1) = 6;
        a1[10] = *(a2 + 140);
        *(a1 + 7) = *(a2 + 128);
        if ((v3 & 0x20000) != 0)
        {
          return 0;
        }

        else
        {
          v2 = 0;
          a1[9] = *(a2 + 136);
        }
      }
    }
  }

  return v2;
}

void _cryptex_dealloc(uint64_t a1)
{
  os_release(*(a1 + 48));
  v2 = *(a1 + 104);
  if (v2)
  {
    os_release(v2);
  }

  object_proto_destroy(a1 + 16);
}

uint64_t _cryptex_create(_OWORD *a1, char *a2, uint64_t a3)
{
  v15 = *MEMORY[0x29EDCA608];
  if (a2)
  {
    v5 = a2;
    v6 = 0;
  }

  else
  {
    if ((a3 & 1) == 0)
    {
      _cryptex_create_cold_2();
    }

    v12 = 0;
    v7 = arc4random();
    if (asprintf(&v12, "%s.%#x", "default", v7) < 0)
    {
      _cryptex_bundle_add_cryptex_assets_cold_1(&v13, v14);
    }

    v6 = v12;
    v5 = v12;
  }

  v8 = _cryptex_alloc(112);
  *(v8 + 40) = a3;
  *(v8 + 48) = cryptex_core_create();
  v10 = a1[1];
  v9 = a1[2];
  *(v8 + 56) = *a1;
  *(v8 + 72) = v10;
  *(v8 + 88) = v9;
  object_proto_init(v8 + 16, "com.apple.security.libcryptex", "cryptex");
  object_set_name(v8 + 16, v5);
  object_set_name_nocopy(*(v8 + 48) + 16, *(v8 + 16));
  free(v6);
  return v8;
}

BOOL _cryptex_identity_equal_device(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  if (a1 && a2)
  {
    v3 = *(a1 + 8) & 1;
    if (v3 != (*(a2 + 8) & 1))
    {
      return 0;
    }

    if (v3)
    {
      return 1;
    }

    return *(a1 + 16) == *(a2 + 16) && *(a1 + 20) == *(a2 + 20) && *(a1 + 24) == *(a2 + 24);
  }

  return v2;
}

BOOL _cryptex_identity_equal_cryptex1_chipid(unsigned int *a1, unsigned int *a2)
{
  v2 = 0;
  if (a1)
  {
    if (a2)
    {
      v2 = *a1;
      if (v2)
      {
        v2 = *a2;
        if (v2)
        {
          v3 = *(a1 + 1) & 4;
          if (v3 == (*(a2 + 1) & 4))
          {
            return !v3 || a1[7] == a2[7];
          }

          else
          {
            return 0;
          }
        }
      }
    }
  }

  return v2;
}

BOOL _cryptex_identity_equal_cryptex1(unsigned int *a1, unsigned int *a2)
{
  v2 = 0;
  if (a1)
  {
    if (a2)
    {
      v2 = *a1;
      if (v2)
      {
        v2 = *a2;
        if (v2)
        {
          v3 = *(a1 + 1) & 2;
          if (v3 == (*(a2 + 1) & 2))
          {
            if (!v3)
            {
              return 1;
            }

            if (a1[8] == a2[8])
            {
              return a1[10] == a2[10];
            }
          }

          return 0;
        }
      }
    }
  }

  return v2;
}

char *_cryptex_identity_copy_description(uint64_t a1)
{
  v13 = *MEMORY[0x29EDCA608];
  v2 = 512;
  v3 = __dst;
  memcpy(__dst, "generic", sizeof(__dst));
  if ((*(a1 + 8) & 1) == 0)
  {
    v4 = snprintf(__dst, 0x200uLL, "device(bord = %#x, chip = %#x, sdom = %#x) ", *(a1 + 16), *(a1 + 20), *(a1 + 24));
    if ((v4 & 0x80000000) != 0)
    {
      v6 = *__error();
      if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        *&buf[4] = 12;
        v7 = MEMORY[0x29EDCA988];
        v8 = "Failed to write device identifiers.: %{darwin.errno}d";
LABEL_16:
        _os_log_impl(&dword_2986C0000, v7, OS_LOG_TYPE_ERROR, v8, buf, 8u);
      }

LABEL_17:
      v9 = __error();
      result = 0;
      *v9 = v6;
      return result;
    }

    v3 = &__dst[v4];
    v2 = 512 - v4;
  }

  if (*a1 && (*(a1 + 8) & 2) != 0 && snprintf(v3, v2, "cryptex1(fchp = %#x, type = %#x, styp = %#x, clas = %#x)", *(a1 + 28), *(a1 + 32), *(a1 + 36), *(a1 + 40)) < 0)
  {
    v6 = *__error();
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      *&buf[4] = 12;
      v7 = MEMORY[0x29EDCA988];
      v8 = "Failed to write cryptex1 identifiers.: %{darwin.errno}d";
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  if (_dispatch_is_multithreaded())
  {
    while (1)
    {
      result = strdup(__dst);
      if (result)
      {
        break;
      }

      __os_temporary_resource_shortage();
    }
  }

  else
  {
    result = strdup(__dst);
    if (!result)
    {
      _cryptex_identity_copy_description_cold_1(__dst, &v10, buf);
    }
  }

  return result;
}

char *cryptex_system_cx_copy_name(uint64_t a1)
{
  v4 = *MEMORY[0x29EDCA608];
  if (a1 == 1)
  {
    result = strdup("com.apple.system.nextos");
    if (!result)
    {
      cryptex_system_cx_copy_name_cold_1(&v2, v3);
    }
  }

  else if (a1)
  {
    return 0;
  }

  else
  {
    result = strdup("com.apple.system.app");
    if (!result)
    {
      cryptex_system_cx_copy_name_cold_2(&v2, v3);
    }
  }

  return result;
}

__n128 cryptex_get_identity@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 72);
  *a2 = *(a1 + 56);
  *(a2 + 16) = v2;
  result = *(a1 + 88);
  *(a2 + 32) = result;
  return result;
}

uint64_t cryptex_get_variant(uint64_t a1)
{
  if (*(a1 + 40))
  {
    return 0;
  }

  else
  {
    return *(a1 + 16);
  }
}

uint64_t cryptex_get_image_type(uint64_t a1)
{
  v5 = *MEMORY[0x29EDCA608];
  v1 = *(cryptex_core_get_image_asset() + 8);
  if (v1 == MEMORY[0x29EDC9630])
  {
    return 0;
  }

  if (v1 == MEMORY[0x29EDC9668])
  {
    return 1;
  }

  if (v1 != MEMORY[0x29EDC9638])
  {
    cryptex_get_image_type_cold_1(&v3, v4);
  }

  return 2;
}

uint64_t cryptex_lockdown()
{
  v33 = *MEMORY[0x29EDCA608];
  v0 = _g;
  v32 = 0;
  memset(v31, 0, sizeof(v31));
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v24 = 0u;
  v23 = 0u;
  v22 = 0u;
  v21 = 0u;
  v20 = 0u;
  v19 = 0u;
  v18 = 0u;
  v17 = 0u;
  v16 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v9 = 0u;
  v8 = 32;
  v1 = os_log_create("com.apple.libcryptex", "cryptex");
  v2 = _cryptex_copy_connected_actor(v0, MEMORY[0x29EDC9680]);
  _cryptex_actor_init_invoke_u64();
  codex_lockdown_pack();
  v3 = cryptex_actor_trap();
  if (v3)
  {
    v4 = *__error();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v7 = v3;
      _os_log_impl(&dword_2986C0000, v1, OS_LOG_TYPE_ERROR, "lockdown rpc: %{darwin.errno}d", buf, 8u);
    }

    *__error() = v4;
  }

  rpc_destroy(&v8);
  rpc_destroy(v31);
  if (v1)
  {
    os_release(v1);
  }

  if (v2)
  {
    os_release(v2);
  }

  return v3;
}

uint64_t cryptex_install2(uint64_t a1, uint64_t a2, CFErrorRef *a3)
{
  v120 = *MEMORY[0x29EDCA608];
  v5 = _g;
  v90 = 0;
  v89 = 0;
  memset(v88, 0, sizeof(v88));
  v119 = 0;
  memset(v118, 0, sizeof(v118));
  v116 = 0u;
  v117 = 0u;
  v114 = 0u;
  v115 = 0u;
  v112 = 0u;
  v113 = 0u;
  v111 = 0u;
  v110 = 0u;
  v109 = 0u;
  v108 = 0u;
  v107 = 0u;
  v106 = 0u;
  v105 = 0u;
  v104 = 0u;
  v103 = 0u;
  v102 = 0u;
  v101 = 0u;
  v100 = 0u;
  v99 = 0u;
  v98 = 0u;
  v97 = 0u;
  v96 = 0u;
  v95 = 32;
  if ((*(a1 + 40) & 2) != 0)
  {
    v15 = *(a1 + 32);
    if (v15)
    {
      if (os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR))
      {
        v16 = 3;
      }

      else
      {
        v16 = 2;
      }

      v17 = *(a1 + 16);
      if (!v17)
      {
        v17 = "[anonymous]";
      }

      *buf = 136446466;
      v92 = v17;
      v93 = 1024;
      LODWORD(v94) = 45;
      v18 = _os_log_send_and_compose_impl(v16, 0, 0, 0, &dword_2986C0000, v15, 16, "%{public}s: This cryptex is not supported. %{darwin.errno}d", COERCE_DOUBLE(136446466), buf, 18);
    }

    else
    {
      v23 = *(a1 + 16);
      if (!v23)
      {
        v23 = "[anonymous]";
      }

      *buf = 136446466;
      v92 = v23;
      v93 = 1024;
      LODWORD(v94) = 45;
      v18 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986C0000, MEMORY[0x29EDCA988], 16, "%{public}s: This cryptex is not supported. %{darwin.errno}d", COERCE_DOUBLE(136446466), buf, 18);
    }

    v24 = v18;
    v25 = 786;
    v26 = 45;
    goto LABEL_53;
  }

  if (!cryptex_core_get_image_asset())
  {
    v19 = *(a1 + 32);
    if (v19)
    {
      if (os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR))
      {
        v20 = 3;
      }

      else
      {
        v20 = 2;
      }

      v21 = *(a1 + 16);
      if (!v21)
      {
        v21 = "[anonymous]";
      }

      *buf = 136446466;
      v92 = v21;
      v93 = 1024;
      LODWORD(v94) = 22;
      v22 = _os_log_send_and_compose_impl(v20, 0, 0, 0, &dword_2986C0000, v19, 16, "%{public}s: cryptex doesn't contain image asset %{darwin.errno}d", COERCE_DOUBLE(136446466), buf, 18);
    }

    else
    {
      v30 = *(a1 + 16);
      if (!v30)
      {
        v30 = "[anonymous]";
      }

      *buf = 136446466;
      v92 = v30;
      v93 = 1024;
      LODWORD(v94) = 22;
      v22 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986C0000, MEMORY[0x29EDCA988], 16, "%{public}s: cryptex doesn't contain image asset %{darwin.errno}d", COERCE_DOUBLE(136446466), buf, 18);
    }

    v24 = v22;
    v25 = 794;
    goto LABEL_41;
  }

  info_asset = cryptex_core_get_info_asset();
  if (!info_asset)
  {
    v27 = 0;
    goto LABEL_31;
  }

  file = _read_file(*(info_asset + 16), v88);
  if (file)
  {
    v9 = file;
    v10 = file;
    v11 = *(a1 + 32);
    if (v11)
    {
      if (os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR))
      {
        v12 = 3;
      }

      else
      {
        v12 = 2;
      }

      v13 = *(a1 + 16);
      if (!v13)
      {
        v13 = "[anonymous]";
      }

      *buf = 136446466;
      v92 = v13;
      v93 = 1024;
      LODWORD(v94) = v9;
      v14 = _os_log_send_and_compose_impl(v12, 0, 0, 0, &dword_2986C0000, v11, 16, "%{public}s: Failed to read info asset. %{darwin.errno}d", COERCE_DOUBLE(136446466), buf, 18);
    }

    else
    {
      v35 = *(a1 + 16);
      if (!v35)
      {
        v35 = "[anonymous]";
      }

      *buf = 136446466;
      v92 = v35;
      v93 = 1024;
      LODWORD(v94) = file;
      v14 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986C0000, MEMORY[0x29EDCA988], 16, "%{public}s: Failed to read info asset. %{darwin.errno}d", COERCE_DOUBLE(136446466), buf, 18);
    }

    v24 = v14;
    v25 = 806;
    v26 = v10;
    goto LABEL_53;
  }

  v28 = xpc_create_from_plist();
  if (!v28)
  {
    v66 = *(a1 + 32);
    if (v66)
    {
      if (os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR))
      {
        v67 = 3;
      }

      else
      {
        v67 = 2;
      }

      v68 = *(a1 + 16);
      if (!v68)
      {
        v68 = "[anonymous]";
      }

      *buf = 136446466;
      v92 = v68;
      v93 = 1024;
      LODWORD(v94) = 22;
      v69 = _os_log_send_and_compose_impl(v67, 0, 0, 0, &dword_2986C0000, v66, 16, "%{public}s: Failed to parse info asset as plist. %{darwin.errno}d", COERCE_DOUBLE(136446466), buf, 18);
    }

    else
    {
      v83 = *(a1 + 16);
      if (!v83)
      {
        v83 = "[anonymous]";
      }

      *buf = 136446466;
      v92 = v83;
      v93 = 1024;
      LODWORD(v94) = 22;
      v69 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986C0000, MEMORY[0x29EDCA988], 16, "%{public}s: Failed to parse info asset as plist. %{darwin.errno}d", COERCE_DOUBLE(136446466), buf, 18);
    }

    v24 = v69;
    v25 = 814;
LABEL_41:
    v26 = 22;
LABEL_53:
    Error = createError("cryptex_install2", "cryptex.c", v25, "com.apple.security.cryptex.posix", v26, 0, v24);
    v37 = 0;
    v38 = 0;
    v27 = 0;
LABEL_54:
    v39 = 0;
    goto LABEL_55;
  }

  v27 = v28;
  v29 = _xpc_dictionary_try_get_BOOL(v28, "NoCode", &v90);
  if (v29 == 79)
  {
    v75 = *(a1 + 32);
    if (v75)
    {
      if (os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR))
      {
        v76 = 3;
      }

      else
      {
        v76 = 2;
      }

      v77 = *(a1 + 16);
      if (!v77)
      {
        v77 = "[anonymous]";
      }

      *buf = 136446466;
      v92 = v77;
      v93 = 2080;
      v94 = "NoCode";
      v78 = _os_log_send_and_compose_impl(v76, 0, 0, 0, &dword_2986C0000, v75, 16, "%{public}s: Key '%s' has unexpected type", COERCE_DOUBLE(136446466), buf, 22);
    }

    else
    {
      v85 = *(a1 + 16);
      if (!v85)
      {
        v85 = "[anonymous]";
      }

      *buf = 136446466;
      v92 = v85;
      v93 = 2080;
      v94 = "NoCode";
      v78 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986C0000, MEMORY[0x29EDCA988], 16, "%{public}s: Key '%s' has unexpected type", COERCE_DOUBLE(136446466), buf, 22);
    }

    v24 = v78;
    v72 = "com.apple.security.cryptex";
    v73 = 826;
    v74 = 11;
    goto LABEL_146;
  }

  if (v29 == 2)
  {
    v90 = 0;
  }

  else if (v90)
  {
    goto LABEL_32;
  }

LABEL_31:
  if (!cryptex_core_get_tc_asset())
  {
    v31 = *(a1 + 32);
    if (v31)
    {
      if (os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR))
      {
        v32 = 3;
      }

      else
      {
        v32 = 2;
      }

      v33 = *(a1 + 16);
      if (!v33)
      {
        v33 = "[anonymous]";
      }

      *buf = 136446466;
      v92 = v33;
      v93 = 1024;
      LODWORD(v94) = 22;
      v34 = _os_log_send_and_compose_impl(v32, 0, 0, 0, &dword_2986C0000, v31, 16, "%{public}s: cryptex doesn't contain trust cache %{darwin.errno}d", COERCE_DOUBLE(136446466), buf, 18);
    }

    else
    {
      v71 = *(a1 + 16);
      if (!v71)
      {
        v71 = "[anonymous]";
      }

      *buf = 136446466;
      v92 = v71;
      v93 = 1024;
      LODWORD(v94) = 22;
      v34 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986C0000, MEMORY[0x29EDCA988], 16, "%{public}s: cryptex doesn't contain trust cache %{darwin.errno}d", COERCE_DOUBLE(136446466), buf, 18);
    }

    v24 = v34;
    v72 = "com.apple.security.cryptex.posix";
    v73 = 836;
    v74 = 22;
LABEL_146:
    Error = createError("cryptex_install2", "cryptex.c", v73, v72, v74, 0, v24);
    v37 = 0;
    v38 = 0;
    goto LABEL_54;
  }

LABEL_32:
  cryptex_core_get_volumehash_asset();
  cryptex_core_get_asset();
  v87 = a3;
  if (_cryptex_attr_get_persistence(a2) >= 3)
  {
    v49 = *(*(a1 + 48) + 16);
    v50 = *__error();
    v51 = *(*(a1 + 48) + 32);
    if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
    {
      v52 = "[anonymous]";
      if (v49)
      {
        v52 = v49;
      }

      *buf = 136446210;
      v92 = v52;
      _os_log_impl(&dword_2986C0000, v51, OS_LOG_TYPE_DEFAULT, "%{public}s: Installing as ephemeral", buf, 0xCu);
    }

    *__error() = v50;
  }

  _cryptex_attr_get_nonce_persistence(a2);
  if (cryptex_core_is_cryptex1())
  {
    v53 = cryptex_core_cx1_copy_xpc_dictionary();
  }

  else
  {
    v53 = xpc_dictionary_create(0, 0, 0);
  }

  v39 = v53;
  os_variant_allows_internal_security_policies();
  result = MEMORY[0x29C28F4F0](v39);
  if (result != MEMORY[0x29EDCAA00])
  {
    __break(1u);
    return result;
  }

  v37 = _cryptex_copy_connected_actor(v5, MEMORY[0x29EDC9680]);
  _cryptex_actor_init_invoke_u64();
  codex_install_pack();
  v54 = cryptex_actor_trap_with_cferr();
  a3 = v87;
  if (v54)
  {
    v38 = v54;
    v55 = *(a1 + 32);
    if (v55)
    {
      if (os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR))
      {
        v56 = 3;
      }

      else
      {
        v56 = 2;
      }

      v57 = *(a1 + 16);
      if (!v57)
      {
        v57 = "[anonymous]";
      }

      *buf = 136446210;
      v92 = v57;
      v58 = _os_log_send_and_compose_impl(v56, 0, 0, 0, &dword_2986C0000, v55, 16, "%{public}s: install rpc", COERCE_DOUBLE(136446210), buf, 12);
    }

    else
    {
      v70 = *(a1 + 16);
      if (!v70)
      {
        v70 = "[anonymous]";
      }

      *buf = 136446210;
      v92 = v70;
      v58 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986C0000, MEMORY[0x29EDCA988], 16, "%{public}s: install rpc", COERCE_DOUBLE(136446210), buf, 12);
    }

    v24 = v58;
    Error = createError("cryptex_install2", "cryptex.c", 916, "com.apple.security.cryptex", 14, v38, v58);
  }

  else
  {
    v59 = codex_install_reply_unpack();
    if (!v59)
    {
      v79 = *(a1 + 16);
      v80 = *__error();
      v81 = *(a1 + 32);
      if (os_log_type_enabled(v81, OS_LOG_TYPE_DEBUG))
      {
        v82 = "[anonymous]";
        if (v79)
        {
          v82 = v79;
        }

        *buf = 136446466;
        v92 = v82;
        v93 = 2080;
        v94 = 0;
        _os_log_impl(&dword_2986C0000, v81, OS_LOG_TYPE_DEBUG, "%{public}s: installed as: %s", buf, 0x16u);
      }

      Error = 0;
      v38 = 0;
      *__error() = v80;
      goto LABEL_68;
    }

    v60 = v59;
    v61 = v59;
    v62 = *(a1 + 32);
    if (v62)
    {
      if (os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR))
      {
        v63 = 3;
      }

      else
      {
        v63 = 2;
      }

      v64 = *(a1 + 16);
      if (!v64)
      {
        v64 = "[anonymous]";
      }

      *buf = 136446466;
      v92 = v64;
      v93 = 1024;
      LODWORD(v94) = v60;
      v65 = _os_log_send_and_compose_impl(v63, 0, 0, 0, &dword_2986C0000, v62, 16, "%{public}s: bad reply from daemon %{darwin.errno}d", COERCE_DOUBLE(136446466), buf, 18);
    }

    else
    {
      v84 = *(a1 + 16);
      if (!v84)
      {
        v84 = "[anonymous]";
      }

      *buf = 136446466;
      v92 = v84;
      v93 = 1024;
      LODWORD(v94) = v59;
      v65 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986C0000, MEMORY[0x29EDCA988], 16, "%{public}s: bad reply from daemon %{darwin.errno}d", COERCE_DOUBLE(136446466), buf, 18);
    }

    v24 = v65;
    Error = createError("cryptex_install2", "cryptex.c", 923, "com.apple.security.cryptex.posix", v61, 0, v65);
    v38 = 0;
  }

LABEL_55:
  free(v24);
  if (a3 && Error)
  {
    v41 = *(a1 + 32);
    if (v41)
    {
      if (os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR))
      {
        v42 = 3;
      }

      else
      {
        v42 = 2;
      }

      v43 = *(a1 + 16);
      if (!v43)
      {
        v43 = "[anonymous]";
      }

      *buf = 136446210;
      v92 = v43;
      LODWORD(v86) = 12;
      v44 = _os_log_send_and_compose_impl(v42, 0, 0, 0, &dword_2986C0000, v41, 16, "%{public}s: Install failed", COERCE_DOUBLE(136446210), buf, v86);
    }

    else
    {
      v45 = *(a1 + 16);
      if (!v45)
      {
        v45 = "[anonymous]";
      }

      *buf = 136446210;
      v92 = v45;
      LODWORD(v86) = 12;
      v44 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986C0000, MEMORY[0x29EDCA988], 16, "%{public}s: Install failed", COERCE_DOUBLE(136446210), buf, v86);
    }

    v46 = v44;
    v47 = createError("cryptex_install2", "cryptex.c", 933, "com.apple.security.cryptex", 14, Error, v44);
    free(v46);
    *a3 = v47;
  }

LABEL_68:
  buff_destroy(v88, v40);
  rpc_destroy(&v95);
  rpc_destroy(v118);
  if (v39)
  {
    os_release(v39);
  }

  if (v27)
  {
    os_release(v27);
  }

  if (Error)
  {
    CFRelease(Error);
  }

  if (v38)
  {
    CFRelease(v38);
  }

  if (v37)
  {
    os_release(v37);
  }

  return Error == 0;
}

BOOL cryptex_uninstall(uint64_t a1, uint64_t a2, uint64_t a3, CFTypeRef *a4)
{
  v40 = *MEMORY[0x29EDCA608];
  uninstall_request = codex_interface_create_uninstall_request();
  cf = uninstall_request;
  if (uninstall_request)
  {
    v6 = uninstall_request;
    v7 = MEMORY[0x29EDCA988];
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      v8 = 3;
    }

    else
    {
      v8 = 2;
    }

    LOWORD(v38) = 0;
    v9 = _os_log_send_and_compose_impl(v8, 0, 0, 0, &dword_2986C0000, v7, 16, "Failed to create uninstall request", &v38, 2);
    v10 = 962;
    v11 = v6;
LABEL_6:
    Error = createError("cryptex_uninstall", "cryptex.c", v10, "com.apple.security.cryptex", 4, v11, v9);
    v13 = 0;
    v14 = 0;
    goto LABEL_7;
  }

  dispatch_get_global_queue(0, 0);
  connection = cryptex_xpc_create_connection();
  if (!connection)
  {
    v23 = MEMORY[0x29EDCA988];
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      v24 = 3;
    }

    else
    {
      v24 = 2;
    }

    LOWORD(v38) = 0;
    v9 = _os_log_send_and_compose_impl(v24, 0, 0, 0, &dword_2986C0000, v23, 16, "Failed to connect to cryptexd.", &v38, 2);
    v10 = 970;
    v11 = 0;
    goto LABEL_6;
  }

  v14 = connection;
  v18 = xpc_connection_send_message_with_reply_sync(connection, 0);
  if (v18)
  {
    v13 = v18;
    if (MEMORY[0x29C28F4F0]() == MEMORY[0x29EDCAA18])
    {
      v9 = xpc_copy_debug_description();
      v27 = MEMORY[0x29EDCA988];
      if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
      {
        v28 = 3;
      }

      else
      {
        v28 = 2;
      }

      v38 = 136315138;
      v39 = v9;
      v21 = _os_log_send_and_compose_impl(v28, 0, 0, 0, &dword_2986C0000, v27, 16, "XPC error in response to uninstall request: %s", &v38);
      v22 = 984;
      goto LABEL_39;
    }

    if (MEMORY[0x29C28F4F0](v13) != MEMORY[0x29EDCAA00])
    {
      v9 = xpc_copy_debug_description();
      v19 = MEMORY[0x29EDCA988];
      if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
      {
        v20 = 3;
      }

      else
      {
        v20 = 2;
      }

      v38 = 136315138;
      v39 = v9;
      v21 = _os_log_send_and_compose_impl(v20, 0, 0, 0, &dword_2986C0000, v19, 16, "Unexpected response to uninstall request: %s", &v38);
      v22 = 990;
LABEL_39:
      Error = createError("cryptex_uninstall", "cryptex.c", v22, "com.apple.security.cryptex", 4, 0, v21);
      free(v21);
      goto LABEL_7;
    }

    cferr = _xpc_dictionary_try_get_cferr(v13, "UNINSTALL:ERROR_DICT", &cf);
    if ((cferr | 2) == 2)
    {
      Error = cf;
      if (!cf)
      {
        v15 = 1;
LABEL_11:
        os_release(v13);
        goto LABEL_12;
      }

      v30 = MEMORY[0x29EDCA988];
      if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
      {
        v31 = 3;
      }

      else
      {
        v31 = 2;
      }

      v38 = 138543362;
      v39 = Error;
      v9 = _os_log_send_and_compose_impl(v31, 0, 0, 0, &dword_2986C0000, v30, 16, "Error in response to uninstall request: %{public}@", &v38, 12);
      v32 = cf;
      v33 = 1013;
    }

    else
    {
      v34 = cferr;
      v35 = MEMORY[0x29EDCA988];
      if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
      {
        v36 = 3;
      }

      else
      {
        v36 = 2;
      }

      v38 = 67109120;
      LODWORD(v39) = v34;
      v9 = _os_log_send_and_compose_impl(v36, 0, 0, 0, &dword_2986C0000, v35, 16, "Error unpacking uninstall response: %{darwin.errno}d", &v38, 8);
      v33 = 1004;
      v32 = 0;
    }

    Error = createError("cryptex_uninstall", "cryptex.c", v33, "com.apple.security.cryptex", 4, v32, v9);
  }

  else
  {
    v25 = MEMORY[0x29EDCA988];
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      v26 = 3;
    }

    else
    {
      v26 = 2;
    }

    LOWORD(v38) = 0;
    v9 = _os_log_send_and_compose_impl(v26, 0, 0, 0, &dword_2986C0000, v25, 16, "Failed to get response to uninstall request.", &v38, 2);
    Error = createError("cryptex_uninstall", "cryptex.c", 978, "com.apple.security.cryptex", 4, 0, v9);
    v13 = 0;
  }

LABEL_7:
  free(v9);
  if (a4 && Error)
  {
    *a4 = CFRetain(Error);
  }

  v15 = Error == 0;
  if (v13)
  {
    goto LABEL_11;
  }

LABEL_12:
  if (v14)
  {
    os_release(v14);
  }

  if (!v15)
  {
    CFRelease(Error);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v15;
}

BOOL cryptex_personalize2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, CFErrorRef *a5, NSObject *a6, const void *a7)
{
  v142 = *MEMORY[0x29EDCA608];
  v9 = *(a1 + 48);
  v141 = 0;
  v139 = 0u;
  v140 = 0u;
  v138 = 0u;
  v135 = 0u;
  v136 = 0u;
  v134 = 0u;
  v137 = 0x3000000000;
  v129 = MEMORY[0x29EDC96E0];
  if (!a6)
  {
    v19 = *(a1 + 32);
    if (v19)
    {
      if (os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR))
      {
        v20 = 3;
      }

      else
      {
        v20 = 2;
      }

      v21 = *(a1 + 16);
      if (!v21)
      {
        v21 = "[anonymous]";
      }

      *buf = 136446210;
      v131 = v21;
      v22 = _os_log_send_and_compose_impl(v20, 0, 0, 0, &dword_2986C0000, v19, 16, "%{public}s: Invalid target queue input.", COERCE_DOUBLE(136446210), buf, 12);
    }

    else
    {
      v27 = *(a1 + 16);
      if (!v27)
      {
        v27 = "[anonymous]";
      }

      *buf = 136446210;
      v131 = v27;
      v22 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986C0000, MEMORY[0x29EDCA988], 16, "%{public}s: Invalid target queue input.", COERCE_DOUBLE(136446210), buf, 12);
    }

    v28 = v22;
    v29 = "com.apple.security.cryptex";
    v30 = 1052;
    v31 = 11;
    goto LABEL_43;
  }

  if ((*(a1 + 40) & 2) != 0)
  {
    v23 = *(a1 + 32);
    if (v23)
    {
      if (os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR))
      {
        v24 = 3;
      }

      else
      {
        v24 = 2;
      }

      v25 = *(a1 + 16);
      if (!v25)
      {
        v25 = "[anonymous]";
      }

      *buf = 136446466;
      v131 = v25;
      v132 = 1024;
      LODWORD(v133) = 45;
      v26 = _os_log_send_and_compose_impl(v24, 0, 0, 0, &dword_2986C0000, v23, 16, "%{public}s: This cryptex is not supported. %{darwin.errno}d", COERCE_DOUBLE(136446466), buf, 18);
    }

    else
    {
      v36 = *(a1 + 16);
      if (!v36)
      {
        v36 = "[anonymous]";
      }

      *buf = 136446466;
      v131 = v36;
      v132 = 1024;
      LODWORD(v133) = 45;
      v26 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986C0000, MEMORY[0x29EDCA988], 16, "%{public}s: This cryptex is not supported. %{darwin.errno}d", COERCE_DOUBLE(136446466), buf, 18);
    }

    v28 = v26;
    v29 = "com.apple.security.cryptex.posix";
    v30 = 1058;
    v31 = 45;
    goto LABEL_43;
  }

  if (cryptex_core_get_asset())
  {
    v15 = *(a1 + 32);
    if (v15)
    {
      if (os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR))
      {
        v16 = 3;
      }

      else
      {
        v16 = 2;
      }

      v17 = *(a1 + 16);
      if (!v17)
      {
        v17 = "[anonymous]";
      }

      *buf = 136446466;
      v131 = v17;
      v132 = 1024;
      LODWORD(v133) = 17;
      v18 = _os_log_send_and_compose_impl(v16, 0, 0, 0, &dword_2986C0000, v15, 16, "%{public}s: this cryptex has already been personalized before, refuse to redo personalization %{darwin.errno}d", COERCE_DOUBLE(136446466), buf, 18);
    }

    else
    {
      v37 = *(a1 + 16);
      if (!v37)
      {
        v37 = "[anonymous]";
      }

      *buf = 136446466;
      v131 = v37;
      v132 = 1024;
      LODWORD(v133) = 17;
      v18 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986C0000, MEMORY[0x29EDCA988], 16, "%{public}s: this cryptex has already been personalized before, refuse to redo personalization %{darwin.errno}d", COERCE_DOUBLE(136446466), buf, 18);
    }

    v28 = v18;
    v29 = "com.apple.security.cryptex.posix";
    v30 = 1065;
    v31 = 17;
LABEL_43:
    Error = createError("cryptex_personalize2", "cryptex.c", v30, v29, v31, 0, v28);
    v39 = 0;
    v40 = 0;
    v41 = 0;
    v42 = 0;
    v43 = 0;
    goto LABEL_44;
  }

  v127 = a5;
  if (cryptex_core_is_cryptex1())
  {
    v32 = *(a1 + 16);
    v33 = *__error();
    v34 = *(a1 + 32);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
    {
      v35 = "[anonymous]";
      if (v32)
      {
        v35 = v32;
      }

      *buf = 136446210;
      v131 = v35;
      _os_log_impl(&dword_2986C0000, v34, OS_LOG_TYPE_DEBUG, "%{public}s: Will personalize Cryptex1 dmg with a Cryptex1 TSS request.", buf, 0xCu);
    }

    *__error() = v33;
  }

  v126 = (*(a2 + 112) >> 1) & 1;
  v54 = *(a2 + 64);
  v128 = a2;
  _cryptex_attr_get_nonce_persistence(a2);
  cryptex_core_set_nonce_persistence();
  v43 = ctx_new(a1, 0x30uLL);
  dispatch_retain(a6);
  v43[4] = a6;
  v43[5] = _Block_copy(a7);
  v40 = cryptex_host_create();
  cryptex_core_attach_host();
  v55 = *(a2 + 64);
  if (v55 == 2)
  {
    v41 = cryptex_scrivener_create();
LABEL_146:
    cryptex_scrivener_sign();
    cryptex_activate();
    v39 = 0;
    Error = 0;
    v42 = 0;
    goto LABEL_63;
  }

  if (v55 != 1)
  {
    v41 = cryptex_scrivener_create();
    if (*(a2 + 72))
    {
      cryptex_scrivener_set_url();
    }

    a5 = v127;
    if (!a3)
    {
      nonce_domain = cryptex_core_get_nonce_domain();
      v76 = nonce_domain;
      if (nonce_domain || !v129)
      {
        v79 = nonce_domain;
        v98 = *(a1 + 32);
        if (v98)
        {
          if (os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR))
          {
            v99 = 3;
          }

          else
          {
            v99 = 2;
          }

          v100 = *(a1 + 16);
          if (!v100)
          {
            v100 = "[anonymous]";
          }

          *buf = 136446466;
          v131 = v100;
          v132 = 1024;
          LODWORD(v133) = v76;
          v101 = _os_log_send_and_compose_impl(v99, 0, 0, 0, &dword_2986C0000, v98, 16, "%{public}s: failed to get nonce domain from core %{darwin.errno}d", COERCE_DOUBLE(136446466), buf, 18);
        }

        else
        {
          v108 = *(a1 + 16);
          if (!v108)
          {
            v108 = "[anonymous]";
          }

          *buf = 136446466;
          v131 = v108;
          v132 = 1024;
          LODWORD(v133) = nonce_domain;
          v101 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986C0000, MEMORY[0x29EDCA988], 16, "%{public}s: failed to get nonce domain from core %{darwin.errno}d", COERCE_DOUBLE(136446466), buf, 18);
        }

        v28 = v101;
        v106 = 1163;
      }

      else
      {
        v77 = cryptex_core_copy_nonce_domain_desc();
        if (v77)
        {
          v78 = v77;
          v79 = v77;
          v80 = *(a1 + 32);
          if (v80)
          {
            if (os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR))
            {
              v81 = 3;
            }

            else
            {
              v81 = 2;
            }

            v82 = *(a1 + 16);
            if (!v82)
            {
              v82 = "[anonymous]";
            }

            *buf = 136446466;
            v131 = v82;
            v132 = 1024;
            LODWORD(v133) = v78;
            v83 = _os_log_send_and_compose_impl(v81, 0, 0, 0, &dword_2986C0000, v80, 16, "%{public}s: failed to get nonce domain description from core %{darwin.errno}d", COERCE_DOUBLE(136446466), buf, 18);
          }

          else
          {
            v120 = *(a1 + 16);
            if (!v120)
            {
              v120 = "[anonymous]";
            }

            *buf = 136446466;
            v131 = v120;
            v132 = 1024;
            LODWORD(v133) = v77;
            v83 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986C0000, MEMORY[0x29EDCA988], 16, "%{public}s: failed to get nonce domain description from core %{darwin.errno}d", COERCE_DOUBLE(136446466), buf, 18);
          }

          v28 = v83;
          v106 = 1170;
        }

        else
        {
          v109 = *(a1 + 16);
          v110 = *__error();
          v111 = *(a1 + 32);
          if (os_log_type_enabled(v111, OS_LOG_TYPE_DEBUG))
          {
            v112 = "[anonymous]";
            if (v109)
            {
              v112 = v109;
            }

            *buf = 136446466;
            v131 = v112;
            v132 = 2080;
            v133 = 0;
            _os_log_impl(&dword_2986C0000, v111, OS_LOG_TYPE_DEBUG, "%{public}s: copying nonce from domain %s", buf, 0x16u);
          }

          *__error() = v110;
          v113 = img4_nonce_domain_copy_nonce();
          if (!v113)
          {
            cryptex_scrivener_set_nonce();
            v121 = *(a1 + 16);
            v67 = *__error();
            v122 = *(a1 + 32);
            if (!os_log_type_enabled(v122, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_132;
            }

            v123 = "[anonymous]";
            if (v121)
            {
              v123 = v121;
            }

            *buf = 136446466;
            v131 = v123;
            v132 = 2080;
            v133 = 0;
            v70 = "%{public}s: personalizing with host nonce from %s";
            v91 = v122;
            v92 = 22;
            goto LABEL_131;
          }

          v114 = v113;
          v79 = v113;
          v115 = *(a1 + 32);
          if (v115)
          {
            if (os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR))
            {
              v116 = 3;
            }

            else
            {
              v116 = 2;
            }

            v117 = *(a1 + 16);
            if (!v117)
            {
              v117 = "[anonymous]";
            }

            *buf = 136446466;
            v131 = v117;
            v132 = 1024;
            LODWORD(v133) = v114;
            v118 = _os_log_send_and_compose_impl(v116, 0, 0, 0, &dword_2986C0000, v115, 16, "%{public}s: failed to copy nonce from domain %{darwin.errno}d", COERCE_DOUBLE(136446466), buf, 18);
          }

          else
          {
            v124 = *(a1 + 16);
            if (!v124)
            {
              v124 = "[anonymous]";
            }

            *buf = 136446466;
            v131 = v124;
            v132 = 1024;
            LODWORD(v133) = v113;
            v118 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986C0000, MEMORY[0x29EDCA988], 16, "%{public}s: failed to copy nonce from domain %{darwin.errno}d", COERCE_DOUBLE(136446466), buf, 18);
          }

          v28 = v118;
          v106 = 1180;
        }
      }

      v107 = v79;
      goto LABEL_201;
    }

    if (a4)
    {
      cryptex_scrivener_set_nonce();
      v66 = *(a1 + 16);
      v67 = *__error();
      v68 = *(a1 + 32);
      if (os_log_type_enabled(v68, OS_LOG_TYPE_DEBUG))
      {
        v69 = "[anonymous]";
        if (v66)
        {
          v69 = v66;
        }

        *buf = 136446210;
        v131 = v69;
        v70 = "%{public}s: personalizing with client provided nonce";
LABEL_130:
        v91 = v68;
        v92 = 12;
LABEL_131:
        _os_log_impl(&dword_2986C0000, v91, OS_LOG_TYPE_DEBUG, v70, buf, v92);
      }
    }

    else
    {
      cryptex_scrivener_set_nonce();
      v89 = *(a1 + 16);
      v67 = *__error();
      v68 = *(a1 + 32);
      if (os_log_type_enabled(v68, OS_LOG_TYPE_DEBUG))
      {
        v90 = "[anonymous]";
        if (v89)
        {
          v90 = v89;
        }

        *buf = 136446210;
        v131 = v90;
        v70 = "%{public}s: personalizing with zero nonce";
        goto LABEL_130;
      }
    }

LABEL_132:
    *__error() = v67;
    v93 = *(a2 + 88);
    if (*(a2 + 80))
    {
      if (v93)
      {
        cryptex_scrivener_set_socks_proxy();
LABEL_143:
        if (*(a2 + 96) && *(a2 + 104))
        {
          cryptex_scrivener_set_auth_token();
        }

        goto LABEL_146;
      }
    }

    else if (v93 < 1)
    {
      goto LABEL_143;
    }

    v94 = *(a1 + 32);
    if (v94)
    {
      if (os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR))
      {
        v95 = 3;
      }

      else
      {
        v95 = 2;
      }

      v96 = *(a1 + 16);
      if (!v96)
      {
        v96 = "[anonymous]";
      }

      *buf = 136446466;
      v131 = v96;
      v132 = 1024;
      LODWORD(v133) = 22;
      v97 = _os_log_send_and_compose_impl(v95, 0, 0, 0, &dword_2986C0000, v94, 16, "%{public}s: failed to set socks proxy, valid socks host and port required %{darwin.errno}d", COERCE_DOUBLE(136446466), buf, 18);
    }

    else
    {
      v105 = *(a1 + 16);
      if (!v105)
      {
        v105 = "[anonymous]";
      }

      *buf = 136446466;
      v131 = v105;
      v132 = 1024;
      LODWORD(v133) = 22;
      v97 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986C0000, MEMORY[0x29EDCA988], 16, "%{public}s: failed to set socks proxy, valid socks host and port required %{darwin.errno}d", COERCE_DOUBLE(136446466), buf, 18);
    }

    v28 = v97;
    v106 = 1202;
    v107 = 22;
LABEL_201:
    Error = createError("cryptex_personalize2", "cryptex.c", v106, "com.apple.security.cryptex.posix", v107, 0, v28);
    v39 = 0;
LABEL_202:
    v42 = 0;
    goto LABEL_44;
  }

  if (!xpc_array_get_count(*(*(a1 + 48) + 208)))
  {
    v71 = *(a1 + 32);
    if (v71)
    {
      if (os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR))
      {
        v72 = 3;
      }

      else
      {
        v72 = 2;
      }

      v73 = *(a1 + 16);
      if (!v73)
      {
        v73 = "[anonymous]";
      }

      *buf = 136446466;
      v131 = v73;
      v132 = 1024;
      LODWORD(v133) = 22;
      v74 = _os_log_send_and_compose_impl(v72, 0, 0, 0, &dword_2986C0000, v71, 16, "%{public}s: no .im4m signatures supplied, .im4m signatures are required for Diavlo personalization %{darwin.errno}d", COERCE_DOUBLE(136446466), buf, 18);
    }

    else
    {
      v104 = *(a1 + 16);
      if (!v104)
      {
        v104 = "[anonymous]";
      }

      *buf = 136446466;
      v131 = v104;
      v132 = 1024;
      LODWORD(v133) = 22;
      v74 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986C0000, MEMORY[0x29EDCA988], 16, "%{public}s: no .im4m signatures supplied, .im4m signatures are required for Diavlo personalization %{darwin.errno}d", COERCE_DOUBLE(136446466), buf, 18);
    }

    v28 = v74;
    a5 = v127;
    Error = createError("cryptex_personalize2", "cryptex.c", 1116, "com.apple.security.cryptex.posix", 22, 0, v74);
    v39 = 0;
    v41 = 0;
    goto LABEL_202;
  }

  v56 = *(a1 + 16);
  v57 = *__error();
  v58 = *(a1 + 32);
  if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
  {
    if (v56)
    {
      v59 = v56;
    }

    else
    {
      v59 = "[anonymous]";
    }

    count = xpc_array_get_count(*(*(a1 + 48) + 208));
    *buf = 136446466;
    v131 = v59;
    a2 = v128;
    v132 = 2048;
    v133 = count;
    _os_log_impl(&dword_2986C0000, v58, OS_LOG_TYPE_DEFAULT, "%{public}s: requesting Diavlo personalization with %lu signatures", buf, 0x16u);
  }

  *__error() = v57;
  v42 = cryptex_signing_service_create(v126 & 0xFFFFFFFFFFFFFFFDLL | (2 * (v54 & 1)));
  v61 = cryptex_signing_service_set_cryptex_core(v42, v9);
  a5 = v127;
  if (v61)
  {
    v39 = v61;
    v62 = *(a1 + 32);
    if (v62)
    {
      if (os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR))
      {
        v63 = 3;
      }

      else
      {
        v63 = 2;
      }

      v64 = *(a1 + 16);
      if (!v64)
      {
        v64 = "[anonymous]";
      }

      *buf = 136446210;
      v131 = v64;
      v65 = _os_log_send_and_compose_impl(v63, 0, 0, 0, &dword_2986C0000, v62, 16, "%{public}s: failed to set cryptex core", COERCE_DOUBLE(136446210), buf, 12);
    }

    else
    {
      v102 = *(a1 + 16);
      if (!v102)
      {
        v102 = "[anonymous]";
      }

      *buf = 136446210;
      v131 = v102;
      v65 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986C0000, MEMORY[0x29EDCA988], 16, "%{public}s: failed to set cryptex core", COERCE_DOUBLE(136446210), buf, 12);
    }

    v28 = v65;
    v103 = 1127;
  }

  else
  {
    v84 = *(a2 + 72);
    if (v84)
    {
      cryptex_signing_service_set_tss_url(v42, v84);
    }

    v39 = cryptex_signing_service_sign(v42, v43, _cryptex_personalize2_continue_tss);
    if (!v39)
    {
      Error = 0;
      v41 = 0;
      goto LABEL_63;
    }

    v85 = *(a1 + 32);
    if (v85)
    {
      if (os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR))
      {
        v86 = 3;
      }

      else
      {
        v86 = 2;
      }

      v87 = *(a1 + 16);
      if (!v87)
      {
        v87 = "[anonymous]";
      }

      *buf = 136446210;
      v131 = v87;
      v88 = _os_log_send_and_compose_impl(v86, 0, 0, 0, &dword_2986C0000, v85, 16, "%{public}s: failed to get a signed cryptex", COERCE_DOUBLE(136446210), buf, 12);
    }

    else
    {
      v119 = *(a1 + 16);
      if (!v119)
      {
        v119 = "[anonymous]";
      }

      *buf = 136446210;
      v131 = v119;
      v88 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986C0000, MEMORY[0x29EDCA988], 16, "%{public}s: failed to get a signed cryptex", COERCE_DOUBLE(136446210), buf, 12);
    }

    v28 = v88;
    v103 = 1139;
  }

  Error = createError("cryptex_personalize2", "cryptex.c", v103, "com.apple.security.cryptex", 5, v39, v28);
  v41 = 0;
LABEL_44:
  free(v28);
  if (a5 && Error)
  {
    v44 = *(a1 + 32);
    if (v44)
    {
      if (os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR))
      {
        v45 = 3;
      }

      else
      {
        v45 = 2;
      }

      v46 = *(a1 + 16);
      if (!v46)
      {
        v46 = "[anonymous]";
      }

      *buf = 136446210;
      v131 = v46;
      LODWORD(v125) = 12;
      v47 = _os_log_send_and_compose_impl(v45, 0, 0, 0, &dword_2986C0000, v44, 16, "%{public}s: Personalization failed", COERCE_DOUBLE(136446210), buf, v125);
    }

    else
    {
      v48 = *(a1 + 16);
      if (!v48)
      {
        v48 = "[anonymous]";
      }

      *buf = 136446210;
      v131 = v48;
      LODWORD(v125) = 12;
      v47 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986C0000, MEMORY[0x29EDCA988], 16, "%{public}s: Personalization failed", COERCE_DOUBLE(136446210), buf, v125);
    }

    v49 = v47;
    v50 = createError("cryptex_personalize2", "cryptex.c", 1219, "com.apple.security.cryptex", 5, Error, v47);
    free(v49);
    *a5 = v50;
  }

  if (v43)
  {
    v51 = v43[5];
    if (v51)
    {
      os_release(v51);
    }

    v52 = v43[2];
    if (v52)
    {
      CFRelease(v52);
    }

    ctx_destroy(v43);
  }

LABEL_63:
  free(0);
  if (v42)
  {
    os_release(v42);
  }

  if (v41)
  {
    os_release(v41);
  }

  if (v40)
  {
    os_release(v40);
  }

  if (Error)
  {
    CFRelease(Error);
  }

  if (v39)
  {
    CFRelease(v39);
  }

  return Error == 0;
}

uint64_t _cryptex_personalize2_continue_tss(uint64_t a1, uint64_t a2, const void *a3, uint64_t *a4)
{
  v73 = *MEMORY[0x29EDCA608];
  v6 = *a4;
  bzero(v66, 0x400uLL);
  memcpy(__dst, "cryptex.personalize.XXXXXX", sizeof(__dst));
  v63 = -1;
  v64 = 0;
  if (a3)
  {
    v7 = *(v6 + 32);
    if (v7)
    {
      if (os_log_type_enabled(*(v6 + 32), OS_LOG_TYPE_ERROR))
      {
        v8 = 3;
      }

      else
      {
        v8 = 2;
      }

      v9 = *(v6 + 16);
      if (!v9)
      {
        v9 = "[anonymous]";
      }

      v67 = 136446210;
      v68 = v9;
      v10 = _os_log_send_and_compose_impl(v8, 0, 0, 0, &dword_2986C0000, v7, 16, "%{public}s: TSS failed", COERCE_DOUBLE(136446210), &v67, 12, v63, v64);
    }

    else
    {
      v22 = *(v6 + 16);
      if (!v22)
      {
        v22 = "[anonymous]";
      }

      v67 = 136446210;
      v68 = v22;
      v10 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986C0000, MEMORY[0x29EDCA988], 16, "%{public}s: TSS failed", COERCE_DOUBLE(136446210), &v67, 12, v63, v64);
    }

    v23 = v10;
    Error = createError("_cryptex_personalize2_continue_tss", "cryptex.c", 196, "com.apple.security.cryptex", 5, a3, v10);
    v12 = -1;
    goto LABEL_49;
  }

  _confstr(65537, v66);
  v11 = open(v66, 0x100000);
  v12 = v11;
  if (v11 < 0)
  {
    v25 = *__error();
    v15 = v25;
    v26 = *(v6 + 32);
    if (v26)
    {
      v27 = os_log_type_enabled(*(v6 + 32), OS_LOG_TYPE_ERROR);
      v28 = *(v6 + 16);
      if (v27)
      {
        v29 = 3;
      }

      else
      {
        v29 = 2;
      }

      v67 = 136446722;
      if (v28)
      {
        v30 = v28;
      }

      else
      {
        v30 = "[anonymous]";
      }

      v68 = v30;
      v69 = 2080;
      v70 = v66;
      v71 = 1024;
      v72 = v25;
      v31 = _os_log_send_and_compose_impl(v29, 0, 0, 0, &dword_2986C0000, v26, 16, "%{public}s: open: %s %{darwin.errno}d", COERCE_DOUBLE(136446722), &v67, 28, v63, v64);
    }

    else
    {
      v43 = "[anonymous]";
      if (*(v6 + 16))
      {
        v43 = *(v6 + 16);
      }

      v67 = 136446722;
      v68 = v43;
      v69 = 2080;
      v70 = v66;
      v71 = 1024;
      v72 = v25;
      v31 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986C0000, MEMORY[0x29EDCA988], 16, "%{public}s: open: %s %{darwin.errno}d", COERCE_DOUBLE(136446722), &v67, 28, v63, v64);
    }

    v23 = v31;
    v42 = 205;
    goto LABEL_48;
  }

  v13 = _mkodtempat(v11, __dst, &v63 + 1);
  if (v13)
  {
    v14 = v13;
    v15 = v13;
    v16 = *(v6 + 32);
    if (v16)
    {
      v17 = os_log_type_enabled(*(v6 + 32), OS_LOG_TYPE_ERROR);
      v18 = *(v6 + 16);
      if (v17)
      {
        v19 = 3;
      }

      else
      {
        v19 = 2;
      }

      v67 = 136446722;
      if (v18)
      {
        v20 = v18;
      }

      else
      {
        v20 = "[anonymous]";
      }

      v68 = v20;
      v69 = 2080;
      v70 = v66;
      v71 = 1024;
      v72 = v14;
      v21 = _os_log_send_and_compose_impl(v19, 0, 0, 0, &dword_2986C0000, v16, 16, "%{public}s: _mkodtempat: %s %{darwin.errno}d", COERCE_DOUBLE(136446722), &v67, 28, v63, v64);
    }

    else
    {
      v41 = "[anonymous]";
      if (*(v6 + 16))
      {
        v41 = *(v6 + 16);
      }

      v67 = 136446722;
      v68 = v41;
      v69 = 2080;
      v70 = v66;
      v71 = 1024;
      v72 = v13;
      v21 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986C0000, MEMORY[0x29EDCA988], 16, "%{public}s: _mkodtempat: %s %{darwin.errno}d", COERCE_DOUBLE(136446722), &v67, 28, v63, v64);
    }

    v23 = v21;
    v42 = 213;
LABEL_48:
    Error = createError("_cryptex_personalize2_continue_tss", "cryptex.c", v42, "com.apple.security.cryptex.posix", v15, 0, v23);
LABEL_49:
    free(v23);
    a4[2] = Error;
    cryptex_tss_async();
    goto LABEL_50;
  }

  v32 = *(MEMORY[0x29EDC9658] + 40);
  v33 = openat(SHIDWORD(v63), v32, 513, 438);
  if ((v33 & 0x80000000) == 0)
  {
    v34 = cryptex_signature_write();
    if (v34)
    {
      v35 = v34;
      v36 = v34;
      v37 = *(v6 + 32);
      if (v37)
      {
        if (os_log_type_enabled(*(v6 + 32), OS_LOG_TYPE_ERROR))
        {
          v38 = 3;
        }

        else
        {
          v38 = 2;
        }

        v39 = *(v6 + 16);
        if (!v39)
        {
          v39 = "[anonymous]";
        }

        v67 = 136446466;
        v68 = v39;
        v69 = 1024;
        LODWORD(v70) = v35;
        v40 = _os_log_send_and_compose_impl(v38, 0, 0, 0, &dword_2986C0000, v37, 16, "%{public}s: failed to write Image4 manifest %{darwin.errno}d", COERCE_DOUBLE(136446466), &v67, 18, v63, v64);
      }

      else
      {
        v51 = *(v6 + 16);
        if (!v51)
        {
          v51 = "[anonymous]";
        }

        v67 = 136446466;
        v68 = v51;
        v69 = 1024;
        LODWORD(v70) = v34;
        v40 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986C0000, MEMORY[0x29EDCA988], 16, "%{public}s: failed to write Image4 manifest %{darwin.errno}d", COERCE_DOUBLE(136446466), &v67, 18, v63, v64);
      }

      v52 = v40;
      v53 = 229;
    }

    else
    {
      LODWORD(v63) = openat(SHIDWORD(v63), v32, 0);
      if ((v63 & 0x80000000) == 0)
      {
        v64 = cryptex_asset_new();
        cryptex_core_set_asset();
        v50 = 0;
LABEL_69:
        a4[2] = v50;
        cryptex_tss_async();
LABEL_74:
        if (close(v33) == -1)
        {
          _cryptex_bundle_new_asset_from_object_cold_1(&v64, &v67);
        }

        goto LABEL_50;
      }

      v57 = *__error();
      v36 = v57;
      v58 = *(v6 + 32);
      if (v58)
      {
        if (os_log_type_enabled(*(v6 + 32), OS_LOG_TYPE_ERROR))
        {
          v59 = 3;
        }

        else
        {
          v59 = 2;
        }

        v60 = *(v6 + 16);
        if (!v60)
        {
          v60 = "[anonymous]";
        }

        v67 = 136446466;
        v68 = v60;
        v69 = 1024;
        LODWORD(v70) = v57;
        v61 = _os_log_send_and_compose_impl(v59, 0, 0, 0, &dword_2986C0000, v58, 16, "%{public}s: openat [im4m] to read %{darwin.errno}d", COERCE_DOUBLE(136446466), &v67, 18, v63, v64);
      }

      else
      {
        v62 = *(v6 + 16);
        if (!v62)
        {
          v62 = "[anonymous]";
        }

        v67 = 136446466;
        v68 = v62;
        v69 = 1024;
        LODWORD(v70) = v57;
        v61 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986C0000, MEMORY[0x29EDCA988], 16, "%{public}s: openat [im4m] to read %{darwin.errno}d", COERCE_DOUBLE(136446466), &v67, 18, v63, v64);
      }

      v52 = v61;
      v53 = 238;
    }

    v50 = createError("_cryptex_personalize2_continue_tss", "cryptex.c", v53, "com.apple.security.cryptex.posix", v36, 0, v52);
    free(v52);
    goto LABEL_69;
  }

  v45 = *__error();
  v46 = *(v6 + 32);
  if (v46)
  {
    if (os_log_type_enabled(*(v6 + 32), OS_LOG_TYPE_ERROR))
    {
      v47 = 3;
    }

    else
    {
      v47 = 2;
    }

    v48 = *(v6 + 16);
    if (!v48)
    {
      v48 = "[anonymous]";
    }

    v67 = 136446466;
    v68 = v48;
    v69 = 1024;
    LODWORD(v70) = v45;
    v49 = _os_log_send_and_compose_impl(v47, 0, 0, 0, &dword_2986C0000, v46, 16, "%{public}s: openat [im4m] to write %{darwin.errno}d", COERCE_DOUBLE(136446466), &v67, 18, v63, v64);
  }

  else
  {
    v54 = *(v6 + 16);
    if (!v54)
    {
      v54 = "[anonymous]";
    }

    v67 = 136446466;
    v68 = v54;
    v69 = 1024;
    LODWORD(v70) = v45;
    v49 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986C0000, MEMORY[0x29EDCA988], 16, "%{public}s: openat [im4m] to write %{darwin.errno}d", COERCE_DOUBLE(136446466), &v67, 18, v63, v64);
  }

  v55 = v49;
  v56 = createError("_cryptex_personalize2_continue_tss", "cryptex.c", 222, "com.apple.security.cryptex.posix", v45, 0, v49);
  free(v55);
  a4[2] = v56;
  cryptex_tss_async();
  if (v33 != -1)
  {
    goto LABEL_74;
  }

LABEL_50:
  result = HIDWORD(v63);
  if (HIDWORD(v63) != -1)
  {
    result = close(SHIDWORD(v63));
    if (result == -1)
    {
      _cryptex_bundle_new_asset_from_object_cold_1(&v64, &v67);
    }
  }

  if (v12 != -1)
  {
    result = close(v12);
    if (result == -1)
    {
      _cryptex_bundle_new_asset_from_object_cold_1(&v64, &v67);
    }
  }

  return result;
}

uint64_t _cryptex_personalize2_continue(uint64_t a1, uint64_t a2, const void *a3, uint64_t *a4)
{
  v73 = *MEMORY[0x29EDCA608];
  v6 = *a4;
  bzero(v66, 0x400uLL);
  memcpy(__dst, "cryptex.personalize.XXXXXX", sizeof(__dst));
  v63 = -1;
  v64 = 0;
  if (a3)
  {
    v7 = *(v6 + 32);
    if (v7)
    {
      if (os_log_type_enabled(*(v6 + 32), OS_LOG_TYPE_ERROR))
      {
        v8 = 3;
      }

      else
      {
        v8 = 2;
      }

      v9 = *(v6 + 16);
      if (!v9)
      {
        v9 = "[anonymous]";
      }

      v67 = 136446210;
      v68 = v9;
      v10 = _os_log_send_and_compose_impl(v8, 0, 0, 0, &dword_2986C0000, v7, 16, "%{public}s: Scrivener signing failed", COERCE_DOUBLE(136446210), &v67, 12, v63, v64);
    }

    else
    {
      v22 = *(v6 + 16);
      if (!v22)
      {
        v22 = "[anonymous]";
      }

      v67 = 136446210;
      v68 = v22;
      v10 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986C0000, MEMORY[0x29EDCA988], 16, "%{public}s: Scrivener signing failed", COERCE_DOUBLE(136446210), &v67, 12, v63, v64);
    }

    v23 = v10;
    Error = createError("_cryptex_personalize2_continue", "cryptex.c", 123, "com.apple.security.cryptex", 5, a3, v10);
    v12 = -1;
    goto LABEL_49;
  }

  _confstr(65537, v66);
  v11 = open(v66, 0x100000);
  v12 = v11;
  if (v11 < 0)
  {
    v25 = *__error();
    v15 = v25;
    v26 = *(v6 + 32);
    if (v26)
    {
      v27 = os_log_type_enabled(*(v6 + 32), OS_LOG_TYPE_ERROR);
      v28 = *(v6 + 16);
      if (v27)
      {
        v29 = 3;
      }

      else
      {
        v29 = 2;
      }

      v67 = 136446722;
      if (v28)
      {
        v30 = v28;
      }

      else
      {
        v30 = "[anonymous]";
      }

      v68 = v30;
      v69 = 2080;
      v70 = v66;
      v71 = 1024;
      v72 = v25;
      v31 = _os_log_send_and_compose_impl(v29, 0, 0, 0, &dword_2986C0000, v26, 16, "%{public}s: open: %s %{darwin.errno}d", COERCE_DOUBLE(136446722), &v67, 28, v63, v64);
    }

    else
    {
      v43 = "[anonymous]";
      if (*(v6 + 16))
      {
        v43 = *(v6 + 16);
      }

      v67 = 136446722;
      v68 = v43;
      v69 = 2080;
      v70 = v66;
      v71 = 1024;
      v72 = v25;
      v31 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986C0000, MEMORY[0x29EDCA988], 16, "%{public}s: open: %s %{darwin.errno}d", COERCE_DOUBLE(136446722), &v67, 28, v63, v64);
    }

    v23 = v31;
    v42 = 132;
    goto LABEL_48;
  }

  v13 = _mkodtempat(v11, __dst, &v63 + 1);
  if (v13)
  {
    v14 = v13;
    v15 = v13;
    v16 = *(v6 + 32);
    if (v16)
    {
      v17 = os_log_type_enabled(*(v6 + 32), OS_LOG_TYPE_ERROR);
      v18 = *(v6 + 16);
      if (v17)
      {
        v19 = 3;
      }

      else
      {
        v19 = 2;
      }

      v67 = 136446722;
      if (v18)
      {
        v20 = v18;
      }

      else
      {
        v20 = "[anonymous]";
      }

      v68 = v20;
      v69 = 2080;
      v70 = v66;
      v71 = 1024;
      v72 = v14;
      v21 = _os_log_send_and_compose_impl(v19, 0, 0, 0, &dword_2986C0000, v16, 16, "%{public}s: _mkodtempat: %s %{darwin.errno}d", COERCE_DOUBLE(136446722), &v67, 28, v63, v64);
    }

    else
    {
      v41 = "[anonymous]";
      if (*(v6 + 16))
      {
        v41 = *(v6 + 16);
      }

      v67 = 136446722;
      v68 = v41;
      v69 = 2080;
      v70 = v66;
      v71 = 1024;
      v72 = v13;
      v21 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986C0000, MEMORY[0x29EDCA988], 16, "%{public}s: _mkodtempat: %s %{darwin.errno}d", COERCE_DOUBLE(136446722), &v67, 28, v63, v64);
    }

    v23 = v21;
    v42 = 140;
LABEL_48:
    Error = createError("_cryptex_personalize2_continue", "cryptex.c", v42, "com.apple.security.cryptex.posix", v15, 0, v23);
LABEL_49:
    free(v23);
    a4[2] = Error;
    cryptex_target_async_f();
    goto LABEL_50;
  }

  v32 = *(MEMORY[0x29EDC9658] + 40);
  v33 = openat(SHIDWORD(v63), v32, 513, 438);
  if ((v33 & 0x80000000) == 0)
  {
    v34 = cryptex_signature_write();
    if (v34)
    {
      v35 = v34;
      v36 = v34;
      v37 = *(v6 + 32);
      if (v37)
      {
        if (os_log_type_enabled(*(v6 + 32), OS_LOG_TYPE_ERROR))
        {
          v38 = 3;
        }

        else
        {
          v38 = 2;
        }

        v39 = *(v6 + 16);
        if (!v39)
        {
          v39 = "[anonymous]";
        }

        v67 = 136446466;
        v68 = v39;
        v69 = 1024;
        LODWORD(v70) = v35;
        v40 = _os_log_send_and_compose_impl(v38, 0, 0, 0, &dword_2986C0000, v37, 16, "%{public}s: failed to write Image4 manifest %{darwin.errno}d", COERCE_DOUBLE(136446466), &v67, 18, v63, v64);
      }

      else
      {
        v51 = *(v6 + 16);
        if (!v51)
        {
          v51 = "[anonymous]";
        }

        v67 = 136446466;
        v68 = v51;
        v69 = 1024;
        LODWORD(v70) = v34;
        v40 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986C0000, MEMORY[0x29EDCA988], 16, "%{public}s: failed to write Image4 manifest %{darwin.errno}d", COERCE_DOUBLE(136446466), &v67, 18, v63, v64);
      }

      v52 = v40;
      v53 = 156;
    }

    else
    {
      LODWORD(v63) = openat(SHIDWORD(v63), v32, 0);
      if ((v63 & 0x80000000) == 0)
      {
        v64 = cryptex_asset_new();
        cryptex_core_set_asset();
        v50 = 0;
LABEL_69:
        a4[2] = v50;
        cryptex_target_async_f();
LABEL_74:
        if (close(v33) == -1)
        {
          _cryptex_bundle_new_asset_from_object_cold_1(&v64, &v67);
        }

        goto LABEL_50;
      }

      v57 = *__error();
      v36 = v57;
      v58 = *(v6 + 32);
      if (v58)
      {
        if (os_log_type_enabled(*(v6 + 32), OS_LOG_TYPE_ERROR))
        {
          v59 = 3;
        }

        else
        {
          v59 = 2;
        }

        v60 = *(v6 + 16);
        if (!v60)
        {
          v60 = "[anonymous]";
        }

        v67 = 136446466;
        v68 = v60;
        v69 = 1024;
        LODWORD(v70) = v57;
        v61 = _os_log_send_and_compose_impl(v59, 0, 0, 0, &dword_2986C0000, v58, 16, "%{public}s: openat [im4m] to read %{darwin.errno}d", COERCE_DOUBLE(136446466), &v67, 18, v63, v64);
      }

      else
      {
        v62 = *(v6 + 16);
        if (!v62)
        {
          v62 = "[anonymous]";
        }

        v67 = 136446466;
        v68 = v62;
        v69 = 1024;
        LODWORD(v70) = v57;
        v61 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986C0000, MEMORY[0x29EDCA988], 16, "%{public}s: openat [im4m] to read %{darwin.errno}d", COERCE_DOUBLE(136446466), &v67, 18, v63, v64);
      }

      v52 = v61;
      v53 = 165;
    }

    v50 = createError("_cryptex_personalize2_continue", "cryptex.c", v53, "com.apple.security.cryptex.posix", v36, 0, v52);
    free(v52);
    goto LABEL_69;
  }

  v45 = *__error();
  v46 = *(v6 + 32);
  if (v46)
  {
    if (os_log_type_enabled(*(v6 + 32), OS_LOG_TYPE_ERROR))
    {
      v47 = 3;
    }

    else
    {
      v47 = 2;
    }

    v48 = *(v6 + 16);
    if (!v48)
    {
      v48 = "[anonymous]";
    }

    v67 = 136446466;
    v68 = v48;
    v69 = 1024;
    LODWORD(v70) = v45;
    v49 = _os_log_send_and_compose_impl(v47, 0, 0, 0, &dword_2986C0000, v46, 16, "%{public}s: openat [im4m] to write %{darwin.errno}d", COERCE_DOUBLE(136446466), &v67, 18, v63, v64);
  }

  else
  {
    v54 = *(v6 + 16);
    if (!v54)
    {
      v54 = "[anonymous]";
    }

    v67 = 136446466;
    v68 = v54;
    v69 = 1024;
    LODWORD(v70) = v45;
    v49 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986C0000, MEMORY[0x29EDCA988], 16, "%{public}s: openat [im4m] to write %{darwin.errno}d", COERCE_DOUBLE(136446466), &v67, 18, v63, v64);
  }

  v55 = v49;
  v56 = createError("_cryptex_personalize2_continue", "cryptex.c", 149, "com.apple.security.cryptex.posix", v45, 0, v49);
  free(v55);
  a4[2] = v56;
  cryptex_target_async_f();
  if (v33 != -1)
  {
    goto LABEL_74;
  }

LABEL_50:
  result = HIDWORD(v63);
  if (HIDWORD(v63) != -1)
  {
    result = close(SHIDWORD(v63));
    if (result == -1)
    {
      _cryptex_bundle_new_asset_from_object_cold_1(&v64, &v67);
    }
  }

  if (v12 != -1)
  {
    result = close(v12);
    if (result == -1)
    {
      _cryptex_bundle_new_asset_from_object_cold_1(&v64, &v67);
    }
  }

  return result;
}

CFErrorRef cryptex_fcopy_personalized_manifest2(uint64_t a1, int a2)
{
  v46 = *MEMORY[0x29EDCA608];
  asset = cryptex_core_get_asset();
  if (asset)
  {
    v5 = asset;
    v6 = dup(a2);
    if ((v6 & 0x80000000) == 0)
    {
      v7 = *(v5 + 16);
      if (v7 < 0)
      {
        v24 = *(a1 + 32);
        if (v24)
        {
          if (os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR))
          {
            v25 = 3;
          }

          else
          {
            v25 = 2;
          }

          v26 = *(a1 + 16);
          if (!v26)
          {
            v26 = "[anonymous]";
          }

          v42 = 136446466;
          v43 = v26;
          v44 = 1024;
          v45 = 9;
          v27 = _os_log_send_and_compose_impl(v25, 0, 0, 0, &dword_2986C0000, v24, 16, "%{public}s: Invalid im4m fd. %{darwin.errno}d", COERCE_DOUBLE(136446466), &v42, 18);
        }

        else
        {
          v39 = *(a1 + 16);
          if (!v39)
          {
            v39 = "[anonymous]";
          }

          v42 = 136446466;
          v43 = v39;
          v44 = 1024;
          v45 = 9;
          v27 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986C0000, MEMORY[0x29EDCA988], 16, "%{public}s: Invalid im4m fd. %{darwin.errno}d", COERCE_DOUBLE(136446466), &v42, 18);
        }

        v36 = v27;
        v37 = 1254;
        v38 = 9;
      }

      else
      {
        if (!fcopyfile(v7, a2, 0, 0x100000Fu))
        {
          Error = 0;
          goto LABEL_56;
        }

        v8 = *__error();
        v9 = *(a1 + 32);
        if (v9)
        {
          if (os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR))
          {
            v10 = 3;
          }

          else
          {
            v10 = 2;
          }

          if (*(a1 + 16))
          {
            v11 = *(a1 + 16);
          }

          else
          {
            v11 = "[anonymous]";
          }

          v12 = *__error();
          v42 = 136446466;
          v43 = v11;
          v44 = 1024;
          v45 = v12;
          v13 = _os_log_send_and_compose_impl(v10, 0, 0, 0, &dword_2986C0000, v9, 16, "%{public}s: fcopyfile failed. %{darwin.errno}d", &v42, 18);
        }

        else
        {
          if (*(a1 + 16))
          {
            v34 = *(a1 + 16);
          }

          else
          {
            v34 = "[anonymous]";
          }

          v35 = *__error();
          v42 = 136446466;
          v43 = v34;
          v44 = 1024;
          v45 = v35;
          v13 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986C0000, MEMORY[0x29EDCA988], 16, "%{public}s: fcopyfile failed. %{darwin.errno}d", &v42, 18);
        }

        v36 = v13;
        v37 = 1260;
        v38 = v8;
      }

      Error = createError("cryptex_fcopy_personalized_manifest2", "cryptex.c", v37, "com.apple.security.cryptex.posix", v38, 0, v36);
      free(v36);
LABEL_56:
      if (close(v6) == -1)
      {
        _cryptex_bundle_new_asset_from_object_cold_1(&v41, &v42);
      }

      return Error;
    }

    v18 = *__error();
    v19 = *(a1 + 32);
    if (v19)
    {
      if (os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR))
      {
        v20 = 3;
      }

      else
      {
        v20 = 2;
      }

      if (*(a1 + 16))
      {
        v21 = *(a1 + 16);
      }

      else
      {
        v21 = "[anonymous]";
      }

      v22 = *__error();
      v42 = 136446466;
      v43 = v21;
      v44 = 1024;
      v45 = v22;
      v23 = _os_log_send_and_compose_impl(v20, 0, 0, 0, &dword_2986C0000, v19, 16, "%{public}s: Failed to dup destination fd. %{darwin.errno}d", &v42, 18);
    }

    else
    {
      if (*(a1 + 16))
      {
        v31 = *(a1 + 16);
      }

      else
      {
        v31 = "[anonymous]";
      }

      v32 = *__error();
      v42 = 136446466;
      v43 = v31;
      v44 = 1024;
      v45 = v32;
      v23 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986C0000, MEMORY[0x29EDCA988], 16, "%{public}s: Failed to dup destination fd. %{darwin.errno}d", &v42, 18);
    }

    v33 = v23;
    Error = createError("cryptex_fcopy_personalized_manifest2", "cryptex.c", 1248, "com.apple.security.cryptex.posix", v18, 0, v23);
    free(v33);
    if (v6 != -1)
    {
      goto LABEL_56;
    }
  }

  else
  {
    v14 = *(a1 + 32);
    if (v14)
    {
      if (os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR))
      {
        v15 = 3;
      }

      else
      {
        v15 = 2;
      }

      v16 = *(a1 + 16);
      if (!v16)
      {
        v16 = "[anonymous]";
      }

      v42 = 136446466;
      v43 = v16;
      v44 = 1024;
      v45 = 2;
      v17 = _os_log_send_and_compose_impl(v15, 0, 0, 0, &dword_2986C0000, v14, 16, "%{public}s: Cryptex does not have a personalization manifest. %{darwin.errno}d", COERCE_DOUBLE(136446466), &v42, 18);
    }

    else
    {
      v28 = *(a1 + 16);
      if (!v28)
      {
        v28 = "[anonymous]";
      }

      v42 = 136446466;
      v43 = v28;
      v44 = 1024;
      v45 = 2;
      v17 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986C0000, MEMORY[0x29EDCA988], 16, "%{public}s: Cryptex does not have a personalization manifest. %{darwin.errno}d", COERCE_DOUBLE(136446466), &v42, 18);
    }

    v29 = v17;
    Error = createError("cryptex_fcopy_personalized_manifest2", "cryptex.c", 1241, "com.apple.security.cryptex.posix", 2, 0, v17);
    free(v29);
  }

  return Error;
}

CFErrorRef cryptex_fcopy_info_plist(uint64_t a1, int a2)
{
  v30 = *MEMORY[0x29EDCA608];
  info_asset = cryptex_core_get_info_asset();
  if (!info_asset)
  {
    v12 = *(a1 + 32);
    if (v12)
    {
      if (os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR))
      {
        v13 = 3;
      }

      else
      {
        v13 = 2;
      }

      v14 = *(a1 + 16);
      if (!v14)
      {
        v14 = "[anonymous]";
      }

      *v29 = 136446466;
      *&v29[4] = v14;
      *&v29[12] = 1024;
      *&v29[14] = 2;
      v15 = _os_log_send_and_compose_impl(v13, 0, 0, 0, &dword_2986C0000, v12, 16, "%{public}s: Cryptex does not have an info plist. %{darwin.errno}d", COERCE_DOUBLE(136446466), v29, 18, *v29, *&v29[8], v30);
    }

    else
    {
      v21 = *(a1 + 16);
      if (!v21)
      {
        v21 = "[anonymous]";
      }

      *v29 = 136446466;
      *&v29[4] = v21;
      *&v29[12] = 1024;
      *&v29[14] = 2;
      v15 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986C0000, MEMORY[0x29EDCA988], 16, "%{public}s: Cryptex does not have an info plist. %{darwin.errno}d", COERCE_DOUBLE(136446466), v29, 18, *v29, *&v29[8], v30);
    }

    v22 = v15;
    v23 = 1278;
    v24 = 2;
    goto LABEL_40;
  }

  v5 = *(info_asset + 16);
  if (v5 < 0)
  {
    v16 = *(a1 + 32);
    if (v16)
    {
      if (os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR))
      {
        v17 = 3;
      }

      else
      {
        v17 = 2;
      }

      v18 = *(a1 + 16);
      if (!v18)
      {
        v18 = "[anonymous]";
      }

      *v29 = 136446466;
      *&v29[4] = v18;
      *&v29[12] = 1024;
      *&v29[14] = 9;
      v19 = _os_log_send_and_compose_impl(v17, 0, 0, 0, &dword_2986C0000, v16, 16, "%{public}s: Invalid info plist fd. %{darwin.errno}d", COERCE_DOUBLE(136446466), v29, 18, *v29, *&v29[8], v30);
    }

    else
    {
      v27 = *(a1 + 16);
      if (!v27)
      {
        v27 = "[anonymous]";
      }

      *v29 = 136446466;
      *&v29[4] = v27;
      *&v29[12] = 1024;
      *&v29[14] = 9;
      v19 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986C0000, MEMORY[0x29EDCA988], 16, "%{public}s: Invalid info plist fd. %{darwin.errno}d", COERCE_DOUBLE(136446466), v29, 18, *v29, *&v29[8], v30);
    }

    v22 = v19;
    v23 = 1284;
    v24 = 9;
    goto LABEL_40;
  }

  if (fcopyfile(v5, a2, 0, 0x100000Fu))
  {
    v6 = *__error();
    v7 = *(a1 + 32);
    if (v7)
    {
      if (os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR))
      {
        v8 = 3;
      }

      else
      {
        v8 = 2;
      }

      if (*(a1 + 16))
      {
        v9 = *(a1 + 16);
      }

      else
      {
        v9 = "[anonymous]";
      }

      v10 = *__error();
      *v29 = 136446466;
      *&v29[4] = v9;
      *&v29[12] = 1024;
      *&v29[14] = v10;
      v11 = _os_log_send_and_compose_impl(v8, 0, 0, 0, &dword_2986C0000, v7, 16, "%{public}s: fcopyfile failed. %{darwin.errno}d", v29, 18, *v29, *&v29[8], v30);
    }

    else
    {
      if (*(a1 + 16))
      {
        v25 = *(a1 + 16);
      }

      else
      {
        v25 = "[anonymous]";
      }

      v26 = *__error();
      *v29 = 136446466;
      *&v29[4] = v25;
      *&v29[12] = 1024;
      *&v29[14] = v26;
      v11 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986C0000, MEMORY[0x29EDCA988], 16, "%{public}s: fcopyfile failed. %{darwin.errno}d", v29, 18, *v29, *&v29[8], v30);
    }

    v22 = v11;
    v23 = 1290;
    v24 = v6;
LABEL_40:
    Error = createError("cryptex_fcopy_info_plist", "cryptex.c", v23, "com.apple.security.cryptex.posix", v24, 0, v22);
    free(v22);
    return Error;
  }

  return 0;
}

uint64_t cryptex_attach_personalized_manifest(void *a1, int a2)
{
  v24 = *MEMORY[0x29EDCA608];
  v18 = -1;
  if (cryptex_core_get_asset())
  {
    v4 = a1[2];
    v5 = *__error();
    v6 = a1[4];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = "[anonymous]";
      if (v4)
      {
        v7 = v4;
      }

      *buf = 136446466;
      v21 = v7;
      v22 = 1024;
      v23 = 17;
      _os_log_impl(&dword_2986C0000, v6, OS_LOG_TYPE_ERROR, "%{public}s: This cryptex is already personalized.: %{darwin.errno}d", buf, 0x12u);
    }

    *__error() = v5;
    v8 = 17;
  }

  else
  {
    v18 = dup(a2);
    if (v18 < 0)
    {
      v8 = *__error();
      v10 = a1[2];
      v11 = *__error();
      v12 = a1[4];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = "[anonymous]";
        if (v10)
        {
          v13 = v10;
        }

        *buf = 136446466;
        v21 = v13;
        v22 = 1024;
        v23 = v8;
        _os_log_impl(&dword_2986C0000, v12, OS_LOG_TYPE_ERROR, "%{public}s: Failed to dup manifest fd.: %{darwin.errno}d", buf, 0x12u);
      }

      *__error() = v11;
    }

    else
    {
      v19 = cryptex_asset_new();
      if (v19)
      {
        cryptex_core_set_asset();
        v8 = 0;
      }

      else
      {
        v14 = a1[2];
        v15 = *__error();
        v16 = a1[4];
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          v17 = "[anonymous]";
          if (v14)
          {
            v17 = v14;
          }

          *buf = 136446466;
          v21 = v17;
          v22 = 1024;
          v23 = 12;
          _os_log_impl(&dword_2986C0000, v16, OS_LOG_TYPE_ERROR, "%{public}s: Failed to create new asset.: %{darwin.errno}d", buf, 0x12u);
        }

        *__error() = v15;
        v8 = 12;
      }
    }
  }

  if (v18 != -1 && close(v18) == -1)
  {
    _cryptex_bundle_new_asset_from_object_cold_1(&v19, buf);
  }

  return v8;
}

uint64_t cryptex_copy_installed_cryptex()
{
  v3 = *MEMORY[0x29EDCA608];
  v0 = *__error();
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    v2[0] = 67109120;
    v2[1] = 45;
    _os_log_impl(&dword_2986C0000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "Not supported on this platform.: %{darwin.errno}d", v2, 8u);
  }

  *__error() = v0;
  return 45;
}

uint64_t cryptex_upgrade_stage2(uint64_t a1, uint64_t a2, uint64_t a3, CFTypeRef *a4)
{
  v5 = MEMORY[0x29EDCA988];
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    v6 = 3;
  }

  else
  {
    v6 = 2;
  }

  v10[0] = 0;
  v7 = _os_log_send_and_compose_impl(v6, 0, 0, 0, &dword_2986C0000, v5, 16, "Not supported on this platform.", v10, 2);
  Error = createError("cryptex_upgrade_stage2", "cryptex.c", 1360, "com.apple.security.cryptex", 10, 0, v7);
  free(v7);
  if (a4 && Error)
  {
    *a4 = CFRetain(Error);
  }

  else if (!Error)
  {
    return 1;
  }

  CFRelease(Error);
  return 0;
}

uint64_t cryptex_upgrade_commit2(uint64_t a1, CFTypeRef *a2)
{
  v3 = MEMORY[0x29EDCA988];
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    v4 = 3;
  }

  else
  {
    v4 = 2;
  }

  v8[0] = 0;
  v5 = _os_log_send_and_compose_impl(v4, 0, 0, 0, &dword_2986C0000, v3, 16, "Not supported on this platform.", v8, 2);
  Error = createError("cryptex_upgrade_commit2", "cryptex.c", 1382, "com.apple.security.cryptex", 10, 0, v5);
  free(v5);
  if (a2 && Error)
  {
    *a2 = CFRetain(Error);
  }

  else if (!Error)
  {
    return 1;
  }

  CFRelease(Error);
  return 0;
}

uint64_t cryptex_upgrade_abort2(uint64_t a1, CFTypeRef *a2)
{
  v3 = MEMORY[0x29EDCA988];
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    v4 = 3;
  }

  else
  {
    v4 = 2;
  }

  v8[0] = 0;
  v5 = _os_log_send_and_compose_impl(v4, 0, 0, 0, &dword_2986C0000, v3, 16, "Not supported on this platform.", v8, 2);
  Error = createError("cryptex_upgrade_abort2", "cryptex.c", 1404, "com.apple.security.cryptex", 10, 0, v5);
  free(v5);
  if (a2 && Error)
  {
    *a2 = CFRetain(Error);
  }

  else if (!Error)
  {
    return 1;
  }

  CFRelease(Error);
  return 0;
}

uint64_t _cryptex_identity_init_from_dict(void *a1, NSObject *a2, uint64_t a3, int a4)
{
  v61 = *MEMORY[0x29EDCA608];
  v54 = 0;
  v8 = _xpc_plist_value_copy(&_ap_boardid, a1);
  if (!v8)
  {
    v9 = *__error();
    if (os_log_type_enabled(a2, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v56 = "ApBoardID";
      _os_log_impl(&dword_2986C0000, a2, OS_LOG_TYPE_DEBUG, "missing property: %s", buf, 0xCu);
    }

    *__error() = v9;
  }

  v10 = _xpc_plist_value_copy(&_ap_chipid, a1);
  if (!v10)
  {
    v11 = *__error();
    if (os_log_type_enabled(a2, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v56 = "ApChipID";
      _os_log_impl(&dword_2986C0000, a2, OS_LOG_TYPE_DEBUG, "missing property: %s", buf, 0xCu);
    }

    *__error() = v11;
  }

  v12 = _xpc_plist_value_copy(&_ap_security_domain, a1);
  if (!v12)
  {
    v21 = *__error();
    if (os_log_type_enabled(a2, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v56 = "ApSecurityDomain";
      _os_log_impl(&dword_2986C0000, a2, OS_LOG_TYPE_DEBUG, "missing property: %s", buf, 0xCu);
    }

    *__error() = v21;
    if (a4)
    {
      goto LABEL_11;
    }

LABEL_28:
    v13 = 0;
    v15 = 0;
    v17 = 0;
    v20 = 0;
    goto LABEL_32;
  }

  if (!a4)
  {
    goto LABEL_28;
  }

LABEL_11:
  v13 = _xpc_plist_value_copy(&_cryptex1_chip, a1);
  if (!v13)
  {
    v14 = *__error();
    if (os_log_type_enabled(a2, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v56 = "Cryptex1,ChipID";
      _os_log_impl(&dword_2986C0000, a2, OS_LOG_TYPE_DEBUG, "missing property: %s", buf, 0xCu);
    }

    *__error() = v14;
  }

  v15 = _xpc_plist_value_copy(&_cryptex1_type, a1);
  if (!v15)
  {
    v16 = *__error();
    if (os_log_type_enabled(a2, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v56 = "Cryptex1,Type";
      _os_log_impl(&dword_2986C0000, a2, OS_LOG_TYPE_DEBUG, "missing property: %s", buf, 0xCu);
    }

    *__error() = v16;
  }

  v17 = _xpc_plist_value_copy(&_cryptex1_styp_0, a1);
  if (!v17)
  {
    v18 = *__error();
    if (os_log_type_enabled(a2, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v56 = "Cryptex1,SubType";
      _os_log_impl(&dword_2986C0000, a2, OS_LOG_TYPE_DEBUG, "missing property: %s", buf, 0xCu);
    }

    *__error() = v18;
  }

  v19 = _xpc_plist_value_copy(&_cryptex1_product_class, a1);
  if (v19)
  {
    v20 = v19;
  }

  else
  {
    v22 = *__error();
    if (os_log_type_enabled(a2, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v56 = "Cryptex1,ProductClass";
      _os_log_impl(&dword_2986C0000, a2, OS_LOG_TYPE_DEBUG, "missing property: %s", buf, 0xCu);
    }

    v20 = 0;
    *__error() = v22;
  }

LABEL_32:
  if (v8)
  {
    v23 = v10 == 0;
  }

  else
  {
    v23 = 1;
  }

  v25 = !v23 && v12 != 0;
  if (v25 != ((v8 | v10 | v12) != 0))
  {
    v26 = *__error();
    if (!os_log_type_enabled(a2, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_45;
    }

    *buf = 67109120;
    LODWORD(v56) = 22;
    v27 = "build identity device identifiers incomplete: %{darwin.errno}d";
    goto LABEL_44;
  }

  if ((!v15 || !v17 || !v20) && (v13 || v15 || v17 || v20))
  {
    v26 = *__error();
    if (!os_log_type_enabled(a2, OS_LOG_TYPE_ERROR))
    {
LABEL_45:
      *__error() = v26;
      v28 = 22;
      if (!v20)
      {
        goto LABEL_92;
      }

LABEL_91:
      os_release(v20);
      goto LABEL_92;
    }

    *buf = 67109120;
    LODWORD(v56) = 22;
    v27 = "build identity cryptex1 identifiers incomplete: %{darwin.errno}d";
LABEL_44:
    _os_log_impl(&dword_2986C0000, a2, OS_LOG_TYPE_ERROR, v27, buf, 8u);
    goto LABEL_45;
  }

  if (v8 | v10 | v12)
  {
    string_ptr = xpc_string_get_string_ptr(v8);
    v30 = _strtou32(string_ptr, &v54, 0);
    if (v54 && *v54)
    {
      v31 = *__error();
      if (!os_log_type_enabled(a2, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_90;
      }

      *buf = 136315650;
      v56 = "ApBoardID";
      v57 = 2112;
      v58 = v8;
      v59 = 1024;
      v60 = 214;
      goto LABEL_89;
    }

    v39 = xpc_string_get_string_ptr(v10);
    v40 = _strtou32(v39, &v54, 0);
    if (v54 && *v54)
    {
      v31 = *__error();
      if (!os_log_type_enabled(a2, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_90;
      }

      *buf = 136315650;
      v56 = "ApChipID";
      v57 = 2112;
      v58 = v10;
      v59 = 1024;
      v60 = 214;
      goto LABEL_89;
    }

    HIDWORD(v53) = v40;
    v41 = xpc_string_get_string_ptr(v12);
    v42 = _strtou32(v41, &v54, 0);
    if (v54 && *v54)
    {
      v31 = *__error();
      if (!os_log_type_enabled(a2, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_90;
      }

      *buf = 136315650;
      v56 = "ApSecurityDomain";
      v57 = 2112;
      v58 = v12;
      v59 = 1024;
      v60 = 214;
      goto LABEL_89;
    }

    v52 = v42;
    LODWORD(v53) = v30;
    v33 = 0;
    if (v13)
    {
      goto LABEL_79;
    }
  }

  else
  {
    v32 = *__error();
    if (os_log_type_enabled(a2, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_2986C0000, a2, OS_LOG_TYPE_DEBUG, "build identity has no device identifiers", buf, 2u);
    }

    v53 = 0;
    v52 = 0;
    *__error() = v32;
    v33 = 1;
    if (v13)
    {
      goto LABEL_79;
    }
  }

  if (!v15 && !v17 && !v20)
  {
    v50 = v33;
    v51 = a3;
    v48 = *__error();
    if (os_log_type_enabled(a2, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_2986C0000, a2, OS_LOG_TYPE_DEBUG, "build identity has no cryptex1 identifiers", buf, 2u);
    }

    v34 = __error();
    v35 = 0;
    value = 0;
    v37 = 0;
    v38 = 0;
    *v34 = v48;
    goto LABEL_106;
  }

LABEL_79:
  if (v13)
  {
    v43 = v33 | 6;
    v44 = xpc_string_get_string_ptr(v13);
    v45 = _strtou32(v44, &v54, 0);
    if (v54 && *v54)
    {
      v31 = *__error();
      if (!os_log_type_enabled(a2, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_90;
      }

      *buf = 136315650;
      v56 = "Cryptex1,ChipID";
      v57 = 2112;
      v58 = v13;
      v59 = 1024;
      v60 = 214;
      goto LABEL_89;
    }
  }

  else
  {
    v45 = 0;
    v43 = v33 | 2;
  }

  v49 = v45;
  v50 = v43;
  v51 = a3;
  value = xpc_int64_get_value(v15);
  v37 = xpc_int64_get_value(v17);
  v46 = xpc_string_get_string_ptr(v20);
  v38 = _strtou32(v46, &v54, 0);
  if (v54)
  {
    v35 = v49;
    if (*v54)
    {
      v31 = *__error();
      if (!os_log_type_enabled(a2, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_90;
      }

      *buf = 136315650;
      v56 = "Cryptex1,ProductClass";
      v57 = 2112;
      v58 = v20;
      v59 = 1024;
      v60 = 214;
LABEL_89:
      _os_log_impl(&dword_2986C0000, a2, OS_LOG_TYPE_ERROR, "invalid %s value: %@: %{darwin.errno}d", buf, 0x1Cu);
LABEL_90:
      *__error() = v31;
      v28 = 214;
      if (!v20)
      {
        goto LABEL_92;
      }

      goto LABEL_91;
    }
  }

  else
  {
    v35 = v49;
  }

LABEL_106:
  v28 = 0;
  *v51 = 1;
  *(v51 + 8) = v50;
  *(v51 + 16) = v53;
  *(v51 + 24) = v52;
  *(v51 + 28) = v35;
  *(v51 + 32) = value;
  *(v51 + 36) = v37;
  *(v51 + 40) = v38;
  *(v51 + 44) = 0;
  if (v20)
  {
    goto LABEL_91;
  }

LABEL_92:
  if (v17)
  {
    os_release(v17);
  }

  if (v15)
  {
    os_release(v15);
  }

  if (v13)
  {
    os_release(v13);
  }

  if (v12)
  {
    os_release(v12);
  }

  if (v10)
  {
    os_release(v10);
  }

  if (v8)
  {
    os_release(v8);
  }

  return v28;
}

CFIndex cryptex_install(uint64_t a1, uint64_t a2)
{
  cf = 0;
  if (cryptex_install2(a1, a2, &cf))
  {
    TopLevelPosixError = 0;
  }

  else
  {
    TopLevelPosixError = _CFErrorGetTopLevelPosixError(cf);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return TopLevelPosixError;
}

CFIndex cryptex_personalize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, NSObject *a5, uint64_t a6, uint64_t a7)
{
  v10 = 0;
  v9[0] = MEMORY[0x29EDCA5F8];
  v9[1] = 0x40000000;
  v9[2] = __cryptex_personalize_block_invoke;
  v9[3] = &__block_descriptor_tmp_2;
  v9[4] = a7;
  v9[5] = a6;
  if (cryptex_personalize2(a1, a2, a3, a4, &v10, a5, v9))
  {
    TopLevelPosixError = 0;
  }

  else
  {
    TopLevelPosixError = _CFErrorGetTopLevelPosixError(v10);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  return TopLevelPosixError;
}

uint64_t __cryptex_personalize_block_invoke(uint64_t a1, CFIndex TopLevelPosixError, uint64_t a3)
{
  if (TopLevelPosixError)
  {
    TopLevelPosixError = _CFErrorGetTopLevelPosixError(TopLevelPosixError);
  }

  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  return v6(a3, TopLevelPosixError, v5);
}

CFErrorRef cryptex_fcopy_personalized_manifest(uint64_t a1, int a2)
{
  result = cryptex_fcopy_personalized_manifest2(a1, a2);
  if (result)
  {
    v3 = result;
    TopLevelPosixError = _CFErrorGetTopLevelPosixError(result);
    CFRelease(v3);
    return TopLevelPosixError;
  }

  return result;
}

CFIndex cryptex_upgrade_abort(uint64_t a1)
{
  cf = 0;
  if (cryptex_upgrade_abort2(a1, &cf))
  {
    TopLevelPosixError = 0;
  }

  else
  {
    TopLevelPosixError = _CFErrorGetTopLevelPosixError(cf);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return TopLevelPosixError;
}

CFIndex cryptex_upgrade_stage(uint64_t a1, uint64_t a2, uint64_t a3)
{
  cf = 0;
  if (cryptex_upgrade_stage2(a1, a2, a3, &cf))
  {
    TopLevelPosixError = 0;
  }

  else
  {
    TopLevelPosixError = _CFErrorGetTopLevelPosixError(cf);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return TopLevelPosixError;
}

CFIndex cryptex_upgrade_commit(uint64_t a1)
{
  cf = 0;
  if (cryptex_upgrade_commit2(a1, &cf))
  {
    TopLevelPosixError = 0;
  }

  else
  {
    TopLevelPosixError = _CFErrorGetTopLevelPosixError(cf);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return TopLevelPosixError;
}

void _cryptex_personalize2_callback(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[2];
  v4 = a1[4];
  v3 = a1[5];
  v5[0] = MEMORY[0x29EDCA5F8];
  v5[1] = 0x40000000;
  v5[2] = ___cryptex_personalize2_callback_block_invoke;
  v5[3] = &unk_29EEA7A38;
  v5[4] = v3;
  v5[5] = v2;
  v5[6] = v1;
  v5[7] = a1;
  dispatch_async(v4, v5);
  if (v4)
  {
    os_release(v4);
  }
}

void ___cryptex_personalize2_callback_block_invoke(void *a1)
{
  (*(a1[4] + 16))();
  v2 = a1[4];
  if (v2)
  {
    os_release(v2);
  }

  v3 = a1[5];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = a1[7];

  ctx_destroy(v4);
}

CFDataRef _AMAuthInstallCryptex1CopyUDID(const __CFNumber *a1, const __CFNumber *a2)
{
  v4 = 0;
  v5 = 0;
  CFNumberGetValue(a1, kCFNumberSInt32Type, &v4 + 4);
  CFNumberGetValue(a2, kCFNumberSInt64Type, &v5);
  HIDWORD(v4) = bswap32(HIDWORD(v4));
  v5 = bswap64(v5);
  return CFDataCreate(*MEMORY[0x29EDB8ED8], &v4, 16);
}

id _remote_service_log(uint64_t a1)
{
  if (_remote_service_log_onceToken != -1)
  {
    _remote_service_log_cold_1();
  }

  v2 = _remote_service_log_osl;

  return v2;
}

void sub_2986DD38C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, CFTypeRef cf)
{
  free(v12);
  if (cf)
  {
    CFRelease(cf);
  }

  _Unwind_Resume(a1);
}

uint64_t cryptex_remote_service_nonce_get_nonce(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    cryptex_remote_service_nonce_get_nonce_cold_1();
  }

  v2 = v1;
  v3 = [v1 nonce];

  return v3;
}

void cryptex_remote_service_nonce_attr_set_image_type(void *a1, uint64_t a2)
{
  v3 = a1;
  if (!v3)
  {
    cryptex_remote_service_nonce_attr_set_image_type_cold_1();
  }

  v4 = v3;
  [v3 setImage_type:a2];
}

void cryptex_remote_service_nonce_attr_set_persistence(void *a1, uint64_t a2)
{
  v3 = a1;
  if (!v3)
  {
    cryptex_remote_service_nonce_attr_set_image_type_cold_1();
  }

  v4 = v3;
  [v3 setPersistence:a2];
}

void cryptex_remote_service_nonce_attr_set_ndom_handle(void *a1, uint64_t a2)
{
  v3 = a1;
  if (!v3)
  {
    cryptex_remote_service_nonce_attr_set_image_type_cold_1();
  }

  v4 = v3;
  [v3 setNdom_handle:a2];
}

void cryptex_remote_service_nonce_attr_set_cryptex(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (!v3)
  {
    cryptex_remote_service_nonce_attr_set_image_type_cold_1();
  }

  v5 = v4;
  if (!v4)
  {
    cryptex_remote_service_nonce_attr_set_cryptex_cold_2();
  }

  v6 = _cryptex_get_core(v4);
  [v3 setImage_type:cryptex_get_image_type(v5)];
  if ([v3 image_type] == 2)
  {
    if (cryptex_core_get_nonce_domain_handle())
    {
      cryptex_remote_service_nonce_attr_set_cryptex_cold_1();
    }

    [v3 setNdom_handle:0];
  }
}

uint64_t cryptex_remote_service_nonce_attr_get_nonce_domain(void *a1)
{
  v15 = *MEMORY[0x29EDCA608];
  v1 = a1;
  if (!v1)
  {
    cryptex_remote_service_nonce_attr_set_image_type_cold_1();
  }

  v2 = v1;
  v3 = [v1 getNonceDomainIndex];
  v4 = __error();
  v5 = *v4;
  v6 = _remote_service_log(v4);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v9 = 134218496;
    v10 = [v2 image_type];
    v11 = 2048;
    v12 = [v2 persistence];
    v13 = 2048;
    v14 = v3;
    _os_log_impl(&dword_2986C0000, v6, OS_LOG_TYPE_DEBUG, "nonce attr [image_type = %llu, persistence = %llu] => domain index: %llu", &v9, 0x20u);
  }

  *__error() = v5;
  nonce_domain_from_index = _img4_get_nonce_domain_from_index(v3);

  return nonce_domain_from_index;
}

BOOL cryptex_remote_service_copy_device_identifier2(void *a1, void *a2, void *a3)
{
  v77 = *MEMORY[0x29EDCA608];
  v5 = a1;
  if (!v5)
  {
    cryptex_remote_service_copy_device_identifier2_cold_2();
  }

  if (!a2)
  {
    cryptex_remote_service_copy_device_identifier2_cold_1();
  }

  v6 = v5;
  v70 = 0;
  v71 = &v70;
  v72 = 0x2020000000;
  v73 = 0;
  memset(v74, 0, sizeof(v74));
  LOWORD(v74[0]) = 6;
  v64 = 0;
  v65 = &v64;
  v66 = 0x3032000000;
  v67 = __Block_byref_object_copy_;
  v68 = __Block_byref_object_dispose_;
  v69 = 0;
  if ([v5 supportsFeature:"ReadIdentifiers"])
  {
    personalization_identifiers_request = remote_service_create_personalization_identifiers_request();
    v8 = [v6 internal_queue];
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 3221225472;
    block[2] = __cryptex_remote_service_copy_device_identifier2_block_invoke;
    block[3] = &unk_29EEA7A60;
    v62 = &v70;
    v60 = v6;
    v9 = personalization_identifiers_request;
    v61 = v9;
    v63 = &v64;
    dispatch_sync(v8, block);

    if (v71[3])
    {
      v10 = __error();
      v11 = *v10;
      v12 = _remote_service_log(v10);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = v71[3];
        *buf = 138412290;
        v76 = v13;
        _os_log_impl(&dword_2986C0000, v12, OS_LOG_TYPE_ERROR, "personalization identifier request failed: %@", buf, 0xCu);
      }

LABEL_24:

      *__error() = v11;
      v37 = 0;
      goto LABEL_50;
    }

    v34 = img4_chip_instance_from_xpc(v65[5], v74);
    v71[3] = v34;
    if (v34)
    {
      v35 = __error();
      v11 = *v35;
      v12 = _remote_service_log(v35);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v36 = v71[3];
        *buf = 138412290;
        v76 = v36;
        _os_log_impl(&dword_2986C0000, v12, OS_LOG_TYPE_ERROR, "failed to decode AppleImage4 chip instance.: %@", buf, 0xCu);
      }

      goto LABEL_24;
    }

    v14 = v60;
    goto LABEL_34;
  }

  v14 = v6;
  v15 = [v14 device];
  v16 = remote_device_get_state() == 2;

  if (!v16)
  {
    v28 = _remote_service_log(v17);

    if (v28)
    {
      v30 = _remote_service_log(v29);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        v31 = 3;
      }

      else
      {
        v31 = 2;
      }

      v32 = [v14 device];
      name = remote_device_get_name();
      *buf = 136446210;
      v76 = name;
      v27 = _os_log_send_and_compose_impl(v31, 0, 0, 0, &dword_2986C0000, v30, 16, "remote device %{public}s disconnected", buf, 12);
    }

    else
    {
      v38 = MEMORY[0x29EDCA988];
      v39 = [v14 device];
      v40 = remote_device_get_name();
      *buf = 136446210;
      v76 = v40;
      v27 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986C0000, MEMORY[0x29EDCA988], 16, "remote device %{public}s disconnected", buf, 12);

      v30 = MEMORY[0x29EDCA988];
    }

    Error = createError("_cryptex_remote_service_copy_device_identifier_from_rsd", "remote_service.m", 396, "com.apple.security.cryptex", 19, 0, v27);
    goto LABEL_39;
  }

  v18 = [v14 device];
  v19 = remote_device_copy_properties();

  if (!v19)
  {
    v42 = _remote_service_log(v20);

    if (v42)
    {
      v44 = _remote_service_log(v43);
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        v45 = 3;
      }

      else
      {
        v45 = 2;
      }

      *buf = 0;
      v27 = _os_log_send_and_compose_impl(v45, 0, 0, 0, &dword_2986C0000, v44, 16, "cannot fetch remote device properties", buf, 2);
    }

    else
    {
      *buf = 0;
      v27 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986C0000, MEMORY[0x29EDCA988], 16, "cannot fetch remote device properties", buf, 2);
    }

    Error = createError("_cryptex_remote_service_copy_device_identifier_from_rsd", "remote_service.m", 405, "com.apple.security.cryptex", 19, 0, v27);
LABEL_39:
    v37 = Error;
    v19 = 0;
    goto LABEL_40;
  }

  v21 = _img4_chip_instance_from_remote_device_properties(v19, v74);
  v22 = v21;
  if (!v21)
  {

    v9 = 0;
LABEL_34:

LABEL_47:
    v37 = 0;
    *a2 = [[CryptexRemoteDeviceIdentifier alloc] initWithChipInstance:v74];
    goto LABEL_50;
  }

  v23 = _remote_service_log(v21);

  if (v23)
  {
    v25 = _remote_service_log(v24);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = 3;
    }

    else
    {
      v26 = 2;
    }

    *buf = 67109120;
    LODWORD(v76) = v22;
    v27 = _os_log_send_and_compose_impl(v26, 0, 0, 0, &dword_2986C0000, v25, 16, "failed to create chip instance from remote device %{darwin.errno}d", buf, 8);
  }

  else
  {
    *buf = 67109120;
    LODWORD(v76) = v22;
    v27 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986C0000, MEMORY[0x29EDCA988], 16, "failed to create chip instance from remote device %{darwin.errno}d", buf, 8);
  }

  v37 = createError("_cryptex_remote_service_copy_device_identifier_from_rsd", "remote_service.m", 416, "com.apple.security.cryptex.posix", v22, 0, v27);
LABEL_40:
  free(v27);

  if (!v37)
  {
    v9 = 0;
    goto LABEL_47;
  }

  v47 = _remote_service_log(v46);

  if (v47)
  {
    v49 = _remote_service_log(v48);
    if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
    {
      v50 = 3;
    }

    else
    {
      v50 = 2;
    }

    *buf = 0;
    LODWORD(v58) = 2;
    v51 = _os_log_send_and_compose_impl(v50, 0, 0, 0, &dword_2986C0000, v49, 16, "Failed to read identifiers from remote device properties.", buf, v58);
  }

  else
  {
    *buf = 0;
    LODWORD(v58) = 2;
    v51 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986C0000, MEMORY[0x29EDCA988], 16, "Failed to read identifiers from remote device properties.", buf, v58);
  }

  v52 = createError("cryptex_remote_service_copy_device_identifier2", "remote_service.m", 551, "com.apple.security.cryptex", 19, v37, v51);
  free(v51);
  v9 = 0;
  v71[3] = v52;
LABEL_50:
  v53 = v71;
  if (a3)
  {
    v54 = v71[3];
    if (v54)
    {
      v54 = CFRetain(v54);
      v53 = v71;
    }

    *a3 = v54;
  }

  v55 = v53[3];
  _Block_object_dispose(&v64, 8);

  if (v37)
  {
    CFRelease(v37);
  }

  _Block_object_dispose(&v70, 8);
  v56 = v71[3];
  if (v56)
  {
    CFRelease(v56);
  }

  return v55 == 0;
}

void sub_2986DE26C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  free(v26);
  _Block_object_dispose(&a19, 8);
  _Block_object_dispose(&a25, 8);
  v28 = *(a26 + 24);
  if (v28)
  {
    CFRelease(v28);
  }

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __cryptex_remote_service_copy_device_identifier2_block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = *(a1[7] + 8);
  obj = *(v4 + 40);
  v5 = [v2 sendRequestSync:v3 response:&obj];
  objc_storeStrong((v4 + 40), obj);
  *(*(a1[6] + 8) + 24) = v5;
}

uint64_t cryptex_remote_device_identifier_get_chip_inst(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    cryptex_remote_service_copy_device_identifier2_cold_1();
  }

  v2 = v1;
  v3 = [v1 inst];

  return v3;
}

uint64_t cryptex_remote_cryptex_get_identifier(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    cryptex_remote_cryptex_get_identifier_cold_1();
  }

  v2 = v1;
  v3 = [v1 identifier];

  return v3;
}

uint64_t cryptex_remote_cryptex_get_version_string(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    cryptex_remote_cryptex_get_identifier_cold_1();
  }

  v2 = v1;
  v3 = [v1 version];

  return v3;
}

void cryptex_remote_array_apply(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (!v3)
  {
    cryptex_remote_array_apply_cold_2();
  }

  v5 = v4;
  if (!v4)
  {
    cryptex_remote_array_apply_cold_1();
  }

  v6 = [v3 array];
  v8[0] = MEMORY[0x29EDCA5F8];
  v8[1] = 3221225472;
  v8[2] = __cryptex_remote_array_apply_block_invoke;
  v8[3] = &unk_29EEA7A88;
  v9 = v5;
  v7 = v5;
  [v6 enumerateObjectsUsingBlock:v8];
}

uint64_t __cryptex_remote_array_apply_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = (*(*(a1 + 32) + 16))();
  *a4 = result ^ 1;
  return result;
}

uint64_t cryptex_remote_array_get_count(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    cryptex_remote_array_apply_cold_2();
  }

  v2 = v1;
  v3 = [v1 array];
  v4 = [v3 count];

  return v4;
}

CryptexRemoteService *cryptex_remote_service_create(void *a1, void *a2, uint64_t a3)
{
  v5 = a1;
  v6 = a2;
  if (!v5)
  {
    cryptex_remote_service_create_cold_2();
  }

  v7 = v6;
  if (!v6)
  {
    cryptex_remote_service_create_cold_1();
  }

  v8 = [[CryptexRemoteService alloc] initWithDevice:v5 queue:v6 flags:a3];

  return v8;
}

BOOL cryptex_remote_service_copy_nonce2(void *a1, void *a2, void *a3, void *a4)
{
  v52 = *MEMORY[0x29EDCA608];
  v7 = a1;
  v8 = a2;
  if (!v7)
  {
    cryptex_remote_service_copy_device_identifier2_cold_2();
  }

  v9 = v8;
  if (!v8)
  {
    cryptex_remote_service_nonce_attr_set_image_type_cold_1();
  }

  if (!a3)
  {
    cryptex_remote_service_nonce_get_nonce_cold_1();
  }

  v46 = 0;
  v47 = &v46;
  v48 = 0x2020000000;
  v49 = 0;
  v40 = 0;
  v41 = &v40;
  v42 = 0x3032000000;
  v43 = __Block_byref_object_copy_;
  v44 = __Block_byref_object_dispose_;
  v45 = 0;
  if ([v8 image_type] == 2)
  {
    [v9 ndom_handle];
    nonce_handle_request = remote_service_create_nonce_handle_request();
  }

  else
  {
    [v9 getNonceDomainIndex];
    nonce_handle_request = remote_service_create_nonce_index_request();
  }

  v11 = nonce_handle_request;
  v12 = [v7 internal_queue];
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 3221225472;
  block[2] = __cryptex_remote_service_copy_nonce2_block_invoke;
  block[3] = &unk_29EEA7A60;
  v38 = &v46;
  v13 = v7;
  v36 = v13;
  v14 = v11;
  v37 = v14;
  v39 = &v40;
  dispatch_sync(v12, block);

  if (v47[3])
  {
    v15 = __error();
    v16 = *v15;
    v17 = _remote_service_log(v15);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = v47[3];
      *buf = 138412290;
      v51 = v18;
      _os_log_impl(&dword_2986C0000, v17, OS_LOG_TYPE_ERROR, "remote service copy nonce request failed: %@", buf, 0xCu);
    }

    *__error() = v16;
  }

  else
  {
    length = 0;
    data = xpc_dictionary_get_data(v41[5], "nonce", &length);
    v20 = data;
    if (*data)
    {
      v21 = _remote_service_log(data);

      if (v21)
      {
        v23 = _remote_service_log(v22);
        v24 = os_log_type_enabled(v23, OS_LOG_TYPE_ERROR);
        v25 = *v20;
        if (v24)
        {
          v26 = 3;
        }

        else
        {
          v26 = 2;
        }

        *buf = 67109120;
        LODWORD(v51) = v25;
        v27 = _os_log_send_and_compose_impl(v26, 0, 0, 0, &dword_2986C0000, v23, 16, "received a nonce with different version: %d", buf);
      }

      else
      {
        v28 = *v20;
        *buf = 67109120;
        LODWORD(v51) = v28;
        v27 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986C0000, MEMORY[0x29EDCA988], 16, "received a nonce with different version: %d", buf);
      }

      Error = createError("cryptex_remote_service_copy_nonce2", "remote_service.m", 668, "com.apple.security.cryptex", 10, 0, v27);
      free(v27);
      v47[3] = Error;
    }

    else
    {
      *a3 = [[CryptexRemoteServiceNonce alloc] initWithNonce:data];
    }
  }

  v30 = v47;
  if (a4)
  {
    v31 = v47[3];
    if (v31)
    {
      v31 = CFRetain(v31);
      v30 = v47;
    }

    *a4 = v31;
  }

  v32 = v30[3] == 0;

  _Block_object_dispose(&v40, 8);
  _Block_object_dispose(&v46, 8);

  return v32;
}

void sub_2986DEA40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  free(v20);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v21 - 128), 8);
  _Unwind_Resume(a1);
}

void __cryptex_remote_service_copy_nonce2_block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = *(a1[7] + 8);
  obj = *(v4 + 40);
  v5 = [v2 sendRequestSync:v3 response:&obj];
  objc_storeStrong((v4 + 40), obj);
  *(*(a1[6] + 8) + 24) = v5;
}

BOOL cryptex_remote_service_roll_nonce2(void *a1, void *a2, void *a3)
{
  v35 = *MEMORY[0x29EDCA608];
  v5 = a1;
  v6 = a2;
  if (!v5)
  {
    cryptex_remote_service_copy_device_identifier2_cold_2();
  }

  v7 = v6;
  if (!v6)
  {
    cryptex_remote_service_roll_nonce2_cold_1();
  }

  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0;
  v27[0] = 0;
  v27[1] = v27;
  v27[2] = 0x3032000000;
  v27[3] = __Block_byref_object_copy_;
  v27[4] = __Block_byref_object_dispose_;
  v28 = 0;
  if ([v6 image_type] == 2)
  {
    [v7 ndom_handle];
    roll_nonce_handle_request = remote_service_create_roll_nonce_handle_request();
  }

  else
  {
    [v7 getNonceDomainIndex];
    roll_nonce_handle_request = remote_service_create_roll_nonce_index_request();
  }

  v9 = roll_nonce_handle_request;
  v10 = [v5 internal_queue];
  v22[0] = MEMORY[0x29EDCA5F8];
  v22[1] = 3221225472;
  v22[2] = __cryptex_remote_service_roll_nonce2_block_invoke;
  v22[3] = &unk_29EEA7A60;
  v25 = &v29;
  v11 = v5;
  v23 = v11;
  v12 = v9;
  v24 = v12;
  v26 = v27;
  dispatch_sync(v10, v22);

  v13 = v30;
  if (v30[3])
  {
    v14 = __error();
    v15 = *v14;
    v16 = _remote_service_log(v14);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = v30[3];
      *buf = 138412290;
      v34 = v17;
      _os_log_impl(&dword_2986C0000, v16, OS_LOG_TYPE_ERROR, "remote service roll nonce request failed: %@", buf, 0xCu);
    }

    *__error() = v15;
    v13 = v30;
  }

  if (a3)
  {
    v18 = v13[3];
    if (v18)
    {
      v18 = CFRetain(v18);
      v13 = v30;
    }

    *a3 = v18;
  }

  v19 = v13[3];

  _Block_object_dispose(v27, 8);
  _Block_object_dispose(&v29, 8);
  v20 = v30[3];
  if (v20)
  {
    CFRelease(v20);
  }

  return v19 == 0;
}

void sub_2986DED78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  _Block_object_dispose(&a17, 8);
  _Block_object_dispose(&a23, 8);
  v25 = *(a24 + 24);
  if (v25)
  {
    CFRelease(v25);
  }

  _Unwind_Resume(a1);
}

void __cryptex_remote_service_roll_nonce2_block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = *(a1[7] + 8);
  obj = *(v4 + 40);
  v5 = [v2 sendRequestSync:v3 response:&obj];
  objc_storeStrong((v4 + 40), obj);
  *(*(a1[6] + 8) + 24) = v5;
}

BOOL cryptex_remote_service_install2(void *a1, void *a2, void *a3, uint64_t a4, void *a5, void *a6)
{
  v71 = *MEMORY[0x29EDCA608];
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v50 = v9;
  if (!v9)
  {
    cryptex_remote_service_copy_device_identifier2_cold_2();
  }

  if (!v10)
  {
    cryptex_remote_service_nonce_attr_set_cryptex_cold_2();
  }

  if (!v11)
  {
    cryptex_remote_service_nonce_attr_set_image_type_cold_1();
  }

  v52 = v11;
  if (!a5)
  {
    cryptex_remote_cryptex_get_identifier_cold_1();
  }

  v65 = 0;
  v66 = &v65;
  v67 = 0x2020000000;
  v68 = 0;
  v59 = 0;
  v60 = &v59;
  v61 = 0x3032000000;
  v62 = __Block_byref_object_copy_;
  v63 = __Block_byref_object_dispose_;
  v64 = 0;
  v12 = _cryptex_get_core(v10);
  if (!cryptex_core_get_image_asset())
  {
    v13 = _remote_service_log(0);

    if (v13)
    {
      v15 = _remote_service_log(v14);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = 3;
      }

      else
      {
        v16 = 2;
      }

      *buf = 0;
      v17 = _os_log_send_and_compose_impl(v16, 0, 0, 0, &dword_2986C0000, v15, 16, "cryptex doesn't contain image asset", buf, 2);
    }

    else
    {
      *buf = 0;
      v17 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986C0000, MEMORY[0x29EDCA988], 16, "cryptex doesn't contain image asset", buf, 2);
    }

    Error = createError("cryptex_remote_service_install2", "remote_service.m", 764, "com.apple.security.cryptex", 11, 0, v17);
    goto LABEL_48;
  }

  dup_np();
  if (!cryptex_core_get_tc_asset())
  {
    v18 = _remote_service_log(0);

    if (v18)
    {
      v20 = _remote_service_log(v19);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v21 = 3;
      }

      else
      {
        v21 = 2;
      }

      *buf = 0;
      v17 = _os_log_send_and_compose_impl(v21, 0, 0, 0, &dword_2986C0000, v20, 16, "cryptex doesn't contain trust cache", buf, 2);
    }

    else
    {
      *buf = 0;
      v17 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986C0000, MEMORY[0x29EDCA988], 16, "cryptex doesn't contain trust cache", buf, 2);
    }

    Error = createError("cryptex_remote_service_install2", "remote_service.m", 775, "com.apple.security.cryptex", 11, 0, v17);
    goto LABEL_48;
  }

  dup_np();
  if (!cryptex_core_get_asset())
  {
    v22 = _remote_service_log(0);

    if (v22)
    {
      v24 = _remote_service_log(v23);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v25 = 3;
      }

      else
      {
        v25 = 2;
      }

      *buf = 0;
      v17 = _os_log_send_and_compose_impl(v25, 0, 0, 0, &dword_2986C0000, v24, 16, "cryptex doesn't contain im4m", buf, 2);
    }

    else
    {
      *buf = 0;
      v17 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986C0000, MEMORY[0x29EDCA988], 16, "cryptex doesn't contain im4m", buf, 2);
    }

    Error = createError("cryptex_remote_service_install2", "remote_service.m", 785, "com.apple.security.cryptex", 11, 0, v17);
LABEL_48:
    v44 = Error;
    free(v17);
    v27 = 0;
    v28 = 0;
    v33 = 0;
    v43 = 0;
    v66[3] = v44;
    goto LABEL_49;
  }

  dup_np();
  if (cryptex_core_get_info_asset())
  {
    dup_np();
  }

  if (cryptex_core_get_volumehash_asset())
  {
    dup_np();
  }

  if (cryptex_core_is_cryptex1())
  {
    v27 = cryptex_core_get_cryptex1_properties();
    v28 = cryptex_core_cx1_copy_xpc_dictionary();
  }

  else
  {
    v28 = xpc_dictionary_create(0, 0, 0);
    v27 = 0;
  }

  persistence = _cryptex_attr_get_persistence(v52);
  if (persistence == 2)
  {
    v30 = 2;
  }

  else
  {
    v30 = persistence == 1;
  }

  nonce_persistence = _cryptex_attr_get_nonce_persistence(v52);
  _cryptex_attr_get_authentication(v52);
  v58 = 0;
  install_request = remote_service_create_install_request();
  v33 = 0;
  v66[3] = install_request;
  if (install_request)
  {
    v34 = __error();
    v35 = *v34;
    v36 = _remote_service_log(v34);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      v37 = v66[3];
      *buf = 138412290;
      v70 = v37;
      _os_log_impl(&dword_2986C0000, v36, OS_LOG_TYPE_ERROR, "failed to create remote service install request: %@", buf, 0xCu);
    }

    v38 = __error();
LABEL_43:
    v43 = 0;
    *v38 = v35;
    goto LABEL_49;
  }

  v39 = [v50 internal_queue];
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 3221225472;
  block[2] = __cryptex_remote_service_install2_block_invoke;
  block[3] = &unk_29EEA7A60;
  v56 = &v65;
  v54 = v50;
  v33 = v33;
  v55 = v33;
  v57 = &v59;
  dispatch_sync(v39, block);

  if (v66[3])
  {
    v40 = __error();
    v35 = *v40;
    v41 = _remote_service_log(v40);
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      v42 = v66[3];
      *buf = 138412290;
      v70 = v42;
      _os_log_impl(&dword_2986C0000, v41, OS_LOG_TYPE_ERROR, "remote service install request failed: %@", buf, 0xCu);
    }

    v38 = __error();
    goto LABEL_43;
  }

  v43 = xpc_dictionary_get_dictionary(v60[5], "remote-cryptex");
  *a5 = [[CryptexRemoteObject alloc] initWithDesc:v43];
LABEL_49:
  v45 = v66;
  if (a6)
  {
    v46 = v66[3];
    if (v46)
    {
      v46 = CFRetain(v46);
      v45 = v66;
    }

    *a6 = v46;
  }

  v47 = v45[3];

  _Block_object_dispose(&v59, 8);
  _Block_object_dispose(&v65, 8);
  v48 = v66[3];
  if (v48)
  {
    CFRelease(v48);
  }

  return v47 == 0;
}

void sub_2986DF5F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v26 - 160), 8);
  v28 = *(*(v26 - 152) + 24);
  if (v28)
  {
    CFRelease(v28);
  }

  _Unwind_Resume(a1);
}

void __cryptex_remote_service_install2_block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = *(a1[7] + 8);
  obj = *(v4 + 40);
  v5 = [v2 sendRequestSync:v3 response:&obj];
  objc_storeStrong((v4 + 40), obj);
  *(*(a1[6] + 8) + 24) = v5;
}

BOOL cryptex_remote_service_uninstall2(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v35 = *MEMORY[0x29EDCA608];
  v7 = a1;
  if (!v7)
  {
    cryptex_remote_service_copy_device_identifier2_cold_2();
  }

  if (!a2)
  {
    cryptex_remote_service_uninstall2_cold_1();
  }

  v8 = v7;
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0;
  v27[0] = 0;
  v27[1] = v27;
  v27[2] = 0x3032000000;
  v27[3] = __Block_byref_object_copy_;
  v27[4] = __Block_byref_object_dispose_;
  v28 = 0;
  uninstall_request = remote_service_create_uninstall_request();
  v10 = [v8 internal_queue];
  v22[0] = MEMORY[0x29EDCA5F8];
  v22[1] = 3221225472;
  v22[2] = __cryptex_remote_service_uninstall2_block_invoke;
  v22[3] = &unk_29EEA7A60;
  v25 = &v29;
  v11 = v8;
  v23 = v11;
  v12 = uninstall_request;
  v24 = v12;
  v26 = v27;
  dispatch_sync(v10, v22);

  v13 = v30;
  if (v30[3])
  {
    v14 = __error();
    v15 = *v14;
    v16 = _remote_service_log(v14);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = v30[3];
      *buf = 138412290;
      v34 = v17;
      _os_log_impl(&dword_2986C0000, v16, OS_LOG_TYPE_ERROR, "remote service uninstall request failed: %@", buf, 0xCu);
    }

    *__error() = v15;
    v13 = v30;
  }

  if (a5)
  {
    v18 = v13[3];
    if (v18)
    {
      v18 = CFRetain(v18);
      v13 = v30;
    }

    *a5 = v18;
  }

  v19 = v13[3];

  _Block_object_dispose(v27, 8);
  _Block_object_dispose(&v29, 8);
  v20 = v30[3];
  if (v20)
  {
    CFRelease(v20);
  }

  return v19 == 0;
}

void sub_2986DF928(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  _Block_object_dispose(&a17, 8);
  _Block_object_dispose(&a23, 8);
  v25 = *(a24 + 24);
  if (v25)
  {
    CFRelease(v25);
  }

  _Unwind_Resume(a1);
}

void __cryptex_remote_service_uninstall2_block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = *(a1[7] + 8);
  obj = *(v4 + 40);
  v5 = [v2 sendRequestSync:v3 response:&obj];
  objc_storeStrong((v4 + 40), obj);
  *(*(a1[6] + 8) + 24) = v5;
}

BOOL cryptex_remote_service_copy_installed2(void *a1, uint64_t a2, void *a3, void *a4)
{
  v50 = *MEMORY[0x29EDCA608];
  v6 = a1;
  if (!v6)
  {
    cryptex_remote_service_copy_device_identifier2_cold_2();
  }

  if (!a3)
  {
    cryptex_remote_service_copy_installed2_cold_1();
  }

  v7 = v6;
  v44 = 0;
  v45 = &v44;
  v46 = 0x2020000000;
  v47 = 0;
  v38 = 0;
  v39 = &v38;
  v40 = 0x3032000000;
  v41 = __Block_byref_object_copy_;
  v42 = __Block_byref_object_dispose_;
  v43 = 0;
  v8 = [MEMORY[0x29EDB8DE8] array];
  copy_installed_request = remote_service_create_copy_installed_request();
  v10 = [v7 internal_queue];
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 3221225472;
  block[2] = __cryptex_remote_service_copy_installed2_block_invoke;
  block[3] = &unk_29EEA7A60;
  v36 = &v44;
  v11 = v7;
  v34 = v11;
  v12 = copy_installed_request;
  v35 = v12;
  v37 = &v38;
  dispatch_sync(v10, block);

  if (v45[3])
  {
    v13 = __error();
    v14 = *v13;
    v15 = _remote_service_log(v13);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = v45[3];
      *buf = 138412290;
      v49 = v16;
      _os_log_impl(&dword_2986C0000, v15, OS_LOG_TYPE_ERROR, "remote service install request failed: %@", buf, 0xCu);
    }

    v17 = 0;
    *__error() = v14;
  }

  else
  {
    v18 = _xpc_dictionary_key_with_type_exists(v39[5], "remote-cryptex-array", MEMORY[0x29EDCA9E0]);
    if (v18)
    {
      v17 = xpc_dictionary_get_array(v39[5], "remote-cryptex-array");
      applier[0] = MEMORY[0x29EDCA5F8];
      applier[1] = 3221225472;
      applier[2] = __cryptex_remote_service_copy_installed2_block_invoke_152;
      applier[3] = &unk_29EEA7AB0;
      v19 = v8;
      v32 = v19;
      xpc_array_apply(v17, applier);

      *a3 = [[CryptexRemoteObjectArray alloc] initWithArray:v19];
    }

    else
    {
      v20 = _remote_service_log(v18);

      if (v20)
      {
        v22 = _remote_service_log(v21);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          v23 = 3;
        }

        else
        {
          v23 = 2;
        }

        *buf = 136446210;
        v49 = "remote-cryptex-array";
        v24 = _os_log_send_and_compose_impl(v23, 0, 0, 0, &dword_2986C0000, v22, 16, "remote service install response doesn't have key '%{public}s'", buf, 12);
      }

      else
      {
        *buf = 136446210;
        v49 = "remote-cryptex-array";
        v24 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986C0000, MEMORY[0x29EDCA988], 16, "remote service install response doesn't have key '%{public}s'", buf, 12);
      }

      Error = createError("cryptex_remote_service_copy_installed2", "remote_service.m", 952, "com.apple.security.cryptex", 16, 0, v24);
      free(v24);
      v17 = 0;
      v45[3] = Error;
    }
  }

  v26 = v45;
  if (a4)
  {
    v27 = v45[3];
    if (v27)
    {
      v27 = CFRetain(v27);
      v26 = v45;
    }

    *a4 = v27;
  }

  v28 = v26[3];

  _Block_object_dispose(&v38, 8);
  _Block_object_dispose(&v44, 8);
  v29 = v45[3];
  if (v29)
  {
    CFRelease(v29);
  }

  return v28 == 0;
}

void sub_2986DFE50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  free(v24);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v25 - 160), 8);
  v27 = *(*(v25 - 152) + 24);
  if (v27)
  {
    CFRelease(v27);
  }

  _Unwind_Resume(a1);
}

void __cryptex_remote_service_copy_installed2_block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = *(a1[7] + 8);
  obj = *(v4 + 40);
  v5 = [v2 sendRequestSync:v3 response:&obj];
  objc_storeStrong((v4 + 40), obj);
  *(*(a1[6] + 8) + 24) = v5;
}

uint64_t __cryptex_remote_service_copy_installed2_block_invoke_152(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [[CryptexRemoteObject alloc] initWithDesc:v4];

  [*(a1 + 32) addObject:v5];
  return 1;
}

CFIndex cryptex_remote_service_copy_device_identifier(void *a1, void *a2)
{
  v3 = a1;
  cf = 0;
  if (cryptex_remote_service_copy_device_identifier2(v3, a2, &cf))
  {
    TopLevelPosixError = 0;
  }

  else
  {
    TopLevelPosixError = _CFErrorGetTopLevelPosixError(cf);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return TopLevelPosixError;
}

void sub_2986DFFE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }

  _Unwind_Resume(exception_object);
}

CFIndex cryptex_remote_service_copy_nonce(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  cf = 0;
  if (cryptex_remote_service_copy_nonce2(v5, v6, a3, &cf))
  {
    TopLevelPosixError = 0;
  }

  else
  {
    TopLevelPosixError = _CFErrorGetTopLevelPosixError(cf);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return TopLevelPosixError;
}

void sub_2986E008C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }

  _Unwind_Resume(exception_object);
}

CFIndex cryptex_remote_service_roll_nonce(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  cf = 0;
  if (cryptex_remote_service_roll_nonce2(v3, v4, &cf))
  {
    TopLevelPosixError = 0;
  }

  else
  {
    TopLevelPosixError = _CFErrorGetTopLevelPosixError(cf);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return TopLevelPosixError;
}

void sub_2986E012C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }

  _Unwind_Resume(exception_object);
}

CFIndex cryptex_remote_service_install(void *a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v8 = a1;
  v9 = a2;
  v10 = a3;
  cf = 0;
  if (cryptex_remote_service_install2(v8, v9, v10, v11, a5, &cf))
  {
    TopLevelPosixError = 0;
  }

  else
  {
    TopLevelPosixError = _CFErrorGetTopLevelPosixError(cf);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return TopLevelPosixError;
}

void sub_2986E01E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }

  _Unwind_Resume(exception_object);
}

CFIndex cryptex_remote_service_uninstall(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  cf = 0;
  if (cryptex_remote_service_uninstall2(v5, a2, a3, v6, &cf))
  {
    TopLevelPosixError = 0;
  }

  else
  {
    TopLevelPosixError = _CFErrorGetTopLevelPosixError(cf);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return TopLevelPosixError;
}

void sub_2986E0280(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }

  _Unwind_Resume(exception_object);
}

CFIndex cryptex_remote_service_copy_installed(void *a1, uint64_t a2, void *a3)
{
  v4 = a1;
  cf = 0;
  if (cryptex_remote_service_copy_installed2(v4, v5, a3, &cf))
  {
    TopLevelPosixError = 0;
  }

  else
  {
    TopLevelPosixError = _CFErrorGetTopLevelPosixError(cf);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return TopLevelPosixError;
}

void sub_2986E0308(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___remote_service_log_block_invoke()
{
  _remote_service_log_osl = os_log_create("com.apple.libcryptex", "remote_service_client");

  return MEMORY[0x2A1C71028]();
}

uint64_t session_create(char a1)
{
  v1 = session_core_create();

  return session_create_from_core(v1);
}

uint64_t session_set_homedir_size(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  if (!v2)
  {
    return 22;
  }

  result = 0;
  *(v2 + 64) = a2;
  return result;
}

void _session_dealloc(uint64_t a1)
{
  v2 = *(a1 + 80);
  if (v2)
  {
    session_send_exit_message(v2);
    xpc_connection_cancel(*(a1 + 80));
  }

  v3 = *(a1 + 48);
  if (v3)
  {
    _Block_release(v3);
    *(a1 + 48) = 0;
  }

  v4 = *(a1 + 80);
  if (v4)
  {
    xpc_release(v4);
  }

  v5 = *(a1 + 88);
  if (v5)
  {
    dispatch_release(v5);
  }

  os_release(*(a1 + 40));

  object_proto_destroy(a1 + 16);
}

void session_send_exit_message(_xpc_connection_s *a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_BOOL(v2, "REMOVE", 1);
  xpc_connection_send_message(a1, v2);
  if (v2)
  {

    os_release(v2);
  }
}

uint64_t session_activate(uint64_t a1)
{
  v45 = *MEMORY[0x29EDCA608];
  v15 = -1;
  v2 = *(a1 + 40);
  v3 = cryptex_session_core_copy_xpc_object();
  if (MEMORY[0x29C28F4F0]() != MEMORY[0x29EDCAA00])
  {
    __break(1u);
  }

  v44 = 0;
  memset(v43, 0, sizeof(v43));
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v36 = 0u;
  v35 = 0u;
  v34 = 0u;
  v33 = 0u;
  v32 = 0u;
  v31 = 0u;
  v30 = 0u;
  v29 = 0u;
  v28 = 0u;
  v27 = 0u;
  v26 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v21 = 0u;
  v20 = 32;
  v4 = daemon_for_session_subsystem(&v15);
  v5 = 0;
  if (!v15)
  {
    _cryptex_actor_init_invoke_u64();
    session_activate_pack();
    v15 = cryptex_actor_trap();
    if (v15)
    {
      v6 = v4[2];
      v7 = *__error();
      v8 = v4[4];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = "[anonymous]";
        if (v6)
        {
          v9 = v6;
        }

        *buf = 136446466;
        v17 = v9;
        v18 = 1024;
        v19 = v15;
        v10 = "%{public}s: rpc failed for session create: %{darwin.errno}d";
LABEL_13:
        _os_log_impl(&dword_2986C0000, v8, OS_LOG_TYPE_ERROR, v10, buf, 0x12u);
        goto LABEL_14;
      }

      goto LABEL_14;
    }

    v15 = session_activate_reply_unpack();
    if (v15)
    {
      v11 = v4[2];
      v7 = *__error();
      v8 = v4[4];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v12 = "[anonymous]";
        if (v11)
        {
          v12 = v11;
        }

        *buf = 136446466;
        v17 = v12;
        v18 = 1024;
        v19 = v15;
        v10 = "%{public}s: rpc_unpack failed for session_create_reply: %{darwin.errno}d";
        goto LABEL_13;
      }

LABEL_14:
      v5 = 0;
      *__error() = v7;
      goto LABEL_15;
    }

    v5 = cryptex_session_core_create_from_xpc();
    cryptex_session_core_merge();
    *(v2 + 88) = xpc_copy(v5[11]);
    session_activate_endpoint(a1);
    xpc_release(0);
  }

LABEL_15:
  v13 = v15;
  rpc_destroy(&v20);
  rpc_destroy(v43);
  if (v3)
  {
    os_release(v3);
  }

  if (v4)
  {
    os_release(v4);
  }

  if (v5)
  {
    os_release(v5);
  }

  return v13;
}

uint64_t session_iter_list(uint64_t a1)
{
  v42 = *MEMORY[0x29EDCA608];
  v12 = -1;
  xarray = 0;
  v41 = 0;
  memset(v40, 0, sizeof(v40));
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v33 = 0u;
  v32 = 0u;
  v31 = 0u;
  v30 = 0u;
  v29 = 0u;
  v28 = 0u;
  v27 = 0u;
  v26 = 0u;
  v25 = 0u;
  v24 = 0u;
  v23 = 0u;
  v22 = 0u;
  v21 = 0u;
  v19 = 0u;
  v20 = 0u;
  v18 = 0u;
  v17 = 32;
  v1 = daemon_for_session_subsystem(&v12);
  if (!v12)
  {
    _cryptex_actor_init_invoke_u64();
    session_list_pack();
    v12 = cryptex_actor_trap();
    if (v12)
    {
      v2 = v1[2];
      v3 = *__error();
      v4 = v1[4];
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        v5 = "[anonymous]";
        if (v2)
        {
          v5 = v2;
        }

        *buf = 136446466;
        v14 = v5;
        v15 = 1024;
        v16 = v12;
        v6 = "%{public}s: rpc failed for session list: %{darwin.errno}d";
LABEL_12:
        _os_log_impl(&dword_2986C0000, v4, OS_LOG_TYPE_ERROR, v6, buf, 0x12u);
        goto LABEL_13;
      }

      goto LABEL_13;
    }

    v12 = session_list_reply_unpack();
    if (v12)
    {
      v7 = v1[2];
      v3 = *__error();
      v4 = v1[4];
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        v8 = "[anonymous]";
        if (v7)
        {
          v8 = v7;
        }

        *buf = 136446466;
        v14 = v8;
        v15 = 1024;
        v16 = v12;
        v6 = "%{public}s: rpc_unpack failed for session_list_reply: %{darwin.errno}d";
        goto LABEL_12;
      }

LABEL_13:
      *__error() = v3;
      goto LABEL_14;
    }

    v12 = 0;
  }

LABEL_14:
  v9 = v12;
  rpc_destroy(&v17);
  rpc_destroy(v40);
  if (v1)
  {
    os_release(v1);
  }

  return v9;
}

uint64_t __session_iter_list_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = cryptex_session_core_create_from_xpc();
  v5 = session_create_from_core(v4);
  session_activate_endpoint(v5);
  if ((*(v5[5] + 120) & 1) == 0)
  {
    (*(*(a1 + 32) + 16))();
  }

  os_release(v5);
  return 1;
}

uint64_t session_set_event_handler(uint64_t a1, uint64_t a2, NSObject *a3, void *aBlock)
{
  *(a1 + 56) = a2;
  *(a1 + 48) = _Block_copy(aBlock);
  *(a1 + 96) = a3;
  if (a3)
  {
    dispatch_retain(a3);
  }

  if (*(a1 + 80))
  {
    empty = xpc_dictionary_create_empty();
    xpc_dictionary_set_string(empty, "ACTIVATE", *(*(a1 + 40) + 96));
    xpc_connection_send_message(*(a1 + 80), empty);
    xpc_release(empty);
  }

  else if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_2986C0000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "session does not have a valid connection", v8, 2u);
  }

  return 0;
}

int64_t session_send_message(_xpc_connection_s *a1, int64_t a2, void *a3)
{
  v15 = *MEMORY[0x29EDCA608];
  v6 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v6, "COMMAND", a2);
  if (a3)
  {
    xpc_dictionary_set_value(v6, "PAYLOAD", a3);
  }

  v7 = xpc_connection_send_message_with_reply_sync(a1, v6);
  if (v7)
  {
    v8 = v7;
    if (xpc_dictionary_get_int64(v7, "STATE") == 1)
    {
      v9 = xpc_copy_debug_description();
      int64 = xpc_dictionary_get_int64(v8, "ERROR");
      if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
      {
        v12[0] = 67109378;
        v12[1] = int64;
        v13 = 2080;
        v14 = v9;
        _os_log_impl(&dword_2986C0000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "XPC error (code %d) in response to session message: %s", v12, 0x12u);
      }

      free(v9);
    }

    else
    {
      int64 = 0;
    }

    xpc_release(v8);
    if (v6)
    {
LABEL_14:
      os_release(v6);
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v12[0]) = 0;
      _os_log_impl(&dword_2986C0000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "Failed to get response to session message.", v12, 2u);
    }

    int64 = 61;
    if (v6)
    {
      goto LABEL_14;
    }
  }

  return int64;
}

void *cryptex_pack_core_cryptex(uint64_t a1, const char *a2)
{
  image_asset = cryptex_core_get_image_asset();
  tc_asset = cryptex_core_get_tc_asset();
  info_asset = cryptex_core_get_info_asset();
  volumehash_asset = cryptex_core_get_volumehash_asset();
  asset = cryptex_core_get_asset();
  cryptex1_properties = cryptex_core_get_cryptex1_properties();
  v10 = xpc_dictionary_create(0, 0, 0);
  v11 = v10;
  if (image_asset)
  {
    v12 = *(image_asset + 16);
    if (tc_asset)
    {
LABEL_3:
      v13 = *(tc_asset + 16);
      goto LABEL_6;
    }
  }

  else
  {
    v12 = -1;
    if (tc_asset)
    {
      goto LABEL_3;
    }
  }

  v13 = -1;
LABEL_6:
  if (info_asset)
  {
    v14 = *(info_asset + 16);
  }

  else
  {
    v14 = -1;
  }

  v15 = *(*(a1 + 176) + 24);
  if (!volumehash_asset)
  {
    v16 = -1;
    if (asset)
    {
      goto LABEL_11;
    }

LABEL_13:
    v17 = -1;
    goto LABEL_14;
  }

  v16 = *(volumehash_asset + 16);
  if (!asset)
  {
    goto LABEL_13;
  }

LABEL_11:
  v17 = *(asset + 16);
LABEL_14:
  xpc_dictionary_set_fd(v10, "DMG", v12);
  xpc_dictionary_set_fd(v11, "TCH", v13);
  xpc_dictionary_set_fd(v11, "INF", v14);
  xpc_dictionary_set_fd(v11, "VOLHASH", v16);
  xpc_dictionary_set_fd(v11, "IM4", v17);
  xpc_dictionary_set_int64(v11, "TYPE", v15);
  xpc_dictionary_set_string(v11, "BUNDLEID", a2);
  if (cryptex1_properties)
  {
    v18 = cryptex_core_cx1_copy_xpc_dictionary();
    xpc_dictionary_set_value(v11, "CRYPTEX1_PROPERTIES", v18);
    if (v18)
    {
      os_release(v18);
    }
  }

  return v11;
}

xpc_object_t cryptex_array_pack_from_path(const char *a1, const char *a2, int *a3)
{
  v28 = *MEMORY[0x29EDCA608];
  object = 0;
  cf = 0;
  v19 = -1;
  memset(v27, 0, sizeof(v27));
  if (a2)
  {
    v5 = a2;
  }

  else
  {
    v5 = "default";
  }

  LOWORD(v27[0]) = 6;
  v6 = xpc_array_create(0, 0);
  img4_chip_select_personalized_ap();
  if (!img4_chip_instantiate())
  {
    v10 = *(&v27[1] + 12);
    v11 = DWORD1(v27[2]);
    v19 = open(a1, 0x100000);
    if (v19 == -1)
    {
      TopLevelPosixError = *__error();
      if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
      {
        cryptex_array_pack_from_path_cold_1(a1);
      }

      v7 = 0;
      goto LABEL_19;
    }

    v7 = cryptex_bundle_create_with_directory(&v19, 0);
    LODWORD(buf) = 1;
    *(&buf + 1) = 0;
    v23 = v10;
    v24 = v11;
    v26 = 0;
    v25 = 0;
    if (cryptex_bundle_copy_cryptex2(v7, &buf, v5, &object, &cf))
    {
      v8 = cryptex_pack_core_cryptex(*(object + 6), v5);
      xpc_array_append_value(v6, v8);
      TopLevelPosixError = 0;
      goto LABEL_20;
    }

    v12 = cf;
    v13 = *__error();
    if (v12)
    {
      if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = cf;
        v14 = MEMORY[0x29EDCA988];
        v15 = "failed to copy cryptex from bundle: %@";
        v16 = OS_LOG_TYPE_ERROR;
        v17 = 12;
LABEL_17:
        _os_log_impl(&dword_2986C0000, v14, v16, v15, &buf, v17);
      }
    }

    else if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEBUG))
    {
      LOWORD(buf) = 0;
      v14 = MEMORY[0x29EDCA988];
      v15 = "failed to copy cryptex from bundle [no error]";
      v16 = OS_LOG_TYPE_DEBUG;
      v17 = 2;
      goto LABEL_17;
    }

    *__error() = v13;
    TopLevelPosixError = _CFErrorGetTopLevelPosixError(cf);
LABEL_19:
    v8 = 0;
    goto LABEL_20;
  }

  v7 = 0;
  v8 = 0;
  TopLevelPosixError = 71;
LABEL_20:
  *a3 = TopLevelPosixError;
  if (v19 != -1 && close(v19) == -1)
  {
    cryptex_array_pack_from_path_cold_2(&buf, v27);
  }

  if (v7)
  {
    os_release(v7);
  }

  if (object)
  {
    os_release(object);
  }

  if (v8)
  {
    os_release(v8);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v6;
}

int64_t session_start(uint64_t a1)
{
  v1 = *(a1 + 80);
  if (v1)
  {
    return session_send_message(v1, 1, 0);
  }

  else
  {
    return 57;
  }
}

int64_t session_stop(uint64_t a1)
{
  if (*(*(a1 + 40) + 48))
  {
    return session_send_message(*(a1 + 80), 2, 0);
  }

  else
  {
    return 6;
  }
}

uint64_t session_get_stop_reason(uint64_t a1)
{
  if (*(*(a1 + 40) + 48) == 5)
  {
    return *(a1 + 64);
  }

  else
  {
    return 0;
  }
}

uint64_t session_get_stop_code(void *a1)
{
  if (*(a1[5] + 48) == 5 && a1[8] == 2)
  {
    return a1[9];
  }

  else
  {
    return 0;
  }
}

int64_t session_add_cryptex(uint64_t a1, const char *a2, const char *a3)
{
  v29 = *MEMORY[0x29EDCA608];
  v20 = -1;
  v6 = xpc_dictionary_create(0, 0, 0);
  v7 = cryptex_array_pack_from_path(a2, a3, &v20);
  v8 = v20;
  if (!v20)
  {
    xpc_dictionary_set_string(v6, "NAME", *(*(a1 + 40) + 96));
    xpc_dictionary_set_value(v6, "CRYPTEXES", v7);
    count = xpc_array_get_count(v7);
    v11 = *(a1 + 40);
    if (count)
    {
      if (*(v11 + 48) == 1)
      {
        v8 = session_send_message(*(a1 + 80), 3, v6);
      }

      else
      {
        v16 = *(v11 + 16);
        v17 = *__error();
        v18 = *(*(a1 + 40) + 32);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          if (!v16)
          {
            v16 = "[anonymous]";
          }

          v19 = cryptex_session_state_to_string();
          *buf = 136446722;
          v22 = v16;
          v23 = 2080;
          v24 = v19;
          v25 = 1024;
          LODWORD(v26) = 36;
          _os_log_impl(&dword_2986C0000, v18, OS_LOG_TYPE_ERROR, "%{public}s: Cryptexes cannot be added to session in the %s state.: %{darwin.errno}d", buf, 0x1Cu);
        }

        *__error() = v17;
        v8 = 36;
      }
    }

    else
    {
      v12 = *(v11 + 16);
      v13 = *__error();
      v14 = *(*(a1 + 40) + 32);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = "[anonymous]";
        *buf = 136446978;
        if (v12)
        {
          v15 = v12;
        }

        v22 = v15;
        v23 = 2080;
        v24 = a3;
        v25 = 2080;
        v26 = a2;
        v27 = 1024;
        v28 = 2;
        _os_log_impl(&dword_2986C0000, v14, OS_LOG_TYPE_ERROR, "%{public}s: Variant %s not found in %s: %{darwin.errno}d", buf, 0x26u);
      }

      *__error() = v13;
      v8 = 2;
    }
  }

  if (v7)
  {
    os_release(v7);
  }

  if (v6)
  {
    os_release(v6);
  }

  return v8;
}

uint64_t session_add_job_override(uint64_t a1, const char *a2, const char *a3, void *a4)
{
  v24 = *MEMORY[0x29EDCA608];
  v5 = *(a1 + 40);
  if (!*(v5 + 48))
  {
    empty = xpc_dictionary_create_empty();
    v14 = *(*(a1 + 40) + 80);
    xpc_dictionary_set_value(empty, a3, a4);
    dictionary = xpc_dictionary_get_dictionary(v14, a2);
    if (dictionary)
    {
      v9 = _xpc_plist_merge(dictionary, empty);
      if (!empty)
      {
        return v9;
      }
    }

    else
    {
      v17 = xpc_dictionary_create_empty();
      v9 = _xpc_plist_merge(v17, empty);
      xpc_dictionary_set_value(v14, a2, v17);
      xpc_release(v17);
      if (!empty)
      {
        return v9;
      }
    }

    os_release(empty);
    return v9;
  }

  v6 = *(v5 + 16);
  v7 = *__error();
  v8 = *(*(a1 + 40) + 32);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    if (!v6)
    {
      v6 = "[anonymous]";
    }

    v18 = 136446722;
    v19 = v6;
    v20 = 2080;
    v21 = cryptex_session_state_to_string();
    v22 = 1024;
    v23 = 36;
    _os_log_impl(&dword_2986C0000, v8, OS_LOG_TYPE_ERROR, "%{public}s: Job Overrides only allowed in LOCAL, currently in %s: %{darwin.errno}d", &v18, 0x1Cu);
  }

  *__error() = v7;
  return 36;
}

uint64_t session_add_session_environment(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x29EDCA608];
  v3 = *(a1 + 40);
  if (*(v3 + 48))
  {
    v4 = *(v3 + 16);
    v5 = *__error();
    v6 = *(*(a1 + 40) + 32);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      if (!v4)
      {
        v4 = "[anonymous]";
      }

      v8 = 136446722;
      v9 = v4;
      v10 = 2080;
      v11 = cryptex_session_state_to_string();
      v12 = 1024;
      v13 = 36;
      _os_log_impl(&dword_2986C0000, v6, OS_LOG_TYPE_ERROR, "%{public}s: ENV Variables only allowed in LOCAL, currently in %s: %{darwin.errno}d", &v8, 0x1Cu);
    }

    *__error() = v5;
    return 36;
  }

  else
  {

    return session_add_job_override(a1, "CRYPTEX_SESSION", "EnvironmentVariables", a2);
  }
}

uint64_t session_set_job_environment_override(uint64_t a1, const char *a2, void *a3)
{
  v15 = *MEMORY[0x29EDCA608];
  v4 = *(a1 + 40);
  if (*(v4 + 48))
  {
    v5 = *(v4 + 16);
    v6 = *__error();
    v7 = *(*(a1 + 40) + 32);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      if (!v5)
      {
        v5 = "[anonymous]";
      }

      v9 = 136446722;
      v10 = v5;
      v11 = 2080;
      v12 = cryptex_session_state_to_string();
      v13 = 1024;
      v14 = 36;
      _os_log_impl(&dword_2986C0000, v7, OS_LOG_TYPE_ERROR, "%{public}s: ENV Variables only allowed in LOCAL, currently in %s: %{darwin.errno}d", &v9, 0x1Cu);
    }

    *__error() = v6;
    return 36;
  }

  else
  {

    return session_add_job_override(a1, a2, "EnvironmentVariables", a3);
  }
}

uint64_t session_get_uuid(uint64_t a1, uuid_t uu)
{
  v2 = *(a1 + 40);
  v3 = 36;
  if (v2)
  {
    if (*(v2 + 48) == 3)
    {
      v3 = 0;
    }

    else
    {
      v3 = 36;
    }
  }

  uuid_clear(uu);
  return v3;
}

uint64_t session_get_homedir(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    return *(v1 + 112);
  }

  else
  {
    return 0;
  }
}

uint64_t session_get_name(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    return *(v1 + 96);
  }

  else
  {
    return 0;
  }
}

void _cryptex_attr_dealloc(uint64_t a1)
{
  free(*(a1 + 72));
  free(*(a1 + 80));
  v2 = *(a1 + 96);

  free(v2);
}

uint64_t cryptex_attr_create()
{
  v0 = _cryptex_attr_alloc(136);
  object_proto_init(v0 + 16, "com.apple.security.libcryptex", "attr");
  return v0;
}

int *cryptex_attr_set_persistence(void *a1, uint64_t a2)
{
  v13 = *MEMORY[0x29EDCA608];
  v4 = a1[2];
  v5 = *__error();
  v6 = a1[4];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = "[anonymous]";
    if (v4)
    {
      v7 = v4;
    }

    v9 = 136446466;
    v10 = v7;
    v11 = 2048;
    v12 = a2;
    _os_log_impl(&dword_2986C0000, v6, OS_LOG_TYPE_DEBUG, "%{public}s: setting persistence: %#llx", &v9, 0x16u);
  }

  result = __error();
  *result = v5;
  a1[6] = a2;
  return result;
}

int *cryptex_attr_set_nonce_persistence(void *a1, uint64_t a2)
{
  v13 = *MEMORY[0x29EDCA608];
  v4 = a1[2];
  v5 = *__error();
  v6 = a1[4];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = "[anonymous]";
    if (v4)
    {
      v7 = v4;
    }

    v9 = 136446466;
    v10 = v7;
    v11 = 2048;
    v12 = a2;
    _os_log_impl(&dword_2986C0000, v6, OS_LOG_TYPE_DEBUG, "%{public}s: setting nonce persistence: %#llx", &v9, 0x16u);
  }

  result = __error();
  *result = v5;
  a1[7] = a2;
  return result;
}

int *cryptex_attr_set_authentication(void *a1, uint64_t a2)
{
  v13 = *MEMORY[0x29EDCA608];
  v4 = a1[2];
  v5 = *__error();
  v6 = a1[4];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = "[anonymous]";
    if (v4)
    {
      v7 = v4;
    }

    v9 = 136446466;
    v10 = v7;
    v11 = 2048;
    v12 = a2;
    _os_log_impl(&dword_2986C0000, v6, OS_LOG_TYPE_DEBUG, "%{public}s: setting authentication: %#llx", &v9, 0x16u);
  }

  result = __error();
  *result = v5;
  a1[8] = a2;
  return result;
}

char *cryptex_attr_set_tss_url(uint64_t a1, const char *a2)
{
  v7 = *MEMORY[0x29EDCA608];
  free(*(a1 + 72));
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
      cryptex_attr_set_tss_url_cold_1(a2, &v5, v6);
    }
  }

  *(a1 + 72) = result;
  return result;
}

int *cryptex_attr_set_personalization_flags(void *a1, uint64_t a2)
{
  v13 = *MEMORY[0x29EDCA608];
  v4 = a1[2];
  v5 = *__error();
  v6 = a1[4];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = "[anonymous]";
    if (v4)
    {
      v7 = v4;
    }

    v9 = 136446466;
    v10 = v7;
    v11 = 2048;
    v12 = a2;
    _os_log_impl(&dword_2986C0000, v6, OS_LOG_TYPE_DEBUG, "%{public}s: setting personalization flags: %#llx", &v9, 0x16u);
  }

  result = __error();
  *result = v5;
  a1[14] = a2;
  return result;
}

char *cryptex_attr_set_socks_proxy(uint64_t a1, const char *a2, int a3)
{
  v9 = *MEMORY[0x29EDCA608];
  free(*(a1 + 80));
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
      cryptex_attr_set_tss_url_cold_1(a2, &v7, v8);
    }
  }

  *(a1 + 80) = result;
  *(a1 + 88) = a3;
  return result;
}

int *cryptex_attr_set_auth_token(uint64_t a1, const void *a2, size_t a3)
{
  v19 = *MEMORY[0x29EDCA608];
  free(*(a1 + 96));
  *(a1 + 96) = 0;
  if (a2 && a3)
  {
    v6 = malloc_type_malloc(a3, 0x21F97586uLL);
    v7 = *(a1 + 16);
    v8 = *__error();
    v9 = *(a1 + 32);
    if (v6)
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        v10 = "[anonymous]";
        if (v7)
        {
          v10 = v7;
        }

        v17 = 136446210;
        v18 = v10;
        _os_log_impl(&dword_2986C0000, v9, OS_LOG_TYPE_DEBUG, "%{public}s: setting auth token", &v17, 0xCu);
      }

      *__error() = v8;
      *(a1 + 96) = v6;
      *(a1 + 104) = a3;
      return memcpy(v6, a2, a3);
    }

    else
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v16 = "[anonymous]";
        if (v7)
        {
          v16 = v7;
        }

        v17 = 136446210;
        v18 = v16;
        _os_log_impl(&dword_2986C0000, v9, OS_LOG_TYPE_ERROR, "%{public}s: failed to alloc buffer", &v17, 0xCu);
      }

      result = __error();
      *result = v8;
    }
  }

  else
  {
    v12 = *(a1 + 16);
    v13 = *__error();
    v14 = *(a1 + 32);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = "[anonymous]";
      if (v12)
      {
        v15 = v12;
      }

      v17 = 136446210;
      v18 = v15;
      _os_log_impl(&dword_2986C0000, v14, OS_LOG_TYPE_ERROR, "%{public}s: empty auth token", &v17, 0xCu);
    }

    result = __error();
    *result = v13;
  }

  return result;
}

int *cryptex_attr_set_mount_flags(void *a1, uint64_t a2)
{
  v13 = *MEMORY[0x29EDCA608];
  v4 = a1[2];
  v5 = *__error();
  v6 = a1[4];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = "[anonymous]";
    if (v4)
    {
      v7 = v4;
    }

    v9 = 136446466;
    v10 = v7;
    v11 = 2048;
    v12 = a2;
    _os_log_impl(&dword_2986C0000, v6, OS_LOG_TYPE_DEBUG, "%{public}s: setting mount flags: %#llx", &v9, 0x16u);
  }

  result = __error();
  *result = v5;
  a1[15] = a2;
  return result;
}

int *cryptex_attr_set_uninstall_flags(void *a1, uint64_t a2)
{
  v13 = *MEMORY[0x29EDCA608];
  v4 = a1[2];
  v5 = *__error();
  v6 = a1[4];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = "[anonymous]";
    if (v4)
    {
      v7 = v4;
    }

    v9 = 136446466;
    v10 = v7;
    v11 = 2048;
    v12 = a2;
    _os_log_impl(&dword_2986C0000, v6, OS_LOG_TYPE_DEBUG, "%{public}s: setting uninstall flags: %#llx", &v9, 0x16u);
  }

  result = __error();
  *result = v5;
  a1[16] = a2;
  return result;
}

uint64_t cryptex_attr_set_read_write(uint64_t result, int a2)
{
  v2 = 2;
  if (!a2)
  {
    v2 = 0;
  }

  *(result + 40) = *(result + 40) & 0xFFFFFFFFFFFFFFFDLL | v2;
  return result;
}

void _cryptex_su_preboot_bundle_dealloc(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    xpc_release(v2);
  }

  v3 = *(a1 + 48);
  v7 = v3;
  if (v3)
  {
    do
    {
      v4 = *v3;
      v5 = *(a1 + 48);
      if (v5 == v3)
      {
        *(a1 + 48) = *v5;
      }

      else
      {
        do
        {
          v6 = v5;
          v5 = *v5;
        }

        while (v5 != v3);
        *v6 = *v5;
        v3 = v7;
      }

      *v3 = -1;
      _cryptex_list_elm_destroy(&v7);
      v7 = v4;
      v3 = v4;
    }

    while (v4);
  }

  object_proto_destroy(a1 + 24);
}

uint64_t cryptex_su_preboot_bundle_copy_cryptex()
{
  v3 = *MEMORY[0x29EDCA608];
  v0 = *__error();
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    v2[0] = 67109120;
    v2[1] = 45;
    _os_log_impl(&dword_2986C0000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "Unsupported on this platform.: %{darwin.errno}d", v2, 8u);
  }

  *__error() = v0;
  return 45;
}

uint64_t cryptex_su_preboot_bundle_create()
{
  v0 = _cryptex_su_preboot_bundle_alloc(64);
  object_proto_init(v0 + 24, "com.apple.security.libcryptex", "su_preboot_bundle");
  return v0;
}

void cryptex_inventory_lookup_endpoint(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v9 = 0;
  connection = cryptex_xpc_create_connection();
  request = endpoint_lookup_interface_create_request();
  if (request)
  {
    v4[2](v4, request, 0);
  }

  else
  {
    v7[0] = MEMORY[0x29EDCA5F8];
    v7[1] = 3221225472;
    v7[2] = __cryptex_inventory_lookup_endpoint_block_invoke;
    v7[3] = &unk_29EEA7B00;
    v8 = v4;
    xpc_connection_send_message_with_reply(connection, v9, v3, v7);
  }
}

void __cryptex_inventory_lookup_endpoint_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (MEMORY[0x29C28F4F0]() == MEMORY[0x29EDCAA00])
  {
    v7 = xpc_dictionary_get_value(v3, "ENDPOINT");
    if (v7)
    {
      v8 = *(*(a1 + 32) + 16);
    }

    else
    {
      v9 = MEMORY[0x29EDCA988];
      if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
      {
        v10 = 3;
      }

      else
      {
        v10 = 2;
      }

      v13[0] = 0;
      v11 = _os_log_send_and_compose_impl(v10, 0, 0, 0, &dword_2986C0000, v9, 16, "No endpoint received.", v13, 2);
      createError("cryptex_inventory_lookup_endpoint_block_invoke", "inventory.m", 25, "com.apple.security.cryptex", 23, 0, v11);
      free(v11);
      v8 = *(*(a1 + 32) + 16);
    }

    v8();
  }

  else
  {
    v4 = MEMORY[0x29EDCA988];
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      v5 = 3;
    }

    else
    {
      v5 = 2;
    }

    v12[0] = 0;
    v6 = _os_log_send_and_compose_impl(v5, 0, 0, 0, &dword_2986C0000, v4, 16, "Failed to lookup endpoint.", v12, 2);
    createError("cryptex_inventory_lookup_endpoint_block_invoke", "inventory.m", 30, "com.apple.security.cryptex", 23, 0, v6);
    free(v6);
    (*(*(a1 + 32) + 16))();
  }
}

uint64_t _img4_get_nonce_domain_from_index(unint64_t a1)
{
  if (a1 > 0xC || a1 - 1 > 9)
  {
    return 0;
  }

  else
  {
    return qword_29EEA7B40[a1 - 1];
  }
}

uint64_t _img4_chip_instance_from_remote_device_properties(void *a1, uint64_t a2)
{
  v20 = *MEMORY[0x29EDCA608];
  string = xpc_dictionary_get_string(a1, "Image4CryptoHashMethod");
  if (!string)
  {
    v9 = *__error();
    if (_img4_log_onceToken != -1)
    {
      _img4_chip_instance_from_remote_device_properties_cold_1();
    }

    v10 = _img4_log_osl;
    if (os_log_type_enabled(_img4_log_osl, OS_LOG_TYPE_INFO))
    {
      LOWORD(v16) = 0;
      _os_log_impl(&dword_2986C0000, v10, OS_LOG_TYPE_INFO, "no image4 hash method advertised, falling back to use sha2-384 by default", &v16, 2u);
    }

    *__error() = v9;
    goto LABEL_14;
  }

  v5 = string;
  if (!strcmp(string, "sha1"))
  {
    v11 = MEMORY[0x29EDC96B0];
LABEL_16:
    *(a2 + 8) = v11;
    if (_xpc_dictionary_key_with_type_exists(a1, "BoardId", MEMORY[0x29EDCAA58]))
    {
      *(a2 + 28) = xpc_dictionary_get_uint64(a1, "BoardId");
      if (_xpc_dictionary_key_with_type_exists(a1, "ChipID", MEMORY[0x29EDCAA58]))
      {
        *(a2 + 32) = xpc_dictionary_get_uint64(a1, "ChipID");
        if (_xpc_dictionary_key_with_type_exists(a1, "SecurityDomain", MEMORY[0x29EDCAA58]))
        {
          *(a2 + 36) = xpc_dictionary_get_uint64(a1, "SecurityDomain");
          if (_xpc_dictionary_key_with_type_exists(a1, "UniqueChipID", MEMORY[0x29EDCAA58]))
          {
            *(a2 + 40) = xpc_dictionary_get_uint64(a1, "UniqueChipID");
            if (_xpc_dictionary_key_with_type_exists(a1, "CertificateProductionStatus", MEMORY[0x29EDCA9E8]))
            {
              *(a2 + 48) = xpc_dictionary_get_BOOL(a1, "CertificateProductionStatus");
              if (_xpc_dictionary_key_with_type_exists(a1, "CertificateSecurityMode", MEMORY[0x29EDCA9E8]))
              {
                *(a2 + 49) = xpc_dictionary_get_BOOL(a1, "CertificateSecurityMode");
                if (_xpc_dictionary_key_with_type_exists(a1, "EffectiveProductionStatusAp", MEMORY[0x29EDCA9E8]))
                {
                  *(a2 + 50) = xpc_dictionary_get_BOOL(a1, "EffectiveProductionStatusAp");
                  if (_xpc_dictionary_key_with_type_exists(a1, "EffectiveSecurityModeAp", MEMORY[0x29EDCA9E8]))
                  {
                    v12 = xpc_dictionary_get_BOOL(a1, "EffectiveSecurityModeAp");
                    result = 0;
                    *(a2 + 51) = v12;
                    *(a2 + 24) = 1;
                    return result;
                  }

                  v13 = *__error();
                  if (_img4_log_onceToken != -1)
                  {
                    _img4_chip_instance_from_remote_device_properties_cold_3();
                  }

                  v14 = _img4_log_osl;
                  if (!os_log_type_enabled(_img4_log_osl, OS_LOG_TYPE_ERROR))
                  {
                    goto LABEL_58;
                  }

                  v16 = 67109120;
                  LODWORD(v17) = 2;
                  v15 = "effective security mode not found: %{darwin.errno}d";
                }

                else
                {
                  v13 = *__error();
                  if (_img4_log_onceToken != -1)
                  {
                    _img4_chip_instance_from_remote_device_properties_cold_3();
                  }

                  v14 = _img4_log_osl;
                  if (!os_log_type_enabled(_img4_log_osl, OS_LOG_TYPE_ERROR))
                  {
                    goto LABEL_58;
                  }

                  v16 = 67109120;
                  LODWORD(v17) = 2;
                  v15 = "effective production status not found: %{darwin.errno}d";
                }
              }

              else
              {
                v13 = *__error();
                if (_img4_log_onceToken != -1)
                {
                  _img4_chip_instance_from_remote_device_properties_cold_3();
                }

                v14 = _img4_log_osl;
                if (!os_log_type_enabled(_img4_log_osl, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_58;
                }

                v16 = 67109120;
                LODWORD(v17) = 2;
                v15 = "security mode not found: %{darwin.errno}d";
              }
            }

            else
            {
              v13 = *__error();
              if (_img4_log_onceToken != -1)
              {
                _img4_chip_instance_from_remote_device_properties_cold_3();
              }

              v14 = _img4_log_osl;
              if (!os_log_type_enabled(_img4_log_osl, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_58;
              }

              v16 = 67109120;
              LODWORD(v17) = 2;
              v15 = "production status not found: %{darwin.errno}d";
            }
          }

          else
          {
            v13 = *__error();
            if (_img4_log_onceToken != -1)
            {
              _img4_chip_instance_from_remote_device_properties_cold_3();
            }

            v14 = _img4_log_osl;
            if (!os_log_type_enabled(_img4_log_osl, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_58;
            }

            v16 = 67109120;
            LODWORD(v17) = 2;
            v15 = "ecid not found: %{darwin.errno}d";
          }
        }

        else
        {
          v13 = *__error();
          if (_img4_log_onceToken != -1)
          {
            _img4_chip_instance_from_remote_device_properties_cold_3();
          }

          v14 = _img4_log_osl;
          if (!os_log_type_enabled(_img4_log_osl, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_58;
          }

          v16 = 67109120;
          LODWORD(v17) = 2;
          v15 = "security domain not found: %{darwin.errno}d";
        }
      }

      else
      {
        v13 = *__error();
        if (_img4_log_onceToken != -1)
        {
          _img4_chip_instance_from_remote_device_properties_cold_3();
        }

        v14 = _img4_log_osl;
        if (!os_log_type_enabled(_img4_log_osl, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_58;
        }

        v16 = 67109120;
        LODWORD(v17) = 2;
        v15 = "chip id not found: %{darwin.errno}d";
      }
    }

    else
    {
      v13 = *__error();
      if (_img4_log_onceToken != -1)
      {
        _img4_chip_instance_from_remote_device_properties_cold_3();
      }

      v14 = _img4_log_osl;
      if (!os_log_type_enabled(_img4_log_osl, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_58;
      }

      v16 = 67109120;
      LODWORD(v17) = 2;
      v15 = "board id not found: %{darwin.errno}d";
    }

    _os_log_impl(&dword_2986C0000, v14, OS_LOG_TYPE_ERROR, v15, &v16, 8u);
LABEL_58:
    *__error() = v13;
    return 2;
  }

  if (!strcmp(v5, "sha2-384"))
  {
LABEL_14:
    v11 = MEMORY[0x29EDC96B8];
    goto LABEL_16;
  }

  v6 = *__error();
  if (_img4_log_onceToken != -1)
  {
    _img4_chip_instance_from_remote_device_properties_cold_1();
  }

  v7 = _img4_log_osl;
  if (os_log_type_enabled(_img4_log_osl, OS_LOG_TYPE_ERROR))
  {
    v16 = 136315394;
    v17 = v5;
    v18 = 1024;
    v19 = 22;
    _os_log_impl(&dword_2986C0000, v7, OS_LOG_TYPE_ERROR, "invalid crypto hash method: %s: %{darwin.errno}d", &v16, 0x12u);
  }

  *__error() = v6;
  return 22;
}

os_log_t ___img4_log_block_invoke()
{
  result = os_log_create("com.apple.libcryptex", "img4");
  _img4_log_osl = result;
  return result;
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

os_log_t object_proto_init(uint64_t a1, int a2, char *category)
{
  result = os_log_create("com.apple.libcryptex", category);
  *(a1 + 16) = result;
  return result;
}

char *object_set_name(uint64_t a1, const char *a2)
{
  v17 = *MEMORY[0x29EDCA608];
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
      _os_log_impl(&dword_2986C0000, v6, OS_LOG_TYPE_DEBUG, "%{public}s: changing name: %s -> %s", buf, 0x20u);
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
      _os_log_impl(&dword_2986C0000, v6, OS_LOG_TYPE_DEBUG, "%{public}s: setting name: %s", buf, 0x16u);
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
      _cryptex_copy_list_lossy_cold_2(a2, v10, buf);
    }
  }

  *a1 = result;
  *(a1 + 8) = result;
  return result;
}

void object_set_name_nocopy(uint64_t a1, const char *a2)
{
  v15 = *MEMORY[0x29EDCA608];
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
      _os_log_impl(&dword_2986C0000, v6, OS_LOG_TYPE_DEBUG, "%{public}s: changing name: %s -> %s", &v9, 0x20u);
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
      _os_log_impl(&dword_2986C0000, v6, OS_LOG_TYPE_DEBUG, "%{public}s: setting name: %s", &v9, 0x16u);
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

size_t _confstr(int a1, char *a2)
{
  v5 = *MEMORY[0x29EDCA608];
  result = confstr(a1, a2, 0x400uLL);
  if (!result)
  {
    _confstr_cold_2(&v3, v4);
  }

  if (result >= 0x401)
  {
    _confstr_cold_1();
  }

  return result;
}

unint64_t _strtou32(const char *a1, char **a2, int a3)
{
  __endptr = 0;
  *__error() = 0;
  result = strtoul(a1, &__endptr, a3);
  if (__endptr && *__endptr)
  {
    result = 0;
    if (a2)
    {
      *a2 = __endptr;
    }
  }

  else if (HIDWORD(result))
  {
    *__error() = 34;
    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t _read_file(int a1, void *a2)
{
  v25 = *MEMORY[0x29EDCA608];
  memset(&v20, 0, sizeof(v20));
  if (fstat(a1, &v20))
  {
    v4 = *__error();
    v5 = *__error();
    if (log_util_onceToken != -1)
    {
      _read_file_cold_1();
    }

    v6 = log_util_log;
    if (os_log_type_enabled(log_util_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      LODWORD(v22) = v4;
      _os_log_impl(&dword_2986C0000, v6, OS_LOG_TYPE_ERROR, "stat: %{darwin.errno}d", buf, 8u);
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
    _cryptex_signing_service_read_fd_cold_1();
  }

  v10 = malloc_type_malloc(v20.st_size, 0xB48626A3uLL);
  if (!v10)
  {
    v4 = *__error();
    v5 = *__error();
    if (log_util_onceToken != -1)
    {
      _read_file_cold_1();
    }

    v15 = log_util_log;
    if (os_log_type_enabled(log_util_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      LODWORD(v22) = v4;
      _os_log_impl(&dword_2986C0000, v15, OS_LOG_TYPE_ERROR, "malloc: %{darwin.errno}d", buf, 8u);
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
      _read_file_cold_1();
    }

    v13 = log_util_log;
    if (os_log_type_enabled(log_util_log, OS_LOG_TYPE_ERROR))
    {
      v14 = *__error();
      *buf = 67109120;
      LODWORD(v22) = v14;
      _os_log_impl(&dword_2986C0000, v13, OS_LOG_TYPE_ERROR, "pread: %{darwin.errno}d", buf, 8u);
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
      _read_file_cold_1();
    }

    v18 = log_util_log;
    if (os_log_type_enabled(log_util_log, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134217984;
      v22 = st_size;
      _os_log_impl(&dword_2986C0000, v18, OS_LOG_TYPE_DEBUG, "read %ld bytes", buf, 0xCu);
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
    _read_file_cold_1();
  }

  v19 = log_util_log;
  if (os_log_type_enabled(log_util_log, OS_LOG_TYPE_ERROR))
  {
    *buf = 134218240;
    v22 = v16;
    v23 = 2048;
    v24 = st_size;
    _os_log_impl(&dword_2986C0000, v19, OS_LOG_TYPE_ERROR, "truncated read: actual = %ld, expected = %lu", buf, 0x16u);
  }

  *__error() = v17;
  v4 = 5;
LABEL_10:
  free(v8);
  return v4;
}

uint64_t _write_file(int __fd, uint64_t a2)
{
  v22 = *MEMORY[0x29EDCA608];
  while (1)
  {
    v4 = pwrite(__fd, *a2, *(a2 + 8), 0);
    if ((v4 & 0x8000000000000000) == 0)
    {
      break;
    }

    v5 = *__error();
    if (log_util_onceToken != -1)
    {
      _read_file_cold_1();
    }

    v6 = log_util_log;
    if (os_log_type_enabled(log_util_log, OS_LOG_TYPE_ERROR))
    {
      v7 = *__error();
      *buf = 67109120;
      LODWORD(v17) = v7;
      _os_log_impl(&dword_2986C0000, v6, OS_LOG_TYPE_ERROR, "write: %{darwin.errno}d", buf, 8u);
    }

    *__error() = v5;
    v8 = *__error();
    if (v8 != 4)
    {
      return v8;
    }
  }

  v9 = v4;
  v10 = *(a2 + 8);
  v11 = *__error();
  if (v9 == v10)
  {
    if (log_util_onceToken != -1)
    {
      _read_file_cold_1();
    }

    v12 = log_util_log;
    if (os_log_type_enabled(log_util_log, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134217984;
      v17 = v9;
      _os_log_impl(&dword_2986C0000, v12, OS_LOG_TYPE_DEBUG, "wrote %ld bytes", buf, 0xCu);
    }

    v8 = 0;
  }

  else
  {
    if (log_util_onceToken != -1)
    {
      _read_file_cold_1();
    }

    v13 = log_util_log;
    v8 = 5;
    if (os_log_type_enabled(log_util_log, OS_LOG_TYPE_ERROR))
    {
      v14 = *(a2 + 8);
      *buf = 134218496;
      v17 = v9;
      v18 = 2048;
      v19 = v14;
      v20 = 1024;
      v21 = 5;
      _os_log_impl(&dword_2986C0000, v13, OS_LOG_TYPE_ERROR, "truncated write: actual = %ld, expected = %ld: %{darwin.errno}d", buf, 0x1Cu);
    }
  }

  *__error() = v11;
  return v8;
}

os_log_t __log_util_block_invoke()
{
  result = os_log_create("com.apple.libcryptex", "utility");
  log_util_log = result;
  return result;
}

void _confstr_cold_2(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1_3(a1, a2);
  OUTLINED_FUNCTION_10();
  __error();
  OUTLINED_FUNCTION_2_3();
  v8 = OUTLINED_FUNCTION_1_0(v2, v3, v4, v5, &dword_2986C0000, v6, v7, "unexpected failure: confstr: %{darwin.errno}d");
  OUTLINED_FUNCTION_5_2(v8);
  __break(1u);
}

void *buff_init(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *MEMORY[0x29EDCA608];
  *result = a4;
  result[1] = a5;
  result[2] = a4;
  result[3] = a5;
  result[4] = a2;
  result[5] = a3;
  if (a5 < 0)
  {
    buff_init_cold_1(&v5, v6);
  }

  return result;
}

void *buff_init_signed(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *MEMORY[0x29EDCA608];
  if (a5 < 0)
  {
    buff_init_signed_cold_1(&v6, v7);
  }

  return buff_init(a1, a2, a3, a4, a5);
}

void *buff_destroy(void *result, uint64_t a2)
{
  if (result)
  {
    if (*result)
    {
      v3 = result[5];
      if (v3)
      {
        if (result[6])
        {
          buff_destroy_cold_1();
        }

        v4 = result[3];
        v5 = result[4];
        v6 = result[2];

        return v3(v6, v4, v5);
      }
    }
  }

  return result;
}

void buff_init_cold_1(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_2_0(a1, a2);
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    v7 = 3;
  }

  else
  {
    v7 = 2;
  }

  OUTLINED_FUNCTION_0_1(v7, v2, v3, v4, &dword_2986C0000, v5, v6, "unexpected failure: buffer length too large: %lu");
  _os_crash_msg();
  __break(1u);
}

void buff_init_signed_cold_1(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_2_0(a1, a2);
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    v7 = 3;
  }

  else
  {
    v7 = 2;
  }

  OUTLINED_FUNCTION_0_1(v7, v2, v3, v4, &dword_2986C0000, v5, v6, "unexpected failure: negative buffer length: %ld");
  _os_crash_msg();
  __break(1u);
}

void *ctx_new(void *a1, size_t a2)
{
  v9 = *MEMORY[0x29EDCA608];
  if (a2 <= 0x1F)
  {
    ctx_new_cold_2(&v7, v8, a2);
  }

  if (_dispatch_is_multithreaded())
  {
    while (1)
    {
      v4 = malloc_type_calloc(1uLL, a2, 0x8A375538uLL);
      if (v4)
      {
        break;
      }

      __os_temporary_resource_shortage();
    }
  }

  else
  {
    v4 = malloc_type_calloc(1uLL, a2, 0x8709206FuLL);
    if (!v4)
    {
      ctx_new_cold_1(&v7, v8, a2);
    }
  }

  v5 = v4;
  if (a1)
  {
    *v4 = os_retain(a1);
  }

  return v5;
}

void ctx_destroy(void **a1)
{
  if (a1)
  {
    v2 = a1[3];
    if (v2)
    {
      v2(a1);
    }

    if (*a1)
    {
      os_release(*a1);
    }

    free(a1);
  }
}

void ctx_new_cold_1(void *a1, _OWORD *a2, uint64_t a3)
{
  *a1 = 0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  v6 = MEMORY[0x29EDCA988];
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    v7 = 3;
  }

  else
  {
    v7 = 2;
  }

  v8 = __error();
  v9 = strerror(*v8);
  v11 = 136315650;
  v12 = "known-constant allocation";
  v13 = 2048;
  v14 = a3;
  v15 = 2080;
  v16 = v9;
  v10 = 32;
  _os_log_send_and_compose_impl(v7, a1, a2, 80, &dword_2986C0000, v6, 16, "allocation failed: obj = %s, size = %lu, error = %s", &v11, v10);
  _os_crash_msg();
  __break(1u);
}

void ctx_new_cold_2(void *a1, _OWORD *a2, uint64_t a3)
{
  *a1 = 0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  v6 = MEMORY[0x29EDCA988];
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    v7 = 3;
  }

  else
  {
    v7 = 2;
  }

  v8 = 134217984;
  v9 = a3;
  _os_log_send_and_compose_impl(v7, a1, a2, 80, &dword_2986C0000, v6, 16, "unexpected failure: invalid context size: %lu", &v8);
  _os_crash_msg();
  __break(1u);
}

xpc_object_t _xpc_plist_value_copy(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x29EDCA9E0];
  if (*a1 != MEMORY[0x29EDCA9E0] && *a1 != MEMORY[0x29EDCAA00])
  {
    _xpc_plist_value_copy_cold_1();
  }

  v6 = MEMORY[0x29C28F4F0](a2);
  if (v6 != *a1)
  {
    return 0;
  }

  if (v6 == v2)
  {
    v9 = *(a1 + 24);
    if (v9 >= xpc_array_get_count(a2))
    {
      return 0;
    }

    value = xpc_array_get_value(a2, *(a1 + 24));
  }

  else
  {
    value = xpc_dictionary_get_value(a2, *(a1 + 16));
  }

  v10 = value;
  if (!value || MEMORY[0x29C28F4F0](value) != *(a1 + 8))
  {
    return 0;
  }

  return xpc_retain(v10);
}

xpc_object_t _xpc_plist_value_copy_at(void *a1, void *a2, size_t a3)
{
  v3 = MEMORY[0x29EDCA9E0];
  if (*a1 != MEMORY[0x29EDCA9E0])
  {
    _xpc_plist_value_copy_at_cold_1();
  }

  if (MEMORY[0x29C28F4F0](a2) != v3)
  {
    _xpc_plist_value_copy_at_cold_1();
  }

  if (xpc_array_get_count(a2) <= a3)
  {
    return 0;
  }

  value = xpc_array_get_value(a2, a3);
  if (!value)
  {
    return 0;
  }

  v8 = value;
  if (MEMORY[0x29C28F4F0]() != a1[1])
  {
    return 0;
  }

  return xpc_retain(v8);
}

uint64_t _xpc_plist_merge(uint64_t a1, xpc_object_t xdict)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 0;
  if (xdict)
  {
    v4[0] = MEMORY[0x29EDCA5F8];
    v4[1] = 0x40000000;
    v4[2] = ___xpc_plist_merge_block_invoke;
    v4[3] = &unk_29EEA7BD8;
    v4[4] = &v5;
    v4[5] = a1;
    xpc_dictionary_apply(xdict, v4);
    v2 = *(v6 + 6);
  }

  else
  {
    v2 = 0;
  }

  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t ___xpc_plist_merge_block_invoke(uint64_t a1, const char *a2, void *a3)
{
  v18 = *MEMORY[0x29EDCA608];
  value = xpc_dictionary_get_value(*(a1 + 40), a2);
  if (!value)
  {
LABEL_9:
    xpc_dictionary_set_value(*(a1 + 40), a2, a3);
    return 1;
  }

  v7 = value;
  v8 = MEMORY[0x29C28F4F0]();
  if (v8 == MEMORY[0x29C28F4F0](a3))
  {
    if (v8 == MEMORY[0x29EDCAA00])
    {
      applier[0] = MEMORY[0x29EDCA5F8];
      applier[1] = 0x40000000;
      applier[2] = ___xpc_plist_merge_block_invoke_2;
      applier[3] = &__block_descriptor_tmp_6;
      applier[4] = v7;
      xpc_dictionary_apply(a3, applier);
      return 1;
    }

    goto LABEL_9;
  }

  *(*(*(a1 + 32) + 8) + 24) = 79;
  v9 = *__error();
  if (_xpc_log_onceToken != -1)
  {
    ___xpc_plist_merge_block_invoke_cold_1();
  }

  v10 = _xpc_log_osl;
  if (os_log_type_enabled(_xpc_log_osl, OS_LOG_TYPE_ERROR))
  {
    v11 = *(*(*(a1 + 32) + 8) + 24);
    *buf = 136315394;
    v15 = a2;
    v16 = 1024;
    v17 = v11;
    _os_log_impl(&dword_2986C0000, v10, OS_LOG_TYPE_ERROR, "Error merging override for key %s: %{darwin.errno}d", buf, 0x12u);
  }

  *__error() = v9;
  return 1;
}

uint64_t _xpc_dictionary_try_get_uint64(void *a1, const char *a2, uint64_t *a3)
{
  value = xpc_dictionary_get_value(a1, a2);
  if (!value)
  {
    return 2;
  }

  v5 = value;
  if (MEMORY[0x29C28F4F0]() != MEMORY[0x29EDCAA58])
  {
    return 79;
  }

  v7 = xpc_uint64_get_value(v5);
  result = 0;
  *a3 = v7;
  return result;
}

uint64_t _xpc_dictionary_try_get_string(void *a1, const char *a2, const char **a3)
{
  value = xpc_dictionary_get_value(a1, a2);
  if (!value)
  {
    return 2;
  }

  v5 = value;
  if (MEMORY[0x29C28F4F0]() != MEMORY[0x29EDCAA50])
  {
    return 79;
  }

  string_ptr = xpc_string_get_string_ptr(v5);
  result = 0;
  *a3 = string_ptr;
  return result;
}

uint64_t _xpc_dictionary_try_get_BOOL(void *a1, const char *a2, BOOL *a3)
{
  value = xpc_dictionary_get_value(a1, a2);
  if (!value)
  {
    return 2;
  }

  v5 = value;
  if (MEMORY[0x29C28F4F0]() != MEMORY[0x29EDCA9E8])
  {
    return 79;
  }

  v7 = xpc_BOOL_get_value(v5);
  result = 0;
  *a3 = v7;
  return result;
}

uint64_t _xpc_dictionary_key_with_type_exists(void *a1, const char *a2, const _xpc_type_s *a3)
{
  v17 = *MEMORY[0x29EDCA608];
  if (!xpc_dictionary_get_value(a1, a2))
  {
    v5 = *__error();
    if (_xpc_log_onceToken != -1)
    {
      ___xpc_plist_merge_block_invoke_cold_1();
    }

    v10 = _xpc_log_osl;
    if (!os_log_type_enabled(_xpc_log_osl, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    v13 = 136315138;
    v14 = a2;
    v7 = "key %s doesn't exist";
    v8 = v10;
    v9 = 12;
    goto LABEL_11;
  }

  if (MEMORY[0x29C28F4F0]() != a3)
  {
    v5 = *__error();
    if (_xpc_log_onceToken != -1)
    {
      ___xpc_plist_merge_block_invoke_cold_1();
    }

    v6 = _xpc_log_osl;
    if (!os_log_type_enabled(_xpc_log_osl, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    v13 = 136315394;
    v14 = a2;
    v15 = 2080;
    name = xpc_type_get_name(a3);
    v7 = "key %s isn't of type %s";
    v8 = v6;
    v9 = 22;
LABEL_11:
    _os_log_impl(&dword_2986C0000, v8, OS_LOG_TYPE_ERROR, v7, &v13, v9);
LABEL_12:
    v11 = __error();
    result = 0;
    *v11 = v5;
    return result;
  }

  return 1;
}

uint64_t _xpc_dictionary_try_get_cferr(void *a1, const char *a2, CFErrorRef *a3)
{
  value = xpc_dictionary_get_value(a1, a2);
  if (!value)
  {
    return 2;
  }

  v5 = value;
  if (MEMORY[0x29C28F4F0]() != MEMORY[0x29EDCAA00])
  {
    return 79;
  }

  return _xpc_dictionary_to_cferr(v5, a3);
}

uint64_t _xpc_dictionary_to_cferr(void *a1, CFErrorRef *a2)
{
  v32 = *MEMORY[0x29EDCA608];
  value = 0;
  dictionary = xpc_dictionary_get_dictionary(a1, "cferr_userinfo");
  if (dictionary)
  {
    v5 = dictionary;
    string = xpc_dictionary_get_string(a1, "cferr_domain");
    v7 = _CFStringCreateFromUTF8String(string);
    if (v7)
    {
      v8 = v7;
      int64 = xpc_dictionary_get_int64(a1, "cferr_code");
      v10 = xpc_dictionary_get_dictionary(v5, "underlying_cferr");
      if (v10 && _xpc_dictionary_to_cferr(v10, &value))
      {
        v11 = *__error();
        if (_xpc_log_onceToken != -1)
        {
          _xpc_dictionary_to_cferr_cold_1();
        }

        v12 = _xpc_log_osl;
        if (!os_log_type_enabled(_xpc_log_osl, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_31;
        }

        *buf = 67109120;
        v31 = 22;
        v13 = "Failed to unpack underlying error.: %{darwin.errno}d";
      }

      else
      {
        xpc_dictionary_set_value(v5, "underlying_cferr", 0);
        v17 = _CFXPCCreateCFObjectFromXPCObject();
        if (v17)
        {
          v18 = v17;
          MutableCopy = CFDictionaryCreateMutableCopy(0, 0, v17);
          if (MutableCopy)
          {
            v20 = MutableCopy;
            if (value)
            {
              CFDictionarySetValue(MutableCopy, *MEMORY[0x29EDB8F68], value);
            }

            v21 = CFErrorCreate(0, v8, int64, v20);
            if (v21)
            {
              if (a2)
              {
                v16 = 0;
                *a2 = v21;
              }

              else
              {
                CFRelease(v21);
                v16 = 0;
              }
            }

            else
            {
              v26 = *__error();
              if (_xpc_log_onceToken != -1)
              {
                _xpc_dictionary_to_cferr_cold_1();
              }

              v27 = _xpc_log_osl;
              if (os_log_type_enabled(_xpc_log_osl, OS_LOG_TYPE_ERROR))
              {
                *buf = 67109120;
                v31 = 12;
                _os_log_impl(&dword_2986C0000, v27, OS_LOG_TYPE_ERROR, "Failed to create CFError.: %{darwin.errno}d", buf, 8u);
              }

              *__error() = v26;
              v16 = 12;
            }

            CFRelease(v20);
          }

          else
          {
            v24 = *__error();
            if (_xpc_log_onceToken != -1)
            {
              _xpc_dictionary_to_cferr_cold_1();
            }

            v25 = _xpc_log_osl;
            if (os_log_type_enabled(_xpc_log_osl, OS_LOG_TYPE_ERROR))
            {
              *buf = 67109120;
              v31 = 12;
              _os_log_impl(&dword_2986C0000, v25, OS_LOG_TYPE_ERROR, "Failed to create mutable dictionary.: %{darwin.errno}d", buf, 8u);
            }

            *__error() = v24;
            v16 = 12;
          }

          CFRelease(v18);
          goto LABEL_45;
        }

        v11 = *__error();
        if (_xpc_log_onceToken != -1)
        {
          _xpc_dictionary_to_cferr_cold_1();
        }

        v12 = _xpc_log_osl;
        if (!os_log_type_enabled(_xpc_log_osl, OS_LOG_TYPE_ERROR))
        {
LABEL_31:
          *__error() = v11;
          v16 = 22;
LABEL_45:
          CFRelease(v8);
          goto LABEL_46;
        }

        *buf = 67109120;
        v31 = 22;
        v13 = "Failed to convert CF to XPC.: %{darwin.errno}d";
      }

      _os_log_impl(&dword_2986C0000, v12, OS_LOG_TYPE_ERROR, v13, buf, 8u);
      goto LABEL_31;
    }

    v22 = *__error();
    if (_xpc_log_onceToken != -1)
    {
      ___xpc_plist_merge_block_invoke_cold_1();
    }

    v23 = _xpc_log_osl;
    if (os_log_type_enabled(_xpc_log_osl, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v31 = 12;
      _os_log_impl(&dword_2986C0000, v23, OS_LOG_TYPE_ERROR, "Failed to create string.: %{darwin.errno}d", buf, 8u);
    }

    *__error() = v22;
    v16 = 12;
  }

  else
  {
    v14 = *__error();
    if (_xpc_log_onceToken != -1)
    {
      ___xpc_plist_merge_block_invoke_cold_1();
    }

    v15 = _xpc_log_osl;
    if (os_log_type_enabled(_xpc_log_osl, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v31 = 22;
      _os_log_impl(&dword_2986C0000, v15, OS_LOG_TYPE_ERROR, "CFError XPC dictionary is missing user info.: %{darwin.errno}d", buf, 8u);
    }

    *__error() = v14;
    v16 = 22;
  }

LABEL_46:
  if (value)
  {
    CFRelease(value);
  }

  return v16;
}