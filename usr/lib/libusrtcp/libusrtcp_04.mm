void tcp_close_locked(uint64_t is_datapath_logging_enabled)
{
  v71 = *MEMORY[0x1E69E9840];
  if (!*(is_datapath_logging_enabled + 360))
  {
    if ((*(is_datapath_logging_enabled + 776) & 2) != 0)
    {
      return;
    }

    v8 = __nwlog_tcp_log();
    *buf = 136446722;
    *&buf[4] = "tcp_close_locked";
    *&buf[12] = 2082;
    *&buf[14] = is_datapath_logging_enabled + 556;
    v69 = 2048;
    *v70 = is_datapath_logging_enabled;
    v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1889BA000, v8, 16, "%{public}s %{public}s soclose: so=%p refcount=0", buf, 32);
    type[0] = OS_LOG_TYPE_ERROR;
    if (!__nwlog_fault())
    {
      goto LABEL_121;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v10 = __nwlog_tcp_log();
      v11 = type[0];
      if (!os_log_type_enabled(v10, type[0]))
      {
        goto LABEL_121;
      }

      *buf = 136446722;
      *&buf[4] = "tcp_close_locked";
      *&buf[12] = 2082;
      *&buf[14] = is_datapath_logging_enabled + 556;
      v69 = 2048;
      *v70 = is_datapath_logging_enabled;
      v12 = "%{public}s %{public}s soclose: so=%p refcount=0";
    }

    else
    {
      v10 = __nwlog_tcp_log();
      v11 = type[0];
      if (!os_log_type_enabled(v10, type[0]))
      {
        goto LABEL_121;
      }

      *buf = 136446722;
      *&buf[4] = "tcp_close_locked";
      *&buf[12] = 2082;
      *&buf[14] = is_datapath_logging_enabled + 556;
      v69 = 2048;
      *v70 = is_datapath_logging_enabled;
      v12 = "%{public}s %{public}s soclose: so=%p refcount=0, backtrace limit exceeded";
    }

LABEL_120:
    _os_log_impl(&dword_1889BA000, v10, v11, v12, buf, 0x20u);
    goto LABEL_121;
  }

  if (*(is_datapath_logging_enabled + 544))
  {
    v3 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "soclose_wait_locked";
    v4 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1889BA000, v3, 16, "%{public}s currently not supported", buf, 12);
    type[0] = OS_LOG_TYPE_ERROR;
    if (!__nwlog_fault())
    {
      goto LABEL_19;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v5 = __nwlog_obj();
      v6 = type[0];
      if (!os_log_type_enabled(v5, type[0]))
      {
        goto LABEL_19;
      }

      *buf = 136446210;
      *&buf[4] = "soclose_wait_locked";
      v7 = "%{public}s currently not supported";
    }

    else
    {
      v5 = __nwlog_obj();
      v6 = type[0];
      if (!os_log_type_enabled(v5, type[0]))
      {
        goto LABEL_19;
      }

      *buf = 136446210;
      *&buf[4] = "soclose_wait_locked";
      v7 = "%{public}s currently not supported, backtrace limit exceeded";
    }

    _os_log_impl(&dword_1889BA000, v5, v6, v7, buf, 0xCu);
LABEL_19:
    if (v4)
    {
      free(v4);
    }
  }

  *(is_datapath_logging_enabled + 368) &= ~0x40u;
  v13 = *(is_datapath_logging_enabled + 372);
  if ((v13 & 2) != 0)
  {
    *(is_datapath_logging_enabled + 372) = v13 & 0xFFFFFFFD;
    v14 = *(is_datapath_logging_enabled + 304);
    if (v14)
    {
      v15 = 0;
      do
      {
        v16 = v14;
        v14 = *(v14 + 336);
        if ((*(v16 + 365) & 2) == 0)
        {
          v17 = *(is_datapath_logging_enabled + 8);
          v18 = v14;
          if (*(v17 + 32))
          {
            (*(v17 + 24))(is_datapath_logging_enabled, 0, v1);
            v15 = 1;
            (*(*(v16 + 8) + 16))(v16, 1, v1);
            (*(*(is_datapath_logging_enabled + 8) + 16))(is_datapath_logging_enabled, 0, v1);
            v18 = *(v16 + 336);
          }

          v19 = *(v16 + 344);
          v20 = (v18 + 344);
          if (!v18)
          {
            v20 = (is_datapath_logging_enabled + 312);
          }

          *v20 = v19;
          *v19 = v18;
          --*(is_datapath_logging_enabled + 356);
          if ((*(v16 + 376) & 0x800) != 0)
          {
            *(v16 + 376) &= ~0x800u;
            *(v16 + 296) = 0;
            v21 = *(v16 + 364);
            if ((v21 & 0x100) == 0)
            {
              *(v16 + 364) = v21 | 0x100;
              if ((**(*(v16 + 8) + 40))(v16))
              {
                v22 = *(v16 + 8);
                if (v22)
                {
                  v23 = *(v22 + 32);
                  if (v23)
                  {
                    v23(v16, 0);
                  }
                }

                sofreelastref(v16);
              }
            }
          }

          if (v15)
          {
            v15 = 1;
            (*(*(v16 + 8) + 24))(v16, 1, v1);
          }
        }
      }

      while (v14);
    }

    for (i = *(is_datapath_logging_enabled + 320); i; i = *(is_datapath_logging_enabled + 320))
    {
      v25 = *(i + 336);
      v26 = *(i + 344);
      v27 = (v25 + 344);
      if (!v25)
      {
        v27 = (is_datapath_logging_enabled + 328);
      }

      *v27 = v26;
      *v26 = v25;
      --*(is_datapath_logging_enabled + 352);
      v28 = *(is_datapath_logging_enabled + 8);
      if (*(v28 + 32))
      {
        (*(v28 + 24))(is_datapath_logging_enabled, 0, v1);
        (*(*(i + 8) + 16))(i, 1, v1);
      }

      if ((*(i + 376) & 0x1000) != 0)
      {
        *(i + 376) &= ~0x1000u;
        *(i + 296) = 0;
        v29 = *(i + 364);
        if ((v29 & 0x100) == 0)
        {
          *(i + 364) = v29 | 0x100;
          if ((**(*(i + 8) + 40))(i))
          {
            v30 = *(i + 8);
            if (v30)
            {
              v31 = *(v30 + 32);
              if (v31)
              {
                v31(i, 0);
              }
            }

            sofreelastref(i);
          }
        }
      }

      if (*(*(is_datapath_logging_enabled + 8) + 32))
      {
        (*(*(i + 8) + 24))(i, 1, v1);
        (*(*(is_datapath_logging_enabled + 8) + 16))(is_datapath_logging_enabled, 0, v1);
      }
    }
  }

  if (!*is_datapath_logging_enabled)
  {
    v37 = *(is_datapath_logging_enabled + 364) | 4;
    *(is_datapath_logging_enabled + 364) = v37;
LABEL_76:
    *(is_datapath_logging_enabled + 376) |= 1u;
    if ((v37 & 0x1000000) == 0)
    {
      goto LABEL_91;
    }

    goto LABEL_90;
  }

  if ((*(is_datapath_logging_enabled + 776) & 2) == 0)
  {
    if (__nwlog_is_datapath_logging_enabled())
    {
      v63 = __nwlog_tcp_log();
      if (os_log_type_enabled(v63, OS_LOG_TYPE_DEBUG))
      {
        v64 = *(is_datapath_logging_enabled + 360);
        v65 = *(is_datapath_logging_enabled + 376);
        *buf = 136446978;
        *&buf[4] = "tcp_close_locked";
        *&buf[12] = 2082;
        *&buf[14] = is_datapath_logging_enabled + 556;
        v69 = 1024;
        *v70 = v64;
        *&v70[4] = 1024;
        *&v70[6] = v65;
        _os_log_impl(&dword_1889BA000, v63, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s so_usecount %u so_state 0x%x", buf, 0x22u);
      }
    }
  }

  v32 = *(is_datapath_logging_enabled + 376);
  if ((v32 & 2) != 0 && ((v32 & 8) != 0 || !(*(*(*(is_datapath_logging_enabled + 8) + 40) + 40))(is_datapath_logging_enabled)) && (*(is_datapath_logging_enabled + 372) & 0x80) != 0 && (~*(is_datapath_logging_enabled + 376) & 0x108) != 0)
  {
    v43 = *(is_datapath_logging_enabled + 8);
    if (v43 && (v44 = *(v43 + 32)) != 0)
    {
      v45 = v44(is_datapath_logging_enabled, 0);
    }

    else
    {
      v45 = 0;
    }

    while ((*(is_datapath_logging_enabled + 376) & 2) != 0)
    {
      v53 = *(is_datapath_logging_enabled + 32);
      if (v53)
      {
        v54 = *(v53 + 112);
        if (v54)
        {
          v55 = *(is_datapath_logging_enabled + 16);
          v56 = v55 / 100;
          v57 = v55 % 100;
          *buf = 0;
          *&buf[8] = 0;
          if ((v55 + 99) > 0xC6 || (v52 = 0, v57))
          {
            *type = 0;
            v58 = mach_timebase_info(type);
            v52 = 0;
            if (!v58)
            {
              v59 = mach_absolute_time() * *type / *&type[4];
              v60 = v59 / 0x3B9ACA00;
              v61 = 10000000 * v57 + v59 % 0x3B9ACA00;
              *&buf[8] = v61;
              if (v61 >= 1000000000)
              {
                *&buf[8] = v61 - 1000000000;
                ++v60;
              }

              *buf = v60 + v56;
              v52 = buf;
            }
          }

          if (v54(is_datapath_logging_enabled, v45, v52))
          {
            break;
          }
        }
      }
    }
  }

  v33 = *(is_datapath_logging_enabled + 360);
  if (!v33)
  {
    if ((*(is_datapath_logging_enabled + 776) & 2) != 0)
    {
      return;
    }

    v39 = __nwlog_tcp_log();
    *buf = 136446722;
    *&buf[4] = "tcp_close_locked";
    *&buf[12] = 2082;
    *&buf[14] = is_datapath_logging_enabled + 556;
    v69 = 2048;
    *v70 = is_datapath_logging_enabled;
    LODWORD(v66) = 32;
    v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1889BA000, v39, 16, "%{public}s %{public}s soclose: usecount is zero so=%p", buf, v66);
    type[0] = OS_LOG_TYPE_ERROR;
    if (!__nwlog_fault())
    {
      goto LABEL_121;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v10 = __nwlog_tcp_log();
      v11 = type[0];
      if (os_log_type_enabled(v10, type[0]))
      {
LABEL_82:
        *buf = 136446722;
        *&buf[4] = "tcp_close_locked";
        *&buf[12] = 2082;
        *&buf[14] = is_datapath_logging_enabled + 556;
        v69 = 2048;
        *v70 = is_datapath_logging_enabled;
        v12 = "%{public}s %{public}s soclose: usecount is zero so=%p";
        goto LABEL_120;
      }

LABEL_121:
      if (!v9)
      {
        return;
      }

      v62 = v9;
      goto LABEL_123;
    }

    v10 = __nwlog_tcp_log();
    v11 = type[0];
    if (!os_log_type_enabled(v10, type[0]))
    {
      goto LABEL_121;
    }

LABEL_97:
    *buf = 136446722;
    *&buf[4] = "tcp_close_locked";
    *&buf[12] = 2082;
    *&buf[14] = is_datapath_logging_enabled + 556;
    v69 = 2048;
    *v70 = is_datapath_logging_enabled;
    v12 = "%{public}s %{public}s soclose: usecount is zero so=%p, backtrace limit exceeded";
    goto LABEL_120;
  }

  if (*is_datapath_logging_enabled)
  {
    if ((*(is_datapath_logging_enabled + 364) & 4) == 0)
    {
      v34 = *(is_datapath_logging_enabled + 8);
      if (v34)
      {
        v35 = *(v34 + 40);
        if (v35)
        {
          v36 = *(v35 + 32);
          if (v36)
          {
            v36(is_datapath_logging_enabled);
            v33 = *(is_datapath_logging_enabled + 360);
          }
        }
      }
    }
  }

  if (v33 <= 0)
  {
    if ((*(is_datapath_logging_enabled + 776) & 2) != 0)
    {
      return;
    }

    v40 = __nwlog_tcp_log();
    *buf = 136446722;
    *&buf[4] = "tcp_close_locked";
    *&buf[12] = 2082;
    *&buf[14] = is_datapath_logging_enabled + 556;
    v69 = 2048;
    *v70 = is_datapath_logging_enabled;
    LODWORD(v66) = 32;
    v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1889BA000, v40, 16, "%{public}s %{public}s soclose: usecount is zero so=%p", buf, v66);
    type[0] = OS_LOG_TYPE_ERROR;
    if (!__nwlog_fault())
    {
      goto LABEL_121;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v10 = __nwlog_tcp_log();
      v11 = type[0];
      if (os_log_type_enabled(v10, type[0]))
      {
        goto LABEL_82;
      }

      goto LABEL_121;
    }

    v10 = __nwlog_tcp_log();
    v11 = type[0];
    if (!os_log_type_enabled(v10, type[0]))
    {
      goto LABEL_121;
    }

    goto LABEL_97;
  }

  v37 = *(is_datapath_logging_enabled + 364);
  if (!*is_datapath_logging_enabled)
  {
    goto LABEL_76;
  }

  v38 = *(is_datapath_logging_enabled + 376);
  if ((v37 & 0x1000000) != 0)
  {
    *(is_datapath_logging_enabled + 376) = v38 | 1;
LABEL_90:
    *(is_datapath_logging_enabled + 364) = v37 & 0xFEFFFFFF;
    goto LABEL_91;
  }

  if (v38)
  {
    if ((*(is_datapath_logging_enabled + 776) & 2) != 0)
    {
      return;
    }

    v46 = __nwlog_tcp_log();
    v47 = is_datapath_logging_enabled + 556;
    *buf = 136446466;
    *&buf[4] = "tcp_close_locked";
    *&buf[12] = 2082;
    *&buf[14] = is_datapath_logging_enabled + 556;
    LODWORD(v66) = 22;
    v48 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1889BA000, v46, 16, "%{public}s %{public}s soclose: NOFDREF", buf, v66);
    type[0] = OS_LOG_TYPE_ERROR;
    if (!__nwlog_fault())
    {
      goto LABEL_128;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v49 = __nwlog_tcp_log();
      v50 = type[0];
      if (os_log_type_enabled(v49, type[0]))
      {
        *buf = 136446466;
        *&buf[4] = "tcp_close_locked";
        *&buf[12] = 2082;
        *&buf[14] = v47;
        v51 = "%{public}s %{public}s soclose: NOFDREF";
LABEL_127:
        _os_log_impl(&dword_1889BA000, v49, v50, v51, buf, 0x16u);
      }
    }

    else
    {
      v49 = __nwlog_tcp_log();
      v50 = type[0];
      if (os_log_type_enabled(v49, type[0]))
      {
        *buf = 136446466;
        *&buf[4] = "tcp_close_locked";
        *&buf[12] = 2082;
        *&buf[14] = v47;
        v51 = "%{public}s %{public}s soclose: NOFDREF, backtrace limit exceeded";
        goto LABEL_127;
      }
    }

LABEL_128:
    if (!v48)
    {
      return;
    }

    v62 = v48;
LABEL_123:
    free(v62);
    return;
  }

  *(is_datapath_logging_enabled + 376) = v38 | 1;
LABEL_91:
  --*(is_datapath_logging_enabled + 360);
  v41 = *(is_datapath_logging_enabled + 8);
  if (v41)
  {
    v42 = *(v41 + 32);
    if (v42)
    {
      v42(is_datapath_logging_enabled, 0);
    }
  }

  sofreelastref(is_datapath_logging_enabled);
}

void tcp_disconnect(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 80) + 224);
  if (!v2 || (*(v2 + 776) & 2) == 0)
  {
    if (__nwlog_is_datapath_logging_enabled())
    {
      v6 = __nwlog_tcp_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        v7 = (v2 + 556);
        v8 = *(v2 + 360);
        v9 = *(a1 + 12);
        if (!v2)
        {
          v7 = &unk_188A285CF;
        }

        v10 = 136446978;
        v11 = "tcp_disconnect";
        v12 = 2082;
        v13 = v7;
        v14 = 1024;
        v15 = v8;
        v16 = 1024;
        v17 = v9;
        _os_log_impl(&dword_1889BA000, v6, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s so_usecount %u t_state %u", &v10, 0x22u);
      }
    }
  }

  if (*(v2 + 464) || *(a1 + 232) || (*(v2 + 368) & 8) != 0)
  {
    goto LABEL_20;
  }

  if (*(a1 + 12) <= 3)
  {
    tcp_close(a1);
    return;
  }

  if ((*(v2 + 372) & 0x80) != 0 && !*(v2 + 16))
  {
LABEL_20:
    tcp_drop(a1, 0);
  }

  else
  {
    *(v2 + 376) = *(v2 + 376) & 0xFFC3 | 0x38;
    v3 = *(v2 + 32);
    if (v3)
    {
      if (!*v3 || ((*v3)(v2), (v3 = *(v2 + 32)) != 0))
      {
        v4 = v3[3];
        if (v4)
        {
          v4(v2);
        }
      }
    }

    sblock(v2 + 464);
    if (nw_frame_array_first())
    {
      sbdrop((v2 + 464), *(v2 + 464));
    }

    sb_empty_assert((v2 + 464), "sbflush");
    sbunlock(v2 + 464);
    v5 = tcp_usrclosed(a1);
    if (v5)
    {
      tcp_output(v5);
    }
  }
}

uint64_t sofreelastref(uint64_t result)
{
  v18 = *MEMORY[0x1E69E9840];
  if ((*(result + 364) & 4) == 0)
  {
    return result;
  }

  v2 = result;
  if ((*(result + 376) & 1) == 0)
  {
    return result;
  }

  v3 = *(result + 296);
  if (!v3)
  {
    goto LABEL_21;
  }

  (*(*(v3 + 8) + 16))(*(result + 296), 1, v1);
  v4 = *(v2 + 376);
  if ((v4 & 0x800) != 0)
  {
    v7 = *(v2 + 336);
    v8 = *(v2 + 344);
    v9 = (v3 + 312);
    if (v7)
    {
      v9 = (v7 + 344);
    }

    *v9 = v8;
    *v8 = v7;
    --*(v3 + 356);
    goto LABEL_20;
  }

  if ((*(v2 + 376) & 0x1000) == 0)
  {
    if ((*(v2 + 776) & 2) == 0)
    {
      v5 = __nwlog_tcp_log();
      *buf = 136446466;
      v15 = "sofreelastref";
      v16 = 2082;
      v17 = v2 + 556;
      v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1889BA000, v5, 16, "%{public}s %{public}s sofree: not queued", buf, 22);
      if (__nwlog_fault())
      {
        v11 = __nwlog_tcp_log();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446466;
          v15 = "sofreelastref";
          v16 = 2082;
          v17 = v2 + 556;
          _os_log_impl(&dword_1889BA000, v11, OS_LOG_TYPE_ERROR, "%{public}s %{public}s sofree: not queued, backtrace limit exceeded", buf, 0x16u);
        }
      }

      if (v6)
      {
        free(v6);
      }

      v4 = *(v2 + 376);
    }

LABEL_20:
    --*(v3 + 352);
    *(v2 + 376) = v4 & 0xF7FF;
    *(v2 + 296) = 0;
    (*(*(v3 + 8) + 24))(v3, 1, v1);
LABEL_21:
    sblock(v2 + 384);
    *(v2 + 416) |= 0x80u;
    sbunlock(v2 + 384);
    sbrelease(v2 + 384);
    *(v2 + 376) |= 0x20u;
    v12 = *(v2 + 32);
    if (v12)
    {
      v13 = *(v12 + 40);
      if (v13)
      {
        v13(v2);
      }
    }

    sblock(v2 + 464);
    *(v2 + 496) |= 0x80u;
    sbunlock(v2 + 464);
    return sbrelease(v2 + 464);
  }

  v10 = *(*(v3 + 8) + 24);

  return v10(v3, 1, v1);
}

__n128 tcp_connection_fill_info(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = *MEMORY[0x1E69E9840];
  *(a4 + 80) = 0u;
  *(a4 + 96) = 0u;
  *(a4 + 48) = 0u;
  *(a4 + 64) = 0u;
  *(a4 + 16) = 0u;
  *(a4 + 32) = 0u;
  *a4 = 0u;
  if (a1 && a2 && a3)
  {
    *a4 = *(a1 + 12);
    v6 = *(a1 + 88);
    if ((~v6 & 0x180) != 0)
    {
      v7 = 0;
      v8 = *(a1 + 748);
      if ((v8 & 0x20) == 0)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v7 = 1;
      *(a4 + 4) = 1;
      v8 = *(a1 + 748);
      if ((v8 & 0x20) == 0)
      {
LABEL_15:
        if ((~v6 & 0x60) == 0)
        {
          v7 |= 4u;
          *(a4 + 4) = v7;
          *(a4 + 1) = *(a1 + 268);
        }

        if ((~*(a1 + 336) & 3) == 0)
        {
          *(a4 + 4) = v7 | 8;
        }

        if ((v6 & 0x200000) != 0 || *(a1 + 234))
        {
          *(a4 + 8) = 1;
          v12 = 3;
          if ((v8 & 0x2000) == 0)
          {
LABEL_23:
            v13 = *(a1 + 28);
            if (v13)
            {
              v13 = *(a1 + 196);
            }

            v14 = *(a1 + 200);
            *(a4 + 12) = v13;
            *(a4 + 16) = v14;
            *(a4 + 20) = vrev64_s32(*(a1 + 148));
            v15 = *(a3 + 384);
            *(a4 + 28) = *(a1 + 144);
            *(a4 + 32) = v15;
            v17 = *(a1 + 120);
            v16 = *(a1 + 124);
            v18 = v16 >= v17;
            v19 = v16 - v17;
            if (!v18)
            {
              v19 = 0;
            }

            v20 = *(a1 + 244);
            *(a4 + 36) = v19;
            *(a4 + 40) = v20;
            v21 = *(a1 + 212) >> 4;
            *(a4 + 44) = *(a1 + 204) >> 5;
            *(a4 + 48) = v21;
            v22 = *(a2 + 248);
            *(a4 + 56) = *(v22 + 16);
            *(a4 + 72) = *(a1 + 704);
            *(a4 + 104) = *(a1 + 712);
            result = *v22;
            *(a4 + 80) = *v22;
            *(a4 + 96) = *(a1 + 700);
            LOBYTE(v22) = *(a1 + 998);
            *(a4 + 52) = 32 * (v22 & 1);
            v23 = (32 * *(a1 + 998)) & 0x40 | (32 * (v22 & 1));
            *(a4 + 52) = v23;
            v24 = v23 & 0xFFFFFF7F | (((*(a1 + 998) >> 2) & 1) << 7);
            *(a4 + 52) = v24;
            v25 = v24 & 0xFFFFFEFF | (((*(a1 + 998) >> 3) & 1) << 8);
            *(a4 + 52) = v25;
            v26 = v25 & 0xFFFFFFFE | (*(a1 + 998) >> 4) & 1;
            *(a4 + 52) = v26;
            LODWORD(v22) = v26 | (*(a1 + 998) >> 4) & 2;
            *(a4 + 52) = v22;
            LODWORD(v22) = v22 & 0xFFFFFFF7 | (*(a1 + 998) >> 3) & 8;
            *(a4 + 52) = v22;
            LODWORD(v22) = v22 & 0xFFFFFFEF | (*(a1 + 998) >> 3) & 0x10;
            *(a4 + 52) = v22;
            LODWORD(v22) = v22 & 0xFFFFFFFB | (*(a1 + 998) >> 6) & 4;
            *(a4 + 52) = v22;
            LODWORD(v22) = v22 & 0xFFFFFDFF | *(a1 + 998) & 0x200;
            *(a4 + 52) = v22;
            LODWORD(v22) = v22 & 0xFFFFFBFF | *(a1 + 998) & 0x400;
            *(a4 + 52) = v22;
            LODWORD(v22) = v22 & 0xFFFFF7FF | *(a1 + 998) & 0x800;
            *(a4 + 52) = v22;
            LODWORD(v22) = v22 & 0xFFFFEFFF | *(a1 + 998) & 0x1000;
            *(a4 + 52) = v22;
            LODWORD(v22) = v22 & 0xFFFFDFFF | *(a1 + 998) & 0x2000;
            *(a4 + 52) = v22;
            *(a4 + 52) = *(a1 + 998) & 0x4000 | v22 & 0x3FFF;
            return result;
          }
        }

        else
        {
          v12 = 2;
          if ((v8 & 0x2000) == 0)
          {
            goto LABEL_23;
          }
        }

        *(a4 + 8) = v12;
        goto LABEL_23;
      }
    }

    v7 |= 2u;
    *(a4 + 4) = v7;
    goto LABEL_15;
  }

  v9 = __nwlog_obj();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v11 = "tp";
    if (!a2)
    {
      v11 = "inp";
    }

    if (!a3)
    {
      v11 = "so";
    }

    v27 = 136446466;
    v28 = "tcp_connection_fill_info";
    v29 = 2082;
    v30 = v11;
    _os_log_impl(&dword_1889BA000, v9, OS_LOG_TYPE_INFO, "%{public}s %{public}s is NULL", &v27, 0x16u);
  }

  return result;
}

BOOL nw_protocol_tcp_remove_input_handler(uint64_t a1, uint64_t a2, int a3)
{
  v27 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v17 = __nwlog_obj();
    *buf = 136446210;
    v24 = "nw_protocol_tcp_remove_input_handler";
    v18 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1889BA000, v17, 16, "%{public}s called with null protocol", buf, 12);
    if (__nwlog_fault())
    {
      v21 = __nwlog_obj();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446210;
        v24 = "nw_protocol_tcp_remove_input_handler";
        v22 = "%{public}s called with null protocol, backtrace limit exceeded";
LABEL_42:
        _os_log_impl(&dword_1889BA000, v21, OS_LOG_TYPE_ERROR, v22, buf, 0xCu);
      }
    }

LABEL_43:
    if (v18)
    {
      free(v18);
    }

    return 0;
  }

  v7 = nw_protocol_downcast();
  if (!v7)
  {
    v19 = __nwlog_obj();
    *buf = 136446210;
    v24 = "nw_protocol_tcp_remove_input_handler";
    v18 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1889BA000, v19, 16, "%{public}s called with null tcp", buf, 12);
    if (__nwlog_fault())
    {
      v21 = __nwlog_obj();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446210;
        v24 = "nw_protocol_tcp_remove_input_handler";
        v22 = "%{public}s called with null tcp, backtrace limit exceeded";
        goto LABEL_42;
      }
    }

    goto LABEL_43;
  }

  v8 = v7;
  if ((*(v7 + 776) & 2) == 0)
  {
    if (__nwlog_is_datapath_logging_enabled())
    {
      v20 = __nwlog_tcp_log();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446466;
        v24 = "nw_protocol_tcp_remove_input_handler";
        v25 = 2082;
        v26 = v8 + 556;
        _os_log_impl(&dword_1889BA000, v20, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s protocol upper layer initiated remove_input_handler", buf, 0x16u);
      }
    }
  }

  if (nw_protocol_get_output_handler() == a1)
  {
    nw_protocol_set_output_handler();
  }

  if (nw_protocol_get_input_handler() != a2)
  {
    if ((*(v8 + 776) & 2) == 0)
    {
      v9 = __nwlog_tcp_log();
      result = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
      if (result)
      {
        *buf = 136446466;
        v24 = "nw_protocol_tcp_remove_input_handler";
        v25 = 2082;
        v26 = v8 + 556;
        _os_log_impl(&dword_1889BA000, v9, OS_LOG_TYPE_ERROR, "%{public}s %{public}s default_input_handler is different from the input_protocol", buf, 0x16u);
        return 0;
      }

      return result;
    }

    return 0;
  }

  nw_protocol_set_input_handler();
  if (a3)
  {
    v11 = *(v8 + 5436);
    if (v11)
    {
      v12 = __nwlog_obj();
      *buf = 136446210;
      v24 = "nw_protocol_tcp_remove_input_handler";
      v13 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1889BA000, v12, 16, "%{public}s tcp->release_is_delayed already set", buf, 12);
      if (__nwlog_fault())
      {
        v14 = __nwlog_obj();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446210;
          v24 = "nw_protocol_tcp_remove_input_handler";
          _os_log_impl(&dword_1889BA000, v14, OS_LOG_TYPE_ERROR, "%{public}s tcp->release_is_delayed already set, backtrace limit exceeded", buf, 0xCu);
        }
      }

      if (v13)
      {
        free(v13);
      }

      v11 = *(v8 + 5436);
    }

    *(v8 + 5436) = v11 | 1;
    v15 = *(v8 + 5352);
    if ((v15 - 1) < 2)
    {
      *(v8 + 5436) = v11 | 3;
      *(v8 + 5352) = 3;
      if ((*(v8 + 776) & 2) == 0)
      {
        v16 = __nwlog_tcp_log();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          *buf = 136446466;
          v24 = "nw_protocol_tcp_remove_input_handler";
          v25 = 2082;
          v26 = v8 + 556;
          _os_log_impl(&dword_1889BA000, v16, OS_LOG_TYPE_INFO, "%{public}s %{public}s force closing tcp", buf, 0x16u);
        }
      }

      (*(*(v8 + 8) + 16))(v8, 1, v3);
      if ((~*(v8 + 376) & 0x30) != 0 || (*(v8 + 365) & 0x20) != 0)
      {
        *(v8 + 16) = 0;
        *(v8 + 372) |= 0x80u;
      }

      (*(*(v8 + 8) + 24))(v8, 1, v3);
      tcp_close_locked(v8);
    }

    else if (!v15 || v15 == 4)
    {
      nw_protocol_tcp_release(v8);
    }
  }

  return 1;
}

uint64_t tcp_set_finwait_timeout(uint64_t a1)
{
  v2 = *(sysctls + 292);
  v3 = *(a1 + 680);
  if (!v2)
  {
LABEL_5:
    if (v3)
    {
      v6 = *(a1 + 676);
      if (v6)
      {
LABEL_7:
        v2 = v6 * v3;
        goto LABEL_8;
      }
    }

    else
    {
      v3 = *(sysctls + 196);
      v6 = *(a1 + 676);
      if (v6)
      {
        goto LABEL_7;
      }
    }

    v6 = *(sysctls + 192);
    goto LABEL_7;
  }

  v4 = *(a1 + 680);
  if (v3)
  {
    v5 = *(a1 + 676);
    if (v5)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v4 = *(sysctls + 196);
    v5 = *(a1 + 676);
    if (v5)
    {
      goto LABEL_4;
    }
  }

  v5 = *(sysctls + 192);
LABEL_4:
  if (v2 >= v5 * v4)
  {
    goto LABEL_5;
  }

LABEL_8:
  result = nw_tcp_access_globals(*(*(a1 + 80) + 224));
  *(a1 + 44) = *(result + 308) + v2 - *(a1 + 64);
  return result;
}

void nw_protocol_tcp_disconnect(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = nw_protocol_downcast();
    if (v1)
    {
      v2 = v1;
      v3 = MEMORY[0x1E6977EF0];
      if (*MEMORY[0x1E6977EF0] != -1)
      {
        dispatch_once(MEMORY[0x1E6977EF0], &__block_literal_global_18);
      }

      v4 = MEMORY[0x1E6977EE8];
      if (*MEMORY[0x1E6977EE8] == 1 && kdebug_is_enabled())
      {
        kdebug_trace();
        if ((*(v2 + 776) & 2) == 0)
        {
LABEL_8:
          v5 = __nwlog_tcp_log();
          if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
          {
            *buf = 136446466;
            v13 = "nw_protocol_tcp_disconnect";
            v14 = 2082;
            v15 = v2 + 556;
            _os_log_impl(&dword_1889BA000, v5, OS_LOG_TYPE_INFO, "%{public}s %{public}s input protocol initiated disconnect", buf, 0x16u);
          }
        }
      }

      else if ((*(v2 + 776) & 2) == 0)
      {
        goto LABEL_8;
      }

      __nw_protocol_tcp_disconnect(v2);
      if ((*(v2 + 5436) & 2) == 0)
      {
        if ((*(v2 + 776) & 2) == 0)
        {
          v6 = __nwlog_tcp_log();
          if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
          {
            *buf = 136446466;
            v13 = "nw_protocol_tcp_disconnect";
            v14 = 2082;
            v15 = v2 + 556;
            _os_log_impl(&dword_1889BA000, v6, OS_LOG_TYPE_INFO, "%{public}s %{public}s send disconnect to input protocol", buf, 0x16u);
          }
        }

        nw_protocol_get_input_handler();
        if (nw_protocol_disconnected_is_valid())
        {
          if (*v3 != -1)
          {
            dispatch_once(MEMORY[0x1E6977EF0], &__block_literal_global_18);
          }

          if (*v4 == 1)
          {
            if (kdebug_is_enabled())
            {
              kdebug_trace();
            }
          }

          nw_protocol_get_input_handler();
          nw_protocol_disconnected();
        }

        *(v2 + 5436) |= 2u;
      }

      return;
    }

    v9 = __nwlog_obj();
    *buf = 136446210;
    v13 = "nw_protocol_tcp_disconnect";
    v8 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1889BA000, v9, 16, "%{public}s called with null tcp", buf, 12);
    if (__nwlog_fault())
    {
      v10 = __nwlog_obj();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446210;
        v13 = "nw_protocol_tcp_disconnect";
        v11 = "%{public}s called with null tcp, backtrace limit exceeded";
        goto LABEL_33;
      }
    }
  }

  else
  {
    v7 = __nwlog_obj();
    *buf = 136446210;
    v13 = "nw_protocol_tcp_disconnect";
    v8 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1889BA000, v7, 16, "%{public}s called with null protocol", buf, 12);
    if (__nwlog_fault())
    {
      v10 = __nwlog_obj();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446210;
        v13 = "nw_protocol_tcp_disconnect";
        v11 = "%{public}s called with null protocol, backtrace limit exceeded";
LABEL_33:
        _os_log_impl(&dword_1889BA000, v10, OS_LOG_TYPE_ERROR, v11, buf, 0xCu);
      }
    }
  }

  if (v8)
  {
    free(v8);
  }
}

void __nw_protocol_tcp_disconnect(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  if (*(a1 + 5352) < 3u)
  {
    if ((*(a1 + 776) & 2) == 0)
    {
      v3 = __nwlog_tcp_log();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        *buf = 136446466;
        v6 = "__nw_protocol_tcp_disconnect";
        v7 = 2082;
        v8 = a1 + 556;
        _os_log_impl(&dword_1889BA000, v3, OS_LOG_TYPE_INFO, "%{public}s %{public}s disconnect tcp", buf, 0x16u);
      }
    }

    *(a1 + 5352) = 3;
    nw_protocol_tcp_log_summary(a1);
    getpid();
    if (sandbox_check())
    {
      if ((*(a1 + 776) & 2) == 0)
      {
        v4 = __nwlog_tcp_log();
        if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446466;
          v6 = "__nw_protocol_tcp_disconnect";
          v7 = 2082;
          v8 = a1 + 556;
          _os_log_impl(&dword_1889BA000, v4, OS_LOG_TYPE_ERROR, "%{public}s %{public}s Sandbox does not allow __nexus_set_opt", buf, 0x16u);
        }
      }
    }

    else if (*(a1 + 5344))
    {
      nw_protocol_tcp_set_no_wake_from_sleep(a1, 1);
    }

    nw_protocol_upcast();
    nw_protocol_retain();
    nw_queue_context_async();
  }

  else if ((*(a1 + 776) & 2) == 0 && __nwlog_is_datapath_logging_enabled())
  {
    v2 = __nwlog_tcp_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446466;
      v6 = "__nw_protocol_tcp_disconnect";
      v7 = 2082;
      v8 = a1 + 556;
      _os_log_impl(&dword_1889BA000, v2, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s skipping", buf, 0x16u);
    }
  }
}

void nw_protocol_tcp_log_summary(uint64_t a1)
{
  v155[2] = *MEMORY[0x1E69E9840];
  if (*a1)
  {
    v2 = *(*a1 + 240);
    if (v2)
    {
      v3 = *(a1 + 40);
      if ((*(v3 + 5437) & 0x40) != 0)
      {
        return;
      }

      if ((*(v2 + 1880) & 0xFFFFFFFE) != 2)
      {
        *(v2 + 208) = *(v2 + 204);
        *(v2 + 216) = *(v2 + 212);
      }

      v4 = *(*(v2 + 80) + 496);
      if (!v4 || (v5 = *(v4 + 1632)) == 0 || (v6 = *(v5 + 40)) == 0)
      {
        v6 = *(v2 + 1972);
      }

      v155[0] = 0;
      v155[1] = 0;
      nw_protocol_upcast();
      nw_protocol_get_flow_id();
      if ((*(a1 + 776) & 4) != 0)
      {
        if ((*(a1 + 776) & 2) != 0)
        {
          goto LABEL_30;
        }

        v7 = __nwlog_tcp_log();
        if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_30;
        }

        v12 = a1 + 556;
        v13 = *(v3 + 5436);
        v14 = *(v3 + 5424);
        v15 = ((v13 >> 15) & 1) != 0 && (*(v2 + 998) & 0x800) == 0;
        v48 = *(v3 + 5400);
        v46 = *(v3 + 5428);
        v50 = *(v3 + 5408);
        v56 = *(v3 + 5430);
        v54 = (v13 >> 18) & 1;
        v74 = v14 / 0x3E8;
        v68 = *(v2 + 1876);
        v70 = v14 % 0x3E8;
        v64 = (v13 >> 19) & 1;
        v66 = *(v2 + 274);
        v60 = (v13 >> 20) & 1;
        v62 = *(v2 + 273);
        v58 = (v13 >> 15) & 1;
        v72 = HIWORD(v13) & 1;
        v24 = *(v3 + 5432);
        v52 = (*(v2 + 336) >> 12) & 1;
        v44 = (v13 >> 17) & 1;
        v25 = nw_connection_client_accurate_ecn_state_to_string();
        v26 = nw_connection_server_accurate_ecn_state_to_string();
        v27 = *(v2 + 88);
        v28 = (~v27 & 0x180) == 0;
        v29 = (v27 >> 28) & 1;
        v30 = *(v2 + 1880) - 1;
        if (v30 > 2)
        {
          v31 = "invalid";
        }

        else
        {
          v31 = off_1E70E90C0[v30];
        }

        v37 = *(v2 + 204);
        v38 = *(v2 + 208);
        v39 = *(v2 + 212);
        v40 = *(v2 + 216);
        v114 = v24;
        v118 = v44;
        v120 = v25;
        v122 = v26;
        v126 = v29;
        v128 = v31;
        v130 = *(v2 + 248);
        v134 = ((1000 * v37) >> 5) % 1000;
        v138 = ((1000 * v39) >> 4) % 1000;
        v142 = ((1000 * v38) >> 5) % 1000;
        v146 = ((1000 * v40) >> 4) % 1000;
        v150 = *(v2 + 1896);
        v154 = *(v2 + 716);
        v76 = "nw_protocol_tcp_log_summary";
        v78 = v12;
        v79 = 1042;
        v80 = 16;
        v81 = 2098;
        v82 = v155;
        v84 = v48;
        v86 = v46;
        v83 = 2085;
        v87 = 2085;
        v88 = v50;
        v85 = 1026;
        v89 = 1026;
        v90 = v56;
        v92 = v54;
        v94 = v74;
        v96 = v70;
        v98 = v68;
        v100 = v66;
        v102 = v64;
        v104 = v62;
        v106 = v60;
        v108 = v58;
        v110 = v15;
        v112 = v72;
        v116 = v52;
        v119 = 2080;
        v121 = 2080;
        v124 = v28;
        v77 = 2082;
        v127 = 2082;
        v132 = v37 >> 5;
        v136 = v39 >> 4;
        v140 = v38 >> 5;
        v144 = v40 >> 4;
        v148 = v6;
        v152 = *(v2 + 720);
        v91 = 1024;
        v93 = 1024;
        v95 = 1024;
        v97 = 1024;
        v99 = 1024;
        v101 = 1024;
        v103 = 1024;
        v105 = 1024;
        v107 = 1024;
        v109 = 1024;
        v111 = 1024;
        v113 = 1024;
        v115 = 1024;
        v117 = 1024;
        v123 = 1024;
        v125 = 1024;
        v129 = 1024;
        v131 = 1024;
        v133 = 1024;
        v135 = 1024;
        v137 = 1024;
        v139 = 1024;
        v141 = 1024;
        v143 = 1024;
        v145 = 1024;
        v147 = 1024;
        v149 = 1024;
        v151 = 1024;
        v153 = 1024;
        *buf = 136456195;
        v36 = "%{public}s %{public}s \n\t[%{public,uuid_t}.16P %{sensitive}s:%{public}d<->%{sensitive}s:%{public}d]\n\tInit: %d, Conn_Time: %u.%03ums, SYNs: %u, WR_T: %d/%d, RD_T: %d/%d, TFO: %d/%d/%d, ECN: %d/%d/%d, Accurate ECN (client/server): %s/%s, TS: %d, TSO: %d\n\trtt_cache: %{public}s, rtt_upd: %d, rtt: %u.%03ums, rtt_var: %u.%03ums rtt_nc: %u.%03ums, rtt_var_nc: %u.%03ums base rtt: %ums\n\tACKs-compressed: %u, ACKs delayed: %u delayed ACKs sent: %u";
      }

      else
      {
        if ((*(a1 + 776) & 2) != 0)
        {
          goto LABEL_30;
        }

        v7 = __nwlog_tcp_log();
        if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_30;
        }

        v8 = a1 + 556;
        v9 = *(v3 + 5436);
        v10 = *(v3 + 5424);
        v11 = ((v9 >> 15) & 1) != 0 && (*(v2 + 998) & 0x800) == 0;
        v49 = *(v3 + 5400);
        v47 = *(v3 + 5428);
        v45 = *(v3 + 5408);
        v55 = *(v3 + 5430);
        v53 = (v9 >> 18) & 1;
        v73 = v10 / 0x3E8;
        v67 = *(v2 + 1876);
        v69 = v10 % 0x3E8;
        v63 = (v9 >> 19) & 1;
        v65 = *(v2 + 274);
        v59 = (v9 >> 20) & 1;
        v61 = *(v2 + 273);
        v57 = (v9 >> 15) & 1;
        v71 = HIWORD(v9) & 1;
        v16 = *(v3 + 5432);
        v51 = (*(v2 + 336) >> 12) & 1;
        v43 = (v9 >> 17) & 1;
        v17 = nw_connection_client_accurate_ecn_state_to_string();
        v18 = nw_connection_server_accurate_ecn_state_to_string();
        v19 = *(v2 + 88);
        v20 = (~v19 & 0x180) == 0;
        v21 = (v19 >> 28) & 1;
        v22 = *(v2 + 1880) - 1;
        if (v22 > 2)
        {
          v23 = "invalid";
        }

        else
        {
          v23 = off_1E70E90C0[v22];
        }

        v32 = *(v2 + 204);
        v33 = *(v2 + 208);
        v34 = *(v2 + 212);
        v35 = *(v2 + 216);
        v114 = v16;
        v118 = v43;
        v120 = v17;
        v122 = v18;
        v126 = v21;
        v128 = v23;
        v130 = *(v2 + 248);
        v134 = ((1000 * v32) >> 5) % 1000;
        v138 = ((1000 * v34) >> 4) % 1000;
        v142 = ((1000 * v33) >> 5) % 1000;
        v146 = ((1000 * v35) >> 4) % 1000;
        v150 = *(v2 + 1896);
        v154 = *(v2 + 716);
        v76 = "nw_protocol_tcp_log_summary";
        v78 = v8;
        v79 = 1042;
        v80 = 16;
        v81 = 2098;
        v82 = v155;
        v84 = v49;
        v86 = v47;
        v88 = v45;
        v85 = 1026;
        v89 = 1026;
        v90 = v55;
        v92 = v53;
        v94 = v73;
        v96 = v69;
        v98 = v67;
        v100 = v65;
        v102 = v63;
        v104 = v61;
        v106 = v59;
        v108 = v57;
        v110 = v11;
        v112 = v71;
        v116 = v51;
        v119 = 2080;
        v121 = 2080;
        v124 = v20;
        v77 = 2082;
        v83 = 2082;
        v87 = 2082;
        v127 = 2082;
        v132 = v32 >> 5;
        v136 = v34 >> 4;
        v140 = v33 >> 5;
        v144 = v35 >> 4;
        v148 = v6;
        v152 = *(v2 + 720);
        v91 = 1024;
        v93 = 1024;
        v95 = 1024;
        v97 = 1024;
        v99 = 1024;
        v101 = 1024;
        v103 = 1024;
        v105 = 1024;
        v107 = 1024;
        v109 = 1024;
        v111 = 1024;
        v113 = 1024;
        v115 = 1024;
        v117 = 1024;
        v123 = 1024;
        v125 = 1024;
        v129 = 1024;
        v131 = 1024;
        v133 = 1024;
        v135 = 1024;
        v137 = 1024;
        v139 = 1024;
        v141 = 1024;
        v143 = 1024;
        v145 = 1024;
        v147 = 1024;
        v149 = 1024;
        v151 = 1024;
        v153 = 1024;
        *buf = 136456194;
        v36 = "%{public}s %{public}s \n\t[%{public,uuid_t}.16P %{public}s:%{public}d<->%{public}s:%{public}d]\n\tInit: %d, Conn_Time: %u.%03ums, SYNs: %u, WR_T: %d/%d, RD_T: %d/%d, TFO: %d/%d/%d, ECN: %d/%d/%d, Accurate ECN (client/server): %s/%s, TS: %d, TSO: %d\n\trtt_cache: %{public}s, rtt_upd: %d, rtt: %u.%03ums, rtt_var: %u.%03ums rtt_nc: %u.%03ums, rtt_var_nc: %u.%03ums base rtt: %ums\n\tACKs-compressed: %u, ACKs delayed: %u delayed ACKs sent: %u";
      }

      _os_log_impl(&dword_1889BA000, v7, OS_LOG_TYPE_DEFAULT, v36, buf, 0x112u);
LABEL_30:
      *(v3 + 5436) |= 0x4000u;
      return;
    }

    if ((*(a1 + 776) & 2) == 0)
    {
      v41 = __nwlog_tcp_log();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
      {
        *buf = 136446466;
        v76 = "nw_protocol_tcp_log_summary";
        v77 = 2082;
        v78 = a1 + 556;
        v42 = "%{public}s %{public}s tcp pcb is NULL";
        goto LABEL_38;
      }
    }
  }

  else if ((*(a1 + 776) & 2) == 0)
  {
    v41 = __nwlog_tcp_log();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
    {
      *buf = 136446466;
      v76 = "nw_protocol_tcp_log_summary";
      v77 = 2082;
      v78 = a1 + 556;
      v42 = "%{public}s %{public}s socket inpcb is NULL";
LABEL_38:
      _os_log_impl(&dword_1889BA000, v41, OS_LOG_TYPE_INFO, v42, buf, 0x16u);
    }
  }
}

uint64_t nw_protocol_tcp_set_no_wake_from_sleep(os_unfair_lock_s *a1, int a2)
{
  v9 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    os_unfair_lock_lock(a1 + 1348);
    *buf = 0uLL;
    v3 = 0;
    if (nw_path_flow_registration_get_nexus_instance())
    {
      nw_protocol_upcast();
      nw_protocol_get_flow_id();
      v3 = os_nexus_flow_set_wake_from_sleep();
    }

    os_unfair_lock_unlock(a1 + 1348);
  }

  else
  {
    v5 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_tcp_set_no_wake_from_sleep";
    v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1889BA000, v5, 16, "%{public}s called with null handle", buf, 12);
    if (__nwlog_fault())
    {
      v7 = __nwlog_obj();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_tcp_set_no_wake_from_sleep";
        _os_log_impl(&dword_1889BA000, v7, OS_LOG_TYPE_ERROR, "%{public}s called with null handle, backtrace limit exceeded", buf, 0xCu);
      }
    }

    if (v6)
    {
      free(v6);
    }

    return 22;
  }

  return v3;
}

uint64_t ____nw_protocol_tcp_disconnect_block_invoke(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  if ((*(a1[4] + 5436) & 2) == 0)
  {
    v2 = a1[5];
    if (!v2 || (*(v2 + 776) & 2) == 0)
    {
      v3 = __nwlog_tcp_log();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        v4 = &unk_188A285CF;
        if (v2)
        {
          v4 = (v2 + 556);
        }

        v6 = 136446466;
        v7 = "__nw_protocol_tcp_disconnect_block_invoke";
        v8 = 2082;
        v9 = v4;
        _os_log_impl(&dword_1889BA000, v3, OS_LOG_TYPE_INFO, "%{public}s %{public}s send disconnect to input protocol", &v6, 0x16u);
      }
    }

    nw_protocol_get_input_handler();
    if (nw_protocol_disconnected_is_valid())
    {
      if (*MEMORY[0x1E6977EF0] != -1)
      {
        dispatch_once(MEMORY[0x1E6977EF0], &__block_literal_global_18);
      }

      if (*MEMORY[0x1E6977EE8] == 1 && kdebug_is_enabled())
      {
        kdebug_trace();
      }

      nw_protocol_get_input_handler();
      nw_protocol_disconnected();
    }

    *(a1[4] + 5436) |= 2u;
  }

  tcp_close_locked(a1[5]);
  return nw_protocol_release();
}

uint64_t tcp_usr_disconnect(uint64_t *a1)
{
  v1 = *a1;
  (*(a1[1] + 32))();
  if (!v1 || *(v1 + 232) == 3)
  {
    return 22;
  }

  v3 = *(v1 + 240);
  v4 = nw_tcp_access_globals(*(v1 + 224));
  v6 = 0;
  v7 = 0;
  microuptime(&v6);
  v5 = v7 / 1000 + 1000 * v6;
  if (*(v4 + 308) < v5)
  {
    *v4 = v6;
    *(v4 + 308) = v5;
  }

  if (v3)
  {
    tcp_disconnect(v3);
  }

  return 0;
}

void sblock(uint64_t a1)
{
  v35 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 48);
  if ((*(v2 + 360) & 0x80000000) == 0)
  {
    v3 = *(a1 + 32);
    if ((v3 & 1) == 0)
    {
LABEL_24:
      *(a1 + 32) = v3 | 1;
      return;
    }

    while (1)
    {
      v4 = (*(*(v2 + 8) + 32))(v2, 0);
      v5 = *(a1 + 40);
      *(a1 + 40) = v5 + 1;
      if (v5 == -1)
      {
        v21 = __nwlog_obj();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          v9 = 3;
        }

        else
        {
          v9 = 2;
        }

        *buf = 136446210;
        v24 = "sblock";
        LODWORD(v20) = 12;
        v22 = _os_log_send_and_compose_impl(v9, 0, 0, 0, &dword_1889BA000, v21, 16, "%{public}s Assert sb->sb_wantlock != 0 failed", buf, v20);
        if (__nwlog_should_abort())
        {
LABEL_32:
          __break(1u);
          return;
        }

        free(v22);
      }

      v6 = *(v2 + 32);
      if ((*(a1 + 32) & 4) != 0)
      {
        if (v6)
        {
          v7 = *(v6 + 104);
          if (v7)
          {
LABEL_10:
            v7(v2, v4, 0);
          }
        }
      }

      else if (v6)
      {
        v7 = *(v6 + 96);
        if (v7)
        {
          goto LABEL_10;
        }
      }

      v8 = *(a1 + 40);
      if (!v8)
      {
        v10 = __nwlog_obj();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          v11 = 3;
        }

        else
        {
          v11 = 2;
        }

        *buf = 136446210;
        v24 = "sblock";
        LODWORD(v20) = 12;
        v12 = _os_log_send_and_compose_impl(v11, 0, 0, 0, &dword_1889BA000, v10, 16, "%{public}s Assert sb->sb_wantlock != 0 failed", buf, v20);
        if (__nwlog_should_abort())
        {
          goto LABEL_32;
        }

        free(v12);
        v8 = *(a1 + 40);
      }

      *(a1 + 40) = v8 - 1;
      v3 = *(a1 + 32);
      if ((v3 & 1) == 0)
      {
        goto LABEL_24;
      }
    }
  }

  if ((*(v2 + 776) & 2) == 0)
  {
    v13 = __nwlog_tcp_log();
    v14 = *(a1 + 32);
    v15 = *(v2 + 360);
    *buf = 136447490;
    v24 = "sblock";
    v25 = 2082;
    v26 = v2 + 556;
    v27 = 2048;
    v28 = a1;
    v29 = 1024;
    v30 = v14;
    v31 = 2048;
    v32 = v2;
    v33 = 1024;
    v34 = v15;
    v16 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1889BA000, v13, 16, "%{public}s %{public}s sb=%p sb_flags=0x%x sb_so=%p usecount=%d", buf, 54);
    if (__nwlog_fault())
    {
      v17 = __nwlog_tcp_log();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = *(a1 + 32);
        v19 = *(v2 + 360);
        *buf = 136447490;
        v24 = "sblock";
        v25 = 2082;
        v26 = v2 + 556;
        v27 = 2048;
        v28 = a1;
        v29 = 1024;
        v30 = v18;
        v31 = 2048;
        v32 = v2;
        v33 = 1024;
        v34 = v19;
        _os_log_impl(&dword_1889BA000, v17, OS_LOG_TYPE_ERROR, "%{public}s %{public}s sb=%p sb_flags=0x%x sb_so=%p usecount=%d, backtrace limit exceeded", buf, 0x36u);
      }
    }

    if (v16)
    {
      free(v16);
    }
  }
}

void sb_empty_assert(int *is_empty, uint64_t a2)
{
  v27 = *MEMORY[0x1E69E9840];
  if (*is_empty || (nw_frame_array_is_empty() & 1) == 0)
  {
    v4 = *(is_empty + 6);
    if (!v4 || (*(v4 + 776) & 2) == 0)
    {
      v5 = __nwlog_tcp_log();
      v6 = *(is_empty + 6);
      v7 = *is_empty;
      *buf = 136447746;
      if (v4)
      {
        v8 = (v4 + 556);
      }

      else
      {
        v8 = &unk_188A285CF;
      }

      v14 = "sb_empty_assert";
      v15 = 2082;
      v16 = v8;
      v17 = 2082;
      v18 = a2;
      v19 = 2048;
      v20 = is_empty;
      v21 = 2048;
      v22 = v6;
      v23 = 1024;
      v24 = v7;
      v25 = 2048;
      v26 = is_empty + 4;
      v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1889BA000, v5, 16, "%{public}s %{public}s %{public}s: sb %p so %p cc %d mb %p", buf, 68);
      if (__nwlog_fault())
      {
        v10 = __nwlog_tcp_log();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          v11 = *(is_empty + 6);
          v12 = *is_empty;
          *buf = 136447746;
          v14 = "sb_empty_assert";
          v15 = 2082;
          v16 = v8;
          v17 = 2082;
          v18 = a2;
          v19 = 2048;
          v20 = is_empty;
          v21 = 2048;
          v22 = v11;
          v23 = 1024;
          v24 = v12;
          v25 = 2048;
          v26 = is_empty + 4;
          _os_log_impl(&dword_1889BA000, v10, OS_LOG_TYPE_ERROR, "%{public}s %{public}s %{public}s: sb %p so %p cc %d mb %p, backtrace limit exceeded", buf, 0x44u);
        }
      }

      if (v9)
      {
        free(v9);
      }
    }
  }
}

uint64_t tcp_usrclosed(uint64_t result)
{
  v31 = *MEMORY[0x1E69E9840];
  v1 = *(result + 12);
  if (v1 > 2)
  {
    switch(v1)
    {
      case 5:
        *(result + 12) = 8;
        v2 = result;
        v3 = *(*(result + 80) + 224);
        if (!v3 || (*(v3 + 776) & 2) == 0)
        {
          if (__nwlog_is_datapath_logging_enabled())
          {
            v19 = __nwlog_tcp_log();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
            {
              v20 = (v3 + 556);
              v21 = tcpstates[*(v2 + 12)];
              v25 = 136446722;
              v26 = "tcp_usrclosed";
              if (!v3)
              {
                v20 = &unk_188A285CF;
              }

              v27 = 2082;
              v28 = v20;
              v29 = 2082;
              v30 = v21;
              _os_log_impl(&dword_1889BA000, v19, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s state change to %{public}s", &v25, 0x20u);
            }
          }
        }

        result = v2;
        if (!*(*(*(v2 + 80) + 224) + 24))
        {
          goto LABEL_21;
        }

        all_stats = nw_protocol_tcp_get_all_stats();
        result = v2;
        if (!all_stats)
        {
          goto LABEL_21;
        }

        v5 = 8;
        break;
      case 4:
        *(result + 12) = 6;
        v6 = result;
        v7 = *(*(result + 80) + 224);
        if (!v7 || (*(v7 + 776) & 2) == 0)
        {
          if (__nwlog_is_datapath_logging_enabled())
          {
            v22 = __nwlog_tcp_log();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
            {
              v23 = (v7 + 556);
              v24 = tcpstates[*(v6 + 12)];
              v25 = 136446722;
              v26 = "tcp_usrclosed";
              if (!v7)
              {
                v23 = &unk_188A285CF;
              }

              v27 = 2082;
              v28 = v23;
              v29 = 2082;
              v30 = v24;
              _os_log_impl(&dword_1889BA000, v22, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s state change to %{public}s", &v25, 0x20u);
            }
          }
        }

        result = v6;
        if (!*(*(*(v6 + 80) + 224) + 24) || (all_stats = nw_protocol_tcp_get_all_stats(), result = v6, !all_stats))
        {
LABEL_21:
          v1 = *(result + 12);
          goto LABEL_22;
        }

        v5 = 6;
        break;
      case 3:
        *(result + 88) |= 0x800u;
        goto LABEL_21;
      default:
        goto LABEL_22;
    }

    *(all_stats + 136) = v5;
    goto LABEL_21;
  }

  if (v1 < 3)
  {
    tcp_close(result);
    return 0;
  }

LABEL_22:
  if (v1 >= 9)
  {
    v8 = *(*(result + 80) + 224);
    *(v8 + 376) = *(v8 + 376) & 0xDFC1 | 0x2030;
    v9 = *(v8 + 32);
    if (v9)
    {
      v10 = *(v9 + 56);
      if (v10)
      {
        v11 = result;
        v10(v8);
        result = v11;
        v1 = *(v11 + 12);
      }
    }

    if (v1 == 9)
    {
      v12 = *(sysctls + 292);
      v13 = *(result + 680);
      if (!v12)
      {
        goto LABEL_33;
      }

      v14 = *(result + 680);
      if (!v13)
      {
        v14 = *(sysctls + 196);
      }

      v15 = *(result + 676);
      if (!v15)
      {
        v15 = *(sysctls + 192);
      }

      if (v12 >= v15 * v14)
      {
LABEL_33:
        if (!v13)
        {
          v13 = *(sysctls + 196);
        }

        v16 = *(result + 676);
        if (!v16)
        {
          v16 = *(sysctls + 192);
        }

        v12 = v16 * v13;
      }

      v17 = result;
      v18 = nw_tcp_access_globals(*(*(result + 80) + 224));
      result = v17;
      *(v17 + 44) = *(v18 + 308) + v12 - *(v17 + 64);
    }
  }

  return result;
}

void sbunlock(uint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 48);
  if ((*(v2 + 360) & 0x80000000) != 0)
  {
    if ((*(v2 + 776) & 2) == 0)
    {
      v6 = __nwlog_tcp_log();
      v7 = *(a1 + 32);
      v8 = *(v2 + 360);
      *buf = 136447490;
      v17 = "sbunlock";
      v18 = 2082;
      v19 = v2 + 556;
      v20 = 2048;
      v21 = a1;
      v22 = 1024;
      v23 = v7;
      v24 = 2048;
      v25 = v2;
      v26 = 1024;
      v27 = v8;
      v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1889BA000, v6, 16, "%{public}s %{public}s sb=%p sb_flags=0x%x sb_so=%p usecount=%d", buf, 54);
      if (__nwlog_fault())
      {
        v10 = __nwlog_tcp_log();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          v11 = *(a1 + 32);
          v12 = *(v2 + 360);
          *buf = 136447490;
          v17 = "sbunlock";
          v18 = 2082;
          v19 = v2 + 556;
          v20 = 2048;
          v21 = a1;
          v22 = 1024;
          v23 = v11;
          v24 = 2048;
          v25 = v2;
          v26 = 1024;
          v27 = v12;
          _os_log_impl(&dword_1889BA000, v10, OS_LOG_TYPE_ERROR, "%{public}s %{public}s sb=%p sb_flags=0x%x sb_so=%p usecount=%d, backtrace limit exceeded", buf, 0x36u);
        }
      }

      if (v9)
      {
        free(v9);
      }
    }
  }

  else
  {
    v3 = *(a1 + 32);
    if ((v3 & 1) == 0 && (*(v2 + 376) & 0x80000000) == 0 && (*(v2 + 368) & 8) == 0)
    {
      v13 = __nwlog_obj();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = 3;
      }

      else
      {
        v14 = 2;
      }

      *buf = 136446210;
      v17 = "sbunlock";
      v15 = _os_log_send_and_compose_impl(v14, 0, 0, 0, &dword_1889BA000, v13, 16, "%{public}s Assert (sb->sb_flags & SB_LOCK) || (so->so_state & SS_DEFUNCT) || (so->so_flags1 & U_SOF1_DEFUNCTINPROG) failed", buf, 12);
      if (__nwlog_should_abort())
      {
        __break(1u);
        return;
      }

      free(v15);
      v3 = *(a1 + 32);
    }

    *(a1 + 32) = v3 & 0xFFFFFFFE;
    if (*(a1 + 40))
    {
      v4 = *(v2 + 32);
      if ((v3 & 4) == 0)
      {
        if (!v4)
        {
          return;
        }

        v5 = *(v4 + 8);
        if (!v5)
        {
          return;
        }

LABEL_15:
        v5(v2);
        return;
      }

      if (v4)
      {
        v5 = *(v4 + 32);
        if (v5)
        {
          goto LABEL_15;
        }
      }
    }
  }
}

uint64_t tcp_usr_detach(uint64_t *a1)
{
  v1 = *a1;
  if (!*a1 || *(v1 + 232) == 3)
  {
    return 22;
  }

  (*(a1[1] + 32))();
  v4 = *(v1 + 240);
  if (v4)
  {
    v5 = nw_tcp_access_globals(a1);
    v7 = 0;
    v8 = 0;
    microuptime(&v7);
    v6 = v8 / 1000 + 1000 * v7;
    if (*(v5 + 308) < v6)
    {
      *v5 = v7;
      *(v5 + 308) = v6;
    }

    tcp_disconnect(v4);
  }

  return 0;
}

uint64_t nw_protocol_tcp_wake_read_closed(uint64_t a1)
{
  nw_protocol_tcp_log_summary(a1);
  nw_protocol_upcast();
  nw_protocol_retain();
  return nw_queue_context_async();
}

uint64_t tcp_canceltimers(uint64_t a1)
{
  if (g_tcp_nw_assert_context == 1)
  {
    nw_tcp_access_context(*(*(a1 + 80) + 224));
    nw_context_assert_queue();
  }

  tcp_remove_timer(a1);
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  result = nw_tcp_access_globals(*(*(a1 + 80) + 224));
  *(a1 + 64) = *(result + 308);
  *(a1 + 72) = 8;
  return result;
}

void add_to_time_wait(uint64_t a1, int a2)
{
  v31 = *MEMORY[0x1E69E9840];
  if (g_tcp_nw_assert_context == 1)
  {
    nw_tcp_access_context(*(*(a1 + 80) + 224));
    nw_context_assert_queue();
  }

  v4 = *(nw_tcp_access_globals(*(*(a1 + 80) + 224)) + 72);
  v5 = *(a1 + 80);
  v6 = v5[28];
  if (*(v6 + 374))
  {
    v7 = __nwlog_obj();
    *buf = 136446210;
    v24 = "socket_post_kev_msg_closed";
    v8 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1889BA000, v7, 16, "%{public}s currently not supported", buf, 12);
    if (__nwlog_fault())
    {
      v9 = __nwlog_obj();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446210;
        v24 = "socket_post_kev_msg_closed";
        _os_log_impl(&dword_1889BA000, v9, OS_LOG_TYPE_ERROR, "%{public}s currently not supported, backtrace limit exceeded", buf, 0xCu);
      }
    }

    if (v8)
    {
      free(v8);
    }

    v5 = *(a1 + 80);
    v6 = v5[28];
  }

  v10 = nw_tcp_access_globals(v6);
  v11 = v10;
  v12 = *(v5 + 594);
  if (v12)
  {
    v14 = *(a1 + 832);
    v15 = *(a1 + 840);
    if (v14)
    {
      *(v14 + 840) = v15;
    }

    else
    {
      *(v10 + 136) = v15;
    }
  }

  else
  {
    ++*(*(v10 + 72) + 64);
    v13 = *(a1 + 1064);
    if (v13)
    {
      ++*(v13 + 1696);
    }

    *(v5 + 594) = v12 | 1;
    v14 = *v5;
    v15 = v5[1];
    if (*v5)
    {
      *(v14 + 8) = v15;
    }
  }

  *v15 = v14;
  v16 = *(v10 + 308) + a2;
  if ((*(a1 + 91) & 0x40) != 0)
  {
    tcp_remove_timer(a1);
  }

  *(a1 + 44) = v16;
  v17 = v5[28];
  if (!v17 || (*(v17 + 776) & 2) == 0)
  {
    if (__nwlog_is_datapath_logging_enabled())
    {
      v20 = __nwlog_tcp_log();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        v21 = (v17 + 556);
        v22 = *(v5[28] + 360);
        if (!v17)
        {
          v21 = &unk_188A285CF;
        }

        *buf = 136446978;
        v24 = "add_to_time_wait_locked";
        v25 = 2082;
        v26 = v21;
        v27 = 1024;
        v28 = v22;
        v29 = 1024;
        v30 = a2;
        _os_log_impl(&dword_1889BA000, v20, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s so_usecount %u added to TIME_WAIT delay %u", buf, 0x22u);
      }
    }
  }

  *(a1 + 832) = 0;
  v18 = *(v11 + 136);
  *(a1 + 840) = v18;
  *v18 = a1;
  *(v11 + 136) = a1 + 832;
  v19 = nw_tcp_access_globals(*(*(a1 + 80) + 224));
  *(v19 + 316) |= 2u;
  atomic_fetch_add((v4 + 40), 1u);
  if ((*(v19 + 316) & 1) == 0 && (*(v19 + 316) & 6) != 0)
  {
    *(v19 + 316) = *(v19 + 316) & 0xF6 | 1;
    nw_protocol_timer_run_inner(v19, 1000000000, 0);
  }
}

uint64_t __nw_protocol_tcp_wake_read_closed_block_invoke(void *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v1 = a1[5];
  if (*(a1[4] + 5352) < 3u)
  {
    if (!v1 || (*(v1 + 776) & 2) == 0)
    {
      v4 = __nwlog_tcp_log();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v5 = &unk_188A285CF;
        if (v1)
        {
          v5 = (v1 + 556);
        }

        v7 = 136446466;
        v8 = "nw_protocol_tcp_wake_read_closed_block_invoke";
        v9 = 2082;
        v10 = v5;
        _os_log_impl(&dword_1889BA000, v4, OS_LOG_TYPE_INFO, "%{public}s %{public}s read closed", &v7, 0x16u);
      }
    }

    nw_protocol_get_input_handler();
    nw_protocol_input_finished_quiet();
  }

  else if (!v1 || (*(v1 + 776) & 2) == 0)
  {
    if (__nwlog_is_datapath_logging_enabled())
    {
      v2 = __nwlog_tcp_log();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
      {
        v3 = &unk_188A285CF;
        if (v1)
        {
          v3 = (v1 + 556);
        }

        v7 = 136446466;
        v8 = "nw_protocol_tcp_wake_read_closed_block_invoke";
        v9 = 2082;
        v10 = v3;
        _os_log_impl(&dword_1889BA000, v2, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s skipping", &v7, 0x16u);
      }
    }
  }

  return nw_protocol_release();
}

uint64_t tcp_sack_process_dsack(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  v4 = *(a2 + 16);
  v5 = bswap32(*v4);
  v6 = *(a2 + 15);
  if (v6 < 2)
  {
    v7 = 0;
    v8 = 0;
  }

  else
  {
    v7 = bswap32(v4[2]);
    v8 = bswap32(v4[3]);
  }

  v9 = bswap32(v4[1]);
  v10 = *(a3 + 8);
  if (((v5 - v10) & 0x80000000) != 0 && (v9 - v10) <= 0)
  {
    v11 = *(a1 + 96);
    if ((v5 - v11) > 0)
    {
      goto LABEL_46;
    }

    v12 = *(a1 + 144);
    if (v12 >= *(sysctls + 116))
    {
      v12 = *(sysctls + 116);
    }

    v13 = v12 - v10;
    if (((v13 + v5) & 0x80000000) != 0 || (v9 - v11) > 0 || ((v13 + v9) & 0x80000000) != 0)
    {
      goto LABEL_46;
    }

    goto LABEL_25;
  }

  v14 = 0;
  v15 = v6 >= 2 && (v7 - v5) <= 0;
  if (v15 && ((v8 - v9) & 0x80000000) == 0)
  {
    if ((v8 - v7) < 1 || (v7 - v10) < 1 || (v16 = *(a1 + 92), (v7 - v16) < 1) || (v17 = *(a1 + 96), ((v7 - v17) & 0x80000000) == 0) || (v8 - v16) < 1 || (v8 - v17) >= 1)
    {
LABEL_46:
      *(a2 + 15) = v6 - 1;
      *(a2 + 16) = v4 + 2;
      v24 = *(a1 + 1064);
      if (v24)
      {
        ++*(v24 + 1048);
      }

      return 1;
    }

LABEL_25:
    *(a2 + 15) = v6 - 1;
    *(a2 + 16) = v4 + 2;
    v18 = *(a1 + 1064);
    if (v18)
    {
      ++*(v18 + 1016);
    }

    ++*(a1 + 1032);
    v19 = *(a1 + 940);
    if (v19 && v19 == v9)
    {
      *a4 = 1;
      *(a1 + 940) = 0;
    }

    v20 = *(a1 + 748);
    if ((v20 & 0x20400020) == 0x20000020 && !*a4)
    {
      for (i = *(a1 + 1992); i; i = *(i + 16))
      {
        if ((*(i + 12) & 8) != 0 && (v5 - *i) <= 0 && (v9 - *(i + 4)) >= 0)
        {
          ++*(a1 + 1024);
        }
      }
    }

    if ((*(a1 + 234) == 1 && v5 == *(a1 + 92) || (~v20 & 0x40001000) == 0 && v9 == *(a1 + 936)) && !*(a1 + 536) && *(a3 + 8) - *(a1 + 92) >= 1)
    {
      if (v18)
      {
        ++*(v18 + 1040);
      }
    }

    else
    {
      v21 = *(a1 + 960);
      if (v21)
      {
        v22 = v9 - 1;
        do
        {
          v23 = *v21;
          if ((*v21 - v5) >= 0 && (v21[1] - v22) <= 0 && *(v21 + 4) == 1)
          {
            *(v21 + 5) |= 1u;
          }

          if ((v23 - v22) >= 0)
          {
            break;
          }

          v21 = *(v21 + 2);
        }

        while (v21);
      }
    }

    return 1;
  }

  return v14;
}

uint64_t tcp_early_rexmt_check(uint64_t result)
{
  v1 = *(*(result + 80) + 224);
  v2 = *(result + 748);
  if ((v2 & 0x20) == 0 && *(result + 276) > 9u)
  {
    goto LABEL_34;
  }

  v4 = *(result + 92);
  v3 = *(result + 96);
  v5 = v3 - v4;
  if (v3 - v4 < 1)
  {
    goto LABEL_34;
  }

  if (*(result + 8) == 1)
  {
    if ((v2 & 0x20400020) != 0x20000020 && ((v2 & 0x20) == 0 || !*(result + 536)))
    {
      goto LABEL_12;
    }
  }

  else if ((v2 & 0x20) == 0 || !*(result + 536))
  {
    goto LABEL_34;
  }

  v6 = result;
  v5 = tcp_flight_size(result);
  result = v6;
  v4 = *(v6 + 92);
  v3 = *(v6 + 96);
LABEL_12:
  v7 = *(result + 144);
  if (*(v1 + 384) < v7)
  {
    v7 = *(v1 + 384);
  }

  v8 = *(result + 200);
  if (v5 < 4 * v8 && (v4 - v3 + v7) <= 0)
  {
    v9 = v5 / v8 * v8 >= v5 ? v5 / v8 : v5 / v8 + 1;
    if (v9 <= 3)
    {
      v10 = v9 - 1;
      if (v10 <= 1)
      {
        LOBYTE(v10) = 1;
      }

      v10 = v10;
      if (v10 >= 3u)
      {
        v10 = 3;
      }

      if (v10 <= *(result + 8))
      {
        LOBYTE(v10) = *(result + 8);
      }

      *(result + 322) = v10;
      if (!*(result + 276))
      {
        v11 = result;
        v12 = nw_tcp_access_globals(*(*(result + 80) + 224));
        result = v11;
        *(v11 + 280) = *(v12 + 308);
      }

      v13 = *(result + 1064);
      if ((*(result + 749) & 0x10) != 0)
      {
        if (v13)
        {
          ++*(v13 + 744);
        }
      }

      else
      {
        if (v13)
        {
          ++*(v13 + 696);
        }

        ++*(result + 276);
      }
    }
  }

LABEL_34:
  *(result + 748) &= ~0x1000u;
  *(result + 936) = 0;
  *(result + 944) = 0;
  return result;
}

uint64_t tcp_rexmt_save_state(uint64_t result)
{
  v1 = *(result + 88);
  if ((~v1 & 0x180) != 0)
  {
    *(result + 496) = *(result + 148);
    *(result + 504) = *(result + 156);
    if ((v1 & 0x200000) != 0)
    {
      v4 = v1 | 0x400000;
    }

    else
    {
      v4 = v1 & 0xFF9FFFFF;
    }

    *(result + 88) = v4;
  }

  else
  {
    v2 = *(result + 96) - *(result + 92);
    v3 = *(result + 156);
    if (v2 <= *(result + 152))
    {
      v2 = *(result + 152);
    }

    *(result + 500) = v2;
    *(result + 504) = v3;
  }

  *(result + 508) = (*(result + 204) >> 5) + 2;
  *(result + 516) = *(result + 212) >> 4;
  if ((*(result + 1880) & 0xFFFFFFFE) == 2)
  {
    *(result + 512) = (*(result + 208) >> 5) + 2;
    *(result + 520) = *(result + 216) >> 4;
  }

  *(result + 748) &= ~0x40u;
  return result;
}

uint64_t tcp_cubic_pre_fr(uint64_t result)
{
  *(*(result + 848) + 4) = 0;
  *(*(result + 848) + 12) = 0;
  *(*(result + 848) + 16) = 0;
  if ((*(result + 750) & 0x10) != 0)
  {
    v1 = *(result + 96) - *(result + 92);
    v2 = *(result + 988);
    if (v2 <= v1)
    {
      v2 = *(result + 96) - *(result + 92);
    }
  }

  else
  {
    v1 = 0;
    v2 = *(result + 148);
    if (v2 >= *(result + 144))
    {
      v2 = *(result + 144);
    }
  }

  *(result + 992) = v1;
  v3 = v2;
  v4 = *(result + 848);
  if (v2 < *v4)
  {
    v2 = (*&tcp_cubic_fast_convergence_factor * v2);
  }

  *v4 = v2;
  v5 = *(result + 848);
  if (*v5)
  {
    v6 = v5[5];
    if (v6)
    {
LABEL_10:
      v7 = (*v5 - v6 + (v6 << 6)) >> 6;
      goto LABEL_13;
    }
  }

  else
  {
    *v5 = *(result + 96) - *(result + 92);
    v5 = *(result + 848);
    v6 = v5[5];
    if (v6)
    {
      goto LABEL_10;
    }
  }

  v7 = *v5;
LABEL_13:
  v5[5] = v7;
  v8 = *(result + 848);
  v9 = v8[6];
  v10 = v8[5] - *v8;
  if (v10 < 0)
  {
    v10 = *v8 - v8[5];
  }

  if (v9)
  {
    v10 = (v10 - v9 + 16 * v9) >> 4;
  }

  v8[6] = v10;
  v11 = *(result + 200);
  v12 = ((v3 - (v3 * *&tcp_cubic_backoff)) + (v11 >> 1)) / v11 * v11;
  v13 = 2 * v11;
  if (v12 > v13)
  {
    v13 = v12;
  }

  *(result + 152) = v13;
  v14 = *(*(result + 80) + 224);
  if (v14[97] > v13)
  {
    v15 = v14[104];
    if ((v15 & 0x400) != 0)
    {
      if (v14[105] > v13)
      {
        if (*(sysctls + 228) > v13)
        {
          v13 = *(sysctls + 228);
        }

        if (v13 >= *(sysctls + 116))
        {
          v13 = *(sysctls + 116);
        }

        v14[105] = v13;
      }

      v14[104] = v15 | 0x800;
    }
  }

  return result;
}

uint64_t tcp_flight_size(_DWORD *a1)
{
  v49 = *MEMORY[0x1E69E9840];
  if ((a1[155] & 0x80000000) != 0)
  {
    v24 = a1;
    v25 = __nwlog_obj();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = 3;
    }

    else
    {
      v26 = 2;
    }

    *buf = 136446210;
    v34 = "tcp_flight_size";
    v27 = _os_log_send_and_compose_impl(v26, 0, 0, 0, &dword_1889BA000, v25, 16, "%{public}s Assert tp->sackhint.sack_bytes_acked >= 0 failed", buf, 12);
    result = __nwlog_should_abort();
    if (result)
    {
      goto LABEL_26;
    }

    free(v27);
    a1 = v24;
    if ((v24[154] & 0x80000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_21:
    v28 = a1;
    v29 = __nwlog_obj();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = 3;
    }

    else
    {
      v30 = 2;
    }

    *buf = 136446210;
    v34 = "tcp_flight_size";
    LODWORD(v32) = 12;
    v31 = _os_log_send_and_compose_impl(v30, 0, 0, 0, &dword_1889BA000, v29, 16, "%{public}s Assert tp->sackhint.sack_bytes_rexmit >= 0 failed", buf, v32);
    result = __nwlog_should_abort();
    if (!result)
    {
      free(v31);
      a1 = v28;
      goto LABEL_3;
    }

LABEL_26:
    __break(1u);
    return result;
  }

  if ((a1[154] & 0x80000000) != 0)
  {
    goto LABEL_21;
  }

LABEL_3:
  v1 = a1[25];
  v2 = a1[23];
  if ((a1[187] & 0x20400020) != 0x20000020)
  {
    return (v1 - (v2 + a1[155])) & ~((v1 - (v2 + a1[155])) >> 31);
  }

  if (a1[24] - v1 > 0)
  {
    v1 = a1[24];
  }

  v3 = (v1 - (a1[522] + v2 + a1[520]) + a1[521]);
  if (v3 < 0)
  {
    v4 = a1;
    v5 = v3;
    v6 = __nwlog_obj();
    v8 = v4[24];
    v7 = v4[25];
    v9 = v4[23];
    v10 = v4[522];
    v11 = v4[520];
    v12 = v4;
    v13 = v4[521];
    *buf = 136448002;
    v34 = "tcp_flight_size";
    v35 = 1024;
    v14 = v5;
    v36 = v5;
    v37 = 1024;
    v38 = v7;
    v39 = 1024;
    v40 = v8;
    v41 = 1024;
    v42 = v9;
    v43 = 1024;
    v44 = v10;
    v45 = 1024;
    v46 = v11;
    v47 = 1024;
    v48 = v13;
    LODWORD(v32) = 54;
    v15 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1889BA000, v6, 16, "%{public}s flight_size (%d) can't be negative (snd_nxt:%u snd_max:%u, snd_una:%u, sacked:%u lost:%u retransmitted:%u)", buf, v32);
    if (__nwlog_fault())
    {
      v16 = __nwlog_obj();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v18 = v12[24];
        v17 = v12[25];
        v19 = v12[23];
        v20 = v12[522];
        v21 = v12[520];
        v22 = v12[521];
        *buf = 136448002;
        v34 = "tcp_flight_size";
        v35 = 1024;
        v36 = v14;
        v37 = 1024;
        v38 = v17;
        v39 = 1024;
        v40 = v18;
        v41 = 1024;
        v42 = v19;
        v43 = 1024;
        v44 = v20;
        v45 = 1024;
        v46 = v21;
        v47 = 1024;
        v48 = v22;
        _os_log_impl(&dword_1889BA000, v16, OS_LOG_TYPE_ERROR, "%{public}s flight_size (%d) can't be negative (snd_nxt:%u snd_max:%u, snd_una:%u, sacked:%u lost:%u retransmitted:%u), backtrace limit exceeded", buf, 0x36u);
      }
    }

    if (v15)
    {
      free(v15);
    }

    return 0;
  }

  return v3;
}

uint64_t tcp_sack_partialack(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 100);
  *(a1 + 28) = 0;
  *(a1 + 176) = 0;
  v5 = *(a2 + 8);
  if (v4 - v5 < 0)
  {
    *(a1 + 100) = v5;
  }

  v6 = (v5 - *(a1 + 92)) / *(a1 + 200) > 2;
  v7 = (*(a1 + 200) << v6) + tcp_flight_size(a1);
  v8 = *(a1 + 156);
  if (v7 >= *(a1 + 152))
  {
    v7 = *(a1 + 152);
  }

  *(a1 + 148) = v7;
  v9 = *(a1 + 552);
  if (v9 - v8 < 0 && v9 == *(a2 + 8) && !*(a1 + 536) && tcp_sackhole_insert(a1, v9, v8, 0))
  {
    *(a1 + 552) = *(a1 + 156);
  }

  result = tcp_output(a1);
  v11 = *(a1 + 100);
  if ((*(a1 + 88) & 0x10) == 0)
  {
    if (v4 - v11 < 1)
    {
      return result;
    }

LABEL_15:
    *(a1 + 100) = v4;
    return result;
  }

  if (v11 != *(a1 + 96) - 1 && v4 - v11 > 0)
  {
    goto LABEL_15;
  }

  return result;
}

uint64_t tcp_cubic_post_fr(uint64_t result, uint64_t a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = (a2 + 8);
  if (!a2)
  {
    v2 = (result + 92);
  }

  v3 = *v2;
  v4 = *(result + 96);
  if (v3 - v4 >= 1)
  {
    v17 = result;
    v18 = __nwlog_obj();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = 3;
    }

    else
    {
      v19 = 2;
    }

    v21 = 136446210;
    v22 = "tcp_cubic_post_fr";
    v20 = _os_log_send_and_compose_impl(v19, 0, 0, 0, &dword_1889BA000, v18, 16, "%{public}s Assert SEQ_LEQ(ack, tp->snd_max) failed", &v21, 12);
    result = __nwlog_should_abort();
    if (result)
    {
      __break(1u);
      return result;
    }

    free(v20);
    result = v17;
    v4 = *(v17 + 96);
  }

  v5 = v4 - v3;
  v6 = *(result + 152);
  if (v5 < v6)
  {
    v7 = *(result + 200);
    if (v5 <= v7)
    {
      v5 = *(result + 200);
    }

    v6 = v5 + v7;
  }

  *(result + 148) = v6;
  *(*(result + 848) + 12) = 0;
  *(*(result + 848) + 16) = 0;
  v8 = *(result + 204);
  v9 = *(result + 148);
  if (v8)
  {
    v10 = 32000 * v9 / v8;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10 << (v9 < *(result + 152));
  v12 = *(*(result + 80) + 2384);
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = *(*(result + 80) + 2384);
  }

  if (v12 == -1)
  {
    v14 = v11;
  }

  else
  {
    v14 = v13;
  }

  v15 = v14 >> 12;
  *(result + 472) = v14;
  v16 = *(result + 200);
  if (v16 <= v15)
  {
    v16 = v15;
  }

  *(result + 480) = v16;
  return result;
}

void tcp_close(uint64_t result)
{
  v104 = *MEMORY[0x1E69E9840];
  v1 = *(result + 80);
  if (!*(v1 + 240))
  {
    return;
  }

  v3 = *(v1 + 224);
  v4 = *(v1 + 2380);
  if (g_tcp_nw_assert_context == 1)
  {
    nw_tcp_access_context(*(v1 + 224));
    nw_context_assert_queue();
  }

  tcp_remove_timer(result);
  *(result + 16) = 0u;
  *(result + 32) = 0u;
  *(result + 64) = *(nw_tcp_access_globals(*(*(result + 80) + 224)) + 308);
  *(result + 72) = 8;
  v5 = *(result + 88);
  if ((v5 & 0x8000000) != 0 || *(v1 + 2382))
  {
    *(result + 88) = v5 | 0x8000000;
    return;
  }

  if (!v3 || (*(v3 + 776) & 2) == 0)
  {
    if (__nwlog_is_datapath_logging_enabled())
    {
      v81 = __nwlog_tcp_log();
      if (os_log_type_enabled(v81, OS_LOG_TYPE_DEBUG))
      {
        v82 = tcpstates[*(result + 12)];
        *&buf[4] = "tcp_close";
        v83 = &unk_188A285CF;
        *buf = 136446722;
        if (v3)
        {
          v83 = (v3 + 556);
        }

        *&buf[12] = 2082;
        *&buf[14] = v83;
        *&buf[22] = 2082;
        v100 = v82;
        _os_log_impl(&dword_1889BA000, v81, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s state is %{public}s", buf, 0x20u);
      }
    }
  }

  v6 = *(v1 + 496);
  if (!v6)
  {
    if ((v4 & 2) != 0)
    {
      goto LABEL_64;
    }

    goto LABEL_17;
  }

  if ((v4 & 2) != 0)
  {
    if (!*(v6 + 208) && !*(v6 + 212) && !*(v6 + 216) && !*(v6 + 220))
    {
      goto LABEL_64;
    }

LABEL_27:
    v8 = *(v6 + 1632);
    if (!v8)
    {
      goto LABEL_64;
    }

    if (*(v6 + 1640))
    {
      free(v8);
      *(v6 + 1632) = 0;
      *(v6 + 1640) = 0;
      goto LABEL_64;
    }

    v9 = *(result + 204);
    v10 = 31 * v9;
    v11 = v8[16];
    if (v9)
    {
      v12 = v11 == 0;
    }

    else
    {
      v12 = 1;
    }

    v13 = (v11 + v10) >> 1;
    if (v12)
    {
      v13 = v10;
    }

    v8[16] = v13;
    v14 = *(result + 1064);
    if (v14)
    {
      ++v14[54];
    }

    v15 = *(result + 212);
    v16 = 62 * v15;
    v17 = v8[17];
    if (v15)
    {
      v18 = v17 == 0;
    }

    else
    {
      v18 = 1;
    }

    v19 = (v17 + v16) >> 1;
    if (v18)
    {
      v19 = v16;
    }

    v8[17] = v19;
    if (v14)
    {
      ++v14[55];
    }

    v20 = *(result + 152);
    v21 = v8[14];
    if (!v21)
    {
      v21 = *(v3 + 388);
    }

    v22 = v21 >> 1;
    if (v20)
    {
      v23 = v8[15];
      if (v23 || v20 < v22)
      {
        goto LABEL_54;
      }
    }

    else if (v22)
    {
      v23 = v8[15];
LABEL_54:
      v24 = *(result + 200);
      v25 = (v20 + (v24 >> 1)) / v24;
      if (v25 <= 2)
      {
        v25 = 2;
      }

      if ((v4 & 2) != 0)
      {
        v26 = 60;
      }

      else
      {
        v26 = 40;
      }

      v27 = v25 * (v24 + v26);
      if (v23)
      {
        v27 = (v27 + v23) >> 1;
      }

      v8[15] = v27;
      if (v14)
      {
        ++v14[56];
      }
    }

    *(result + 1972) = v8[10];
    tcp_release_route_heuristics(result);
    *(v6 + 1632) = 0;
    goto LABEL_64;
  }

  if ((*(v6 + 1624) & 0x2000001) == 1 && *(v6 + 204))
  {
    goto LABEL_27;
  }

LABEL_17:
  *(result + 12) = 0;
  if (!v3 || (*(v3 + 776) & 2) == 0)
  {
    if (__nwlog_is_datapath_logging_enabled())
    {
      v88 = __nwlog_tcp_log();
      if (os_log_type_enabled(v88, OS_LOG_TYPE_DEBUG))
      {
        v89 = tcpstates[*(result + 12)];
        *&buf[4] = "tcp_close";
        v90 = &unk_188A285CF;
        *buf = 136446722;
        if (v3)
        {
          v90 = (v3 + 556);
        }

        *&buf[12] = 2082;
        *&buf[14] = v90;
        *&buf[22] = 2082;
        v100 = v89;
        _os_log_impl(&dword_1889BA000, v88, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s state change to %{public}s", buf, 0x20u);
      }
    }
  }

  if (*(v3 + 24))
  {
    all_stats = nw_protocol_tcp_get_all_stats();
    if (all_stats)
    {
      *(all_stats + 136) = 0;
    }
  }

LABEL_64:
  if (*(v1 + 2144) == 1 && (!v3 || (*(v3 + 776) & 2) == 0))
  {
    v28 = __nwlog_tcp_log();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = &unk_188A285CF;
      if (v3)
      {
        v29 = (v3 + 556);
      }

      *buf = 136446466;
      *&buf[4] = "tcp_close";
      *&buf[12] = 2082;
      *&buf[14] = v29;
      _os_log_impl(&dword_1889BA000, v28, OS_LOG_TYPE_ERROR, "%{public}s %{public}s rt_heur rt_heur_alloc unexpectly set", buf, 0x16u);
    }
  }

  for (i = *result; *result; i = *result)
  {
    v31 = *i;
    v32 = i[1];
    if (*i)
    {
      *(v31 + 8) = v32;
    }

    *v32 = v31;
    v33 = i[4];
    if (v33)
    {
      *(v33 + 40) = type;
      v34 = i[5];
      *type = v33;
      *&type[8] = v34;
      i[4] = 0;
      i[5] = (i + 4);
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 0x40000000;
      *&buf[16] = ____nw_frame_array_finalize_block_invoke;
      v100 = &__block_descriptor_tmp_17;
      LOBYTE(v101) = 1;
      do
      {
        v35 = *type;
        if (!*type)
        {
          break;
        }

        nw_frame_array_remove();
      }

      while (((*&buf[16])(buf, v35) & 1) != 0);
    }

    nw_tcp_access_globals(*(*(result + 80) + 224));
    free(i);
  }

  *(result + 232) = 0;
  v36 = *(result + 80);
  v37 = *(v36 + 224);
  if (!*(v37 + 24))
  {
    v76 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_tcp_copy_flow_registration";
    v77 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1889BA000, v76, 16, "%{public}s called with null protocol", buf, 12);
    type[0] = 16;
    if (!__nwlog_fault())
    {
      goto LABEL_190;
    }

    if (type[0] == 17)
    {
      v78 = __nwlog_obj();
      v79 = type[0];
      if (!os_log_type_enabled(v78, type[0]))
      {
        goto LABEL_190;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_tcp_copy_flow_registration";
      v80 = "%{public}s called with null protocol";
    }

    else
    {
      v78 = __nwlog_obj();
      v79 = type[0];
      if (!os_log_type_enabled(v78, type[0]))
      {
        goto LABEL_190;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_tcp_copy_flow_registration";
      v80 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

LABEL_189:
    _os_log_impl(&dword_1889BA000, v78, v79, v80, buf, 0xCu);
    goto LABEL_190;
  }

  v38 = nw_protocol_downcast();
  if (v38)
  {
    v39 = nw_retain(*(v38 + 5344));
    if (v39)
    {
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 0x40000000;
      *&buf[16] = __tcp_publish_necp_if_stats_block_invoke;
      v100 = &__block_descriptor_tmp_15_115;
      v101 = v36;
      v102 = result;
      v103 = v37;
      v40 = v39;
      nw_path_flow_registration_access_interface_stats();
      nw_release(v40);
    }

    goto LABEL_85;
  }

  v84 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_protocol_tcp_copy_flow_registration";
  v77 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1889BA000, v84, 16, "%{public}s called with null tcp", buf, 12);
  type[0] = 16;
  if (__nwlog_fault())
  {
    if (type[0] == 17)
    {
      v78 = __nwlog_obj();
      v79 = type[0];
      if (!os_log_type_enabled(v78, type[0]))
      {
        goto LABEL_190;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_tcp_copy_flow_registration";
      v80 = "%{public}s called with null tcp";
    }

    else
    {
      v78 = __nwlog_obj();
      v79 = type[0];
      if (!os_log_type_enabled(v78, type[0]))
      {
        goto LABEL_190;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_tcp_copy_flow_registration";
      v80 = "%{public}s called with null tcp, backtrace limit exceeded";
    }

    goto LABEL_189;
  }

LABEL_190:
  if (v77)
  {
    free(v77);
  }

LABEL_85:
  for (j = *(result + 536); j; j = *(result + 536))
  {
    v44 = j[2];
    if (*(result + 608) == j)
    {
      *(result + 608) = v44;
    }

    v42 = j[3];
    v43 = (v44 + 24);
    if (!v44)
    {
      v43 = (result + 544);
    }

    *v43 = v42;
    *v42 = v44;
    nw_tcp_access_globals(*(*(result + 80) + 224));
    free(j);
    --*(result + 530);
    atomic_fetch_add_explicit(tcp_sack_globalholes, 0xFFFFFFFF, memory_order_relaxed);
  }

  *(result + 608) = 0u;
  v45 = *(result + 1040);
  if (v45)
  {
    v46 = (result + 1040);
    do
    {
      v49 = *v46;
      if (*v46 == v45)
      {
        v47 = (result + 1040);
      }

      else
      {
        do
        {
          v50 = v49;
          v49 = v49[1];
        }

        while (v49 != v45);
        v47 = v50 + 1;
      }

      v48 = v45[1];
      *v47 = v49[1];
      free(v45);
      v45 = v48;
    }

    while (v48);
    *(result + 1040) = 0;
    *(result + 736) = 0;
  }

  if (*(result + 776))
  {
    *(result + 748) &= 0xFFFFFFF3;
  }

  v51 = *(result + 960);
  if (v51)
  {
    v52 = (result + 960);
    do
    {
      v55 = *v52;
      if (*v52 == v51)
      {
        v53 = (result + 960);
      }

      else
      {
        do
        {
          v56 = v55;
          v55 = v55[2];
        }

        while (v55 != v51);
        v53 = v56 + 2;
      }

      v54 = v51[2];
      *v53 = v55[2];
      nw_tcp_access_globals(*(*(result + 80) + 224));
      free(v51);
      v51 = v54;
    }

    while (v54);
  }

  *(result + 968) = *(result + 96);
  tcp_segs_sent_clean(result, 1);
  if (!*(result + 624) || v3 && (*(v3 + 776) & 2) != 0)
  {
    goto LABEL_124;
  }

  v57 = __nwlog_tcp_log();
  if (v3)
  {
    v58 = (v3 + 556);
  }

  else
  {
    v58 = &unk_188A285CF;
  }

  *buf = 136446466;
  *&buf[4] = "tcp_close";
  *&buf[12] = 2082;
  *&buf[14] = v58;
  LODWORD(v91) = 22;
  v59 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1889BA000, v57, 16, "%{public}s %{public}s t_pktlist is not empty in tcp_close", buf, v91);
  type[0] = 16;
  if (__nwlog_fault())
  {
    if (type[0] == 17)
    {
      v60 = __nwlog_tcp_log();
      v61 = type[0];
      if (!os_log_type_enabled(v60, type[0]))
      {
        goto LABEL_122;
      }

      *buf = 136446466;
      *&buf[4] = "tcp_close";
      *&buf[12] = 2082;
      *&buf[14] = v58;
      v62 = "%{public}s %{public}s t_pktlist is not empty in tcp_close";
    }

    else
    {
      v60 = __nwlog_tcp_log();
      v61 = type[0];
      if (!os_log_type_enabled(v60, type[0]))
      {
        goto LABEL_122;
      }

      *buf = 136446466;
      *&buf[4] = "tcp_close";
      *&buf[12] = 2082;
      *&buf[14] = v58;
      v62 = "%{public}s %{public}s t_pktlist is not empty in tcp_close, backtrace limit exceeded";
    }

    _os_log_impl(&dword_1889BA000, v60, v61, v62, buf, 0x16u);
  }

LABEL_122:
  if (v59)
  {
    free(v59);
  }

LABEL_124:
  *(result + 12) = 0;
  v63 = *(v3 + 24);
  if (v63)
  {
    v63 = nw_protocol_tcp_get_all_stats();
    if (v63)
    {
      *(v63 + 136) = 0;
    }
  }

  *(v3 + 376) = *(v3 + 376) & 0xDFC1 | 0x2030;
  v64 = *(v3 + 32);
  if (v64)
  {
    if (!*v64 || (v63 = (*v64)(v3), (v64 = *(v3 + 32)) != 0))
    {
      v65 = v64[3];
      if (v65)
      {
        v63 = v65(v3);
      }
    }
  }

  if ((*(v3 + 374) & 1) != 0 && *(v1 + 232) != 3 && (*(v1 + 2376) & 1) == 0)
  {
    socket_post_kev_msg_closed(v63);
  }

  v66 = *(tcp_cc_algo_list[*(result + 272)] + 32);
  if (v66)
  {
    v66(result);
  }

  if (*(result + 848))
  {
    *(result + 848) = 0;
  }

  *(result + 272) = 0;
  if (*(v3 + 24))
  {
    v67 = nw_protocol_tcp_get_all_stats();
    if (v67)
    {
      *(v67 + 132) = *(result + 272);
    }
  }

  if (*(sysctls + 284) == 1 && (~*(result + 88) & 0x180) == 0 && (*(sysctls + 40) == 1 || (*(v3 + 369) & 0x40) != 0) && off_1ED4BF6E0)
  {
    off_1ED4BF6E0(result);
  }

  v68 = *(result + 996);
  if ((v68 & 2) != 0)
  {
    atomic_fetch_add_explicit(&tcp_tfo_halfcnt, 0xFFFFFFFF, memory_order_relaxed);
    if (tcp_tfo_halfcnt < 0)
    {
      v85 = __nwlog_obj();
      if (os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
      {
        v86 = 3;
      }

      else
      {
        v86 = 2;
      }

      *buf = 136446210;
      *&buf[4] = "tcp_close";
      LODWORD(v91) = 12;
      v87 = _os_log_send_and_compose_impl(v86, 0, 0, 0, &dword_1889BA000, v85, 16, "%{public}s Assert tcp_tfo_halfcnt >= 0 failed", buf, v91);
      if (__nwlog_should_abort())
      {
        __break(1u);
        return;
      }

      free(v87);
      v68 = *(result + 996);
    }

    *(result + 996) = v68 & 0xFD;
  }

  if ((*(v3 + 776) & 6) == 0)
  {
    buf[0] = 1;
    v69 = nw_log_ring_copyout();
    v70 = v69 + 1;
    if ((v69 + 1) >= 3 && (*(v3 + 776) & 2) == 0)
    {
      v71 = __nwlog_tcp_log();
      if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
      {
        v72 = *(nw_tcp_access_globals(v3) + 308) - *(result + 1784);
        *type = 136447235;
        *&type[4] = "tcp_close";
        *&type[12] = 2082;
        *&type[14] = v3 + 556;
        v93 = 1040;
        v94 = v70;
        v95 = 2097;
        v96 = buf;
        v97 = 1024;
        v98 = v72;
        _os_log_impl(&dword_1889BA000, v71, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}s TCP Packets:\n%{private,network:tcp_packets}.*P\n\tLast packet %ums ago.", type, 0x2Cu);
      }
    }
  }

  in_pcbdetach(v1);
  *(v3 + 376) = *(v3 + 376) & 0xDFC1 | 0x2030;
  v73 = *(v3 + 32);
  if (v73)
  {
    v74 = *(v73 + 56);
    if (v74)
    {
      v74(v3);
    }
  }

  v75 = *(result + 1064);
  if (v75)
  {
    ++*(v75 + 416);
  }
}

void tcp_release_route_heuristics(void *a1)
{
  v1 = a1;
  v21 = *MEMORY[0x1E69E9840];
  heuristics = tcp_get_heuristics(a1[10], 0);
  if (heuristics)
  {
    v3 = *(heuristics + 37);
    *(heuristics + 37) = v3 - 1;
    if (v3 > 0)
    {
      return;
    }

    v4 = *(v1[10] + 224);
    if (v4)
    {
      if ((*(v4 + 776) & 2) != 0)
      {
        return;
      }
    }

    v5 = heuristics;
    v6 = __nwlog_tcp_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = 3;
    }

    else
    {
      v7 = 2;
    }

    v8 = (v4 + 556);
    v16 = "tcp_release_route_heuristics";
    v9 = *(v5 + 37);
    *buf = 136446722;
    if (!v4)
    {
      v8 = &unk_188A285CF;
    }

    v17 = 2082;
    v18 = v8;
    v19 = 1024;
    LODWORD(v20) = v9;
    v1 = _os_log_send_and_compose_impl(v7, 0, 0, 0, &dword_1889BA000, v6, 16, "%{public}s %{public}s tcp cache refcnt %d", buf, 28);
    if (!__nwlog_should_abort())
    {
      goto LABEL_21;
    }

    __break(1u);
  }

  v10 = *(v1[10] + 224);
  if (!v10 || (*(v10 + 776) & 2) == 0)
  {
    v11 = __nwlog_tcp_log();
    v12 = v10 ? (v10 + 556) : &unk_188A285CF;
    *buf = 136446466;
    v16 = "tcp_release_route_heuristics";
    v17 = 2082;
    v18 = v12;
    LODWORD(v14) = 22;
    v1 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1889BA000, v11, 16, "%{public}s %{public}s tcp get heuristics failed", buf, v14);
    if (__nwlog_fault())
    {
      v13 = __nwlog_tcp_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446466;
        v16 = "tcp_release_route_heuristics";
        v17 = 2082;
        v18 = v12;
        _os_log_impl(&dword_1889BA000, v13, OS_LOG_TYPE_ERROR, "%{public}s %{public}s tcp get heuristics failed, backtrace limit exceeded", buf, 0x16u);
      }
    }

    if (v1)
    {
LABEL_21:
      free(v1);
    }
  }
}

void *__tcp_publish_necp_if_stats_block_invoke(void *result, uint64_t a2)
{
  *(a2 + 128) = 0;
  *(a2 + 96) = 0u;
  *(a2 + 112) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  v2 = (*(result[4] + 2380) & 2) == 0;
  *(a2 + 96) = v2;
  v3 = *(result[5] + 90) & 2;
  if (v2)
  {
    ++v3;
  }

  *(a2 + 96) = v3;
  v4 = v3 | (4 * (*(result[6] + 378) == 54));
  *(a2 + 96) = v4;
  v5 = v4 | (8 * (*(result[6] + 378) == 60));
  *(a2 + 96) = v5;
  v6 = result[5];
  *(a2 + 92) = *(v6 + 336);
  v7 = *(v6 + 700);
  *(a2 + 24) = *(v6 + 704);
  *(a2 + 28) = v7;
  v8 = *(v6 + 1004);
  *(a2 + 32) = *(v6 + 712);
  *(a2 + 36) = v8;
  *&v9 = *(v6 + 1008);
  *(&v9 + 1) = *(v6 + 1024);
  *(a2 + 40) = v9;
  v10 = *(v6 + 204);
  *(a2 + 56) = *(v6 + 1032);
  *(a2 + 60) = v10;
  v11 = *(v6 + 212);
  *(a2 + 64) = *(v6 + 248);
  *(a2 + 68) = v11;
  v12 = *(*(v6 + 80) + 496);
  if (v12)
  {
    v12 = *(v12 + 1632);
    if (v12)
    {
      LODWORD(v12) = *(v12 + 40);
    }
  }

  *(a2 + 72) = v12;
  v13 = *(v6 + 776);
  if (v13)
  {
    v15 = *(v13 + 32);
    v14 = *(v13 + 36);
    *(a2 + 76) = v15;
    if (v14)
    {
      goto LABEL_11;
    }
  }

  else
  {
    *(a2 + 76) = 0;
  }

  v14 = 0;
LABEL_11:
  *(a2 + 80) = v14;
  v16 = result[4];
  v17 = *(v16 + 248);
  v18 = v17[2];
  *a2 = *(result[6] + 696);
  *(a2 + 8) = v18;
  *(a2 + 16) = *v17;
  v19 = *(v16 + 448);
  if (v19)
  {
    v2 = (*(v16 + 2380) & 2) == 0;
    v20 = 63;
    if (v2)
    {
      v20 = 15;
    }

    v21 = &v19[v20];
    v22 = v21[8];
    *(a2 + 84) = v21[9];
    *(a2 + 88) = v22;
    v23 = v5 | ((v21[17] != 0) << 8);
    *(a2 + 96) = v23;
    *(a2 + 96) = v23 | ((v21[16] != 0) << 9);
    v24 = atomic_load(v19 + 141);
    *(a2 + 104) = v24;
    v25 = atomic_load(v19 + 142);
    *(a2 + 112) = v25;
    v26 = atomic_load(v19 + 143);
    *(a2 + 120) = v26;
    v27 = atomic_load(v19 + 144);
    *(a2 + 128) = v27;
  }

  return result;
}

void tcp_segs_sent_clean(uint64_t a1, int a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 1992);
  if (v4)
  {
    do
    {
      while (1)
      {
        v5 = *(v4 + 16);
        if (*(v4 + 4) - *(a1 + 552) < 0 && (*(v4 + 12) & 9) == 0)
        {
          ++*(a1 + 1024);
        }

        v6 = *(v4 + 24);
        v7 = (v5 + 24);
        if (!v5)
        {
          v7 = (a1 + 2000);
        }

        *v7 = v6;
        *v6 = v5;
        tcp_seg_sent_tree_head_RB_REMOVE((a1 + 2008), v4);
        if (*(a1 + 2048) < 0x40u)
        {
          break;
        }

        nw_tcp_access_globals(*(*(a1 + 80) + 224));
        free(v4);
        v4 = v5;
        if (!v5)
        {
          goto LABEL_11;
        }
      }

      *(v4 + 80) = 0;
      *(v4 + 48) = 0u;
      *(v4 + 64) = 0u;
      *(v4 + 16) = 0u;
      *(v4 + 32) = 0u;
      *v4 = 0u;
      v8 = *(a1 + 2040);
      *(v4 + 80) = v8;
      *v8 = v4;
      *(a1 + 2040) = v4 + 72;
      ++*(a1 + 2048);
      v4 = v5;
    }

    while (v5);
  }

LABEL_11:
  if (*(a1 + 2008))
  {
    v13 = __nwlog_obj();
    *buf = 136446210;
    v21 = "tcp_segs_sent_clean";
    v14 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1889BA000, v13, 16, "%{public}s RB tree still contains segments while time ordered list is already empty", buf, 12);
    if (__nwlog_fault())
    {
      v17 = __nwlog_obj();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446210;
        v21 = "tcp_segs_sent_clean";
        _os_log_impl(&dword_1889BA000, v17, OS_LOG_TYPE_ERROR, "%{public}s RB tree still contains segments while time ordered list is already empty, backtrace limit exceeded", buf, 0xCu);
      }
    }

    if (v14)
    {
      free(v14);
    }
  }

  if (*(a1 + 2016))
  {
    v15 = __nwlog_obj();
    *buf = 136446210;
    v21 = "tcp_segs_sent_clean";
    LODWORD(v19) = 12;
    v16 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1889BA000, v15, 16, "%{public}s Segment ACKed list shouldn't contain any segments as they are removed immediately after being ACKed", buf, v19);
    if (__nwlog_fault())
    {
      v18 = __nwlog_obj();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446210;
        v21 = "tcp_segs_sent_clean";
        _os_log_impl(&dword_1889BA000, v18, OS_LOG_TYPE_ERROR, "%{public}s Segment ACKed list shouldn't contain any segments as they are removed immediately after being ACKed, backtrace limit exceeded", buf, 0xCu);
      }
    }

    if (v16)
    {
      free(v16);
    }
  }

  *(a1 + 2077) &= ~0x80u;
  *(a1 + 2088) = 0;
  *(a1 + 2080) = 0;
  if (a2)
  {
    v9 = *(a1 + 2032);
    if (v9)
    {
      do
      {
        v11 = v9[9];
        v10 = v9[10];
        v12 = v11 + 10;
        if (!v11)
        {
          v12 = (a1 + 2040);
        }

        *v12 = v10;
        *v10 = v11;
        nw_tcp_access_globals(*(*(a1 + 80) + 224));
        free(v9);
        v9 = v11;
      }

      while (v11);
    }

    *(a1 + 2048) = 0;
  }
}

void in_pcbdetach(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 224);
  if (in_pcb_checkstate(a1, 0xFFFFLL, 1) == 0xFFFF)
  {
    if ((*(v2 + 364) & 4) != 0)
    {
      return;
    }

    v3 = *(a1 + 496);
    if (v3)
    {
      if (*(v3 + 1640) == 1)
      {
        v4 = *(v3 + 1632);
        if (v4)
        {
          free(v4);
          v3 = *(a1 + 496);
          *(v3 + 1632) = 0;
        }

        *(v3 + 1640) = 0;
      }

      *(a1 + 496) = 0;
    }

    sofreelastref(v2);
    *(a1 + 232) = 3;
    *(v2 + 364) |= 4u;
    v5 = nw_tcp_access_globals(v2);
    v6 = *(a1 + 16);
    *(v5 + 316) |= 2u;
    atomic_fetch_add((v6 + 44), 1u);
    v7 = *(v5 + 316);
    if (v7)
    {
      if ((*(v5 + 316) & 8) != 0)
      {
        return;
      }

      v8 = v7 | 8;
    }

    else
    {
      if ((*(v5 + 316) & 6) == 0)
      {
        return;
      }

      v8 = v7 | 9;
    }

    *(v5 + 316) = v8;

    nw_protocol_timer_run_inner(v5, 1000000000, 0);
  }

  else if (!v2 || (*(v2 + 776) & 2) == 0)
  {
    v9 = __nwlog_tcp_log();
    v10 = **(v2 + 8);
    if (v2)
    {
      v11 = (v2 + 556);
    }

    else
    {
      v11 = &unk_188A285CF;
    }

    *buf = 136446978;
    v16 = "in_pcbdetach";
    v17 = 2082;
    v18 = v11;
    v19 = 2048;
    v20 = v2;
    v21 = 1024;
    v22 = v10;
    v12 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1889BA000, v9, 16, "%{public}s %{public}s so=%p proto=%d couldn't set to STOPUSING", buf, 38);
    if (__nwlog_fault())
    {
      v13 = __nwlog_tcp_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = **(v2 + 8);
        *buf = 136446978;
        v16 = "in_pcbdetach";
        v17 = 2082;
        v18 = v11;
        v19 = 2048;
        v20 = v2;
        v21 = 1024;
        v22 = v14;
        _os_log_impl(&dword_1889BA000, v13, OS_LOG_TYPE_ERROR, "%{public}s %{public}s so=%p proto=%d couldn't set to STOPUSING, backtrace limit exceeded", buf, 0x26u);
      }
    }

    if (v12)
    {
      free(v12);
    }
  }
}

void tcp_respond(uint64_t a1, __int128 *a2, uint64_t a3, unsigned int a4, unsigned int a5, char a6, uint64_t a7)
{
  v8 = a6;
  v122 = *MEMORY[0x1E69E9840];
  v13 = *(a1 + 80);
  v14 = *(v13 + 224);
  v15 = *(v14 + 24);
  v16 = *(v15 + 32);
  v97 = *(v13 + 2380);
  if ((a6 & 4) != 0)
  {
    v18 = 0;
  }

  else
  {
    v17 = tcp_sbspace(a1);
    if (v17 >= 0xFFFF << *(a1 + 269))
    {
      v18 = 0xFFFF << *(a1 + 269);
    }

    else
    {
      v18 = v17;
    }

    v15 = *(v14 + 24);
  }

  v102[0] = 0;
  v102[1] = v102;
  if ((*(*(v16 + 24) + 88))(v16, v15, 20, 20, 1, v102))
  {
    v95 = v18;
    v19 = v102[0];
    if (v102[0])
    {
      v93 = a7;
      v20 = *(v102[0] + 112);
      v21 = MEMORY[0x1E6977EF8];
      if (v20)
      {
        v92 = a5;
        if ((*(v102[0] + 204) & 0x100) == 0 || !*MEMORY[0x1E6977EF8])
        {
          v22 = (v102[0] + 56);
          v24 = v20 + *(v102[0] + 56);
LABEL_24:
          v90 = a4;
          v91 = v22;
          v27 = *a2;
          *(v24 + 16) = *(a2 + 4);
          *v24 = v27;
          if ((*(v19 + 204) & 0x80) != 0)
          {
            *(v19 + 196) -= 20;
          }

          v28 = *(v19 + 52);
          v29 = *(v19 + 56) + 20;
          v30 = *(v19 + 60);
          if (v29 <= v28 - v30)
          {
            v33 = v22;
            *v22 = v29;
            v34 = v93;
            if (!v28)
            {
              goto LABEL_56;
            }
          }

          else
          {
            v31 = __nwlog_obj();
            v32 = os_log_type_enabled(v31, OS_LOG_TYPE_ERROR);
            v28 = *(v19 + 52);
            if (v32)
            {
              *buf = 136446978;
              v106 = "__nw_frame_claim_internal";
              v107 = 1024;
              *v108 = v29;
              *&v108[4] = 1024;
              *&v108[6] = v28;
              *v109 = 1024;
              *&v109[2] = v30;
              _os_log_impl(&dword_1889BA000, v31, OS_LOG_TYPE_ERROR, "%{public}s Claiming bytes failed because start (%u) is beyond end (%u - %u)", buf, 0x1Eu);
              v28 = *(v19 + 52);
            }

            v33 = v91;
            v34 = v93;
            if (!v28)
            {
LABEL_56:
              if ((*(v19 + 204) & 0x80) != 0)
              {
                *(v19 + 196) += 20;
              }

              if (*v33 > 0x13)
              {
                *v33 -= 20;
              }

              else
              {
                v54 = __nwlog_obj();
                if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
                {
                  v55 = *v33;
                  *buf = 136446722;
                  v106 = "__nw_frame_unclaim_internal";
                  v107 = 1024;
                  *v108 = 20;
                  *&v108[4] = 1024;
                  *&v108[6] = v55;
                  _os_log_impl(&dword_1889BA000, v54, OS_LOG_TYPE_ERROR, "%{public}s Frame cannot unclaim %u start bytes (has %u left)", buf, 0x18u);
                }
              }

              if (a3)
              {
                HIDWORD(v56) = *v24;
                LODWORD(v56) = *v24;
                *v24 = v56 >> 16;
                v57 = v90;
                if (!v34)
                {
                  goto LABEL_68;
                }
              }

              else
              {
                v8 = 16;
                v57 = v90;
                if (!v34)
                {
                  goto LABEL_68;
                }
              }

              if ((*(v34 + 4) & 0x10) != 0)
              {
                *(v19 + 206) |= 1u;
              }

LABEL_68:
              *(v24 + 4) = bswap32(v92);
              *(v24 + 8) = bswap32(v57);
              *(v24 + 12) = 80;
              *(v24 + 13) = v8;
              *(v24 + 14) = bswap32(v95 >> *(a1 + 269)) >> 16;
              *(v24 + 18) = 0;
              if ((v97 & 2) != 0)
              {
                v58 = in6_pseudo();
              }

              else
              {
                v58 = in_pseudo();
              }

              *(v24 + 16) = v58;
              v59 = in_finalize_cksum();
              v60 = MEMORY[0x1E6977EF8];
              if (v59 && (*(v19 + 204) & 0x100) != 0 && *MEMORY[0x1E6977EF8] && ((*MEMORY[0x1E6977EF8])(v19, *(v19 + 88)) & 1) == 0)
              {
                *(a1 + 1064) = 0;
                v59 = 6;
                if ((*(v14 + 776) & 2) == 0)
                {
LABEL_82:
                  v66 = __nwlog_tcp_log();
                  if (os_log_type_enabled(v66, OS_LOG_TYPE_INFO))
                  {
                    v67 = strerror(v59);
                    *buf = 136446722;
                    v106 = "tcp_respond";
                    v107 = 2082;
                    *v108 = v14 + 556;
                    *&v108[8] = 2080;
                    *v109 = v67;
                    _os_log_impl(&dword_1889BA000, v66, OS_LOG_TYPE_INFO, "%{public}s %{public}s failed to finalize checksum, %s", buf, 0x20u);
                  }
                }

LABEL_92:
                (*(*(v16 + 24) + 96))(v16, v102);
                return;
              }

              v61 = *(v19 + 52);
              if (v61)
              {
                v62 = (v61 - (*(v19 + 56) + *(v19 + 60)));
                v63 = *(a1 + 1064);
                if (!v63)
                {
                  goto LABEL_80;
                }
              }

              else
              {
                v62 = 0;
                v63 = *(a1 + 1064);
                if (!v63)
                {
                  goto LABEL_80;
                }
              }

              v64 = 136;
              if ((v97 & 2) == 0)
              {
                v64 = 120;
              }

              v65.i64[0] = vdupq_n_s64(1uLL).u64[0];
              v65.i64[1] = v62;
              *(v63 + v64) = vaddq_s64(*(v63 + v64), v65);
LABEL_80:
              if (v59)
              {
                if ((*(v14 + 776) & 2) == 0)
                {
                  goto LABEL_82;
                }

                goto LABEL_92;
              }

              v68 = *(*(a1 + 80) + 224);
              v69 = *(v68 + 552);
              v101 = 0;
              set_frame_service_class(v19, v68, v69, (v97 & 2) >> 1, &v101);
              v70 = v101;
              *(v19 + 176) = v101;
              if (!__nwlog_is_datapath_logging_enabled())
              {
LABEL_87:
                if (*MEMORY[0x1E6977EF0] != -1)
                {
                  dispatch_once(MEMORY[0x1E6977EF0], &__block_literal_global_93);
                }

                if (*MEMORY[0x1E6977EE8] == 1 && kdebug_is_enabled())
                {
                  nw_frame_array_unclaimed_length();
                  kdebug_trace();
                }

                goto LABEL_92;
              }

              v72 = *(v19 + 52);
              if (v72)
              {
                v73 = v72 - (*(v19 + 56) + *(v19 + 60));
              }

              else
              {
                v73 = 0;
              }

              v74 = *(v19 + 112);
              if (v74)
              {
                if ((*(v19 + 204) & 0x100) == 0 || !*v60)
                {
                  v75 = *v91;
                  goto LABEL_113;
                }

                if ((*v60)(v19, *(v19 + 88)))
                {
                  v74 = *(v19 + 112);
                  if (v74)
                  {
                    v75 = *(v19 + 56);
LABEL_113:
                    v76 = (v74 + v75);
                    if ((*(v14 + 776) & 2) == 0)
                    {
                      if (__nwlog_is_datapath_logging_enabled())
                      {
                        v77 = __nwlog_tcp_log();
                        if (os_log_type_enabled(v77, OS_LOG_TYPE_DEBUG))
                        {
                          v78 = bswap32(*v76) >> 16;
                          v79 = bswap32(v76[1]) >> 16;
                          v80 = *(v76 + 13);
                          v81 = *(v76 + 2);
                          v82 = bswap32(*(v76 + 1));
                          v94 = bswap32(v81);
                          v96 = *(a1 + 120);
                          v98 = v80;
                          v100 = *(a1 + 92);
                          v83 = *(a1 + 12);
                          v84 = packet_service_class_to_str(v70);
                          *buf = 136449026;
                          v106 = "tcp_respond";
                          v107 = 2082;
                          *v108 = v14 + 556;
                          *&v108[8] = 1024;
                          *v109 = v78;
                          *&v109[4] = 1024;
                          *&v109[6] = v79;
                          LOWORD(v110) = 1024;
                          *(&v110 + 2) = v73;
                          HIWORD(v110) = 1024;
                          *v111 = v98;
                          *&v111[4] = 1024;
                          *&v111[6] = v82;
                          v112 = 1024;
                          v113 = v94;
                          v114 = 1024;
                          v115 = v96;
                          v116 = 1024;
                          v117 = v100;
                          v118 = 1024;
                          v119 = v83;
                          v120 = 2082;
                          v121 = v84;
                          _os_log_impl(&dword_1889BA000, v77, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s sending frame, %u:%u tlen %u, flags %#x, seq %u, ack %u, rcv_nxt %u snd_una %u state %u svc %{public}s", buf, 0x56u);
                        }
                      }
                    }

                    goto LABEL_87;
                  }
                }
              }

              if ((*(v19 + 204) & 0x100) != 0 && *v60 && ((*v60)(v19, *(v19 + 88)) & 1) == 0)
              {
                *(a1 + 1064) = 0;
              }

              goto LABEL_87;
            }
          }

          v36 = *(v19 + 56);
          v35 = *(v19 + 60);
          v37 = (v28 - (v35 + v36));
          if (v28 == v35 + v36)
          {
            goto LABEL_56;
          }

          if (v35)
          {
            v38 = *(v19 + 112);
            if (v38)
            {
              memmove((v38 + v36), (v38 + v36 + v37), v35);
              v28 = *(v19 + 52);
            }
          }

          *(v19 + 52) = v28 - v37;
          if ((*(v19 + 204) & 0x80) == 0)
          {
            goto LABEL_56;
          }

          v39 = *(v19 + 196);
          v40 = v39 >= v37;
          v41 = v39 - v37;
          *(v19 + 196) = v41;
          if (v40 && v41 < 0x10000)
          {
            goto LABEL_56;
          }

          v42 = __nwlog_obj();
          v43 = *(v19 + 196);
          *buf = 136446978;
          v106 = "__nw_frame_collapse";
          v107 = 2082;
          *v108 = "frame->aggregate_buffer_length";
          *&v108[8] = 2048;
          *v109 = v37;
          *&v109[8] = 2048;
          v110 = v43;
          v44 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1889BA000, v42, 16, "%{public}s Underflow: %{public}s, decrement %llu, result %llu", buf, 42);
          type = OS_LOG_TYPE_ERROR;
          v45 = v44;
          v103 = 0;
          if (__nwlog_fault())
          {
            if (type == OS_LOG_TYPE_FAULT)
            {
              v88 = __nwlog_obj();
              log = type;
              if (os_log_type_enabled(v88, type))
              {
                v46 = *(v19 + 196);
                *buf = 136446978;
                v106 = "__nw_frame_collapse";
                v107 = 2082;
                *v108 = "frame->aggregate_buffer_length";
                *&v108[8] = 2048;
                *v109 = v37;
                *&v109[8] = 2048;
                v110 = v46;
                v47 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu";
LABEL_51:
                v52 = v88;
                v53 = log;
LABEL_52:
                _os_log_impl(&dword_1889BA000, v52, v53, v47, buf, 0x2Au);
              }
            }

            else if (v103 == 1)
            {
              backtrace_string = __nw_create_backtrace_string();
              loga = __nwlog_obj();
              v85 = type;
              v48 = os_log_type_enabled(loga, type);
              v49 = backtrace_string;
              if (backtrace_string)
              {
                if (v48)
                {
                  v50 = *(v19 + 196);
                  *buf = 136447234;
                  v106 = "__nw_frame_collapse";
                  v107 = 2082;
                  *v108 = "frame->aggregate_buffer_length";
                  *&v108[8] = 2048;
                  *v109 = v37;
                  *&v109[8] = 2048;
                  v110 = v50;
                  *v111 = 2082;
                  *&v111[2] = backtrace_string;
                  _os_log_impl(&dword_1889BA000, loga, v85, "%{public}s Underflow: %{public}s, decrement %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
                  v49 = backtrace_string;
                }

                free(v49);
                goto LABEL_53;
              }

              if (v48)
              {
                v71 = *(v19 + 196);
                *buf = 136446978;
                v106 = "__nw_frame_collapse";
                v107 = 2082;
                *v108 = "frame->aggregate_buffer_length";
                *&v108[8] = 2048;
                *v109 = v37;
                *&v109[8] = 2048;
                v110 = v71;
                v47 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, no backtrace";
                v52 = loga;
                v53 = v85;
                goto LABEL_52;
              }
            }

            else
            {
              v88 = __nwlog_obj();
              log = type;
              if (os_log_type_enabled(v88, type))
              {
                v51 = *(v19 + 196);
                *buf = 136446978;
                v106 = "__nw_frame_collapse";
                v107 = 2082;
                *v108 = "frame->aggregate_buffer_length";
                *&v108[8] = 2048;
                *v109 = v37;
                *&v109[8] = 2048;
                v110 = v51;
                v47 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, backtrace limit exceeded";
                goto LABEL_51;
              }
            }
          }

LABEL_53:
          if (v45)
          {
            free(v45);
          }

          *(v19 + 196) = 0;
          v34 = v93;
          goto LABEL_56;
        }

        if ((*MEMORY[0x1E6977EF8])(v102[0], *(v102[0] + 88)))
        {
          v22 = (v19 + 56);
          v23 = *(v19 + 112);
          if (v23)
          {
            v24 = v23 + *(v19 + 56);
            goto LABEL_24;
          }
        }
      }

      if ((*(v19 + 204) & 0x100) != 0 && *v21 && ((*v21)(v19, *(v19 + 88)) & 1) == 0)
      {
        *(a1 + 1064) = 0;
      }
    }

    if ((*(v14 + 776) & 2) == 0)
    {
      v25 = __nwlog_tcp_log();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        *buf = 136446466;
        v106 = "tcp_respond";
        v107 = 2082;
        *v108 = v14 + 556;
        v26 = "%{public}s %{public}s output frame is no longer valid";
LABEL_22:
        _os_log_impl(&dword_1889BA000, v25, OS_LOG_TYPE_INFO, v26, buf, 0x16u);
      }
    }
  }

  else if ((*(v14 + 776) & 2) == 0)
  {
    v25 = __nwlog_tcp_log();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      *buf = 136446466;
      v106 = "tcp_respond";
      v107 = 2082;
      *v108 = v14 + 556;
      v26 = "%{public}s %{public}s failed to get output frames";
      goto LABEL_22;
    }
  }
}

uint64_t sbrelease(uint64_t a1)
{
  sblock(a1);
  if (nw_frame_array_first())
  {
    sbdrop(a1, *a1);
  }

  sb_empty_assert(a1, "sbflush");
  sbunlock(a1);
  *(a1 + 4) = 0;
  result = *(*(a1 + 48) + 24);
  if ((*(a1 + 32) & 4) != 0)
  {
    if (result)
    {
      result = nw_protocol_tcp_get_all_stats();
      if (result)
      {
        *(result + 88) = *(a1 + 4);
      }
    }
  }

  else if (result)
  {
    result = nw_protocol_tcp_get_all_stats();
    if (result)
    {
      *(result + 100) = *(a1 + 4);
    }
  }

  return result;
}

void nw_protocol_tcp_wake_disconnected(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  if (*(v2 + 5352) == 4)
  {
    if ((*(a1 + 776) & 2) == 0 && __nwlog_is_datapath_logging_enabled())
    {
      v3 = __nwlog_tcp_log();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446466;
        v6 = "nw_protocol_tcp_wake_disconnected";
        v7 = 2082;
        v8 = a1 + 556;
        _os_log_impl(&dword_1889BA000, v3, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s skipping", buf, 0x16u);
      }
    }
  }

  else
  {
    *(v2 + 5352) = 4;
    if ((*(a1 + 776) & 2) == 0)
    {
      v4 = __nwlog_tcp_log();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        *buf = 136446466;
        v6 = "nw_protocol_tcp_wake_disconnected";
        v7 = 2082;
        v8 = a1 + 556;
        _os_log_impl(&dword_1889BA000, v4, OS_LOG_TYPE_INFO, "%{public}s %{public}s tcp disconnected", buf, 0x16u);
      }
    }

    if (*MEMORY[0x1E6977EF0] != -1)
    {
      dispatch_once(MEMORY[0x1E6977EF0], &__block_literal_global_18);
    }

    if (*MEMORY[0x1E6977EE8] == 1 && kdebug_is_enabled())
    {
      kdebug_trace();
    }

    nw_protocol_upcast();
    nw_protocol_retain();
    nw_queue_context_async();
  }
}

uint64_t __nw_protocol_tcp_wake_disconnected_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 5436);
  if ((v3 & 4) == 0)
  {
    nw_protocol_get_output_handler();
    nw_protocol_disconnect_quiet();
    v2 = *(a1 + 32);
    v3 = *(v2 + 5436);
  }

  if (v3)
  {
    nw_protocol_tcp_release(v2);
  }

  return nw_protocol_release();
}

void nw_protocol_tcp_disconnected(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = nw_protocol_downcast();
    if (v1)
    {
      v2 = v1;
      if ((*(v1 + 776) & 2) == 0)
      {
        v3 = __nwlog_tcp_log();
        if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
        {
          *buf = 136446466;
          v12 = "nw_protocol_tcp_disconnected";
          v13 = 2082;
          v14 = v2 + 556;
          _os_log_impl(&dword_1889BA000, v3, OS_LOG_TYPE_INFO, "%{public}s %{public}s output protocol is disconnected", buf, 0x16u);
        }
      }

      v4 = *(v2 + 5436);
      if ((v4 & 4) != 0)
      {
        if ((*(v2 + 776) & 2) == 0 && __nwlog_is_datapath_logging_enabled())
        {
          v8 = __nwlog_tcp_log();
          if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136446466;
            v12 = "nw_protocol_tcp_disconnected";
            v13 = 2082;
            v14 = v2 + 556;
            _os_log_impl(&dword_1889BA000, v8, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s skipping", buf, 0x16u);
          }
        }
      }

      else
      {
        *(v2 + 5436) = v4 | 4;
        *(v2 + 4264) = 0u;
      }

      return;
    }

    v7 = __nwlog_obj();
    *buf = 136446210;
    v12 = "nw_protocol_tcp_disconnected";
    v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1889BA000, v7, 16, "%{public}s called with null tcp", buf, 12);
    if (__nwlog_fault())
    {
      v9 = __nwlog_obj();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446210;
        v12 = "nw_protocol_tcp_disconnected";
        v10 = "%{public}s called with null tcp, backtrace limit exceeded";
        goto LABEL_21;
      }
    }
  }

  else
  {
    v5 = __nwlog_obj();
    *buf = 136446210;
    v12 = "nw_protocol_tcp_disconnected";
    v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1889BA000, v5, 16, "%{public}s called with null protocol", buf, 12);
    if (__nwlog_fault())
    {
      v9 = __nwlog_obj();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446210;
        v12 = "nw_protocol_tcp_disconnected";
        v10 = "%{public}s called with null protocol, backtrace limit exceeded";
LABEL_21:
        _os_log_impl(&dword_1889BA000, v9, OS_LOG_TYPE_ERROR, v10, buf, 0xCu);
      }
    }
  }

  if (v6)
  {
    free(v6);
  }
}

void nw_protocol_tcp_release(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    *(a1 + 5436) &= ~1u;
    nw_protocol_upcast();
    nw_protocol_get_output_handler();
    if (nw_protocol_remove_input_handler_is_valid())
    {
      nw_protocol_get_output_handler();
      nw_protocol_remove_input_handler();
    }

    else if ((*(a1 + 776) & 2) == 0)
    {
      v2 = __nwlog_tcp_log();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446466;
        v7 = "nw_protocol_tcp_release";
        v8 = 2082;
        v9 = a1 + 556;
        _os_log_impl(&dword_1889BA000, v2, OS_LOG_TYPE_ERROR, "%{public}s %{public}s remove_input_handler is not valid", buf, 0x16u);
      }
    }

    nw_protocol_destroy();
  }

  else
  {
    v3 = __nwlog_obj();
    *buf = 136446210;
    v7 = "nw_protocol_tcp_release";
    v4 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1889BA000, v3, 16, "%{public}s called with null tcp", buf, 12);
    if (__nwlog_fault())
    {
      v5 = __nwlog_obj();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446210;
        v7 = "nw_protocol_tcp_release";
        _os_log_impl(&dword_1889BA000, v5, OS_LOG_TYPE_ERROR, "%{public}s called with null tcp, backtrace limit exceeded", buf, 0xCu);
      }
    }

    if (v4)
    {
      free(v4);
    }
  }
}

BOOL nw_protocol_tcp_unregister_notification(uint64_t a1, uint64_t a2, int a3)
{
  v39[2] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v33 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_tcp_unregister_notification";
    v15 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1889BA000, v33, 16, "%{public}s called with null protocol", buf, 12);
    type[0] = OS_LOG_TYPE_ERROR;
    if (__nwlog_fault())
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v34 = __nwlog_obj();
        v35 = type[0];
        if (os_log_type_enabled(v34, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_protocol_tcp_unregister_notification";
          v19 = "%{public}s called with null protocol";
LABEL_75:
          v30 = v34;
          v31 = v35;
          v32 = 12;
          goto LABEL_56;
        }
      }

      else
      {
        v34 = __nwlog_obj();
        v35 = type[0];
        if (os_log_type_enabled(v34, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_protocol_tcp_unregister_notification";
          v19 = "%{public}s called with null protocol, backtrace limit exceeded";
          goto LABEL_75;
        }
      }
    }

LABEL_57:
    if (v15)
    {
      free(v15);
    }

    return 0;
  }

  v5 = nw_protocol_downcast();
  if (!v5)
  {
    v36 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_tcp_unregister_notification";
    v15 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1889BA000, v36, 16, "%{public}s called with null tcp", buf, 12);
    type[0] = OS_LOG_TYPE_ERROR;
    if (__nwlog_fault())
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v34 = __nwlog_obj();
        v35 = type[0];
        if (os_log_type_enabled(v34, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_protocol_tcp_unregister_notification";
          v19 = "%{public}s called with null tcp";
          goto LABEL_75;
        }
      }

      else
      {
        v34 = __nwlog_obj();
        v35 = type[0];
        if (os_log_type_enabled(v34, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_protocol_tcp_unregister_notification";
          v19 = "%{public}s called with null tcp, backtrace limit exceeded";
          goto LABEL_75;
        }
      }
    }

    goto LABEL_57;
  }

  if (*(v5 + 5352) > 2u)
  {
    return 1;
  }

  if (a3 <= 3)
  {
    if (a3 > 1)
    {
      if (a3 == 2)
      {
        if ((~*(v5 + 376) & 0x30) != 0)
        {
          *type = 0;
          *buf = 0x600000001;
          *&buf[8] = 519;
          *&buf[16] = type;
          v39[0] = 4;
          v20 = v5;
          (*(*(v5 + 8) + 16))();
          if ((~*(v20 + 376) & 0x30) != 0 || (v21 = v20, (*(v20 + 365) & 0x20) != 0))
          {
            v22 = tcp_ctloutput(v20, buf);
            v21 = v20;
          }

          else
          {
            v22 = 22;
          }

          (*(*(v21 + 8) + 24))(v20, 1, v3);
          v5 = v20;
          if (v22)
          {
            v27 = __nwlog_obj();
            v28 = v20 + 556;
            *buf = 136446722;
            *&buf[4] = "nw_protocol_tcp_unregister_notification";
            *&buf[12] = 2082;
            *&buf[14] = v20 + 556;
            *&buf[22] = 1024;
            LODWORD(v39[0]) = v22;
            v15 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1889BA000, v27, 16, "%{public}s %{public}s tcp_set_write_timeout failed %{darwin.errno}d", buf, 28);
            type[0] = OS_LOG_TYPE_ERROR;
            if (!__nwlog_fault())
            {
              goto LABEL_57;
            }

            if (type[0] == OS_LOG_TYPE_FAULT)
            {
              v25 = __nwlog_obj();
              v26 = type[0];
              if (!os_log_type_enabled(v25, type[0]))
              {
                goto LABEL_57;
              }

              *buf = 136446722;
              *&buf[4] = "nw_protocol_tcp_unregister_notification";
              *&buf[12] = 2082;
              *&buf[14] = v28;
              *&buf[22] = 1024;
              LODWORD(v39[0]) = v22;
              v19 = "%{public}s %{public}s tcp_set_write_timeout failed %{darwin.errno}d";
            }

            else
            {
              v25 = __nwlog_obj();
              v26 = type[0];
              if (!os_log_type_enabled(v25, type[0]))
              {
                goto LABEL_57;
              }

              *buf = 136446722;
              *&buf[4] = "nw_protocol_tcp_unregister_notification";
              *&buf[12] = 2082;
              *&buf[14] = v28;
              *&buf[22] = 1024;
              LODWORD(v39[0]) = v22;
              v19 = "%{public}s %{public}s tcp_set_write_timeout failed %{darwin.errno}d, backtrace limit exceeded";
            }

            goto LABEL_55;
          }
        }

        v10 = *(v5 + 5436) & 0xFFFFFF7F;
      }

      else
      {
        v10 = *(v5 + 5436) & 0xFFFFFEFF;
      }
    }

    else
    {
      if (!a3)
      {
        v14 = __nwlog_obj();
        *buf = 136446466;
        *&buf[4] = "nw_protocol_tcp_unregister_notification";
        *&buf[12] = 2082;
        *&buf[14] = nw_protocol_notification_type_to_string();
        v15 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1889BA000, v14, 16, "%{public}s invalid registration notification: %{public}s", buf, 22);
        type[0] = OS_LOG_TYPE_ERROR;
        if (!__nwlog_fault())
        {
          goto LABEL_57;
        }

        if (type[0] == OS_LOG_TYPE_FAULT)
        {
          v16 = __nwlog_obj();
          v17 = type[0];
          if (!os_log_type_enabled(v16, type[0]))
          {
            goto LABEL_57;
          }

          v18 = nw_protocol_notification_type_to_string();
          *buf = 136446466;
          *&buf[4] = "nw_protocol_tcp_unregister_notification";
          *&buf[12] = 2082;
          *&buf[14] = v18;
          v19 = "%{public}s invalid registration notification: %{public}s";
        }

        else
        {
          v16 = __nwlog_obj();
          v17 = type[0];
          if (!os_log_type_enabled(v16, type[0]))
          {
            goto LABEL_57;
          }

          v29 = nw_protocol_notification_type_to_string();
          *buf = 136446466;
          *&buf[4] = "nw_protocol_tcp_unregister_notification";
          *&buf[12] = 2082;
          *&buf[14] = v29;
          v19 = "%{public}s invalid registration notification: %{public}s, backtrace limit exceeded";
        }

        v30 = v16;
        v31 = v17;
        v32 = 22;
        goto LABEL_56;
      }

      if (a3 != 1)
      {
        return 0;
      }

      if ((~*(v5 + 376) & 0x30) != 0)
      {
        *type = 0;
        *buf = 0x600000001;
        *&buf[8] = 517;
        *&buf[16] = type;
        v39[0] = 4;
        v7 = v5;
        (*(*(v5 + 8) + 16))();
        if ((~*(v7 + 376) & 0x30) != 0 || (v8 = v7, (*(v7 + 365) & 0x20) != 0))
        {
          v9 = tcp_ctloutput(v7, buf);
          v8 = v7;
        }

        else
        {
          v9 = 22;
        }

        (*(*(v8 + 8) + 24))(v7, 1, v3);
        v5 = v7;
        if (v9)
        {
          v23 = __nwlog_obj();
          v24 = v7 + 556;
          *buf = 136446722;
          *&buf[4] = "nw_protocol_tcp_unregister_notification";
          *&buf[12] = 2082;
          *&buf[14] = v7 + 556;
          *&buf[22] = 1024;
          LODWORD(v39[0]) = v9;
          v15 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1889BA000, v23, 16, "%{public}s %{public}s tcp_set_read_timeout failed %{darwin.errno}d", buf, 28);
          type[0] = OS_LOG_TYPE_ERROR;
          if (!__nwlog_fault())
          {
            goto LABEL_57;
          }

          if (type[0] == OS_LOG_TYPE_FAULT)
          {
            v25 = __nwlog_obj();
            v26 = type[0];
            if (!os_log_type_enabled(v25, type[0]))
            {
              goto LABEL_57;
            }

            *buf = 136446722;
            *&buf[4] = "nw_protocol_tcp_unregister_notification";
            *&buf[12] = 2082;
            *&buf[14] = v24;
            *&buf[22] = 1024;
            LODWORD(v39[0]) = v9;
            v19 = "%{public}s %{public}s tcp_set_read_timeout failed %{darwin.errno}d";
          }

          else
          {
            v25 = __nwlog_obj();
            v26 = type[0];
            if (!os_log_type_enabled(v25, type[0]))
            {
              goto LABEL_57;
            }

            *buf = 136446722;
            *&buf[4] = "nw_protocol_tcp_unregister_notification";
            *&buf[12] = 2082;
            *&buf[14] = v24;
            *&buf[22] = 1024;
            LODWORD(v39[0]) = v9;
            v19 = "%{public}s %{public}s tcp_set_read_timeout failed %{darwin.errno}d, backtrace limit exceeded";
          }

LABEL_55:
          v30 = v25;
          v31 = v26;
          v32 = 28;
LABEL_56:
          _os_log_impl(&dword_1889BA000, v30, v31, v19, buf, v32);
          goto LABEL_57;
        }
      }

      v10 = *(v5 + 5436) & 0xFFFFFFBF;
    }

    *(v5 + 5436) = v10;
    return 1;
  }

  if (a3 <= 6)
  {
    return (a3 - 4) < 2;
  }

  if (a3 != 14)
  {
    return 0;
  }

  *(v5 + 5436) &= ~0x400000u;
  if ((*(v5 + 776) & 2) != 0)
  {
    return 1;
  }

  v11 = v5;
  v12 = __nwlog_tcp_log();
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_INFO);
  result = 1;
  if (v13)
  {
    *buf = 136446466;
    *&buf[4] = "nw_protocol_tcp_unregister_notification";
    *&buf[12] = 2082;
    *&buf[14] = v11 + 556;
    _os_log_impl(&dword_1889BA000, v12, OS_LOG_TYPE_INFO, "%{public}s %{public}s segmentation_offload_notification disabled", buf, 0x16u);
    return 1;
  }

  return result;
}

void __nw_protocol_tcp_release_block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  if (!v1)
  {
    v13 = __nwlog_obj();
    *buf = 136446210;
    v15 = "nw_protocol_tcp_dispose";
    v10 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1889BA000, v13, 16, "%{public}s called with null object", buf, 12);
    if (!__nwlog_fault())
    {
      goto LABEL_23;
    }

    v11 = __nwlog_obj();
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_23;
    }

    *buf = 136446210;
    v15 = "nw_protocol_tcp_dispose";
    v12 = "%{public}s called with null object, backtrace limit exceeded";
    goto LABEL_22;
  }

  if ((*(v1 + 776) & 2) == 0)
  {
    v2 = __nwlog_tcp_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *buf = 136446466;
      v15 = "nw_protocol_tcp_dispose";
      v16 = 2082;
      v17 = v1 + 556;
      _os_log_impl(&dword_1889BA000, v2, OS_LOG_TYPE_INFO, "%{public}s %{public}s tcp dispose", buf, 0x16u);
    }
  }

  v3 = *(v1 + 5336);
  if (v3)
  {
    nw_release(v3);
    *(v1 + 5336) = 0;
  }

  if (*(v1 + 5360))
  {
    nw_tcp_set_callbacks();
    v4 = *(v1 + 5360);
    if (v4)
    {
      nw_release(v4);
      *(v1 + 5360) = 0;
    }
  }

  v5 = *(v1 + 5344);
  if (v5)
  {
    nw_release(v5);
    *(v1 + 5344) = 0;
  }

  v6 = *(v1 + 5328);
  if (v6)
  {
    nw_release(v6);
    *(v1 + 5328) = 0;
  }

  v7 = *(v1 + 5400);
  if (v7)
  {
    free(v7);
    *(v1 + 5400) = 0;
  }

  v8 = *(v1 + 5408);
  if (v8)
  {
    free(v8);
    *(v1 + 5408) = 0;
  }

  bzero(v1, 0x310uLL);
  bzero((v1 + 800), 0x11A0uLL);
  if (*(v1 + 5436))
  {
    v9 = __nwlog_obj();
    *buf = 136446210;
    v15 = "nw_protocol_tcp_dispose";
    v10 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1889BA000, v9, 16, "%{public}s tcp->release_is_delayed set during dispose", buf, 12);
    if (!__nwlog_fault())
    {
      goto LABEL_23;
    }

    v11 = __nwlog_obj();
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_23;
    }

    *buf = 136446210;
    v15 = "nw_protocol_tcp_dispose";
    v12 = "%{public}s tcp->release_is_delayed set during dispose, backtrace limit exceeded";
LABEL_22:
    _os_log_impl(&dword_1889BA000, v11, OS_LOG_TYPE_ERROR, v12, buf, 0xCu);
LABEL_23:
    if (v10)
    {
      free(v10);
    }
  }
}

uint64_t tcp_rledbat_get_rlwin(uint64_t a1)
{
  LODWORD(v1) = *(a1 + 1956);
  v2 = *(a1 + 1968);
  v3 = v2 - v1;
  if (v2 >= v1)
  {
    v4 = v2 <= v1 ? 0 : *(a1 + 1964);
    v5 = v2 - v4;
    if (v3 >= *(a1 + 1964))
    {
      LODWORD(v1) = v5;
    }
  }

  *(a1 + 1964) = 0;
  v6 = *(a1 + 269);
  v7 = ((1 << v6) + v1) & -(1 << v6);
  if ((v1 & ((1 << v6) - 1)) == 0)
  {
    v7 = v1;
  }

  if (*(a1 + 269))
  {
    v1 = v7;
  }

  else
  {
    v1 = v1;
  }

  *(a1 + 1968) = v1;
  return v1;
}

uint64_t tcp_ledbat_after_idle(uint64_t result)
{
  **(result + 848) = 0;
  *(*(result + 848) + 4) = 0;
  *(*(result + 848) + 8) = 0;
  *(*(result + 848) + 12) = 0;
  *(result + 148) = *(sysctls + 16) * *(result + 200);
  *(result + 300) = 0;
  *(*(result + 848) + 12) = 0;
  return result;
}

void nw_protocol_tcp_wake_keepalive(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  if (*(v2 + 5352) <= 2u && (*(v2 + 5437) & 1) != 0)
  {
    nw_protocol_upcast();
    nw_protocol_retain();
    nw_queue_context_async();
  }

  else if ((*(a1 + 776) & 2) == 0 && __nwlog_is_datapath_logging_enabled())
  {
    v3 = __nwlog_tcp_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446466;
      v5 = "nw_protocol_tcp_wake_keepalive";
      v6 = 2082;
      v7 = a1 + 556;
      _os_log_impl(&dword_1889BA000, v3, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s skipping", buf, 0x16u);
    }
  }
}

void tcp_sack_doack(uint64_t a1, uint64_t a2, int a3, _DWORD *a4, _DWORD *a5)
{
  *&v89[28] = *MEMORY[0x1E69E9840];
  if (*a2)
  {
    v7 = *(a2 + 8);
  }

  else
  {
    v7 = 0;
  }

  v8 = *(a1 + 748);
  if ((v8 & 0x20400020) == 0x20000020 || *(a1 + 92) - a3 >= 0 || !*(a1 + 536))
  {
    v9 = 0;
    v10 = *(a2 + 15);
    if (!*(a2 + 15))
    {
      goto LABEL_22;
    }
  }

  else
  {
    v88[0] = *(a1 + 92);
    v88[1] = a3;
    v9 = 1;
    v10 = *(a2 + 15);
    if (!*(a2 + 15))
    {
      goto LABEL_22;
    }
  }

  v11 = *(a2 + 16);
  do
  {
    v12 = vrev32_s8(*v11);
    if (v12.i32[1] - v12.i32[0] >= 1)
    {
      v13 = *(a1 + 92);
      if (v12.i32[0] - v13 >= 1 && v12.i32[0] - a3 >= 1)
      {
        v15 = *(a1 + 96);
        v16 = v12.i32[1] - v13;
        v17 = v12.i32[1] - v15 > 0 || v16 < 1;
        if (!v17 && v12.i32[0] - v15 < 0)
        {
          *&v88[2 * v9++] = v12;
        }
      }
    }

    ++v11;
    --v10;
  }

  while (v10);
LABEL_22:
  if (!v9)
  {
    return;
  }

  if (v9 >= 6)
  {
    v78 = a5;
    v79 = a3;
    v80 = __nwlog_obj();
    if (os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
    {
      v81 = 3;
    }

    else
    {
      v81 = 2;
    }

    v86 = 136446210;
    v87 = "tcp_sack_doack";
    v82 = _os_log_send_and_compose_impl(v81, 0, 0, 0, &dword_1889BA000, v80, 16, "%{public}s Assert num_sack_blks <= (TCP_MAX_SACK + 1) failed", &v86, 12);
    if (__nwlog_should_abort())
    {
      __break(1u);
      return;
    }

    free(v82);
    a3 = v79;
    a5 = v78;
  }

  else if (v9 < 1)
  {
    goto LABEL_33;
  }

  v18 = 0;
  v19 = v9 - 1;
  v20 = v89;
  do
  {
    v21 = v18 + 1;
    if (v18 + 1 < v9)
    {
      v22 = &v88[2 * v18];
      v23 = v20;
      v24 = v19;
      do
      {
        v25 = v22[1];
        if (v25 - *v23 >= 1)
        {
          v26 = *v22;
          *v22 = *(v23 - 1);
          *(v23 - 1) = v26;
          *v23 = v25;
        }

        v23 += 2;
        --v24;
      }

      while (v24);
    }

    --v19;
    v20 += 8;
    v18 = v21;
  }

  while (v21 != v9);
  v8 = *(a1 + 748);
LABEL_33:
  if ((v8 & 0x20400020) == 0x20000020)
  {
    v27 = &v88[2 * v9];
    *a5 = *(v27 - 1);
    if (v9 >= 1)
    {
      v28 = v27 - 2;
      do
      {
        if ((*(a1 + 748) & 0x20400020) != 0x20000020)
        {
          break;
        }

        v29 = *(a1 + 2008);
        if (!v29)
        {
          goto LABEL_37;
        }

        v30 = *v28;
        v31 = v28[1];
        v32 = *(a1 + 2008);
        do
        {
          while (1)
          {
            v33 = *(v32 + 4);
            if (v31 - v33 >= 0)
            {
              break;
            }

            v32 = *(v32 + 32);
            if (!v32)
            {
              goto LABEL_45;
            }
          }

          if (v31 == v33)
          {
            tcp_segs_dosack_matched(a1, v32, v30, v7, a4);
            goto LABEL_37;
          }

          v32 = *(v32 + 40);
        }

        while (v32);
        do
        {
LABEL_45:
          v34 = v29;
          v29 = *(v29 + 32);
        }

        while (v29);
        do
        {
          while (1)
          {
LABEL_54:
            v37 = v34;
            if (v31 - *(v34 + 4) < 0)
            {
              v38 = *v34;
              if (v31 - *v34 >= 1)
              {
                if (v30 - v38 >= 1)
                {
                  v38 = *v28;
                }

                v39 = *(v34 + 8);
                v40 = *(v34 + 12);
                v85 = *v28;
                v41 = tcp_seg_sent_insert_before(a1, v34, v38, v31, v39, v40);
                if (!v41)
                {
                  goto LABEL_37;
                }

                v42 = v41;
                v84 = *(v41 + 12);
                tcp_seg_mark_sacked(a1, v41, a4);
                v43 = *(v42 + 8);
                v83 = *(v42 + 4);
                v44 = *(nw_tcp_access_globals(*(*(a1 + 80) + 224)) + 308);
                v45 = v44 - v43;
                if (v44 == v43)
                {
                  v45 = 1;
                }

                if ((v84 & 8) == 0 || (!v7 || ((v7 - v43) & 0x80000000) == 0 && v7 - v44 <= 0) && ((v46 = *(*(a1 + 80) + 496)) == 0 || (v47 = *(v46 + 1632)) == 0 || v45 >= *(v47 + 40)))
                {
                  v48 = *(a1 + 2056);
                  if (v48 < v43 || (v48 == v43 ? (v49 = v83 - *(a1 + 2060) < 1) : (v49 = 1), !v49))
                  {
                    *(a1 + 2077) |= 0x20u;
                    *(a1 + 2056) = v43;
                    *(a1 + 2060) = v83;
                    *(a1 + 2064) = v45;
                    *(a1 + 24) = 0;
                  }
                }

                v50 = *v37;
                if (v85 != *v37)
                {
                  if ((v85 - *v37) < 1)
                  {
                    v51 = *(a1 + 2008);
                    if (v51)
                    {
                      while (1)
                      {
                        while (1)
                        {
                          v52 = *(v51 + 4);
                          if (v50 - v52 >= 0)
                          {
                            break;
                          }

                          v51 = *(v51 + 32);
                          if (!v51)
                          {
                            goto LABEL_86;
                          }
                        }

                        if (v50 == v52)
                        {
                          break;
                        }

                        v51 = *(v51 + 40);
                        if (!v51)
                        {
                          goto LABEL_86;
                        }
                      }

                      tcp_segs_dosack_matched(a1, v51, v85, v7, a4);
                    }

LABEL_86:
                    if ((*(a1 + 748) & 0x20400020) != 0x20000020)
                    {
                      goto LABEL_37;
                    }
                  }

                  else if (!tcp_seg_sent_insert_before(a1, v42, *v37, v85, *(v37 + 8), *(v37 + 12)))
                  {
                    goto LABEL_37;
                  }
                }

                *v37 = v31;
                goto LABEL_37;
              }
            }

            v35 = *(v34 + 40);
            if (!v35)
            {
              break;
            }

            do
            {
              v34 = v35;
              v35 = *(v35 + 32);
            }

            while (v35);
          }

          v34 = *(v34 + 48) & 0xFFFFFFFFFFFFFFFELL;
        }

        while (v34 && *(v34 + 32) == v37);
        while (1)
        {
          v34 = *(v37 + 48) & 0xFFFFFFFFFFFFFFFELL;
          if (!v34)
          {
            break;
          }

          v36 = v37 == *(v34 + 40);
          v37 = *(v37 + 48) & 0xFFFFFFFFFFFFFFFELL;
          if (!v36)
          {
            goto LABEL_54;
          }
        }

LABEL_37:
        v28 -= 2;
      }

      while (v28 >= v88);
    }

    return;
  }

  if (*(a1 + 536))
  {
    v53 = *(a1 + 552);
  }

  else
  {
    if (*(a1 + 92) - a3 <= 0)
    {
      v53 = a3;
    }

    else
    {
      v53 = *(a1 + 92);
    }

    *(a1 + 552) = v53;
  }

  v54 = &v88[2 * v9];
  v57 = *(v54 - 2);
  v56 = v54 - 2;
  v55 = v57;
  if (v53 - v57 < 0)
  {
    if (tcp_sackhole_insert(a1, v53, v55, 0))
    {
      v60 = *v56;
      v59 = v56[1];
      v56 -= 2;
      *(a1 + 552) = v59;
      *a4 += v59 - v60;
    }

    else if (v9 >= 1)
    {
      v76 = *(a1 + 552);
      while (v76 - *v56 < 0)
      {
        v56 -= 2;
        if (v56 < v88)
        {
          goto LABEL_99;
        }
      }

      v77 = v56[1];
      if (v76 - v77 < 0)
      {
        *a4 += v77 - v76;
        *(a1 + 552) = v77;
      }
    }
  }

  else
  {
    v58 = v56[1];
    if (v53 - v58 < 0)
    {
      *a4 += v58 - v53;
      *(a1 + 552) = v58;
    }
  }

LABEL_99:
  if (v56 >= v88)
  {
    v61 = **(*(a1 + 544) + 8);
    if (v61)
    {
      do
      {
        while (1)
        {
          while (1)
          {
            v63 = *v56;
            v64 = *(v61 + 4);
            if (*v56 - v64 >= 0)
            {
              goto LABEL_121;
            }

            v65 = v56[1];
            v66 = *v61;
            v67 = v65 - *v61;
            if (v67 > 0)
            {
              break;
            }

            v61 = **(*(v61 + 24) + 8);
            if (!v61)
            {
              return;
            }
          }

          v68 = v66 - *(v61 + 8) + *(a1 + 616);
          *(a1 + 616) = v68 & ~(v68 >> 31);
          v69 = v65 - v64;
          if (v63 - v66 <= 0)
          {
            break;
          }

          if (v69 < 0)
          {
            tcp_sack_detect_reordering(a1, v61, v65, v53);
            v75 = tcp_sackhole_insert(a1, v56[1], *(v61 + 4), v61);
            if (v75)
            {
              *a4 += v56[1] - *v56;
              v73 = *(v61 + 8);
              if (v73 - v75[2] >= 1)
              {
                v75[2] = v73;
                *(a1 + 616) += v73 - *v75;
                v73 = *(v61 + 8);
              }

              if (v73 - *v56 >= 0)
              {
                v73 = *v56;
              }

              *(v61 + 4) = *v56;
              *(v61 + 8) = v73;
              v75[3] = *(v61 + 12);
            }

            else
            {
              v73 = *(v61 + 8);
            }
          }

          else
          {
            *a4 += v64 - v63;
            tcp_sack_detect_reordering(a1, v61, *(v61 + 4), v53);
            v73 = *(v61 + 8);
            if (v73 - *v56 >= 0)
            {
              v73 = *v56;
            }

            *(v61 + 4) = *v56;
            *(v61 + 8) = v73;
          }

LABEL_120:
          v74 = *v61;
          *(a1 + 616) += v73 - *v61;
          if (*v56 - v74 <= 0)
          {
            v61 = **(*(v61 + 24) + 8);
            if (v56 < v88)
            {
              return;
            }

            goto LABEL_124;
          }

LABEL_121:
          v56 -= 2;
          if (v56 < v88)
          {
            return;
          }

LABEL_124:
          if (!v61)
          {
            return;
          }
        }

        if (v69 < 0)
        {
          *a4 += v67;
          tcp_sack_detect_reordering(a1, v61, v56[1], v53);
          v73 = v56[1];
          *v61 = v73;
          if (*(v61 + 8) - v73 > 0)
          {
            v73 = *(v61 + 8);
          }

          *(v61 + 8) = v73;
          goto LABEL_120;
        }

        *a4 += v64 - v66;
        tcp_sack_detect_reordering(a1, v61, *(v61 + 4), v53);
        v71 = *(v61 + 16);
        v70 = *(v61 + 24);
        v72 = **(v70 + 8);
        if (*(a1 + 608) == v61)
        {
          *(a1 + 608) = v71;
        }

        v62 = (v71 + 24);
        if (!v71)
        {
          v62 = (a1 + 544);
        }

        *v62 = v70;
        *v70 = v71;
        nw_tcp_access_globals(*(*(a1 + 80) + 224));
        free(v61);
        --*(a1 + 530);
        atomic_fetch_add_explicit(tcp_sack_globalholes, 0xFFFFFFFF, memory_order_relaxed);
        v61 = v72;
      }

      while (v72);
    }
  }
}

_DWORD *tcp_sackhole_insert(uint64_t a1, int a2, int a3, uint64_t a4)
{
  if (*(sysctls + 136) <= *(a1 + 530) || tcp_sack_globalholes[0] >= *(sysctls + 140))
  {
    v16 = *(a1 + 1064);
    result = 0;
    if (v16)
    {
      ++*(v16 + 608);
    }
  }

  else
  {
    v8 = nw_tcp_access_globals(*(*(a1 + 80) + 224));
    result = malloc_type_malloc(**(v8 + 40), 0x6223832DuLL);
    if (result)
    {
      *result = a2;
      result[1] = a3;
      result[2] = a2;
      ++*(a1 + 530);
      atomic_fetch_add_explicit(tcp_sack_globalholes, 1u, memory_order_relaxed);
      v10 = result;
      v11 = nw_tcp_access_globals(*(*(a1 + 80) + 224));
      result = v10;
      v10[3] = *(v11 + 308);
      if (a4)
      {
        v13 = *(a4 + 16);
        v12 = (a4 + 16);
        *(v10 + 2) = v13;
        v14 = (v13 + 24);
        if (v13)
        {
          v15 = v14;
        }

        else
        {
          v15 = (a1 + 544);
        }

        *v15 = v10 + 4;
        *v12 = v10;
      }

      else
      {
        *(v10 + 2) = 0;
        v12 = *(a1 + 544);
        *v12 = v10;
        *(a1 + 544) = v10 + 4;
      }

      *(v10 + 3) = v12;
      if (!*(a1 + 608))
      {
        *(a1 + 608) = v10;
      }
    }
  }

  return result;
}

uint64_t tcp_ledbat_pre_fr(uint64_t result)
{
  if ((*(result + 750) & 0x10) != 0)
  {
    v1 = *(result + 96) - *(result + 92);
    v2 = *(result + 988);
    if (v2 <= v1)
    {
      v2 = *(result + 96) - *(result + 92);
    }
  }

  else
  {
    v1 = 0;
    v2 = *(result + 144);
    if (v2 >= *(result + 148))
    {
      v2 = *(result + 148);
    }
  }

  *(result + 992) = v1;
  v3 = *(result + 200);
  v4 = ((v3 >> 1) + (v2 >> 1)) / v3 * v3;
  v5 = 2 * v3;
  if (v4 > v5)
  {
    v5 = v4;
  }

  *(result + 152) = v5;
  if (*(result + 744) > v5)
  {
    *(result + 744) = v5;
  }

  v6 = *(*(result + 80) + 224);
  if (v6[97] > v5)
  {
    v7 = v6[104];
    if ((v7 & 0x400) != 0)
    {
      if (v6[105] > v5)
      {
        if (*(sysctls + 228) > v5)
        {
          v5 = *(sysctls + 228);
        }

        if (v5 >= *(sysctls + 116))
        {
          v5 = *(sysctls + 116);
        }

        v6[105] = v5;
      }

      v6[104] = v7 | 0x800;
    }
  }

  return result;
}

uint64_t tcp_sack_detect_reordering(uint64_t result, _DWORD *a2, int a3, int a4)
{
  v20 = *MEMORY[0x1E69E9840];
  if (a2[1] - a4 > 0)
  {
    return result;
  }

  if (*(result + 234))
  {
    return result;
  }

  v4 = a2[2];
  if (v4 - a3 >= 0)
  {
    return result;
  }

  v5 = *(result + 960);
  if (v5)
  {
    v6 = a3 - 1;
    do
    {
      if (*v5 - v6 > 0)
      {
        break;
      }

      if (*(v5 + 4) - v6 >= 0)
      {
        return result;
      }

      v5 = *(v5 + 16);
    }

    while (v5);
  }

  v7 = *(result + 1064);
  if (v7)
  {
    ++v7[124];
    v8 = *(result + 748);
    if ((v8 & 0x2000) == 0)
    {
      *(result + 748) = v8 | 0x2000;
      ++v7[121];
    }

    ++v7[122];
  }

  else
  {
    v9 = *(result + 748);
    if ((v9 & 0x2000) == 0)
    {
      *(result + 748) = v9 | 0x2000;
    }
  }

  ++*(result + 1024);
  if (a4 - v4 >= 0)
  {
    if (!a2[3])
    {
      return result;
    }

    goto LABEL_18;
  }

  v16 = result;
  v17 = a2;
  v13 = __nwlog_obj();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    v14 = 3;
  }

  else
  {
    v14 = 2;
  }

  v18 = 136446210;
  v19 = "tcp_sack_detect_reordering";
  v15 = _os_log_send_and_compose_impl(v14, 0, 0, 0, &dword_1889BA000, v13, 16, "%{public}s Assert SEQ_GEQ(snd_fack, s->rxmit) failed", &v18, 12);
  result = __nwlog_should_abort();
  if (result)
  {
    __break(1u);
    return result;
  }

  free(v15);
  result = v16;
  a2 = v17;
  if (v17[3])
  {
LABEL_18:
    v10 = result;
    v11 = a2;
    result = nw_tcp_access_globals(*(*(result + 80) + 224));
    v12 = *(result + 308) - v11[3];
    if (v12 >= 0)
    {
      if (*(v10 + 528) > v12)
      {
        LOWORD(v12) = *(v10 + 528);
      }

      v12 = v12;
      if (v12 >= (*(v10 + 204) >> 6))
      {
        v12 = *(v10 + 204) >> 6;
      }

      if (v12 <= 0xA)
      {
        LOWORD(v12) = 10;
      }

      *(v10 + 528) = v12;
    }
  }

  return result;
}

uint64_t tcp_ledbat_post_fr(uint64_t result, uint64_t a2)
{
  v2 = (result + 92);
  if (a2)
  {
    v2 = (a2 + 8);
  }

  v3 = *(result + 96) - *v2;
  v4 = *(result + 152);
  if (v3 < v4)
  {
    v5 = *(result + 200);
    if (v3 <= v5)
    {
      v3 = *(result + 200);
    }

    v4 = v3 + v5;
  }

  *(result + 148) = v4;
  *(result + 300) = 0;
  *(*(result + 848) + 12) = 0;
  v6 = *(result + 204);
  v7 = *(result + 148);
  if (v6)
  {
    v8 = 32000 * v7 / v6;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8 << (v7 < *(result + 152));
  v10 = *(*(result + 80) + 2384);
  if (v10 >= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = *(*(result + 80) + 2384);
  }

  if (v10 == -1)
  {
    v12 = v9;
  }

  else
  {
    v12 = v11;
  }

  v13 = v12 >> 12;
  *(result + 472) = v12;
  v14 = *(result + 200);
  if (v14 <= v13)
  {
    v14 = v13;
  }

  *(result + 480) = v14;
  return result;
}

uint64_t ledbat_pp_ack_rcvd(uint64_t a1, unsigned int a2)
{
  v4 = *(a1 + 80);
  v5 = *(v4 + 496);
  if (v5 && (v6 = *(v5 + 1632)) != 0)
  {
    v7 = *(v6 + 40);
  }

  else
  {
    v7 = 0;
  }

  v8 = 1916;
  if (!*(sysctls + 288))
  {
    v8 = 244;
  }

  v9 = *(a1 + v8);
  v10 = 3 * *(sysctls + 4);
  if (v10 >= 0)
  {
    v11 = 3 * *(sysctls + 4);
  }

  else
  {
    v11 = v10 + 3;
  }

  result = nw_tcp_access_globals(*(v4 + 224));
  v13 = *(a1 + 848);
  v14 = v13[1];
  if (!v14)
  {
    goto LABEL_20;
  }

  v15 = *(result + 308);
  if (v15 < v14)
  {
    v14 = 1;
    goto LABEL_20;
  }

  if (!v13[2])
  {
    v13[2] = v15;
    ++**(a1 + 848);
    v15 = *(result + 308);
    v13 = *(a1 + 848);
    v14 = v13[1];
  }

  if (v15 >= v14 + 2 * (*(a1 + 204) >> 5))
  {
LABEL_20:
    if (v9)
    {
      v18 = v7 == 0;
    }

    else
    {
      v18 = 1;
    }

    if (v18)
    {
      if (10 * *(a1 + 200) >= a2)
      {
        v19 = a2;
      }

      else
      {
        v19 = 10 * *(a1 + 200);
      }

      goto LABEL_28;
    }

    v23 = *(a1 + 148);
    v24 = *(a1 + 744);
    if (v23 < v24)
    {
      v25 = v11 >> 2;
      if (*v13)
      {
        v26 = *(sysctls + 4);
        v27 = v25 + v7;
        v28 = v9 > v26 + v7 && v9 > v27;
        if (!v28)
        {
          goto LABEL_69;
        }
      }

      else if (v9 <= v25 + v7)
      {
        v26 = *(sysctls + 4);
LABEL_69:
        v48 = *(a1 + 300) + a2;
        *(a1 + 300) = v48;
        v49 = (2 * v26) / v7;
        v50 = v49;
        v28 = v49 <= v50;
        v51 = 0.0;
        if (!v28)
        {
          v51 = 1.0;
        }

        v52 = (v50 + v51);
        if (v52 >= 0x10)
        {
          v52 = 16;
        }

        v53 = *(a1 + 200);
        if (v48 >= v53 * v52)
        {
          if (v48 / v52 >= 10 * v53)
          {
            v54 = 10 * v53;
          }

          else
          {
            v54 = v48 / v52;
          }

          *(a1 + 300) = 0;
          result = update_cwnd(a1, v54, 1);
          v13 = *(a1 + 848);
        }

        if (v13[1])
        {
          v13[1] = 0;
        }

        goto LABEL_29;
      }
    }

    v35 = *(result + 308);
    if (v14)
    {
LABEL_58:
      v37 = sysctls;
      if (*(sysctls + 4) + v7 < v9)
      {
        *(*(a1 + 848) + 12) += a2;
        v38 = *(a1 + 848);
        v39 = *(v38 + 12);
        v40 = *(a1 + 148);
        v41 = v39 >= v40;
        v42 = v39 - v40;
        if (v41)
        {
          v43 = v9 - v7;
          if (v9 < v7)
          {
            v43 = 0;
          }

          v44 = (fmin(v43 / *(v37 + 4) + -1.0, 0.5) * v40);
          *(v38 + 12) = v42;
          result = update_cwnd(a1, v44, 0);
          v45 = *(a1 + 848);
          if (*(v45 + 4))
          {
            *(v45 + 4) = v35 + 30000;
          }
        }

        goto LABEL_29;
      }

      v46 = *(a1 + 300) + a2;
      *(a1 + 300) = v46;
      v41 = v46 >= v23;
      v47 = v46 - v23;
      if (!v41)
      {
LABEL_29:
        v20 = *(a1 + 204);
        v21 = *(a1 + 148);
        if (v20)
        {
          v22 = 32000 * v21 / v20;
        }

        else
        {
          v22 = 0;
        }

        v29 = v22 << (v21 < *(a1 + 152));
        v30 = *(*(a1 + 80) + 2384);
        if (v30 >= v29)
        {
          v31 = v29;
        }

        else
        {
          v31 = *(*(a1 + 80) + 2384);
        }

        if (v30 == -1)
        {
          v32 = v29;
        }

        else
        {
          v32 = v31;
        }

        v33 = v32 >> 12;
        *(a1 + 472) = v32;
        v34 = *(a1 + 200);
        if (v34 <= v33)
        {
          v34 = v33;
        }

        *(a1 + 480) = v34;
        return result;
      }

      v19 = *(a1 + 200);
      *(a1 + 300) = v47;
LABEL_28:
      result = update_cwnd(a1, v19, 1);
      goto LABEL_29;
    }

    if (*v13)
    {
      v36 = (v35 - v13[2]) << (v23 < v24);
      v13[1] = 9 * v36 + v35;
      if (v36)
      {
        goto LABEL_56;
      }
    }

    else
    {
      v13[1] = v35;
    }

    *(*(a1 + 848) + 4) += 2 * (*(a1 + 204) >> 5);
LABEL_56:
    *(*(a1 + 848) + 8) = 0;
    v23 = *(a1 + 148);
    if (*(a1 + 744) > v23)
    {
      *(a1 + 744) = v23;
    }

    goto LABEL_58;
  }

  v16 = *(a1 + 148);
  v17 = *(a1 + 200) * *(sysctls + 16);
  if (v16 > v17)
  {
    if (*(a1 + 744) < v16)
    {
      *(a1 + 744) = v16;
    }

    *(a1 + 148) = v17;
    *(a1 + 300) = 0;
  }

  return result;
}

uint64_t tcp_ledbat_ack_rcvd(uint64_t result, uint64_t a2)
{
  v3 = *(a2 + 8) - *(result + 92);
  if (*(sysctls + 276))
  {

    return ledbat_pp_ack_rcvd(result, v3);
  }

  v4 = *(result + 148);
  v5 = *(result + 200);
  v6 = *(result + 300) + v3;
  *(result + 300) = v6;
  if (v4 >= *(result + 744))
  {
    if (v6 >= v4)
    {
      v3 = v5;
    }

    else
    {
      v3 = 0;
    }

    v8 = v6 >= v4;
    v9 = v6 - v4;
    if (!v8)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v7 = v5 << (*(result + 100) == *(result + 96));
    if (v3 >= v7)
    {
      v3 = v7;
    }

    v8 = v6 >= v4;
    v9 = v6 - v4;
    if (!v8)
    {
      goto LABEL_16;
    }
  }

  *(result + 300) = v9;
LABEL_16:
  if (v3)
  {
    v10 = result;
    update_cwnd(result, v3, 1);
    result = v10;
    v4 = *(v10 + 148);
  }

  v11 = *(result + 204);
  if (v11)
  {
    v12 = 32000 * v4 / v11;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12 << (v4 < *(result + 152));
  v14 = *(*(result + 80) + 2384);
  if (v14 >= v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = *(*(result + 80) + 2384);
  }

  if (v14 != -1)
  {
    v13 = v15;
  }

  v16 = v13 >> 12;
  *(result + 472) = v13;
  v17 = *(result + 200);
  if (v17 <= v16)
  {
    v17 = v16;
  }

  *(result + 480) = v17;
  return result;
}

uint64_t tcp_rledbat_data_rcvd(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v8 = *(a1 + 80);
  v9 = *(v8 + 496);
  if (v9 && (v10 = *(v9 + 1632)) != 0)
  {
    v11 = *(v10 + 40);
  }

  else
  {
    v11 = 0;
  }

  v12 = 1916;
  if (!*(sysctls + 288))
  {
    v12 = 244;
  }

  v13 = *(a1 + v12);
  v14 = *(a1 + 1976) >> 5;
  v15 = 3 * *(sysctls + 4);
  if (v15 >= 0)
  {
    v16 = 3 * *(sysctls + 4);
  }

  else
  {
    v16 = v15 + 3;
  }

  *(a1 + 1964) += a4;
  result = nw_tcp_access_globals(*(v8 + 224));
  v18 = *(a1 + 1936);
  if (v18)
  {
    v19 = *(result + 308);
    if (v19 >= v18)
    {
      if (!*(a1 + 1940))
      {
        *(a1 + 1940) = v19;
        ++*(a1 + 1932);
      }

      if (v19 < v18 + 2 * v14)
      {
        v20 = *(a1 + 1956);
        v21 = *(a1 + 200) * *(sysctls + 16);
        if (v20 > v21)
        {
          if (*(a1 + 1960) < v20)
          {
            *(a1 + 1960) = v20;
          }

          *(a1 + 1956) = v21;
          *(a1 + 1948) = 0;
        }

        return result;
      }
    }
  }

  if ((*(a2 + 4) + a4 - *(a1 + 1924)) < 0 && *(a3 + 4) - *(a1 + 1928) >= 0)
  {
    v32 = *(result + 308);
    if (v32 >= *(a1 + 1944))
    {
      v33 = *(a1 + 200);
      v34 = ((v33 >> 1) + (*(a1 + 1956) >> 1)) / v33 * v33;
      v35 = 2 * v33;
      if (v34 <= v35)
      {
        v34 = v35;
      }

      *(a1 + 1960) = v34;
      *(a1 + 1956) = v34;
      *(a1 + 1948) = 0;
      *(a1 + 1944) = v32 + 2 * v14;
      if (v18)
      {
        v36 = v32 + 60000;
LABEL_66:
        *(a1 + 1936) = v36;
        return result;
      }
    }

    return result;
  }

  if (v13)
  {
    v22 = v11 == 0;
  }

  else
  {
    v22 = 1;
  }

  if (v22)
  {
    v23 = 10 * *(a1 + 200);
    if (v23 >= a4)
    {
      v23 = a4;
    }

    v24 = v23 + *(a1 + 1956);
LABEL_28:
    if (v24 >= 0xFFFF << *(a1 + 269))
    {
      v24 = 0xFFFF << *(a1 + 269);
    }

    *(a1 + 1956) = v24;
    return result;
  }

  v25 = *(a1 + 1956);
  v26 = *(a1 + 1960);
  if (v25 < v26)
  {
    v27 = v16 >> 2;
    if (*(a1 + 1932))
    {
      v28 = *(sysctls + 4);
      v29 = 2 * v28;
      v30 = v27 + v11;
      if (v13 <= 2 * v28 + v11 || v13 <= v30)
      {
        goto LABEL_72;
      }
    }

    else if (v13 <= v27 + v11)
    {
      v28 = *(sysctls + 4);
      v29 = 2 * v28;
LABEL_72:
      v53 = *(a1 + 1948) + a4;
      *(a1 + 1948) = v53;
      v54 = v29 / v11;
      if (v54 <= v54)
      {
        v55 = 0.0;
      }

      else
      {
        v55 = 1.0;
      }

      if ((v54 + v55) <= 0x10)
      {
        v57 = (2 * v28) / v11;
        v58 = v57;
        if (v57 <= v57)
        {
          v59 = 0.0;
        }

        else
        {
          v59 = 1.0;
        }

        v56 = (v58 + v59);
      }

      else
      {
        v56 = 16;
      }

      v60 = *(a1 + 200);
      if (v53 >= v60 * v56)
      {
        v61 = v53 / v56;
        if (v61 >= 10 * v60)
        {
          v61 = 10 * v60;
        }

        *(a1 + 1948) = 0;
        v62 = (v25 + v61 + (v60 >> 1)) / v60 * v60;
        if (v62 >= 0xFFFF << *(a1 + 269))
        {
          v62 = 0xFFFF << *(a1 + 269);
        }

        *(a1 + 1956) = v62;
      }

      if (v18)
      {
        *(a1 + 1936) = 0;
      }

      return result;
    }
  }

  v37 = *(result + 308);
  if (!v18)
  {
    v38 = v25 >= v26 ? 60000 : 120000;
    v39 = *(a1 + 1932) ? v38 : 60000;
    v18 = v39 + v37;
    *(a1 + 1936) = v18;
    if (v25 < v26)
    {
      *(a1 + 1960) = v25;
      v26 = v25;
    }
  }

  v40 = sysctls;
  v41 = *(sysctls + 4);
  if (v41 + v11 >= v13)
  {
    v50 = *(a1 + 1948) + a4;
    *(a1 + 1948) = v50;
    v51 = v50 - v25;
    if (v50 < v25)
    {
      return result;
    }

    v52 = *(a1 + 200);
    *(a1 + 1948) = v51;
    if (v26 < v25)
    {
      *(a1 + 1960) = v25;
    }

    v24 = (v52 + v25 + (v52 >> 1)) / v52 * v52;
    goto LABEL_28;
  }

  if (*(a1 + 1944) <= v37)
  {
    v42 = *(a1 + 1952) + a4;
    *(a1 + 1952) = v42;
    v43 = v42 >= v25;
    v44 = v42 - v25;
    if (v43)
    {
      v45 = v13 - v11;
      if (v13 < v11)
      {
        v45 = 0;
      }

      *(a1 + 1952) = v44;
      v46 = v25 - (fmin(v45 / v41 + -1.0, 0.5) * v25);
      v47 = *(a1 + 200);
      v48 = v47 * *(v40 + 16);
      if (v46 <= v48)
      {
        v46 = v48;
      }

      v49 = (v46 + (v47 >> 1)) / v47 * v47;
      *(a1 + 1956) = v49;
      if (v26 > v49)
      {
        *(a1 + 1960) = v49;
      }

      if (v18)
      {
        v36 = v37 + 60000;
        goto LABEL_66;
      }
    }
  }

  return result;
}

uint64_t compute_iaj_meat(uint64_t result, unsigned int a2)
{
  v2 = *(result + 764);
  v3 = *(result + 768);
  v4 = v3 + v2;
  if ((v3 + v2) <= *(sysctls + 64))
  {
    v4 = *(sysctls + 64);
  }

  if (*(result + 760) >= 0x29u)
  {
    v5 = *(result + 762);
    v6 = a2 - v4 + v5;
    v7 = v5 >= 2;
    v8 = v5 - 2;
    if (!v7)
    {
      v8 = 0;
    }

    if (a2 <= v4)
    {
      v9 = v8;
    }

    else
    {
      v9 = v6;
    }

    v10 = *(sysctls + 108) + 100;
    if (v9 < v10)
    {
      LOWORD(v10) = v9;
    }

    *(result + 762) = v10;
  }

  *(result + 764) = (a2 - v2 + 16 * v2 + 8) >> 4;
  v11 = (a2 - v2) * (a2 - v2) - v3 * v3 + 16 * v3 * v3 + 8;
  v12 = v11 >> 4;
  if (v11 >= 0x650)
  {
    v13 = 15;
    v14 = 0x8000;
    v15 = v12;
    v12 = 0;
    do
    {
      v16 = (v14 + 2 * v12) << v13;
      if (v15 >= v16)
      {
        v17 = v14;
      }

      else
      {
        v16 = 0;
        v17 = 0;
      }

      v12 += v17;
      if (v14 < 2)
      {
        break;
      }

      --v13;
      v14 >>= 1;
      v15 -= v16;
    }

    while (v15);
    goto LABEL_22;
  }

  if (v11 < 0x20)
  {
LABEL_22:
    *(result + 768) = v12;
    return result;
  }

  if (v11 >= 0x40)
  {
    if (v11 >= 0x90)
    {
      if (v11 >= 0x100)
      {
        if (v11 >= 0x190)
        {
          if (v11 >= 0x240)
          {
            if (v11 >= 0x310)
            {
              if (v11 >= 0x400)
              {
                if (v11 >= 0x510)
                {
                  if (v12 == 100)
                  {
                    v18 = 10;
                  }

                  else
                  {
                    v18 = 9;
                  }

                  *(result + 768) = v18;
                }

                else
                {
                  *(result + 768) = 8;
                }
              }

              else
              {
                *(result + 768) = 7;
              }
            }

            else
            {
              *(result + 768) = 6;
            }
          }

          else
          {
            *(result + 768) = 5;
          }
        }

        else
        {
          *(result + 768) = 4;
        }
      }

      else
      {
        *(result + 768) = 3;
      }
    }

    else
    {
      *(result + 768) = 2;
    }
  }

  else
  {
    *(result + 768) = 1;
  }

  return result;
}

uint64_t nw_protocol_tcp_updated_path(uint64_t a1, uint64_t a2, void *a3)
{
  v170 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v133 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_tcp_updated_path";
    v134 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1889BA000, v133, 16, "%{public}s called with null protocol", buf, 12);
    v169[0] = 16;
    v168[0] = 0;
    if (!__nwlog_fault())
    {
      goto LABEL_352;
    }

    if (v169[0] != 17)
    {
      if (v168[0] != 1)
      {
        v135 = __nwlog_obj();
        v136 = v169[0];
        if (os_log_type_enabled(v135, v169[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_protocol_tcp_updated_path";
          v137 = "%{public}s called with null protocol, backtrace limit exceeded";
          goto LABEL_351;
        }

        goto LABEL_352;
      }

      backtrace_string = __nw_create_backtrace_string();
      v135 = __nwlog_obj();
      v136 = v169[0];
      v143 = os_log_type_enabled(v135, v169[0]);
      if (!backtrace_string)
      {
        if (v143)
        {
          *buf = 136446210;
          *&buf[4] = "nw_protocol_tcp_updated_path";
          v137 = "%{public}s called with null protocol, no backtrace";
          goto LABEL_351;
        }

        goto LABEL_352;
      }

      if (!v143)
      {
        goto LABEL_323;
      }

      *buf = 136446466;
      *&buf[4] = "nw_protocol_tcp_updated_path";
      *&buf[12] = 2082;
      *&buf[14] = backtrace_string;
      v144 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
      goto LABEL_322;
    }

    v135 = __nwlog_obj();
    v136 = v169[0];
    if (!os_log_type_enabled(v135, v169[0]))
    {
      goto LABEL_352;
    }

    *buf = 136446210;
    *&buf[4] = "nw_protocol_tcp_updated_path";
    v137 = "%{public}s called with null protocol";
LABEL_351:
    _os_log_impl(&dword_1889BA000, v135, v136, v137, buf, 0xCu);
    goto LABEL_352;
  }

  v6 = nw_protocol_downcast();
  if (!v6)
  {
    v138 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_tcp_updated_path";
    v134 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1889BA000, v138, 16, "%{public}s called with null tcp", buf, 12);
    v169[0] = 16;
    v168[0] = 0;
    if (!__nwlog_fault())
    {
      goto LABEL_352;
    }

    if (v169[0] != 17)
    {
      if (v168[0] != 1)
      {
        v135 = __nwlog_obj();
        v136 = v169[0];
        if (os_log_type_enabled(v135, v169[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_protocol_tcp_updated_path";
          v137 = "%{public}s called with null tcp, backtrace limit exceeded";
          goto LABEL_351;
        }

        goto LABEL_352;
      }

      backtrace_string = __nw_create_backtrace_string();
      v135 = __nwlog_obj();
      v136 = v169[0];
      v145 = os_log_type_enabled(v135, v169[0]);
      if (!backtrace_string)
      {
        if (v145)
        {
          *buf = 136446210;
          *&buf[4] = "nw_protocol_tcp_updated_path";
          v137 = "%{public}s called with null tcp, no backtrace";
          goto LABEL_351;
        }

        goto LABEL_352;
      }

      if (!v145)
      {
        goto LABEL_323;
      }

      *buf = 136446466;
      *&buf[4] = "nw_protocol_tcp_updated_path";
      *&buf[12] = 2082;
      *&buf[14] = backtrace_string;
      v144 = "%{public}s called with null tcp, dumping backtrace:%{public}s";
      goto LABEL_322;
    }

    v135 = __nwlog_obj();
    v136 = v169[0];
    if (!os_log_type_enabled(v135, v169[0]))
    {
      goto LABEL_352;
    }

    *buf = 136446210;
    *&buf[4] = "nw_protocol_tcp_updated_path";
    v137 = "%{public}s called with null tcp";
    goto LABEL_351;
  }

  if (!a3)
  {
    v139 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_tcp_updated_path";
    v134 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1889BA000, v139, 16, "%{public}s called with null path", buf, 12);
    v169[0] = 16;
    v168[0] = 0;
    if (!__nwlog_fault())
    {
      goto LABEL_352;
    }

    if (v169[0] == 17)
    {
      v135 = __nwlog_obj();
      v136 = v169[0];
      if (!os_log_type_enabled(v135, v169[0]))
      {
        goto LABEL_352;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_tcp_updated_path";
      v137 = "%{public}s called with null path";
      goto LABEL_351;
    }

    if (v168[0] != 1)
    {
      v135 = __nwlog_obj();
      v136 = v169[0];
      if (os_log_type_enabled(v135, v169[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_tcp_updated_path";
        v137 = "%{public}s called with null path, backtrace limit exceeded";
        goto LABEL_351;
      }

      goto LABEL_352;
    }

    backtrace_string = __nw_create_backtrace_string();
    v135 = __nwlog_obj();
    v136 = v169[0];
    v146 = os_log_type_enabled(v135, v169[0]);
    if (!backtrace_string)
    {
      if (v146)
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_tcp_updated_path";
        v137 = "%{public}s called with null path, no backtrace";
        goto LABEL_351;
      }

      goto LABEL_352;
    }

    if (!v146)
    {
      goto LABEL_323;
    }

    *buf = 136446466;
    *&buf[4] = "nw_protocol_tcp_updated_path";
    *&buf[12] = 2082;
    *&buf[14] = backtrace_string;
    v144 = "%{public}s called with null path, dumping backtrace:%{public}s";
LABEL_322:
    _os_log_impl(&dword_1889BA000, v135, v136, v144, buf, 0x16u);
    goto LABEL_323;
  }

  v7 = v6;
  v8 = *(v6 + 1248);
  if ((*(v6 + 776) & 2) == 0)
  {
    if (__nwlog_is_datapath_logging_enabled())
    {
      v141 = __nwlog_tcp_log();
      if (os_log_type_enabled(v141, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446466;
        *&buf[4] = "nw_protocol_tcp_updated_path";
        *&buf[12] = 2082;
        *&buf[14] = v7 + 139;
        _os_log_impl(&dword_1889BA000, v141, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s ", buf, 0x16u);
      }
    }
  }

  if (*(v7 + 667) != a3)
  {
    v9 = nw_retain(a3);
    if (*(v7 + 667))
    {
      v10 = v9;
      nw_release(*(v7 + 667));
      v9 = v10;
    }

    *(v7 + 667) = v9;
    if (nw_path_is_viable())
    {
      v11 = 0x2000;
    }

    else
    {
      v11 = 0;
    }

    v7[1359] = v7[1359] & 0xFFFFDFFF | v11;
  }

  nw_proto_tcp_notify_segmentation_offload(a1);
  v12 = *v7;
  if (*v7)
  {
    v13 = *(v12 + 496);
    if (v13 && *(v13 + 1640) == 1)
    {
      v14 = *(v13 + 1632);
      if (v14)
      {
        free(v14);
        v12 = *v7;
        *(*(*v7 + 496) + 1632) = 0;
        v13 = *(v12 + 496);
      }

      *(v13 + 1640) = 0;
    }

    *(v12 + 496) = 0;
    tcp_mtudisc(*v7);
  }

  v15 = *(v7 + 668);
  nw_protocol_get_input_handler();
  if (nw_protocol_get_parameters())
  {
    v16 = nw_parameters_copy_context();
    *(v7 + 668) = nw_path_copy_flow_registration();
    if (v16)
    {
      nw_release(v16);
    }

    if (v15)
    {
      nw_release(v15);
    }

    v17 = v7[1338];
    if ((v17 - 1) > 1)
    {
LABEL_101:
      if ((v17 | 4) == 4)
      {
        goto LABEL_281;
      }

      v55 = *(v7 + 668);
      if (*(v7 + 667))
      {
        if (!v55)
        {
          goto LABEL_184;
        }

        *v169 = 0;
        *v168 = 0;
        if (nw_path_flow_registration_get_ctl_command())
        {
          if ((v7[194] & 2) == 0)
          {
            if (__nwlog_is_datapath_logging_enabled())
            {
              v152 = __nwlog_tcp_log();
              if (os_log_type_enabled(v152, OS_LOG_TYPE_DEBUG))
              {
                *buf = 136446978;
                *&buf[4] = "nw_protocol_tcp_updated_path";
                *&buf[12] = 2082;
                *&buf[14] = v7 + 139;
                *&buf[22] = 1024;
                *v156 = *v169;
                *&v156[4] = 1024;
                *&v156[6] = *v168;
                _os_log_impl(&dword_1889BA000, v152, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s Protocol event %d=%d", buf, 0x22u);
              }
            }
          }

          v56 = *v169;
          v57 = *v168;
          while (1)
          {
            v58 = v7[314];
            if (v58 == 0xFFFF)
            {
              break;
            }

            v59 = v7[314];
            atomic_compare_exchange_strong_explicit(v7 + 314, &v59, v58 + 1, memory_order_relaxed, memory_order_relaxed);
            if (v59 == v58)
            {
              v60 = *(*(v7 + 128) + 8);
              v61 = **(v60 + 8);
              if (v61 == 30)
              {
                if (*(v7 + 158) == *MEMORY[0x1E69E99B8] && *(v7 + 159) == *(MEMORY[0x1E69E99B8] + 8))
                {
                  v62 = __nwlog_obj();
                  if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 136446210;
                    *&buf[4] = "tcp_ctlinput";
                    v63 = "%{public}s Protocol event reported for socket with faddr IN6ADDR_ANY";
LABEL_165:
                    _os_log_impl(&dword_1889BA000, v62, OS_LOG_TYPE_ERROR, v63, buf, 0xCu);
                  }

LABEL_180:
                  in_pcb_checkstate((v7 + 200), 2, 0);
                  goto LABEL_181;
                }
              }

              else
              {
                if (v61 != 2)
                {
                  v78 = __nwlog_obj();
                  if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
                  {
                    v79 = **(*(*(v7 + 128) + 8) + 8);
                    *buf = 136446466;
                    *&buf[4] = "tcp_ctlinput";
                    *&buf[12] = 1024;
                    *&buf[14] = v79;
                    _os_log_impl(&dword_1889BA000, v78, OS_LOG_TYPE_ERROR, "%{public}s Protocol event reported for unknown address family %d", buf, 0x12u);
                  }

                  goto LABEL_180;
                }

                if (!v7[319])
                {
                  v62 = __nwlog_obj();
                  if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 136446210;
                    *&buf[4] = "tcp_ctlinput";
                    v63 = "%{public}s Protocol event reported for socket with faddr INADDR_ANY";
                    goto LABEL_165;
                  }

                  goto LABEL_180;
                }
              }

              if (v56 > 0x15)
              {
                goto LABEL_180;
              }

              v76 = tcp_mtudisc;
              if (v56 != 5)
              {
                if (!*(sysctls + 164))
                {
                  if (v56 == 4)
                  {
                    goto LABEL_180;
                  }

                  goto LABEL_168;
                }

                v76 = tcp_drop_syn_sent;
                if ((v56 & 0x1E) != 0xA)
                {
                  if (v56 == 4)
                  {
                    goto LABEL_180;
                  }

                  v77 = tcp_drop_syn_sent;
                  if (v56 == 18 || v56 == 21)
                  {
LABEL_170:
                    (*(v60 + 16))();
                    v80 = *(v7 + 130);
                    if (v80[23] > 0 || -v80[24] >= 1)
                    {
                      if (__nwlog_is_datapath_logging_enabled())
                      {
                        v81 = __nwlog_obj();
                        if (os_log_type_enabled(v81, OS_LOG_TYPE_DEBUG))
                        {
                          v82 = v80[23];
                          v83 = v80[24];
                          *buf = 136446978;
                          *&buf[4] = "tcp_ctlinput";
                          *&buf[12] = 1024;
                          *&buf[14] = 0;
                          *&buf[18] = 1024;
                          *&buf[20] = v82;
                          *v156 = 1024;
                          *&v156[2] = v83;
                          _os_log_impl(&dword_1889BA000, v81, OS_LOG_TYPE_DEBUG, "%{public}s ICMP response for ineligible TCP seq num (%d, una %d max %d)", buf, 0x1Eu);
                        }
                      }

                      goto LABEL_179;
                    }

                    if (v56 != 5 || (tcp_handle_msgsize(*(v7 + 162), v57), (v7[795] & 2) == 0))
                    {
                      v84 = &tcpctlerrmap + v56;
                      goto LABEL_178;
                    }

                    if (v80[50] + 60 > v57)
                    {
                      v84 = "(@A3A==(A";
LABEL_178:
                      v77((v7 + 200), *v84);
                    }

LABEL_179:
                    (*(*(*(v7 + 128) + 8) + 24))();
                    goto LABEL_180;
                  }

LABEL_168:
                  v76 = tcp_notify;
                  if ((0xFC01FuLL >> v56))
                  {
                    goto LABEL_180;
                  }
                }
              }

              v77 = v76;
              goto LABEL_170;
            }
          }

          if (__nwlog_is_datapath_logging_enabled())
          {
            v64 = __nwlog_obj();
            if (os_log_type_enabled(v64, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136446210;
              *&buf[4] = "tcp_ctlinput";
              _os_log_impl(&dword_1889BA000, v64, OS_LOG_TYPE_DEBUG, "%{public}s PCB marked as WNT_STOPUSING, exiting early", buf, 0xCu);
            }
          }
        }

LABEL_181:
        v55 = *(v7 + 668);
      }

      if (v55 && !nw_path_is_defunct())
      {
        goto LABEL_281;
      }

LABEL_184:
      if (tcp_perf_measurement == 1)
      {
        if ((v7[194] & 2) == 0)
        {
          if (__nwlog_is_datapath_logging_enabled())
          {
            v85 = __nwlog_tcp_log();
            if (os_log_type_enabled(v85, OS_LOG_TYPE_DEBUG))
            {
              v86 = "defunct";
              v87 = *(v7 + 668);
              *&buf[4] = "nw_protocol_tcp_updated_path";
              *buf = 136446722;
              *&buf[12] = 2082;
              if (!v87)
              {
                v86 = "unregistered";
              }

              *&buf[14] = v7 + 139;
              *&buf[22] = 2082;
              *v156 = v86;
              v88 = v85;
              v89 = OS_LOG_TYPE_DEBUG;
LABEL_196:
              _os_log_impl(&dword_1889BA000, v88, v89, "%{public}s %{public}s flow is %{public}s", buf, 0x20u);
            }
          }
        }
      }

      else if ((v7[194] & 2) == 0)
      {
        v90 = __nwlog_tcp_log();
        if (os_log_type_enabled(v90, OS_LOG_TYPE_INFO))
        {
          v91 = "defunct";
          v92 = *(v7 + 668);
          *&buf[4] = "nw_protocol_tcp_updated_path";
          *buf = 136446722;
          *&buf[12] = 2082;
          if (!v92)
          {
            v91 = "unregistered";
          }

          *&buf[14] = v7 + 139;
          *&buf[22] = 2082;
          *v156 = v91;
          v88 = v90;
          v89 = OS_LOG_TYPE_INFO;
          goto LABEL_196;
        }
      }

      (*(*(v7 + 1) + 16))(v7, 1, v3);
      v93 = v7 + 96;
      v94 = v7[91];
      if ((v94 & 8) == 0)
      {
        if ((v94 & 0x8000) != 0)
        {
          if ((v7[194] & 2) == 0)
          {
            if (__nwlog_is_datapath_logging_enabled())
            {
              v100 = __nwlog_tcp_log();
              if (os_log_type_enabled(v100, OS_LOG_TYPE_DEBUG))
              {
                *buf = 136446978;
                *&buf[4] = "sosetdefunct";
                *&buf[12] = 2082;
                *&buf[14] = v7 + 139;
                *&buf[22] = 2082;
                *v156 = "process_suspended";
                *&v156[8] = 1024;
                LODWORD(v157) = 102;
                _os_log_impl(&dword_1889BA000, v100, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s level %{public}s flow is not eligible for defunct (%d)", buf, 0x26u);
              }
            }
          }

          goto LABEL_280;
        }

        v7[91] = v94 | 8;
        v7[104] |= 0x80u;
        v7[124] |= 0x80u;
        if (v7[116])
        {
          sbrelease((v7 + 116));
        }

        if (*v93)
        {
          sbrelease((v7 + 96));
        }

LABEL_224:
        if ((v7[194] & 2) == 0)
        {
          if (__nwlog_is_datapath_logging_enabled())
          {
            v150 = __nwlog_tcp_log();
            if (os_log_type_enabled(v150, OS_LOG_TYPE_DEBUG))
            {
              v151 = "is already";
              *buf = 136446978;
              *&buf[4] = "sosetdefunct";
              if ((v94 & 8) == 0)
              {
                v151 = "marked as";
              }

              *&buf[12] = 2082;
              *&buf[14] = v7 + 139;
              *&buf[22] = 2082;
              *v156 = "process_suspended";
              *&v156[8] = 2082;
              v157 = v151;
              _os_log_impl(&dword_1889BA000, v150, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s level %{public}s flow %{public}s defunct", buf, 0x2Au);
            }
          }
        }

        if ((v7[91] & 8) == 0)
        {
          if ((v7[194] & 2) == 0)
          {
            v105 = __nwlog_tcp_log();
            *buf = 136446466;
            *&buf[4] = "sodefunct";
            *&buf[12] = 2082;
            *&buf[14] = v7 + 139;
            LODWORD(v153) = 22;
            v106 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1889BA000, v105, 16, "%{public}s %{public}s improperly called sodefunct", buf, v153);
            v169[0] = 16;
            v168[0] = 0;
            if (!__nwlog_fault())
            {
              goto LABEL_278;
            }

            if (v169[0] == 17)
            {
              v107 = __nwlog_tcp_log();
              v108 = v169[0];
              if (!os_log_type_enabled(v107, v169[0]))
              {
                goto LABEL_278;
              }

              *buf = 136446466;
              *&buf[4] = "sodefunct";
              *&buf[12] = 2082;
              *&buf[14] = v7 + 139;
              v109 = "%{public}s %{public}s improperly called sodefunct";
            }

            else if (v168[0] == 1)
            {
              v125 = __nw_create_backtrace_string();
              v107 = __nwlog_tcp_log();
              v108 = v169[0];
              v126 = os_log_type_enabled(v107, v169[0]);
              if (v125)
              {
                if (v126)
                {
                  *buf = 136446722;
                  *&buf[4] = "sodefunct";
                  *&buf[12] = 2082;
                  *&buf[14] = v7 + 139;
                  *&buf[22] = 2082;
                  *v156 = v125;
                  _os_log_impl(&dword_1889BA000, v107, v108, "%{public}s %{public}s improperly called sodefunct, dumping backtrace:%{public}s", buf, 0x20u);
                }

                free(v125);
                goto LABEL_278;
              }

              if (!v126)
              {
LABEL_278:
                if (v106)
                {
                  free(v106);
                }

                goto LABEL_280;
              }

              *buf = 136446466;
              *&buf[4] = "sodefunct";
              *&buf[12] = 2082;
              *&buf[14] = v7 + 139;
              v109 = "%{public}s %{public}s improperly called sodefunct, no backtrace";
            }

            else
            {
              v107 = __nwlog_tcp_log();
              v108 = v169[0];
              if (!os_log_type_enabled(v107, v169[0]))
              {
                goto LABEL_278;
              }

              *buf = 136446466;
              *&buf[4] = "sodefunct";
              *&buf[12] = 2082;
              *&buf[14] = v7 + 139;
              v109 = "%{public}s %{public}s improperly called sodefunct, backtrace limit exceeded";
            }

            _os_log_impl(&dword_1889BA000, v107, v108, v109, buf, 0x16u);
            goto LABEL_278;
          }

LABEL_280:
          (*(*(v7 + 1) + 24))(v7, 1, v3);
LABEL_281:
          nw_protocol_get_output_handler();
          if (!nw_protocol_updated_path_is_valid())
          {
            return 1;
          }

          nw_protocol_get_output_handler();
          return nw_protocol_updated_path();
        }

        if (v7[94] < 0)
        {
          goto LABEL_280;
        }

        v110 = *v7;
        if ((v7[194] & 2) == 0)
        {
          v111 = __nwlog_tcp_log();
          if (os_log_type_enabled(v111, OS_LOG_TYPE_INFO))
          {
            v112 = **(*(v7 + 1) + 8);
            v113 = 480;
            if (v112 == 2)
            {
              v113 = 492;
            }

            v114 = inet_ntop(v112, (v110 + v113), v169, 0x40u);
            v115 = bswap32(*(v110 + 2370)) >> 16;
            v116 = **(*(v7 + 1) + 8);
            v117 = 464;
            if (v116 == 2)
            {
              v117 = 476;
            }

            v118 = inet_ntop(v116, (v110 + v117), v168, 0x40u);
            v119 = bswap32(*(v110 + 2368)) >> 16;
            v120 = v7[124];
            v121 = v7[104];
            *buf = 136448259;
            *&buf[4] = "sodefunct";
            *&buf[12] = 2082;
            *&buf[14] = v7 + 139;
            *&buf[22] = 2082;
            *v156 = "process_suspended";
            *&v156[8] = 2081;
            v157 = v114;
            v158 = 1024;
            v159 = v115;
            v160 = 2081;
            v161 = v118;
            v162 = 1024;
            v163 = v119;
            v164 = 1024;
            v165 = v120;
            v166 = 1024;
            v167 = v121;
            _os_log_impl(&dword_1889BA000, v111, OS_LOG_TYPE_INFO, "%{public}s %{public}s level %{public}s flow [TCP %{private}s:%d -> %{private}s:%d] is now defunct [rcv_fl 0x%x, snd_fl 0x%x]", buf, 0x4Cu);
          }
        }

        v7[92] |= 8u;
        if (v7[124])
        {
          sbunlock((v7 + 116));
          if ((v7[104] & 1) == 0)
          {
LABEL_242:
            v122 = *(v7 + 188);
            if ((v122 & 0x20) == 0)
            {
LABEL_243:
              *(v7 + 188) = v122 | 0x20;
              v123 = *(v7 + 4);
              if (v123)
              {
                v124 = *(v123 + 40);
                if (v124)
                {
                  v124(v7);
                }
              }

              sblock((v7 + 116));
              v7[124] |= 0x80u;
              sbunlock((v7 + 116));
              sbrelease((v7 + 116));
              v122 = *(v7 + 188);
              if ((v122 & 0x10) != 0)
              {
                goto LABEL_260;
              }

              goto LABEL_256;
            }

LABEL_255:
            if ((v122 & 0x10) != 0)
            {
LABEL_260:
              if ((v122 & 0xA) == 2)
              {
                (*(*(*(v7 + 1) + 40) + 40))(v7);
              }

              if ((*(v7 + 365) & 0x20) == 0)
              {
                *(v7 + 188) = v7[94] & 0xDFC1 | 0x2030;
                v130 = *(v7 + 4);
                if (v130)
                {
                  v131 = *(v130 + 56);
                  if (v131)
                  {
                    v131(v7);
                  }
                }
              }

              if (!*(v7 + 189))
              {
                *(v7 + 189) = 9;
              }

              if (v7[116])
              {
                sbrelease((v7 + 116));
              }

              if (*v93)
              {
                sbrelease((v7 + 96));
              }

              *(v7 + 188) |= 0x8000u;
              goto LABEL_280;
            }

LABEL_256:
            *(v7 + 188) = v122 | 0x10;
            v127 = *(v7 + 4);
            if (v127)
            {
              v128 = *(v127 + 16);
              if (v128)
              {
                v128(v7);
              }
            }

            v129 = *(v110 + 240);
            *(v7 + 189) = 53;
            user_north_signal_error(v7);
            tcp_close(v129);
            v122 = *(v7 + 188);
            goto LABEL_260;
          }
        }

        else if ((v7[104] & 1) == 0)
        {
          goto LABEL_242;
        }

        sbunlock((v7 + 96));
        v122 = *(v7 + 188);
        if ((v122 & 0x20) == 0)
        {
          goto LABEL_243;
        }

        goto LABEL_255;
      }

      if ((v7[104] & v7[124] & 0x80) != 0 || (v7[194] & 2) != 0)
      {
        goto LABEL_224;
      }

      v95 = __nwlog_tcp_log();
      *buf = 136446466;
      *&buf[4] = "sosetdefunct";
      *&buf[12] = 2082;
      *&buf[14] = v7 + 139;
      v96 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1889BA000, v95, 16, "%{public}s %{public}s SB_DROP not set", buf, 22);
      v169[0] = 16;
      v168[0] = 0;
      if (__nwlog_fault())
      {
        if (v169[0] == 17)
        {
          v97 = __nwlog_tcp_log();
          v98 = v169[0];
          if (!os_log_type_enabled(v97, v169[0]))
          {
            goto LABEL_222;
          }

          *buf = 136446466;
          *&buf[4] = "sosetdefunct";
          *&buf[12] = 2082;
          *&buf[14] = v7 + 139;
          v99 = "%{public}s %{public}s SB_DROP not set";
LABEL_220:
          v104 = v97;
LABEL_221:
          _os_log_impl(&dword_1889BA000, v104, v98, v99, buf, 0x16u);
          goto LABEL_222;
        }

        if (v168[0] != 1)
        {
          v97 = __nwlog_tcp_log();
          v98 = v169[0];
          if (!os_log_type_enabled(v97, v169[0]))
          {
            goto LABEL_222;
          }

          *buf = 136446466;
          *&buf[4] = "sosetdefunct";
          *&buf[12] = 2082;
          *&buf[14] = v7 + 139;
          v99 = "%{public}s %{public}s SB_DROP not set, backtrace limit exceeded";
          goto LABEL_220;
        }

        v101 = __nw_create_backtrace_string();
        v102 = __nwlog_tcp_log();
        v98 = v169[0];
        log = v102;
        v103 = os_log_type_enabled(v102, v169[0]);
        if (v101)
        {
          if (v103)
          {
            *buf = 136446722;
            *&buf[4] = "sosetdefunct";
            *&buf[12] = 2082;
            *&buf[14] = v7 + 139;
            *&buf[22] = 2082;
            *v156 = v101;
            _os_log_impl(&dword_1889BA000, log, v98, "%{public}s %{public}s SB_DROP not set, dumping backtrace:%{public}s", buf, 0x20u);
          }

          free(v101);
          goto LABEL_222;
        }

        if (v103)
        {
          *buf = 136446466;
          *&buf[4] = "sosetdefunct";
          *&buf[12] = 2082;
          *&buf[14] = v7 + 139;
          v99 = "%{public}s %{public}s SB_DROP not set, no backtrace";
          v104 = log;
          goto LABEL_221;
        }
      }

LABEL_222:
      if (v96)
      {
        free(v96);
      }

      goto LABEL_224;
    }

    is_traffic_mgmt_background = nw_path_is_traffic_mgmt_background();
    if ((is_traffic_mgmt_background ^ ((v7[1359] & 8) == 0)))
    {
LABEL_46:
      effective_traffic_class = nw_path_get_effective_traffic_class();
      tcp_set_traffic_class(v7, effective_traffic_class);
      should_probe_connectivity = nw_path_should_probe_connectivity();
      if ((should_probe_connectivity ^ ((v7[1359] & 0x10) == 0)))
      {
        goto LABEL_76;
      }

      v32 = should_probe_connectivity;
      if (tcp_perf_measurement == 1)
      {
        if ((v7[194] & 2) != 0)
        {
          goto LABEL_60;
        }

        if (!__nwlog_is_datapath_logging_enabled())
        {
          goto LABEL_60;
        }

        v33 = __nwlog_tcp_log();
        if (!os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_60;
        }

        v34 = "disabled";
        *&buf[4] = "nw_protocol_tcp_updated_path";
        *buf = 136446722;
        *&buf[14] = v7 + 139;
        *&buf[12] = 2082;
        if (v32)
        {
          v34 = "enabled";
        }

        *&buf[22] = 2082;
        *v156 = v34;
        v35 = v33;
        v36 = OS_LOG_TYPE_DEBUG;
      }

      else
      {
        if ((v7[194] & 2) != 0)
        {
          goto LABEL_60;
        }

        v37 = __nwlog_tcp_log();
        if (!os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
        {
          goto LABEL_60;
        }

        v38 = "disabled";
        *&buf[4] = "nw_protocol_tcp_updated_path";
        *buf = 136446722;
        *&buf[14] = v7 + 139;
        *&buf[12] = 2082;
        if (v32)
        {
          v38 = "enabled";
        }

        *&buf[22] = 2082;
        *v156 = v38;
        v35 = v37;
        v36 = OS_LOG_TYPE_INFO;
      }

      _os_log_impl(&dword_1889BA000, v35, v36, "%{public}s %{public}s probe connectivity %{public}s", buf, 0x20u);
LABEL_60:
      if (v32)
      {
        v39 = 16;
      }

      else
      {
        v39 = 0;
      }

      v7[1359] = v7[1359] & 0xFFFFFFEF | v39;
      if (!v8)
      {
        goto LABEL_76;
      }

      if (v32)
      {
        v40 = 8;
      }

      else
      {
        v40 = 0;
      }

      *(v8 + 1196) = *(v8 + 1196) & 0xFFFFFFF7 | v40;
      v41 = nw_tcp_access_globals(*(v7 + 128));
      if (g_tcp_nw_assert_context == 1)
      {
        nw_tcp_access_context(*(v7 + 128));
        nw_context_assert_queue();
      }

      *buf = 0;
      *&buf[8] = 0;
      microuptime(buf);
      v42 = *&buf[8] / 1000 + 1000 * *buf;
      if (*(v41 + 308) < v42)
      {
        *v41 = *buf;
        *(v41 + 308) = v42;
      }

      do
      {
        v43 = v7[314];
        if (v43 == 0xFFFF)
        {
          goto LABEL_76;
        }

        v44 = v7[314];
        atomic_compare_exchange_strong_explicit(v7 + 314, &v44, v43 + 1, memory_order_relaxed, memory_order_relaxed);
      }

      while (v44 != v43);
      (*(*(*(v7 + 128) + 8) + 16))();
      if (!*(v7 + 130) || in_pcb_checkstate((v7 + 200), 2, 1) == 0xFFFF)
      {
LABEL_75:
        (*(*(*(v7 + 128) + 8) + 24))();
        goto LABEL_76;
      }

      v65 = *(v7 + 130);
      if (!v32)
      {
        if (!*(v65 + 273) && ((*(v65 + 748) & 0x80) != 0 || *(v65 + 323)))
        {
          tcp_keepalive_reset(*(v7 + 130));
        }

        if (*(*(v7 + 128) + 24))
        {
          all_stats = nw_protocol_tcp_get_all_stats();
          if (all_stats)
          {
            *(all_stats + 96) &= ~1u;
          }
        }

        if (*(*(v7 + 128) + 24))
        {
          v72 = nw_protocol_tcp_get_all_stats();
          if (v72)
          {
            *(v72 + 96) &= ~2u;
          }
        }

        if (*(*(v7 + 128) + 24))
        {
          v73 = nw_protocol_tcp_get_all_stats();
          if (v73)
          {
            *(v73 + 96) &= ~4u;
          }
        }

        if (*(*(v7 + 128) + 24))
        {
          v74 = nw_protocol_tcp_get_all_stats();
          if (v74)
          {
            *(v74 + 96) &= ~8u;
          }
        }

        goto LABEL_75;
      }

      v66 = nw_tcp_access_globals(*(*(v65 + 80) + 224));
      if (*(v65 + 12) != 4 || *(v65 + 96) != *(v65 + 92) || (v67 = *(v65 + 80), *(v67 + 448) != v8) || (v68 = *(v65 + 748), (v68 & 0x80) != 0) || *(v65 + 323))
      {
        v69 = 0;
        goto LABEL_125;
      }

      v148 = v66;
      *(v65 + 748) = v68 | 0x80;
      *(v65 + 40) = *(nw_tcp_access_globals(*(v67 + 224)) + 308) - *(v65 + 64) + 10;
      if (*(v65 + 72) == 8)
      {
        *(v65 + 72) = 6;
        v149 = *(v148 + 308) + 10;
      }

      else
      {
        v149 = *(v148 + 308) + 10;
        if ((*(v65 + 68) - v149) < 1)
        {
LABEL_338:
          v69 = 1;
LABEL_125:
          if (*(*(v7 + 128) + 24))
          {
            v70 = nw_protocol_tcp_get_all_stats();
            if (v70)
            {
              *(v70 + 96) |= 1u;
            }
          }

          (*(*(*(v7 + 128) + 8) + 24))();
          if (v69)
          {
            if (*(v41 + 302))
            {
              *(v41 + 288) |= 1u;
            }

            else if ((*(v41 + 302) & 2) == 0 || *(v41 + 264) - *(v41 + 308) - 10 >= 1)
            {
              *(v41 + 284) = 1;
              *(v41 + 296) = 0;
              tcp_sched_timerlist(v41, 0xAu);
            }
          }

LABEL_76:
          v45 = nw_path_use_link_heuristics();
          if ((v45 ^ ((*(v7 + 5438) & 0x80) == 0)))
          {
            if (!v8)
            {
LABEL_100:
              v17 = v7[1338];
              goto LABEL_101;
            }

LABEL_97:
            if (*(v8 + 1224) == 255 || *(v8 + 1168) == 255)
            {
              recommended_mss = nw_path_get_recommended_mss();
              *(v8 + 8) |= 0x8000u;
              *(v8 + 72) = recommended_mss;
            }

            goto LABEL_100;
          }

          v46 = v45;
          if (tcp_perf_measurement == 1)
          {
            if ((v7[194] & 2) == 0)
            {
              if (__nwlog_is_datapath_logging_enabled())
              {
                v47 = __nwlog_tcp_log();
                if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
                {
                  v48 = "disabled";
                  *&buf[4] = "nw_protocol_tcp_updated_path";
                  *buf = 136446722;
                  *&buf[14] = v7 + 139;
                  *&buf[12] = 2082;
                  if (v46)
                  {
                    v48 = "enabled";
                  }

                  *&buf[22] = 2082;
                  *v156 = v48;
                  v49 = v47;
                  v50 = OS_LOG_TYPE_DEBUG;
LABEL_91:
                  _os_log_impl(&dword_1889BA000, v49, v50, "%{public}s %{public}s link heuristics %{public}s", buf, 0x20u);
                }
              }
            }
          }

          else if ((v7[194] & 2) == 0)
          {
            v51 = __nwlog_tcp_log();
            if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
            {
              v52 = "disabled";
              *&buf[4] = "nw_protocol_tcp_updated_path";
              *buf = 136446722;
              *&buf[14] = v7 + 139;
              *&buf[12] = 2082;
              if (v46)
              {
                v52 = "enabled";
              }

              *&buf[22] = 2082;
              *v156 = v52;
              v49 = v51;
              v50 = OS_LOG_TYPE_INFO;
              goto LABEL_91;
            }
          }

          if (v46)
          {
            v53 = 0x800000;
          }

          else
          {
            v53 = 0;
          }

          v7[1359] = v7[1359] & 0xFF7FFFFF | v53;
          if (!v8)
          {
            goto LABEL_100;
          }

          *(v8 + 1200) = *(v8 + 1200) & 0xFF7FFFFF | v53;
          goto LABEL_97;
        }

        *(v65 + 72) = 6;
        if (v149 <= 1)
        {
          v149 = 1;
        }
      }

      *(v65 + 68) = v149;
      goto LABEL_338;
    }

    v19 = is_traffic_mgmt_background;
    if (tcp_perf_measurement == 1)
    {
      if ((v7[194] & 2) != 0)
      {
        goto LABEL_36;
      }

      if (!__nwlog_is_datapath_logging_enabled())
      {
        goto LABEL_36;
      }

      v20 = __nwlog_tcp_log();
      if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_36;
      }

      v21 = (v7[1359] >> 3) & 1;
      *buf = 136446978;
      *&buf[4] = "nw_protocol_tcp_updated_path";
      *&buf[12] = 2082;
      *&buf[14] = v7 + 139;
      *&buf[22] = 1024;
      *v156 = v21;
      *&v156[4] = 1024;
      *&v156[6] = v19;
      v22 = v20;
      v23 = OS_LOG_TYPE_DEBUG;
    }

    else
    {
      if ((v7[194] & 2) != 0)
      {
        goto LABEL_36;
      }

      v24 = __nwlog_tcp_log();
      if (!os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        goto LABEL_36;
      }

      v25 = (v7[1359] >> 3) & 1;
      *buf = 136446978;
      *&buf[4] = "nw_protocol_tcp_updated_path";
      *&buf[12] = 2082;
      *&buf[14] = v7 + 139;
      *&buf[22] = 1024;
      *v156 = v25;
      *&v156[4] = 1024;
      *&v156[6] = v19;
      v22 = v24;
      v23 = OS_LOG_TYPE_INFO;
    }

    _os_log_impl(&dword_1889BA000, v22, v23, "%{public}s %{public}s traffic_mgmt_background current %d new %d", buf, 0x22u);
LABEL_36:
    if (v19)
    {
      v26 = 8;
    }

    else
    {
      v26 = 0;
    }

    v7[1359] = v7[1359] & 0xFFFFFFF7 | v26;
    v27 = v7[92];
    if (v19)
    {
      v7[92] = v27 | 0x2000;
      v28 = nw_protocol_tcp_get_all_stats();
      if (v28)
      {
        v29 = *(v28 + 128) | 1;
LABEL_44:
        *(v28 + 128) = v29;
      }
    }

    else
    {
      v7[92] = v27 & 0xFFFFDFFF;
      v28 = nw_protocol_tcp_get_all_stats();
      if (v28)
      {
        v29 = *(v28 + 128) & 0xFFFFFFFE;
        goto LABEL_44;
      }
    }

    set_tcp_stream_priority(v7);
    goto LABEL_46;
  }

  v140 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_protocol_tcp_updated_path";
  v134 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1889BA000, v140, 16, "%{public}s called with null parameters", buf, 12);
  v169[0] = 16;
  v168[0] = 0;
  if (!__nwlog_fault())
  {
    goto LABEL_352;
  }

  if (v169[0] != 17)
  {
    if (v168[0] != 1)
    {
      v135 = __nwlog_obj();
      v136 = v169[0];
      if (os_log_type_enabled(v135, v169[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_tcp_updated_path";
        v137 = "%{public}s called with null parameters, backtrace limit exceeded";
        goto LABEL_351;
      }

      goto LABEL_352;
    }

    backtrace_string = __nw_create_backtrace_string();
    v135 = __nwlog_obj();
    v136 = v169[0];
    v147 = os_log_type_enabled(v135, v169[0]);
    if (!backtrace_string)
    {
      if (v147)
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_tcp_updated_path";
        v137 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_351;
      }

      goto LABEL_352;
    }

    if (v147)
    {
      *buf = 136446466;
      *&buf[4] = "nw_protocol_tcp_updated_path";
      *&buf[12] = 2082;
      *&buf[14] = backtrace_string;
      v144 = "%{public}s called with null parameters, dumping backtrace:%{public}s";
      goto LABEL_322;
    }

LABEL_323:
    free(backtrace_string);
    goto LABEL_352;
  }

  v135 = __nwlog_obj();
  v136 = v169[0];
  if (os_log_type_enabled(v135, v169[0]))
  {
    *buf = 136446210;
    *&buf[4] = "nw_protocol_tcp_updated_path";
    v137 = "%{public}s called with null parameters";
    goto LABEL_351;
  }

LABEL_352:
  if (v134)
  {
    free(v134);
  }

  return 0;
}

uint64_t soabort(uint64_t result)
{
  v1 = *(result + 364);
  if ((v1 & 0x100) == 0)
  {
    v2 = result;
    *(result + 364) = v1 | 0x100;
    result = (**(*(result + 8) + 40))();
    if (result)
    {
      v3 = *(v2 + 8);
      if (v3)
      {
        v4 = *(v3 + 32);
        if (v4)
        {
          v4(v2, 0);
        }
      }

      return sofreelastref(v2);
    }
  }

  return result;
}

uint64_t tcp_ledbat_switch_cc(uint64_t result)
{
  **(result + 848) = 0;
  *(*(result + 848) + 4) = 0;
  *(*(result + 848) + 8) = 0;
  *(*(result + 848) + 12) = 0;
  v1 = *(result + 744);
  v2 = *(result + 152);
  if (v1 - 1 >= v2)
  {
    *(result + 744) = v2;
    v1 = v2;
  }

  v3 = *(result + 144);
  v4 = *(result + 148);
  if (v3 >= v4)
  {
    v3 = *(result + 148);
  }

  v5 = v3 >> (v4 <= v1);
  v6 = *(result + 200);
  v7 = v5 / v6;
  if (v7 <= *(sysctls + 16))
  {
    v7 = *(sysctls + 16);
  }

  *(result + 148) = v7 * v6;
  *(result + 300) = 0;
  atomic_fetch_add(dword_1ED4BF720, 1u);
  return result;
}

uint64_t tcp6_usr_bind(uint64_t *a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  if (!*a1 || *(v2 + 232) == 3)
  {
    return 22;
  }

  v4 = nw_tcp_access_globals(*(v2 + 224));
  v9 = 0;
  v10.i64[0] = 0;
  microuptime(&v9);
  v5 = v10.i32[0] / 1000 + 1000 * v9;
  if (*(v4 + 308) < v5)
  {
    *v4 = v9;
    *(v4 + 308) = v5;
  }

  if (*(a2 + 1) && (*(a2 + 1) != 30 || *(a2 + 8) == 255))
  {
    return 47;
  }

  v6 = *(v2 + 2380);
  *(v2 + 2380) = v6 & 0xFC | 2;
  if ((*(v2 + 2373) & 0x80) == 0 && !*(a2 + 8) && !*(a2 + 12))
  {
    v8 = *(a2 + 16);
    if (v8 == -65536)
    {
      v10.i64[0] = 0;
      LOWORD(v9) = 528;
      WORD1(v9) = *(a2 + 2);
      HIDWORD(v9) = *(a2 + 20);
      *(v2 + 2380) = v6 & 0xFC | 1;
      return in_pcbbind(v2, &v9);
    }

    if (!v8 && !*(a2 + 20))
    {
      *(v2 + 2380) = v6 | 3;
    }
  }

  if (*(v2 + 2370))
  {
    return 22;
  }

  if (*(v2 + 480))
  {
    return 22;
  }

  if (*(v2 + 484))
  {
    return 22;
  }

  if (*(v2 + 488))
  {
    return 22;
  }

  if (*(v2 + 492))
  {
    return 22;
  }

  v9 = 0;
  v10 = 0uLL;
  v11 = 0;
  if (*a2 != 28)
  {
    return 22;
  }

  result = (*(*(v2 + 2280) + 8))(*(v2 + 224), a2, 28, &v9, 28);
  if (!result)
  {
    if (vmaxv_u16(vmovn_s32(vtstq_s32(v10, v10))))
    {
      *(v2 + 480) = v10;
    }

    result = 0;
    *(v2 + 2370) = WORD1(v9);
  }

  return result;
}

uint64_t update_cwnd(uint64_t result, int a2, int a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = *(*(result + 80) + 496);
  if (v3 && (v4 = *(v3 + 1632)) != 0)
  {
    v5 = *(v4 + 40);
  }

  else
  {
    v5 = 0;
  }

  v6 = sysctls;
  v7 = 1916;
  if (!*(sysctls + 288))
  {
    v7 = 244;
  }

  if (v5 && (v8 = *(result + v7)) != 0)
  {
    if (v8 <= *(sysctls + 4) + v5)
    {
      v11 = *(result + 148);
      if (*(result + 744) < v11)
      {
        *(result + 744) = v11;
      }

      v10 = (v11 + a2 + (*(result + 200) >> 1)) / *(result + 200) * *(result + 200);
    }

    else
    {
      if (*(sysctls + 276))
      {
        if (a3)
        {
          v19 = a2;
          v18 = result;
          v14 = __nwlog_obj();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            v15 = 3;
          }

          else
          {
            v15 = 2;
          }

          v20 = 136446210;
          v21 = "update_cwnd";
          v17 = 12;
          v16 = _os_log_send_and_compose_impl(v15, 0, 0, 0, &dword_1889BA000, v14, 16, "%{public}s Assert is_incr == false failed", &v20, v17);
          result = __nwlog_should_abort();
          if (result)
          {
            __break(1u);
            return result;
          }

          free(v16);
          v6 = sysctls;
          result = v18;
          a2 = v19;
        }

        v9 = *(result + 148) - a2;
      }

      else
      {
        v9 = *(result + 148) - (*(result + 148) >> 3);
      }

      v12 = *(result + 200);
      if (v9 <= v12 * v6[4])
      {
        v9 = v12 * v6[4];
      }

      v10 = (v9 + (v12 >> 1)) / v12 * v12;
      if (*(result + 744) > v10)
      {
        *(result + 744) = v10;
      }
    }
  }

  else
  {
    v10 = *(result + 148) + a2;
  }

  if (v6[69])
  {
    v13 = 0xFFFF << *(result + 268);
  }

  else
  {
    v13 = ((*(result + 96) - *(result + 92)) << v6[3]) + *(result + 200) * v6[2];
  }

  if (v10 < v13)
  {
    v13 = v10;
  }

  *(result + 148) = v13;
  return result;
}

uint64_t tcp6_usr_connect(uint64_t *a1, uint64_t a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  if (!*a1)
  {
    return 22;
  }

  if (*(v2 + 232) == 3)
  {
    v3 = *(a1 + 189);
    if (*(a1 + 189))
    {
      *(a1 + 189) = 0;
      v5 = __nwlog_obj();
      v6 = a1 + 556;
      *buf = 136446722;
      *&buf[4] = "tcp6_usr_connect";
      *&buf[12] = 2082;
      *&buf[14] = a1 + 556;
      v19 = 1024;
      v20 = v3;
      v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1889BA000, v5, 16, "%{public}s %{public}s this should be handled by user_north_signal_error %{darwin.errno}d", buf, 28);
      if (__nwlog_fault())
      {
        v16 = __nwlog_obj();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446722;
          *&buf[4] = "tcp6_usr_connect";
          *&buf[12] = 2082;
          *&buf[14] = v6;
          v19 = 1024;
          v20 = v3;
          _os_log_impl(&dword_1889BA000, v16, OS_LOG_TYPE_ERROR, "%{public}s %{public}s this should be handled by user_north_signal_error %{darwin.errno}d, backtrace limit exceeded", buf, 0x1Cu);
        }
      }

      if (v7)
      {
        free(v7);
      }

      return v3;
    }

    return 22;
  }

  v9 = *(v2 + 240);
  if ((a1[46] & 0x10) != 0 && (*(sysctls + 156) & 2) != 0)
  {
    *(v9 + 748) |= 0x400000u;
  }

  v11 = nw_tcp_access_globals(a1);
  *buf = 0;
  *&buf[8] = 0;
  microuptime(buf);
  v12 = *&buf[8] / 1000 + 1000 * *buf;
  if (*(v11 + 308) < v12)
  {
    *v11 = *buf;
    *(v11 + 308) = v12;
  }

  if (*(a2 + 1) && (*(a2 + 1) != 30 || *(a2 + 8) == 255))
  {
    return 47;
  }

  if (!*(a2 + 8) && !*(a2 + 12) && *(a2 + 16) == -65536)
  {
    if ((*(v2 + 2373) & 0x80) == 0)
    {
      *&buf[8] = 0;
      *buf = 528;
      *&buf[2] = *(a2 + 2);
      *&buf[4] = *(a2 + 20);
      *(v2 + 2380) = *(v2 + 2380) & 0xFC | 1;
      v3 = tcp_connect(v9, buf);
      if (!v3)
      {
        return tcp_connect_complete(a1);
      }

      return v3;
    }

    return 22;
  }

  *(v2 + 2380) = *(v2 + 2380) & 0xFC | 2;
  v3 = tcp6_connect(v9, a2);
  if (v3)
  {
    return v3;
  }

  v13 = a1;
  v14 = *(*a1 + 240);
  (*(*(*(v14 + 80) + 2280) + 64))(*(v13 + 24));
  if ((*(v13 + 368) & 0x20) != 0)
  {
    tcp_mss(v14, 0xFFFFFFFF, 0);
    v3 = 0;
    v17 = *(v14 + 200);
    *(v14 + 144) = v17;
    *(v14 + 260) = v17;
    return v3;
  }

  return tcp_output(v14);
}

uint64_t tcp6_connect(uint64_t a1, uint64_t a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 80);
  v4 = *(v3 + 224);
  if (!*(v3 + 2370))
  {
    if (*(v3 + 480) || *(v3 + 484) || *(v3 + 488) || *(v3 + 492))
    {
      v13 = 22;
      goto LABEL_31;
    }

    v25 = a2;
    v27 = 0;
    memset(v26, 0, sizeof(v26));
    v13 = (*(*(v3 + 2280) + 8))(v4, 0, 28, v26, 28);
    if (v13)
    {
      goto LABEL_31;
    }

    if (vmaxv_u16(vmovn_s32(vtstq_s32(*&v26[1], *&v26[1]))))
    {
      *(v3 + 480) = *&v26[1];
    }

    *(v3 + 2370) = WORD1(v26[0]);
    a2 = v25;
  }

  if (*a2 != 28)
  {
    v13 = 22;
    if (v4)
    {
      goto LABEL_26;
    }

    goto LABEL_27;
  }

  if (*(a2 + 1) != 30)
  {
    v13 = 47;
    if (v4)
    {
      goto LABEL_26;
    }

LABEL_27:
    v14 = __nwlog_tcp_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = &unk_188A285CF;
      if (v4)
      {
        v15 = (v4 + 556);
      }

      LODWORD(v26[0]) = 136446466;
      *(v26 + 4) = "tcp6_connect";
      WORD2(v26[1]) = 2082;
      *(&v26[1] + 6) = v15;
      _os_log_impl(&dword_1889BA000, v14, OS_LOG_TYPE_ERROR, "%{public}s %{public}s ipv6 pcb local address lookup failed", v26, 0x16u);
    }

    goto LABEL_31;
  }

  if (!*(a2 + 2))
  {
    v13 = 49;
    if (!v4)
    {
      goto LABEL_27;
    }

LABEL_26:
    if ((*(v4 + 776) & 2) == 0)
    {
      goto LABEL_27;
    }

LABEL_31:
    tcp_drop(a1, v13);
    return v13;
  }

  *(v3 + 464) = *(a2 + 8);
  *(v3 + 2368) = *(a2 + 2);
  if (!*(v3 + 460))
  {
    v5 = inp_calc_flowhash_flow_hash++;
    *(v3 + 460) = v5;
  }

  v6 = *(a1 + 270);
  if (*(sysctls + 180) > v6)
  {
    LOBYTE(v6) = *(sysctls + 180);
  }

  v7 = (sysctls + 72);
  if ((*(v4 + 497) & 2) != 0)
  {
    v7 = (v4 + 468);
  }

  v8 = *v7;
  v9 = v6;
  v10 = 0x10000 << v6;
  if (v9 <= 0xD && v10 < v8)
  {
    do
    {
      v12 = v9 + 1;
      if (v9 > 0xC)
      {
        break;
      }

      v17 = 0x20000 << v9++;
    }

    while (v17 < v8);
  }

  else
  {
    v12 = v9;
  }

  if (v12 >= 0xE)
  {
    v18 = 14;
  }

  else
  {
    v18 = v12;
  }

  *(a1 + 270) = v18;
  *(v4 + 376) = *(v4 + 376) & 0xFFF1 | 4;
  v19 = *(a1 + 1064);
  if (v19)
  {
    ++*(v19 + 376);
  }

  *(a1 + 12) = 2;
  if (*(v4 + 24))
  {
    all_stats = nw_protocol_tcp_get_all_stats();
    if (all_stats)
    {
      *(all_stats + 136) = 2;
    }
  }

  v21 = *(a1 + 672);
  if (!v21)
  {
    v21 = *(sysctls + 184);
  }

  *(a1 + 40) = *(nw_tcp_access_globals(*(*(a1 + 80) + 224)) + 308) + v21 - *(a1 + 64);
  v22 = tcp_new_isn(a1);
  *(a1 + 112) = v22;
  *(a1 + 156) = v22;
  *(a1 + 96) = v22;
  *(a1 + 100) = v22;
  *(a1 + 92) = v22;
  if (!*(v4 + 24))
  {
    return 0;
  }

  v23 = nw_protocol_tcp_get_all_stats();
  if (v23)
  {
    *(v23 + 108) = *(a1 + 96) - *(a1 + 92);
  }

  if (!*(v4 + 24))
  {
    return 0;
  }

  v24 = nw_protocol_tcp_get_all_stats();
  v13 = 0;
  if (v24)
  {
    ++*(v24 + 60);
  }

  return v13;
}

uint64_t tcp_rtlookup6(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 496);
  if (v4)
  {
    if ((*(v4 + 1624) & 0x2000001) == 1)
    {
LABEL_11:
      v6 = *(a1 + 240);
      v7 = sysctls;
      if (*(sysctls + 80) && ((v8 = *(v4 + 1632)) == 0 || (*(v4 + 1624) & 1) != 0 && (*(v8 + 73) & 1) == 0))
      {
        v9 = *(v6 + 88) | 0x4000000;
      }

      else
      {
        v9 = *(v6 + 88) & 0xFBFFFFFF;
      }

      *(v6 + 88) = v9;
      v13 = *(v4 + 216);
      if (!v13)
      {
LABEL_53:
        if (*(v4 + 1628))
        {
          *(v6 + 88) |= 0x20000u;
        }

        return v4;
      }

      *(v6 + 88) = v9 & 0xEFFFFFFF;
      v14 = *(v6 + 80);
      v15 = *(v13 + 1192);
      if ((*(v14 + 2380) & 2) != 0)
      {
        if ((v15 & 0x400000) == 0)
        {
          goto LABEL_34;
        }

        v16 = 1208;
      }

      else
      {
        if ((v15 & 0x200000) == 0)
        {
          goto LABEL_34;
        }

        v16 = 1204;
      }

      *(v6 + 88) = v9 | 0x10000000;
      v17 = *(v13 + v16);
      if (v17 >= 0xFFFF)
      {
        v18 = 0xFFFF;
      }

      else
      {
        v18 = *(v13 + v16);
      }

      if (v17)
      {
        v19 = v18;
      }

      else
      {
        v19 = 0xFFFF;
      }

      *(v6 + 684) = v19;
LABEL_34:
      v20 = *(v6 + 336);
      if ((v20 & 0x400) != 0 || (v20 & 0x800) == 0 && *(v7 + 92) == 1) && (v21 = (*(*(v14 + 2280) + 16))(*(v14 + 224)), v20 = *(v6 + 336), (v21))
      {
        *(v6 + 336) = v20 | 0x1000;
        if (*(v6 + 2096))
        {
          if (*(v6 + 348) == 1)
          {
            *(v6 + 348) = 2;
          }

          if (*(v6 + 352) == 1)
          {
            *(v6 + 352) = 2;
          }
        }
      }

      else
      {
        *(v6 + 336) = v20 & 0xFFFFEFFF;
      }

      if (*(v6 + 12) > 3)
      {
        goto LABEL_50;
      }

      if (tcp_developer_l4s == 2)
      {
        goto LABEL_48;
      }

      v22 = *(v4 + 216);
      if (v22)
      {
        v23 = *(v22 + 1246);
        if (v23 == 2)
        {
LABEL_48:
          LOBYTE(v24) = 0;
LABEL_49:
          *(v6 + 2096) = *(v6 + 2096) & 0xFE | v24;
LABEL_50:
          os_unfair_lock_lock((v6 + 1872));
          if (!*(a1 + 448))
          {
            *(a1 + 448) = *(v4 + 216);
          }

          os_unfair_lock_unlock((v6 + 1872));
          goto LABEL_53;
        }

        LOBYTE(v24) = 1;
        if (tcp_developer_l4s == 1 || v23 == 1)
        {
          goto LABEL_49;
        }
      }

      else if (tcp_developer_l4s == 1)
      {
        LOBYTE(v24) = 1;
        goto LABEL_49;
      }

      v24 = *(sysctls + 312);
      if (v24 != 1)
      {
        v24 = (*(v6 + 751) >> 3) & 1;
      }

      goto LABEL_49;
    }

    if (*(v4 + 1640) == 1)
    {
      v5 = *(v4 + 1632);
      if (v5)
      {
        free(v5);
        v4 = *(a1 + 496);
        *(v4 + 1632) = 0;
      }

      *(v4 + 1640) = 0;
    }
  }

  *(a1 + 2152) = 7708;
  *(a1 + 2160) = *(a1 + 464);
  if ((*(a1 + 2373) & 0x40) != 0)
  {
    a2 = *(*(a1 + 440) + 1220);
  }

  bzero((a1 + 504), 0x670uLL);
  *(a1 + 704) = *(a1 + 2152);
  *(a1 + 720) = a1 + 728;
  *(a1 + 1912) = 0u;
  *(a1 + 1948) = 1;
  *(a1 + 1952) = 6;
  *(a1 + 2104) = a1 + 2112;
  *(a1 + 2113) = 2;
  *(a1 + 2128) = 1;
  *(a1 + 496) = a1 + 504;
  if (((**(a1 + 2280))(a1 + 496, a1 + 504, a2) & 0x80000000) != 0)
  {
    *(a1 + 496) = 0;
  }

  else
  {
    v4 = *(a1 + 496);
    if (v4)
    {
      goto LABEL_11;
    }
  }

  v10 = *(a1 + 240);
  v11 = *(v10 + 88);
  v4 = 0;
  if (*(sysctls + 80))
  {
    v12 = v11 | 0x4000000;
  }

  else
  {
    v12 = v11 & 0xFBFFFFFF;
  }

  *(v10 + 88) = v12;
  return v4;
}