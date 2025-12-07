dispatch_data_t nw_quic_migration_info_copy_data(void *a1)
{
  v108 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    v52 = __nwlog_obj();
    *buf = 136446210;
    v98 = "nw_quic_migration_info_copy_data";
    v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v52, 16, "%{public}s called with null migration_info", buf, 12);

    LOBYTE(__src[0]) = 16;
    type = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v9, __src, &type))
    {
      goto LABEL_100;
    }

    if (LOBYTE(__src[0]) == 17)
    {
      v22 = __nwlog_obj();
      v53 = __src[0];
      if (os_log_type_enabled(v22, __src[0]))
      {
        *buf = 136446210;
        v98 = "nw_quic_migration_info_copy_data";
        _os_log_impl(&dword_181A37000, v22, v53, "%{public}s called with null migration_info", buf, 0xCu);
      }

      goto LABEL_213;
    }

    if (type != OS_LOG_TYPE_INFO)
    {
      v22 = __nwlog_obj();
      v76 = __src[0];
      if (os_log_type_enabled(v22, __src[0]))
      {
        *buf = 136446210;
        v98 = "nw_quic_migration_info_copy_data";
        _os_log_impl(&dword_181A37000, v22, v76, "%{public}s called with null migration_info, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_213;
    }

    backtrace_string = __nw_create_backtrace_string();
    v22 = __nwlog_obj();
    v54 = __src[0];
    v55 = os_log_type_enabled(v22, __src[0]);
    if (!backtrace_string)
    {
      if (v55)
      {
        *buf = 136446210;
        v98 = "nw_quic_migration_info_copy_data";
        _os_log_impl(&dword_181A37000, v22, v54, "%{public}s called with null migration_info, no backtrace", buf, 0xCu);
      }

      goto LABEL_213;
    }

    if (v55)
    {
      *buf = 136446466;
      v98 = "nw_quic_migration_info_copy_data";
      v99 = 2082;
      v100 = backtrace_string;
      _os_log_impl(&dword_181A37000, v22, v54, "%{public}s called with null migration_info, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_184;
  }

  v3 = v1[2];
  if (v3)
  {
    v4 = v3;
    address_family = _nw_endpoint_get_address_family(v4);

    if (address_family == 30)
    {
      v6 = 28;
    }

    else
    {
      v6 = 16 * (address_family == 2);
    }

    v7 = v6 + 5;
    v8 = v2 + 1;
    if (!v2[1])
    {
      goto LABEL_11;
    }

LABEL_10:
    v7 += 21;
    goto LABEL_11;
  }

  v8 = v1 + 1;
  if (v1[1])
  {
    v7 = 0;
    v6 = 0;
    goto LABEL_10;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v44 = gLogObj;
  if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
  {
    v45 = 3;
  }

  else
  {
    v45 = 2;
  }

  *buf = 136446210;
  v98 = "nw_quic_migration_info_copy_data";
  v46 = _os_log_send_and_compose_impl(v45, 0, 0, 0, &dword_181A37000, v44, 16, "%{public}s strict_malloc called with size 0", buf, 12);

  result = __nwlog_should_abort(v46);
  if (result)
  {
    goto LABEL_217;
  }

  free(v46);
  v6 = 0;
  v7 = 0;
LABEL_11:
  v9 = malloc_type_malloc(v7, 0x7E7845ACuLL);
  if (!v9)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v10 = gLogObj;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = 3;
    }

    else
    {
      v11 = 2;
    }

    *buf = 136446210;
    v98 = "nw_quic_migration_info_copy_data";
    LODWORD(v92) = 12;
    v12 = _os_log_send_and_compose_impl(v11, 0, 0, 0, &dword_181A37000, v10, 16, "%{public}s strict allocator failed", buf, v92);

    result = __nwlog_should_abort(v12);
    if (result)
    {
      goto LABEL_217;
    }

    free(v12);
  }

  v14 = v2[2];
  v15 = v9;
  if (!v14)
  {
LABEL_43:
    if (!v15)
    {
      goto LABEL_100;
    }

    if (!*v8)
    {
      v43 = dispatch_data_create(v9, v7, 0, 0);
      if (!v9)
      {
        goto LABEL_140;
      }

      goto LABEL_139;
    }

    name = _nw_interface_get_name(*v8);
    if (name)
    {
      v28 = *name;
      if (*name)
      {
        goto LABEL_47;
      }

      goto LABEL_129;
    }

    v60 = __nwlog_obj();
    if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
    {
      v61 = 3;
    }

    else
    {
      v61 = 2;
    }

    *buf = 136446210;
    v98 = "_strict_strlcpy";
    LODWORD(v92) = 12;
    v62 = _os_log_send_and_compose_impl(v61, 0, 0, 0, &dword_181A37000, v60, 16, "%{public}s strict_strlcpy called with NULL src", buf, v92);

    result = __nwlog_should_abort(v62);
    if (!result)
    {
      free(v62);
      name = 0;
      v28 = MEMORY[0];
      if (MEMORY[0])
      {
LABEL_47:
        v29 = name[1];
        if (v29)
        {
          v30 = name[2];
          if (v30)
          {
            v31 = name[3];
            if (v31)
            {
              v32 = name[4];
              if (v32)
              {
                v33 = name[5];
                if (v33)
                {
                  v34 = name[6];
                  if (v34)
                  {
                    v35 = name[7];
                    if (v35)
                    {
                      v36 = name[8];
                      if (v36)
                      {
                        v37 = name[9];
                        if (v37)
                        {
                          v38 = name[10];
                          if (v38)
                          {
                            v39 = name[11];
                            if (v39)
                            {
                              v40 = name[12];
                              if (v40)
                              {
                                v41 = name[13];
                                if (v41)
                                {
                                  v42 = name[14];
                                }

                                else
                                {
                                  v42 = 0;
                                }

                                goto LABEL_130;
                              }

                              goto LABEL_88;
                            }

LABEL_87:
                            v40 = 0;
LABEL_88:
                            v41 = 0;
                            v42 = 0;
LABEL_130:
                            if (v9)
                            {
                              v63 = v9 + v7;
                              if (v15 < v9 + v7)
                              {
                                if (v63 - v15 <= 0x14)
                                {
                                  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                                  networkd_settings_init();
                                  v64 = gLogObj;
                                  *buf = 136447490;
                                  v98 = "nw_necp_append_tlv";
                                  v99 = 2048;
                                  v100 = v15;
                                  v101 = 2048;
                                  v102 = 21;
                                  v103 = 2048;
                                  *v104 = v9 + v7;
                                  *&v104[8] = 1024;
                                  *v105 = 2;
                                  *&v105[4] = 1024;
                                  *&v105[6] = 16;
                                  LODWORD(v92) = 54;
                                  v65 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v64, 16, "%{public}s buffer too short tlv_start=%p full_tlv_len=%zu beyond=%p type=%u length=%u", buf, v92);

                                  LOBYTE(__src[0]) = 16;
                                  type = OS_LOG_TYPE_DEFAULT;
                                  if (!__nwlog_fault(v65, __src, &type))
                                  {
                                    goto LABEL_155;
                                  }

                                  if (LOBYTE(__src[0]) == 17)
                                  {
                                    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                                    networkd_settings_init();
                                    v66 = gLogObj;
                                    v67 = __src[0];
                                    if (os_log_type_enabled(v66, __src[0]))
                                    {
                                      *buf = 136447490;
                                      v98 = "nw_necp_append_tlv";
                                      v99 = 2048;
                                      v100 = v15;
                                      v101 = 2048;
                                      v102 = 21;
                                      v103 = 2048;
                                      *v104 = v63;
                                      *&v104[8] = 1024;
                                      *v105 = 2;
                                      *&v105[4] = 1024;
                                      *&v105[6] = 16;
                                      _os_log_impl(&dword_181A37000, v66, v67, "%{public}s buffer too short tlv_start=%p full_tlv_len=%zu beyond=%p type=%u length=%u", buf, 0x36u);
                                    }
                                  }

                                  else if (type == OS_LOG_TYPE_INFO)
                                  {
                                    v68 = __nw_create_backtrace_string();
                                    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                                    networkd_settings_init();
                                    v66 = gLogObj;
                                    v69 = __src[0];
                                    v70 = os_log_type_enabled(v66, __src[0]);
                                    if (v68)
                                    {
                                      if (v70)
                                      {
                                        *buf = 136447746;
                                        v98 = "nw_necp_append_tlv";
                                        v99 = 2048;
                                        v100 = v15;
                                        v101 = 2048;
                                        v102 = 21;
                                        v103 = 2048;
                                        *v104 = v63;
                                        *&v104[8] = 1024;
                                        *v105 = 2;
                                        *&v105[4] = 1024;
                                        *&v105[6] = 16;
                                        v106 = 2082;
                                        v107 = v68;
                                        _os_log_impl(&dword_181A37000, v66, v69, "%{public}s buffer too short tlv_start=%p full_tlv_len=%zu beyond=%p type=%u length=%u, dumping backtrace:%{public}s", buf, 0x40u);
                                      }

                                      free(v68);
                                      if (!v65)
                                      {
                                        goto LABEL_101;
                                      }

                                      goto LABEL_156;
                                    }

                                    if (v70)
                                    {
                                      *buf = 136447490;
                                      v98 = "nw_necp_append_tlv";
                                      v99 = 2048;
                                      v100 = v15;
                                      v101 = 2048;
                                      v102 = 21;
                                      v103 = 2048;
                                      *v104 = v63;
                                      *&v104[8] = 1024;
                                      *v105 = 2;
                                      *&v105[4] = 1024;
                                      *&v105[6] = 16;
                                      _os_log_impl(&dword_181A37000, v66, v69, "%{public}s buffer too short tlv_start=%p full_tlv_len=%zu beyond=%p type=%u length=%u, no backtrace", buf, 0x36u);
                                    }
                                  }

                                  else
                                  {
                                    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                                    networkd_settings_init();
                                    v66 = gLogObj;
                                    v71 = __src[0];
                                    if (os_log_type_enabled(v66, __src[0]))
                                    {
                                      *buf = 136447490;
                                      v98 = "nw_necp_append_tlv";
                                      v99 = 2048;
                                      v100 = v15;
                                      v101 = 2048;
                                      v102 = 21;
                                      v103 = 2048;
                                      *v104 = v63;
                                      *&v104[8] = 1024;
                                      *v105 = 2;
                                      *&v105[4] = 1024;
                                      *&v105[6] = 16;
                                      _os_log_impl(&dword_181A37000, v66, v71, "%{public}s buffer too short tlv_start=%p full_tlv_len=%zu beyond=%p type=%u length=%u, backtrace limit exceeded", buf, 0x36u);
                                    }
                                  }

                                  goto LABEL_154;
                                }

                                *v15 = 2;
                                *(v15 + 1) = 16;
                                *(v15 + 5) = v28;
                                *(v15 + 6) = v29;
                                *(v15 + 7) = v30;
                                *(v15 + 8) = v31;
                                *(v15 + 9) = v32;
                                *(v15 + 10) = v33;
                                *(v15 + 11) = v34;
                                *(v15 + 12) = v35;
                                *(v15 + 13) = v36;
                                *(v15 + 14) = v37;
                                *(v15 + 15) = v38;
                                *(v15 + 16) = v39;
                                *(v15 + 17) = v40;
                                *(v15 + 18) = v41;
                                *(v15 + 19) = v42;
                                *(v15 + 20) = 0;
                                v43 = dispatch_data_create(v9, v7, 0, 0);
LABEL_139:
                                free(v9);
                                goto LABEL_140;
                              }

                              v74 = __nwlog_obj();
                              *buf = 136447234;
                              v98 = "nw_necp_append_tlv";
                              v99 = 2048;
                              v100 = v15;
                              v101 = 2048;
                              v102 = v9 + v7;
                              v103 = 1024;
                              *v104 = 2;
                              *&v104[4] = 1024;
                              *&v104[6] = 16;
                              LODWORD(v92) = 44;
                              v65 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v74, 16, "%{public}s Invalid tlv_start %p >= beyond %p type=%u length=%u", buf, v92);

                              LOBYTE(__src[0]) = 16;
                              type = OS_LOG_TYPE_DEFAULT;
                              if (__nwlog_fault(v65, __src, &type))
                              {
                                if (LOBYTE(__src[0]) == 17)
                                {
                                  v66 = __nwlog_obj();
                                  v75 = __src[0];
                                  if (os_log_type_enabled(v66, __src[0]))
                                  {
                                    *buf = 136447234;
                                    v98 = "nw_necp_append_tlv";
                                    v99 = 2048;
                                    v100 = v15;
                                    v101 = 2048;
                                    v102 = v63;
                                    v103 = 1024;
                                    *v104 = 2;
                                    *&v104[4] = 1024;
                                    *&v104[6] = 16;
                                    _os_log_impl(&dword_181A37000, v66, v75, "%{public}s Invalid tlv_start %p >= beyond %p type=%u length=%u", buf, 0x2Cu);
                                  }

LABEL_154:

                                  goto LABEL_155;
                                }

                                if (type != OS_LOG_TYPE_INFO)
                                {
                                  v66 = __nwlog_obj();
                                  v91 = __src[0];
                                  if (os_log_type_enabled(v66, __src[0]))
                                  {
                                    *buf = 136447234;
                                    v98 = "nw_necp_append_tlv";
                                    v99 = 2048;
                                    v100 = v15;
                                    v101 = 2048;
                                    v102 = v63;
                                    v103 = 1024;
                                    *v104 = 2;
                                    *&v104[4] = 1024;
                                    *&v104[6] = 16;
                                    _os_log_impl(&dword_181A37000, v66, v91, "%{public}s Invalid tlv_start %p >= beyond %p type=%u length=%u, backtrace limit exceeded", buf, 0x2Cu);
                                  }

                                  goto LABEL_154;
                                }

                                v85 = __nw_create_backtrace_string();
                                v66 = __nwlog_obj();
                                v86 = __src[0];
                                v87 = os_log_type_enabled(v66, __src[0]);
                                if (!v85)
                                {
                                  if (v87)
                                  {
                                    *buf = 136447234;
                                    v98 = "nw_necp_append_tlv";
                                    v99 = 2048;
                                    v100 = v15;
                                    v101 = 2048;
                                    v102 = v63;
                                    v103 = 1024;
                                    *v104 = 2;
                                    *&v104[4] = 1024;
                                    *&v104[6] = 16;
                                    _os_log_impl(&dword_181A37000, v66, v86, "%{public}s Invalid tlv_start %p >= beyond %p type=%u length=%u, no backtrace", buf, 0x2Cu);
                                  }

                                  goto LABEL_154;
                                }

                                if (v87)
                                {
                                  *buf = 136447490;
                                  v98 = "nw_necp_append_tlv";
                                  v99 = 2048;
                                  v100 = v15;
                                  v101 = 2048;
                                  v102 = v63;
                                  v103 = 1024;
                                  *v104 = 2;
                                  *&v104[4] = 1024;
                                  *&v104[6] = 16;
                                  *v105 = 2082;
                                  *&v105[2] = v85;
                                  _os_log_impl(&dword_181A37000, v66, v86, "%{public}s Invalid tlv_start %p >= beyond %p type=%u length=%u, dumping backtrace:%{public}s", buf, 0x36u);
                                }

                                free(v85);
                              }

LABEL_155:
                              if (!v65)
                              {
                                goto LABEL_101;
                              }

LABEL_156:
                              free(v65);
                              goto LABEL_101;
                            }

                            v72 = __nwlog_obj();
                            *buf = 136446210;
                            v98 = "nw_necp_append_tlv";
                            LODWORD(v92) = 12;
                            v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v72, 16, "%{public}s called with null beyond", buf, v92);

                            LOBYTE(__src[0]) = 16;
                            type = OS_LOG_TYPE_DEFAULT;
                            if (!__nwlog_fault(v9, __src, &type))
                            {
                              goto LABEL_100;
                            }

                            if (LOBYTE(__src[0]) == 17)
                            {
                              v22 = __nwlog_obj();
                              v73 = __src[0];
                              if (os_log_type_enabled(v22, __src[0]))
                              {
                                *buf = 136446210;
                                v98 = "nw_necp_append_tlv";
                                _os_log_impl(&dword_181A37000, v22, v73, "%{public}s called with null beyond", buf, 0xCu);
                              }

                              goto LABEL_213;
                            }

                            if (type != OS_LOG_TYPE_INFO)
                            {
                              v22 = __nwlog_obj();
                              v90 = __src[0];
                              if (os_log_type_enabled(v22, __src[0]))
                              {
                                *buf = 136446210;
                                v98 = "nw_necp_append_tlv";
                                _os_log_impl(&dword_181A37000, v22, v90, "%{public}s called with null beyond, backtrace limit exceeded", buf, 0xCu);
                              }

                              goto LABEL_213;
                            }

                            backtrace_string = __nw_create_backtrace_string();
                            v22 = __nwlog_obj();
                            v83 = __src[0];
                            v84 = os_log_type_enabled(v22, __src[0]);
                            if (!backtrace_string)
                            {
                              if (v84)
                              {
                                *buf = 136446210;
                                v98 = "nw_necp_append_tlv";
                                _os_log_impl(&dword_181A37000, v22, v83, "%{public}s called with null beyond, no backtrace", buf, 0xCu);
                              }

                              goto LABEL_213;
                            }

                            if (v84)
                            {
                              *buf = 136446466;
                              v98 = "nw_necp_append_tlv";
                              v99 = 2082;
                              v100 = backtrace_string;
                              _os_log_impl(&dword_181A37000, v22, v83, "%{public}s called with null beyond, dumping backtrace:%{public}s", buf, 0x16u);
                            }

LABEL_184:

                            goto LABEL_99;
                          }

LABEL_86:
                          v39 = 0;
                          goto LABEL_87;
                        }

LABEL_85:
                        v38 = 0;
                        goto LABEL_86;
                      }

LABEL_84:
                      v37 = 0;
                      goto LABEL_85;
                    }

LABEL_83:
                    v36 = 0;
                    goto LABEL_84;
                  }

LABEL_82:
                  v35 = 0;
                  goto LABEL_83;
                }

LABEL_81:
                v34 = 0;
                goto LABEL_82;
              }

LABEL_80:
              v33 = 0;
              goto LABEL_81;
            }

LABEL_79:
            v32 = 0;
            goto LABEL_80;
          }
        }

        else
        {
          v30 = 0;
        }

        v31 = 0;
        goto LABEL_79;
      }

LABEL_129:
      v30 = 0;
      v31 = 0;
      v32 = 0;
      v33 = 0;
      v34 = 0;
      v35 = 0;
      v36 = 0;
      v37 = 0;
      v38 = 0;
      v39 = 0;
      v40 = 0;
      v41 = 0;
      v42 = 0;
      v29 = 0;
      goto LABEL_130;
    }

LABEL_217:
    __break(1u);
    return result;
  }

  memset(__src, 0, sizeof(__src));
  v94 = 0;
  if ((nw_endpoint_fillout_v4v6_address(v14, __src) & 1) == 0)
  {
    if (v9)
    {
      free(v9);
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v21 = gLogObj;
    *buf = 136446210;
    v98 = "nw_quic_migration_info_copy_data";
    LODWORD(v92) = 12;
    v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v21, 16, "%{public}s called with null success_tlv", buf, v92);

    type = OS_LOG_TYPE_ERROR;
    v95 = 0;
    if (!__nwlog_fault(v9, &type, &v95))
    {
      goto LABEL_100;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v22 = gLogObj;
      v23 = type;
      if (os_log_type_enabled(v22, type))
      {
        *buf = 136446210;
        v98 = "nw_quic_migration_info_copy_data";
        _os_log_impl(&dword_181A37000, v22, v23, "%{public}s called with null success_tlv", buf, 0xCu);
      }
    }

    else if (v95 == 1)
    {
      v24 = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v22 = gLogObj;
      v25 = type;
      v26 = os_log_type_enabled(v22, type);
      if (v24)
      {
        if (v26)
        {
          *buf = 136446466;
          v98 = "nw_quic_migration_info_copy_data";
          v99 = 2082;
          v100 = v24;
          _os_log_impl(&dword_181A37000, v22, v25, "%{public}s called with null success_tlv, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v24);
        if (!v9)
        {
          goto LABEL_102;
        }

        goto LABEL_101;
      }

      if (v26)
      {
        *buf = 136446210;
        v98 = "nw_quic_migration_info_copy_data";
        _os_log_impl(&dword_181A37000, v22, v25, "%{public}s called with null success_tlv, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v22 = gLogObj;
      v47 = type;
      if (os_log_type_enabled(v22, type))
      {
        *buf = 136446210;
        v98 = "nw_quic_migration_info_copy_data";
        _os_log_impl(&dword_181A37000, v22, v47, "%{public}s called with null success_tlv, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_213:

    goto LABEL_100;
  }

  if (!v9)
  {
    v56 = __nwlog_obj();
    *buf = 136446210;
    v98 = "nw_necp_append_tlv";
    LODWORD(v92) = 12;
    backtrace_string = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v56, 16, "%{public}s called with null tlv_start", buf, v92);

    type = OS_LOG_TYPE_ERROR;
    v95 = 0;
    if (__nwlog_fault(backtrace_string, &type, &v95))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v19 = __nwlog_obj();
        v57 = type;
        if (os_log_type_enabled(v19, type))
        {
          *buf = 136446210;
          v98 = "nw_necp_append_tlv";
          _os_log_impl(&dword_181A37000, v19, v57, "%{public}s called with null tlv_start", buf, 0xCu);
        }

        goto LABEL_97;
      }

      if (v95 != 1)
      {
        v19 = __nwlog_obj();
        v88 = type;
        if (os_log_type_enabled(v19, type))
        {
          *buf = 136446210;
          v98 = "nw_necp_append_tlv";
          _os_log_impl(&dword_181A37000, v19, v88, "%{public}s called with null tlv_start, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_97;
      }

      v77 = __nw_create_backtrace_string();
      v19 = __nwlog_obj();
      v78 = type;
      v79 = os_log_type_enabled(v19, type);
      if (!v77)
      {
        if (v79)
        {
          *buf = 136446210;
          v98 = "nw_necp_append_tlv";
          _os_log_impl(&dword_181A37000, v19, v78, "%{public}s called with null tlv_start, no backtrace", buf, 0xCu);
        }

        goto LABEL_97;
      }

      if (v79)
      {
        *buf = 136446466;
        v98 = "nw_necp_append_tlv";
        v99 = 2082;
        v100 = v77;
        _os_log_impl(&dword_181A37000, v19, v78, "%{public}s called with null tlv_start, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v77);
    }

    goto LABEL_98;
  }

  if (!v7)
  {
    v58 = __nwlog_obj();
    *buf = 136447234;
    v98 = "nw_necp_append_tlv";
    v99 = 2048;
    v100 = v9;
    v101 = 2048;
    v102 = v9;
    v103 = 1024;
    *v104 = 1;
    *&v104[4] = 1024;
    *&v104[6] = v6;
    LODWORD(v92) = 44;
    backtrace_string = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v58, 16, "%{public}s Invalid tlv_start %p >= beyond %p type=%u length=%u", buf, v92);

    type = OS_LOG_TYPE_ERROR;
    v95 = 0;
    if (__nwlog_fault(backtrace_string, &type, &v95))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v19 = __nwlog_obj();
        v59 = type;
        if (os_log_type_enabled(v19, type))
        {
          *buf = 136447234;
          v98 = "nw_necp_append_tlv";
          v99 = 2048;
          v100 = v9;
          v101 = 2048;
          v102 = v9;
          v103 = 1024;
          *v104 = 1;
          *&v104[4] = 1024;
          *&v104[6] = v6;
          _os_log_impl(&dword_181A37000, v19, v59, "%{public}s Invalid tlv_start %p >= beyond %p type=%u length=%u", buf, 0x2Cu);
        }

        goto LABEL_97;
      }

      if (v95 != 1)
      {
        v19 = __nwlog_obj();
        v89 = type;
        if (os_log_type_enabled(v19, type))
        {
          *buf = 136447234;
          v98 = "nw_necp_append_tlv";
          v99 = 2048;
          v100 = v9;
          v101 = 2048;
          v102 = v9;
          v103 = 1024;
          *v104 = 1;
          *&v104[4] = 1024;
          *&v104[6] = v6;
          _os_log_impl(&dword_181A37000, v19, v89, "%{public}s Invalid tlv_start %p >= beyond %p type=%u length=%u, backtrace limit exceeded", buf, 0x2Cu);
        }

        goto LABEL_97;
      }

      v80 = __nw_create_backtrace_string();
      v19 = __nwlog_obj();
      v81 = type;
      v82 = os_log_type_enabled(v19, type);
      if (!v80)
      {
        if (v82)
        {
          *buf = 136447234;
          v98 = "nw_necp_append_tlv";
          v99 = 2048;
          v100 = v9;
          v101 = 2048;
          v102 = v9;
          v103 = 1024;
          *v104 = 1;
          *&v104[4] = 1024;
          *&v104[6] = v6;
          _os_log_impl(&dword_181A37000, v19, v81, "%{public}s Invalid tlv_start %p >= beyond %p type=%u length=%u, no backtrace", buf, 0x2Cu);
        }

        goto LABEL_97;
      }

      if (v82)
      {
        *buf = 136447490;
        v98 = "nw_necp_append_tlv";
        v99 = 2048;
        v100 = v9;
        v101 = 2048;
        v102 = v9;
        v103 = 1024;
        *v104 = 1;
        *&v104[4] = 1024;
        *&v104[6] = v6;
        *v105 = 2082;
        *&v105[2] = v80;
        _os_log_impl(&dword_181A37000, v19, v81, "%{public}s Invalid tlv_start %p >= beyond %p type=%u length=%u, dumping backtrace:%{public}s", buf, 0x36u);
      }

      free(v80);
    }

LABEL_98:
    if (!backtrace_string)
    {
      goto LABEL_100;
    }

    goto LABEL_99;
  }

  v16 = v6 + 5;
  if (v7 >= v16)
  {
    *v9 = 1;
    *(v9 + 1) = v6;
    if (v6)
    {
      memcpy((v9 + 5), __src, v6);
    }

    v15 = v9 + v16;
    goto LABEL_43;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v17 = gLogObj;
  *buf = 136447490;
  v98 = "nw_necp_append_tlv";
  v99 = 2048;
  v100 = v9;
  v101 = 2048;
  v102 = v6 + 5;
  v103 = 2048;
  *v104 = v9 + v7;
  *&v104[8] = 1024;
  *v105 = 1;
  *&v105[4] = 1024;
  *&v105[6] = v6;
  LODWORD(v92) = 54;
  backtrace_string = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v17, 16, "%{public}s buffer too short tlv_start=%p full_tlv_len=%zu beyond=%p type=%u length=%u", buf, v92);

  type = OS_LOG_TYPE_ERROR;
  v95 = 0;
  if (!__nwlog_fault(backtrace_string, &type, &v95))
  {
    goto LABEL_98;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v19 = gLogObj;
    v20 = type;
    if (os_log_type_enabled(v19, type))
    {
      *buf = 136447490;
      v98 = "nw_necp_append_tlv";
      v99 = 2048;
      v100 = v9;
      v101 = 2048;
      v102 = v6 + 5;
      v103 = 2048;
      *v104 = v9 + v7;
      *&v104[8] = 1024;
      *v105 = 1;
      *&v105[4] = 1024;
      *&v105[6] = v6;
      _os_log_impl(&dword_181A37000, v19, v20, "%{public}s buffer too short tlv_start=%p full_tlv_len=%zu beyond=%p type=%u length=%u", buf, 0x36u);
    }

LABEL_97:

    goto LABEL_98;
  }

  if (v95 != 1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v19 = gLogObj;
    v51 = type;
    if (os_log_type_enabled(v19, type))
    {
      *buf = 136447490;
      v98 = "nw_necp_append_tlv";
      v99 = 2048;
      v100 = v9;
      v101 = 2048;
      v102 = v6 + 5;
      v103 = 2048;
      *v104 = v9 + v7;
      *&v104[8] = 1024;
      *v105 = 1;
      *&v105[4] = 1024;
      *&v105[6] = v6;
      _os_log_impl(&dword_181A37000, v19, v51, "%{public}s buffer too short tlv_start=%p full_tlv_len=%zu beyond=%p type=%u length=%u, backtrace limit exceeded", buf, 0x36u);
    }

    goto LABEL_97;
  }

  v48 = __nw_create_backtrace_string();
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v19 = gLogObj;
  v49 = type;
  v50 = os_log_type_enabled(v19, type);
  if (!v48)
  {
    if (v50)
    {
      *buf = 136447490;
      v98 = "nw_necp_append_tlv";
      v99 = 2048;
      v100 = v9;
      v101 = 2048;
      v102 = v6 + 5;
      v103 = 2048;
      *v104 = v9 + v7;
      *&v104[8] = 1024;
      *v105 = 1;
      *&v105[4] = 1024;
      *&v105[6] = v6;
      _os_log_impl(&dword_181A37000, v19, v49, "%{public}s buffer too short tlv_start=%p full_tlv_len=%zu beyond=%p type=%u length=%u, no backtrace", buf, 0x36u);
    }

    goto LABEL_97;
  }

  if (v50)
  {
    *buf = 136447746;
    v98 = "nw_necp_append_tlv";
    v99 = 2048;
    v100 = v9;
    v101 = 2048;
    v102 = v6 + 5;
    v103 = 2048;
    *v104 = v9 + v7;
    *&v104[8] = 1024;
    *v105 = 1;
    *&v105[4] = 1024;
    *&v105[6] = v6;
    v106 = 2082;
    v107 = v48;
    _os_log_impl(&dword_181A37000, v19, v49, "%{public}s buffer too short tlv_start=%p full_tlv_len=%zu beyond=%p type=%u length=%u, dumping backtrace:%{public}s", buf, 0x40u);
  }

  free(v48);
  if (backtrace_string)
  {
LABEL_99:
    free(backtrace_string);
  }

LABEL_100:
  if (v9)
  {
LABEL_101:
    free(v9);
  }

LABEL_102:
  v43 = 0;
LABEL_140:

  return v43;
}

void nw_tcp_respond_reset(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v75 = *MEMORY[0x1E69E9840];
  v68 = 0;
  v9 = nw_frame_unclaimed_bytes(a1, &v68);
  if (v68 <= 0x13)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    *buf = 136446722;
    v70 = "nw_tcp_respond_reset";
    v71 = 1024;
    *v72 = v68;
    *&v72[4] = 2048;
    *&v72[6] = 20;
    v10 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s Frame is invalid, only has %u bytes, required: %zu", buf, 28);
    type[0] = OS_LOG_TYPE_ERROR;
    v67 = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v10, type, &v67))
    {
      goto LABEL_43;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v11 = gLogObj;
      v12 = type[0];
      if (!os_log_type_enabled(gLogObj, type[0]))
      {
        goto LABEL_43;
      }

      *buf = 136446722;
      v70 = "nw_tcp_respond_reset";
      v71 = 1024;
      *v72 = v68;
      *&v72[4] = 2048;
      *&v72[6] = 20;
      v13 = "%{public}s Frame is invalid, only has %u bytes, required: %zu";
LABEL_41:
      v38 = v11;
      v39 = v12;
      v40 = 28;
LABEL_42:
      _os_log_impl(&dword_181A37000, v38, v39, v13, buf, v40);
      goto LABEL_43;
    }

    if (v67 != OS_LOG_TYPE_INFO)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v11 = gLogObj;
      v12 = type[0];
      if (!os_log_type_enabled(gLogObj, type[0]))
      {
        goto LABEL_43;
      }

      *buf = 136446722;
      v70 = "nw_tcp_respond_reset";
      v71 = 1024;
      *v72 = v68;
      *&v72[4] = 2048;
      *&v72[6] = 20;
      v13 = "%{public}s Frame is invalid, only has %u bytes, required: %zu, backtrace limit exceeded";
      goto LABEL_41;
    }

    backtrace_string = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v11 = gLogObj;
    v12 = type[0];
    v22 = os_log_type_enabled(gLogObj, type[0]);
    if (!backtrace_string)
    {
      if (!v22)
      {
        goto LABEL_43;
      }

      *buf = 136446722;
      v70 = "nw_tcp_respond_reset";
      v71 = 1024;
      *v72 = v68;
      *&v72[4] = 2048;
      *&v72[6] = 20;
      v13 = "%{public}s Frame is invalid, only has %u bytes, required: %zu, no backtrace";
      goto LABEL_41;
    }

    if (v22)
    {
      *buf = 136446978;
      v70 = "nw_tcp_respond_reset";
      v71 = 1024;
      *v72 = v68;
      *&v72[4] = 2048;
      *&v72[6] = 20;
      v73 = 2082;
      v74 = backtrace_string;
      _os_log_impl(&dword_181A37000, v11, v12, "%{public}s Frame is invalid, only has %u bytes, required: %zu, dumping backtrace:%{public}s", buf, 0x26u);
    }

    free(backtrace_string);
LABEL_43:
    if (!v10)
    {
      return;
    }

    goto LABEL_44;
  }

  if ((*(v9 + 13) & 4) != 0)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v17 = gLogObj;
    if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    *buf = 136446210;
    v70 = "nw_tcp_respond_reset";
    v18 = "%{public}s Attempting to send a RST in reply to a RST";
    v19 = v17;
    v20 = OS_LOG_TYPE_ERROR;
    goto LABEL_34;
  }

  v14 = 20;
  v68 = 20;
  v15 = *(a5 + 1);
  v16 = v9;
  if (v15 == 30)
  {
    v14 = 60;
  }

  else
  {
    if (v15 != 2)
    {
      goto LABEL_21;
    }

    v14 = 40;
  }

  v68 = v14;
LABEL_21:
  *type = 0;
  v66 = type;
  if ((*(*(a2 + 24) + 88))(a2, a3, v14, v14, 1, type) != 1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v35 = gLogObj;
    if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
    {
      return;
    }

    *buf = 136446210;
    v70 = "nw_tcp_respond_reset";
    v18 = "%{public}s Failed to get output frame to send RST";
    v19 = v35;
    v20 = OS_LOG_TYPE_INFO;
LABEL_34:
    _os_log_impl(&dword_181A37000, v19, v20, v18, buf, 0xCu);
    return;
  }

  v23 = *type;
  if (*type)
  {
    v24 = *(a5 + 1);
    if (v24 != 30)
    {
      if (v24 != 2)
      {
        v45 = v16;
        v33 = 0;
LABEL_55:
        if (*(v23 + 112))
        {
          if ((*(v23 + 204) & 0x100) == 0 || !g_channel_check_validity || (v46 = g_channel_check_validity(v23, *(v23 + 88)), v45 = v16, v46))
          {
            v47 = *(v23 + 52);
            if (v47)
            {
              v48 = *(v23 + 112);
              if (v48)
              {
                v49 = *(v23 + 56);
                if ((v47 - (v49 + *(v23 + 60))) > 0x13)
                {
                  v50 = v48 + v49;
                  *(v50 + 16) = 0;
                  *v50 = 0;
                  *(v50 + 8) = 0;
                  *v50 = *(v45 + 2);
                  *(v50 + 2) = *v45;
                  *(v50 + 13) = 4;
                  *(v50 + 12) = 80;
                  *(v50 + 16) = v33;
                  v51 = *(v45 + 13);
                  if ((v51 & 0x10) != 0)
                  {
                    *(v50 + 4) = *(v45 + 8);
                  }

                  else
                  {
                    v52 = *(v45 + 4);
                    v53 = bswap32(bswap32(v52) + 1);
                    if ((v51 & 2) != 0)
                    {
                      v52 = v53;
                    }

                    *(v50 + 8) = v52;
                    *(v50 + 13) = 20;
                  }

                  v57 = 20;
                  v58 = MEMORY[0x1865DE4A0](v50, 20, 0);
                  if (v58 == -1)
                  {
                    v60 = -1;
                  }

                  else
                  {
                    v60 = ~v58;
                  }

                  *(v50 + 16) = v60;
                  nw_frame_claim(v23, v59, 20, 0);
                  nw_frame_collapse(v23);
                  nw_frame_unclaim(v23, v61, 0x14u, 0);
                  v63 = *(a5 + 1);
                  if (v63 != 2)
                  {
                    if (v63 != 30)
                    {
LABEL_95:
                      (*(*(a2 + 24) + 96))(a2, type);
                      return;
                    }

                    v57 = 40;
                  }

                  nw_frame_unclaim(v23, v62, v57, 0);
                  goto LABEL_95;
                }
              }
            }
          }
        }

        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v54 = gLogObj;
        if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446722;
          v70 = "nw_tcp_respond_reset";
          v71 = 1024;
          *v72 = v68;
          *&v72[4] = 2048;
          *&v72[6] = 20;
LABEL_80:
          _os_log_impl(&dword_181A37000, v54, OS_LOG_TYPE_ERROR, "%{public}s nw_frame_unclaimed_bytes reports %u, need at least %zu", buf, 0x1Cu);
          goto LABEL_81;
        }

        goto LABEL_81;
      }

      if (*(*type + 112) && ((*(*type + 204) & 0x100) == 0 || !g_channel_check_validity || g_channel_check_validity(*type, *(*type + 88))) && (v25 = *(v23 + 52)) != 0)
      {
        v26 = *(v23 + 56);
        v27 = v25 - (v26 + *(v23 + 60));
        if (v27 > 0x13)
        {
          v28 = (*(v23 + 112) + v26);
          *v28 = 0;
          *(v28 + 1) = 0;
          *(v28 + 4) = 0;
          *v28 = 69;
          *(v28 + 3) = 117375040;
          v29 = *(a4 + 4);
          *(v28 + 3) = v29;
          v30 = *(a5 + 4);
          *(v28 + 4) = v30;
          v28[1] = 10240;
          v31 = *v28 + v29 + HIWORD(v29) + v30 + HIWORD(v30) + 12095;
          v28[5] = ~(HIWORD(v31) + v31 + ((HIWORD(v31) + v31) >> 16));
          v33 = in_pseudo(v30, v29, 0x1A000000u);
          v34 = 20;
LABEL_53:
          nw_frame_claim(v23, v32, v34, 0);
          v45 = v16;
          goto LABEL_55;
        }
      }

      else
      {
        v27 = 0;
      }

      v54 = __nwlog_obj();
      if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        v70 = "nw_tcp_respond_reset";
        v71 = 1024;
        *v72 = v27;
        *&v72[4] = 2048;
        *&v72[6] = 20;
        goto LABEL_80;
      }

LABEL_81:
      nw_frame_finalize(v23);
      return;
    }

    if (*(*type + 112) && ((*(*type + 204) & 0x100) == 0 || !g_channel_check_validity || g_channel_check_validity(*type, *(*type + 88))) && (v41 = *(v23 + 52)) != 0)
    {
      v42 = *(v23 + 56);
      v43 = v41 - (v42 + *(v23 + 60));
      if (v43 > 0x27)
      {
        v44 = *(v23 + 112) + v42;
        *(v44 + 32) = 0;
        *v44 = 0u;
        *(v44 + 16) = 0u;
        *(v44 + 4) = -16378880;
        *(v44 + 8) = *(a4 + 8);
        *(v44 + 24) = *(a5 + 8);
        *v44 = 96;
        v33 = in6_pseudo((a4 + 8), (a5 + 8), 436207616);
        v34 = 40;
        goto LABEL_53;
      }
    }

    else
    {
      v43 = 0;
    }

    v54 = __nwlog_obj();
    if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v70 = "nw_tcp_respond_reset";
      v71 = 1024;
      *v72 = v43;
      *&v72[4] = 2048;
      *&v72[6] = 40;
      goto LABEL_80;
    }

    goto LABEL_81;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  *buf = 136446210;
  v70 = "nw_tcp_respond_reset";
  v10 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s nw_frame_array_first failed", buf, 12);
  v67 = OS_LOG_TYPE_ERROR;
  v64 = 0;
  if (!__nwlog_fault(v10, &v67, &v64))
  {
    goto LABEL_43;
  }

  if (v67 == OS_LOG_TYPE_FAULT)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v36 = gLogObj;
    v37 = v67;
    if (!os_log_type_enabled(gLogObj, v67))
    {
      goto LABEL_43;
    }

    *buf = 136446210;
    v70 = "nw_tcp_respond_reset";
    v13 = "%{public}s nw_frame_array_first failed";
    goto LABEL_86;
  }

  if (v64 != 1)
  {
    v36 = __nwlog_obj();
    v37 = v67;
    if (!os_log_type_enabled(v36, v67))
    {
      goto LABEL_43;
    }

    *buf = 136446210;
    v70 = "nw_tcp_respond_reset";
    v13 = "%{public}s nw_frame_array_first failed, backtrace limit exceeded";
    goto LABEL_86;
  }

  v55 = __nw_create_backtrace_string();
  v36 = __nwlog_obj();
  v37 = v67;
  v56 = os_log_type_enabled(v36, v67);
  if (!v55)
  {
    if (!v56)
    {
      goto LABEL_43;
    }

    *buf = 136446210;
    v70 = "nw_tcp_respond_reset";
    v13 = "%{public}s nw_frame_array_first failed, no backtrace";
LABEL_86:
    v38 = v36;
    v39 = v37;
    v40 = 12;
    goto LABEL_42;
  }

  if (v56)
  {
    *buf = 136446466;
    v70 = "nw_tcp_respond_reset";
    v71 = 2082;
    *v72 = v55;
    _os_log_impl(&dword_181A37000, v36, v37, "%{public}s nw_frame_array_first failed, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v55);
  if (v10)
  {
LABEL_44:
    free(v10);
  }
}

BOOL nw_quic_parse_dispatch(NSObject *a1, char a2, uint64_t a3)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = __nw_quic_parse_dispatch_block_invoke;
  v4[3] = &__block_descriptor_tmp_32413;
  v5 = a2;
  v4[4] = a3;
  return dispatch_data_apply(a1, v4);
}

uint64_t __Block_byref_object_copy__32509(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void ___ZL48nw_endpoint_resolver_update_path_resolver_lockedP30NWConcrete_nw_endpoint_handler_block_invoke(uint64_t a1, unsigned __int8 *uu)
{
  v2 = uu;
  v96 = *MEMORY[0x1E69E9840];
  memset(out, 0, 37);
  uuid_unparse(uu, out);
  v75 = 0;
  v76 = &v75;
  v77 = 0x2020000000;
  v78 = 0;
  v71 = 0;
  v72 = &v71;
  v73 = 0x2020000000;
  v74 = 0;
  v4 = *(a1 + 32);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = ___ZL48nw_endpoint_resolver_update_path_resolver_lockedP30NWConcrete_nw_endpoint_handler_block_invoke_2;
  aBlock[3] = &unk_1E6A30DD0;
  aBlock[4] = &v75;
  aBlock[5] = &v71;
  aBlock[6] = *(a1 + 64);
  _nw_path_access_network_agent(v4, v2, aBlock);
  if (*(v76 + 24) != 1)
  {
    goto LABEL_15;
  }

  minimize_logging = nw_endpoint_handler_get_minimize_logging(*(a1 + 40));
  logging_disabled = nw_endpoint_handler_get_logging_disabled(*(a1 + 40));
  if (minimize_logging)
  {
    if (logging_disabled)
    {
      goto LABEL_12;
    }

    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v7 = gconnectionLogObj;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      id_string = nw_endpoint_handler_get_id_string(*(a1 + 40));
      v52 = nw_endpoint_handler_dry_run_string(*(a1 + 40));
      v53 = v7;
      v54 = nw_endpoint_handler_copy_endpoint(*(a1 + 40));
      logging_description = nw_endpoint_get_logging_description(v54);
      v56 = nw_endpoint_handler_state_string(*(a1 + 40));
      v57 = nw_endpoint_handler_mode_string(*(a1 + 40));
      v58 = nw_endpoint_handler_copy_current_path(*(a1 + 40));
      *buf = 136447746;
      v80 = "nw_endpoint_resolver_update_path_resolver_locked_block_invoke";
      v81 = 2082;
      v82 = id_string;
      v83 = 2082;
      v84 = v52;
      v85 = 2082;
      v86 = logging_description;
      v87 = 2082;
      v88 = v56;
      v89 = 2082;
      v90 = v57;
      v91 = 2114;
      v92 = v58;
      v7 = v53;
      _os_log_impl(&dword_181A37000, v53, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Resolver should be kept open until a child connects", buf, 0x48u);
    }

    goto LABEL_11;
  }

  if ((logging_disabled & 1) == 0)
  {
    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v7 = gconnectionLogObj;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = nw_endpoint_handler_get_id_string(*(a1 + 40));
      v9 = nw_endpoint_handler_dry_run_string(*(a1 + 40));
      v10 = nw_endpoint_handler_copy_endpoint(*(a1 + 40));
      v11 = v10;
      if (v10)
      {
        v12 = _nw_endpoint_get_logging_description(v10);
      }

      else
      {
        v12 = "<NULL>";
      }

      v67 = v12;

      v13 = v2;
      v14 = v7;
      v15 = nw_endpoint_handler_state_string(*(a1 + 40));
      v16 = nw_endpoint_handler_mode_string(*(a1 + 40));
      v17 = nw_endpoint_handler_copy_current_path(*(a1 + 40));
      *buf = 136447746;
      v80 = "nw_endpoint_resolver_update_path_resolver_locked_block_invoke";
      v81 = 2082;
      v82 = v8;
      v83 = 2082;
      v84 = v9;
      v85 = 2082;
      v86 = v67;
      v87 = 2082;
      v88 = v15;
      v7 = v14;
      v2 = v13;
      v89 = 2082;
      v90 = v16;
      v91 = 2114;
      v92 = v17;
      _os_log_impl(&dword_181A37000, v7, OS_LOG_TYPE_DEFAULT, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Resolver should be kept open until a child connects", buf, 0x48u);
    }

LABEL_11:
  }

LABEL_12:
  *(*(a1 + 48) + 24) |= 0x10u;
  if (!*(*(*(a1 + 72) + 8) + 40))
  {
    v18 = xpc_array_create(0, 0);
    v19 = *(*(a1 + 72) + 8);
    v20 = *(v19 + 40);
    *(v19 + 40) = v18;
  }

  v21 = xpc_string_create(out);
  xpc_array_append_value(*(*(*(a1 + 72) + 8) + 40), v21);

LABEL_15:
  if (*(v72 + 24) == 1)
  {
    *(*(a1 + 48) + 24) |= 0x20u;
  }

  v22 = *(a1 + 48);
  if (*(v76 + 24) == 1)
  {
    v23 = *(v22 + 32);
    v24 = v23 == 0;
    v25 = *(v22 + 80);
    if (!v25)
    {
      if (!v23)
      {
        goto LABEL_27;
      }

      goto LABEL_48;
    }
  }

  else
  {
    v25 = *(v22 + 80);
    if (!v25)
    {
      goto LABEL_27;
    }

    v24 = 1;
  }

  v26 = nw_dictionary_copy_value(v25, out);
  v27 = v26;
  if (v24 && v26)
  {
    nw_dictionary_set_value(*(a1 + 56), out, v26);
LABEL_47:

    goto LABEL_48;
  }

  if (v24)
  {
LABEL_27:
    v27 = nw_endpoint_handler_copy_association(*(a1 + 40), 0);
    flow = nw_association_create_flow(v27, 0, 0, 0, 1, v2, 0);
    nw_dictionary_set_value(*(a1 + 56), out, flow);
    if (flow)
    {
      objc_storeStrong((*(*(a1 + 80) + 8) + 40), flow);
      v29 = nw_endpoint_handler_get_minimize_logging(*(a1 + 40));
      v30 = nw_endpoint_handler_get_logging_disabled(*(a1 + 40));
      if (v29)
      {
        if (v30)
        {
          goto LABEL_46;
        }

        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v31 = gconnectionLogObj;
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
        {
          v59 = v31;
          v60 = nw_endpoint_handler_get_id_string(*(a1 + 40));
          v61 = nw_endpoint_handler_dry_run_string(*(a1 + 40));
          v62 = nw_endpoint_handler_copy_endpoint(*(a1 + 40));
          v63 = nw_endpoint_get_logging_description(v62);
          v64 = nw_endpoint_handler_state_string(*(a1 + 40));
          v65 = nw_endpoint_handler_mode_string(*(a1 + 40));
          v66 = nw_endpoint_handler_copy_current_path(*(a1 + 40));
          *buf = 136448002;
          v80 = "nw_endpoint_resolver_update_path_resolver_locked_block_invoke";
          v81 = 2082;
          v82 = v60;
          v83 = 2082;
          v84 = v61;
          v85 = 2082;
          v86 = v63;
          v87 = 2082;
          v88 = v64;
          v89 = 2082;
          v90 = v65;
          v91 = 2114;
          v92 = v66;
          v93 = 2080;
          v94 = out;
          v31 = v59;
          _os_log_impl(&dword_181A37000, v59, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Registered resolver flow with agent %s", buf, 0x52u);
        }

        goto LABEL_45;
      }

      if ((v30 & 1) == 0)
      {
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v31 = gconnectionLogObj;
        if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
        {
          v32 = nw_endpoint_handler_get_id_string(*(a1 + 40));
          v33 = nw_endpoint_handler_dry_run_string(*(a1 + 40));
          v34 = nw_endpoint_handler_copy_endpoint(*(a1 + 40));
          v35 = v34;
          if (v34)
          {
            v36 = _nw_endpoint_get_logging_description(v34);
          }

          else
          {
            v36 = "<NULL>";
          }

          v68 = v36;

          v42 = flow;
          v43 = v31;
          v44 = nw_endpoint_handler_state_string(*(a1 + 40));
          v45 = nw_endpoint_handler_mode_string(*(a1 + 40));
          v46 = nw_endpoint_handler_copy_current_path(*(a1 + 40));
          *buf = 136448002;
          v80 = "nw_endpoint_resolver_update_path_resolver_locked_block_invoke";
          v81 = 2082;
          v82 = v32;
          v83 = 2082;
          v84 = v33;
          v85 = 2082;
          v86 = v68;
          v87 = 2082;
          v88 = v44;
          v31 = v43;
          flow = v42;
          v89 = 2082;
          v90 = v45;
          v91 = 2114;
          v92 = v46;
          v93 = 2080;
          v94 = out;
          _os_log_impl(&dword_181A37000, v31, OS_LOG_TYPE_INFO, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Registered resolver flow with agent %s", buf, 0x52u);
        }

LABEL_45:
      }
    }

    else if ((nw_endpoint_handler_get_logging_disabled(*(a1 + 40)) & 1) == 0)
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v31 = gconnectionLogObj;
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        v37 = nw_endpoint_handler_get_id_string(*(a1 + 40));
        v38 = nw_endpoint_handler_dry_run_string(*(a1 + 40));
        v39 = nw_endpoint_handler_copy_endpoint(*(a1 + 40));
        v40 = v39;
        if (v39)
        {
          v41 = _nw_endpoint_get_logging_description(v39);
        }

        else
        {
          v41 = "<NULL>";
        }

        v69 = v41;

        v47 = v31;
        v48 = nw_endpoint_handler_state_string(*(a1 + 40));
        v49 = nw_endpoint_handler_mode_string(*(a1 + 40));
        v50 = nw_endpoint_handler_copy_current_path(*(a1 + 40));
        *buf = 136448002;
        v80 = "nw_endpoint_resolver_update_path_resolver_locked_block_invoke";
        v81 = 2082;
        v82 = v37;
        v83 = 2082;
        v84 = v38;
        v85 = 2082;
        v86 = v69;
        v87 = 2082;
        v88 = v48;
        v31 = v47;
        flow = 0;
        v89 = 2082;
        v90 = v49;
        v91 = 2114;
        v92 = v50;
        v93 = 2080;
        v94 = out;
        _os_log_impl(&dword_181A37000, v31, OS_LOG_TYPE_ERROR, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Failed to register resolver flow with agent %s", buf, 0x52u);
      }

      goto LABEL_45;
    }

LABEL_46:

    goto LABEL_47;
  }

LABEL_48:
  _Block_object_dispose(&v71, 8);
  _Block_object_dispose(&v75, 8);
}

void sub_182581A70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va1, a16);
  va_start(va, a16);
  v21 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  v25 = va_arg(va1, void);

  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

BOOL ___ZL48nw_endpoint_resolver_update_path_resolver_lockedP30NWConcrete_nw_endpoint_handler_block_invoke_106(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = nw_path_flow_copy_error(v4);
  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  v8 = *(*(*(a1 + 32) + 8) + 40) == 0;
  return v8;
}

uint64_t ___ZL27nw_endpoint_resolver_updateP30NWConcrete_nw_endpoint_handlerPU25objcproto14OS_nw_resolver8NSObject20nw_resolver_status_t_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = nw_endpoint_handler_copy_endpoint(a3);
  v5 = *(*(a1 + 32) + 8);
  v8 = *(v5 + 24);
  v7 = (v5 + 24);
  v6 = v8;
  v9 = *(*(*(a1 + 40) + 8) + 24);
  v10 = v4;
  v11 = v10;
  if (v10)
  {
    logging_description = _nw_endpoint_get_logging_description(v10);
  }

  else
  {
    logging_description = "<NULL>";
  }

  v13 = ",";
  if (v9)
  {
    v13 = "";
  }

  asprintf(v7, "%s%s%s", v6, v13, logging_description);
  if (v6)
  {
    free(v6);
  }

  *(*(*(a1 + 40) + 8) + 24) = 0;

  return 1;
}

void nw_endpoint_resolver_check_desperate_ivan(NWConcrete_nw_endpoint_handler *a1)
{
  v58 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = nw_endpoint_handler_copy_resolver(v1);
  v3 = v2;
  if ((*(v2 + 24) & 4) == 0)
  {
    if (*(v2 + 4))
    {
      *(v2 + 24) |= 4u;
      goto LABEL_8;
    }

    v4 = nw_endpoint_handler_copy_parameters(v1);
    if (nw_parameters_get_required_address_family(v4) || nw_parameters_get_desperate_ivan(v4))
    {
      *(v3 + 24) |= 4u;
LABEL_7:

      goto LABEL_8;
    }

    v5 = nw_endpoint_handler_copy_current_path(v1);
    if ((nw_path_is_eligible_for_CrazyIvan46(v5) & 1) == 0)
    {
LABEL_42:

      goto LABEL_7;
    }

    v39 = v5;
    v6 = nw_endpoint_handler_copy_endpoint(v1);
    if (nw_endpoint_get_type(v6) != nw_endpoint_type_host)
    {
LABEL_41:

      v5 = v39;
      goto LABEL_42;
    }

    *(v3 + 24) |= 0xCu;
    minimize_logging = nw_endpoint_handler_get_minimize_logging(v1);
    logging_disabled = nw_endpoint_handler_get_logging_disabled(v1);
    v38 = v6;
    if (minimize_logging)
    {
      if (logging_disabled)
      {
LABEL_18:
        v17 = *(v3 + 9);
        if (v17)
        {
          nw_queue_cancel_source(v17);
          *(v3 + 9) = 0;
        }

        v18 = nw_endpoint_handler_copy_context(v1);
        v42[0] = MEMORY[0x1E69E9820];
        v42[1] = 3221225472;
        v42[2] = ___ZL41nw_endpoint_resolver_check_desperate_ivanP30NWConcrete_nw_endpoint_handler_block_invoke;
        v42[3] = &unk_1E6A3D868;
        v43 = v1;
        *(v3 + 9) = nw_queue_context_create_source(v18, 2, 3, 0, v42, 0);

        v19 = *(v3 + 9);
        if (v19)
        {
          v20 = dispatch_time(0x8000000000000000, 2000000000);
          nw_queue_set_timer_values(v19, v20, 0xFFFFFFFFFFFFFFFFLL, 0xF4240uLL);
          nw_queue_activate_source(*(v3 + 9));
LABEL_40:

          v6 = v38;
          goto LABEL_41;
        }

        v21 = __nwlog_obj();
        *buf = 136446210;
        v45 = "nw_endpoint_resolver_check_desperate_ivan";
        v22 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v21, 16, "%{public}s nw_queue_context_create_source(timer) failed", buf, 12);

        type = OS_LOG_TYPE_ERROR;
        v40 = 0;
        if (__nwlog_fault(v22, &type, &v40))
        {
          if (type == OS_LOG_TYPE_FAULT)
          {
            v23 = __nwlog_obj();
            v24 = type;
            if (os_log_type_enabled(v23, type))
            {
              *buf = 136446210;
              v45 = "nw_endpoint_resolver_check_desperate_ivan";
              _os_log_impl(&dword_181A37000, v23, v24, "%{public}s nw_queue_context_create_source(timer) failed", buf, 0xCu);
            }
          }

          else if (v40 == 1)
          {
            backtrace_string = __nw_create_backtrace_string();
            v23 = __nwlog_obj();
            v26 = type;
            v27 = os_log_type_enabled(v23, type);
            if (backtrace_string)
            {
              if (v27)
              {
                *buf = 136446466;
                v45 = "nw_endpoint_resolver_check_desperate_ivan";
                v46 = 2082;
                v47 = backtrace_string;
                _os_log_impl(&dword_181A37000, v23, v26, "%{public}s nw_queue_context_create_source(timer) failed, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(backtrace_string);
              goto LABEL_38;
            }

            if (v27)
            {
              *buf = 136446210;
              v45 = "nw_endpoint_resolver_check_desperate_ivan";
              _os_log_impl(&dword_181A37000, v23, v26, "%{public}s nw_queue_context_create_source(timer) failed, no backtrace", buf, 0xCu);
            }
          }

          else
          {
            v23 = __nwlog_obj();
            v28 = type;
            if (os_log_type_enabled(v23, type))
            {
              *buf = 136446210;
              v45 = "nw_endpoint_resolver_check_desperate_ivan";
              _os_log_impl(&dword_181A37000, v23, v28, "%{public}s nw_queue_context_create_source(timer) failed, backtrace limit exceeded", buf, 0xCu);
            }
          }
        }

LABEL_38:
        if (v22)
        {
          free(v22);
        }

        goto LABEL_40;
      }

      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v29 = gconnectionLogObj;
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
      {
        loga = nw_endpoint_handler_get_id_string(v1);
        v30 = nw_endpoint_handler_dry_run_string(v1);
        v31 = nw_endpoint_handler_copy_endpoint(v1);
        logging_description = nw_endpoint_get_logging_description(v31);
        v33 = nw_endpoint_handler_state_string(v1);
        v34 = nw_endpoint_handler_mode_string(v1);
        v35 = nw_endpoint_handler_copy_current_path(v1);
        *buf = 136447746;
        v45 = "nw_endpoint_resolver_check_desperate_ivan";
        v46 = 2082;
        v47 = loga;
        v48 = 2082;
        v49 = v30;
        v50 = 2082;
        v51 = logging_description;
        v52 = 2082;
        v53 = v33;
        v54 = 2082;
        v55 = v34;
        v56 = 2114;
        v57 = v35;
        v9 = v29;
        _os_log_impl(&dword_181A37000, v29, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Connectivity seems slow, starting DesperateIvan timer", buf, 0x48u);
      }

      else
      {
        v9 = v29;
      }
    }

    else
    {
      if (logging_disabled)
      {
        goto LABEL_18;
      }

      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v9 = gconnectionLogObj;
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        id_string = nw_endpoint_handler_get_id_string(v1);
        v11 = nw_endpoint_handler_dry_run_string(v1);
        log = v9;
        v12 = nw_endpoint_handler_copy_endpoint(v1);
        v13 = nw_endpoint_get_logging_description(v12);
        v14 = nw_endpoint_handler_state_string(v1);
        v15 = nw_endpoint_handler_mode_string(v1);
        v16 = nw_endpoint_handler_copy_current_path(v1);
        *buf = 136447746;
        v45 = "nw_endpoint_resolver_check_desperate_ivan";
        v46 = 2082;
        v47 = id_string;
        v48 = 2082;
        v49 = v11;
        v50 = 2082;
        v51 = v13;
        v52 = 2082;
        v53 = v14;
        v54 = 2082;
        v55 = v15;
        v56 = 2114;
        v57 = v16;
        v9 = log;
        _os_log_impl(&dword_181A37000, log, OS_LOG_TYPE_INFO, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Connectivity seems slow, starting DesperateIvan timer", buf, 0x48u);
      }
    }

    goto LABEL_18;
  }

LABEL_8:
}

void nw_endpoint_resolver_setup_trigger_agent_timer(NWConcrete_nw_endpoint_handler *a1, char a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = nw_endpoint_handler_copy_resolver(v3);
  v5 = v4[8];
  if (v5)
  {
    nw_queue_cancel_source(v5);
    v4[8] = 0;
  }

  v6 = nw_endpoint_handler_copy_context(v3);
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = ___ZL46nw_endpoint_resolver_setup_trigger_agent_timerP30NWConcrete_nw_endpoint_handlerb_block_invoke;
  v21[3] = &unk_1E6A3A258;
  v7 = v3;
  v22 = v7;
  v23 = a2;
  v4[8] = nw_queue_context_create_source(v6, 2, 3, 0, v21, 0);

  if (v4[8])
  {
    int64_with_default = networkd_settings_get_int64_with_default(nw_setting_tcpconn_trigger_agent_delay, 2000);
    v9 = v4[8];
    v10 = dispatch_time(0x8000000000000000, 1000000 * int64_with_default);
    nw_queue_set_timer_values(v9, v10, 0xFFFFFFFFFFFFFFFFLL, 0xF4240uLL);
    nw_queue_activate_source(v4[8]);
    goto LABEL_12;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v11 = gLogObj;
  *buf = 136446210;
  v25 = "nw_endpoint_resolver_setup_trigger_agent_timer";
  v12 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v11, 16, "%{public}s nw_queue_context_create_source(trigger_agent_timer) failed", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v19 = 0;
  if (!__nwlog_fault(v12, &type, &v19))
  {
    goto LABEL_10;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v13 = gLogObj;
    v14 = type;
    if (os_log_type_enabled(v13, type))
    {
      *buf = 136446210;
      v25 = "nw_endpoint_resolver_setup_trigger_agent_timer";
      _os_log_impl(&dword_181A37000, v13, v14, "%{public}s nw_queue_context_create_source(trigger_agent_timer) failed", buf, 0xCu);
    }

LABEL_9:

LABEL_10:
    if (!v12)
    {
      goto LABEL_12;
    }

LABEL_11:
    free(v12);
    goto LABEL_12;
  }

  if (v19 != 1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v13 = gLogObj;
    v18 = type;
    if (os_log_type_enabled(v13, type))
    {
      *buf = 136446210;
      v25 = "nw_endpoint_resolver_setup_trigger_agent_timer";
      _os_log_impl(&dword_181A37000, v13, v18, "%{public}s nw_queue_context_create_source(trigger_agent_timer) failed, backtrace limit exceeded", buf, 0xCu);
    }

    goto LABEL_9;
  }

  backtrace_string = __nw_create_backtrace_string();
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v13 = gLogObj;
  v16 = type;
  v17 = os_log_type_enabled(v13, type);
  if (!backtrace_string)
  {
    if (v17)
    {
      *buf = 136446210;
      v25 = "nw_endpoint_resolver_setup_trigger_agent_timer";
      _os_log_impl(&dword_181A37000, v13, v16, "%{public}s nw_queue_context_create_source(trigger_agent_timer) failed, no backtrace", buf, 0xCu);
    }

    goto LABEL_9;
  }

  if (v17)
  {
    *buf = 136446466;
    v25 = "nw_endpoint_resolver_setup_trigger_agent_timer";
    v26 = 2082;
    v27 = backtrace_string;
    _os_log_impl(&dword_181A37000, v13, v16, "%{public}s nw_queue_context_create_source(trigger_agent_timer) failed, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(backtrace_string);
  if (v12)
  {
    goto LABEL_11;
  }

LABEL_12:
}

void ___ZL46nw_endpoint_resolver_setup_trigger_agent_timerP30NWConcrete_nw_endpoint_handlerb_block_invoke(uint64_t a1)
{
  v42 = *MEMORY[0x1E69E9840];
  if (nw_endpoint_handler_trigger_agents(*(a1 + 32), 1))
  {
    minimize_logging = nw_endpoint_handler_get_minimize_logging(*(a1 + 32));
    logging_disabled = nw_endpoint_handler_get_logging_disabled(*(a1 + 32));
    if (!minimize_logging)
    {
      if (logging_disabled)
      {
        return;
      }

      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v4 = gconnectionLogObj;
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        id_string = nw_endpoint_handler_get_id_string(*(a1 + 32));
        v6 = nw_endpoint_handler_dry_run_string(*(a1 + 32));
        v7 = nw_endpoint_handler_copy_endpoint(*(a1 + 32));
        v8 = v7;
        if (v7)
        {
          logging_description = _nw_endpoint_get_logging_description(v7);
        }

        else
        {
          logging_description = "<NULL>";
        }

        v10 = nw_endpoint_handler_state_string(*(a1 + 32));
        v11 = nw_endpoint_handler_mode_string(*(a1 + 32));
        v12 = nw_endpoint_handler_copy_current_path(*(a1 + 32));
        v13 = v12;
        v14 = "resolution";
        v15 = *(a1 + 40) == 0;
        v26 = 136448002;
        v27 = "nw_endpoint_resolver_setup_trigger_agent_timer_block_invoke";
        v28 = 2082;
        if (!v15)
        {
          v14 = "child flow";
        }

        v29 = id_string;
        v30 = 2082;
        v31 = v6;
        v32 = 2082;
        v33 = logging_description;
        v34 = 2082;
        v35 = v10;
        v36 = 2082;
        v37 = v11;
        v38 = 2114;
        v39 = v12;
        v40 = 2082;
        v41 = v14;
        _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_INFO, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] %{public}s timed out, triggering matching agent", &v26, 0x52u);
      }

      goto LABEL_13;
    }

    if ((logging_disabled & 1) == 0)
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v4 = gconnectionLogObj;
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
      {
        v16 = nw_endpoint_handler_get_id_string(*(a1 + 32));
        v17 = nw_endpoint_handler_dry_run_string(*(a1 + 32));
        v18 = nw_endpoint_handler_copy_endpoint(*(a1 + 32));
        v19 = nw_endpoint_get_logging_description(v18);
        v20 = nw_endpoint_handler_state_string(*(a1 + 32));
        v21 = nw_endpoint_handler_mode_string(*(a1 + 32));
        v22 = nw_endpoint_handler_copy_current_path(*(a1 + 32));
        v23 = *(a1 + 40);
        v24 = v22;
        v25 = "resolution";
        v26 = 136448002;
        v27 = "nw_endpoint_resolver_setup_trigger_agent_timer_block_invoke";
        v28 = 2082;
        if (v23)
        {
          v25 = "child flow";
        }

        v29 = v16;
        v30 = 2082;
        v31 = v17;
        v32 = 2082;
        v33 = v19;
        v34 = 2082;
        v35 = v20;
        v36 = 2082;
        v37 = v21;
        v38 = 2114;
        v39 = v22;
        v40 = 2082;
        v41 = v25;
        _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] %{public}s timed out, triggering matching agent", &v26, 0x52u);
      }

LABEL_13:
    }
  }
}

void ___ZL41nw_endpoint_resolver_check_desperate_ivanP30NWConcrete_nw_endpoint_handler_block_invoke(uint64_t a1)
{
  v50 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  if (!v1)
  {
    v18 = __nwlog_obj();
    *buf = 136446210;
    v37 = "nw_endpoint_resolver_check_desperate_ivan_block_invoke";
    v19 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v18, 16, "%{public}s called with null handler", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v34 = 0;
    if (__nwlog_fault(v19, &type, &v34))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v20 = __nwlog_obj();
        v21 = type;
        if (os_log_type_enabled(v20, type))
        {
          *buf = 136446210;
          v37 = "nw_endpoint_resolver_check_desperate_ivan_block_invoke";
          _os_log_impl(&dword_181A37000, v20, v21, "%{public}s called with null handler", buf, 0xCu);
        }
      }

      else if (v34 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v20 = __nwlog_obj();
        v31 = type;
        v32 = os_log_type_enabled(v20, type);
        if (backtrace_string)
        {
          if (v32)
          {
            *buf = 136446466;
            v37 = "nw_endpoint_resolver_check_desperate_ivan_block_invoke";
            v38 = 2082;
            v39 = backtrace_string;
            _os_log_impl(&dword_181A37000, v20, v31, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_43;
        }

        if (v32)
        {
          *buf = 136446210;
          v37 = "nw_endpoint_resolver_check_desperate_ivan_block_invoke";
          _os_log_impl(&dword_181A37000, v20, v31, "%{public}s called with null handler, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v20 = __nwlog_obj();
        v33 = type;
        if (os_log_type_enabled(v20, type))
        {
          *buf = 136446210;
          v37 = "nw_endpoint_resolver_check_desperate_ivan_block_invoke";
          _os_log_impl(&dword_181A37000, v20, v33, "%{public}s called with null handler, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_43:
    if (v19)
    {
      free(v19);
    }

    return;
  }

  v3 = v1;
  v4 = v3[29];

  if (v4 == 1)
  {
    minimize_logging = nw_endpoint_handler_get_minimize_logging(*(a1 + 32));
    logging_disabled = nw_endpoint_handler_get_logging_disabled(*(a1 + 32));
    if (minimize_logging)
    {
      if (logging_disabled)
      {
LABEL_19:
        if (nw_endpoint_resolver_add_desperate_ivan(*(a1 + 32)))
        {
          nw_endpoint_resolver_start_next_child(*(a1 + 32));
        }

        return;
      }

      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v7 = gconnectionLogObj;
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        id_string = nw_endpoint_handler_get_id_string(*(a1 + 32));
        v23 = nw_endpoint_handler_dry_run_string(*(a1 + 32));
        v24 = nw_endpoint_handler_copy_endpoint(*(a1 + 32));
        logging_description = nw_endpoint_get_logging_description(v24);
        v26 = nw_endpoint_handler_state_string(*(a1 + 32));
        v27 = nw_endpoint_handler_mode_string(*(a1 + 32));
        v28 = nw_endpoint_handler_copy_current_path(*(a1 + 32));
        *buf = 136447746;
        v37 = "nw_endpoint_resolver_check_desperate_ivan_block_invoke";
        v38 = 2082;
        v39 = id_string;
        v29 = v28;
        v40 = 2082;
        v41 = v23;
        v42 = 2082;
        v43 = logging_description;
        v44 = 2082;
        v45 = v26;
        v46 = 2082;
        v47 = v27;
        v48 = 2114;
        v49 = v28;
        _os_log_impl(&dword_181A37000, v7, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Connectivity seems very slow, adding DesperateIvan endpoint handler", buf, 0x48u);
      }
    }

    else
    {
      if (logging_disabled)
      {
        goto LABEL_19;
      }

      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v7 = gconnectionLogObj;
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = nw_endpoint_handler_get_id_string(*(a1 + 32));
        v9 = nw_endpoint_handler_dry_run_string(*(a1 + 32));
        v10 = nw_endpoint_handler_copy_endpoint(*(a1 + 32));
        v11 = v10;
        if (v10)
        {
          v12 = _nw_endpoint_get_logging_description(v10);
        }

        else
        {
          v12 = "<NULL>";
        }

        v15 = nw_endpoint_handler_state_string(*(a1 + 32));
        v16 = nw_endpoint_handler_mode_string(*(a1 + 32));
        v17 = nw_endpoint_handler_copy_current_path(*(a1 + 32));
        *buf = 136447746;
        v37 = "nw_endpoint_resolver_check_desperate_ivan_block_invoke";
        v38 = 2082;
        v39 = v8;
        v40 = 2082;
        v41 = v9;
        v42 = 2082;
        v43 = v12;
        v44 = 2082;
        v45 = v15;
        v46 = 2082;
        v47 = v16;
        v48 = 2114;
        v49 = v17;
        _os_log_impl(&dword_181A37000, v7, OS_LOG_TYPE_INFO, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Connectivity seems very slow, adding DesperateIvan endpoint handler", buf, 0x48u);
      }
    }

    goto LABEL_19;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v13 = gLogObj;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    if (v4 > 5)
    {
      v14 = "unknown-mode";
    }

    else
    {
      v14 = off_1E6A31018[v4];
    }

    *buf = 136446722;
    v37 = "nw_endpoint_resolver_check_desperate_ivan_block_invoke";
    v38 = 2082;
    v39 = v14;
    v40 = 2082;
    v41 = "resolver";
    _os_log_impl(&dword_181A37000, v13, OS_LOG_TYPE_DEFAULT, "%{public}s Handler is in mode %{public}s, expected %{public}s", buf, 0x20u);
  }
}

BOOL nw_endpoint_resolver_add_desperate_ivan(NWConcrete_nw_endpoint_handler *a1)
{
  v54 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if ((nw_endpoint_handler_get_state(v1) & 0xFFFFFFFE) != 4)
  {
    v3 = nw_endpoint_handler_copy_resolver(v1);
    v4 = v3;
    if ((*(v3 + 24) & 0xC) != 0)
    {
      if (!*(v3 + 4))
      {
        *(v3 + 24) &= ~8u;
        v13 = *(v3 + 9);
        if (v13)
        {
          nw_queue_cancel_source(v13);
          *(v4 + 9) = 0;
        }

        v7 = nw_endpoint_handler_copy_endpoint(v1);
        child_parameters = nw_endpoint_resolver_create_child_parameters(v1);
        nw_parameters_set_desperate_ivan(child_parameters);
        inner = nw_endpoint_handler_create_inner(v7, child_parameters, nw_endpoint_resolver_receive_report, v1, v1, 0, 0, 0);
        v2 = inner != 0;
        if (inner)
        {
          v16 = *(v4 + 5);
          if (v16)
          {
            _nw_array_append(v16, inner);
          }
        }

        else if ((nw_endpoint_handler_get_logging_disabled(v1) & 1) == 0)
        {
          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v17 = gconnectionLogObj;
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            id_string = nw_endpoint_handler_get_id_string(v1);
            v19 = nw_endpoint_handler_dry_run_string(v1);
            v20 = nw_endpoint_handler_copy_endpoint(v1);
            v21 = v20;
            v38 = id_string;
            log = v17;
            v37 = v19;
            if (v20)
            {
              logging_description = _nw_endpoint_get_logging_description(v20);
            }

            else
            {
              logging_description = "<NULL>";
            }

            v25 = nw_endpoint_handler_state_string(v1);
            v26 = nw_endpoint_handler_mode_string(v1);
            v27 = nw_endpoint_handler_copy_current_path(v1);
            *buf = 136447746;
            v41 = "nw_endpoint_resolver_add_desperate_ivan";
            v42 = 2082;
            v43 = v38;
            v44 = 2082;
            v45 = v37;
            v46 = 2082;
            v47 = logging_description;
            v48 = 2082;
            v49 = v25;
            v50 = 2082;
            v51 = v26;
            v52 = 2114;
            v53 = v27;
            v17 = log;
            _os_log_impl(&dword_181A37000, log, OS_LOG_TYPE_ERROR, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Failed to create DesperateIvan endpoint handler", buf, 0x48u);
          }
        }

        goto LABEL_30;
      }

      minimize_logging = nw_endpoint_handler_get_minimize_logging(v1);
      logging_disabled = nw_endpoint_handler_get_logging_disabled(v1);
      if (minimize_logging)
      {
        if ((logging_disabled & 1) == 0)
        {
          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v7 = gconnectionLogObj;
          if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
          {
            v28 = nw_endpoint_handler_get_id_string(v1);
            v29 = nw_endpoint_handler_dry_run_string(v1);
            v30 = nw_endpoint_handler_copy_endpoint(v1);
            v31 = nw_endpoint_get_logging_description(v30);
            v32 = nw_endpoint_handler_state_string(v1);
            v33 = nw_endpoint_handler_mode_string(v1);
            v34 = nw_endpoint_handler_copy_current_path(v1);
            *buf = 136447746;
            v41 = "nw_endpoint_resolver_add_desperate_ivan";
            v42 = 2082;
            v43 = v28;
            v44 = 2082;
            v45 = v29;
            v46 = 2082;
            v47 = v31;
            v48 = 2082;
            v49 = v32;
            v50 = 2082;
            v51 = v33;
            v52 = 2114;
            v53 = v34;
            _os_log_impl(&dword_181A37000, v7, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Skipping DesperateIvan because already connected", buf, 0x48u);
          }

          goto LABEL_25;
        }
      }

      else if ((logging_disabled & 1) == 0)
      {
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v7 = gconnectionLogObj;
        if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
        {
          v8 = nw_endpoint_handler_get_id_string(v1);
          v9 = nw_endpoint_handler_dry_run_string(v1);
          v10 = nw_endpoint_handler_copy_endpoint(v1);
          v11 = v10;
          if (v10)
          {
            v12 = _nw_endpoint_get_logging_description(v10);
          }

          else
          {
            v12 = "<NULL>";
          }

          v22 = nw_endpoint_handler_state_string(v1);
          v23 = nw_endpoint_handler_mode_string(v1);
          v24 = nw_endpoint_handler_copy_current_path(v1);
          *buf = 136447746;
          v41 = "nw_endpoint_resolver_add_desperate_ivan";
          v42 = 2082;
          v43 = v8;
          v44 = 2082;
          v45 = v9;
          v46 = 2082;
          v47 = v12;
          v48 = 2082;
          v49 = v22;
          v50 = 2082;
          v51 = v23;
          v52 = 2114;
          v53 = v24;
          _os_log_impl(&dword_181A37000, v7, OS_LOG_TYPE_INFO, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Skipping DesperateIvan because already connected", buf, 0x48u);
        }

LABEL_25:
        v2 = 0;
LABEL_30:

LABEL_37:
        goto LABEL_38;
      }
    }

    v2 = 0;
    goto LABEL_37;
  }

  v2 = 0;
LABEL_38:

  return v2;
}

void ___ZL35nw_endpoint_resolver_receive_reportP30NWConcrete_nw_endpoint_handler26nw_endpoint_handler_mode_t21nw_connection_state_tP27nw_endpoint_handler_event_sPU22objcproto11OS_nw_error8NSObjectPU23objcproto12OS_nw_objectS5__block_invoke(uint64_t a1)
{
  v40 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  if (v1)
  {
    v3 = v1;
    v4 = v3[29];

    if (v4 == 1)
    {
      if (nw_endpoint_handler_trigger_agents(*(a1 + 32), 1))
      {
        if ((nw_endpoint_handler_get_logging_disabled(*(a1 + 32)) & 1) == 0)
        {
          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v5 = gconnectionLogObj;
          if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
          {
            id_string = nw_endpoint_handler_get_id_string(*(a1 + 32));
            v7 = nw_endpoint_handler_dry_run_string(*(a1 + 32));
            v8 = nw_endpoint_handler_copy_endpoint(*(a1 + 32));
            v9 = v8;
            if (v8)
            {
              logging_description = _nw_endpoint_get_logging_description(v8);
            }

            else
            {
              logging_description = "<NULL>";
            }

            v13 = nw_endpoint_handler_state_string(*(a1 + 32));
            v14 = nw_endpoint_handler_mode_string(*(a1 + 32));
            v15 = nw_endpoint_handler_copy_current_path(*(a1 + 32));
            *buf = 136447746;
            v27 = "nw_endpoint_resolver_receive_report_block_invoke";
            v28 = 2082;
            v29 = id_string;
            v30 = 2082;
            v31 = v7;
            v32 = 2082;
            v33 = logging_description;
            v34 = 2082;
            v35 = v13;
            v36 = 2082;
            v37 = v14;
            v38 = 2114;
            v39 = v15;
            _os_log_impl(&dword_181A37000, v5, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Child flow failed, trying to trigger matching voluntary agents", buf, 0x48u);
          }
        }

        nw_endpoint_handler_reset_mode(*(a1 + 32), 0);
      }
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v11 = gLogObj;
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        if (v4 > 5)
        {
          v12 = "unknown-mode";
        }

        else
        {
          v12 = off_1E6A31018[v4];
        }

        *buf = 136446722;
        v27 = "nw_endpoint_resolver_receive_report_block_invoke";
        v28 = 2082;
        v29 = v12;
        v30 = 2082;
        v31 = "resolver";
        _os_log_impl(&dword_181A37000, v11, OS_LOG_TYPE_DEFAULT, "%{public}s Handler is in mode %{public}s, expected %{public}s", buf, 0x20u);
      }
    }

    return;
  }

  v16 = __nwlog_obj();
  *buf = 136446210;
  v27 = "nw_endpoint_resolver_receive_report_block_invoke";
  v17 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v16, 16, "%{public}s called with null handler", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v24 = 0;
  if (__nwlog_fault(v17, &type, &v24))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v18 = __nwlog_obj();
      v19 = type;
      if (os_log_type_enabled(v18, type))
      {
        *buf = 136446210;
        v27 = "nw_endpoint_resolver_receive_report_block_invoke";
        _os_log_impl(&dword_181A37000, v18, v19, "%{public}s called with null handler", buf, 0xCu);
      }
    }

    else if (v24 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v18 = __nwlog_obj();
      v21 = type;
      v22 = os_log_type_enabled(v18, type);
      if (backtrace_string)
      {
        if (v22)
        {
          *buf = 136446466;
          v27 = "nw_endpoint_resolver_receive_report_block_invoke";
          v28 = 2082;
          v29 = backtrace_string;
          _os_log_impl(&dword_181A37000, v18, v21, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_37;
      }

      if (v22)
      {
        *buf = 136446210;
        v27 = "nw_endpoint_resolver_receive_report_block_invoke";
        _os_log_impl(&dword_181A37000, v18, v21, "%{public}s called with null handler, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v18 = __nwlog_obj();
      v23 = type;
      if (os_log_type_enabled(v18, type))
      {
        *buf = 136446210;
        v27 = "nw_endpoint_resolver_receive_report_block_invoke";
        _os_log_impl(&dword_181A37000, v18, v23, "%{public}s called with null handler, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_37:
  if (v17)
  {
    free(v17);
  }
}

void nw_endpoint_resolver_remove_agent_assertions(NWConcrete_nw_endpoint_handler *a1)
{
  v49 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    v13 = __nwlog_obj();
    *buf = 136446210;
    v42 = "nw_endpoint_handler_get_mode";
    v14 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v13, 16, "%{public}s called with null handler", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v39 = 0;
    if (__nwlog_fault(v14, &type, &v39))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v15 = __nwlog_obj();
        v16 = type;
        if (os_log_type_enabled(v15, type))
        {
          *buf = 136446210;
          v42 = "nw_endpoint_handler_get_mode";
          _os_log_impl(&dword_181A37000, v15, v16, "%{public}s called with null handler", buf, 0xCu);
        }
      }

      else if (v39 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v15 = __nwlog_obj();
        v18 = type;
        v19 = os_log_type_enabled(v15, type);
        if (backtrace_string)
        {
          if (v19)
          {
            *buf = 136446466;
            v42 = "nw_endpoint_handler_get_mode";
            v43 = 2082;
            v44 = backtrace_string;
            _os_log_impl(&dword_181A37000, v15, v18, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_25;
        }

        if (v19)
        {
          *buf = 136446210;
          v42 = "nw_endpoint_handler_get_mode";
          _os_log_impl(&dword_181A37000, v15, v18, "%{public}s called with null handler, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v15 = __nwlog_obj();
        v20 = type;
        if (os_log_type_enabled(v15, type))
        {
          *buf = 136446210;
          v42 = "nw_endpoint_handler_get_mode";
          _os_log_impl(&dword_181A37000, v15, v20, "%{public}s called with null handler, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_25:
    if (v14)
    {
      free(v14);
    }

    mode = 0;
    goto LABEL_28;
  }

  mode = v1->mode;

  if (mode == 1)
  {
    v4 = v2;
    v5 = *(v4 + 284);

    if ((v5 & 1) == 0)
    {
      v6 = nw_endpoint_handler_copy_resolver(v4);
      v7 = v4;
      os_unfair_lock_lock(&v7->lock);
      v8 = v7->current_path;
      os_unfair_lock_unlock(&v7->lock);

      v9 = *(v6 + 14);
      if (v9)
      {
        applier[0] = MEMORY[0x1E69E9820];
        applier[1] = 3221225472;
        applier[2] = ___ZL44nw_endpoint_resolver_remove_agent_assertionsP30NWConcrete_nw_endpoint_handler_block_invoke;
        applier[3] = &unk_1E6A3D300;
        v38 = v8;
        xpc_array_apply(v9, applier);
        v10 = *(v6 + 14);
        *(v6 + 14) = 0;
      }

      v11 = *(v6 + 15);
      if (v11)
      {
        v35[0] = MEMORY[0x1E69E9820];
        v35[1] = 3221225472;
        v35[2] = ___ZL44nw_endpoint_resolver_remove_agent_assertionsP30NWConcrete_nw_endpoint_handler_block_invoke_2;
        v35[3] = &unk_1E6A3D300;
        v36 = v6;
        xpc_array_apply(v11, v35);
        v12 = *(v6 + 15);
        *(v6 + 15) = 0;
      }
    }

    goto LABEL_49;
  }

LABEL_28:
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v21 = gLogObj;
  if (mode > 5)
  {
    v22 = "unknown-mode";
  }

  else
  {
    v22 = off_1E6A31018[mode];
  }

  *buf = 136446722;
  v42 = "nw_endpoint_resolver_remove_agent_assertions";
  v43 = 2082;
  v44 = v22;
  v45 = 2082;
  v46 = "resolver";
  LODWORD(v34) = 32;
  v23 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v21, 16, "%{public}s Handler is in mode %{public}s, expected %{public}s", buf, v34);

  type = OS_LOG_TYPE_ERROR;
  v39 = 0;
  if (!__nwlog_fault(v23, &type, &v39))
  {
LABEL_47:
    if (!v23)
    {
      goto LABEL_49;
    }

LABEL_48:
    free(v23);
    goto LABEL_49;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v24 = gLogObj;
    v25 = type;
    if (os_log_type_enabled(v24, type))
    {
      if (mode > 5)
      {
        v26 = "unknown-mode";
      }

      else
      {
        v26 = off_1E6A31018[mode];
      }

      *buf = 136446722;
      v42 = "nw_endpoint_resolver_remove_agent_assertions";
      v43 = 2082;
      v44 = v26;
      v45 = 2082;
      v46 = "resolver";
      _os_log_impl(&dword_181A37000, v24, v25, "%{public}s Handler is in mode %{public}s, expected %{public}s", buf, 0x20u);
    }

LABEL_46:

    goto LABEL_47;
  }

  if (v39 != 1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v24 = gLogObj;
    v31 = type;
    if (os_log_type_enabled(v24, type))
    {
      if (mode > 5)
      {
        v32 = "unknown-mode";
      }

      else
      {
        v32 = off_1E6A31018[mode];
      }

      *buf = 136446722;
      v42 = "nw_endpoint_resolver_remove_agent_assertions";
      v43 = 2082;
      v44 = v32;
      v45 = 2082;
      v46 = "resolver";
      _os_log_impl(&dword_181A37000, v24, v31, "%{public}s Handler is in mode %{public}s, expected %{public}s, backtrace limit exceeded", buf, 0x20u);
    }

    goto LABEL_46;
  }

  v27 = __nw_create_backtrace_string();
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v24 = gLogObj;
  v28 = type;
  v29 = os_log_type_enabled(v24, type);
  if (!v27)
  {
    if (v29)
    {
      if (mode > 5)
      {
        v33 = "unknown-mode";
      }

      else
      {
        v33 = off_1E6A31018[mode];
      }

      *buf = 136446722;
      v42 = "nw_endpoint_resolver_remove_agent_assertions";
      v43 = 2082;
      v44 = v33;
      v45 = 2082;
      v46 = "resolver";
      _os_log_impl(&dword_181A37000, v24, v28, "%{public}s Handler is in mode %{public}s, expected %{public}s, no backtrace", buf, 0x20u);
    }

    goto LABEL_46;
  }

  if (v29)
  {
    if (mode > 5)
    {
      v30 = "unknown-mode";
    }

    else
    {
      v30 = off_1E6A31018[mode];
    }

    *buf = 136446978;
    v42 = "nw_endpoint_resolver_remove_agent_assertions";
    v43 = 2082;
    v44 = v30;
    v45 = 2082;
    v46 = "resolver";
    v47 = 2082;
    v48 = v27;
    _os_log_impl(&dword_181A37000, v24, v28, "%{public}s Handler is in mode %{public}s, expected %{public}s, dumping backtrace:%{public}s", buf, 0x2Au);
  }

  free(v27);
  if (v23)
  {
    goto LABEL_48;
  }

LABEL_49:
}

uint64_t ___ZL35nw_endpoint_resolver_receive_reportP30NWConcrete_nw_endpoint_handler26nw_endpoint_handler_mode_t21nw_connection_state_tP27nw_endpoint_handler_event_sPU22objcproto11OS_nw_error8NSObjectPU23objcproto12OS_nw_objectS5__block_invoke_119(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = v4;
  if (*(a1 + 32) != v4)
  {
    nw_endpoint_handler_cancel(v4, 0, 0);
  }

  return 1;
}

uint64_t ___ZL44nw_endpoint_resolver_remove_agent_assertionsP30NWConcrete_nw_endpoint_handler_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  bytes = xpc_uuid_get_bytes(v4);
  nw_path_agent_action(*(a1 + 32), bytes, 132);

  return 1;
}

uint64_t ___ZL44nw_endpoint_resolver_remove_agent_assertionsP30NWConcrete_nw_endpoint_handler_block_invoke_2(uint64_t a1, int a2, xpc_object_t xstring)
{
  string_ptr = xpc_string_get_string_ptr(xstring);
  if (string_ptr)
  {
    v5 = string_ptr;
    v6 = nw_dictionary_copy_value(*(*(a1 + 32) + 80), string_ptr);
    v7 = v6;
    if (v6)
    {
      nw_path_flow_registration_close(v6);
      nw_dictionary_set_value(*(*(a1 + 32) + 80), v5, 0);
    }
  }

  return 1;
}

void *___ZL48nw_endpoint_resolver_update_path_resolver_lockedP30NWConcrete_nw_endpoint_handler_block_invoke_2(void *result, uint64_t a2)
{
  if (*(a2 + 212) == 204)
  {
    v2 = *(a2 + 416);
    if ((v2 & 8) != 0)
    {
      *(*(result[4] + 8) + 24) = 1;
      if ((v2 & 0x10) == 0)
      {
LABEL_4:
        if ((v2 & 0x20) == 0)
        {
          return result;
        }

        goto LABEL_5;
      }
    }

    else if ((v2 & 0x10) == 0)
    {
      goto LABEL_4;
    }

    *(*(result[5] + 8) + 24) = 1;
    if ((v2 & 0x20) == 0)
    {
      return result;
    }

LABEL_5:
    *(*(result[6] + 8) + 24) = 1;
  }

  return result;
}

uint64_t __nw_endpoint_resolver_get_details_block_invoke(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = nw_endpoint_handler_copy_endpoint(v5);
  if (nw_endpoint_get_type(v6) != nw_endpoint_type_address)
  {
    goto LABEL_9;
  }

  address_family = nw_endpoint_get_address_family(v6);
  if (address_family == 2)
  {
    v8 = 40;
  }

  else
  {
    if (address_family != 30)
    {
      goto LABEL_7;
    }

    v8 = 48;
  }

  ++**(a1 + v8);
LABEL_7:
  v9 = *(a1 + 56);
  if (!*v9)
  {
    *v9 = address_family;
  }

LABEL_9:
  if (*(*(a1 + 32) + 32) == v5)
  {
    **(a1 + 64) = a2;
  }

  return 1;
}

void ___ZL32nw_endpoint_handler_create_innerPU25objcproto14OS_nw_endpoint8NSObjectPU27objcproto16OS_nw_parametersS_PFbP30NWConcrete_nw_endpoint_handler26nw_endpoint_handler_mode_t21nw_connection_state_tP27nw_endpoint_handler_event_sPU22objcproto11OS_nw_errorS_PU23objcproto12OS_nw_objectS_ESD_S5_jPhb_block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  if (nw_protocol_options_is_quic(v6))
  {
    v3 = *(a1 + 32);
    v4 = nw_parameters_copy_context(*(a1 + 40));
    v5 = nw_context_copy_workloop(v4);
    nw_quic_connection_set_trusted_peer_keys(v6, v3, v5);
  }
}

NWConcrete_nw_endpoint_handler *nw_endpoint_handler_create_with_existing(void *a1, void *a2, void *a3, unsigned int a4, unsigned __int8 *a5)
{
  v159 = *MEMORY[0x1E69E9840];
  v9 = a1;
  v10 = a2;
  v139 = a3;
  v140 = v10;
  if (!v9)
  {
    v101 = __nwlog_obj();
    *buf = 136446210;
    v146 = "nw_endpoint_handler_create_with_existing";
    v102 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v101, 16, "%{public}s called with null original_endpoint_handler", buf, 12);

    v144 = OS_LOG_TYPE_ERROR;
    v143 = 0;
    if (!__nwlog_fault(v102, &v144, &v143))
    {
      goto LABEL_210;
    }

    if (v144 == OS_LOG_TYPE_FAULT)
    {
      v103 = __nwlog_obj();
      v104 = v144;
      if (os_log_type_enabled(v103, v144))
      {
        *buf = 136446210;
        v146 = "nw_endpoint_handler_create_with_existing";
        _os_log_impl(&dword_181A37000, v103, v104, "%{public}s called with null original_endpoint_handler", buf, 0xCu);
      }
    }

    else if (v143 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v103 = __nwlog_obj();
      v108 = v144;
      v109 = os_log_type_enabled(v103, v144);
      if (backtrace_string)
      {
        if (v109)
        {
          *buf = 136446466;
          v146 = "nw_endpoint_handler_create_with_existing";
          v147 = 2082;
          v148 = backtrace_string;
          _os_log_impl(&dword_181A37000, v103, v108, "%{public}s called with null original_endpoint_handler, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_210:
        if (!v102)
        {
          goto LABEL_84;
        }

LABEL_211:
        free(v102);
        goto LABEL_84;
      }

      if (v109)
      {
        *buf = 136446210;
        v146 = "nw_endpoint_handler_create_with_existing";
        _os_log_impl(&dword_181A37000, v103, v108, "%{public}s called with null original_endpoint_handler, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v103 = __nwlog_obj();
      v113 = v144;
      if (os_log_type_enabled(v103, v144))
      {
        *buf = 136446210;
        v146 = "nw_endpoint_handler_create_with_existing";
        _os_log_impl(&dword_181A37000, v103, v113, "%{public}s called with null original_endpoint_handler, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_209:

    goto LABEL_210;
  }

  if (!v10)
  {
    v105 = __nwlog_obj();
    *buf = 136446210;
    v146 = "nw_endpoint_handler_create_with_existing";
    v102 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v105, 16, "%{public}s called with null parameters", buf, 12);

    v144 = OS_LOG_TYPE_ERROR;
    v143 = 0;
    if (!__nwlog_fault(v102, &v144, &v143))
    {
      goto LABEL_210;
    }

    if (v144 == OS_LOG_TYPE_FAULT)
    {
      v103 = __nwlog_obj();
      v106 = v144;
      if (os_log_type_enabled(v103, v144))
      {
        *buf = 136446210;
        v146 = "nw_endpoint_handler_create_with_existing";
        _os_log_impl(&dword_181A37000, v103, v106, "%{public}s called with null parameters", buf, 0xCu);
      }
    }

    else if (v143 == 1)
    {
      v110 = __nw_create_backtrace_string();
      v103 = __nwlog_obj();
      v111 = v144;
      v112 = os_log_type_enabled(v103, v144);
      if (v110)
      {
        if (v112)
        {
          *buf = 136446466;
          v146 = "nw_endpoint_handler_create_with_existing";
          v147 = 2082;
          v148 = v110;
          _os_log_impl(&dword_181A37000, v103, v111, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v110);
        if (!v102)
        {
          goto LABEL_84;
        }

        goto LABEL_211;
      }

      if (v112)
      {
        *buf = 136446210;
        v146 = "nw_endpoint_handler_create_with_existing";
        _os_log_impl(&dword_181A37000, v103, v111, "%{public}s called with null parameters, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v103 = __nwlog_obj();
      v114 = v144;
      if (os_log_type_enabled(v103, v144))
      {
        *buf = 136446210;
        v146 = "nw_endpoint_handler_create_with_existing";
        _os_log_impl(&dword_181A37000, v103, v114, "%{public}s called with null parameters, backtrace limit exceeded", buf, 0xCu);
      }
    }

    goto LABEL_209;
  }

  if (v9[29] == 2)
  {
    v11 = nw_endpoint_flow_copy_joinable_clone_handler(v9, v10);
    p_isa = &v11->super.isa;
    if (v11 && v11->mode == 2)
    {
      obj = v11->mode_handler;
      log = obj;
      v13 = nw_endpoint_handler_copy_connected_flow_handler(v9);
      v133 = v13;
      if (v13)
      {
        v14 = v13->parameters;
        v134 = nw_parameters_copy_effective_proxy_config(v14);
        v15 = _nw_parameters_copy_effective_proxy_config(v10);
        v130 = v15;
        if (!v15 || (v16 = v15, v17 = v16[172], v16, (v17 & 2) != 0))
        {
          if (v134)
          {
            v18 = _nw_parameters_copy_default_protocol_stack();
            options = nw_protocol_stack_copy_transport_protocol(v18);
            v19 = nw_protocol_stack_copy_internet_protocol(v18);
            v20 = v134;
            v21 = v20[38];

            if (v21 != 1)
            {
LABEL_124:

              goto LABEL_139;
            }

            *buf = 4;
            nw_proxy_config_remove_protocols_from_stack(v20, v18);
            v22 = nw_protocol_options_copy_definition(options);
            v23 = nw_proxy_config_copy_protocol_stack(v20, v22, buf);

            v24 = v23;
            if (!v23)
            {
LABEL_123:

              goto LABEL_124;
            }

            if (*buf == 2)
            {
              nw_protocol_stack_append_application_protocol(v18, options);
              v25 = v19;
            }

            else
            {
              v25 = options;
              if (*buf != 3)
              {
                goto LABEL_120;
              }
            }

            nw_protocol_stack_append_application_protocol(v18, v25);
LABEL_120:
            iterate_block[0] = MEMORY[0x1E69E9820];
            iterate_block[1] = 3221225472;
            iterate_block[2] = __nw_endpoint_handler_create_with_existing_block_invoke;
            iterate_block[3] = &unk_1E6A3A230;
            v76 = v18;
            v142 = v76;
            nw_protocol_stack_iterate_application_protocols(v23, iterate_block);
            v77 = _nw_protocol_stack_copy_transport_protocol();
            if (v77)
            {
              nw_protocol_stack_set_original_proxied_transport_protocol(v76);
              nw_protocol_stack_set_transport_protocol(v76, v77);
            }

            v24 = v23;
            goto LABEL_123;
          }
        }

        if ((v9[71] & 0x40) != 0)
        {
LABEL_140:

          goto LABEL_141;
        }

        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v18 = gconnectionLogObj;
        if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
LABEL_139:

          goto LABEL_140;
        }

        if (v9[71])
        {
          v53 = "dry-run ";
        }

        else
        {
          v53 = "";
        }

        v54 = nw_endpoint_handler_copy_endpoint(v9);
        v55 = v54;
        if (v54)
        {
          logging_description = _nw_endpoint_get_logging_description(v54);
        }

        else
        {
          logging_description = "<NULL>";
        }

        v69 = v9[30];
        if (v69 > 5)
        {
          v70 = "unknown-state";
        }

        else
        {
          v70 = off_1E6A31048[v69];
        }

        v125 = v70;
        v71 = v9;
        v72 = v71;
        v73 = v9[29];
        v126 = v14;
        optionsb = v55;
        if (v73 > 2)
        {
          switch(v73)
          {
            case 3:
              v74 = p_isa;
              v75 = "proxy";
              break;
            case 4:
              v74 = p_isa;
              v75 = "fallback";
              break;
            case 5:
              v74 = p_isa;
              v75 = "transform";
              break;
            default:
LABEL_134:
              v74 = p_isa;
              v75 = "unknown-mode";
              break;
          }
        }

        else
        {
          if (v73)
          {
            if (v73 == 1)
            {
              v74 = p_isa;
              v75 = "resolver";
              goto LABEL_137;
            }

            if (v73 == 2)
            {
              v74 = p_isa;
              v124 = nw_endpoint_flow_mode_string(*(v71 + 33));
LABEL_138:

              v80 = v72;
              os_unfair_lock_lock(v72 + 28);
              v81 = v80[8];
              os_unfair_lock_unlock(v72 + 28);

              *buf = 136447746;
              v146 = "nw_endpoint_handler_create_with_existing";
              v147 = 2082;
              v148 = (v9 + 46);
              v149 = 2082;
              v150 = v53;
              v151 = 2082;
              v152 = logging_description;
              v153 = 2082;
              v154 = v125;
              v155 = 2082;
              v156 = v124;
              v157 = 2114;
              v158 = v81;
              _os_log_impl(&dword_181A37000, v18, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] not applying effective proxy config", buf, 0x48u);

              p_isa = v74;
              v14 = v126;

              goto LABEL_139;
            }

            goto LABEL_134;
          }

          v74 = p_isa;
          v75 = "path";
        }

LABEL_137:
        v124 = v75;
        goto LABEL_138;
      }

      if ((v9[71] & 0x40) != 0)
      {
        goto LABEL_142;
      }

      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v14 = gconnectionLogObj;
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
LABEL_141:

        v10 = v140;
LABEL_142:
        v82 = [[NWConcrete_nw_endpoint_handler alloc] initWithEndpoint:v10 parameters:nw_connection_endpoint_report_on_nw_queue reportCallback:v139 context:0 parent:a4 identifier:a5 connection_uuid:?];
        v59 = v82;
        v83 = p_isa;
        if (v82)
        {
          v82->mode = 2;
          parent_handler = v82->parent_handler;
          v85 = *(log + 32);
          v86 = objc_alloc_init(NWConcrete_nw_endpoint_flow);
          v87 = v85 & 2;
          if (!parent_handler)
          {
            ++v87;
          }

          *(v86 + 32) = v87 | *(v86 + 32) & 0xFC;
          *v86->connection_uuid = *v59->connection_uuid;
          mode_handler = v59->mode_handler;
          v59->mode_handler = v86;

          p_isa = v83;
          v89 = v59->mode_handler;
          v90 = log;
          if (v89)
          {
            objc_storeStrong(v89 + 5, obj);
LABEL_147:

            v91 = v59;
LABEL_167:

            goto LABEL_168;
          }

          v115 = __nwlog_obj();
          *buf = 136446210;
          v146 = "nw_endpoint_flow_set_clone_flow";
          v116 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v115, 16, "%{public}s called with null endpoint_flow", buf, 12);

          v144 = OS_LOG_TYPE_ERROR;
          v143 = 0;
          if (__nwlog_fault(v116, &v144, &v143))
          {
            if (v144 == OS_LOG_TYPE_FAULT)
            {
              v117 = __nwlog_obj();
              v118 = v144;
              if (os_log_type_enabled(v117, v144))
              {
                *buf = 136446210;
                v146 = "nw_endpoint_flow_set_clone_flow";
                _os_log_impl(&dword_181A37000, v117, v118, "%{public}s called with null endpoint_flow", buf, 0xCu);
              }
            }

            else
            {
              if (v143 == 1)
              {
                v119 = __nw_create_backtrace_string();
                v120 = __nwlog_obj();
                v121 = v144;
                v122 = os_log_type_enabled(v120, v144);
                if (v119)
                {
                  if (v122)
                  {
                    *buf = 136446466;
                    v146 = "nw_endpoint_flow_set_clone_flow";
                    v147 = 2082;
                    v148 = v119;
                    _os_log_impl(&dword_181A37000, v120, v121, "%{public}s called with null endpoint_flow, dumping backtrace:%{public}s", buf, 0x16u);
                  }

                  free(v119);
                }

                else
                {
                  if (v122)
                  {
                    *buf = 136446210;
                    v146 = "nw_endpoint_flow_set_clone_flow";
                    _os_log_impl(&dword_181A37000, v120, v121, "%{public}s called with null endpoint_flow, no backtrace", buf, 0xCu);
                  }
                }

                goto LABEL_223;
              }

              v117 = __nwlog_obj();
              v123 = v144;
              if (os_log_type_enabled(v117, v144))
              {
                *buf = 136446210;
                v146 = "nw_endpoint_flow_set_clone_flow";
                _os_log_impl(&dword_181A37000, v117, v123, "%{public}s called with null endpoint_flow, backtrace limit exceeded", buf, 0xCu);
              }
            }
          }

LABEL_223:
          if (v116)
          {
            free(v116);
          }

          p_isa = v83;
          goto LABEL_147;
        }

        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v92 = gLogObj;
        *buf = 136446210;
        v146 = "nw_endpoint_handler_create_with_existing";
        v93 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v92, 16, "%{public}s [nw_endpoint_handler initWithEndpoint:parameters:] failed", buf, 12);

        p_isa = v83;
        v144 = OS_LOG_TYPE_ERROR;
        v143 = 0;
        if (__nwlog_fault(v93, &v144, &v143))
        {
          if (v144 == OS_LOG_TYPE_FAULT)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v94 = gLogObj;
            v95 = v144;
            if (os_log_type_enabled(v94, v144))
            {
              *buf = 136446210;
              v146 = "nw_endpoint_handler_create_with_existing";
              _os_log_impl(&dword_181A37000, v94, v95, "%{public}s [nw_endpoint_handler initWithEndpoint:parameters:] failed", buf, 0xCu);
            }
          }

          else if (v143 == 1)
          {
            v96 = __nw_create_backtrace_string();
            v94 = __nwlog_obj();
            v97 = v144;
            v98 = os_log_type_enabled(v94, v144);
            if (v96)
            {
              if (v98)
              {
                *buf = 136446466;
                v146 = "nw_endpoint_handler_create_with_existing";
                v147 = 2082;
                v148 = v96;
                _os_log_impl(&dword_181A37000, v94, v97, "%{public}s [nw_endpoint_handler initWithEndpoint:parameters:] failed, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(v96);
              if (!v93)
              {
                goto LABEL_167;
              }

              goto LABEL_166;
            }

            if (v98)
            {
              *buf = 136446210;
              v146 = "nw_endpoint_handler_create_with_existing";
              _os_log_impl(&dword_181A37000, v94, v97, "%{public}s [nw_endpoint_handler initWithEndpoint:parameters:] failed, no backtrace", buf, 0xCu);
            }
          }

          else
          {
            v94 = __nwlog_obj();
            v99 = v144;
            if (os_log_type_enabled(v94, v144))
            {
              *buf = 136446210;
              v146 = "nw_endpoint_handler_create_with_existing";
              _os_log_impl(&dword_181A37000, v94, v99, "%{public}s [nw_endpoint_handler initWithEndpoint:parameters:] failed, backtrace limit exceeded", buf, 0xCu);
            }
          }
        }

        if (!v93)
        {
          goto LABEL_167;
        }

LABEL_166:
        free(v93);
        goto LABEL_167;
      }

      if (v9[71])
      {
        v49 = "dry-run ";
      }

      else
      {
        v49 = "";
      }

      v50 = nw_endpoint_handler_copy_endpoint(v9);
      v51 = v50;
      if (v50)
      {
        v52 = _nw_endpoint_get_logging_description(v50);
      }

      else
      {
        v52 = "<NULL>";
      }

      v62 = v9[30];
      if (v62 > 5)
      {
        v63 = "unknown-state";
      }

      else
      {
        v63 = off_1E6A31048[v62];
      }

      v131 = v63;
      v64 = v9;
      v65 = v64;
      v66 = v9[29];
      v136 = p_isa;
      if (v66 > 2)
      {
        switch(v66)
        {
          case 3:
            v67 = v52;
            v68 = "proxy";
            break;
          case 4:
            v67 = v52;
            v68 = "fallback";
            break;
          case 5:
            v67 = v52;
            v68 = "transform";
            break;
          default:
LABEL_127:
            v67 = v52;
            v68 = "unknown-mode";
            break;
        }
      }

      else
      {
        if (v66)
        {
          if (v66 == 1)
          {
            v67 = v52;
            v68 = "resolver";
            goto LABEL_130;
          }

          if (v66 == 2)
          {
            v67 = v52;
            optionsa = nw_endpoint_flow_mode_string(*(v64 + 33));
LABEL_131:

            v78 = v65;
            os_unfair_lock_lock(v65 + 28);
            v79 = v78[8];
            os_unfair_lock_unlock(v65 + 28);

            *buf = 136447746;
            v146 = "nw_endpoint_handler_create_with_existing";
            v147 = 2082;
            v148 = (v9 + 46);
            v149 = 2082;
            v150 = v49;
            v151 = 2082;
            v152 = v67;
            v153 = 2082;
            v154 = v131;
            v155 = 2082;
            v156 = optionsa;
            v157 = 2114;
            v158 = v79;
            _os_log_impl(&dword_181A37000, v14, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] no connected handler, not checking for effective proxy config", buf, 0x48u);

            p_isa = v136;
            goto LABEL_141;
          }

          goto LABEL_127;
        }

        v67 = v52;
        v68 = "path";
      }

LABEL_130:
      optionsa = v68;
      goto LABEL_131;
    }

    if ((v9[71] & 0x40) != 0)
    {
      v59 = 0;
      goto LABEL_169;
    }

    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    log = gconnectionLogObj;
    if (!os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
LABEL_91:
      v59 = 0;
LABEL_168:

LABEL_169:
      goto LABEL_170;
    }

    if (v9[71])
    {
      v31 = "dry-run ";
    }

    else
    {
      v31 = "";
    }

    v32 = nw_endpoint_handler_copy_endpoint(v9);
    v33 = v32;
    if (v32)
    {
      v34 = _nw_endpoint_get_logging_description(v32);
    }

    else
    {
      v34 = "<NULL>";
    }

    v43 = v9[30];
    if (v43 > 5)
    {
      v44 = "unknown-state";
    }

    else
    {
      v44 = off_1E6A31048[v43];
    }

    v45 = v9;
    v46 = v45;
    v47 = v9[29];
    v135 = p_isa;
    if (v47 > 2)
    {
      switch(v47)
      {
        case 3:
          v48 = "proxy";
          goto LABEL_90;
        case 4:
          v48 = "fallback";
          goto LABEL_90;
        case 5:
          v48 = "transform";
          goto LABEL_90;
      }
    }

    else
    {
      switch(v47)
      {
        case 0:
          v48 = "path";
          goto LABEL_90;
        case 1:
          v48 = "resolver";
          goto LABEL_90;
        case 2:
          v48 = nw_endpoint_flow_mode_string(*(v45 + 33));
LABEL_90:

          v60 = v46;
          os_unfair_lock_lock(v46 + 28);
          v61 = v60[8];
          os_unfair_lock_unlock(v46 + 28);

          *buf = 136447746;
          v146 = "nw_endpoint_handler_create_with_existing";
          v147 = 2082;
          v148 = (v9 + 46);
          v149 = 2082;
          v150 = v31;
          v151 = 2082;
          v152 = v34;
          v153 = 2082;
          v154 = v44;
          v155 = 2082;
          v156 = v48;
          v157 = 2114;
          v158 = v61;
          _os_log_impl(&dword_181A37000, log, OS_LOG_TYPE_ERROR, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Could not find joinable endpoint flow to clone from", buf, 0x48u);

          p_isa = v135;
          goto LABEL_91;
      }
    }

    v48 = "unknown-mode";
    goto LABEL_90;
  }

  if ((v9[71] & 0x40) == 0)
  {
    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v26 = gconnectionLogObj;
    if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_83;
    }

    if (v9[71])
    {
      v27 = "dry-run ";
    }

    else
    {
      v27 = "";
    }

    v28 = nw_endpoint_handler_copy_endpoint(v9);
    v29 = v28;
    if (v28)
    {
      v30 = _nw_endpoint_get_logging_description(v28);
    }

    else
    {
      v30 = "<NULL>";
    }

    v35 = (v9 + 46);

    v36 = v9[30];
    if (v36 > 5)
    {
      v37 = "unknown-state";
    }

    else
    {
      v37 = off_1E6A31048[v36];
    }

    v38 = v9;
    v39 = v38;
    v40 = v9[29];
    v137 = v9;
    if (v40 > 2)
    {
      switch(v40)
      {
        case 3:
          v41 = v27;
          v42 = "proxy";
          goto LABEL_82;
        case 4:
          v41 = v27;
          v42 = "fallback";
          goto LABEL_82;
        case 5:
          v41 = v27;
          v42 = "transform";
          goto LABEL_82;
      }
    }

    else
    {
      switch(v40)
      {
        case 0:
          v41 = v27;
          v42 = "path";
          goto LABEL_82;
        case 1:
          v41 = v27;
          v42 = "resolver";
          goto LABEL_82;
        case 2:
          v41 = v27;
          v42 = nw_endpoint_flow_mode_string(*(v38 + 33));
LABEL_82:

          v57 = v39;
          os_unfair_lock_lock(v39 + 28);
          v58 = v57[8];
          os_unfair_lock_unlock(v39 + 28);

          *buf = 136447746;
          v146 = "nw_endpoint_handler_create_with_existing";
          v147 = 2082;
          v148 = v35;
          v149 = 2082;
          v150 = v41;
          v151 = 2082;
          v152 = v30;
          v153 = 2082;
          v154 = v37;
          v155 = 2082;
          v156 = v42;
          v157 = 2114;
          v158 = v58;
          _os_log_impl(&dword_181A37000, v26, OS_LOG_TYPE_ERROR, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Existing endpoint handler not eligible for peel-off", buf, 0x48u);

          v9 = v137;
LABEL_83:

          goto LABEL_84;
      }
    }

    v41 = v27;
    v42 = "unknown-mode";
    goto LABEL_82;
  }

LABEL_84:
  v59 = 0;
LABEL_170:

  return v59;
}

void __nw_endpoint_handler_create_with_existing_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = nw_protocol_options_copy(a2);
  nw_protocol_stack_append_application_protocol(v2, v3);
}

void nw_endpoint_handler_set_minimize_logging(void *a1)
{
  v1 = a1;
  v1[284] |= 0x20u;
}

void nw_endpoint_handler_reinitialize(void *a1, void *a2, void *a3)
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = v7;
  if (!v5)
  {
    v9 = __nwlog_obj();
    *buf = 136446210;
    v31 = "nw_endpoint_handler_reinitialize";
    v10 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v9, 16, "%{public}s called with null handler", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v28 = 0;
    if (!__nwlog_fault(v10, &type, &v28))
    {
      goto LABEL_55;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v11 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v31 = "nw_endpoint_handler_reinitialize";
        _os_log_impl(&dword_181A37000, v11, v12, "%{public}s called with null handler", buf, 0xCu);
      }
    }

    else if (v28 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v11 = __nwlog_obj();
      v18 = type;
      v19 = os_log_type_enabled(v11, type);
      if (backtrace_string)
      {
        if (v19)
        {
          *buf = 136446466;
          v31 = "nw_endpoint_handler_reinitialize";
          v32 = 2082;
          v33 = backtrace_string;
          _os_log_impl(&dword_181A37000, v11, v18, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_55:
        if (!v10)
        {
          goto LABEL_5;
        }

LABEL_56:
        free(v10);
        goto LABEL_5;
      }

      if (v19)
      {
        *buf = 136446210;
        v31 = "nw_endpoint_handler_reinitialize";
        _os_log_impl(&dword_181A37000, v11, v18, "%{public}s called with null handler, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v11 = __nwlog_obj();
      v25 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v31 = "nw_endpoint_handler_reinitialize";
        _os_log_impl(&dword_181A37000, v11, v25, "%{public}s called with null handler, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_54:

    goto LABEL_55;
  }

  if (!v7)
  {
    v13 = __nwlog_obj();
    *buf = 136446210;
    v31 = "nw_endpoint_handler_reinitialize";
    v10 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v13, 16, "%{public}s called with null parameters", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v28 = 0;
    if (!__nwlog_fault(v10, &type, &v28))
    {
      goto LABEL_55;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v11 = __nwlog_obj();
      v14 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v31 = "nw_endpoint_handler_reinitialize";
        _os_log_impl(&dword_181A37000, v11, v14, "%{public}s called with null parameters", buf, 0xCu);
      }

      goto LABEL_54;
    }

    if (v28 != 1)
    {
      v11 = __nwlog_obj();
      v26 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v31 = "nw_endpoint_handler_reinitialize";
        _os_log_impl(&dword_181A37000, v11, v26, "%{public}s called with null parameters, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_54;
    }

    v20 = __nw_create_backtrace_string();
    v11 = __nwlog_obj();
    v21 = type;
    v22 = os_log_type_enabled(v11, type);
    if (!v20)
    {
      if (v22)
      {
        *buf = 136446210;
        v31 = "nw_endpoint_handler_reinitialize";
        _os_log_impl(&dword_181A37000, v11, v21, "%{public}s called with null parameters, no backtrace", buf, 0xCu);
      }

      goto LABEL_54;
    }

    if (v22)
    {
      *buf = 136446466;
      v31 = "nw_endpoint_handler_reinitialize";
      v32 = 2082;
      v33 = v20;
      _os_log_impl(&dword_181A37000, v11, v21, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_35;
  }

  if (v5->parameters)
  {
    v15 = __nwlog_obj();
    *buf = 136446210;
    v31 = "nw_endpoint_handler_reinitialize";
    v10 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v15, 16, "%{public}s called with null (handler->parameters == nil)", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v28 = 0;
    if (!__nwlog_fault(v10, &type, &v28))
    {
      goto LABEL_55;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v11 = __nwlog_obj();
      v16 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v31 = "nw_endpoint_handler_reinitialize";
        _os_log_impl(&dword_181A37000, v11, v16, "%{public}s called with null (handler->parameters == nil)", buf, 0xCu);
      }

      goto LABEL_54;
    }

    if (v28 != 1)
    {
      v11 = __nwlog_obj();
      v27 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v31 = "nw_endpoint_handler_reinitialize";
        _os_log_impl(&dword_181A37000, v11, v27, "%{public}s called with null (handler->parameters == nil), backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_54;
    }

    v20 = __nw_create_backtrace_string();
    v11 = __nwlog_obj();
    v23 = type;
    v24 = os_log_type_enabled(v11, type);
    if (!v20)
    {
      if (v24)
      {
        *buf = 136446210;
        v31 = "nw_endpoint_handler_reinitialize";
        _os_log_impl(&dword_181A37000, v11, v23, "%{public}s called with null (handler->parameters == nil), no backtrace", buf, 0xCu);
      }

      goto LABEL_54;
    }

    if (v24)
    {
      *buf = 136446466;
      v31 = "nw_endpoint_handler_reinitialize";
      v32 = 2082;
      v33 = v20;
      _os_log_impl(&dword_181A37000, v11, v23, "%{public}s called with null (handler->parameters == nil), dumping backtrace:%{public}s", buf, 0x16u);
    }

LABEL_35:

    free(v20);
    if (!v10)
    {
      goto LABEL_5;
    }

    goto LABEL_56;
  }

  objc_storeStrong(&v5->parameters, a3);
  nw_endpoint_handler_inherit_from_parent(v5, v6, 0, v5->connection_uuid);
  objc_storeWeak(&v5->callback_context, v6);
  v5->state = 0;
LABEL_5:
}

uint64_t __nw_endpoint_handler_fillout_data_transfer_snapshot_block_invoke(uint64_t a1, void *a2)
{
  v3 = nw_endpoint_handler_fillout_data_transfer_snapshot(a2, *(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64));
  if (v3)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }

  return v3 ^ 1u;
}

uint64_t __nw_endpoint_handler_fillout_tcp_info_block_invoke(uint64_t a1, void *a2)
{
  v3 = nw_endpoint_handler_fillout_tcp_info(a2, *(a1 + 40));
  if (v3)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }

  return v3 ^ 1u;
}

uint64_t nw_endpoint_handler_fillout_tcp_connection_info(void *a1, _OWORD *a2)
{
  v56 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (v3)
  {
    *type = 0;
    v48 = type;
    v49 = 0x2020000000;
    v50 = 0;
    os_unfair_lock_lock(v3 + 28);
    v5 = *&v4[66]._os_unfair_lock_opaque;
    if (v4[29]._os_unfair_lock_opaque != 2)
    {
      v46[0] = MEMORY[0x1E69E9820];
      v46[1] = 3221225472;
      v46[2] = __nw_endpoint_handler_fillout_tcp_connection_info_block_invoke;
      v46[3] = &unk_1E6A30E60;
      v46[4] = type;
      v46[5] = a2;
      [v5 applyWithHandler:v4 toChildren:v46];
      goto LABEL_9;
    }

    v6 = v5;
    v7 = v6;
    if (v6)
    {
      os_unfair_lock_lock(v6 + 220);
      v8 = *&v7[200]._os_unfair_lock_opaque;
      if (v8)
      {
        v9 = *v8;
        v10 = v8[2];
        a2[1] = v8[1];
        a2[2] = v10;
        *a2 = v9;
        v11 = v8[3];
        v12 = v8[4];
        v13 = v8[6];
        a2[5] = v8[5];
        a2[6] = v13;
        a2[3] = v11;
        a2[4] = v12;
        fd = 1;
      }

      else
      {
        v17 = *&v7[102]._os_unfair_lock_opaque;
        if (v17 && (v18 = *(v17 + 24)) != 0 && (v19 = *(v18 + 224)) != 0)
        {
          *v51 = 0;
          v20 = v19();
          if (v20)
          {
            fd = *v51 == 112;
            if (*v51 == 112)
            {
              v21 = *v20;
              v22 = v20[2];
              a2[1] = v20[1];
              a2[2] = v22;
              *a2 = v21;
              v23 = v20[3];
              v24 = v20[4];
              v25 = v20[6];
              a2[5] = v20[5];
              a2[6] = v25;
              a2[3] = v23;
              a2[4] = v24;
            }

            free(v20);
          }

          else
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v29 = gLogObj;
            if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136446210;
              *&buf[4] = "nw_endpoint_flow_fillout_tcp_connection_info";
              _os_log_impl(&dword_181A37000, v29, OS_LOG_TYPE_DEBUG, "%{public}s copy_info() returned NULL", buf, 0xCu);
            }

            fd = 0;
          }
        }

        else
        {
          v26 = *&v7[222]._os_unfair_lock_opaque;
          if ((v7[8]._os_unfair_lock_opaque & 2) == 0)
          {
            v27 = *&v7[234]._os_unfair_lock_opaque;
            if (v27)
            {
              v28 = nw_endpoint_handler_copy_connected_socket_wrapper(v27);

              v26 = v28;
            }
          }

          if (v26)
          {
            *buf = MEMORY[0x1E69E9820];
            *&buf[8] = 3221225472;
            *&buf[16] = __nw_endpoint_flow_fillout_tcp_connection_info_block_invoke;
            v54 = &__block_descriptor_40_e8_B12__0i8l;
            v55 = a2;
            fd = nw_fd_wrapper_get_fd(v26, buf);
          }

          else
          {
            fd = 0;
          }
        }
      }

      os_unfair_lock_unlock(v7 + 220);
LABEL_7:

      *(v48 + 24) = fd;
LABEL_9:
      os_unfair_lock_unlock(v4 + 28);
      v15 = *(v48 + 24);
      _Block_object_dispose(type, 8);
      goto LABEL_10;
    }

    v34 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_endpoint_flow_fillout_tcp_connection_info";
    v35 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v34, 16, "%{public}s called with null endpoint_flow", buf, 12);

    v51[0] = OS_LOG_TYPE_ERROR;
    v52 = 0;
    if (__nwlog_fault(v35, v51, &v52))
    {
      if (v51[0] == OS_LOG_TYPE_FAULT)
      {
        v36 = __nwlog_obj();
        v37 = v51[0];
        if (os_log_type_enabled(v36, v51[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_endpoint_flow_fillout_tcp_connection_info";
          _os_log_impl(&dword_181A37000, v36, v37, "%{public}s called with null endpoint_flow", buf, 0xCu);
        }
      }

      else if (v52 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v36 = __nwlog_obj();
        v43 = v51[0];
        v44 = os_log_type_enabled(v36, v51[0]);
        if (backtrace_string)
        {
          if (v44)
          {
            *buf = 136446466;
            *&buf[4] = "nw_endpoint_flow_fillout_tcp_connection_info";
            *&buf[12] = 2082;
            *&buf[14] = backtrace_string;
            _os_log_impl(&dword_181A37000, v36, v43, "%{public}s called with null endpoint_flow, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_63;
        }

        if (v44)
        {
          *buf = 136446210;
          *&buf[4] = "nw_endpoint_flow_fillout_tcp_connection_info";
          _os_log_impl(&dword_181A37000, v36, v43, "%{public}s called with null endpoint_flow, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v36 = __nwlog_obj();
        v45 = v51[0];
        if (os_log_type_enabled(v36, v51[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_endpoint_flow_fillout_tcp_connection_info";
          _os_log_impl(&dword_181A37000, v36, v45, "%{public}s called with null endpoint_flow, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_63:
    if (v35)
    {
      free(v35);
    }

    fd = 0;
    goto LABEL_7;
  }

  v30 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_endpoint_handler_fillout_tcp_connection_info";
  v31 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v30, 16, "%{public}s called with null handler", buf, 12);

  type[0] = OS_LOG_TYPE_ERROR;
  v51[0] = OS_LOG_TYPE_DEFAULT;
  if (__nwlog_fault(v31, type, v51))
  {
    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v32 = __nwlog_obj();
      v33 = type[0];
      if (os_log_type_enabled(v32, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_endpoint_handler_fillout_tcp_connection_info";
        _os_log_impl(&dword_181A37000, v32, v33, "%{public}s called with null handler", buf, 0xCu);
      }
    }

    else if (v51[0] == OS_LOG_TYPE_INFO)
    {
      v38 = __nw_create_backtrace_string();
      v32 = __nwlog_obj();
      v39 = type[0];
      v40 = os_log_type_enabled(v32, type[0]);
      if (v38)
      {
        if (v40)
        {
          *buf = 136446466;
          *&buf[4] = "nw_endpoint_handler_fillout_tcp_connection_info";
          *&buf[12] = 2082;
          *&buf[14] = v38;
          _os_log_impl(&dword_181A37000, v32, v39, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v38);
        goto LABEL_57;
      }

      if (v40)
      {
        *buf = 136446210;
        *&buf[4] = "nw_endpoint_handler_fillout_tcp_connection_info";
        _os_log_impl(&dword_181A37000, v32, v39, "%{public}s called with null handler, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v32 = __nwlog_obj();
      v41 = type[0];
      if (os_log_type_enabled(v32, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_endpoint_handler_fillout_tcp_connection_info";
        _os_log_impl(&dword_181A37000, v32, v41, "%{public}s called with null handler, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_57:
  if (v31)
  {
    free(v31);
  }

  v15 = 0;
LABEL_10:

  return v15 & 1;
}

void sub_182589E48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __nw_endpoint_handler_fillout_tcp_connection_info_block_invoke(uint64_t a1, void *a2)
{
  v3 = nw_endpoint_handler_fillout_tcp_connection_info(a2, *(a1 + 40));
  if (v3)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }

  return v3 ^ 1u;
}

BOOL nw_endpoint_handler_fillout_route_stats(void *a1, uint64_t a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (!v3)
  {
    v9 = __nwlog_obj();
    *buf = 136446210;
    v26 = "nw_endpoint_handler_fillout_route_stats";
    v10 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v9, 16, "%{public}s called with null handler", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v23 = 0;
    if (!__nwlog_fault(v10, &type, &v23))
    {
      goto LABEL_38;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v11 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v26 = "nw_endpoint_handler_fillout_route_stats";
        _os_log_impl(&dword_181A37000, v11, v12, "%{public}s called with null handler", buf, 0xCu);
      }

      goto LABEL_37;
    }

    if (v23 != 1)
    {
      v11 = __nwlog_obj();
      v20 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v26 = "nw_endpoint_handler_fillout_route_stats";
        _os_log_impl(&dword_181A37000, v11, v20, "%{public}s called with null handler, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_37;
    }

    backtrace_string = __nw_create_backtrace_string();
    v11 = __nwlog_obj();
    v16 = type;
    v17 = os_log_type_enabled(v11, type);
    if (!backtrace_string)
    {
      if (v17)
      {
        *buf = 136446210;
        v26 = "nw_endpoint_handler_fillout_route_stats";
        _os_log_impl(&dword_181A37000, v11, v16, "%{public}s called with null handler, no backtrace", buf, 0xCu);
      }

      goto LABEL_37;
    }

    if (v17)
    {
      *buf = 136446466;
      v26 = "nw_endpoint_handler_fillout_route_stats";
      v27 = 2082;
      v28 = backtrace_string;
      _os_log_impl(&dword_181A37000, v11, v16, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_25;
  }

  if (!a2)
  {
    v13 = __nwlog_obj();
    *buf = 136446210;
    v26 = "nw_endpoint_handler_fillout_route_stats";
    v10 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v13, 16, "%{public}s called with null stats", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v23 = 0;
    if (!__nwlog_fault(v10, &type, &v23))
    {
      goto LABEL_38;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v11 = __nwlog_obj();
      v14 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v26 = "nw_endpoint_handler_fillout_route_stats";
        _os_log_impl(&dword_181A37000, v11, v14, "%{public}s called with null stats", buf, 0xCu);
      }

LABEL_37:

LABEL_38:
      if (v10)
      {
        free(v10);
      }

      goto LABEL_40;
    }

    if (v23 != 1)
    {
      v11 = __nwlog_obj();
      v21 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v26 = "nw_endpoint_handler_fillout_route_stats";
        _os_log_impl(&dword_181A37000, v11, v21, "%{public}s called with null stats, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_37;
    }

    backtrace_string = __nw_create_backtrace_string();
    v11 = __nwlog_obj();
    v18 = type;
    v19 = os_log_type_enabled(v11, type);
    if (!backtrace_string)
    {
      if (v19)
      {
        *buf = 136446210;
        v26 = "nw_endpoint_handler_fillout_route_stats";
        _os_log_impl(&dword_181A37000, v11, v18, "%{public}s called with null stats, no backtrace", buf, 0xCu);
      }

      goto LABEL_37;
    }

    if (v19)
    {
      *buf = 136446466;
      v26 = "nw_endpoint_handler_fillout_route_stats";
      v27 = 2082;
      v28 = backtrace_string;
      _os_log_impl(&dword_181A37000, v11, v18, "%{public}s called with null stats, dumping backtrace:%{public}s", buf, 0x16u);
    }

LABEL_25:

    free(backtrace_string);
    goto LABEL_38;
  }

  nw_endpoint_handler_initialize_association(v3);
  v5 = *(v4 + 7);
  if (!v5 || (v6 = nw_association_copy_current_path(v5, *(v4 + 4)), (v7 = v6) == 0))
  {
LABEL_40:
    v8 = 0;
    goto LABEL_41;
  }

  v8 = nw_path_fillout_route_stats(v6, a2, 0);

LABEL_41:
  return v8;
}

BOOL nw_endpoint_handler_triggered_agents_updated(NWConcrete_nw_endpoint_handler *a1)
{
  v163 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  p_triggered_agent_uuids = &v1->triggered_agent_uuids;
  if (v1->triggered_agent_uuids)
  {
    if (v1->inactive_agent_path)
    {
      v4 = nw_path_copy_inactive_agent_uuids(v1->current_path, 0);
      log = v4;
      if (v4 && xpc_array_get_count(v4))
      {
        v5 = xpc_array_create(0, 0);
        if (v5)
        {
          v6 = v2->inactive_agent_path;
          current_path = v2->current_path;
          v8 = current_path;
          v9 = v2->triggered_agent_uuids;
          applier[0] = MEMORY[0x1E69E9820];
          applier[1] = 3221225472;
          applier[2] = ___ZL44nw_endpoint_handler_triggered_agents_updatedP30NWConcrete_nw_endpoint_handler_block_invoke;
          applier[3] = &unk_1E6A31300;
          v138 = v8;
          v142 = v138;
          v143 = v6;
          v10 = v5;
          v144 = v10;
          v139 = v9;
          v136 = v10;
          v137 = v143;
          xpc_array_apply(v9, applier);
          count = xpc_array_get_count(v10);
          v12 = count == 0;
          if (count)
          {
            objc_storeStrong(p_triggered_agent_uuids, v5);
            objc_storeStrong(&v2->inactive_agent_path, current_path);
            v13 = v2;
            v14 = (*(v13 + 284) & 0x20) == 0;

            if (!v14)
            {
              if (nw_endpoint_handler_get_logging_disabled(v13))
              {
                goto LABEL_123;
              }

              if (__nwlog_connection_log::onceToken[0] != -1)
              {
                dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
              }

              v119 = gconnectionLogObj;
              if (os_log_type_enabled(v119, OS_LOG_TYPE_DEBUG))
              {
                id_string = nw_endpoint_handler_get_id_string(v13);
                v135 = nw_endpoint_handler_dry_run_string(v13);
                v121 = nw_endpoint_handler_copy_endpoint(v13);
                logging_description = nw_endpoint_get_logging_description(v121);
                v123 = nw_endpoint_handler_state_string(v13);
                v124 = nw_endpoint_handler_mode_string(v13);
                v125 = nw_endpoint_handler_copy_current_path(v13);
                *buf = 136448002;
                v148 = "nw_endpoint_handler_triggered_agents_updated";
                v149 = 2082;
                id_str = id_string;
                v151 = 2082;
                v152 = v135;
                v153 = 2082;
                v154 = logging_description;
                v155 = 2082;
                v156 = v123;
                v157 = 2082;
                v158 = v124;
                v159 = 2114;
                v160 = v125;
                v161 = 2048;
                v162 = count;
                v17 = v119;
                _os_log_impl(&dword_181A37000, v119, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] %zu triggered agents not yet updated", buf, 0x52u);
              }

              else
              {
                v17 = v119;
              }

              goto LABEL_122;
            }

            v15 = v13;
            v16 = (*(v13 + 284) & 0x40) == 0;

            if (v16)
            {
              if (__nwlog_connection_log::onceToken[0] != -1)
              {
                dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
              }

              v17 = gconnectionLogObj;
              if (!os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
              {
                goto LABEL_122;
              }

              v18 = v15;

              v19 = v18;
              v20 = (*(v13 + 284) & 1) == 0;

              if (v20)
              {
                v21 = "";
              }

              else
              {
                v21 = "dry-run ";
              }

              v22 = nw_endpoint_handler_copy_endpoint(v19);
              v23 = v22;
              if (v22)
              {
                v24 = _nw_endpoint_get_logging_description(v22);
              }

              else
              {
                v24 = "<NULL>";
              }

              v97 = v19;
              v98 = v97;
              v99 = v97[30];
              if (v99 > 5)
              {
                v100 = "unknown-state";
              }

              else
              {
                v100 = off_1E6A31048[v99];
              }

              v134 = v100;

              v101 = v98;
              v102 = v101;
              v103 = v101[29];
              if (v103 > 2)
              {
                switch(v103)
                {
                  case 3:
                    v104 = "proxy";
                    break;
                  case 4:
                    v104 = "fallback";
                    break;
                  case 5:
                    v104 = "transform";
                    break;
                  default:
LABEL_117:
                    v104 = "unknown-mode";
                    break;
                }
              }

              else
              {
                if (v103)
                {
                  if (v103 == 1)
                  {
                    v104 = "resolver";
                    goto LABEL_120;
                  }

                  if (v103 == 2)
                  {
                    v133 = nw_endpoint_flow_mode_string(*(v101 + 33));
LABEL_121:

                    v105 = v18;
                    v106 = v24;
                    v107 = v21;
                    v108 = v17;
                    v109 = v102;
                    os_unfair_lock_lock(v109 + 28);
                    v110 = v2->current_path;
                    os_unfair_lock_unlock(v109 + 28);

                    v17 = v108;
                    *buf = 136448002;
                    v148 = "nw_endpoint_handler_triggered_agents_updated";
                    v149 = 2082;
                    id_str = v105->id_str;
                    v151 = 2082;
                    v152 = v107;
                    v153 = 2082;
                    v154 = v106;
                    v155 = 2082;
                    v156 = v134;
                    v157 = 2082;
                    v158 = v133;
                    v159 = 2114;
                    v160 = v110;
                    v161 = 2048;
                    v162 = count;
                    _os_log_impl(&dword_181A37000, v108, OS_LOG_TYPE_INFO, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] %zu triggered agents not yet updated", buf, 0x52u);

LABEL_122:
                    goto LABEL_123;
                  }

                  goto LABEL_117;
                }

                v104 = "path";
              }

LABEL_120:
              v133 = v104;
              goto LABEL_121;
            }
          }

          else
          {
            *(v2 + 284) &= ~2u;
            inactive_agent_uuids = v2->inactive_agent_uuids;
            v2->inactive_agent_uuids = 0;
            v75 = v2;

            inactive_agent_path = v2->inactive_agent_path;
            v2->inactive_agent_path = 0;

            triggered_agent_uuids = v2->triggered_agent_uuids;
            v2->triggered_agent_uuids = 0;

            v78 = v75;
            LOBYTE(inactive_agent_uuids) = (*(v2 + 284) & 0x20) == 0;

            if ((inactive_agent_uuids & 1) == 0)
            {
              if (nw_endpoint_handler_get_logging_disabled(v78))
              {
                goto LABEL_123;
              }

              if (__nwlog_connection_log::onceToken[0] != -1)
              {
                dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
              }

              v17 = gconnectionLogObj;
              if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
              {
                v126 = nw_endpoint_handler_get_id_string(v78);
                v127 = nw_endpoint_handler_dry_run_string(v78);
                v128 = nw_endpoint_handler_copy_endpoint(v78);
                v129 = nw_endpoint_get_logging_description(v128);
                v130 = nw_endpoint_handler_state_string(v78);
                v131 = nw_endpoint_handler_mode_string(v78);
                v132 = nw_endpoint_handler_copy_current_path(v78);
                *buf = 136447746;
                v148 = "nw_endpoint_handler_triggered_agents_updated";
                v149 = 2082;
                id_str = v126;
                v151 = 2082;
                v152 = v127;
                v153 = 2082;
                v154 = v129;
                v155 = 2082;
                v156 = v130;
                v157 = 2082;
                v158 = v131;
                v159 = 2114;
                v160 = v132;
                _os_log_impl(&dword_181A37000, v17, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] all triggered agents updated", buf, 0x48u);
              }

              goto LABEL_122;
            }

            v79 = v78;
            v80 = (*(v2 + 284) & 0x40) == 0;

            if (v80)
            {
              if (__nwlog_connection_log::onceToken[0] != -1)
              {
                dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
              }

              v17 = gconnectionLogObj;
              if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
              {
                v81 = nw_endpoint_handler_get_id_string(v79);
                v82 = nw_endpoint_handler_dry_run_string(v79);
                v83 = nw_endpoint_handler_copy_endpoint(v79);
                v84 = v17;
                v85 = nw_endpoint_get_logging_description(v83);
                v86 = nw_endpoint_handler_state_string(v79);
                v87 = nw_endpoint_handler_mode_string(v79);
                v88 = nw_endpoint_handler_copy_current_path(v79);
                *buf = 136447746;
                v148 = "nw_endpoint_handler_triggered_agents_updated";
                v149 = 2082;
                id_str = v81;
                v151 = 2082;
                v152 = v82;
                v153 = 2082;
                v154 = v85;
                v155 = 2082;
                v156 = v86;
                v157 = 2082;
                v158 = v87;
                v159 = 2114;
                v160 = v88;
                v17 = v84;
                _os_log_impl(&dword_181A37000, v84, OS_LOG_TYPE_INFO, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] all triggered agents updated", buf, 0x48u);
              }

              goto LABEL_122;
            }
          }

LABEL_123:

          v32 = v136;
          goto LABEL_124;
        }

        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v52 = gLogObj;
        *buf = 136446210;
        v148 = "nw_endpoint_handler_triggered_agents_updated";
        v53 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v52, 16, "%{public}s xpc_array_create failed", buf, 12);

        type = OS_LOG_TYPE_ERROR;
        v145 = 0;
        if (__nwlog_fault(v53, &type, &v145))
        {
          if (type == OS_LOG_TYPE_FAULT)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v54 = gLogObj;
            v55 = type;
            if (os_log_type_enabled(v54, type))
            {
              *buf = 136446210;
              v148 = "nw_endpoint_handler_triggered_agents_updated";
              _os_log_impl(&dword_181A37000, v54, v55, "%{public}s xpc_array_create failed", buf, 0xCu);
            }
          }

          else if (v145 == 1)
          {
            backtrace_string = __nw_create_backtrace_string();
            v54 = __nwlog_obj();
            v90 = type;
            v91 = os_log_type_enabled(v54, type);
            if (backtrace_string)
            {
              if (v91)
              {
                *buf = 136446466;
                v148 = "nw_endpoint_handler_triggered_agents_updated";
                v149 = 2082;
                id_str = backtrace_string;
                _os_log_impl(&dword_181A37000, v54, v90, "%{public}s xpc_array_create failed, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(backtrace_string);
              goto LABEL_112;
            }

            if (v91)
            {
              *buf = 136446210;
              v148 = "nw_endpoint_handler_triggered_agents_updated";
              _os_log_impl(&dword_181A37000, v54, v90, "%{public}s xpc_array_create failed, no backtrace", buf, 0xCu);
            }
          }

          else
          {
            v54 = __nwlog_obj();
            v96 = type;
            if (os_log_type_enabled(v54, type))
            {
              *buf = 136446210;
              v148 = "nw_endpoint_handler_triggered_agents_updated";
              _os_log_impl(&dword_181A37000, v54, v96, "%{public}s xpc_array_create failed, backtrace limit exceeded", buf, 0xCu);
            }
          }
        }

LABEL_112:
        if (v53)
        {
          free(v53);
        }

        v32 = 0;
        v12 = 0;
        goto LABEL_124;
      }

      *(v2 + 284) &= ~2u;
      v25 = v2->inactive_agent_uuids;
      v2->inactive_agent_uuids = 0;
      v26 = v2;

      v27 = v2->inactive_agent_path;
      v2->inactive_agent_path = 0;

      v28 = v2->triggered_agent_uuids;
      v2->triggered_agent_uuids = 0;

      v29 = v26;
      LOBYTE(v26) = *(v2 + 284);

      if ((v26 & 0x20) != 0)
      {
        if ((nw_endpoint_handler_get_logging_disabled(v29) & 1) == 0)
        {
          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v32 = gconnectionLogObj;
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
          {
            v112 = nw_endpoint_handler_get_id_string(v29);
            v113 = nw_endpoint_handler_dry_run_string(v29);
            v114 = nw_endpoint_handler_copy_endpoint(v29);
            v115 = nw_endpoint_get_logging_description(v114);
            v116 = nw_endpoint_handler_state_string(v29);
            v117 = nw_endpoint_handler_mode_string(v29);
            v118 = nw_endpoint_handler_copy_current_path(v29);
            *buf = 136447746;
            v148 = "nw_endpoint_handler_triggered_agents_updated";
            v149 = 2082;
            id_str = v112;
            v151 = 2082;
            v152 = v113;
            v153 = 2082;
            v154 = v115;
            v155 = 2082;
            v156 = v116;
            v157 = 2082;
            v158 = v117;
            v159 = 2114;
            v160 = v118;
            _os_log_impl(&dword_181A37000, v32, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] no inactive agents remaining", buf, 0x48u);
          }

          goto LABEL_85;
        }
      }

      else
      {
        v30 = v29;
        v31 = *(v2 + 284);

        if ((v31 & 0x40) == 0)
        {
          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v32 = gconnectionLogObj;
          v12 = 1;
          if (!os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
          {
            goto LABEL_124;
          }

          v33 = v30;

          v34 = v33;
          v35 = *(v2 + 284);

          if (v35)
          {
            v36 = "dry-run ";
          }

          else
          {
            v36 = "";
          }

          v37 = nw_endpoint_handler_copy_endpoint(v34);
          v38 = v37;
          if (v37)
          {
            v39 = _nw_endpoint_get_logging_description(v37);
          }

          else
          {
            v39 = "<NULL>";
          }

          v56 = v33 + 184;

          v57 = v34;
          v58 = v57;
          v59 = v57[30];
          if (v59 > 5)
          {
            v60 = "unknown-state";
          }

          else
          {
            v60 = off_1E6A31048[v59];
          }

          v61 = v58;
          v62 = v61;
          v63 = v61[29];
          if (v63 > 2)
          {
            switch(v63)
            {
              case 3:
                v64 = "proxy";
                goto LABEL_84;
              case 4:
                v64 = "fallback";
                goto LABEL_84;
              case 5:
                v64 = "transform";
                goto LABEL_84;
            }
          }

          else
          {
            switch(v63)
            {
              case 0:
                v64 = "path";
                goto LABEL_84;
              case 1:
                v64 = "resolver";
                goto LABEL_84;
              case 2:
                v64 = nw_endpoint_flow_mode_string(*(v61 + 33));
LABEL_84:

                v92 = v62;
                os_unfair_lock_lock(v92 + 28);
                v93 = v2->current_path;
                os_unfair_lock_unlock(v92 + 28);

                *buf = 136447746;
                v148 = "nw_endpoint_handler_triggered_agents_updated";
                v149 = 2082;
                id_str = v56;
                v151 = 2082;
                v152 = v36;
                v153 = 2082;
                v154 = v39;
                v155 = 2082;
                v156 = v60;
                v157 = 2082;
                v158 = v64;
                v159 = 2114;
                v160 = v93;
                _os_log_impl(&dword_181A37000, v32, OS_LOG_TYPE_INFO, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] no inactive agents remaining", buf, 0x48u);

LABEL_85:
                v12 = 1;
LABEL_124:

                goto LABEL_125;
            }
          }

          v64 = "unknown-mode";
          goto LABEL_84;
        }
      }

LABEL_92:
      v12 = 1;
LABEL_125:

      goto LABEL_126;
    }

    *(v1 + 284) &= ~2u;
    v40 = v1->inactive_agent_uuids;
    v1->inactive_agent_uuids = 0;

    v41 = v2->inactive_agent_path;
    v2->inactive_agent_path = 0;

    v42 = v2->triggered_agent_uuids;
    v2->triggered_agent_uuids = 0;

    v43 = v2;
    v44 = *(v2 + 284);

    if ((v44 & 0x40) != 0)
    {
      v12 = 1;
      goto LABEL_126;
    }

    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    log = gconnectionLogObj;
    if (!os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_92;
    }

    v45 = v43;

    v46 = v45;
    v47 = *(v2 + 284);

    if (v47)
    {
      v48 = "dry-run ";
    }

    else
    {
      v48 = "";
    }

    v49 = nw_endpoint_handler_copy_endpoint(v46);
    v50 = v49;
    if (v49)
    {
      v51 = _nw_endpoint_get_logging_description(v49);
    }

    else
    {
      v51 = "<NULL>";
    }

    v65 = v45 + 184;

    v66 = v46;
    v67 = v66;
    v68 = v66[30];
    if (v68 > 5)
    {
      v69 = "unknown-state";
    }

    else
    {
      v69 = off_1E6A31048[v68];
    }

    v70 = v67;
    v71 = v70;
    v72 = v70[29];
    if (v72 > 2)
    {
      switch(v72)
      {
        case 3:
          v73 = "proxy";
          goto LABEL_91;
        case 4:
          v73 = "fallback";
          goto LABEL_91;
        case 5:
          v73 = "transform";
          goto LABEL_91;
      }
    }

    else
    {
      switch(v72)
      {
        case 0:
          v73 = "path";
          goto LABEL_91;
        case 1:
          v73 = "resolver";
          goto LABEL_91;
        case 2:
          v73 = nw_endpoint_flow_mode_string(*(v70 + 33));
LABEL_91:

          v94 = v71;
          os_unfair_lock_lock(v94 + 28);
          v95 = *(v94 + 8);
          os_unfair_lock_unlock(v94 + 28);

          *buf = 136447746;
          v148 = "nw_endpoint_handler_triggered_agents_updated";
          v149 = 2082;
          id_str = v65;
          v151 = 2082;
          v152 = v48;
          v153 = 2082;
          v154 = v51;
          v155 = 2082;
          v156 = v69;
          v157 = 2082;
          v158 = v73;
          v159 = 2114;
          v160 = v95;
          _os_log_impl(&dword_181A37000, log, OS_LOG_TYPE_ERROR, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] no inactive agent information", buf, 0x48u);

          goto LABEL_92;
      }
    }

    v73 = "unknown-mode";
    goto LABEL_91;
  }

  v12 = 0;
LABEL_126:

  return v12;
}

uint64_t ___ZL31nw_endpoint_handler_path_changeP30NWConcrete_nw_endpoint_handler_block_invoke(uint64_t a1, void *a2)
{
  v45 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = nw_path_interface_prohibited_by_parameters(*(*(a1 + 32) + 64), v3);
  if (!v4)
  {
    minimize_logging = nw_endpoint_handler_get_minimize_logging(*(a1 + 32));
    logging_disabled = nw_endpoint_handler_get_logging_disabled(*(a1 + 32));
    if (minimize_logging)
    {
      if (logging_disabled)
      {
        goto LABEL_14;
      }

      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v8 = gconnectionLogObj;
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        id_string = nw_endpoint_handler_get_id_string(*(a1 + 32));
        v21 = nw_endpoint_handler_dry_run_string(*(a1 + 32));
        v22 = nw_endpoint_handler_copy_endpoint(*(a1 + 32));
        logging_description = nw_endpoint_get_logging_description(v22);
        v24 = nw_endpoint_handler_state_string(*(a1 + 32));
        v25 = nw_endpoint_handler_mode_string(*(a1 + 32));
        v26 = nw_endpoint_handler_copy_current_path(*(a1 + 32));
        *buf = 136448002;
        v30 = "nw_endpoint_handler_path_change_block_invoke";
        v31 = 2082;
        v32 = id_string;
        v27 = v26;
        v33 = 2082;
        v34 = v21;
        v35 = 2082;
        v36 = logging_description;
        v37 = 2082;
        v38 = v24;
        v39 = 2082;
        v40 = v25;
        v41 = 2114;
        v42 = v26;
        v43 = 2114;
        v44 = v3;
        _os_log_impl(&dword_181A37000, v8, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] overriding unsatisfied, eligible interface: %{public}@", buf, 0x52u);
      }
    }

    else
    {
      if (logging_disabled)
      {
LABEL_14:
        v5 = 48;
        goto LABEL_15;
      }

      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v8 = gconnectionLogObj;
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = nw_endpoint_handler_get_id_string(*(a1 + 32));
        v10 = nw_endpoint_handler_dry_run_string(*(a1 + 32));
        log = v8;
        v11 = nw_endpoint_handler_copy_endpoint(*(a1 + 32));
        v12 = v11;
        if (v11)
        {
          v13 = _nw_endpoint_get_logging_description(v11);
          v14 = v10;
          v15 = v9;
        }

        else
        {
          v14 = v10;
          v15 = v9;
          v13 = "<NULL>";
        }

        v16 = nw_endpoint_handler_state_string(*(a1 + 32));
        v17 = nw_endpoint_handler_mode_string(*(a1 + 32));
        v18 = nw_endpoint_handler_copy_current_path(*(a1 + 32));
        *buf = 136448002;
        v30 = "nw_endpoint_handler_path_change_block_invoke";
        v31 = 2082;
        v32 = v15;
        v33 = 2082;
        v34 = v14;
        v35 = 2082;
        v36 = v13;
        v37 = 2082;
        v38 = v16;
        v39 = 2082;
        v40 = v17;
        v41 = 2114;
        v42 = v18;
        v43 = 2114;
        v44 = v3;
        v8 = log;
        _os_log_impl(&dword_181A37000, log, OS_LOG_TYPE_INFO, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] overriding unsatisfied, eligible interface: %{public}@", buf, 0x52u);
      }
    }

    goto LABEL_14;
  }

  if (nw_interface_get_subtype(v3) == 1002)
  {
    v5 = 40;
LABEL_15:
    *(*(*(a1 + v5) + 8) + 24) = 1;
  }

  return v4;
}

void ___ZL31nw_endpoint_handler_path_changeP30NWConcrete_nw_endpoint_handler_block_invoke_143(uint64_t a1)
{
  v35 = *MEMORY[0x1E69E9840];
  minimize_logging = nw_endpoint_handler_get_minimize_logging(*(a1 + 32));
  logging_disabled = nw_endpoint_handler_get_logging_disabled(*(a1 + 32));
  if (minimize_logging)
  {
    if (logging_disabled)
    {
      goto LABEL_11;
    }

    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v4 = gconnectionLogObj;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      id_string = nw_endpoint_handler_get_id_string(*(a1 + 32));
      v14 = nw_endpoint_handler_dry_run_string(*(a1 + 32));
      v15 = nw_endpoint_handler_copy_endpoint(*(a1 + 32));
      logging_description = nw_endpoint_get_logging_description(v15);
      v17 = nw_endpoint_handler_state_string(*(a1 + 32));
      v18 = nw_endpoint_handler_mode_string(*(a1 + 32));
      v19 = nw_endpoint_handler_copy_current_path(*(a1 + 32));
      v21 = 136447746;
      v22 = "nw_endpoint_handler_path_change_block_invoke";
      v23 = 2082;
      v24 = id_string;
      v20 = v19;
      v25 = 2082;
      v26 = v14;
      v27 = 2082;
      v28 = logging_description;
      v29 = 2082;
      v30 = v17;
      v31 = 2082;
      v32 = v18;
      v33 = 2114;
      v34 = v19;
      _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] fallback timer fired, resetting", &v21, 0x48u);
    }

    goto LABEL_10;
  }

  if ((logging_disabled & 1) == 0)
  {
    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v4 = gconnectionLogObj;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = nw_endpoint_handler_get_id_string(*(a1 + 32));
      v6 = nw_endpoint_handler_dry_run_string(*(a1 + 32));
      v7 = nw_endpoint_handler_copy_endpoint(*(a1 + 32));
      v8 = v7;
      if (v7)
      {
        v9 = _nw_endpoint_get_logging_description(v7);
      }

      else
      {
        v9 = "<NULL>";
      }

      v10 = nw_endpoint_handler_state_string(*(a1 + 32));
      v11 = nw_endpoint_handler_mode_string(*(a1 + 32));
      v12 = nw_endpoint_handler_copy_current_path(*(a1 + 32));
      v21 = 136447746;
      v22 = "nw_endpoint_handler_path_change_block_invoke";
      v23 = 2082;
      v24 = v5;
      v25 = 2082;
      v26 = v6;
      v27 = 2082;
      v28 = v9;
      v29 = 2082;
      v30 = v10;
      v31 = 2082;
      v32 = v11;
      v33 = 2114;
      v34 = v12;
      _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_INFO, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] fallback timer fired, resetting", &v21, 0x48u);
    }

LABEL_10:
  }

LABEL_11:
  nw_endpoint_handler_reset_mode(*(a1 + 32), 1);
}

uint64_t ___ZL44nw_endpoint_handler_triggered_agents_updatedP30NWConcrete_nw_endpoint_handler_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (v4 && object_getClass(v4) == MEMORY[0x1E69E9F20])
  {
    v13 = *xpc_uuid_get_bytes(v5);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = ___ZL44nw_endpoint_handler_triggered_agents_updatedP30NWConcrete_nw_endpoint_handler_block_invoke_2;
    v8[3] = &unk_1E6A30FC8;
    v6 = *(a1 + 32);
    v9 = *(a1 + 40);
    v12 = &v13;
    v10 = *(a1 + 48);
    v11 = v5;
    _nw_path_access_network_agent(v6, &v13, v8);
  }

  return 1;
}

void ___ZL44nw_endpoint_handler_triggered_agents_updatedP30NWConcrete_nw_endpoint_handler_block_invoke_2(uint64_t a1, uint64_t a2, int a3)
{
  v4 = *(a1 + 56);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = ___ZL44nw_endpoint_handler_triggered_agents_updatedP30NWConcrete_nw_endpoint_handler_block_invoke_3;
  aBlock[3] = &unk_1E6A30FA0;
  v9 = a3;
  v5 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  _nw_path_access_network_agent(v5, v4, aBlock);
}

void ___ZL44nw_endpoint_handler_triggered_agents_updatedP30NWConcrete_nw_endpoint_handler_block_invoke_3(uint64_t a1, uint64_t a2, int a3)
{
  if (*(a1 + 48) == a3)
  {
    xpc_array_append_value(*(a1 + 32), *(a1 + 40));
  }
}

uint64_t nw_endpoint_handler_has_matching_handler(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (nw_endpoint_is_equal(*(v3 + 3), v4[3], 31))
  {
    v5 = 1;
  }

  else
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x2020000000;
    v14 = 0;
    if (objc_opt_respondsToSelector())
    {
      v6 = *(v3 + 33);
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __nw_endpoint_handler_has_matching_handler_block_invoke;
      v8[3] = &unk_1E6A30EB0;
      v9 = v4;
      v10 = &v11;
      [v6 applyWithHandler:v3 toChildren:v8];
    }

    v5 = *(v12 + 24);
    _Block_object_dispose(&v11, 8);
  }

  return v5 & 1;
}

void sub_18258BFE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, ...)
{
  va_start(va, a13);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __nw_endpoint_handler_has_matching_handler_block_invoke(uint64_t a1, void *a2)
{
  has_matching_handler = nw_endpoint_handler_has_matching_handler(a2, *(a1 + 32));
  if (has_matching_handler)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  return has_matching_handler ^ 1u;
}

uint64_t __Block_byref_object_copy__33557(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __nw_endpoint_handler_copy_metadata_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = ne_session_copy_app_data_from_flow_divert_socket();
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return 1;
}

uint64_t nw_endpoint_handler_uses_sleep_proxy(void *a1)
{
  v30 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    os_unfair_lock_lock(v1 + 28);
    if (v2[29]._os_unfair_lock_opaque != 2)
    {
      v6 = 0;
LABEL_12:
      os_unfair_lock_unlock(v2 + 28);
      goto LABEL_13;
    }

    v3 = *&v2[66]._os_unfair_lock_opaque;
    v4 = v3;
    if (v3)
    {
      os_unfair_lock_lock(v3 + 220);
      if ((v4[8]._os_unfair_lock_opaque & 2) != 0 || (v4[8]._os_unfair_lock_opaque & 0x100) != 0)
      {
        v6 = *&v4[230]._os_unfair_lock_opaque != 0;
      }

      else
      {
        v5 = *&v4[234]._os_unfair_lock_opaque;
        if (v5)
        {
          v6 = nw_endpoint_handler_uses_sleep_proxy(v5);
        }

        else
        {
          v6 = 0;
        }
      }

      os_unfair_lock_unlock(v4 + 220);
LABEL_11:

      goto LABEL_12;
    }

    v12 = __nwlog_obj();
    *buf = 136446210;
    v27 = "nw_endpoint_flow_uses_sleep_proxy";
    v13 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v12, 16, "%{public}s called with null endpoint_flow", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v24 = 0;
    if (__nwlog_fault(v13, &type, &v24))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v14 = __nwlog_obj();
        v15 = type;
        if (os_log_type_enabled(v14, type))
        {
          *buf = 136446210;
          v27 = "nw_endpoint_flow_uses_sleep_proxy";
          _os_log_impl(&dword_181A37000, v14, v15, "%{public}s called with null endpoint_flow", buf, 0xCu);
        }
      }

      else if (v24 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v14 = __nwlog_obj();
        v21 = type;
        v22 = os_log_type_enabled(v14, type);
        if (backtrace_string)
        {
          if (v22)
          {
            *buf = 136446466;
            v27 = "nw_endpoint_flow_uses_sleep_proxy";
            v28 = 2082;
            v29 = backtrace_string;
            _os_log_impl(&dword_181A37000, v14, v21, "%{public}s called with null endpoint_flow, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_50;
        }

        if (v22)
        {
          *buf = 136446210;
          v27 = "nw_endpoint_flow_uses_sleep_proxy";
          _os_log_impl(&dword_181A37000, v14, v21, "%{public}s called with null endpoint_flow, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v14 = __nwlog_obj();
        v23 = type;
        if (os_log_type_enabled(v14, type))
        {
          *buf = 136446210;
          v27 = "nw_endpoint_flow_uses_sleep_proxy";
          _os_log_impl(&dword_181A37000, v14, v23, "%{public}s called with null endpoint_flow, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_50:
    if (v13)
    {
      free(v13);
    }

    v6 = 0;
    goto LABEL_11;
  }

  v8 = __nwlog_obj();
  *buf = 136446210;
  v27 = "nw_endpoint_handler_uses_sleep_proxy";
  v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v8, 16, "%{public}s called with null handler", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v24 = 0;
  if (__nwlog_fault(v9, &type, &v24))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v10 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v27 = "nw_endpoint_handler_uses_sleep_proxy";
        _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null handler", buf, 0xCu);
      }
    }

    else if (v24 == 1)
    {
      v16 = __nw_create_backtrace_string();
      v10 = __nwlog_obj();
      v17 = type;
      v18 = os_log_type_enabled(v10, type);
      if (v16)
      {
        if (v18)
        {
          *buf = 136446466;
          v27 = "nw_endpoint_handler_uses_sleep_proxy";
          v28 = 2082;
          v29 = v16;
          _os_log_impl(&dword_181A37000, v10, v17, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v16);
        goto LABEL_44;
      }

      if (v18)
      {
        *buf = 136446210;
        v27 = "nw_endpoint_handler_uses_sleep_proxy";
        _os_log_impl(&dword_181A37000, v10, v17, "%{public}s called with null handler, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v10 = __nwlog_obj();
      v19 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v27 = "nw_endpoint_handler_uses_sleep_proxy";
        _os_log_impl(&dword_181A37000, v10, v19, "%{public}s called with null handler, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_44:
  if (v9)
  {
    free(v9);
  }

  v6 = 0;
LABEL_13:

  return v6;
}

id nw_endpoint_handler_copy_parent(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = v1[9];
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_endpoint_handler_copy_parent";
  v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s called with null handler", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v13 = 0;
  if (__nwlog_fault(v6, &type, &v13))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v16 = "nw_endpoint_handler_copy_parent";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null handler", buf, 0xCu);
      }
    }

    else if (v13 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v7 = __nwlog_obj();
      v10 = type;
      v11 = os_log_type_enabled(v7, type);
      if (backtrace_string)
      {
        if (v11)
        {
          *buf = 136446466;
          v16 = "nw_endpoint_handler_copy_parent";
          v17 = 2082;
          v18 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v11)
      {
        *buf = 136446210;
        v16 = "nw_endpoint_handler_copy_parent";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null handler, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v16 = "nw_endpoint_handler_copy_parent";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null handler, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v6)
  {
    free(v6);
  }

  v3 = 0;
LABEL_3:

  return v3;
}

void *nw_endpoint_handler_copy_topmost_parent(void *a1)
{
  v1 = a1;
  v2 = v1;
  v3 = v1[9];
  v4 = v1;
  if (v3)
  {
    v5 = v1;
    do
    {
      v4 = v3;

      v3 = v4[9];
      v5 = v4;
    }

    while (v3);
  }

  return v4;
}

uint64_t nw_endpoint_handler_get_flow_id(void *a1, _OWORD *a2)
{
  v60 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (!v3)
  {
    v26 = __nwlog_obj();
    *buf = 136446210;
    v47 = "nw_endpoint_handler_get_flow_id";
    v27 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v26, 16, "%{public}s called with null handler", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v44 = 0;
    if (__nwlog_fault(v27, &type, &v44))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v28 = __nwlog_obj();
        v29 = type;
        if (os_log_type_enabled(v28, type))
        {
          *buf = 136446210;
          v47 = "nw_endpoint_handler_get_flow_id";
          _os_log_impl(&dword_181A37000, v28, v29, "%{public}s called with null handler", buf, 0xCu);
        }
      }

      else if (v44 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v28 = __nwlog_obj();
        v35 = type;
        v36 = os_log_type_enabled(v28, type);
        if (backtrace_string)
        {
          if (v36)
          {
            *buf = 136446466;
            v47 = "nw_endpoint_handler_get_flow_id";
            v48 = 2082;
            v49 = backtrace_string;
            _os_log_impl(&dword_181A37000, v28, v35, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_73;
        }

        if (v36)
        {
          *buf = 136446210;
          v47 = "nw_endpoint_handler_get_flow_id";
          _os_log_impl(&dword_181A37000, v28, v35, "%{public}s called with null handler, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v28 = __nwlog_obj();
        v37 = type;
        if (os_log_type_enabled(v28, type))
        {
          *buf = 136446210;
          v47 = "nw_endpoint_handler_get_flow_id";
          _os_log_impl(&dword_181A37000, v28, v37, "%{public}s called with null handler, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_73:
    if (v27)
    {
      free(v27);
    }

    goto LABEL_43;
  }

  if (*(v3 + 29) == 2)
  {
    v5 = v3[33];
    v6 = v5;
    if (v5)
    {
      if ((v5[8]._os_unfair_lock_opaque & 2) == 0 && (v5[8]._os_unfair_lock_opaque & 0x100) == 0)
      {
        os_unfair_lock_lock(v5 + 220);
        v7 = *&v6[234]._os_unfair_lock_opaque;
        if (v7)
        {
          flow_id = nw_endpoint_handler_get_flow_id(v7, a2);
        }

        else
        {
          flow_id = 0;
        }

        os_unfair_lock_unlock(v6 + 220);
        goto LABEL_81;
      }

      v14 = *&v5[208]._os_unfair_lock_opaque;
      if (v14)
      {
        v15 = v14;
        is_null = uuid_is_null(v15 + 32);
        flow_id = is_null == 0;
        if (!is_null)
        {
          *a2 = *(v15 + 2);
        }

        goto LABEL_81;
      }

LABEL_80:
      flow_id = 0;
LABEL_81:

      goto LABEL_82;
    }

    v30 = __nwlog_obj();
    *buf = 136446210;
    v47 = "nw_endpoint_flow_get_flow_id";
    v31 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v30, 16, "%{public}s called with null endpoint_flow", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v44 = 0;
    if (__nwlog_fault(v31, &type, &v44))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v32 = __nwlog_obj();
        v33 = type;
        if (os_log_type_enabled(v32, type))
        {
          *buf = 136446210;
          v47 = "nw_endpoint_flow_get_flow_id";
          _os_log_impl(&dword_181A37000, v32, v33, "%{public}s called with null endpoint_flow", buf, 0xCu);
        }
      }

      else if (v44 == 1)
      {
        v38 = __nw_create_backtrace_string();
        v32 = __nwlog_obj();
        v39 = type;
        v40 = os_log_type_enabled(v32, type);
        if (v38)
        {
          if (v40)
          {
            *buf = 136446466;
            v47 = "nw_endpoint_flow_get_flow_id";
            v48 = 2082;
            v49 = v38;
            _os_log_impl(&dword_181A37000, v32, v39, "%{public}s called with null endpoint_flow, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v38);
          goto LABEL_78;
        }

        if (v40)
        {
          *buf = 136446210;
          v47 = "nw_endpoint_flow_get_flow_id";
          _os_log_impl(&dword_181A37000, v32, v39, "%{public}s called with null endpoint_flow, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v32 = __nwlog_obj();
        v41 = type;
        if (os_log_type_enabled(v32, type))
        {
          *buf = 136446210;
          v47 = "nw_endpoint_flow_get_flow_id";
          _os_log_impl(&dword_181A37000, v32, v41, "%{public}s called with null endpoint_flow, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_78:
    if (v31)
    {
      free(v31);
    }

    goto LABEL_80;
  }

  if ((*(v3 + 284) & 0x40) == 0)
  {
    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v9 = gconnectionLogObj;
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_42;
    }

    if (*(v4 + 284))
    {
      v10 = "dry-run ";
    }

    else
    {
      v10 = "";
    }

    v11 = nw_endpoint_handler_copy_endpoint(v4);
    v12 = v11;
    if (v11)
    {
      logging_description = _nw_endpoint_get_logging_description(v11);
    }

    else
    {
      logging_description = "<NULL>";
    }

    v17 = *(v4 + 30);
    if (v17 > 5)
    {
      v18 = "unknown-state";
    }

    else
    {
      v18 = off_1E6A31048[v17];
    }

    v19 = v4;
    v20 = v19;
    v21 = *(v4 + 29);
    v43 = v18;
    if (v21 > 2)
    {
      switch(v21)
      {
        case 3:
          v22 = v10;
          v23 = "proxy";
          goto LABEL_41;
        case 4:
          v22 = v10;
          v23 = "fallback";
          goto LABEL_41;
        case 5:
          v22 = v10;
          v23 = "transform";
          goto LABEL_41;
      }
    }

    else
    {
      switch(v21)
      {
        case 0:
          v22 = v10;
          v23 = "path";
          goto LABEL_41;
        case 1:
          v22 = v10;
          v23 = "resolver";
          goto LABEL_41;
        case 2:
          v22 = v10;
          v23 = nw_endpoint_flow_mode_string(v19[33]);
LABEL_41:

          v24 = v20;
          os_unfair_lock_lock(v20 + 28);
          v25 = v24[8];
          os_unfair_lock_unlock(v20 + 28);

          *buf = 136447746;
          v47 = "nw_endpoint_handler_get_flow_id";
          v48 = 2082;
          v49 = (v4 + 23);
          v50 = 2082;
          v51 = v22;
          v52 = 2082;
          v53 = logging_description;
          v54 = 2082;
          v55 = v43;
          v56 = 2082;
          v57 = v23;
          v58 = 2114;
          v59 = v25;
          _os_log_impl(&dword_181A37000, v9, OS_LOG_TYPE_ERROR, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Endpoint handler is not flow", buf, 0x48u);

LABEL_42:
          goto LABEL_43;
      }
    }

    v22 = v10;
    v23 = "unknown-mode";
    goto LABEL_41;
  }

LABEL_43:
  flow_id = 0;
LABEL_82:

  return flow_id;
}

void nw_endpoint_handler_reset_expected_progress_target(void *a1, uint64_t a2, unsigned __int8 *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = v5;
  if (v5)
  {
    v7 = v5[29];
    if (v7 == 4)
    {
      nw_endpoint_fallback_reset_expected_progress_target(v5, a2);
    }

    else if (v7 == 2)
    {
      nw_endpoint_flow_reset_expected_progress_target(v5, a2, a3);
    }

    goto LABEL_6;
  }

  v8 = __nwlog_obj();
  *buf = 136446210;
  v19 = "nw_endpoint_handler_reset_expected_progress_target";
  v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v8, 16, "%{public}s called with null handler", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v16 = 0;
  if (__nwlog_fault(v9, &type, &v16))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v10 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v19 = "nw_endpoint_handler_reset_expected_progress_target";
        _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null handler", buf, 0xCu);
      }
    }

    else if (v16 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v10 = __nwlog_obj();
      v13 = type;
      v14 = os_log_type_enabled(v10, type);
      if (backtrace_string)
      {
        if (v14)
        {
          *buf = 136446466;
          v19 = "nw_endpoint_handler_reset_expected_progress_target";
          v20 = 2082;
          v21 = backtrace_string;
          _os_log_impl(&dword_181A37000, v10, v13, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_23;
      }

      if (v14)
      {
        *buf = 136446210;
        v19 = "nw_endpoint_handler_reset_expected_progress_target";
        _os_log_impl(&dword_181A37000, v10, v13, "%{public}s called with null handler, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v10 = __nwlog_obj();
      v15 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v19 = "nw_endpoint_handler_reset_expected_progress_target";
        _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null handler, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_23:
  if (v9)
  {
    free(v9);
  }

LABEL_6:
}

uint64_t __nw_endpoint_handler_apply_to_leaf_children_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *(*(*(a1 + 48) + 8) + 24) = nw_endpoint_handler_apply_to_leaf_children(v3, *(a1 + 32));
  }

  v5 = *(*(*(a1 + 48) + 8) + 24);

  return v5;
}

void sub_18258D4B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.receiver = v9;
  a9.super_class = NWConcrete_nw_pac_resolver;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

NWConcrete_nw_pac_resolver *nw_pac_resolver_create_with_script(const void *a1, const void *a2, void *a3, char a4, int a5, int a6, int a7, unsigned __int8 *a8, void *a9)
{
  v76 = *MEMORY[0x1E69E9840];
  v17 = a3;
  v18 = a9;
  v19 = v18;
  v69 = v17;
  if (a1)
  {
    if (a2)
    {
      if (v18)
      {
        if (v17)
        {
          if (a8)
          {
            v20 = objc_alloc_init(NWConcrete_nw_pac_resolver);
            if (v20)
            {
              *(v20 + 3) = CFRetain(a2);
              *(v20 + 5) = CFRetain(a1);
              v21 = _Block_copy(v19);
              v22 = *(v20 + 1);
              *(v20 + 1) = v21;

              objc_storeStrong(v20 + 2, a3);
              if (a5)
              {
                v23 = 2;
              }

              else
              {
                v23 = 0;
              }

              if (a6)
              {
                v24 = 4;
              }

              else
              {
                v24 = 0;
              }

              if (a7)
              {
                v25 = 8;
              }

              else
              {
                v25 = 0;
              }

              *(v20 + 159) = v23 | a4 | v24 | v25 | *(v20 + 159) & 0xF0;
              v26 = v20 + 84;
              v27 = 75;
              while (1)
              {
                v28 = *a8;
                *v26 = v28;
                if (!v28)
                {
                  break;
                }

                ++v26;
                ++a8;
                if (--v27 <= 1)
                {
                  *v26 = 0;
                  break;
                }
              }

              v29 = v20;
              goto LABEL_40;
            }

            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v30 = gLogObj;
            *buf = 136446210;
            v73 = "nw_pac_resolver_create_with_script";
            v31 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v30, 16, "%{public}s nw_pac_resolver_obj_alloc failed", buf, 12);

            type = OS_LOG_TYPE_ERROR;
            v70 = 0;
            if (__nwlog_fault(v31, &type, &v70))
            {
              if (type == OS_LOG_TYPE_FAULT)
              {
                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                networkd_settings_init();
                v32 = gLogObj;
                v33 = type;
                if (os_log_type_enabled(v32, type))
                {
                  *buf = 136446210;
                  v73 = "nw_pac_resolver_create_with_script";
                  _os_log_impl(&dword_181A37000, v32, v33, "%{public}s nw_pac_resolver_obj_alloc failed", buf, 0xCu);
                }

LABEL_25:

                goto LABEL_38;
              }

              if (v70 != 1)
              {
                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                networkd_settings_init();
                v32 = gLogObj;
                v38 = type;
                if (os_log_type_enabled(v32, type))
                {
                  *buf = 136446210;
                  v73 = "nw_pac_resolver_create_with_script";
                  _os_log_impl(&dword_181A37000, v32, v38, "%{public}s nw_pac_resolver_obj_alloc failed, backtrace limit exceeded", buf, 0xCu);
                }

                goto LABEL_25;
              }

              backtrace_string = __nw_create_backtrace_string();
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v35 = gLogObj;
              v36 = type;
              v37 = os_log_type_enabled(v35, type);
              if (backtrace_string)
              {
                if (v37)
                {
                  *buf = 136446466;
                  v73 = "nw_pac_resolver_create_with_script";
                  v74 = 2082;
                  v75 = backtrace_string;
                  _os_log_impl(&dword_181A37000, v35, v36, "%{public}s nw_pac_resolver_obj_alloc failed, dumping backtrace:%{public}s", buf, 0x16u);
                }

                free(backtrace_string);
                if (!v31)
                {
                  goto LABEL_40;
                }

                goto LABEL_39;
              }

              if (v37)
              {
                *buf = 136446210;
                v73 = "nw_pac_resolver_create_with_script";
                _os_log_impl(&dword_181A37000, v35, v36, "%{public}s nw_pac_resolver_obj_alloc failed, no backtrace", buf, 0xCu);
              }
            }

LABEL_38:
            if (!v31)
            {
LABEL_40:

              goto LABEL_41;
            }

LABEL_39:
            free(v31);
            goto LABEL_40;
          }

          v50 = __nwlog_obj();
          *buf = 136446210;
          v73 = "nw_pac_resolver_create_with_script";
          v41 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v50, 16, "%{public}s called with null logging_id_str", buf, 12);

          type = OS_LOG_TYPE_ERROR;
          v70 = 0;
          if (__nwlog_fault(v41, &type, &v70))
          {
            if (type == OS_LOG_TYPE_FAULT)
            {
              v42 = __nwlog_obj();
              v51 = type;
              if (os_log_type_enabled(v42, type))
              {
                *buf = 136446210;
                v73 = "nw_pac_resolver_create_with_script";
                _os_log_impl(&dword_181A37000, v42, v51, "%{public}s called with null logging_id_str", buf, 0xCu);
              }

LABEL_106:

              goto LABEL_122;
            }

            if (v70 != 1)
            {
              v42 = __nwlog_obj();
              v68 = type;
              if (os_log_type_enabled(v42, type))
              {
                *buf = 136446210;
                v73 = "nw_pac_resolver_create_with_script";
                _os_log_impl(&dword_181A37000, v42, v68, "%{public}s called with null logging_id_str, backtrace limit exceeded", buf, 0xCu);
              }

              goto LABEL_106;
            }

            v52 = __nw_create_backtrace_string();
            v53 = __nwlog_obj();
            v62 = type;
            v63 = os_log_type_enabled(v53, type);
            if (v52)
            {
              if (v63)
              {
                *buf = 136446466;
                v73 = "nw_pac_resolver_create_with_script";
                v74 = 2082;
                v75 = v52;
                _os_log_impl(&dword_181A37000, v53, v62, "%{public}s called with null logging_id_str, dumping backtrace:%{public}s", buf, 0x16u);
              }

LABEL_91:

              free(v52);
              goto LABEL_122;
            }

            if (v63)
            {
              *buf = 136446210;
              v73 = "nw_pac_resolver_create_with_script";
              _os_log_impl(&dword_181A37000, v53, v62, "%{public}s called with null logging_id_str, no backtrace", buf, 0xCu);
            }

            goto LABEL_121;
          }
        }

        else
        {
          v48 = __nwlog_obj();
          *buf = 136446210;
          v73 = "nw_pac_resolver_create_with_script";
          v41 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v48, 16, "%{public}s called with null context", buf, 12);

          type = OS_LOG_TYPE_ERROR;
          v70 = 0;
          if (__nwlog_fault(v41, &type, &v70))
          {
            if (type == OS_LOG_TYPE_FAULT)
            {
              v42 = __nwlog_obj();
              v49 = type;
              if (os_log_type_enabled(v42, type))
              {
                *buf = 136446210;
                v73 = "nw_pac_resolver_create_with_script";
                _os_log_impl(&dword_181A37000, v42, v49, "%{public}s called with null context", buf, 0xCu);
              }

              goto LABEL_106;
            }

            if (v70 != 1)
            {
              v42 = __nwlog_obj();
              v67 = type;
              if (os_log_type_enabled(v42, type))
              {
                *buf = 136446210;
                v73 = "nw_pac_resolver_create_with_script";
                _os_log_impl(&dword_181A37000, v42, v67, "%{public}s called with null context, backtrace limit exceeded", buf, 0xCu);
              }

              goto LABEL_106;
            }

            v52 = __nw_create_backtrace_string();
            v53 = __nwlog_obj();
            v60 = type;
            v61 = os_log_type_enabled(v53, type);
            if (v52)
            {
              if (v61)
              {
                *buf = 136446466;
                v73 = "nw_pac_resolver_create_with_script";
                v74 = 2082;
                v75 = v52;
                _os_log_impl(&dword_181A37000, v53, v60, "%{public}s called with null context, dumping backtrace:%{public}s", buf, 0x16u);
              }

              goto LABEL_91;
            }

            if (v61)
            {
              *buf = 136446210;
              v73 = "nw_pac_resolver_create_with_script";
              _os_log_impl(&dword_181A37000, v53, v60, "%{public}s called with null context, no backtrace", buf, 0xCu);
            }

LABEL_121:
          }
        }
      }

      else
      {
        v46 = __nwlog_obj();
        *buf = 136446210;
        v73 = "nw_pac_resolver_create_with_script";
        v41 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v46, 16, "%{public}s called with null result_handler", buf, 12);

        type = OS_LOG_TYPE_ERROR;
        v70 = 0;
        if (__nwlog_fault(v41, &type, &v70))
        {
          if (type == OS_LOG_TYPE_FAULT)
          {
            v42 = __nwlog_obj();
            v47 = type;
            if (os_log_type_enabled(v42, type))
            {
              *buf = 136446210;
              v73 = "nw_pac_resolver_create_with_script";
              _os_log_impl(&dword_181A37000, v42, v47, "%{public}s called with null result_handler", buf, 0xCu);
            }

            goto LABEL_106;
          }

          if (v70 != 1)
          {
            v42 = __nwlog_obj();
            v66 = type;
            if (os_log_type_enabled(v42, type))
            {
              *buf = 136446210;
              v73 = "nw_pac_resolver_create_with_script";
              _os_log_impl(&dword_181A37000, v42, v66, "%{public}s called with null result_handler, backtrace limit exceeded", buf, 0xCu);
            }

            goto LABEL_106;
          }

          v52 = __nw_create_backtrace_string();
          v53 = __nwlog_obj();
          v58 = type;
          v59 = os_log_type_enabled(v53, type);
          if (v52)
          {
            if (v59)
            {
              *buf = 136446466;
              v73 = "nw_pac_resolver_create_with_script";
              v74 = 2082;
              v75 = v52;
              _os_log_impl(&dword_181A37000, v53, v58, "%{public}s called with null result_handler, dumping backtrace:%{public}s", buf, 0x16u);
            }

            goto LABEL_91;
          }

          if (v59)
          {
            *buf = 136446210;
            v73 = "nw_pac_resolver_create_with_script";
            _os_log_impl(&dword_181A37000, v53, v58, "%{public}s called with null result_handler, no backtrace", buf, 0xCu);
          }

          goto LABEL_121;
        }
      }
    }

    else
    {
      v44 = __nwlog_obj();
      *buf = 136446210;
      v73 = "nw_pac_resolver_create_with_script";
      v41 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v44, 16, "%{public}s called with null endpointURL", buf, 12);

      type = OS_LOG_TYPE_ERROR;
      v70 = 0;
      if (__nwlog_fault(v41, &type, &v70))
      {
        if (type == OS_LOG_TYPE_FAULT)
        {
          v42 = __nwlog_obj();
          v45 = type;
          if (os_log_type_enabled(v42, type))
          {
            *buf = 136446210;
            v73 = "nw_pac_resolver_create_with_script";
            _os_log_impl(&dword_181A37000, v42, v45, "%{public}s called with null endpointURL", buf, 0xCu);
          }

          goto LABEL_106;
        }

        if (v70 != 1)
        {
          v42 = __nwlog_obj();
          v65 = type;
          if (os_log_type_enabled(v42, type))
          {
            *buf = 136446210;
            v73 = "nw_pac_resolver_create_with_script";
            _os_log_impl(&dword_181A37000, v42, v65, "%{public}s called with null endpointURL, backtrace limit exceeded", buf, 0xCu);
          }

          goto LABEL_106;
        }

        v52 = __nw_create_backtrace_string();
        v53 = __nwlog_obj();
        v56 = type;
        v57 = os_log_type_enabled(v53, type);
        if (v52)
        {
          if (v57)
          {
            *buf = 136446466;
            v73 = "nw_pac_resolver_create_with_script";
            v74 = 2082;
            v75 = v52;
            _os_log_impl(&dword_181A37000, v53, v56, "%{public}s called with null endpointURL, dumping backtrace:%{public}s", buf, 0x16u);
          }

          goto LABEL_91;
        }

        if (v57)
        {
          *buf = 136446210;
          v73 = "nw_pac_resolver_create_with_script";
          _os_log_impl(&dword_181A37000, v53, v56, "%{public}s called with null endpointURL, no backtrace", buf, 0xCu);
        }

        goto LABEL_121;
      }
    }
  }

  else
  {
    v40 = __nwlog_obj();
    *buf = 136446210;
    v73 = "nw_pac_resolver_create_with_script";
    v41 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v40, 16, "%{public}s called with null pacScript", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v70 = 0;
    if (__nwlog_fault(v41, &type, &v70))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v42 = __nwlog_obj();
        v43 = type;
        if (os_log_type_enabled(v42, type))
        {
          *buf = 136446210;
          v73 = "nw_pac_resolver_create_with_script";
          _os_log_impl(&dword_181A37000, v42, v43, "%{public}s called with null pacScript", buf, 0xCu);
        }

        goto LABEL_106;
      }

      if (v70 != 1)
      {
        v42 = __nwlog_obj();
        v64 = type;
        if (os_log_type_enabled(v42, type))
        {
          *buf = 136446210;
          v73 = "nw_pac_resolver_create_with_script";
          _os_log_impl(&dword_181A37000, v42, v64, "%{public}s called with null pacScript, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_106;
      }

      v52 = __nw_create_backtrace_string();
      v53 = __nwlog_obj();
      v54 = type;
      v55 = os_log_type_enabled(v53, type);
      if (v52)
      {
        if (v55)
        {
          *buf = 136446466;
          v73 = "nw_pac_resolver_create_with_script";
          v74 = 2082;
          v75 = v52;
          _os_log_impl(&dword_181A37000, v53, v54, "%{public}s called with null pacScript, dumping backtrace:%{public}s", buf, 0x16u);
        }

        goto LABEL_91;
      }

      if (v55)
      {
        *buf = 136446210;
        v73 = "nw_pac_resolver_create_with_script";
        _os_log_impl(&dword_181A37000, v53, v54, "%{public}s called with null pacScript, no backtrace", buf, 0xCu);
      }

      goto LABEL_121;
    }
  }

LABEL_122:
  if (v41)
  {
    free(v41);
  }

  v20 = 0;
LABEL_41:

  return v20;
}

NWConcrete_nw_pac_resolver *nw_pac_resolver_create_with_url(const void *a1, const void *a2, const void *a3, const void *a4, void *a5, char a6, int a7, int a8, char a9, unsigned __int8 *a10, void *a11)
{
  v83 = *MEMORY[0x1E69E9840];
  v19 = a5;
  v20 = a11;
  v75 = v19;
  if (!a1)
  {
    v41 = v20;
    v43 = __nwlog_obj();
    *buf = 136446210;
    v80 = "nw_pac_resolver_create_with_url";
    v44 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v43, 16, "%{public}s called with null pacURL", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v77 = 0;
    if (!__nwlog_fault(v44, &type, &v77))
    {
      goto LABEL_120;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v45 = __nwlog_obj();
      v46 = type;
      if (os_log_type_enabled(v45, type))
      {
        *buf = 136446210;
        v80 = "nw_pac_resolver_create_with_url";
        _os_log_impl(&dword_181A37000, v45, v46, "%{public}s called with null pacURL", buf, 0xCu);
      }

      goto LABEL_104;
    }

    if (v77 != 1)
    {
      v45 = __nwlog_obj();
      v70 = type;
      if (os_log_type_enabled(v45, type))
      {
        *buf = 136446210;
        v80 = "nw_pac_resolver_create_with_url";
        _os_log_impl(&dword_181A37000, v45, v70, "%{public}s called with null pacURL, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_104;
    }

    backtrace_string = __nw_create_backtrace_string();
    v57 = __nwlog_obj();
    v58 = type;
    v59 = os_log_type_enabled(v57, type);
    if (backtrace_string)
    {
      if (v59)
      {
        *buf = 136446466;
        v80 = "nw_pac_resolver_create_with_url";
        v81 = 2082;
        v82 = backtrace_string;
        _os_log_impl(&dword_181A37000, v57, v58, "%{public}s called with null pacURL, dumping backtrace:%{public}s", buf, 0x16u);
      }

      goto LABEL_85;
    }

    if (v59)
    {
      *buf = 136446210;
      v80 = "nw_pac_resolver_create_with_url";
      _os_log_impl(&dword_181A37000, v57, v58, "%{public}s called with null pacURL, no backtrace", buf, 0xCu);
    }

    goto LABEL_119;
  }

  if (!a2)
  {
    v41 = v20;
    v47 = __nwlog_obj();
    *buf = 136446210;
    v80 = "nw_pac_resolver_create_with_url";
    v44 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v47, 16, "%{public}s called with null endpointURL", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v77 = 0;
    if (!__nwlog_fault(v44, &type, &v77))
    {
      goto LABEL_120;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v45 = __nwlog_obj();
      v48 = type;
      if (os_log_type_enabled(v45, type))
      {
        *buf = 136446210;
        v80 = "nw_pac_resolver_create_with_url";
        _os_log_impl(&dword_181A37000, v45, v48, "%{public}s called with null endpointURL", buf, 0xCu);
      }

      goto LABEL_104;
    }

    if (v77 != 1)
    {
      v45 = __nwlog_obj();
      v71 = type;
      if (os_log_type_enabled(v45, type))
      {
        *buf = 136446210;
        v80 = "nw_pac_resolver_create_with_url";
        _os_log_impl(&dword_181A37000, v45, v71, "%{public}s called with null endpointURL, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_104;
    }

    backtrace_string = __nw_create_backtrace_string();
    v57 = __nwlog_obj();
    v60 = type;
    v61 = os_log_type_enabled(v57, type);
    if (backtrace_string)
    {
      if (v61)
      {
        *buf = 136446466;
        v80 = "nw_pac_resolver_create_with_url";
        v81 = 2082;
        v82 = backtrace_string;
        _os_log_impl(&dword_181A37000, v57, v60, "%{public}s called with null endpointURL, dumping backtrace:%{public}s", buf, 0x16u);
      }

      goto LABEL_85;
    }

    if (v61)
    {
      *buf = 136446210;
      v80 = "nw_pac_resolver_create_with_url";
      _os_log_impl(&dword_181A37000, v57, v60, "%{public}s called with null endpointURL, no backtrace", buf, 0xCu);
    }

LABEL_119:

LABEL_120:
    if (!v44)
    {
LABEL_122:
      v22 = 0;
      goto LABEL_45;
    }

LABEL_121:
    free(v44);
    goto LABEL_122;
  }

  if (!v20)
  {
    v41 = 0;
    v49 = __nwlog_obj();
    *buf = 136446210;
    v80 = "nw_pac_resolver_create_with_url";
    v44 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v49, 16, "%{public}s called with null result_handler", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v77 = 0;
    if (!__nwlog_fault(v44, &type, &v77))
    {
      goto LABEL_120;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v45 = __nwlog_obj();
      v50 = type;
      if (os_log_type_enabled(v45, type))
      {
        *buf = 136446210;
        v80 = "nw_pac_resolver_create_with_url";
        _os_log_impl(&dword_181A37000, v45, v50, "%{public}s called with null result_handler", buf, 0xCu);
      }

LABEL_104:

      goto LABEL_120;
    }

    if (v77 != 1)
    {
      v45 = __nwlog_obj();
      v72 = type;
      if (os_log_type_enabled(v45, type))
      {
        *buf = 136446210;
        v80 = "nw_pac_resolver_create_with_url";
        _os_log_impl(&dword_181A37000, v45, v72, "%{public}s called with null result_handler, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_104;
    }

    backtrace_string = __nw_create_backtrace_string();
    v57 = __nwlog_obj();
    v62 = type;
    v63 = os_log_type_enabled(v57, type);
    if (backtrace_string)
    {
      if (v63)
      {
        *buf = 136446466;
        v80 = "nw_pac_resolver_create_with_url";
        v81 = 2082;
        v82 = backtrace_string;
        _os_log_impl(&dword_181A37000, v57, v62, "%{public}s called with null result_handler, dumping backtrace:%{public}s", buf, 0x16u);
      }

LABEL_85:

      free(backtrace_string);
      goto LABEL_120;
    }

    if (v63)
    {
      *buf = 136446210;
      v80 = "nw_pac_resolver_create_with_url";
      _os_log_impl(&dword_181A37000, v57, v62, "%{public}s called with null result_handler, no backtrace", buf, 0xCu);
    }

    goto LABEL_119;
  }

  aBlock = v20;
  if (!v19)
  {
    v51 = __nwlog_obj();
    *buf = 136446210;
    v80 = "nw_pac_resolver_create_with_url";
    v44 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v51, 16, "%{public}s called with null context", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v77 = 0;
    if (!__nwlog_fault(v44, &type, &v77))
    {
      goto LABEL_129;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v52 = __nwlog_obj();
      v53 = type;
      if (os_log_type_enabled(v52, type))
      {
        *buf = 136446210;
        v80 = "nw_pac_resolver_create_with_url";
        _os_log_impl(&dword_181A37000, v52, v53, "%{public}s called with null context", buf, 0xCu);
      }

      goto LABEL_110;
    }

    if (v77 != 1)
    {
      v52 = __nwlog_obj();
      v73 = type;
      if (os_log_type_enabled(v52, type))
      {
        *buf = 136446210;
        v80 = "nw_pac_resolver_create_with_url";
        _os_log_impl(&dword_181A37000, v52, v73, "%{public}s called with null context, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_110;
    }

    v64 = __nw_create_backtrace_string();
    v65 = __nwlog_obj();
    v66 = type;
    v67 = os_log_type_enabled(v65, type);
    if (v64)
    {
      if (v67)
      {
        *buf = 136446466;
        v80 = "nw_pac_resolver_create_with_url";
        v81 = 2082;
        v82 = v64;
        _os_log_impl(&dword_181A37000, v65, v66, "%{public}s called with null context, dumping backtrace:%{public}s", buf, 0x16u);
      }

      goto LABEL_95;
    }

    if (v67)
    {
      *buf = 136446210;
      v80 = "nw_pac_resolver_create_with_url";
      _os_log_impl(&dword_181A37000, v65, v66, "%{public}s called with null context, no backtrace", buf, 0xCu);
    }

LABEL_128:

LABEL_129:
    v41 = aBlock;
    if (!v44)
    {
      goto LABEL_122;
    }

    goto LABEL_121;
  }

  v21 = a10;
  if (!a10)
  {
    v54 = __nwlog_obj();
    *buf = 136446210;
    v80 = "nw_pac_resolver_create_with_url";
    v44 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v54, 16, "%{public}s called with null logging_id_str", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v77 = 0;
    if (!__nwlog_fault(v44, &type, &v77))
    {
      goto LABEL_129;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v52 = __nwlog_obj();
      v55 = type;
      if (os_log_type_enabled(v52, type))
      {
        *buf = 136446210;
        v80 = "nw_pac_resolver_create_with_url";
        _os_log_impl(&dword_181A37000, v52, v55, "%{public}s called with null logging_id_str", buf, 0xCu);
      }

LABEL_110:

      goto LABEL_129;
    }

    if (v77 != 1)
    {
      v52 = __nwlog_obj();
      v74 = type;
      if (os_log_type_enabled(v52, type))
      {
        *buf = 136446210;
        v80 = "nw_pac_resolver_create_with_url";
        _os_log_impl(&dword_181A37000, v52, v74, "%{public}s called with null logging_id_str, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_110;
    }

    v64 = __nw_create_backtrace_string();
    v65 = __nwlog_obj();
    v68 = type;
    v69 = os_log_type_enabled(v65, type);
    if (v64)
    {
      if (v69)
      {
        *buf = 136446466;
        v80 = "nw_pac_resolver_create_with_url";
        v81 = 2082;
        v82 = v64;
        _os_log_impl(&dword_181A37000, v65, v68, "%{public}s called with null logging_id_str, dumping backtrace:%{public}s", buf, 0x16u);
      }

LABEL_95:

      free(v64);
      goto LABEL_129;
    }

    if (v69)
    {
      *buf = 136446210;
      v80 = "nw_pac_resolver_create_with_url";
      _os_log_impl(&dword_181A37000, v65, v68, "%{public}s called with null logging_id_str, no backtrace", buf, 0xCu);
    }

    goto LABEL_128;
  }

  v22 = objc_alloc_init(NWConcrete_nw_pac_resolver);
  if (v22)
  {
    *(v22 + 3) = CFRetain(a2);
    *(v22 + 4) = CFRetain(a1);
    if (a3)
    {
      *(v22 + 6) = CFRetain(a3);
    }

    if (a4)
    {
      *(v22 + 7) = CFRetain(a4);
    }

    v23 = _Block_copy(aBlock);
    v24 = *(v22 + 1);
    *(v22 + 1) = v23;

    objc_storeStrong(v22 + 2, a5);
    if (a7)
    {
      v25 = 2;
    }

    else
    {
      v25 = 0;
    }

    if (a8)
    {
      v26 = 4;
    }

    else
    {
      v26 = 0;
    }

    if (a9)
    {
      v27 = 8;
    }

    else
    {
      v27 = 0;
    }

    *(v22 + 159) = v25 | a6 | v26 | v27 | *(v22 + 159) & 0xF0;
    v28 = v22 + 84;
    v29 = 75;
    while (1)
    {
      v30 = *v21;
      *v28 = v30;
      if (!v30)
      {
        break;
      }

      ++v28;
      ++v21;
      if (--v29 <= 1)
      {
        *v28 = 0;
        break;
      }
    }

    v31 = v22;
    goto LABEL_44;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v32 = gLogObj;
  *buf = 136446210;
  v80 = "nw_pac_resolver_create_with_url";
  v33 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v32, 16, "%{public}s nw_pac_resolver_obj_alloc failed", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v77 = 0;
  if (__nwlog_fault(v33, &type, &v77))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v34 = gLogObj;
      v35 = type;
      if (os_log_type_enabled(v34, type))
      {
        *buf = 136446210;
        v80 = "nw_pac_resolver_create_with_url";
        _os_log_impl(&dword_181A37000, v34, v35, "%{public}s nw_pac_resolver_obj_alloc failed", buf, 0xCu);
      }

LABEL_29:

      goto LABEL_42;
    }

    if (v77 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v34 = gLogObj;
      v40 = type;
      if (os_log_type_enabled(v34, type))
      {
        *buf = 136446210;
        v80 = "nw_pac_resolver_create_with_url";
        _os_log_impl(&dword_181A37000, v34, v40, "%{public}s nw_pac_resolver_obj_alloc failed, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_29;
    }

    v36 = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v37 = gLogObj;
    v38 = type;
    v39 = os_log_type_enabled(v37, type);
    if (v36)
    {
      if (v39)
      {
        *buf = 136446466;
        v80 = "nw_pac_resolver_create_with_url";
        v81 = 2082;
        v82 = v36;
        _os_log_impl(&dword_181A37000, v37, v38, "%{public}s nw_pac_resolver_obj_alloc failed, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v36);
      if (!v33)
      {
        goto LABEL_44;
      }

      goto LABEL_43;
    }

    if (v39)
    {
      *buf = 136446210;
      v80 = "nw_pac_resolver_create_with_url";
      _os_log_impl(&dword_181A37000, v37, v38, "%{public}s nw_pac_resolver_obj_alloc failed, no backtrace", buf, 0xCu);
    }
  }

LABEL_42:
  if (v33)
  {
LABEL_43:
    free(v33);
  }

LABEL_44:

  v41 = aBlock;
LABEL_45:

  return v22;
}

void nw_pac_resolver_start(void *a1)
{
  v52 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    v36 = __nwlog_obj();
    LODWORD(clientContext.version) = 136446210;
    *(&clientContext.version + 4) = "nw_pac_resolver_start";
    v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v36, 16, "%{public}s called with null pac", &clientContext, 12);

    buf[0] = 16;
    type = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault(v9, buf, &type))
    {
      if (buf[0] == 17)
      {
        v37 = __nwlog_obj();
        v38 = buf[0];
        if (os_log_type_enabled(v37, buf[0]))
        {
          LODWORD(clientContext.version) = 136446210;
          *(&clientContext.version + 4) = "nw_pac_resolver_start";
          _os_log_impl(&dword_181A37000, v37, v38, "%{public}s called with null pac", &clientContext, 0xCu);
        }
      }

      else if (type == OS_LOG_TYPE_INFO)
      {
        backtrace_string = __nw_create_backtrace_string();
        v37 = __nwlog_obj();
        v39 = buf[0];
        v40 = os_log_type_enabled(v37, buf[0]);
        if (backtrace_string)
        {
          if (v40)
          {
            LODWORD(clientContext.version) = 136446466;
            *(&clientContext.version + 4) = "nw_pac_resolver_start";
            WORD2(clientContext.info) = 2082;
            *(&clientContext.info + 6) = backtrace_string;
            _os_log_impl(&dword_181A37000, v37, v39, "%{public}s called with null pac, dumping backtrace:%{public}s", &clientContext, 0x16u);
          }

LABEL_59:
          free(backtrace_string);
          if (!v9)
          {
            goto LABEL_82;
          }

          goto LABEL_81;
        }

        if (v40)
        {
          LODWORD(clientContext.version) = 136446210;
          *(&clientContext.version + 4) = "nw_pac_resolver_start";
          _os_log_impl(&dword_181A37000, v37, v39, "%{public}s called with null pac, no backtrace", &clientContext, 0xCu);
        }
      }

      else
      {
        v37 = __nwlog_obj();
        v41 = buf[0];
        if (os_log_type_enabled(v37, buf[0]))
        {
          LODWORD(clientContext.version) = 136446210;
          *(&clientContext.version + 4) = "nw_pac_resolver_start";
          _os_log_impl(&dword_181A37000, v37, v41, "%{public}s called with null pac, backtrace limit exceeded", &clientContext, 0xCu);
        }
      }
    }

LABEL_80:
    if (!v9)
    {
      goto LABEL_82;
    }

LABEL_81:
    free(v9);
    goto LABEL_82;
  }

  v3 = *(v1 + 4);
  if (v3)
  {
    clientContext.version = 0;
    clientContext.info = v1;
    clientContext.retain = nw_pac_resolver_retain;
    clientContext.release = nw_pac_resolver_release;
    clientContext.copyDescription = 0;
    v4 = *(v1 + 3);
    if (*(v1 + 3) == 0)
    {
      v5 = CFNetworkExecuteProxyAutoConfigurationURL(v3, v4, nw_pac_resolver_callback, &clientContext);
    }

    else
    {
      v5 = MEMORY[0x1865DC2B0](v3, v4);
    }

    v7 = v5;
    if (v5)
    {
      pthread_mutex_lock(&sOutstandingPacURLMutex);
      if (nw_get_outstanding_pac_urls(void)::onceToken != -1)
      {
        dispatch_once(&nw_get_outstanding_pac_urls(void)::onceToken, &__block_literal_global_33980);
      }

      v12 = nw_get_outstanding_pac_urls(void)::gPACURLs;
      if (nw_get_outstanding_pac_urls(void)::gPACURLs)
      {
        v53.length = CFArrayGetCount(nw_get_outstanding_pac_urls(void)::gPACURLs);
        v53.location = 0;
        if (!CFArrayContainsValue(v12, v53, v3))
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v13 = gLogObj;
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136446466;
            v49 = "nw_add_outstanding_pac_url";
            v50 = 2114;
            v51 = v3;
            _os_log_impl(&dword_181A37000, v13, OS_LOG_TYPE_DEBUG, "%{public}s Adding outstanding PAC URL: %{public}@", buf, 0x16u);
          }

          CFArrayAppendValue(v12, v3);
        }

        goto LABEL_75;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v16 = gLogObj;
      *buf = 136446210;
      v49 = "nw_add_outstanding_pac_url";
      v17 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v16, 16, "%{public}s nw_get_outstanding_pac_urls failed", buf, 12);

      type = OS_LOG_TYPE_ERROR;
      v45 = 0;
      if (__nwlog_fault(v17, &type, &v45))
      {
        if (type == OS_LOG_TYPE_FAULT)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v18 = gLogObj;
          v19 = type;
          if (os_log_type_enabled(v18, type))
          {
            *buf = 136446210;
            v49 = "nw_add_outstanding_pac_url";
            _os_log_impl(&dword_181A37000, v18, v19, "%{public}s nw_get_outstanding_pac_urls failed", buf, 0xCu);
          }
        }

        else if (v45 == 1)
        {
          v27 = __nw_create_backtrace_string();
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v18 = gLogObj;
          v28 = type;
          v29 = os_log_type_enabled(v18, type);
          if (v27)
          {
            if (v29)
            {
              *buf = 136446466;
              v49 = "nw_add_outstanding_pac_url";
              v50 = 2082;
              v51 = v27;
              _os_log_impl(&dword_181A37000, v18, v28, "%{public}s nw_get_outstanding_pac_urls failed, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(v27);
            if (!v17)
            {
              goto LABEL_75;
            }

            goto LABEL_74;
          }

          if (v29)
          {
            *buf = 136446210;
            v49 = "nw_add_outstanding_pac_url";
            _os_log_impl(&dword_181A37000, v18, v28, "%{public}s nw_get_outstanding_pac_urls failed, no backtrace", buf, 0xCu);
          }
        }

        else
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v18 = gLogObj;
          v33 = type;
          if (os_log_type_enabled(v18, type))
          {
            *buf = 136446210;
            v49 = "nw_add_outstanding_pac_url";
            _os_log_impl(&dword_181A37000, v18, v33, "%{public}s nw_get_outstanding_pac_urls failed, backtrace limit exceeded", buf, 0xCu);
          }
        }
      }

      if (!v17)
      {
LABEL_75:
        pthread_mutex_unlock(&sOutstandingPacURLMutex);
        goto LABEL_76;
      }

LABEL_74:
      free(v17);
      goto LABEL_75;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v14 = gLogObj;
    *buf = 136446210;
    v49 = "nw_pac_resolver_start";
    v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v14, 16, "%{public}s CFNetworkExecuteProxyAutoConfigurationURL failed", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v45 = 0;
    if (!__nwlog_fault(v9, &type, &v45))
    {
      goto LABEL_80;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v10 = gLogObj;
      v15 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v49 = "nw_pac_resolver_start";
        _os_log_impl(&dword_181A37000, v10, v15, "%{public}s CFNetworkExecuteProxyAutoConfigurationURL failed", buf, 0xCu);
      }

LABEL_79:

      goto LABEL_80;
    }

    if (v45 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v10 = gLogObj;
      v30 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v49 = "nw_pac_resolver_start";
        _os_log_impl(&dword_181A37000, v10, v30, "%{public}s CFNetworkExecuteProxyAutoConfigurationURL failed, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_79;
    }

    backtrace_string = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v10 = gLogObj;
    v25 = type;
    v26 = os_log_type_enabled(v10, type);
    if (!backtrace_string)
    {
      if (v26)
      {
        *buf = 136446210;
        v49 = "nw_pac_resolver_start";
        _os_log_impl(&dword_181A37000, v10, v25, "%{public}s CFNetworkExecuteProxyAutoConfigurationURL failed, no backtrace", buf, 0xCu);
      }

      goto LABEL_79;
    }

    if (v26)
    {
      *buf = 136446466;
      v49 = "nw_pac_resolver_start";
      v50 = 2082;
      v51 = backtrace_string;
      _os_log_impl(&dword_181A37000, v10, v25, "%{public}s CFNetworkExecuteProxyAutoConfigurationURL failed, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_58;
  }

  v6 = *(v1 + 5);
  if (v6)
  {
    clientContext.version = 0;
    clientContext.info = v2;
    clientContext.retain = nw_pac_resolver_retain;
    clientContext.release = nw_pac_resolver_release;
    clientContext.copyDescription = 0;
    v7 = CFNetworkExecuteProxyAutoConfigurationScript(v6, *(v2 + 3), nw_pac_resolver_callback, &clientContext);
    if (v7)
    {
LABEL_76:
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __nw_pac_resolver_start_block_invoke;
      aBlock[3] = &unk_1E6A3AC58;
      v44 = v7;
      v43 = v2;
      v35 = _Block_copy(aBlock);
      os_unfair_lock_lock(v2 + 20);
      v35[2](v35);
      os_unfair_lock_unlock(v2 + 20);

      goto LABEL_82;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v8 = gLogObj;
    *buf = 136446210;
    v49 = "nw_pac_resolver_start";
    v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v8, 16, "%{public}s CFNetworkExecuteProxyAutoConfigurationScript failed", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v45 = 0;
    if (!__nwlog_fault(v9, &type, &v45))
    {
      goto LABEL_80;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v10 = gLogObj;
      v11 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v49 = "nw_pac_resolver_start";
        _os_log_impl(&dword_181A37000, v10, v11, "%{public}s CFNetworkExecuteProxyAutoConfigurationScript failed", buf, 0xCu);
      }

      goto LABEL_79;
    }

    if (v45 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v10 = gLogObj;
      v34 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v49 = "nw_pac_resolver_start";
        _os_log_impl(&dword_181A37000, v10, v34, "%{public}s CFNetworkExecuteProxyAutoConfigurationScript failed, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_79;
    }

    backtrace_string = __nw_create_backtrace_string();
    v10 = __nwlog_obj();
    v31 = type;
    v32 = os_log_type_enabled(v10, type);
    if (!backtrace_string)
    {
      if (v32)
      {
        *buf = 136446210;
        v49 = "nw_pac_resolver_start";
        _os_log_impl(&dword_181A37000, v10, v31, "%{public}s CFNetworkExecuteProxyAutoConfigurationScript failed, no backtrace", buf, 0xCu);
      }

      goto LABEL_79;
    }

    if (v32)
    {
      *buf = 136446466;
      v49 = "nw_pac_resolver_start";
      v50 = 2082;
      v51 = backtrace_string;
      _os_log_impl(&dword_181A37000, v10, v31, "%{public}s CFNetworkExecuteProxyAutoConfigurationScript failed, dumping backtrace:%{public}s", buf, 0x16u);
    }

LABEL_58:

    goto LABEL_59;
  }

  v20 = *(v2 + 2);
  if (!v20 || *(v20 + 132) != 4)
  {
    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v21 = gconnectionLogObj;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = " dry-run";
      v23 = v2[159];
      *(&clientContext.version + 4) = "nw_pac_resolver_start";
      LODWORD(clientContext.version) = 136446722;
      WORD2(clientContext.info) = 2082;
      if ((v23 & 8) == 0)
      {
        v22 = "";
      }

      *(&clientContext.info + 6) = v2 + 84;
      HIWORD(clientContext.retain) = 2082;
      clientContext.release = v22;
      _os_log_impl(&dword_181A37000, v21, OS_LOG_TYPE_ERROR, "%{public}s [C%{public}s%{public}s proxy pac] Either pacURL or pacScript must be set", &clientContext, 0x20u);
    }
  }

LABEL_82:
}

void __nw_pac_resolver_start_block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E695AC40] resourceLoaderRunLoop];
  v3 = *MEMORY[0x1E695E8E0];
  CFRunLoopAddSource(v2, *(a1 + 40), *MEMORY[0x1E695E8E0]);
  *(*(a1 + 32) + 64) = *(a1 + 40);
  v4 = *(a1 + 32);
  context.version = 0;
  context.info = v4;
  context.retain = nw_pac_resolver_const_retain;
  context.release = nw_pac_resolver_const_release;
  context.copyDescription = 0;
  v5 = *MEMORY[0x1E695E480];
  Current = CFAbsoluteTimeGetCurrent();
  *(*(a1 + 32) + 72) = CFRunLoopTimerCreate(v5, Current + 60.0, 0.0, 0, 0, nw_pac_timeout_callback, &context);
  CFRunLoopAddTimer([MEMORY[0x1E695AC40] resourceLoaderRunLoop], *(*(a1 + 32) + 72), v3);
}

void nw_pac_timeout_callback(__CFRunLoopTimer *a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = CFErrorCreate(*MEMORY[0x1E695E480], @"kCFErrorDomainCFNetwork", -1001, 0);
  v4 = a2;
  v5 = *(v4 + 2);
  if (!v5 || *(v5 + 132) != 4)
  {
    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v6 = gconnectionLogObj;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      if ((v4[159] & 8) != 0)
      {
        v7 = " dry-run";
      }

      else
      {
        v7 = "";
      }

      v8 = 136447234;
      v9 = "nw_pac_timeout_callback";
      v10 = 2082;
      v11 = v4 + 84;
      v12 = 2082;
      v13 = v7;
      v14 = 2114;
      Domain = CFErrorGetDomain(v3);
      v16 = 2048;
      Code = CFErrorGetCode(v3);
      _os_log_impl(&dword_181A37000, v6, OS_LOG_TYPE_ERROR, "%{public}s [C%{public}s%{public}s proxy pac] Timed out waiting for PAC query: %{public}@: %ld", &v8, 0x34u);
    }
  }

  nw_pac_resolver_callback(v4, 0, v3);
  if (v3)
  {
    CFRelease(v3);
  }
}

void nw_pac_resolver_callback(void *a1, const __CFArray *a2, __CFError *a3)
{
  v45 = *MEMORY[0x1E69E9840];
  v5 = a1;
  if (v5)
  {
    v6 = a2;
    v7 = a3;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = ___ZL24nw_pac_resolver_callbackPvPK9__CFArrayP9__CFError_block_invoke;
    aBlock[3] = &unk_1E6A3D868;
    v8 = v5;
    v38 = v8;
    v9 = _Block_copy(aBlock);
    os_unfair_lock_lock(v5 + 20);
    v9[2](v9);
    os_unfair_lock_unlock(v5 + 20);

    v10 = *&v8[8]._os_unfair_lock_opaque;
    if (!v10)
    {
LABEL_18:
      v18 = *&v8[4]._os_unfair_lock_opaque;
      v33[0] = MEMORY[0x1E69E9820];
      v33[1] = 3221225472;
      v33[2] = ___ZL24nw_pac_resolver_callbackPvPK9__CFArrayP9__CFError_block_invoke_2;
      v33[3] = &unk_1E6A3B4E0;
      v34 = v8;
      v19 = v6;
      v35 = v19;
      v20 = v7;
      v36 = v20;
      nw_queue_context_async(v18, v33);

      goto LABEL_19;
    }

    pthread_mutex_lock(&sOutstandingPacURLMutex);
    if (nw_get_outstanding_pac_urls(void)::onceToken != -1)
    {
      dispatch_once(&nw_get_outstanding_pac_urls(void)::onceToken, &__block_literal_global_33980);
    }

    v11 = nw_get_outstanding_pac_urls(void)::gPACURLs;
    if (nw_get_outstanding_pac_urls(void)::gPACURLs)
    {
      v46.length = CFArrayGetCount(nw_get_outstanding_pac_urls(void)::gPACURLs);
      v46.location = 0;
      FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v11, v46, v10);
      if (FirstIndexOfValue != -1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v13 = gLogObj;
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136446466;
          v42 = "nw_remove_outstanding_pac_url";
          v43 = 2114;
          v44 = v10;
          _os_log_impl(&dword_181A37000, v13, OS_LOG_TYPE_DEBUG, "%{public}s Removing outstanding PAC URL: %{public}@", buf, 0x16u);
        }

        CFArrayRemoveValueAtIndex(v11, FirstIndexOfValue);
      }

      goto LABEL_17;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v14 = gLogObj;
    *buf = 136446210;
    v42 = "nw_remove_outstanding_pac_url";
    v15 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v14, 16, "%{public}s nw_get_outstanding_pac_urls failed", buf, 12);

    v40 = OS_LOG_TYPE_ERROR;
    v39 = 0;
    if (__nwlog_fault(v15, &v40, &v39))
    {
      if (v40 == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v16 = gLogObj;
        v17 = v40;
        if (os_log_type_enabled(v16, v40))
        {
          *buf = 136446210;
          v42 = "nw_remove_outstanding_pac_url";
          _os_log_impl(&dword_181A37000, v16, v17, "%{public}s nw_get_outstanding_pac_urls failed", buf, 0xCu);
        }
      }

      else if (v39 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v16 = gLogObj;
        v22 = v40;
        v23 = os_log_type_enabled(v16, v40);
        if (backtrace_string)
        {
          if (v23)
          {
            *buf = 136446466;
            v42 = "nw_remove_outstanding_pac_url";
            v43 = 2082;
            v44 = backtrace_string;
            _os_log_impl(&dword_181A37000, v16, v22, "%{public}s nw_get_outstanding_pac_urls failed, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          if (!v15)
          {
            goto LABEL_17;
          }

          goto LABEL_16;
        }

        if (v23)
        {
          *buf = 136446210;
          v42 = "nw_remove_outstanding_pac_url";
          _os_log_impl(&dword_181A37000, v16, v22, "%{public}s nw_get_outstanding_pac_urls failed, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v16 = gLogObj;
        v24 = v40;
        if (os_log_type_enabled(v16, v40))
        {
          *buf = 136446210;
          v42 = "nw_remove_outstanding_pac_url";
          _os_log_impl(&dword_181A37000, v16, v24, "%{public}s nw_get_outstanding_pac_urls failed, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

    if (!v15)
    {
LABEL_17:
      pthread_mutex_unlock(&sOutstandingPacURLMutex);
      goto LABEL_18;
    }

LABEL_16:
    free(v15);
    goto LABEL_17;
  }

  v25 = __nwlog_obj();
  *buf = 136446210;
  v42 = "nw_pac_resolver_callback";
  v26 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v25, 16, "%{public}s called with null pac", buf, 12);

  v40 = OS_LOG_TYPE_ERROR;
  v39 = 0;
  if (__nwlog_fault(v26, &v40, &v39))
  {
    if (v40 == OS_LOG_TYPE_FAULT)
    {
      v27 = __nwlog_obj();
      v28 = v40;
      if (os_log_type_enabled(v27, v40))
      {
        *buf = 136446210;
        v42 = "nw_pac_resolver_callback";
        _os_log_impl(&dword_181A37000, v27, v28, "%{public}s called with null pac", buf, 0xCu);
      }
    }

    else if (v39 == 1)
    {
      v29 = __nw_create_backtrace_string();
      v27 = __nwlog_obj();
      v30 = v40;
      v31 = os_log_type_enabled(v27, v40);
      if (v29)
      {
        if (v31)
        {
          *buf = 136446466;
          v42 = "nw_pac_resolver_callback";
          v43 = 2082;
          v44 = v29;
          _os_log_impl(&dword_181A37000, v27, v30, "%{public}s called with null pac, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v29);
        goto LABEL_48;
      }

      if (v31)
      {
        *buf = 136446210;
        v42 = "nw_pac_resolver_callback";
        _os_log_impl(&dword_181A37000, v27, v30, "%{public}s called with null pac, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v27 = __nwlog_obj();
      v32 = v40;
      if (os_log_type_enabled(v27, v40))
      {
        *buf = 136446210;
        v42 = "nw_pac_resolver_callback";
        _os_log_impl(&dword_181A37000, v27, v32, "%{public}s called with null pac, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_48:
  if (v26)
  {
    free(v26);
  }

LABEL_19:
}

void ___ZL24nw_pac_resolver_callbackPvPK9__CFArrayP9__CFError_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 64);
  if (v3)
  {
    CFRunLoopSourceInvalidate(v3);
    v2 = *(a1 + 32);
    v4 = *(v2 + 64);
    if (v4)
    {
      CFRelease(v4);
      *(*(a1 + 32) + 64) = 0;
      v2 = *(a1 + 32);
    }
  }

  v5 = *(v2 + 72);
  if (v5)
  {
    CFRunLoopTimerInvalidate(v5);
    v6 = *(*(a1 + 32) + 72);
    if (v6)
    {
      CFRelease(v6);
      *(*(a1 + 32) + 72) = 0;
    }
  }
}

void ___ZL24nw_pac_resolver_callbackPvPK9__CFArrayP9__CFError_block_invoke_2(uint64_t a1)
{
  v93 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  if (v1[1])
  {
    v4 = *(a1 + 40);
    v3 = *(a1 + 48);
    v5 = v1;
    v6 = v5[2];
    if (v3)
    {
      if (!v6 || *(v6 + 132) != 4)
      {
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v7 = gconnectionLogObj;
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          if ((*(v5 + 159) & 8) != 0)
          {
            v8 = " dry-run";
          }

          else
          {
            v8 = "";
          }

          *buf = 136447234;
          v84 = "nw_proxy_resolver_create_parsed_array";
          v85 = 2082;
          v86 = v5 + 84;
          v87 = 2082;
          v88 = v8;
          v89 = 2114;
          Domain = CFErrorGetDomain(v3);
          v91 = 2048;
          Code = CFErrorGetCode(v3);
          _os_log_impl(&dword_181A37000, v7, OS_LOG_TYPE_ERROR, "%{public}s [C%{public}s%{public}s proxy pac] Evaluation error: %{public}@: %ld", buf, 0x34u);
        }
      }

      if (CFErrorGetCode(v3) == -1001)
      {
        v9 = CFErrorGetDomain(v3);
        CFStringCompare(v9, @"kCFErrorDomainCFNetwork", 0);
      }
    }

    else if (!v6 || *(v6 + 132) != 4)
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v10 = gconnectionLogObj;
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        v11 = *(v5 + 159);
        Count = CFArrayGetCount(v4);
        v13 = " dry-run";
        *buf = 136446978;
        v84 = "nw_proxy_resolver_create_parsed_array";
        v85 = 2082;
        v86 = v5 + 84;
        if ((v11 & 8) == 0)
        {
          v13 = "";
        }

        v87 = 2082;
        v88 = v13;
        v89 = 2048;
        Domain = Count;
        _os_log_impl(&dword_181A37000, v10, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s%{public}s proxy pac] Resolver returned %ld proxies", buf, 0x2Au);
      }
    }

    if (v4)
    {
      v80 = _nw_array_create();
      v14 = CFArrayGetCount(v4);
      if (v14 >= 1)
      {
        v15 = 0;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v4, v15);
          v17 = ValueAtIndex;
          if (ValueAtIndex)
          {
            v18 = CFGetTypeID(ValueAtIndex);
            if (v18 == CFDictionaryGetTypeID())
            {
              break;
            }
          }

          v32 = v5[2];
          if (v32 && *(v32 + 132) == 4)
          {
            goto LABEL_71;
          }

          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          direct = gconnectionLogObj;
          if (os_log_type_enabled(&direct->super, OS_LOG_TYPE_ERROR))
          {
            v33 = " dry-run";
            if ((*(v5 + 159) & 8) == 0)
            {
              v33 = "";
            }

            *buf = 136446978;
            v84 = "nw_proxy_resolver_create_parsed_array";
            v85 = 2082;
            v86 = v5 + 84;
            v87 = 2082;
            v88 = v33;
            v89 = 2114;
            Domain = v17;
            _os_log_impl(&dword_181A37000, &direct->super, OS_LOG_TYPE_ERROR, "%{public}s [C%{public}s%{public}s proxy pac] Unknown item in pac proxy list %{public}@", buf, 0x2Au);
          }

LABEL_70:

LABEL_71:
          if (v14 == ++v15)
          {
            goto LABEL_149;
          }
        }

        Value = CFDictionaryGetValue(v17, @"kCFProxyTypeKey");
        v20 = Value;
        if (Value && (v21 = CFGetTypeID(Value), v21 == CFStringGetTypeID()))
        {
          if (CFStringCompare(v20, @"kCFProxyTypeNone", 0) == kCFCompareEqualTo)
          {
            direct = nw_proxy_config_create_direct();
            goto LABEL_140;
          }

          v22 = CFDictionaryGetValue(v17, @"kCFProxyHostNameKey");
          v23 = v22;
          if (v22)
          {
            v24 = CFGetTypeID(v22);
            if (v24 == CFStringGetTypeID())
            {
              type = _CFXPCCreateXPCObjectFromCFObject();
              if (type)
              {
                valuePtr = 0;
                v25 = CFDictionaryGetValue(v17, @"kCFProxyPortNumberKey");
                v26 = v25;
                if (v25)
                {
                  v27 = CFGetTypeID(v25);
                  if (v27 == CFNumberGetTypeID())
                  {
                    CFNumberGetValue(v26, kCFNumberIntType, &valuePtr);
                  }
                }

                if (CFStringCompare(v20, @"kCFProxyTypeSOCKS", 0))
                {
                  if (!v5[3])
                  {
                    goto LABEL_99;
                  }

                  if (CFStringCompare(v20, @"kCFProxyTypeHTTP", 0) == kCFCompareEqualTo)
                  {
                    goto LABEL_100;
                  }

                  if (CFStringCompare(v20, @"kCFProxyTypeHTTPS", 0))
                  {
                    if (CFStringCompare(v20, @"kCFProxyTypeFTP", 0))
                    {
                      v28 = v5[2];
                      if (!v28 || *(v28 + 132) != 4)
                      {
                        if (__nwlog_connection_log::onceToken[0] != -1)
                        {
                          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                        }

                        v29 = gconnectionLogObj;
                        host_with_numeric_port = v29;
                        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
                        {
                          v30 = " dry-run";
                          if ((*(v5 + 159) & 8) == 0)
                          {
                            v30 = "";
                          }

                          *buf = 136446978;
                          v84 = "nw_proxy_resolver_create_parsed_array";
                          v85 = 2082;
                          v86 = v5 + 84;
                          v87 = 2082;
                          v88 = v30;
                          v89 = 2114;
                          Domain = v20;
                          _os_log_impl(&dword_181A37000, v29, OS_LOG_TYPE_ERROR, "%{public}s [C%{public}s%{public}s proxy pac] Unknown proxy type %{public}@", buf, 0x2Au);
                        }

                        direct = 0;
                        goto LABEL_138;
                      }

LABEL_99:
                      direct = 0;
LABEL_139:

LABEL_140:
                      if (direct && v80)
                      {
                        _nw_array_append(v80, direct);
                      }

                      goto LABEL_70;
                    }

LABEL_100:
                    if (!valuePtr)
                    {
                      valuePtr = 80;
                    }

                    v48 = 2001;
                  }

                  else
                  {
                    if ((*(v5 + 159) & 2) != 0)
                    {
                      v51 = 4002;
                    }

                    else
                    {
                      v51 = 4001;
                    }

                    if (*(v5 + 159))
                    {
                      v48 = 2002;
                    }

                    else
                    {
                      v48 = v51;
                    }

                    if (!valuePtr)
                    {
                      valuePtr = 443;
                    }
                  }

                  string_ptr = xpc_string_get_string_ptr(type);
                  host_with_numeric_port = nw_endpoint_create_host_with_numeric_port(string_ptr, valuePtr);
                  if (nw_proxy_copy_http_connect_definition::onceToken != -1)
                  {
                    dispatch_once(&nw_proxy_copy_http_connect_definition::onceToken, &__block_literal_global_102);
                  }

                  v53 = nw_proxy_copy_http_connect_definition::proxy_definition;
                  options = nw_proxy_create_options(v53);
                  direct = nw_proxy_config_create(host_with_numeric_port, options);

                  nw_proxy_config_set_type(direct, v48);
                  if (v48 == 4002)
                  {
                    *buf = 4;
                    v55 = nw_protocol_copy_tcp_definition();
                    v56 = nw_proxy_config_copy_protocol_stack(direct, v55, buf);

                    v57 = v5;
                    v58 = nw_tls_create_options();
                    if ((*(v5 + 159) & 4) != 0 && os_variant_allows_internal_security_policies())
                    {
                      xstringa = v58;
                      sec_protocol_options_set_peer_authentication_required(xstringa, 0);
                    }

                    nw_protocol_stack_append_application_protocol(v56, v58);
                  }
                }

                else
                {
                  v43 = CFDictionaryGetValue(v17, @"kCFStreamPropertySOCKSVersion");
                  if (v43 && CFStringCompare(v43, @"kCFStreamSocketSOCKSVersion4", 0) == kCFCompareEqualTo)
                  {
                    v44 = nw_protocol_socksv4_copy_definition();
                    host_with_numeric_port = nw_framer_create_options(v44);
                    v50 = 3001;
                  }

                  else
                  {
                    if (nw_protocol_socksv5_copy_definition::onceToken != -1)
                    {
                      dispatch_once(&nw_protocol_socksv5_copy_definition::onceToken, &__block_literal_global_89224);
                    }

                    if (nw_protocol_socksv5_copy_definition::definition)
                    {
                      v44 = os_retain(nw_protocol_socksv5_copy_definition::definition);
                    }

                    else
                    {
                      v44 = 0;
                    }

                    host_with_numeric_port = nw_framer_create_options(v44);
                    v50 = 3002;
                  }

                  HIDWORD(v74) = v50;

                  v59 = CFDictionaryGetValue(v17, @"kCFStreamPropertySOCKSUser");
                  if (v59 && (v60 = CFGetTypeID(v59), v60 == CFStringGetTypeID()))
                  {
                    xstring = _CFXPCCreateXPCObjectFromCFObject();
                  }

                  else
                  {
                    xstring = 0;
                  }

                  v61 = CFDictionaryGetValue(v17, @"kCFStreamPropertySOCKSPassword");
                  if (v61 && (v62 = CFGetTypeID(v61), v62 == CFStringGetTypeID()))
                  {
                    v63 = _CFXPCCreateXPCObjectFromCFObject();
                  }

                  else
                  {
                    v63 = 0;
                  }

                  v64 = xpc_string_get_string_ptr(type);
                  v65 = nw_endpoint_create_host_with_numeric_port(v64, valuePtr);
                  direct = nw_proxy_config_create(v65, host_with_numeric_port);
                  nw_proxy_config_set_type(direct, SHIDWORD(v74));
                  if (xstring)
                  {
                    v66 = xpc_string_get_string_ptr(xstring);
                    if (v63)
                    {
                      v67 = xpc_string_get_string_ptr(v63);
                    }

                    else
                    {
                      v67 = 0;
                    }

                    nw_proxy_config_set_username_and_password(&direct->super, v66, v67);
                  }
                }

LABEL_138:

                goto LABEL_139;
              }

              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v39 = gLogObj;
              *buf = 136446466;
              v84 = "nw_proxy_resolver_create_parsed_array";
              v85 = 2114;
              v86 = v23;
              LODWORD(v74) = 22;
              v40 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v39, 16, "%{public}s _CFXPCCreateXPCObjectFromCFObject(%{public}@) failed", buf, v74);

              LOBYTE(valuePtr) = 16;
              v82 = 0;
              if (!__nwlog_fault(v40, &valuePtr, &v82))
              {
                goto LABEL_146;
              }

              if (valuePtr == 17)
              {
                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                networkd_settings_init();
                v41 = gLogObj;
                v42 = valuePtr;
                if (os_log_type_enabled(v41, valuePtr))
                {
                  *buf = 136446466;
                  v84 = "nw_proxy_resolver_create_parsed_array";
                  v85 = 2114;
                  v86 = v23;
                  _os_log_impl(&dword_181A37000, v41, v42, "%{public}s _CFXPCCreateXPCObjectFromCFObject(%{public}@) failed", buf, 0x16u);
                }
              }

              else
              {
                if (v82 == 1)
                {
                  backtrace_string = __nw_create_backtrace_string();
                  v46 = __nwlog_obj();
                  typea = valuePtr;
                  v47 = os_log_type_enabled(v46, valuePtr);
                  if (backtrace_string)
                  {
                    if (v47)
                    {
                      *buf = 136446722;
                      v84 = "nw_proxy_resolver_create_parsed_array";
                      v85 = 2114;
                      v86 = v23;
                      v87 = 2082;
                      v88 = backtrace_string;
                      _os_log_impl(&dword_181A37000, v46, typea, "%{public}s _CFXPCCreateXPCObjectFromCFObject(%{public}@) failed, dumping backtrace:%{public}s", buf, 0x20u);
                    }

                    free(backtrace_string);
                  }

                  else
                  {
                    if (v47)
                    {
                      *buf = 136446466;
                      v84 = "nw_proxy_resolver_create_parsed_array";
                      v85 = 2114;
                      v86 = v23;
                      _os_log_impl(&dword_181A37000, v46, typea, "%{public}s _CFXPCCreateXPCObjectFromCFObject(%{public}@) failed, no backtrace", buf, 0x16u);
                    }
                  }

                  goto LABEL_146;
                }

                v41 = __nwlog_obj();
                v49 = valuePtr;
                if (os_log_type_enabled(v41, valuePtr))
                {
                  *buf = 136446466;
                  v84 = "nw_proxy_resolver_create_parsed_array";
                  v85 = 2114;
                  v86 = v23;
                  _os_log_impl(&dword_181A37000, v41, v49, "%{public}s _CFXPCCreateXPCObjectFromCFObject(%{public}@) failed, backtrace limit exceeded", buf, 0x16u);
                }
              }

LABEL_146:
              if (v40)
              {
                free(v40);
              }

              goto LABEL_69;
            }
          }

          v37 = v5[2];
          if (v37 && *(v37 + 132) == 4)
          {
LABEL_69:
            direct = 0;
            goto LABEL_70;
          }

          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v35 = gconnectionLogObj;
          if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
          {
            v38 = " dry-run";
            if ((*(v5 + 159) & 8) == 0)
            {
              v38 = "";
            }

            *buf = 136446978;
            v84 = "nw_proxy_resolver_create_parsed_array";
            v85 = 2082;
            v86 = v5 + 84;
            v87 = 2082;
            v88 = v38;
            v89 = 2114;
            Domain = v20;
            _os_log_impl(&dword_181A37000, v35, OS_LOG_TYPE_ERROR, "%{public}s [C%{public}s%{public}s proxy pac] Bad proxy hostname %{public}@", buf, 0x2Au);
          }
        }

        else
        {
          v34 = v5[2];
          if (v34 && *(v34 + 132) == 4)
          {
            goto LABEL_69;
          }

          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v35 = gconnectionLogObj;
          if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
          {
            v36 = " dry-run";
            if ((*(v5 + 159) & 8) == 0)
            {
              v36 = "";
            }

            *buf = 136446978;
            v84 = "nw_proxy_resolver_create_parsed_array";
            v85 = 2082;
            v86 = v5 + 84;
            v87 = 2082;
            v88 = v36;
            v89 = 2114;
            Domain = v20;
            _os_log_impl(&dword_181A37000, v35, OS_LOG_TYPE_ERROR, "%{public}s [C%{public}s%{public}s proxy pac] Bad proxy type key %{public}@", buf, 0x2Au);
          }
        }

        goto LABEL_69;
      }
    }

    else
    {
      v80 = 0;
    }

LABEL_149:

    (*(*(*(a1 + 32) + 8) + 16))();
    v68 = *(a1 + 32);
    v69 = *(v68 + 8);
    *(v68 + 8) = 0;

    v70 = *(a1 + 32);
    v71 = v70[3];
    if (v71)
    {
      CFRelease(v71);
      v70[3] = 0;
    }

    v72 = v70[4];
    if (v72)
    {
      CFRelease(v72);
      v70[4] = 0;
    }

    v73 = v70[5];
    if (v73)
    {
      CFRelease(v73);
      v70[5] = 0;
    }
  }
}

uint64_t __nw_protocol_ethernet_identifier_block_invoke()
{
  qword_1EA841D40 = 0;
  *algn_1EA841D31 = 0u;
  strcpy(&g_ethernet_protocol_identifier, "ethernet");
  qword_1EA841D48 = 0x200000001;
  qword_1EA841D60 = nw_protocol_default_replace_input_handler;
  qword_1EA841D90 = nw_protocol_default_input_available;
  qword_1EA841D98 = nw_protocol_default_output_available;
  qword_1EA841E08 = nw_protocol_default_input_finished;
  qword_1EA841E10 = nw_protocol_default_output_finished;
  qword_1EA841E58 = nw_protocol_default_input_flush;
  qword_1EA841DB8 = nw_protocol_default_link_state;
  qword_1EA841DC0 = nw_protocol_default_get_parameters;
  qword_1EA841DD0 = nw_protocol_default_get_local;
  qword_1EA841DD8 = nw_protocol_default_get_remote;
  qword_1EA841DC8 = nw_protocol_default_get_path;
  qword_1EA841DF8 = nw_protocol_default_updated_path;
  qword_1EA841E18 = nw_protocol_default_get_output_local;
  qword_1EA841E20 = nw_protocol_default_get_output_interface;
  qword_1EA841D68 = nw_protocol_default_connect;
  qword_1EA841D70 = nw_protocol_default_disconnect;
  qword_1EA841D78 = nw_protocol_default_connected;
  qword_1EA841D80 = nw_protocol_default_disconnected;
  qword_1EA841D88 = nw_protocol_default_error;
  qword_1EA841E50 = nw_protocol_default_reset;
  qword_1EA841E00 = nw_protocol_default_supports_external_data;
  qword_1EA841E28 = nw_protocol_default_waiting_for_output;
  qword_1EA841E30 = nw_protocol_default_copy_info;
  qword_1EA841DE0 = nw_protocol_default_register_notification;
  qword_1EA841DE8 = nw_protocol_default_unregister_notification;
  qword_1EA841DF0 = nw_protocol_default_notify;
  qword_1EA841E38 = nw_protocol_default_add_listen_handler;
  qword_1EA841E40 = nw_protocol_default_remove_listen_handler;
  g_ethernet_protocol_callbacks = nw_protocol_ethernet_add_input_handler;
  qword_1EA841D58 = nw_protocol_ethernet_remove_input_handler;
  qword_1EA841DA0 = nw_protocol_ethernet_get_input_frames;
  qword_1EA841DA8 = nw_protocol_ethernet_get_output_frames;
  qword_1EA841DB0 = nw_protocol_ethernet_finalize_output_frames;
  qword_1EA841E48 = nw_protocol_ethernet_get_message_properties;
  return nw_protocol_register_extended(&g_ethernet_protocol_identifier, nw_protocol_ethernet_create);
}

void *nw_protocol_ethernet_create(const nw_protocol_identifier *a1, nw_endpoint *a2, nw_parameters *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  memptr = 0;
  if (!malloc_type_posix_memalign(&memptr, 8uLL, 0xA8uLL, 0x51588C91uLL))
  {
    result = memptr;
    if (memptr)
    {
      goto LABEL_3;
    }
  }

  v4 = __nwlog_obj();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);
  v10 = 136446722;
  v11 = "nw_protocol_ethernet_create";
  if (v5)
  {
    v6 = 3;
  }

  else
  {
    v6 = 2;
  }

  v12 = 2048;
  v13 = 8;
  v14 = 2048;
  v15 = 168;
  v8 = 32;
  v7 = _os_log_send_and_compose_impl(v6, 0, 0, 0, &dword_181A37000, v4, 16, "%{public}s posix_memalign(..., %zu, %zu) failed", &v10, v8);
  result = __nwlog_should_abort(v7);
  if (!result)
  {
    free(v7);
    result = memptr;
LABEL_3:
    result[20] = 0;
    *(result + 8) = 0u;
    *(result + 9) = 0u;
    *(result + 6) = 0u;
    *(result + 7) = 0u;
    *(result + 4) = 0u;
    *(result + 5) = 0u;
    *(result + 2) = 0u;
    *(result + 3) = 0u;
    *result = 0u;
    *(result + 1) = 0u;
    result[2] = &g_ethernet_protocol_identifier;
    result[3] = &g_ethernet_protocol_callbacks;
    result[5] = result;
    return result;
  }

  __break(1u);
  return result;
}

void nw_protocol_ethernet_get_message_properties(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v4 = __nwlog_obj();
    *buf = 136446210;
    v17 = "nw_protocol_ethernet_get_message_properties";
    v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v4, 16, "%{public}s called with null protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v14 = 0;
    if (!__nwlog_fault(v5, &type, &v14))
    {
      goto LABEL_34;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (!os_log_type_enabled(v6, type))
      {
        goto LABEL_34;
      }

      *buf = 136446210;
      v17 = "nw_protocol_ethernet_get_message_properties";
      v8 = "%{public}s called with null protocol";
    }

    else if (v14 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v6 = __nwlog_obj();
      v7 = type;
      v11 = os_log_type_enabled(v6, type);
      if (backtrace_string)
      {
        if (v11)
        {
          *buf = 136446466;
          v17 = "nw_protocol_ethernet_get_message_properties";
          v18 = 2082;
          v19 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_34:
        if (!v5)
        {
          return;
        }

LABEL_35:
        free(v5);
        return;
      }

      if (!v11)
      {
        goto LABEL_34;
      }

      *buf = 136446210;
      v17 = "nw_protocol_ethernet_get_message_properties";
      v8 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (!os_log_type_enabled(v6, type))
      {
        goto LABEL_34;
      }

      *buf = 136446210;
      v17 = "nw_protocol_ethernet_get_message_properties";
      v8 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

LABEL_33:
    _os_log_impl(&dword_181A37000, v6, v7, v8, buf, 0xCu);
    goto LABEL_34;
  }

  if (*(a1 + 40))
  {
    if (a3)
    {
      v3 = a3[1] & 0xFFFFFFF8 | 1;
      *a3 = 4000;
      a3[1] = v3;
    }

    return;
  }

  v9 = __nwlog_obj();
  *buf = 136446210;
  v17 = "nw_protocol_ethernet_get_message_properties";
  v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v9, 16, "%{public}s called with null ethernet", buf, 12);
  type = OS_LOG_TYPE_ERROR;
  v14 = 0;
  if (!__nwlog_fault(v5, &type, &v14))
  {
    goto LABEL_34;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v6 = __nwlog_obj();
    v7 = type;
    if (!os_log_type_enabled(v6, type))
    {
      goto LABEL_34;
    }

    *buf = 136446210;
    v17 = "nw_protocol_ethernet_get_message_properties";
    v8 = "%{public}s called with null ethernet";
    goto LABEL_33;
  }

  if (v14 != 1)
  {
    v6 = __nwlog_obj();
    v7 = type;
    if (!os_log_type_enabled(v6, type))
    {
      goto LABEL_34;
    }

    *buf = 136446210;
    v17 = "nw_protocol_ethernet_get_message_properties";
    v8 = "%{public}s called with null ethernet, backtrace limit exceeded";
    goto LABEL_33;
  }

  v12 = __nw_create_backtrace_string();
  v6 = __nwlog_obj();
  v7 = type;
  v13 = os_log_type_enabled(v6, type);
  if (!v12)
  {
    if (!v13)
    {
      goto LABEL_34;
    }

    *buf = 136446210;
    v17 = "nw_protocol_ethernet_get_message_properties";
    v8 = "%{public}s called with null ethernet, no backtrace";
    goto LABEL_33;
  }

  if (v13)
  {
    *buf = 136446466;
    v17 = "nw_protocol_ethernet_get_message_properties";
    v18 = 2082;
    v19 = v12;
    _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null ethernet, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v12);
  if (v5)
  {
    goto LABEL_35;
  }
}