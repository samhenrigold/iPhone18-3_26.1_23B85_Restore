uint64_t ___ZL40nw_http1_stream_process_outbound_messageP15nw_http1_streamb_block_invoke(uint64_t result, char *a2)
{
  if (a2)
  {
    v2 = result;
    result = strcasecmp(a2, "websocket");
    if (!result)
    {
      *(*(*(v2 + 32) + 8) + 24) = 1;
    }
  }

  return result;
}

uint64_t ___ZL30nw_http1_connection_send_bytesP19nw_http1_connectionPhjb_block_invoke(uint64_t a1, uint64_t a2)
{
  nw_frame_finalize(a2);
  ++*(*(*(a1 + 32) + 8) + 24);
  return 1;
}

void ___ZN2nw4http22content_length_manager20set_outbound_messageEP20nw_protocol_metadata_block_invoke(uint64_t a1, char *__s)
{
  if (__s)
  {
    v3 = *(a1 + 32);
    v4 = strlen(__s);
    if (v4 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v5 = v4;
    if (v4 >= 0x17)
    {
      operator new();
    }

    *(&__dst.__r_.__value_.__s + 23) = v4;
    if (v4)
    {
      memcpy(&__dst, __s, v4);
    }

    __dst.__r_.__value_.__s.__data_[v5] = 0;
    *v3 = std::stoull(&__dst, 0, 10);
    *(v3 + 8) = 1;
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
    }
  }
}

__n128 __Block_byref_object_copy__106(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 40) = result;
  return result;
}

BOOL ___ZL41nw_http1_connection_fulfill_frame_requestP19nw_http1_connectionP16nw_frame_array_sS2_bbjjjPj_block_invoke(uint64_t a1, _DWORD *a2)
{
  v127 = *MEMORY[0x1E69E9840];
  v4 = nw_frame_unclaimed_length(a2);
  if ((*(*(*(a1 + 32) + 8) + 24) + 1) > *(a1 + 72))
  {
    return 0;
  }

  v6 = v4;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 24);
  v9 = v8 + v4;
  if (__CFADD__(v8, v4))
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    *buf = 136446978;
    v115 = "nw_http1_connection_fulfill_frame_request_block_invoke";
    v116 = 2082;
    v117 = "bytes_count_with_this_frame";
    v118 = 2048;
    v119 = v6;
    v120 = 2048;
    *v121 = v9;
    v10 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s Overflow: %{public}s, increment %llu, result %llu", buf, 42);
    type[0] = OS_LOG_TYPE_ERROR;
    v113 = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault(v10, type, &v113))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v11 = gLogObj;
        v12 = type[0];
        if (os_log_type_enabled(gLogObj, type[0]))
        {
          *buf = 136446978;
          v115 = "nw_http1_connection_fulfill_frame_request_block_invoke";
          v116 = 2082;
          v117 = "bytes_count_with_this_frame";
          v118 = 2048;
          v119 = v6;
          v120 = 2048;
          *v121 = v9;
          v13 = "%{public}s Overflow: %{public}s, increment %llu, result %llu";
LABEL_18:
          _os_log_impl(&dword_181A37000, v11, v12, v13, buf, 0x2Au);
        }
      }

      else if (v113 == OS_LOG_TYPE_INFO)
      {
        backtrace_string = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v11 = gLogObj;
        v12 = type[0];
        v15 = os_log_type_enabled(gLogObj, type[0]);
        if (backtrace_string)
        {
          if (v15)
          {
            *buf = 136447234;
            v115 = "nw_http1_connection_fulfill_frame_request_block_invoke";
            v116 = 2082;
            v117 = "bytes_count_with_this_frame";
            v118 = 2048;
            v119 = v6;
            v120 = 2048;
            *v121 = v9;
            *&v121[8] = 2082;
            v122 = backtrace_string;
            _os_log_impl(&dword_181A37000, v11, v12, "%{public}s Overflow: %{public}s, increment %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
          }

          free(backtrace_string);
          goto LABEL_19;
        }

        if (v15)
        {
          *buf = 136446978;
          v115 = "nw_http1_connection_fulfill_frame_request_block_invoke";
          v116 = 2082;
          v117 = "bytes_count_with_this_frame";
          v118 = 2048;
          v119 = v6;
          v120 = 2048;
          *v121 = v9;
          v13 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, no backtrace";
          goto LABEL_18;
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v11 = gLogObj;
        v12 = type[0];
        if (os_log_type_enabled(gLogObj, type[0]))
        {
          *buf = 136446978;
          v115 = "nw_http1_connection_fulfill_frame_request_block_invoke";
          v116 = 2082;
          v117 = "bytes_count_with_this_frame";
          v118 = 2048;
          v119 = v6;
          v120 = 2048;
          *v121 = v9;
          v13 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, backtrace limit exceeded";
          goto LABEL_18;
        }
      }
    }

LABEL_19:
    if (v10)
    {
      free(v10);
    }

    v7 = *(*(a1 + 40) + 8);
    v8 = *(v7 + 24);
    LODWORD(v9) = -1;
  }

  v16 = *(a1 + 76);
  if (v9 <= v16)
  {
    *(v7 + 24) = v8 + v6;
    if (!__CFADD__(v8, v6))
    {
LABEL_72:
      v63 = (*(a1 + 56) + 8);
      v64 = 4;
      if (*(a1 + 80))
      {
        v64 = 8;
      }

      v65 = 6;
      if (*(a1 + 80))
      {
        v65 = 10;
      }

      v66 = &a2[v64];
      v67 = *v66;
      v68 = *&a2[v65];
      v69 = (*v66 + v65 * 4);
      if (*v66)
      {
        v63 = v69;
      }

      *v63 = v68;
      *v68 = v67;
      *v66 = 0;
      v66[1] = 0;
      if ((*(*(a1 + 64) + 158) & 1) == 0 && gLogDatapath == 1)
      {
        v100 = __nwlog_obj();
        if (os_log_type_enabled(v100, OS_LOG_TYPE_DEBUG))
        {
          v101 = *(a1 + 64);
          v102 = (v101 + 74);
          v103 = *(v101 + 488);
          v104 = *(*(v101 + 480) + 372);
          v105 = *(v101 + 860);
          if (v103)
          {
            LODWORD(v103) = *(v103 + 424);
          }

          *buf = 136447746;
          v115 = "nw_http1_connection_fulfill_frame_request_block_invoke";
          v116 = 2082;
          v117 = v102;
          v118 = 2080;
          v119 = " ";
          v120 = 1024;
          *v121 = v104;
          *&v121[4] = 1024;
          *&v121[6] = v105;
          LOWORD(v122) = 1024;
          *(&v122 + 2) = v103;
          HIWORD(v122) = 1024;
          *v123 = v6;
          _os_log_impl(&dword_181A37000, v100, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> Moving entire frame (%u bytes)", buf, 0x38u);
        }
      }

      v26 = a2;
LABEL_81:
      v70 = *(*(a1 + 32) + 8);
      v71 = *(v70 + 24) + 1;
      *(v70 + 24) = v71;
      if (v71 == v71 << 31 >> 31)
      {
LABEL_99:
        v83 = *(*(a1 + 48) + 8);
        v84 = 4;
        if (*(a1 + 80))
        {
          v84 = 8;
        }

        v85 = 6;
        if (*(a1 + 80))
        {
          v85 = 10;
        }

        v86 = &v26[v84];
        *v86 = 0;
        v87 = *(v83 + 48);
        *&v26[v85] = v87;
        *v87 = v26;
        *(v83 + 48) = v86;
        return 1;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v72 = *(*(*(a1 + 32) + 8) + 24);
      *buf = 136446978;
      v115 = "nw_http1_connection_fulfill_frame_request_block_invoke";
      v116 = 2082;
      v117 = "frame_count";
      v118 = 2048;
      v119 = 1;
      v120 = 2048;
      *v121 = v72;
      LODWORD(v110) = 42;
      v73 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s Overflow: %{public}s, increment %llu, result %llu", buf, v110);
      type[0] = OS_LOG_TYPE_ERROR;
      v113 = OS_LOG_TYPE_DEFAULT;
      if (__nwlog_fault(v73, type, &v113))
      {
        if (type[0] == OS_LOG_TYPE_FAULT)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v74 = gLogObj;
          v75 = type[0];
          if (os_log_type_enabled(gLogObj, type[0]))
          {
            v76 = *(*(*(a1 + 32) + 8) + 24);
            *buf = 136446978;
            v115 = "nw_http1_connection_fulfill_frame_request_block_invoke";
            v116 = 2082;
            v117 = "frame_count";
            v118 = 2048;
            v119 = 1;
            v120 = 2048;
            *v121 = v76;
            v77 = "%{public}s Overflow: %{public}s, increment %llu, result %llu";
LABEL_95:
            _os_log_impl(&dword_181A37000, v74, v75, v77, buf, 0x2Au);
          }
        }

        else if (v113 == OS_LOG_TYPE_INFO)
        {
          v78 = __nw_create_backtrace_string();
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v74 = gLogObj;
          v75 = type[0];
          v79 = os_log_type_enabled(gLogObj, type[0]);
          if (v78)
          {
            if (v79)
            {
              v80 = *(*(*(a1 + 32) + 8) + 24);
              *buf = 136447234;
              v115 = "nw_http1_connection_fulfill_frame_request_block_invoke";
              v116 = 2082;
              v117 = "frame_count";
              v118 = 2048;
              v119 = 1;
              v120 = 2048;
              *v121 = v80;
              *&v121[8] = 2082;
              v122 = v78;
              _os_log_impl(&dword_181A37000, v74, v75, "%{public}s Overflow: %{public}s, increment %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
            }

            free(v78);
            goto LABEL_96;
          }

          if (v79)
          {
            v82 = *(*(*(a1 + 32) + 8) + 24);
            *buf = 136446978;
            v115 = "nw_http1_connection_fulfill_frame_request_block_invoke";
            v116 = 2082;
            v117 = "frame_count";
            v118 = 2048;
            v119 = 1;
            v120 = 2048;
            *v121 = v82;
            v77 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, no backtrace";
            goto LABEL_95;
          }
        }

        else
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v74 = gLogObj;
          v75 = type[0];
          if (os_log_type_enabled(gLogObj, type[0]))
          {
            v81 = *(*(*(a1 + 32) + 8) + 24);
            *buf = 136446978;
            v115 = "nw_http1_connection_fulfill_frame_request_block_invoke";
            v116 = 2082;
            v117 = "frame_count";
            v118 = 2048;
            v119 = 1;
            v120 = 2048;
            *v121 = v81;
            v77 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, backtrace limit exceeded";
            goto LABEL_95;
          }
        }
      }

LABEL_96:
      if (v73)
      {
        free(v73);
      }

      *(*(*(a1 + 32) + 8) + 24) = -1;
      goto LABEL_99;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v36 = *(*(*(a1 + 40) + 8) + 24);
    *buf = 136446978;
    v115 = "nw_http1_connection_fulfill_frame_request_block_invoke";
    v116 = 2082;
    v117 = "bytes_count";
    v118 = 2048;
    v119 = v6;
    v120 = 2048;
    *v121 = v36;
    LODWORD(v110) = 42;
    v37 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s Overflow: %{public}s, increment %llu, result %llu", buf, v110);
    type[0] = OS_LOG_TYPE_ERROR;
    v113 = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault(v37, type, &v113))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v38 = gLogObj;
        v39 = type[0];
        if (os_log_type_enabled(gLogObj, type[0]))
        {
          v40 = *(*(*(a1 + 40) + 8) + 24);
          *buf = 136446978;
          v115 = "nw_http1_connection_fulfill_frame_request_block_invoke";
          v116 = 2082;
          v117 = "bytes_count";
          v118 = 2048;
          v119 = v6;
          v120 = 2048;
          *v121 = v40;
          v41 = "%{public}s Overflow: %{public}s, increment %llu, result %llu";
LABEL_68:
          _os_log_impl(&dword_181A37000, v38, v39, v41, buf, 0x2Au);
        }
      }

      else if (v113 == OS_LOG_TYPE_INFO)
      {
        v48 = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v38 = gLogObj;
        v39 = type[0];
        v49 = os_log_type_enabled(gLogObj, type[0]);
        if (v48)
        {
          if (v49)
          {
            v50 = *(*(*(a1 + 40) + 8) + 24);
            *buf = 136447234;
            v115 = "nw_http1_connection_fulfill_frame_request_block_invoke";
            v116 = 2082;
            v117 = "bytes_count";
            v118 = 2048;
            v119 = v6;
            v120 = 2048;
            *v121 = v50;
            *&v121[8] = 2082;
            v122 = v48;
            _os_log_impl(&dword_181A37000, v38, v39, "%{public}s Overflow: %{public}s, increment %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
          }

          free(v48);
          goto LABEL_69;
        }

        if (v49)
        {
          v62 = *(*(*(a1 + 40) + 8) + 24);
          *buf = 136446978;
          v115 = "nw_http1_connection_fulfill_frame_request_block_invoke";
          v116 = 2082;
          v117 = "bytes_count";
          v118 = 2048;
          v119 = v6;
          v120 = 2048;
          *v121 = v62;
          v41 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, no backtrace";
          goto LABEL_68;
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v38 = gLogObj;
        v39 = type[0];
        if (os_log_type_enabled(gLogObj, type[0]))
        {
          v51 = *(*(*(a1 + 40) + 8) + 24);
          *buf = 136446978;
          v115 = "nw_http1_connection_fulfill_frame_request_block_invoke";
          v116 = 2082;
          v117 = "bytes_count";
          v118 = 2048;
          v119 = v6;
          v120 = 2048;
          *v121 = v51;
          v41 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, backtrace limit exceeded";
          goto LABEL_68;
        }
      }
    }

LABEL_69:
    if (v37)
    {
      free(v37);
    }

    *(*(*(a1 + 40) + 8) + 24) = -1;
    goto LABEL_72;
  }

  v17 = v16 - v8;
  if (v16 <= v8)
  {
    return 0;
  }

  if (*(a1 + 81))
  {
    v18 = (*(a1 + 56) + 8);
    v19 = 4;
    if (*(a1 + 80))
    {
      v19 = 8;
    }

    v20 = 6;
    if (*(a1 + 80))
    {
      v20 = 10;
    }

    v21 = &a2[v19];
    v22 = *v21;
    v23 = *&a2[v20];
    v24 = (*v21 + v20 * 4);
    if (*v21)
    {
      v18 = v24;
    }

    *v18 = v23;
    *v23 = v22;
    *v21 = 0;
    v21[1] = 0;
    *type = a2;
    v25 = nw_frame_split(type, v17);
    if (v25)
    {
      v26 = v25;
      nw_frame_array_prepend(*(a1 + 56), *(a1 + 80), *type);
      v27 = *(*(a1 + 40) + 8);
      v28 = *(v27 + 24);
      *(v27 + 24) = v28 + v17;
      if (!__CFADD__(v28, v17))
      {
LABEL_130:
        if ((*(*(a1 + 64) + 158) & 1) == 0 && gLogDatapath == 1)
        {
          v95 = __nwlog_obj();
          if (os_log_type_enabled(v95, OS_LOG_TYPE_DEBUG))
          {
            v96 = *(a1 + 64);
            v97 = (v96 + 74);
            v98 = *(v96 + 488);
            if (v98)
            {
              v99 = *(v98 + 424);
            }

            else
            {
              v99 = 0;
            }

            v106 = *(*(v96 + 480) + 372);
            v107 = *(v96 + 860);
            v108 = nw_frame_unclaimed_length(*type);
            v109 = v26[13];
            if (v109)
            {
              v109 -= v26[14] + v26[15];
            }

            *buf = 136448514;
            v115 = "nw_http1_connection_fulfill_frame_request_block_invoke";
            v116 = 2082;
            v117 = v97;
            v118 = 2080;
            v119 = " ";
            v120 = 1024;
            *v121 = v106;
            *&v121[4] = 1024;
            *&v121[6] = v107;
            LOWORD(v122) = 1024;
            *(&v122 + 2) = v99;
            HIWORD(v122) = 1024;
            *v123 = v17;
            *&v123[4] = 1024;
            *&v123[6] = v6;
            *v124 = 1024;
            *&v124[2] = v108;
            v125 = 1024;
            v126 = v109;
            _os_log_impl(&dword_181A37000, v95, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> Moving split frame (%u bytes of %u, %u bytes remaining, delivering %u bytes)", buf, 0x4Au);
          }
        }

        goto LABEL_81;
      }

      v29 = __nwlog_obj();
      v30 = *(*(*(a1 + 40) + 8) + 24);
      *buf = 136446978;
      v115 = "nw_http1_connection_fulfill_frame_request_block_invoke";
      v116 = 2082;
      v117 = "bytes_count";
      v118 = 2048;
      v119 = v17;
      v120 = 2048;
      *v121 = v30;
      LODWORD(v110) = 42;
      v31 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v29, 16, "%{public}s Overflow: %{public}s, increment %llu, result %llu", buf, v110);
      v113 = OS_LOG_TYPE_ERROR;
      v111 = 0;
      if (__nwlog_fault(v31, &v113, &v111))
      {
        if (v113 == OS_LOG_TYPE_FAULT)
        {
          v32 = __nwlog_obj();
          v33 = v113;
          if (os_log_type_enabled(v32, v113))
          {
            v34 = *(*(*(a1 + 40) + 8) + 24);
            *buf = 136446978;
            v115 = "nw_http1_connection_fulfill_frame_request_block_invoke";
            v116 = 2082;
            v117 = "bytes_count";
            v118 = 2048;
            v119 = v17;
            v120 = 2048;
            *v121 = v34;
            v35 = "%{public}s Overflow: %{public}s, increment %llu, result %llu";
LABEL_126:
            _os_log_impl(&dword_181A37000, v32, v33, v35, buf, 0x2Au);
          }
        }

        else if (v111 == 1)
        {
          v90 = __nw_create_backtrace_string();
          v32 = __nwlog_obj();
          v33 = v113;
          v91 = os_log_type_enabled(v32, v113);
          if (v90)
          {
            if (v91)
            {
              v92 = *(*(*(a1 + 40) + 8) + 24);
              *buf = 136447234;
              v115 = "nw_http1_connection_fulfill_frame_request_block_invoke";
              v116 = 2082;
              v117 = "bytes_count";
              v118 = 2048;
              v119 = v17;
              v120 = 2048;
              *v121 = v92;
              *&v121[8] = 2082;
              v122 = v90;
              _os_log_impl(&dword_181A37000, v32, v33, "%{public}s Overflow: %{public}s, increment %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
            }

            free(v90);
            goto LABEL_127;
          }

          if (v91)
          {
            v94 = *(*(*(a1 + 40) + 8) + 24);
            *buf = 136446978;
            v115 = "nw_http1_connection_fulfill_frame_request_block_invoke";
            v116 = 2082;
            v117 = "bytes_count";
            v118 = 2048;
            v119 = v17;
            v120 = 2048;
            *v121 = v94;
            v35 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, no backtrace";
            goto LABEL_126;
          }
        }

        else
        {
          v32 = __nwlog_obj();
          v33 = v113;
          if (os_log_type_enabled(v32, v113))
          {
            v93 = *(*(*(a1 + 40) + 8) + 24);
            *buf = 136446978;
            v115 = "nw_http1_connection_fulfill_frame_request_block_invoke";
            v116 = 2082;
            v117 = "bytes_count";
            v118 = 2048;
            v119 = v17;
            v120 = 2048;
            *v121 = v93;
            v35 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, backtrace limit exceeded";
            goto LABEL_126;
          }
        }
      }

LABEL_127:
      if (v31)
      {
        free(v31);
      }

      *(*(*(a1 + 40) + 8) + 24) = -1;
      goto LABEL_130;
    }

    if ((*(*(a1 + 64) + 158) & 1) == 0)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v52 = gLogObj;
      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
      {
        v53 = *(a1 + 64);
        v54 = (v53 + 74);
        v55 = *(v53 + 488);
        v56 = *(*(v53 + 480) + 372);
        v57 = *(v53 + 860);
        if (v55)
        {
          LODWORD(v55) = *(v55 + 424);
        }

        *buf = 136448002;
        v115 = "nw_http1_connection_fulfill_frame_request_block_invoke";
        v116 = 2082;
        v117 = v54;
        v118 = 2080;
        v119 = " ";
        v120 = 1024;
        *v121 = v56;
        *&v121[4] = 1024;
        *&v121[6] = v57;
        LOWORD(v122) = 1024;
        *(&v122 + 2) = v55;
        HIWORD(v122) = 2048;
        *v123 = a2;
        *&v123[8] = 1024;
        *v124 = v17;
        _os_log_impl(&dword_181A37000, v52, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u:c%u:s%u> failed to split frame %p at offset %u", buf, 0x42u);
      }
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    *buf = 136446210;
    v115 = "nw_http1_connection_fulfill_frame_request_block_invoke";
    LODWORD(v110) = 12;
    v58 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s nw_frame_split with partial frame failed", buf, v110);
    v113 = OS_LOG_TYPE_ERROR;
    v111 = 0;
    if (__nwlog_fault(v58, &v113, &v111))
    {
      if (v113 == OS_LOG_TYPE_FAULT)
      {
        v59 = __nwlog_obj();
        v60 = v113;
        if (!os_log_type_enabled(v59, v113))
        {
          goto LABEL_122;
        }

        *buf = 136446210;
        v115 = "nw_http1_connection_fulfill_frame_request_block_invoke";
        v61 = "%{public}s nw_frame_split with partial frame failed";
        goto LABEL_121;
      }

      if (v111 != 1)
      {
        v59 = __nwlog_obj();
        v60 = v113;
        if (!os_log_type_enabled(v59, v113))
        {
          goto LABEL_122;
        }

        *buf = 136446210;
        v115 = "nw_http1_connection_fulfill_frame_request_block_invoke";
        v61 = "%{public}s nw_frame_split with partial frame failed, backtrace limit exceeded";
        goto LABEL_121;
      }

      v88 = __nw_create_backtrace_string();
      v59 = __nwlog_obj();
      v60 = v113;
      v89 = os_log_type_enabled(v59, v113);
      if (v88)
      {
        if (v89)
        {
          *buf = 136446466;
          v115 = "nw_http1_connection_fulfill_frame_request_block_invoke";
          v116 = 2082;
          v117 = v88;
          _os_log_impl(&dword_181A37000, v59, v60, "%{public}s nw_frame_split with partial frame failed, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v88);
        goto LABEL_122;
      }

      if (v89)
      {
        *buf = 136446210;
        v115 = "nw_http1_connection_fulfill_frame_request_block_invoke";
        v61 = "%{public}s nw_frame_split with partial frame failed, no backtrace";
LABEL_121:
        _os_log_impl(&dword_181A37000, v59, v60, v61, buf, 0xCu);
      }
    }

LABEL_122:
    if (v58)
    {
      free(v58);
    }

    return 0;
  }

  if ((*(*(a1 + 64) + 158) & 1) != 0 || gLogDatapath != 1)
  {
    return 0;
  }

  v42 = __nwlog_obj();
  result = os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG);
  if (result)
  {
    v43 = *(a1 + 64);
    v44 = (v43 + 74);
    v45 = *(v43 + 488);
    v46 = *(*(v43 + 480) + 372);
    v47 = *(v43 + 860);
    if (v45)
    {
      LODWORD(v45) = *(v45 + 424);
    }

    *buf = 136447490;
    v115 = "nw_http1_connection_fulfill_frame_request_block_invoke";
    v116 = 2082;
    v117 = v44;
    v118 = 2080;
    v119 = " ";
    v120 = 1024;
    *v121 = v46;
    *&v121[4] = 1024;
    *&v121[6] = v47;
    LOWORD(v122) = 1024;
    *(&v122 + 2) = v45;
    _os_log_impl(&dword_181A37000, v42, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> skipping partial frame, split frames not allowed", buf, 0x32u);
    return 0;
  }

  return result;
}

uint64_t ___ZL41nw_http1_connection_fulfill_frame_requestP19nw_http1_connectionP16nw_frame_array_sS2_bbjjjPj_block_invoke_112(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = (*(*(a1 + 32) + 8) + 48);
    v3 = 16;
    if (*(a1 + 48))
    {
      v4 = 32;
    }

    else
    {
      v4 = 16;
    }

    if (*(a1 + 48))
    {
      v5 = 40;
    }

    else
    {
      v5 = 24;
    }

    v6 = (a2 + v4);
    v7 = *v6;
    v8 = *(a2 + v5);
    v9 = (*v6 + v5);
    if (*v6)
    {
      v2 = v9;
    }

    *v2 = v8;
    *v8 = v7;
    *v6 = 0;
    v6[1] = 0;
    v10 = *(a1 + 40);
    if (*(a1 + 48))
    {
      v3 = 32;
      v11 = 40;
    }

    else
    {
      v11 = 24;
    }

    v12 = (a2 + v3);
    *v12 = 0;
    v13 = *(v10 + 8);
    *(a2 + v11) = v13;
    *v13 = a2;
    *(v10 + 8) = v12;
  }

  return 1;
}

void ___ZL40nw_http1_connection_process_input_framesP19nw_http1_connectionPjS1_P16nw_frame_array_sS3_b_block_invoke(uint64_t a1, const char *a2, uint64_t a3)
{
  v162 = *MEMORY[0x1E69E9840];
  if (a2 && a3)
  {
    v6 = *(a1 + 72);
    if ((*(v6 + 158) & 1) == 0 && gLogDatapath == 1)
    {
      v107 = __nwlog_obj();
      v108 = os_log_type_enabled(v107, OS_LOG_TYPE_DEBUG);
      v6 = *(a1 + 72);
      if (v108)
      {
        v109 = (v6 + 74);
        v110 = *(v6 + 488);
        v111 = *(*(v6 + 480) + 372);
        v112 = *(v6 + 860);
        if (v110)
        {
          LODWORD(v110) = *(v110 + 424);
        }

        *buf = 136448002;
        v153 = "nw_http1_connection_process_input_frames_block_invoke";
        v154 = 2082;
        v155 = v109;
        v156 = 2080;
        *v157 = " ";
        *&v157[8] = 1024;
        *&v157[10] = v111;
        *&v157[14] = 1024;
        *&v157[16] = v112;
        LOWORD(v158) = 1024;
        *(&v158 + 2) = v110;
        HIWORD(v158) = 2048;
        *v159 = a2;
        *&v159[8] = 1024;
        *&v159[10] = a3;
        _os_log_impl(&dword_181A37000, v107, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> body bytes found (%p, %u bytes):", buf, 0x42u);
        v6 = *(a1 + 72);
      }
    }

    if (*(*(*(a1 + 32) + 8) + 24) == a3)
    {
      if ((*(v6 + 158) & 1) == 0 && gLogDatapath == 1)
      {
        v113 = __nwlog_obj();
        if (os_log_type_enabled(v113, OS_LOG_TYPE_DEBUG))
        {
          v114 = *(a1 + 72);
          v115 = (v114 + 74);
          v116 = *(v114 + 488);
          v117 = *(*(v114 + 480) + 372);
          v118 = *(v114 + 860);
          if (v116)
          {
            LODWORD(v116) = *(v116 + 424);
          }

          v119 = *(a1 + 80);
          *buf = 136447746;
          v153 = "nw_http1_connection_process_input_frames_block_invoke";
          v154 = 2082;
          v155 = v115;
          v156 = 2080;
          *v157 = " ";
          *&v157[8] = 1024;
          *&v157[10] = v117;
          *&v157[14] = 1024;
          *&v157[16] = v118;
          LOWORD(v158) = 1024;
          *(&v158 + 2) = v116;
          HIWORD(v158) = 2048;
          *v159 = v119;
          _os_log_impl(&dword_181A37000, v113, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> entire frame is body, moving to destination array %p", buf, 0x3Cu);
        }
      }

      v7 = *(a1 + 80);
      v8 = *(*(*(a1 + 40) + 8) + 24);
      v9 = 32;
      if (!*(a1 + 88))
      {
        v9 = 16;
      }

      v10 = 24;
      if (*(a1 + 88))
      {
        v10 = 40;
      }

      v11 = (v8 + v9);
      *v11 = 0;
      v12 = *(v7 + 8);
      *(v8 + v10) = v12;
      *v12 = v8;
      *(v7 + 8) = v11;
      v13 = *(*(a1 + 48) + 8);
      v14 = *(v13 + 24) + 1;
      *(v13 + 24) = v14;
      if (v14 == v14 << 31 >> 31)
      {
LABEL_75:
        v56 = *(*(a1 + 56) + 8);
        v57 = *(v56 + 24);
        v58 = *(*(*(a1 + 32) + 8) + 24);
        *(v56 + 24) = v57 + v58;
        if (!__CFADD__(v57, v58))
        {
LABEL_96:
          *(*(*(a1 + 40) + 8) + 24) = 0;
          return;
        }

        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v59 = *(*(*(a1 + 32) + 8) + 24);
        v60 = *(*(*(a1 + 56) + 8) + 24);
        *buf = 136446978;
        v153 = "nw_http1_connection_process_input_frames_block_invoke";
        v154 = 2082;
        v155 = "bytes_processed";
        v156 = 2048;
        *v157 = v59;
        *&v157[8] = 2048;
        *&v157[10] = v60;
        LODWORD(v149) = 42;
        v61 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s Overflow: %{public}s, increment %llu, result %llu", buf, v149);
        type = OS_LOG_TYPE_ERROR;
        v150 = 0;
        if (__nwlog_fault(v61, &type, &v150))
        {
          if (type == OS_LOG_TYPE_FAULT)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v62 = gLogObj;
            v63 = type;
            if (os_log_type_enabled(gLogObj, type))
            {
              v64 = *(*(*(a1 + 32) + 8) + 24);
              v65 = *(*(*(a1 + 56) + 8) + 24);
              *buf = 136446978;
              v153 = "nw_http1_connection_process_input_frames_block_invoke";
              v154 = 2082;
              v155 = "bytes_processed";
              v156 = 2048;
              *v157 = v64;
              *&v157[8] = 2048;
              *&v157[10] = v65;
              v66 = "%{public}s Overflow: %{public}s, increment %llu, result %llu";
LABEL_92:
              _os_log_impl(&dword_181A37000, v62, v63, v66, buf, 0x2Au);
            }
          }

          else if (v150 == 1)
          {
            backtrace_string = __nw_create_backtrace_string();
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v62 = gLogObj;
            v63 = type;
            v68 = os_log_type_enabled(gLogObj, type);
            if (backtrace_string)
            {
              if (v68)
              {
                v69 = *(*(*(a1 + 32) + 8) + 24);
                v70 = *(*(*(a1 + 56) + 8) + 24);
                *buf = 136447234;
                v153 = "nw_http1_connection_process_input_frames_block_invoke";
                v154 = 2082;
                v155 = "bytes_processed";
                v156 = 2048;
                *v157 = v69;
                *&v157[8] = 2048;
                *&v157[10] = v70;
                *&v157[18] = 2082;
                v158 = backtrace_string;
                _os_log_impl(&dword_181A37000, v62, v63, "%{public}s Overflow: %{public}s, increment %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
              }

              free(backtrace_string);
              goto LABEL_93;
            }

            if (v68)
            {
              v73 = *(*(*(a1 + 32) + 8) + 24);
              v74 = *(*(*(a1 + 56) + 8) + 24);
              *buf = 136446978;
              v153 = "nw_http1_connection_process_input_frames_block_invoke";
              v154 = 2082;
              v155 = "bytes_processed";
              v156 = 2048;
              *v157 = v73;
              *&v157[8] = 2048;
              *&v157[10] = v74;
              v66 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, no backtrace";
              goto LABEL_92;
            }
          }

          else
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v62 = gLogObj;
            v63 = type;
            if (os_log_type_enabled(gLogObj, type))
            {
              v71 = *(*(*(a1 + 32) + 8) + 24);
              v72 = *(*(*(a1 + 56) + 8) + 24);
              *buf = 136446978;
              v153 = "nw_http1_connection_process_input_frames_block_invoke";
              v154 = 2082;
              v155 = "bytes_processed";
              v156 = 2048;
              *v157 = v71;
              *&v157[8] = 2048;
              *&v157[10] = v72;
              v66 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, backtrace limit exceeded";
              goto LABEL_92;
            }
          }
        }

LABEL_93:
        if (v61)
        {
          free(v61);
        }

        *(*(*(a1 + 56) + 8) + 24) = -1;
        goto LABEL_96;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v15 = *(*(*(a1 + 48) + 8) + 24);
      *buf = 136446978;
      v153 = "nw_http1_connection_process_input_frames_block_invoke";
      v154 = 2082;
      v155 = "frames_processed";
      v156 = 2048;
      *v157 = 1;
      *&v157[8] = 2048;
      *&v157[10] = v15;
      v16 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s Overflow: %{public}s, increment %llu, result %llu", buf, 42);
      type = OS_LOG_TYPE_ERROR;
      v150 = 0;
      if (__nwlog_fault(v16, &type, &v150))
      {
        if (type == OS_LOG_TYPE_FAULT)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v17 = gLogObj;
          v18 = type;
          if (os_log_type_enabled(gLogObj, type))
          {
            v19 = *(*(*(a1 + 48) + 8) + 24);
            *buf = 136446978;
            v153 = "nw_http1_connection_process_input_frames_block_invoke";
            v154 = 2082;
            v155 = "frames_processed";
            v156 = 2048;
            *v157 = 1;
            *&v157[8] = 2048;
            *&v157[10] = v19;
            v20 = "%{public}s Overflow: %{public}s, increment %llu, result %llu";
LABEL_71:
            _os_log_impl(&dword_181A37000, v17, v18, v20, buf, 0x2Au);
          }
        }

        else if (v150 == 1)
        {
          v49 = __nw_create_backtrace_string();
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v17 = gLogObj;
          v18 = type;
          v50 = os_log_type_enabled(gLogObj, type);
          if (v49)
          {
            if (v50)
            {
              v51 = *(*(*(a1 + 48) + 8) + 24);
              *buf = 136447234;
              v153 = "nw_http1_connection_process_input_frames_block_invoke";
              v154 = 2082;
              v155 = "frames_processed";
              v156 = 2048;
              *v157 = 1;
              *&v157[8] = 2048;
              *&v157[10] = v51;
              *&v157[18] = 2082;
              v158 = v49;
              _os_log_impl(&dword_181A37000, v17, v18, "%{public}s Overflow: %{public}s, increment %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
            }

            free(v49);
            goto LABEL_72;
          }

          if (v50)
          {
            v55 = *(*(*(a1 + 48) + 8) + 24);
            *buf = 136446978;
            v153 = "nw_http1_connection_process_input_frames_block_invoke";
            v154 = 2082;
            v155 = "frames_processed";
            v156 = 2048;
            *v157 = 1;
            *&v157[8] = 2048;
            *&v157[10] = v55;
            v20 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, no backtrace";
            goto LABEL_71;
          }
        }

        else
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v17 = gLogObj;
          v18 = type;
          if (os_log_type_enabled(gLogObj, type))
          {
            v52 = *(*(*(a1 + 48) + 8) + 24);
            *buf = 136446978;
            v153 = "nw_http1_connection_process_input_frames_block_invoke";
            v154 = 2082;
            v155 = "frames_processed";
            v156 = 2048;
            *v157 = 1;
            *&v157[8] = 2048;
            *&v157[10] = v52;
            v20 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, backtrace limit exceeded";
            goto LABEL_71;
          }
        }
      }

LABEL_72:
      if (v16)
      {
        free(v16);
      }

      *(*(*(a1 + 48) + 8) + 24) = -1;
      goto LABEL_75;
    }

    if ((*(v6 + 158) & 1) == 0 && gLogDatapath == 1)
    {
      v120 = __nwlog_obj();
      v121 = os_log_type_enabled(v120, OS_LOG_TYPE_DEBUG);
      v6 = *(a1 + 72);
      if (v121)
      {
        v122 = (v6 + 74);
        v123 = *(v6 + 488);
        v124 = *(*(v6 + 480) + 372);
        v125 = *(v6 + 860);
        if (v123)
        {
          LODWORD(v123) = *(v123 + 424);
        }

        v126 = *(*(*(a1 + 40) + 8) + 24);
        *buf = 136447746;
        v153 = "nw_http1_connection_process_input_frames_block_invoke";
        v154 = 2082;
        v155 = v122;
        v156 = 2080;
        *v157 = " ";
        *&v157[8] = 1024;
        *&v157[10] = v124;
        *&v157[14] = 1024;
        *&v157[16] = v125;
        LOWORD(v158) = 1024;
        *(&v158 + 2) = v123;
        HIWORD(v158) = 2048;
        *v159 = v126;
        _os_log_impl(&dword_181A37000, v120, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> partial frame is body, trimming frame %p", buf, 0x3Cu);
        v6 = *(a1 + 72);
      }
    }

    v25 = *(*(a1 + 40) + 8);
    v26 = *(v25 + 24);
    *(v25 + 24) = 0;
    v27 = *(*(*(a1 + 64) + 8) + 24);
    v28 = a2 - v27;
    if ((*(v6 + 158) & 1) != 0 || gLogDatapath != 1)
    {
      goto LABEL_25;
    }

    v127 = a2 - v27;
    v128 = __nwlog_obj();
    v129 = os_log_type_enabled(v128, OS_LOG_TYPE_DEBUG);
    v130 = *(a1 + 72);
    if (v129)
    {
      v131 = (v130 + 74);
      v132 = *(v130 + 488);
      v133 = *(*(v130 + 480) + 372);
      v134 = *(v130 + 860);
      if (v132)
      {
        LODWORD(v132) = *(v132 + 424);
      }

      v135 = *(*(*(a1 + 64) + 8) + 24);
      *buf = 136448258;
      v153 = "nw_http1_connection_process_input_frames_block_invoke";
      v154 = 2082;
      v155 = v131;
      v156 = 2080;
      *v157 = " ";
      *&v157[8] = 1024;
      *&v157[10] = v133;
      *&v157[14] = 1024;
      *&v157[16] = v134;
      LOWORD(v158) = 1024;
      *(&v158 + 2) = v132;
      HIWORD(v158) = 1024;
      *v159 = v127;
      *&v159[4] = 2048;
      *&v159[6] = v135;
      v160 = 2048;
      v161 = a2;
      _os_log_impl(&dword_181A37000, v128, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> claiming %u bytes from beginning of frame (%p -> %p)", buf, 0x4Cu);
      v130 = *(a1 + 72);
    }

    v28 = v127;
    if (v130)
    {
LABEL_25:
      v29 = v26;
      goto LABEL_26;
    }

    v136 = __nwlog_obj();
    *buf = 136446210;
    v153 = "nw_http1_get_output_protocol";
    v137 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v136, 16, "%{public}s called with null connection", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v150 = 0;
    if (__nwlog_fault(v137, &type, &v150))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v138 = __nwlog_obj();
        v139 = type;
        if (os_log_type_enabled(v138, type))
        {
          *buf = 136446210;
          v153 = "nw_http1_get_output_protocol";
          v140 = "%{public}s called with null connection";
LABEL_179:
          _os_log_impl(&dword_181A37000, v138, v139, v140, buf, 0xCu);
        }
      }

      else if (v150 == 1)
      {
        v147 = __nw_create_backtrace_string();
        v138 = __nwlog_obj();
        v139 = type;
        v148 = os_log_type_enabled(v138, type);
        if (v147)
        {
          if (v148)
          {
            *buf = 136446466;
            v153 = "nw_http1_get_output_protocol";
            v154 = 2082;
            v155 = v147;
            _os_log_impl(&dword_181A37000, v138, v139, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v147);
          goto LABEL_180;
        }

        if (v148)
        {
          *buf = 136446210;
          v153 = "nw_http1_get_output_protocol";
          v140 = "%{public}s called with null connection, no backtrace";
          goto LABEL_179;
        }
      }

      else
      {
        v138 = __nwlog_obj();
        v139 = type;
        if (os_log_type_enabled(v138, type))
        {
          *buf = 136446210;
          v153 = "nw_http1_get_output_protocol";
          v140 = "%{public}s called with null connection, backtrace limit exceeded";
          goto LABEL_179;
        }
      }
    }

LABEL_180:
    if (v137)
    {
      free(v137);
    }

    v29 = v26;
    v28 = v127;
LABEL_26:
    nw_frame_claim(v29, a2, v28, 0);
    if (nw_frame_unclaimed_length(v26) == a3)
    {
      if ((*(*(a1 + 72) + 158) & 1) == 0 && gLogDatapath == 1)
      {
        v30 = __nwlog_obj();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
        {
          v31 = *(a1 + 72);
          v32 = (v31 + 74);
          v33 = *(v31 + 488);
          v34 = *(*(v31 + 480) + 372);
          v35 = *(v31 + 860);
          if (v33)
          {
            LODWORD(v33) = *(v33 + 424);
          }

          *buf = 136447490;
          v153 = "nw_http1_connection_process_input_frames_block_invoke";
          v154 = 2082;
          v155 = v32;
          v156 = 2080;
          *v157 = " ";
          *&v157[8] = 1024;
          *&v157[10] = v34;
          *&v157[14] = 1024;
          *&v157[16] = v35;
          LOWORD(v158) = 1024;
          *(&v158 + 2) = v33;
          _os_log_impl(&dword_181A37000, v30, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> body extends to end of frame, continuing", buf, 0x32u);
        }
      }

LABEL_103:
      v75 = *(a1 + 80);
      v76 = 8;
      if (!*(a1 + 88))
      {
        v76 = 4;
      }

      v77 = 6;
      if (*(a1 + 88))
      {
        v77 = 10;
      }

      v78 = &v26[v76];
      *v78 = 0;
      v79 = *(v75 + 8);
      *&v26[v77] = v79;
      *v79 = v26;
      *(v75 + 8) = v78;
      v80 = *(*(a1 + 48) + 8);
      v81 = *(v80 + 24) + 1;
      *(v80 + 24) = v81;
      if (v81 == v81 << 31 >> 31)
      {
LABEL_125:
        v93 = *(*(a1 + 56) + 8);
        v94 = *(v93 + 24);
        *(v93 + 24) = v94 + a3;
        if (!__CFADD__(v94, a3))
        {
          return;
        }

        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v95 = a3;
        v96 = *(*(*(a1 + 56) + 8) + 24);
        *buf = 136446978;
        v153 = "nw_http1_connection_process_input_frames_block_invoke";
        v154 = 2082;
        v155 = "bytes_processed";
        v156 = 2048;
        *v157 = a3;
        *&v157[8] = 2048;
        *&v157[10] = v96;
        LODWORD(v149) = 42;
        v97 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s Overflow: %{public}s, increment %llu, result %llu", buf, v149);
        type = OS_LOG_TYPE_ERROR;
        v150 = 0;
        if (!__nwlog_fault(v97, &type, &v150))
        {
          goto LABEL_141;
        }

        if (type == OS_LOG_TYPE_FAULT)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v98 = gLogObj;
          v99 = type;
          if (os_log_type_enabled(gLogObj, type))
          {
            v100 = *(*(*(a1 + 56) + 8) + 24);
            *buf = 136446978;
            v153 = "nw_http1_connection_process_input_frames_block_invoke";
            v154 = 2082;
            v155 = "bytes_processed";
            v156 = 2048;
            *v157 = v95;
            *&v157[8] = 2048;
            *&v157[10] = v100;
            v101 = "%{public}s Overflow: %{public}s, increment %llu, result %llu";
LABEL_140:
            _os_log_impl(&dword_181A37000, v98, v99, v101, buf, 0x2Au);
          }
        }

        else if (v150 == 1)
        {
          v102 = __nw_create_backtrace_string();
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v98 = gLogObj;
          v99 = type;
          v103 = os_log_type_enabled(gLogObj, type);
          if (v102)
          {
            if (v103)
            {
              v104 = *(*(*(a1 + 56) + 8) + 24);
              *buf = 136447234;
              v153 = "nw_http1_connection_process_input_frames_block_invoke";
              v154 = 2082;
              v155 = "bytes_processed";
              v156 = 2048;
              *v157 = v95;
              *&v157[8] = 2048;
              *&v157[10] = v104;
              *&v157[18] = 2082;
              v158 = v102;
              _os_log_impl(&dword_181A37000, v98, v99, "%{public}s Overflow: %{public}s, increment %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
            }

            free(v102);
            goto LABEL_141;
          }

          if (v103)
          {
            v106 = *(*(*(a1 + 56) + 8) + 24);
            *buf = 136446978;
            v153 = "nw_http1_connection_process_input_frames_block_invoke";
            v154 = 2082;
            v155 = "bytes_processed";
            v156 = 2048;
            *v157 = v95;
            *&v157[8] = 2048;
            *&v157[10] = v106;
            v101 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, no backtrace";
            goto LABEL_140;
          }
        }

        else
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v98 = gLogObj;
          v99 = type;
          if (os_log_type_enabled(gLogObj, type))
          {
            v105 = *(*(*(a1 + 56) + 8) + 24);
            *buf = 136446978;
            v153 = "nw_http1_connection_process_input_frames_block_invoke";
            v154 = 2082;
            v155 = "bytes_processed";
            v156 = 2048;
            *v157 = v95;
            *&v157[8] = 2048;
            *&v157[10] = v105;
            v101 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, backtrace limit exceeded";
            goto LABEL_140;
          }
        }

LABEL_141:
        if (v97)
        {
          free(v97);
        }

        *(*(*(a1 + 56) + 8) + 24) = -1;
        return;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v82 = *(*(*(a1 + 48) + 8) + 24);
      *buf = 136446978;
      v153 = "nw_http1_connection_process_input_frames_block_invoke";
      v154 = 2082;
      v155 = "frames_processed";
      v156 = 2048;
      *v157 = 1;
      *&v157[8] = 2048;
      *&v157[10] = v82;
      LODWORD(v149) = 42;
      v83 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s Overflow: %{public}s, increment %llu, result %llu", buf, v149);
      type = OS_LOG_TYPE_ERROR;
      v150 = 0;
      if (__nwlog_fault(v83, &type, &v150))
      {
        if (type == OS_LOG_TYPE_FAULT)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v84 = gLogObj;
          v85 = type;
          if (os_log_type_enabled(gLogObj, type))
          {
            v86 = *(*(*(a1 + 48) + 8) + 24);
            *buf = 136446978;
            v153 = "nw_http1_connection_process_input_frames_block_invoke";
            v154 = 2082;
            v155 = "frames_processed";
            v156 = 2048;
            *v157 = 1;
            *&v157[8] = 2048;
            *&v157[10] = v86;
            v87 = "%{public}s Overflow: %{public}s, increment %llu, result %llu";
LABEL_121:
            _os_log_impl(&dword_181A37000, v84, v85, v87, buf, 0x2Au);
          }
        }

        else if (v150 == 1)
        {
          v88 = __nw_create_backtrace_string();
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v84 = gLogObj;
          v85 = type;
          v89 = os_log_type_enabled(gLogObj, type);
          if (v88)
          {
            if (v89)
            {
              v90 = *(*(*(a1 + 48) + 8) + 24);
              *buf = 136447234;
              v153 = "nw_http1_connection_process_input_frames_block_invoke";
              v154 = 2082;
              v155 = "frames_processed";
              v156 = 2048;
              *v157 = 1;
              *&v157[8] = 2048;
              *&v157[10] = v90;
              *&v157[18] = 2082;
              v158 = v88;
              _os_log_impl(&dword_181A37000, v84, v85, "%{public}s Overflow: %{public}s, increment %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
            }

            free(v88);
            goto LABEL_122;
          }

          if (v89)
          {
            v92 = *(*(*(a1 + 48) + 8) + 24);
            *buf = 136446978;
            v153 = "nw_http1_connection_process_input_frames_block_invoke";
            v154 = 2082;
            v155 = "frames_processed";
            v156 = 2048;
            *v157 = 1;
            *&v157[8] = 2048;
            *&v157[10] = v92;
            v87 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, no backtrace";
            goto LABEL_121;
          }
        }

        else
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v84 = gLogObj;
          v85 = type;
          if (os_log_type_enabled(gLogObj, type))
          {
            v91 = *(*(*(a1 + 48) + 8) + 24);
            *buf = 136446978;
            v153 = "nw_http1_connection_process_input_frames_block_invoke";
            v154 = 2082;
            v155 = "frames_processed";
            v156 = 2048;
            *v157 = 1;
            *&v157[8] = 2048;
            *&v157[10] = v91;
            v87 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, backtrace limit exceeded";
            goto LABEL_121;
          }
        }
      }

LABEL_122:
      if (v83)
      {
        free(v83);
      }

      *(*(*(a1 + 48) + 8) + 24) = -1;
      goto LABEL_125;
    }

    if ((*(*(a1 + 72) + 158) & 1) == 0 && gLogDatapath == 1)
    {
      v141 = __nwlog_obj();
      if (os_log_type_enabled(v141, OS_LOG_TYPE_DEBUG))
      {
        v142 = *(a1 + 72);
        v143 = (v142 + 74);
        v144 = *(v142 + 488);
        v145 = *(*(v142 + 480) + 372);
        v146 = *(v142 + 860);
        if (v144)
        {
          LODWORD(v144) = *(v144 + 424);
        }

        *buf = 136447746;
        v153 = "nw_http1_connection_process_input_frames_block_invoke";
        v154 = 2082;
        v155 = v143;
        v156 = 2080;
        *v157 = " ";
        *&v157[8] = 1024;
        *&v157[10] = v145;
        *&v157[14] = 1024;
        *&v157[16] = v146;
        LOWORD(v158) = 1024;
        *(&v158 + 2) = v144;
        HIWORD(v158) = 2048;
        *v159 = v26;
        _os_log_impl(&dword_181A37000, v141, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> bytes left over after trimming, splitting frame %p", buf, 0x3Cu);
      }
    }

    *(*(*(a1 + 40) + 8) + 24) = v26;
    v26 = nw_frame_split((*(*(a1 + 40) + 8) + 24), a3);
    if (v26)
    {
LABEL_102:
      *(*(*(a1 + 64) + 8) + 24) = nw_frame_unclaimed_bytes(*(*(*(a1 + 40) + 8) + 24), (*(*(a1 + 32) + 8) + 24));
      goto LABEL_103;
    }

    if ((*(*(a1 + 72) + 158) & 1) == 0)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v38 = gLogObj;
      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
      {
        v39 = *(a1 + 72);
        v40 = (v39 + 74);
        v41 = *(v39 + 488);
        v42 = *(*(v39 + 480) + 372);
        v43 = *(v39 + 860);
        if (v41)
        {
          LODWORD(v41) = *(v41 + 424);
        }

        v44 = *(*(*(a1 + 40) + 8) + 24);
        *buf = 136448002;
        v153 = "nw_http1_connection_process_input_frames_block_invoke";
        v154 = 2082;
        v155 = v40;
        v156 = 2080;
        *v157 = " ";
        *&v157[8] = 1024;
        *&v157[10] = v42;
        *&v157[14] = 1024;
        *&v157[16] = v43;
        LOWORD(v158) = 1024;
        *(&v158 + 2) = v41;
        HIWORD(v158) = 2048;
        *v159 = v44;
        *&v159[8] = 1024;
        *&v159[10] = a3;
        _os_log_impl(&dword_181A37000, v38, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u:c%u:s%u> failed to split frame %p at offset %u", buf, 0x42u);
      }
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    *buf = 136446210;
    v153 = "nw_http1_connection_process_input_frames_block_invoke";
    LODWORD(v149) = 12;
    v45 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s nw_frame_split with partial frame failed", buf, v149);
    type = OS_LOG_TYPE_ERROR;
    v150 = 0;
    if (__nwlog_fault(v45, &type, &v150))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v46 = gLogObj;
        v47 = type;
        if (!os_log_type_enabled(gLogObj, type))
        {
          goto LABEL_100;
        }

        *buf = 136446210;
        v153 = "nw_http1_connection_process_input_frames_block_invoke";
        v48 = "%{public}s nw_frame_split with partial frame failed";
        goto LABEL_99;
      }

      if (v150 != 1)
      {
        v46 = __nwlog_obj();
        v47 = type;
        if (!os_log_type_enabled(v46, type))
        {
          goto LABEL_100;
        }

        *buf = 136446210;
        v153 = "nw_http1_connection_process_input_frames_block_invoke";
        v48 = "%{public}s nw_frame_split with partial frame failed, backtrace limit exceeded";
        goto LABEL_99;
      }

      v53 = __nw_create_backtrace_string();
      v46 = __nwlog_obj();
      v47 = type;
      v54 = os_log_type_enabled(v46, type);
      if (v53)
      {
        if (v54)
        {
          *buf = 136446466;
          v153 = "nw_http1_connection_process_input_frames_block_invoke";
          v154 = 2082;
          v155 = v53;
          _os_log_impl(&dword_181A37000, v46, v47, "%{public}s nw_frame_split with partial frame failed, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v53);
        goto LABEL_100;
      }

      if (v54)
      {
        *buf = 136446210;
        v153 = "nw_http1_connection_process_input_frames_block_invoke";
        v48 = "%{public}s nw_frame_split with partial frame failed, no backtrace";
LABEL_99:
        _os_log_impl(&dword_181A37000, v46, v47, v48, buf, 0xCu);
      }
    }

LABEL_100:
    if (v45)
    {
      free(v45);
    }

    goto LABEL_102;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  *buf = 136446722;
  v153 = "nw_http1_connection_process_input_frames_block_invoke";
  v154 = 2048;
  v155 = a2;
  v156 = 1024;
  *v157 = a3;
  v21 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s unexpected values for body_start (%p) or body_length (%u)", buf, 28);
  type = OS_LOG_TYPE_ERROR;
  v150 = 0;
  if (__nwlog_fault(v21, &type, &v150))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v22 = gLogObj;
      v23 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_60;
      }

      *buf = 136446722;
      v153 = "nw_http1_connection_process_input_frames_block_invoke";
      v154 = 2048;
      v155 = a2;
      v156 = 1024;
      *v157 = a3;
      v24 = "%{public}s unexpected values for body_start (%p) or body_length (%u)";
      goto LABEL_59;
    }

    if (v150 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v22 = gLogObj;
      v23 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_60;
      }

      *buf = 136446722;
      v153 = "nw_http1_connection_process_input_frames_block_invoke";
      v154 = 2048;
      v155 = a2;
      v156 = 1024;
      *v157 = a3;
      v24 = "%{public}s unexpected values for body_start (%p) or body_length (%u), backtrace limit exceeded";
      goto LABEL_59;
    }

    v36 = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v22 = gLogObj;
    v23 = type;
    v37 = os_log_type_enabled(gLogObj, type);
    if (v36)
    {
      if (v37)
      {
        *buf = 136446978;
        v153 = "nw_http1_connection_process_input_frames_block_invoke";
        v154 = 2048;
        v155 = a2;
        v156 = 1024;
        *v157 = a3;
        *&v157[4] = 2082;
        *&v157[6] = v36;
        _os_log_impl(&dword_181A37000, v22, v23, "%{public}s unexpected values for body_start (%p) or body_length (%u), dumping backtrace:%{public}s", buf, 0x26u);
      }

      free(v36);
      goto LABEL_60;
    }

    if (v37)
    {
      *buf = 136446722;
      v153 = "nw_http1_connection_process_input_frames_block_invoke";
      v154 = 2048;
      v155 = a2;
      v156 = 1024;
      *v157 = a3;
      v24 = "%{public}s unexpected values for body_start (%p) or body_length (%u), no backtrace";
LABEL_59:
      _os_log_impl(&dword_181A37000, v22, v23, v24, buf, 0x1Cu);
    }
  }

LABEL_60:
  if (v21)
  {
    free(v21);
  }
}

uint64_t nw_http1_connection_execute_parser(uint64_t a1, unsigned __int8 *a2, uint64_t a3, unsigned int *a4, uint64_t a5)
{
  v86 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    v65 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http1_connection_execute_parser";
    v58 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v65, 16, "%{public}s called with null bytes", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v72 = 0;
    if (!__nwlog_fault(v58, &type, &v72))
    {
      goto LABEL_96;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v59 = __nwlog_obj();
      v60 = type;
      if (!os_log_type_enabled(v59, type))
      {
        goto LABEL_96;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http1_connection_execute_parser";
      v61 = "%{public}s called with null bytes";
      goto LABEL_95;
    }

    if (v72 != 1)
    {
      v59 = __nwlog_obj();
      v60 = type;
      if (!os_log_type_enabled(v59, type))
      {
        goto LABEL_96;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http1_connection_execute_parser";
      v61 = "%{public}s called with null bytes, backtrace limit exceeded";
      goto LABEL_95;
    }

    backtrace_string = __nw_create_backtrace_string();
    v59 = __nwlog_obj();
    v60 = type;
    v68 = os_log_type_enabled(v59, type);
    if (!backtrace_string)
    {
      if (!v68)
      {
        goto LABEL_96;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http1_connection_execute_parser";
      v61 = "%{public}s called with null bytes, no backtrace";
      goto LABEL_95;
    }

    if (!v68)
    {
      goto LABEL_90;
    }

    *buf = 136446466;
    *&buf[4] = "nw_http1_connection_execute_parser";
    *&buf[12] = 2082;
    *&buf[14] = backtrace_string;
    v64 = "%{public}s called with null bytes, dumping backtrace:%{public}s";
    goto LABEL_89;
  }

  if (!a4)
  {
    v66 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http1_connection_execute_parser";
    v58 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v66, 16, "%{public}s called with null bytes_parsed", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v72 = 0;
    if (!__nwlog_fault(v58, &type, &v72))
    {
      goto LABEL_96;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v59 = __nwlog_obj();
      v60 = type;
      if (!os_log_type_enabled(v59, type))
      {
        goto LABEL_96;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http1_connection_execute_parser";
      v61 = "%{public}s called with null bytes_parsed";
      goto LABEL_95;
    }

    if (v72 != 1)
    {
      v59 = __nwlog_obj();
      v60 = type;
      if (!os_log_type_enabled(v59, type))
      {
        goto LABEL_96;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http1_connection_execute_parser";
      v61 = "%{public}s called with null bytes_parsed, backtrace limit exceeded";
      goto LABEL_95;
    }

    backtrace_string = __nw_create_backtrace_string();
    v59 = __nwlog_obj();
    v60 = type;
    v69 = os_log_type_enabled(v59, type);
    if (!backtrace_string)
    {
      if (!v69)
      {
        goto LABEL_96;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http1_connection_execute_parser";
      v61 = "%{public}s called with null bytes_parsed, no backtrace";
      goto LABEL_95;
    }

    if (!v69)
    {
      goto LABEL_90;
    }

    *buf = 136446466;
    *&buf[4] = "nw_http1_connection_execute_parser";
    *&buf[12] = 2082;
    *&buf[14] = backtrace_string;
    v64 = "%{public}s called with null bytes_parsed, dumping backtrace:%{public}s";
    goto LABEL_89;
  }

  if (!a5)
  {
    v67 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http1_connection_execute_parser";
    v58 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v67, 16, "%{public}s called with null body_block", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v72 = 0;
    if (!__nwlog_fault(v58, &type, &v72))
    {
      goto LABEL_96;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v59 = __nwlog_obj();
      v60 = type;
      if (!os_log_type_enabled(v59, type))
      {
        goto LABEL_96;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http1_connection_execute_parser";
      v61 = "%{public}s called with null body_block";
      goto LABEL_95;
    }

    if (v72 != 1)
    {
      v59 = __nwlog_obj();
      v60 = type;
      if (!os_log_type_enabled(v59, type))
      {
        goto LABEL_96;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http1_connection_execute_parser";
      v61 = "%{public}s called with null body_block, backtrace limit exceeded";
      goto LABEL_95;
    }

    backtrace_string = __nw_create_backtrace_string();
    v59 = __nwlog_obj();
    v60 = type;
    v70 = os_log_type_enabled(v59, type);
    if (!backtrace_string)
    {
      if (!v70)
      {
        goto LABEL_96;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http1_connection_execute_parser";
      v61 = "%{public}s called with null body_block, no backtrace";
      goto LABEL_95;
    }

    if (!v70)
    {
      goto LABEL_90;
    }

    *buf = 136446466;
    *&buf[4] = "nw_http1_connection_execute_parser";
    *&buf[12] = 2082;
    *&buf[14] = backtrace_string;
    v64 = "%{public}s called with null body_block, dumping backtrace:%{public}s";
    goto LABEL_89;
  }

  v6 = a3;
  if ((*(a1 + 872) & 0x200) != 0)
  {
    (*(a5 + 16))(a5, a2, a3);
    return 1;
  }

  *(a1 + 792) = a5;
  v9 = *(*(a1 + 488) + 428);
  v10 = a3;
  v11 = *(a1 + 224);
  if (!v11)
  {
    v12 = a5;
    v13 = &a2[a3];
    if (*(a1 + 208))
    {
      *(a1 + 208) = a2;
    }

    v14 = llhttp__internal__run(a1 + 200, a2, &a2[a3]);
    if (v14)
    {
      *(a1 + 256) = v14;
      v15 = *(a1 + 208);
      if (!v15 || (v11 = (*(a1 + 216))(a1 + 200, v15, &a2[v10])) == 0)
      {
        *(a1 + 792) = 0;
        goto LABEL_35;
      }

      *(a1 + 224) = v11;
      *(a1 + 240) = v13;
    }

    else
    {
      v11 = *(a1 + 224);
    }

    a5 = v12;
  }

  *(a1 + 792) = 0;
  if (v11 > 20)
  {
    if (v11 != 21)
    {
      if (v11 != 22)
      {
        goto LABEL_42;
      }

      v22 = a5;
      v23 = *(a1 + 240) - a2;
      if ((*(a1 + 158) & 1) == 0)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v24 = gLogObj;
        if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEBUG))
        {
          v25 = *(a1 + 488);
          v26 = *(*(a1 + 480) + 372);
          v27 = *(a1 + 860);
          if (v25)
          {
            LODWORD(v25) = *(v25 + 424);
          }

          *buf = 136447746;
          *&buf[4] = "nw_http1_connection_execute_parser";
          *&buf[12] = 2082;
          *&buf[14] = a1 + 74;
          *&buf[22] = 2080;
          v75 = " ";
          LOWORD(v76) = 1024;
          *(&v76 + 2) = v26;
          HIWORD(v76) = 1024;
          v77 = v27;
          v78 = 1024;
          v79 = v25;
          v80 = 1024;
          LODWORD(v81) = v23;
          _os_log_impl(&dword_181A37000, v24, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> upgraded after parsing %u bytes", buf, 0x38u);
        }
      }

      *(a1 + 872) |= 0x200u;
      v10 = v23;
      if (v6 > v23)
      {
        (*(v22 + 16))(v22, &a2[v23], v6 - v23);
      }

      *a4 = v6;
LABEL_68:
      if (v10)
      {
        nw_http_transaction_metadata_increment_inbound_header_size(*(*(a1 + 488) + 352), v10);
      }

      return 1;
    }

    v37 = a5;
    v38 = *(a1 + 240);
    v39 = v38 - a2;
    *a4 = v38 - a2;
    if ((*(a1 + 158) & 1) == 0)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v40 = gLogObj;
      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEBUG))
      {
        v41 = *(a1 + 488);
        v42 = *(*(a1 + 480) + 372);
        v43 = *(a1 + 860);
        if (v41)
        {
          LODWORD(v41) = *(v41 + 424);
        }

        v44 = *a4;
        *buf = 136447746;
        *&buf[4] = "nw_http1_connection_execute_parser";
        *&buf[12] = 2082;
        *&buf[14] = a1 + 74;
        *&buf[22] = 2080;
        v75 = " ";
        LOWORD(v76) = 1024;
        *(&v76 + 2) = v42;
        HIWORD(v76) = 1024;
        v77 = v43;
        v78 = 1024;
        v79 = v41;
        v80 = 1024;
        LODWORD(v81) = v44;
        _os_log_impl(&dword_181A37000, v40, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> paused parser after processing %u bytes", buf, 0x38u);
      }

      v39 = *a4;
    }

    v10 = v39;
    v45 = *(a1 + 872);
    if ((v9 & 2) == 0)
    {
      if ((v45 & 4) != 0)
      {
        goto LABEL_68;
      }

      v46 = *(a1 + 488);
      if (v10)
      {
        nw_http_transaction_metadata_increment_inbound_header_size(*(v46 + 352), v10);
        v46 = *(a1 + 488);
      }

      v47 = *(v46 + 428);
      v48 = *(a1 + 158);
      if ((v47 & 2) != 0)
      {
        if ((*(a1 + 158) & 1) == 0)
        {
          v49 = __nwlog_obj();
          if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
          {
            v50 = *(a1 + 488);
            v51 = *(*(a1 + 480) + 372);
            v52 = *(a1 + 860);
            if (v50)
            {
              LODWORD(v50) = *(v50 + 424);
            }

            *buf = 136447490;
            *&buf[4] = "nw_http1_connection_execute_parser";
            *&buf[12] = 2082;
            *&buf[14] = a1 + 74;
            *&buf[22] = 2080;
            v75 = " ";
            LOWORD(v76) = 1024;
            *(&v76 + 2) = v51;
            HIWORD(v76) = 1024;
            v77 = v52;
            v78 = 1024;
            v79 = v50;
            _os_log_impl(&dword_181A37000, v49, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> resuming after processing headers", buf, 0x32u);
          }
        }

        if (*(a1 + 224) == 21)
        {
          *(a1 + 224) = 0;
        }

        *buf = 0;
        result = nw_http1_connection_execute_parser(a1, v38, v6 - *a4, buf, v37);
        *a4 += *buf;
        return result;
      }

LABEL_73:
      if ((v48 & 1) == 0)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v53 = gLogObj;
        if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEBUG))
        {
          v54 = *(a1 + 488);
          v55 = *(*(a1 + 480) + 372);
          v56 = *(a1 + 860);
          if (v54)
          {
            LODWORD(v54) = *(v54 + 424);
          }

          *buf = 136447490;
          *&buf[4] = "nw_http1_connection_execute_parser";
          *&buf[12] = 2082;
          *&buf[14] = a1 + 74;
          *&buf[22] = 2080;
          v75 = " ";
          LOWORD(v76) = 1024;
          *(&v76 + 2) = v55;
          HIWORD(v76) = 1024;
          v77 = v56;
          v78 = 1024;
          v79 = v54;
          _os_log_impl(&dword_181A37000, v53, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> got informational response", buf, 0x32u);
        }
      }

      *(a1 + 872) |= 0x10u;
      return 1;
    }

    if ((v45 & 4) != 0)
    {
      goto LABEL_79;
    }

    if ((*(*(a1 + 488) + 428) & 2) == 0)
    {
      v48 = *(a1 + 158);
      goto LABEL_73;
    }

    v57 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http1_connection_execute_parser";
    v58 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v57, 16, "%{public}s paused in the middle of parsing the body", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v72 = 0;
    if (!__nwlog_fault(v58, &type, &v72))
    {
      goto LABEL_96;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v59 = __nwlog_obj();
      v60 = type;
      if (os_log_type_enabled(v59, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_http1_connection_execute_parser";
        v61 = "%{public}s paused in the middle of parsing the body";
LABEL_95:
        _os_log_impl(&dword_181A37000, v59, v60, v61, buf, 0xCu);
        goto LABEL_96;
      }

      goto LABEL_96;
    }

    if (v72 != 1)
    {
      v59 = __nwlog_obj();
      v60 = type;
      if (os_log_type_enabled(v59, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_http1_connection_execute_parser";
        v61 = "%{public}s paused in the middle of parsing the body, backtrace limit exceeded";
        goto LABEL_95;
      }

LABEL_96:
      if (v58)
      {
        free(v58);
      }

      return 0;
    }

    backtrace_string = __nw_create_backtrace_string();
    v59 = __nwlog_obj();
    v60 = type;
    v63 = os_log_type_enabled(v59, type);
    if (!backtrace_string)
    {
      if (v63)
      {
        *buf = 136446210;
        *&buf[4] = "nw_http1_connection_execute_parser";
        v61 = "%{public}s paused in the middle of parsing the body, no backtrace";
        goto LABEL_95;
      }

      goto LABEL_96;
    }

    if (!v63)
    {
LABEL_90:
      free(backtrace_string);
      goto LABEL_96;
    }

    *buf = 136446466;
    *&buf[4] = "nw_http1_connection_execute_parser";
    *&buf[12] = 2082;
    *&buf[14] = backtrace_string;
    v64 = "%{public}s paused in the middle of parsing the body, dumping backtrace:%{public}s";
LABEL_89:
    _os_log_impl(&dword_181A37000, v59, v60, v64, buf, 0x16u);
    goto LABEL_90;
  }

  if (v11)
  {
    if (v11 == 5)
    {
      v17 = *(a1 + 240) - a2;
      *a4 = v17;
      v10 = v17;
      if ((*(a1 + 158) & 1) == 0)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v18 = gLogObj;
        if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
        {
          v19 = *(a1 + 488);
          v20 = *(*(a1 + 480) + 372);
          v21 = *(a1 + 860);
          if (v19)
          {
            LODWORD(v19) = *(v19 + 424);
          }

          *buf = 136447746;
          *&buf[4] = "nw_http1_connection_execute_parser";
          *&buf[12] = 2082;
          *&buf[14] = a1 + 74;
          *&buf[22] = 2080;
          v75 = " ";
          LOWORD(v76) = 1024;
          *(&v76 + 2) = v20;
          HIWORD(v76) = 1024;
          v77 = v21;
          v78 = 1024;
          v79 = v19;
          v80 = 2048;
          v81 = v10;
          _os_log_impl(&dword_181A37000, v18, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u:c%u:s%u> Extra bytes after closed connection, stopping after %zu bytes", buf, 0x3Cu);
        }
      }

      goto LABEL_79;
    }

LABEL_42:
    if ((*(a1 + 158) & 1) == 0)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v32 = gLogObj;
      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
      {
        v33 = *(a1 + 488);
        v34 = *(*(a1 + 480) + 372);
        v35 = *(a1 + 860);
        if (v33)
        {
          LODWORD(v33) = *(v33 + 424);
        }

        v36 = *(a1 + 232);
        *buf = 136448258;
        *&buf[4] = "nw_http1_connection_execute_parser";
        *&buf[12] = 2082;
        *&buf[14] = a1 + 74;
        *&buf[22] = 2080;
        v75 = " ";
        LOWORD(v76) = 1024;
        *(&v76 + 2) = v34;
        HIWORD(v76) = 1024;
        v77 = v35;
        v78 = 1024;
        v79 = v33;
        v80 = 2080;
        v81 = v36;
        v82 = 1040;
        v83 = v6;
        v84 = 2096;
        v85 = a2;
        _os_log_impl(&dword_181A37000, v32, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u:c%u:s%u> Failed to parse bytes (%s): \n%{network:data}.*P", buf, 0x4Cu);
      }
    }

    result = 0;
    *a4 = 0;
    return result;
  }

LABEL_35:
  if ((*(a1 + 158) & 1) == 0)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v28 = gLogObj;
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEBUG))
    {
      v29 = *(a1 + 488);
      v30 = *(*(a1 + 480) + 372);
      v31 = *(a1 + 860);
      if (v29)
      {
        LODWORD(v29) = *(v29 + 424);
      }

      *buf = 136447746;
      *&buf[4] = "nw_http1_connection_execute_parser";
      *&buf[12] = 2082;
      *&buf[14] = a1 + 74;
      *&buf[22] = 2080;
      v75 = " ";
      LOWORD(v76) = 1024;
      *(&v76 + 2) = v30;
      HIWORD(v76) = 1024;
      v77 = v31;
      v78 = 1024;
      v79 = v29;
      v80 = 1024;
      LODWORD(v81) = v6;
      _os_log_impl(&dword_181A37000, v28, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> parsed %u bytes", buf, 0x38u);
    }
  }

  *a4 = v6;
  if ((v9 & 2) == 0)
  {
    goto LABEL_68;
  }

LABEL_79:
  result = 1;
  if (v10)
  {
    v71[0] = MEMORY[0x1E69E9820];
    v71[1] = 0x40000000;
    v71[2] = ___ZL34nw_http1_connection_execute_parserP19nw_http1_connectionPKhjPjU13block_pointerFvPKcjE_block_invoke;
    v71[3] = &__block_descriptor_tmp_121;
    v71[4] = a1;
    v71[5] = v10;
    v71[6] = a2;
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 0x40000000;
    *&buf[16] = __nw_http_diag_log_for_level_block_invoke;
    v75 = &unk_1E6A303F0;
    v77 = 3;
    LOBYTE(v78) = 1;
    v76 = v71;
    os_unfair_lock_lock(&lock);
    (*&buf[16])(buf);
    os_unfair_lock_unlock(&lock);
    nw_http_transaction_metadata_increment_inbound_body_transfer_size(*(*(a1 + 488) + 352), v10);
    return 1;
  }

  return result;
}

uint64_t ___ZL34nw_protocol_http1_get_input_framesP11nw_protocolS0_jjjP16nw_frame_array_s_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  if (*(a1 + 48))
  {
    v3 = 0x80;
  }

  else
  {
    v3 = 0;
  }

  *(a2 + 186) = v3 & 0x80 | *(a2 + 186) & 0x7F;
  v4 = *(a1 + 32);
  if ((*(v4 + 428) & 0x400) != 0)
  {
    v2 = **(*(*(a1 + 40) + 8) + 8) == a2;
  }

  nw_frame_set_metadata(a2, *(v4 + 368), 1, v2);
  return 1;
}

void nw_http1_connection_inbound_frame_finalizer(nw_frame *a1, int a2, void *a3)
{
  v51 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v9 = __nwlog_obj();
    *buf = 136446210;
    v34 = "nw_http1_connection_inbound_frame_finalizer";
    v10 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v9, 16, "%{public}s called with null frame", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v31 = 0;
    if (!__nwlog_fault(v10, &type, &v31))
    {
      goto LABEL_75;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v11 = __nwlog_obj();
      v12 = type;
      if (!os_log_type_enabled(v11, type))
      {
        goto LABEL_75;
      }

      *buf = 136446210;
      v34 = "nw_http1_connection_inbound_frame_finalizer";
      v13 = "%{public}s called with null frame";
    }

    else if (v31 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v11 = __nwlog_obj();
      v12 = type;
      v25 = os_log_type_enabled(v11, type);
      if (backtrace_string)
      {
        if (v25)
        {
          *buf = 136446466;
          v34 = "nw_http1_connection_inbound_frame_finalizer";
          v35 = 2082;
          v36 = backtrace_string;
          _os_log_impl(&dword_181A37000, v11, v12, "%{public}s called with null frame, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_75:
        if (!v10)
        {
          return;
        }

        goto LABEL_76;
      }

      if (!v25)
      {
        goto LABEL_75;
      }

      *buf = 136446210;
      v34 = "nw_http1_connection_inbound_frame_finalizer";
      v13 = "%{public}s called with null frame, no backtrace";
    }

    else
    {
      v11 = __nwlog_obj();
      v12 = type;
      if (!os_log_type_enabled(v11, type))
      {
        goto LABEL_75;
      }

      *buf = 136446210;
      v34 = "nw_http1_connection_inbound_frame_finalizer";
      v13 = "%{public}s called with null frame, backtrace limit exceeded";
    }

    goto LABEL_74;
  }

  if (!a3)
  {
    v14 = __nwlog_obj();
    *buf = 136446210;
    v34 = "nw_http1_connection_inbound_frame_finalizer";
    v10 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v14, 16, "%{public}s called with null context", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v31 = 0;
    if (!__nwlog_fault(v10, &type, &v31))
    {
      goto LABEL_75;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v31 != 1)
      {
        v11 = __nwlog_obj();
        v12 = type;
        if (!os_log_type_enabled(v11, type))
        {
          goto LABEL_75;
        }

        *buf = 136446210;
        v34 = "nw_http1_connection_inbound_frame_finalizer";
        v13 = "%{public}s called with null context, backtrace limit exceeded";
        goto LABEL_74;
      }

      v26 = __nw_create_backtrace_string();
      v11 = __nwlog_obj();
      v12 = type;
      v27 = os_log_type_enabled(v11, type);
      if (!v26)
      {
        if (!v27)
        {
          goto LABEL_75;
        }

        *buf = 136446210;
        v34 = "nw_http1_connection_inbound_frame_finalizer";
        v13 = "%{public}s called with null context, no backtrace";
        goto LABEL_74;
      }

      if (!v27)
      {
        goto LABEL_56;
      }

      *buf = 136446466;
      v34 = "nw_http1_connection_inbound_frame_finalizer";
      v35 = 2082;
      v36 = v26;
      v28 = "%{public}s called with null context, dumping backtrace:%{public}s";
      goto LABEL_55;
    }

    v11 = __nwlog_obj();
    v12 = type;
    if (!os_log_type_enabled(v11, type))
    {
      goto LABEL_75;
    }

    *buf = 136446210;
    v34 = "nw_http1_connection_inbound_frame_finalizer";
    v13 = "%{public}s called with null context";
LABEL_74:
    _os_log_impl(&dword_181A37000, v11, v12, v13, buf, 0xCu);
    goto LABEL_75;
  }

  if ((*(a1 + 102) & 4) == 0)
  {
    v15 = __nwlog_obj();
    *buf = 136446210;
    v34 = "nw_http1_connection_inbound_frame_finalizer";
    v10 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v15, 16, "%{public}s called with null metadata", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v31 = 0;
    if (!__nwlog_fault(v10, &type, &v31))
    {
      goto LABEL_75;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v11 = __nwlog_obj();
      v12 = type;
      if (!os_log_type_enabled(v11, type))
      {
        goto LABEL_75;
      }

      *buf = 136446210;
      v34 = "nw_http1_connection_inbound_frame_finalizer";
      v13 = "%{public}s called with null metadata";
      goto LABEL_74;
    }

    if (v31 != 1)
    {
      v11 = __nwlog_obj();
      v12 = type;
      if (!os_log_type_enabled(v11, type))
      {
        goto LABEL_75;
      }

      *buf = 136446210;
      v34 = "nw_http1_connection_inbound_frame_finalizer";
      v13 = "%{public}s called with null metadata, backtrace limit exceeded";
      goto LABEL_74;
    }

    v26 = __nw_create_backtrace_string();
    v11 = __nwlog_obj();
    v12 = type;
    v29 = os_log_type_enabled(v11, type);
    if (!v26)
    {
      if (!v29)
      {
        goto LABEL_75;
      }

      *buf = 136446210;
      v34 = "nw_http1_connection_inbound_frame_finalizer";
      v13 = "%{public}s called with null metadata, no backtrace";
      goto LABEL_74;
    }

    if (!v29)
    {
      goto LABEL_56;
    }

    *buf = 136446466;
    v34 = "nw_http1_connection_inbound_frame_finalizer";
    v35 = 2082;
    v36 = v26;
    v28 = "%{public}s called with null metadata, dumping backtrace:%{public}s";
LABEL_55:
    _os_log_impl(&dword_181A37000, v11, v12, v28, buf, 0x16u);
    goto LABEL_56;
  }

  v4 = *(a1 + 26);
  if (!v4)
  {
    v16 = __nwlog_obj();
    *buf = 136446210;
    v34 = "nw_http1_connection_inbound_frame_finalizer";
    v10 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v16, 16, "%{public}s called with null http1_connection", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v31 = 0;
    if (!__nwlog_fault(v10, &type, &v31))
    {
      goto LABEL_75;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v11 = __nwlog_obj();
      v12 = type;
      if (!os_log_type_enabled(v11, type))
      {
        goto LABEL_75;
      }

      *buf = 136446210;
      v34 = "nw_http1_connection_inbound_frame_finalizer";
      v13 = "%{public}s called with null http1_connection";
      goto LABEL_74;
    }

    if (v31 != 1)
    {
      v11 = __nwlog_obj();
      v12 = type;
      if (!os_log_type_enabled(v11, type))
      {
        goto LABEL_75;
      }

      *buf = 136446210;
      v34 = "nw_http1_connection_inbound_frame_finalizer";
      v13 = "%{public}s called with null http1_connection, backtrace limit exceeded";
      goto LABEL_74;
    }

    v26 = __nw_create_backtrace_string();
    v11 = __nwlog_obj();
    v12 = type;
    v30 = os_log_type_enabled(v11, type);
    if (!v26)
    {
      if (!v30)
      {
        goto LABEL_75;
      }

      *buf = 136446210;
      v34 = "nw_http1_connection_inbound_frame_finalizer";
      v13 = "%{public}s called with null http1_connection, no backtrace";
      goto LABEL_74;
    }

    if (v30)
    {
      *buf = 136446466;
      v34 = "nw_http1_connection_inbound_frame_finalizer";
      v35 = 2082;
      v36 = v26;
      v28 = "%{public}s called with null http1_connection, dumping backtrace:%{public}s";
      goto LABEL_55;
    }

LABEL_56:
    free(v26);
    if (!v10)
    {
      return;
    }

LABEL_76:
    free(v10);
    return;
  }

  if ((*(v4 + 158) & 1) == 0 && gLogDatapath == 1)
  {
    v17 = a2;
    v19 = __nwlog_obj();
    v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG);
    a2 = v17;
    if (v20)
    {
      v21 = *(v4 + 488);
      v22 = *(*(v4 + 480) + 372);
      v23 = *(v4 + 860);
      if (v21)
      {
        LODWORD(v21) = *(v21 + 424);
      }

      *buf = 136448258;
      v34 = "nw_http1_connection_inbound_frame_finalizer";
      v35 = 2082;
      v36 = (v4 + 74);
      v37 = 2080;
      v38 = " ";
      v39 = 1024;
      v40 = v22;
      v41 = 1024;
      v42 = v23;
      v43 = 1024;
      v44 = v21;
      v45 = 2048;
      v46 = a1;
      v47 = 1024;
      v48 = v17;
      v49 = 2048;
      v50 = a3;
      _os_log_impl(&dword_181A37000, v19, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> finalizing input frame %p (success %u, context %p)", buf, 0x4Cu);
      a2 = v17;
    }
  }

  v5 = (v4 + 672);
  v6 = *(a1 + 2);
  v7 = *(a1 + 3);
  if (v6)
  {
    v5 = (v6 + 24);
  }

  *v5 = v7;
  *v7 = v6;
  *(a1 + 2) = 0;
  *(a1 + 3) = 0;
  *(a1 + 10) = 0;
  *(a1 + 11) = 0;
  if (a2)
  {
    nw_frame_cache_return_frame(v4 + 696, a1);
  }

  else
  {
    if ((*(a1 + 102) & 0x100) == 0 || !g_channel_check_validity || g_channel_check_validity(a1, 0))
    {
      v8 = *(a1 + 14);
      if (v8)
      {
        free(v8);
      }
    }

    nw_frame_reset(a1, 0, 0, 0, 0);
    os_release(a1);
  }
}

void ___ZL34nw_http1_connection_execute_parserP19nw_http1_connectionPKhjPjU13block_pointerFvPKcjE_block_invoke(void *a1, uint64_t a2, int a3)
{
  v16 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    if (__nwlog_http_diagnostics_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_http_diagnostics_log::onceToken, &__block_literal_global_40_47449);
    }

    v4 = ghttp_diagnosticsLogObj;
    if (os_log_type_enabled(ghttp_diagnosticsLogObj, OS_LOG_TYPE_DEFAULT))
    {
      v5 = a1[5];
      v6 = a1[4] + 74;
      v7 = a1[6];
      v8 = 136446978;
      v9 = v6;
      v10 = 2080;
      v11 = " ";
      v12 = 1040;
      v13 = v5;
      v14 = 2096;
      v15 = v7;
      _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_DEFAULT, "%{public}s%sH1 Inbound Body Data:\n%{network:data}.*P", &v8, 0x26u);
    }
  }
}

void nw_protocol_http1_output_finished(nw_protocol *a1, nw_protocol *a2)
{
  v134 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v73 = __nwlog_obj();
    *buf = 136446210;
    v123 = "nw_http1_get_http1_protocol";
    v74 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v73, 16, "%{public}s called with null protocol", buf, 12);
    v120[0] = OS_LOG_TYPE_ERROR;
    type[0] = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v74, v120, type))
    {
      goto LABEL_205;
    }

    if (v120[0] == OS_LOG_TYPE_FAULT)
    {
      v75 = __nwlog_obj();
      v76 = v120[0];
      if (!os_log_type_enabled(v75, v120[0]))
      {
        goto LABEL_205;
      }

      *buf = 136446210;
      v123 = "nw_http1_get_http1_protocol";
      v77 = "%{public}s called with null protocol";
    }

    else if (type[0] == OS_LOG_TYPE_INFO)
    {
      backtrace_string = __nw_create_backtrace_string();
      v75 = __nwlog_obj();
      v76 = v120[0];
      v83 = os_log_type_enabled(v75, v120[0]);
      if (backtrace_string)
      {
        if (v83)
        {
          *buf = 136446466;
          v123 = "nw_http1_get_http1_protocol";
          v124 = 2082;
          *v125 = backtrace_string;
          _os_log_impl(&dword_181A37000, v75, v76, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_205:
        if (!v74)
        {
          goto LABEL_207;
        }

LABEL_206:
        free(v74);
        goto LABEL_207;
      }

      if (!v83)
      {
        goto LABEL_205;
      }

      *buf = 136446210;
      v123 = "nw_http1_get_http1_protocol";
      v77 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v75 = __nwlog_obj();
      v76 = v120[0];
      if (!os_log_type_enabled(v75, v120[0]))
      {
        goto LABEL_205;
      }

      *buf = 136446210;
      v123 = "nw_http1_get_http1_protocol";
      v77 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

    goto LABEL_204;
  }

  handle = a1->handle;
  if (!handle)
  {
    v78 = __nwlog_obj();
    *buf = 136446210;
    v123 = "nw_http1_get_http1_protocol";
    v74 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v78, 16, "%{public}s called with null handle", buf, 12);
    v120[0] = OS_LOG_TYPE_ERROR;
    type[0] = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v74, v120, type))
    {
      goto LABEL_205;
    }

    if (v120[0] != OS_LOG_TYPE_FAULT)
    {
      if (type[0] != OS_LOG_TYPE_INFO)
      {
        v75 = __nwlog_obj();
        v76 = v120[0];
        if (!os_log_type_enabled(v75, v120[0]))
        {
          goto LABEL_205;
        }

        *buf = 136446210;
        v123 = "nw_http1_get_http1_protocol";
        v77 = "%{public}s called with null handle, backtrace limit exceeded";
        goto LABEL_204;
      }

      v84 = __nw_create_backtrace_string();
      v75 = __nwlog_obj();
      v76 = v120[0];
      v85 = os_log_type_enabled(v75, v120[0]);
      if (!v84)
      {
        if (!v85)
        {
          goto LABEL_205;
        }

        *buf = 136446210;
        v123 = "nw_http1_get_http1_protocol";
        v77 = "%{public}s called with null handle, no backtrace";
        goto LABEL_204;
      }

      if (!v85)
      {
        goto LABEL_123;
      }

      *buf = 136446466;
      v123 = "nw_http1_get_http1_protocol";
      v124 = 2082;
      *v125 = v84;
      v86 = "%{public}s called with null handle, dumping backtrace:%{public}s";
      goto LABEL_122;
    }

    v75 = __nwlog_obj();
    v76 = v120[0];
    if (!os_log_type_enabled(v75, v120[0]))
    {
      goto LABEL_205;
    }

    *buf = 136446210;
    v123 = "nw_http1_get_http1_protocol";
    v77 = "%{public}s called with null handle";
LABEL_204:
    _os_log_impl(&dword_181A37000, v75, v76, v77, buf, 0xCu);
    goto LABEL_205;
  }

  v3 = *(handle + 6);
  v4 = a1->handle;
  if (v3 == 1)
  {
    goto LABEL_10;
  }

  if (v3 != 2)
  {
    if (v3 != 3)
    {
LABEL_207:
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      *buf = 136446210;
      v123 = "nw_protocol_http1_output_finished";
      LODWORD(v116) = 12;
      v54 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s called with null http1", buf, v116);
      v120[0] = OS_LOG_TYPE_ERROR;
      type[0] = OS_LOG_TYPE_DEFAULT;
      if (!__nwlog_fault(v54, v120, type))
      {
        goto LABEL_240;
      }

      if (v120[0] == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v80 = gLogObj;
        v81 = v120[0];
        if (!os_log_type_enabled(gLogObj, v120[0]))
        {
          goto LABEL_240;
        }

        *buf = 136446210;
        v123 = "nw_protocol_http1_output_finished";
        v57 = "%{public}s called with null http1";
        goto LABEL_237;
      }

      if (type[0] != OS_LOG_TYPE_INFO)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v80 = gLogObj;
        v81 = v120[0];
        if (!os_log_type_enabled(gLogObj, v120[0]))
        {
          goto LABEL_240;
        }

        *buf = 136446210;
        v123 = "nw_protocol_http1_output_finished";
        v57 = "%{public}s called with null http1, backtrace limit exceeded";
        goto LABEL_237;
      }

      v108 = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v109 = gLogObj;
      v110 = v120[0];
      v111 = os_log_type_enabled(gLogObj, v120[0]);
      if (v108)
      {
        if (v111)
        {
          *buf = 136446466;
          v123 = "nw_protocol_http1_output_finished";
          v124 = 2082;
          *v125 = v108;
          _os_log_impl(&dword_181A37000, v109, v110, "%{public}s called with null http1, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v108);
        goto LABEL_240;
      }

      if (!v111)
      {
        goto LABEL_240;
      }

      *buf = 136446210;
      v123 = "nw_protocol_http1_output_finished";
      v57 = "%{public}s called with null http1, no backtrace";
      goto LABEL_245;
    }

    v5 = *(handle + 2);
    if (v5)
    {
      v4 = (v5 + 480);
      goto LABEL_10;
    }

    v91 = __nwlog_obj();
    *buf = 136446210;
    v123 = "nw_http1_get_http1_protocol";
    v74 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v91, 16, "%{public}s called with null handle->http1_connection", buf, 12);
    v120[0] = OS_LOG_TYPE_ERROR;
    type[0] = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v74, v120, type))
    {
      goto LABEL_205;
    }

    if (v120[0] == OS_LOG_TYPE_FAULT)
    {
      v75 = __nwlog_obj();
      v76 = v120[0];
      if (!os_log_type_enabled(v75, v120[0]))
      {
        goto LABEL_205;
      }

      *buf = 136446210;
      v123 = "nw_http1_get_http1_protocol";
      v77 = "%{public}s called with null handle->http1_connection";
      goto LABEL_204;
    }

    if (type[0] != OS_LOG_TYPE_INFO)
    {
      v75 = __nwlog_obj();
      v76 = v120[0];
      if (!os_log_type_enabled(v75, v120[0]))
      {
        goto LABEL_205;
      }

      *buf = 136446210;
      v123 = "nw_http1_get_http1_protocol";
      v77 = "%{public}s called with null handle->http1_connection, backtrace limit exceeded";
      goto LABEL_204;
    }

    v84 = __nw_create_backtrace_string();
    v75 = __nwlog_obj();
    v76 = v120[0];
    v99 = os_log_type_enabled(v75, v120[0]);
    if (!v84)
    {
      if (!v99)
      {
        goto LABEL_205;
      }

      *buf = 136446210;
      v123 = "nw_http1_get_http1_protocol";
      v77 = "%{public}s called with null handle->http1_connection, no backtrace";
      goto LABEL_204;
    }

    if (v99)
    {
      *buf = 136446466;
      v123 = "nw_http1_get_http1_protocol";
      v124 = 2082;
      *v125 = v84;
      v86 = "%{public}s called with null handle->http1_connection, dumping backtrace:%{public}s";
      goto LABEL_122;
    }

LABEL_123:
    free(v84);
    if (!v74)
    {
      goto LABEL_207;
    }

    goto LABEL_206;
  }

  v6 = *(handle + 1);
  if (!v6)
  {
    v90 = __nwlog_obj();
    *buf = 136446210;
    v123 = "nw_http1_get_http1_protocol";
    v74 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v90, 16, "%{public}s called with null handle->http1_stream", buf, 12);
    v120[0] = OS_LOG_TYPE_ERROR;
    type[0] = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v74, v120, type))
    {
      goto LABEL_205;
    }

    if (v120[0] == OS_LOG_TYPE_FAULT)
    {
      v75 = __nwlog_obj();
      v76 = v120[0];
      if (!os_log_type_enabled(v75, v120[0]))
      {
        goto LABEL_205;
      }

      *buf = 136446210;
      v123 = "nw_http1_get_http1_protocol";
      v77 = "%{public}s called with null handle->http1_stream";
      goto LABEL_204;
    }

    if (type[0] != OS_LOG_TYPE_INFO)
    {
      v75 = __nwlog_obj();
      v76 = v120[0];
      if (!os_log_type_enabled(v75, v120[0]))
      {
        goto LABEL_205;
      }

      *buf = 136446210;
      v123 = "nw_http1_get_http1_protocol";
      v77 = "%{public}s called with null handle->http1_stream, backtrace limit exceeded";
      goto LABEL_204;
    }

    v84 = __nw_create_backtrace_string();
    v75 = __nwlog_obj();
    v76 = v120[0];
    v98 = os_log_type_enabled(v75, v120[0]);
    if (!v84)
    {
      if (!v98)
      {
        goto LABEL_205;
      }

      *buf = 136446210;
      v123 = "nw_http1_get_http1_protocol";
      v77 = "%{public}s called with null handle->http1_stream, no backtrace";
      goto LABEL_204;
    }

    if (!v98)
    {
      goto LABEL_123;
    }

    *buf = 136446466;
    v123 = "nw_http1_get_http1_protocol";
    v124 = 2082;
    *v125 = v84;
    v86 = "%{public}s called with null handle->http1_stream, dumping backtrace:%{public}s";
LABEL_122:
    _os_log_impl(&dword_181A37000, v75, v76, v86, buf, 0x16u);
    goto LABEL_123;
  }

  v4 = (v6 + 248);
LABEL_10:
  if (!*v4)
  {
    goto LABEL_207;
  }

  if (!a2)
  {
    v79 = __nwlog_obj();
    *buf = 136446210;
    v123 = "nw_protocol_http1_output_finished";
    v54 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v79, 16, "%{public}s called with null other_protocol", buf, 12);
    v120[0] = OS_LOG_TYPE_ERROR;
    type[0] = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v54, v120, type))
    {
      goto LABEL_240;
    }

    if (v120[0] == OS_LOG_TYPE_FAULT)
    {
      v80 = __nwlog_obj();
      v81 = v120[0];
      if (!os_log_type_enabled(v80, v120[0]))
      {
        goto LABEL_240;
      }

      *buf = 136446210;
      v123 = "nw_protocol_http1_output_finished";
      v57 = "%{public}s called with null other_protocol";
      goto LABEL_237;
    }

    if (type[0] != OS_LOG_TYPE_INFO)
    {
      v80 = __nwlog_obj();
      v81 = v120[0];
      if (!os_log_type_enabled(v80, v120[0]))
      {
        goto LABEL_240;
      }

      *buf = 136446210;
      v123 = "nw_protocol_http1_output_finished";
      v57 = "%{public}s called with null other_protocol, backtrace limit exceeded";
      goto LABEL_237;
    }

    v60 = __nw_create_backtrace_string();
    v80 = __nwlog_obj();
    v81 = v120[0];
    v89 = os_log_type_enabled(v80, v120[0]);
    if (!v60)
    {
      if (!v89)
      {
        goto LABEL_240;
      }

      *buf = 136446210;
      v123 = "nw_protocol_http1_output_finished";
      v57 = "%{public}s called with null other_protocol, no backtrace";
      goto LABEL_237;
    }

    if (!v89)
    {
      goto LABEL_82;
    }

    *buf = 136446466;
    v123 = "nw_protocol_http1_output_finished";
    v124 = 2082;
    *v125 = v60;
    v62 = "%{public}s called with null other_protocol, dumping backtrace:%{public}s";
    goto LABEL_156;
  }

  if (v3 != 2)
  {
    if (v3 != 3)
    {
LABEL_225:
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      *buf = 136446210;
      v123 = "nw_protocol_http1_output_finished";
      LODWORD(v116) = 12;
      v54 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s called with null http1_stream", buf, v116);
      v120[0] = OS_LOG_TYPE_ERROR;
      type[0] = OS_LOG_TYPE_DEFAULT;
      if (!__nwlog_fault(v54, v120, type))
      {
        goto LABEL_240;
      }

      if (v120[0] == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v80 = gLogObj;
        v81 = v120[0];
        if (!os_log_type_enabled(gLogObj, v120[0]))
        {
          goto LABEL_240;
        }

        *buf = 136446210;
        v123 = "nw_protocol_http1_output_finished";
        v57 = "%{public}s called with null http1_stream";
        goto LABEL_237;
      }

      if (type[0] != OS_LOG_TYPE_INFO)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v80 = gLogObj;
        v81 = v120[0];
        if (!os_log_type_enabled(gLogObj, v120[0]))
        {
          goto LABEL_240;
        }

        *buf = 136446210;
        v123 = "nw_protocol_http1_output_finished";
        v57 = "%{public}s called with null http1_stream, backtrace limit exceeded";
        goto LABEL_237;
      }

      v112 = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v109 = gLogObj;
      v110 = v120[0];
      v113 = os_log_type_enabled(gLogObj, v120[0]);
      if (v112)
      {
        if (v113)
        {
          *buf = 136446466;
          v123 = "nw_protocol_http1_output_finished";
          v124 = 2082;
          *v125 = v112;
          _os_log_impl(&dword_181A37000, v109, v110, "%{public}s called with null http1_stream, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v112);
        if (!v54)
        {
          return;
        }

LABEL_241:
        free(v54);
        return;
      }

      if (!v113)
      {
        goto LABEL_240;
      }

      *buf = 136446210;
      v123 = "nw_protocol_http1_output_finished";
      v57 = "%{public}s called with null http1_stream, no backtrace";
LABEL_245:
      v70 = v109;
      v71 = v110;
      goto LABEL_238;
    }

    v7 = *(handle + 2);
    if (v7)
    {
      v8 = (v7 + 488);
      goto LABEL_17;
    }

    v92 = __nwlog_obj();
    *buf = 136446210;
    v123 = "nw_http1_get_stream_for_protocol";
    v93 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v92, 16, "%{public}s called with null handle->http1_connection", buf, 12);
    v120[0] = OS_LOG_TYPE_ERROR;
    type[0] = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault(v93, v120, type))
    {
      if (v120[0] == OS_LOG_TYPE_FAULT)
      {
        v94 = __nwlog_obj();
        v95 = v120[0];
        if (!os_log_type_enabled(v94, v120[0]))
        {
          goto LABEL_223;
        }

        *buf = 136446210;
        v123 = "nw_http1_get_stream_for_protocol";
        v96 = "%{public}s called with null handle->http1_connection";
        goto LABEL_222;
      }

      if (type[0] != OS_LOG_TYPE_INFO)
      {
        v94 = __nwlog_obj();
        v95 = v120[0];
        if (!os_log_type_enabled(v94, v120[0]))
        {
          goto LABEL_223;
        }

        *buf = 136446210;
        v123 = "nw_http1_get_stream_for_protocol";
        v96 = "%{public}s called with null handle->http1_connection, backtrace limit exceeded";
        goto LABEL_222;
      }

      v100 = __nw_create_backtrace_string();
      v94 = __nwlog_obj();
      v95 = v120[0];
      v101 = os_log_type_enabled(v94, v120[0]);
      if (v100)
      {
        if (v101)
        {
          *buf = 136446466;
          v123 = "nw_http1_get_stream_for_protocol";
          v124 = 2082;
          *v125 = v100;
          _os_log_impl(&dword_181A37000, v94, v95, "%{public}s called with null handle->http1_connection, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v100);
        goto LABEL_223;
      }

      if (v101)
      {
        *buf = 136446210;
        v123 = "nw_http1_get_stream_for_protocol";
        v96 = "%{public}s called with null handle->http1_connection, no backtrace";
LABEL_222:
        _os_log_impl(&dword_181A37000, v94, v95, v96, buf, 0xCu);
      }
    }

LABEL_223:
    if (v93)
    {
      free(v93);
    }

    goto LABEL_225;
  }

  v8 = (handle + 8);
LABEL_17:
  v9 = *v8;
  if (!*v8)
  {
    goto LABEL_225;
  }

  if (!*(v9 + 248))
  {
    v87 = __nwlog_obj();
    *buf = 136446210;
    v123 = "nw_protocol_http1_output_finished";
    v54 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v87, 16, "%{public}s called with null http1_stream->protocol_http1", buf, 12);
    v120[0] = OS_LOG_TYPE_ERROR;
    type[0] = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v54, v120, type))
    {
      goto LABEL_240;
    }

    if (v120[0] == OS_LOG_TYPE_FAULT)
    {
      v80 = __nwlog_obj();
      v81 = v120[0];
      if (!os_log_type_enabled(v80, v120[0]))
      {
        goto LABEL_240;
      }

      *buf = 136446210;
      v123 = "nw_protocol_http1_output_finished";
      v57 = "%{public}s called with null http1_stream->protocol_http1";
      goto LABEL_237;
    }

    if (type[0] != OS_LOG_TYPE_INFO)
    {
      v80 = __nwlog_obj();
      v81 = v120[0];
      if (!os_log_type_enabled(v80, v120[0]))
      {
        goto LABEL_240;
      }

      *buf = 136446210;
      v123 = "nw_protocol_http1_output_finished";
      v57 = "%{public}s called with null http1_stream->protocol_http1, backtrace limit exceeded";
      goto LABEL_237;
    }

    v60 = __nw_create_backtrace_string();
    v80 = __nwlog_obj();
    v81 = v120[0];
    v97 = os_log_type_enabled(v80, v120[0]);
    if (!v60)
    {
      if (!v97)
      {
        goto LABEL_240;
      }

      *buf = 136446210;
      v123 = "nw_protocol_http1_output_finished";
      v57 = "%{public}s called with null http1_stream->protocol_http1, no backtrace";
      goto LABEL_237;
    }

    if (!v97)
    {
      goto LABEL_82;
    }

    *buf = 136446466;
    v123 = "nw_protocol_http1_output_finished";
    v124 = 2082;
    *v125 = v60;
    v62 = "%{public}s called with null http1_stream->protocol_http1, dumping backtrace:%{public}s";
    goto LABEL_156;
  }

  v10 = *(v9 + 256);
  if (!v10 || (*(v9 + 428) & 0x200) == 0)
  {
    if ((*(v9 + 158) & 1) == 0)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v11 = gLogObj;
      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEBUG))
      {
        v12 = *(v9 + 256);
        v13 = *(*(v9 + 248) + 372);
        if (v12)
        {
          v14 = *(v12 + 860);
        }

        else
        {
          v14 = 0;
        }

        v20 = *(v9 + 424);
        v21 = (*(v9 + 428) >> 9) & 1;
        *buf = 136448002;
        v123 = "nw_protocol_http1_output_finished";
        v124 = 2082;
        *v125 = v9 + 74;
        *&v125[8] = 2080;
        *&v125[10] = " ";
        v126 = 1024;
        v127 = v13;
        v128 = 1024;
        v129 = v14;
        v130 = 1024;
        v131 = v20;
        v132 = 1024;
        *v133 = v21;
        *&v133[4] = 2048;
        *&v133[6] = v12;
        v22 = "%{public}s %{public}s%s<i%u:c%u:s%u> dropping output_finished, chunked: %d, current_connection: %p";
        v23 = v11;
        v24 = 66;
LABEL_34:
        _os_log_impl(&dword_181A37000, v23, OS_LOG_TYPE_DEBUG, v22, buf, v24);
        return;
      }
    }

    return;
  }

  if (*(v10 + 648))
  {
    if ((*(v10 + 158) & 1) == 0)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v15 = gLogObj;
      v16 = os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEBUG);
      v10 = *(v9 + 256);
      if (v16)
      {
        v17 = *(v10 + 488);
        v18 = *(*(v10 + 480) + 372);
        v19 = *(v10 + 860);
        if (v17)
        {
          LODWORD(v17) = *(v17 + 424);
        }

        *buf = 136447490;
        v123 = "nw_protocol_http1_output_finished";
        v124 = 2082;
        *v125 = v10 + 74;
        *&v125[8] = 2080;
        *&v125[10] = " ";
        v126 = 1024;
        v127 = v18;
        v128 = 1024;
        v129 = v19;
        v130 = 1024;
        v131 = v17;
        _os_log_impl(&dword_181A37000, v15, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> have pending output frames, deferring final chunk", buf, 0x32u);
        v10 = *(v9 + 256);
      }
    }

    *(v10 + 872) |= 0x8000u;
    return;
  }

  if ((*(v9 + 428) & 0x800) != 0)
  {
    if ((*(v9 + 158) & 1) == 0)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v29 = gLogObj;
      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEBUG))
      {
        v30 = *(v9 + 256);
        v31 = *(*(v9 + 248) + 372);
        if (v30)
        {
          LODWORD(v30) = *(v30 + 860);
        }

        v32 = *(v9 + 424);
        *buf = 136447490;
        v123 = "nw_protocol_http1_output_finished";
        v124 = 2082;
        *v125 = v9 + 74;
        *&v125[8] = 2080;
        *&v125[10] = " ";
        v126 = 1024;
        v127 = v31;
        v128 = 1024;
        v129 = v30;
        v130 = 1024;
        v131 = v32;
        v22 = "%{public}s %{public}s%s<i%u:c%u:s%u> dropping output_finished, outbound message already complete";
        v23 = v29;
        v24 = 50;
        goto LABEL_34;
      }
    }

    return;
  }

  if ((*(v9 + 158) & 1) == 0)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v25 = gLogObj;
    v26 = os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEBUG);
    v10 = *(v9 + 256);
    if (v26)
    {
      v27 = *(*(v9 + 248) + 372);
      if (v10)
      {
        v28 = *(v10 + 860);
      }

      else
      {
        v28 = 0;
      }

      v33 = *(v9 + 424);
      *buf = 136447490;
      v123 = "nw_protocol_http1_output_finished";
      v124 = 2082;
      *v125 = v9 + 74;
      *&v125[8] = 2080;
      *&v125[10] = " ";
      v126 = 1024;
      v127 = v27;
      v128 = 1024;
      v129 = v28;
      v130 = 1024;
      v131 = v33;
      _os_log_impl(&dword_181A37000, v25, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> Sending final chunk immediately, no pending output", buf, 0x32u);
      v10 = *(v9 + 256);
    }

    if (!v10)
    {
      v102 = __nwlog_obj();
      *buf = 136446210;
      v123 = "nw_http1_connection_send_final_chunk";
      v54 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v102, 16, "%{public}s called with null http1_connection", buf, 12);
      v120[0] = OS_LOG_TYPE_ERROR;
      type[0] = OS_LOG_TYPE_DEFAULT;
      if (!__nwlog_fault(v54, v120, type))
      {
        goto LABEL_240;
      }

      if (v120[0] == OS_LOG_TYPE_FAULT)
      {
        v80 = __nwlog_obj();
        v81 = v120[0];
        if (!os_log_type_enabled(v80, v120[0]))
        {
          goto LABEL_240;
        }

        *buf = 136446210;
        v123 = "nw_http1_connection_send_final_chunk";
        v57 = "%{public}s called with null http1_connection";
        goto LABEL_237;
      }

      if (type[0] != OS_LOG_TYPE_INFO)
      {
        v80 = __nwlog_obj();
        v81 = v120[0];
        if (!os_log_type_enabled(v80, v120[0]))
        {
          goto LABEL_240;
        }

        *buf = 136446210;
        v123 = "nw_http1_connection_send_final_chunk";
        v57 = "%{public}s called with null http1_connection, backtrace limit exceeded";
        goto LABEL_237;
      }

      v60 = __nw_create_backtrace_string();
      v80 = __nwlog_obj();
      v81 = v120[0];
      v114 = os_log_type_enabled(v80, v120[0]);
      if (!v60)
      {
        if (!v114)
        {
          goto LABEL_240;
        }

        *buf = 136446210;
        v123 = "nw_http1_connection_send_final_chunk";
        v57 = "%{public}s called with null http1_connection, no backtrace";
        goto LABEL_237;
      }

      if (!v114)
      {
        goto LABEL_82;
      }

      *buf = 136446466;
      v123 = "nw_http1_connection_send_final_chunk";
      v124 = 2082;
      *v125 = v60;
      v62 = "%{public}s called with null http1_connection, dumping backtrace:%{public}s";
LABEL_156:
      v63 = v80;
      v64 = v81;
      v65 = 22;
LABEL_81:
      _os_log_impl(&dword_181A37000, v63, v64, v62, buf, v65);
      goto LABEL_82;
    }
  }

  if ((*(v10 + 158) & 1) == 0 && gLogDatapath == 1)
  {
    v104 = __nwlog_obj();
    if (os_log_type_enabled(v104, OS_LOG_TYPE_DEBUG))
    {
      v105 = *(v10 + 488);
      v106 = *(*(v10 + 480) + 372);
      v107 = *(v10 + 860);
      if (v105)
      {
        LODWORD(v105) = *(v105 + 424);
      }

      *buf = 136447490;
      v123 = "nw_http1_connection_send_final_chunk";
      v124 = 2082;
      *v125 = v10 + 74;
      *&v125[8] = 2080;
      *&v125[10] = " ";
      v126 = 1024;
      v127 = v106;
      v128 = 1024;
      v129 = v107;
      v130 = 1024;
      v131 = v105;
      _os_log_impl(&dword_181A37000, v104, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> requesting new frame for final chunk", buf, 0x32u);
    }
  }

  v34 = *(v10 + 32);
  if (!v34)
  {
    v103 = __nwlog_obj();
    *buf = 136446210;
    v123 = "nw_http1_connection_send_final_chunk";
    v54 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v103, 16, "%{public}s called with null output_handler", buf, 12);
    v120[0] = OS_LOG_TYPE_ERROR;
    type[0] = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v54, v120, type))
    {
      goto LABEL_240;
    }

    if (v120[0] == OS_LOG_TYPE_FAULT)
    {
      v80 = __nwlog_obj();
      v81 = v120[0];
      if (!os_log_type_enabled(v80, v120[0]))
      {
        goto LABEL_240;
      }

      *buf = 136446210;
      v123 = "nw_http1_connection_send_final_chunk";
      v57 = "%{public}s called with null output_handler";
      goto LABEL_237;
    }

    if (type[0] == OS_LOG_TYPE_INFO)
    {
      v60 = __nw_create_backtrace_string();
      v80 = __nwlog_obj();
      v81 = v120[0];
      v115 = os_log_type_enabled(v80, v120[0]);
      if (v60)
      {
        if (v115)
        {
          *buf = 136446466;
          v123 = "nw_http1_connection_send_final_chunk";
          v124 = 2082;
          *v125 = v60;
          v62 = "%{public}s called with null output_handler, dumping backtrace:%{public}s";
          goto LABEL_156;
        }

LABEL_82:
        free(v60);
        if (!v54)
        {
          return;
        }

        goto LABEL_241;
      }

      if (v115)
      {
        *buf = 136446210;
        v123 = "nw_http1_connection_send_final_chunk";
        v57 = "%{public}s called with null output_handler, no backtrace";
        goto LABEL_237;
      }

LABEL_240:
      if (!v54)
      {
        return;
      }

      goto LABEL_241;
    }

    v80 = __nwlog_obj();
    v81 = v120[0];
    if (!os_log_type_enabled(v80, v120[0]))
    {
      goto LABEL_240;
    }

    *buf = 136446210;
    v123 = "nw_http1_connection_send_final_chunk";
    v57 = "%{public}s called with null output_handler, backtrace limit exceeded";
LABEL_237:
    v70 = v80;
    v71 = v81;
LABEL_238:
    v72 = 12;
    goto LABEL_239;
  }

  *v120 = 0;
  v121 = v120;
  output_frames = nw_protocol_get_output_frames(v34, v10, 5, 5, 1, v120);
  v36 = output_frames;
  v37 = *v120;
  if (*v120 && output_frames)
  {
    *type = 0;
    v38 = nw_frame_unclaimed_bytes(*v120, type);
    *v38 = 218762544;
    *(v38 + 4) = 10;
    if (nw_frame_claim(v37, v39, 5, 0))
    {
      nw_frame_collapse(v37);
      nw_frame_unclaim(v37, v40, 5u, 0);
      if (nw_protocol_finalize_output_frames(v34, v120))
      {
        *(*(v10 + 488) + 428) |= 0x800u;
        *(v10 + 872) |= 0x20u;
        nw_http_transaction_metadata_mark_outbound_message_end(*(*(v10 + 488) + 352));
        v41 = *(v10 + 488);
        if (*(v41 + 168) == 1 && *(v41 + 160) != *(v41 + 176))
        {
          if ((*(v41 + 158) & 1) == 0)
          {
            v42 = __nwlog_obj();
            v43 = os_log_type_enabled(v42, OS_LOG_TYPE_ERROR);
            v41 = *(v10 + 488);
            if (v43)
            {
              v44 = *(v41 + 256);
              if (v44)
              {
                LODWORD(v44) = *(v44 + 860);
              }

              v45 = *(*(v41 + 248) + 372);
              v46 = *(v41 + 424);
              if (*(v41 + 168) == 1)
              {
                v47 = *(v41 + 160);
              }

              else
              {
                v47 = -1;
              }

              v88 = *(v41 + 176);
              *buf = 136448002;
              v123 = "nw_http1_connection_send_final_chunk";
              v124 = 2082;
              *v125 = v41 + 74;
              *&v125[8] = 2080;
              *&v125[10] = " ";
              v126 = 1024;
              v127 = v45;
              v128 = 1024;
              v129 = v44;
              v130 = 1024;
              v131 = v46;
              v132 = 2048;
              *v133 = v47;
              *&v133[8] = 2048;
              *&v133[10] = v88;
              _os_log_impl(&dword_181A37000, v42, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u:c%u:s%u> Content length header %llu does not equal body size %llu", buf, 0x46u);
              v41 = *(v10 + 488);
            }
          }

          nw_protocol_error(*(v41 + 48), v41);
          nw_protocol_disconnected(*(*(v10 + 488) + 48), *(v10 + 488));
        }
      }

      return;
    }

    v53 = __nwlog_obj();
    *buf = 136446466;
    v123 = "nw_http1_connection_send_final_chunk";
    v124 = 1024;
    *v125 = 5;
    v54 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v53, 16, "%{public}s claiming frame with %u bytes failed", buf, 18);
    v119 = OS_LOG_TYPE_ERROR;
    v117 = 0;
    if (!__nwlog_fault(v54, &v119, &v117))
    {
      goto LABEL_240;
    }

    if (v119 == OS_LOG_TYPE_FAULT)
    {
      v55 = __nwlog_obj();
      v56 = v119;
      if (!os_log_type_enabled(v55, v119))
      {
        goto LABEL_240;
      }

      *buf = 136446466;
      v123 = "nw_http1_connection_send_final_chunk";
      v124 = 1024;
      *v125 = 5;
      v57 = "%{public}s claiming frame with %u bytes failed";
LABEL_100:
      v70 = v55;
      v71 = v56;
      v72 = 18;
LABEL_239:
      _os_log_impl(&dword_181A37000, v70, v71, v57, buf, v72);
      goto LABEL_240;
    }

    if (v117 != 1)
    {
      v55 = __nwlog_obj();
      v56 = v119;
      if (!os_log_type_enabled(v55, v119))
      {
        goto LABEL_240;
      }

      *buf = 136446466;
      v123 = "nw_http1_connection_send_final_chunk";
      v124 = 1024;
      *v125 = 5;
      v57 = "%{public}s claiming frame with %u bytes failed, backtrace limit exceeded";
      goto LABEL_100;
    }

    v60 = __nw_create_backtrace_string();
    v55 = __nwlog_obj();
    v56 = v119;
    v61 = os_log_type_enabled(v55, v119);
    if (!v60)
    {
      if (!v61)
      {
        goto LABEL_240;
      }

      *buf = 136446466;
      v123 = "nw_http1_connection_send_final_chunk";
      v124 = 1024;
      *v125 = 5;
      v57 = "%{public}s claiming frame with %u bytes failed, no backtrace";
      goto LABEL_100;
    }

    if (!v61)
    {
      goto LABEL_82;
    }

    *buf = 136446722;
    v123 = "nw_http1_connection_send_final_chunk";
    v124 = 1024;
    *v125 = 5;
    *&v125[4] = 2082;
    *&v125[6] = v60;
    v62 = "%{public}s claiming frame with %u bytes failed, dumping backtrace:%{public}s";
    v63 = v55;
    v64 = v56;
    v65 = 28;
    goto LABEL_81;
  }

  if (output_frames)
  {
    v48 = __nwlog_obj();
    *buf = 136446466;
    v123 = "nw_http1_connection_send_final_chunk";
    v124 = 1024;
    *v125 = v36;
    v49 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v48, 16, "%{public}s output handler reported %u frames to write, but array is empty", buf, 18);
    type[0] = OS_LOG_TYPE_ERROR;
    v119 = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v49, type, &v119))
    {
      goto LABEL_91;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v50 = __nwlog_obj();
      v51 = type[0];
      if (!os_log_type_enabled(v50, type[0]))
      {
        goto LABEL_91;
      }

      *buf = 136446466;
      v123 = "nw_http1_connection_send_final_chunk";
      v124 = 1024;
      *v125 = v36;
      v52 = "%{public}s output handler reported %u frames to write, but array is empty";
    }

    else if (v119 == OS_LOG_TYPE_INFO)
    {
      v58 = __nw_create_backtrace_string();
      v50 = __nwlog_obj();
      v51 = type[0];
      v59 = os_log_type_enabled(v50, type[0]);
      if (v58)
      {
        if (v59)
        {
          *buf = 136446722;
          v123 = "nw_http1_connection_send_final_chunk";
          v124 = 1024;
          *v125 = v36;
          *&v125[4] = 2082;
          *&v125[6] = v58;
          _os_log_impl(&dword_181A37000, v50, v51, "%{public}s output handler reported %u frames to write, but array is empty, dumping backtrace:%{public}s", buf, 0x1Cu);
        }

        free(v58);
        goto LABEL_91;
      }

      if (!v59)
      {
LABEL_91:
        if (v49)
        {
          free(v49);
        }

        goto LABEL_93;
      }

      *buf = 136446466;
      v123 = "nw_http1_connection_send_final_chunk";
      v124 = 1024;
      *v125 = v36;
      v52 = "%{public}s output handler reported %u frames to write, but array is empty, no backtrace";
    }

    else
    {
      v50 = __nwlog_obj();
      v51 = type[0];
      if (!os_log_type_enabled(v50, type[0]))
      {
        goto LABEL_91;
      }

      *buf = 136446466;
      v123 = "nw_http1_connection_send_final_chunk";
      v124 = 1024;
      *v125 = v36;
      v52 = "%{public}s output handler reported %u frames to write, but array is empty, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v50, v51, v52, buf, 0x12u);
    goto LABEL_91;
  }

LABEL_93:
  if ((*(v10 + 158) & 1) == 0)
  {
    v66 = __nwlog_obj();
    if (os_log_type_enabled(v66, OS_LOG_TYPE_DEBUG))
    {
      v67 = *(v10 + 488);
      v68 = *(*(v10 + 480) + 372);
      v69 = *(v10 + 860);
      if (v67)
      {
        LODWORD(v67) = *(v67 + 424);
      }

      *buf = 136447746;
      v123 = "nw_http1_connection_send_final_chunk";
      v124 = 2082;
      *v125 = v10 + 74;
      *&v125[8] = 2080;
      *&v125[10] = " ";
      v126 = 1024;
      v127 = v68;
      v128 = 1024;
      v129 = v69;
      v130 = 1024;
      v131 = v67;
      v132 = 1024;
      *v133 = 5;
      v22 = "%{public}s %{public}s%s<i%u:c%u:s%u> output handler refused frame request for frames of length %u";
      v23 = v66;
      v24 = 56;
      goto LABEL_34;
    }
  }
}

void nw_protocol_http1_input_finished(nw_protocol *a1, nw_protocol *a2)
{
  v280 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v147 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http1_get_http1_protocol";
    v148 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v147, 16, "%{public}s called with null protocol", buf, 12);
    v279[0] = 16;
    v271[0] = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v148, v279, v271))
    {
      goto LABEL_405;
    }

    if (v279[0] == 17)
    {
      v149 = __nwlog_obj();
      v150 = v279[0];
      if (!os_log_type_enabled(v149, v279[0]))
      {
        goto LABEL_405;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http1_get_http1_protocol";
      v151 = "%{public}s called with null protocol";
    }

    else
    {
      if (v271[0] == OS_LOG_TYPE_INFO)
      {
        backtrace_string = __nw_create_backtrace_string();
        v149 = __nwlog_obj();
        v150 = v279[0];
        v160 = os_log_type_enabled(v149, v279[0]);
        if (!backtrace_string)
        {
          if (!v160)
          {
            goto LABEL_405;
          }

          *buf = 136446210;
          *&buf[4] = "nw_http1_get_http1_protocol";
          v151 = "%{public}s called with null protocol, no backtrace";
          goto LABEL_404;
        }

        if (v160)
        {
          *buf = 136446466;
          *&buf[4] = "nw_http1_get_http1_protocol";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v149, v150, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_405;
      }

      v149 = __nwlog_obj();
      v150 = v279[0];
      if (!os_log_type_enabled(v149, v279[0]))
      {
        goto LABEL_405;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http1_get_http1_protocol";
      v151 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

    goto LABEL_404;
  }

  handle = a1->handle;
  if (!handle)
  {
    v152 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http1_get_http1_protocol";
    v148 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v152, 16, "%{public}s called with null handle", buf, 12);
    v279[0] = 16;
    v271[0] = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v148, v279, v271))
    {
      goto LABEL_405;
    }

    if (v279[0] != 17)
    {
      if (v271[0] != OS_LOG_TYPE_INFO)
      {
        v149 = __nwlog_obj();
        v150 = v279[0];
        if (!os_log_type_enabled(v149, v279[0]))
        {
          goto LABEL_405;
        }

        *buf = 136446210;
        *&buf[4] = "nw_http1_get_http1_protocol";
        v151 = "%{public}s called with null handle, backtrace limit exceeded";
        goto LABEL_404;
      }

      v161 = __nw_create_backtrace_string();
      v149 = __nwlog_obj();
      v150 = v279[0];
      v162 = os_log_type_enabled(v149, v279[0]);
      if (!v161)
      {
        if (!v162)
        {
          goto LABEL_405;
        }

        *buf = 136446210;
        *&buf[4] = "nw_http1_get_http1_protocol";
        v151 = "%{public}s called with null handle, no backtrace";
        goto LABEL_404;
      }

      if (!v162)
      {
        goto LABEL_281;
      }

      *buf = 136446466;
      *&buf[4] = "nw_http1_get_http1_protocol";
      *&buf[12] = 2082;
      *&buf[14] = v161;
      v163 = "%{public}s called with null handle, dumping backtrace:%{public}s";
      goto LABEL_280;
    }

    v149 = __nwlog_obj();
    v150 = v279[0];
    if (!os_log_type_enabled(v149, v279[0]))
    {
      goto LABEL_405;
    }

    *buf = 136446210;
    *&buf[4] = "nw_http1_get_http1_protocol";
    v151 = "%{public}s called with null handle";
LABEL_404:
    _os_log_impl(&dword_181A37000, v149, v150, v151, buf, 0xCu);
    goto LABEL_405;
  }

  v3 = *(handle + 6);
  v4 = a1->handle;
  if (v3 == 1)
  {
    goto LABEL_10;
  }

  if (v3 != 2)
  {
    if (v3 != 3)
    {
      goto LABEL_407;
    }

    v5 = *(handle + 2);
    if (v5)
    {
      v4 = (v5 + 480);
      goto LABEL_10;
    }

    v172 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http1_get_http1_protocol";
    v148 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v172, 16, "%{public}s called with null handle->http1_connection", buf, 12);
    v279[0] = 16;
    v271[0] = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault(v148, v279, v271))
    {
      if (v279[0] == 17)
      {
        v149 = __nwlog_obj();
        v150 = v279[0];
        if (!os_log_type_enabled(v149, v279[0]))
        {
          goto LABEL_405;
        }

        *buf = 136446210;
        *&buf[4] = "nw_http1_get_http1_protocol";
        v151 = "%{public}s called with null handle->http1_connection";
        goto LABEL_404;
      }

      if (v271[0] != OS_LOG_TYPE_INFO)
      {
        v149 = __nwlog_obj();
        v150 = v279[0];
        if (!os_log_type_enabled(v149, v279[0]))
        {
          goto LABEL_405;
        }

        *buf = 136446210;
        *&buf[4] = "nw_http1_get_http1_protocol";
        v151 = "%{public}s called with null handle->http1_connection, backtrace limit exceeded";
        goto LABEL_404;
      }

      v161 = __nw_create_backtrace_string();
      v149 = __nwlog_obj();
      v150 = v279[0];
      v194 = os_log_type_enabled(v149, v279[0]);
      if (!v161)
      {
        if (!v194)
        {
          goto LABEL_405;
        }

        *buf = 136446210;
        *&buf[4] = "nw_http1_get_http1_protocol";
        v151 = "%{public}s called with null handle->http1_connection, no backtrace";
        goto LABEL_404;
      }

      if (v194)
      {
        *buf = 136446466;
        *&buf[4] = "nw_http1_get_http1_protocol";
        *&buf[12] = 2082;
        *&buf[14] = v161;
        v163 = "%{public}s called with null handle->http1_connection, dumping backtrace:%{public}s";
        goto LABEL_280;
      }

LABEL_281:
      free(v161);
      if (!v148)
      {
LABEL_407:
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        *buf = 136446210;
        *&buf[4] = "nw_protocol_http1_input_finished";
        LODWORD(v267) = 12;
        v154 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s called with null http1", buf, v267);
        v279[0] = 16;
        v271[0] = OS_LOG_TYPE_DEFAULT;
        if (!__nwlog_fault(v154, v279, v271))
        {
          goto LABEL_439;
        }

        if (v279[0] == 17)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v155 = gLogObj;
          v156 = v279[0];
          if (!os_log_type_enabled(gLogObj, v279[0]))
          {
            goto LABEL_439;
          }

          *buf = 136446210;
          *&buf[4] = "nw_protocol_http1_input_finished";
          v157 = "%{public}s called with null http1";
        }

        else
        {
          if (v271[0] == OS_LOG_TYPE_INFO)
          {
            v217 = __nw_create_backtrace_string();
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v218 = gLogObj;
            v219 = v279[0];
            v220 = os_log_type_enabled(gLogObj, v279[0]);
            if (!v217)
            {
              if (!v220)
              {
                goto LABEL_439;
              }

              *buf = 136446210;
              *&buf[4] = "nw_protocol_http1_input_finished";
              v157 = "%{public}s called with null http1, no backtrace";
              goto LABEL_444;
            }

            if (v220)
            {
              *buf = 136446466;
              *&buf[4] = "nw_protocol_http1_input_finished";
              *&buf[12] = 2082;
              *&buf[14] = v217;
              _os_log_impl(&dword_181A37000, v218, v219, "%{public}s called with null http1, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(v217);
LABEL_439:
            if (!v154)
            {
              return;
            }

            goto LABEL_440;
          }

          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v155 = gLogObj;
          v156 = v279[0];
          if (!os_log_type_enabled(gLogObj, v279[0]))
          {
            goto LABEL_439;
          }

          *buf = 136446210;
          *&buf[4] = "nw_protocol_http1_input_finished";
          v157 = "%{public}s called with null http1, backtrace limit exceeded";
        }

LABEL_437:
        v223 = v155;
        v224 = v156;
LABEL_438:
        _os_log_impl(&dword_181A37000, v223, v224, v157, buf, 0xCu);
        goto LABEL_439;
      }

LABEL_406:
      free(v148);
      goto LABEL_407;
    }

LABEL_405:
    if (!v148)
    {
      goto LABEL_407;
    }

    goto LABEL_406;
  }

  v6 = *(handle + 1);
  if (!v6)
  {
    v171 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http1_get_http1_protocol";
    v148 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v171, 16, "%{public}s called with null handle->http1_stream", buf, 12);
    v279[0] = 16;
    v271[0] = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v148, v279, v271))
    {
      goto LABEL_405;
    }

    if (v279[0] == 17)
    {
      v149 = __nwlog_obj();
      v150 = v279[0];
      if (!os_log_type_enabled(v149, v279[0]))
      {
        goto LABEL_405;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http1_get_http1_protocol";
      v151 = "%{public}s called with null handle->http1_stream";
      goto LABEL_404;
    }

    if (v271[0] != OS_LOG_TYPE_INFO)
    {
      v149 = __nwlog_obj();
      v150 = v279[0];
      if (!os_log_type_enabled(v149, v279[0]))
      {
        goto LABEL_405;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http1_get_http1_protocol";
      v151 = "%{public}s called with null handle->http1_stream, backtrace limit exceeded";
      goto LABEL_404;
    }

    v161 = __nw_create_backtrace_string();
    v149 = __nwlog_obj();
    v150 = v279[0];
    v193 = os_log_type_enabled(v149, v279[0]);
    if (!v161)
    {
      if (!v193)
      {
        goto LABEL_405;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http1_get_http1_protocol";
      v151 = "%{public}s called with null handle->http1_stream, no backtrace";
      goto LABEL_404;
    }

    if (!v193)
    {
      goto LABEL_281;
    }

    *buf = 136446466;
    *&buf[4] = "nw_http1_get_http1_protocol";
    *&buf[12] = 2082;
    *&buf[14] = v161;
    v163 = "%{public}s called with null handle->http1_stream, dumping backtrace:%{public}s";
LABEL_280:
    _os_log_impl(&dword_181A37000, v149, v150, v163, buf, 0x16u);
    goto LABEL_281;
  }

  v4 = (v6 + 248);
LABEL_10:
  if (!*v4)
  {
    goto LABEL_407;
  }

  if (!a2)
  {
    v153 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_http1_input_finished";
    v154 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v153, 16, "%{public}s called with null other_protocol", buf, 12);
    v279[0] = 16;
    v271[0] = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v154, v279, v271))
    {
      goto LABEL_439;
    }

    if (v279[0] == 17)
    {
      v155 = __nwlog_obj();
      v156 = v279[0];
      if (!os_log_type_enabled(v155, v279[0]))
      {
        goto LABEL_439;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_http1_input_finished";
      v157 = "%{public}s called with null other_protocol";
    }

    else if (v271[0] == OS_LOG_TYPE_INFO)
    {
      v164 = __nw_create_backtrace_string();
      v155 = __nwlog_obj();
      v156 = v279[0];
      v165 = os_log_type_enabled(v155, v279[0]);
      if (v164)
      {
        if (v165)
        {
          *buf = 136446466;
          *&buf[4] = "nw_protocol_http1_input_finished";
          *&buf[12] = 2082;
          *&buf[14] = v164;
          _os_log_impl(&dword_181A37000, v155, v156, "%{public}s called with null other_protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v164);
        if (!v154)
        {
          return;
        }

LABEL_440:
        free(v154);
        return;
      }

      if (!v165)
      {
        goto LABEL_439;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_http1_input_finished";
      v157 = "%{public}s called with null other_protocol, no backtrace";
    }

    else
    {
      v155 = __nwlog_obj();
      v156 = v279[0];
      if (!os_log_type_enabled(v155, v279[0]))
      {
        goto LABEL_439;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_http1_input_finished";
      v157 = "%{public}s called with null other_protocol, backtrace limit exceeded";
    }

    goto LABEL_437;
  }

  if (v3 == 2)
  {
    v8 = *(handle + 1);
    if (v8)
    {
      v7 = (v8 + 256);
      goto LABEL_17;
    }

    v173 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http1_get_connection_for_protocol";
    v174 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v173, 16, "%{public}s called with null handle->http1_stream", buf, 12);
    v279[0] = 16;
    v271[0] = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault(v174, v279, v271))
    {
      if (v279[0] == 17)
      {
        v175 = __nwlog_obj();
        v176 = v279[0];
        if (!os_log_type_enabled(v175, v279[0]))
        {
          goto LABEL_423;
        }

        *buf = 136446210;
        *&buf[4] = "nw_http1_get_connection_for_protocol";
        v177 = "%{public}s called with null handle->http1_stream";
        goto LABEL_422;
      }

      if (v271[0] != OS_LOG_TYPE_INFO)
      {
        v175 = __nwlog_obj();
        v176 = v279[0];
        if (!os_log_type_enabled(v175, v279[0]))
        {
          goto LABEL_423;
        }

        *buf = 136446210;
        *&buf[4] = "nw_http1_get_connection_for_protocol";
        v177 = "%{public}s called with null handle->http1_stream, backtrace limit exceeded";
        goto LABEL_422;
      }

      v196 = __nw_create_backtrace_string();
      v175 = __nwlog_obj();
      v176 = v279[0];
      v197 = os_log_type_enabled(v175, v279[0]);
      if (v196)
      {
        if (v197)
        {
          *buf = 136446466;
          *&buf[4] = "nw_http1_get_connection_for_protocol";
          *&buf[12] = 2082;
          *&buf[14] = v196;
          _os_log_impl(&dword_181A37000, v175, v176, "%{public}s called with null handle->http1_stream, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v196);
        goto LABEL_423;
      }

      if (v197)
      {
        *buf = 136446210;
        *&buf[4] = "nw_http1_get_connection_for_protocol";
        v177 = "%{public}s called with null handle->http1_stream, no backtrace";
LABEL_422:
        _os_log_impl(&dword_181A37000, v175, v176, v177, buf, 0xCu);
      }
    }

LABEL_423:
    if (v174)
    {
      free(v174);
    }

LABEL_425:
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_http1_input_finished";
    LODWORD(v267) = 12;
    v154 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s called with null http1_connection", buf, v267);
    v279[0] = 16;
    v271[0] = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v154, v279, v271))
    {
      goto LABEL_439;
    }

    if (v279[0] == 17)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v155 = gLogObj;
      v156 = v279[0];
      if (!os_log_type_enabled(gLogObj, v279[0]))
      {
        goto LABEL_439;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_http1_input_finished";
      v157 = "%{public}s called with null http1_connection";
      goto LABEL_437;
    }

    if (v271[0] != OS_LOG_TYPE_INFO)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v155 = gLogObj;
      v156 = v279[0];
      if (!os_log_type_enabled(gLogObj, v279[0]))
      {
        goto LABEL_439;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_http1_input_finished";
      v157 = "%{public}s called with null http1_connection, backtrace limit exceeded";
      goto LABEL_437;
    }

    v221 = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v218 = gLogObj;
    v219 = v279[0];
    v222 = os_log_type_enabled(gLogObj, v279[0]);
    if (v221)
    {
      if (v222)
      {
        *buf = 136446466;
        *&buf[4] = "nw_protocol_http1_input_finished";
        *&buf[12] = 2082;
        *&buf[14] = v221;
        _os_log_impl(&dword_181A37000, v218, v219, "%{public}s called with null http1_connection, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v221);
      if (!v154)
      {
        return;
      }

      goto LABEL_440;
    }

    if (v222)
    {
      *buf = 136446210;
      *&buf[4] = "nw_protocol_http1_input_finished";
      v157 = "%{public}s called with null http1_connection, no backtrace";
LABEL_444:
      v223 = v218;
      v224 = v219;
      goto LABEL_438;
    }

    goto LABEL_439;
  }

  if (v3 != 3)
  {
    goto LABEL_425;
  }

  v7 = (handle + 16);
LABEL_17:
  v9 = *v7;
  if (!*v7)
  {
    goto LABEL_425;
  }

  if ((*(v9 + 872) & 0x2000) != 0)
  {
    if (*(v9 + 158))
    {
      goto LABEL_97;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v47 = gLogObj;
    if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
    {
      goto LABEL_97;
    }

    v48 = *(v9 + 488);
    v49 = *(*(v9 + 480) + 372);
    v50 = *(v9 + 860);
    if (v48)
    {
      LODWORD(v48) = *(v48 + 424);
    }

    *buf = 136447490;
    *&buf[4] = "nw_http1_connection_finish_input";
    *&buf[12] = 2082;
    *&buf[14] = v9 + 74;
    *&buf[22] = 2080;
    *&buf[24] = " ";
    *&buf[32] = 1024;
    *&buf[34] = v49;
    *&buf[38] = 1024;
    *&buf[40] = v50;
    LOWORD(v276) = 1024;
    *(&v276 + 2) = v48;
    v51 = "%{public}s %{public}s%s<i%u:c%u:s%u> input already finished, returning";
LABEL_96:
    _os_log_impl(&dword_181A37000, v47, OS_LOG_TYPE_INFO, v51, buf, 0x32u);
    goto LABEL_97;
  }

  *(v9 + 872) |= 0x2000u;
  if ((*(v9 + 874) & 4) != 0)
  {
    if (*(v9 + 158))
    {
      goto LABEL_97;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v47 = gLogObj;
    if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
    {
      goto LABEL_97;
    }

    v52 = *(v9 + 488);
    v53 = *(*(v9 + 480) + 372);
    v54 = *(v9 + 860);
    if (v52)
    {
      LODWORD(v52) = *(v52 + 424);
    }

    *buf = 136447490;
    *&buf[4] = "nw_http1_connection_finish_input";
    *&buf[12] = 2082;
    *&buf[14] = v9 + 74;
    *&buf[22] = 2080;
    *&buf[24] = " ";
    *&buf[32] = 1024;
    *&buf[34] = v53;
    *&buf[38] = 1024;
    *&buf[40] = v54;
    LOWORD(v276) = 1024;
    *(&v276 + 2) = v52;
    v51 = "%{public}s %{public}s%s<i%u:c%u:s%u> already getting input frames, returning";
    goto LABEL_96;
  }

  v10 = 0;
  *v271 = 0;
  v272 = v271;
  do
  {
    input_frames = nw_protocol_get_input_frames(*(v9 + 32), v9, 1, 0xFFFFFFFFLL, 0xFFFFFFFFLL, v271);
    v12 = *v271;
    if (!*v271)
    {
      goto LABEL_23;
    }

    v270 = v10;
    if (gLogDatapath == 1)
    {
      v45 = __nwlog_obj();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136447746;
        *&buf[4] = "nw_http1_move_frame_array";
        *&buf[12] = 2048;
        *&buf[14] = v12;
        *&buf[22] = 2048;
        *&buf[24] = v271;
        *&buf[32] = 2048;
        *&buf[34] = v9 + 616;
        *&buf[42] = 1024;
        LODWORD(v276) = 1;
        WORD2(v276) = 1024;
        *(&v276 + 6) = 1;
        WORD5(v276) = 1024;
        HIDWORD(v276) = 1;
        _os_log_impl(&dword_181A37000, v45, OS_LOG_TYPE_DEBUG, "%{public}s called: initial frame %p, source %p, destination %p, temp %u, forwards %u, append %u", buf, 0x3Cu);
      }
    }

    v13 = 0;
    *v279 = 0;
    *&v279[8] = v279;
    do
    {
      v14 = v12;
      v15 = v12 + 32;
      v12 = *(v12 + 32);
      if (!v12 && !*(v14 + 40))
      {
        v12 = 0;
      }

      if (gLogDatapath == 1)
      {
        v20 = __nwlog_obj();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          v21 = *(v14 + 52);
          if (v21)
          {
            v21 -= *(v14 + 56) + *(v14 + 60);
          }

          if (v12)
          {
            v22 = *(v12 + 52);
            if (v22)
            {
              v22 -= *(v12 + 56) + *(v12 + 60);
            }
          }

          else
          {
            v22 = 0;
          }

          *buf = 136447234;
          *&buf[4] = "nw_http1_move_frame_array";
          *&buf[12] = 2048;
          *&buf[14] = v14;
          *&buf[22] = 1024;
          *&buf[24] = v21;
          *&buf[28] = 2048;
          *&buf[30] = v12;
          *&buf[38] = 1024;
          *&buf[40] = v22;
          _os_log_impl(&dword_181A37000, v20, OS_LOG_TYPE_DEBUG, "%{public}s current frame: (%p, %u bytes), next frame: (%p, %u bytes)", buf, 0x2Cu);
        }
      }

      v16 = *(v14 + 32);
      v17 = *(v14 + 40);
      v18 = (v16 + 40);
      if (!v16)
      {
        v18 = &v272;
      }

      *v18 = v17;
      *v17 = v16;
      v19 = *&v279[8];
      *(v14 + 32) = 0;
      *(v14 + 40) = v19;
      *v19 = v14;
      *&v279[8] = v15;
      ++v13;
    }

    while (v12);
    if (v13)
    {
      if (gLogDatapath == 1)
      {
        v46 = __nwlog_obj();
        if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136446466;
          *&buf[4] = "nw_http1_move_frame_array";
          *&buf[12] = 1024;
          *&buf[14] = v13;
          _os_log_impl(&dword_181A37000, v46, OS_LOG_TYPE_DEBUG, "%{public}s moving %u frames from temp array to destination array", buf, 0x12u);
        }
      }

      v23 = *v279;
      v24 = v13;
      if (!*v279)
      {
        goto LABEL_64;
      }

      v24 = v13;
      do
      {
        v25 = v23;
        v26 = (v23 + 32);
        v23 = *(v23 + 32);
        if (!v23 && !*(v25 + 40))
        {
          v23 = 0;
        }

        if (gLogDatapath == 1)
        {
          log = __nwlog_obj();
          if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
          {
            v31 = *(v25 + 52);
            if (v31)
            {
              v31 -= *(v25 + 56) + *(v25 + 60);
            }

            if (v23)
            {
              v32 = *(v23 + 52);
              if (v32)
              {
                v32 -= *(v23 + 56) + *(v23 + 60);
              }
            }

            else
            {
              v32 = 0;
            }

            *buf = 136447234;
            *&buf[4] = "nw_http1_move_frame_array";
            *&buf[12] = 2048;
            *&buf[14] = v25;
            *&buf[22] = 1024;
            *&buf[24] = v31;
            *&buf[28] = 2048;
            *&buf[30] = v23;
            *&buf[38] = 1024;
            *&buf[40] = v32;
            _os_log_impl(&dword_181A37000, log, OS_LOG_TYPE_DEBUG, "%{public}s current frame: (%p, %u bytes), next frame: (%p, %u bytes)", buf, 0x2Cu);
          }
        }

        v27 = *(v25 + 32);
        v28 = *(v25 + 40);
        v29 = (v27 + 40);
        if (!v27)
        {
          v29 = &v279[8];
        }

        *v29 = v28;
        *v28 = v27;
        *v26 = 0;
        v26[1] = 0;
        v30 = *(v9 + 624);
        *(v25 + 40) = v30;
        *v30 = v25;
        *(v9 + 624) = v26;
        --v24;
      }

      while (v23);
      if (v24)
      {
LABEL_64:
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        *buf = 136446466;
        *&buf[4] = "nw_http1_move_frame_array";
        *&buf[12] = 1024;
        *&buf[14] = v24;
        LODWORD(v267) = 18;
        v33 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s failed to deliver all temp frames, remaining %u frames", buf, v267);
        type = OS_LOG_TYPE_ERROR;
        v273 = 0;
        if (!__nwlog_fault(v33, &type, &v273))
        {
          goto LABEL_78;
        }

        if (type == OS_LOG_TYPE_FAULT)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v34 = gLogObj;
          v35 = type;
          if (!os_log_type_enabled(gLogObj, type))
          {
            goto LABEL_78;
          }

          *buf = 136446466;
          *&buf[4] = "nw_http1_move_frame_array";
          *&buf[12] = 1024;
          *&buf[14] = v24;
          v36 = v34;
          v37 = v35;
          v38 = "%{public}s failed to deliver all temp frames, remaining %u frames";
        }

        else if (v273 == 1)
        {
          v39 = __nw_create_backtrace_string();
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v40 = type;
          loga = gLogObj;
          v41 = os_log_type_enabled(gLogObj, type);
          if (v39)
          {
            if (v41)
            {
              *buf = 136446722;
              *&buf[4] = "nw_http1_move_frame_array";
              *&buf[12] = 1024;
              *&buf[14] = v24;
              *&buf[18] = 2082;
              *&buf[20] = v39;
              _os_log_impl(&dword_181A37000, loga, v40, "%{public}s failed to deliver all temp frames, remaining %u frames, dumping backtrace:%{public}s", buf, 0x1Cu);
            }

            free(v39);
            goto LABEL_78;
          }

          if (!v41)
          {
LABEL_78:
            if (v33)
            {
              free(v33);
            }

            goto LABEL_21;
          }

          *buf = 136446466;
          *&buf[4] = "nw_http1_move_frame_array";
          *&buf[12] = 1024;
          *&buf[14] = v24;
          v36 = loga;
          v37 = v40;
          v38 = "%{public}s failed to deliver all temp frames, remaining %u frames, no backtrace";
        }

        else
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v42 = gLogObj;
          v43 = type;
          if (!os_log_type_enabled(gLogObj, type))
          {
            goto LABEL_78;
          }

          *buf = 136446466;
          *&buf[4] = "nw_http1_move_frame_array";
          *&buf[12] = 1024;
          *&buf[14] = v24;
          v36 = v42;
          v37 = v43;
          v38 = "%{public}s failed to deliver all temp frames, remaining %u frames, backtrace limit exceeded";
        }

        _os_log_impl(&dword_181A37000, v36, v37, v38, buf, 0x12u);
        goto LABEL_78;
      }
    }

LABEL_21:
    if (gLogDatapath == 1)
    {
      v44 = __nwlog_obj();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446978;
        *&buf[4] = "nw_http1_move_frame_array";
        *&buf[12] = 1024;
        *&buf[14] = v13;
        *&buf[18] = 2048;
        *&buf[20] = v271;
        *&buf[28] = 2048;
        *&buf[30] = v9 + 616;
        _os_log_impl(&dword_181A37000, v44, OS_LOG_TYPE_DEBUG, "%{public}s moved %u frames from %p to %p", buf, 0x26u);
      }
    }

    v10 = v270;
LABEL_23:
    v10 += input_frames;
  }

  while (input_frames);
  if (gLogDatapath == 1)
  {
    v195 = __nwlog_obj();
    if (os_log_type_enabled(v195, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446210;
      *&buf[4] = "nw_protocol_finalize_temp_frame_array";
      _os_log_impl(&dword_181A37000, v195, OS_LOG_TYPE_DEBUG, "%{public}s called", buf, 0xCu);
    }
  }

  v64 = *v271;
  if (*v271)
  {
    *(*v271 + 40) = v279;
    *v279 = v64;
    *&v279[8] = v272;
    *v271 = 0;
    v272 = v271;
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 0x40000000;
    *&buf[16] = ___ZL25__nw_frame_array_finalizeP16nw_frame_array_sbb_block_invoke;
    *&buf[24] = &__block_descriptor_tmp_21_49595;
    buf[32] = 0;
    do
    {
      v65 = *v279;
      if (!*v279)
      {
        break;
      }

      v66 = *(*v279 + 32);
      v67 = *(*v279 + 40);
      v68 = (v66 + 40);
      if (!v66)
      {
        v68 = &v279[8];
      }

      *v68 = v67;
      *v67 = v66;
      *(v65 + 32) = 0;
      *(v65 + 40) = 0;
    }

    while (((*&buf[16])(buf) & 1) != 0);
  }

  v69 = *(v9 + 872);
  if ((v69 & 0x6000) == 0x2000 && !*(v9 + 616))
  {
    *(v9 + 872) = v69 | 0x4000;
    if (*(v9 + 488))
    {
      if (*(v9 + 868) && llhttp_message_needs_eof(v9 + 200))
      {
        if ((v69 & 4) == 0)
        {
          v100 = 5;
          if (*(v9 + 158))
          {
            goto LABEL_122;
          }

          goto LABEL_199;
        }

LABEL_356:
        if ((*(v9 + 158) & 1) == 0 && gLogDatapath == 1)
        {
          v230 = __nwlog_obj();
          if (os_log_type_enabled(v230, OS_LOG_TYPE_DEBUG))
          {
            v231 = *(v9 + 488);
            v232 = *(*(v9 + 480) + 372);
            v233 = *(v9 + 860);
            if (v231)
            {
              LODWORD(v231) = *(v231 + 424);
            }

            *buf = 136447490;
            *&buf[4] = "nw_http1_parser_signal_eof_if_needed";
            *&buf[12] = 2082;
            *&buf[14] = v9 + 74;
            *&buf[22] = 2080;
            *&buf[24] = " ";
            *&buf[32] = 1024;
            *&buf[34] = v232;
            *&buf[38] = 1024;
            *&buf[40] = v233;
            LOWORD(v276) = 1024;
            *(&v276 + 2) = v231;
            _os_log_impl(&dword_181A37000, v230, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> signaled eof and terminated message successfully", buf, 0x32u);
          }
        }

        *(v9 + 874) |= 1u;
        goto LABEL_122;
      }

      v107 = llhttp_finish(v9 + 200);
      v108 = *(v9 + 872);
      if ((v108 & 4) != 0)
      {
        goto LABEL_356;
      }

      v100 = v107;
      if (!v107)
      {
        goto LABEL_356;
      }

      if (v107 != 14)
      {
        goto LABEL_198;
      }

      v109 = *(v9 + 488);
      if (v109)
      {
        v100 = 14;
        if ((v108 & 1) != 0 && (*(v109 + 428) & 2) == 0 && !*(v9 + 848) && !*(v9 + 852) && !*(v9 + 856))
        {
          if ((v108 & 2) != 0 && *(v9 + 800))
          {
            if (!*(v9 + 808))
            {
              v198 = strdup("");
              if (!v198)
              {
                v264 = __nwlog_obj();
                if (os_log_type_enabled(v264, OS_LOG_TYPE_ERROR))
                {
                  v265 = 3;
                }

                else
                {
                  v265 = 2;
                }

                *buf = 136446210;
                *&buf[4] = "strict_strdup";
                LODWORD(v267) = 12;
                v266 = _os_log_send_and_compose_impl(v265, 0, 0, 0, &dword_181A37000, v264, 16, "%{public}s strdup() failed", buf, v267);
                if (__nwlog_should_abort(v266))
                {
                  __break(1u);
                  return;
                }

                free(v266);
              }

              *(v9 + 808) = v198;
            }

            nw_http1_on_header_value_complete(v9 + 200);
          }

          nw_http1_on_headers_complete(v9 + 200);
          nw_http1_on_message_complete(v9 + 200);
          goto LABEL_356;
        }

LABEL_198:
        if (*(v9 + 158))
        {
          goto LABEL_122;
        }

        goto LABEL_199;
      }

      v243 = __nwlog_obj();
      *buf = 136446210;
      *&buf[4] = "nw_http1_recover_incomplete_header";
      LODWORD(v267) = 12;
      v244 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v243, 16, "%{public}s called with null http1_stream", buf, v267);
      v279[0] = 16;
      type = OS_LOG_TYPE_DEFAULT;
      if (__nwlog_fault(v244, v279, &type))
      {
        if (v279[0] == 17)
        {
          v245 = __nwlog_obj();
          v246 = v279[0];
          if (!os_log_type_enabled(v245, v279[0]))
          {
            goto LABEL_536;
          }

          *buf = 136446210;
          *&buf[4] = "nw_http1_recover_incomplete_header";
          v247 = "%{public}s called with null http1_stream";
LABEL_535:
          _os_log_impl(&dword_181A37000, v245, v246, v247, buf, 0xCu);
          goto LABEL_536;
        }

        if (type != OS_LOG_TYPE_INFO)
        {
          v245 = __nwlog_obj();
          v246 = v279[0];
          if (!os_log_type_enabled(v245, v279[0]))
          {
            goto LABEL_536;
          }

          *buf = 136446210;
          *&buf[4] = "nw_http1_recover_incomplete_header";
          v247 = "%{public}s called with null http1_stream, backtrace limit exceeded";
          goto LABEL_535;
        }

        v257 = __nw_create_backtrace_string();
        v245 = __nwlog_obj();
        v246 = v279[0];
        v258 = os_log_type_enabled(v245, v279[0]);
        if (!v257)
        {
          if (!v258)
          {
            goto LABEL_536;
          }

          *buf = 136446210;
          *&buf[4] = "nw_http1_recover_incomplete_header";
          v247 = "%{public}s called with null http1_stream, no backtrace";
          goto LABEL_535;
        }

        if (v258)
        {
          *buf = 136446466;
          *&buf[4] = "nw_http1_recover_incomplete_header";
          *&buf[12] = 2082;
          *&buf[14] = v257;
          _os_log_impl(&dword_181A37000, v245, v246, "%{public}s called with null http1_stream, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v257);
      }

LABEL_536:
      if (v244)
      {
        free(v244);
      }

      v100 = 14;
      if (*(v9 + 158))
      {
        goto LABEL_122;
      }

LABEL_199:
      v110 = __nwlog_obj();
      if (os_log_type_enabled(v110, OS_LOG_TYPE_ERROR))
      {
        v111 = *(v9 + 488);
        if (v111)
        {
          LODWORD(v111) = *(v111 + 424);
        }

        if (v100 >= 0x24)
        {
          abort();
        }

        v112 = *(*(v9 + 480) + 372);
        v113 = *(v9 + 860);
        v114 = off_1E6A35BE0[v100];
        *buf = 136447746;
        *&buf[4] = "nw_http1_parser_signal_eof_if_needed";
        *&buf[12] = 2082;
        *&buf[14] = v9 + 74;
        *&buf[22] = 2080;
        *&buf[24] = " ";
        *&buf[32] = 1024;
        *&buf[34] = v112;
        *&buf[38] = 1024;
        *&buf[40] = v113;
        LOWORD(v276) = 1024;
        *(&v276 + 2) = v111;
        WORD3(v276) = 2080;
        *(&v276 + 1) = v114;
        _os_log_impl(&dword_181A37000, v110, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u:c%u:s%u> parser eof did not terminate full message with errno: %s, deferring input error", buf, 0x3Cu);
      }

      goto LABEL_122;
    }

    if ((v69 & 0x100) != 0)
    {
      if ((*(v9 + 158) & 1) == 0 && gLogDatapath == 1)
      {
        v125 = __nwlog_obj();
        if (os_log_type_enabled(v125, OS_LOG_TYPE_DEBUG))
        {
          v126 = *(v9 + 488);
          v127 = *(*(v9 + 480) + 372);
          v128 = *(v9 + 860);
          if (v126)
          {
            LODWORD(v126) = *(v126 + 424);
          }

          *buf = 136447490;
          *&buf[4] = "nw_http1_connection_close";
          *&buf[12] = 2082;
          *&buf[14] = v9 + 74;
          *&buf[22] = 2080;
          *&buf[24] = " ";
          *&buf[32] = 1024;
          *&buf[34] = v127;
          *&buf[38] = 1024;
          *&buf[40] = v128;
          LOWORD(v276) = 1024;
          *(&v276 + 2) = v126;
          _os_log_impl(&dword_181A37000, v125, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> already closed", buf, 0x32u);
        }
      }

      goto LABEL_122;
    }

    *(v9 + 872) = v69 | 0x4100;
    if ((*(v9 + 158) & 1) == 0 && gLogDatapath == 1)
    {
      v239 = __nwlog_obj();
      if (os_log_type_enabled(v239, OS_LOG_TYPE_DEBUG))
      {
        v240 = *(v9 + 488);
        v241 = *(*(v9 + 480) + 372);
        v242 = *(v9 + 860);
        if (v240)
        {
          LODWORD(v240) = *(v240 + 424);
        }

        *buf = 136447490;
        *&buf[4] = "nw_http1_connection_close";
        *&buf[12] = 2082;
        *&buf[14] = v9 + 74;
        *&buf[22] = 2080;
        *&buf[24] = " ";
        *&buf[32] = 1024;
        *&buf[34] = v241;
        *&buf[38] = 1024;
        *&buf[40] = v242;
        LOWORD(v276) = 1024;
        *(&v276 + 2) = v240;
        _os_log_impl(&dword_181A37000, v239, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> http connection closed, increasing pool width", buf, 0x32u);
      }
    }

    v115 = *(v9 + 480);
    if (!v115)
    {
      v234 = __nwlog_obj();
      *buf = 136446210;
      *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
      LODWORD(v267) = 12;
      v235 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v234, 16, "%{public}s called with null http1", buf, v267);
      v279[0] = 16;
      type = OS_LOG_TYPE_DEFAULT;
      if (!__nwlog_fault(v235, v279, &type))
      {
        goto LABEL_546;
      }

      if (v279[0] == 17)
      {
        v236 = __nwlog_obj();
        v237 = v279[0];
        if (!os_log_type_enabled(v236, v279[0]))
        {
          goto LABEL_546;
        }

        *buf = 136446210;
        *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
        v238 = "%{public}s called with null http1";
      }

      else if (type == OS_LOG_TYPE_INFO)
      {
        v249 = __nw_create_backtrace_string();
        v236 = __nwlog_obj();
        v237 = v279[0];
        v250 = os_log_type_enabled(v236, v279[0]);
        if (v249)
        {
          if (v250)
          {
            *buf = 136446466;
            *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
            *&buf[12] = 2082;
            *&buf[14] = v249;
            _os_log_impl(&dword_181A37000, v236, v237, "%{public}s called with null http1, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v249);
          goto LABEL_546;
        }

        if (!v250)
        {
          goto LABEL_546;
        }

        *buf = 136446210;
        *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
        v238 = "%{public}s called with null http1, no backtrace";
      }

      else
      {
        v236 = __nwlog_obj();
        v237 = v279[0];
        if (!os_log_type_enabled(v236, v279[0]))
        {
          goto LABEL_546;
        }

        *buf = 136446210;
        *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
        v238 = "%{public}s called with null http1, backtrace limit exceeded";
      }

      v263 = buf;
LABEL_545:
      _os_log_impl(&dword_181A37000, v236, v237, v238, v263, 0xCu);
      goto LABEL_546;
    }

    if ((*(v9 + 872) & 0x800) != 0)
    {
      if ((*(v9 + 158) & 1) == 0 && gLogDatapath == 1)
      {
        v129 = __nwlog_obj();
        if (os_log_type_enabled(v129, OS_LOG_TYPE_DEBUG))
        {
          v130 = *(v9 + 488);
          v131 = *(*(v9 + 480) + 372);
          v132 = *(v9 + 860);
          if (v130)
          {
            LODWORD(v130) = *(v130 + 424);
          }

          *buf = 136447490;
          *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
          *&buf[12] = 2082;
          *&buf[14] = v9 + 74;
          *&buf[22] = 2080;
          *&buf[24] = " ";
          *&buf[32] = 1024;
          *&buf[34] = v131;
          *&buf[38] = 1024;
          *&buf[40] = v132;
          LOWORD(v276) = 1024;
          *(&v276 + 2) = v130;
          _os_log_impl(&dword_181A37000, v129, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> Connection already marked as not-reusable, ignoring", buf, 0x32u);
        }
      }

      goto LABEL_319;
    }

    *(v9 + 872) |= 0x800u;
    v116 = *(v115 + 368) + 1;
    *(v115 + 368) = v116;
    if (v116 == v116 << 31 >> 31)
    {
LABEL_314:
      if ((*(v9 + 158) & 1) == 0 && gLogDatapath == 1)
      {
        v251 = __nwlog_obj();
        if (os_log_type_enabled(v251, OS_LOG_TYPE_DEBUG))
        {
          v252 = *(v9 + 488);
          v253 = *(*(v9 + 480) + 372);
          v254 = *(v9 + 860);
          if (v252)
          {
            LODWORD(v252) = *(v252 + 424);
          }

          v255 = *(v115 + 368) + *(v115 + 364);
          *buf = 136447746;
          *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
          *&buf[12] = 2082;
          *&buf[14] = v9 + 74;
          *&buf[22] = 2080;
          *&buf[24] = " ";
          *&buf[32] = 1024;
          *&buf[34] = v253;
          *&buf[38] = 1024;
          *&buf[40] = v254;
          LOWORD(v276) = 1024;
          *(&v276 + 2) = v252;
          WORD3(v276) = 1024;
          DWORD2(v276) = v255;
          _os_log_impl(&dword_181A37000, v251, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> connection marked as not-reusable, increased pool width to %u", buf, 0x38u);
        }
      }

      v179 = *(v9 + 496);
      if (!v179)
      {
        v248 = __nwlog_obj();
        *v279 = 136446210;
        *&v279[4] = "nw_http1_match_idle_connection_with_pending_stream_async";
        LODWORD(v267) = 12;
        v235 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v248, 16, "%{public}s called with null http1_connection->context", v279, v267);
        type = OS_LOG_TYPE_ERROR;
        v273 = 0;
        if (!__nwlog_fault(v235, &type, &v273))
        {
          goto LABEL_546;
        }

        if (type == OS_LOG_TYPE_FAULT)
        {
          v236 = __nwlog_obj();
          v237 = type;
          if (!os_log_type_enabled(v236, type))
          {
            goto LABEL_546;
          }

          *v279 = 136446210;
          *&v279[4] = "nw_http1_match_idle_connection_with_pending_stream_async";
          v238 = "%{public}s called with null http1_connection->context";
LABEL_544:
          v263 = v279;
          goto LABEL_545;
        }

        if (v273 != 1)
        {
          v236 = __nwlog_obj();
          v237 = type;
          if (!os_log_type_enabled(v236, type))
          {
            goto LABEL_546;
          }

          *v279 = 136446210;
          *&v279[4] = "nw_http1_match_idle_connection_with_pending_stream_async";
          v238 = "%{public}s called with null http1_connection->context, backtrace limit exceeded";
          goto LABEL_544;
        }

        v259 = __nw_create_backtrace_string();
        v236 = __nwlog_obj();
        v237 = type;
        v260 = os_log_type_enabled(v236, type);
        if (!v259)
        {
          if (!v260)
          {
            goto LABEL_546;
          }

          *v279 = 136446210;
          *&v279[4] = "nw_http1_match_idle_connection_with_pending_stream_async";
          v238 = "%{public}s called with null http1_connection->context, no backtrace";
          goto LABEL_544;
        }

        if (v260)
        {
          *v279 = 136446466;
          *&v279[4] = "nw_http1_match_idle_connection_with_pending_stream_async";
          *&v279[12] = 2082;
          *&v279[14] = v259;
          v261 = "%{public}s called with null http1_connection->context, dumping backtrace:%{public}s";
LABEL_521:
          _os_log_impl(&dword_181A37000, v236, v237, v261, v279, 0x16u);
        }

LABEL_522:
        free(v259);
        if (!v235)
        {
LABEL_319:
          if (!*(v9 + 488))
          {
            v182 = *(v9 + 784);
            if (v182)
            {
              nw_queue_set_timer_values(v182, 0x8000000000000000, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
            }

            else
            {
              if ((*(v9 + 158) & 1) == 0)
              {
                v183 = __nwlog_obj();
                if (os_log_type_enabled(v183, OS_LOG_TYPE_ERROR))
                {
                  v184 = *(v9 + 488);
                  v185 = *(*(v9 + 480) + 372);
                  v186 = *(v9 + 860);
                  if (v184)
                  {
                    LODWORD(v184) = *(v184 + 424);
                  }

                  *buf = 136447490;
                  *&buf[4] = "nw_http1_connection_close";
                  *&buf[12] = 2082;
                  *&buf[14] = v9 + 74;
                  *&buf[22] = 2080;
                  *&buf[24] = " ";
                  *&buf[32] = 1024;
                  *&buf[34] = v185;
                  *&buf[38] = 1024;
                  *&buf[40] = v186;
                  LOWORD(v276) = 1024;
                  *(&v276 + 2) = v184;
                  _os_log_impl(&dword_181A37000, v183, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u:c%u:s%u> No destroy timer on HTTP/1 connection when closing", buf, 0x32u);
                }
              }

              v187 = *(v9 + 608);
              v188 = *(v9 + 496);
              *buf = MEMORY[0x1E69E9820];
              *&buf[8] = 0x40000000;
              *&buf[16] = ___ZL25nw_http1_connection_closeP19nw_http1_connection_block_invoke;
              *&buf[24] = &unk_1E6A32780;
              *&buf[32] = v187;
              nw_queue_context_async(v188, buf);
            }
          }

          goto LABEL_122;
        }

LABEL_547:
        free(v235);
        goto LABEL_319;
      }

      v180 = *(v9 + 480);
      if (v180)
      {
        v181 = *(v180 + 200);
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 0x40000000;
        *&buf[16] = ___ZL56nw_http1_match_idle_connection_with_pending_stream_asyncP19nw_http1_connection_block_invoke;
        *&buf[24] = &unk_1E6A327A8;
        *&buf[32] = v181;
        nw_queue_context_async(v179, buf);
        goto LABEL_319;
      }

      v256 = __nwlog_obj();
      *v279 = 136446210;
      *&v279[4] = "nw_http1_match_idle_connection_with_pending_stream_async";
      LODWORD(v267) = 12;
      v235 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v256, 16, "%{public}s called with null http1", v279, v267);
      type = OS_LOG_TYPE_ERROR;
      v273 = 0;
      if (__nwlog_fault(v235, &type, &v273))
      {
        if (type == OS_LOG_TYPE_FAULT)
        {
          v236 = __nwlog_obj();
          v237 = type;
          if (!os_log_type_enabled(v236, type))
          {
            goto LABEL_546;
          }

          *v279 = 136446210;
          *&v279[4] = "nw_http1_match_idle_connection_with_pending_stream_async";
          v238 = "%{public}s called with null http1";
          goto LABEL_544;
        }

        if (v273 != 1)
        {
          v236 = __nwlog_obj();
          v237 = type;
          if (!os_log_type_enabled(v236, type))
          {
            goto LABEL_546;
          }

          *v279 = 136446210;
          *&v279[4] = "nw_http1_match_idle_connection_with_pending_stream_async";
          v238 = "%{public}s called with null http1, backtrace limit exceeded";
          goto LABEL_544;
        }

        v259 = __nw_create_backtrace_string();
        v236 = __nwlog_obj();
        v237 = type;
        v262 = os_log_type_enabled(v236, type);
        if (!v259)
        {
          if (!v262)
          {
            goto LABEL_546;
          }

          *v279 = 136446210;
          *&v279[4] = "nw_http1_match_idle_connection_with_pending_stream_async";
          v238 = "%{public}s called with null http1, no backtrace";
          goto LABEL_544;
        }

        if (v262)
        {
          *v279 = 136446466;
          *&v279[4] = "nw_http1_match_idle_connection_with_pending_stream_async";
          *&v279[12] = 2082;
          *&v279[14] = v259;
          v261 = "%{public}s called with null http1, dumping backtrace:%{public}s";
          goto LABEL_521;
        }

        goto LABEL_522;
      }

LABEL_546:
      if (!v235)
      {
        goto LABEL_319;
      }

      goto LABEL_547;
    }

    v117 = __nwlog_obj();
    v118 = *(v115 + 368);
    *buf = 136446978;
    *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
    *&buf[12] = 2082;
    *&buf[14] = "http1->nonresuable_connections";
    *&buf[22] = 2048;
    *&buf[24] = 1;
    *&buf[32] = 2048;
    *&buf[34] = v118;
    LODWORD(v267) = 42;
    v119 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v117, 16, "%{public}s Overflow: %{public}s, increment %llu, result %llu", buf, v267);
    v279[0] = 16;
    type = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault(v119, v279, &type))
    {
      if (v279[0] == 17)
      {
        v120 = __nwlog_obj();
        v121 = v279[0];
        if (os_log_type_enabled(v120, v279[0]))
        {
          v122 = *(v115 + 368);
          *buf = 136446978;
          *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
          *&buf[12] = 2082;
          *&buf[14] = "http1->nonresuable_connections";
          *&buf[22] = 2048;
          *&buf[24] = 1;
          *&buf[32] = 2048;
          *&buf[34] = v122;
          v123 = "%{public}s Overflow: %{public}s, increment %llu, result %llu";
LABEL_310:
          _os_log_impl(&dword_181A37000, v120, v121, v123, buf, 0x2Au);
        }
      }

      else if (type == OS_LOG_TYPE_INFO)
      {
        v144 = __nw_create_backtrace_string();
        v120 = __nwlog_obj();
        v121 = v279[0];
        v145 = os_log_type_enabled(v120, v279[0]);
        if (v144)
        {
          if (v145)
          {
            v146 = *(v115 + 368);
            *buf = 136447234;
            *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
            *&buf[12] = 2082;
            *&buf[14] = "http1->nonresuable_connections";
            *&buf[22] = 2048;
            *&buf[24] = 1;
            *&buf[32] = 2048;
            *&buf[34] = v146;
            *&buf[42] = 2082;
            *&v276 = v144;
            _os_log_impl(&dword_181A37000, v120, v121, "%{public}s Overflow: %{public}s, increment %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
          }

          free(v144);
          goto LABEL_311;
        }

        if (v145)
        {
          v178 = *(v115 + 368);
          *buf = 136446978;
          *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
          *&buf[12] = 2082;
          *&buf[14] = "http1->nonresuable_connections";
          *&buf[22] = 2048;
          *&buf[24] = 1;
          *&buf[32] = 2048;
          *&buf[34] = v178;
          v123 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, no backtrace";
          goto LABEL_310;
        }
      }

      else
      {
        v120 = __nwlog_obj();
        v121 = v279[0];
        if (os_log_type_enabled(v120, v279[0]))
        {
          v158 = *(v115 + 368);
          *buf = 136446978;
          *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
          *&buf[12] = 2082;
          *&buf[14] = "http1->nonresuable_connections";
          *&buf[22] = 2048;
          *&buf[24] = 1;
          *&buf[32] = 2048;
          *&buf[34] = v158;
          v123 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, backtrace limit exceeded";
          goto LABEL_310;
        }
      }
    }

LABEL_311:
    if (v119)
    {
      free(v119);
    }

    *(v115 + 368) = -1;
    goto LABEL_314;
  }

LABEL_122:
  v70 = *(v9 + 616);
  v71 = *(v9 + 632);
  v72 = *(v9 + 872);
  v73 = v72 & 0x204;
  if ((v72 & 0x2000) != 0)
  {
    v83 = v70 | v71;
    v84 = (v72 >> 9) & 1;
    if (v73 == 4)
    {
      v84 = 1;
    }

    if (v83)
    {
      v85 = 1;
    }

    else
    {
      v85 = v84 == 0;
    }

    if (v85)
    {
      if (v73 == 4)
      {
        goto LABEL_167;
      }

      if (v83)
      {
        goto LABEL_167;
      }

      *(v9 + 864) = 5;
      if (*(v9 + 158))
      {
        goto LABEL_167;
      }

      v74 = __nwlog_obj();
      if (!os_log_type_enabled(v74, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_167;
      }

      v86 = *(v9 + 488);
      v87 = *(*(v9 + 480) + 372);
      v88 = *(v9 + 860);
      if (v86)
      {
        LODWORD(v86) = *(v86 + 424);
      }

      *buf = 136447490;
      *&buf[4] = "nw_http1_update_connection_input_state";
      *&buf[12] = 2082;
      *&buf[14] = v9 + 74;
      *&buf[22] = 2080;
      *&buf[24] = " ";
      *&buf[32] = 1024;
      *&buf[34] = v87;
      *&buf[38] = 1024;
      *&buf[40] = v88;
      LOWORD(v276) = 1024;
      *(&v276 + 2) = v86;
      v78 = "%{public}s %{public}s%s<i%u:c%u:s%u> connection input state: connection error";
    }

    else
    {
      *(v9 + 864) = 4;
      if (*(v9 + 158))
      {
        goto LABEL_167;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v74 = gLogObj;
      if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_167;
      }

      v96 = *(v9 + 488);
      v97 = *(*(v9 + 480) + 372);
      v98 = *(v9 + 860);
      if (v96)
      {
        LODWORD(v96) = *(v96 + 424);
      }

      *buf = 136447490;
      *&buf[4] = "nw_http1_update_connection_input_state";
      *&buf[12] = 2082;
      *&buf[14] = v9 + 74;
      *&buf[22] = 2080;
      *&buf[24] = " ";
      *&buf[32] = 1024;
      *&buf[34] = v97;
      *&buf[38] = 1024;
      *&buf[40] = v98;
      LOWORD(v276) = 1024;
      *(&v276 + 2) = v96;
      v78 = "%{public}s %{public}s%s<i%u:c%u:s%u> connection input state: connection complete";
    }

LABEL_166:
    _os_log_impl(&dword_181A37000, v74, OS_LOG_TYPE_DEBUG, v78, buf, 0x32u);
    goto LABEL_167;
  }

  if (v73 != 4)
  {
    if (*(v9 + 158))
    {
      goto LABEL_167;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v74 = gLogObj;
    if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_167;
    }

    v93 = *(v9 + 488);
    v94 = *(*(v9 + 480) + 372);
    v95 = *(v9 + 860);
    if (v93)
    {
      LODWORD(v93) = *(v93 + 424);
    }

    *buf = 136447490;
    *&buf[4] = "nw_http1_update_connection_input_state";
    *&buf[12] = 2082;
    *&buf[14] = v9 + 74;
    *&buf[22] = 2080;
    *&buf[24] = " ";
    *&buf[32] = 1024;
    *&buf[34] = v94;
    *&buf[38] = 1024;
    *&buf[40] = v95;
    LOWORD(v276) = 1024;
    *(&v276 + 2) = v93;
    v78 = "%{public}s %{public}s%s<i%u:c%u:s%u> no change to http1 connection state";
    goto LABEL_166;
  }

  if (v70 | v71)
  {
    if (!v70)
    {
      goto LABEL_167;
    }

    if (v71)
    {
      goto LABEL_167;
    }

    *(v9 + 864) = 3;
    if (*(v9 + 158))
    {
      goto LABEL_167;
    }

    v74 = __nwlog_obj();
    if (!os_log_type_enabled(v74, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_167;
    }

    v101 = *(v9 + 488);
    v102 = *(*(v9 + 480) + 372);
    v103 = *(v9 + 860);
    if (v101)
    {
      LODWORD(v101) = *(v101 + 424);
    }

    *buf = 136447490;
    *&buf[4] = "nw_http1_update_connection_input_state";
    *&buf[12] = 2082;
    *&buf[14] = v9 + 74;
    *&buf[22] = 2080;
    *&buf[24] = " ";
    *&buf[32] = 1024;
    *&buf[34] = v102;
    *&buf[38] = 1024;
    *&buf[40] = v103;
    LOWORD(v276) = 1024;
    *(&v276 + 2) = v101;
    v78 = "%{public}s %{public}s%s<i%u:c%u:s%u> connection input state: stream pending";
    goto LABEL_166;
  }

  *(v9 + 864) = 2;
  if ((*(v9 + 158) & 1) == 0)
  {
    v74 = __nwlog_obj();
    if (os_log_type_enabled(v74, OS_LOG_TYPE_DEBUG))
    {
      v75 = *(v9 + 488);
      v76 = *(*(v9 + 480) + 372);
      v77 = *(v9 + 860);
      if (v75)
      {
        LODWORD(v75) = *(v75 + 424);
      }

      *buf = 136447490;
      *&buf[4] = "nw_http1_update_connection_input_state";
      *&buf[12] = 2082;
      *&buf[14] = v9 + 74;
      *&buf[22] = 2080;
      *&buf[24] = " ";
      *&buf[32] = 1024;
      *&buf[34] = v76;
      *&buf[38] = 1024;
      *&buf[40] = v77;
      LOWORD(v276) = 1024;
      *(&v276 + 2) = v75;
      v78 = "%{public}s %{public}s%s<i%u:c%u:s%u> connection input state: stream complete";
      goto LABEL_166;
    }
  }

LABEL_167:
  if (*(v9 + 864) == 1)
  {
    if (v10)
    {
      v99 = *(v9 + 488);
      if (v99)
      {
        nw_protocol_input_available(*(v99 + 48), v99);
      }
    }
  }

LABEL_97:
  v55 = *(v9 + 488);
  if (v55)
  {
    if ((*(v9 + 158) & 1) != 0 || gLogDatapath != 1)
    {
      goto LABEL_100;
    }

    v166 = __nwlog_obj();
    v167 = os_log_type_enabled(v166, OS_LOG_TYPE_DEBUG);
    v55 = *(v9 + 488);
    if (v167)
    {
      v168 = *(*(v9 + 480) + 372);
      v169 = *(v9 + 860);
      if (v55)
      {
        v170 = *(v55 + 424);
      }

      else
      {
        v170 = 0;
      }

      *buf = 136448002;
      *&buf[4] = "nw_protocol_http1_input_finished";
      *&buf[12] = 2082;
      *&buf[14] = v9 + 74;
      *&buf[22] = 2080;
      *&buf[24] = " ";
      *&buf[32] = 1024;
      *&buf[34] = v168;
      *&buf[38] = 1024;
      *&buf[40] = v169;
      LOWORD(v276) = 1024;
      *(&v276 + 2) = v170;
      WORD3(v276) = 2048;
      *(&v276 + 1) = v9;
      v277 = 2048;
      v278 = v55;
      _os_log_impl(&dword_181A37000, v166, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> http connection %p sending input_finished to current stream (%p)", buf, 0x46u);
      v55 = *(v9 + 488);
    }

    if (v55)
    {
LABEL_100:
      nw_protocol_input_finished(*(v55 + 48), v55);
    }

    else
    {
      nw_protocol_input_finished(0, 0);
    }

    return;
  }

  if ((*(v9 + 158) & 1) == 0 && gLogDatapath == 1)
  {
    v189 = __nwlog_obj();
    if (os_log_type_enabled(v189, OS_LOG_TYPE_DEBUG))
    {
      v190 = *(v9 + 488);
      v191 = *(*(v9 + 480) + 372);
      v192 = *(v9 + 860);
      if (v190)
      {
        LODWORD(v190) = *(v190 + 424);
      }

      *buf = 136447490;
      *&buf[4] = "nw_protocol_http1_input_finished";
      *&buf[12] = 2082;
      *&buf[14] = v9 + 74;
      *&buf[22] = 2080;
      *&buf[24] = " ";
      *&buf[32] = 1024;
      *&buf[34] = v191;
      *&buf[38] = 1024;
      *&buf[40] = v192;
      LOWORD(v276) = 1024;
      *(&v276 + 2) = v190;
      _os_log_impl(&dword_181A37000, v189, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> closing http connection on input_finished, no remaining input", buf, 0x32u);
    }
  }

  if ((*(v9 + 872) & 0x100) != 0)
  {
    if ((*(v9 + 158) & 1) == 0 && gLogDatapath == 1)
    {
      v79 = __nwlog_obj();
      if (os_log_type_enabled(v79, OS_LOG_TYPE_DEBUG))
      {
        v80 = *(v9 + 488);
        v81 = *(*(v9 + 480) + 372);
        v82 = *(v9 + 860);
        if (v80)
        {
          LODWORD(v80) = *(v80 + 424);
        }

        *buf = 136447490;
        *&buf[4] = "nw_http1_connection_close";
        *&buf[12] = 2082;
        *&buf[14] = v9 + 74;
        *&buf[22] = 2080;
        *&buf[24] = " ";
        *&buf[32] = 1024;
        *&buf[34] = v81;
        *&buf[38] = 1024;
        *&buf[40] = v82;
        LOWORD(v276) = 1024;
        *(&v276 + 2) = v80;
        _os_log_impl(&dword_181A37000, v79, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> already closed", buf, 0x32u);
      }
    }
  }

  else
  {
    *(v9 + 872) |= 0x100u;
    if ((*(v9 + 158) & 1) == 0 && gLogDatapath == 1)
    {
      v204 = __nwlog_obj();
      if (os_log_type_enabled(v204, OS_LOG_TYPE_DEBUG))
      {
        v205 = *(v9 + 488);
        v206 = *(*(v9 + 480) + 372);
        v207 = *(v9 + 860);
        if (v205)
        {
          LODWORD(v205) = *(v205 + 424);
        }

        *buf = 136447490;
        *&buf[4] = "nw_http1_connection_close";
        *&buf[12] = 2082;
        *&buf[14] = v9 + 74;
        *&buf[22] = 2080;
        *&buf[24] = " ";
        *&buf[32] = 1024;
        *&buf[34] = v206;
        *&buf[38] = 1024;
        *&buf[40] = v207;
        LOWORD(v276) = 1024;
        *(&v276 + 2) = v205;
        _os_log_impl(&dword_181A37000, v204, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> http connection closed, increasing pool width", buf, 0x32u);
      }
    }

    v56 = *(v9 + 480);
    if (!v56)
    {
      v199 = __nwlog_obj();
      *buf = 136446210;
      *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
      LODWORD(v267) = 12;
      v200 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v199, 16, "%{public}s called with null http1", buf, v267);
      v279[0] = 16;
      v271[0] = OS_LOG_TYPE_DEFAULT;
      if (!__nwlog_fault(v200, v279, v271))
      {
        goto LABEL_483;
      }

      if (v279[0] == 17)
      {
        v201 = __nwlog_obj();
        v202 = v279[0];
        if (!os_log_type_enabled(v201, v279[0]))
        {
          goto LABEL_483;
        }

        *buf = 136446210;
        *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
        v203 = "%{public}s called with null http1";
      }

      else if (v271[0] == OS_LOG_TYPE_INFO)
      {
        v209 = __nw_create_backtrace_string();
        v201 = __nwlog_obj();
        v202 = v279[0];
        v210 = os_log_type_enabled(v201, v279[0]);
        if (v209)
        {
          if (v210)
          {
            *buf = 136446466;
            *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
            *&buf[12] = 2082;
            *&buf[14] = v209;
            _os_log_impl(&dword_181A37000, v201, v202, "%{public}s called with null http1, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v209);
          goto LABEL_483;
        }

        if (!v210)
        {
LABEL_483:
          if (!v200)
          {
            goto LABEL_239;
          }

          goto LABEL_484;
        }

        *buf = 136446210;
        *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
        v203 = "%{public}s called with null http1, no backtrace";
      }

      else
      {
        v201 = __nwlog_obj();
        v202 = v279[0];
        if (!os_log_type_enabled(v201, v279[0]))
        {
          goto LABEL_483;
        }

        *buf = 136446210;
        *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
        v203 = "%{public}s called with null http1, backtrace limit exceeded";
      }

      v229 = buf;
      goto LABEL_482;
    }

    if ((*(v9 + 872) & 0x800) == 0)
    {
      *(v9 + 872) |= 0x800u;
      v57 = *(v56 + 368) + 1;
      *(v56 + 368) = v57;
      if (v57 != v57 << 31 >> 31)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v58 = *(v56 + 368);
        *buf = 136446978;
        *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
        *&buf[12] = 2082;
        *&buf[14] = "http1->nonresuable_connections";
        *&buf[22] = 2048;
        *&buf[24] = 1;
        *&buf[32] = 2048;
        *&buf[34] = v58;
        LODWORD(v267) = 42;
        v59 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s Overflow: %{public}s, increment %llu, result %llu", buf, v267);
        v279[0] = 16;
        v271[0] = OS_LOG_TYPE_DEFAULT;
        if (!__nwlog_fault(v59, v279, v271))
        {
          goto LABEL_231;
        }

        if (v279[0] != 17)
        {
          if (v271[0] == OS_LOG_TYPE_INFO)
          {
            v104 = __nw_create_backtrace_string();
            v60 = __nwlog_obj();
            v61 = v279[0];
            v105 = os_log_type_enabled(v60, v279[0]);
            if (v104)
            {
              if (v105)
              {
                v106 = *(v56 + 368);
                *buf = 136447234;
                *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
                *&buf[12] = 2082;
                *&buf[14] = "http1->nonresuable_connections";
                *&buf[22] = 2048;
                *&buf[24] = 1;
                *&buf[32] = 2048;
                *&buf[34] = v106;
                *&buf[42] = 2082;
                *&v276 = v104;
                _os_log_impl(&dword_181A37000, v60, v61, "%{public}s Overflow: %{public}s, increment %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
              }

              free(v104);
              goto LABEL_231;
            }

            if (!v105)
            {
              goto LABEL_231;
            }

            v133 = *(v56 + 368);
            *buf = 136446978;
            *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
            *&buf[12] = 2082;
            *&buf[14] = "http1->nonresuable_connections";
            *&buf[22] = 2048;
            *&buf[24] = 1;
            *&buf[32] = 2048;
            *&buf[34] = v133;
            v63 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, no backtrace";
          }

          else
          {
            v60 = __nwlog_obj();
            v61 = v279[0];
            if (!os_log_type_enabled(v60, v279[0]))
            {
              goto LABEL_231;
            }

            v124 = *(v56 + 368);
            *buf = 136446978;
            *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
            *&buf[12] = 2082;
            *&buf[14] = "http1->nonresuable_connections";
            *&buf[22] = 2048;
            *&buf[24] = 1;
            *&buf[32] = 2048;
            *&buf[34] = v124;
            v63 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, backtrace limit exceeded";
          }

LABEL_230:
          _os_log_impl(&dword_181A37000, v60, v61, v63, buf, 0x2Au);
          goto LABEL_231;
        }

        v60 = __nwlog_obj();
        v61 = v279[0];
        if (os_log_type_enabled(v60, v279[0]))
        {
          v62 = *(v56 + 368);
          *buf = 136446978;
          *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
          *&buf[12] = 2082;
          *&buf[14] = "http1->nonresuable_connections";
          *&buf[22] = 2048;
          *&buf[24] = 1;
          *&buf[32] = 2048;
          *&buf[34] = v62;
          v63 = "%{public}s Overflow: %{public}s, increment %llu, result %llu";
          goto LABEL_230;
        }

LABEL_231:
        if (v59)
        {
          free(v59);
        }

        *(v56 + 368) = -1;
      }

      if ((*(v9 + 158) & 1) == 0 && gLogDatapath == 1)
      {
        v211 = __nwlog_obj();
        if (os_log_type_enabled(v211, OS_LOG_TYPE_DEBUG))
        {
          v212 = *(v9 + 488);
          v213 = *(*(v9 + 480) + 372);
          v214 = *(v9 + 860);
          if (v212)
          {
            LODWORD(v212) = *(v212 + 424);
          }

          v215 = *(v56 + 368) + *(v56 + 364);
          *buf = 136447746;
          *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
          *&buf[12] = 2082;
          *&buf[14] = v9 + 74;
          *&buf[22] = 2080;
          *&buf[24] = " ";
          *&buf[32] = 1024;
          *&buf[34] = v213;
          *&buf[38] = 1024;
          *&buf[40] = v214;
          LOWORD(v276) = 1024;
          *(&v276 + 2) = v212;
          WORD3(v276) = 1024;
          DWORD2(v276) = v215;
          _os_log_impl(&dword_181A37000, v211, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> connection marked as not-reusable, increased pool width to %u", buf, 0x38u);
        }
      }

      v134 = *(v9 + 496);
      if (v134)
      {
        v135 = *(v9 + 480);
        if (v135)
        {
          v136 = *(v135 + 200);
          *buf = MEMORY[0x1E69E9820];
          *&buf[8] = 0x40000000;
          *&buf[16] = ___ZL56nw_http1_match_idle_connection_with_pending_stream_asyncP19nw_http1_connection_block_invoke;
          *&buf[24] = &unk_1E6A327A8;
          *&buf[32] = v136;
          nw_queue_context_async(v134, buf);
          goto LABEL_239;
        }

        v216 = __nwlog_obj();
        *v279 = 136446210;
        *&v279[4] = "nw_http1_match_idle_connection_with_pending_stream_async";
        LODWORD(v267) = 12;
        v200 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v216, 16, "%{public}s called with null http1", v279, v267);
        v271[0] = OS_LOG_TYPE_ERROR;
        type = OS_LOG_TYPE_DEFAULT;
        if (!__nwlog_fault(v200, v271, &type))
        {
          goto LABEL_483;
        }

        if (v271[0] == OS_LOG_TYPE_FAULT)
        {
          v201 = __nwlog_obj();
          v202 = v271[0];
          if (os_log_type_enabled(v201, v271[0]))
          {
            *v279 = 136446210;
            *&v279[4] = "nw_http1_match_idle_connection_with_pending_stream_async";
            v203 = "%{public}s called with null http1";
            goto LABEL_481;
          }

          goto LABEL_483;
        }

        if (type == OS_LOG_TYPE_INFO)
        {
          v225 = __nw_create_backtrace_string();
          v201 = __nwlog_obj();
          v202 = v271[0];
          v228 = os_log_type_enabled(v201, v271[0]);
          if (v225)
          {
            if (v228)
            {
              *v279 = 136446466;
              *&v279[4] = "nw_http1_match_idle_connection_with_pending_stream_async";
              *&v279[12] = 2082;
              *&v279[14] = v225;
              v227 = "%{public}s called with null http1, dumping backtrace:%{public}s";
LABEL_455:
              _os_log_impl(&dword_181A37000, v201, v202, v227, v279, 0x16u);
            }

            goto LABEL_456;
          }

          if (!v228)
          {
            goto LABEL_483;
          }

          *v279 = 136446210;
          *&v279[4] = "nw_http1_match_idle_connection_with_pending_stream_async";
          v203 = "%{public}s called with null http1, no backtrace";
        }

        else
        {
          v201 = __nwlog_obj();
          v202 = v271[0];
          if (!os_log_type_enabled(v201, v271[0]))
          {
            goto LABEL_483;
          }

          *v279 = 136446210;
          *&v279[4] = "nw_http1_match_idle_connection_with_pending_stream_async";
          v203 = "%{public}s called with null http1, backtrace limit exceeded";
        }

LABEL_481:
        v229 = v279;
LABEL_482:
        _os_log_impl(&dword_181A37000, v201, v202, v203, v229, 0xCu);
        goto LABEL_483;
      }

      v208 = __nwlog_obj();
      *v279 = 136446210;
      *&v279[4] = "nw_http1_match_idle_connection_with_pending_stream_async";
      LODWORD(v267) = 12;
      v200 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v208, 16, "%{public}s called with null http1_connection->context", v279, v267);
      v271[0] = OS_LOG_TYPE_ERROR;
      type = OS_LOG_TYPE_DEFAULT;
      if (!__nwlog_fault(v200, v271, &type))
      {
        goto LABEL_483;
      }

      if (v271[0] == OS_LOG_TYPE_FAULT)
      {
        v201 = __nwlog_obj();
        v202 = v271[0];
        if (os_log_type_enabled(v201, v271[0]))
        {
          *v279 = 136446210;
          *&v279[4] = "nw_http1_match_idle_connection_with_pending_stream_async";
          v203 = "%{public}s called with null http1_connection->context";
          goto LABEL_481;
        }

        goto LABEL_483;
      }

      if (type != OS_LOG_TYPE_INFO)
      {
        v201 = __nwlog_obj();
        v202 = v271[0];
        if (!os_log_type_enabled(v201, v271[0]))
        {
          goto LABEL_483;
        }

        *v279 = 136446210;
        *&v279[4] = "nw_http1_match_idle_connection_with_pending_stream_async";
        v203 = "%{public}s called with null http1_connection->context, backtrace limit exceeded";
        goto LABEL_481;
      }

      v225 = __nw_create_backtrace_string();
      v201 = __nwlog_obj();
      v202 = v271[0];
      v226 = os_log_type_enabled(v201, v271[0]);
      if (!v225)
      {
        if (!v226)
        {
          goto LABEL_483;
        }

        *v279 = 136446210;
        *&v279[4] = "nw_http1_match_idle_connection_with_pending_stream_async";
        v203 = "%{public}s called with null http1_connection->context, no backtrace";
        goto LABEL_481;
      }

      if (v226)
      {
        *v279 = 136446466;
        *&v279[4] = "nw_http1_match_idle_connection_with_pending_stream_async";
        *&v279[12] = 2082;
        *&v279[14] = v225;
        v227 = "%{public}s called with null http1_connection->context, dumping backtrace:%{public}s";
        goto LABEL_455;
      }

LABEL_456:
      free(v225);
      if (!v200)
      {
        goto LABEL_239;
      }

LABEL_484:
      free(v200);
      goto LABEL_239;
    }

    if ((*(v9 + 158) & 1) == 0 && gLogDatapath == 1)
    {
      v89 = __nwlog_obj();
      if (os_log_type_enabled(v89, OS_LOG_TYPE_DEBUG))
      {
        v90 = *(v9 + 488);
        v91 = *(*(v9 + 480) + 372);
        v92 = *(v9 + 860);
        if (v90)
        {
          LODWORD(v90) = *(v90 + 424);
        }

        *buf = 136447490;
        *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
        *&buf[12] = 2082;
        *&buf[14] = v9 + 74;
        *&buf[22] = 2080;
        *&buf[24] = " ";
        *&buf[32] = 1024;
        *&buf[34] = v91;
        *&buf[38] = 1024;
        *&buf[40] = v92;
        LOWORD(v276) = 1024;
        *(&v276 + 2) = v90;
        _os_log_impl(&dword_181A37000, v89, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> Connection already marked as not-reusable, ignoring", buf, 0x32u);
      }
    }

LABEL_239:
    if (!*(v9 + 488))
    {
      v137 = *(v9 + 784);
      if (v137)
      {
        if (*v137)
        {
          dispatch_source_set_timer(*v137, 0x8000000000000000, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
        }

        else
        {
          *(v137 + 32) = xmmword_182B08D40;
          if (*(v137 + 48) == 1 && *(v137 + 49) == 1)
          {
            nw_queue_source_run_timer(v137);
          }
        }
      }

      else
      {
        if ((*(v9 + 158) & 1) == 0)
        {
          v138 = __nwlog_obj();
          if (os_log_type_enabled(v138, OS_LOG_TYPE_ERROR))
          {
            v139 = *(v9 + 488);
            v140 = *(*(v9 + 480) + 372);
            v141 = *(v9 + 860);
            if (v139)
            {
              LODWORD(v139) = *(v139 + 424);
            }

            *buf = 136447490;
            *&buf[4] = "nw_http1_connection_close";
            *&buf[12] = 2082;
            *&buf[14] = v9 + 74;
            *&buf[22] = 2080;
            *&buf[24] = " ";
            *&buf[32] = 1024;
            *&buf[34] = v140;
            *&buf[38] = 1024;
            *&buf[40] = v141;
            LOWORD(v276) = 1024;
            *(&v276 + 2) = v139;
            _os_log_impl(&dword_181A37000, v138, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u:c%u:s%u> No destroy timer on HTTP/1 connection when closing", buf, 0x32u);
          }
        }

        v142 = *(v9 + 608);
        v143 = *(v9 + 496);
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 0x40000000;
        *&buf[16] = ___ZL25nw_http1_connection_closeP19nw_http1_connection_block_invoke;
        *&buf[24] = &unk_1E6A32780;
        *&buf[32] = v142;
        nw_queue_context_async(v143, buf);
      }
    }
  }
}

void nw_protocol_http1_output_available(nw_protocol *a1, nw_protocol *a2)
{
  v366 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v275 = __nwlog_obj();
    *buf = 136446210;
    v358 = "nw_http1_get_http1_protocol";
    v276 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v275, 16, "%{public}s called with null protocol", buf, 12);
    v343[0] = OS_LOG_TYPE_ERROR;
    type[0] = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v276, v343, type))
    {
      goto LABEL_548;
    }

    if (v343[0] == OS_LOG_TYPE_FAULT)
    {
      v277 = __nwlog_obj();
      v278 = v343[0];
      if (!os_log_type_enabled(v277, v343[0]))
      {
        goto LABEL_548;
      }

      *buf = 136446210;
      v358 = "nw_http1_get_http1_protocol";
      v279 = "%{public}s called with null protocol";
    }

    else
    {
      if (type[0] == OS_LOG_TYPE_INFO)
      {
        backtrace_string = __nw_create_backtrace_string();
        v277 = __nwlog_obj();
        v278 = v343[0];
        v288 = os_log_type_enabled(v277, v343[0]);
        if (!backtrace_string)
        {
          if (!v288)
          {
            goto LABEL_548;
          }

          *buf = 136446210;
          v358 = "nw_http1_get_http1_protocol";
          v279 = "%{public}s called with null protocol, no backtrace";
          goto LABEL_547;
        }

        if (v288)
        {
          *buf = 136446466;
          v358 = "nw_http1_get_http1_protocol";
          v359 = 2082;
          *v360 = backtrace_string;
          _os_log_impl(&dword_181A37000, v277, v278, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_548;
      }

      v277 = __nwlog_obj();
      v278 = v343[0];
      if (!os_log_type_enabled(v277, v343[0]))
      {
        goto LABEL_548;
      }

      *buf = 136446210;
      v358 = "nw_http1_get_http1_protocol";
      v279 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

    goto LABEL_547;
  }

  handle = a1->handle;
  if (!handle)
  {
    v280 = __nwlog_obj();
    *buf = 136446210;
    v358 = "nw_http1_get_http1_protocol";
    v276 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v280, 16, "%{public}s called with null handle", buf, 12);
    v343[0] = OS_LOG_TYPE_ERROR;
    type[0] = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v276, v343, type))
    {
      goto LABEL_548;
    }

    if (v343[0] != OS_LOG_TYPE_FAULT)
    {
      if (type[0] != OS_LOG_TYPE_INFO)
      {
        v277 = __nwlog_obj();
        v278 = v343[0];
        if (!os_log_type_enabled(v277, v343[0]))
        {
          goto LABEL_548;
        }

        *buf = 136446210;
        v358 = "nw_http1_get_http1_protocol";
        v279 = "%{public}s called with null handle, backtrace limit exceeded";
        goto LABEL_547;
      }

      v289 = __nw_create_backtrace_string();
      v277 = __nwlog_obj();
      v278 = v343[0];
      v290 = os_log_type_enabled(v277, v343[0]);
      if (!v289)
      {
        if (!v290)
        {
          goto LABEL_548;
        }

        *buf = 136446210;
        v358 = "nw_http1_get_http1_protocol";
        v279 = "%{public}s called with null handle, no backtrace";
        goto LABEL_547;
      }

      if (!v290)
      {
        goto LABEL_452;
      }

      *buf = 136446466;
      v358 = "nw_http1_get_http1_protocol";
      v359 = 2082;
      *v360 = v289;
      v291 = "%{public}s called with null handle, dumping backtrace:%{public}s";
      goto LABEL_451;
    }

    v277 = __nwlog_obj();
    v278 = v343[0];
    if (!os_log_type_enabled(v277, v343[0]))
    {
      goto LABEL_548;
    }

    *buf = 136446210;
    v358 = "nw_http1_get_http1_protocol";
    v279 = "%{public}s called with null handle";
LABEL_547:
    _os_log_impl(&dword_181A37000, v277, v278, v279, buf, 0xCu);
    goto LABEL_548;
  }

  v3 = *(handle + 6);
  v4 = a1->handle;
  if (v3 == 1)
  {
    goto LABEL_10;
  }

  if (v3 != 2)
  {
    if (v3 != 3)
    {
      goto LABEL_550;
    }

    v5 = *(handle + 2);
    if (v5)
    {
      v4 = (v5 + 480);
      goto LABEL_10;
    }

    v303 = __nwlog_obj();
    *buf = 136446210;
    v358 = "nw_http1_get_http1_protocol";
    v276 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v303, 16, "%{public}s called with null handle->http1_connection", buf, 12);
    v343[0] = OS_LOG_TYPE_ERROR;
    type[0] = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault(v276, v343, type))
    {
      if (v343[0] == OS_LOG_TYPE_FAULT)
      {
        v277 = __nwlog_obj();
        v278 = v343[0];
        if (!os_log_type_enabled(v277, v343[0]))
        {
          goto LABEL_548;
        }

        *buf = 136446210;
        v358 = "nw_http1_get_http1_protocol";
        v279 = "%{public}s called with null handle->http1_connection";
        goto LABEL_547;
      }

      if (type[0] != OS_LOG_TYPE_INFO)
      {
        v277 = __nwlog_obj();
        v278 = v343[0];
        if (!os_log_type_enabled(v277, v343[0]))
        {
          goto LABEL_548;
        }

        *buf = 136446210;
        v358 = "nw_http1_get_http1_protocol";
        v279 = "%{public}s called with null handle->http1_connection, backtrace limit exceeded";
        goto LABEL_547;
      }

      v289 = __nw_create_backtrace_string();
      v277 = __nwlog_obj();
      v278 = v343[0];
      v314 = os_log_type_enabled(v277, v343[0]);
      if (!v289)
      {
        if (!v314)
        {
          goto LABEL_548;
        }

        *buf = 136446210;
        v358 = "nw_http1_get_http1_protocol";
        v279 = "%{public}s called with null handle->http1_connection, no backtrace";
        goto LABEL_547;
      }

      if (v314)
      {
        *buf = 136446466;
        v358 = "nw_http1_get_http1_protocol";
        v359 = 2082;
        *v360 = v289;
        v291 = "%{public}s called with null handle->http1_connection, dumping backtrace:%{public}s";
        goto LABEL_451;
      }

LABEL_452:
      free(v289);
      if (!v276)
      {
LABEL_550:
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        *buf = 136446210;
        v358 = "nw_protocol_http1_output_available";
        LODWORD(v336) = 12;
        v282 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s called with null http1", buf, v336);
        v343[0] = OS_LOG_TYPE_ERROR;
        type[0] = OS_LOG_TYPE_DEFAULT;
        if (!__nwlog_fault(v282, v343, type))
        {
          goto LABEL_582;
        }

        if (v343[0] == OS_LOG_TYPE_FAULT)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v283 = gLogObj;
          v284 = v343[0];
          if (!os_log_type_enabled(gLogObj, v343[0]))
          {
            goto LABEL_582;
          }

          *buf = 136446210;
          v358 = "nw_protocol_http1_output_available";
          v285 = "%{public}s called with null http1";
        }

        else
        {
          if (type[0] == OS_LOG_TYPE_INFO)
          {
            v326 = __nw_create_backtrace_string();
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v327 = gLogObj;
            v328 = v343[0];
            v329 = os_log_type_enabled(gLogObj, v343[0]);
            if (!v326)
            {
              if (!v329)
              {
                goto LABEL_582;
              }

              *buf = 136446210;
              v358 = "nw_protocol_http1_output_available";
              v285 = "%{public}s called with null http1, no backtrace";
              goto LABEL_587;
            }

            if (v329)
            {
              *buf = 136446466;
              v358 = "nw_protocol_http1_output_available";
              v359 = 2082;
              *v360 = v326;
              _os_log_impl(&dword_181A37000, v327, v328, "%{public}s called with null http1, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(v326);
LABEL_582:
            if (!v282)
            {
              return;
            }

            goto LABEL_583;
          }

          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v283 = gLogObj;
          v284 = v343[0];
          if (!os_log_type_enabled(gLogObj, v343[0]))
          {
            goto LABEL_582;
          }

          *buf = 136446210;
          v358 = "nw_protocol_http1_output_available";
          v285 = "%{public}s called with null http1, backtrace limit exceeded";
        }

LABEL_580:
        v332 = v283;
        v333 = v284;
LABEL_581:
        _os_log_impl(&dword_181A37000, v332, v333, v285, buf, 0xCu);
        goto LABEL_582;
      }

LABEL_549:
      free(v276);
      goto LABEL_550;
    }

LABEL_548:
    if (!v276)
    {
      goto LABEL_550;
    }

    goto LABEL_549;
  }

  v6 = *(handle + 1);
  if (!v6)
  {
    v302 = __nwlog_obj();
    *buf = 136446210;
    v358 = "nw_http1_get_http1_protocol";
    v276 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v302, 16, "%{public}s called with null handle->http1_stream", buf, 12);
    v343[0] = OS_LOG_TYPE_ERROR;
    type[0] = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v276, v343, type))
    {
      goto LABEL_548;
    }

    if (v343[0] == OS_LOG_TYPE_FAULT)
    {
      v277 = __nwlog_obj();
      v278 = v343[0];
      if (!os_log_type_enabled(v277, v343[0]))
      {
        goto LABEL_548;
      }

      *buf = 136446210;
      v358 = "nw_http1_get_http1_protocol";
      v279 = "%{public}s called with null handle->http1_stream";
      goto LABEL_547;
    }

    if (type[0] != OS_LOG_TYPE_INFO)
    {
      v277 = __nwlog_obj();
      v278 = v343[0];
      if (!os_log_type_enabled(v277, v343[0]))
      {
        goto LABEL_548;
      }

      *buf = 136446210;
      v358 = "nw_http1_get_http1_protocol";
      v279 = "%{public}s called with null handle->http1_stream, backtrace limit exceeded";
      goto LABEL_547;
    }

    v289 = __nw_create_backtrace_string();
    v277 = __nwlog_obj();
    v278 = v343[0];
    v313 = os_log_type_enabled(v277, v343[0]);
    if (!v289)
    {
      if (!v313)
      {
        goto LABEL_548;
      }

      *buf = 136446210;
      v358 = "nw_http1_get_http1_protocol";
      v279 = "%{public}s called with null handle->http1_stream, no backtrace";
      goto LABEL_547;
    }

    if (!v313)
    {
      goto LABEL_452;
    }

    *buf = 136446466;
    v358 = "nw_http1_get_http1_protocol";
    v359 = 2082;
    *v360 = v289;
    v291 = "%{public}s called with null handle->http1_stream, dumping backtrace:%{public}s";
LABEL_451:
    _os_log_impl(&dword_181A37000, v277, v278, v291, buf, 0x16u);
    goto LABEL_452;
  }

  v4 = (v6 + 248);
LABEL_10:
  if (!*v4)
  {
    goto LABEL_550;
  }

  if (a2)
  {
    if (v3 != 2)
    {
      if (v3 != 3)
      {
        goto LABEL_568;
      }

      v7 = (handle + 16);
      goto LABEL_17;
    }

    v8 = *(handle + 1);
    if (v8)
    {
      v7 = (v8 + 256);
LABEL_17:
      v9 = *v7;
      if (*v7)
      {
        if (!*(v9 + 648))
        {
          goto LABEL_365;
        }

        v10 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
        v341 = *v7;
        if ((*(v9 + 158) & 1) == 0 && gLogDatapath == 1)
        {
          v297 = __nwlog_obj();
          if (os_log_type_enabled(v297, OS_LOG_TYPE_DEBUG))
          {
            v298 = *(v9 + 488);
            v299 = *(*(v9 + 480) + 372);
            v300 = *(v9 + 860);
            if (v298)
            {
              LODWORD(v298) = *(v298 + 424);
            }

            *buf = 136447490;
            v358 = "nw_http1_connection_drain_outbound_frames";
            v359 = 2082;
            *v360 = v9 + 74;
            *&v360[8] = 2080;
            *&v360[10] = " ";
            v361 = 1024;
            *v362 = v299;
            *&v362[4] = 1024;
            *&v362[6] = v300;
            LOWORD(v363) = 1024;
            *(&v363 + 2) = v298;
            _os_log_impl(&dword_181A37000, v297, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> draining pending outbound frames", buf, 0x32u);
          }
        }

        if (*(v9 + 480))
        {
          if (*(v9 + 488))
          {
            v11 = (v9 + 648);
            v12 = *(v9 + 648);
            if (!v12)
            {
              goto LABEL_363;
            }

            v338 = (v9 + 656);
            v340 = v9 + 74;
            v337 = (v9 + 648);
            while (1)
            {
LABEL_26:
              v13 = *(v12 + 32);
              v14 = *(v12 + 40);
              v15 = (v13 + 40);
              if (!v13)
              {
                v15 = v338;
              }

              *v15 = v14;
              *v14 = v13;
              *(v12 + 32) = 0;
              *(v12 + 40) = 0;
              if (!*(v12 + 112) || (*(v12 + 204) & 0x100) != 0 && g_channel_check_validity && !g_channel_check_validity(v12, *(v12 + 88)))
              {
                v18 = 0;
                v19 = 0;
              }

              else
              {
                v17 = *(v12 + 52);
                v16 = *(v12 + 56);
                if (v17)
                {
                  v18 = (v17 - (v16 + *(v12 + 60)));
                }

                else
                {
                  v18 = 0;
                }

                v19 = (*(v12 + 112) + v16);
              }

              if ((*(v9 + 158) & 1) == 0 && BYTE1(v10[82].isa) == 1)
              {
                v153 = __nwlog_obj();
                if (os_log_type_enabled(v153, OS_LOG_TYPE_DEBUG))
                {
                  v154 = *(v9 + 488);
                  if (v154)
                  {
                    LODWORD(v154) = *(v154 + 424);
                  }

                  v155 = *(*(v9 + 480) + 372);
                  v156 = *(v9 + 860);
                  *buf = 136448002;
                  v358 = "nw_http1_connection_drain_outbound_frames";
                  v359 = 2082;
                  *v360 = v340;
                  *&v360[8] = 2080;
                  *&v360[10] = " ";
                  v361 = 1024;
                  *v362 = v155;
                  *&v362[4] = 1024;
                  *&v362[6] = v156;
                  LOWORD(v363) = 1024;
                  *(&v363 + 2) = v154;
                  HIWORD(v363) = 2048;
                  *v364 = v12;
                  *&v364[8] = 1024;
                  LODWORD(v365) = v18;
                  _os_log_impl(&dword_181A37000, v153, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> draining frame %p with length %u", buf, 0x42u);
                }
              }

              if (!v19 || !v18)
              {
                goto LABEL_25;
              }

              v339 = v12;
              if ((*(*(v9 + 488) + 428) & 0x200) == 0)
              {
                goto LABEL_42;
              }

              if ((*(v12 + 204) & 4) != 0)
              {
                break;
              }

              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              *buf = 136446466;
              v358 = "nw_http1_connection_drain_outbound_frames";
              v359 = 2048;
              *v360 = v12;
              LODWORD(v336) = 22;
              v30 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s frame %p has no metadata", buf, v336);
              v343[0] = OS_LOG_TYPE_ERROR;
              type[0] = OS_LOG_TYPE_DEFAULT;
              if (__nwlog_fault(v30, v343, type))
              {
                if (v343[0] == OS_LOG_TYPE_FAULT)
                {
                  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                  networkd_settings_init();
                  v31 = gLogObj;
                  v32 = v343[0];
                  if (os_log_type_enabled(gLogObj, v343[0]))
                  {
                    *buf = 136446466;
                    v358 = "nw_http1_connection_drain_outbound_frames";
                    v359 = 2048;
                    *v360 = v339;
                    v33 = v31;
                    v34 = v32;
                    v35 = "%{public}s frame %p has no metadata";
LABEL_196:
                    _os_log_impl(&dword_181A37000, v33, v34, v35, buf, 0x16u);
                  }
                }

                else if (type[0] == OS_LOG_TYPE_INFO)
                {
                  v90 = __nw_create_backtrace_string();
                  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                  networkd_settings_init();
                  v91 = gLogObj;
                  v92 = v343[0];
                  v93 = os_log_type_enabled(gLogObj, v343[0]);
                  if (v90)
                  {
                    if (v93)
                    {
                      *buf = 136446722;
                      v358 = "nw_http1_connection_drain_outbound_frames";
                      v359 = 2048;
                      *v360 = v339;
                      *&v360[8] = 2082;
                      *&v360[10] = v90;
                      _os_log_impl(&dword_181A37000, v91, v92, "%{public}s frame %p has no metadata, dumping backtrace:%{public}s", buf, 0x20u);
                    }

                    free(v90);
                    goto LABEL_197;
                  }

                  if (v93)
                  {
                    *buf = 136446466;
                    v358 = "nw_http1_connection_drain_outbound_frames";
                    v359 = 2048;
                    *v360 = v339;
                    v33 = v91;
                    v34 = v92;
                    v35 = "%{public}s frame %p has no metadata, no backtrace";
                    goto LABEL_196;
                  }
                }

                else
                {
                  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                  networkd_settings_init();
                  v98 = gLogObj;
                  v99 = v343[0];
                  if (os_log_type_enabled(gLogObj, v343[0]))
                  {
                    *buf = 136446466;
                    v358 = "nw_http1_connection_drain_outbound_frames";
                    v359 = 2048;
                    *v360 = v339;
                    v33 = v98;
                    v34 = v99;
                    v35 = "%{public}s frame %p has no metadata, backtrace limit exceeded";
                    goto LABEL_196;
                  }
                }
              }

LABEL_197:
              if (v30)
              {
                free(v30);
              }

              v12 = v339;
              if (!v339)
              {
                goto LABEL_363;
              }
            }

            if (*(v12 + 216))
            {
              goto LABEL_42;
            }

            nw_frame_unclaim(v12, a2, 0xAu, 7u);
            v88 = *(v12 + 112);
            if (!v88)
            {
              goto LABEL_153;
            }

            if ((*(v12 + 204) & 0x100) != 0 && g_channel_check_validity)
            {
              if (g_channel_check_validity(v12, *(v12 + 88)))
              {
                v88 = *(v12 + 112);
                goto LABEL_138;
              }

LABEL_153:
              v89 = 0;
            }

            else
            {
LABEL_138:
              v89 = v88 + *(v12 + 56);
            }

            v102 = *(v12 + 64);
            if (v102)
            {
              v103 = (*(v102 + 66) >> 6) & 1;
            }

            else
            {
              v103 = 0;
            }

            v104 = -1;
            v105 = v18;
            do
            {
              v106 = v104++;
              v107 = v105 > 0xF;
              v105 >>= 4;
            }

            while (v107);
            if (v89)
            {
              v108 = (v89 + v104);
              *(v108 + 1) = 2573;
              v109 = v18;
              do
              {
                if ((v109 & 0xF) >= 0xA)
                {
                  v110 = (v109 & 0xF) + 55;
                }

                else
                {
                  v110 = v109 & 0xF | 0x30;
                }

                *v108-- = v110;
                v107 = v109 > 0xF;
                v109 >>= 4;
              }

              while (v107);
              goto LABEL_165;
            }

            v192 = __nwlog_obj();
            *buf = 136446210;
            v358 = "nw_http1_connection_write_chunk_header";
            LODWORD(v336) = 12;
            v193 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v192, 16, "%{public}s called with null buffer", buf, v336);
            v343[0] = OS_LOG_TYPE_ERROR;
            type[0] = OS_LOG_TYPE_DEFAULT;
            if (!__nwlog_fault(v193, v343, type))
            {
              goto LABEL_339;
            }

            if (v343[0] == OS_LOG_TYPE_FAULT)
            {
              v194 = __nwlog_obj();
              v195 = v343[0];
              if (os_log_type_enabled(v194, v343[0]))
              {
                *buf = 136446210;
                v358 = "nw_http1_connection_write_chunk_header";
                v196 = v194;
                v197 = v195;
                v198 = "%{public}s called with null buffer";
                goto LABEL_338;
              }

              goto LABEL_339;
            }

            if (type[0] != OS_LOG_TYPE_INFO)
            {
              v219 = __nwlog_obj();
              v220 = v343[0];
              if (!os_log_type_enabled(v219, v343[0]))
              {
                goto LABEL_339;
              }

              *buf = 136446210;
              v358 = "nw_http1_connection_write_chunk_header";
              v196 = v219;
              v197 = v220;
              v198 = "%{public}s called with null buffer, backtrace limit exceeded";
              goto LABEL_338;
            }

            v206 = __nw_create_backtrace_string();
            v207 = __nwlog_obj();
            v208 = v343[0];
            v209 = os_log_type_enabled(v207, v343[0]);
            if (v206)
            {
              if (v209)
              {
                *buf = 136446466;
                v358 = "nw_http1_connection_write_chunk_header";
                v359 = 2082;
                *v360 = v206;
                _os_log_impl(&dword_181A37000, v207, v208, "%{public}s called with null buffer, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(v206);
              goto LABEL_339;
            }

            if (v209)
            {
              *buf = 136446210;
              v358 = "nw_http1_connection_write_chunk_header";
              v196 = v207;
              v197 = v208;
              v198 = "%{public}s called with null buffer, no backtrace";
LABEL_338:
              _os_log_impl(&dword_181A37000, v196, v197, v198, buf, 0xCu);
            }

LABEL_339:
            if (v193)
            {
              free(v193);
            }

LABEL_165:
            v111 = v104 + 3;
            if (v106 == 6)
            {
              v112 = 0;
              v113 = v18;
            }

            else
            {
              v113 = v18;
              memmove((v89 + v111), (v89 + 10), v18);
              v112 = 7 - v104;
            }

            v9 = v341;
            if (v89)
            {
              v114 = v89 + v111 + v113;
              *v114 = 2573;
              v10 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
              v12 = v339;
              if (v103)
              {
                *(v114 + 6) = 10;
                *(v114 + 2) = 218762544;
                goto LABEL_171;
              }

              goto LABEL_177;
            }

            v199 = __nwlog_obj();
            *buf = 136446210;
            v358 = "nw_http1_connection_write_chunk_trailer";
            LODWORD(v336) = 12;
            v200 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v199, 16, "%{public}s called with null buffer", buf, v336);
            v343[0] = OS_LOG_TYPE_ERROR;
            type[0] = OS_LOG_TYPE_DEFAULT;
            v10 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
            if (__nwlog_fault(v200, v343, type))
            {
              if (v343[0] != OS_LOG_TYPE_FAULT)
              {
                if (type[0] == OS_LOG_TYPE_INFO)
                {
                  v210 = __nw_create_backtrace_string();
                  v211 = __nwlog_obj();
                  v212 = v343[0];
                  v213 = os_log_type_enabled(v211, v343[0]);
                  if (v210)
                  {
                    if (v213)
                    {
                      *buf = 136446466;
                      v358 = "nw_http1_connection_write_chunk_trailer";
                      v359 = 2082;
                      *v360 = v210;
                      _os_log_impl(&dword_181A37000, v211, v212, "%{public}s called with null buffer, dumping backtrace:%{public}s", buf, 0x16u);
                    }

                    free(v210);
                    v9 = v341;
                    goto LABEL_344;
                  }

                  v9 = v341;
                  if (!v213)
                  {
                    goto LABEL_344;
                  }

                  *buf = 136446210;
                  v358 = "nw_http1_connection_write_chunk_trailer";
                  v203 = v211;
                  v204 = v212;
                  v205 = "%{public}s called with null buffer, no backtrace";
                }

                else
                {
                  v221 = __nwlog_obj();
                  v222 = v343[0];
                  v9 = v341;
                  if (!os_log_type_enabled(v221, v343[0]))
                  {
                    goto LABEL_344;
                  }

                  *buf = 136446210;
                  v358 = "nw_http1_connection_write_chunk_trailer";
                  v203 = v221;
                  v204 = v222;
                  v205 = "%{public}s called with null buffer, backtrace limit exceeded";
                }

LABEL_343:
                _os_log_impl(&dword_181A37000, v203, v204, v205, buf, 0xCu);
                goto LABEL_344;
              }

              v201 = __nwlog_obj();
              v202 = v343[0];
              if (os_log_type_enabled(v201, v343[0]))
              {
                *buf = 136446210;
                v358 = "nw_http1_connection_write_chunk_trailer";
                v203 = v201;
                v204 = v202;
                v205 = "%{public}s called with null buffer";
                goto LABEL_343;
              }
            }

LABEL_344:
            if (v200)
            {
              free(v200);
            }

            v12 = v339;
LABEL_171:
            v115 = v103 ^ 1;
            if (*(v9 + 872) >= 0)
            {
              v115 = 1;
            }

            if ((v115 & 1) == 0)
            {
              if ((*(v9 + 158) & 1) == 0 && BYTE1(v10[82].isa) == 1)
              {
                v215 = __nwlog_obj();
                if (os_log_type_enabled(v215, OS_LOG_TYPE_DEBUG))
                {
                  v216 = *(v9 + 488);
                  if (v216)
                  {
                    LODWORD(v216) = *(v216 + 424);
                  }

                  v9 = v341;
                  v217 = *(*(v341 + 480) + 372);
                  v218 = *(v341 + 860);
                  *buf = 136447746;
                  v358 = "nw_http1_connection_drain_outbound_frames";
                  v359 = 2082;
                  *v360 = v340;
                  *&v360[8] = 2080;
                  *&v360[10] = " ";
                  v361 = 1024;
                  *v362 = v217;
                  *&v362[4] = 1024;
                  *&v362[6] = v218;
                  LOWORD(v363) = 1024;
                  *(&v363 + 2) = v216;
                  HIWORD(v363) = 2048;
                  v12 = v339;
                  *v364 = v339;
                  _os_log_impl(&dword_181A37000, v215, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> pending final chunk written to frame %p", buf, 0x3Cu);
                }
              }

              *(v9 + 872) &= ~0x8000u;
            }

LABEL_177:
            if (v103)
            {
              v116 = 0;
            }

            else
            {
              v116 = 5;
            }

            v117 = v112 + v116;
            if (!__CFADD__(v112, v116))
            {
              v11 = v337;
              v18 = v18;
              if (!v117)
              {
                if (!*(v12 + 112))
                {
LABEL_326:
                  v19 = 0;
                  if ((*(v12 + 204) & 4) != 0)
                  {
                    goto LABEL_327;
                  }

LABEL_237:
                  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                  networkd_settings_init();
                  *buf = 136446466;
                  v358 = "nw_http1_frame_metadata_reset";
                  v359 = 2048;
                  *v360 = v12;
                  LODWORD(v336) = 22;
                  v141 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s frame %p has no metadata", buf, v336);
                  v343[0] = OS_LOG_TYPE_ERROR;
                  type[0] = OS_LOG_TYPE_DEFAULT;
                  if (__nwlog_fault(v141, v343, type))
                  {
                    if (v343[0] != OS_LOG_TYPE_FAULT)
                    {
                      if (type[0] == OS_LOG_TYPE_INFO)
                      {
                        v147 = __nw_create_backtrace_string();
                        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                        networkd_settings_init();
                        v148 = gLogObj;
                        v149 = v343[0];
                        v150 = os_log_type_enabled(gLogObj, v343[0]);
                        if (v147)
                        {
                          if (v150)
                          {
                            *buf = 136446722;
                            v358 = "nw_http1_frame_metadata_reset";
                            v359 = 2048;
                            *v360 = v339;
                            *&v360[8] = 2082;
                            *&v360[10] = v147;
                            _os_log_impl(&dword_181A37000, v148, v149, "%{public}s frame %p has no metadata, dumping backtrace:%{public}s", buf, 0x20u);
                          }

                          free(v147);
                          goto LABEL_251;
                        }

                        if (!v150)
                        {
                          goto LABEL_251;
                        }

                        *buf = 136446466;
                        v358 = "nw_http1_frame_metadata_reset";
                        v359 = 2048;
                        *v360 = v339;
                        v144 = v148;
                        v145 = v149;
                        v146 = "%{public}s frame %p has no metadata, no backtrace";
                      }

                      else
                      {
                        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                        networkd_settings_init();
                        v151 = gLogObj;
                        v152 = v343[0];
                        if (!os_log_type_enabled(gLogObj, v343[0]))
                        {
                          goto LABEL_251;
                        }

                        *buf = 136446466;
                        v358 = "nw_http1_frame_metadata_reset";
                        v359 = 2048;
                        *v360 = v339;
                        v144 = v151;
                        v145 = v152;
                        v146 = "%{public}s frame %p has no metadata, backtrace limit exceeded";
                      }

LABEL_250:
                      _os_log_impl(&dword_181A37000, v144, v145, v146, buf, 0x16u);
                      goto LABEL_251;
                    }

                    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                    networkd_settings_init();
                    v142 = gLogObj;
                    v143 = v343[0];
                    if (os_log_type_enabled(gLogObj, v343[0]))
                    {
                      *buf = 136446466;
                      v358 = "nw_http1_frame_metadata_reset";
                      v359 = 2048;
                      *v360 = v339;
                      v144 = v142;
                      v145 = v143;
                      v146 = "%{public}s frame %p has no metadata";
                      goto LABEL_250;
                    }
                  }

LABEL_251:
                  if (v141)
                  {
                    free(v141);
                  }

                  v11 = v337;
                  v12 = v339;
LABEL_42:
                  v20 = *(v12 + 64);
                  if (!v20)
                  {
                    goto LABEL_57;
                  }

                  if ((*(v20 + 66) & 0x40) != 0 && (*(v9 + 158) & 1) == 0 && BYTE1(v10[82].isa) == 1)
                  {
                    v182 = __nwlog_obj();
                    if (os_log_type_enabled(v182, OS_LOG_TYPE_DEBUG))
                    {
                      v183 = *(v9 + 488);
                      if (v183)
                      {
                        LODWORD(v183) = *(v183 + 424);
                      }

                      v184 = *(*(v9 + 480) + 372);
                      v185 = *(v9 + 860);
                      *buf = 136447746;
                      v358 = "nw_http1_connection_drain_outbound_frames";
                      v359 = 2082;
                      *v360 = v340;
                      *&v360[8] = 2080;
                      *&v360[10] = " ";
                      v361 = 1024;
                      *v362 = v184;
                      *&v362[4] = 1024;
                      *&v362[6] = v185;
                      LOWORD(v363) = 1024;
                      *(&v363 + 2) = v183;
                      HIWORD(v363) = 2048;
                      *v364 = v12;
                      _os_log_impl(&dword_181A37000, v182, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> draining output frame %p, complete", buf, 0x3Cu);
                    }
                  }

                  v21 = *(v12 + 64);
                  if (v21)
                  {
                    __len = (*(v21 + 66) >> 6) & 1;
                    if (!v19)
                    {
                      goto LABEL_48;
                    }

LABEL_58:
                    if (v18)
                    {
                      v36 = *(v9 + 32);
                      if (v36)
                      {
                        if ((*(v9 + 158) & 1) == 0 && BYTE1(v10[82].isa) == 1)
                        {
                          v163 = __nwlog_obj();
                          if (os_log_type_enabled(v163, OS_LOG_TYPE_DEBUG))
                          {
                            v164 = *(v9 + 488);
                            if (v164)
                            {
                              LODWORD(v164) = *(v164 + 424);
                            }

                            v165 = *(*(v9 + 480) + 372);
                            v166 = *(v9 + 860);
                            *buf = 136447746;
                            v358 = "nw_http1_connection_send_bytes";
                            v359 = 2082;
                            *v360 = v340;
                            *&v360[8] = 2080;
                            *&v360[10] = " ";
                            v361 = 1024;
                            *v362 = v165;
                            *&v362[4] = 1024;
                            *&v362[6] = v166;
                            LOWORD(v363) = 1024;
                            *(&v363 + 2) = v164;
                            HIWORD(v363) = 1024;
                            *v364 = v18;
                            _os_log_impl(&dword_181A37000, v163, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> sending %u bytes", buf, 0x38u);
                          }
                        }

                        v37 = v18;
LABEL_66:
                        v355 = 0;
                        v356 = &v355;
                        v353 = 0;
                        v354 = &v353;
                        output_frames = nw_protocol_get_output_frames(v36, v9, 1, v18, 0xFFFFFFFFLL, &v355);
                        v42 = v355;
                        if (v355)
                        {
                          v43 = output_frames == 0;
                        }

                        else
                        {
                          v43 = 1;
                        }

                        if (v43)
                        {
                          v11 = v337;
                          if (output_frames)
                          {
                            v79 = output_frames;
                            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                            networkd_settings_init();
                            *buf = 136446466;
                            v358 = "nw_http1_connection_send_bytes";
                            v359 = 1024;
                            v80 = v79;
                            *v360 = v79;
                            LODWORD(v336) = 18;
                            v81 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s output handler reported %u frames to write, but array is empty", buf, v336);
                            type[0] = OS_LOG_TYPE_ERROR;
                            v352 = 0;
                            if (!__nwlog_fault(v81, type, &v352))
                            {
                              goto LABEL_204;
                            }

                            if (type[0] != OS_LOG_TYPE_FAULT)
                            {
                              if (v352 == 1)
                              {
                                v94 = __nw_create_backtrace_string();
                                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                                networkd_settings_init();
                                v95 = gLogObj;
                                v96 = type[0];
                                v97 = os_log_type_enabled(gLogObj, type[0]);
                                if (v94)
                                {
                                  if (v97)
                                  {
                                    *buf = 136446722;
                                    v358 = "nw_http1_connection_send_bytes";
                                    v359 = 1024;
                                    *v360 = v80;
                                    *&v360[4] = 2082;
                                    *&v360[6] = v94;
                                    _os_log_impl(&dword_181A37000, v95, v96, "%{public}s output handler reported %u frames to write, but array is empty, dumping backtrace:%{public}s", buf, 0x1Cu);
                                  }

                                  free(v94);
                                  goto LABEL_204;
                                }

                                if (!v97)
                                {
                                  goto LABEL_204;
                                }

                                *buf = 136446466;
                                v358 = "nw_http1_connection_send_bytes";
                                v359 = 1024;
                                *v360 = v80;
                                v84 = v95;
                                v85 = v96;
                                v86 = "%{public}s output handler reported %u frames to write, but array is empty, no backtrace";
                              }

                              else
                              {
                                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                                networkd_settings_init();
                                v100 = gLogObj;
                                v101 = type[0];
                                if (!os_log_type_enabled(gLogObj, type[0]))
                                {
                                  goto LABEL_204;
                                }

                                *buf = 136446466;
                                v358 = "nw_http1_connection_send_bytes";
                                v359 = 1024;
                                *v360 = v80;
                                v84 = v100;
                                v85 = v101;
                                v86 = "%{public}s output handler reported %u frames to write, but array is empty, backtrace limit exceeded";
                              }

LABEL_203:
                              _os_log_impl(&dword_181A37000, v84, v85, v86, buf, 0x12u);
                              goto LABEL_204;
                            }

                            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                            networkd_settings_init();
                            v82 = gLogObj;
                            v83 = type[0];
                            if (os_log_type_enabled(gLogObj, type[0]))
                            {
                              *buf = 136446466;
                              v358 = "nw_http1_connection_send_bytes";
                              v359 = 1024;
                              *v360 = v80;
                              v84 = v82;
                              v85 = v83;
                              v86 = "%{public}s output handler reported %u frames to write, but array is empty";
                              goto LABEL_203;
                            }

LABEL_204:
                            if (v81)
                            {
                              free(v81);
                            }
                          }

                          if ((*(v9 + 158) & 1) == 0)
                          {
                            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                            networkd_settings_init();
                            v128 = gLogObj;
                            if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEBUG))
                            {
                              v129 = *(v9 + 488);
                              if (v129)
                              {
                                LODWORD(v129) = *(v129 + 424);
                              }

                              v130 = *(*(v9 + 480) + 372);
                              v131 = *(v9 + 860);
                              *buf = 136447746;
                              v358 = "nw_http1_connection_send_bytes";
                              v359 = 2082;
                              *v360 = v340;
                              *&v360[8] = 2080;
                              *&v360[10] = " ";
                              v361 = 1024;
                              *v362 = v130;
                              *&v362[4] = 1024;
                              *&v362[6] = v131;
                              LOWORD(v363) = 1024;
                              *(&v363 + 2) = v129;
                              HIWORD(v363) = 1024;
                              *v364 = v18;
                              _os_log_impl(&dword_181A37000, v128, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> output handler refused frame request for frames of length %u", buf, 0x38u);
                            }
                          }

                          v132 = v18 - v37;
                          v10 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
                          if (v132 == v18)
                          {
LABEL_212:
                            nw_http_transaction_metadata_increment_outbound_body_transfer_size(*(*(v9 + 488) + 352), v18);
                            v133 = *(v9 + 488);
                            v134 = *(v133 + 176);
                            *(v133 + 176) = v134 + v18;
                            if (__CFADD__(v134, v18))
                            {
                              if (BYTE1(v10[82].isa) == 1)
                              {
                                v180 = __nwlog_obj();
                                if (os_log_type_enabled(v180, OS_LOG_TYPE_DEBUG))
                                {
                                  v181 = *(v133 + 176);
                                  *buf = 136446978;
                                  v358 = "increment_outbound_body_size";
                                  v359 = 2082;
                                  *v360 = "outbound_body_size";
                                  *&v360[8] = 2048;
                                  *&v360[10] = v18;
                                  v361 = 2048;
                                  *v362 = v181;
                                  _os_log_impl(&dword_181A37000, v180, OS_LOG_TYPE_DEBUG, "%{public}s Overflow: %{public}s, increment %llu, result %llu", buf, 0x2Au);
                                }
                              }

                              *(v133 + 176) = -1;
                            }

                            v12 = v339;
                            v135 = *(v339 + 64);
                            if (v135)
                            {
                              if ((*(v135 + 66) & 0x40) != 0)
                              {
                                *(*(v9 + 488) + 428) |= 0x800u;
                                *(v9 + 872) |= 0x20u;
                                nw_http_transaction_metadata_mark_outbound_message_end(*(*(v9 + 488) + 352));
                                v136 = *(v9 + 488);
                                if (*(v136 + 168) == 1 && *(v136 + 160) != *(v136 + 176))
                                {
                                  if ((*(v136 + 158) & 1) == 0)
                                  {
                                    v227 = __nwlog_obj();
                                    v228 = os_log_type_enabled(v227, OS_LOG_TYPE_ERROR);
                                    v136 = *(v9 + 488);
                                    if (v228)
                                    {
                                      v229 = *(v136 + 256);
                                      if (v229)
                                      {
                                        LODWORD(v229) = *(v229 + 860);
                                      }

                                      v230 = *(*(v136 + 248) + 372);
                                      v231 = *(v136 + 424);
                                      if (*(v136 + 168) == 1)
                                      {
                                        v232 = *(v136 + 160);
                                      }

                                      else
                                      {
                                        v232 = -1;
                                      }

                                      v233 = *(v136 + 176);
                                      *buf = 136448002;
                                      v358 = "nw_http1_connection_drain_outbound_frames";
                                      v359 = 2082;
                                      *v360 = v136 + 74;
                                      *&v360[8] = 2080;
                                      *&v360[10] = " ";
                                      v361 = 1024;
                                      *v362 = v230;
                                      *&v362[4] = 1024;
                                      *&v362[6] = v229;
                                      LOWORD(v363) = 1024;
                                      *(&v363 + 2) = v231;
                                      HIWORD(v363) = 2048;
                                      *v364 = v232;
                                      *&v364[8] = 2048;
                                      v365 = v233;
                                      _os_log_impl(&dword_181A37000, v227, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u:c%u:s%u> Content length header %llu does not equal body size %llu", buf, 0x46u);
                                      v136 = *(v9 + 488);
                                    }
                                  }

                                  nw_protocol_error(*(v136 + 48), v136);
                                  nw_protocol_disconnected(*(*(v9 + 488) + 48), *(v9 + 488));
LABEL_362:
                                  nw_frame_claim(v12, v24, v18, 0);
                                  nw_frame_array_prepend(v11, 1, v12);
LABEL_363:
                                  v234 = *(v9 + 872);
                                  if ((v234 & 0x80000000) == 0 || *v11)
                                  {
LABEL_365:
                                    v235 = *(v9 + 488);
                                    if (v235)
                                    {
                                      nw_protocol_output_available(*(v235 + 48), v235);
                                    }

                                    else if ((*(v9 + 158) & 1) == 0)
                                    {
                                      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                                      networkd_settings_init();
                                      v236 = gLogObj;
                                      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEBUG))
                                      {
                                        v237 = *(v9 + 488);
                                        v238 = *(*(v9 + 480) + 372);
                                        v239 = *(v9 + 860);
                                        if (v237)
                                        {
                                          LODWORD(v237) = *(v237 + 424);
                                        }

                                        *buf = 136447490;
                                        v358 = "nw_protocol_http1_output_available";
                                        v359 = 2082;
                                        *v360 = v9 + 74;
                                        *&v360[8] = 2080;
                                        *&v360[10] = " ";
                                        v361 = 1024;
                                        *v362 = v238;
                                        *&v362[4] = 1024;
                                        *&v362[6] = v239;
                                        LOWORD(v363) = 1024;
                                        *(&v363 + 2) = v237;
                                        _os_log_impl(&dword_181A37000, v236, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> not sending output_available for connection without stream", buf, 0x32u);
                                      }
                                    }

                                    return;
                                  }

                                  *(v9 + 872) = v234 & 0x7FFF;
                                  if ((*(v9 + 158) & 1) == 0 && BYTE1(v10[82].isa) == 1)
                                  {
                                    v322 = __nwlog_obj();
                                    if (os_log_type_enabled(v322, OS_LOG_TYPE_DEBUG))
                                    {
                                      v323 = *(v9 + 488);
                                      v324 = *(*(v9 + 480) + 372);
                                      v325 = *(v9 + 860);
                                      if (v323)
                                      {
                                        LODWORD(v323) = *(v323 + 424);
                                      }

                                      *buf = 136447490;
                                      v358 = "nw_http1_connection_send_final_chunk";
                                      v359 = 2082;
                                      *v360 = v9 + 74;
                                      *&v360[8] = 2080;
                                      *&v360[10] = " ";
                                      v361 = 1024;
                                      *v362 = v324;
                                      *&v362[4] = 1024;
                                      *&v362[6] = v325;
                                      LOWORD(v363) = 1024;
                                      *(&v363 + 2) = v323;
                                      _os_log_impl(&dword_181A37000, v322, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> requesting new frame for final chunk", buf, 0x32u);
                                      v9 = v341;
                                    }
                                  }

                                  v240 = *(v9 + 32);
                                  if (v240)
                                  {
                                    *v343 = 0;
                                    v344 = v343;
                                    v241 = nw_protocol_get_output_frames(v240, v9, 5, 5, 1, v343);
                                    v242 = v241;
                                    v243 = *v343;
                                    if (*v343 && v241)
                                    {
                                      *type = 0;
                                      v244 = nw_frame_unclaimed_bytes(*v343, type);
                                      *v244 = 218762544;
                                      *(v244 + 4) = 10;
                                      if (nw_frame_claim(v243, v245, 5, 0))
                                      {
                                        nw_frame_collapse(v243);
                                        nw_frame_unclaim(v243, v246, 5u, 0);
                                        if (nw_protocol_finalize_output_frames(v240, v343))
                                        {
                                          *(*(v9 + 488) + 428) |= 0x800u;
                                          *(v9 + 872) |= 0x20u;
                                          nw_http_transaction_metadata_mark_outbound_message_end(*(*(v9 + 488) + 352));
                                          v247 = *(v9 + 488);
                                          if (*(v247 + 168) == 1 && *(v247 + 160) != *(v247 + 176))
                                          {
                                            if ((*(v247 + 158) & 1) == 0)
                                            {
                                              v248 = __nwlog_obj();
                                              v249 = os_log_type_enabled(v248, OS_LOG_TYPE_ERROR);
                                              v247 = *(v9 + 488);
                                              if (v249)
                                              {
                                                v250 = *(v247 + 256);
                                                if (v250)
                                                {
                                                  LODWORD(v250) = *(v250 + 860);
                                                }

                                                v251 = *(*(v247 + 248) + 372);
                                                v252 = *(v247 + 424);
                                                if (*(v247 + 168) == 1)
                                                {
                                                  v253 = *(v247 + 160);
                                                }

                                                else
                                                {
                                                  v253 = -1;
                                                }

                                                v286 = *(v247 + 176);
                                                *buf = 136448002;
                                                v358 = "nw_http1_connection_send_final_chunk";
                                                v359 = 2082;
                                                *v360 = v247 + 74;
                                                *&v360[8] = 2080;
                                                *&v360[10] = " ";
                                                v361 = 1024;
                                                *v362 = v251;
                                                *&v362[4] = 1024;
                                                *&v362[6] = v250;
                                                LOWORD(v363) = 1024;
                                                *(&v363 + 2) = v252;
                                                HIWORD(v363) = 2048;
                                                *v364 = v253;
                                                *&v364[8] = 2048;
                                                v365 = v286;
                                                _os_log_impl(&dword_181A37000, v248, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u:c%u:s%u> Content length header %llu does not equal body size %llu", buf, 0x46u);
                                                v247 = *(v9 + 488);
                                              }
                                            }

                                            nw_protocol_error(*(v247 + 48), v247);
                                            nw_protocol_disconnected(*(*(v9 + 488) + 48), *(v9 + 488));
                                          }
                                        }

                                        goto LABEL_365;
                                      }

                                      v259 = __nwlog_obj();
                                      *buf = 136446466;
                                      v358 = "nw_http1_connection_send_final_chunk";
                                      v359 = 1024;
                                      *v360 = 5;
                                      LODWORD(v336) = 18;
                                      v260 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v259, 16, "%{public}s claiming frame with %u bytes failed", buf, v336);
                                      LOBYTE(v355) = 16;
                                      LOBYTE(v353) = 0;
                                      if (!__nwlog_fault(v260, &v355, &v353))
                                      {
                                        goto LABEL_425;
                                      }

                                      if (v355 == 17)
                                      {
                                        v261 = __nwlog_obj();
                                        v262 = v355;
                                        if (os_log_type_enabled(v261, v355))
                                        {
                                          *buf = 136446466;
                                          v358 = "nw_http1_connection_send_final_chunk";
                                          v359 = 1024;
                                          *v360 = 5;
                                          v263 = "%{public}s claiming frame with %u bytes failed";
                                          goto LABEL_423;
                                        }

                                        goto LABEL_425;
                                      }

                                      if (v353 == 1)
                                      {
                                        v266 = __nw_create_backtrace_string();
                                        v261 = __nwlog_obj();
                                        v262 = v355;
                                        v267 = os_log_type_enabled(v261, v355);
                                        if (v266)
                                        {
                                          if (v267)
                                          {
                                            *buf = 136446722;
                                            v358 = "nw_http1_connection_send_final_chunk";
                                            v359 = 1024;
                                            *v360 = 5;
                                            *&v360[4] = 2082;
                                            *&v360[6] = v266;
                                            _os_log_impl(&dword_181A37000, v261, v262, "%{public}s claiming frame with %u bytes failed, dumping backtrace:%{public}s", buf, 0x1Cu);
                                          }

                                          free(v266);
                                          if (!v260)
                                          {
                                            goto LABEL_365;
                                          }

                                          goto LABEL_426;
                                        }

                                        if (!v267)
                                        {
                                          goto LABEL_425;
                                        }

                                        *buf = 136446466;
                                        v358 = "nw_http1_connection_send_final_chunk";
                                        v359 = 1024;
                                        *v360 = 5;
                                        v263 = "%{public}s claiming frame with %u bytes failed, no backtrace";
                                      }

                                      else
                                      {
                                        v261 = __nwlog_obj();
                                        v262 = v355;
                                        if (!os_log_type_enabled(v261, v355))
                                        {
                                          goto LABEL_425;
                                        }

                                        *buf = 136446466;
                                        v358 = "nw_http1_connection_send_final_chunk";
                                        v359 = 1024;
                                        *v360 = 5;
                                        v263 = "%{public}s claiming frame with %u bytes failed, backtrace limit exceeded";
                                      }

LABEL_423:
                                      v272 = v261;
                                      v273 = v262;
                                      v274 = 18;
LABEL_424:
                                      _os_log_impl(&dword_181A37000, v272, v273, v263, buf, v274);
                                      goto LABEL_425;
                                    }

                                    if (v241)
                                    {
                                      v254 = __nwlog_obj();
                                      *buf = 136446466;
                                      v358 = "nw_http1_connection_send_final_chunk";
                                      v359 = 1024;
                                      *v360 = v242;
                                      LODWORD(v336) = 18;
                                      v255 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v254, 16, "%{public}s output handler reported %u frames to write, but array is empty", buf, v336);
                                      type[0] = OS_LOG_TYPE_ERROR;
                                      LOBYTE(v355) = 0;
                                      if (!__nwlog_fault(v255, type, &v355))
                                      {
                                        goto LABEL_414;
                                      }

                                      if (type[0] != OS_LOG_TYPE_FAULT)
                                      {
                                        if (v355 == 1)
                                        {
                                          v264 = __nw_create_backtrace_string();
                                          v256 = __nwlog_obj();
                                          v257 = type[0];
                                          v265 = os_log_type_enabled(v256, type[0]);
                                          if (v264)
                                          {
                                            if (v265)
                                            {
                                              *buf = 136446722;
                                              v358 = "nw_http1_connection_send_final_chunk";
                                              v359 = 1024;
                                              *v360 = v242;
                                              *&v360[4] = 2082;
                                              *&v360[6] = v264;
                                              _os_log_impl(&dword_181A37000, v256, v257, "%{public}s output handler reported %u frames to write, but array is empty, dumping backtrace:%{public}s", buf, 0x1Cu);
                                            }

                                            free(v264);
                                            goto LABEL_414;
                                          }

                                          if (!v265)
                                          {
                                            goto LABEL_414;
                                          }

                                          *buf = 136446466;
                                          v358 = "nw_http1_connection_send_final_chunk";
                                          v359 = 1024;
                                          *v360 = v242;
                                          v258 = "%{public}s output handler reported %u frames to write, but array is empty, no backtrace";
                                        }

                                        else
                                        {
                                          v256 = __nwlog_obj();
                                          v257 = type[0];
                                          if (!os_log_type_enabled(v256, type[0]))
                                          {
                                            goto LABEL_414;
                                          }

                                          *buf = 136446466;
                                          v358 = "nw_http1_connection_send_final_chunk";
                                          v359 = 1024;
                                          *v360 = v242;
                                          v258 = "%{public}s output handler reported %u frames to write, but array is empty, backtrace limit exceeded";
                                        }

LABEL_413:
                                        _os_log_impl(&dword_181A37000, v256, v257, v258, buf, 0x12u);
                                        goto LABEL_414;
                                      }

                                      v256 = __nwlog_obj();
                                      v257 = type[0];
                                      if (os_log_type_enabled(v256, type[0]))
                                      {
                                        *buf = 136446466;
                                        v358 = "nw_http1_connection_send_final_chunk";
                                        v359 = 1024;
                                        *v360 = v242;
                                        v258 = "%{public}s output handler reported %u frames to write, but array is empty";
                                        goto LABEL_413;
                                      }

LABEL_414:
                                      if (v255)
                                      {
                                        free(v255);
                                      }
                                    }

                                    if ((*(v9 + 158) & 1) == 0)
                                    {
                                      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                                      networkd_settings_init();
                                      v268 = gLogObj;
                                      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEBUG))
                                      {
                                        v269 = *(v9 + 488);
                                        v270 = *(*(v9 + 480) + 372);
                                        v271 = *(v9 + 860);
                                        if (v269)
                                        {
                                          LODWORD(v269) = *(v269 + 424);
                                        }

                                        *buf = 136447746;
                                        v358 = "nw_http1_connection_send_final_chunk";
                                        v359 = 2082;
                                        *v360 = v9 + 74;
                                        *&v360[8] = 2080;
                                        *&v360[10] = " ";
                                        v361 = 1024;
                                        *v362 = v270;
                                        *&v362[4] = 1024;
                                        *&v362[6] = v271;
                                        LOWORD(v363) = 1024;
                                        *(&v363 + 2) = v269;
                                        HIWORD(v363) = 1024;
                                        *v364 = 5;
                                        _os_log_impl(&dword_181A37000, v268, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> output handler refused frame request for frames of length %u", buf, 0x38u);
                                      }
                                    }

                                    goto LABEL_365;
                                  }

                                  v317 = __nwlog_obj();
                                  *buf = 136446210;
                                  v358 = "nw_http1_connection_send_final_chunk";
                                  LODWORD(v336) = 12;
                                  v318 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v317, 16, "%{public}s called with null output_handler", buf, v336);
                                  v343[0] = OS_LOG_TYPE_ERROR;
                                  type[0] = OS_LOG_TYPE_DEFAULT;
                                  if (!__nwlog_fault(v318, v343, type))
                                  {
                                    goto LABEL_598;
                                  }

                                  if (v343[0] == OS_LOG_TYPE_FAULT)
                                  {
                                    v319 = __nwlog_obj();
                                    v320 = v343[0];
                                    if (os_log_type_enabled(v319, v343[0]))
                                    {
                                      *buf = 136446210;
                                      v358 = "nw_http1_connection_send_final_chunk";
                                      v321 = "%{public}s called with null output_handler";
                                      goto LABEL_597;
                                    }

                                    goto LABEL_598;
                                  }

                                  if (type[0] == OS_LOG_TYPE_INFO)
                                  {
                                    v334 = __nw_create_backtrace_string();
                                    v319 = __nwlog_obj();
                                    v320 = v343[0];
                                    v335 = os_log_type_enabled(v319, v343[0]);
                                    if (v334)
                                    {
                                      if (v335)
                                      {
                                        *buf = 136446466;
                                        v358 = "nw_http1_connection_send_final_chunk";
                                        v359 = 2082;
                                        *v360 = v334;
                                        _os_log_impl(&dword_181A37000, v319, v320, "%{public}s called with null output_handler, dumping backtrace:%{public}s", buf, 0x16u);
                                      }

                                      free(v334);
                                      goto LABEL_598;
                                    }

                                    if (!v335)
                                    {
LABEL_598:
                                      if (v318)
                                      {
                                        free(v318);
                                      }

                                      v9 = v341;
                                      goto LABEL_365;
                                    }

                                    *buf = 136446210;
                                    v358 = "nw_http1_connection_send_final_chunk";
                                    v321 = "%{public}s called with null output_handler, no backtrace";
                                  }

                                  else
                                  {
                                    v319 = __nwlog_obj();
                                    v320 = v343[0];
                                    if (!os_log_type_enabled(v319, v343[0]))
                                    {
                                      goto LABEL_598;
                                    }

                                    *buf = 136446210;
                                    v358 = "nw_http1_connection_send_final_chunk";
                                    v321 = "%{public}s called with null output_handler, backtrace limit exceeded";
                                  }

LABEL_597:
                                  _os_log_impl(&dword_181A37000, v319, v320, v321, buf, 0xCu);
                                  goto LABEL_598;
                                }
                              }
                            }

LABEL_25:
                            *(v12 + 80) = 0;
                            *(v12 + 88) = 0;
                            nw_frame_cache_return_frame(v9 + 696, v12);
                            v12 = *v11;
                            if (!*v11)
                            {
                              goto LABEL_363;
                            }

                            goto LABEL_26;
                          }

LABEL_347:
                          if ((*(v9 + 158) & 1) == 0)
                          {
                            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                            networkd_settings_init();
                            v223 = gLogObj;
                            if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEFAULT))
                            {
                              v224 = *(v9 + 488);
                              v225 = *(*(v9 + 480) + 372);
                              v226 = *(v9 + 860);
                              if (v224)
                              {
                                LODWORD(v224) = *(v224 + 424);
                              }

                              *buf = 136448002;
                              v358 = "nw_http1_connection_drain_outbound_frames";
                              v359 = 2082;
                              *v360 = v340;
                              *&v360[8] = 2080;
                              *&v360[10] = " ";
                              v361 = 1024;
                              *v362 = v225;
                              *&v362[4] = 1024;
                              *&v362[6] = v226;
                              LOWORD(v363) = 1024;
                              *(&v363 + 2) = v224;
                              HIWORD(v363) = 1024;
                              *v364 = v18;
                              *&v364[4] = 1024;
                              *&v364[6] = v132;
                              _os_log_impl(&dword_181A37000, v223, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}s%s<i%u:c%u:s%u> could not send pending output frame of length %u sent %u", buf, 0x3Eu);
                            }
                          }

                          LODWORD(v18) = v132;
                          v12 = v339;
                          goto LABEL_362;
                        }

                        while (1)
                        {
                          v44 = *(v42 + 32);
                          if (v44 || *(v42 + 40))
                          {
                            v45 = *(v42 + 112);
                            if (!v45)
                            {
                              goto LABEL_80;
                            }
                          }

                          else
                          {
                            v44 = 0;
                            v45 = *(v42 + 112);
                            if (!v45)
                            {
                              goto LABEL_80;
                            }
                          }

                          if ((*(v42 + 204) & 0x100) != 0 && g_channel_check_validity && !g_channel_check_validity(v42, *(v42 + 88)))
                          {
                            LODWORD(v45) = 0;
LABEL_80:
                            v47 = 0;
                            goto LABEL_81;
                          }

                          LODWORD(v45) = *(v42 + 52);
                          v46 = *(v42 + 56);
                          if (v45)
                          {
                            LODWORD(v45) = v45 - (v46 + *(v42 + 60));
                          }

                          v47 = (*(v42 + 112) + v46);
LABEL_81:
                          if (v45 >= v37)
                          {
                            v48 = v37;
                          }

                          else
                          {
                            v48 = v45;
                          }

                          memcpy(v47, v19, v48);
                          v37 -= v48;
                          v19 += v48;
                          if (!nw_frame_claim(v42, v49, v48, 0))
                          {
                            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                            networkd_settings_init();
                            *buf = 136446466;
                            v358 = "nw_http1_connection_send_bytes";
                            v359 = 1024;
                            *v360 = v48;
                            LODWORD(v336) = 18;
                            v55 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s claiming frame with %u bytes failed", buf, v336);
                            type[0] = OS_LOG_TYPE_ERROR;
                            v352 = 0;
                            if (!__nwlog_fault(v55, type, &v352))
                            {
                              goto LABEL_105;
                            }

                            if (type[0] == OS_LOG_TYPE_FAULT)
                            {
                              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                              networkd_settings_init();
                              v56 = gLogObj;
                              v57 = type[0];
                              if (os_log_type_enabled(gLogObj, type[0]))
                              {
                                *buf = 136446466;
                                v358 = "nw_http1_connection_send_bytes";
                                v359 = 1024;
                                *v360 = v48;
                                v58 = v56;
                                v59 = v57;
                                v60 = "%{public}s claiming frame with %u bytes failed";
                                goto LABEL_104;
                              }

                              goto LABEL_105;
                            }

                            if (v352 != 1)
                            {
                              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                              networkd_settings_init();
                              v65 = gLogObj;
                              v66 = type[0];
                              if (!os_log_type_enabled(gLogObj, type[0]))
                              {
                                goto LABEL_105;
                              }

                              *buf = 136446466;
                              v358 = "nw_http1_connection_send_bytes";
                              v359 = 1024;
                              *v360 = v48;
                              v58 = v65;
                              v59 = v66;
                              v60 = "%{public}s claiming frame with %u bytes failed, backtrace limit exceeded";
LABEL_104:
                              _os_log_impl(&dword_181A37000, v58, v59, v60, buf, 0x12u);
                              goto LABEL_105;
                            }

                            v61 = __nw_create_backtrace_string();
                            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                            networkd_settings_init();
                            v62 = gLogObj;
                            v63 = type[0];
                            v64 = os_log_type_enabled(gLogObj, type[0]);
                            if (v61)
                            {
                              if (v64)
                              {
                                *buf = 136446722;
                                v358 = "nw_http1_connection_send_bytes";
                                v359 = 1024;
                                *v360 = v48;
                                *&v360[4] = 2082;
                                *&v360[6] = v61;
                                _os_log_impl(&dword_181A37000, v62, v63, "%{public}s claiming frame with %u bytes failed, dumping backtrace:%{public}s", buf, 0x1Cu);
                              }

                              free(v61);
                              goto LABEL_105;
                            }

                            if (v64)
                            {
                              *buf = 136446466;
                              v358 = "nw_http1_connection_send_bytes";
                              v359 = 1024;
                              *v360 = v48;
                              v58 = v62;
                              v59 = v63;
                              v60 = "%{public}s claiming frame with %u bytes failed, no backtrace";
                              goto LABEL_104;
                            }

LABEL_105:
                            if (v55)
                            {
                              free(v55);
                            }

                            v9 = v341;
LABEL_108:
                            v67 = v354[1];
                            v68 = *v67;
                            if (*v67)
                            {
                              nw_frame_set_metadata(*v67, 0, 0, __len);
                              if (__len)
                              {
                                if ((*(v9 + 158) & 1) == 0 && gLogDatapath == 1)
                                {
                                  v75 = __nwlog_obj();
                                  if (os_log_type_enabled(v75, OS_LOG_TYPE_DEBUG))
                                  {
                                    v76 = *(v9 + 488);
                                    if (v76)
                                    {
                                      LODWORD(v76) = *(v76 + 424);
                                    }

                                    v77 = *(*(v9 + 480) + 372);
                                    v78 = *(v9 + 860);
                                    *buf = 136447746;
                                    v358 = "nw_http1_connection_send_bytes";
                                    v359 = 2082;
                                    *v360 = v340;
                                    *&v360[8] = 2080;
                                    *&v360[10] = " ";
                                    v361 = 1024;
                                    *v362 = v77;
                                    *&v362[4] = 1024;
                                    *&v362[6] = v78;
                                    LOWORD(v363) = 1024;
                                    *(&v363 + 2) = v76;
                                    HIWORD(v363) = 2048;
                                    *v364 = v68;
                                    _os_log_impl(&dword_181A37000, v75, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> setting complete on last output frame %p", buf, 0x3Cu);
                                  }
                                }
                              }
                            }

                            nw_protocol_finalize_output_frames(v36, &v353);
                            if (v355)
                            {
                              *type = 0;
                              v349 = type;
                              v350 = 0x2000000000;
                              v351 = 0;
                              *v343 = MEMORY[0x1E69E9820];
                              v344 = 0x40000000;
                              v345 = ___ZL30nw_http1_connection_send_bytesP19nw_http1_connectionPhjb_block_invoke;
                              v346 = &unk_1E6A32B10;
                              v347 = type;
                              do
                              {
                                v69 = v355;
                                if (!v355)
                                {
                                  break;
                                }

                                v70 = *(v355 + 32);
                                v71 = *(v355 + 40);
                                v72 = (v70 + 40);
                                if (!v70)
                                {
                                  v72 = &v356;
                                }

                                *v72 = v71;
                                *v71 = v70;
                                *(v69 + 32) = 0;
                                *(v69 + 40) = 0;
                              }

                              while (((v345)(v343) & 1) != 0);
                              if ((*(v9 + 158) & 1) == 0)
                              {
                                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                                networkd_settings_init();
                                v73 = gLogObj;
                                if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
                                {
                                  v74 = *(v9 + 488);
                                  if (v74)
                                  {
                                    LODWORD(v74) = *(v74 + 424);
                                  }

                                  v38 = *(*(v9 + 480) + 372);
                                  v39 = *(v9 + 860);
                                  v40 = *(v349 + 6);
                                  *buf = 136447746;
                                  v358 = "nw_http1_connection_send_bytes";
                                  v359 = 2082;
                                  *v360 = v340;
                                  *&v360[8] = 2080;
                                  *&v360[10] = " ";
                                  v361 = 1024;
                                  *v362 = v38;
                                  *&v362[4] = 1024;
                                  *&v362[6] = v39;
                                  LOWORD(v363) = 1024;
                                  *(&v363 + 2) = v74;
                                  HIWORD(v363) = 1024;
                                  *v364 = v40;
                                  _os_log_impl(&dword_181A37000, v73, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u:c%u:s%u> failed to use %u frames, marking as failed", buf, 0x38u);
                                }
                              }

                              _Block_object_dispose(type, 8);
                            }

                            if (!v37)
                            {
                              v10 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
                              v11 = v337;
                              goto LABEL_212;
                            }

                            goto LABEL_66;
                          }

                          nw_frame_collapse(v42);
                          nw_frame_unclaim(v42, v50, v48, 0);
                          v51 = *(v42 + 32);
                          v52 = *(v42 + 40);
                          v53 = (v51 + 40);
                          if (!v51)
                          {
                            v53 = &v356;
                          }

                          *v53 = v52;
                          *v52 = v51;
                          v54 = v354;
                          *(v42 + 32) = 0;
                          *(v42 + 40) = v54;
                          *v54 = v42;
                          v354 = (v42 + 32);
                          if (v44)
                          {
                            v42 = v44;
                            if (v37)
                            {
                              continue;
                            }
                          }

                          goto LABEL_108;
                        }
                      }

                      v160 = __nwlog_obj();
                      *buf = 136446210;
                      v358 = "nw_http1_connection_send_bytes";
                      LODWORD(v336) = 12;
                      v23 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v160, 16, "%{public}s called with null output_handler", buf, v336);
                      type[0] = OS_LOG_TYPE_ERROR;
                      LOBYTE(v355) = 0;
                      if (__nwlog_fault(v23, type, &v355))
                      {
                        if (type[0] == OS_LOG_TYPE_FAULT)
                        {
                          v161 = __nwlog_obj();
                          v162 = type[0];
                          if (!os_log_type_enabled(v161, type[0]))
                          {
                            goto LABEL_311;
                          }

                          *buf = 136446210;
                          v358 = "nw_http1_connection_send_bytes";
                          v27 = v161;
                          v28 = v162;
                          v29 = "%{public}s called with null output_handler";
                          goto LABEL_310;
                        }

                        if (v355 != 1)
                        {
                          v190 = __nwlog_obj();
                          v191 = type[0];
                          if (!os_log_type_enabled(v190, type[0]))
                          {
                            goto LABEL_311;
                          }

                          *buf = 136446210;
                          v358 = "nw_http1_connection_send_bytes";
                          v27 = v190;
                          v28 = v191;
                          v29 = "%{public}s called with null output_handler, backtrace limit exceeded";
                          goto LABEL_310;
                        }

                        v167 = __nw_create_backtrace_string();
                        v177 = __nwlog_obj();
                        v178 = type[0];
                        v179 = os_log_type_enabled(v177, type[0]);
                        if (!v167)
                        {
                          if (!v179)
                          {
                            goto LABEL_311;
                          }

                          *buf = 136446210;
                          v358 = "nw_http1_connection_send_bytes";
                          v27 = v177;
                          v28 = v178;
                          v29 = "%{public}s called with null output_handler, no backtrace";
                          goto LABEL_310;
                        }

                        if (v179)
                        {
                          *buf = 136446466;
                          v358 = "nw_http1_connection_send_bytes";
                          v359 = 2082;
                          *v360 = v167;
                          v171 = v177;
                          v172 = v178;
                          v173 = "%{public}s called with null output_handler, dumping backtrace:%{public}s";
                          goto LABEL_282;
                        }

LABEL_283:
                        free(v167);
                      }

LABEL_311:
                      if (v23)
                      {
                        free(v23);
                      }

                      v132 = 0;
                      if (!v18)
                      {
                        goto LABEL_212;
                      }

                      goto LABEL_347;
                    }

                    v157 = __nwlog_obj();
                    *buf = 136446210;
                    v358 = "nw_http1_connection_send_bytes";
                    LODWORD(v336) = 12;
                    v23 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v157, 16, "%{public}s called with null length", buf, v336);
                    type[0] = OS_LOG_TYPE_ERROR;
                    LOBYTE(v355) = 0;
                    if (!__nwlog_fault(v23, type, &v355))
                    {
                      goto LABEL_311;
                    }

                    if (type[0] == OS_LOG_TYPE_FAULT)
                    {
                      v158 = __nwlog_obj();
                      v159 = type[0];
                      if (!os_log_type_enabled(v158, type[0]))
                      {
                        goto LABEL_311;
                      }

                      *buf = 136446210;
                      v358 = "nw_http1_connection_send_bytes";
                      v27 = v158;
                      v28 = v159;
                      v29 = "%{public}s called with null length";
                      goto LABEL_310;
                    }

                    if (v355 != 1)
                    {
                      v188 = __nwlog_obj();
                      v189 = type[0];
                      if (!os_log_type_enabled(v188, type[0]))
                      {
                        goto LABEL_311;
                      }

                      *buf = 136446210;
                      v358 = "nw_http1_connection_send_bytes";
                      v27 = v188;
                      v28 = v189;
                      v29 = "%{public}s called with null length, backtrace limit exceeded";
                      goto LABEL_310;
                    }

                    v167 = __nw_create_backtrace_string();
                    v174 = __nwlog_obj();
                    v175 = type[0];
                    v176 = os_log_type_enabled(v174, type[0]);
                    if (!v167)
                    {
                      if (!v176)
                      {
                        goto LABEL_311;
                      }

                      *buf = 136446210;
                      v358 = "nw_http1_connection_send_bytes";
                      v27 = v174;
                      v28 = v175;
                      v29 = "%{public}s called with null length, no backtrace";
                      goto LABEL_310;
                    }

                    if (!v176)
                    {
                      goto LABEL_283;
                    }

                    *buf = 136446466;
                    v358 = "nw_http1_connection_send_bytes";
                    v359 = 2082;
                    *v360 = v167;
                    v171 = v174;
                    v172 = v175;
                    v173 = "%{public}s called with null length, dumping backtrace:%{public}s";
                  }

                  else
                  {
LABEL_57:
                    __len = 0;
                    if (v19)
                    {
                      goto LABEL_58;
                    }

LABEL_48:
                    v22 = __nwlog_obj();
                    *buf = 136446210;
                    v358 = "nw_http1_connection_send_bytes";
                    LODWORD(v336) = 12;
                    v23 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v22, 16, "%{public}s called with null buffer", buf, v336);
                    type[0] = OS_LOG_TYPE_ERROR;
                    LOBYTE(v355) = 0;
                    if (!__nwlog_fault(v23, type, &v355))
                    {
                      goto LABEL_311;
                    }

                    if (type[0] == OS_LOG_TYPE_FAULT)
                    {
                      v25 = __nwlog_obj();
                      v26 = type[0];
                      if (!os_log_type_enabled(v25, type[0]))
                      {
                        goto LABEL_311;
                      }

                      *buf = 136446210;
                      v358 = "nw_http1_connection_send_bytes";
                      v27 = v25;
                      v28 = v26;
                      v29 = "%{public}s called with null buffer";
LABEL_310:
                      _os_log_impl(&dword_181A37000, v27, v28, v29, buf, 0xCu);
                      goto LABEL_311;
                    }

                    if (v355 != 1)
                    {
                      v186 = __nwlog_obj();
                      v187 = type[0];
                      if (!os_log_type_enabled(v186, type[0]))
                      {
                        goto LABEL_311;
                      }

                      *buf = 136446210;
                      v358 = "nw_http1_connection_send_bytes";
                      v27 = v186;
                      v28 = v187;
                      v29 = "%{public}s called with null buffer, backtrace limit exceeded";
                      goto LABEL_310;
                    }

                    v167 = __nw_create_backtrace_string();
                    v168 = __nwlog_obj();
                    v169 = type[0];
                    v170 = os_log_type_enabled(v168, type[0]);
                    if (!v167)
                    {
                      if (!v170)
                      {
                        goto LABEL_311;
                      }

                      *buf = 136446210;
                      v358 = "nw_http1_connection_send_bytes";
                      v27 = v168;
                      v28 = v169;
                      v29 = "%{public}s called with null buffer, no backtrace";
                      goto LABEL_310;
                    }

                    if (!v170)
                    {
                      goto LABEL_283;
                    }

                    *buf = 136446466;
                    v358 = "nw_http1_connection_send_bytes";
                    v359 = 2082;
                    *v360 = v167;
                    v171 = v168;
                    v172 = v169;
                    v173 = "%{public}s called with null buffer, dumping backtrace:%{public}s";
                  }

LABEL_282:
                  _os_log_impl(&dword_181A37000, v171, v172, v173, buf, 0x16u);
                  goto LABEL_283;
                }

LABEL_230:
                if ((*(v12 + 204) & 0x100) != 0 && g_channel_check_validity && !g_channel_check_validity(v12, *(v12 + 88)))
                {
                  v18 = 0;
                  goto LABEL_326;
                }

                v140 = *(v12 + 52);
                v139 = *(v12 + 56);
                if (v140)
                {
                  v18 = (v140 - (v139 + *(v12 + 60)));
                }

                else
                {
                  v18 = 0;
                }

                v19 = (*(v12 + 112) + v139);
                if ((*(v12 + 204) & 4) == 0)
                {
                  goto LABEL_237;
                }

LABEL_327:
                v214 = *(v12 + 216);
                *(v12 + 208) = v9;
                *(v12 + 216) = v214 & 0xFC | 1;
                goto LABEL_42;
              }

LABEL_229:
              nw_frame_claim(v12, v87, 0, v117);
              if (!*(v12 + 112))
              {
                goto LABEL_326;
              }

              goto LABEL_230;
            }

            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            *buf = 136446978;
            v358 = "nw_http1_connection_drain_outbound_frames";
            v359 = 2082;
            *v360 = "unused_bytes";
            *&v360[8] = 2048;
            *&v360[10] = v116;
            v361 = 2048;
            *v362 = v112 + v116;
            LODWORD(v336) = 42;
            v118 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s Overflow: %{public}s, increment %llu, result %llu", buf, v336);
            v343[0] = OS_LOG_TYPE_ERROR;
            type[0] = OS_LOG_TYPE_DEFAULT;
            if (__nwlog_fault(v118, v343, type))
            {
              if (v343[0] == OS_LOG_TYPE_FAULT)
              {
                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                networkd_settings_init();
                v119 = gLogObj;
                v120 = v343[0];
                if (os_log_type_enabled(gLogObj, v343[0]))
                {
                  *buf = 136446978;
                  v358 = "nw_http1_connection_drain_outbound_frames";
                  v359 = 2082;
                  *v360 = "unused_bytes";
                  *&v360[8] = 2048;
                  *&v360[10] = v116;
                  v361 = 2048;
                  *v362 = v112 + v116;
                  v121 = v119;
                  v122 = v120;
                  v123 = "%{public}s Overflow: %{public}s, increment %llu, result %llu";
LABEL_225:
                  _os_log_impl(&dword_181A37000, v121, v122, v123, buf, 0x2Au);
                }
              }

              else if (type[0] == OS_LOG_TYPE_INFO)
              {
                v124 = __nw_create_backtrace_string();
                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                networkd_settings_init();
                v125 = gLogObj;
                v126 = v343[0];
                v127 = os_log_type_enabled(gLogObj, v343[0]);
                if (v124)
                {
                  if (v127)
                  {
                    *buf = 136447234;
                    v358 = "nw_http1_connection_drain_outbound_frames";
                    v359 = 2082;
                    *v360 = "unused_bytes";
                    *&v360[8] = 2048;
                    *&v360[10] = v116;
                    v361 = 2048;
                    *v362 = v117;
                    *&v362[8] = 2082;
                    v363 = v124;
                    _os_log_impl(&dword_181A37000, v125, v126, "%{public}s Overflow: %{public}s, increment %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
                  }

                  free(v124);
                  v10 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
                  goto LABEL_226;
                }

                v10 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
                if (v127)
                {
                  *buf = 136446978;
                  v358 = "nw_http1_connection_drain_outbound_frames";
                  v359 = 2082;
                  *v360 = "unused_bytes";
                  *&v360[8] = 2048;
                  *&v360[10] = v116;
                  v361 = 2048;
                  *v362 = v117;
                  v121 = v125;
                  v122 = v126;
                  v123 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, no backtrace";
                  goto LABEL_225;
                }
              }

              else
              {
                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                networkd_settings_init();
                v137 = gLogObj;
                v138 = v343[0];
                if (os_log_type_enabled(gLogObj, v343[0]))
                {
                  *buf = 136446978;
                  v358 = "nw_http1_connection_drain_outbound_frames";
                  v359 = 2082;
                  *v360 = "unused_bytes";
                  *&v360[8] = 2048;
                  *&v360[10] = v116;
                  v361 = 2048;
                  *v362 = v112 + v116;
                  v121 = v137;
                  v122 = v138;
                  v123 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, backtrace limit exceeded";
                  goto LABEL_225;
                }
              }
            }

LABEL_226:
            v18 = v18;
            if (v118)
            {
              free(v118);
            }

            LODWORD(v117) = -1;
            v11 = v337;
            v12 = v339;
            goto LABEL_229;
          }

          v301 = __nwlog_obj();
          *buf = 136446210;
          v358 = "nw_http1_connection_drain_outbound_frames";
          v260 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v301, 16, "%{public}s called with null http1_connection->current_stream", buf, 12);
          v343[0] = OS_LOG_TYPE_ERROR;
          type[0] = OS_LOG_TYPE_DEFAULT;
          if (!__nwlog_fault(v260, v343, type))
          {
            goto LABEL_425;
          }

          if (v343[0] == OS_LOG_TYPE_FAULT)
          {
            v295 = __nwlog_obj();
            v296 = v343[0];
            if (!os_log_type_enabled(v295, v343[0]))
            {
              goto LABEL_425;
            }

            *buf = 136446210;
            v358 = "nw_http1_connection_drain_outbound_frames";
            v263 = "%{public}s called with null http1_connection->current_stream";
          }

          else if (type[0] == OS_LOG_TYPE_INFO)
          {
            v311 = __nw_create_backtrace_string();
            v295 = __nwlog_obj();
            v296 = v343[0];
            v312 = os_log_type_enabled(v295, v343[0]);
            if (v311)
            {
              if (v312)
              {
                *buf = 136446466;
                v358 = "nw_http1_connection_drain_outbound_frames";
                v359 = 2082;
                *v360 = v311;
                _os_log_impl(&dword_181A37000, v295, v296, "%{public}s called with null http1_connection->current_stream, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(v311);
              if (!v260)
              {
                goto LABEL_365;
              }

LABEL_426:
              free(v260);
              goto LABEL_365;
            }

            if (!v312)
            {
              goto LABEL_425;
            }

            *buf = 136446210;
            v358 = "nw_http1_connection_drain_outbound_frames";
            v263 = "%{public}s called with null http1_connection->current_stream, no backtrace";
          }

          else
          {
            v295 = __nwlog_obj();
            v296 = v343[0];
            if (!os_log_type_enabled(v295, v343[0]))
            {
              goto LABEL_425;
            }

            *buf = 136446210;
            v358 = "nw_http1_connection_drain_outbound_frames";
            v263 = "%{public}s called with null http1_connection->current_stream, backtrace limit exceeded";
          }
        }

        else
        {
          v294 = __nwlog_obj();
          *buf = 136446210;
          v358 = "nw_http1_connection_drain_outbound_frames";
          v260 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v294, 16, "%{public}s called with null http1_connection->protocol_http1", buf, 12);
          v343[0] = OS_LOG_TYPE_ERROR;
          type[0] = OS_LOG_TYPE_DEFAULT;
          if (!__nwlog_fault(v260, v343, type))
          {
            goto LABEL_425;
          }

          if (v343[0] == OS_LOG_TYPE_FAULT)
          {
            v295 = __nwlog_obj();
            v296 = v343[0];
            if (!os_log_type_enabled(v295, v343[0]))
            {
              goto LABEL_425;
            }

            *buf = 136446210;
            v358 = "nw_http1_connection_drain_outbound_frames";
            v263 = "%{public}s called with null http1_connection->protocol_http1";
          }

          else if (type[0] == OS_LOG_TYPE_INFO)
          {
            v309 = __nw_create_backtrace_string();
            v295 = __nwlog_obj();
            v296 = v343[0];
            v310 = os_log_type_enabled(v295, v343[0]);
            if (v309)
            {
              if (v310)
              {
                *buf = 136446466;
                v358 = "nw_http1_connection_drain_outbound_frames";
                v359 = 2082;
                *v360 = v309;
                _os_log_impl(&dword_181A37000, v295, v296, "%{public}s called with null http1_connection->protocol_http1, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(v309);
              goto LABEL_425;
            }

            if (!v310)
            {
LABEL_425:
              if (!v260)
              {
                goto LABEL_365;
              }

              goto LABEL_426;
            }

            *buf = 136446210;
            v358 = "nw_http1_connection_drain_outbound_frames";
            v263 = "%{public}s called with null http1_connection->protocol_http1, no backtrace";
          }

          else
          {
            v295 = __nwlog_obj();
            v296 = v343[0];
            if (!os_log_type_enabled(v295, v343[0]))
            {
              goto LABEL_425;
            }

            *buf = 136446210;
            v358 = "nw_http1_connection_drain_outbound_frames";
            v263 = "%{public}s called with null http1_connection->protocol_http1, backtrace limit exceeded";
          }
        }

        v272 = v295;
        v273 = v296;
        v274 = 12;
        goto LABEL_424;
      }

LABEL_568:
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      *buf = 136446210;
      v358 = "nw_protocol_http1_output_available";
      LODWORD(v336) = 12;
      v282 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s called with null http1_connection", buf, v336);
      v343[0] = OS_LOG_TYPE_ERROR;
      type[0] = OS_LOG_TYPE_DEFAULT;
      if (!__nwlog_fault(v282, v343, type))
      {
        goto LABEL_582;
      }

      if (v343[0] == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v283 = gLogObj;
        v284 = v343[0];
        if (!os_log_type_enabled(gLogObj, v343[0]))
        {
          goto LABEL_582;
        }

        *buf = 136446210;
        v358 = "nw_protocol_http1_output_available";
        v285 = "%{public}s called with null http1_connection";
        goto LABEL_580;
      }

      if (type[0] != OS_LOG_TYPE_INFO)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v283 = gLogObj;
        v284 = v343[0];
        if (!os_log_type_enabled(gLogObj, v343[0]))
        {
          goto LABEL_582;
        }

        *buf = 136446210;
        v358 = "nw_protocol_http1_output_available";
        v285 = "%{public}s called with null http1_connection, backtrace limit exceeded";
        goto LABEL_580;
      }

      v330 = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v327 = gLogObj;
      v328 = v343[0];
      v331 = os_log_type_enabled(gLogObj, v343[0]);
      if (v330)
      {
        if (v331)
        {
          *buf = 136446466;
          v358 = "nw_protocol_http1_output_available";
          v359 = 2082;
          *v360 = v330;
          _os_log_impl(&dword_181A37000, v327, v328, "%{public}s called with null http1_connection, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v330);
        if (!v282)
        {
          return;
        }

LABEL_583:
        free(v282);
        return;
      }

      if (v331)
      {
        *buf = 136446210;
        v358 = "nw_protocol_http1_output_available";
        v285 = "%{public}s called with null http1_connection, no backtrace";
LABEL_587:
        v332 = v327;
        v333 = v328;
        goto LABEL_581;
      }

      goto LABEL_582;
    }

    v304 = __nwlog_obj();
    *buf = 136446210;
    v358 = "nw_http1_get_connection_for_protocol";
    v305 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v304, 16, "%{public}s called with null handle->http1_stream", buf, 12);
    v343[0] = OS_LOG_TYPE_ERROR;
    type[0] = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault(v305, v343, type))
    {
      if (v343[0] == OS_LOG_TYPE_FAULT)
      {
        v306 = __nwlog_obj();
        v307 = v343[0];
        if (!os_log_type_enabled(v306, v343[0]))
        {
          goto LABEL_566;
        }

        *buf = 136446210;
        v358 = "nw_http1_get_connection_for_protocol";
        v308 = "%{public}s called with null handle->http1_stream";
        goto LABEL_565;
      }

      if (type[0] != OS_LOG_TYPE_INFO)
      {
        v306 = __nwlog_obj();
        v307 = v343[0];
        if (!os_log_type_enabled(v306, v343[0]))
        {
          goto LABEL_566;
        }

        *buf = 136446210;
        v358 = "nw_http1_get_connection_for_protocol";
        v308 = "%{public}s called with null handle->http1_stream, backtrace limit exceeded";
        goto LABEL_565;
      }

      v315 = __nw_create_backtrace_string();
      v306 = __nwlog_obj();
      v307 = v343[0];
      v316 = os_log_type_enabled(v306, v343[0]);
      if (v315)
      {
        if (v316)
        {
          *buf = 136446466;
          v358 = "nw_http1_get_connection_for_protocol";
          v359 = 2082;
          *v360 = v315;
          _os_log_impl(&dword_181A37000, v306, v307, "%{public}s called with null handle->http1_stream, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v315);
        goto LABEL_566;
      }

      if (v316)
      {
        *buf = 136446210;
        v358 = "nw_http1_get_connection_for_protocol";
        v308 = "%{public}s called with null handle->http1_stream, no backtrace";
LABEL_565:
        _os_log_impl(&dword_181A37000, v306, v307, v308, buf, 0xCu);
      }
    }

LABEL_566:
    if (v305)
    {
      free(v305);
    }

    goto LABEL_568;
  }

  v281 = __nwlog_obj();
  *buf = 136446210;
  v358 = "nw_protocol_http1_output_available";
  v282 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v281, 16, "%{public}s called with null other_protocol", buf, 12);
  v343[0] = OS_LOG_TYPE_ERROR;
  type[0] = OS_LOG_TYPE_DEFAULT;
  if (!__nwlog_fault(v282, v343, type))
  {
    goto LABEL_582;
  }

  if (v343[0] == OS_LOG_TYPE_FAULT)
  {
    v283 = __nwlog_obj();
    v284 = v343[0];
    if (!os_log_type_enabled(v283, v343[0]))
    {
      goto LABEL_582;
    }

    *buf = 136446210;
    v358 = "nw_protocol_http1_output_available";
    v285 = "%{public}s called with null other_protocol";
    goto LABEL_580;
  }

  if (type[0] != OS_LOG_TYPE_INFO)
  {
    v283 = __nwlog_obj();
    v284 = v343[0];
    if (!os_log_type_enabled(v283, v343[0]))
    {
      goto LABEL_582;
    }

    *buf = 136446210;
    v358 = "nw_protocol_http1_output_available";
    v285 = "%{public}s called with null other_protocol, backtrace limit exceeded";
    goto LABEL_580;
  }

  v292 = __nw_create_backtrace_string();
  v283 = __nwlog_obj();
  v284 = v343[0];
  v293 = os_log_type_enabled(v283, v343[0]);
  if (!v292)
  {
    if (!v293)
    {
      goto LABEL_582;
    }

    *buf = 136446210;
    v358 = "nw_protocol_http1_output_available";
    v285 = "%{public}s called with null other_protocol, no backtrace";
    goto LABEL_580;
  }

  if (v293)
  {
    *buf = 136446466;
    v358 = "nw_protocol_http1_output_available";
    v359 = 2082;
    *v360 = v292;
    _os_log_impl(&dword_181A37000, v283, v284, "%{public}s called with null other_protocol, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v292);
  if (v282)
  {
    goto LABEL_583;
  }
}