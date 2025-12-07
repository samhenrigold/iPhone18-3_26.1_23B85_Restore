uint64_t tcp_usr_send(uint64_t *a1, char a2, uint64_t a3, uint64_t a4)
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = *a1;
  if (!*a1 || *(v4 + 232) == 3)
  {
    if (a3)
    {
      v5 = *(a3 + 80);
      if (v5)
      {
        v6 = *(a3 + 88);
        *(a3 + 80) = 0;
        *(a3 + 88) = 0;
        v5(a3, 1, v6, a4);
      }

      else
      {
        v27 = __nwlog_obj();
        *buf = 136446210;
        *&buf[4] = "__nw_frame_finalize";
        v28 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1889BA000, v27, 16, "%{public}s called with null frame->finalizer", buf, 12);
        if (__nwlog_fault())
        {
          v32 = __nwlog_obj();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446210;
            *&buf[4] = "__nw_frame_finalize";
            _os_log_impl(&dword_1889BA000, v32, OS_LOG_TYPE_ERROR, "%{public}s called with null frame->finalizer, backtrace limit exceeded", buf, 0xCu);
          }
        }

        if (v28)
        {
          free(v28);
        }
      }
    }

    if (v4)
    {
      return 41;
    }

    else
    {
      return 54;
    }
  }

  if (a4)
  {
    v11 = a4;
    v12 = *(a4 + 1) == 30;
  }

  else
  {
    v11 = 0;
    v12 = 0;
  }

  v13 = *(v4 + 240);
  v14 = nw_tcp_access_globals(a1);
  *buf = 0;
  *&buf[8] = 0;
  microuptime(buf);
  v15 = *&buf[8] / 1000 + 1000 * *buf;
  if (*(v14 + 308) < v15)
  {
    *v14 = *buf;
    *(v14 + 308) = v15;
  }

  v16 = a3;
  if ((*(a1 + 367) & 1) != 0 && (*(a1 + 417) & 0x10) == 0)
  {
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
    *&buf[4] = "tcp_usr_send";
    v31 = _os_log_send_and_compose_impl(v30, 0, 0, 0, &dword_1889BA000, v29, 16, "%{public}s Assert !(so->so_flags & SOF_MP_SUBFLOW) || (so->so_snd.sb_flags & SB_NOCOMPRESS) failed", buf, 12);
    result = __nwlog_should_abort();
    if (result)
    {
      __break(1u);
      return result;
    }

    free(v31);
    v16 = a3;
    if (a2)
    {
LABEL_18:
      if ((a1[46] & 0x20) == 0)
      {
        goto LABEL_38;
      }
    }
  }

  else if (a2)
  {
    goto LABEL_18;
  }

  *(v16 + 32) = 0;
  *(v16 + 40) = buf;
  *buf = v16;
  *&buf[8] = v16 + 32;
  v17 = *(v16 + 52);
  if (v17)
  {
    v18 = v17 - (*(v16 + 56) + *(v16 + 60));
  }

  else
  {
    v18 = 0;
  }

  sbappendstream(a1 + 96, buf, v18);
  if (v11 && v13[3] <= 1)
  {
    if (v12)
    {
      result = tcp6_connect(v13, v11);
      if (result)
      {
        return result;
      }
    }

    else
    {
      result = tcp_connect(v13, v11);
      if (result)
      {
        return result;
      }
    }

    v13[36] = 4096;
    v13[65] = 4096;
    tcp_mss(v13, 0xFFFFFFFF, 0);
  }

  if ((a2 & 2) != 0)
  {
    *(a1 + 188) |= 0x10u;
    v19 = a1[4];
    if (v19)
    {
      v20 = *(v19 + 16);
      if (v20)
      {
        v20(a1);
      }
    }

    v13 = tcp_usrclosed(v13);
  }

  if (v13)
  {
    if ((a2 & 4) != 0)
    {
      v13[22] |= 0x10000u;
      result = tcp_output(v13);
      v13[22] &= ~0x10000u;
      v21 = *(a1 + 188);
      if ((v21 & 4) == 0)
      {
        return result;
      }
    }

    else
    {
      result = tcp_output(v13);
      v21 = *(a1 + 188);
      if ((v21 & 4) == 0)
      {
        return result;
      }
    }

    goto LABEL_41;
  }

LABEL_38:
  result = 0;
  v21 = *(a1 + 188);
  if ((v21 & 4) == 0)
  {
    return result;
  }

LABEL_41:
  if ((v21 & 0x100) != 0)
  {
    return 35;
  }

  v22 = result;
  if ((a1[97] & 2) == 0)
  {
    v23 = __nwlog_tcp_log();
    v24 = a1 + 556;
    *buf = 136446466;
    *&buf[4] = "tcp_usr_send";
    *&buf[12] = 2082;
    *&buf[14] = a1 + 556;
    LODWORD(v33) = 22;
    v25 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1889BA000, v23, 16, "%{public}s %{public}s NBIO not set", buf, v33);
    if (__nwlog_fault())
    {
      v26 = __nwlog_tcp_log();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446466;
        *&buf[4] = "tcp_usr_send";
        *&buf[12] = 2082;
        *&buf[14] = v24;
        _os_log_impl(&dword_1889BA000, v26, OS_LOG_TYPE_ERROR, "%{public}s %{public}s NBIO not set, backtrace limit exceeded", buf, 0x16u);
      }
    }

    if (v25)
    {
      free(v25);
    }
  }

  return v22;
}

uint64_t __nw_protocol_tcp_finalize_output_frames_block_invoke(void *a1, uint64_t a2)
{
  v42 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    v17 = __nwlog_obj();
    *buf = 136446210;
    v35 = "__nw_frame_unclaimed_length";
    v18 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1889BA000, v17, 16, "%{public}s called with null frame", buf, 12);
    if (__nwlog_fault())
    {
      v19 = __nwlog_obj();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446210;
        v35 = "__nw_frame_unclaimed_length";
        _os_log_impl(&dword_1889BA000, v19, OS_LOG_TYPE_ERROR, "%{public}s called with null frame, backtrace limit exceeded", buf, 0xCu);
      }
    }

    if (v18)
    {
      free(v18);
    }

    goto LABEL_36;
  }

  v4 = *(a2 + 52);
  if (!v4)
  {
LABEL_36:
    v5 = 0;
    goto LABEL_37;
  }

  v5 = v4 - (*(a2 + 56) + *(a2 + 60));
  if (*(*(a1[4] + 8) + 24) == 1 && v4 != *(a2 + 56) + *(a2 + 60))
  {
    v7 = *(a2 + 186);
    v8 = *(*(a1[5] + 8) + 24);
    v9 = (*(*(*(v8 + 8) + 40) + 72))(v8, 0, a2, 0, 0);
    v10 = *(v8 + 368);
    if ((v10 & 0x30) != 0)
    {
      *(v8 + 368) = v10 & 0xFFFFFFCF;
    }

    if (v9 > 0x23 || ((1 << v9) & 0x800000011) == 0)
    {
      v12 = v9;
      v13 = *(*(a1[5] + 8) + 24);
      if (!v13 || (*(v13 + 776) & 2) == 0)
      {
        v14 = __nwlog_tcp_log();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          v15 = (v13 + 556);
          v35 = "nw_protocol_tcp_finalize_output_frames_block_invoke";
          v36 = 2082;
          *buf = 136446978;
          if (!v13)
          {
            v15 = &unk_188A285CF;
          }

          v37 = v15;
          v38 = 1024;
          v39 = v12;
          v40 = 1024;
          v41 = v5;
          _os_log_impl(&dword_1889BA000, v14, OS_LOG_TYPE_ERROR, "%{public}s %{public}s tcp_finalize_send error %d for frame of length %u", buf, 0x22u);
        }
      }

      *(*(*(a1[5] + 8) + 24) + 378) = v12;
      user_north_signal_error(*(*(a1[5] + 8) + 24));
      *(*(a1[4] + 8) + 24) = 0;
    }

    if (*(*(a1[4] + 8) + 24) == 1 && v7 < 0)
    {
      v16 = *(*(a1[5] + 8) + 24);
      if (!v16 || (*(v16 + 776) & 2) == 0)
      {
        if (__nwlog_is_datapath_logging_enabled())
        {
          v20 = __nwlog_tcp_log();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
          {
            v21 = &unk_188A285CF;
            if (v16)
            {
              v21 = (v16 + 556);
            }

            *buf = 136446466;
            v35 = "nw_protocol_tcp_finalize_output_frames_block_invoke";
            v36 = 2082;
            v37 = v21;
            _os_log_impl(&dword_1889BA000, v20, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s frame marks connection complete, marking output finished", buf, 0x16u);
          }
        }
      }

      nw_protocol_tcp_output_finished(a1[6]);
    }

    return 1;
  }

LABEL_37:
  v22 = *(*(a1[5] + 8) + 24);
  if (!v22 || (*(v22 + 776) & 2) == 0)
  {
    if (__nwlog_is_datapath_logging_enabled())
    {
      v28 = __nwlog_tcp_log();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
      {
        v29 = (v22 + 556);
        v35 = "nw_protocol_tcp_finalize_output_frames_block_invoke";
        *buf = 136446722;
        if (!v22)
        {
          v29 = &unk_188A285CF;
        }

        v36 = 2082;
        v37 = v29;
        v38 = 1024;
        v39 = v5;
        _os_log_impl(&dword_1889BA000, v28, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s dropping frame of length %u", buf, 0x1Cu);
      }
    }
  }

  if (a2)
  {
    v23 = *(a2 + 80);
    if (v23)
    {
      v24 = *(a2 + 88);
      *(a2 + 80) = 0;
      *(a2 + 88) = 0;
      v23(a2, 1, v24);
      return 1;
    }

    v30 = __nwlog_obj();
    *buf = 136446210;
    v35 = "__nw_frame_finalize";
    LODWORD(v33) = 12;
    v27 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1889BA000, v30, 16, "%{public}s called with null frame->finalizer", buf, v33);
    if (!__nwlog_fault())
    {
      goto LABEL_57;
    }

    v31 = __nwlog_obj();
    if (!os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_57;
    }

    *buf = 136446210;
    v35 = "__nw_frame_finalize";
    v32 = "%{public}s called with null frame->finalizer, backtrace limit exceeded";
    goto LABEL_56;
  }

  v26 = __nwlog_obj();
  *buf = 136446210;
  v35 = "__nw_frame_finalize";
  LODWORD(v33) = 12;
  v27 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1889BA000, v26, 16, "%{public}s called with null frame", buf, v33);
  if (__nwlog_fault())
  {
    v31 = __nwlog_obj();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v35 = "__nw_frame_finalize";
      v32 = "%{public}s called with null frame, backtrace limit exceeded";
LABEL_56:
      _os_log_impl(&dword_1889BA000, v31, OS_LOG_TYPE_ERROR, v32, buf, 0xCu);
    }
  }

LABEL_57:
  if (v27)
  {
    free(v27);
  }

  return 1;
}

BOOL sbappendstream(_DWORD *a1, void *a2, int a3)
{
  v36 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    return 0;
  }

  v3 = a1[8];
  if ((v3 & 0x80) != 0)
  {
    v10 = *a2;
    if (*a2)
    {
      *(v10 + 40) = v31;
      v11 = a2[1];
      v31[0] = v10;
      v31[1] = v11;
      *a2 = 0;
      a2[1] = a2;
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 0x40000000;
      *&buf[16] = ____nw_frame_array_finalize_block_invoke_586;
      *v33 = &__block_descriptor_tmp_12;
      v33[8] = 1;
      do
      {
        v12 = v31[0];
        if (!v31[0])
        {
          break;
        }

        nw_frame_array_remove();
      }

      while (((*&buf[16])(buf, v12) & 1) != 0);
    }

    return 0;
  }

  *a1 += a3;
  v4 = *(*(a1 + 6) + 24);
  v5 = a3;
  if ((v3 & 4) != 0)
  {
    if (v4)
    {
      v14 = a1;
      v15 = a2;
      all_stats = nw_protocol_tcp_get_all_stats();
      a2 = v15;
      a3 = v5;
      v17 = all_stats;
      a1 = v14;
      if (v17)
      {
        *(v17 + 92) = *v14;
      }
    }
  }

  else if (v4)
  {
    v6 = a1;
    v7 = a2;
    v8 = nw_protocol_tcp_get_all_stats();
    a2 = v7;
    a3 = v5;
    v9 = v8;
    a1 = v6;
    if (v9)
    {
      *(v9 + 104) = *v6;
    }
  }

  if (*a2)
  {
    v18 = 0;
    v19 = 0;
    v20 = *a2;
    do
    {
      v21 = *(v20 + 52);
      if (v21)
      {
        v21 -= *(v20 + 56) + *(v20 + 60);
      }

      v18 += v21;
      ++v19;
      v20 = *(v20 + 32);
    }

    while (v20);
    v22 = *(a1 + 3);
    *v22 = *a2;
    *(*a2 + 40) = v22;
    *(a1 + 3) = a2[1];
    *a2 = 0;
    a2[1] = a2;
    if (v18 == a3)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v18 = 0;
    v19 = 0;
    if (!a3)
    {
LABEL_21:
      v23 = a1;
      v24 = *(a1 + 6);
      if (!v24 || (*(v24 + 776) & 2) == 0)
      {
        if (__nwlog_is_datapath_logging_enabled())
        {
          v30 = v19;
          v27 = __nwlog_tcp_log();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
          {
            v28 = (v24 + 556);
            v29 = *v23;
            *buf = 136447234;
            *&buf[4] = "sbcompress";
            if (!v24)
            {
              v28 = &unk_188A285CF;
            }

            *&buf[12] = 2082;
            *&buf[14] = v28;
            *&buf[22] = 1024;
            *v33 = v30;
            *&v33[4] = 1024;
            *&v33[6] = v5;
            v34 = 1024;
            v35 = v29;
            _os_log_impl(&dword_1889BA000, v27, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s append frame count %u length %u sb_cc %u", buf, 0x28u);
          }
        }
      }

      return 1;
    }
  }

  v25 = v18;
  v26 = __nwlog_obj();
  result = os_log_type_enabled(v26, OS_LOG_TYPE_ERROR);
  if (result)
  {
    *buf = 136446722;
    *&buf[4] = "sbcompress";
    *&buf[12] = 1024;
    *&buf[14] = v5;
    *&buf[18] = 1024;
    *&buf[20] = v25;
    _os_log_impl(&dword_1889BA000, v26, OS_LOG_TYPE_ERROR, "%{public}s len_added %u != len_to_add %u", buf, 0x18u);
    return 0;
  }

  return result;
}

uint64_t tcp_offset_from_latest_tx(uint64_t a1, int a2)
{
  v4 = nw_tcp_access_globals(*(*(a1 + 80) + 224));
  v5 = *(a1 + 140);
  if (v5 - *(v4 + 308) <= 0)
  {
    v5 = *(v4 + 308);
  }

  return (v5 + a2 - *(a1 + 64));
}

BOOL nw_protocol_tcp_copy_frame_to_buffer(uint64_t a1, int a2, unsigned int a3, char *__dst)
{
  for (i = *MEMORY[0x1E69E9840]; a2 >= 1 && a1; a1 = *(a1 + 32))
  {
    v4 = *(a1 + 52);
    if (v4)
    {
      v5 = *(a1 + 56);
      v6 = *(a1 + 60);
      v7 = v4 - (v5 + v6);
      if (a2 < v7)
      {
        goto LABEL_13;
      }

      v8 = v5 - v4 + v6;
    }

    else
    {
      v8 = 0;
    }

    a2 += v8;
  }

  if ((a2 & 0x80000000) == 0)
  {
    if (!a1)
    {
      v42 = __nwlog_obj();
      *buf = 136446210;
      v47 = "__nw_frame_unclaimed_length";
      v43 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1889BA000, v42, 16, "%{public}s called with null frame", buf, 12);
      if (__nwlog_fault())
      {
        v44 = __nwlog_obj();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446210;
          v47 = "__nw_frame_unclaimed_length";
          _os_log_impl(&dword_1889BA000, v44, OS_LOG_TYPE_ERROR, "%{public}s called with null frame, backtrace limit exceeded", buf, 0xCu);
        }
      }

      if (v43)
      {
        free(v43);
      }

      goto LABEL_14;
    }

    v7 = *(a1 + 52);
    if (v7)
    {
      v7 -= *(a1 + 56) + *(a1 + 60);
    }

LABEL_13:
    v9 = v7 - a2;
    if (v7 < a2)
    {
LABEL_14:
      v10 = __nwlog_obj();
      *buf = 136446210;
      v47 = "nw_protocol_tcp_copy_frame_to_buffer";
      LODWORD(v45) = 12;
      v11 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1889BA000, v10, 16, "%{public}s invalid source frame", buf, v45);
      if (__nwlog_fault())
      {
        v23 = __nwlog_obj();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446210;
          v47 = "nw_protocol_tcp_copy_frame_to_buffer";
          v24 = "%{public}s invalid source frame, backtrace limit exceeded";
LABEL_63:
          _os_log_impl(&dword_1889BA000, v23, OS_LOG_TYPE_ERROR, v24, buf, 0xCu);
          goto LABEL_64;
        }
      }

      goto LABEL_64;
    }

    if (a3 < 1)
    {
      return a3 == 0;
    }

    if (v9 >= a3)
    {
      v12 = a3;
    }

    else
    {
      v12 = v9;
    }

    if (v7 == a2)
    {
LABEL_21:
      v13 = __nwlog_obj();
      result = os_log_type_enabled(v13, OS_LOG_TYPE_INFO);
      if (!result)
      {
        return result;
      }

      *buf = 136446210;
      v47 = "nw_protocol_tcp_copy_frame_to_buffer";
      goto LABEL_62;
    }

    v16 = a3;
    if ((*(a1 + 204) & 2) == 0)
    {
      v17 = *(a1 + 112);
      if (!v17 || (*(a1 + 204) & 0x100) != 0 && *MEMORY[0x1E6977EF8] && ((v18 = a1, v19 = a2, v20 = __dst, !(*MEMORY[0x1E6977EF8])()) || (a2 = v19, __dst = v20, a1 = v18, (v17 = *(v18 + 112)) == 0)))
      {
LABEL_60:
        v13 = __nwlog_obj();
        result = os_log_type_enabled(v13, OS_LOG_TYPE_INFO);
        if (!result)
        {
          return result;
        }

        *buf = 136446210;
        v47 = "nw_protocol_tcp_copy_frame_to_buffer";
LABEL_62:
        _os_log_impl(&dword_1889BA000, v13, OS_LOG_TYPE_INFO, "%{public}s source buffer is no longer valid", buf, 0xCu);
        return 0;
      }

      v21 = a1;
      v22 = __dst;
      memcpy(__dst, (v17 + *(a1 + 56) + a2), v12);
LABEL_38:
      a3 = v16 - v12;
      v26 = *(v21 + 32);
      if (v26)
      {
        v27 = *(v26 + 52);
        if (v27)
        {
          v27 -= *(v26 + 56) + *(v26 + 60);
        }

        if (a3 >= 1)
        {
          v28 = &v22[v12];
          v29 = MEMORY[0x1E6977EF8];
          while (1)
          {
            v30 = v27 >= a3 ? a3 : v27;
            if (!v27)
            {
              goto LABEL_21;
            }

            v31 = a3;
            if ((*(v26 + 204) & 2) != 0)
            {
              if (!*(v26 + 96))
              {
                goto LABEL_67;
              }

              v33 = nw_dispatch_data_copyout_from_offset();
              if (v33 != v30)
              {
                v36 = v33;
                LODWORD(v12) = v30;
                goto LABEL_70;
              }
            }

            else
            {
              v32 = *(v26 + 112);
              if (!v32)
              {
                goto LABEL_60;
              }

              if ((*(v26 + 204) & 0x100) != 0)
              {
                if (*v29)
                {
                  if (!(*v29)(v26, *(v26 + 88)))
                  {
                    goto LABEL_60;
                  }

                  v32 = *(v26 + 112);
                  if (!v32)
                  {
                    goto LABEL_60;
                  }
                }
              }

              memcpy(v28, (v32 + *(v26 + 56)), v30);
            }

            a3 = v31 - v30;
            v26 = *(v26 + 32);
            if (v26)
            {
              v27 = *(v26 + 52);
              if (v27)
              {
                v27 -= *(v26 + 56) + *(v26 + 60);
              }

              v28 += v30;
              if (a3 > 0)
              {
                continue;
              }
            }

            return a3 == 0;
          }
        }
      }

      return a3 == 0;
    }

    if (*(a1 + 96))
    {
      v21 = a1;
      v22 = __dst;
      v25 = nw_dispatch_data_copyout_from_offset();
      if (v25 == v12)
      {
        goto LABEL_38;
      }

      v36 = v25;
LABEL_70:
      v37 = __nwlog_obj();
      *buf = 136446722;
      v47 = "nw_protocol_tcp_copy_frame_to_buffer";
      v48 = 2048;
      v49 = v36;
      v50 = 1024;
      v51 = v12;
      v38 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1889BA000, v37, 16, "%{public}s Copied %zu out of expected %u bytes", buf, 28);
      if (__nwlog_fault())
      {
        v40 = __nwlog_obj();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446722;
          v47 = "nw_protocol_tcp_copy_frame_to_buffer";
          v48 = 2048;
          v49 = v36;
          v50 = 1024;
          v51 = v12;
          _os_log_impl(&dword_1889BA000, v40, OS_LOG_TYPE_ERROR, "%{public}s Copied %zu out of expected %u bytes, backtrace limit exceeded", buf, 0x1Cu);
        }
      }

      if (!v38)
      {
LABEL_82:
        a3 = 1;
        return a3 == 0;
      }

      v41 = v38;
    }

    else
    {
LABEL_67:
      v34 = __nwlog_obj();
      *buf = 136446210;
      v47 = "nw_protocol_tcp_copy_frame_to_buffer";
      v35 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1889BA000, v34, 16, "%{public}s Failed to extract data from frame", buf, 12);
      if (__nwlog_fault())
      {
        v39 = __nwlog_obj();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446210;
          v47 = "nw_protocol_tcp_copy_frame_to_buffer";
          _os_log_impl(&dword_1889BA000, v39, OS_LOG_TYPE_ERROR, "%{public}s Failed to extract data from frame, backtrace limit exceeded", buf, 0xCu);
        }
      }

      if (!v35)
      {
        goto LABEL_82;
      }

      v41 = v35;
    }

    free(v41);
    goto LABEL_82;
  }

  v15 = __nwlog_obj();
  *buf = 136446210;
  v47 = "nw_protocol_tcp_copy_frame_to_buffer";
  v11 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1889BA000, v15, 16, "%{public}s source_offset < 0", buf, 12);
  if (__nwlog_fault())
  {
    v23 = __nwlog_obj();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v47 = "nw_protocol_tcp_copy_frame_to_buffer";
      v24 = "%{public}s source_offset < 0, backtrace limit exceeded";
      goto LABEL_63;
    }
  }

LABEL_64:
  if (v11)
  {
    free(v11);
  }

  return 0;
}

uint64_t tcp_cubic_cwnd_init_or_reset(uint64_t result)
{
  v24 = *MEMORY[0x1E69E9840];
  v1 = *(result + 848);
  if (!v1)
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

    v22 = 136446210;
    v23 = "tcp_cubic_cwnd_init_or_reset";
    v21 = 12;
    v20 = _os_log_send_and_compose_impl(v19, 0, 0, 0, &dword_1889BA000, v18, 16, "%{public}s Assert tp->t_ccstate != NULL failed", &v22, v21);
    result = __nwlog_should_abort();
    if (result)
    {
      __break(1u);
      return result;
    }

    free(v20);
    result = v17;
    v1 = *(v17 + 848);
  }

  *v1 = 0;
  *(*(result + 848) + 4) = 0;
  *(*(result + 848) + 8) = 0;
  *(*(result + 848) + 12) = 0;
  *(*(result + 848) + 16) = 0;
  *(*(result + 848) + 28) = 0;
  v2 = sysctls;
  if (*(sysctls + 280))
  {
    v3 = *(sysctls + 16);
  }

  else
  {
    v3 = 10;
  }

  v4 = *(result + 200);
  *(result + 148) = v4 * v3;
  *(result + 988) = 0;
  *(result + 980) = 0;
  *(result + 972) = 0;
  *(result + 759) = 0;
  *(result + 300) = 0;
  if (*(v2 + 280))
  {
    v5 = *(v2 + 16);
  }

  else
  {
    v5 = 10;
  }

  v6 = (v4 * v5);
  v7 = *(result + 152);
  if (*(*(*(result + 80) + 248) + 24) <= v6 && v7 <= 0x3FFFBFFF)
  {
    v7 = 1073725440;
    *(result + 152) = 1073725440;
  }

  **(result + 848) = v7;
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

void calculate_tcp_clock(uint64_t a1)
{
  v3 = 0;
  v4 = 0;
  microuptime(&v3);
  v2 = v4 / 1000 + 1000 * v3;
  if (*(a1 + 308) < v2)
  {
    *a1 = v3;
    *(a1 + 308) = v2;
  }
}

void tcp_input(void *a1, uint64_t a2, uint64_t a3, _BYTE *a4, _BYTE *a5, BOOL *a6)
{
  v7 = v6;
  v842 = *MEMORY[0x1E69E9840];
  v13 = nw_frame_array_first();
  v815 = 0;
  v14 = *(a3 + 240);
  v15 = *(a3 + 224);
  v814 = 0;
  v813 = 0;
  memset(v812, 0, sizeof(v812));
  v809 = v13;
  v810 = a6;
  if (v13)
  {
    v16 = *(v13 + 186) & 3;
    goto LABEL_3;
  }

  v796 = v14;
  v121 = a1;
  v122 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "__nw_frame_get_ecn_flag";
  v123 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1889BA000, v122, 16, "%{public}s called with null frame", buf, 12);
  LOBYTE(v837) = 16;
  type[0] = OS_LOG_TYPE_DEFAULT;
  if (__nwlog_fault())
  {
    if (v837 == 17)
    {
      v124 = __nwlog_obj();
      v125 = v837;
      if (os_log_type_enabled(v124, v837))
      {
        *buf = 136446210;
        *&buf[4] = "__nw_frame_get_ecn_flag";
        v126 = "%{public}s called with null frame";
LABEL_218:
        v131 = v124;
        v132 = v125;
LABEL_219:
        _os_log_impl(&dword_1889BA000, v131, v132, v126, buf, 0xCu);
      }
    }

    else if (type[0] == OS_LOG_TYPE_INFO)
    {
      backtrace_string = __nw_create_backtrace_string();
      v128 = __nwlog_obj();
      v129 = v837;
      v130 = os_log_type_enabled(v128, v837);
      if (backtrace_string)
      {
        if (v130)
        {
          *buf = 136446466;
          *&buf[4] = "__nw_frame_get_ecn_flag";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_1889BA000, v128, v129, "%{public}s called with null frame, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_220;
      }

      if (v130)
      {
        *buf = 136446210;
        *&buf[4] = "__nw_frame_get_ecn_flag";
        v126 = "%{public}s called with null frame, no backtrace";
        v131 = v128;
        v132 = v129;
        goto LABEL_219;
      }
    }

    else
    {
      v124 = __nwlog_obj();
      v125 = v837;
      if (os_log_type_enabled(v124, v837))
      {
        *buf = 136446210;
        *&buf[4] = "__nw_frame_get_ecn_flag";
        v126 = "%{public}s called with null frame, backtrace limit exceeded";
        goto LABEL_218;
      }
    }
  }

LABEL_220:
  if (v123)
  {
    free(v123);
  }

  v16 = 0;
  a1 = v121;
  v14 = v796;
  v7 = v6;
LABEL_3:
  v806 = a2;
  if (!a2)
  {
    v805 = 0;
    v17 = 0;
    goto LABEL_15;
  }

  if (*(a2 + 1224) == 255 || *(a2 + 1168) == 255)
  {
    v17 = 1;
  }

  else
  {
    if (*(a2 + 1216) == 3)
    {
      v17 = 0;
      LODWORD(a2) = 0;
      v805 = 1;
      goto LABEL_15;
    }

    v17 = 0;
    if (*(a2 + 1176) == 3)
    {
      v805 = 1;
      LODWORD(a2) = 0;
      goto LABEL_15;
    }
  }

  v805 = 0;
  LODWORD(a2) = *(a2 + 1212) == 2 || *(a2 + 1172) == 2;
LABEL_15:
  v811 = 0;
  v18 = *(a3 + 2380);
  if (a5)
  {
    *a5 = 0;
  }

  v19 = nw_tcp_access_globals(*(*(v14 + 80) + 224));
  do
  {
    v20 = *(a3 + 456);
    if (v20 == 0xFFFF)
    {
      break;
    }

    v21 = *(a3 + 456);
    atomic_compare_exchange_strong_explicit((a3 + 456), &v21, v20 + 1, memory_order_relaxed, memory_order_relaxed);
  }

  while (v21 != v20);
  v22 = v809;
  if (!v809 || !v14)
  {
    goto LABEL_33;
  }

  v23 = *(v809 + 112);
  if (!v23)
  {
LABEL_29:
    if ((*(v22 + 204) & 0x100) != 0 && *MEMORY[0x1E6977EF8] && ((*MEMORY[0x1E6977EF8])(v22, *(v22 + 88)) & 1) == 0)
    {
      *(v14 + 1064) = 0;
    }

LABEL_33:
    v34 = *(v14 + 1064);
    if (v34)
    {
      ++*(v34 + 152);
      ++*(v34 + 232);
    }

    in_pcb_checkstate(a3, 2, 1);
    v35 = v810;
    if (v15 && (*(v15 + 776) & 2) != 0)
    {
      goto LABEL_55;
    }

    v36 = __nwlog_tcp_log();
    if (!os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
    {
      goto LABEL_55;
    }

    v37 = &unk_188A285CF;
    if (v15)
    {
      v37 = (v15 + 556);
    }

    *buf = 136446466;
    *&buf[4] = "tcp_input";
    *&buf[12] = 2082;
    *&buf[14] = v37;
    v38 = "%{public}s %{public}s failed to get tcp header";
    v39 = v36;
    v40 = OS_LOG_TYPE_INFO;
LABEL_53:
    v45 = 22;
LABEL_54:
    _os_log_impl(&dword_1889BA000, v39, v40, v38, buf, v45);
LABEL_55:
    v46 = 0;
    goto LABEL_56;
  }

  v800 = v18;
  if ((*(v809 + 204) & 0x100) != 0 && *MEMORY[0x1E6977EF8])
  {
    v24 = a3;
    v25 = a1;
    v26 = v15;
    v27 = a4;
    v28 = v7;
    v29 = v19;
    v30 = (*MEMORY[0x1E6977EF8])(v809, *(v809 + 88));
    v19 = v29;
    v7 = v28;
    a4 = v27;
    v15 = v26;
    a1 = v25;
    a3 = v24;
    v18 = v800;
    v22 = v809;
    if (v30)
    {
      v31 = *(v809 + 112);
      if (v31)
      {
        v32 = v31 + *(v809 + 56);
        LODWORD(v31) = *(v809 + 56);
        v33 = *(v809 + 52);
        if (!v33)
        {
          goto LABEL_43;
        }

        goto LABEL_42;
      }
    }

    goto LABEL_29;
  }

  v31 = *(v809 + 56);
  v32 = v23 + v31;
  v33 = *(v809 + 52);
  if (!v33)
  {
LABEL_43:
    v42 = *(v14 + 1064);
    if (v42)
    {
      ++*(v42 + 152);
      ++*(v42 + 368);
    }

    v35 = v810;
    if (v806)
    {
      atomic_fetch_add((v806 + 1016), 1uLL);
    }

    in_pcb_checkstate(a3, 2, 1);
    if (v15 && (*(v15 + 776) & 2) != 0)
    {
      goto LABEL_55;
    }

    v43 = __nwlog_tcp_log();
    if (!os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_55;
    }

    v44 = &unk_188A285CF;
    if (v15)
    {
      v44 = (v15 + 556);
    }

    *buf = 136446466;
    *&buf[4] = "tcp_input";
    *&buf[12] = 2082;
    *&buf[14] = v44;
    v38 = "%{public}s %{public}s buffer smaller than tcp header";
    v39 = v43;
    v40 = OS_LOG_TYPE_ERROR;
    goto LABEL_53;
  }

LABEL_42:
  v41 = v33 - (v31 + *(v22 + 60));
  if (v41 <= 19)
  {
    goto LABEL_43;
  }

  v787 = v17;
  v50 = (*(v32 + 12) >> 2) & 0x3C;
  v51 = *(v32 + 12) >= 0x50u && v41 >= v50;
  if (!v51)
  {
    v52 = *(v14 + 1064);
    if (v52)
    {
      ++*(v52 + 152);
      ++*(v52 + 360);
    }

    v35 = v810;
    if (v806)
    {
      atomic_fetch_add((v806 + 1016), 1uLL);
    }

    in_pcb_checkstate(a3, 2, 1);
    if (v15 && (*(v15 + 776) & 2) != 0)
    {
      goto LABEL_55;
    }

    v53 = __nwlog_tcp_log();
    if (!os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_55;
    }

    v54 = (v15 + 556);
    *&buf[4] = "tcp_input";
    *buf = 136446722;
    if (!v15)
    {
      v54 = &unk_188A285CF;
    }

    *&buf[12] = 2082;
    *&buf[14] = v54;
    *&buf[22] = 1024;
    *v820 = v50;
    v38 = "%{public}s %{public}s offset does not make any sense: %u";
    v39 = v53;
    v40 = OS_LOG_TYPE_ERROR;
    v45 = 28;
    goto LABEL_54;
  }

  v783 = v32;
  v784 = v19;
  __memcpy_chk();
  if ((*(v809 + 204) & 0x100) != 0 && *MEMORY[0x1E6977EF8] && ((*MEMORY[0x1E6977EF8])(v809, *(v809 + 88)) & 1) == 0)
  {
    v35 = v810;
    v133 = v14;
    v134 = *(v14 + 1064);
    if (v134)
    {
      ++*(v134 + 152);
    }

    in_pcb_checkstate(a3, 2, 1);
    if (!v15 || (*(v15 + 776) & 2) == 0)
    {
      v135 = __nwlog_tcp_log();
      if (os_log_type_enabled(v135, OS_LOG_TYPE_INFO))
      {
        v136 = &unk_188A285CF;
        if (v15)
        {
          v136 = (v15 + 556);
        }

        *buf = 136446466;
        *&buf[4] = "tcp_input";
        *&buf[12] = 2082;
        *&buf[14] = v136;
        _os_log_impl(&dword_1889BA000, v135, OS_LOG_TYPE_INFO, "%{public}s %{public}s buffer no longer valid", buf, 0x16u);
      }
    }

    v46 = 0;
    *(v133 + 1064) = 0;
    goto LABEL_56;
  }

  v794 = a1;
  v795 = v14;
  v55 = *a1;
  v799 = v50;
  v786 = v16;
  v782 = a2;
  if (v55)
  {
    v56 = *(v55 + 204);
    if ((v56 & 0x80) == 0)
    {
      v797 = 0;
      LODWORD(v57) = 0;
      v58 = 0;
      v59 = (v15 + 556);
      if (!v15)
      {
        v59 = &unk_188A285CF;
      }

      v792 = v59;
      v60 = 1;
      while (1)
      {
        if ((*(v55 + 204) & 0x80000000) == 0)
        {
          if (v60)
          {
            goto LABEL_105;
          }

          goto LABEL_101;
        }

        if ((v60 & 1) == 0)
        {
          break;
        }

        if (v15 && (*(v15 + 776) & 2) != 0)
        {
          v797 = 1;
LABEL_93:
          v63 = *(v55 + 52);
          if (v63)
          {
            goto LABEL_106;
          }

          goto LABEL_83;
        }

        v62 = __nwlog_tcp_log();
        v797 = 1;
        if (os_log_type_enabled(v62, OS_LOG_TYPE_INFO))
        {
          *buf = 136446466;
          *&buf[4] = "tcp_compute_segment_length";
          *&buf[12] = 2082;
          *&buf[14] = v792;
          v797 = 1;
          _os_log_impl(&dword_1889BA000, v62, OS_LOG_TYPE_INFO, "%{public}s %{public}s first frame is wake packet", buf, 0x16u);
          goto LABEL_93;
        }

LABEL_105:
        v63 = *(v55 + 52);
        if (v63)
        {
LABEL_106:
          v61 = v63 - (*(v55 + 56) + *(v55 + 60));
          goto LABEL_84;
        }

LABEL_83:
        v61 = 0;
LABEL_84:
        v60 = 0;
        v57 = (v61 + v57);
        v55 = *(v55 + 32);
        ++v58;
        if (!v55)
        {
          goto LABEL_254;
        }
      }

      if (!v15 || (*(v15 + 776) & 2) == 0)
      {
        v64 = __nwlog_tcp_log();
        if (os_log_type_enabled(v64, OS_LOG_TYPE_INFO))
        {
          *buf = 136446466;
          *&buf[4] = "tcp_compute_segment_length";
          *&buf[12] = 2082;
          *&buf[14] = v792;
          _os_log_impl(&dword_1889BA000, v64, OS_LOG_TYPE_INFO, "%{public}s %{public}s frame is wake packet", buf, 0x16u);
        }
      }

      *(v55 + 204) &= ~0x8000u;
      if (*v794)
      {
        *(*v794 + 204) |= 0x8000u;
        v797 = 1;
LABEL_101:
        v65 = a4;
        v66 = v15;
        if ((*(v55 + 204) & 0x80) != 0)
        {
          *(v55 + 196) -= v799;
        }

        v67 = *(v55 + 56) + v799;
        v68 = *(v55 + 60);
        if (v67 > *(v55 + 52) - v68)
        {
          v85 = __nwlog_obj();
          if (os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
          {
            v86 = *(v55 + 52);
            *buf = 136446978;
            *&buf[4] = "__nw_frame_claim_internal";
            *&buf[12] = 1024;
            *&buf[14] = v67;
            *&buf[18] = 1024;
            *&buf[20] = v86;
            *v820 = 1024;
            *&v820[2] = v68;
            _os_log_impl(&dword_1889BA000, v85, OS_LOG_TYPE_ERROR, "%{public}s Claiming bytes failed because start (%u) is beyond end (%u - %u)", buf, 0x1Eu);
          }

          if (!v15 || (v35 = v810, (*(v15 + 776) & 2) == 0))
          {
            v87 = __nwlog_tcp_log();
            v88 = *(v55 + 52);
            if (v88)
            {
              v88 -= *(v55 + 56) + *(v55 + 60);
            }

            *buf = 136446978;
            *&buf[4] = "tcp_compute_segment_length";
            *&buf[12] = 2082;
            *&buf[14] = v792;
            *&buf[22] = 1024;
            *v820 = v88;
            *&v820[4] = 1024;
            *&v820[6] = v799;
            LODWORD(v766) = 34;
            v89 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1889BA000, v87, 16, "%{public}s %{public}s chained frame len %u is smaller than TCP header size %u", buf, v766);
            type[0] = OS_LOG_TYPE_ERROR;
            v818 = 0;
            v35 = v810;
            if (__nwlog_fault())
            {
              if (type[0] != OS_LOG_TYPE_FAULT)
              {
                if (v818 == 1)
                {
                  v97 = __nw_create_backtrace_string();
                  v90 = __nwlog_tcp_log();
                  v91 = type[0];
                  v98 = os_log_type_enabled(v90, type[0]);
                  if (v97)
                  {
                    if (v98)
                    {
                      v99 = *(v55 + 52);
                      if (v99)
                      {
                        v99 -= *(v55 + 56) + *(v55 + 60);
                      }

                      *buf = 136447234;
                      *&buf[4] = "tcp_compute_segment_length";
                      *&buf[12] = 2082;
                      *&buf[14] = v792;
                      *&buf[22] = 1024;
                      *v820 = v99;
                      *&v820[4] = 1024;
                      *&v820[6] = v799;
                      v821 = 2082;
                      *v822 = v97;
                      _os_log_impl(&dword_1889BA000, v90, type[0], "%{public}s %{public}s chained frame len %u is smaller than TCP header size %u, dumping backtrace:%{public}s", buf, 0x2Cu);
                    }

                    free(v97);
                    goto LABEL_199;
                  }

                  if (!v98)
                  {
                    goto LABEL_199;
                  }

                  v115 = *(v55 + 52);
                  if (v115)
                  {
                    v115 -= *(v55 + 56) + *(v55 + 60);
                  }

                  *buf = 136446978;
                  *&buf[4] = "tcp_compute_segment_length";
                  *&buf[12] = 2082;
                  *&buf[14] = v792;
                  *&buf[22] = 1024;
                  *v820 = v115;
                  *&v820[4] = 1024;
                  *&v820[6] = v799;
                  v93 = "%{public}s %{public}s chained frame len %u is smaller than TCP header size %u, no backtrace";
                }

                else
                {
                  v90 = __nwlog_tcp_log();
                  v91 = type[0];
                  if (!os_log_type_enabled(v90, type[0]))
                  {
                    goto LABEL_199;
                  }

                  v114 = *(v55 + 52);
                  if (v114)
                  {
                    v114 -= *(v55 + 56) + *(v55 + 60);
                  }

                  *buf = 136446978;
                  *&buf[4] = "tcp_compute_segment_length";
                  *&buf[12] = 2082;
                  *&buf[14] = v792;
                  *&buf[22] = 1024;
                  *v820 = v114;
                  *&v820[4] = 1024;
                  *&v820[6] = v799;
                  v93 = "%{public}s %{public}s chained frame len %u is smaller than TCP header size %u, backtrace limit exceeded";
                }

LABEL_198:
                _os_log_impl(&dword_1889BA000, v90, v91, v93, buf, 0x22u);
                goto LABEL_199;
              }

              v90 = __nwlog_tcp_log();
              v91 = type[0];
              if (os_log_type_enabled(v90, type[0]))
              {
                v92 = *(v55 + 52);
                if (v92)
                {
                  v92 -= *(v55 + 56) + *(v55 + 60);
                }

                *buf = 136446978;
                *&buf[4] = "tcp_compute_segment_length";
                *&buf[12] = 2082;
                *&buf[14] = v792;
                *&buf[22] = 1024;
                *v820 = v92;
                *&v820[4] = 1024;
                *&v820[6] = v799;
                v93 = "%{public}s %{public}s chained frame len %u is smaller than TCP header size %u";
                goto LABEL_198;
              }
            }

LABEL_199:
            if (v89)
            {
              free(v89);
            }
          }

          v116 = *(v795 + 1064);
          if (v116)
          {
            ++*(v116 + 152);
          }

          a1 = v794;
          if (!v66 || (*(v66 + 776) & 2) == 0)
          {
            v117 = __nwlog_tcp_log();
            if (os_log_type_enabled(v117, OS_LOG_TYPE_ERROR))
            {
              *buf = 136446466;
              *&buf[4] = "tcp_input";
              *&buf[12] = 2082;
              *&buf[14] = v792;
              v118 = "%{public}s %{public}s invalid frame list";
              v119 = v117;
              v120 = OS_LOG_TYPE_ERROR;
              goto LABEL_285;
            }
          }

          goto LABEL_286;
        }

        *(v55 + 56) = v67;
        a4 = v65;
        v18 = v800;
        goto LABEL_105;
      }

      v777 = v7;
      v69 = a4;
      v70 = __nwlog_obj();
      *buf = 136446210;
      *&buf[4] = "__nw_frame_set_is_wake_packet";
      LODWORD(v766) = 12;
      v71 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1889BA000, v70, 16, "%{public}s called with null frame", buf, v766);
      type[0] = OS_LOG_TYPE_ERROR;
      v818 = 0;
      if (__nwlog_fault())
      {
        if (type[0] == OS_LOG_TYPE_FAULT)
        {
          v72 = __nwlog_obj();
          if (os_log_type_enabled(v72, type[0]))
          {
            *buf = 136446210;
            *&buf[4] = "__nw_frame_set_is_wake_packet";
            v73 = v72;
            v74 = type[0];
            v75 = "%{public}s called with null frame";
LABEL_121:
            _os_log_impl(&dword_1889BA000, v73, v74, v75, buf, 0xCu);
          }
        }

        else if (v818 == 1)
        {
          v76 = __nw_create_backtrace_string();
          v77 = __nwlog_obj();
          v78 = os_log_type_enabled(v77, type[0]);
          if (v76)
          {
            if (v78)
            {
              *buf = 136446466;
              *&buf[4] = "__nw_frame_set_is_wake_packet";
              *&buf[12] = 2082;
              *&buf[14] = v76;
              _os_log_impl(&dword_1889BA000, v77, type[0], "%{public}s called with null frame, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(v76);
            goto LABEL_122;
          }

          if (v78)
          {
            *buf = 136446210;
            *&buf[4] = "__nw_frame_set_is_wake_packet";
            v73 = v77;
            v74 = type[0];
            v75 = "%{public}s called with null frame, no backtrace";
            goto LABEL_121;
          }
        }

        else
        {
          v79 = __nwlog_obj();
          if (os_log_type_enabled(v79, type[0]))
          {
            *buf = 136446210;
            *&buf[4] = "__nw_frame_set_is_wake_packet";
            v73 = v79;
            v74 = type[0];
            v75 = "%{public}s called with null frame, backtrace limit exceeded";
            goto LABEL_121;
          }
        }
      }

LABEL_122:
      if (v71)
      {
        free(v71);
      }

      v797 = 1;
      a4 = v69;
      v7 = v777;
      goto LABEL_101;
    }

    v57 = *(v55 + 196);
    HIDWORD(v815) = *(v55 + 196);
    v35 = v810;
    if ((v56 & 0x40) == 0)
    {
      v58 = *(v55 + 200);
      a1 = v794;
      if (v58)
      {
LABEL_182:
        if (v15 && (*(v15 + 776) & 2) != 0 || !__nwlog_is_datapath_logging_enabled())
        {
          v797 = 0;
        }

        else
        {
          v145 = __nwlog_tcp_log();
          if (os_log_type_enabled(v145, OS_LOG_TYPE_DEBUG))
          {
            *&buf[4] = "tcp_compute_segment_length";
            *&buf[12] = 2082;
            v146 = &unk_188A285CF;
            *buf = 136447234;
            if (v15)
            {
              v146 = (v15 + 556);
            }

            *&buf[14] = v146;
            *&buf[22] = 1024;
            LODWORD(v50) = v799;
            *v820 = v799;
            *&v820[4] = 1024;
            *&v820[6] = v57;
            v821 = 1024;
            *v822 = v58;
            _os_log_impl(&dword_1889BA000, v145, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s TCP hlen %d segment length %d on %d buffers", buf, 0x28u);
            v797 = 0;
            a1 = v794;
          }

          else
          {
            v797 = 0;
            a1 = v794;
            LODWORD(v50) = v799;
          }

          v18 = v800;
        }

        goto LABEL_258;
      }

LABEL_162:
      if (v15 && (*(v15 + 776) & 2) != 0)
      {
        v797 = 0;
        v58 = 1;
        a1 = v794;
        v35 = v810;
        LODWORD(v50) = v799;
        goto LABEL_258;
      }

      v102 = __nwlog_tcp_log();
      v103 = (v15 + 556);
      if (!v15)
      {
        v103 = &unk_188A285CF;
      }

      *buf = 136446466;
      *&buf[4] = "tcp_compute_segment_length";
      *&buf[12] = 2082;
      v798 = v103;
      *&buf[14] = v103;
      LODWORD(v766) = 22;
      v104 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1889BA000, v102, 16, "%{public}s %{public}s Segment count is 0 for single-IP frame", buf, v766);
      type[0] = OS_LOG_TYPE_ERROR;
      v818 = 0;
      if (!__nwlog_fault())
      {
        goto LABEL_179;
      }

      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v105 = __nwlog_tcp_log();
        v106 = type[0];
        if (os_log_type_enabled(v105, type[0]))
        {
          *buf = 136446466;
          *&buf[4] = "tcp_compute_segment_length";
          *&buf[12] = 2082;
          *&buf[14] = v798;
          v107 = "%{public}s %{public}s Segment count is 0 for single-IP frame";
          v108 = v105;
LABEL_170:
          v109 = v106;
LABEL_178:
          _os_log_impl(&dword_1889BA000, v108, v109, v107, buf, 0x16u);
        }
      }

      else if (v818 == 1)
      {
        v110 = __nw_create_backtrace_string();
        v111 = __nwlog_tcp_log();
        v106 = type[0];
        v112 = os_log_type_enabled(v111, type[0]);
        if (v110)
        {
          if (v112)
          {
            *buf = 136446722;
            *&buf[4] = "tcp_compute_segment_length";
            *&buf[12] = 2082;
            *&buf[14] = v798;
            *&buf[22] = 2082;
            *v820 = v110;
            _os_log_impl(&dword_1889BA000, v111, type[0], "%{public}s %{public}s Segment count is 0 for single-IP frame, dumping backtrace:%{public}s", buf, 0x20u);
          }

          free(v110);
          goto LABEL_179;
        }

        if (v112)
        {
          *buf = 136446466;
          *&buf[4] = "tcp_compute_segment_length";
          *&buf[12] = 2082;
          *&buf[14] = v798;
          v107 = "%{public}s %{public}s Segment count is 0 for single-IP frame, no backtrace";
          v108 = v111;
          goto LABEL_170;
        }
      }

      else
      {
        v113 = __nwlog_tcp_log();
        if (os_log_type_enabled(v113, type[0]))
        {
          *buf = 136446466;
          *&buf[4] = "tcp_compute_segment_length";
          *&buf[12] = 2082;
          *&buf[14] = v798;
          v107 = "%{public}s %{public}s Segment count is 0 for single-IP frame, backtrace limit exceeded";
          v108 = v113;
          v109 = type[0];
          goto LABEL_178;
        }
      }

LABEL_179:
      v35 = v810;
      if (v104)
      {
        free(v104);
      }

      v58 = 1;
      a1 = v794;
      LODWORD(v50) = v799;
      goto LABEL_182;
    }

    v80 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "__nw_frame_get_segment_count";
    LODWORD(v766) = 12;
    v81 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1889BA000, v80, 16, "%{public}s Attempt to get segment-count on a chain-member", buf, v766);
    type[0] = OS_LOG_TYPE_ERROR;
    v818 = 0;
    if (__nwlog_fault())
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v82 = __nwlog_obj();
        v83 = type[0];
        if (!os_log_type_enabled(v82, type[0]))
        {
          goto LABEL_160;
        }

        *buf = 136446210;
        *&buf[4] = "__nw_frame_get_segment_count";
        v84 = "%{public}s Attempt to get segment-count on a chain-member";
LABEL_158:
        v100 = v82;
        v101 = v83;
LABEL_159:
        _os_log_impl(&dword_1889BA000, v100, v101, v84, buf, 0xCu);
        goto LABEL_160;
      }

      if (v818 != 1)
      {
        v82 = __nwlog_obj();
        v83 = type[0];
        if (!os_log_type_enabled(v82, type[0]))
        {
          goto LABEL_160;
        }

        *buf = 136446210;
        *&buf[4] = "__nw_frame_get_segment_count";
        v84 = "%{public}s Attempt to get segment-count on a chain-member, backtrace limit exceeded";
        goto LABEL_158;
      }

      v94 = __nw_create_backtrace_string();
      v95 = __nwlog_obj();
      v96 = os_log_type_enabled(v95, type[0]);
      if (v94)
      {
        if (v96)
        {
          *buf = 136446466;
          *&buf[4] = "__nw_frame_get_segment_count";
          *&buf[12] = 2082;
          *&buf[14] = v94;
          _os_log_impl(&dword_1889BA000, v95, type[0], "%{public}s Attempt to get segment-count on a chain-member, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v94);
        goto LABEL_160;
      }

      if (v96)
      {
        *buf = 136446210;
        *&buf[4] = "__nw_frame_get_segment_count";
        v84 = "%{public}s Attempt to get segment-count on a chain-member, no backtrace";
        v100 = v95;
        v101 = type[0];
        goto LABEL_159;
      }
    }

LABEL_160:
    if (v81)
    {
      free(v81);
    }

    goto LABEL_162;
  }

  v137 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "__nw_frame_is_single_ip_aggregate";
  LODWORD(v766) = 12;
  v138 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1889BA000, v137, 16, "%{public}s called with null frame", buf, v766);
  type[0] = OS_LOG_TYPE_ERROR;
  v818 = 0;
  if (__nwlog_fault())
  {
    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v139 = __nwlog_obj();
      v140 = type[0];
      if (!os_log_type_enabled(v139, type[0]))
      {
        goto LABEL_251;
      }

      *buf = 136446210;
      *&buf[4] = "__nw_frame_is_single_ip_aggregate";
      v141 = "%{public}s called with null frame";
LABEL_249:
      v147 = v139;
      v148 = v140;
LABEL_250:
      _os_log_impl(&dword_1889BA000, v147, v148, v141, buf, 0xCu);
      goto LABEL_251;
    }

    if (v818 != 1)
    {
      v139 = __nwlog_obj();
      v140 = type[0];
      if (!os_log_type_enabled(v139, type[0]))
      {
        goto LABEL_251;
      }

      *buf = 136446210;
      *&buf[4] = "__nw_frame_is_single_ip_aggregate";
      v141 = "%{public}s called with null frame, backtrace limit exceeded";
      goto LABEL_249;
    }

    v142 = __nw_create_backtrace_string();
    v143 = __nwlog_obj();
    v144 = os_log_type_enabled(v143, type[0]);
    if (v142)
    {
      if (v144)
      {
        *buf = 136446466;
        *&buf[4] = "__nw_frame_is_single_ip_aggregate";
        *&buf[12] = 2082;
        *&buf[14] = v142;
        _os_log_impl(&dword_1889BA000, v143, type[0], "%{public}s called with null frame, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v142);
    }

    else if (v144)
    {
      *buf = 136446210;
      *&buf[4] = "__nw_frame_is_single_ip_aggregate";
      v141 = "%{public}s called with null frame, no backtrace";
      v147 = v143;
      v148 = type[0];
      goto LABEL_250;
    }
  }

LABEL_251:
  if (v138)
  {
    free(v138);
  }

  v797 = 0;
  v58 = 0;
  v57 = 0;
  v18 = v800;
LABEL_254:
  if (!v15 || (*(v15 + 776) & 2) == 0)
  {
    if (__nwlog_is_datapath_logging_enabled())
    {
      v226 = __nwlog_tcp_log();
      if (os_log_type_enabled(v226, OS_LOG_TYPE_DEBUG))
      {
        *&buf[4] = "tcp_compute_segment_length";
        *&buf[12] = 2082;
        v227 = &unk_188A285CF;
        *buf = 136447234;
        if (v15)
        {
          v227 = (v15 + 556);
        }

        *&buf[14] = v227;
        *&buf[22] = 1024;
        *v820 = v799;
        *&v820[4] = 1024;
        *&v820[6] = v57;
        v821 = 1024;
        *v822 = v58;
        _os_log_impl(&dword_1889BA000, v226, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s TCP hlen %d segment length %d on %d buffers", buf, 0x28u);
      }
    }
  }

  HIDWORD(v815) = v57;
  a1 = v794;
  LODWORD(v50) = v799;
  v35 = v810;
LABEL_258:
  v149 = *(v795 + 1064);
  if (v149)
  {
    *(v149 + 152) += v58;
  }

  v793 = v58;
  if (v15 && (*(v15 + 776) & 2) != 0)
  {
    v150 = v786;
    if (tcp_validate_cksum(v809, v57, v795, (v18 >> 1) & 1, v806))
    {
      goto LABEL_265;
    }

    goto LABEL_280;
  }

  v150 = v786;
  if (__nwlog_is_datapath_logging_enabled())
  {
    v207 = __nwlog_tcp_log();
    if (os_log_type_enabled(v207, OS_LOG_TYPE_DEBUG))
    {
      v208 = (v15 + 556);
      if (!v15)
      {
        v208 = &unk_188A285CF;
      }

      v209 = *(v795 + 12);
      v210 = *(v795 + 120);
      v211 = *(v795 + 92);
      *buf = 136449026;
      *&buf[4] = "tcp_input";
      *&buf[12] = 2082;
      *&buf[14] = v208;
      *&buf[22] = 1024;
      *v820 = bswap32(v837) >> 16;
      *&v820[4] = 1024;
      *&v820[6] = bswap32(WORD1(v837)) >> 16;
      v821 = 1024;
      *v822 = v57;
      *&v822[4] = 1024;
      *&v822[6] = BYTE13(v837);
      v823 = 1024;
      v824 = bswap32(DWORD1(v837));
      v825 = 1024;
      v826 = bswap32(DWORD2(v837));
      v827 = 1024;
      v828 = bswap32(HIWORD(v837)) >> 16;
      v829 = 1024;
      v830 = v209;
      v831 = 1024;
      v832 = v210;
      v833 = 1024;
      v834 = v211;
      _os_log_impl(&dword_1889BA000, v207, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s processing an input-frame, %u:%u tlen %u, flags=%{network:tcp_flags}x seq=%u, ack=%u, win=%u state=%{network:tcp_state}x rcv_nxt=%u, snd_una=%u", buf, 0x52u);
      LODWORD(v57) = HIDWORD(v815);
      a1 = v794;
    }

    else
    {
      a1 = v794;
    }

    LODWORD(v50) = v799;
    v150 = v786;
    v151 = v809;
  }

  else
  {
    v151 = v809;
  }

  v152 = v151;
  if ((validate_tcp_cksum() & 1) == 0)
  {
    if ((*(v152 + 204) & 0x100) != 0 && *MEMORY[0x1E6977EF8] && ((*MEMORY[0x1E6977EF8])(v152, *(v152 + 88)) & 1) == 0)
    {
      *(v795 + 1064) = 0;
      if (!v15)
      {
        goto LABEL_281;
      }
    }

    else
    {
      v156 = *(v795 + 1064);
      if (v156)
      {
        ++*(v156 + 320);
      }

      if (v806)
      {
        atomic_fetch_add((v806 + 1016), 1uLL);
      }

      if (!v15)
      {
        goto LABEL_281;
      }
    }

LABEL_280:
    if ((*(v15 + 776) & 2) != 0)
    {
      goto LABEL_286;
    }

LABEL_281:
    v157 = __nwlog_tcp_log();
    if (os_log_type_enabled(v157, OS_LOG_TYPE_INFO))
    {
      v158 = &unk_188A285CF;
      if (v15)
      {
        v158 = (v15 + 556);
      }

      *buf = 136446466;
      *&buf[4] = "tcp_input";
      *&buf[12] = 2082;
      *&buf[14] = v158;
      v118 = "%{public}s %{public}s invalid checksum";
      v119 = v157;
      v120 = OS_LOG_TYPE_INFO;
LABEL_285:
      _os_log_impl(&dword_1889BA000, v119, v120, v118, buf, 0x16u);
    }

LABEL_286:
    in_pcb_checkstate(a3, 2, 1);
    v46 = v797;
    goto LABEL_56;
  }

LABEL_265:
  v801 = (v57 - v50);
  HIDWORD(v815) = v57 - v50;
  if (v50 < 0x15)
  {
    v153 = 0;
    v154 = 0;
    v155 = v784;
  }

  else
  {
    v153 = v50 - 20;
    v154 = &v839;
    v155 = v784;
    if ((v50 == 32 || v50 >= 0x21 && !v841) && v839 == 168296705 && (BYTE13(v837) & 2) == 0)
    {
      v153 = 0;
      v154 = 0;
      LODWORD(v812[0]) |= 1u;
      *(v812 + 4) = vrev32_s8(v840);
    }
  }

  v159 = BYTE13(v837);
  if ((~BYTE13(v837) & 3) == 0)
  {
    if (v806)
    {
      atomic_fetch_add((v806 + 1032), 1uLL);
    }

    in_pcb_checkstate(a3, 2, 1);
    v46 = v797;
    v35 = v810;
    goto LABEL_56;
  }

  v778 = v154;
  v776 = v153;
  calculate_tcp_clock(v155);
  if (v806)
  {
    v779 = *(v806 + 1220);
  }

  else
  {
    v779 = 0;
  }

  v160 = v57 - v50;
  if ((BYTE13(v837) & 0x24) != 0)
  {
    if (!v15 || (*(v15 + 776) & 2) == 0)
    {
      v228 = __nwlog_tcp_log();
      if (os_log_type_enabled(v228, OS_LOG_TYPE_ERROR))
      {
        v229 = (v15 + 556);
        if (!v15)
        {
          v229 = &unk_188A285CF;
        }

        v230 = *(v795 + 12);
        v231 = *(v795 + 120);
        v232 = *(v795 + 92);
        *buf = 136448258;
        *&buf[4] = "tcp_input";
        *&buf[12] = 2082;
        *&buf[14] = v229;
        *&buf[22] = 1024;
        *v820 = BYTE13(v837);
        *&v820[4] = 1024;
        *&v820[6] = bswap32(DWORD1(v837));
        v821 = 1024;
        *v822 = bswap32(DWORD2(v837));
        *&v822[4] = 1024;
        *&v822[6] = bswap32(HIWORD(v837)) >> 16;
        v823 = 1024;
        v824 = v230;
        v825 = 1024;
        v826 = v231;
        v827 = 1024;
        v828 = v232;
        v233 = v228;
        v234 = OS_LOG_TYPE_ERROR;
        goto LABEL_520;
      }
    }
  }

  else if ((BYTE13(v837) & 3) != 0 && (!v15 || (*(v15 + 776) & 2) == 0))
  {
    v235 = __nwlog_tcp_log();
    if (os_log_type_enabled(v235, OS_LOG_TYPE_DEFAULT))
    {
      v236 = (v15 + 556);
      if (!v15)
      {
        v236 = &unk_188A285CF;
      }

      v237 = *(v795 + 12);
      v238 = *(v795 + 120);
      v239 = *(v795 + 92);
      *buf = 136448258;
      *&buf[4] = "tcp_input";
      *&buf[12] = 2082;
      *&buf[14] = v236;
      *&buf[22] = 1024;
      *v820 = BYTE13(v837);
      *&v820[4] = 1024;
      *&v820[6] = bswap32(DWORD1(v837));
      v821 = 1024;
      *v822 = bswap32(DWORD2(v837));
      *&v822[4] = 1024;
      *&v822[6] = bswap32(HIWORD(v837)) >> 16;
      v823 = 1024;
      v824 = v237;
      v825 = 1024;
      v826 = v238;
      v827 = 1024;
      v828 = v239;
      v233 = v235;
      v234 = OS_LOG_TYPE_DEFAULT;
LABEL_520:
      _os_log_impl(&dword_1889BA000, v233, v234, "%{public}s %{public}s flags=%{network:tcp_flags}x seq=%u, ack=%u, win=%u state=%{network:tcp_state}x rcv_nxt=%u, snd_una=%u", buf, 0x40u);
    }
  }

  tcp_log_packet(v795, &v837, v801, 1, v150);
  if ((*(v809 + 204) & 0x100) != 0 && *MEMORY[0x1E6977EF8] && ((*MEMORY[0x1E6977EF8])(v809, *(v809 + 88)) & 1) == 0)
  {
    v35 = v810;
    if (!v15 || (*(v15 + 776) & 2) == 0)
    {
      v762 = __nwlog_tcp_log();
      if (os_log_type_enabled(v762, OS_LOG_TYPE_INFO))
      {
        v763 = &unk_188A285CF;
        if (v15)
        {
          v763 = (v15 + 556);
        }

        *buf = 136446466;
        *&buf[4] = "tcp_input";
        *&buf[12] = 2082;
        *&buf[14] = v763;
        _os_log_impl(&dword_1889BA000, v762, OS_LOG_TYPE_INFO, "%{public}s %{public}s dropping tcp input frame since frame is no longer valid", buf, 0x16u);
      }
    }

    *(v795 + 1064) = 0;
    in_pcb_checkstate(a3, 2, 1);
    a1 = v794;
    v46 = v797;
    goto LABEL_56;
  }

  *(&v837 + 4) = vrev32_s8(*(&v837 + 4));
  HIWORD(v837) = bswap32(HIWORD(v837)) >> 16;
  v838 = bswap32(v838) >> 16;
  if (&v837 != v783)
  {
    *(v783 + 4) = vrev32_s8(*(v783 + 4));
    *(v783 + 14) = bswap32(*(v783 + 14)) >> 16;
    *(v783 + 18) = bswap32(*(v783 + 18)) >> 16;
  }

  if ((*(a3 + 2373) & 0x40) != 0)
  {
    v779 = *(*(a3 + 440) + 1220);
  }

  (*(*(v15 + 8) + 16))(v15, 1, v7);
  if (in_pcb_checkstate(a3, 2, 1) == 0xFFFF)
  {
    v788 = v159;
    v161 = 0;
    v162 = v795;
LABEL_306:
    v163 = v809;
    goto LABEL_307;
  }

  if (v812[0])
  {
    DWORD2(v812[0]) -= *(v795 + 288);
  }

  if ((v159 & 0x17) == 0 || !*(v795 + 12))
  {
    v46 = v797;
LABEL_1391:
    (*(*(v15 + 8) + 24))(v15, 1, v7);
    v35 = v810;
LABEL_56:
    *v35 = v46 != 0;
    v47 = *a1;
    if (*a1)
    {
      *(v47 + 40) = type;
      v48 = a1[1];
      *type = v47;
      v817 = v48;
      *a1 = 0;
      a1[1] = a1;
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 0x40000000;
      *&buf[16] = ____nw_frame_array_finalize_block_invoke_289;
      *v820 = &__block_descriptor_tmp_290;
      v820[8] = 1;
      do
      {
        v49 = *type;
        if (!*type)
        {
          break;
        }

        nw_frame_array_remove();
      }

      while (((*&buf[16])(buf, v49) & 1) != 0);
    }

    return;
  }

  if (*(v15 + 24))
  {
    all_stats = nw_protocol_tcp_get_all_stats();
    if (all_stats)
    {
      ++*(all_stats + 16);
    }

    if (*(v15 + 24))
    {
      v169 = nw_protocol_tcp_get_all_stats();
      if (v169)
      {
        *(v169 + 24) += v801;
      }
    }
  }

  v814 = DWORD2(v837);
  v170 = HIWORD(v837);
  if ((v159 & 2) == 0)
  {
    v170 = HIWORD(v837) << *(v795 + 268);
  }

  v773 = v170;
  v171 = *(v15 + 372);
  if ((v171 & 2) != 0)
  {
    *(v15 + 372) = v171 & 0xFFFFFFFD;
    if ((*(v15 + 776) & 2) == 0)
    {
      if (__nwlog_is_datapath_logging_enabled())
      {
        v468 = __nwlog_tcp_log();
        if (os_log_type_enabled(v468, OS_LOG_TYPE_DEBUG))
        {
          v469 = *(v795 + 12);
          *buf = 136446722;
          *&buf[4] = "tcp_input";
          *&buf[12] = 2082;
          *&buf[14] = v15 + 556;
          *&buf[22] = 1024;
          *v820 = v469;
          _os_log_impl(&dword_1889BA000, v468, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s state change to %{network:tcp_state}d", buf, 0x1Cu);
        }
      }
    }

    if (*(v15 + 24))
    {
      v176 = nw_protocol_tcp_get_all_stats();
      if (v176)
      {
        *(v176 + 136) = 1;
      }
    }

    v172 = v795;
    tcp_set_max_rwinscale(v795, v15);
    v775 = 1;
  }

  else
  {
    v775 = 0;
    v172 = v795;
  }

  (*(*(v15 + 8) + 32))(v15, 0);
  if ((*(v172 + 2096) & 2) != 0)
  {
    *(v172 + 420) &= ~1u;
  }

  v177 = v784;
  if (*(v172 + 12) == 4)
  {
    v178 = *(v172 + 92);
    if (DWORD2(v837) != v178)
    {
      v179 = *(tcp_cc_algo_list[*(v172 + 272)] + 112);
      if (v179)
      {
        v179(v172, (DWORD2(v837) - v178));
        v177 = v784;
      }

      if ((*(v172 + 336) & 4) != 0)
      {
        LODWORD(v180) = (DWORD2(v837) - *(v172 + 92) + (*(v172 + 200) >> 1)) / *(v172 + 200);
        if (v180 <= 1)
        {
          v180 = 1;
        }

        else
        {
          v180 = v180;
        }

        *(v172 + 368) += v180;
      }
    }
  }

  v181 = *(v172 + 2096);
  if ((v159 & 0x80) != 0 && (*(v172 + 2096) & 2) == 0)
  {
    *(v795 + 336) &= ~0x10u;
    ++*(v795 + 344);
  }

  if ((SBYTE13(v837) & 0x80u) == 0)
  {
    v182 = (BYTE13(v837) & 0x40) != 0;
  }

  else
  {
    v182 = (BYTE13(v837) >> 6) | 2;
  }

  v183 = v182 & 0xFFFFFFFB | (4 * (BYTE12(v837) & 1));
  v774 = v7;
  v770 = v183;
  if ((v181 & 2) != 0 && *(v795 + 12) == 4)
  {
    if (v57 == v799 || (v184 = DWORD1(v837), v801 >= 1) && (v192 = *(v795 + 296), DWORD1(v837) - v192 >= 0) && DWORD1(v837) - (v192 + *(v795 + 128)) < 0)
    {
      tcp_input_ip_ecn(v795, a3, v801, v793, v150);
      v177 = v784;
      v184 = DWORD1(v837);
    }

    if (v184 == *(v795 + 112) + 1 && !v183)
    {
      *(v795 + 348) = 6;
    }
  }

  else if (v150 == 3)
  {
    v185 = *(v795 + 12);
    if (v185 != 4)
    {
      v191 = 1;
LABEL_391:
      v771 = v191;
      goto LABEL_392;
    }

    v186 = *(v795 + 336);
    if ((~v186 & 3) == 0 && v801 >= 1)
    {
      v187 = *(v795 + 296);
      if (DWORD1(v837) - v187 >= 0 && DWORD1(v837) - (v187 + *(v795 + 128)) < 0)
      {
        ++*(v795 + 340);
        v188 = *(v795 + 1064);
        if (v188)
        {
          ++*(v188 + 856);
        }

        v189 = *(a3 + 448);
        if (v189)
        {
          v190 = 568;
          if ((*(a3 + 2380) & 2) == 0)
          {
            v190 = 184;
          }

          ++*(v189 + v190);
        }

        a1 = v794;
        *(v795 + 336) = v186 | 0x50;
        v150 = v786;
        v177 = v784;
        v160 = v801;
      }
    }
  }

  v185 = *(v795 + 12);
  if (v185 != 4)
  {
    v191 = v150 == 3;
    goto LABEL_391;
  }

  v193 = *(v795 + 336);
  if (v193)
  {
    if (v150 != 3 && (v159 & 0x80000000) == 0)
    {
      goto LABEL_394;
    }

    *(v795 + 320) = 16;
    *(v795 + 752) = 0;
  }

  if (v150 != 3)
  {
LABEL_394:
    v771 = 0;
    goto LABEL_398;
  }

  if ((~v193 & 3) != 0)
  {
    v196 = *(v795 + 1064);
    if (v196)
    {
      ++*(v196 + 944);
    }
  }

  else if ((v193 & 0x2000) == 0)
  {
    v194 = *(v795 + 737);
    if (**(a3 + 248) <= 0x13uLL)
    {
      *(v795 + 737) = v194 + 1;
      v771 = 1;
LABEL_457:
      v160 = v801;
      goto LABEL_398;
    }

    if (v194 < 0x13)
    {
      a1 = v794;
      *(v795 + 336) = v193 | 0x2000;
      v771 = 1;
      v150 = v786;
      v177 = v784;
      goto LABEL_457;
    }

    tcp_heuristic_ecn_aggressive(v795);
    *(v795 + 336) |= 0x2000u;
    v185 = *(v795 + 12);
    v771 = 1;
    a1 = v794;
    v150 = v786;
    v177 = v784;
    v160 = v801;
LABEL_392:
    v785 = (v177 + 308);
    v195 = v795;
    *(v795 + 164) = *(v177 + 308);
    if (v185 < 4)
    {
      goto LABEL_400;
    }

    goto LABEL_399;
  }

  v771 = 1;
LABEL_398:
  v785 = (v177 + 308);
  v195 = v795;
  *(v795 + 164) = *(v177 + 308);
LABEL_399:
  tcp_keepalive_reset(v195);
  v185 = *(v195 + 12);
LABEL_400:
  if (v185 != 1 && v778)
  {
    tcp_dooptions(v795, v778, v776, &v837, v812);
    v185 = *(v795 + 12);
  }

  v772 = a4;
  if ((v159 & 2) != 0 && v185 == 2)
  {
    if ((v159 & 0x10) != 0 && (DWORD2(v837) - *(v795 + 112) < 1 || DWORD2(v837) - *(v795 + 96) > 0))
    {
LABEL_426:
      v201 = v795;
      *(v795 + 752) = 0;
      goto LABEL_427;
    }

    tcp_finalize_options(v795, v812, v779);
    v185 = *(v795 + 12);
  }

  if ((v159 & 0x7F) != 0x10 || v185 != 4 || (*(v795 + 89) & 8) != 0 || (v812[0] & 1) != 0 && DWORD1(v812[0]) - *(v795 + 284) < 0 || DWORD1(v837) != *(v795 + 120) || *v795)
  {
    goto LABEL_426;
  }

  v197 = *(v795 + 760);
  if (v197 <= 0x28)
  {
    *(v795 + 760) = v197 + v793;
  }

  v198 = *(v795 + 756);
  if (*(v795 + 756) && v801 <= v198)
  {
    if (v801 != v198)
    {
LABEL_421:
      if (v801 < v198 && (v200 = (*(v795 + 758) + v793), *(v795 + 758) += v793, v200 < 0x15))
      {
        a1 = v794;
        v201 = v795;
        *(v795 + 752) = 0;
        v150 = v786;
        v160 = v801;
      }

      else
      {
        v201 = v795;
        *(v795 + 756) = v801;
        *(v795 + 752) = *(nw_tcp_access_globals(*(*(v795 + 80) + 224)) + 308);
        *(v795 + 758) = 0;
        a1 = v794;
        v160 = v801;
        v150 = v786;
      }

      goto LABEL_427;
    }

    v199 = *(v795 + 752);
    if (v199)
    {
      compute_iaj_meat(v795, *v785 - v199);
      v198 = *(v795 + 756);
      goto LABEL_421;
    }
  }

  a1 = v794;
  v201 = v795;
  v160 = v801;
  v150 = v786;
  if (v801 >= v198)
  {
    *(v795 + 756) = v801;
    *(v795 + 752) = *(nw_tcp_access_globals(*(*(v795 + 80) + 224)) + 308);
    *(v795 + 758) = 0;
  }

LABEL_427:
  if (*(v201 + 12) != 4)
  {
    goto LABEL_525;
  }

  if ((v159 & 0xFFFFFFF7) != 0x10)
  {
    goto LABEL_525;
  }

  if ((*(v15 + 376) & 0x20) != 0)
  {
    goto LABEL_525;
  }

  v202 = *(v795 + 88);
  if ((v202 & 0x800) != 0 || (v812[0] & 1) != 0 && DWORD1(v812[0]) - *(v795 + 284) < 0)
  {
    goto LABEL_525;
  }

  if (DWORD1(v837) != *(v795 + 120))
  {
    goto LABEL_525;
  }

  if (!v773)
  {
    goto LABEL_525;
  }

  if (v773 != *(v795 + 144))
  {
    goto LABEL_525;
  }

  v203 = *(v795 + 100);
  if (v203 != *(v795 + 96))
  {
    goto LABEL_525;
  }

  v204 = v15;
  if ((v812[0] & 1) != 0 && DWORD1(v837) - *(v795 + 296) <= 0)
  {
    *(v795 + 292) = *v785;
    *(v795 + 284) = DWORD1(v812[0]);
  }

  v205 = v771 ^ 1;
  if ((*(v795 + 2096) & 2) == 0)
  {
    v205 = 1;
  }

  if ((v205 & 1) == 0)
  {
    *(v795 + 318) += v793;
  }

  v206 = *(v795 + 92);
  if (v57 != v799)
  {
    a1 = v794;
    v150 = v786;
    v160 = v801;
    if (DWORD2(v837) != v206 || *v795 || v801 > tcp_sbspace(v795))
    {
      goto LABEL_525;
    }

    if ((*(v795 + 748) & 0x20) != 0 && *(v795 + 556))
    {
      *(v795 + 604) = 0;
      *(v795 + 572) = 0u;
      *(v795 + 588) = 0u;
      *(v795 + 556) = 0u;
    }

    v212 = *(v795 + 1064);
    if (v212)
    {
      ++v212[69];
    }

    v213 = *(v795 + 120) + v801;
    *(v795 + 120) = v213;
    if (*(v795 + 1924) - v213 < 0)
    {
      *(v795 + 1924) = v213;
      if (v812[0])
      {
        *(v795 + 1928) = DWORD1(v812[0]);
      }
    }

    *(v795 + 104) = DWORD1(v837);
    *(v795 + 136) = v213;
    if (v212)
    {
      v214 = v212[25] + v801;
      v212[24] += v793;
      v212[25] = v214;
    }

    v215 = *(a3 + 248);
    ++*v215;
    if (v787)
    {
      ++**(a3 + 256);
      if (!v805)
      {
        goto LABEL_477;
      }
    }

    else if (!v805)
    {
LABEL_477:
      if (!v782)
      {
        goto LABEL_479;
      }

      goto LABEL_478;
    }

    ++**(a3 + 264);
    if (!v782)
    {
LABEL_479:
      v215[1] += v801;
      if (v787)
      {
        *(*(a3 + 256) + 8) += v801;
        if (!v805)
        {
          goto LABEL_481;
        }
      }

      else if (!v805)
      {
LABEL_481:
        if (!v782)
        {
          goto LABEL_483;
        }

        goto LABEL_482;
      }

      *(*(a3 + 264) + 8) += v801;
      if (!v782)
      {
LABEL_483:
        tcp_compute_rcv_rtt(v795, v812, &v837);
        tcp_sbrcv_grow(v795, v15 + 464, v812, v801);
        if (*(sysctls + 284) == 1 && (~*(v795 + 88) & 0x180) == 0 && (*(sysctls + 40) == 1 || (*(v15 + 369) & 0x40) != 0) && off_1ED4BF6F0)
        {
          off_1ED4BF6F0(v795, &v837, v812, v801);
        }

        v216 = *v794;
        if (*v794)
        {
          if ((*(v216 + 204) & 0x80) != 0)
          {
            v217 = *(v216 + 196);
            v51 = v217 >= v799;
            v218 = v217 - v799;
            if (!v51)
            {
              v219 = __nwlog_obj();
              v220 = *(v216 + 196);
              *buf = 136446722;
              *&buf[4] = "__nw_frame_array_claim";
              *&buf[12] = 1024;
              *&buf[14] = v220;
              *&buf[18] = 1024;
              *&buf[20] = v799;
              LODWORD(v766) = 24;
              v221 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1889BA000, v219, 16, "%{public}s Aggregate buffer length: %u sum: %u", buf, v766);
              type[0] = OS_LOG_TYPE_ERROR;
              v818 = 0;
              if (__nwlog_fault())
              {
                if (type[0] == OS_LOG_TYPE_FAULT)
                {
                  v222 = __nwlog_obj();
                  v223 = type[0];
                  if (os_log_type_enabled(v222, type[0]))
                  {
                    v224 = *(v216 + 196);
                    *buf = 136446722;
                    *&buf[4] = "__nw_frame_array_claim";
                    *&buf[12] = 1024;
                    *&buf[14] = v224;
                    *&buf[18] = 1024;
                    *&buf[20] = v799;
                    v225 = "%{public}s Aggregate buffer length: %u sum: %u";
LABEL_1753:
                    _os_log_impl(&dword_1889BA000, v222, v223, v225, buf, 0x18u);
                  }
                }

                else if (v818 == 1)
                {
                  v632 = __nw_create_backtrace_string();
                  v222 = __nwlog_obj();
                  v223 = type[0];
                  v633 = os_log_type_enabled(v222, type[0]);
                  if (v632)
                  {
                    if (v633)
                    {
                      v634 = *(v216 + 196);
                      *buf = 136446978;
                      *&buf[4] = "__nw_frame_array_claim";
                      *&buf[12] = 1024;
                      *&buf[14] = v634;
                      *&buf[18] = 1024;
                      *&buf[20] = v799;
                      *v820 = 2082;
                      *&v820[2] = v632;
                      _os_log_impl(&dword_1889BA000, v222, v223, "%{public}s Aggregate buffer length: %u sum: %u, dumping backtrace:%{public}s", buf, 0x22u);
                    }

                    free(v632);
                    goto LABEL_1754;
                  }

                  if (v633)
                  {
                    v672 = *(v216 + 196);
                    *buf = 136446722;
                    *&buf[4] = "__nw_frame_array_claim";
                    *&buf[12] = 1024;
                    *&buf[14] = v672;
                    *&buf[18] = 1024;
                    *&buf[20] = v799;
                    v225 = "%{public}s Aggregate buffer length: %u sum: %u, no backtrace";
                    goto LABEL_1753;
                  }
                }

                else
                {
                  v222 = __nwlog_obj();
                  v223 = type[0];
                  if (os_log_type_enabled(v222, type[0]))
                  {
                    v656 = *(v216 + 196);
                    *buf = 136446722;
                    *&buf[4] = "__nw_frame_array_claim";
                    *&buf[12] = 1024;
                    *&buf[14] = v656;
                    *&buf[18] = 1024;
                    *&buf[20] = v799;
                    v225 = "%{public}s Aggregate buffer length: %u sum: %u, backtrace limit exceeded";
                    goto LABEL_1753;
                  }
                }
              }

LABEL_1754:
              if (v221)
              {
                free(v221);
              }

              *(v216 + 196) = 0;
              goto LABEL_1757;
            }

            *(v216 + 196) = v218;
          }

LABEL_1165:
          if (!v799)
          {
LABEL_1776:
            if ((*(v204 + 776) & 2) != 0)
            {
LABEL_1778:
              *(v795 + 748) = *(v795 + 748) & 0xFFFFFFEF | (16 * ((BYTE13(v837) >> 3) & 1));
              v684 = HIDWORD(v815);
              v685 = sbappendstream_rcvdemux(v204, v794, SHIDWORD(v815));
              if (v772 && v685)
              {
                *v772 = 1;
              }

              *(v795 + 316) += v793;
              v686 = *(tcp_cc_algo_list[*(v795 + 272)] + 96);
              if (v686 && v686(v795, &v837))
              {
                v687 = *(v795 + 88);
                if ((v687 & 2) == 0)
                {
                  *(v795 + 88) = v687 | 2;
                  *(v795 + 32) = *(nw_tcp_access_globals(*(*(v795 + 80) + 224)) + 308) - *(v795 + 64) + 100;
                }
              }

              else
              {
                *(v795 + 88) |= 1u;
                tcp_output(v795);
              }

              tcp_adaptive_rwtimo_check(v795, v684);
              if (v684 >= 1 && *(v795 + 1001))
              {
                *(v795 + 1001) = 0;
              }

              tcp_check_timer_state(v795);
              (*(*(v204 + 8) + 24))(v204, 1, v774);
              *v810 = 0;
              v688 = *v794;
              if (*v794)
              {
                *(v688 + 40) = type;
                v689 = v794[1];
                *type = v688;
                v817 = v689;
                *v794 = 0;
                v794[1] = v794;
                *buf = MEMORY[0x1E69E9820];
                *&buf[8] = 0x40000000;
                *&buf[16] = ____nw_frame_array_finalize_block_invoke_289;
                *v820 = &__block_descriptor_tmp_290;
                v820[8] = 1;
                do
                {
                  v690 = *type;
                  if (!*type)
                  {
                    break;
                  }

                  nw_frame_array_remove();
                }

                while (((*&buf[16])(buf, v690) & 1) != 0);
              }

              return;
            }

LABEL_1777:
            if (__nwlog_is_datapath_logging_enabled())
            {
              v750 = __nwlog_tcp_log();
              if (os_log_type_enabled(v750, OS_LOG_TYPE_DEBUG))
              {
                v751 = &unk_188A285CF;
                *&buf[4] = "tcp_input";
                *buf = 136446722;
                if (v204)
                {
                  v751 = (v204 + 556);
                }

                *&buf[12] = 2082;
                *&buf[14] = v751;
                *&buf[22] = 1024;
                *v820 = HIDWORD(v815);
                _os_log_impl(&dword_1889BA000, v750, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s queueing frame of length %u - fastpath", buf, 0x1Cu);
              }
            }

            goto LABEL_1778;
          }

LABEL_1757:
          v673 = 0;
          if (v799 && (v674 = *v794) != 0)
          {
            v673 = 0;
            while (1)
            {
              v675 = *(v674 + 52);
              v676 = *(v674 + 56);
              v677 = *(v674 + 60);
              v678 = v675 - (v676 + v677);
              if (v678 >= v799 - v673)
              {
                v678 = v799 - v673;
              }

              v679 = v675 ? v678 : 0;
              v680 = v676 + v679;
              if (v676 + v679 <= v675 - v677)
              {
                *(v674 + 56) = v680;
              }

              else
              {
                v681 = __nwlog_obj();
                if (os_log_type_enabled(v681, OS_LOG_TYPE_ERROR))
                {
                  v682 = *(v674 + 52);
                  *buf = 136446978;
                  *&buf[4] = "__nw_frame_claim_internal";
                  *&buf[12] = 1024;
                  *&buf[14] = v680;
                  *&buf[18] = 1024;
                  *&buf[20] = v682;
                  *v820 = 1024;
                  *&v820[2] = v677;
                  _os_log_impl(&dword_1889BA000, v681, OS_LOG_TYPE_ERROR, "%{public}s Claiming bytes failed because start (%u) is beyond end (%u - %u)", buf, 0x1Eu);
                }
              }

              v673 += v679;
              if (v673 == v799)
              {
                break;
              }

              if (v673 < v799)
              {
                v674 = *(v674 + 32);
                if (v674)
                {
                  continue;
                }
              }

              goto LABEL_1772;
            }
          }

          else
          {
LABEL_1772:
            if (v673 != v799)
            {
              v683 = __nwlog_obj();
              if (os_log_type_enabled(v683, OS_LOG_TYPE_ERROR))
              {
                *buf = 136446722;
                *&buf[4] = "__nw_frame_array_claim";
                *&buf[12] = 1024;
                *&buf[14] = v673;
                *&buf[18] = 1024;
                *&buf[20] = v799;
                _os_log_impl(&dword_1889BA000, v683, OS_LOG_TYPE_ERROR, "%{public}s start_offset %u != start_bytes %u", buf, 0x18u);
              }
            }
          }

          if (!v204)
          {
            goto LABEL_1777;
          }

          goto LABEL_1776;
        }

        v745 = __nwlog_obj();
        *buf = 136446210;
        *&buf[4] = "__nw_frame_is_single_ip_aggregate";
        LODWORD(v766) = 12;
        v746 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1889BA000, v745, 16, "%{public}s called with null frame", buf, v766);
        type[0] = OS_LOG_TYPE_ERROR;
        v818 = 0;
        if (__nwlog_fault())
        {
          if (type[0] == OS_LOG_TYPE_FAULT)
          {
            v747 = __nwlog_obj();
            v748 = type[0];
            if (!os_log_type_enabled(v747, type[0]))
            {
              goto LABEL_1916;
            }

            *buf = 136446210;
            *&buf[4] = "__nw_frame_is_single_ip_aggregate";
            v749 = "%{public}s called with null frame";
LABEL_1914:
            v760 = v747;
            v761 = v748;
LABEL_1915:
            _os_log_impl(&dword_1889BA000, v760, v761, v749, buf, 0xCu);
            goto LABEL_1916;
          }

          if (v818 != 1)
          {
            v747 = __nwlog_obj();
            v748 = type[0];
            if (!os_log_type_enabled(v747, type[0]))
            {
              goto LABEL_1916;
            }

            *buf = 136446210;
            *&buf[4] = "__nw_frame_is_single_ip_aggregate";
            v749 = "%{public}s called with null frame, backtrace limit exceeded";
            goto LABEL_1914;
          }

          v755 = __nw_create_backtrace_string();
          v756 = __nwlog_obj();
          v757 = type[0];
          v758 = os_log_type_enabled(v756, type[0]);
          if (v755)
          {
            if (v758)
            {
              *buf = 136446466;
              *&buf[4] = "__nw_frame_is_single_ip_aggregate";
              *&buf[12] = 2082;
              *&buf[14] = v755;
              _os_log_impl(&dword_1889BA000, v756, v757, "%{public}s called with null frame, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(v755);
            goto LABEL_1916;
          }

          if (v758)
          {
            *buf = 136446210;
            *&buf[4] = "__nw_frame_is_single_ip_aggregate";
            v749 = "%{public}s called with null frame, no backtrace";
            v760 = v756;
            v761 = v757;
            goto LABEL_1915;
          }
        }

LABEL_1916:
        if (v746)
        {
          free(v746);
        }

        goto LABEL_1165;
      }

LABEL_482:
      *(*(a3 + 272) + 8) += v801;
      goto LABEL_483;
    }

LABEL_478:
    ++**(a3 + 272);
    goto LABEL_479;
  }

  a1 = v794;
  v150 = v786;
  v160 = v801;
  if (DWORD2(v837) - v203 <= 0 && DWORD2(v837) - v206 >= 1 && (v202 & 0x200000) == 0 && *(v795 + 148) >= *(v795 + 152))
  {
    if ((*(v795 + 748) & 0x20) != 0)
    {
      a1 = v794;
      v150 = v786;
      v160 = v801;
      if (!HIBYTE(v812[0]) && !*(v795 + 536))
      {
        goto LABEL_1135;
      }
    }

    else
    {
      a1 = v794;
      v150 = v786;
      v160 = v801;
      if (*(v795 + 8) < *(v795 + 322))
      {
LABEL_1135:
        v458 = *(v795 + 1064);
        if (v458)
        {
          ++*(v458 + 544);
        }

        tcp_bad_rexmt_check(v795, &v837, v812);
        tcp_compute_rtt(v795, v812, &v837);
        v459 = DWORD2(v837);
        v460 = *(v795 + 92);
        v461 = DWORD2(v837) - v460;
        if (DWORD2(v837) - v460 >= 0)
        {
          goto LABEL_1138;
        }

        v752 = __nwlog_obj();
        if (os_log_type_enabled(v752, OS_LOG_TYPE_ERROR))
        {
          v753 = 3;
        }

        else
        {
          v753 = 2;
        }

        *buf = 136446210;
        *&buf[4] = "tcp_input";
        LODWORD(v766) = 12;
        v754 = _os_log_send_and_compose_impl(v753, 0, 0, 0, &dword_1889BA000, v752, 16, "%{public}s Assert SEQ_GEQ(tcp_hdr->th_ack, tp->snd_una) failed", buf, v766);
        if (!__nwlog_should_abort())
        {
          free(v754);
          v459 = DWORD2(v837);
          v460 = *(v795 + 92);
          v461 = DWORD2(v837) - v460;
LABEL_1138:
          v462 = *(v795 + 1064);
          if (v462)
          {
            v463.i64[0] = vdupq_n_s64(1uLL).u64[0];
            v463.i64[1] = v461;
            v462[10] = vaddq_s64(v462[10], v463);
          }

          if ((*(v795 + 2096) & 2) != 0 && (*(v795 + 336) & 4) != 0)
          {
            v464 = *(v795 + 200);
            if (v461 / v464 * v464 == v461)
            {
              v465 = v461 / v464;
            }

            else
            {
              v465 = v461 / v464 + 1;
            }

            *(v795 + 308) += v465;
            if (v459 == v460)
            {
              v466 = 0;
              if ((v812[0] & 1) != 0 && DWORD2(v812[0]))
              {
                v466 = DWORD2(v812[0]) - *(v795 + 392) > 0;
              }
            }

            else
            {
              v466 = 0;
            }

            if (v461 > 0 || v466)
            {
              tcp_process_accecn(v795, v812, &v837, v465, v770);
            }
          }

          if ((*(v795 + 748) & 0x20400020) == 0x20000020)
          {
            tcp_segs_doack(v795, DWORD2(v837), v812[0], DWORD2(v812[0]));
            if (*(v795 + 552) - DWORD2(v837) < 0)
            {
              *(v795 + 552) = DWORD2(v837);
            }
          }

          v640 = *(tcp_cc_algo_list[*(v795 + 272)] + 48);
          if (v640)
          {
            v640(v795, &v837);
          }

          sbdrop((v15 + 384), v461);
          tcp_sbsnd_trim(v15 + 384);
          v641 = *(v795 + 156);
          v642 = DWORD2(v837);
          if (*(v795 + 92) - v641 >= 1 && DWORD2(v837) - v641 <= 0)
          {
            *(v795 + 156) = DWORD2(v837) - 1;
          }

          tcp_update_snd_una(v795, v642);
          *(v795 + 234) = 0;
          *(v795 + 256) = 0;
          *(v795 + 108) = DWORD2(v837);
          if (*(v795 + 8) >= 1)
          {
            *(v795 + 8) = 0;
            *(v795 + 322) = 3;
          }

          *(v795 + 620) = 0;
          if (*(v795 + 92) == *(v795 + 96))
          {
            *(v795 + 16) = 0;
            *(v795 + 24) = 0;
            *(v795 + 2077) &= ~0x80u;
          }

          else if (!*(v795 + 36))
          {
            tcp_set_rto(v795);
          }

          if (*(v795 + 960))
          {
            v643 = *(v795 + 968);
            if (v643 - *(v795 + 96) > 0)
            {
              goto LABEL_1677;
            }

            v644 = *(v795 + 144);
            if (v644 >= *(sysctls + 116))
            {
              v644 = *(sysctls + 116);
            }

            if ((v643 - *(v795 + 92) + v644) < 0)
            {
LABEL_1677:
              tcp_rxtseg_clean(v795);
            }
          }

          if ((*(v795 + 748) & 8) != 0 && *(v795 + 776))
          {
            tcp_bwmeas_check(v795);
          }

          v645 = *(v15 + 32);
          if (v645)
          {
            v646 = *v645;
            if (v646)
            {
              v646(v15);
            }
          }

          if (!*(v15 + 384) && (*(v795 + 88) & 1) == 0 || !tcp_output(v795) || (*(v809 + 204) & 0x100) == 0 || !*MEMORY[0x1E6977EF8] || ((*MEMORY[0x1E6977EF8])(v809, *(v809 + 88)) & 1) != 0)
          {
            tcp_tfo_rcv_ack(v795, &v837);
            tcp_check_timer_state(v795);
            (*(*(v15 + 8) + 24))(v15, 1, v7);
            v647 = *v794;
            if (*v794)
            {
              *(v647 + 40) = type;
              v648 = v794[1];
              *type = v647;
              v817 = v648;
              *v794 = 0;
              v794[1] = v794;
              *buf = MEMORY[0x1E69E9820];
              *&buf[8] = 0x40000000;
              *&buf[16] = ____nw_frame_array_finalize_block_invoke_289;
              *v820 = &__block_descriptor_tmp_290;
              v820[8] = 1;
              do
              {
                v649 = *type;
                if (!*type)
                {
                  break;
                }

                nw_frame_array_remove();
              }

              while (((*&buf[16])(buf, v649) & 1) != 0);
            }

            return;
          }

          if ((*(v15 + 776) & 2) == 0)
          {
            v759 = __nwlog_tcp_log();
            if (os_log_type_enabled(v759, OS_LOG_TYPE_INFO))
            {
              *buf = 136446466;
              *&buf[4] = "tcp_input";
              *&buf[12] = 2082;
              *&buf[14] = v15 + 556;
              _os_log_impl(&dword_1889BA000, v759, OS_LOG_TYPE_INFO, "%{public}s %{public}s dropping input packet since frame is no longer valid", buf, 0x16u);
            }
          }

          *(v795 + 1064) = 0;
          goto LABEL_1349;
        }

        goto LABEL_1935;
      }
    }
  }

LABEL_525:
  (*(*(v15 + 8) + 32))(v15, 0);
  v162 = v795;
  v240 = tcp_sbspace(v795);
  v241 = *(v795 + 88);
  if ((v241 & 0x80000) != 0)
  {
    v242 = *(sysctls + 48);
    v243 = v240 >= v242 ? *(sysctls + 48) : v240;
    if (v242 > 0)
    {
      v240 = v243;
    }
  }

  v244 = *(v795 + 120);
  if (v240 <= *(v795 + 124) - v244)
  {
    v245 = *(v795 + 124) - v244;
  }

  else
  {
    v245 = v240;
  }

  *(v795 + 128) = v245;
  v246 = *(v795 + 12);
  v247 = v778;
  if (v246 > 2)
  {
    v788 = v159;
    if (v246 == 3)
    {
      v248 = v782;
      if ((v788 & 0x10) != 0 && (DWORD2(v837) - *(v795 + 92) < 1 || DWORD2(v837) - *(v795 + 96) >= 1))
      {
        v161 = v775;
        if (!v806)
        {
          goto LABEL_306;
        }

        v264 = 1088;
        goto LABEL_711;
      }

      if ((v788 & 2) != 0 && *(v795 + 116) == DWORD1(v837) && (v812[0] & 0x20) == 0)
      {
        *(v795 + 88) = v241 & 0xFFFFFFBF;
      }
    }

    else
    {
      v248 = v782;
      if (v246 == 4 && (v788 & 2) != 0 && v160 <= 0)
      {
        if (!tcp_is_ack_ratelimited(v795))
        {
          v257 = *(v795 + 1064);
          if (v257)
          {
            ++*(v257 + 104);
          }

          goto LABEL_994;
        }

        goto LABEL_1387;
      }
    }
  }

  else
  {
    if (v246 == 1)
    {
      tcp_dooptions(v795, v778, v776, &v837, v812);
      tcp_finalize_options(v795, v812, v779);
      if ((*(v795 + 750) & 0x40) != 0)
      {
        v255 = tcp_tfo_syn(v795, v812);
      }

      else
      {
        v255 = 0;
      }

      v265 = tcp_new_isn(v795);
      v266 = DWORD1(v837);
      *(v795 + 112) = v265;
      *(v795 + 116) = v266;
      *(v795 + 156) = v265;
      *(v795 + 96) = v265;
      *(v795 + 100) = v265;
      *(v795 + 92) = v265;
      if (*(v15 + 24))
      {
        v267 = nw_protocol_tcp_get_all_stats();
        v265 = *(v795 + 92);
        if (v267)
        {
          *(v267 + 108) = *(v795 + 96) - v265;
          v265 = *(v795 + 92);
        }
      }

      v268 = *(v795 + 116) + 1;
      *(v795 + 1924) = v268;
      *(v795 + 120) = v268;
      *(v795 + 124) = v268;
      *(v795 + 156) = v265;
      *(v795 + 144) = v773;
      *(v795 + 260) = v773;
      if (*(v15 + 24))
      {
        v269 = nw_protocol_tcp_get_all_stats();
        if (v269)
        {
          *(v269 + 112) = *(v795 + 144);
        }
      }

      *(v795 + 88) |= 1u;
      *(v795 + 316) = 0;
      *(v795 + 12) = 3;
      if ((*(v15 + 776) & 2) == 0)
      {
        if (__nwlog_is_datapath_logging_enabled())
        {
          v628 = __nwlog_tcp_log();
          if (os_log_type_enabled(v628, OS_LOG_TYPE_DEBUG))
          {
            v629 = tcpstates[*(v795 + 12)];
            *buf = 136446722;
            *&buf[4] = "tcp_input";
            *&buf[12] = 2082;
            *&buf[14] = v15 + 556;
            *&buf[22] = 2082;
            *v820 = v629;
            _os_log_impl(&dword_1889BA000, v628, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s state change to %{public}s", buf, 0x20u);
          }
        }
      }

      v270 = v159;
      if (*(v15 + 24))
      {
        v271 = nw_protocol_tcp_get_all_stats();
        if (v271)
        {
          *(v271 + 136) = 3;
        }
      }

      v272 = *(v795 + 672);
      if (!v272)
      {
        v272 = *(sysctls + 184);
      }

      *(v795 + 40) = *(nw_tcp_access_globals(*(*(v795 + 80) + 224)) + 308) + v272 - *(v795 + 64);
      if (!*(a3 + 460))
      {
        v273 = inp_calc_flowhash_flow_hash++;
        *(a3 + 460) = v273;
      }

      *(v15 + 364) &= ~0x40000u;
      v274 = *(v795 + 1064);
      v275 = v270;
      if (v274)
      {
        ++*(v274 + 384);
      }

      v256 = v795;
      tcp_input_process_accecn_syn(v795, (v270 | (BYTE12(v837) << 8)) & 0x1C0, v150);
      v775 = 0;
      v276 = v783;
      goto LABEL_881;
    }

    v788 = v159;
    v248 = v782;
    if (v246 == 2)
    {
      v249 = v788;
      if ((v788 & 0x10) == 0)
      {
        if ((v788 & 6) != 2)
        {
          goto LABEL_1387;
        }

LABEL_539:
        v250 = HIWORD(v837);
        *(v162 + 144) = HIWORD(v837);
        *(v162 + 260) = v250;
        if (*(v15 + 24))
        {
          v251 = nw_protocol_tcp_get_all_stats();
          if (v251)
          {
            *(v251 + 112) = *(v162 + 144);
          }
        }

        v252 = DWORD1(v837);
        v253 = DWORD1(v837) + 1;
        *(v162 + 1924) = DWORD1(v837) + 1;
        *(v162 + 116) = v252;
        *(v162 + 120) = v253;
        *(v162 + 124) = v253;
        if ((v249 & 0x10) == 0)
        {
          *(v162 + 88) |= 1u;
          *(v162 + 28) = 0;
          *(v162 + 12) = 3;
          if ((*(v15 + 776) & 2) == 0)
          {
            if (__nwlog_is_datapath_logging_enabled())
            {
              v670 = __nwlog_tcp_log();
              if (os_log_type_enabled(v670, OS_LOG_TYPE_DEBUG))
              {
                v671 = tcpstates[*(v795 + 12)];
                *buf = 136446722;
                *&buf[4] = "tcp_input";
                *&buf[12] = 2082;
                *&buf[14] = v15 + 556;
                *&buf[22] = 2082;
                *v820 = v671;
                _os_log_impl(&dword_1889BA000, v670, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s state change to %{public}s", buf, 0x20u);
              }
            }
          }

          if (*(v15 + 24))
          {
            v254 = nw_protocol_tcp_get_all_stats();
            if (v254)
            {
              *(v254 + 136) = 3;
            }
          }

          v255 = 0;
          v256 = v795;
          *(v795 + 748) &= ~0x400000u;
          goto LABEL_880;
        }

        v281 = *(v162 + 1064);
        if (v281)
        {
          ++v281[51];
        }

        if ((v249 & 0xC0) == 0x40)
        {
          v282 = *(v795 + 336);
          *(v795 + 336) = v282 | 2;
          if (v282)
          {
            v283 = *(v795 + 80);
            buf[0] = 1;
            (*(*(v283 + 2280) + 24))(*(v283 + 224), buf);
            v284 = *(v795 + 1064);
            if (v284)
            {
              ++*(v284 + 776);
            }
          }

          v285 = v795;
          v286 = *(v795 + 336);
          if ((v286 & 0x100000) != 0)
          {
            *(v795 + 336) = v286 & 0xFFEFFFFA | 5;
            if (*(v795 + 348) == 2)
            {
              v287 = 3;
LABEL_784:
              *(v285 + 348) = v287;
            }
          }
        }

        else if ((*(v795 + 2096) & 1) != 0 && (v318 = (v788 | (BYTE12(v837) << 8)) & 0x1C0) != 0 && v318 != 448)
        {
          *(v795 + 412) = 5;
          *(v795 + 448) = vdupq_n_s64(1uLL);
          *(v795 + 464) = 0;
          v319 = *(v795 + 336);
          v320 = v319 | 0x400000;
          *(v795 + 336) = v319 | 0x400000;
          v321 = (v318 - 128) >> 6;
          if (v321 > 1)
          {
            if (v321 == 2)
            {
              v320 = v319 & 0xFF9FFFFB | 0x600000;
              *(v795 + 336) = v320;
              *(v795 + 348) = 8;
              if (v281)
              {
                ++v281[104];
              }
            }

            else if (v321 == 4)
            {
              *(v795 + 348) = 8;
              v320 = v319 & 0xFF9FFFFB | 0x600000;
              *(v795 + 336) = v320;
              *(v795 + 148) = 2 * *(v795 + 200);
              if (v281)
              {
                ++v281[105];
              }
            }
          }

          else if (v321)
          {
            if (v321 == 1)
            {
              v320 = v319 & 0xFF9FFFFB | 0x600000;
              *(v795 + 336) = v320;
              *(v795 + 348) = 8;
              if (v281)
              {
                ++v281[103];
              }
            }
          }

          else
          {
            v320 = v319 | 0x600004;
            *(v795 + 336) = v319 | 0x600004;
            *(v795 + 348) = 7;
            if (v281)
            {
              ++v281[102];
            }
          }

          *(v795 + 2096) = *(v795 + 2096) & 0xFD | (2 * ((~v320 & 0x300000) == 0));
          if ((~v320 & 3) == 0)
          {
            v450 = *(v795 + 80);
            buf[0] = 1;
            (*(*(v450 + 2280) + 24))(*(v450 + 224), buf);
            v451 = *(v795 + 1064);
            if (v451)
            {
              ++*(v451 + 776);
            }
          }

          v285 = v795;
          *(v795 + 408) = 5;
          *(v795 + 424) = 1;
          *(v795 + 432) = xmmword_188A18480;
          tcp_input_ip_ecn(v795, a3, v801, v793, v786);
          *(v795 + 336) |= dword_188A184C0[v786];
          if (v812[0])
          {
            if (DWORD2(v812[0]))
            {
              v452 = *(v795 + 392);
              if (!v452 || ((DWORD2(v812[0]) - v452) & 0x80000000) == 0)
              {
                *(v795 + 392) = DWORD2(v812[0]);
              }
            }
          }
        }

        else
        {
          if ((*(v795 + 336) & 0x100001) != 0 && !*(v795 + 234))
          {
            v334 = *(v795 + 80);
            buf[0] = 1;
            (*(*(v334 + 2280) + 24))(*(v334 + 224), buf);
            v335 = *(v795 + 1064);
            if (v335)
            {
              ++*(v335 + 784);
            }
          }

          v336 = *(v795 + 336);
          if ((v336 & 1) != 0 && *(v795 + 234) == 1 || (v336 & 0x100000) != 0 && *(v795 + 234) == 2)
          {
            tcp_heuristic_ecn_loss(v795);
            v336 = *(v795 + 336);
          }

          *(v795 + 336) = v336 & 0xFFFFFFFB;
          if ((v336 & 0x100) != 0 && *(v795 + 234) <= 2u && *(v795 + 348) == 2)
          {
            *(v795 + 348) = 5;
          }

          v285 = v795;
          if (*(v795 + 348) == 2)
          {
            v287 = 4;
            goto LABEL_784;
          }
        }

        v337 = *(v285 + 88);
        if ((~v337 & 0x60) != 0)
        {
          v338 = *(v285 + 269);
        }

        else
        {
          *(v285 + 268) = *(v285 + 271);
          v338 = *(v285 + 270);
          *(v285 + 269) = v338;
        }

        v339 = 0xFFFF << v338;
        if (*(v285 + 128) >= v339)
        {
          v340 = v339;
        }

        else
        {
          v340 = *(v285 + 128);
        }

        if (*(sysctls + 284) == 1 && (v337 & 0x180) == 0x180 && (*(sysctls + 40) == 1 || (*(v15 + 369) & 0x40) != 0))
        {
          if (off_1ED4BF6F8)
          {
            v341 = off_1ED4BF6F8(v795);
            v342 = v340 >= v341 ? v341 : v340;
            if (v341)
            {
              v340 = v342;
            }
          }
        }

        *(v795 + 124) += v340;
        v343 = *(v795 + 92) + 1;
        *(v795 + 92) = v343;
        if (*(v15 + 24))
        {
          v344 = nw_protocol_tcp_get_all_stats();
          v343 = *(v795 + 92);
          if (v344)
          {
            *(v344 + 108) = *(v795 + 96) - v343;
            v343 = *(v795 + 92);
          }
        }

        v345 = v795;
        v346 = *(v795 + 100);
        if (v346 - v343 < 0)
        {
          *(v795 + 100) = v343;
          v346 = v343;
        }

        v347 = DWORD2(v837);
        if (v346 - DWORD2(v837) >= 1)
        {
          if ((*(v795 + 751) & 1) == 0 && (*(v795 + 998) & 0x40) != 0)
          {
            v348 = *(v795 + 96);
            if (v348 == DWORD2(v837) + 1 && v348 > v343 + 1)
            {
              tcp_heuristic_tfo_middlebox(v795);
              *(v15 + 378) = 96;
              user_north_signal_error(v15);
              *(v795 + 998) |= 0x4000u;
              v347 = DWORD2(v837);
            }
          }

          v345 = v795;
          *(v795 + 96) = v347;
          *(v795 + 100) = v347;
        }

        if (*(v15 + 24))
        {
          v349 = nw_protocol_tcp_get_all_stats();
          if (v349)
          {
            *(v349 + 108) = *(v345 + 96) - *(v345 + 92);
          }
        }

        *(v345 + 316) += v793;
        v350 = v771 ^ 1;
        if ((*(v345 + 2096) & 2) == 0)
        {
          v350 = 1;
        }

        if ((v350 & 1) == 0)
        {
          *(v345 + 318) += v793;
        }

        v351 = *(tcp_cc_algo_list[*(v345 + 272)] + 96);
        if (v351)
        {
          v352 = v351(v345, &v837);
          v353 = *(v345 + 88);
          if (v352 && HIDWORD(v815))
          {
            v354 = v795;
            if ((v353 & 2) == 0)
            {
              *(v795 + 88) = v353 | 2;
              *(v795 + 32) = *(nw_tcp_access_globals(*(*(v795 + 80) + 224)) + 308) - *(v795 + 64) + 100;
            }

LABEL_827:
            *(v354 + 172) = *v785;
            tcp_sbrcv_tstmp_check(v354);
            if ((*(v354 + 89) & 8) != 0)
            {
              *(v354 + 12) = 6;
              if ((*(v15 + 776) & 2) == 0)
              {
                if (__nwlog_is_datapath_logging_enabled())
                {
                  v702 = __nwlog_tcp_log();
                  if (os_log_type_enabled(v702, OS_LOG_TYPE_DEBUG))
                  {
                    v703 = tcpstates[*(v795 + 12)];
                    *buf = 136446722;
                    *&buf[4] = "tcp_input";
                    *&buf[12] = 2082;
                    *&buf[14] = v15 + 556;
                    *&buf[22] = 2082;
                    *v820 = v703;
                    _os_log_impl(&dword_1889BA000, v702, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s state change to %{public}s", buf, 0x20u);
                  }
                }
              }

              if (*(v15 + 24))
              {
                v359 = nw_protocol_tcp_get_all_stats();
                if (v359)
                {
                  *(v359 + 136) = 6;
                }
              }

              *(v795 + 88) &= ~0x800u;
              v788 &= 0xFFFFFFF9;
            }

            else
            {
              *(v354 + 12) = 4;
              if ((*(v15 + 776) & 2) == 0)
              {
                if (__nwlog_is_datapath_logging_enabled())
                {
                  v700 = __nwlog_tcp_log();
                  if (os_log_type_enabled(v700, OS_LOG_TYPE_DEBUG))
                  {
                    v701 = tcpstates[*(v795 + 12)];
                    *buf = 136446722;
                    *&buf[4] = "tcp_input";
                    *&buf[12] = 2082;
                    *&buf[14] = v15 + 556;
                    *&buf[22] = 2082;
                    *v820 = v701;
                    _os_log_impl(&dword_1889BA000, v700, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s state change to %{public}s", buf, 0x20u);
                  }
                }
              }

              if (*(v15 + 24))
              {
                v355 = nw_protocol_tcp_get_all_stats();
                if (v355)
                {
                  *(v355 + 136) = 4;
                }
              }

              v356 = *(v795 + 668);
              v357 = *(*(v795 + 80) + 224);
              if (!v356 || (*(v357 + 372) & 8) == 0)
              {
                v356 = *(sysctls + 188);
              }

              *(v795 + 40) = *(nw_tcp_access_globals(v357) + 308) + v356 - *(v795 + 64);
              if (*(v15 + 24))
              {
                v358 = nw_protocol_tcp_get_all_stats();
                if (v358)
                {
                  ++*(v358 + 64);
                }
              }
            }

            v256 = v795;
            *(v795 + 320) = 16;
            if ((*(v795 + 996) & 0xC) != 0 || (*(v795 + 998) & 0x40) != 0)
            {
              tcp_tfo_synack(v795, v812);
              v360 = *(v795 + 998);
              if ((v360 & 0x40) == 0 || *(v795 + 92) - DWORD2(v837) >= 0)
              {
                v255 = 1;
                v256 = v795;
LABEL_880:
                v150 = v786;
                v276 = v783;
                v275 = v788;
LABEL_881:
                if (*(v809 + 204) & 0x100) == 0 || !*MEMORY[0x1E6977EF8] || (v369 = (*MEMORY[0x1E6977EF8])(v809, *(v809 + 88)), v276 = v783, (v369))
                {
                  ++DWORD1(v837);
                  if (&v837 != v276)
                  {
                    ++*(v276 + 4);
                  }

                  v370 = HIDWORD(v815);
                  v371 = v256[32];
                  v372 = HIDWORD(v815) - v371;
                  if (SHIDWORD(v815) <= v371)
                  {
                    a1 = v794;
                    goto LABEL_932;
                  }

                  v373 = *v794;
                  v768 = v15;
                  v802 = v255;
                  if (*v794)
                  {
                    v374 = HIDWORD(v815) - v371;
                    if ((*(v373 + 204) & 0x80) != 0)
                    {
                      v375 = *(v373 + 196);
                      if (v372 > v375)
                      {
                        v376 = HIDWORD(v815);
                        v789 = v275;
                        v377 = __nwlog_obj();
                        v378 = *(v373 + 196);
                        *buf = 136446722;
                        *&buf[4] = "__nw_frame_array_claim";
                        *&buf[12] = 1024;
                        *&buf[14] = v378;
                        *&buf[18] = 1024;
                        *&buf[20] = v372;
                        LODWORD(v766) = 24;
                        v379 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1889BA000, v377, 16, "%{public}s Aggregate buffer length: %u sum: %u", buf, v766);
                        type[0] = OS_LOG_TYPE_ERROR;
                        v818 = 0;
                        if (__nwlog_fault())
                        {
                          if (type[0] == OS_LOG_TYPE_FAULT)
                          {
                            v380 = __nwlog_obj();
                            v381 = type[0];
                            if (os_log_type_enabled(v380, type[0]))
                            {
                              v382 = *(v373 + 196);
                              *buf = 136446722;
                              *&buf[4] = "__nw_frame_array_claim";
                              *&buf[12] = 1024;
                              *&buf[14] = v382;
                              *&buf[18] = 1024;
                              *&buf[20] = v372;
                              v383 = "%{public}s Aggregate buffer length: %u sum: %u";
LABEL_905:
                              v389 = v380;
LABEL_906:
                              _os_log_impl(&dword_1889BA000, v389, v381, v383, buf, 0x18u);
                            }
                          }

                          else if (v818 == 1)
                          {
                            v384 = __nw_create_backtrace_string();
                            v385 = __nwlog_obj();
                            v381 = type[0];
                            v386 = os_log_type_enabled(v385, type[0]);
                            if (v384)
                            {
                              if (v386)
                              {
                                v387 = *(v373 + 196);
                                *buf = 136446978;
                                *&buf[4] = "__nw_frame_array_claim";
                                *&buf[12] = 1024;
                                *&buf[14] = v387;
                                *&buf[18] = 1024;
                                *&buf[20] = v372;
                                *v820 = 2082;
                                *&v820[2] = v384;
                                _os_log_impl(&dword_1889BA000, v385, v381, "%{public}s Aggregate buffer length: %u sum: %u, dumping backtrace:%{public}s", buf, 0x22u);
                              }

                              free(v384);
                              goto LABEL_907;
                            }

                            if (v386)
                            {
                              v444 = *(v373 + 196);
                              *buf = 136446722;
                              *&buf[4] = "__nw_frame_array_claim";
                              *&buf[12] = 1024;
                              *&buf[14] = v444;
                              *&buf[18] = 1024;
                              *&buf[20] = v372;
                              v383 = "%{public}s Aggregate buffer length: %u sum: %u, no backtrace";
                              v389 = v385;
                              goto LABEL_906;
                            }
                          }

                          else
                          {
                            v380 = __nwlog_obj();
                            v381 = type[0];
                            if (os_log_type_enabled(v380, type[0]))
                            {
                              v388 = *(v373 + 196);
                              *buf = 136446722;
                              *&buf[4] = "__nw_frame_array_claim";
                              *&buf[12] = 1024;
                              *&buf[14] = v388;
                              *&buf[18] = 1024;
                              *&buf[20] = v372;
                              v383 = "%{public}s Aggregate buffer length: %u sum: %u, backtrace limit exceeded";
                              goto LABEL_905;
                            }
                          }
                        }

LABEL_907:
                        if (v379)
                        {
                          free(v379);
                        }

                        *(v373 + 196) = 0;
                        v150 = v786;
                        v275 = v789;
                        v370 = v376;
                        v374 = v372;
                        goto LABEL_910;
                      }

                      *(v373 + 196) = v375 - v372;
                    }

LABEL_896:
                    if (v370 == v371)
                    {
LABEL_929:
                      v256 = v795;
                      v370 = *(v795 + 128);
                      HIDWORD(v815) = v370;
                      v275 &= ~1u;
                      v401 = *(v795 + 1064);
                      if (v401)
                      {
                        v402.i64[0] = vdupq_n_s64(1uLL).u64[0];
                        v402.i64[1] = v374;
                        v401[17] = vaddq_s64(v401[17], v402);
                      }

                      a1 = v794;
                      v15 = v768;
                      v255 = v802;
LABEL_932:
                      v403 = DWORD1(v837);
                      v256[26] = DWORD1(v837) - 1;
                      v256[34] = v403;
                      v404 = 0;
                      if ((v275 & 0x10) == 0)
                      {
                        v780 = 0;
LABEL_934:
                        v405 = v773;
                        goto LABEL_1369;
                      }

LABEL_1202:
                      v477 = v256[23];
                      v478 = v256;
                      v479 = DWORD2(v837) - v477;
                      if (DWORD2(v837) - v477 >= 0)
                      {
                        v480 = *(v478 + 133);
                        if (v480)
                        {
                          v481.i64[0] = vdupq_n_s64(1uLL).u64[0];
                          v481.i64[1] = (DWORD2(v837) - v477);
                          v480[10] = vaddq_s64(v480[10], v481);
                        }

                        tcp_bad_rexmt_check(v795, &v837, v812);
                        tcp_compute_rtt(v795, v812, &v837);
                        v482 = 0;
                        *(v795 + 234) = 0;
                        *(v795 + 256) = 0;
                        if (*(v795 + 12) >= 4)
                        {
                          v482 = *(sysctls + 172);
                        }

                        v483 = *(v795 + 236);
                        v484 = (*(v795 + 212) + (*(v795 + 204) >> 3)) >> 2;
                        if (v483 > v484)
                        {
                          v484 = *(v795 + 236);
                        }

                        v485 = v484 + v482;
                        *(v795 + 196) = v485;
                        if (v485 >= v483)
                        {
                          if (v485 < 0xFA01)
                          {
LABEL_1213:
                            v803 = v255;
                            v788 = v275;
                            if (DWORD2(v837) == *(v795 + 96))
                            {
                              *(v795 + 16) = 0;
                              *(v795 + 24) = 0;
                              *(v795 + 2077) &= ~0x80u;
                              v780 = 1;
                            }

                            else
                            {
                              if (!*(v795 + 36))
                              {
                                tcp_set_rto(v795);
                              }

                              v780 = 0;
                            }

                            if (!v479)
                            {
                              v404 = 0;
                              a1 = v794;
LABEL_1368:
                              v7 = v774;
                              v150 = v786;
                              v405 = v773;
                              v255 = v803;
LABEL_1369:
                              v545 = HIDWORD(v815);
                              updated = tcp_update_window(v795, v275, &v837, v405, SHIDWORD(v815));
                              if ((v275 & 0x20) == 0 || !v838 || *(v795 + 12) > 9)
                              {
                                v547 = *(v795 + 120);
                                if (v547 - *(v795 + 136) >= 1)
                                {
                                  *(v795 + 136) = v547;
                                }

LABEL_1379:
                                if (v255)
                                {
                                  soisconnected(v15);
                                  if (a5)
                                  {
                                    *a5 = 1;
                                  }
                                }

                                else if (v404)
                                {
                                  *(v15 + 376) = *(v15 + 376) & 0xDFC1 | 0x2030;
                                  v548 = *(v15 + 32);
                                  if (v548)
                                  {
                                    v549 = *(v548 + 56);
                                    if (v549)
                                    {
                                      v549(v15);
                                    }
                                  }
                                }

                                if (*(a3 + 232) == 3)
                                {
                                  goto LABEL_1387;
                                }

                                if (v545 | v275 & 1)
                                {
                                  v550 = *(v795 + 12);
                                  v551 = v810;
                                  if (v550 <= 9)
                                  {
                                    v769 = v15;
                                    if (v550 <= 3 && (v550 != 3 || (*(v795 + 996) & 2) == 0))
                                    {
                                      v555 = 1;
LABEL_1571:
                                      a1 = v794;
                                      v551 = v810;
                                      v15 = v769;
                                      v7 = v774;
                                      v150 = v786;
                                      goto LABEL_1572;
                                    }

                                    v808 = DWORD1(v837) + v545;
                                    v804 = DWORD1(v837);
                                    if (DWORD1(v837) != *(v795 + 120) || *v795)
                                    {
                                      *type = 0;
                                      if (*(v795 + 1924) - v808 < 0)
                                      {
                                        *(v795 + 1924) = v808;
                                        if (v812[0])
                                        {
                                          *(v795 + 1928) = DWORD1(v812[0]);
                                        }
                                      }

                                      tcp_compute_rcv_rtt(v795, v812, &v837);
                                      tcp_sbrcv_grow(v795, v15 + 464, v812, v545);
                                      if (*(sysctls + 284) == 1 && (~*(v795 + 88) & 0x180) == 0 && (*(sysctls + 40) == 1 || (*(v15 + 369) & 0x40) != 0) && off_1ED4BF6F0)
                                      {
                                        off_1ED4BF6F0(v795, &v837, v812, v545);
                                      }

                                      v552 = tcp_reass(v795, &v815 + 1, v794, v806, v799, v772, type);
                                      if (*type)
                                      {
                                        if ((*(v809 + 204) & 0x100) != 0 && *MEMORY[0x1E6977EF8] && ((*MEMORY[0x1E6977EF8])(v809, *(v809 + 88)) & 1) == 0)
                                        {
                                          if (!v15 || (*(v15 + 776) & 2) == 0)
                                          {
                                            v698 = __nwlog_tcp_log();
                                            if (os_log_type_enabled(v698, OS_LOG_TYPE_INFO))
                                            {
                                              v699 = &unk_188A285CF;
                                              if (v15)
                                              {
                                                v699 = (v15 + 556);
                                              }

                                              *buf = 136446466;
                                              *&buf[4] = "tcp_input";
                                              *&buf[12] = 2082;
                                              *&buf[14] = v699;
                                              _os_log_impl(&dword_1889BA000, v698, OS_LOG_TYPE_INFO, "%{public}s %{public}s frame no longer valid", buf, 0x16u);
                                            }
                                          }

                                          *(v795 + 1064) = 0;
                                        }

                                        v46 = 0;
                                        a1 = v794;
                                        v7 = v774;
                                        goto LABEL_1388;
                                      }

                                      v553 = v552;
                                      *(v795 + 88) |= 1u;
                                      LODWORD(v545) = HIDWORD(v815);
                                      if (v815 > 0)
                                      {
                                        v797 = 0;
                                        v554 = 1;
                                        goto LABEL_1565;
                                      }

                                      v797 = 0;
                                      v556 = BYTE13(v837);
LABEL_1415:
                                      if ((v556 & 1) == 0)
                                      {
                                        tcp_adaptive_rwtimo_check(v795, v545);
LABEL_1570:
                                        v555 = (v553 & 1) == 0;
                                        goto LABEL_1571;
                                      }

                                      v554 = 0;
LABEL_1565:
                                      if ((*(v795 + 748) & 0x20) != 0)
                                      {
                                        tcp_update_sack_list(v795, v804, v808 + (BYTE13(v837) & 1));
                                      }

                                      tcp_adaptive_rwtimo_check(v795, v545);
                                      if (v554 && *(v795 + 1001))
                                      {
                                        *(v795 + 1001) = 0;
                                      }

                                      goto LABEL_1570;
                                    }

                                    v557 = *v794;
                                    if (*v794)
                                    {
                                      if ((*(v557 + 204) & 0x80) != 0)
                                      {
                                        v558 = *(v557 + 196);
                                        if (v799 > v558)
                                        {
                                          v559 = __nwlog_obj();
                                          v560 = *(v557 + 196);
                                          *buf = 136446722;
                                          *&buf[4] = "__nw_frame_array_claim";
                                          *&buf[12] = 1024;
                                          *&buf[14] = v560;
                                          *&buf[18] = 1024;
                                          *&buf[20] = v799;
                                          LODWORD(v766) = 24;
                                          v561 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1889BA000, v559, 16, "%{public}s Aggregate buffer length: %u sum: %u", buf, v766);
                                          type[0] = OS_LOG_TYPE_ERROR;
                                          v818 = 0;
                                          if (__nwlog_fault())
                                          {
                                            if (type[0] == OS_LOG_TYPE_FAULT)
                                            {
                                              v562 = __nwlog_obj();
                                              v563 = type[0];
                                              if (os_log_type_enabled(v562, type[0]))
                                              {
                                                v564 = *(v557 + 196);
                                                *buf = 136446722;
                                                *&buf[4] = "__nw_frame_array_claim";
                                                *&buf[12] = 1024;
                                                *&buf[14] = v564;
                                                *&buf[18] = 1024;
                                                *&buf[20] = v799;
                                                v565 = "%{public}s Aggregate buffer length: %u sum: %u";
LABEL_1505:
                                                v593 = v562;
LABEL_1506:
                                                _os_log_impl(&dword_1889BA000, v593, v563, v565, buf, 0x18u);
                                              }
                                            }

                                            else if (v818 == 1)
                                            {
                                              v577 = __nw_create_backtrace_string();
                                              v578 = __nwlog_obj();
                                              v563 = type[0];
                                              v579 = os_log_type_enabled(v578, type[0]);
                                              if (v577)
                                              {
                                                if (v579)
                                                {
                                                  v580 = *(v557 + 196);
                                                  *buf = 136446978;
                                                  *&buf[4] = "__nw_frame_array_claim";
                                                  *&buf[12] = 1024;
                                                  *&buf[14] = v580;
                                                  *&buf[18] = 1024;
                                                  *&buf[20] = v799;
                                                  *v820 = 2082;
                                                  *&v820[2] = v577;
                                                  _os_log_impl(&dword_1889BA000, v578, v563, "%{public}s Aggregate buffer length: %u sum: %u, dumping backtrace:%{public}s", buf, 0x22u);
                                                }

                                                free(v577);
                                                goto LABEL_1507;
                                              }

                                              if (v579)
                                              {
                                                v631 = *(v557 + 196);
                                                *buf = 136446722;
                                                *&buf[4] = "__nw_frame_array_claim";
                                                *&buf[12] = 1024;
                                                *&buf[14] = v631;
                                                *&buf[18] = 1024;
                                                *&buf[20] = v799;
                                                v565 = "%{public}s Aggregate buffer length: %u sum: %u, no backtrace";
                                                v593 = v578;
                                                goto LABEL_1506;
                                              }
                                            }

                                            else
                                            {
                                              v562 = __nwlog_obj();
                                              v563 = type[0];
                                              if (os_log_type_enabled(v562, type[0]))
                                              {
                                                v592 = *(v557 + 196);
                                                *buf = 136446722;
                                                *&buf[4] = "__nw_frame_array_claim";
                                                *&buf[12] = 1024;
                                                *&buf[14] = v592;
                                                *&buf[18] = 1024;
                                                *&buf[20] = v799;
                                                v565 = "%{public}s Aggregate buffer length: %u sum: %u, backtrace limit exceeded";
                                                goto LABEL_1505;
                                              }
                                            }
                                          }

LABEL_1507:
                                          if (v561)
                                          {
                                            free(v561);
                                          }

                                          *(v557 + 196) = 0;
LABEL_1510:
                                          v594 = *v794;
                                          if (*v794)
                                          {
                                            v595 = 0;
                                            while (1)
                                            {
                                              v596 = *(v594 + 52);
                                              v597 = *(v594 + 56);
                                              v598 = *(v594 + 60);
                                              v599 = v596 - (v597 + v598);
                                              if (v599 >= v799 - v595)
                                              {
                                                v599 = v799 - v595;
                                              }

                                              v600 = v596 ? v599 : 0;
                                              v601 = v597 + v600;
                                              if (v597 + v600 <= v596 - v598)
                                              {
                                                *(v594 + 56) = v601;
                                              }

                                              else
                                              {
                                                v602 = __nwlog_obj();
                                                if (os_log_type_enabled(v602, OS_LOG_TYPE_ERROR))
                                                {
                                                  v603 = *(v594 + 52);
                                                  *buf = 136446978;
                                                  *&buf[4] = "__nw_frame_claim_internal";
                                                  *&buf[12] = 1024;
                                                  *&buf[14] = v601;
                                                  *&buf[18] = 1024;
                                                  *&buf[20] = v603;
                                                  *v820 = 1024;
                                                  *&v820[2] = v598;
                                                  _os_log_impl(&dword_1889BA000, v602, OS_LOG_TYPE_ERROR, "%{public}s Claiming bytes failed because start (%u) is beyond end (%u - %u)", buf, 0x1Eu);
                                                }
                                              }

                                              v595 += v600;
                                              if (v595 == v799)
                                              {
                                                break;
                                              }

                                              if (v595 < v799)
                                              {
                                                v594 = *(v594 + 32);
                                                if (v594)
                                                {
                                                  continue;
                                                }
                                              }

                                              goto LABEL_1526;
                                            }
                                          }

                                          else
                                          {
                                            v595 = 0;
LABEL_1526:
                                            if (v595 != v799)
                                            {
                                              v604 = __nwlog_obj();
                                              if (os_log_type_enabled(v604, OS_LOG_TYPE_ERROR))
                                              {
                                                *buf = 136446722;
                                                *&buf[4] = "__nw_frame_array_claim";
                                                *&buf[12] = 1024;
                                                *&buf[14] = v595;
                                                *&buf[18] = 1024;
                                                *&buf[20] = v799;
                                                _os_log_impl(&dword_1889BA000, v604, OS_LOG_TYPE_ERROR, "%{public}s start_offset %u != start_bytes %u", buf, 0x18u);
                                              }
                                            }
                                          }

LABEL_1529:
                                          if (!v769 || (*(v769 + 776) & 2) == 0)
                                          {
                                            if (__nwlog_is_datapath_logging_enabled())
                                            {
                                              v725 = __nwlog_tcp_log();
                                              if (os_log_type_enabled(v725, OS_LOG_TYPE_DEBUG))
                                              {
                                                v726 = (v769 + 556);
                                                *&buf[4] = "tcp_input";
                                                *buf = 136446722;
                                                if (!v769)
                                                {
                                                  v726 = &unk_188A285CF;
                                                }

                                                *&buf[12] = 2082;
                                                *&buf[14] = v726;
                                                *&buf[22] = 1024;
                                                *v820 = v545;
                                                _os_log_impl(&dword_1889BA000, v725, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s queueing frame of length %u - slowpath", buf, 0x1Cu);
                                              }
                                            }
                                          }

                                          *(v795 + 316) += v793;
                                          tcp_compute_rcv_rtt(v795, v812, &v837);
                                          v605 = *(tcp_cc_algo_list[*(v795 + 272)] + 96);
                                          if (v605)
                                          {
                                            v606 = v605(v795, &v837);
                                            v607 = *(v795 + 88);
                                            if (v606)
                                            {
                                              v608 = (*(v795 + 88) & 1) == 0;
                                            }

                                            else
                                            {
                                              v608 = 0;
                                            }

                                            if (v608)
                                            {
                                              if ((v607 & 2) == 0)
                                              {
                                                *(v795 + 88) = v607 | 2;
                                                *(v795 + 32) = *(nw_tcp_access_globals(*(*(v795 + 80) + 224)) + 308) - *(v795 + 64) + 100;
                                              }

LABEL_1542:
                                              v609 = *(v795 + 120) + v545;
                                              *(v795 + 120) = v609;
                                              if (*(v795 + 1924) - v609 < 0)
                                              {
                                                *(v795 + 1924) = v609;
                                                if (v812[0])
                                                {
                                                  *(v795 + 1928) = DWORD1(v812[0]);
                                                }
                                              }

                                              v610 = *(v795 + 1064);
                                              if (v610)
                                              {
                                                v611.i64[0] = vdupq_n_s64(1uLL).u64[0];
                                                v611.i64[1] = v545;
                                                v610[12] = vaddq_s64(v610[12], v611);
                                              }

                                              v553 = BYTE13(v837);
                                              v612 = *(a3 + 248);
                                              ++*v612;
                                              if (v787)
                                              {
                                                ++**(a3 + 256);
                                                if (!v805)
                                                {
                                                  goto LABEL_1549;
                                                }
                                              }

                                              else if (!v805)
                                              {
LABEL_1549:
                                                if (!v782)
                                                {
                                                  goto LABEL_1551;
                                                }

                                                goto LABEL_1550;
                                              }

                                              ++**(a3 + 264);
                                              if (!v782)
                                              {
LABEL_1551:
                                                v612[1] += v545;
                                                if (v787)
                                                {
                                                  *(*(a3 + 256) + 8) += v545;
                                                  if (!v805)
                                                  {
                                                    goto LABEL_1553;
                                                  }
                                                }

                                                else if (!v805)
                                                {
LABEL_1553:
                                                  if (!v782)
                                                  {
                                                    goto LABEL_1555;
                                                  }

                                                  goto LABEL_1554;
                                                }

                                                *(*(a3 + 264) + 8) += v545;
                                                if (!v782)
                                                {
LABEL_1555:
                                                  tcp_sbrcv_grow(v795, v769 + 464, v812, v545);
                                                  if (*(sysctls + 284) == 1 && (~*(v795 + 88) & 0x180) == 0 && (*(sysctls + 40) == 1 || (*(v769 + 369) & 0x40) != 0) && off_1ED4BF6F0)
                                                  {
                                                    off_1ED4BF6F0(v795, &v837, v812, v545);
                                                  }

                                                  v556 = BYTE13(v837);
                                                  *(v795 + 748) = *(v795 + 748) & 0xFFFFFFEF | (16 * ((BYTE13(v837) >> 3) & 1));
                                                  if (v545 >= 1)
                                                  {
                                                    v613 = sbappendstream_rcvdemux(v769, v794, v545);
                                                    v797 = 0;
                                                    v554 = 1;
                                                    if (v772 && v613)
                                                    {
                                                      v797 = 0;
                                                      *v772 = 1;
                                                    }

                                                    goto LABEL_1565;
                                                  }

                                                  goto LABEL_1415;
                                                }

LABEL_1554:
                                                *(*(a3 + 272) + 8) += v545;
                                                goto LABEL_1555;
                                              }

LABEL_1550:
                                              ++**(a3 + 272);
                                              goto LABEL_1551;
                                            }
                                          }

                                          else
                                          {
                                            v607 = *(v795 + 88);
                                          }

                                          *(v795 + 88) = v607 | 1;
                                          goto LABEL_1542;
                                        }

                                        *(v557 + 196) = v558 - v799;
                                      }

LABEL_1437:
                                      if (!v799)
                                      {
                                        goto LABEL_1529;
                                      }

                                      goto LABEL_1510;
                                    }

                                    v720 = __nwlog_obj();
                                    *buf = 136446210;
                                    *&buf[4] = "__nw_frame_is_single_ip_aggregate";
                                    LODWORD(v766) = 12;
                                    v721 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1889BA000, v720, 16, "%{public}s called with null frame", buf, v766);
                                    type[0] = OS_LOG_TYPE_ERROR;
                                    v818 = 0;
                                    if (__nwlog_fault())
                                    {
                                      if (type[0] == OS_LOG_TYPE_FAULT)
                                      {
                                        v722 = __nwlog_obj();
                                        v723 = type[0];
                                        if (!os_log_type_enabled(v722, type[0]))
                                        {
                                          goto LABEL_1886;
                                        }

                                        *buf = 136446210;
                                        *&buf[4] = "__nw_frame_is_single_ip_aggregate";
                                        v724 = "%{public}s called with null frame";
LABEL_1884:
                                        v743 = v722;
                                        v744 = v723;
LABEL_1885:
                                        _os_log_impl(&dword_1889BA000, v743, v744, v724, buf, 0xCu);
                                        goto LABEL_1886;
                                      }

                                      if (v818 != 1)
                                      {
                                        v722 = __nwlog_obj();
                                        v723 = type[0];
                                        if (!os_log_type_enabled(v722, type[0]))
                                        {
                                          goto LABEL_1886;
                                        }

                                        *buf = 136446210;
                                        *&buf[4] = "__nw_frame_is_single_ip_aggregate";
                                        v724 = "%{public}s called with null frame, backtrace limit exceeded";
                                        goto LABEL_1884;
                                      }

                                      v730 = __nw_create_backtrace_string();
                                      v731 = __nwlog_obj();
                                      v732 = type[0];
                                      v733 = os_log_type_enabled(v731, type[0]);
                                      if (v730)
                                      {
                                        if (v733)
                                        {
                                          *buf = 136446466;
                                          *&buf[4] = "__nw_frame_is_single_ip_aggregate";
                                          *&buf[12] = 2082;
                                          *&buf[14] = v730;
                                          _os_log_impl(&dword_1889BA000, v731, v732, "%{public}s called with null frame, dumping backtrace:%{public}s", buf, 0x16u);
                                        }

                                        free(v730);
                                        goto LABEL_1886;
                                      }

                                      if (v733)
                                      {
                                        *buf = 136446210;
                                        *&buf[4] = "__nw_frame_is_single_ip_aggregate";
                                        v724 = "%{public}s called with null frame, no backtrace";
                                        v743 = v731;
                                        v744 = v732;
                                        goto LABEL_1885;
                                      }
                                    }

LABEL_1886:
                                    if (v721)
                                    {
                                      free(v721);
                                    }

                                    goto LABEL_1437;
                                  }

                                  v555 = 1;
                                }

                                else
                                {
                                  v555 = 1;
                                  v551 = v810;
                                }

LABEL_1572:
                                if ((*(v795 + 2096) & 2) != 0 && (*(v795 + 12) - 4) <= 5)
                                {
                                  v614 = *(v795 + 318);
                                  if (v771 && (v614 += v793, *(v795 + 318) = v614, *(v795 + 400) != 3) || v614 >= 2u && (v614 != 2 || *(v795 + 296) != *(v795 + 120)))
                                  {
                                    *(v795 + 88) |= 1u;
                                  }

                                  *(v795 + 400) = v150;
                                }

                                if (v555)
                                {
                                  goto LABEL_1582;
                                }

                                v619 = *(v795 + 12);
                                if (v619 <= 9)
                                {
                                  *(v15 + 376) |= 0x20u;
                                  v620 = *(v15 + 32);
                                  if (v620)
                                  {
                                    v621 = *(v620 + 40);
                                    if (v621)
                                    {
                                      v621(v15);
                                      v619 = *(v795 + 12);
                                    }
                                  }

                                  *(v795 + 316) += v793;
                                  *(v795 + 88) |= 1u;
                                  ++*(v795 + 120);
                                }

                                if (v619 > 5)
                                {
                                  if (v619 == 6)
                                  {
                                    *(v795 + 12) = 7;
                                    if (!v15 || (*(v15 + 776) & 2) == 0)
                                    {
                                      if (__nwlog_is_datapath_logging_enabled())
                                      {
                                        v708 = __nwlog_tcp_log();
                                        if (os_log_type_enabled(v708, OS_LOG_TYPE_DEBUG))
                                        {
                                          v709 = tcpstates[*(v795 + 12)];
                                          *&buf[4] = "tcp_input";
                                          v710 = &unk_188A285CF;
                                          *buf = 136446722;
                                          if (v15)
                                          {
                                            v710 = (v15 + 556);
                                          }

                                          *&buf[12] = 2082;
                                          *&buf[14] = v710;
                                          *&buf[22] = 2082;
                                          *v820 = v709;
                                          _os_log_impl(&dword_1889BA000, v708, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s state change to %{public}s", buf, 0x20u);
                                        }
                                      }
                                    }

                                    a1 = v794;
                                    v7 = v774;
                                    if (*(v15 + 24))
                                    {
                                      v622 = nw_protocol_tcp_get_all_stats();
                                      if (v622)
                                      {
                                        *(v622 + 136) = 7;
                                      }
                                    }
                                  }

                                  else if (v619 == 9)
                                  {
                                    *(v795 + 12) = 10;
                                    if (!v15 || (*(v15 + 776) & 2) == 0)
                                    {
                                      if (__nwlog_is_datapath_logging_enabled())
                                      {
                                        v711 = __nwlog_tcp_log();
                                        if (os_log_type_enabled(v711, OS_LOG_TYPE_DEBUG))
                                        {
                                          v712 = tcpstates[*(v795 + 12)];
                                          *&buf[4] = "tcp_input";
                                          v713 = &unk_188A285CF;
                                          *buf = 136446722;
                                          if (v15)
                                          {
                                            v713 = (v15 + 556);
                                          }

                                          *&buf[12] = 2082;
                                          *&buf[14] = v713;
                                          *&buf[22] = 2082;
                                          *v820 = v712;
                                          _os_log_impl(&dword_1889BA000, v711, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s state change to %{public}s", buf, 0x20u);
                                        }
                                      }
                                    }

                                    if (*(v15 + 24))
                                    {
                                      v623 = nw_protocol_tcp_get_all_stats();
                                      if (v623)
                                      {
                                        *(v623 + 136) = 10;
                                      }
                                    }

                                    tcp_canceltimers(v795);
                                    v624 = *(v795 + 88);
                                    *(v795 + 88) = v624 | 1;
                                    if ((*(v795 + 749) & 8) != 0)
                                    {
                                      *(v795 + 88) = v624 | 0x8000001;
                                    }

                                    else
                                    {
                                      add_to_time_wait(v795, 2 * *(sysctls + 200));
                                    }

                                    *(v15 + 376) = *(v15 + 376) & 0xDFC1 | 0x2030;
                                    v626 = *(v15 + 32);
                                    a1 = v794;
                                    v7 = v774;
                                    if (v626)
                                    {
                                      v627 = *(v626 + 56);
                                      if (v627)
                                      {
                                        v627(v15);
                                      }
                                    }
                                  }

                                  else
                                  {
                                    a1 = v794;
                                    v7 = v774;
                                    if (v619 == 10)
                                    {
                                      add_to_time_wait(v795, 2 * *(sysctls + 200));
                                    }
                                  }

                                  goto LABEL_1582;
                                }

                                if (v619 == 3)
                                {
                                  *(v795 + 172) = *v785;
                                }

                                else
                                {
                                  a1 = v794;
                                  v7 = v774;
                                  if (v619 != 4)
                                  {
LABEL_1582:
                                    if (v780)
                                    {
                                      v615 = 1;
                                    }

                                    else
                                    {
                                      v615 = updated;
                                    }

                                    if (v615 & 1) != 0 || (*(v795 + 88))
                                    {
                                      tcp_output(v795);
                                    }

                                    tcp_check_timer_state(v795);
                                    (*(*(v15 + 8) + 24))(v15, 1, v7);
                                    *v551 = v797 != 0;
                                    v616 = *a1;
                                    if (*a1)
                                    {
                                      *(v616 + 40) = type;
                                      v617 = a1[1];
                                      *type = v616;
                                      v817 = v617;
                                      *a1 = 0;
                                      a1[1] = a1;
                                      *buf = MEMORY[0x1E69E9820];
                                      *&buf[8] = 0x40000000;
                                      *&buf[16] = ____nw_frame_array_finalize_block_invoke_289;
                                      *v820 = &__block_descriptor_tmp_290;
                                      v820[8] = 1;
                                      do
                                      {
                                        v618 = *type;
                                        if (!*type)
                                        {
                                          break;
                                        }

                                        nw_frame_array_remove();
                                      }

                                      while (((*&buf[16])(buf, v618) & 1) != 0);
                                    }

                                    return;
                                  }
                                }

                                *(v795 + 12) = 5;
                                if (!v15 || (*(v15 + 776) & 2) == 0)
                                {
                                  if (__nwlog_is_datapath_logging_enabled())
                                  {
                                    v695 = __nwlog_tcp_log();
                                    if (os_log_type_enabled(v695, OS_LOG_TYPE_DEBUG))
                                    {
                                      v696 = tcpstates[*(v795 + 12)];
                                      *&buf[4] = "tcp_input";
                                      v697 = &unk_188A285CF;
                                      *buf = 136446722;
                                      if (v15)
                                      {
                                        v697 = (v15 + 556);
                                      }

                                      *&buf[12] = 2082;
                                      *&buf[14] = v697;
                                      *&buf[22] = 2082;
                                      *v820 = v696;
                                      _os_log_impl(&dword_1889BA000, v695, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s state change to %{public}s", buf, 0x20u);
                                    }
                                  }
                                }

                                a1 = v794;
                                v7 = v774;
                                if (*(v15 + 24))
                                {
                                  v625 = nw_protocol_tcp_get_all_stats();
                                  if (v625)
                                  {
                                    *(v625 + 136) = 5;
                                  }
                                }

                                goto LABEL_1582;
                              }

                              if (*(v809 + 204) & 0x100) == 0 || !*MEMORY[0x1E6977EF8] || ((*MEMORY[0x1E6977EF8])(v809, *(v809 + 88)))
                              {
                                v838 = 0;
                                if (&v837 != v783)
                                {
                                  *(v783 + 18) = 0;
                                }

                                goto LABEL_1379;
                              }

                              v470 = v15;
                              if (v15 && (*(v15 + 776) & 2) != 0 || (v471 = __nwlog_tcp_log(), !os_log_type_enabled(v471, OS_LOG_TYPE_INFO)))
                              {
LABEL_1702:
                                a1 = v794;
                                *(v795 + 1064) = 0;
                                v15 = v470;
                                goto LABEL_984;
                              }

                              v764 = &unk_188A285CF;
                              if (v15)
                              {
                                v764 = (v15 + 556);
                              }

                              *buf = 136446466;
                              *&buf[4] = "tcp_input";
                              *&buf[12] = 2082;
                              *&buf[14] = v764;
LABEL_1701:
                              _os_log_impl(&dword_1889BA000, v471, OS_LOG_TYPE_INFO, "%{public}s %{public}s dropping tcp input frame since frame is no longer valid", buf, 0x16u);
                              goto LABEL_1702;
                            }

                            v499 = v795;
                            if ((*(v795 + 748) & 0x20400020) == 0x20000020)
                            {
                              tcp_segs_doack(v795, DWORD2(v837), v812[0], DWORD2(v812[0]));
                              v500 = *(v795 + 552);
                              v501 = v814;
                              if (v500 - v814 < 0)
                              {
                                *(v795 + 552) = v814;
                                v500 = v501;
                              }

                              v499 = v795;
                              if (v500 - DWORD2(v837) < 0)
                              {
                                *(v795 + 552) = DWORD2(v837);
                              }
                            }

                            if ((*(v499 + 998) & 0x40) != 0 && (*(v499 + 996) & 0x20) == 0 && (BYTE13(v837) & 2) == 0)
                            {
                              *(v499 + 996) |= 0x20u;
                            }

                            if ((*(v499 + 336) & 4) != 0)
                            {
                              if ((v275 & 2) != 0 || (*(v795 + 2096) & 2) == 0)
                              {
                                if ((v275 & 0x40) != 0 && (*(v499 + 336) & 3) == 3)
                                {
                                  v527 = *(v795 + 200);
                                  v528 = v479 / v527;
                                  v529 = v479 / v527 * v527 == v479 ? v528 : (v528 + 1);
                                  tcp_ece_aggressive_heur(v795, v529);
                                  if ((*(v795 + 90) & 0x20) == 0)
                                  {
                                    tcp_enter_fast_recovery(v795);
                                    *(v795 + 336) |= 0xA8u;
                                    v530 = *(a3 + 448);
                                    if (v530)
                                    {
                                      v531 = 576;
                                      if ((*(a3 + 2380) & 2) == 0)
                                      {
                                        v531 = 192;
                                      }

                                      ++*(v530 + v531);
                                    }

                                    v532 = *(v795 + 1064);
                                    if (v532)
                                    {
                                      ++*(v532 + 864);
                                    }

                                    *(v795 + 376) += v529;
                                  }
                                }
                              }

                              else
                              {
                                v506 = 0;
                                v507 = DWORD2(v837);
                                v508 = *(v795 + 112) + 1;
                                if (DWORD2(v837) == v508)
                                {
                                  v479 = 0;
                                }

                                v509 = *(v795 + 200);
                                if (v479 / v509 * v509 == v479)
                                {
                                  v510 = v479 / v509;
                                }

                                else
                                {
                                  v510 = v479 / v509 + 1;
                                }

                                *(v795 + 308) += v510;
                                if (v507 == v508 && !v815)
                                {
                                  v506 = 0;
                                  if (v812[0])
                                  {
                                    if (DWORD2(v812[0]))
                                    {
                                      v511 = *(v795 + 392);
                                      if (v511)
                                      {
                                        v512 = DWORD2(v812[0]) - v511 <= 0;
                                      }

                                      else
                                      {
                                        v512 = 0;
                                      }

                                      v506 = !v512;
                                    }
                                  }
                                }

                                if (v479 || v815 || v506)
                                {
                                  tcp_process_accecn(v795, v812, &v837, v510, v770);
                                }

                                else
                                {
                                  v479 = 0;
                                }
                              }
                            }

                            if (((v404 | ((*(v795 + 90) & 0x20) >> 5)) & 1) == 0)
                            {
                              v502 = *(tcp_cc_algo_list[*(v795 + 272)] + 56);
                              if (v502)
                              {
                                v502(v795, &v837);
                              }
                            }

                            v503 = *(v15 + 384);
                            if (v479 <= v503)
                            {
                              sbdrop((v15 + 384), v479);
                              tcp_sbsnd_trim(v15 + 384);
                              *(v795 + 144) -= v479;
                              v504 = v15;
                              if (*(v15 + 24))
                              {
                                v513 = nw_protocol_tcp_get_all_stats();
                                if (v513)
                                {
                                  *(v513 + 112) = *(v795 + 144);
                                }
                              }
                            }

                            else
                            {
                              *(v795 + 144) -= v503;
                              v504 = v15;
                              if (*(v15 + 24))
                              {
                                v505 = nw_protocol_tcp_get_all_stats();
                                if (v505)
                                {
                                  *(v505 + 112) = *(v795 + 144);
                                }
                              }

                              sbdrop((v15 + 384), *(v15 + 384));
                            }

                            v514 = *(v795 + 88);
                            v515 = *(v795 + 156);
                            if ((v514 & 0x200000) != 0)
                            {
                              v516 = DWORD2(v837);
                              if (DWORD2(v837) - v515 >= 0)
                              {
                                *(v795 + 88) = v514 & 0xFFDFFFFF;
                                *(v795 + 8) = 0;
                                *(v795 + 322) = 3;
                                *(v795 + 300) = 0;
                                *(v795 + 336) &= ~0x20u;
                                *(v795 + 16) = 0;
                                v517 = *(v795 + 748);
                                *(v795 + 748) = v517 & 0xFFF7FFFF;
                                *(v795 + 992) = 0;
                                *(v795 + 620) = 0;
                                if ((v517 & 0x20400020) == 0x20000020 && (*(v795 + 2077) & 0x1F) != 0)
                                {
                                  *(v795 + 2077) = *(v795 + 2077) & 0xE0 | (*(v795 + 2077) - 1) & 0x1F;
                                }
                              }
                            }

                            else
                            {
                              v516 = DWORD2(v837);
                              if (*(v795 + 92) - v515 >= 1 && DWORD2(v837) - v515 <= 0)
                              {
                                *(v795 + 156) = DWORD2(v837) - 1;
                              }
                            }

                            v204 = v504;
                            tcp_update_snd_una(v795, v516);
                            v518 = *(v795 + 748);
                            v519 = *(v795 + 92);
                            if ((v518 & 0x20) != 0 && v519 - *(v795 + 156) >= 1)
                            {
                              *(v795 + 156) = v519;
                            }

                            if (*(v795 + 100) - v519 < 0)
                            {
                              *(v795 + 100) = v519;
                            }

                            if ((v518 & 0x20400020) == 0x20000020 && tcp_rack_detect_loss_and_arm_timer(v795, 0))
                            {
                              if ((*(v795 + 90) & 0x20) == 0)
                              {
                                tcp_enter_fast_recovery(v795);
                                v520 = *(v795 + 1064);
                                if (v520)
                                {
                                  ++*(v520 + 624);
                                }

                                ++*(v795 + 1016);
                              }

                              tcp_output(v795);
                            }

                            if (*(v795 + 960))
                            {
                              v521 = *(v795 + 968);
                              if (v521 - *(v795 + 96) > 0)
                              {
                                goto LABEL_1293;
                              }

                              v536 = *(v795 + 144);
                              if (v536 >= *(sysctls + 116))
                              {
                                v536 = *(sysctls + 116);
                              }

                              if ((v521 - *(v795 + 92) + v536) < 0)
                              {
LABEL_1293:
                                tcp_rxtseg_clean(v795);
                              }
                            }

                            if ((*(v795 + 748) & 8) != 0 && *(v795 + 776))
                            {
                              tcp_bwmeas_check(v795);
                            }

                            v537 = *(v504 + 32);
                            if (v537)
                            {
                              v538 = *v537;
                              if (v538)
                              {
                                v538(v504);
                              }
                            }

                            v404 = 0;
                            v539 = *(v795 + 12);
                            if (v539 <= 7)
                            {
                              if (v539 == 6)
                              {
                                if (v479 > v503)
                                {
                                  *(v795 + 12) = 9;
                                  if ((*(v204 + 776) & 2) == 0)
                                  {
                                    if (__nwlog_is_datapath_logging_enabled())
                                    {
                                      v716 = __nwlog_tcp_log();
                                      if (os_log_type_enabled(v716, OS_LOG_TYPE_DEBUG))
                                      {
                                        v717 = tcpstates[*(v795 + 12)];
                                        *buf = 136446722;
                                        *&buf[4] = "tcp_input";
                                        *&buf[12] = 2082;
                                        *&buf[14] = v204 + 556;
                                        *&buf[22] = 2082;
                                        *v820 = v717;
                                        _os_log_impl(&dword_1889BA000, v716, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s state change to %{public}s", buf, 0x20u);
                                      }
                                    }
                                  }

                                  if (*(v204 + 24))
                                  {
                                    v541 = nw_protocol_tcp_get_all_stats();
                                    if (v541)
                                    {
                                      *(v541 + 136) = 9;
                                    }
                                  }

                                  if ((*(v204 + 376) & 0x20) == 0)
                                  {
                                    v404 = 0;
LABEL_1361:
                                    v539 = *(v795 + 12);
                                    goto LABEL_1362;
                                  }

                                  tcp_set_finwait_timeout(v795);
                                  goto LABEL_1359;
                                }

LABEL_1350:
                                v404 = 0;
LABEL_1367:
                                a1 = v794;
                                v15 = v204;
                                goto LABEL_1368;
                              }

                              if (v539 == 7)
                              {
                                if (v479 > v503)
                                {
                                  *(v795 + 12) = 10;
                                  if ((*(v204 + 776) & 2) == 0)
                                  {
                                    if (__nwlog_is_datapath_logging_enabled())
                                    {
                                      v714 = __nwlog_tcp_log();
                                      if (os_log_type_enabled(v714, OS_LOG_TYPE_DEBUG))
                                      {
                                        v715 = tcpstates[*(v795 + 12)];
                                        *buf = 136446722;
                                        *&buf[4] = "tcp_input";
                                        *&buf[12] = 2082;
                                        *&buf[14] = v204 + 556;
                                        *&buf[22] = 2082;
                                        *v820 = v715;
                                        _os_log_impl(&dword_1889BA000, v714, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s state change to %{public}s", buf, 0x20u);
                                      }
                                    }
                                  }

                                  if (*(v204 + 24))
                                  {
                                    v540 = nw_protocol_tcp_get_all_stats();
                                    if (v540)
                                    {
                                      *(v540 + 136) = 10;
                                    }
                                  }

                                  tcp_canceltimers(v795);
                                  if ((*(v795 + 749) & 8) != 0)
                                  {
                                    v803 = 0;
                                    *(v795 + 88) |= 0x8000000u;
LABEL_1360:
                                    v404 = 1;
                                    goto LABEL_1361;
                                  }

                                  add_to_time_wait(v795, 2 * *(sysctls + 200));
LABEL_1359:
                                  v803 = 0;
                                  goto LABEL_1360;
                                }

                                goto LABEL_1350;
                              }

LABEL_1362:
                              if (v539 == 4 && (*(v795 + 748) & 0x20) != 0)
                              {
                                if (v815)
                                {
                                  if (HIBYTE(v812[0]))
                                  {
                                    if (!*(v795 + 8) && DWORD2(v837) - *(v795 + 92) <= 0)
                                    {
                                      v456 = HIDWORD(v815);
                                      if (!(HIDWORD(v815) | *(v795 + 748) & 0x2000))
                                      {
                                        v566 = *(v795 + 1064);
                                        if (v566)
                                        {
                                          ++*(v566 + 704);
                                        }

                                        v15 = v204;
                                        v405 = v773;
                                        v255 = v803;
                                        goto LABEL_1430;
                                      }
                                    }
                                  }
                                }
                              }

                              goto LABEL_1367;
                            }

                            if (v539 == 8)
                            {
                              if (v479 > v503)
                              {
                                if ((*(v204 + 776) & 2) == 0)
                                {
                                  if (__nwlog_is_datapath_logging_enabled())
                                  {
                                    v718 = __nwlog_tcp_log();
                                    if (os_log_type_enabled(v718, OS_LOG_TYPE_DEBUG))
                                    {
                                      v719 = tcpstates[*(v795 + 12)];
                                      *buf = 136446722;
                                      *&buf[4] = "tcp_input";
                                      *&buf[12] = 2082;
                                      *&buf[14] = v204 + 556;
                                      *&buf[22] = 2082;
                                      *v820 = v719;
                                      _os_log_impl(&dword_1889BA000, v718, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s ourfinisacked t_state %{public}s", buf, 0x20u);
                                    }
                                  }
                                }

                                tcp_close(v795);
LABEL_1349:
                                a1 = v794;
                                v15 = v204;
                                goto LABEL_984;
                              }

                              goto LABEL_1350;
                            }

                            if (v539 != 10)
                            {
                              goto LABEL_1362;
                            }

                            v162 = v795;
                            add_to_time_wait(v795, 2 * *(sysctls + 200));
                            a1 = v794;
                            v15 = v204;
                            goto LABEL_993;
                          }

                          v483 = 64000;
                        }

                        *(v795 + 196) = v483;
                        goto LABEL_1213;
                      }

                      v486 = v370;
                      if (!v15 || (*(v15 + 776) & 2) == 0)
                      {
                        v487 = __nwlog_tcp_log();
                        if (v15)
                        {
                          v488 = (v15 + 556);
                        }

                        else
                        {
                          v488 = &unk_188A285CF;
                        }

                        v489 = *(v795 + 12);
                        v490 = *(v795 + 120);
                        v491 = *(v795 + 92);
                        *buf = 136449026;
                        *&buf[4] = "tcp_input";
                        *&buf[12] = 2082;
                        *&buf[14] = v488;
                        *&buf[22] = 1024;
                        *v820 = bswap32(v837) >> 16;
                        *&v820[4] = 1024;
                        *&v820[6] = bswap32(WORD1(v837)) >> 16;
                        v821 = 1024;
                        *v822 = v486;
                        *&v822[4] = 1024;
                        *&v822[6] = BYTE13(v837);
                        v823 = 1024;
                        v824 = bswap32(DWORD1(v837));
                        v825 = 1024;
                        v826 = bswap32(DWORD2(v837));
                        v827 = 1024;
                        v828 = bswap32(HIWORD(v837)) >> 16;
                        v829 = 1024;
                        v830 = v489;
                        v831 = 1024;
                        v832 = v490;
                        v833 = 1024;
                        v834 = v491;
                        LODWORD(v766) = 82;
                        v492 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1889BA000, v487, 16, "%{public}s %{public}s assertion failure SEQ_GEQ(tcp_hdr->th_ack, tp->snd_una) %u:%u tlen %u, flags=%{network:tcp_flags}x seq=%u, ack=%u, win=%u state=%{network:tcp_state}x rcv_nxt=%u, snd_una=%u", buf, v766);
                        type[0] = OS_LOG_TYPE_ERROR;
                        v818 = 0;
                        if (__nwlog_fault())
                        {
                          if (type[0] == OS_LOG_TYPE_FAULT)
                          {
                            v493 = __nwlog_tcp_log();
                            v494 = type[0];
                            if (!os_log_type_enabled(v493, type[0]))
                            {
                              goto LABEL_1355;
                            }

                            v495 = *(v795 + 12);
                            v496 = *(v795 + 120);
                            v497 = *(v795 + 92);
                            *buf = 136449026;
                            *&buf[4] = "tcp_input";
                            *&buf[12] = 2082;
                            *&buf[14] = v488;
                            *&buf[22] = 1024;
                            *v820 = bswap32(v837) >> 16;
                            *&v820[4] = 1024;
                            *&v820[6] = bswap32(WORD1(v837)) >> 16;
                            v821 = 1024;
                            *v822 = HIDWORD(v815);
                            *&v822[4] = 1024;
                            *&v822[6] = BYTE13(v837);
                            v823 = 1024;
                            v824 = bswap32(DWORD1(v837));
                            v825 = 1024;
                            v826 = bswap32(DWORD2(v837));
                            v827 = 1024;
                            v828 = bswap32(HIWORD(v837)) >> 16;
                            v829 = 1024;
                            v830 = v495;
                            v831 = 1024;
                            v832 = v496;
                            v833 = 1024;
                            v834 = v497;
                            v498 = "%{public}s %{public}s assertion failure SEQ_GEQ(tcp_hdr->th_ack, tp->snd_una) %u:%u tlen %u, flags=%{network:tcp_flags}x seq=%u, ack=%u, win=%u state=%{network:tcp_state}x rcv_nxt=%u, snd_una=%u";
                            goto LABEL_1354;
                          }

                          if (v818 != 1)
                          {
                            v493 = __nwlog_tcp_log();
                            v494 = type[0];
                            a1 = v794;
                            v7 = v774;
                            if (!os_log_type_enabled(v493, type[0]))
                            {
                              goto LABEL_1355;
                            }

                            v533 = *(v795 + 12);
                            v534 = *(v795 + 120);
                            v535 = *(v795 + 92);
                            *buf = 136449026;
                            *&buf[4] = "tcp_input";
                            *&buf[12] = 2082;
                            *&buf[14] = v488;
                            *&buf[22] = 1024;
                            *v820 = bswap32(v837) >> 16;
                            *&v820[4] = 1024;
                            *&v820[6] = bswap32(WORD1(v837)) >> 16;
                            v821 = 1024;
                            *v822 = HIDWORD(v815);
                            *&v822[4] = 1024;
                            *&v822[6] = BYTE13(v837);
                            v823 = 1024;
                            v824 = bswap32(DWORD1(v837));
                            v825 = 1024;
                            v826 = bswap32(DWORD2(v837));
                            v827 = 1024;
                            v828 = bswap32(HIWORD(v837)) >> 16;
                            v829 = 1024;
                            v830 = v533;
                            v831 = 1024;
                            v832 = v534;
                            v833 = 1024;
                            v834 = v535;
                            v498 = "%{public}s %{public}s assertion failure SEQ_GEQ(tcp_hdr->th_ack, tp->snd_una) %u:%u tlen %u, flags=%{network:tcp_flags}x seq=%u, ack=%u, win=%u state=%{network:tcp_state}x rcv_nxt=%u, snd_una=%u, backtrace limit exceeded";
                            goto LABEL_1354;
                          }

                          v522 = __nw_create_backtrace_string();
                          v493 = __nwlog_tcp_log();
                          v494 = type[0];
                          v523 = os_log_type_enabled(v493, type[0]);
                          if (v522)
                          {
                            if (v523)
                            {
                              v524 = *(v795 + 12);
                              v525 = *(v795 + 120);
                              v526 = *(v795 + 92);
                              *buf = 136449282;
                              *&buf[4] = "tcp_input";
                              *&buf[12] = 2082;
                              *&buf[14] = v488;
                              *&buf[22] = 1024;
                              *v820 = bswap32(v837) >> 16;
                              *&v820[4] = 1024;
                              *&v820[6] = bswap32(WORD1(v837)) >> 16;
                              v821 = 1024;
                              *v822 = HIDWORD(v815);
                              *&v822[4] = 1024;
                              *&v822[6] = BYTE13(v837);
                              v823 = 1024;
                              v824 = bswap32(DWORD1(v837));
                              v825 = 1024;
                              v826 = bswap32(DWORD2(v837));
                              v827 = 1024;
                              v828 = bswap32(HIWORD(v837)) >> 16;
                              v829 = 1024;
                              v830 = v524;
                              v831 = 1024;
                              v832 = v525;
                              v833 = 1024;
                              v834 = v526;
                              v835 = 2082;
                              v836 = v522;
                              _os_log_impl(&dword_1889BA000, v493, v494, "%{public}s %{public}s assertion failure SEQ_GEQ(tcp_hdr->th_ack, tp->snd_una) %u:%u tlen %u, flags=%{network:tcp_flags}x seq=%u, ack=%u, win=%u state=%{network:tcp_state}x rcv_nxt=%u, snd_una=%u, dumping backtrace:%{public}s", buf, 0x5Cu);
                            }

                            free(v522);
                            a1 = v794;
                            v7 = v774;
                            goto LABEL_1355;
                          }

                          a1 = v794;
                          v7 = v774;
                          if (v523)
                          {
                            v542 = *(v795 + 12);
                            v543 = *(v795 + 120);
                            v544 = *(v795 + 92);
                            *buf = 136449026;
                            *&buf[4] = "tcp_input";
                            *&buf[12] = 2082;
                            *&buf[14] = v488;
                            *&buf[22] = 1024;
                            *v820 = bswap32(v837) >> 16;
                            *&v820[4] = 1024;
                            *&v820[6] = bswap32(WORD1(v837)) >> 16;
                            v821 = 1024;
                            *v822 = HIDWORD(v815);
                            *&v822[4] = 1024;
                            *&v822[6] = BYTE13(v837);
                            v823 = 1024;
                            v824 = bswap32(DWORD1(v837));
                            v825 = 1024;
                            v826 = bswap32(DWORD2(v837));
                            v827 = 1024;
                            v828 = bswap32(HIWORD(v837)) >> 16;
                            v829 = 1024;
                            v830 = v542;
                            v831 = 1024;
                            v832 = v543;
                            v833 = 1024;
                            v834 = v544;
                            v498 = "%{public}s %{public}s assertion failure SEQ_GEQ(tcp_hdr->th_ack, tp->snd_una) %u:%u tlen %u, flags=%{network:tcp_flags}x seq=%u, ack=%u, win=%u state=%{network:tcp_state}x rcv_nxt=%u, snd_una=%u, no backtrace";
LABEL_1354:
                            _os_log_impl(&dword_1889BA000, v493, v494, v498, buf, 0x52u);
                          }
                        }

LABEL_1355:
                        if (v492)
                        {
                          free(v492);
                        }
                      }

LABEL_1387:
                      v46 = v797;
                      goto LABEL_1388;
                    }

LABEL_910:
                    v390 = 0;
                    if (v370 == v371 || (v391 = **(v794[1] + 8)) == 0)
                    {
LABEL_926:
                      if (v390 != v374)
                      {
                        v400 = __nwlog_obj();
                        if (os_log_type_enabled(v400, OS_LOG_TYPE_ERROR))
                        {
                          *buf = 136446722;
                          *&buf[4] = "__nw_frame_array_claim";
                          *&buf[12] = 1024;
                          *&buf[14] = v390;
                          *&buf[18] = 1024;
                          *&buf[20] = v374;
                          _os_log_impl(&dword_1889BA000, v400, OS_LOG_TYPE_ERROR, "%{public}s end_offset %u != end_bytes %u", buf, 0x18u);
                        }
                      }
                    }

                    else
                    {
                      v390 = 0;
                      v790 = v275;
                      while (1)
                      {
                        v392 = *(v391 + 52);
                        v393 = *(v391 + 56);
                        v394 = *(v391 + 60);
                        v395 = v392 - (v393 + v394);
                        if (v395 >= v374 - v390)
                        {
                          v395 = v374 - v390;
                        }

                        v396 = v392 ? v395 : 0;
                        v397 = v394 + v396;
                        if (v393 <= v392 - (v394 + v396))
                        {
                          *(v391 + 60) = v397;
                        }

                        else
                        {
                          v398 = __nwlog_obj();
                          if (os_log_type_enabled(v398, OS_LOG_TYPE_ERROR))
                          {
                            v399 = *(v391 + 52);
                            *buf = 136446978;
                            *&buf[4] = "__nw_frame_claim_internal";
                            *&buf[12] = 1024;
                            *&buf[14] = v393;
                            *&buf[18] = 1024;
                            *&buf[20] = v399;
                            *v820 = 1024;
                            *&v820[2] = v397;
                            _os_log_impl(&dword_1889BA000, v398, OS_LOG_TYPE_ERROR, "%{public}s Claiming bytes failed because start (%u) is beyond end (%u - %u)", buf, 0x1Eu);
                          }
                        }

                        v390 += v396;
                        v7 = v774;
                        v275 = v790;
                        if (v390 == v374)
                        {
                          break;
                        }

                        if (*(v391 + 32) != 0 && v390 < v374)
                        {
                          v391 = **(*(v391 + 40) + 8);
                          if (v391)
                          {
                            continue;
                          }
                        }

                        goto LABEL_926;
                      }
                    }

                    goto LABEL_929;
                  }

                  v781 = HIDWORD(v815);
                  v791 = v275;
                  v635 = __nwlog_obj();
                  *buf = 136446210;
                  *&buf[4] = "__nw_frame_is_single_ip_aggregate";
                  LODWORD(v766) = 12;
                  v636 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1889BA000, v635, 16, "%{public}s called with null frame", buf, v766);
                  type[0] = OS_LOG_TYPE_ERROR;
                  v818 = 0;
                  if (__nwlog_fault())
                  {
                    if (type[0] == OS_LOG_TYPE_FAULT)
                    {
                      v637 = __nwlog_obj();
                      v638 = type[0];
                      if (os_log_type_enabled(v637, type[0]))
                      {
                        *buf = 136446210;
                        *&buf[4] = "__nw_frame_is_single_ip_aggregate";
                        v639 = "%{public}s called with null frame";
LABEL_1744:
                        v668 = v637;
                        v669 = v638;
LABEL_1745:
                        _os_log_impl(&dword_1889BA000, v668, v669, v639, buf, 0xCu);
                      }
                    }

                    else if (v818 == 1)
                    {
                      v658 = __nw_create_backtrace_string();
                      v659 = __nwlog_obj();
                      v660 = type[0];
                      v661 = os_log_type_enabled(v659, type[0]);
                      if (v658)
                      {
                        if (v661)
                        {
                          *buf = 136446466;
                          *&buf[4] = "__nw_frame_is_single_ip_aggregate";
                          *&buf[12] = 2082;
                          *&buf[14] = v658;
                          _os_log_impl(&dword_1889BA000, v659, v660, "%{public}s called with null frame, dumping backtrace:%{public}s", buf, 0x16u);
                        }

                        free(v658);
                        goto LABEL_1746;
                      }

                      if (v661)
                      {
                        *buf = 136446210;
                        *&buf[4] = "__nw_frame_is_single_ip_aggregate";
                        v639 = "%{public}s called with null frame, no backtrace";
                        v668 = v659;
                        v669 = v660;
                        goto LABEL_1745;
                      }
                    }

                    else
                    {
                      v637 = __nwlog_obj();
                      v638 = type[0];
                      if (os_log_type_enabled(v637, type[0]))
                      {
                        *buf = 136446210;
                        *&buf[4] = "__nw_frame_is_single_ip_aggregate";
                        v639 = "%{public}s called with null frame, backtrace limit exceeded";
                        goto LABEL_1744;
                      }
                    }
                  }

LABEL_1746:
                  if (v636)
                  {
                    free(v636);
                  }

                  v150 = v786;
                  v275 = v791;
                  v370 = v781;
                  v374 = v372;
                  goto LABEL_896;
                }

                v470 = v15;
                if ((*(v15 + 776) & 2) != 0)
                {
                  goto LABEL_1702;
                }

                v471 = __nwlog_tcp_log();
                if (!os_log_type_enabled(v471, OS_LOG_TYPE_INFO))
                {
                  goto LABEL_1702;
                }

LABEL_1700:
                *buf = 136446466;
                *&buf[4] = "tcp_input";
                *&buf[12] = 2082;
                *&buf[14] = v15 + 556;
                goto LABEL_1701;
              }

              *(v795 + 998) = v360 | 0x80;
              v368 = *(v795 + 1064);
              if (v368)
              {
                ++*(v368 + 1128);
              }

              v256 = v795;
              tcp_tfo_rcv_probe(v795, SHIDWORD(v815));
            }

            v255 = 1;
            goto LABEL_880;
          }
        }

        else
        {
          v353 = *(v345 + 88);
        }

        v354 = v795;
        *(v795 + 88) = v353 | 1;
        goto LABEL_827;
      }

      if (DWORD2(v837) - *(v795 + 112) < 1 || DWORD2(v837) - *(v795 + 96) >= 1)
      {
        v163 = v809;
        if (v806)
        {
          v264 = 1088;
          v161 = v775;
          goto LABEL_1001;
        }

LABEL_632:
        v161 = v775;
        goto LABEL_307;
      }

      v278 = v15;
      if ((v788 & 4) == 0)
      {
        a1 = v794;
        v162 = v795;
        v249 = v788;
        if ((v788 & 2) == 0)
        {
          goto LABEL_1387;
        }

        goto LABEL_539;
      }

      if ((*(v795 + 748) & 0x1400000) == 0x400000)
      {
        tcp_heuristic_tfo_rst(v795);
      }

      v324 = *(v795 + 336);
      if ((v324 & 0x8001) == 1 || (v324 & 0x108000) == 0x100000)
      {
        tcp_heuristic_ecn_synrst(v795);
      }

      tcp_drop(v795, 61);
LABEL_768:
      a1 = v794;
      v15 = v278;
LABEL_984:
      v46 = v797;
      v7 = v774;
LABEL_1388:
      v161 = v775;
LABEL_1389:
      if (v161)
      {
        soabort(v15);
      }

      goto LABEL_1391;
    }
  }

  if ((v788 & 4) != 0)
  {
    v262 = *(v795 + 296);
    v161 = v775;
    if (DWORD1(v837) - v262 >= 0 && (DWORD1(v837) - v262 - v245) < 0)
    {
      v263 = v262 - 1;
    }

    else
    {
      if (v245 && v246 < 5)
      {
        goto LABEL_1029;
      }

      v263 = v262 - 1;
      if (DWORD1(v837) != v262 && v263 != DWORD1(v837))
      {
        goto LABEL_1029;
      }
    }

    if (DWORD1(v837) != v262 && v263 != DWORD1(v837))
    {
      v278 = v15;
      v279 = *(v795 + 1064);
      if (v279)
      {
        ++*(v279 + 312);
      }

      if (tcp_is_ack_ratelimited(v795))
      {
        goto LABEL_768;
      }

      v280 = *(v795 + 1064);
      if (v280)
      {
        ++*(v280 + 112);
      }

      a1 = v794;
LABEL_992:
      v162 = v795;
LABEL_993:
      v7 = v774;
LABEL_994:
      v161 = v775;
      v163 = v809;
      goto LABEL_995;
    }

    v278 = v15;
    if (v246 <= 9)
    {
      if (((1 << v246) & 0x260) != 0)
      {
LABEL_751:
        v326 = 54;
        goto LABEL_752;
      }

      if (((1 << v246) & 0x180) != 0)
      {
        if ((*(v15 + 776) & 2) == 0)
        {
          if (__nwlog_is_datapath_logging_enabled())
          {
            v706 = __nwlog_tcp_log();
            if (os_log_type_enabled(v706, OS_LOG_TYPE_DEBUG))
            {
              v707 = tcpstates[*(v795 + 12)];
              *buf = 136446722;
              *&buf[4] = "tcp_input";
              *&buf[12] = 2082;
              *&buf[14] = v15 + 556;
              *&buf[22] = 2082;
              *v820 = v707;
              _os_log_impl(&dword_1889BA000, v706, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s t_state %{public}s", buf, 0x20u);
            }
          }
        }

        tcp_close(v795);
        goto LABEL_768;
      }

      if (v246 == 4)
      {
        if ((~*(v795 + 336) & 3) == 0 || (*(v795 + 2096) & 2) != 0)
        {
          v325 = *(v795 + 92);
          if (v325 == *(v795 + 112) + 1 && *(v795 + 96) - v325 >= 1)
          {
            tcp_heuristic_ecn_droprst(v795);
          }
        }

        goto LABEL_751;
      }
    }

    if (v246 != 3)
    {
      goto LABEL_768;
    }

    if (v806)
    {
      atomic_fetch_add((v806 + 1096), 1uLL);
    }

    v326 = 61;
LABEL_752:
    *(v15 + 378) = v326;
    if (tcp_perf_measurement == 1)
    {
      if ((*(v15 + 776) & 2) != 0)
      {
        goto LABEL_761;
      }

      if (!__nwlog_is_datapath_logging_enabled())
      {
        goto LABEL_761;
      }

      v327 = __nwlog_tcp_log();
      if (!os_log_type_enabled(v327, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_761;
      }

      v328 = tcpstates[*(v795 + 12)];
      *buf = 136446722;
      *&buf[4] = "tcp_input";
      *&buf[12] = 2082;
      *&buf[14] = v15 + 556;
      *&buf[22] = 2082;
      *v820 = v328;
      v329 = v327;
      v330 = OS_LOG_TYPE_DEBUG;
    }

    else
    {
      if ((*(v15 + 776) & 2) != 0)
      {
        goto LABEL_761;
      }

      v331 = __nwlog_tcp_log();
      if (!os_log_type_enabled(v331, OS_LOG_TYPE_INFO))
      {
        goto LABEL_761;
      }

      v332 = tcpstates[*(v795 + 12)];
      *buf = 136446722;
      *&buf[4] = "tcp_input";
      *&buf[12] = 2082;
      *&buf[14] = v15 + 556;
      *&buf[22] = 2082;
      *v820 = v332;
      v329 = v331;
      v330 = OS_LOG_TYPE_INFO;
    }

    _os_log_impl(&dword_1889BA000, v329, v330, "%{public}s %{public}s ECONNRESET t_state %{public}s", buf, 0x20u);
LABEL_761:
    user_north_signal_error(v15);
    v333 = *(v795 + 1064);
    if (v333)
    {
      ++*(v333 + 424);
    }

    tcp_close(v795);
    a1 = v794;
    goto LABEL_984;
  }

  v163 = v809;
  if (v812[0])
  {
    v258 = *(v795 + 284);
    if (v258)
    {
      if (DWORD1(v812[0]) - v258 < 0)
      {
        if (*v785 - *(v795 + 292) >= 2073600001)
        {
          *(v795 + 284) = 0;
          a1 = v794;
          v248 = v782;
          v163 = v809;
          goto LABEL_569;
        }

        v322 = *(v795 + 1064);
        if (v322)
        {
          v323.i64[0] = vdupq_n_s64(1uLL).u64[0];
          v323.i64[1] = SHIDWORD(v815);
          v322[13] = vaddq_s64(v322[13], v323);
          ++*(v795 + 1008);
          ++v322[14].i64[0];
        }

        else
        {
          ++*(v795 + 1008);
        }

        v365 = *(a3 + 248);
        ++*v365;
        if (v787)
        {
          ++**(a3 + 256);
          if (!v805)
          {
            goto LABEL_858;
          }
        }

        else if (!v805)
        {
LABEL_858:
          if (!v782)
          {
            goto LABEL_860;
          }

          goto LABEL_859;
        }

        ++**(a3 + 264);
        if (!v782)
        {
LABEL_860:
          v366 = SHIDWORD(v815);
          v365[1] += SHIDWORD(v815);
          if (v787)
          {
            *(*(a3 + 256) + 8) += v366;
            if (!v805)
            {
              goto LABEL_862;
            }
          }

          else if (!v805)
          {
LABEL_862:
            if (!v782)
            {
LABEL_864:
              *(v795 + 696) += v366;
              if (*(v15 + 24))
              {
                v367 = nw_protocol_tcp_get_all_stats();
                if (v367)
                {
                  *(v367 + 48) += v366;
                }
              }

              v512 = v366 <= 0;
              a1 = v794;
              v162 = v795;
              v161 = v775;
              v163 = v809;
              if (!v512)
              {
                goto LABEL_995;
              }

LABEL_1029:
              v46 = v797;
              goto LABEL_1389;
            }

LABEL_863:
            *(*(a3 + 272) + 8) += v366;
            goto LABEL_864;
          }

          *(*(a3 + 264) + 8) += v366;
          if (!v782)
          {
            goto LABEL_864;
          }

          goto LABEL_863;
        }

LABEL_859:
        ++**(a3 + 272);
        goto LABEL_860;
      }
    }
  }

LABEL_569:
  v259 = v783;
  if (v246 == 3 && DWORD1(v837) - *(v795 + 116) < 0)
  {
    if (v806)
    {
      v264 = 1104;
      v161 = v775;
      goto LABEL_1001;
    }

    goto LABEL_632;
  }

  if ((*(v163 + 204) & 0x100) != 0 && *MEMORY[0x1E6977EF8])
  {
    if (!(*MEMORY[0x1E6977EF8])(v163, *(v163 + 88)))
    {
      v470 = v15;
      if ((*(v15 + 776) & 2) != 0)
      {
        goto LABEL_1702;
      }

      v471 = __nwlog_tcp_log();
      if (!os_log_type_enabled(v471, OS_LOG_TYPE_INFO))
      {
        goto LABEL_1702;
      }

      goto LABEL_1700;
    }

    v244 = *(v795 + 120);
    v259 = v783;
    v163 = v809;
  }

  v260 = v244 - DWORD1(v837);
  if (v244 - DWORD1(v837) <= 0)
  {
    v277 = HIDWORD(v815);
    v261 = v788;
    goto LABEL_694;
  }

  v261 = v788;
  if ((v788 & 2) != 0)
  {
    v261 = v788 & 0xF9;
    ++DWORD1(v837);
    if (&v837 == v259)
    {
      if (v838 > 1u)
      {
        --v838;
        goto LABEL_648;
      }
    }

    else
    {
      ++*(v259 + 4);
      if (v838 > 1u)
      {
        --v838;
        --*(v259 + 18);
LABEL_648:
        --v260;
        goto LABEL_649;
      }
    }

    v261 = v788 & 0xD9;
    goto LABEL_648;
  }

LABEL_649:
  v288 = HIDWORD(v815);
  if (v260 > SHIDWORD(v815) || (v261 & 1) == 0 && v260 == HIDWORD(v815))
  {
    if ((v788 & 2) != 0)
    {
      if (tcp_is_ack_ratelimited(v795))
      {
LABEL_655:
        v261 &= ~1u;
        if (v260 == 1)
        {
          v289 = *(v15 + 32);
          if (v289)
          {
            v290 = *(v289 + 88);
            if (v290)
            {
              v290(v15, v247, v163);
            }
          }
        }

        v291 = *(v795 + 1064);
        v163 = v809;
        if (!v291)
        {
          v260 = v288;
          goto LABEL_665;
        }

        v292 = v288;
        ++*(v291 + 208);
        v293 = (v291 + 216);
        v260 = v288;
        goto LABEL_664;
      }

      v317 = *(v795 + 1064);
      if (v317)
      {
        ++*(v317 + 104);
      }
    }

    *(v795 + 88) |= 1u;
    goto LABEL_655;
  }

  v294 = *(v795 + 1064);
  if (!v294)
  {
    goto LABEL_665;
  }

  ++*(v294 + 240);
  v292 = v260;
  v293 = (v294 + 248);
LABEL_664:
  *v293 += v292;
LABEL_665:
  if (v260 >= 2)
  {
    v295 = DWORD1(v837);
    *(v795 + 948) = DWORD1(v837);
    *(v795 + 952) = v295 + v260;
    *(v795 + 88) |= 1u;
  }

  v296 = *(a3 + 248);
  ++*v296;
  if (v787)
  {
    ++**(a3 + 256);
    if (!v805)
    {
      goto LABEL_669;
    }
  }

  else if (!v805)
  {
LABEL_669:
    if (!v248)
    {
      goto LABEL_671;
    }

    goto LABEL_670;
  }

  ++**(a3 + 264);
  if (v248)
  {
LABEL_670:
    ++**(a3 + 272);
  }

LABEL_671:
  v296[1] += v260;
  if (v787)
  {
    *(*(a3 + 256) + 8) += v260;
    if (!v805)
    {
      goto LABEL_673;
    }
  }

  else if (!v805)
  {
LABEL_673:
    if (!v248)
    {
      goto LABEL_675;
    }

    goto LABEL_674;
  }

  *(*(a3 + 264) + 8) += v260;
  if (v248)
  {
LABEL_674:
    *(*(a3 + 272) + 8) += v260;
  }

LABEL_675:
  *(v795 + 696) += v260;
  if (*(v15 + 24))
  {
    v297 = nw_protocol_tcp_get_all_stats();
    v163 = v809;
    if (v297)
    {
      *(v297 + 48) += v260;
    }
  }

  if ((*(v163 + 204) & 0x100) != 0 && *MEMORY[0x1E6977EF8] && ((*MEMORY[0x1E6977EF8])(v163, *(v163 + 88)) & 1) == 0)
  {
    v470 = v15;
    if ((*(v15 + 776) & 2) != 0)
    {
      goto LABEL_1702;
    }

    v471 = __nwlog_tcp_log();
    if (!os_log_type_enabled(v471, OS_LOG_TYPE_INFO))
    {
      goto LABEL_1702;
    }

    goto LABEL_1700;
  }

  v799 += v260;
  DWORD1(v837) += v260;
  if (&v837 == v783)
  {
    v277 = v288 - v260;
    HIDWORD(v815) = v288 - v260;
    if (v260 >= v838)
    {
      v261 &= ~0x20u;
      v838 = 0;
    }

    else
    {
      v838 -= v260;
    }
  }

  else
  {
    *(v783 + 4) += v260;
    v277 = v288 - v260;
    HIDWORD(v815) = v288 - v260;
    if (v260 >= v838)
    {
      v261 &= ~0x20u;
      v838 = 0;
      *(v783 + 18) = 0;
    }

    else
    {
      v838 -= v260;
      *(v783 + 18) -= v260;
    }
  }

LABEL_694:
  v162 = v795;
  v788 = v261;
  if (v277)
  {
    v298 = *(v15 + 364);
    v299 = (v298 & 0x1000000) == 0 && (*(v15 + 376) & 1) != 0 && *(v795 + 12) > 5;
    if ((v298 & 8) != 0 && *(v795 + 12) > 6)
    {
      v299 = 1;
    }

    if (*(v15 + 376) & 0x20 | v299)
    {
      v307 = *(v795 + 1064);
      if (v307)
      {
        ++*(v307 + 304);
      }

      tcp_close(v795);
      v161 = v775;
      if (!v806)
      {
        goto LABEL_306;
      }

      v264 = 1112;
LABEL_711:
      v163 = v809;
      goto LABEL_1001;
    }
  }

  v300 = DWORD1(v837);
  v301 = *(v795 + 120);
  v302 = *(v795 + 128);
  v303 = v277 + DWORD1(v837) - (v301 + v302);
  v767 = v15;
  if (v303 < 1)
  {
    goto LABEL_968;
  }

  v304 = *(v795 + 1064);
  if (!v304)
  {
    v306 = v277;
    if (v277 > v303)
    {
      goto LABEL_719;
    }

    if (DWORD1(v837) == v301 && !v302)
    {
      a1 = v794;
      *(v795 + 88) |= 1u;
      goto LABEL_719;
    }

LABEL_991:
    a1 = v794;
    v15 = v767;
    goto LABEL_992;
  }

  v305 = v304[35];
  ++v304[34];
  if (v277 > v303)
  {
    v306 = v277;
    v304[35] = v305 + v303;
    goto LABEL_719;
  }

  v304[35] = v305 + v277;
  if (v300 != v301 || v302)
  {
    goto LABEL_991;
  }

  v306 = v277;
  a1 = v794;
  *(v795 + 88) |= 1u;
  ++v304[36];
LABEL_719:
  v308 = *a1;
  if (!*a1)
  {
    v662 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "__nw_frame_is_single_ip_aggregate";
    LODWORD(v766) = 12;
    v663 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1889BA000, v662, 16, "%{public}s called with null frame", buf, v766);
    type[0] = OS_LOG_TYPE_ERROR;
    v818 = 0;
    if (!__nwlog_fault())
    {
      goto LABEL_1829;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v664 = __nwlog_obj();
      v665 = type[0];
      if (!os_log_type_enabled(v664, type[0]))
      {
        goto LABEL_1829;
      }

      *buf = 136446210;
      *&buf[4] = "__nw_frame_is_single_ip_aggregate";
      v666 = "%{public}s called with null frame";
    }

    else
    {
      if (v818 == 1)
      {
        v691 = __nw_create_backtrace_string();
        v692 = __nwlog_obj();
        v693 = type[0];
        v694 = os_log_type_enabled(v692, type[0]);
        if (v691)
        {
          if (v694)
          {
            *buf = 136446466;
            *&buf[4] = "__nw_frame_is_single_ip_aggregate";
            *&buf[12] = 2082;
            *&buf[14] = v691;
            _os_log_impl(&dword_1889BA000, v692, v693, "%{public}s called with null frame, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v691);
          goto LABEL_1829;
        }

        if (!v694)
        {
LABEL_1829:
          if (v663)
          {
            free(v663);
          }

          goto LABEL_946;
        }

        *buf = 136446210;
        *&buf[4] = "__nw_frame_is_single_ip_aggregate";
        v666 = "%{public}s called with null frame, no backtrace";
        v704 = v692;
        v705 = v693;
LABEL_1828:
        _os_log_impl(&dword_1889BA000, v704, v705, v666, buf, 0xCu);
        goto LABEL_1829;
      }

      v664 = __nwlog_obj();
      v665 = type[0];
      if (!os_log_type_enabled(v664, type[0]))
      {
        goto LABEL_1829;
      }

      *buf = 136446210;
      *&buf[4] = "__nw_frame_is_single_ip_aggregate";
      v666 = "%{public}s called with null frame, backtrace limit exceeded";
    }

    v704 = v664;
    v705 = v665;
    goto LABEL_1828;
  }

  if ((*(v308 + 204) & 0x80) != 0)
  {
    v309 = *(v308 + 196);
    if (v303 <= v309)
    {
      *(v308 + 196) = v309 - v303;
LABEL_946:
      a1 = v794;
      goto LABEL_947;
    }

    v310 = __nwlog_obj();
    v311 = *(v308 + 196);
    *buf = 136446722;
    *&buf[4] = "__nw_frame_array_claim";
    *&buf[12] = 1024;
    *&buf[14] = v311;
    *&buf[18] = 1024;
    *&buf[20] = v303;
    LODWORD(v766) = 24;
    v312 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1889BA000, v310, 16, "%{public}s Aggregate buffer length: %u sum: %u", buf, v766);
    type[0] = OS_LOG_TYPE_ERROR;
    v818 = 0;
    if (__nwlog_fault())
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v313 = __nwlog_obj();
        v314 = type[0];
        if (os_log_type_enabled(v313, type[0]))
        {
          v315 = *(v308 + 196);
          *buf = 136446722;
          *&buf[4] = "__nw_frame_array_claim";
          *&buf[12] = 1024;
          *&buf[14] = v315;
          *&buf[18] = 1024;
          *&buf[20] = v303;
          v316 = "%{public}s Aggregate buffer length: %u sum: %u";
LABEL_941:
          v407 = v313;
LABEL_942:
          _os_log_impl(&dword_1889BA000, v407, v314, v316, buf, 0x18u);
        }
      }

      else if (v818 == 1)
      {
        v361 = __nw_create_backtrace_string();
        v362 = __nwlog_obj();
        v314 = type[0];
        v363 = os_log_type_enabled(v362, type[0]);
        if (v361)
        {
          if (v363)
          {
            v364 = *(v308 + 196);
            *buf = 136446978;
            *&buf[4] = "__nw_frame_array_claim";
            *&buf[12] = 1024;
            *&buf[14] = v364;
            *&buf[18] = 1024;
            *&buf[20] = v303;
            *v820 = 2082;
            *&v820[2] = v361;
            _os_log_impl(&dword_1889BA000, v362, v314, "%{public}s Aggregate buffer length: %u sum: %u, dumping backtrace:%{public}s", buf, 0x22u);
          }

          free(v361);
          goto LABEL_943;
        }

        if (v363)
        {
          v455 = *(v308 + 196);
          *buf = 136446722;
          *&buf[4] = "__nw_frame_array_claim";
          *&buf[12] = 1024;
          *&buf[14] = v455;
          *&buf[18] = 1024;
          *&buf[20] = v303;
          v316 = "%{public}s Aggregate buffer length: %u sum: %u, no backtrace";
          v407 = v362;
          goto LABEL_942;
        }
      }

      else
      {
        v313 = __nwlog_obj();
        v314 = type[0];
        if (os_log_type_enabled(v313, type[0]))
        {
          v406 = *(v308 + 196);
          *buf = 136446722;
          *&buf[4] = "__nw_frame_array_claim";
          *&buf[12] = 1024;
          *&buf[14] = v406;
          *&buf[18] = 1024;
          *&buf[20] = v303;
          v316 = "%{public}s Aggregate buffer length: %u sum: %u, backtrace limit exceeded";
          goto LABEL_941;
        }
      }
    }

LABEL_943:
    if (v312)
    {
      free(v312);
    }

    *(v308 + 196) = 0;
    goto LABEL_946;
  }

LABEL_947:
  v408 = **(a1[1] + 8);
  if (v408)
  {
    v409 = 0;
    while (1)
    {
      v410 = *(v408 + 52);
      v411 = *(v408 + 56);
      v412 = *(v408 + 60);
      v413 = v410 - (v411 + v412);
      if (v413 >= v303 - v409)
      {
        v413 = v303 - v409;
      }

      v414 = v410 ? v413 : 0;
      v415 = v412 + v414;
      if (v411 <= v410 - (v412 + v414))
      {
        *(v408 + 60) = v415;
      }

      else
      {
        v416 = __nwlog_obj();
        if (os_log_type_enabled(v416, OS_LOG_TYPE_ERROR))
        {
          v417 = *(v408 + 52);
          *buf = 136446978;
          *&buf[4] = "__nw_frame_claim_internal";
          *&buf[12] = 1024;
          *&buf[14] = v411;
          *&buf[18] = 1024;
          *&buf[20] = v417;
          *v820 = 1024;
          *&v820[2] = v415;
          _os_log_impl(&dword_1889BA000, v416, OS_LOG_TYPE_ERROR, "%{public}s Claiming bytes failed because start (%u) is beyond end (%u - %u)", buf, 0x1Eu);
        }
      }

      v409 += v414;
      if (v409 == v303)
      {
        break;
      }

      if (*(v408 + 32) != 0 && v409 < v303)
      {
        v408 = **(*(v408 + 40) + 8);
        if (v408)
        {
          continue;
        }
      }

      goto LABEL_964;
    }
  }

  else
  {
    v409 = 0;
LABEL_964:
    if (v409 != v303)
    {
      v418 = __nwlog_obj();
      if (os_log_type_enabled(v418, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        *&buf[4] = "__nw_frame_array_claim";
        *&buf[12] = 1024;
        *&buf[14] = v409;
        *&buf[18] = 1024;
        *&buf[20] = v303;
        _os_log_impl(&dword_1889BA000, v418, OS_LOG_TYPE_ERROR, "%{public}s end_offset %u != end_bytes %u", buf, 0x18u);
      }
    }
  }

  v277 = v306 - v303;
  HIDWORD(v815) = v306 - v303;
  v261 = v788 & 0xFFFFFFF6;
  v162 = v795;
LABEL_968:
  if (v812[0])
  {
    v419 = *(v162 + 296);
    if (DWORD1(v837) - v419 <= 0 && v419 - ((v261 & 3) != 0) - (DWORD1(v837) + v277) <= 0)
    {
      *(v162 + 292) = *v785;
      *(v162 + 284) = DWORD1(v812[0]);
    }
  }

  if ((v261 & 2) == 0)
  {
    v420 = v277;
    goto LABEL_974;
  }

  if (v277 < 1 || DWORD1(v837) != *(v162 + 116) || *(*(*(v162 + 80) + 248) + 8) >> 31)
  {
    v788 = v261;
    if (tcp_is_ack_ratelimited(v162))
    {
LABEL_983:
      a1 = v794;
      v15 = v767;
      goto LABEL_984;
    }

    v424 = *(v162 + 1064);
    if (v424)
    {
      ++*(v424 + 104);
    }

    goto LABEL_991;
  }

  v420 = v277;
  ++DWORD1(v837);
  v261 &= ~2u;
LABEL_974:
  v421 = *(v162 + 12);
  v788 = v261;
  if ((v261 & 0x10) == 0)
  {
    if (v421 == 3)
    {
      if ((*(v162 + 750) & 0x40) != 0)
      {
        *(v795 + 100) = *(v795 + 92);
        v780 = (BYTE13(v837) >> 1) & 1;
      }

      else
      {
        v780 = 0;
      }

      LOBYTE(v275) = v261;
      v150 = v786;
      tcp_input_process_accecn_syn(v795, (v261 | (BYTE12(v837) << 8)) & 0x1C0, v786);
      v404 = 0;
      v255 = 0;
      a1 = v794;
      v15 = v767;
      v7 = v774;
      goto LABEL_934;
    }

    a1 = v794;
    v15 = v767;
    v7 = v774;
    v161 = v775;
    v163 = v809;
    if (*(v162 + 88))
    {
      goto LABEL_995;
    }

    goto LABEL_1029;
  }

  v422 = 0;
  if ((v421 - 4) < 7)
  {
    goto LABEL_986;
  }

  if (v421 != 3)
  {
    v255 = 0;
    v404 = 0;
    v780 = 0;
    goto LABEL_1463;
  }

  v434 = *(v795 + 1064);
  if (v434)
  {
    ++*(v434 + 408);
  }

  if ((~*(v795 + 88) & 0x60) == 0)
  {
    v435 = *(v795 + 271);
    *(v795 + 268) = v435;
    *(v795 + 269) = *(v795 + 270);
    v436 = HIWORD(v837) << v435;
    *(v795 + 144) = v436;
    v773 = v436;
    *(v795 + 260) = v436;
    if (*(v767 + 24))
    {
      v437 = nw_protocol_tcp_get_all_stats();
      v773 = *(v795 + 144);
      if (v437)
      {
        *(v437 + 112) = v773;
      }
    }
  }

  *(v795 + 172) = *v785;
  tcp_sbrcv_tstmp_check(v795);
  if ((*(v795 + 89) & 8) != 0)
  {
    *(v795 + 12) = 6;
    if (!v767 || (*(v767 + 776) & 2) == 0)
    {
      if (__nwlog_is_datapath_logging_enabled())
      {
        v740 = __nwlog_tcp_log();
        if (os_log_type_enabled(v740, OS_LOG_TYPE_DEBUG))
        {
          v741 = tcpstates[*(v795 + 12)];
          *&buf[4] = "tcp_input";
          v742 = &unk_188A285CF;
          *buf = 136446722;
          if (v767)
          {
            v742 = (v767 + 556);
          }

          *&buf[12] = 2082;
          *&buf[14] = v742;
          *&buf[22] = 2082;
          *v820 = v741;
          _os_log_impl(&dword_1889BA000, v740, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s state change to %{public}s", buf, 0x20u);
        }
      }
    }

    if (*(v767 + 24))
    {
      v446 = nw_protocol_tcp_get_all_stats();
      if (v446)
      {
        *(v446 + 136) = 6;
      }
    }

    *(v795 + 88) &= ~0x800u;
  }

  else
  {
    *(v795 + 12) = 4;
    if (!v767 || (*(v767 + 776) & 2) == 0)
    {
      if (__nwlog_is_datapath_logging_enabled())
      {
        v737 = __nwlog_tcp_log();
        if (os_log_type_enabled(v737, OS_LOG_TYPE_DEBUG))
        {
          v738 = tcpstates[*(v795 + 12)];
          *&buf[4] = "tcp_input";
          v739 = &unk_188A285CF;
          *buf = 136446722;
          if (v767)
          {
            v739 = (v767 + 556);
          }

          *&buf[12] = 2082;
          *&buf[14] = v739;
          *&buf[22] = 2082;
          *v820 = v738;
          _os_log_impl(&dword_1889BA000, v737, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s state change to %{public}s", buf, 0x20u);
        }
      }
    }

    if (*(v767 + 24))
    {
      v438 = nw_protocol_tcp_get_all_stats();
      if (v438)
      {
        *(v438 + 136) = 4;
      }
    }

    v439 = *(v795 + 668);
    v440 = *(*(v795 + 80) + 224);
    if (!v439 || (*(v440 + 372) & 8) == 0)
    {
      v439 = *(sysctls + 188);
    }

    *(v795 + 40) = *(nw_tcp_access_globals(v440) + 308) + v439 - *(v795 + 64);
    if (*(v767 + 24))
    {
      v441 = nw_protocol_tcp_get_all_stats();
      if (v441)
      {
        ++*(v441 + 64);
      }
    }
  }

  *(v795 + 320) = 16;
  if (*v795)
  {
    v727 = __nwlog_obj();
    if (os_log_type_enabled(v727, OS_LOG_TYPE_ERROR))
    {
      v728 = 3;
    }

    else
    {
      v728 = 2;
    }

    *buf = 136446210;
    *&buf[4] = "tcp_input";
    LODWORD(v766) = 12;
    v729 = _os_log_send_and_compose_impl(v728, 0, 0, 0, &dword_1889BA000, v727, 16, "%{public}s Assert LIST_EMPTY(&tp->t_segq) failed", buf, v766);
    if (__nwlog_should_abort())
    {
      goto LABEL_1935;
    }

    free(v729);
  }

  *(v795 + 104) = DWORD1(v837) - 1;
  if ((v788 & 0x12) == 0x10)
  {
    v447 = *(v795 + 2096);
    if ((v447 & 2) != 0)
    {
      if (v420 || HIBYTE(v812[0]))
      {
        if (!HIBYTE(v812[0]))
        {
          *(v795 + 412) = 5;
          if (*(v795 + 352) == 5)
          {
            *(v795 + 352) = 8;
          }
        }

        goto LABEL_1183;
      }

      v448 = ((v788 | (BYTE12(v837) << 8)) >> 6) & 7;
      if (v448 <= 2)
      {
        if (!v448)
        {
          v472 = *(v795 + 336);
          *(v795 + 336) = v472 & 0xFFDFFFF1;
          *(v795 + 2096) = v447 & 0xFD;
          if ((v472 & 0x200) != 0 && *(v795 + 234) <= 2u && (*(v795 + 352) & 0xFFFFFFFE) == 4)
          {
            *(v795 + 352) = 6;
          }

          if (*(v795 + 352) != 5)
          {
            goto LABEL_1178;
          }

          v467 = 7;
          goto LABEL_1176;
        }

        if (v448 == 2)
        {
          *(v795 + 412) = 5;
          if (*(v795 + 352) == 5)
          {
            v467 = 8;
LABEL_1176:
            *(v795 + 352) = v467;
          }

LABEL_1178:
          if (v812[0])
          {
            if (DWORD2(v812[0]))
            {
              v473 = *(v795 + 392);
              if (!v473 || ((DWORD2(v812[0]) - v473) & 0x80000000) == 0)
              {
                *(v795 + 392) = DWORD2(v812[0]);
              }
            }
          }

LABEL_1183:
          tcp_input_ip_ecn(v795, a3, v420, v793, v786);
          goto LABEL_1184;
        }
      }

      else
      {
        if (v448 - 3 < 2)
        {
          v449 = v795;
          *(v795 + 412) = 5;
          goto LABEL_1161;
        }

        if (v448 == 6)
        {
          v449 = v795;
          *(v795 + 412) = 6;
          *(v795 + 148) = 2 * *(v795 + 200);
LABEL_1161:
          if (*(v449 + 352) == 5)
          {
            v467 = 9;
            goto LABEL_1176;
          }

          goto LABEL_1178;
        }
      }

      *(v795 + 412) = 5;
      goto LABEL_1178;
    }
  }

LABEL_1184:
  v474 = *(v795 + 996);
  if ((v474 & 2) == 0)
  {
    v422 = 1;
    goto LABEL_1188;
  }

  atomic_fetch_add_explicit(&tcp_tfo_halfcnt, 0xFFFFFFFF, memory_order_relaxed);
  if (tcp_tfo_halfcnt < 0)
  {
    v734 = __nwlog_obj();
    if (os_log_type_enabled(v734, OS_LOG_TYPE_ERROR))
    {
      v735 = 3;
    }

    else
    {
      v735 = 2;
    }

    *buf = 136446210;
    *&buf[4] = "tcp_input";
    LODWORD(v766) = 12;
    v736 = _os_log_send_and_compose_impl(v735, 0, 0, 0, &dword_1889BA000, v734, 16, "%{public}s Assert tcp_tfo_halfcnt >= 0 failed", buf, v766);
    if (!__nwlog_should_abort())
    {
      free(v736);
      v474 = *(v795 + 996);
      goto LABEL_1187;
    }

LABEL_1935:
    __break(1u);
LABEL_1936:
    if ((*(v767 + 776) & 2) == 0)
    {
      v765 = __nwlog_tcp_log();
      if (os_log_type_enabled(v765, OS_LOG_TYPE_INFO))
      {
        *buf = 136446466;
        *&buf[4] = "tcp_input";
        *&buf[12] = 2082;
        *&buf[14] = v767 + 556;
        _os_log_impl(&dword_1889BA000, v765, OS_LOG_TYPE_INFO, "%{public}s %{public}s dropping input packet since frame is no longer valid", buf, 0x16u);
      }
    }

    *(v795 + 1064) = 0;
    goto LABEL_983;
  }

LABEL_1187:
  v422 = 0;
  *(v795 + 996) = v474 & 0xFD;
LABEL_1188:
  if (*(v767 + 384))
  {
    v475 = *(v795 + 92) + 1;
    *(v795 + 92) = v475;
    if (*(v767 + 24))
    {
      v476 = nw_protocol_tcp_get_all_stats();
      v475 = *(v795 + 92);
      if (v476)
      {
        *(v476 + 108) = *(v795 + 96) - v475;
        v475 = *(v795 + 92);
      }
    }

    if (*(v795 + 100) - v475 < 0)
    {
      *(v795 + 100) = v475;
    }

    if ((*(v795 + 748) & 0x20) == 0 || !HIBYTE(v812[0]) && !*(v795 + 536))
    {
      goto LABEL_1195;
    }

    v256 = v795;
    tcp_sack_doack(v795, v812, SDWORD2(v837), &v815, &v814);
    goto LABEL_1199;
  }

LABEL_986:
  if (DWORD2(v837) - *(v795 + 96) >= 1)
  {
    v423 = *(v795 + 1064);
    if (v423)
    {
      ++*(v423 + 184);
    }

    goto LABEL_1028;
  }

  v428 = *(v795 + 728);
  v429 = *(v795 + 260);
  if (v428 >= v429)
  {
    v430 = *(v795 + 260);
  }

  else
  {
    v430 = *(v795 + 728);
  }

  if (v428 >= v429)
  {
    LODWORD(v428) = *(v795 + 260);
  }

  if (v430 <= 0x64)
  {
    LODWORD(v428) = 100;
  }

  if (DWORD2(v837) - *(v795 + 92) + v428 >= 0)
  {
    if ((*(v795 + 748) & 0x20) != 0 && HIBYTE(v812[0]))
    {
      v431 = tcp_sack_process_dsack(v795, v812, &v837, &v811);
      v432 = v431;
      if ((*(v795 + 748) & 0x20400020) == 0x20000020)
      {
        if (v431 && !v811)
        {
          *(v795 + 2077) |= 0x40u;
        }

        tcp_rack_update_reordering_window(v795, v814);
      }

      if (v432 && DWORD2(v837) - *(v795 + 92) <= 0 && !HIBYTE(v812[0]))
      {
        tcp_bad_rexmt_check(v795, &v837, v812);
        goto LABEL_983;
      }
    }

    if ((*(v795 + 748) & 0x20) != 0 && (HIBYTE(v812[0]) || *(v795 + 536)))
    {
      tcp_sack_doack(v795, v812, SDWORD2(v837), &v815, &v814);
    }

    tcp_tfo_rcv_ack(v795, &v837);
    if (DWORD2(v837) - *(v795 + 92) <= 0)
    {
      v445 = *(v795 + 748);
      if ((~v445 & 0x20000020) == 0 && (v445 & 0x400000) == 0 && v815 && *(v795 + 552) - v814 < 0)
      {
        *(v795 + 552) = v814;
      }

      if ((*(v795 + 2096) & 2) != 0 && (*(v795 + 336) & 4) != 0 && !v815)
      {
        ++*(v795 + 308);
        if ((v812[0] & 1) != 0 && DWORD2(v812[0]) && DWORD2(v812[0]) - *(v795 + 392) >= 1)
        {
          tcp_process_accecn(v795, v812, &v837, 1u, v770);
        }
      }

      if (v420)
      {
        v404 = 0;
        v780 = 0;
      }

      else
      {
        if (v773 == *(v795 + 144) || (v404 = 0, HIBYTE(v812[0])) && v815)
        {
          if (v788)
          {
            v456 = 0;
            v404 = 0;
            v780 = 0;
            a1 = v794;
            v15 = v767;
            v7 = v774;
            v150 = v786;
            LOBYTE(v275) = v788;
            v405 = v773;
            v255 = v422;
            if (*(v795 + 12) < 10)
            {
              goto LABEL_1369;
            }
          }

          else
          {
            v456 = 0;
            v404 = 0;
            v780 = 0;
            v15 = v767;
            LOBYTE(v275) = v788;
            v405 = v773;
            v255 = v422;
          }

LABEL_1430:
          v773 = v405;
          LOBYTE(v788) = v275;
          v767 = v15;
          v567 = *(v795 + 336);
          if ((v567 & 0x20) != 0)
          {
            v567 &= ~0x20u;
            *(v795 + 336) = v567;
          }

          v568 = *(v795 + 8);
          v569 = *(v795 + 1064);
          if (v569)
          {
            ++*(v569 + 176);
          }

          v570 = *(v795 + 748);
          v571 = v815;
          if ((v570 & 0x20) != 0)
          {
            v572 = v815 / *(v795 + 200);
            if (v572 <= 1)
            {
              v572 = 1;
            }
          }

          else
          {
            v572 = 1;
          }

          *(v795 + 8) = v568 + v572;
          if ((v570 & 0x20400020) != 0x20000020)
          {
            *(v795 + 620) += v571;
          }

          if (v571 && (*(v795 + 2096) & 2) != 0 && (v567 & 4) != 0 && *(v795 + 12) == 4)
          {
            v573 = *(v795 + 200);
            if (v571 / v573 * v573 == v571)
            {
              v574 = v571 / v573;
            }

            else
            {
              v574 = v571 / v573 + 1;
            }

            *(v795 + 308) += v574;
            tcp_process_accecn(v795, v812, &v837, v574, v770);
          }

          if (*(v795 + 276) && *v785 - *(v795 + 280) - 60000 >= 0)
          {
            *(v795 + 276) = 0;
          }

          if ((*(v795 + 90) & 0x20) == 0)
          {
            tcp_early_rexmt_check(v795);
          }

          if ((*(v795 + 748) & 0x20400020) == 0x20000020)
          {
            v575 = tcp_rack_detect_loss_and_arm_timer(v795, *(v795 + 8));
          }

          else
          {
            v575 = 0;
          }

          if (*(v795 + 28))
          {
            v576 = *(v795 + 92);
            if (DWORD2(v837) == v576 || v571)
            {
              v581 = *(v795 + 748);
              if ((v581 & 0x20400020) != 0x20000020 && (v582 = *(v795 + 322), *(v795 + 8) > v582) && v568 >= v582 || (v583 = *(v795 + 88), (v583 & 0x200000) != 0))
              {
                if ((v581 & 0x20) == 0)
                {
                  goto LABEL_1498;
                }

                v590 = *(v795 + 88);
                if ((~v581 & 0x6000) == 0 && (v590 & 0x200000) == 0)
                {
                  goto LABEL_1463;
                }

                if ((v590 & 0x200000) != 0)
                {
                  v657 = *(v795 + 152);
                  if (*(v795 + 100) - *(v795 + 552) + *(v795 + 616) < v657)
                  {
                    if (*(v795 + 148) + *(v795 + 200) < v657)
                    {
                      v657 = *(v795 + 148) + *(v795 + 200);
                    }

                    *(v795 + 148) = v657;
                  }
                }

                else
                {
LABEL_1498:
                  *(v795 + 148) += *(v795 + 200);
                }

                v591 = *(v795 + 144);
              }

              else
              {
                if ((v575 & 1) == 0)
                {
                  v584 = *(v795 + 8);
                  if ((v581 & 0x20400020) == 0x20000020 || v584 < *(v795 + 322))
                  {
                    if (v584 >= 1)
                    {
                      v585 = ~v581 & 0x6000;
                      v586 = (v581 & 0x20) != 0 && v571 == 0;
                      v587 = !v586;
                      if (v585 && v584 < *(v795 + 322) && v587 && v576 - *(v795 + 96) + *(v15 + 384))
                      {
                        v588 = *(v795 + 200) * v584;
                        *(v795 + 148) += v588;
                        v589 = *(v795 + 1064);
                        if (v589)
                        {
                          ++*(v589 + 688);
                        }

                        if (tcp_output(v795) && (*(v809 + 204) & 0x100) != 0 && *MEMORY[0x1E6977EF8] && ((*MEMORY[0x1E6977EF8])(v809, *(v809 + 88)) & 1) == 0)
                        {
                          goto LABEL_1936;
                        }

                        *(v795 + 148) -= v588;
                      }
                    }

                    goto LABEL_1463;
                  }
                }

                v630 = *(v795 + 100);
                if ((v581 & 0x20) != 0)
                {
                  if ((v581 & 0x4000) != 0)
                  {
                    goto LABEL_1463;
                  }
                }

                else if (DWORD2(v837) - *(v795 + 156) <= 0)
                {
                  *(v795 + 8) = 0;
                  goto LABEL_1463;
                }

                *(v795 + 156) = *(v795 + 96) + (v583 << 27 >> 31);
                *(v795 + 16) = 0;
                *(v795 + 176) = 0;
                if ((v581 & 0x6020) == 0x2020 && *(v795 + 528) && (*(v795 + 12) | 2) == 6)
                {
                  v650 = *(v795 + 528);
                  *(v795 + 20) = *(nw_tcp_access_globals(*(*(v795 + 80) + 224)) + 308) + v650 - *(v795 + 64);
                  *(v795 + 748) |= 0x4000u;
                  v651 = *(v795 + 1064);
                  if (v651)
                  {
                    ++*(v651 + 984);
                  }

                  goto LABEL_1463;
                }

                tcp_rexmt_save_state(v795);
                v652 = *(tcp_cc_algo_list[*(v795 + 272)] + 64);
                if (v652)
                {
                  v652(v795);
                }

                *(v795 + 88) |= 0x200000u;
                v653 = *(v795 + 80);
                if ((*(v653 + 2375) & 0x40) != 0)
                {
                  inp_reset_fc_state(v653);
                }

                if (*(v795 + 960))
                {
                  tcp_rxtseg_clean(v795);
                }

                *(v795 + 28) = 0;
                if ((*(v795 + 2096) & 2) == 0)
                {
                  v654 = *(v795 + 336);
                  if ((~v654 & 3) == 0)
                  {
                    *(v795 + 336) = v654 | 8;
                  }
                }

                v655 = *(v795 + 748);
                if ((v655 & 0x20) == 0)
                {
                  *(v795 + 100) = DWORD2(v837);
                  *(v795 + 148) = *(v795 + 200);
                  *(v795 + 748) = v655 & 0xFFEFFFDF;
                  if (v773 > *(v795 + 144))
                  {
                    tcp_update_window(v795, v275, &v837, v773, v456);
                  }

                  tcp_output(v795);
                  if ((*(v795 + 750) & 0x10) != 0)
                  {
                    tcp_cc_adjust_nonvalidated_cwnd(v795);
                  }

                  else
                  {
                    *(v795 + 148) = *(v795 + 152) + *(v795 + 8) * *(v795 + 200);
                  }

                  if (v630 - *(v795 + 100) >= 1)
                  {
                    *(v795 + 100) = v630;
                  }

                  goto LABEL_983;
                }

                v667 = *(v795 + 1064);
                if ((v655 & 0x20400000) == 0x20000000)
                {
                  if (v667)
                  {
                    ++*(v667 + 624);
                  }

                  ++*(v795 + 1016);
                }

                else
                {
                  if (v667)
                  {
                    ++*(v667 + 568);
                  }

                  ++*(v795 + 1012);
                }

                *(v795 + 148) = *(v795 + 152);
                *(v795 + 748) = v655 & 0xFFEFFFFF;
                v591 = *(v795 + 144);
              }

              if (v773 > v591)
              {
                tcp_update_window(v795, v275, &v837, v773, v456);
              }

              tcp_output(v795);
              goto LABEL_983;
            }
          }

          *(v795 + 8) = 0;
          *(v795 + 322) = 3;
LABEL_1463:
          a1 = v794;
          v15 = v767;
          v7 = v774;
          v150 = v786;
          LOBYTE(v275) = v788;
          goto LABEL_934;
        }

        v780 = 0;
      }

      a1 = v794;
      v15 = v767;
      v7 = v774;
      v150 = v786;
      LOBYTE(v275) = v788;
      v405 = v773;
      v255 = v422;
      goto LABEL_1369;
    }

    v442 = *(v795 + 88);
    if ((v442 & 0x200000) == 0)
    {
      v443 = *(v795 + 748);
      if ((~v443 & 0x6000) != 0)
      {
        v404 = 0;
        v256 = v795;
        *(v795 + 8) = 0;
        *(v795 + 322) = 3;
        goto LABEL_1200;
      }

      if (DWORD2(v837) - *(v795 + 156) >= 0 || !*(v795 + 536))
      {
        v404 = 0;
        v256 = v795;
        *(v795 + 8) = 0;
        *(v795 + 322) = 3;
        *(v795 + 300) = 0;
        *(v795 + 336) &= ~0x20u;
        *(v795 + 16) = 0;
        *(v795 + 748) = v443 & 0xFFF7BFFF;
        *(v795 + 992) = 0;
        *(v795 + 620) = 0;
LABEL_1200:
        a1 = v794;
        goto LABEL_1201;
      }

LABEL_1195:
      v404 = 0;
      a1 = v794;
      v256 = v795;
LABEL_1201:
      v15 = v767;
      v7 = v774;
      v275 = v788;
      v255 = v422;
      v370 = v420;
      goto LABEL_1202;
    }

    if (DWORD2(v837) - *(v795 + 156) >= 0)
    {
      *(v795 + 88) = v442 & 0xFFDFFFFF;
      *(v795 + 8) = 0;
      *(v795 + 322) = 3;
      *(v795 + 300) = 0;
      *(v795 + 336) &= ~0x20u;
      *(v795 + 16) = 0;
      v453 = *(v795 + 748) & 0xFFF7FFFF;
      *(v795 + 748) = v453;
      *(v795 + 992) = 0;
      *(v795 + 620) = 0;
      v454 = *(tcp_cc_algo_list[*(v795 + 272)] + 72);
      if (v454)
      {
        v454(v795, &v837);
        v453 = *(v795 + 748);
      }

      if ((v453 & 0x20400020) == 0x20000020 && (*(v795 + 2077) & 0x1F) != 0)
      {
        *(v795 + 2077) = *(v795 + 2077) & 0xE0 | (*(v795 + 2077) - 1) & 0x1F;
      }

      v256 = v795;
      *(v795 + 988) = 0;
      *(v795 + 980) = 0;
      *(v795 + 972) = 0;
      *(v795 + 759) = 0;
      v404 = 1;
      goto LABEL_1200;
    }

    if ((*(v795 + 336) & 0x20) != 0)
    {
      goto LABEL_1195;
    }

    v457 = *(v795 + 748);
    if ((v457 & 0x20400020) == 0x20000020)
    {
      goto LABEL_1195;
    }

    v256 = v795;
    if ((v457 & 0x20) != 0)
    {
      tcp_sack_partialack(v795, &v837);
    }

    else
    {
      tcp_newreno_partial_ack(v795, &v837);
    }

LABEL_1199:
    v404 = 0;
    goto LABEL_1200;
  }

LABEL_1028:
  v162 = v795;
  is_ack_ratelimited = tcp_is_ack_ratelimited(v795);
  a1 = v794;
  v15 = v767;
  v7 = v774;
  v161 = v775;
  v163 = v809;
  if (is_ack_ratelimited)
  {
    goto LABEL_1029;
  }

LABEL_995:
  if (*(v162 + 12) == 3 && (v788 & 0x10) != 0 && (*(v162 + 92) - DWORD2(v837) > 0 || DWORD2(v837) - *(v162 + 96) >= 1))
  {
    if (!v806)
    {
      goto LABEL_307;
    }

    v264 = 1104;
LABEL_1001:
    atomic_fetch_add((v806 + v264), 1uLL);
LABEL_307:
    if ((v788 & 4) == 0)
    {
      if ((v788 & 0x10) != 0)
      {
        v166 = DWORD2(v837);
        v165 = v162;
        v164 = 0;
        v167 = 4;
      }

      else
      {
        v164 = HIDWORD(v815) + ((v788 >> 1) & 1) + DWORD1(v837);
        v165 = v162;
        v166 = 0;
        v167 = 20;
      }

      tcp_respond(v165, &v837, v163, v164, v166, v167, 0);
      if (v161)
      {
        soabort(v15);
      }

      (*(*(v15 + 8) + 24))(v15, 1, v7);
      *v810 = v797 != 0;
      v173 = *a1;
      if (*a1)
      {
        *(v173 + 40) = type;
        v174 = a1[1];
        *type = v173;
        v817 = v174;
        *a1 = 0;
        a1[1] = a1;
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 0x40000000;
        *&buf[16] = ____nw_frame_array_finalize_block_invoke_289;
        *v820 = &__block_descriptor_tmp_290;
        v820[8] = 1;
        do
        {
          v175 = *type;
          if (!*type)
          {
            break;
          }

          nw_frame_array_remove();
        }

        while (((*&buf[16])(buf, v175) & 1) != 0);
      }

      return;
    }

    goto LABEL_1029;
  }

  *(v162 + 88) |= 1u;
  tcp_output(v162);
  (*(*(v15 + 8) + 24))(v15, 1, v7);
  *v810 = v797 != 0;
  v425 = *a1;
  if (*a1)
  {
    *(v425 + 40) = type;
    v426 = a1[1];
    *type = v425;
    v817 = v426;
    *a1 = 0;
    a1[1] = a1;
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 0x40000000;
    *&buf[16] = ____nw_frame_array_finalize_block_invoke_289;
    *v820 = &__block_descriptor_tmp_290;
    v820[8] = 1;
    do
    {
      v427 = *type;
      if (!*type)
      {
        break;
      }

      nw_frame_array_remove();
    }

    while (((*&buf[16])(buf, v427) & 1) != 0);
  }
}

uint64_t tcp_set_lotimer_index(uint64_t result)
{
  v36 = *MEMORY[0x1E69E9840];
  v1 = *(result + 16);
  v2 = *(result + 20);
  v3 = result + 16;
  v4 = 8 * (v1 == 0);
  v5 = *(result + 24);
  v6 = v2 - 1;
  v7 = v2 != 0;
  if (v2 - 1 >= (v1 - 1))
  {
    v2 = *(result + 16);
  }

  if (v6 < v1 - 1)
  {
    v4 = 1;
  }

  v8 = v2 - 1;
  v9 = (v5 | v1) != 0;
  if (v5 - 1 < (v2 - 1))
  {
    v2 = *(result + 24);
  }

  v10 = v9 || v7;
  if (v5 - 1 < v8)
  {
    v4 = 2;
  }

  v11 = *(result + 28);
  if (v2 - 1 >= v11)
  {
    v12 = *(result + 28);
  }

  else
  {
    v12 = v2;
  }

  if (v2 - 1 >= v11)
  {
    v13 = 3;
  }

  else
  {
    v13 = v4;
  }

  if (v11)
  {
    v2 = v12;
    v10 |= 2u;
    v4 = v13;
  }

  v14 = *(result + 32);
  v15 = *(result + 36);
  if (v2 - 1 >= v14)
  {
    v16 = *(result + 32);
  }

  else
  {
    v16 = v2;
  }

  if (v2 - 1 >= v14)
  {
    v17 = 4;
  }

  else
  {
    v17 = v4;
  }

  if (v14)
  {
    v2 = v16;
    v10 |= 2u;
    v4 = v17;
  }

  if (v2 - 1 >= v15)
  {
    v18 = *(result + 36);
  }

  else
  {
    v18 = v2;
  }

  if (v2 - 1 >= v15)
  {
    v19 = 5;
  }

  else
  {
    v19 = v4;
  }

  if (v15)
  {
    v2 = v18;
    v10 |= 4u;
    v20 = v19;
  }

  else
  {
    v20 = v4;
  }

  v22 = *(result + 40);
  v21 = *(result + 44);
  if (v2 - 1 >= v22)
  {
    v23 = *(result + 40);
  }

  else
  {
    v23 = v2;
  }

  if (v2 - 1 >= v22)
  {
    v24 = 6;
  }

  else
  {
    v24 = v20;
  }

  if (v22)
  {
    v25 = v10 | 4;
  }

  else
  {
    v23 = v2;
    v25 = v10;
  }

  if (v22)
  {
    v26 = v24;
  }

  else
  {
    v26 = v20;
  }

  if (v21)
  {
    v27 = v25 | 4;
    if (v23 - 1 >= v21)
    {
      v26 = 7;
    }

    *(result + 72) = v26;
    *(result + 74) = v27;
    if (v26 == 8)
    {
      return result;
    }

    goto LABEL_56;
  }

  *(result + 72) = v26;
  *(result + 74) = v25;
  if (v26 == 8 || v25 != 0)
  {
    if (v26 == 8)
    {
      return result;
    }

    goto LABEL_56;
  }

  v30 = result;
  v31 = __nwlog_obj();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
  {
    v32 = 3;
  }

  else
  {
    v32 = 2;
  }

  v34 = 136446210;
  v35 = "tcp_set_lotimer_index";
  v33 = _os_log_send_and_compose_impl(v32, 0, 0, 0, &dword_1889BA000, v31, 16, "%{public}s Assert tp->tentry.index == UTCPT_NONE || tp->tentry.mode > 0 failed", &v34, 12);
  result = __nwlog_should_abort();
  if (result)
  {
    __break(1u);
    return result;
  }

  free(v33);
  result = v30;
  v26 = *(v30 + 72);
  if (v26 != 8)
  {
LABEL_56:
    v29 = *(v3 + 4 * v26) + *(result + 64);
    if (v29 != *(result + 68))
    {
      if (v29 <= 1)
      {
        v29 = 1;
      }

      *(result + 68) = v29;
      result = nw_tcp_access_globals(*(*(result + 80) + 224));
      if (*(result + 280))
      {
        *(result + 302) |= 4u;
      }
    }
  }

  return result;
}

uint64_t tcp_getlock(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  if (*a1)
  {
    if ((*(a1 + 360) & 0x80000000) == 0)
    {
      return *a1 + 24;
    }

    if ((*(a1 + 776) & 2) == 0)
    {
      v5 = __nwlog_tcp_log();
      v6 = *(a1 + 360);
      *buf = 136447234;
      v14 = "tcp_getlock";
      v15 = 2082;
      v16 = a1 + 556;
      v17 = 2048;
      v18 = a1;
      v19 = 1024;
      *v20 = v6;
      *&v20[4] = 2082;
      *&v20[6] = &unk_188A285CF;
      v4 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1889BA000, v5, 16, "%{public}s %{public}s tcp_getlock: so=%p usecount=%x lrh= %{public}s", buf, 48);
      if (!__nwlog_fault())
      {
        goto LABEL_15;
      }

      v9 = __nwlog_tcp_log();
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_15;
      }

      v10 = *(a1 + 360);
      *buf = 136447234;
      v14 = "tcp_getlock";
      v15 = 2082;
      v16 = a1 + 556;
      v17 = 2048;
      v18 = a1;
      v19 = 1024;
      *v20 = v10;
      *&v20[4] = 2082;
      *&v20[6] = &unk_188A285CF;
      v8 = "%{public}s %{public}s tcp_getlock: so=%p usecount=%x lrh= %{public}s, backtrace limit exceeded";
      v11 = v9;
      v12 = 48;
LABEL_14:
      _os_log_impl(&dword_1889BA000, v11, OS_LOG_TYPE_ERROR, v8, buf, v12);
LABEL_15:
      if (v4)
      {
        free(v4);
      }
    }
  }

  else if ((*(a1 + 776) & 2) == 0)
  {
    v3 = __nwlog_tcp_log();
    *buf = 136446978;
    v14 = "tcp_getlock";
    v15 = 2082;
    v16 = a1 + 556;
    v17 = 2048;
    v18 = a1;
    v19 = 2082;
    *v20 = &unk_188A285CF;
    v4 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1889BA000, v3, 16, "%{public}s %{public}s tcp_getlock: so=%p NULL so_pcb %{public}s", buf, 42);
    if (!__nwlog_fault())
    {
      goto LABEL_15;
    }

    v7 = __nwlog_tcp_log();
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    *buf = 136446978;
    v14 = "tcp_getlock";
    v15 = 2082;
    v16 = a1 + 556;
    v17 = 2048;
    v18 = a1;
    v19 = 2082;
    *v20 = &unk_188A285CF;
    v8 = "%{public}s %{public}s tcp_getlock: so=%p NULL so_pcb %{public}s, backtrace limit exceeded";
    v11 = v7;
    v12 = 42;
    goto LABEL_14;
  }

  return 0;
}

void tcp_compute_rtt(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24 = *MEMORY[0x1E69E9840];
  if (!a2 || !a3)
  {
    v19 = __nwlog_obj();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = 3;
    }

    else
    {
      v20 = 2;
    }

    v22 = 136446210;
    v23 = "tcp_compute_rtt";
    v21 = _os_log_send_and_compose_impl(v20, 0, 0, 0, &dword_1889BA000, v19, 16, "%{public}s Assert to != NULL && th != NULL failed", &v22, 12);
    if (__nwlog_should_abort())
    {
      __break(1u);
      return;
    }

    free(v21);
  }

  v6 = nw_tcp_access_globals(*(*(a1 + 80) + 224));
  v7 = *(a1 + 176);
  if (v7 && (v8 = *(a3 + 8), v8 - *(a1 + 180) >= 1))
  {
    v9 = *(v6 + 308) - v7;
    if (v9)
    {
      v10 = v9;
    }

    else
    {
      v10 = 1;
    }

    v11 = v8 - *(a1 + 984);
    if (v11 >= 1)
    {
      v12 = *(a1 + 759);
      *(a1 + 972 + 4 * v12) = v11;
      *(a1 + 759) = (v12 + 1) % 3u;
      v13 = *(a1 + 972);
      if (v13 <= *(a1 + 976))
      {
        v13 = *(a1 + 976);
      }

      if (*(a1 + 980) > v13)
      {
        v13 = *(a1 + 980);
      }

      if (*(sysctls + 280))
      {
        v14 = *(sysctls + 16);
      }

      else
      {
        v14 = 10;
      }

      if (v13 <= *(a1 + 200) * v14)
      {
        v13 = 0;
      }

      *(a1 + 988) = v13;
    }

    *(a1 + 176) = 0;
    if ((*a2 & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v10 = 0;
    if ((*a2 & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  v15 = *(a2 + 8);
  if (v15)
  {
    v16 = *(v6 + 308) - v15;
    if (v16 >= 0)
    {
      v17 = *(a3 + 8);
      v18 = a1;
      v10 = v16;
      goto LABEL_27;
    }
  }

LABEL_25:
  if (v10 < 1)
  {
    return;
  }

  v17 = *(a3 + 8);
  v18 = a1;
  v15 = 0;
LABEL_27:
  tcp_xmit_timer(v18, v10, v15, v17);
}

void nw_protocol_tcp_input_available(uint64_t a1)
{
  v86 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v63 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_tcp_input_available";
    v64 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1889BA000, v63, 16, "%{public}s called with null protocol", buf, 12);
    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v76) = 0;
    if (!__nwlog_fault())
    {
      goto LABEL_139;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v65 = __nwlog_obj();
      v66 = type[0];
      if (!os_log_type_enabled(v65, type[0]))
      {
        goto LABEL_139;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_tcp_input_available";
      v67 = "%{public}s called with null protocol";
      goto LABEL_138;
    }

    if (v76 != 1)
    {
      v65 = __nwlog_obj();
      v66 = type[0];
      if (!os_log_type_enabled(v65, type[0]))
      {
        goto LABEL_139;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_tcp_input_available";
      v67 = "%{public}s called with null protocol, backtrace limit exceeded";
      goto LABEL_138;
    }

    backtrace_string = __nw_create_backtrace_string();
    v65 = __nwlog_obj();
    v66 = type[0];
    v70 = os_log_type_enabled(v65, type[0]);
    if (!backtrace_string)
    {
      if (!v70)
      {
        goto LABEL_139;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_tcp_input_available";
      v67 = "%{public}s called with null protocol, no backtrace";
      goto LABEL_138;
    }

    if (v70)
    {
      *buf = 136446466;
      *&buf[4] = "nw_protocol_tcp_input_available";
      *&buf[12] = 2082;
      *&buf[14] = backtrace_string;
      _os_log_impl(&dword_1889BA000, v65, type[0], "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(backtrace_string);
LABEL_139:
    if (!v64)
    {
      return;
    }

    goto LABEL_140;
  }

  v1 = nw_protocol_downcast();
  if (!v1)
  {
    v68 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_tcp_input_available";
    v64 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1889BA000, v68, 16, "%{public}s called with null tcp", buf, 12);
    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v76) = 0;
    if (!__nwlog_fault())
    {
      goto LABEL_139;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v65 = __nwlog_obj();
      v66 = type[0];
      if (!os_log_type_enabled(v65, type[0]))
      {
        goto LABEL_139;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_tcp_input_available";
      v67 = "%{public}s called with null tcp";
      goto LABEL_138;
    }

    if (v76 != 1)
    {
      v65 = __nwlog_obj();
      v66 = type[0];
      if (!os_log_type_enabled(v65, type[0]))
      {
        goto LABEL_139;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_tcp_input_available";
      v67 = "%{public}s called with null tcp, backtrace limit exceeded";
      goto LABEL_138;
    }

    v71 = __nw_create_backtrace_string();
    v65 = __nwlog_obj();
    v66 = type[0];
    v72 = os_log_type_enabled(v65, type[0]);
    if (v71)
    {
      if (v72)
      {
        *buf = 136446466;
        *&buf[4] = "nw_protocol_tcp_input_available";
        *&buf[12] = 2082;
        *&buf[14] = v71;
        _os_log_impl(&dword_1889BA000, v65, type[0], "%{public}s called with null tcp, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v71);
      if (!v64)
      {
        return;
      }

LABEL_140:
      free(v64);
      return;
    }

    if (v72)
    {
      *buf = 136446210;
      *&buf[4] = "nw_protocol_tcp_input_available";
      v67 = "%{public}s called with null tcp, no backtrace";
LABEL_138:
      _os_log_impl(&dword_1889BA000, v65, v66, v67, buf, 0xCu);
      goto LABEL_139;
    }

    goto LABEL_139;
  }

  v2 = v1;
  if (*(v1 + 5352))
  {
    v3 = MEMORY[0x1E6977EF0];
    if (*MEMORY[0x1E6977EF0] != -1)
    {
      dispatch_once(MEMORY[0x1E6977EF0], &__block_literal_global_18);
    }

    v4 = MEMORY[0x1E6977EE8];
    if (*MEMORY[0x1E6977EE8] == 1 && kdebug_is_enabled())
    {
      kdebug_trace();
    }

    v74 = v2 + 556;
    v75 = (v2 + 464);
    v76 = 0;
    v77 = &v76;
    v5 = 0x1ED4BF000uLL;
    while (1)
    {
      nw_protocol_get_output_handler();
      input_frames = nw_protocol_get_input_frames();
      if (!input_frames)
      {
        return;
      }

      v7 = input_frames;
      if (*v3 != -1)
      {
        dispatch_once(v3, &__block_literal_global_18);
      }

      if (*v4 == 1 && kdebug_is_enabled())
      {
        nw_frame_array_unclaimed_length();
        v5 = 0x1ED4BF000;
        kdebug_trace();
      }

      if (v7 > *(v5 + 2416))
      {
        if ((*(v2 + 776) & 2) == 0)
        {
          v61 = __nwlog_tcp_log();
          if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
          {
            v62 = *(v5 + 2416);
            *buf = 136446978;
            *&buf[4] = "nw_protocol_tcp_input_available";
            *&buf[12] = 2082;
            *&buf[14] = v74;
            *&buf[22] = 1024;
            *v82 = v62;
            *&v82[4] = 1024;
            *&v82[6] = v7;
            v57 = "%{public}s %{public}s we asked for maximum %u frames, but got %u";
            v58 = v61;
            v59 = OS_LOG_TYPE_ERROR;
            v60 = 34;
            goto LABEL_109;
          }
        }

        return;
      }

      if ((*(v2 + 776) & 2) == 0)
      {
        if (__nwlog_is_datapath_logging_enabled())
        {
          v49 = __nwlog_tcp_log();
          if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136446722;
            *&buf[4] = "nw_protocol_tcp_input_available";
            *&buf[12] = 2082;
            *&buf[14] = v2 + 556;
            *&buf[22] = 1024;
            *v82 = v7;
            _os_log_impl(&dword_1889BA000, v49, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s input available and we got %d frames", buf, 0x1Cu);
          }
        }
      }

      v8 = *v2;
      if (*v2)
      {
        v9 = *(v2 + 776);
        if ((*(v2 + 364) & 8) == 0)
        {
          if ((*(v2 + 776) & 1) == 0)
          {
            v10 = nw_tcp_access_globals(v2);
            ++*(v10 + 280);
          }

          v11 = v8[30];
          if (*(v11 + 12) == 4 && *(sysctls + 96) >= 1)
          {
            *(v11 + 748) |= 0x2000000u;
          }

          *(v11 + 648) = 0;
          *(v11 + 656) = v11 + 648;
          *(v11 + 664) = 0;
          v12 = v8[28];
          if (!v12 || (*(v12 + 776) & 2) == 0)
          {
            if (__nwlog_is_datapath_logging_enabled())
            {
              v50 = __nwlog_tcp_log();
              if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
              {
                v51 = (v12 + 556);
                if (!v12)
                {
                  v51 = &unk_188A285CF;
                }

                v52 = "on";
                if ((*(v11 + 748) & 0x2000000) == 0)
                {
                  v52 = "off";
                }

                v53 = tcpstates[*(v11 + 12)];
                v54 = *(sysctls + 96);
                *buf = 136447234;
                *&buf[4] = "tcp_output_batch_acks_begin";
                *&buf[12] = 2082;
                *&buf[14] = v51;
                *&buf[22] = 2082;
                *v82 = v52;
                *&v82[8] = 2082;
                v83 = v53;
                v84 = 1024;
                v85 = v54;
                _os_log_impl(&dword_1889BA000, v50, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s %{public}s t_state %{public}s tcp_packet_chaining %d", buf, 0x30u);
              }
            }
          }

          v13 = v76;
          if (!v76)
          {
            tcp_output_batch_acks_end(v8);
            goto LABEL_67;
          }

          v14 = 0;
          v15 = 0;
          v16 = 0;
          do
          {
            v17 = (v13 + 32);
            v18 = *(v13 + 32);
            v19 = *(v13 + 40);
            v20 = (v18 + 40);
            if (!v18)
            {
              v20 = &v77;
            }

            *v20 = v19;
            *v19 = v18;
            *v17 = 0;
            *(v13 + 40) = buf;
            *buf = v13;
            *&buf[8] = v13 + 32;
            for (i = v76; v76; v17 = v22)
            {
              if ((*(i + 204) & 0x40) == 0)
              {
                break;
              }

              v22 = (i + 32);
              v23 = *(i + 32);
              v24 = *(i + 40);
              v25 = (v23 + 40);
              if (!v23)
              {
                v25 = &v77;
              }

              *v25 = v24;
              *v24 = v23;
              *v22 = 0;
              *(i + 40) = v17;
              *v17 = i;
              *&buf[8] = i + 32;
              i = v76;
            }

            type[0] = OS_LOG_TYPE_DEFAULT;
            v78 = 0;
            tcp_input(buf, v8[56], v8, type, &v78 + 1, &v78);
            v15 |= HIBYTE(v78);
            v14 |= type[0];
            v16 |= v78;
            v13 = v76;
          }

          while (v76);
          tcp_output_batch_acks_end(v8);
          if (v15)
          {
            v27 = *(v2 + 32);
            if (v27)
            {
              v28 = *(v27 + 48);
              if (v28)
              {
                v28(v2);
              }
            }
          }

          if (v16)
          {
            if (*v75)
            {
              if (*(v2 + 480))
              {
                v29 = **(*(v2 + 488) + 8);
                if (v29)
                {
                  if ((*(v2 + 776) & 2) == 0)
                  {
                    v30 = __nwlog_tcp_log();
                    if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
                    {
                      *buf = 136446466;
                      *&buf[4] = "tcp_input_carry_wake_packet";
                      *&buf[12] = 2082;
                      *&buf[14] = v2 + 556;
                      _os_log_impl(&dword_1889BA000, v30, OS_LOG_TYPE_INFO, "%{public}s %{public}s found data to carry wake packet", buf, 0x16u);
                    }
                  }

                  *(v29 + 204) |= 0x8000u;
                  if ((v14 & 1) == 0)
                  {
LABEL_67:
                    v3 = MEMORY[0x1E6977EF0];
                    if ((v9 & 1) == 0)
                    {
                      v32 = nw_tcp_access_globals(v2);
                      tcp_coalesce_timer_updates_end(v32);
                    }

LABEL_69:
                    is_empty = nw_frame_array_is_empty();
                    v4 = MEMORY[0x1E6977EE8];
                    v5 = 0x1ED4BF000;
                    if (is_empty)
                    {
                      goto LABEL_87;
                    }

                    v34 = __nwlog_obj();
                    *buf = 136446466;
                    *&buf[4] = "tcp_input_available";
                    *&buf[12] = 2048;
                    *&buf[14] = &v76;
                    LODWORD(v73) = 22;
                    v35 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1889BA000, v34, 16, "%{public}s frame_array %p not empty", buf, v73);
                    type[0] = OS_LOG_TYPE_ERROR;
                    HIBYTE(v78) = 0;
                    if (!__nwlog_fault())
                    {
                      goto LABEL_84;
                    }

                    if (type[0] == OS_LOG_TYPE_FAULT)
                    {
                      v36 = __nwlog_obj();
                      v37 = type[0];
                      if (os_log_type_enabled(v36, type[0]))
                      {
                        *buf = 136446466;
                        *&buf[4] = "tcp_input_available";
                        *&buf[12] = 2048;
                        *&buf[14] = &v76;
                        v38 = v36;
                        v39 = v37;
                        v40 = "%{public}s frame_array %p not empty";
                        goto LABEL_83;
                      }

                      goto LABEL_84;
                    }

                    if (HIBYTE(v78) == 1)
                    {
                      v41 = __nw_create_backtrace_string();
                      v42 = __nwlog_obj();
                      v43 = type[0];
                      v44 = os_log_type_enabled(v42, type[0]);
                      if (v41)
                      {
                        if (v44)
                        {
                          *buf = 136446722;
                          *&buf[4] = "tcp_input_available";
                          *&buf[12] = 2048;
                          *&buf[14] = &v76;
                          *&buf[22] = 2082;
                          *v82 = v41;
                          _os_log_impl(&dword_1889BA000, v42, v43, "%{public}s frame_array %p not empty, dumping backtrace:%{public}s", buf, 0x20u);
                        }

                        free(v41);
                        v4 = MEMORY[0x1E6977EE8];
                        goto LABEL_84;
                      }

                      v4 = MEMORY[0x1E6977EE8];
                      if (!v44)
                      {
LABEL_84:
                        if (v35)
                        {
                          free(v35);
                        }

                        v5 = 0x1ED4BF000;
                        goto LABEL_87;
                      }

                      *buf = 136446466;
                      *&buf[4] = "tcp_input_available";
                      *&buf[12] = 2048;
                      *&buf[14] = &v76;
                      v38 = v42;
                      v39 = v43;
                      v40 = "%{public}s frame_array %p not empty, no backtrace";
                    }

                    else
                    {
                      v45 = __nwlog_obj();
                      v46 = type[0];
                      if (!os_log_type_enabled(v45, type[0]))
                      {
                        goto LABEL_84;
                      }

                      *buf = 136446466;
                      *&buf[4] = "tcp_input_available";
                      *&buf[12] = 2048;
                      *&buf[14] = &v76;
                      v38 = v45;
                      v39 = v46;
                      v40 = "%{public}s frame_array %p not empty, backtrace limit exceeded";
                    }

LABEL_83:
                    _os_log_impl(&dword_1889BA000, v38, v39, v40, buf, 0x16u);
                    goto LABEL_84;
                  }

LABEL_66:
                  *(v2 + 776) |= 1u;
                  v3 = MEMORY[0x1E6977EF0];
                  goto LABEL_69;
                }
              }
            }

            if ((*(v2 + 776) & 2) == 0)
            {
              v31 = __nwlog_tcp_log();
              if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136446466;
                *&buf[4] = "tcp_input_carry_wake_packet";
                *&buf[12] = 2082;
                *&buf[14] = v2 + 556;
                _os_log_impl(&dword_1889BA000, v31, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}s no data to carry wake packet", buf, 0x16u);
              }
            }
          }

          if ((v14 & 1) == 0)
          {
            goto LABEL_67;
          }

          goto LABEL_66;
        }

        if ((*(v2 + 776) & 2) == 0)
        {
          if (__nwlog_is_datapath_logging_enabled())
          {
            v55 = __nwlog_tcp_log();
            if (os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136446722;
              *&buf[4] = "tcp_input_available";
              *&buf[12] = 2082;
              *&buf[14] = v2 + 556;
              *&buf[22] = 1024;
              *v82 = 57;
              _os_log_impl(&dword_1889BA000, v55, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s defunct socket error (%d)", buf, 0x1Cu);
            }
          }
        }

        v5 = 0x1ED4BF000;
        if (*(v2 + 376) < 0)
        {
          sb_empty_assert(v75, "tcp_input_available");
        }
      }

      else if ((*(v2 + 776) & 2) == 0)
      {
        if (__nwlog_is_datapath_logging_enabled())
        {
          v26 = __nwlog_tcp_log();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136446466;
            *&buf[4] = "tcp_input_available";
            *&buf[12] = 2082;
            *&buf[14] = v2 + 556;
            _os_log_impl(&dword_1889BA000, v26, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s inp == NULL || so->so_pcb == NULL", buf, 0x16u);
          }
        }
      }

LABEL_87:
      v47 = v76;
      if (v76)
      {
        *(v76 + 40) = type;
        *type = v47;
        v80 = v77;
        v76 = 0;
        v77 = &v76;
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 0x40000000;
        *&buf[16] = ____nw_frame_array_finalize_block_invoke_586;
        *v82 = &__block_descriptor_tmp_12;
        v82[8] = 0;
        do
        {
          v48 = *type;
          if (!*type)
          {
            break;
          }

          nw_frame_array_remove();
        }

        while (((*&buf[16])(buf, v48) & 1) != 0);
      }
    }
  }

  if ((*(v1 + 776) & 2) == 0)
  {
    if (__nwlog_is_datapath_logging_enabled())
    {
      v56 = __nwlog_tcp_log();
      if (os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446466;
        *&buf[4] = "nw_protocol_tcp_input_available";
        *&buf[12] = 2082;
        *&buf[14] = v2 + 556;
        v57 = "%{public}s %{public}s skipping";
        v58 = v56;
        v59 = OS_LOG_TYPE_DEBUG;
        v60 = 22;
LABEL_109:
        _os_log_impl(&dword_1889BA000, v58, v59, v57, buf, v60);
      }
    }
  }
}

void tcp_bad_rexmt_check(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 234))
  {
    v5 = *(a1 + 256);
    if (((*(a1 + 2096) & 2) == 0 || !*(a1 + 416)) && ((~*(a1 + 336) & 3) != 0 || (*(a2 + 13) & 0x40) == 0))
    {
      if ((~*(a1 + 88) & 0x180) == 0)
      {
        if (!v5)
        {
          goto LABEL_21;
        }

        if ((*a3 & 1) == 0)
        {
          goto LABEL_21;
        }

        v6 = *(a3 + 8);
        if (!v6 || ((v6 - v5) & 0x80000000) == 0)
        {
          goto LABEL_21;
        }

LABEL_18:
        v10 = *(a1 + 1064);
        if (v10)
        {
          ++*(v10 + 1312);
        }

        tcp_bad_rexmt_restore_state(a1, a2);
        goto LABEL_74;
      }

      if (*(a1 + 234) == 1)
      {
        if (!v5)
        {
          goto LABEL_21;
        }

LABEL_17:
        v7 = *(a1 + 204) >> 6;
        v8 = a2;
        v9 = nw_tcp_access_globals(*(*(a1 + 80) + 224));
        a2 = v8;
        if (*(v9 + 308) - v5 >= v7)
        {
          goto LABEL_21;
        }

        goto LABEL_18;
      }

      if (v5 && (*(a1 + 748) & 0x40001000) == 0x40001000)
      {
        goto LABEL_17;
      }
    }
  }

LABEL_21:
  if ((~*(a1 + 748) & 0x40001000) != 0)
  {
    goto LABEL_36;
  }

  v11 = *(a1 + 936);
  if (!v11 || *(a2 + 8) - v11 < 0)
  {
    goto LABEL_36;
  }

  v12 = *(a1 + 944);
  if (((*(a1 + 2096) & 2) == 0 || !*(a1 + 416)) && ((~*(a1 + 336) & 3) != 0 || (*(a2 + 13) & 0x40) == 0))
  {
    if ((~*(a1 + 88) & 0x180) == 0)
    {
      if (!v12)
      {
        goto LABEL_50;
      }

      if ((*a3 & 1) == 0)
      {
        goto LABEL_50;
      }

      v13 = *(a3 + 8);
      if (!v13 || ((v13 - v12) & 0x80000000) == 0)
      {
        goto LABEL_50;
      }

LABEL_36:
      v17 = *(a1 + 960);
      if (v17 && *(a2 + 8) - *(a1 + 156) >= 0)
      {
        v18 = (a1 + 960);
        while ((*(v17 + 10) & 1) != 0)
        {
          v17 = *(v17 + 16);
          if (!v17)
          {
            v19 = *(a1 + 1064);
            if (v19)
            {
              ++*(v19 + 1032);
            }

            tcp_bad_rexmt_restore_state(a1, a2);
            v20 = *(a1 + 960);
            if (v20)
            {
              do
              {
                v23 = *v18;
                if (*v18 == v20)
                {
                  v21 = (a1 + 960);
                }

                else
                {
                  do
                  {
                    v24 = v23;
                    v23 = v23[2];
                  }

                  while (v23 != v20);
                  v21 = v24 + 2;
                }

                v22 = v20[2];
                *v21 = v23[2];
                nw_tcp_access_globals(*(*(a1 + 80) + 224));
                free(v20);
                v20 = v22;
              }

              while (v22);
            }

            *(a1 + 968) = *(a1 + 96);
            goto LABEL_74;
          }
        }
      }

      goto LABEL_74;
    }

    if (v12)
    {
      v14 = *(a1 + 204) >> 6;
      v15 = a2;
      v16 = nw_tcp_access_globals(*(*(a1 + 80) + 224));
      a2 = v15;
      if (*(v16 + 308) - v12 < v14)
      {
        goto LABEL_36;
      }
    }
  }

LABEL_50:
  v25 = *(a1 + 1064);
  if (v25)
  {
    ++*(v25 + 752);
  }

  v26 = *(a1 + 88);
  if ((v26 & 0x200000) == 0)
  {
    v27 = *(tcp_cc_algo_list[*(a1 + 272)] + 64);
    if (v27)
    {
      v27(a1, a2);
      v26 = *(a1 + 88);
    }

    *(a1 + 88) = v26 | 0x200000;
    v28 = *(a1 + 80);
    v29 = *(v28 + 2372);
    if ((v29 & 0x40000000) == 0)
    {
      goto LABEL_64;
    }

    v30 = *(v28 + 224);
    if ((v29 & 0x10000000) != 0)
    {
      *(v28 + 2372) = v29 & 0xAFFFFFFF;
      v32 = (v30 + 364);
      v31 = *(v30 + 364);
    }

    else
    {
      v31 = *(v30 + 364);
      *(v28 + 2372) = v29 & 0xAFFFFFFF;
      if ((v31 & 0x20000) == 0)
      {
LABEL_61:
        v33 = *(v30 + 32);
        if (v33)
        {
          v34 = *v33;
          if (v34)
          {
            v34();
          }
        }

LABEL_64:
        v35 = *(a1 + 960);
        if (v35)
        {
          v36 = (a1 + 960);
          do
          {
            v39 = *v36;
            if (*v36 == v35)
            {
              v37 = (a1 + 960);
            }

            else
            {
              do
              {
                v40 = v39;
                v39 = v39[2];
              }

              while (v39 != v35);
              v37 = v40 + 2;
            }

            v38 = v35[2];
            *v37 = v39[2];
            nw_tcp_access_globals(*(*(a1 + 80) + 224));
            free(v35);
            v35 = v38;
          }

          while (v38);
          v41 = *(a1 + 96);
          *(a1 + 968) = v41;
        }

        else
        {
          v41 = *(a1 + 96);
        }

        v42 = *(a1 + 88);
        *(a1 + 156) = v41 + (v42 << 27 >> 31);
        v43 = *(a1 + 748);
        *(a1 + 28) = 0;
        *(a1 + 176) = 0;
        *(a1 + 148) = *(a1 + 152);
        *(a1 + 88) = v42 & 0xFFDFFFFF;
        *(a1 + 8) = 0;
        *(a1 + 322) = 3;
        *(a1 + 300) = 0;
        *(a1 + 336) &= ~0x20u;
        *(a1 + 16) = 0;
        *(a1 + 748) = v43 & 0xFFE7FFFF;
        *(a1 + 992) = 0;
        *(a1 + 620) = 0;
        goto LABEL_74;
      }

      v32 = (v30 + 364);
    }

    *v32 = v31 & 0xFFFDFFFF;
    goto LABEL_61;
  }

LABEL_74:
  *(a1 + 748) &= ~0x1000u;
  *(a1 + 936) = 0;
  *(a1 + 944) = 0;
  if (*(a1 + 234))
  {
    v44 = *(a1 + 88);
    if ((v44 & 0x20000000) != 0)
    {
      v45 = *(a1 + 692);
      if (~v44 & 0x180) == 0 && v45 != 0 && (*a3)
      {
        v47 = *(a3 + 8);
        if (v47)
        {
          if (v47 - v45 < 0)
          {
            tcp_pmtud_revert_segment_size(a1);
          }
        }
      }
    }
  }

  if (*(a1 + 692))
  {
    *(a1 + 692) = 0;
  }

  *(a1 + 688) = 0;
}