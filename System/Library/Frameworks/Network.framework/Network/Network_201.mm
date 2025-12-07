uint64_t nw_http_fillout_indeterminate_binary_message_body_chunk(const void *a1, size_t a2, int a3, void *a4, char *__dst, unint64_t a6)
{
  v118 = *MEMORY[0x1E69E9840];
  if (!__dst)
  {
    v38 = __nwlog_obj();
    *buf = 136446210;
    v111 = "nw_http_fillout_indeterminate_binary_message_body_chunk";
    v39 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v38, 16, "%{public}s called with null buffer", buf, 12);
    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v100) = 0;
    if (!__nwlog_fault(v39, type, &v100))
    {
      goto LABEL_180;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v40 = __nwlog_obj();
      v41 = type[0];
      if (os_log_type_enabled(v40, type[0]))
      {
        *buf = 136446210;
        v111 = "nw_http_fillout_indeterminate_binary_message_body_chunk";
        v42 = "%{public}s called with null buffer";
LABEL_179:
        _os_log_impl(&dword_181A37000, v40, v41, v42, buf, 0xCu);
      }

LABEL_180:
      if (v39)
      {
        free(v39);
      }

      return 0;
    }

    if (v100 != 1)
    {
      v40 = __nwlog_obj();
      v41 = type[0];
      if (os_log_type_enabled(v40, type[0]))
      {
        *buf = 136446210;
        v111 = "nw_http_fillout_indeterminate_binary_message_body_chunk";
        v42 = "%{public}s called with null buffer, backtrace limit exceeded";
        goto LABEL_179;
      }

      goto LABEL_180;
    }

    backtrace_string = __nw_create_backtrace_string();
    v40 = __nwlog_obj();
    v41 = type[0];
    v46 = os_log_type_enabled(v40, type[0]);
    if (!backtrace_string)
    {
      if (v46)
      {
        *buf = 136446210;
        v111 = "nw_http_fillout_indeterminate_binary_message_body_chunk";
        v42 = "%{public}s called with null buffer, no backtrace";
        goto LABEL_179;
      }

      goto LABEL_180;
    }

    if (v46)
    {
      *buf = 136446466;
      v111 = "nw_http_fillout_indeterminate_binary_message_body_chunk";
      v112 = 2082;
      v113 = backtrace_string;
      v47 = "%{public}s called with null buffer, dumping backtrace:%{public}s";
LABEL_102:
      _os_log_impl(&dword_181A37000, v40, v41, v47, buf, 0x16u);
    }

LABEL_103:
    free(backtrace_string);
    goto LABEL_180;
  }

  if (!a1 && a2)
  {
    v44 = __nwlog_obj();
    *buf = 136446210;
    v111 = "nw_http_fillout_indeterminate_binary_message_body_chunk";
    v39 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v44, 16, "%{public}s called with null body_content", buf, 12);
    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v100) = 0;
    if (!__nwlog_fault(v39, type, &v100))
    {
      goto LABEL_180;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v40 = __nwlog_obj();
      v41 = type[0];
      if (os_log_type_enabled(v40, type[0]))
      {
        *buf = 136446210;
        v111 = "nw_http_fillout_indeterminate_binary_message_body_chunk";
        v42 = "%{public}s called with null body_content";
        goto LABEL_179;
      }

      goto LABEL_180;
    }

    if (v100 != 1)
    {
      v40 = __nwlog_obj();
      v41 = type[0];
      if (os_log_type_enabled(v40, type[0]))
      {
        *buf = 136446210;
        v111 = "nw_http_fillout_indeterminate_binary_message_body_chunk";
        v42 = "%{public}s called with null body_content, backtrace limit exceeded";
        goto LABEL_179;
      }

      goto LABEL_180;
    }

    backtrace_string = __nw_create_backtrace_string();
    v40 = __nwlog_obj();
    v41 = type[0];
    v67 = os_log_type_enabled(v40, type[0]);
    if (!backtrace_string)
    {
      if (v67)
      {
        *buf = 136446210;
        v111 = "nw_http_fillout_indeterminate_binary_message_body_chunk";
        v42 = "%{public}s called with null body_content, no backtrace";
        goto LABEL_179;
      }

      goto LABEL_180;
    }

    if (v67)
    {
      *buf = 136446466;
      v111 = "nw_http_fillout_indeterminate_binary_message_body_chunk";
      v112 = 2082;
      v113 = backtrace_string;
      v47 = "%{public}s called with null body_content, dumping backtrace:%{public}s";
      goto LABEL_102;
    }

    goto LABEL_103;
  }

  *type = 0;
  v105 = type;
  v106 = 0x2000000000;
  v107 = __dst;
  v100 = 0;
  v101 = &v100;
  v102 = 0x2000000000;
  v103 = a6;
  if (!a2)
  {
    goto LABEL_13;
  }

  if (a2 <= 0x3F)
  {
    __src = a2;
    v10 = 1;
    v11 = a6 - 1;
    if (a6)
    {
      goto LABEL_7;
    }

LABEL_30:
    v25 = __nwlog_obj();
    *buf = 136446210;
    v111 = "_http_safe_append";
    v26 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v25, 16, "%{public}s called with null (*remaining >= length)", buf, 12);
    v109 = OS_LOG_TYPE_ERROR;
    v108 = 0;
    if (__nwlog_fault(v26, &v109, &v108))
    {
      if (v109 == OS_LOG_TYPE_FAULT)
      {
        v27 = __nwlog_obj();
        v28 = v109;
        if (os_log_type_enabled(v27, v109))
        {
          *buf = 136446210;
          v111 = "_http_safe_append";
          v29 = "%{public}s called with null (*remaining >= length)";
LABEL_161:
          _os_log_impl(&dword_181A37000, v27, v28, v29, buf, 0xCu);
        }
      }

      else if (v108 == 1)
      {
        v65 = __nw_create_backtrace_string();
        v27 = __nwlog_obj();
        v28 = v109;
        v66 = os_log_type_enabled(v27, v109);
        if (v65)
        {
          if (v66)
          {
            *buf = 136446466;
            v111 = "_http_safe_append";
            v112 = 2082;
            v113 = v65;
            _os_log_impl(&dword_181A37000, v27, v28, "%{public}s called with null (*remaining >= length), dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v65);
          goto LABEL_162;
        }

        if (v66)
        {
          *buf = 136446210;
          v111 = "_http_safe_append";
          v29 = "%{public}s called with null (*remaining >= length), no backtrace";
          goto LABEL_161;
        }
      }

      else
      {
        v27 = __nwlog_obj();
        v28 = v109;
        if (os_log_type_enabled(v27, v109))
        {
          *buf = 136446210;
          v111 = "_http_safe_append";
          v29 = "%{public}s called with null (*remaining >= length), backtrace limit exceeded";
          goto LABEL_161;
        }
      }
    }

LABEL_162:
    if (v26)
    {
      free(v26);
    }

    *(v105 + 3) = 0;
    goto LABEL_165;
  }

  if (!(a2 >> 14))
  {
    __src = bswap32(a2 | 0x4000) >> 16;
    v10 = 2;
    v11 = a6 - 2;
    if (a6 < 2)
    {
      goto LABEL_30;
    }

    goto LABEL_7;
  }

  if (!(a2 >> 30))
  {
    __src = bswap32(a2 | 0x80000000);
    v10 = 4;
    v11 = a6 - 4;
    if (a6 < 4)
    {
      goto LABEL_30;
    }

    goto LABEL_7;
  }

  if (!(a2 >> 62))
  {
    __src = bswap64(a2 | 0xC000000000000000);
    v10 = 8;
    v11 = a6 - 8;
    if (a6 < 8)
    {
      goto LABEL_30;
    }

LABEL_7:
    v12 = __dst;
    memcpy(__dst, &__src, v10);
    v103 = v11;
    v13 = &v12[v10];
    v107 = v13;
    v14 = &v100;
    if (a1)
    {
LABEL_8:
      if (v14[3] >= a2)
      {
        memcpy(v13, a1, a2);
        v15 = v14[3];
        v14[3] = v15 - a2;
        if (v15 < a2)
        {
          if (gLogDatapath == 1)
          {
            v61 = __nwlog_obj();
            if (os_log_type_enabled(v61, OS_LOG_TYPE_DEBUG))
            {
              v62 = v14[3];
              *buf = 136446978;
              v111 = "_http_safe_append";
              v112 = 2082;
              v113 = "*remaining";
              v114 = 2048;
              v115 = a2;
              v116 = 2048;
              v117 = v62;
              _os_log_impl(&dword_181A37000, v61, OS_LOG_TYPE_DEBUG, "%{public}s Underflow: %{public}s, decrement %llu, result %llu", buf, 0x2Au);
            }
          }

          v14[3] = 0;
        }

        __dst = &v13[a2];
        *(v105 + 3) = &v13[a2];
LABEL_13:
        if (!a3)
        {
LABEL_25:
          v23 = 1;
LABEL_26:
          _Block_object_dispose(&v100, 8);
          _Block_object_dispose(type, 8);
          return v23;
        }

        v16 = v101;
        if (v101[3])
        {
          *__dst = 0;
          v17 = v16[3];
          v16[3] = v17 - 1;
          if (!v17)
          {
            if (gLogDatapath == 1)
            {
              v68 = __dst;
              v69 = __nwlog_obj();
              v70 = os_log_type_enabled(v69, OS_LOG_TYPE_DEBUG);
              __dst = v68;
              if (v70)
              {
                v71 = v16[3];
                *buf = 136446978;
                v111 = "_http_safe_append";
                v112 = 2082;
                v113 = "*remaining";
                v114 = 2048;
                v115 = 1;
                v116 = 2048;
                v117 = v71;
                _os_log_impl(&dword_181A37000, v69, OS_LOG_TYPE_DEBUG, "%{public}s Underflow: %{public}s, decrement %llu, result %llu", buf, 0x2Au);
                __dst = v68;
              }
            }

            v16[3] = 0;
          }

          v18 = __dst + 1;
          *(v105 + 3) = __dst + 1;
          if (a4 && (v98[0] = MEMORY[0x1E69E9820], v98[1] = 0x40000000, v98[2] = __nw_http_fillout_indeterminate_binary_message_body_chunk_block_invoke, v98[3] = &unk_1E6A344E8, v98[4] = type, v98[5] = &v100, v19 = a4, v20 = v98, _nw_http_fields_enumerate_const_field(v19, v20), v20, v19, (v18 = *(v105 + 3)) == 0))
          {
            v53 = __nwlog_obj();
            *buf = 136446210;
            v111 = "_http_safe_append";
            LODWORD(v94) = 12;
            v54 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v53, 16, "%{public}s called with null buffer", buf, v94);
            LOBYTE(__src) = 16;
            v109 = OS_LOG_TYPE_DEFAULT;
            if (!__nwlog_fault(v54, &__src, &v109))
            {
              goto LABEL_207;
            }

            if (__src == 17)
            {
              v55 = __nwlog_obj();
              v56 = __src;
              if (!os_log_type_enabled(v55, __src))
              {
                goto LABEL_207;
              }

              *buf = 136446210;
              v111 = "_http_safe_append";
              v57 = "%{public}s called with null buffer";
              goto LABEL_206;
            }

            if (v109 != OS_LOG_TYPE_INFO)
            {
              v55 = __nwlog_obj();
              v56 = __src;
              if (!os_log_type_enabled(v55, __src))
              {
                goto LABEL_207;
              }

              *buf = 136446210;
              v111 = "_http_safe_append";
              v57 = "%{public}s called with null buffer, backtrace limit exceeded";
              goto LABEL_206;
            }

            v74 = __nw_create_backtrace_string();
            v55 = __nwlog_obj();
            v56 = __src;
            v75 = os_log_type_enabled(v55, __src);
            if (!v74)
            {
              if (!v75)
              {
                goto LABEL_207;
              }

              *buf = 136446210;
              v111 = "_http_safe_append";
              v57 = "%{public}s called with null buffer, no backtrace";
              goto LABEL_206;
            }

            if (v75)
            {
              *buf = 136446466;
              v111 = "_http_safe_append";
              v112 = 2082;
              v113 = v74;
              _os_log_impl(&dword_181A37000, v55, v56, "%{public}s called with null buffer, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(v74);
          }

          else
          {
            v21 = v101;
            if (v101[3])
            {
              *v18 = 0;
              v22 = v21[3];
              v21[3] = v22 - 1;
              if (!v22)
              {
                if (gLogDatapath == 1)
                {
                  v76 = __nwlog_obj();
                  if (os_log_type_enabled(v76, OS_LOG_TYPE_DEBUG))
                  {
                    v77 = v21[3];
                    *buf = 136446978;
                    v111 = "_http_safe_append";
                    v112 = 2082;
                    v113 = "*remaining";
                    v114 = 2048;
                    v115 = 1;
                    v116 = 2048;
                    v117 = v77;
                    _os_log_impl(&dword_181A37000, v76, OS_LOG_TYPE_DEBUG, "%{public}s Underflow: %{public}s, decrement %llu, result %llu", buf, 0x2Au);
                  }
                }

                v21[3] = 0;
              }

              *(v105 + 3) = v18 + 1;
              goto LABEL_25;
            }

            v58 = __nwlog_obj();
            *buf = 136446210;
            v111 = "_http_safe_append";
            LODWORD(v94) = 12;
            v54 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v58, 16, "%{public}s called with null (*remaining >= length)", buf, v94);
            LOBYTE(__src) = 16;
            v109 = OS_LOG_TYPE_DEFAULT;
            if (__nwlog_fault(v54, &__src, &v109))
            {
              if (__src == 17)
              {
                v55 = __nwlog_obj();
                v56 = __src;
                if (!os_log_type_enabled(v55, __src))
                {
                  goto LABEL_207;
                }

                *buf = 136446210;
                v111 = "_http_safe_append";
                v57 = "%{public}s called with null (*remaining >= length)";
                goto LABEL_206;
              }

              if (v109 != OS_LOG_TYPE_INFO)
              {
                v55 = __nwlog_obj();
                v56 = __src;
                if (!os_log_type_enabled(v55, __src))
                {
                  goto LABEL_207;
                }

                *buf = 136446210;
                v111 = "_http_safe_append";
                v57 = "%{public}s called with null (*remaining >= length), backtrace limit exceeded";
                goto LABEL_206;
              }

              v78 = __nw_create_backtrace_string();
              v55 = __nwlog_obj();
              v56 = __src;
              v79 = os_log_type_enabled(v55, __src);
              if (v78)
              {
                if (v79)
                {
                  *buf = 136446466;
                  v111 = "_http_safe_append";
                  v112 = 2082;
                  v113 = v78;
                  _os_log_impl(&dword_181A37000, v55, v56, "%{public}s called with null (*remaining >= length), dumping backtrace:%{public}s", buf, 0x16u);
                }

                free(v78);
                if (!v54)
                {
                  goto LABEL_209;
                }

                goto LABEL_208;
              }

              if (v79)
              {
                *buf = 136446210;
                v111 = "_http_safe_append";
                v57 = "%{public}s called with null (*remaining >= length), no backtrace";
LABEL_206:
                _os_log_impl(&dword_181A37000, v55, v56, v57, buf, 0xCu);
              }
            }
          }

LABEL_207:
          if (!v54)
          {
LABEL_209:
            *(v105 + 3) = 0;
            v91 = __nwlog_obj();
            *buf = 136446210;
            v111 = "nw_http_fillout_indeterminate_binary_message_body_chunk";
            LODWORD(v97) = 12;
            v81 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v91, 16, "%{public}s called with null cursor", buf, v97);
            LOBYTE(__src) = 16;
            v109 = OS_LOG_TYPE_DEFAULT;
            if (!__nwlog_fault(v81, &__src, &v109))
            {
              goto LABEL_223;
            }

            if (__src == 17)
            {
              v82 = __nwlog_obj();
              v83 = __src;
              if (!os_log_type_enabled(v82, __src))
              {
                goto LABEL_223;
              }

              *buf = 136446210;
              v111 = "nw_http_fillout_indeterminate_binary_message_body_chunk";
              v84 = "%{public}s called with null cursor";
              goto LABEL_222;
            }

            if (v109 != OS_LOG_TYPE_INFO)
            {
              v82 = __nwlog_obj();
              v83 = __src;
              if (!os_log_type_enabled(v82, __src))
              {
                goto LABEL_223;
              }

              *buf = 136446210;
              v111 = "nw_http_fillout_indeterminate_binary_message_body_chunk";
              v84 = "%{public}s called with null cursor, backtrace limit exceeded";
              goto LABEL_222;
            }

            v92 = __nw_create_backtrace_string();
            v82 = __nwlog_obj();
            v83 = __src;
            v93 = os_log_type_enabled(v82, __src);
            if (!v92)
            {
              if (!v93)
              {
                goto LABEL_223;
              }

              *buf = 136446210;
              v111 = "nw_http_fillout_indeterminate_binary_message_body_chunk";
              v84 = "%{public}s called with null cursor, no backtrace";
              goto LABEL_222;
            }

            if (v93)
            {
              *buf = 136446466;
              v111 = "nw_http_fillout_indeterminate_binary_message_body_chunk";
              v112 = 2082;
              v113 = v92;
              _os_log_impl(&dword_181A37000, v82, v83, "%{public}s called with null cursor, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(v92);
LABEL_223:
            if (!v81)
            {
LABEL_225:
              v23 = 0;
              goto LABEL_26;
            }

LABEL_224:
            free(v81);
            goto LABEL_225;
          }

LABEL_208:
          free(v54);
          goto LABEL_209;
        }

        v48 = __nwlog_obj();
        *buf = 136446210;
        v111 = "_http_safe_append";
        LODWORD(v94) = 12;
        v49 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v48, 16, "%{public}s called with null (*remaining >= length)", buf, v94);
        LOBYTE(__src) = 16;
        v109 = OS_LOG_TYPE_DEFAULT;
        if (__nwlog_fault(v49, &__src, &v109))
        {
          if (__src == 17)
          {
            v50 = __nwlog_obj();
            v51 = __src;
            if (!os_log_type_enabled(v50, __src))
            {
              goto LABEL_186;
            }

            *buf = 136446210;
            v111 = "_http_safe_append";
            v52 = "%{public}s called with null (*remaining >= length)";
LABEL_185:
            _os_log_impl(&dword_181A37000, v50, v51, v52, buf, 0xCu);
            goto LABEL_186;
          }

          if (v109 != OS_LOG_TYPE_INFO)
          {
            v50 = __nwlog_obj();
            v51 = __src;
            if (!os_log_type_enabled(v50, __src))
            {
              goto LABEL_186;
            }

            *buf = 136446210;
            v111 = "_http_safe_append";
            v52 = "%{public}s called with null (*remaining >= length), backtrace limit exceeded";
            goto LABEL_185;
          }

          v72 = __nw_create_backtrace_string();
          v50 = __nwlog_obj();
          v51 = __src;
          v73 = os_log_type_enabled(v50, __src);
          if (!v72)
          {
            if (!v73)
            {
              goto LABEL_186;
            }

            *buf = 136446210;
            v111 = "_http_safe_append";
            v52 = "%{public}s called with null (*remaining >= length), no backtrace";
            goto LABEL_185;
          }

          if (v73)
          {
            *buf = 136446466;
            v111 = "_http_safe_append";
            v112 = 2082;
            v113 = v72;
            _os_log_impl(&dword_181A37000, v50, v51, "%{public}s called with null (*remaining >= length), dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v72);
        }

LABEL_186:
        if (v49)
        {
          free(v49);
        }

        *(v105 + 3) = 0;
        v89 = __nwlog_obj();
        *buf = 136446210;
        v111 = "nw_http_fillout_indeterminate_binary_message_body_chunk";
        LODWORD(v96) = 12;
        v81 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v89, 16, "%{public}s called with null cursor", buf, v96);
        LOBYTE(__src) = 16;
        v109 = OS_LOG_TYPE_DEFAULT;
        if (!__nwlog_fault(v81, &__src, &v109))
        {
          goto LABEL_223;
        }

        if (__src == 17)
        {
          v82 = __nwlog_obj();
          v83 = __src;
          if (!os_log_type_enabled(v82, __src))
          {
            goto LABEL_223;
          }

          *buf = 136446210;
          v111 = "nw_http_fillout_indeterminate_binary_message_body_chunk";
          v84 = "%{public}s called with null cursor";
          goto LABEL_222;
        }

        if (v109 != OS_LOG_TYPE_INFO)
        {
          v82 = __nwlog_obj();
          v83 = __src;
          if (!os_log_type_enabled(v82, __src))
          {
            goto LABEL_223;
          }

          *buf = 136446210;
          v111 = "nw_http_fillout_indeterminate_binary_message_body_chunk";
          v84 = "%{public}s called with null cursor, backtrace limit exceeded";
          goto LABEL_222;
        }

        v85 = __nw_create_backtrace_string();
        v82 = __nwlog_obj();
        v83 = __src;
        v90 = os_log_type_enabled(v82, __src);
        if (!v85)
        {
          if (!v90)
          {
            goto LABEL_223;
          }

          *buf = 136446210;
          v111 = "nw_http_fillout_indeterminate_binary_message_body_chunk";
          v84 = "%{public}s called with null cursor, no backtrace";
          goto LABEL_222;
        }

        if (!v90)
        {
LABEL_196:
          free(v85);
          if (!v81)
          {
            goto LABEL_225;
          }

          goto LABEL_224;
        }

LABEL_195:
        *buf = 136446466;
        v111 = "nw_http_fillout_indeterminate_binary_message_body_chunk";
        v112 = 2082;
        v113 = v85;
        _os_log_impl(&dword_181A37000, v82, v83, "%{public}s called with null cursor, dumping backtrace:%{public}s", buf, 0x16u);
        goto LABEL_196;
      }

      v43 = __nwlog_obj();
      *buf = 136446210;
      v111 = "_http_safe_append";
      LODWORD(v94) = 12;
      v34 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v43, 16, "%{public}s called with null (*remaining >= length)", buf, v94);
      LOBYTE(__src) = 16;
      v109 = OS_LOG_TYPE_DEFAULT;
      if (__nwlog_fault(v34, &__src, &v109))
      {
        if (__src == 17)
        {
          v35 = __nwlog_obj();
          v36 = __src;
          if (!os_log_type_enabled(v35, __src))
          {
            goto LABEL_145;
          }

          *buf = 136446210;
          v111 = "_http_safe_append";
          v37 = "%{public}s called with null (*remaining >= length)";
          goto LABEL_144;
        }

        if (v109 != OS_LOG_TYPE_INFO)
        {
          v35 = __nwlog_obj();
          v36 = __src;
          if (!os_log_type_enabled(v35, __src))
          {
            goto LABEL_145;
          }

          *buf = 136446210;
          v111 = "_http_safe_append";
          v37 = "%{public}s called with null (*remaining >= length), backtrace limit exceeded";
          goto LABEL_144;
        }

        v63 = __nw_create_backtrace_string();
        v35 = __nwlog_obj();
        v36 = __src;
        v64 = os_log_type_enabled(v35, __src);
        if (v63)
        {
          if (v64)
          {
            *buf = 136446466;
            v111 = "_http_safe_append";
            v112 = 2082;
            v113 = v63;
            _os_log_impl(&dword_181A37000, v35, v36, "%{public}s called with null (*remaining >= length), dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v63);
          if (!v34)
          {
LABEL_147:
            *(v105 + 3) = 0;
            v80 = __nwlog_obj();
            *buf = 136446210;
            v111 = "nw_http_fillout_indeterminate_binary_message_body_chunk";
            LODWORD(v95) = 12;
            v81 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v80, 16, "%{public}s called with null cursor", buf, v95);
            LOBYTE(__src) = 16;
            v109 = OS_LOG_TYPE_DEFAULT;
            if ((__nwlog_fault(v81, &__src, &v109) & 1) == 0)
            {
              goto LABEL_223;
            }

            if (__src == 17)
            {
              v82 = __nwlog_obj();
              v83 = __src;
              if (!os_log_type_enabled(v82, __src))
              {
                goto LABEL_223;
              }

              *buf = 136446210;
              v111 = "nw_http_fillout_indeterminate_binary_message_body_chunk";
              v84 = "%{public}s called with null cursor";
            }

            else if (v109 == OS_LOG_TYPE_INFO)
            {
              v85 = __nw_create_backtrace_string();
              v82 = __nwlog_obj();
              v83 = __src;
              v86 = os_log_type_enabled(v82, __src);
              if (v85)
              {
                if (!v86)
                {
                  goto LABEL_196;
                }

                goto LABEL_195;
              }

              if (!v86)
              {
                goto LABEL_223;
              }

              *buf = 136446210;
              v111 = "nw_http_fillout_indeterminate_binary_message_body_chunk";
              v84 = "%{public}s called with null cursor, no backtrace";
            }

            else
            {
              v82 = __nwlog_obj();
              v83 = __src;
              if (!os_log_type_enabled(v82, __src))
              {
                goto LABEL_223;
              }

              *buf = 136446210;
              v111 = "nw_http_fillout_indeterminate_binary_message_body_chunk";
              v84 = "%{public}s called with null cursor, backtrace limit exceeded";
            }

LABEL_222:
            _os_log_impl(&dword_181A37000, v82, v83, v84, buf, 0xCu);
            goto LABEL_223;
          }

LABEL_146:
          free(v34);
          goto LABEL_147;
        }

        if (v64)
        {
          *buf = 136446210;
          v111 = "_http_safe_append";
          v37 = "%{public}s called with null (*remaining >= length), no backtrace";
LABEL_144:
          _os_log_impl(&dword_181A37000, v35, v36, v37, buf, 0xCu);
          goto LABEL_145;
        }
      }

      goto LABEL_145;
    }

LABEL_46:
    v33 = __nwlog_obj();
    *buf = 136446210;
    v111 = "_http_safe_append";
    LODWORD(v94) = 12;
    v34 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v33, 16, "%{public}s called with null data", buf, v94);
    LOBYTE(__src) = 16;
    v109 = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v34, &__src, &v109))
    {
      goto LABEL_145;
    }

    if (__src == 17)
    {
      v35 = __nwlog_obj();
      v36 = __src;
      if (!os_log_type_enabled(v35, __src))
      {
        goto LABEL_145;
      }

      *buf = 136446210;
      v111 = "_http_safe_append";
      v37 = "%{public}s called with null data";
      goto LABEL_144;
    }

    if (v109 != OS_LOG_TYPE_INFO)
    {
      v35 = __nwlog_obj();
      v36 = __src;
      if (!os_log_type_enabled(v35, __src))
      {
        goto LABEL_145;
      }

      *buf = 136446210;
      v111 = "_http_safe_append";
      v37 = "%{public}s called with null data, backtrace limit exceeded";
      goto LABEL_144;
    }

    v59 = __nw_create_backtrace_string();
    v35 = __nwlog_obj();
    v36 = __src;
    v60 = os_log_type_enabled(v35, __src);
    if (!v59)
    {
      if (!v60)
      {
        goto LABEL_145;
      }

      *buf = 136446210;
      v111 = "_http_safe_append";
      v37 = "%{public}s called with null data, no backtrace";
      goto LABEL_144;
    }

    if (v60)
    {
      *buf = 136446466;
      v111 = "_http_safe_append";
      v112 = 2082;
      v113 = v59;
      _os_log_impl(&dword_181A37000, v35, v36, "%{public}s called with null data, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(v59);
LABEL_145:
    if (!v34)
    {
      goto LABEL_147;
    }

    goto LABEL_146;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v30 = gLogObj;
  if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
  {
    v31 = 3;
  }

  else
  {
    v31 = 2;
  }

  *buf = 136446466;
  v111 = "_http_vle_encode";
  v112 = 2048;
  v113 = a2;
  v32 = _os_log_send_and_compose_impl(v31, 0, 0, 0, &dword_181A37000, v30, 16, "%{public}s unable to encode value: %llu", buf, 22);
  result = __nwlog_should_abort(v32);
  if (!result)
  {
    free(v32);
    v13 = *(v105 + 3);
    if (v13)
    {
      v14 = v101;
      if (a1)
      {
        goto LABEL_8;
      }

      goto LABEL_46;
    }

LABEL_165:
    v87 = __nwlog_obj();
    *buf = 136446210;
    v111 = "nw_http_fillout_indeterminate_binary_message_body_chunk";
    LODWORD(v94) = 12;
    v81 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v87, 16, "%{public}s called with null cursor", buf, v94);
    v109 = OS_LOG_TYPE_ERROR;
    v108 = 0;
    if (!__nwlog_fault(v81, &v109, &v108))
    {
      goto LABEL_223;
    }

    if (v109 == OS_LOG_TYPE_FAULT)
    {
      v82 = __nwlog_obj();
      v83 = v109;
      if (!os_log_type_enabled(v82, v109))
      {
        goto LABEL_223;
      }

      *buf = 136446210;
      v111 = "nw_http_fillout_indeterminate_binary_message_body_chunk";
      v84 = "%{public}s called with null cursor";
    }

    else if (v108 == 1)
    {
      v85 = __nw_create_backtrace_string();
      v82 = __nwlog_obj();
      v83 = v109;
      v88 = os_log_type_enabled(v82, v109);
      if (v85)
      {
        if (!v88)
        {
          goto LABEL_196;
        }

        goto LABEL_195;
      }

      if (!v88)
      {
        goto LABEL_223;
      }

      *buf = 136446210;
      v111 = "nw_http_fillout_indeterminate_binary_message_body_chunk";
      v84 = "%{public}s called with null cursor, no backtrace";
    }

    else
    {
      v82 = __nwlog_obj();
      v83 = v109;
      if (!os_log_type_enabled(v82, v109))
      {
        goto LABEL_223;
      }

      *buf = 136446210;
      v111 = "nw_http_fillout_indeterminate_binary_message_body_chunk";
      v84 = "%{public}s called with null cursor, backtrace limit exceeded";
    }

    goto LABEL_222;
  }

  __break(1u);
  return result;
}

uint64_t __nw_http_fillout_indeterminate_binary_message_body_chunk_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = __nw_http_fillout_indeterminate_binary_message_body_chunk_block_invoke_2;
  v4[3] = &unk_1E6A344C0;
  v5 = *(a1 + 32);
  nw_http_field_access_canonical(a3, v4);
  return 1;
}

void __nw_http_fillout_indeterminate_binary_message_body_chunk_block_invoke_2(uint64_t a1, const void *a2, size_t a3, const void *a4, size_t a5)
{
  v106 = *MEMORY[0x1E69E9840];
  if (a3 <= 0x3F)
  {
    __src = a3;
    v10 = 1;
    goto LABEL_9;
  }

  if (!(a3 >> 14))
  {
    __src = bswap32(a3 | 0x4000) >> 16;
    v10 = 2;
    goto LABEL_9;
  }

  if (!(a3 >> 30))
  {
    __src = bswap32(a3 | 0x80000000);
    v10 = 4;
    goto LABEL_9;
  }

  if (!(a3 >> 62))
  {
    __src = bswap64(a3 | 0xC000000000000000);
    v10 = 8;
LABEL_9:
    v11 = a1 + 32;
    v12 = *(*(*(a1 + 32) + 8) + 24);
    v13 = a1 + 40;
    if (v12)
    {
      v14 = *(*(a1 + 40) + 8);
      if (*(v14 + 24) >= v10)
      {
        memcpy(v12, &__src, v10);
        v15 = *(v14 + 24);
        *(v14 + 24) = v15 - v10;
        if (v15 < v10)
        {
          if (gLogDatapath == 1)
          {
            v75 = __nwlog_obj();
            if (os_log_type_enabled(v75, OS_LOG_TYPE_DEBUG))
            {
              v76 = *(v14 + 24);
              *buf = 136446978;
              v99 = "_http_safe_append";
              v100 = 2082;
              v101 = "*remaining";
              v102 = 2048;
              v103 = v10;
              v104 = 2048;
              v105 = v76;
              _os_log_impl(&dword_181A37000, v75, OS_LOG_TYPE_DEBUG, "%{public}s Underflow: %{public}s, decrement %llu, result %llu", buf, 0x2Au);
            }
          }

          *(v14 + 24) = 0;
        }

        v16 = &v12[v10];
        goto LABEL_15;
      }

      v48 = __nwlog_obj();
      *buf = 136446210;
      v99 = "_http_safe_append";
      v44 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v48, 16, "%{public}s called with null (*remaining >= length)", buf, 12);
      type = OS_LOG_TYPE_ERROR;
      v96 = 0;
      if (!__nwlog_fault(v44, &type, &v96))
      {
        goto LABEL_201;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        v45 = __nwlog_obj();
        v46 = type;
        if (os_log_type_enabled(v45, type))
        {
          *buf = 136446210;
          v99 = "_http_safe_append";
          v47 = "%{public}s called with null (*remaining >= length)";
          goto LABEL_200;
        }

        goto LABEL_201;
      }

      if (v96 != 1)
      {
        v45 = __nwlog_obj();
        v46 = type;
        if (os_log_type_enabled(v45, type))
        {
          *buf = 136446210;
          v99 = "_http_safe_append";
          v47 = "%{public}s called with null (*remaining >= length), backtrace limit exceeded";
          goto LABEL_200;
        }

        goto LABEL_201;
      }

      backtrace_string = __nw_create_backtrace_string();
      v45 = __nwlog_obj();
      v46 = type;
      v77 = os_log_type_enabled(v45, type);
      if (!backtrace_string)
      {
        if (v77)
        {
          *buf = 136446210;
          v99 = "_http_safe_append";
          v47 = "%{public}s called with null (*remaining >= length), no backtrace";
          goto LABEL_200;
        }

        goto LABEL_201;
      }

      if (v77)
      {
        *buf = 136446466;
        v99 = "_http_safe_append";
        v100 = 2082;
        v101 = backtrace_string;
        v74 = "%{public}s called with null (*remaining >= length), dumping backtrace:%{public}s";
        goto LABEL_130;
      }
    }

    else
    {
      v43 = __nwlog_obj();
      *buf = 136446210;
      v99 = "_http_safe_append";
      v44 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v43, 16, "%{public}s called with null buffer", buf, 12);
      type = OS_LOG_TYPE_ERROR;
      v96 = 0;
      if (!__nwlog_fault(v44, &type, &v96))
      {
        goto LABEL_201;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        v45 = __nwlog_obj();
        v46 = type;
        if (os_log_type_enabled(v45, type))
        {
          *buf = 136446210;
          v99 = "_http_safe_append";
          v47 = "%{public}s called with null buffer";
LABEL_200:
          _os_log_impl(&dword_181A37000, v45, v46, v47, buf, 0xCu);
        }

LABEL_201:
        if (v44)
        {
          free(v44);
        }

        v16 = 0;
        goto LABEL_15;
      }

      if (v96 != 1)
      {
        v45 = __nwlog_obj();
        v46 = type;
        if (os_log_type_enabled(v45, type))
        {
          *buf = 136446210;
          v99 = "_http_safe_append";
          v47 = "%{public}s called with null buffer, backtrace limit exceeded";
          goto LABEL_200;
        }

        goto LABEL_201;
      }

      backtrace_string = __nw_create_backtrace_string();
      v45 = __nwlog_obj();
      v46 = type;
      v73 = os_log_type_enabled(v45, type);
      if (!backtrace_string)
      {
        if (v73)
        {
          *buf = 136446210;
          v99 = "_http_safe_append";
          v47 = "%{public}s called with null buffer, no backtrace";
          goto LABEL_200;
        }

        goto LABEL_201;
      }

      if (v73)
      {
        *buf = 136446466;
        v99 = "_http_safe_append";
        v100 = 2082;
        v101 = backtrace_string;
        v74 = "%{public}s called with null buffer, dumping backtrace:%{public}s";
LABEL_130:
        _os_log_impl(&dword_181A37000, v45, v46, v74, buf, 0x16u);
      }
    }

    free(backtrace_string);
    goto LABEL_201;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v28 = gLogObj;
  if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
  {
    v29 = 3;
  }

  else
  {
    v29 = 2;
  }

  *buf = 136446466;
  v99 = "_http_vle_encode";
  v100 = 2048;
  v101 = a3;
  v30 = _os_log_send_and_compose_impl(v29, 0, 0, 0, &dword_181A37000, v28, 16, "%{public}s unable to encode value: %llu", buf, 22);
  if (__nwlog_should_abort(v30))
  {
    goto LABEL_226;
  }

  free(v30);
  v31 = *(a1 + 32);
  v11 = a1 + 32;
  v16 = *(*(v31 + 8) + 24);
  v13 = v11 + 8;
LABEL_15:
  *(*(*v11 + 8) + 24) = v16;
  v17 = *(*(*v11 + 8) + 24);
  if (!v17)
  {
    v35 = __nwlog_obj();
    *buf = 136446210;
    v99 = "nw_http_fillout_indeterminate_binary_message_body_chunk_block_invoke_2";
    LODWORD(v94) = 12;
    v36 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v35, 16, "%{public}s called with null cursor", buf, v94);
    type = OS_LOG_TYPE_ERROR;
    v96 = 0;
    if (!__nwlog_fault(v36, &type, &v96))
    {
      goto LABEL_194;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v37 = __nwlog_obj();
      v38 = type;
      if (!os_log_type_enabled(v37, type))
      {
        goto LABEL_194;
      }

      *buf = 136446210;
      v99 = "nw_http_fillout_indeterminate_binary_message_body_chunk_block_invoke";
      v39 = "%{public}s called with null cursor";
LABEL_193:
      _os_log_impl(&dword_181A37000, v37, v38, v39, buf, 0xCu);
      goto LABEL_194;
    }

    if (v96 != 1)
    {
      v37 = __nwlog_obj();
      v38 = type;
      if (!os_log_type_enabled(v37, type))
      {
        goto LABEL_194;
      }

      *buf = 136446210;
      v99 = "nw_http_fillout_indeterminate_binary_message_body_chunk_block_invoke";
      v39 = "%{public}s called with null cursor, backtrace limit exceeded";
      goto LABEL_193;
    }

    v66 = __nw_create_backtrace_string();
    v37 = __nwlog_obj();
    v38 = type;
    v67 = os_log_type_enabled(v37, type);
    if (!v66)
    {
      if (!v67)
      {
        goto LABEL_194;
      }

      *buf = 136446210;
      v99 = "nw_http_fillout_indeterminate_binary_message_body_chunk_block_invoke";
      v39 = "%{public}s called with null cursor, no backtrace";
      goto LABEL_193;
    }

    if (!v67)
    {
      goto LABEL_113;
    }

LABEL_112:
    *buf = 136446466;
    v99 = "nw_http_fillout_indeterminate_binary_message_body_chunk_block_invoke";
    v100 = 2082;
    v101 = v66;
    _os_log_impl(&dword_181A37000, v37, v38, "%{public}s called with null cursor, dumping backtrace:%{public}s", buf, 0x16u);
    goto LABEL_113;
  }

  if (a3)
  {
    if (a2)
    {
      v18 = *(*v13 + 8);
      if (*(v18 + 24) >= a3)
      {
        memcpy(v17, a2, a3);
        v19 = *(v18 + 24);
        *(v18 + 24) = v19 - a3;
        if (v19 < a3)
        {
          if (gLogDatapath == 1)
          {
            v85 = __nwlog_obj();
            if (os_log_type_enabled(v85, OS_LOG_TYPE_DEBUG))
            {
              v86 = *(v18 + 24);
              *buf = 136446978;
              v99 = "_http_safe_append";
              v100 = 2082;
              v101 = "*remaining";
              v102 = 2048;
              v103 = a3;
              v104 = 2048;
              v105 = v86;
              _os_log_impl(&dword_181A37000, v85, OS_LOG_TYPE_DEBUG, "%{public}s Underflow: %{public}s, decrement %llu, result %llu", buf, 0x2Au);
            }
          }

          *(v18 + 24) = 0;
        }

        v17 += a3;
        goto LABEL_23;
      }

      v59 = __nwlog_obj();
      *buf = 136446210;
      v99 = "_http_safe_append";
      LODWORD(v94) = 12;
      v55 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v59, 16, "%{public}s called with null (*remaining >= length)", buf, v94);
      LOBYTE(__src) = 16;
      type = OS_LOG_TYPE_DEFAULT;
      if (!__nwlog_fault(v55, &__src, &type))
      {
        goto LABEL_215;
      }

      if (__src == 17)
      {
        v56 = __nwlog_obj();
        v57 = __src;
        if (os_log_type_enabled(v56, __src))
        {
          *buf = 136446210;
          v99 = "_http_safe_append";
          v58 = "%{public}s called with null (*remaining >= length)";
          goto LABEL_214;
        }

        goto LABEL_215;
      }

      if (type != OS_LOG_TYPE_INFO)
      {
        v56 = __nwlog_obj();
        v57 = __src;
        if (os_log_type_enabled(v56, __src))
        {
          *buf = 136446210;
          v99 = "_http_safe_append";
          v58 = "%{public}s called with null (*remaining >= length), backtrace limit exceeded";
          goto LABEL_214;
        }

        goto LABEL_215;
      }

      v82 = __nw_create_backtrace_string();
      v56 = __nwlog_obj();
      v57 = __src;
      v87 = os_log_type_enabled(v56, __src);
      if (!v82)
      {
        if (v87)
        {
          *buf = 136446210;
          v99 = "_http_safe_append";
          v58 = "%{public}s called with null (*remaining >= length), no backtrace";
          goto LABEL_214;
        }

        goto LABEL_215;
      }

      if (v87)
      {
        *buf = 136446466;
        v99 = "_http_safe_append";
        v100 = 2082;
        v101 = v82;
        v84 = "%{public}s called with null (*remaining >= length), dumping backtrace:%{public}s";
        goto LABEL_149;
      }
    }

    else
    {
      v54 = __nwlog_obj();
      *buf = 136446210;
      v99 = "_http_safe_append";
      LODWORD(v94) = 12;
      v55 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v54, 16, "%{public}s called with null data", buf, v94);
      LOBYTE(__src) = 16;
      type = OS_LOG_TYPE_DEFAULT;
      if (!__nwlog_fault(v55, &__src, &type))
      {
        goto LABEL_215;
      }

      if (__src == 17)
      {
        v56 = __nwlog_obj();
        v57 = __src;
        if (os_log_type_enabled(v56, __src))
        {
          *buf = 136446210;
          v99 = "_http_safe_append";
          v58 = "%{public}s called with null data";
LABEL_214:
          _os_log_impl(&dword_181A37000, v56, v57, v58, buf, 0xCu);
        }

LABEL_215:
        if (v55)
        {
          free(v55);
        }

        v17 = 0;
        goto LABEL_23;
      }

      if (type != OS_LOG_TYPE_INFO)
      {
        v56 = __nwlog_obj();
        v57 = __src;
        if (os_log_type_enabled(v56, __src))
        {
          *buf = 136446210;
          v99 = "_http_safe_append";
          v58 = "%{public}s called with null data, backtrace limit exceeded";
          goto LABEL_214;
        }

        goto LABEL_215;
      }

      v82 = __nw_create_backtrace_string();
      v56 = __nwlog_obj();
      v57 = __src;
      v83 = os_log_type_enabled(v56, __src);
      if (!v82)
      {
        if (v83)
        {
          *buf = 136446210;
          v99 = "_http_safe_append";
          v58 = "%{public}s called with null data, no backtrace";
          goto LABEL_214;
        }

        goto LABEL_215;
      }

      if (v83)
      {
        *buf = 136446466;
        v99 = "_http_safe_append";
        v100 = 2082;
        v101 = v82;
        v84 = "%{public}s called with null data, dumping backtrace:%{public}s";
LABEL_149:
        _os_log_impl(&dword_181A37000, v56, v57, v84, buf, 0x16u);
      }
    }

    free(v82);
    goto LABEL_215;
  }

LABEL_23:
  *(*(*v11 + 8) + 24) = v17;
  v20 = *(*(*v11 + 8) + 24);
  if (!v20)
  {
    v40 = __nwlog_obj();
    *buf = 136446210;
    v99 = "nw_http_fillout_indeterminate_binary_message_body_chunk_block_invoke";
    LODWORD(v94) = 12;
    v36 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v40, 16, "%{public}s called with null cursor", buf, v94);
    LOBYTE(__src) = 16;
    type = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v36, &__src, &type))
    {
      goto LABEL_194;
    }

    if (__src == 17)
    {
      v37 = __nwlog_obj();
      v38 = __src;
      if (!os_log_type_enabled(v37, __src))
      {
        goto LABEL_194;
      }

      *buf = 136446210;
      v99 = "nw_http_fillout_indeterminate_binary_message_body_chunk_block_invoke";
      v39 = "%{public}s called with null cursor";
      goto LABEL_193;
    }

    if (type != OS_LOG_TYPE_INFO)
    {
      v37 = __nwlog_obj();
      v38 = __src;
      if (!os_log_type_enabled(v37, __src))
      {
        goto LABEL_194;
      }

      *buf = 136446210;
      v99 = "nw_http_fillout_indeterminate_binary_message_body_chunk_block_invoke";
      v39 = "%{public}s called with null cursor, backtrace limit exceeded";
      goto LABEL_193;
    }

    v66 = __nw_create_backtrace_string();
    v37 = __nwlog_obj();
    v38 = __src;
    v68 = os_log_type_enabled(v37, __src);
    if (!v66)
    {
      if (!v68)
      {
        goto LABEL_194;
      }

      *buf = 136446210;
      v99 = "nw_http_fillout_indeterminate_binary_message_body_chunk_block_invoke";
      v39 = "%{public}s called with null cursor, no backtrace";
      goto LABEL_193;
    }

    if (!v68)
    {
      goto LABEL_113;
    }

    goto LABEL_112;
  }

  if (a5 <= 0x3F)
  {
    __src = a5;
    v21 = 1;
    goto LABEL_32;
  }

  if (!(a5 >> 14))
  {
    __src = bswap32(a5 | 0x4000) >> 16;
    v21 = 2;
    goto LABEL_32;
  }

  if (!(a5 >> 30))
  {
    __src = bswap32(a5 | 0x80000000);
    v21 = 4;
    goto LABEL_32;
  }

  if (a5 >> 62)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v32 = gLogObj;
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
    {
      v33 = 3;
    }

    else
    {
      v33 = 2;
    }

    *buf = 136446466;
    v99 = "_http_vle_encode";
    v100 = 2048;
    v101 = a5;
    LODWORD(v94) = 22;
    v34 = _os_log_send_and_compose_impl(v33, 0, 0, 0, &dword_181A37000, v32, 16, "%{public}s unable to encode value: %llu", buf, v94);
    if (!__nwlog_should_abort(v34))
    {
      free(v34);
      v24 = *(*(*v11 + 8) + 24);
      goto LABEL_37;
    }

LABEL_226:
    __break(1u);
    return;
  }

  __src = bswap64(a5 | 0xC000000000000000);
  v21 = 8;
LABEL_32:
  v22 = *(*v13 + 8);
  if (*(v22 + 24) >= v21)
  {
    memcpy(v20, &__src, v21);
    v23 = *(v22 + 24);
    *(v22 + 24) = v23 - v21;
    if (v23 < v21)
    {
      if (gLogDatapath == 1)
      {
        v78 = __nwlog_obj();
        if (os_log_type_enabled(v78, OS_LOG_TYPE_DEBUG))
        {
          v79 = *(v22 + 24);
          *buf = 136446978;
          v99 = "_http_safe_append";
          v100 = 2082;
          v101 = "*remaining";
          v102 = 2048;
          v103 = v21;
          v104 = 2048;
          v105 = v79;
          _os_log_impl(&dword_181A37000, v78, OS_LOG_TYPE_DEBUG, "%{public}s Underflow: %{public}s, decrement %llu, result %llu", buf, 0x2Au);
        }
      }

      *(v22 + 24) = 0;
    }

    v24 = &v20[v21];
    goto LABEL_37;
  }

  v49 = __nwlog_obj();
  *buf = 136446210;
  v99 = "_http_safe_append";
  LODWORD(v94) = 12;
  v50 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v49, 16, "%{public}s called with null (*remaining >= length)", buf, v94);
  type = OS_LOG_TYPE_ERROR;
  v96 = 0;
  if (__nwlog_fault(v50, &type, &v96))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v51 = __nwlog_obj();
      v52 = type;
      if (os_log_type_enabled(v51, type))
      {
        *buf = 136446210;
        v99 = "_http_safe_append";
        v53 = "%{public}s called with null (*remaining >= length)";
LABEL_206:
        _os_log_impl(&dword_181A37000, v51, v52, v53, buf, 0xCu);
      }
    }

    else if (v96 == 1)
    {
      v80 = __nw_create_backtrace_string();
      v51 = __nwlog_obj();
      v52 = type;
      v81 = os_log_type_enabled(v51, type);
      if (v80)
      {
        if (v81)
        {
          *buf = 136446466;
          v99 = "_http_safe_append";
          v100 = 2082;
          v101 = v80;
          _os_log_impl(&dword_181A37000, v51, v52, "%{public}s called with null (*remaining >= length), dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v80);
        goto LABEL_207;
      }

      if (v81)
      {
        *buf = 136446210;
        v99 = "_http_safe_append";
        v53 = "%{public}s called with null (*remaining >= length), no backtrace";
        goto LABEL_206;
      }
    }

    else
    {
      v51 = __nwlog_obj();
      v52 = type;
      if (os_log_type_enabled(v51, type))
      {
        *buf = 136446210;
        v99 = "_http_safe_append";
        v53 = "%{public}s called with null (*remaining >= length), backtrace limit exceeded";
        goto LABEL_206;
      }
    }
  }

LABEL_207:
  if (v50)
  {
    free(v50);
  }

  v24 = 0;
LABEL_37:
  *(*(*v11 + 8) + 24) = v24;
  v25 = *(*(*v11 + 8) + 24);
  if (v25)
  {
    if (!a5)
    {
      goto LABEL_45;
    }

    if (a4)
    {
      v26 = *(*v13 + 8);
      if (*(v26 + 24) >= a5)
      {
        memcpy(v25, a4, a5);
        v27 = *(v26 + 24);
        *(v26 + 24) = v27 - a5;
        if (v27 < a5)
        {
          if (gLogDatapath == 1)
          {
            v91 = __nwlog_obj();
            if (os_log_type_enabled(v91, OS_LOG_TYPE_DEBUG))
            {
              v92 = *(v26 + 24);
              *buf = 136446978;
              v99 = "_http_safe_append";
              v100 = 2082;
              v101 = "*remaining";
              v102 = 2048;
              v103 = a5;
              v104 = 2048;
              v105 = v92;
              _os_log_impl(&dword_181A37000, v91, OS_LOG_TYPE_DEBUG, "%{public}s Underflow: %{public}s, decrement %llu, result %llu", buf, 0x2Au);
            }
          }

          *(v26 + 24) = 0;
        }

        v25 += a5;
        goto LABEL_45;
      }

      v65 = __nwlog_obj();
      *buf = 136446210;
      v99 = "_http_safe_append";
      LODWORD(v94) = 12;
      v61 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v65, 16, "%{public}s called with null (*remaining >= length)", buf, v94);
      LOBYTE(__src) = 16;
      type = OS_LOG_TYPE_DEFAULT;
      if (!__nwlog_fault(v61, &__src, &type))
      {
        goto LABEL_223;
      }

      if (__src == 17)
      {
        v62 = __nwlog_obj();
        v63 = __src;
        if (os_log_type_enabled(v62, __src))
        {
          *buf = 136446210;
          v99 = "_http_safe_append";
          v64 = "%{public}s called with null (*remaining >= length)";
          goto LABEL_222;
        }

        goto LABEL_223;
      }

      if (type != OS_LOG_TYPE_INFO)
      {
        v62 = __nwlog_obj();
        v63 = __src;
        if (os_log_type_enabled(v62, __src))
        {
          *buf = 136446210;
          v99 = "_http_safe_append";
          v64 = "%{public}s called with null (*remaining >= length), backtrace limit exceeded";
          goto LABEL_222;
        }

        goto LABEL_223;
      }

      v88 = __nw_create_backtrace_string();
      v62 = __nwlog_obj();
      v63 = __src;
      v93 = os_log_type_enabled(v62, __src);
      if (!v88)
      {
        if (v93)
        {
          *buf = 136446210;
          v99 = "_http_safe_append";
          v64 = "%{public}s called with null (*remaining >= length), no backtrace";
          goto LABEL_222;
        }

        goto LABEL_223;
      }

      if (v93)
      {
        *buf = 136446466;
        v99 = "_http_safe_append";
        v100 = 2082;
        v101 = v88;
        v90 = "%{public}s called with null (*remaining >= length), dumping backtrace:%{public}s";
        goto LABEL_161;
      }
    }

    else
    {
      v60 = __nwlog_obj();
      *buf = 136446210;
      v99 = "_http_safe_append";
      LODWORD(v94) = 12;
      v61 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v60, 16, "%{public}s called with null data", buf, v94);
      LOBYTE(__src) = 16;
      type = OS_LOG_TYPE_DEFAULT;
      if (!__nwlog_fault(v61, &__src, &type))
      {
        goto LABEL_223;
      }

      if (__src == 17)
      {
        v62 = __nwlog_obj();
        v63 = __src;
        if (os_log_type_enabled(v62, __src))
        {
          *buf = 136446210;
          v99 = "_http_safe_append";
          v64 = "%{public}s called with null data";
LABEL_222:
          _os_log_impl(&dword_181A37000, v62, v63, v64, buf, 0xCu);
        }

LABEL_223:
        if (v61)
        {
          free(v61);
        }

        v25 = 0;
LABEL_45:
        *(*(*v11 + 8) + 24) = v25;
        if (*(*(*v11 + 8) + 24))
        {
          return;
        }

        v42 = __nwlog_obj();
        *buf = 136446210;
        v99 = "nw_http_fillout_indeterminate_binary_message_body_chunk_block_invoke";
        LODWORD(v94) = 12;
        v36 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v42, 16, "%{public}s called with null cursor", buf, v94);
        LOBYTE(__src) = 16;
        type = OS_LOG_TYPE_DEFAULT;
        if (__nwlog_fault(v36, &__src, &type))
        {
          if (__src == 17)
          {
            v37 = __nwlog_obj();
            v38 = __src;
            if (!os_log_type_enabled(v37, __src))
            {
              goto LABEL_194;
            }

            *buf = 136446210;
            v99 = "nw_http_fillout_indeterminate_binary_message_body_chunk_block_invoke";
            v39 = "%{public}s called with null cursor";
            goto LABEL_193;
          }

          if (type != OS_LOG_TYPE_INFO)
          {
            v37 = __nwlog_obj();
            v38 = __src;
            if (!os_log_type_enabled(v37, __src))
            {
              goto LABEL_194;
            }

            *buf = 136446210;
            v99 = "nw_http_fillout_indeterminate_binary_message_body_chunk_block_invoke";
            v39 = "%{public}s called with null cursor, backtrace limit exceeded";
            goto LABEL_193;
          }

          v70 = __nw_create_backtrace_string();
          v37 = __nwlog_obj();
          v38 = __src;
          v71 = os_log_type_enabled(v37, __src);
          if (!v70)
          {
            if (!v71)
            {
              goto LABEL_194;
            }

            *buf = 136446210;
            v99 = "nw_http_fillout_indeterminate_binary_message_body_chunk_block_invoke";
            v39 = "%{public}s called with null cursor, no backtrace";
            goto LABEL_193;
          }

          if (v71)
          {
            *buf = 136446466;
            v99 = "nw_http_fillout_indeterminate_binary_message_body_chunk_block_invoke";
            v100 = 2082;
            v101 = v70;
            _os_log_impl(&dword_181A37000, v37, v38, "%{public}s called with null cursor, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v70);
        }

LABEL_194:
        if (v36)
        {
          goto LABEL_195;
        }

        return;
      }

      if (type != OS_LOG_TYPE_INFO)
      {
        v62 = __nwlog_obj();
        v63 = __src;
        if (os_log_type_enabled(v62, __src))
        {
          *buf = 136446210;
          v99 = "_http_safe_append";
          v64 = "%{public}s called with null data, backtrace limit exceeded";
          goto LABEL_222;
        }

        goto LABEL_223;
      }

      v88 = __nw_create_backtrace_string();
      v62 = __nwlog_obj();
      v63 = __src;
      v89 = os_log_type_enabled(v62, __src);
      if (!v88)
      {
        if (v89)
        {
          *buf = 136446210;
          v99 = "_http_safe_append";
          v64 = "%{public}s called with null data, no backtrace";
          goto LABEL_222;
        }

        goto LABEL_223;
      }

      if (v89)
      {
        *buf = 136446466;
        v99 = "_http_safe_append";
        v100 = 2082;
        v101 = v88;
        v90 = "%{public}s called with null data, dumping backtrace:%{public}s";
LABEL_161:
        _os_log_impl(&dword_181A37000, v62, v63, v90, buf, 0x16u);
      }
    }

    free(v88);
    goto LABEL_223;
  }

  v41 = __nwlog_obj();
  *buf = 136446210;
  v99 = "nw_http_fillout_indeterminate_binary_message_body_chunk_block_invoke";
  LODWORD(v94) = 12;
  v36 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v41, 16, "%{public}s called with null cursor", buf, v94);
  type = OS_LOG_TYPE_ERROR;
  v96 = 0;
  if (!__nwlog_fault(v36, &type, &v96))
  {
    goto LABEL_194;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v37 = __nwlog_obj();
    v38 = type;
    if (!os_log_type_enabled(v37, type))
    {
      goto LABEL_194;
    }

    *buf = 136446210;
    v99 = "nw_http_fillout_indeterminate_binary_message_body_chunk_block_invoke";
    v39 = "%{public}s called with null cursor";
    goto LABEL_193;
  }

  if (v96 != 1)
  {
    v37 = __nwlog_obj();
    v38 = type;
    if (!os_log_type_enabled(v37, type))
    {
      goto LABEL_194;
    }

    *buf = 136446210;
    v99 = "nw_http_fillout_indeterminate_binary_message_body_chunk_block_invoke";
    v39 = "%{public}s called with null cursor, backtrace limit exceeded";
    goto LABEL_193;
  }

  v66 = __nw_create_backtrace_string();
  v37 = __nwlog_obj();
  v38 = type;
  v69 = os_log_type_enabled(v37, type);
  if (!v66)
  {
    if (!v69)
    {
      goto LABEL_194;
    }

    *buf = 136446210;
    v99 = "nw_http_fillout_indeterminate_binary_message_body_chunk_block_invoke";
    v39 = "%{public}s called with null cursor, no backtrace";
    goto LABEL_193;
  }

  if (v69)
  {
    goto LABEL_112;
  }

LABEL_113:
  free(v66);
  if (v36)
  {
LABEL_195:
    free(v36);
  }
}

void *nw_http_copy_metadata_from_binary_message(_DWORD *a1, unint64_t a2, unint64_t *a3, BOOL *a4)
{
  v234 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v96 = __nwlog_obj();
    *buf = 136446210;
    v225 = "nw_http_copy_metadata_from_binary_message";
    v97 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v96, 16, "%{public}s called with null buffer", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v222 = 0;
    if (!__nwlog_fault(v97, &type, &v222))
    {
      goto LABEL_385;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v222 != 1)
      {
        v98 = __nwlog_obj();
        v99 = type;
        if (!os_log_type_enabled(v98, type))
        {
          goto LABEL_385;
        }

        *buf = 136446210;
        v225 = "nw_http_copy_metadata_from_binary_message";
        v100 = "%{public}s called with null buffer, backtrace limit exceeded";
        goto LABEL_384;
      }

      backtrace_string = __nw_create_backtrace_string();
      v98 = __nwlog_obj();
      v99 = type;
      v128 = os_log_type_enabled(v98, type);
      if (!backtrace_string)
      {
        if (!v128)
        {
          goto LABEL_385;
        }

        *buf = 136446210;
        v225 = "nw_http_copy_metadata_from_binary_message";
        v100 = "%{public}s called with null buffer, no backtrace";
        goto LABEL_384;
      }

      if (v128)
      {
        *buf = 136446466;
        v225 = "nw_http_copy_metadata_from_binary_message";
        v226 = 2082;
        v227 = backtrace_string;
        v129 = "%{public}s called with null buffer, dumping backtrace:%{public}s";
LABEL_316:
        _os_log_impl(&dword_181A37000, v98, v99, v129, buf, 0x16u);
      }

LABEL_317:
      free(backtrace_string);
      goto LABEL_385;
    }

    v98 = __nwlog_obj();
    v99 = type;
    if (!os_log_type_enabled(v98, type))
    {
      goto LABEL_385;
    }

    *buf = 136446210;
    v225 = "nw_http_copy_metadata_from_binary_message";
    v100 = "%{public}s called with null buffer";
LABEL_384:
    _os_log_impl(&dword_181A37000, v98, v99, v100, buf, 0xCu);
LABEL_385:
    if (v97)
    {
      free(v97);
    }

    return 0;
  }

  if (!a2)
  {
    v101 = __nwlog_obj();
    *buf = 136446210;
    v225 = "nw_http_copy_metadata_from_binary_message";
    v97 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v101, 16, "%{public}s called with null buffer_length", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v222 = 0;
    if (!__nwlog_fault(v97, &type, &v222))
    {
      goto LABEL_385;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v98 = __nwlog_obj();
      v99 = type;
      if (!os_log_type_enabled(v98, type))
      {
        goto LABEL_385;
      }

      *buf = 136446210;
      v225 = "nw_http_copy_metadata_from_binary_message";
      v100 = "%{public}s called with null buffer_length";
      goto LABEL_384;
    }

    if (v222 != 1)
    {
      v98 = __nwlog_obj();
      v99 = type;
      if (!os_log_type_enabled(v98, type))
      {
        goto LABEL_385;
      }

      *buf = 136446210;
      v225 = "nw_http_copy_metadata_from_binary_message";
      v100 = "%{public}s called with null buffer_length, backtrace limit exceeded";
      goto LABEL_384;
    }

    backtrace_string = __nw_create_backtrace_string();
    v98 = __nwlog_obj();
    v99 = type;
    v130 = os_log_type_enabled(v98, type);
    if (backtrace_string)
    {
      if (v130)
      {
        *buf = 136446466;
        v225 = "nw_http_copy_metadata_from_binary_message";
        v226 = 2082;
        v227 = backtrace_string;
        v129 = "%{public}s called with null buffer_length, dumping backtrace:%{public}s";
        goto LABEL_316;
      }

      goto LABEL_317;
    }

    if (!v130)
    {
      goto LABEL_385;
    }

    *buf = 136446210;
    v225 = "nw_http_copy_metadata_from_binary_message";
    v100 = "%{public}s called with null buffer_length, no backtrace";
    goto LABEL_384;
  }

  v4 = *a1;
  if (v4 <= 0x3F)
  {
    v5 = 1;
    goto LABEL_5;
  }

  if (v4 >> 6 == 2)
  {
    if (a2 < 4)
    {
      goto LABEL_27;
    }

    v4 = bswap32(*a1 & 0xFFFFFF7F);
    v5 = 4;
  }

  else
  {
    if (v4 >> 6 == 1)
    {
      if (a2 != 1)
      {
        v4 = bswap32(*a1 & 0xFFBF) >> 16;
        v5 = 2;
        goto LABEL_5;
      }

LABEL_27:
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v23 = gLogObj;
      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446210;
        v225 = "nw_http_copy_metadata_from_binary_message";
        v7 = "%{public}s Failed to decode integer";
        v8 = v23;
        v9 = 12;
        goto LABEL_29;
      }

      return 0;
    }

    if (a2 < 8)
    {
      goto LABEL_27;
    }

    v4 = bswap64(*a1 & 0xFFFFFFFFFFFFFF3FLL);
    v5 = 8;
  }

LABEL_5:
  if (v4 >= 4)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v6 = gLogObj;
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v225 = "nw_http_copy_metadata_from_binary_message";
      v226 = 2048;
      v227 = v4;
      v228 = 2048;
      v229 = 3;
      v7 = "%{public}s _output %llu > _max %llu";
      v8 = v6;
      v9 = 32;
LABEL_29:
      _os_log_impl(&dword_181A37000, v8, OS_LOG_TYPE_ERROR, v7, buf, v9);
      return 0;
    }

    return 0;
  }

  v12 = (a1 + v5);
  v14 = a2 - v5;
  v15 = _nw_http_parsed_fields_create();
  v16 = v15;
  if ((v4 & 1) == 0)
  {
    if (a2 == v5)
    {
      goto LABEL_14;
    }

    v24 = *v12;
    if (v24 <= 0x3F)
    {
      v25 = 1;
      goto LABEL_34;
    }

    if (v24 >> 6 == 2)
    {
      if (v14 < 4)
      {
        goto LABEL_14;
      }

      v24 = bswap32(*v12 & 0xFFFFFF7F);
      v25 = 4;
    }

    else
    {
      if (v24 >> 6 == 1)
      {
        if (v14 != 1)
        {
          v24 = bswap32(*v12 & 0xFFBF) >> 16;
          v25 = 2;
          goto LABEL_34;
        }

LABEL_14:
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v17 = gLogObj;
        if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446210;
          v225 = "nw_http_copy_metadata_from_binary_message";
          v18 = "%{public}s Failed to decode integer";
          goto LABEL_19;
        }

        goto LABEL_21;
      }

      if (v14 < 8)
      {
        goto LABEL_14;
      }

      v24 = bswap64(*v12 & 0xFFFFFFFFFFFFFF3FLL);
      v25 = 8;
    }

    if (v24 >= 0x10000)
    {
      v27 = __nwlog_obj();
      if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_21;
      }

      goto LABEL_488;
    }

LABEL_34:
    v26 = v14 - v25;
    if (v24 > v26)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v27 = gLogObj;
      if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_21;
      }

LABEL_36:
      *buf = 136446722;
      v225 = "nw_http_copy_metadata_from_binary_message";
      v226 = 2048;
      v227 = v24;
      v228 = 2048;
      v229 = v26;
      v18 = "%{public}s _length %llu > remaining %zu";
LABEL_37:
      v19 = v27;
      goto LABEL_184;
    }

    v33 = v12 + v25;
    if (!nw_http_parsed_fields_add(v15, ":method", -1, v33, v24, 1))
    {
      goto LABEL_21;
    }

    v34 = v26 - v24;
    if (v26 < v24)
    {
      v35 = __nwlog_obj();
      *buf = 136446978;
      v225 = "nw_http_copy_metadata_from_binary_message";
      v226 = 2082;
      v227 = "remaining";
      v228 = 2048;
      v229 = v24;
      v230 = 2048;
      v231 = v26 - v24;
      v36 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v35, 16, "%{public}s Underflow: %{public}s, decrement %llu, result %llu", buf, 42);
      type = OS_LOG_TYPE_ERROR;
      v222 = 0;
      if (!__nwlog_fault(v36, &type, &v222))
      {
        goto LABEL_228;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        v37 = __nwlog_obj();
        v38 = type;
        if (!os_log_type_enabled(v37, type))
        {
          goto LABEL_228;
        }

        *buf = 136446978;
        v225 = "nw_http_copy_metadata_from_binary_message";
        v226 = 2082;
        v227 = "remaining";
        v228 = 2048;
        v229 = v24;
        v230 = 2048;
        v231 = v34;
        v39 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu";
      }

      else if (v222 == 1)
      {
        v63 = __nw_create_backtrace_string();
        v37 = __nwlog_obj();
        v38 = type;
        v64 = os_log_type_enabled(v37, type);
        if (v63)
        {
          if (v64)
          {
            *buf = 136447234;
            v225 = "nw_http_copy_metadata_from_binary_message";
            v226 = 2082;
            v227 = "remaining";
            v228 = 2048;
            v229 = v24;
            v230 = 2048;
            v231 = v34;
            v232 = 2082;
            v233 = v63;
            _os_log_impl(&dword_181A37000, v37, v38, "%{public}s Underflow: %{public}s, decrement %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
          }

          free(v63);
          goto LABEL_228;
        }

        if (!v64)
        {
LABEL_228:
          if (v36)
          {
            free(v36);
          }

LABEL_230:
          v17 = __nwlog_obj();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446210;
            v225 = "nw_http_copy_metadata_from_binary_message";
            v18 = "%{public}s Failed to decode integer";
            goto LABEL_19;
          }

          goto LABEL_21;
        }

        *buf = 136446978;
        v225 = "nw_http_copy_metadata_from_binary_message";
        v226 = 2082;
        v227 = "remaining";
        v228 = 2048;
        v229 = v24;
        v230 = 2048;
        v231 = v34;
        v39 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, no backtrace";
      }

      else
      {
        v37 = __nwlog_obj();
        v38 = type;
        if (!os_log_type_enabled(v37, type))
        {
          goto LABEL_228;
        }

        *buf = 136446978;
        v225 = "nw_http_copy_metadata_from_binary_message";
        v226 = 2082;
        v227 = "remaining";
        v228 = 2048;
        v229 = v24;
        v230 = 2048;
        v231 = v34;
        v39 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, backtrace limit exceeded";
      }

      _os_log_impl(&dword_181A37000, v37, v38, v39, buf, 0x2Au);
      goto LABEL_228;
    }

    if (!v34)
    {
      goto LABEL_230;
    }

    v61 = &v33[v24];
    v24 = v33[v24];
    if (v24 <= 0x3F)
    {
      v62 = 1;
      goto LABEL_120;
    }

    if (v24 >> 6 == 2)
    {
      if (v34 < 4)
      {
        goto LABEL_230;
      }

      v24 = bswap32(*v61 & 0xFFFFFF7F);
      v62 = 4;
    }

    else
    {
      if (v24 >> 6 == 1)
      {
        if (v34 == 1)
        {
          goto LABEL_230;
        }

        v24 = bswap32(*v61 & 0xFFBF) >> 16;
        v62 = 2;
        goto LABEL_120;
      }

      if (v34 < 8)
      {
        goto LABEL_230;
      }

      v24 = bswap64(*v61 & 0xFFFFFFFFFFFFFF3FLL);
      v62 = 8;
    }

    if (v24 >= 0x10000)
    {
      v27 = __nwlog_obj();
      if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_21;
      }

      goto LABEL_488;
    }

LABEL_120:
    v26 = v34 - v62;
    if (v24 > v34 - v62)
    {
      v27 = __nwlog_obj();
      if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_21;
      }

      goto LABEL_36;
    }

    v84 = &v61[v62];
    if (v24 && !nw_http_parsed_fields_add(v16, ":scheme", -1, &v61[v62], v24, 1))
    {
      goto LABEL_21;
    }

    v85 = v26 - v24;
    if (v26 < v24)
    {
      v86 = __nwlog_obj();
      *buf = 136446978;
      v225 = "nw_http_copy_metadata_from_binary_message";
      v226 = 2082;
      v227 = "remaining";
      v228 = 2048;
      v229 = v24;
      v230 = 2048;
      v231 = v26 - v24;
      v87 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v86, 16, "%{public}s Underflow: %{public}s, decrement %llu, result %llu", buf, 42);
      type = OS_LOG_TYPE_ERROR;
      v222 = 0;
      if (!__nwlog_fault(v87, &type, &v222))
      {
        goto LABEL_371;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        v88 = __nwlog_obj();
        v89 = type;
        if (!os_log_type_enabled(v88, type))
        {
          goto LABEL_371;
        }

        *buf = 136446978;
        v225 = "nw_http_copy_metadata_from_binary_message";
        v226 = 2082;
        v227 = "remaining";
        v228 = 2048;
        v229 = v24;
        v230 = 2048;
        v231 = v85;
        v90 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu";
      }

      else if (v222 == 1)
      {
        v124 = __nw_create_backtrace_string();
        v88 = __nwlog_obj();
        v89 = type;
        v125 = os_log_type_enabled(v88, type);
        if (v124)
        {
          if (v125)
          {
            *buf = 136447234;
            v225 = "nw_http_copy_metadata_from_binary_message";
            v226 = 2082;
            v227 = "remaining";
            v228 = 2048;
            v229 = v24;
            v230 = 2048;
            v231 = v85;
            v232 = 2082;
            v233 = v124;
            _os_log_impl(&dword_181A37000, v88, v89, "%{public}s Underflow: %{public}s, decrement %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
          }

          free(v124);
          goto LABEL_371;
        }

        if (!v125)
        {
LABEL_371:
          if (v87)
          {
            free(v87);
          }

LABEL_373:
          v17 = __nwlog_obj();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446210;
            v225 = "nw_http_copy_metadata_from_binary_message";
            v18 = "%{public}s Failed to decode integer";
            goto LABEL_19;
          }

          goto LABEL_21;
        }

        *buf = 136446978;
        v225 = "nw_http_copy_metadata_from_binary_message";
        v226 = 2082;
        v227 = "remaining";
        v228 = 2048;
        v229 = v24;
        v230 = 2048;
        v231 = v85;
        v90 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, no backtrace";
      }

      else
      {
        v88 = __nwlog_obj();
        v89 = type;
        if (!os_log_type_enabled(v88, type))
        {
          goto LABEL_371;
        }

        *buf = 136446978;
        v225 = "nw_http_copy_metadata_from_binary_message";
        v226 = 2082;
        v227 = "remaining";
        v228 = 2048;
        v229 = v24;
        v230 = 2048;
        v231 = v85;
        v90 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, backtrace limit exceeded";
      }

      _os_log_impl(&dword_181A37000, v88, v89, v90, buf, 0x2Au);
      goto LABEL_371;
    }

    if (!v85)
    {
      goto LABEL_373;
    }

    v94 = &v84[v24];
    v24 = v84[v24];
    if (v24 <= 0x3F)
    {
      v95 = 1;
LABEL_237:
      v26 = v85 - v95;
      if (v24 > v85 - v95)
      {
        v27 = __nwlog_obj();
        if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_21;
        }

        goto LABEL_36;
      }

      v134 = &v94[v95];
      if (v24 && !nw_http_parsed_fields_add(v16, ":authority", -1, &v94[v95], v24, 1))
      {
        goto LABEL_21;
      }

      v135 = v26 - v24;
      if (v26 < v24)
      {
        v136 = __nwlog_obj();
        *buf = 136446978;
        v225 = "nw_http_copy_metadata_from_binary_message";
        v226 = 2082;
        v227 = "remaining";
        v228 = 2048;
        v229 = v24;
        v230 = 2048;
        v231 = v26 - v24;
        v137 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v136, 16, "%{public}s Underflow: %{public}s, decrement %llu, result %llu", buf, 42);
        type = OS_LOG_TYPE_ERROR;
        v222 = 0;
        if (!__nwlog_fault(v137, &type, &v222))
        {
          goto LABEL_497;
        }

        if (type == OS_LOG_TYPE_FAULT)
        {
          v138 = __nwlog_obj();
          v139 = type;
          if (!os_log_type_enabled(v138, type))
          {
            goto LABEL_497;
          }

          *buf = 136446978;
          v225 = "nw_http_copy_metadata_from_binary_message";
          v226 = 2082;
          v227 = "remaining";
          v228 = 2048;
          v229 = v24;
          v230 = 2048;
          v231 = v135;
          v140 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu";
        }

        else if (v222 == 1)
        {
          v168 = __nw_create_backtrace_string();
          v138 = __nwlog_obj();
          v139 = type;
          v169 = os_log_type_enabled(v138, type);
          if (v168)
          {
            if (v169)
            {
              *buf = 136447234;
              v225 = "nw_http_copy_metadata_from_binary_message";
              v226 = 2082;
              v227 = "remaining";
              v228 = 2048;
              v229 = v24;
              v230 = 2048;
              v231 = v135;
              v232 = 2082;
              v233 = v168;
              _os_log_impl(&dword_181A37000, v138, v139, "%{public}s Underflow: %{public}s, decrement %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
            }

            free(v168);
            goto LABEL_497;
          }

          if (!v169)
          {
LABEL_497:
            if (v137)
            {
              free(v137);
            }

LABEL_499:
            v17 = __nwlog_obj();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
              *buf = 136446210;
              v225 = "nw_http_copy_metadata_from_binary_message";
              v18 = "%{public}s Failed to decode integer";
              goto LABEL_19;
            }

            goto LABEL_21;
          }

          *buf = 136446978;
          v225 = "nw_http_copy_metadata_from_binary_message";
          v226 = 2082;
          v227 = "remaining";
          v228 = 2048;
          v229 = v24;
          v230 = 2048;
          v231 = v135;
          v140 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, no backtrace";
        }

        else
        {
          v138 = __nwlog_obj();
          v139 = type;
          if (!os_log_type_enabled(v138, type))
          {
            goto LABEL_497;
          }

          *buf = 136446978;
          v225 = "nw_http_copy_metadata_from_binary_message";
          v226 = 2082;
          v227 = "remaining";
          v228 = 2048;
          v229 = v24;
          v230 = 2048;
          v231 = v135;
          v140 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, backtrace limit exceeded";
        }

        _os_log_impl(&dword_181A37000, v138, v139, v140, buf, 0x2Au);
        goto LABEL_497;
      }

      if (!v135)
      {
        goto LABEL_499;
      }

      v145 = &v134[v24];
      v24 = v134[v24];
      if (v24 <= 0x3F)
      {
        v146 = 1;
        goto LABEL_390;
      }

      if (v24 >> 6 == 2)
      {
        if (v135 < 4)
        {
          goto LABEL_499;
        }

        v24 = bswap32(*v145 & 0xFFFFFF7F);
        v146 = 4;
      }

      else
      {
        if (v24 >> 6 == 1)
        {
          if (v135 == 1)
          {
            goto LABEL_499;
          }

          v24 = bswap32(*v145 & 0xFFBF) >> 16;
          v146 = 2;
LABEL_390:
          v26 = v135 - v146;
          if (v24 > v135 - v146)
          {
            v27 = __nwlog_obj();
            if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_21;
            }

            goto LABEL_36;
          }

          v172 = &v145[v146];
          if (v24 && !nw_http_parsed_fields_add(v16, ":path", -1, &v145[v146], v24, 1))
          {
            goto LABEL_21;
          }

          v173 = &v172[v24];
          v30 = v26 - v24;
          if (v26 >= v24)
          {
            v29 = &v172[v24];
            goto LABEL_59;
          }

          v174 = __nwlog_obj();
          *buf = 136446978;
          v225 = "nw_http_copy_metadata_from_binary_message";
          v226 = 2082;
          v227 = "remaining";
          v228 = 2048;
          v229 = v24;
          v230 = 2048;
          v231 = v26 - v24;
          v175 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v174, 16, "%{public}s Underflow: %{public}s, decrement %llu, result %llu", buf, 42);
          type = OS_LOG_TYPE_ERROR;
          v222 = 0;
          if (!__nwlog_fault(v175, &type, &v222))
          {
            goto LABEL_537;
          }

          if (type == OS_LOG_TYPE_FAULT)
          {
            v176 = __nwlog_obj();
            v177 = type;
            if (os_log_type_enabled(v176, type))
            {
              *buf = 136446978;
              v225 = "nw_http_copy_metadata_from_binary_message";
              v226 = 2082;
              v227 = "remaining";
              v228 = 2048;
              v229 = v24;
              v230 = 2048;
              v231 = v30;
              v178 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu";
LABEL_535:
              v197 = v176;
LABEL_536:
              _os_log_impl(&dword_181A37000, v197, v177, v178, buf, 0x2Au);
            }
          }

          else if (v222 == 1)
          {
            v194 = __nw_create_backtrace_string();
            v195 = __nwlog_obj();
            v177 = type;
            log = v195;
            v196 = os_log_type_enabled(v195, type);
            if (v194)
            {
              if (v196)
              {
                *buf = 136447234;
                v225 = "nw_http_copy_metadata_from_binary_message";
                v226 = 2082;
                v227 = "remaining";
                v228 = 2048;
                v229 = v24;
                v230 = 2048;
                v231 = v30;
                v232 = 2082;
                v233 = v194;
                _os_log_impl(&dword_181A37000, log, v177, "%{public}s Underflow: %{public}s, decrement %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
              }

              free(v194);
              goto LABEL_537;
            }

            if (v196)
            {
              *buf = 136446978;
              v225 = "nw_http_copy_metadata_from_binary_message";
              v226 = 2082;
              v227 = "remaining";
              v228 = 2048;
              v229 = v24;
              v230 = 2048;
              v231 = v30;
              v178 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, no backtrace";
              v197 = log;
              goto LABEL_536;
            }
          }

          else
          {
            v176 = __nwlog_obj();
            v177 = type;
            if (os_log_type_enabled(v176, type))
            {
              *buf = 136446978;
              v225 = "nw_http_copy_metadata_from_binary_message";
              v226 = 2082;
              v227 = "remaining";
              v228 = 2048;
              v229 = v24;
              v230 = 2048;
              v231 = v30;
              v178 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, backtrace limit exceeded";
              goto LABEL_535;
            }
          }

LABEL_537:
          if (v175)
          {
            free(v175);
          }

          v30 = 0;
          v29 = v173;
          goto LABEL_59;
        }

        if (v135 < 8)
        {
          goto LABEL_499;
        }

        v24 = bswap64(*v145 & 0xFFFFFFFFFFFFFF3FLL);
        v146 = 8;
      }

      if (v24 < 0x10000)
      {
        goto LABEL_390;
      }

      v27 = __nwlog_obj();
      if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_21;
      }

LABEL_488:
      *buf = 136446722;
      v225 = "nw_http_copy_metadata_from_binary_message";
      v226 = 2048;
      v227 = v24;
      v228 = 2048;
      v229 = 0xFFFFLL;
      v18 = "%{public}s _output %llu > _max %llu";
      goto LABEL_37;
    }

    if (v24 >> 6 == 2)
    {
      if (v85 < 4)
      {
        goto LABEL_373;
      }

      v24 = bswap32(*v94 & 0xFFFFFF7F);
      v95 = 4;
    }

    else
    {
      if (v24 >> 6 == 1)
      {
        if (v85 == 1)
        {
          goto LABEL_373;
        }

        v24 = bswap32(*v94 & 0xFFBF) >> 16;
        v95 = 2;
        goto LABEL_237;
      }

      if (v85 < 8)
      {
        goto LABEL_373;
      }

      v24 = bswap64(*v94 & 0xFFFFFFFFFFFFFF3FLL);
      v95 = 8;
    }

    if (v24 >= 0x10000)
    {
      v27 = __nwlog_obj();
      if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_21;
      }

      goto LABEL_488;
    }

    goto LABEL_237;
  }

  if (a2 == v5)
  {
LABEL_17:
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v17 = gLogObj;
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v225 = "nw_http_copy_metadata_from_binary_message";
      v18 = "%{public}s Failed to decode integer";
      goto LABEL_19;
    }

    goto LABEL_21;
  }

  v28 = *v12;
  if (v28 > 0x3F)
  {
    if (v28 >> 6 == 2)
    {
      if (v14 < 4)
      {
        goto LABEL_17;
      }

      v28 = bswap32(*v12 & 0xFFFFFF7F);
      v32 = 4;
    }

    else if (v28 >> 6 == 1)
    {
      if (v14 == 1)
      {
        goto LABEL_17;
      }

      v28 = bswap32(*v12 & 0xFFBF) >> 16;
      v32 = 2;
    }

    else
    {
      if (v14 < 8)
      {
        goto LABEL_17;
      }

      v28 = bswap64(*v12 & 0xFFFFFFFFFFFFFF3FLL);
      v32 = 8;
    }

    if (v28 >= 0x3E9)
    {
      v57 = __nwlog_obj();
      if (!os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_21;
      }

      *buf = 136446722;
      v225 = "nw_http_copy_metadata_from_binary_message";
      v226 = 2048;
      v227 = v28;
      v228 = 2048;
      v229 = 1000;
      v18 = "%{public}s _output %llu > _max %llu";
      goto LABEL_183;
    }

    v29 = v12 + v32;
    v30 = v14 - v32;
  }

  else
  {
    v29 = v12 + 1;
    v30 = v14 - 1;
  }

  if (v28 - 601 <= 0xFFFFFFFFFFFFFE6ELL)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v31 = gLogObj;
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v225 = "nw_http_copy_metadata_from_binary_message";
      v226 = 2048;
      v227 = v28;
      v18 = "%{public}s Informational statuses not supported: %llu";
      v19 = v31;
      v20 = 22;
      goto LABEL_20;
    }

    goto LABEL_21;
  }

  snprintf(buf, 4uLL, "%llu", v28);
  nw_http_parsed_fields_add(v16, ":status", -1, buf, 0xFFFFFFFFFFFFFFFFLL, 1);
LABEL_59:
  v40 = a3;
  v41 = a4;
  if (a4)
  {
    *a4 = v4 > 1;
  }

  if (v4 < 2)
  {
    if (v30)
    {
      v58 = *v29;
      if (v58 <= 0x3F)
      {
        v59 = 1;
LABEL_112:
        v60 = &v29[v59];
        v45 = v30 - v59;
LABEL_113:
        if (v58 > v45)
        {
          v57 = __nwlog_obj();
          if (!os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_21;
          }

          goto LABEL_182;
        }

        v65 = &v60[v58];
        while (1)
        {
          if (v60 >= v65)
          {
            if (v60)
            {
              if (!v45)
              {
                goto LABEL_378;
              }

              v58 = *v60;
              if (v58 <= 0x3F)
              {
                v102 = 1;
                goto LABEL_252;
              }

              if (v58 >> 6 == 2)
              {
                if (v45 < 4)
                {
                  goto LABEL_378;
                }

                v58 = bswap32(*v60 & 0xFFFFFF7F);
                v102 = 4;
              }

              else
              {
                if (v58 >> 6 == 1)
                {
                  if (v45 != 1)
                  {
                    v58 = bswap32(*v60 & 0xFFBF) >> 16;
                    v102 = 2;
                    goto LABEL_252;
                  }

LABEL_378:
                  v17 = __nwlog_obj();
                  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 136446210;
                    v225 = "nw_http_copy_metadata_from_binary_message";
                    v18 = "%{public}s Failed to decode integer";
                    goto LABEL_19;
                  }

                  goto LABEL_21;
                }

                if (v45 < 8)
                {
                  goto LABEL_378;
                }

                v58 = bswap64(*v60 & 0xFFFFFFFFFFFFFF3FLL);
                v102 = 8;
              }

LABEL_252:
              v45 -= v102;
              v103 = v45 - v58;
              if (v45 < v58)
              {
                v57 = __nwlog_obj();
                if (!os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_21;
                }

                goto LABEL_182;
              }

              if (v40)
              {
                *v40 = v58;
              }

              if (v45 == v58)
              {
                goto LABEL_176;
              }

              v141 = &v60[v102 + v58];
              v56 = *v141;
              if (v56 <= 0x3F)
              {
                v142 = 1;
                goto LABEL_353;
              }

              if (v56 >> 6 == 2)
              {
                if (v103 < 4)
                {
                  goto LABEL_464;
                }

                v56 = bswap32(*v141 & 0xFFFFFF7F);
                v142 = 4;
LABEL_353:
                v143 = &v141[v142];
                v144 = v103 - v142;
              }

              else
              {
                if (v56 >> 6 == 1)
                {
                  if (v103 != 1)
                  {
                    v56 = bswap32(*v141 & 0xFFBF) >> 16;
                    v142 = 2;
                    goto LABEL_353;
                  }

LABEL_464:
                  v17 = __nwlog_obj();
                  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 136446210;
                    v225 = "nw_http_copy_metadata_from_binary_message";
                    v18 = "%{public}s Failed to decode integer";
                    goto LABEL_19;
                  }

                  goto LABEL_21;
                }

                v144 = v103 - 8;
                if (v103 < 8)
                {
                  goto LABEL_464;
                }

                v184 = *v141;
                v143 = v141 + 8;
                v56 = bswap64(v184 & 0xFFFFFFFFFFFFFF3FLL);
                if (HIDWORD(v56))
                {
                  v57 = __nwlog_obj();
                  if (!os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
                  {
                    goto LABEL_21;
                  }

LABEL_481:
                  *buf = 136446722;
                  v225 = "nw_http_copy_metadata_from_binary_message";
                  v226 = 2048;
                  v227 = v56;
                  v228 = 2048;
                  v229 = 0xFFFFFFFFLL;
                  v18 = "%{public}s _output %llu > _max %llu";
                  goto LABEL_183;
                }
              }

              if (v56 > v144)
              {
                v57 = __nwlog_obj();
                if (!os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_21;
                }

                *buf = 136446722;
                v225 = "nw_http_copy_metadata_from_binary_message";
                v226 = 2048;
                v227 = v56;
                v228 = 2048;
                v229 = v144;
                v18 = "%{public}s _length %llu > remaining %zu";
                goto LABEL_183;
              }

              if (!v56)
              {
                goto LABEL_176;
              }

              v104 = 0;
              v152 = &v143[v56];
              while (2)
              {
                if (v143 >= v152)
                {
LABEL_442:
                  result = nw_http_create_metadata_with_parsed_fields(v16, (v4 & 1) == 0);
                  if (!v104)
                  {
                    goto LABEL_22;
                  }

                  v165 = result;
                  v166 = nw_http_parsed_fields_copy_trailer_fields(v104);
                  if (v166)
                  {
                    v167 = v166;
                    nw_http_metadata_set_trailer_fields(v165, v166);
                    os_release(v167);
                    result = v165;
                    goto LABEL_557;
                  }

                  v204 = __nwlog_obj();
                  *buf = 136446210;
                  v225 = "nw_http_copy_metadata_from_binary_message";
                  LODWORD(v220) = 12;
                  v205 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v204, 16, "%{public}s called with null extracted_trailer_fields", buf, v220);
                  type = OS_LOG_TYPE_ERROR;
                  v222 = 0;
                  if (!__nwlog_fault(v205, &type, &v222))
                  {
                    goto LABEL_601;
                  }

                  if (type == OS_LOG_TYPE_FAULT)
                  {
                    v206 = __nwlog_obj();
                    v207 = type;
                    if (os_log_type_enabled(v206, type))
                    {
                      *buf = 136446210;
                      v225 = "nw_http_copy_metadata_from_binary_message";
                      v208 = "%{public}s called with null extracted_trailer_fields";
                      goto LABEL_600;
                    }

                    goto LABEL_601;
                  }

                  if (v222 == 1)
                  {
                    v211 = __nw_create_backtrace_string();
                    v206 = __nwlog_obj();
                    v207 = type;
                    v212 = os_log_type_enabled(v206, type);
                    if (v211)
                    {
                      if (v212)
                      {
                        *buf = 136446466;
                        v225 = "nw_http_copy_metadata_from_binary_message";
                        v226 = 2082;
                        v227 = v211;
                        _os_log_impl(&dword_181A37000, v206, v207, "%{public}s called with null extracted_trailer_fields, dumping backtrace:%{public}s", buf, 0x16u);
                      }

                      free(v211);
                      goto LABEL_601;
                    }

                    if (!v212)
                    {
LABEL_601:
                      if (v205)
                      {
                        free(v205);
                      }

                      result = 0;
                      goto LABEL_557;
                    }

                    *buf = 136446210;
                    v225 = "nw_http_copy_metadata_from_binary_message";
                    v208 = "%{public}s called with null extracted_trailer_fields, no backtrace";
                  }

                  else
                  {
                    v206 = __nwlog_obj();
                    v207 = type;
                    if (!os_log_type_enabled(v206, type))
                    {
                      goto LABEL_601;
                    }

                    *buf = 136446210;
                    v225 = "nw_http_copy_metadata_from_binary_message";
                    v208 = "%{public}s called with null extracted_trailer_fields, backtrace limit exceeded";
                  }

LABEL_600:
                  _os_log_impl(&dword_181A37000, v206, v207, v208, buf, 0xCu);
                  goto LABEL_601;
                }

                if (!v104)
                {
                  v104 = _nw_http_parsed_fields_create();
                }

                if (!v143)
                {
                  v213 = __nwlog_obj();
                  *buf = 136446210;
                  v225 = "_http_vle_decode";
                  LODWORD(v220) = 12;
                  v214 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v213, 16, "%{public}s called with null *buffer", buf, v220);
                  type = OS_LOG_TYPE_ERROR;
                  v222 = 0;
                  if (!__nwlog_fault(v214, &type, &v222))
                  {
                    goto LABEL_609;
                  }

                  if (type == OS_LOG_TYPE_FAULT)
                  {
                    v215 = __nwlog_obj();
                    v216 = type;
                    if (os_log_type_enabled(v215, type))
                    {
                      *buf = 136446210;
                      v225 = "_http_vle_decode";
                      v217 = "%{public}s called with null *buffer";
                      goto LABEL_608;
                    }

                    goto LABEL_609;
                  }

                  if (v222 != 1)
                  {
                    v215 = __nwlog_obj();
                    v216 = type;
                    if (!os_log_type_enabled(v215, type))
                    {
                      goto LABEL_609;
                    }

                    *buf = 136446210;
                    v225 = "_http_vle_decode";
                    v217 = "%{public}s called with null *buffer, backtrace limit exceeded";
                    goto LABEL_608;
                  }

                  v218 = __nw_create_backtrace_string();
                  v215 = __nwlog_obj();
                  v216 = type;
                  v219 = os_log_type_enabled(v215, type);
                  if (v218)
                  {
                    if (v219)
                    {
                      *buf = 136446466;
                      v225 = "_http_vle_decode";
                      v226 = 2082;
                      v227 = v218;
                      _os_log_impl(&dword_181A37000, v215, v216, "%{public}s called with null *buffer, dumping backtrace:%{public}s", buf, 0x16u);
                    }

                    free(v218);
                    goto LABEL_609;
                  }

                  if (v219)
                  {
                    *buf = 136446210;
                    v225 = "_http_vle_decode";
                    v217 = "%{public}s called with null *buffer, no backtrace";
LABEL_608:
                    _os_log_impl(&dword_181A37000, v215, v216, v217, buf, 0xCu);
                  }

LABEL_609:
                  if (v214)
                  {
                    free(v214);
                  }

LABEL_611:
                  v126 = __nwlog_obj();
                  if (!os_log_type_enabled(v126, OS_LOG_TYPE_ERROR))
                  {
                    goto LABEL_556;
                  }

                  *buf = 136446210;
                  v225 = "nw_http_copy_metadata_from_binary_message";
                  v122 = "%{public}s Failed to decode integer";
LABEL_554:
                  v132 = v126;
                  v133 = 12;
                  goto LABEL_555;
                }

                if (!v144)
                {
                  goto LABEL_611;
                }

                v105 = *v143;
                if (v105 > 0x3F)
                {
                  if (v105 >> 6 == 2)
                  {
                    if (v144 < 4)
                    {
                      goto LABEL_611;
                    }

                    v105 = bswap32(*v143 & 0xFFFFFF7F);
                    v153 = 4;
                    goto LABEL_419;
                  }

                  if (v105 >> 6 == 1)
                  {
                    if (v144 == 1)
                    {
                      goto LABEL_611;
                    }

                    v105 = bswap32(*v143 & 0xFFBF) >> 16;
                    v153 = 2;
                    goto LABEL_419;
                  }

                  v74 = v144 >= 8;
                  v155 = v144 - 8;
                  if (!v74)
                  {
                    goto LABEL_611;
                  }

                  v161 = *v143;
                  v160 = v143 + 8;
                  v105 = bswap64(v161 & 0xFFFFFFFFFFFFFF3FLL);
                  if (HIDWORD(v105))
                  {
                    v131 = __nwlog_obj();
                    if (os_log_type_enabled(v131, OS_LOG_TYPE_ERROR))
                    {
LABEL_398:
                      *buf = 136446722;
                      v225 = "nw_http_copy_metadata_from_binary_message";
                      v226 = 2048;
                      v227 = v105;
                      v228 = 2048;
                      v229 = 0xFFFFFFFFLL;
                      v122 = "%{public}s _output %llu > _max %llu";
                      goto LABEL_320;
                    }

LABEL_556:
                    result = 0;
                    if (!v104)
                    {
                      goto LABEL_22;
                    }

LABEL_557:
                    v198 = result;
                    os_release(v104);
                    result = v198;
                    goto LABEL_22;
                  }

                  v154 = v160;
                  v157 = v155 - v105;
                  v156 = v155 == v105;
                  if (v155 < v105)
                  {
LABEL_517:
                    v131 = __nwlog_obj();
                    if (!os_log_type_enabled(v131, OS_LOG_TYPE_ERROR))
                    {
                      goto LABEL_556;
                    }

                    *buf = 136446722;
                    v225 = "nw_http_copy_metadata_from_binary_message";
                    v226 = 2048;
                    v227 = v105;
                    v228 = 2048;
                    v229 = v155;
                    v122 = "%{public}s _length %llu > remaining %zu";
LABEL_320:
                    v132 = v131;
LABEL_324:
                    v133 = 32;
LABEL_555:
                    _os_log_impl(&dword_181A37000, v132, OS_LOG_TYPE_ERROR, v122, buf, v133);
                    goto LABEL_556;
                  }
                }

                else
                {
                  v153 = 1;
LABEL_419:
                  v154 = &v143[v153];
                  v155 = v144 - v153;
                  v157 = v155 - v105;
                  v156 = v155 == v105;
                  if (v155 < v105)
                  {
                    goto LABEL_517;
                  }
                }

                if (v156)
                {
                  goto LABEL_513;
                }

                v158 = (v154 + v105);
                v111 = *(v154 + v105);
                if (v111 <= 0x3F)
                {
                  v159 = 1;
                  goto LABEL_434;
                }

                if (v111 >> 6 == 2)
                {
                  if (v157 < 4)
                  {
                    goto LABEL_513;
                  }

                  v111 = bswap32(*v158 & 0xFFFFFF7F);
                  v159 = 4;
LABEL_434:
                  v162 = v158 + v159;
                  v163 = v157 - v159;
                }

                else
                {
                  if (v111 >> 6 == 1)
                  {
                    if (v157 == 1)
                    {
                      goto LABEL_513;
                    }

                    v111 = bswap32(*v158 & 0xFFBF) >> 16;
                    v159 = 2;
                    goto LABEL_434;
                  }

                  v163 = v157 - 8;
                  if (v157 < 8)
                  {
LABEL_513:
                    v126 = __nwlog_obj();
                    if (!os_log_type_enabled(v126, OS_LOG_TYPE_ERROR))
                    {
                      goto LABEL_556;
                    }

                    *buf = 136446210;
                    v225 = "nw_http_copy_metadata_from_binary_message";
                    v122 = "%{public}s Failed to decode integer";
                    goto LABEL_554;
                  }

                  v164 = *v158;
                  v162 = (v158 + 2);
                  v111 = bswap64(v164 & 0xFFFFFFFFFFFFFF3FLL);
                  if (HIDWORD(v111))
                  {
                    v121 = __nwlog_obj();
                    if (!os_log_type_enabled(v121, OS_LOG_TYPE_ERROR))
                    {
                      goto LABEL_556;
                    }

LABEL_296:
                    *buf = 136446722;
                    v225 = "nw_http_copy_metadata_from_binary_message";
                    v226 = 2048;
                    v227 = v111;
                    v228 = 2048;
                    v229 = 0xFFFFFFFFLL;
                    v122 = "%{public}s _output %llu > _max %llu";
                    goto LABEL_323;
                  }
                }

                v144 = v163 - v111;
                if (v163 < v111)
                {
                  v121 = __nwlog_obj();
                  if (!os_log_type_enabled(v121, OS_LOG_TYPE_ERROR))
                  {
                    goto LABEL_556;
                  }

                  *buf = 136446722;
                  v225 = "nw_http_copy_metadata_from_binary_message";
                  v226 = 2048;
                  v227 = v111;
                  v228 = 2048;
                  v229 = v163;
                  v122 = "%{public}s _length %llu > remaining %zu";
LABEL_323:
                  v132 = v121;
                  goto LABEL_324;
                }

                v143 = &v162[v111];
                if ((nw_http_parsed_fields_add(v104, v154, v105, v162, v111, 1) & 1) == 0)
                {
                  goto LABEL_556;
                }

                continue;
              }
            }

            v199 = __nwlog_obj();
            *buf = 136446210;
            v225 = "_http_vle_decode";
            LODWORD(v220) = 12;
            v200 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v199, 16, "%{public}s called with null *buffer", buf, v220);
            type = OS_LOG_TYPE_ERROR;
            v222 = 0;
            if (!__nwlog_fault(v200, &type, &v222))
            {
              goto LABEL_591;
            }

            if (type == OS_LOG_TYPE_FAULT)
            {
              v201 = __nwlog_obj();
              v202 = type;
              if (os_log_type_enabled(v201, type))
              {
                *buf = 136446210;
                v225 = "_http_vle_decode";
                v203 = "%{public}s called with null *buffer";
                goto LABEL_590;
              }

              goto LABEL_591;
            }

            if (v222 == 1)
            {
              v209 = __nw_create_backtrace_string();
              v201 = __nwlog_obj();
              v202 = type;
              v210 = os_log_type_enabled(v201, type);
              if (v209)
              {
                if (v210)
                {
                  *buf = 136446466;
                  v225 = "_http_vle_decode";
                  v226 = 2082;
                  v227 = v209;
                  _os_log_impl(&dword_181A37000, v201, v202, "%{public}s called with null *buffer, dumping backtrace:%{public}s", buf, 0x16u);
                }

                free(v209);
                goto LABEL_591;
              }

              if (!v210)
              {
LABEL_591:
                if (v200)
                {
                  free(v200);
                }

                goto LABEL_378;
              }

              *buf = 136446210;
              v225 = "_http_vle_decode";
              v203 = "%{public}s called with null *buffer, no backtrace";
            }

            else
            {
              v201 = __nwlog_obj();
              v202 = type;
              if (!os_log_type_enabled(v201, type))
              {
                goto LABEL_591;
              }

              *buf = 136446210;
              v225 = "_http_vle_decode";
              v203 = "%{public}s called with null *buffer, backtrace limit exceeded";
            }

LABEL_590:
            _os_log_impl(&dword_181A37000, v201, v202, v203, buf, 0xCu);
            goto LABEL_591;
          }

          if (!v60)
          {
            v179 = __nwlog_obj();
            *buf = 136446210;
            v225 = "_http_vle_decode";
            LODWORD(v220) = 12;
            v180 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v179, 16, "%{public}s called with null *buffer", buf, v220);
            type = OS_LOG_TYPE_ERROR;
            v222 = 0;
            if (!__nwlog_fault(v180, &type, &v222))
            {
              goto LABEL_543;
            }

            if (type == OS_LOG_TYPE_FAULT)
            {
              v181 = __nwlog_obj();
              v182 = type;
              if (os_log_type_enabled(v181, type))
              {
                *buf = 136446210;
                v225 = "_http_vle_decode";
                v183 = "%{public}s called with null *buffer";
                goto LABEL_542;
              }

              goto LABEL_543;
            }

            if (v222 == 1)
            {
              v185 = __nw_create_backtrace_string();
              v181 = __nwlog_obj();
              v182 = type;
              v186 = os_log_type_enabled(v181, type);
              if (v185)
              {
                if (v186)
                {
                  *buf = 136446466;
                  v225 = "_http_vle_decode";
                  v226 = 2082;
                  v227 = v185;
                  _os_log_impl(&dword_181A37000, v181, v182, "%{public}s called with null *buffer, dumping backtrace:%{public}s", buf, 0x16u);
                }

                free(v185);
                goto LABEL_543;
              }

              if (!v186)
              {
LABEL_543:
                if (v180)
                {
                  free(v180);
                }

LABEL_545:
                v17 = __nwlog_obj();
                if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
                {
                  *buf = 136446210;
                  v225 = "nw_http_copy_metadata_from_binary_message";
                  v18 = "%{public}s Failed to decode integer";
                  goto LABEL_19;
                }

                goto LABEL_21;
              }

              *buf = 136446210;
              v225 = "_http_vle_decode";
              v183 = "%{public}s called with null *buffer, no backtrace";
            }

            else
            {
              v181 = __nwlog_obj();
              v182 = type;
              if (!os_log_type_enabled(v181, type))
              {
                goto LABEL_543;
              }

              *buf = 136446210;
              v225 = "_http_vle_decode";
              v183 = "%{public}s called with null *buffer, backtrace limit exceeded";
            }

LABEL_542:
            _os_log_impl(&dword_181A37000, v181, v182, v183, buf, 0xCu);
            goto LABEL_543;
          }

          if (!v45)
          {
            goto LABEL_545;
          }

          v66 = *v60;
          if (v66 <= 0x3F)
          {
            v67 = 1;
            goto LABEL_144;
          }

          if (v66 >> 6 == 2)
          {
            break;
          }

          if (v66 >> 6 == 1)
          {
            if (v45 == 1)
            {
              goto LABEL_545;
            }

            v66 = bswap32(*v60 & 0xFFBF) >> 16;
            v67 = 2;
            goto LABEL_144;
          }

          v74 = v45 >= 8;
          v45 -= 8;
          if (!v74)
          {
            goto LABEL_545;
          }

          v76 = *v60;
          v75 = v60 + 8;
          v66 = bswap64(v76 & 0xFFFFFFFFFFFFFF3FLL);
          if (HIDWORD(v66))
          {
            v56 = v66;
            v57 = __nwlog_obj();
            if (!os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_21;
            }

            goto LABEL_481;
          }

          v68 = v75;
          v70 = v45 - v66;
          v69 = v45 == v66;
          if (v45 < v66)
          {
LABEL_255:
            v58 = v66;
            v57 = __nwlog_obj();
            if (!os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_21;
            }

LABEL_182:
            *buf = 136446722;
            v225 = "nw_http_copy_metadata_from_binary_message";
            v226 = 2048;
            v227 = v58;
            v228 = 2048;
            v229 = v45;
            v18 = "%{public}s _length %llu > remaining %zu";
LABEL_183:
            v19 = v57;
LABEL_184:
            v20 = 32;
            goto LABEL_20;
          }

LABEL_145:
          if (v69)
          {
            goto LABEL_232;
          }

          v71 = (v68 + v66);
          v72 = *(v68 + v66);
          if (v72 <= 0x3F)
          {
            v73 = 1;
LABEL_159:
            v77 = v71 + v73;
            v78 = v70 - v73;
            goto LABEL_160;
          }

          if (v72 >> 6 == 2)
          {
            if (v70 < 4)
            {
              goto LABEL_232;
            }

            v72 = bswap32(*v71 & 0xFFFFFF7F);
            v73 = 4;
            goto LABEL_159;
          }

          if (v72 >> 6 == 1)
          {
            if (v70 == 1)
            {
              goto LABEL_232;
            }

            v72 = bswap32(*v71 & 0xFFBF) >> 16;
            v73 = 2;
            goto LABEL_159;
          }

          v78 = v70 - 8;
          if (v70 < 8)
          {
LABEL_232:
            v17 = __nwlog_obj();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
              *buf = 136446210;
              v225 = "nw_http_copy_metadata_from_binary_message";
              v18 = "%{public}s Failed to decode integer";
              goto LABEL_19;
            }

            goto LABEL_21;
          }

          v81 = *v71;
          v77 = (v71 + 2);
          v72 = bswap64(v81 & 0xFFFFFFFFFFFFFF3FLL);
          if (HIDWORD(v72))
          {
            v56 = v72;
            v57 = __nwlog_obj();
            if (!os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_21;
            }

            goto LABEL_481;
          }

LABEL_160:
          v45 = v78 - v72;
          if (v78 < v72)
          {
            v123 = v72;
            v57 = __nwlog_obj();
            if (!os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_21;
            }

            *buf = 136446722;
            v225 = "nw_http_copy_metadata_from_binary_message";
            v226 = 2048;
            v227 = v123;
            v228 = 2048;
            v229 = v78;
            v18 = "%{public}s _length %llu > remaining %zu";
            goto LABEL_183;
          }

          v60 = &v77[v72];
          v79 = nw_http_parsed_fields_add(v16, v68, v66, v77, v72, 1);
          v40 = a3;
          v80 = v79;
          result = 0;
          if ((v80 & 1) == 0)
          {
            goto LABEL_22;
          }
        }

        if (v45 < 4)
        {
          goto LABEL_545;
        }

        v66 = bswap32(*v60 & 0xFFFFFF7F);
        v67 = 4;
LABEL_144:
        v68 = &v60[v67];
        v45 -= v67;
        v70 = v45 - v66;
        v69 = v45 == v66;
        if (v45 < v66)
        {
          goto LABEL_255;
        }

        goto LABEL_145;
      }

      if (v58 >> 6 == 2)
      {
        if (v30 >= 4)
        {
          v58 = bswap32(*v29 & 0xFFFFFF7F);
          v59 = 4;
          goto LABEL_112;
        }
      }

      else if (v58 >> 6 == 1)
      {
        if (v30 != 1)
        {
          v58 = bswap32(*v29 & 0xFFBF) >> 16;
          v59 = 2;
          goto LABEL_112;
        }
      }

      else
      {
        v45 = v30 - 8;
        if (v30 >= 8)
        {
          v93 = *v29;
          v60 = v29 + 8;
          v58 = bswap64(v93 & 0xFFFFFFFFFFFFFF3FLL);
          if (HIDWORD(v58))
          {
            v57 = __nwlog_obj();
            if (!os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_21;
            }

LABEL_221:
            *buf = 136446722;
            v225 = "nw_http_copy_metadata_from_binary_message";
            v226 = 2048;
            v227 = v58;
            v228 = 2048;
            v229 = 0xFFFFFFFFLL;
            v18 = "%{public}s _output %llu > _max %llu";
            goto LABEL_183;
          }

          goto LABEL_113;
        }
      }
    }

    v17 = __nwlog_obj();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v225 = "nw_http_copy_metadata_from_binary_message";
      v18 = "%{public}s Failed to decode integer";
      goto LABEL_19;
    }

    goto LABEL_21;
  }

  while (1)
  {
    if (!v30)
    {
      if (v41)
      {
LABEL_176:
        result = nw_http_create_metadata_with_parsed_fields(v16, (v4 & 1) == 0);
        goto LABEL_22;
      }

      v82 = 0;
      v83 = 0;
      goto LABEL_259;
    }

    if (!v29)
    {
      v147 = __nwlog_obj();
      *buf = 136446210;
      v225 = "_http_vle_decode";
      LODWORD(v220) = 12;
      v148 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v147, 16, "%{public}s called with null *buffer", buf, v220);
      type = OS_LOG_TYPE_ERROR;
      v222 = 0;
      if (!__nwlog_fault(v148, &type, &v222))
      {
        goto LABEL_508;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        v149 = __nwlog_obj();
        v150 = type;
        if (!os_log_type_enabled(v149, type))
        {
          goto LABEL_508;
        }

        *buf = 136446210;
        v225 = "_http_vle_decode";
        v151 = "%{public}s called with null *buffer";
      }

      else if (v222 == 1)
      {
        v170 = __nw_create_backtrace_string();
        v149 = __nwlog_obj();
        v150 = type;
        v171 = os_log_type_enabled(v149, type);
        if (v170)
        {
          if (v171)
          {
            *buf = 136446466;
            v225 = "_http_vle_decode";
            v226 = 2082;
            v227 = v170;
            _os_log_impl(&dword_181A37000, v149, v150, "%{public}s called with null *buffer, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v170);
          goto LABEL_508;
        }

        if (!v171)
        {
LABEL_508:
          if (v148)
          {
            free(v148);
          }

LABEL_510:
          v17 = __nwlog_obj();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446210;
            v225 = "nw_http_copy_metadata_from_binary_message";
            v18 = "%{public}s Failed to decode integer";
            goto LABEL_19;
          }

          goto LABEL_21;
        }

        *buf = 136446210;
        v225 = "_http_vle_decode";
        v151 = "%{public}s called with null *buffer, no backtrace";
      }

      else
      {
        v149 = __nwlog_obj();
        v150 = type;
        if (!os_log_type_enabled(v149, type))
        {
          goto LABEL_508;
        }

        *buf = 136446210;
        v225 = "_http_vle_decode";
        v151 = "%{public}s called with null *buffer, backtrace limit exceeded";
      }

      _os_log_impl(&dword_181A37000, v149, v150, v151, buf, 0xCu);
      goto LABEL_508;
    }

    v42 = *v29;
    if (v42 <= 0x3F)
    {
      v43 = 1;
      goto LABEL_72;
    }

    if (v42 >> 6 == 2)
    {
      if (v30 < 4)
      {
        goto LABEL_510;
      }

      v42 = bswap32(*v29 & 0xFFFFFF7F);
      v43 = 4;
LABEL_72:
      v44 = &v29[v43];
      v45 = v30 - v43;
      if (!v42)
      {
        break;
      }

      goto LABEL_73;
    }

    if (v42 >> 6 == 1)
    {
      if (v30 == 1)
      {
        goto LABEL_510;
      }

      v42 = bswap32(*v29 & 0xFFBF) >> 16;
      v43 = 2;
      goto LABEL_72;
    }

    v45 = v30 - 8;
    if (v30 < 8)
    {
      goto LABEL_510;
    }

    v51 = *v29;
    v50 = v29 + 8;
    v42 = bswap64(v51 & 0xFFFFFFFFFFFFFF3FLL);
    if (HIDWORD(v42))
    {
      v56 = v42;
      v57 = __nwlog_obj();
      if (!os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_21;
      }

      goto LABEL_481;
    }

    v44 = v50;
    if (!v42)
    {
      break;
    }

LABEL_73:
    v46 = v45 - v42;
    if (v45 < v42)
    {
      v58 = v42;
      v57 = __nwlog_obj();
      if (!os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_21;
      }

      goto LABEL_182;
    }

    if (v45 == v42)
    {
      goto LABEL_167;
    }

    v47 = &v44[v42];
    v48 = v44[v42];
    if (v48 <= 0x3F)
    {
      v49 = 1;
LABEL_87:
      v52 = &v47[v49];
      v45 = v46 - v49;
      goto LABEL_88;
    }

    if (v48 >> 6 == 2)
    {
      if (v46 < 4)
      {
        goto LABEL_167;
      }

      v48 = bswap32(*v47 & 0xFFFFFF7F);
      v49 = 4;
      goto LABEL_87;
    }

    if (v48 >> 6 == 1)
    {
      if (v46 == 1)
      {
        goto LABEL_167;
      }

      v48 = bswap32(*v47 & 0xFFBF) >> 16;
      v49 = 2;
      goto LABEL_87;
    }

    v45 = v46 - 8;
    if (v46 < 8)
    {
LABEL_167:
      v17 = __nwlog_obj();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446210;
        v225 = "nw_http_copy_metadata_from_binary_message";
        v18 = "%{public}s Failed to decode integer";
        goto LABEL_19;
      }

      goto LABEL_21;
    }

    v55 = *v47;
    v52 = v47 + 8;
    v48 = bswap64(v55 & 0xFFFFFFFFFFFFFF3FLL);
    if (HIDWORD(v48))
    {
      v56 = v48;
      v57 = __nwlog_obj();
      if (!os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_21;
      }

      goto LABEL_481;
    }

LABEL_88:
    v30 = v45 - v48;
    if (v45 < v48)
    {
      v58 = v48;
      v57 = __nwlog_obj();
      if (!os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_21;
      }

      goto LABEL_182;
    }

    v29 = &v52[v48];
    v53 = nw_http_parsed_fields_add(v16, v44, v42, v52, v48, 1);
    v41 = a4;
    v40 = a3;
    v54 = v53;
    result = 0;
    if ((v54 & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  if (v41)
  {
    goto LABEL_176;
  }

  v82 = 0;
  if (!v45)
  {
LABEL_257:
    v83 = 0;
LABEL_258:
    v29 = v44;
LABEL_259:
    if (v40)
    {
      *v40 = v82;
    }

    v104 = 0;
    while (1)
    {
      if (!v83)
      {
        goto LABEL_442;
      }

      if (!v29)
      {
        v187 = __nwlog_obj();
        *buf = 136446210;
        v225 = "_http_vle_decode";
        LODWORD(v220) = 12;
        v188 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v187, 16, "%{public}s called with null *buffer", buf, v220);
        type = OS_LOG_TYPE_ERROR;
        v222 = 0;
        if (!__nwlog_fault(v188, &type, &v222))
        {
          goto LABEL_550;
        }

        if (type == OS_LOG_TYPE_FAULT)
        {
          v189 = __nwlog_obj();
          v190 = type;
          if (os_log_type_enabled(v189, type))
          {
            *buf = 136446210;
            v225 = "_http_vle_decode";
            v191 = "%{public}s called with null *buffer";
            goto LABEL_549;
          }

LABEL_550:
          if (v188)
          {
            free(v188);
          }

LABEL_552:
          v126 = __nwlog_obj();
          if (!os_log_type_enabled(v126, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_556;
          }

          *buf = 136446210;
          v225 = "nw_http_copy_metadata_from_binary_message";
          v122 = "%{public}s Failed to decode integer";
          goto LABEL_554;
        }

        if (v222 == 1)
        {
          v192 = __nw_create_backtrace_string();
          v189 = __nwlog_obj();
          v190 = type;
          v193 = os_log_type_enabled(v189, type);
          if (v192)
          {
            if (v193)
            {
              *buf = 136446466;
              v225 = "_http_vle_decode";
              v226 = 2082;
              v227 = v192;
              _os_log_impl(&dword_181A37000, v189, v190, "%{public}s called with null *buffer, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(v192);
            goto LABEL_550;
          }

          if (!v193)
          {
            goto LABEL_550;
          }

          *buf = 136446210;
          v225 = "_http_vle_decode";
          v191 = "%{public}s called with null *buffer, no backtrace";
        }

        else
        {
          v189 = __nwlog_obj();
          v190 = type;
          if (!os_log_type_enabled(v189, type))
          {
            goto LABEL_550;
          }

          *buf = 136446210;
          v225 = "_http_vle_decode";
          v191 = "%{public}s called with null *buffer, backtrace limit exceeded";
        }

LABEL_549:
        _os_log_impl(&dword_181A37000, v189, v190, v191, buf, 0xCu);
        goto LABEL_550;
      }

      v105 = *v29;
      if (v105 <= 0x3F)
      {
        break;
      }

      if (v105 >> 6 == 2)
      {
        if (v83 < 4)
        {
          goto LABEL_552;
        }

        v105 = bswap32(*v29 & 0xFFFFFF7F);
        v106 = 4;
        goto LABEL_273;
      }

      if (v105 >> 6 == 1)
      {
        if (v83 == 1)
        {
          goto LABEL_552;
        }

        v105 = bswap32(*v29 & 0xFFBF) >> 16;
        v106 = 2;
        goto LABEL_273;
      }

      v74 = v83 >= 8;
      v108 = v83 - 8;
      if (!v74)
      {
        goto LABEL_552;
      }

      v114 = *v29;
      v113 = v29 + 8;
      v105 = bswap64(v114 & 0xFFFFFFFFFFFFFF3FLL);
      if (HIDWORD(v105))
      {
        v131 = __nwlog_obj();
        if (!os_log_type_enabled(v131, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_556;
        }

        goto LABEL_398;
      }

      v107 = v113;
      if (!v105)
      {
        goto LABEL_442;
      }

LABEL_274:
      v109 = v108 - v105;
      if (v108 < v105)
      {
        v131 = __nwlog_obj();
        if (!os_log_type_enabled(v131, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_556;
        }

        *buf = 136446722;
        v225 = "nw_http_copy_metadata_from_binary_message";
        v226 = 2048;
        v227 = v105;
        v228 = 2048;
        v229 = v108;
        v122 = "%{public}s _length %llu > remaining %zu";
        goto LABEL_320;
      }

      if (v108 == v105)
      {
        goto LABEL_306;
      }

      v110 = (v107 + v105);
      v111 = *(v107 + v105);
      if (v111 <= 0x3F)
      {
        v112 = 1;
LABEL_289:
        v115 = v110 + v112;
        v116 = v109 - v112;
        goto LABEL_290;
      }

      if (v111 >> 6 == 2)
      {
        if (v109 < 4)
        {
          goto LABEL_306;
        }

        v111 = bswap32(*v110 & 0xFFFFFF7F);
        v112 = 4;
        goto LABEL_289;
      }

      if (v111 >> 6 == 1)
      {
        if (v109 == 1)
        {
          goto LABEL_306;
        }

        v111 = bswap32(*v110 & 0xFFBF) >> 16;
        v112 = 2;
        goto LABEL_289;
      }

      v116 = v109 - 8;
      if (v109 < 8)
      {
LABEL_306:
        v126 = __nwlog_obj();
        if (!os_log_type_enabled(v126, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_556;
        }

        *buf = 136446210;
        v225 = "nw_http_copy_metadata_from_binary_message";
        v122 = "%{public}s Failed to decode integer";
        goto LABEL_554;
      }

      v120 = *v110;
      v115 = (v110 + 2);
      v111 = bswap64(v120 & 0xFFFFFFFFFFFFFF3FLL);
      if (HIDWORD(v111))
      {
        v121 = __nwlog_obj();
        if (!os_log_type_enabled(v121, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_556;
        }

        goto LABEL_296;
      }

LABEL_290:
      v83 = v116 - v111;
      if (v116 < v111)
      {
        v121 = __nwlog_obj();
        if (!os_log_type_enabled(v121, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_556;
        }

        *buf = 136446722;
        v225 = "nw_http_copy_metadata_from_binary_message";
        v226 = 2048;
        v227 = v111;
        v228 = 2048;
        v229 = v116;
        v122 = "%{public}s _length %llu > remaining %zu";
        goto LABEL_323;
      }

      if (!v104)
      {
        v117 = v107;
        v118 = v115;
        v119 = _nw_http_parsed_fields_create();
        v115 = v118;
        v107 = v117;
        v104 = v119;
      }

      v29 = &v115[v111];
      if ((nw_http_parsed_fields_add(v104, v107, v105, v115, v111, 1) & 1) == 0)
      {
        goto LABEL_556;
      }
    }

    v106 = 1;
LABEL_273:
    v107 = &v29[v106];
    v108 = v83 - v106;
    if (!v105)
    {
      goto LABEL_442;
    }

    goto LABEL_274;
  }

  while (2)
  {
    v58 = *v44;
    if (v58 <= 0x3F)
    {
      v91 = 1;
      goto LABEL_213;
    }

    if (v58 >> 6 == 2)
    {
      if (v45 < 4)
      {
        goto LABEL_359;
      }

      v58 = bswap32(*v44 & 0xFFFFFF7F);
      v91 = 4;
LABEL_213:
      v44 += v91;
      v83 = v45 - v91;
LABEL_214:
      if (!v58)
      {
        goto LABEL_258;
      }

      if (v83 < v58)
      {
        v57 = __nwlog_obj();
        if (!os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_21;
        }

        *buf = 136446722;
        v225 = "nw_http_copy_metadata_from_binary_message";
        v226 = 2048;
        v227 = v58;
        v228 = 2048;
        v229 = v83;
        v18 = "%{public}s _length %llu > remaining %zu";
        goto LABEL_183;
      }

      v82 += v58;
      v44 += v58;
      v45 = v83 - v58;
      if (v83 == v58)
      {
        goto LABEL_257;
      }

      continue;
    }

    break;
  }

  if (v58 >> 6 == 1)
  {
    if (v45 == 1)
    {
      goto LABEL_359;
    }

    v58 = bswap32(*v44 & 0xFFBF) >> 16;
    v91 = 2;
    goto LABEL_213;
  }

  v83 = v45 - 8;
  if (v45 >= 8)
  {
    v92 = *v44;
    v44 += 8;
    v58 = bswap64(v92 & 0xFFFFFFFFFFFFFF3FLL);
    if (HIDWORD(v58))
    {
      v57 = __nwlog_obj();
      if (!os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_21;
      }

      goto LABEL_221;
    }

    goto LABEL_214;
  }

LABEL_359:
  v17 = __nwlog_obj();
  if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_21;
  }

  *buf = 136446210;
  v225 = "nw_http_copy_metadata_from_binary_message";
  v18 = "%{public}s Failed to decode integer";
LABEL_19:
  v19 = v17;
  v20 = 12;
LABEL_20:
  _os_log_impl(&dword_181A37000, v19, OS_LOG_TYPE_ERROR, v18, buf, v20);
LABEL_21:
  result = 0;
LABEL_22:
  if (v16)
  {
    v22 = result;
    os_release(v16);
    return v22;
  }

  return result;
}

BOOL nw_http_fillout_body_from_binary_message(_DWORD *a1, unint64_t a2, char *__dst, size_t a4, size_t *a5)
{
  v95 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v74 = __nwlog_obj();
    *buf = 136446210;
    v92 = "nw_http_fillout_body_from_binary_message";
    v75 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v74, 16, "%{public}s called with null buffer", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v89 = 0;
    if (!__nwlog_fault(v75, &type, &v89))
    {
      goto LABEL_234;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v76 = __nwlog_obj();
      v77 = type;
      if (!os_log_type_enabled(v76, type))
      {
        goto LABEL_234;
      }

      *buf = 136446210;
      v92 = "nw_http_fillout_body_from_binary_message";
      v78 = "%{public}s called with null buffer";
      goto LABEL_233;
    }

    if (v89 != 1)
    {
      v76 = __nwlog_obj();
      v77 = type;
      if (!os_log_type_enabled(v76, type))
      {
        goto LABEL_234;
      }

      *buf = 136446210;
      v92 = "nw_http_fillout_body_from_binary_message";
      v78 = "%{public}s called with null buffer, backtrace limit exceeded";
      goto LABEL_233;
    }

    backtrace_string = __nw_create_backtrace_string();
    v76 = __nwlog_obj();
    v77 = type;
    v84 = os_log_type_enabled(v76, type);
    if (!backtrace_string)
    {
      if (!v84)
      {
        goto LABEL_234;
      }

      *buf = 136446210;
      v92 = "nw_http_fillout_body_from_binary_message";
      v78 = "%{public}s called with null buffer, no backtrace";
      goto LABEL_233;
    }

    if (!v84)
    {
      goto LABEL_212;
    }

    *buf = 136446466;
    v92 = "nw_http_fillout_body_from_binary_message";
    v93 = 2082;
    v94 = backtrace_string;
    v85 = "%{public}s called with null buffer, dumping backtrace:%{public}s";
LABEL_211:
    _os_log_impl(&dword_181A37000, v76, v77, v85, buf, 0x16u);
    goto LABEL_212;
  }

  if (!a2)
  {
    v79 = __nwlog_obj();
    *buf = 136446210;
    v92 = "nw_http_fillout_body_from_binary_message";
    v75 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v79, 16, "%{public}s called with null buffer_length", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v89 = 0;
    if (!__nwlog_fault(v75, &type, &v89))
    {
      goto LABEL_234;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v76 = __nwlog_obj();
      v77 = type;
      if (!os_log_type_enabled(v76, type))
      {
        goto LABEL_234;
      }

      *buf = 136446210;
      v92 = "nw_http_fillout_body_from_binary_message";
      v78 = "%{public}s called with null buffer_length";
      goto LABEL_233;
    }

    if (v89 != 1)
    {
      v76 = __nwlog_obj();
      v77 = type;
      if (!os_log_type_enabled(v76, type))
      {
        goto LABEL_234;
      }

      *buf = 136446210;
      v92 = "nw_http_fillout_body_from_binary_message";
      v78 = "%{public}s called with null buffer_length, backtrace limit exceeded";
      goto LABEL_233;
    }

    backtrace_string = __nw_create_backtrace_string();
    v76 = __nwlog_obj();
    v77 = type;
    v86 = os_log_type_enabled(v76, type);
    if (!backtrace_string)
    {
      if (!v86)
      {
        goto LABEL_234;
      }

      *buf = 136446210;
      v92 = "nw_http_fillout_body_from_binary_message";
      v78 = "%{public}s called with null buffer_length, no backtrace";
      goto LABEL_233;
    }

    if (!v86)
    {
      goto LABEL_212;
    }

    *buf = 136446466;
    v92 = "nw_http_fillout_body_from_binary_message";
    v93 = 2082;
    v94 = backtrace_string;
    v85 = "%{public}s called with null buffer_length, dumping backtrace:%{public}s";
    goto LABEL_211;
  }

  if (!__dst)
  {
    v80 = __nwlog_obj();
    *buf = 136446210;
    v92 = "nw_http_fillout_body_from_binary_message";
    v75 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v80, 16, "%{public}s called with null body_buffer", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v89 = 0;
    if (!__nwlog_fault(v75, &type, &v89))
    {
      goto LABEL_234;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v76 = __nwlog_obj();
      v77 = type;
      if (!os_log_type_enabled(v76, type))
      {
        goto LABEL_234;
      }

      *buf = 136446210;
      v92 = "nw_http_fillout_body_from_binary_message";
      v78 = "%{public}s called with null body_buffer";
      goto LABEL_233;
    }

    if (v89 != 1)
    {
      v76 = __nwlog_obj();
      v77 = type;
      if (!os_log_type_enabled(v76, type))
      {
        goto LABEL_234;
      }

      *buf = 136446210;
      v92 = "nw_http_fillout_body_from_binary_message";
      v78 = "%{public}s called with null body_buffer, backtrace limit exceeded";
      goto LABEL_233;
    }

    backtrace_string = __nw_create_backtrace_string();
    v76 = __nwlog_obj();
    v77 = type;
    v87 = os_log_type_enabled(v76, type);
    if (!backtrace_string)
    {
      if (!v87)
      {
        goto LABEL_234;
      }

      *buf = 136446210;
      v92 = "nw_http_fillout_body_from_binary_message";
      v78 = "%{public}s called with null body_buffer, no backtrace";
      goto LABEL_233;
    }

    if (!v87)
    {
      goto LABEL_212;
    }

    *buf = 136446466;
    v92 = "nw_http_fillout_body_from_binary_message";
    v93 = 2082;
    v94 = backtrace_string;
    v85 = "%{public}s called with null body_buffer, dumping backtrace:%{public}s";
    goto LABEL_211;
  }

  if (!a4)
  {
    v81 = __nwlog_obj();
    *buf = 136446210;
    v92 = "nw_http_fillout_body_from_binary_message";
    v75 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v81, 16, "%{public}s called with null body_buffer_length", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v89 = 0;
    if (!__nwlog_fault(v75, &type, &v89))
    {
      goto LABEL_234;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v76 = __nwlog_obj();
      v77 = type;
      if (!os_log_type_enabled(v76, type))
      {
        goto LABEL_234;
      }

      *buf = 136446210;
      v92 = "nw_http_fillout_body_from_binary_message";
      v78 = "%{public}s called with null body_buffer_length";
      goto LABEL_233;
    }

    if (v89 != 1)
    {
      v76 = __nwlog_obj();
      v77 = type;
      if (!os_log_type_enabled(v76, type))
      {
        goto LABEL_234;
      }

      *buf = 136446210;
      v92 = "nw_http_fillout_body_from_binary_message";
      v78 = "%{public}s called with null body_buffer_length, backtrace limit exceeded";
      goto LABEL_233;
    }

    backtrace_string = __nw_create_backtrace_string();
    v76 = __nwlog_obj();
    v77 = type;
    v88 = os_log_type_enabled(v76, type);
    if (backtrace_string)
    {
      if (v88)
      {
        *buf = 136446466;
        v92 = "nw_http_fillout_body_from_binary_message";
        v93 = 2082;
        v94 = backtrace_string;
        v85 = "%{public}s called with null body_buffer_length, dumping backtrace:%{public}s";
        goto LABEL_211;
      }

LABEL_212:
      free(backtrace_string);
      goto LABEL_234;
    }

    if (!v88)
    {
      goto LABEL_234;
    }

    *buf = 136446210;
    v92 = "nw_http_fillout_body_from_binary_message";
    v78 = "%{public}s called with null body_buffer_length, no backtrace";
LABEL_233:
    _os_log_impl(&dword_181A37000, v76, v77, v78, buf, 0xCu);
LABEL_234:
    if (v75)
    {
      free(v75);
    }

    return 0;
  }

  v5 = *a1;
  if (v5 > 0x3F)
  {
    v8 = v5 >> 6;
    if (v8 == 2)
    {
      if (a2 < 4)
      {
        return 0;
      }

      v5 = bswap32(*a1 & 0xFFFFFF7F);
      v6 = 4;
    }

    else if (v8 == 1)
    {
      if (a2 == 1)
      {
        return 0;
      }

      v5 = bswap32(*a1 & 0xFFBF) >> 16;
      v6 = 2;
    }

    else
    {
      if (a2 < 8)
      {
        return 0;
      }

      v5 = bswap64(*a1 & 0xFFFFFFFFFFFFFF3FLL);
      v6 = 8;
    }
  }

  else
  {
    v6 = 1;
  }

  if (v5 > 3)
  {
    return 0;
  }

  v9 = (a1 + v6);
  v10 = a2 - v6;
  if (v5)
  {
    if (a2 == v6)
    {
      return 0;
    }

    v33 = *v9;
    if (v33 > 0x3F)
    {
      if (v33 >> 6 == 2)
      {
        if (v10 < 4)
        {
          return 0;
        }

        v33 = bswap32(*v9 & 0xFFFFFF7F);
        v36 = 4;
      }

      else if (v33 >> 6 == 1)
      {
        if (v10 == 1)
        {
          return 0;
        }

        v33 = bswap32(*v9 & 0xFFBF) >> 16;
        v36 = 2;
      }

      else
      {
        if (v10 < 8)
        {
          return 0;
        }

        v33 = bswap64(*v9 & 0xFFFFFFFFFFFFFF3FLL);
        v36 = 8;
      }

      if (v33 > 0x3E8)
      {
        return 0;
      }

      v31 = v9 + v36;
      v32 = v10 - v36;
    }

    else
    {
      v31 = v9 + 1;
      v32 = v10 - 1;
    }

    if (v33 - 601 <= 0xFFFFFFFFFFFFFE6ELL)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v34 = gLogObj;
      result = os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }

      *buf = 136446466;
      v92 = "nw_http_fillout_body_from_binary_message";
      v93 = 2048;
      v94 = v33;
      _os_log_impl(&dword_181A37000, v34, OS_LOG_TYPE_ERROR, "%{public}s Informational statuses not supported: %llu", buf, 0x16u);
      return 0;
    }
  }

  else
  {
    if (a2 == v6)
    {
      return 0;
    }

    v11 = *v9;
    if (v11 > 0x3F)
    {
      v35 = v11 >> 6;
      if (v35 == 2)
      {
        if (v10 < 4)
        {
          return 0;
        }

        v11 = bswap32(*v9 & 0xFFFFFF7F);
        v12 = 4;
      }

      else if (v35 == 1)
      {
        if (v10 == 1)
        {
          return 0;
        }

        v11 = bswap32(*v9 & 0xFFBF) >> 16;
        v12 = 2;
      }

      else
      {
        if (v10 < 8)
        {
          return 0;
        }

        v11 = bswap64(*v9 & 0xFFFFFFFFFFFFFF3FLL);
        v12 = 8;
      }
    }

    else
    {
      v12 = 1;
    }

    result = 0;
    if (v11 >> 16)
    {
      return result;
    }

    v13 = v10 - v12;
    if (v13 < v11)
    {
      return result;
    }

    v14 = v13 - v11;
    if (!v14)
    {
      return 0;
    }

    v15 = (v9 + v12 + v11);
    v16 = *v15;
    if (v16 > 0x3F)
    {
      v58 = v16 >> 6;
      if (v58 == 2)
      {
        if (v14 < 4)
        {
          return 0;
        }

        v16 = bswap32(*v15 & 0xFFFFFF7F);
        v17 = 4;
      }

      else if (v58 == 1)
      {
        if (v14 == 1)
        {
          return 0;
        }

        v16 = bswap32(*v15 & 0xFFBF) >> 16;
        v17 = 2;
      }

      else
      {
        if (v14 < 8)
        {
          return 0;
        }

        v16 = bswap64(*v15 & 0xFFFFFFFFFFFFFF3FLL);
        v17 = 8;
      }
    }

    else
    {
      v17 = 1;
    }

    result = 0;
    if (v16 >> 16)
    {
      return result;
    }

    v18 = v14 - v17;
    if (v18 < v16)
    {
      return result;
    }

    v19 = v18 - v16;
    if (!v19)
    {
      return 0;
    }

    v20 = (v15 + v17 + v16);
    v21 = *v20;
    if (v21 > 0x3F)
    {
      v60 = v21 >> 6;
      if (v60 == 2)
      {
        if (v19 < 4)
        {
          return 0;
        }

        v21 = bswap32(*v20 & 0xFFFFFF7F);
        v22 = 4;
      }

      else if (v60 == 1)
      {
        if (v19 == 1)
        {
          return 0;
        }

        v21 = bswap32(*v20 & 0xFFBF) >> 16;
        v22 = 2;
      }

      else
      {
        if (v19 < 8)
        {
          return 0;
        }

        v21 = bswap64(*v20 & 0xFFFFFFFFFFFFFF3FLL);
        v22 = 8;
      }
    }

    else
    {
      v22 = 1;
    }

    v23 = v19 - v22;
    if (v21 >> 16)
    {
      v24 = 0;
    }

    else
    {
      v24 = v23 >= v21;
    }

    if (!v24)
    {
      return 0;
    }

    v25 = v23 - v21;
    if (!v25)
    {
      return 0;
    }

    v26 = (v20 + v22 + v21);
    v27 = *v26;
    if (v27 > 0x3F)
    {
      v82 = v27 >> 6;
      if (v82 == 2)
      {
        if (v25 < 4)
        {
          return 0;
        }

        v27 = bswap32(*v26 & 0xFFFFFF7F);
        v28 = 4;
      }

      else if (v82 == 1)
      {
        if (v25 == 1)
        {
          return 0;
        }

        v27 = bswap32(*v26 & 0xFFBF) >> 16;
        v28 = 2;
      }

      else
      {
        if (v25 < 8)
        {
          return 0;
        }

        v27 = bswap64(*v26 & 0xFFFFFFFFFFFFFF3FLL);
        v28 = 8;
      }
    }

    else
    {
      v28 = 1;
    }

    v29 = v25 - v28;
    if (v27 >> 16)
    {
      v30 = 0;
    }

    else
    {
      v30 = v29 >= v27;
    }

    if (!v30)
    {
      return 0;
    }

    v31 = v26 + v28 + v27;
    v32 = v29 - v27;
  }

  if (v5 < 2)
  {
    if (v32)
    {
      v37 = *v31;
      if (v37 > 0x3F)
      {
        v59 = v37 >> 6;
        if (v59 == 2)
        {
          if (v32 < 4)
          {
            return 0;
          }

          v37 = bswap32(*v31 & 0xFFFFFF7F);
          v38 = 4;
        }

        else if (v59 == 1)
        {
          if (v32 == 1)
          {
            return 0;
          }

          v37 = bswap32(*v31 & 0xFFBF) >> 16;
          v38 = 2;
        }

        else
        {
          if (v32 < 8)
          {
            return 0;
          }

          v37 = bswap64(*v31 & 0xFFFFFFFFFFFFFF3FLL);
          v38 = 8;
        }
      }

      else
      {
        v38 = 1;
      }

      result = 0;
      if (HIDWORD(v37))
      {
        return result;
      }

      v39 = v32 - v38;
      if (v39 < v37)
      {
        return result;
      }

      v40 = v39 - v37;
      if (v40)
      {
        v41 = &v31[v38 + v37];
        v42 = *v41;
        if (v42 > 0x3F)
        {
          if (v42 >> 6 == 2)
          {
            if (v40 < 4)
            {
              return 0;
            }

            v42 = bswap32(*v41 & 0xFFFFFF7F);
            v43 = 4;
          }

          else if (v42 >> 6 == 1)
          {
            if (v40 == 1)
            {
              return 0;
            }

            v42 = bswap32(*v41 & 0xFFBF) >> 16;
            v43 = 2;
          }

          else
          {
            if (v40 < 8)
            {
              return 0;
            }

            v42 = bswap64(*v41 & 0xFFFFFFFFFFFFFF3FLL);
            v43 = 8;
          }
        }

        else
        {
          v43 = 1;
        }

        result = 0;
        if (v42 <= a4 && v42 <= v40 - v43)
        {
          v44 = a5;
          memcpy(__dst, &v41[v43], v42);
          if (v44)
          {
            *v44 = v42;
          }

          return 1;
        }

        return result;
      }
    }

    return 0;
  }

  if (!v32)
  {
LABEL_155:
    v70 = 0;
    goto LABEL_156;
  }

  while (1)
  {
    v45 = *v31;
    if (v45 <= 0x3F)
    {
      v46 = 1;
LABEL_92:
      v48 = &v31[v46];
      v49 = v32 - v46;
      goto LABEL_93;
    }

    v47 = v45 >> 6;
    if (v47 == 2)
    {
      if (v32 < 4)
      {
        return 0;
      }

      v45 = bswap32(*v31 & 0xFFFFFF7F);
      v46 = 4;
      goto LABEL_92;
    }

    if (v47 == 1)
    {
      if (v32 == 1)
      {
        return 0;
      }

      v45 = bswap32(*v31 & 0xFFBF) >> 16;
      v46 = 2;
      goto LABEL_92;
    }

    v24 = v32 >= 8;
    v49 = v32 - 8;
    if (!v24)
    {
      return 0;
    }

    v55 = *v31;
    v48 = v31 + 8;
    v45 = bswap64(v55 & 0xFFFFFFFFFFFFFF3FLL);
    if (HIDWORD(v45))
    {
      return 0;
    }

LABEL_93:
    if (!v45)
    {
      break;
    }

    v24 = v49 >= v45;
    v50 = v49 - v45;
    if (!v24 || !v50)
    {
      return 0;
    }

    v51 = &v48[v45];
    v52 = *v51;
    if (v52 > 0x3F)
    {
      v54 = v52 >> 6;
      if (v54 == 2)
      {
        if (v50 < 4)
        {
          return 0;
        }

        v52 = bswap32(*v51 & 0xFFFFFF7F);
        v53 = 4;
      }

      else if (v54 == 1)
      {
        if (v50 == 1)
        {
          return 0;
        }

        v52 = bswap32(*v51 & 0xFFBF) >> 16;
        v53 = 2;
      }

      else
      {
        if (v50 < 8)
        {
          return 0;
        }

        v52 = bswap64(*v51 & 0xFFFFFFFFFFFFFF3FLL);
        v53 = 8;
      }
    }

    else
    {
      v53 = 1;
    }

    v56 = v50 - v53;
    if (HIDWORD(v52) || v56 < v52)
    {
      return 0;
    }

    v31 = &v51[v53 + v52];
    v32 = v56 - v52;
    if (!v32)
    {
      goto LABEL_155;
    }
  }

  if (!v49)
  {
    goto LABEL_155;
  }

  v63 = 0;
  while (1)
  {
    v64 = *v48;
    if (v64 <= 0x3F)
    {
      v65 = 1;
      v66 = __dst;
      v67 = a4;
      goto LABEL_144;
    }

    if (v64 >> 6 != 2)
    {
      break;
    }

    if (v49 < 4)
    {
      return 0;
    }

    v66 = __dst;
    v67 = a4;
    v64 = bswap32(*v48 & 0xFFFFFF7F);
    v65 = 4;
LABEL_144:
    v68 = &v48[v65];
    v69 = v49 - v65;
    if (!v64)
    {
      goto LABEL_154;
    }

LABEL_145:
    v70 = v64 + v63;
    if (v69 < v64 || v70 > v67)
    {
      return 0;
    }

    v72 = a5;
    memcpy(&v66[v63], v68, v64);
    a5 = v72;
    v48 = &v68[v64];
    v63 = v70;
    v49 = v69 - v64;
    if (v69 == v64)
    {
      goto LABEL_156;
    }
  }

  if (v64 >> 6 == 1)
  {
    if (v49 == 1)
    {
      return 0;
    }

    v66 = __dst;
    v67 = a4;
    v64 = bswap32(*v48 & 0xFFBF) >> 16;
    v65 = 2;
    goto LABEL_144;
  }

  v69 = v49 - 8;
  if (v49 < 8)
  {
    return 0;
  }

  v73 = *v48;
  v68 = v48 + 8;
  v64 = bswap64(v73 & 0xFFFFFFFFFFFFFF3FLL);
  if (HIDWORD(v64))
  {
    return 0;
  }

  v66 = __dst;
  v67 = a4;
  if (v64)
  {
    goto LABEL_145;
  }

LABEL_154:
  v70 = v63;
LABEL_156:
  if (a5)
  {
    *a5 = v70;
  }

  return 1;
}

char *nw_http_access_body_chunk_from_indeterminate_binary_message(_DWORD *a1, unint64_t a2, int a3, unint64_t *a4, _BYTE *a5, char **a6, unint64_t *a7)
{
  v85 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v60 = __nwlog_obj();
    *buf = 136446210;
    v82 = "nw_http_access_body_chunk_from_indeterminate_binary_message";
    v61 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v60, 16, "%{public}s called with null buffer", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v79 = 0;
    if (!__nwlog_fault(v61, &type, &v79))
    {
      goto LABEL_223;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v62 = __nwlog_obj();
      v63 = type;
      if (!os_log_type_enabled(v62, type))
      {
        goto LABEL_223;
      }

      *buf = 136446210;
      v82 = "nw_http_access_body_chunk_from_indeterminate_binary_message";
      v64 = "%{public}s called with null buffer";
      goto LABEL_222;
    }

    if (v79 != 1)
    {
      v62 = __nwlog_obj();
      v63 = type;
      if (!os_log_type_enabled(v62, type))
      {
        goto LABEL_223;
      }

      *buf = 136446210;
      v82 = "nw_http_access_body_chunk_from_indeterminate_binary_message";
      v64 = "%{public}s called with null buffer, backtrace limit exceeded";
      goto LABEL_222;
    }

    backtrace_string = __nw_create_backtrace_string();
    v62 = __nwlog_obj();
    v63 = type;
    v71 = os_log_type_enabled(v62, type);
    if (!backtrace_string)
    {
      if (!v71)
      {
        goto LABEL_223;
      }

      *buf = 136446210;
      v82 = "nw_http_access_body_chunk_from_indeterminate_binary_message";
      v64 = "%{public}s called with null buffer, no backtrace";
      goto LABEL_222;
    }

    if (!v71)
    {
      goto LABEL_189;
    }

    *buf = 136446466;
    v82 = "nw_http_access_body_chunk_from_indeterminate_binary_message";
    v83 = 2082;
    v84 = backtrace_string;
    v72 = "%{public}s called with null buffer, dumping backtrace:%{public}s";
LABEL_188:
    _os_log_impl(&dword_181A37000, v62, v63, v72, buf, 0x16u);
    goto LABEL_189;
  }

  if (!a2)
  {
    v65 = __nwlog_obj();
    *buf = 136446210;
    v82 = "nw_http_access_body_chunk_from_indeterminate_binary_message";
    v61 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v65, 16, "%{public}s called with null buffer_length", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v79 = 0;
    if (!__nwlog_fault(v61, &type, &v79))
    {
      goto LABEL_223;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v62 = __nwlog_obj();
      v63 = type;
      if (!os_log_type_enabled(v62, type))
      {
        goto LABEL_223;
      }

      *buf = 136446210;
      v82 = "nw_http_access_body_chunk_from_indeterminate_binary_message";
      v64 = "%{public}s called with null buffer_length";
      goto LABEL_222;
    }

    if (v79 != 1)
    {
      v62 = __nwlog_obj();
      v63 = type;
      if (!os_log_type_enabled(v62, type))
      {
        goto LABEL_223;
      }

      *buf = 136446210;
      v82 = "nw_http_access_body_chunk_from_indeterminate_binary_message";
      v64 = "%{public}s called with null buffer_length, backtrace limit exceeded";
      goto LABEL_222;
    }

    backtrace_string = __nw_create_backtrace_string();
    v62 = __nwlog_obj();
    v63 = type;
    v73 = os_log_type_enabled(v62, type);
    if (!backtrace_string)
    {
      if (!v73)
      {
        goto LABEL_223;
      }

      *buf = 136446210;
      v82 = "nw_http_access_body_chunk_from_indeterminate_binary_message";
      v64 = "%{public}s called with null buffer_length, no backtrace";
      goto LABEL_222;
    }

    if (!v73)
    {
      goto LABEL_189;
    }

    *buf = 136446466;
    v82 = "nw_http_access_body_chunk_from_indeterminate_binary_message";
    v83 = 2082;
    v84 = backtrace_string;
    v72 = "%{public}s called with null buffer_length, dumping backtrace:%{public}s";
    goto LABEL_188;
  }

  if (!a4)
  {
    v66 = __nwlog_obj();
    *buf = 136446210;
    v82 = "nw_http_access_body_chunk_from_indeterminate_binary_message";
    v61 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v66, 16, "%{public}s called with null out_chunk_length", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v79 = 0;
    if (!__nwlog_fault(v61, &type, &v79))
    {
      goto LABEL_223;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v62 = __nwlog_obj();
      v63 = type;
      if (!os_log_type_enabled(v62, type))
      {
        goto LABEL_223;
      }

      *buf = 136446210;
      v82 = "nw_http_access_body_chunk_from_indeterminate_binary_message";
      v64 = "%{public}s called with null out_chunk_length";
      goto LABEL_222;
    }

    if (v79 != 1)
    {
      v62 = __nwlog_obj();
      v63 = type;
      if (!os_log_type_enabled(v62, type))
      {
        goto LABEL_223;
      }

      *buf = 136446210;
      v82 = "nw_http_access_body_chunk_from_indeterminate_binary_message";
      v64 = "%{public}s called with null out_chunk_length, backtrace limit exceeded";
      goto LABEL_222;
    }

    backtrace_string = __nw_create_backtrace_string();
    v62 = __nwlog_obj();
    v63 = type;
    v74 = os_log_type_enabled(v62, type);
    if (!backtrace_string)
    {
      if (!v74)
      {
        goto LABEL_223;
      }

      *buf = 136446210;
      v82 = "nw_http_access_body_chunk_from_indeterminate_binary_message";
      v64 = "%{public}s called with null out_chunk_length, no backtrace";
      goto LABEL_222;
    }

    if (!v74)
    {
      goto LABEL_189;
    }

    *buf = 136446466;
    v82 = "nw_http_access_body_chunk_from_indeterminate_binary_message";
    v83 = 2082;
    v84 = backtrace_string;
    v72 = "%{public}s called with null out_chunk_length, dumping backtrace:%{public}s";
    goto LABEL_188;
  }

  if (!a5)
  {
    v67 = __nwlog_obj();
    *buf = 136446210;
    v82 = "nw_http_access_body_chunk_from_indeterminate_binary_message";
    v61 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v67, 16, "%{public}s called with null out_is_complete", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v79 = 0;
    if (!__nwlog_fault(v61, &type, &v79))
    {
      goto LABEL_223;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v62 = __nwlog_obj();
      v63 = type;
      if (!os_log_type_enabled(v62, type))
      {
        goto LABEL_223;
      }

      *buf = 136446210;
      v82 = "nw_http_access_body_chunk_from_indeterminate_binary_message";
      v64 = "%{public}s called with null out_is_complete";
      goto LABEL_222;
    }

    if (v79 != 1)
    {
      v62 = __nwlog_obj();
      v63 = type;
      if (!os_log_type_enabled(v62, type))
      {
        goto LABEL_223;
      }

      *buf = 136446210;
      v82 = "nw_http_access_body_chunk_from_indeterminate_binary_message";
      v64 = "%{public}s called with null out_is_complete, backtrace limit exceeded";
      goto LABEL_222;
    }

    backtrace_string = __nw_create_backtrace_string();
    v62 = __nwlog_obj();
    v63 = type;
    v75 = os_log_type_enabled(v62, type);
    if (!backtrace_string)
    {
      if (!v75)
      {
        goto LABEL_223;
      }

      *buf = 136446210;
      v82 = "nw_http_access_body_chunk_from_indeterminate_binary_message";
      v64 = "%{public}s called with null out_is_complete, no backtrace";
      goto LABEL_222;
    }

    if (!v75)
    {
      goto LABEL_189;
    }

    *buf = 136446466;
    v82 = "nw_http_access_body_chunk_from_indeterminate_binary_message";
    v83 = 2082;
    v84 = backtrace_string;
    v72 = "%{public}s called with null out_is_complete, dumping backtrace:%{public}s";
    goto LABEL_188;
  }

  if (!a6)
  {
    v68 = __nwlog_obj();
    *buf = 136446210;
    v82 = "nw_http_access_body_chunk_from_indeterminate_binary_message";
    v61 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v68, 16, "%{public}s called with null out_next_chunk", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v79 = 0;
    if (!__nwlog_fault(v61, &type, &v79))
    {
      goto LABEL_223;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v62 = __nwlog_obj();
      v63 = type;
      if (!os_log_type_enabled(v62, type))
      {
        goto LABEL_223;
      }

      *buf = 136446210;
      v82 = "nw_http_access_body_chunk_from_indeterminate_binary_message";
      v64 = "%{public}s called with null out_next_chunk";
      goto LABEL_222;
    }

    if (v79 != 1)
    {
      v62 = __nwlog_obj();
      v63 = type;
      if (!os_log_type_enabled(v62, type))
      {
        goto LABEL_223;
      }

      *buf = 136446210;
      v82 = "nw_http_access_body_chunk_from_indeterminate_binary_message";
      v64 = "%{public}s called with null out_next_chunk, backtrace limit exceeded";
      goto LABEL_222;
    }

    backtrace_string = __nw_create_backtrace_string();
    v62 = __nwlog_obj();
    v63 = type;
    v76 = os_log_type_enabled(v62, type);
    if (!backtrace_string)
    {
      if (!v76)
      {
        goto LABEL_223;
      }

      *buf = 136446210;
      v82 = "nw_http_access_body_chunk_from_indeterminate_binary_message";
      v64 = "%{public}s called with null out_next_chunk, no backtrace";
      goto LABEL_222;
    }

    if (!v76)
    {
      goto LABEL_189;
    }

    *buf = 136446466;
    v82 = "nw_http_access_body_chunk_from_indeterminate_binary_message";
    v83 = 2082;
    v84 = backtrace_string;
    v72 = "%{public}s called with null out_next_chunk, dumping backtrace:%{public}s";
    goto LABEL_188;
  }

  if (!a7)
  {
    v69 = __nwlog_obj();
    *buf = 136446210;
    v82 = "nw_http_access_body_chunk_from_indeterminate_binary_message";
    v61 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v69, 16, "%{public}s called with null out_remaining_length", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v79 = 0;
    if (!__nwlog_fault(v61, &type, &v79))
    {
      goto LABEL_223;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v62 = __nwlog_obj();
      v63 = type;
      if (!os_log_type_enabled(v62, type))
      {
        goto LABEL_223;
      }

      *buf = 136446210;
      v82 = "nw_http_access_body_chunk_from_indeterminate_binary_message";
      v64 = "%{public}s called with null out_remaining_length";
      goto LABEL_222;
    }

    if (v79 != 1)
    {
      v62 = __nwlog_obj();
      v63 = type;
      if (!os_log_type_enabled(v62, type))
      {
        goto LABEL_223;
      }

      *buf = 136446210;
      v82 = "nw_http_access_body_chunk_from_indeterminate_binary_message";
      v64 = "%{public}s called with null out_remaining_length, backtrace limit exceeded";
      goto LABEL_222;
    }

    backtrace_string = __nw_create_backtrace_string();
    v62 = __nwlog_obj();
    v63 = type;
    v77 = os_log_type_enabled(v62, type);
    if (backtrace_string)
    {
      if (v77)
      {
        *buf = 136446466;
        v82 = "nw_http_access_body_chunk_from_indeterminate_binary_message";
        v83 = 2082;
        v84 = backtrace_string;
        v72 = "%{public}s called with null out_remaining_length, dumping backtrace:%{public}s";
        goto LABEL_188;
      }

LABEL_189:
      free(backtrace_string);
      goto LABEL_223;
    }

    if (!v77)
    {
      goto LABEL_223;
    }

    *buf = 136446210;
    v82 = "nw_http_access_body_chunk_from_indeterminate_binary_message";
    v64 = "%{public}s called with null out_remaining_length, no backtrace";
LABEL_222:
    _os_log_impl(&dword_181A37000, v62, v63, v64, buf, 0xCu);
LABEL_223:
    if (v61)
    {
      free(v61);
    }

    return 0;
  }

  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  *a7 = a2;
  if (!a3)
  {
    goto LABEL_110;
  }

  v7 = *a1;
  if (v7 > 0x3F)
  {
    v13 = v7 >> 6;
    if (v13 == 2)
    {
      if (a2 < 4)
      {
        return 0;
      }

      v7 = bswap32(*a1 & 0xFFFFFF7F);
      v8 = 4;
    }

    else if (v13 == 1)
    {
      if (a2 == 1)
      {
        return 0;
      }

      v7 = bswap32(*a1 & 0xFFBF) >> 16;
      v8 = 2;
    }

    else
    {
      if (a2 < 8)
      {
        return 0;
      }

      v7 = bswap64(*a1 & 0xFFFFFFFFFFFFFF3FLL);
      v8 = 8;
    }
  }

  else
  {
    v8 = 1;
  }

  if (v7 > 3)
  {
    return 0;
  }

  if (v7 <= 1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v9 = gLogObj;
    if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    *buf = 136446210;
    v82 = "nw_http_access_body_chunk_from_indeterminate_binary_message";
    v10 = "%{public}s Message is not indeterminate";
    v11 = v9;
    v12 = 12;
    goto LABEL_14;
  }

  v14 = (a1 + v8);
  v15 = a2 - v8;
  if (v7)
  {
    if (a2 == v8)
    {
      return 0;
    }

    v38 = *v14;
    if (v38 > 0x3F)
    {
      if (v38 >> 6 == 2)
      {
        if (v15 < 4)
        {
          return 0;
        }

        v38 = bswap32(*v14 & 0xFFFFFF7F);
        v40 = 4;
      }

      else if (v38 >> 6 == 1)
      {
        if (v15 == 1)
        {
          return 0;
        }

        v38 = bswap32(*v14 & 0xFFBF) >> 16;
        v40 = 2;
      }

      else
      {
        if (v15 < 8)
        {
          return 0;
        }

        v38 = bswap64(*v14 & 0xFFFFFFFFFFFFFF3FLL);
        v40 = 8;
      }

      if (v38 > 0x3E8)
      {
        return 0;
      }

      v36 = (v14 + v40);
      v37 = v15 - v40;
    }

    else
    {
      v36 = (v14 + 1);
      v37 = v15 - 1;
    }

    if (v38 - 601 <= 0xFFFFFFFFFFFFFE6ELL)
    {
      v39 = __nwlog_obj();
      if (!os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        return 0;
      }

      *buf = 136446466;
      v82 = "nw_http_access_body_chunk_from_indeterminate_binary_message";
      v83 = 2048;
      v84 = v38;
      v10 = "%{public}s Informational statuses not supported: %llu";
      v11 = v39;
      v12 = 22;
LABEL_14:
      _os_log_impl(&dword_181A37000, v11, OS_LOG_TYPE_ERROR, v10, buf, v12);
      return 0;
    }
  }

  else
  {
    if (a2 == v8)
    {
      return 0;
    }

    v16 = *v14;
    if (v16 > 0x3F)
    {
      if (v16 >> 6 == 2)
      {
        if (v15 < 4)
        {
          return 0;
        }

        v16 = bswap32(*v14 & 0xFFFFFF7F);
        v17 = 4;
      }

      else if (v16 >> 6 == 1)
      {
        if (v15 == 1)
        {
          return 0;
        }

        v16 = bswap32(*v14 & 0xFFBF) >> 16;
        v17 = 2;
      }

      else
      {
        if (v15 < 8)
        {
          return 0;
        }

        v16 = bswap64(*v14 & 0xFFFFFFFFFFFFFF3FLL);
        v17 = 8;
      }
    }

    else
    {
      v17 = 1;
    }

    v18 = 0;
    if (v16 >> 16)
    {
      return v18;
    }

    v19 = v15 - v17;
    if (v19 < v16)
    {
      return v18;
    }

    v20 = v19 - v16;
    if (!v20)
    {
      return 0;
    }

    v21 = (v14 + v17 + v16);
    v22 = *v21;
    if (v22 > 0x3F)
    {
      if (v22 >> 6 == 2)
      {
        if (v20 < 4)
        {
          return 0;
        }

        v22 = bswap32(*v21 & 0xFFFFFF7F);
        v23 = 4;
      }

      else if (v22 >> 6 == 1)
      {
        if (v20 == 1)
        {
          return 0;
        }

        v22 = bswap32(*v21 & 0xFFBF) >> 16;
        v23 = 2;
      }

      else
      {
        if (v20 < 8)
        {
          return 0;
        }

        v22 = bswap64(*v21 & 0xFFFFFFFFFFFFFF3FLL);
        v23 = 8;
      }
    }

    else
    {
      v23 = 1;
    }

    v18 = 0;
    if (v22 >> 16)
    {
      return v18;
    }

    v24 = v20 - v23;
    if (v24 < v22)
    {
      return v18;
    }

    v25 = v24 - v22;
    if (!v25)
    {
      return 0;
    }

    v26 = (v21 + v23 + v22);
    v27 = *v26;
    if (v27 > 0x3F)
    {
      if (v27 >> 6 == 2)
      {
        if (v25 < 4)
        {
          return 0;
        }

        v27 = bswap32(*v26 & 0xFFFFFF7F);
        v28 = 4;
      }

      else if (v27 >> 6 == 1)
      {
        if (v25 == 1)
        {
          return 0;
        }

        v27 = bswap32(*v26 & 0xFFBF) >> 16;
        v28 = 2;
      }

      else
      {
        if (v25 < 8)
        {
          return 0;
        }

        v27 = bswap64(*v26 & 0xFFFFFFFFFFFFFF3FLL);
        v28 = 8;
      }
    }

    else
    {
      v28 = 1;
    }

    v18 = 0;
    if (v27 >> 16)
    {
      return v18;
    }

    v29 = v25 - v28;
    if (v29 < v27)
    {
      return v18;
    }

    v30 = v29 - v27;
    if (!v30)
    {
      return 0;
    }

    v31 = (v26 + v28 + v27);
    v32 = *v31;
    if (v32 > 0x3F)
    {
      v78 = v32 >> 6;
      if (v78 == 2)
      {
        if (v30 < 4)
        {
          return 0;
        }

        v32 = bswap32(*v31 & 0xFFFFFF7F);
        v33 = 4;
      }

      else if (v78 == 1)
      {
        if (v30 == 1)
        {
          return 0;
        }

        v32 = bswap32(*v31 & 0xFFBF) >> 16;
        v33 = 2;
      }

      else
      {
        if (v30 < 8)
        {
          return 0;
        }

        v32 = bswap64(*v31 & 0xFFFFFFFFFFFFFF3FLL);
        v33 = 8;
      }
    }

    else
    {
      v33 = 1;
    }

    v34 = v30 - v33;
    if (v32 >> 16)
    {
      v35 = 0;
    }

    else
    {
      v35 = v34 >= v32;
    }

    if (!v35)
    {
      return 0;
    }

    v36 = (v31 + v33 + v32);
    v37 = v34 - v32;
  }

  if (!v37)
  {
    return 0;
  }

  while (1)
  {
    v45 = *v36;
    if (v45 <= 0x3F)
    {
      v46 = 1;
LABEL_80:
      a1 = (v36 + v46);
      a2 = v37 - v46;
      goto LABEL_81;
    }

    v47 = v45 >> 6;
    if (v47 == 2)
    {
      if (v37 < 4)
      {
        return 0;
      }

      v45 = bswap32(*v36 & 0xFFFFFF7F);
      v46 = 4;
      goto LABEL_80;
    }

    if (v47 == 1)
    {
      if (v37 == 1)
      {
        return 0;
      }

      v45 = bswap32(*v36 & 0xFFBF) >> 16;
      v46 = 2;
      goto LABEL_80;
    }

    a2 = v37 - 8;
    if (v37 < 8)
    {
      return 0;
    }

    v51 = *v36;
    a1 = v36 + 2;
    v45 = bswap64(v51 & 0xFFFFFFFFFFFFFF3FLL);
    if (HIDWORD(v45))
    {
      return 0;
    }

LABEL_81:
    if (!v45)
    {
      break;
    }

    v48 = a2 - v45;
    if (a2 <= v45)
    {
      return 0;
    }

    v49 = (a1 + v45);
    v50 = *(a1 + v45);
    if (v50 <= 0x3F)
    {
      v41 = 1;
    }

    else if (v50 >> 6 == 2)
    {
      if (v48 < 4)
      {
        return 0;
      }

      v50 = bswap32(*v49 & 0xFFFFFF7F);
      v41 = 4;
    }

    else if (v50 >> 6 == 1)
    {
      if (v48 == 1)
      {
        return 0;
      }

      v50 = bswap32(*v49 & 0xFFBF) >> 16;
      v41 = 2;
    }

    else
    {
      if (v48 < 8)
      {
        return 0;
      }

      v50 = bswap64(*v49 & 0xFFFFFFFFFFFFFF3FLL);
      v41 = 8;
    }

    v18 = 0;
    v42 = v48 - v41;
    v36 = (v49 + v41 + v50);
    v37 = v48 - v41 - v50;
    if (HIDWORD(v50))
    {
      v43 = 0;
    }

    else
    {
      v43 = v42 >= v50;
    }

    if (!v43 || v37 == 0)
    {
      return v18;
    }
  }

  if (!a2)
  {
    return 0;
  }

LABEL_110:
  v52 = *a1;
  if (v52 <= 0x3F)
  {
    v53 = 1;
    goto LABEL_112;
  }

  if (v52 >> 6 == 2)
  {
    if (a2 < 4)
    {
      return 0;
    }

    v52 = bswap32(*a1 & 0xFFFFFF7F);
    v53 = 4;
LABEL_112:
    v18 = a1 + v53;
    v54 = a2 - v53;
    if (!v52)
    {
      goto LABEL_127;
    }
  }

  else
  {
    if (v52 >> 6 == 1)
    {
      if (a2 != 1)
      {
        v52 = bswap32(*a1 & 0xFFBF) >> 16;
        v53 = 2;
        goto LABEL_112;
      }

      return 0;
    }

    v54 = a2 - 8;
    if (a2 < 8)
    {
      return 0;
    }

    v58 = *a1;
    v57 = (a1 + 2);
    v52 = bswap64(v58 & 0xFFFFFFFFFFFFFF3FLL);
    if (HIDWORD(v52))
    {
      return 0;
    }

    v18 = v57;
    if (!v52)
    {
LABEL_127:
      *a5 = 1;
      *a7 = v54;
      if (!v54)
      {
        v18 = 0;
      }

      *a6 = v18;
      return 0;
    }
  }

  v35 = v54 >= v52;
  v55 = v54 - v52;
  if (!v35)
  {
    return 0;
  }

  *a4 = v52;
  *a7 = v55;
  v56 = &v18[v52];
  if (!v55)
  {
    v56 = 0;
  }

  *a6 = v56;
  return v18;
}

uint64_t nw_http_copy_trailer_fields_from_indeterminate_binary_message(const char *a1, unint64_t a2)
{
  v55 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v36 = __nwlog_obj();
    *buf = 136446210;
    v50 = "nw_http_copy_trailer_fields_from_indeterminate_binary_message";
    v37 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v36, 16, "%{public}s called with null buffer", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v47 = 0;
    if (!__nwlog_fault(v37, &type, &v47))
    {
      goto LABEL_102;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v38 = __nwlog_obj();
      v39 = type;
      if (os_log_type_enabled(v38, type))
      {
        *buf = 136446210;
        v50 = "nw_http_copy_trailer_fields_from_indeterminate_binary_message";
        v40 = "%{public}s called with null buffer";
LABEL_101:
        _os_log_impl(&dword_181A37000, v38, v39, v40, buf, 0xCu);
      }

LABEL_102:
      if (v37)
      {
        free(v37);
      }

      return 0;
    }

    if (v47 != 1)
    {
      v38 = __nwlog_obj();
      v39 = type;
      if (os_log_type_enabled(v38, type))
      {
        *buf = 136446210;
        v50 = "nw_http_copy_trailer_fields_from_indeterminate_binary_message";
        v40 = "%{public}s called with null buffer, backtrace limit exceeded";
        goto LABEL_101;
      }

      goto LABEL_102;
    }

    backtrace_string = __nw_create_backtrace_string();
    v38 = __nwlog_obj();
    v39 = type;
    v43 = os_log_type_enabled(v38, type);
    if (!backtrace_string)
    {
      if (v43)
      {
        *buf = 136446210;
        v50 = "nw_http_copy_trailer_fields_from_indeterminate_binary_message";
        v40 = "%{public}s called with null buffer, no backtrace";
        goto LABEL_101;
      }

      goto LABEL_102;
    }

    if (v43)
    {
      *buf = 136446466;
      v50 = "nw_http_copy_trailer_fields_from_indeterminate_binary_message";
      v51 = 2082;
      v52 = backtrace_string;
      v44 = "%{public}s called with null buffer, dumping backtrace:%{public}s";
LABEL_79:
      _os_log_impl(&dword_181A37000, v38, v39, v44, buf, 0x16u);
    }

LABEL_80:
    free(backtrace_string);
    goto LABEL_102;
  }

  v2 = a2;
  if (!a2)
  {
    v41 = __nwlog_obj();
    *buf = 136446210;
    v50 = "nw_http_copy_trailer_fields_from_indeterminate_binary_message";
    v37 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v41, 16, "%{public}s called with null buffer_length", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v47 = 0;
    if (!__nwlog_fault(v37, &type, &v47))
    {
      goto LABEL_102;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v38 = __nwlog_obj();
      v39 = type;
      if (os_log_type_enabled(v38, type))
      {
        *buf = 136446210;
        v50 = "nw_http_copy_trailer_fields_from_indeterminate_binary_message";
        v40 = "%{public}s called with null buffer_length";
        goto LABEL_101;
      }

      goto LABEL_102;
    }

    if (v47 != 1)
    {
      v38 = __nwlog_obj();
      v39 = type;
      if (os_log_type_enabled(v38, type))
      {
        *buf = 136446210;
        v50 = "nw_http_copy_trailer_fields_from_indeterminate_binary_message";
        v40 = "%{public}s called with null buffer_length, backtrace limit exceeded";
        goto LABEL_101;
      }

      goto LABEL_102;
    }

    backtrace_string = __nw_create_backtrace_string();
    v38 = __nwlog_obj();
    v39 = type;
    v45 = os_log_type_enabled(v38, type);
    if (!backtrace_string)
    {
      if (v45)
      {
        *buf = 136446210;
        v50 = "nw_http_copy_trailer_fields_from_indeterminate_binary_message";
        v40 = "%{public}s called with null buffer_length, no backtrace";
        goto LABEL_101;
      }

      goto LABEL_102;
    }

    if (v45)
    {
      *buf = 136446466;
      v50 = "nw_http_copy_trailer_fields_from_indeterminate_binary_message";
      v51 = 2082;
      v52 = backtrace_string;
      v44 = "%{public}s called with null buffer_length, dumping backtrace:%{public}s";
      goto LABEL_79;
    }

    goto LABEL_80;
  }

  v3 = a1;
  v4 = 0;
  while (1)
  {
    if (!v2)
    {
LABEL_39:
      if (!v4)
      {
        return 0;
      }

      v4 = v4;
      v24 = _nw_http_parsed_fields_copy_trailer_fields();

      goto LABEL_91;
    }

    if (!v3)
    {
      break;
    }

    v5 = *v3;
    if (v5 <= 0x3F)
    {
      v6 = 1;
      goto LABEL_15;
    }

    if (v5 >> 6 == 2)
    {
      if (v2 < 4)
      {
        goto LABEL_86;
      }

      v5 = bswap32(*v3 & 0xFFFFFF7F);
      v6 = 4;
LABEL_15:
      v7 = &v3[v6];
      v8 = v2 - v6;
      if (!v5)
      {
        goto LABEL_39;
      }

      goto LABEL_16;
    }

    if (v5 >> 6 == 1)
    {
      if (v2 == 1)
      {
        goto LABEL_86;
      }

      v5 = bswap32(*v3 & 0xFFBF) >> 16;
      v6 = 2;
      goto LABEL_15;
    }

    v13 = v2 >= 8;
    v8 = v2 - 8;
    if (!v13)
    {
      goto LABEL_86;
    }

    v15 = *v3;
    v14 = v3 + 8;
    v5 = bswap64(v15 & 0xFFFFFFFFFFFFFF3FLL);
    if (HIDWORD(v5))
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v26 = gLogObj;
      if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_90;
      }

      *buf = 136446722;
      v50 = "nw_http_copy_trailer_fields_from_indeterminate_binary_message";
      v51 = 2048;
      v52 = v5;
      v53 = 2048;
      v54 = 0xFFFFFFFFLL;
      v23 = "%{public}s _output %llu > _max %llu";
LABEL_45:
      v27 = v26;
LABEL_49:
      v28 = 32;
LABEL_89:
      _os_log_impl(&dword_181A37000, v27, OS_LOG_TYPE_ERROR, v23, buf, v28);
      goto LABEL_90;
    }

    v7 = v14;
    if (!v5)
    {
      goto LABEL_39;
    }

LABEL_16:
    v9 = v8 - v5;
    if (v8 < v5)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v26 = gLogObj;
      if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_90;
      }

      *buf = 136446722;
      v50 = "nw_http_copy_trailer_fields_from_indeterminate_binary_message";
      v51 = 2048;
      v52 = v5;
      v53 = 2048;
      v54 = v8;
      v23 = "%{public}s _length %llu > remaining %zu";
      goto LABEL_45;
    }

    if (v8 == v5)
    {
      goto LABEL_41;
    }

    v10 = (v7 + v5);
    v11 = *(v7 + v5);
    if (v11 <= 0x3F)
    {
      v12 = 1;
LABEL_31:
      v16 = v10 + v12;
      v17 = v9 - v12;
      goto LABEL_32;
    }

    if (v11 >> 6 == 2)
    {
      if (v9 < 4)
      {
        goto LABEL_41;
      }

      v11 = bswap32(*v10 & 0xFFFFFF7F);
      v12 = 4;
      goto LABEL_31;
    }

    if (v11 >> 6 == 1)
    {
      if (v9 == 1)
      {
        goto LABEL_41;
      }

      v11 = bswap32(*v10 & 0xFFBF) >> 16;
      v12 = 2;
      goto LABEL_31;
    }

    v17 = v9 - 8;
    if (v9 < 8)
    {
LABEL_41:
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v25 = gLogObj;
      if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_90;
      }

      *buf = 136446210;
      v50 = "nw_http_copy_trailer_fields_from_indeterminate_binary_message";
      v23 = "%{public}s Failed to decode integer";
      goto LABEL_88;
    }

    v21 = *v10;
    v16 = (v10 + 2);
    v11 = bswap64(v21 & 0xFFFFFFFFFFFFFF3FLL);
    if (HIDWORD(v11))
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v22 = gLogObj;
      if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_90;
      }

      *buf = 136446722;
      v50 = "nw_http_copy_trailer_fields_from_indeterminate_binary_message";
      v51 = 2048;
      v52 = v11;
      v53 = 2048;
      v54 = 0xFFFFFFFFLL;
      v23 = "%{public}s _output %llu > _max %llu";
LABEL_48:
      v27 = v22;
      goto LABEL_49;
    }

LABEL_32:
    v2 = v17 - v11;
    if (v17 < v11)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v22 = gLogObj;
      if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_90;
      }

      *buf = 136446722;
      v50 = "nw_http_copy_trailer_fields_from_indeterminate_binary_message";
      v51 = 2048;
      v52 = v11;
      v53 = 2048;
      v54 = v17;
      v23 = "%{public}s _length %llu > remaining %zu";
      goto LABEL_48;
    }

    if (!v4)
    {
      v18 = v7;
      v19 = v16;
      v20 = _nw_http_parsed_fields_create();
      v16 = v19;
      v7 = v18;
      v4 = v20;
    }

    v3 = &v16[v11];
    if ((nw_http_parsed_fields_add(v4, v7, v5, v16, v11, 1) & 1) == 0)
    {
      goto LABEL_90;
    }
  }

  v29 = __nwlog_obj();
  *buf = 136446210;
  v50 = "_http_vle_decode";
  v30 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v29, 16, "%{public}s called with null *buffer", buf, 12);
  type = OS_LOG_TYPE_ERROR;
  v47 = 0;
  if (!__nwlog_fault(v30, &type, &v47))
  {
    goto LABEL_84;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v31 = __nwlog_obj();
    v32 = type;
    if (os_log_type_enabled(v31, type))
    {
      *buf = 136446210;
      v50 = "_http_vle_decode";
      v33 = "%{public}s called with null *buffer";
      goto LABEL_83;
    }

    goto LABEL_84;
  }

  if (v47 != 1)
  {
    v31 = __nwlog_obj();
    v32 = type;
    if (!os_log_type_enabled(v31, type))
    {
      goto LABEL_84;
    }

    *buf = 136446210;
    v50 = "_http_vle_decode";
    v33 = "%{public}s called with null *buffer, backtrace limit exceeded";
    goto LABEL_83;
  }

  v34 = __nw_create_backtrace_string();
  v31 = __nwlog_obj();
  v32 = type;
  v35 = os_log_type_enabled(v31, type);
  if (v34)
  {
    if (v35)
    {
      *buf = 136446466;
      v50 = "_http_vle_decode";
      v51 = 2082;
      v52 = v34;
      _os_log_impl(&dword_181A37000, v31, v32, "%{public}s called with null *buffer, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(v34);
    goto LABEL_84;
  }

  if (v35)
  {
    *buf = 136446210;
    v50 = "_http_vle_decode";
    v33 = "%{public}s called with null *buffer, no backtrace";
LABEL_83:
    _os_log_impl(&dword_181A37000, v31, v32, v33, buf, 0xCu);
  }

LABEL_84:
  if (v30)
  {
    free(v30);
  }

LABEL_86:
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v25 = gLogObj;
  if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446210;
    v50 = "nw_http_copy_trailer_fields_from_indeterminate_binary_message";
    v23 = "%{public}s Failed to decode integer";
LABEL_88:
    v27 = v25;
    v28 = 12;
    goto LABEL_89;
  }

LABEL_90:
  v24 = 0;
  result = 0;
  if (!v4)
  {
    return result;
  }

LABEL_91:
  os_release(v4);
  return v24;
}

nw_protocol_definition_t __nw_protocol_tcpconverter_copy_definition_block_invoke()
{
  result = nw_framer_create_definition("TCP-Converter", 0, &__block_literal_global_9_51321);
  nw_protocol_tcpconverter_copy_definition::definition = result;
  return result;
}

uint64_t __nw_protocol_tcpconverter_copy_definition_block_invoke_2(uint64_t a1, void *a2)
{
  v73 = *MEMORY[0x1E69E9840];
  v3 = malloc_type_calloc(1uLL, 0x58uLL, 0x1B7E0D9uLL);
  if (v3)
  {
    goto LABEL_11;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v4 = gLogObj;
  *buf = 136446722;
  *&buf[4] = "nw_calloc_type";
  if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
  {
    v5 = 3;
  }

  else
  {
    v5 = 2;
  }

  *&buf[12] = 2048;
  *&buf[14] = 1;
  v59 = 2048;
  v60 = 88;
  v6 = _os_log_send_and_compose_impl(v5, 0, 0, 0, &dword_181A37000, v4, 16, "%{public}s strict_calloc(%zu, %zu) failed", buf, 32);
  result = __nwlog_should_abort(v6);
  if (!result)
  {
    free(v6);
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v8 = gLogObj;
    v9 = os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR) ? 3 : 2;
    *buf = 136446210;
    *&buf[4] = "nw_protocol_tcpconverter_copy_definition_block_invoke_2";
    LODWORD(v53) = 12;
    v10 = _os_log_send_and_compose_impl(v9, 0, 0, 0, &dword_181A37000, v8, 16, "%{public}s calloc(1, sizeof(struct nw_tcpconverter)) failed!", buf, v53);
    result = __nwlog_should_abort(v10);
    if (!result)
    {
      free(v10);
LABEL_11:
      *v3 = 0;
      v11 = a2;
      v12 = v11;
      v13 = 84;
      v14 = 609;
      while (1)
      {
        v15 = *(&v11->isa + v14);
        *(v3 + v14 - 605) = v15;
        if (!v15)
        {
          break;
        }

        --v13;
        ++v14;
        if (v13 <= 1)
        {
          *(v3 + v14 - 605) = 0;
          break;
        }
      }

      input_handler[0] = MEMORY[0x1E69E9820];
      input_handler[1] = 0x40000000;
      input_handler[2] = __nw_protocol_tcpconverter_copy_definition_block_invoke_10;
      input_handler[3] = &__block_descriptor_tmp_16_51326;
      input_handler[4] = v3;
      input_handler[5] = v12;
      nw_framer_set_input_handler(v12, input_handler);
      output_handler[0] = MEMORY[0x1E69E9820];
      output_handler[1] = 0x40000000;
      output_handler[2] = __nw_protocol_tcpconverter_copy_definition_block_invoke_2_17;
      output_handler[3] = &__block_descriptor_tmp_19_51327;
      output_handler[4] = v3;
      nw_framer_set_output_handler(v12, output_handler);
      cleanup_handler[0] = MEMORY[0x1E69E9820];
      cleanup_handler[1] = 0x40000000;
      cleanup_handler[2] = __nw_protocol_tcpconverter_copy_definition_block_invoke_20;
      cleanup_handler[3] = &__block_descriptor_tmp_22_51328;
      cleanup_handler[4] = v3;
      nw_framer_set_cleanup_handler(v12, cleanup_handler);
      stop_handler[0] = MEMORY[0x1E69E9820];
      stop_handler[1] = 0x40000000;
      stop_handler[2] = __nw_protocol_tcpconverter_copy_definition_block_invoke_2_23;
      stop_handler[3] = &__block_descriptor_tmp_25_51329;
      stop_handler[4] = v3;
      nw_framer_set_stop_handler(v12, stop_handler);
      if (v12)
      {
        v16 = nw_framer_copy_remote_endpoint(v12);
        if (nw_endpoint_get_type(v16) == nw_endpoint_type_address)
        {
          v17 = nw_endpoint_copy_proxy_original_endpoint(v16);
          if (nw_endpoint_get_type(v17) == nw_endpoint_type_address)
          {
            v68 = 0;
            *output_buffer = 1663174145;
            v70 = 1290;
            v67 = 0;
            v66[0] = 528;
            v66[1] = __rev16(nw_endpoint_get_port(v17));
            address = nw_endpoint_get_address(v17);
            if (address->sa_family == 30)
            {
              v19 = v12;
              nw_context_assert_queue(v19[46].isa);
              isa = v19[42].isa;
              if (isa && (v21 = *(isa + 3)) != 0 && (v22 = *(v21 + 120)) != 0)
              {
                v23 = v22();
              }

              else
              {
                v23 = 0;
              }

              if (nw_path_has_nat64_prefixes(v23))
              {
                if (v24 = nw_path_nat64_prefixes(v23), v25 = v24, *buf = 0, *&buf[8] = 0, v26 = v24[4], v26) && (*buf = v24[4], memcpy(&buf[4], v24, v26), nw_nat64_extract_v4(buf, &address->sa_data[6], &v67)) || (v27 = v25[9], v27) && (*buf = v25[9], memcpy(&buf[4], v25 + 5, v27), (nw_nat64_extract_v4(buf, &address->sa_data[6], &v67)) || (v28 = v25[14], v28) && (*buf = v25[14], memcpy(&buf[4], v25 + 10, v28), (nw_nat64_extract_v4(buf, &address->sa_data[6], &v67)) || (v29 = v25[19], v29) && (*buf = v25[19], memcpy(&buf[4], v25 + 15, v29), (nw_nat64_extract_v4(buf, &address->sa_data[6], &v67)))
                {
                  HIBYTE(v66[0]) = 2;
                  address = v66;
                }
              }
            }

            v30 = *address->sa_data;
            if (address->sa_family == 30)
            {
              v72 = *&address->sa_data[6];
            }

            else
            {
              v39 = *&address->sa_data[2];
              *&v72 = 0;
              DWORD2(v72) = -65536;
              HIDWORD(v72) = v39;
            }

            v71 = v30;
            nw_framer_write_output(v12, output_buffer, 0x18uLL);
            inet_ntop(30, &v72, v65, 0x2Eu);
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v40 = gLogObj;
            if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136447234;
              *&buf[4] = "nw_tcpconverter_send_connect";
              *&buf[12] = 2080;
              *&buf[14] = v3 + 1;
              v59 = 2080;
              v60 = v65;
              v61 = 1024;
              v62 = bswap32(v71) >> 16;
              v63 = 2112;
              v64 = v16;
              _os_log_impl(&dword_181A37000, v40, OS_LOG_TYPE_DEBUG, "%{public}s %s Sent TCP-converter connect to IP %s, port %u via proxy %@", buf, 0x30u);
            }

            *v3 = 1;
            if (v16)
            {
              os_release(v16);
            }

            if (v17)
            {
              os_release(v17);
            }

            return 2;
          }

          if (v16)
          {
            os_release(v16);
          }

          if (v17)
          {
            os_release(v17);
          }

          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          *buf = 136446466;
          *&buf[4] = "nw_tcpconverter_send_connect";
          *&buf[12] = 2112;
          *&buf[14] = 0;
          LODWORD(v52) = 22;
          v31 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s Received incorrect endpoint-type: %@", buf, v52);
          v65[0] = 16;
          output_buffer[0] = 0;
          if (__nwlog_fault(v31, v65, output_buffer))
          {
            if (v65[0] == 17)
            {
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v35 = gLogObj;
              v36 = v65[0];
              if (!os_log_type_enabled(gLogObj, v65[0]))
              {
                goto LABEL_76;
              }

              *buf = 136446466;
              *&buf[4] = "nw_tcpconverter_send_connect";
              *&buf[12] = 2112;
              *&buf[14] = 0;
              v34 = "%{public}s Received incorrect endpoint-type: %@";
              goto LABEL_74;
            }

            if (output_buffer[0] != 1)
            {
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v35 = gLogObj;
              v36 = v65[0];
              if (!os_log_type_enabled(gLogObj, v65[0]))
              {
                goto LABEL_76;
              }

              *buf = 136446466;
              *&buf[4] = "nw_tcpconverter_send_connect";
              *&buf[12] = 2112;
              *&buf[14] = 0;
              v34 = "%{public}s Received incorrect endpoint-type: %@, backtrace limit exceeded";
              goto LABEL_74;
            }

            backtrace_string = __nw_create_backtrace_string();
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v35 = gLogObj;
            v36 = v65[0];
            v42 = os_log_type_enabled(gLogObj, v65[0]);
            if (backtrace_string)
            {
              if (v42)
              {
                *buf = 136446722;
                *&buf[4] = "nw_tcpconverter_send_connect";
                *&buf[12] = 2112;
                *&buf[14] = 0;
                v59 = 2082;
                v60 = backtrace_string;
                _os_log_impl(&dword_181A37000, v35, v36, "%{public}s Received incorrect endpoint-type: %@, dumping backtrace:%{public}s", buf, 0x20u);
              }

              free(backtrace_string);
              if (!v31)
              {
                goto LABEL_78;
              }

              goto LABEL_77;
            }

            if (v42)
            {
              *buf = 136446466;
              *&buf[4] = "nw_tcpconverter_send_connect";
              *&buf[12] = 2112;
              *&buf[14] = 0;
              v34 = "%{public}s Received incorrect endpoint-type: %@, no backtrace";
LABEL_74:
              v43 = v35;
              v44 = v36;
              goto LABEL_75;
            }
          }

LABEL_76:
          if (!v31)
          {
LABEL_78:
            nw_framer_mark_failed_with_error(v12, 22);
            return 2;
          }

LABEL_77:
          free(v31);
          goto LABEL_78;
        }

        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        *buf = 136446466;
        *&buf[4] = "nw_tcpconverter_send_connect";
        *&buf[12] = 2112;
        *&buf[14] = v16;
        LODWORD(v52) = 22;
        v31 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s Received incorrect remote-endpoint-type: %@", buf, v52);
        v65[0] = 16;
        output_buffer[0] = 0;
        if (!__nwlog_fault(v31, v65, output_buffer))
        {
          goto LABEL_76;
        }

        if (v65[0] == 17)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v32 = gLogObj;
          v33 = v65[0];
          if (!os_log_type_enabled(gLogObj, v65[0]))
          {
            goto LABEL_76;
          }

          *buf = 136446466;
          *&buf[4] = "nw_tcpconverter_send_connect";
          *&buf[12] = 2112;
          *&buf[14] = v16;
          v34 = "%{public}s Received incorrect remote-endpoint-type: %@";
        }

        else if (output_buffer[0] == 1)
        {
          v37 = __nw_create_backtrace_string();
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v32 = gLogObj;
          v33 = v65[0];
          v38 = os_log_type_enabled(gLogObj, v65[0]);
          if (v37)
          {
            if (v38)
            {
              *buf = 136446722;
              *&buf[4] = "nw_tcpconverter_send_connect";
              *&buf[12] = 2112;
              *&buf[14] = v16;
              v59 = 2082;
              v60 = v37;
              _os_log_impl(&dword_181A37000, v32, v33, "%{public}s Received incorrect remote-endpoint-type: %@, dumping backtrace:%{public}s", buf, 0x20u);
            }

            free(v37);
            goto LABEL_76;
          }

          if (!v38)
          {
            goto LABEL_76;
          }

          *buf = 136446466;
          *&buf[4] = "nw_tcpconverter_send_connect";
          *&buf[12] = 2112;
          *&buf[14] = v16;
          v34 = "%{public}s Received incorrect remote-endpoint-type: %@, no backtrace";
        }

        else
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v32 = gLogObj;
          v33 = v65[0];
          if (!os_log_type_enabled(gLogObj, v65[0]))
          {
            goto LABEL_76;
          }

          *buf = 136446466;
          *&buf[4] = "nw_tcpconverter_send_connect";
          *&buf[12] = 2112;
          *&buf[14] = v16;
          v34 = "%{public}s Received incorrect remote-endpoint-type: %@, backtrace limit exceeded";
        }

        v43 = v32;
        v44 = v33;
LABEL_75:
        _os_log_impl(&dword_181A37000, v43, v44, v34, buf, 0x16u);
        goto LABEL_76;
      }

      v45 = __nwlog_obj();
      *buf = 136446210;
      *&buf[4] = "nw_tcpconverter_send_connect";
      LODWORD(v52) = 12;
      v46 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v45, 16, "%{public}s called with null framer", buf, v52);
      v65[0] = 16;
      output_buffer[0] = 0;
      if (__nwlog_fault(v46, v65, output_buffer))
      {
        if (v65[0] == 17)
        {
          v47 = __nwlog_obj();
          v48 = v65[0];
          if (!os_log_type_enabled(v47, v65[0]))
          {
            goto LABEL_95;
          }

          *buf = 136446210;
          *&buf[4] = "nw_tcpconverter_send_connect";
          v49 = "%{public}s called with null framer";
          goto LABEL_94;
        }

        if (output_buffer[0] != 1)
        {
          v47 = __nwlog_obj();
          v48 = v65[0];
          if (!os_log_type_enabled(v47, v65[0]))
          {
            goto LABEL_95;
          }

          *buf = 136446210;
          *&buf[4] = "nw_tcpconverter_send_connect";
          v49 = "%{public}s called with null framer, backtrace limit exceeded";
          goto LABEL_94;
        }

        v50 = __nw_create_backtrace_string();
        v47 = __nwlog_obj();
        v48 = v65[0];
        v51 = os_log_type_enabled(v47, v65[0]);
        if (v50)
        {
          if (v51)
          {
            *buf = 136446466;
            *&buf[4] = "nw_tcpconverter_send_connect";
            *&buf[12] = 2082;
            *&buf[14] = v50;
            _os_log_impl(&dword_181A37000, v47, v48, "%{public}s called with null framer, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v50);
          goto LABEL_95;
        }

        if (v51)
        {
          *buf = 136446210;
          *&buf[4] = "nw_tcpconverter_send_connect";
          v49 = "%{public}s called with null framer, no backtrace";
LABEL_94:
          _os_log_impl(&dword_181A37000, v47, v48, v49, buf, 0xCu);
        }
      }

LABEL_95:
      if (v46)
      {
        free(v46);
      }

      return 2;
    }
  }

  __break(1u);
  return result;
}

uint64_t __nw_protocol_tcpconverter_copy_definition_block_invoke_10(uint64_t a1, NSObject *a2)
{
  v65 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = *v3;
  if (*v3 == 2)
  {
    *temp_buffer = 0;
    *&temp_buffer[8] = temp_buffer;
    *&temp_buffer[16] = 0x2000000000;
    v64 = 0;
    v36 = 0;
    v37 = &v36;
    v38 = 0x2000000000;
    LOBYTE(v39) = 0;
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v6 = gLogObj;
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      if (v7)
      {
        v8 = (v7 + 4);
      }

      else
      {
        v8 = "";
      }

      *buf = 136446466;
      *&buf[4] = "nw_protocol_tcpconverter_copy_definition_block_invoke";
      *&buf[12] = 2080;
      *&buf[14] = v8;
      _os_log_impl(&dword_181A37000, v6, OS_LOG_TYPE_DEFAULT, "%{public}s %s Received incoming data while connected", buf, 0x16u);
    }

    parse[0] = MEMORY[0x1E69E9820];
    parse[1] = 0x40000000;
    parse[2] = __nw_protocol_tcpconverter_copy_definition_block_invoke_12;
    parse[3] = &unk_1E6A347D0;
    parse[4] = temp_buffer;
    parse[5] = &v36;
    nw_framer_parse_input(a2, 1uLL, 0xFFFFFFFFuLL, 0, parse);
    v9 = nw_framer_message_create(*(a1 + 40));
    nw_framer_deliver_input_no_copy(a2, *(*&temp_buffer[8] + 24), v9, *(v37 + 24));
    if (v9)
    {
      os_release(v9);
    }

    _Block_object_dispose(&v36, 8);
    v10 = temp_buffer;
    goto LABEL_25;
  }

  v11 = *(a1 + 40);
  v49 = 0;
  v50 = &v49;
  v51 = 0x2000000000;
  v52 = 0;
  v45 = 0;
  v46 = &v45;
  v47 = 0x2000000000;
  v48 = 0;
  if (v4 != 1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v19 = gLogObj;
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
    {
      *temp_buffer = 136446466;
      *&temp_buffer[4] = "nw_tcpconverter_parse_response";
      *&temp_buffer[12] = 2080;
      *&temp_buffer[14] = v3 + 1;
      v20 = "%{public}s %s Received response although we haven't yet sent a connect-message";
      v21 = temp_buffer;
LABEL_22:
      _os_log_impl(&dword_181A37000, v19, OS_LOG_TYPE_ERROR, v20, v21, 0x16u);
    }

LABEL_23:
    nw_framer_mark_failed_with_error(v11, 22);
    goto LABEL_24;
  }

  v36 = MEMORY[0x1E69E9820];
  v37 = 0x40000000;
  v38 = ___ZL30nw_tcpconverter_parse_responseP9nw_framerP15nw_tcpconverter_block_invoke;
  v39 = &unk_1E6A34878;
  v42 = v3;
  v43 = v11;
  v44 = 4;
  v40 = &v49;
  v41 = &v45;
  if (!nw_framer_parse_input(v11, 4uLL, 4uLL, temp_buffer, &v36) || *(v46 + 24) != 1)
  {
    goto LABEL_24;
  }

  v12 = v50[3];
  if (v12 < 0x81)
  {
    v14 = 0;
    v13 = temp_buffer;
LABEL_27:
    *(v46 + 24) = 0;
    v22 = v50[3];
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 0x40000000;
    *&buf[16] = ___ZL30nw_tcpconverter_parse_responseP9nw_framerP15nw_tcpconverter_block_invoke_33;
    v58 = &unk_1E6A348A0;
    v61 = v3;
    v62 = v11;
    v59 = &v49;
    v60 = &v45;
    v23 = nw_framer_parse_input(v11, v22, v22, v13, buf);
    if (v14)
    {
      free(v14);
    }

    if (!v23 || *(v46 + 24) != 1)
    {
      goto LABEL_24;
    }

    v24 = *v3;
    if (*v3 == 2)
    {
      nw_framer_pass_through_input(v11);
      nw_framer_pass_through_output(v11);
      nw_framer_mark_ready(v11);
      goto LABEL_24;
    }

    if (v24 != 1)
    {
      if (!v24)
      {
        v25 = __nwlog_obj();
        *v53 = 136446210;
        v54 = "nw_tcpconverter_parse_response";
        LODWORD(v32) = 12;
        v26 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v25, 16, "%{public}s Can't be in initial after parsing response", v53, v32);
        type = OS_LOG_TYPE_ERROR;
        v34 = 0;
        if (!__nwlog_fault(v26, &type, &v34))
        {
          goto LABEL_51;
        }

        if (type == OS_LOG_TYPE_FAULT)
        {
          v27 = __nwlog_obj();
          v28 = type;
          if (!os_log_type_enabled(v27, type))
          {
            goto LABEL_51;
          }

          *v53 = 136446210;
          v54 = "nw_tcpconverter_parse_response";
          v29 = "%{public}s Can't be in initial after parsing response";
        }

        else if (v34 == 1)
        {
          backtrace_string = __nw_create_backtrace_string();
          v27 = __nwlog_obj();
          v28 = type;
          v31 = os_log_type_enabled(v27, type);
          if (backtrace_string)
          {
            if (v31)
            {
              *v53 = 136446466;
              v54 = "nw_tcpconverter_parse_response";
              v55 = 2082;
              v56 = backtrace_string;
              _os_log_impl(&dword_181A37000, v27, v28, "%{public}s Can't be in initial after parsing response, dumping backtrace:%{public}s", v53, 0x16u);
            }

            free(backtrace_string);
            goto LABEL_51;
          }

          if (!v31)
          {
LABEL_51:
            if (v26)
            {
              free(v26);
            }

            goto LABEL_24;
          }

          *v53 = 136446210;
          v54 = "nw_tcpconverter_parse_response";
          v29 = "%{public}s Can't be in initial after parsing response, no backtrace";
        }

        else
        {
          v27 = __nwlog_obj();
          v28 = type;
          if (!os_log_type_enabled(v27, type))
          {
            goto LABEL_51;
          }

          *v53 = 136446210;
          v54 = "nw_tcpconverter_parse_response";
          v29 = "%{public}s Can't be in initial after parsing response, backtrace limit exceeded";
        }

        _os_log_impl(&dword_181A37000, v27, v28, v29, v53, 0xCu);
        goto LABEL_51;
      }

LABEL_24:
      _Block_object_dispose(&v45, 8);
      v10 = &v49;
LABEL_25:
      _Block_object_dispose(v10, 8);
      return 0;
    }

    v19 = __nwlog_obj();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *v53 = 136446466;
      v54 = "nw_tcpconverter_parse_response";
      v55 = 2080;
      v56 = (v3 + 1);
      v20 = "%{public}s %s Received unexpected response - we remained in 'connect_sent' state";
      v21 = v53;
      goto LABEL_22;
    }

    goto LABEL_23;
  }

  v13 = malloc_type_malloc(v12, 0x9686E92AuLL);
  v14 = v13;
  if (v13)
  {
    goto LABEL_27;
  }

  v15 = __nwlog_obj();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    v16 = 3;
  }

  else
  {
    v16 = 2;
  }

  *buf = 136446210;
  *&buf[4] = "nw_tcpconverter_parse_response";
  v17 = _os_log_send_and_compose_impl(v16, 0, 0, 0, &dword_181A37000, v15, 16, "%{public}s strict allocator failed", buf, 12);
  result = __nwlog_should_abort(v17);
  if (!result)
  {
    free(v17);
    v13 = 0;
    v14 = 0;
    goto LABEL_27;
  }

  __break(1u);
  return result;
}

uint64_t __nw_protocol_tcpconverter_copy_definition_block_invoke_2_17(uint64_t result, NSObject *a2, uint64_t a3, size_t a4)
{
  v14 = *MEMORY[0x1E69E9840];
  if (**(result + 32) == 2)
  {
    v6 = result;
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v7 = gLogObj;
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(v6 + 32);
      if (v8)
      {
        v9 = (v8 + 4);
      }

      else
      {
        v9 = "";
      }

      v10 = 136446466;
      v11 = "nw_protocol_tcpconverter_copy_definition_block_invoke_2";
      v12 = 2080;
      v13 = v9;
      _os_log_impl(&dword_181A37000, v7, OS_LOG_TYPE_DEFAULT, "%{public}s %s Received outgoing data while connected", &v10, 0x16u);
    }

    return nw_framer_write_output_no_copy(a2, a4);
  }

  return result;
}

void __nw_protocol_tcpconverter_copy_definition_block_invoke_20(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    free(v1);
  }
}

uint64_t __nw_protocol_tcpconverter_copy_definition_block_invoke_2_23(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v2 = gLogObj;
  if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = (v3 + 4);
    }

    else
    {
      v4 = "";
    }

    v6 = 136446466;
    v7 = "nw_protocol_tcpconverter_copy_definition_block_invoke_2";
    v8 = 2080;
    v9 = v4;
    _os_log_impl(&dword_181A37000, v2, OS_LOG_TYPE_DEFAULT, "%{public}s %s Got stop indication", &v6, 0x16u);
  }

  return 1;
}

uint64_t __nw_protocol_tcpconverter_copy_definition_block_invoke_12(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(*(*(a1 + 32) + 8) + 24) = a3;
  *(*(*(a1 + 40) + 8) + 24) = a4;
  return 0;
}

uint64_t ___ZL30nw_tcpconverter_parse_responseP9nw_framerP15nw_tcpconverter_block_invoke(uint64_t a1, unsigned __int8 *a2)
{
  v35 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v9 = gLogObj;
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 48);
      if (v10)
      {
        v11 = (v10 + 4);
      }

      else
      {
        v11 = "";
      }

      v29 = 136446466;
      v30 = "nw_tcpconverter_parse_response_block_invoke";
      v31 = 2080;
      v32 = v11;
      _os_log_impl(&dword_181A37000, v9, OS_LOG_TYPE_ERROR, "%{public}s %s Received NULL header", &v29, 0x16u);
    }

    return 0;
  }

  if (*a2 != 1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v13 = gLogObj;
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
    {
      v14 = *(a1 + 48);
      v15 = (v14 + 4);
      v16 = v14 == 0;
      v17 = *a2;
      if (v16)
      {
        v15 = "";
      }

      v29 = 136446722;
      v30 = "nw_tcpconverter_parse_response_block_invoke";
      v31 = 2080;
      v32 = v15;
      v33 = 1024;
      LODWORD(v34) = v17;
      v18 = "%{public}s %s Received invalid TCP Converter version %d";
      goto LABEL_20;
    }

LABEL_21:
    nw_framer_mark_failed_with_error(*(a1 + 56), 22);
    return 0;
  }

  if (*(a2 + 1) != 25378)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v13 = gLogObj;
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
    {
      v20 = *(a1 + 48);
      v21 = "";
      v22 = (v20 + 4);
      v16 = v20 == 0;
      v23 = *(a2 + 1);
      if (!v16)
      {
        v21 = v22;
      }

      v29 = 136446722;
      v30 = "nw_tcpconverter_parse_response_block_invoke";
      v31 = 2080;
      v32 = v21;
      v33 = 1024;
      LODWORD(v34) = bswap32(v23) >> 16;
      v18 = "%{public}s %s Invalid magic number received: %u";
LABEL_20:
      _os_log_impl(&dword_181A37000, v13, OS_LOG_TYPE_INFO, v18, &v29, 0x1Cu);
      goto LABEL_21;
    }

    goto LABEL_21;
  }

  *(*(*(a1 + 32) + 8) + 24) = 4 * a2[1];
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 24);
  v5 = *(a1 + 64);
  v6 = v4 > v5;
  v7 = v4 - v5;
  if (v6)
  {
    *(v3 + 24) = v7;
    *(*(*(a1 + 40) + 8) + 24) = 1;
    return *(a1 + 64);
  }

  else
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v24 = gLogObj;
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
    {
      v26 = *(a1 + 48);
      if (v26)
      {
        v27 = (v26 + 4);
      }

      else
      {
        v27 = "";
      }

      v28 = *(*(*(a1 + 32) + 8) + 24);
      v29 = 136446722;
      v30 = "nw_tcpconverter_parse_response_block_invoke";
      v31 = 2080;
      v32 = v27;
      v33 = 2048;
      v34 = v28;
      _os_log_impl(&dword_181A37000, v24, OS_LOG_TYPE_INFO, "%{public}s %s Received too small total_length in the fixed header: %zu", &v29, 0x20u);
    }

    nw_framer_mark_failed_with_error(*(a1 + 56), 22);
    return 4;
  }
}

uint64_t ___ZL30nw_tcpconverter_parse_responseP9nw_framerP15nw_tcpconverter_block_invoke_33(void *a1, uint64_t a2)
{
  v47 = *MEMORY[0x1E69E9840];
  v3 = *(*(a1[4] + 8) + 24);
  if (v3 < 2)
  {
LABEL_28:
    *(*(a1[5] + 8) + 24) = 1;
    return *(*(a1[4] + 8) + 24);
  }

  v5 = 0;
  v6 = 1;
  while (1)
  {
    v7 = *(a2 + v5);
    v8 = 4 * *(a2 + v6);
    v9 = v8 + v5;
    if (v3 < v9)
    {
      break;
    }

    if (v7 == 20)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v16 = gLogObj;
      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEFAULT))
      {
        v17 = a1[6];
        v18 = (v17 + 4);
        v13 = v17 == 0;
        v19 = "";
        if (!v13)
        {
          v19 = v18;
        }

        *buf = 136446466;
        *&buf[4] = "nw_tcpconverter_parse_response_block_invoke";
        v40 = 2080;
        v41 = v19;
        _os_log_impl(&dword_181A37000, v16, OS_LOG_TYPE_DEFAULT, "%{public}s %s Connection successfully established", buf, 0x16u);
      }

      *a1[6] = 2;
      goto LABEL_4;
    }

    if (v7 == 30)
    {
      v28 = (a2 + v5);
      v29 = v28[1];
      *buf = 0;
      v30 = v28[2];
      if (v30 >= 0x20)
      {
        if (v30 >= 0x40)
        {
          if (v30 >= 0x60)
          {
            if ((v30 & 0x80u) != 0)
            {
              v31 = "Unknown error class";
            }

            else
            {
              v31 = "Destination-server side error";
            }
          }

          else
          {
            v31 = "Converter-side error";
          }
        }

        else
        {
          v31 = "Client-side error";
        }
      }

      else
      {
        v31 = "Message validation and processing error";
      }

      if (*(a2 + v5 + 2) > 0x20u)
      {
        if (*(a2 + v5 + 2) <= 0x40u)
        {
          if (v30 == 33)
          {
            v32 = "Unsupported TCP Option";
            goto LABEL_66;
          }

          if (v30 == 64)
          {
            v32 = "Resource Exceeded";
            goto LABEL_66;
          }
        }

        else
        {
          switch(v30)
          {
            case 'A':
              v32 = "Network Failure";
              goto LABEL_66;
              v32 = "Connection Reset";
              goto LABEL_66;
            case 'a':
              v32 = "Destination Unreachable";
              goto LABEL_66;
          }
        }
      }

      else
      {
        if (*(a2 + v5 + 2) <= 1u)
        {
          if (*(a2 + v5 + 2))
          {
            v32 = "Malformed Message";
          }

          else
          {
            v32 = "Unsupported Version";
          }

          goto LABEL_66;
        }

        switch(v30)
        {
          case 2u:
            v32 = "Unsupported Message";
            goto LABEL_66;
          case 3u:
            v32 = "Missing Cookie";
            goto LABEL_66;
          case 0x20u:
            v32 = "Not Authorized";
LABEL_66:
            asprintf(buf, "Error class %s (%u), type %s (%u), length %u, value %u", v31, v30, v32, v30, 4 * v29, v28[3]);
            v33 = *buf;
            if (*buf)
            {
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v34 = gLogObj;
              if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEFAULT))
              {
                v35 = a1[6];
                v36 = (v35 + 4);
                v13 = v35 == 0;
                v37 = "";
                if (!v13)
                {
                  v37 = v36;
                }

                *buf = 136446722;
                *&buf[4] = "nw_tcpconverter_parse_response_block_invoke";
                v40 = 2080;
                v41 = v37;
                v42 = 2080;
                *v43 = v33;
                _os_log_impl(&dword_181A37000, v34, OS_LOG_TYPE_DEFAULT, "%{public}s %s Received ERROR: %s", buf, 0x20u);
              }

              free(v33);
            }

            v38 = v28[2];
            v27 = 22;
            if (v38 <= 0x40)
            {
              if (v38 == 32)
              {
                v27 = 1;
              }

              else if (v38 == 64)
              {
                v27 = 35;
              }
            }

            else
            {
              switch(v38)
              {
                case 'A':
                  v27 = 51;
                  break;
                  v27 = 61;
                  break;
                case 'a':
                  v27 = 65;
                  break;
              }
            }

            *a1[6] = 3;
            v26 = a1[7];
            goto LABEL_84;
        }
      }

      v32 = "Unknown error code";
      goto LABEL_66;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v10 = gLogObj;
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
    {
      v11 = a1[6];
      v12 = (v11 + 4);
      v13 = v11 == 0;
      v14 = "";
      if (!v13)
      {
        v14 = v12;
      }

      if (v7 > 19)
      {
        if (v7 == 21)
        {
          v15 = "EXTENSIONS";
          goto LABEL_27;
        }

        if (v7 == 22)
        {
          v15 = "COOKIE";
          goto LABEL_27;
        }
      }

      else
      {
        switch(v7)
        {
          case 0:
            v15 = "RESERVED";
            goto LABEL_27;
          case 1:
            v15 = "INFO";
            goto LABEL_27;
          case 10:
            v15 = "CONNECT";
LABEL_27:
            *buf = 136447234;
            *&buf[4] = "nw_tcpconverter_parse_response_block_invoke";
            v40 = 2080;
            v41 = v14;
            v42 = 2080;
            *v43 = v15;
            *&v43[8] = 1024;
            *v44 = v7;
            *&v44[4] = 1024;
            *&v44[6] = v8;
            _os_log_impl(&dword_181A37000, v10, OS_LOG_TYPE_ERROR, "%{public}s %s Received unexpected Converter-type %s(%u) with length %d -> Skipping", buf, 0x2Cu);
            goto LABEL_4;
        }
      }

      v15 = "UNKNOWN";
      goto LABEL_27;
    }

LABEL_4:
    v6 = v9 | 1;
    v3 = *(*(a1[4] + 8) + 24);
    v5 = v9;
    if (v3 <= v6)
    {
      goto LABEL_28;
    }
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v21 = gLogObj;
  if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
  {
    v22 = a1[6];
    v23 = (v22 + 4);
    v13 = v22 == 0;
    v24 = "";
    if (!v13)
    {
      v24 = v23;
    }

    v25 = *(*(a1[4] + 8) + 24);
    *buf = 136447490;
    *&buf[4] = "nw_tcpconverter_parse_response_block_invoke";
    v40 = 2080;
    v41 = v24;
    v42 = 1024;
    *v43 = v7;
    *&v43[4] = 1024;
    *&v43[6] = v8;
    *v44 = 2048;
    *&v44[2] = v25;
    v45 = 1024;
    v46 = v5;
    _os_log_impl(&dword_181A37000, v21, OS_LOG_TYPE_ERROR, "%{public}s %s Insufficient data for TLV of type %u, length %d, total_length %zu, index %u", buf, 0x32u);
  }

  v26 = a1[7];
  v27 = 22;
LABEL_84:
  nw_framer_mark_failed_with_error(v26, v27);
  return 0;
}

void nw_http_capsule_framer_cleanup(void *a1)
{
  v37 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v3 = a1 + 3;
    v2 = a1[3];
    do
    {
      if (!v2)
      {
        break;
      }

      v4 = *(v2 + 32);
      v5 = __nw_http_capsule_framer_cleanup_block_invoke(&__block_literal_global_51463, v2);
      v2 = v4;
    }

    while ((v5 & 1) != 0);
    v7 = a1 + 5;
    v6 = a1[5];
    do
    {
      if (!v6)
      {
        break;
      }

      v8 = *(v6 + 32);
      v9 = __nw_http_capsule_framer_cleanup_block_invoke_2(&__block_literal_global_5_51464, v6);
      v6 = v8;
    }

    while ((v9 & 1) != 0);
    if (gLogDatapath == 1)
    {
      v27 = __nwlog_obj();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_finalize_temp_frame_array";
        _os_log_impl(&dword_181A37000, v27, OS_LOG_TYPE_DEBUG, "%{public}s called", buf, 0xCu);
      }
    }

    v10 = *v3;
    if (*v3)
    {
      *(v10 + 40) = type;
      v11 = a1[4];
      *type = v10;
      v33 = v11;
      a1[3] = 0;
      a1[4] = v3;
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 0x40000000;
      *&buf[16] = ___ZL25__nw_frame_array_finalizeP16nw_frame_array_sbb_block_invoke;
      v35 = &__block_descriptor_tmp_21_49595;
      v36 = 0;
      do
      {
        v12 = *type;
        if (!*type)
        {
          break;
        }

        v13 = *(*type + 32);
        v14 = *(*type + 40);
        v15 = (v13 + 40);
        if (!v13)
        {
          v15 = &v33;
        }

        *v15 = v14;
        *v14 = v13;
        *(v12 + 32) = 0;
        *(v12 + 40) = 0;
      }

      while (((*&buf[16])(buf) & 1) != 0);
    }

    if (gLogDatapath == 1)
    {
      v28 = __nwlog_obj();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_finalize_temp_frame_array";
        _os_log_impl(&dword_181A37000, v28, OS_LOG_TYPE_DEBUG, "%{public}s called", buf, 0xCu);
      }
    }

    v16 = *v7;
    if (*v7)
    {
      *(v16 + 40) = type;
      v17 = a1[6];
      *type = v16;
      v33 = v17;
      a1[5] = 0;
      a1[6] = v7;
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 0x40000000;
      *&buf[16] = ___ZL25__nw_frame_array_finalizeP16nw_frame_array_sbb_block_invoke;
      v35 = &__block_descriptor_tmp_21_49595;
      v36 = 0;
      do
      {
        v18 = *type;
        if (!*type)
        {
          break;
        }

        v19 = *(*type + 32);
        v20 = *(*type + 40);
        v21 = (v19 + 40);
        if (!v19)
        {
          v21 = &v33;
        }

        *v21 = v20;
        *v20 = v19;
        *(v18 + 32) = 0;
        *(v18 + 40) = 0;
      }

      while (((*&buf[16])(buf) & 1) != 0);
    }

    return;
  }

  v22 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_http_capsule_framer_cleanup";
  v23 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v22, 16, "%{public}s called with null framer", buf, 12);
  type[0] = OS_LOG_TYPE_ERROR;
  v31 = 0;
  if (__nwlog_fault(v23, type, &v31))
  {
    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v24 = __nwlog_obj();
      v25 = type[0];
      if (!os_log_type_enabled(v24, type[0]))
      {
        goto LABEL_41;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http_capsule_framer_cleanup";
      v26 = "%{public}s called with null framer";
      goto LABEL_40;
    }

    if (v31 != 1)
    {
      v24 = __nwlog_obj();
      v25 = type[0];
      if (!os_log_type_enabled(v24, type[0]))
      {
        goto LABEL_41;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http_capsule_framer_cleanup";
      v26 = "%{public}s called with null framer, backtrace limit exceeded";
      goto LABEL_40;
    }

    backtrace_string = __nw_create_backtrace_string();
    v24 = __nwlog_obj();
    v25 = type[0];
    v30 = os_log_type_enabled(v24, type[0]);
    if (backtrace_string)
    {
      if (v30)
      {
        *buf = 136446466;
        *&buf[4] = "nw_http_capsule_framer_cleanup";
        *&buf[12] = 2082;
        *&buf[14] = backtrace_string;
        _os_log_impl(&dword_181A37000, v24, v25, "%{public}s called with null framer, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
      goto LABEL_41;
    }

    if (v30)
    {
      *buf = 136446210;
      *&buf[4] = "nw_http_capsule_framer_cleanup";
      v26 = "%{public}s called with null framer, no backtrace";
LABEL_40:
      _os_log_impl(&dword_181A37000, v24, v25, v26, buf, 0xCu);
    }
  }

LABEL_41:
  if (v23)
  {
    free(v23);
  }
}

uint64_t __nw_http_capsule_framer_cleanup_block_invoke_2(uint64_t a1, _DWORD *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  if (gLogDatapath == 1)
  {
    v4 = __nwlog_obj();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v5 = 136446722;
      v6 = "nw_http_capsule_framer_cleanup_block_invoke";
      v7 = 2048;
      v8 = a2;
      v9 = 1024;
      v10 = nw_frame_unclaimed_length(a2);
      _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_DEBUG, "%{public}s processed_frames still has frames in it: frame %p (%u bytes)", &v5, 0x1Cu);
    }
  }

  return 1;
}

uint64_t __nw_http_capsule_framer_cleanup_block_invoke(uint64_t a1, _DWORD *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  if (gLogDatapath == 1)
  {
    v4 = __nwlog_obj();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v5 = 136446722;
      v6 = "nw_http_capsule_framer_cleanup_block_invoke";
      v7 = 2048;
      v8 = a2;
      v9 = 1024;
      v10 = nw_frame_unclaimed_length(a2);
      _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_DEBUG, "%{public}s unprocessed_frames still has frames in it: frame %p (%u bytes)", &v5, 0x1Cu);
    }
  }

  return 1;
}

void nw_http_capsule_complete_capsule(uint64_t a1)
{
  v46 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (*a1 != -1 && *(a1 + 8) != -1 && !*(a1 + 16))
    {
      goto LABEL_20;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    *buf = 136446210;
    v43 = "nw_http_capsule_complete_capsule";
    v2 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s Capsule was not completely processed", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v40 = 0;
    if (__nwlog_fault(v2, &type, &v40))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v3 = gLogObj;
        v4 = type;
        if (!os_log_type_enabled(gLogObj, type))
        {
          goto LABEL_18;
        }

        *buf = 136446210;
        v43 = "nw_http_capsule_complete_capsule";
        v5 = "%{public}s Capsule was not completely processed";
LABEL_16:
        v10 = v3;
        v11 = v4;
LABEL_17:
        _os_log_impl(&dword_181A37000, v10, v11, v5, buf, 0xCu);
        goto LABEL_18;
      }

      if (v40 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v3 = gLogObj;
        v4 = type;
        if (!os_log_type_enabled(gLogObj, type))
        {
          goto LABEL_18;
        }

        *buf = 136446210;
        v43 = "nw_http_capsule_complete_capsule";
        v5 = "%{public}s Capsule was not completely processed, backtrace limit exceeded";
        goto LABEL_16;
      }

      backtrace_string = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v7 = gLogObj;
      v8 = type;
      v9 = os_log_type_enabled(gLogObj, type);
      if (backtrace_string)
      {
        if (v9)
        {
          *buf = 136446466;
          v43 = "nw_http_capsule_complete_capsule";
          v44 = 2082;
          v45 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v8, "%{public}s Capsule was not completely processed, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_18;
      }

      if (v9)
      {
        *buf = 136446210;
        v43 = "nw_http_capsule_complete_capsule";
        v5 = "%{public}s Capsule was not completely processed, no backtrace";
        v10 = v7;
        v11 = v8;
        goto LABEL_17;
      }
    }

LABEL_18:
    if (v2)
    {
      free(v2);
    }

LABEL_20:
    if (!*(a1 + 40))
    {
      goto LABEL_36;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    *buf = 136446210;
    v43 = "nw_http_capsule_complete_capsule";
    LODWORD(v39) = 12;
    v12 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s Capsule framer had processed_frames", buf, v39);
    type = OS_LOG_TYPE_ERROR;
    v40 = 0;
    if (__nwlog_fault(v12, &type, &v40))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v13 = gLogObj;
        v14 = type;
        if (!os_log_type_enabled(gLogObj, type))
        {
          goto LABEL_34;
        }

        *buf = 136446210;
        v43 = "nw_http_capsule_complete_capsule";
        v15 = "%{public}s Capsule framer had processed_frames";
LABEL_32:
        v20 = v13;
        v21 = v14;
LABEL_33:
        _os_log_impl(&dword_181A37000, v20, v21, v15, buf, 0xCu);
        goto LABEL_34;
      }

      if (v40 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v13 = gLogObj;
        v14 = type;
        if (!os_log_type_enabled(gLogObj, type))
        {
          goto LABEL_34;
        }

        *buf = 136446210;
        v43 = "nw_http_capsule_complete_capsule";
        v15 = "%{public}s Capsule framer had processed_frames, backtrace limit exceeded";
        goto LABEL_32;
      }

      v16 = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v17 = gLogObj;
      v18 = type;
      v19 = os_log_type_enabled(gLogObj, type);
      if (v16)
      {
        if (v19)
        {
          *buf = 136446466;
          v43 = "nw_http_capsule_complete_capsule";
          v44 = 2082;
          v45 = v16;
          _os_log_impl(&dword_181A37000, v17, v18, "%{public}s Capsule framer had processed_frames, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v16);
        goto LABEL_34;
      }

      if (v19)
      {
        *buf = 136446210;
        v43 = "nw_http_capsule_complete_capsule";
        v15 = "%{public}s Capsule framer had processed_frames, no backtrace";
        v20 = v17;
        v21 = v18;
        goto LABEL_33;
      }
    }

LABEL_34:
    if (v12)
    {
      free(v12);
    }

LABEL_36:
    if ((*(a1 + 64) & 0x80000000) == 0)
    {
LABEL_52:
      *(a1 + 8) = -1;
      *(a1 + 16) = -1;
      *a1 = -1;
      return;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    *buf = 136446210;
    v43 = "nw_http_capsule_complete_capsule";
    LODWORD(v39) = 12;
    v22 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s Capsule framer was parsing VLE", buf, v39);
    type = OS_LOG_TYPE_ERROR;
    v40 = 0;
    if (__nwlog_fault(v22, &type, &v40))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v23 = gLogObj;
        v24 = type;
        if (!os_log_type_enabled(gLogObj, type))
        {
          goto LABEL_50;
        }

        *buf = 136446210;
        v43 = "nw_http_capsule_complete_capsule";
        v25 = "%{public}s Capsule framer was parsing VLE";
LABEL_48:
        v30 = v23;
        v31 = v24;
LABEL_49:
        _os_log_impl(&dword_181A37000, v30, v31, v25, buf, 0xCu);
        goto LABEL_50;
      }

      if (v40 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v23 = gLogObj;
        v24 = type;
        if (!os_log_type_enabled(gLogObj, type))
        {
          goto LABEL_50;
        }

        *buf = 136446210;
        v43 = "nw_http_capsule_complete_capsule";
        v25 = "%{public}s Capsule framer was parsing VLE, backtrace limit exceeded";
        goto LABEL_48;
      }

      v26 = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v27 = gLogObj;
      v28 = type;
      v29 = os_log_type_enabled(gLogObj, type);
      if (v26)
      {
        if (v29)
        {
          *buf = 136446466;
          v43 = "nw_http_capsule_complete_capsule";
          v44 = 2082;
          v45 = v26;
          _os_log_impl(&dword_181A37000, v27, v28, "%{public}s Capsule framer was parsing VLE, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v26);
        goto LABEL_50;
      }

      if (v29)
      {
        *buf = 136446210;
        v43 = "nw_http_capsule_complete_capsule";
        v25 = "%{public}s Capsule framer was parsing VLE, no backtrace";
        v30 = v27;
        v31 = v28;
        goto LABEL_49;
      }
    }

LABEL_50:
    if (v22)
    {
      free(v22);
    }

    goto LABEL_52;
  }

  v32 = __nwlog_obj();
  *buf = 136446210;
  v43 = "nw_http_capsule_complete_capsule";
  v33 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v32, 16, "%{public}s called with null framer", buf, 12);
  type = OS_LOG_TYPE_ERROR;
  v40 = 0;
  if (__nwlog_fault(v33, &type, &v40))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v34 = __nwlog_obj();
      v35 = type;
      if (!os_log_type_enabled(v34, type))
      {
        goto LABEL_74;
      }

      *buf = 136446210;
      v43 = "nw_http_capsule_complete_capsule";
      v36 = "%{public}s called with null framer";
      goto LABEL_73;
    }

    if (v40 != 1)
    {
      v34 = __nwlog_obj();
      v35 = type;
      if (!os_log_type_enabled(v34, type))
      {
        goto LABEL_74;
      }

      *buf = 136446210;
      v43 = "nw_http_capsule_complete_capsule";
      v36 = "%{public}s called with null framer, backtrace limit exceeded";
      goto LABEL_73;
    }

    v37 = __nw_create_backtrace_string();
    v34 = __nwlog_obj();
    v35 = type;
    v38 = os_log_type_enabled(v34, type);
    if (v37)
    {
      if (v38)
      {
        *buf = 136446466;
        v43 = "nw_http_capsule_complete_capsule";
        v44 = 2082;
        v45 = v37;
        _os_log_impl(&dword_181A37000, v34, v35, "%{public}s called with null framer, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v37);
      goto LABEL_74;
    }

    if (v38)
    {
      *buf = 136446210;
      v43 = "nw_http_capsule_complete_capsule";
      v36 = "%{public}s called with null framer, no backtrace";
LABEL_73:
      _os_log_impl(&dword_181A37000, v34, v35, v36, buf, 0xCu);
    }
  }

LABEL_74:
  if (v33)
  {
    free(v33);
  }
}

BOOL nw_http_capsule_framer_read_capsule(void *a1, uint64_t a2)
{
  v61 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v28 = __nwlog_obj();
    *v54 = 136446210;
    *&v54[4] = "nw_http_capsule_framer_parse_capsule_header";
    v29 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v28, 16, "%{public}s called with null framer", v54, 12);
    buf[0] = 16;
    type = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v29, buf, &type))
    {
      goto LABEL_59;
    }

    if (buf[0] == 17)
    {
      v30 = __nwlog_obj();
      v31 = buf[0];
      if (!os_log_type_enabled(v30, buf[0]))
      {
        goto LABEL_59;
      }

      *v54 = 136446210;
      *&v54[4] = "nw_http_capsule_framer_parse_capsule_header";
      v32 = "%{public}s called with null framer";
    }

    else if (type == OS_LOG_TYPE_INFO)
    {
      backtrace_string = __nw_create_backtrace_string();
      v30 = __nwlog_obj();
      v31 = buf[0];
      v34 = os_log_type_enabled(v30, buf[0]);
      if (backtrace_string)
      {
        if (v34)
        {
          *v54 = 136446466;
          *&v54[4] = "nw_http_capsule_framer_parse_capsule_header";
          *&v54[12] = 2082;
          *&v54[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v30, v31, "%{public}s called with null framer, dumping backtrace:%{public}s", v54, 0x16u);
        }

        free(backtrace_string);
LABEL_59:
        if (v29)
        {
          free(v29);
        }

        v35 = __nwlog_obj();
        *v54 = 136446210;
        *&v54[4] = "nw_http_capsule_framer_fetch_unprocessed_frames";
        LODWORD(v45) = 12;
        v36 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v35, 16, "%{public}s called with null framer", v54, v45);
        buf[0] = 16;
        type = OS_LOG_TYPE_DEFAULT;
        if (!__nwlog_fault(v36, buf, &type))
        {
          goto LABEL_75;
        }

        if (buf[0] == 17)
        {
          v37 = __nwlog_obj();
          v38 = buf[0];
          if (!os_log_type_enabled(v37, buf[0]))
          {
            goto LABEL_75;
          }

          *v54 = 136446210;
          *&v54[4] = "nw_http_capsule_framer_fetch_unprocessed_frames";
          v39 = "%{public}s called with null framer";
        }

        else if (type == OS_LOG_TYPE_INFO)
        {
          v40 = __nw_create_backtrace_string();
          v37 = __nwlog_obj();
          v38 = buf[0];
          v41 = os_log_type_enabled(v37, buf[0]);
          if (v40)
          {
            if (v41)
            {
              *v54 = 136446466;
              *&v54[4] = "nw_http_capsule_framer_fetch_unprocessed_frames";
              *&v54[12] = 2082;
              *&v54[14] = v40;
              _os_log_impl(&dword_181A37000, v37, v38, "%{public}s called with null framer, dumping backtrace:%{public}s", v54, 0x16u);
            }

            free(v40);
            goto LABEL_75;
          }

          if (!v41)
          {
LABEL_75:
            if (v36)
            {
              free(v36);
            }

LABEL_77:
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v23 = gLogObj;
            result = os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEBUG);
            if (result)
            {
              v42 = *a1;
              v43 = a1[1];
              *v54 = 136446722;
              *&v54[4] = "nw_http_capsule_framer_read_capsule";
              *&v54[12] = 2048;
              *&v54[14] = v42;
              *&v54[22] = 2048;
              v55 = v43;
              v27 = "%{public}s Pending capsule header parsing. Type: %llu, Length: %llu";
              goto LABEL_79;
            }

            return result;
          }

          *v54 = 136446210;
          *&v54[4] = "nw_http_capsule_framer_fetch_unprocessed_frames";
          v39 = "%{public}s called with null framer, no backtrace";
        }

        else
        {
          v37 = __nwlog_obj();
          v38 = buf[0];
          if (!os_log_type_enabled(v37, buf[0]))
          {
            goto LABEL_75;
          }

          *v54 = 136446210;
          *&v54[4] = "nw_http_capsule_framer_fetch_unprocessed_frames";
          v39 = "%{public}s called with null framer, backtrace limit exceeded";
        }

        _os_log_impl(&dword_181A37000, v37, v38, v39, v54, 0xCu);
        goto LABEL_75;
      }

      if (!v34)
      {
        goto LABEL_59;
      }

      *v54 = 136446210;
      *&v54[4] = "nw_http_capsule_framer_parse_capsule_header";
      v32 = "%{public}s called with null framer, no backtrace";
    }

    else
    {
      v30 = __nwlog_obj();
      v31 = buf[0];
      if (!os_log_type_enabled(v30, buf[0]))
      {
        goto LABEL_59;
      }

      *v54 = 136446210;
      *&v54[4] = "nw_http_capsule_framer_parse_capsule_header";
      v32 = "%{public}s called with null framer, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v30, v31, v32, v54, 0xCu);
    goto LABEL_59;
  }

  while (1)
  {
    *v54 = 0;
    buf[0] = 0;
    if (*a1 == -1)
    {
      if (!nw_http_vle_decode_from_frames((a1 + 7), a2, a1 + 3, v54, buf, 0))
      {
        goto LABEL_7;
      }

      *a1 = *v54;
    }

    if (a1[1] != -1)
    {
      break;
    }

    if (nw_http_vle_decode_from_frames((a1 + 7), a2, a1 + 3, v54, buf, 0))
    {
      v8 = *v54;
      a1[1] = *v54;
      a1[2] = v8;
      goto LABEL_14;
    }

LABEL_7:
    v4 = *(a2 + 32);
    if (!v4)
    {
      goto LABEL_77;
    }

    v5 = v4[3];
    if (!v5)
    {
      goto LABEL_77;
    }

    if (!*(v5 + 80))
    {
      goto LABEL_77;
    }

    *v54 = 0;
    *&v54[8] = v54;
    if (!nw_protocol_get_input_frames(v4, a2, 1, 0xFFFFFFFFLL, 0xFFFFFFFFLL, v54))
    {
      goto LABEL_77;
    }

    if (*v54)
    {
      v6 = a1[4];
      *v6 = *v54;
      v7 = *&v54[8];
      *(*v54 + 40) = v6;
      a1[4] = v7;
    }
  }

  while (1)
  {
LABEL_14:
    if (*a1 == -1 || a1[1] == -1)
    {
      v16 = __nwlog_obj();
      *buf = 136446210;
      v58 = "nw_http_capsule_framer_process_capsule_body";
      LODWORD(v44) = 12;
      v17 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v16, 16, "%{public}s called with null nw_http_capsule_framer_is_header_parsed(framer)", buf, v44);
      type = OS_LOG_TYPE_ERROR;
      v52 = 0;
      if (!__nwlog_fault(v17, &type, &v52))
      {
        goto LABEL_40;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        v49 = __nwlog_obj();
        log = type;
        if (!os_log_type_enabled(v49, type))
        {
          goto LABEL_40;
        }

        *buf = 136446210;
        v58 = "nw_http_capsule_framer_process_capsule_body";
        v18 = v49;
        v19 = log;
        v20 = "%{public}s called with null nw_http_capsule_framer_is_header_parsed(framer)";
      }

      else if (v52 == 1)
      {
        v50 = __nw_create_backtrace_string();
        loga = __nwlog_obj();
        HIDWORD(v44) = type;
        v21 = os_log_type_enabled(loga, type);
        v22 = v50;
        if (v50)
        {
          if (v21)
          {
            *buf = 136446466;
            v58 = "nw_http_capsule_framer_process_capsule_body";
            v59 = 2082;
            v60 = v50;
            _os_log_impl(&dword_181A37000, loga, BYTE4(v44), "%{public}s called with null nw_http_capsule_framer_is_header_parsed(framer), dumping backtrace:%{public}s", buf, 0x16u);
            v22 = v50;
          }

          free(v22);
          goto LABEL_40;
        }

        if (!v21)
        {
LABEL_40:
          if (v17)
          {
            free(v17);
          }

          goto LABEL_20;
        }

        *buf = 136446210;
        v58 = "nw_http_capsule_framer_process_capsule_body";
        v18 = loga;
        v19 = BYTE4(v44);
        v20 = "%{public}s called with null nw_http_capsule_framer_is_header_parsed(framer), no backtrace";
      }

      else
      {
        v51 = __nwlog_obj();
        logb = type;
        if (!os_log_type_enabled(v51, type))
        {
          goto LABEL_40;
        }

        *buf = 136446210;
        v58 = "nw_http_capsule_framer_process_capsule_body";
        v18 = v51;
        v19 = logb;
        v20 = "%{public}s called with null nw_http_capsule_framer_is_header_parsed(framer), backtrace limit exceeded";
      }

      _os_log_impl(&dword_181A37000, v18, v19, v20, buf, 0xCu);
      goto LABEL_40;
    }

    *v54 = MEMORY[0x1E69E9820];
    *&v54[8] = 0x40000000;
    *&v54[16] = ___ZL43nw_http_capsule_framer_process_capsule_bodyP22nw_http_capsule_framerP11nw_protocol_block_invoke;
    v55 = &__block_descriptor_tmp_10_51535;
    v56 = a1;
    v9 = a1[3];
    do
    {
      if (!v9)
      {
        break;
      }

      v10 = *(v9 + 32);
      v11 = (*&v54[16])(v54);
      v9 = v10;
    }

    while ((v11 & 1) != 0);
    if (!a1[2])
    {
      return 1;
    }

LABEL_20:
    v12 = *(a2 + 32);
    if (!v12)
    {
      break;
    }

    v13 = v12[3];
    if (!v13)
    {
      break;
    }

    if (!*(v13 + 80))
    {
      break;
    }

    *v54 = 0;
    *&v54[8] = v54;
    if (!nw_protocol_get_input_frames(v12, a2, 1, 0xFFFFFFFFLL, 0xFFFFFFFFLL, v54))
    {
      break;
    }

    if (*v54)
    {
      v14 = a1[4];
      *v14 = *v54;
      v15 = *&v54[8];
      *(*v54 + 40) = v14;
      a1[4] = v15;
    }
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v23 = gLogObj;
  result = os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEBUG);
  if (!result)
  {
    return result;
  }

  v25 = *a1;
  v26 = a1[2];
  *v54 = 136446722;
  *&v54[4] = "nw_http_capsule_framer_read_capsule";
  *&v54[12] = 2048;
  *&v54[14] = v25;
  *&v54[22] = 2048;
  v55 = v26;
  v27 = "%{public}s Pending capsule body processing for type %llx. Remaining length: %llu";
LABEL_79:
  _os_log_impl(&dword_181A37000, v23, OS_LOG_TYPE_DEBUG, v27, v54, 0x20u);
  return 0;
}