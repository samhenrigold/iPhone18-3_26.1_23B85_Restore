uint64_t nw_protocol_ethernet_finalize_output_frames(nw_protocol *a1, nw_frame_array_s *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    handle = a1->handle;
    if (handle)
    {
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 0x40000000;
      v18 = ___ZL43nw_protocol_ethernet_finalize_output_framesP11nw_protocolP16nw_frame_array_s_block_invoke;
      v19 = &__block_descriptor_tmp_19_34161;
      v20 = a1;
      v21 = handle;
      tqh_first = a2->tqh_first;
      do
      {
        if (!tqh_first)
        {
          break;
        }

        v4 = *(tqh_first + 4);
        v5 = (v18)(v17);
        tqh_first = v4;
      }

      while ((v5 & 1) != 0);
      return (*(*(handle[4] + 24) + 96))();
    }

    v12 = __nwlog_obj();
    *buf = 136446210;
    v25 = "nw_protocol_ethernet_finalize_output_frames";
    v8 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v12, 16, "%{public}s called with null ethernet", buf, 12);
    v23 = OS_LOG_TYPE_ERROR;
    v22 = 0;
    if (!__nwlog_fault(v8, &v23, &v22))
    {
      goto LABEL_35;
    }

    if (v23 == OS_LOG_TYPE_FAULT)
    {
      v9 = __nwlog_obj();
      v10 = v23;
      if (os_log_type_enabled(v9, v23))
      {
        *buf = 136446210;
        v25 = "nw_protocol_ethernet_finalize_output_frames";
        v11 = "%{public}s called with null ethernet";
        goto LABEL_34;
      }

      goto LABEL_35;
    }

    if (v22 != 1)
    {
      v9 = __nwlog_obj();
      v10 = v23;
      if (os_log_type_enabled(v9, v23))
      {
        *buf = 136446210;
        v25 = "nw_protocol_ethernet_finalize_output_frames";
        v11 = "%{public}s called with null ethernet, backtrace limit exceeded";
        goto LABEL_34;
      }

      goto LABEL_35;
    }

    backtrace_string = __nw_create_backtrace_string();
    v9 = __nwlog_obj();
    v10 = v23;
    v16 = os_log_type_enabled(v9, v23);
    if (!backtrace_string)
    {
      if (v16)
      {
        *buf = 136446210;
        v25 = "nw_protocol_ethernet_finalize_output_frames";
        v11 = "%{public}s called with null ethernet, no backtrace";
        goto LABEL_34;
      }

      goto LABEL_35;
    }

    if (v16)
    {
      *buf = 136446466;
      v25 = "nw_protocol_ethernet_finalize_output_frames";
      v26 = 2082;
      v27 = backtrace_string;
      v15 = "%{public}s called with null ethernet, dumping backtrace:%{public}s";
      goto LABEL_24;
    }

    goto LABEL_25;
  }

  v7 = __nwlog_obj();
  *buf = 136446210;
  v25 = "nw_protocol_ethernet_finalize_output_frames";
  v8 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v7, 16, "%{public}s called with null protocol", buf, 12);
  v23 = OS_LOG_TYPE_ERROR;
  v22 = 0;
  if (!__nwlog_fault(v8, &v23, &v22))
  {
    goto LABEL_35;
  }

  if (v23 != OS_LOG_TYPE_FAULT)
  {
    if (v22 != 1)
    {
      v9 = __nwlog_obj();
      v10 = v23;
      if (os_log_type_enabled(v9, v23))
      {
        *buf = 136446210;
        v25 = "nw_protocol_ethernet_finalize_output_frames";
        v11 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_34;
      }

      goto LABEL_35;
    }

    backtrace_string = __nw_create_backtrace_string();
    v9 = __nwlog_obj();
    v10 = v23;
    v14 = os_log_type_enabled(v9, v23);
    if (!backtrace_string)
    {
      if (v14)
      {
        *buf = 136446210;
        v25 = "nw_protocol_ethernet_finalize_output_frames";
        v11 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_34;
      }

      goto LABEL_35;
    }

    if (v14)
    {
      *buf = 136446466;
      v25 = "nw_protocol_ethernet_finalize_output_frames";
      v26 = 2082;
      v27 = backtrace_string;
      v15 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_24:
      _os_log_impl(&dword_181A37000, v9, v10, v15, buf, 0x16u);
    }

LABEL_25:
    free(backtrace_string);
    goto LABEL_35;
  }

  v9 = __nwlog_obj();
  v10 = v23;
  if (os_log_type_enabled(v9, v23))
  {
    *buf = 136446210;
    v25 = "nw_protocol_ethernet_finalize_output_frames";
    v11 = "%{public}s called with null protocol";
LABEL_34:
    _os_log_impl(&dword_181A37000, v9, v10, v11, buf, 0xCu);
  }

LABEL_35:
  if (v8)
  {
    free(v8);
  }

  return 0;
}

uint64_t ___ZL43nw_protocol_ethernet_finalize_output_framesP11nw_protocolP16nw_frame_array_s_block_invoke(uint64_t a1, uint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  nw_frame_unclaim(a2, a2, 0xEu, 0);
  v13 = 0;
  v4 = nw_frame_unclaimed_bytes(a2, &v13);
  if (v4)
  {
    v5 = *(a1 + 40);
    v6 = *(v5 + 70);
    *(v4 + 4) = *(v5 + 74);
    *v4 = v6;
    v7 = *(a1 + 40);
    v8 = *(v7 + 64);
    *(v4 + 10) = *(v7 + 68);
    *(v4 + 6) = v8;
    *(v4 + 12) = bswap32(*(*(a1 + 40) + 76)) >> 16;
  }

  else
  {
    v10 = __nwlog_obj();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = *(a1 + 40);
      if (v11)
      {
        v12 = (v11 + 78);
      }

      else
      {
        v12 = "";
      }

      *buf = 136446466;
      v15 = "nw_protocol_ethernet_finalize_output_frames_block_invoke";
      v16 = 2082;
      v17 = v12;
      _os_log_impl(&dword_181A37000, v10, OS_LOG_TYPE_INFO, "%{public}s %{public}s Frame is no longer valid", buf, 0x16u);
    }
  }

  return 1;
}

uint64_t nw_protocol_ethernet_get_output_frames(nw_protocol *a1, nw_protocol *a2, unsigned int a3, unsigned int a4, unsigned int a5, nw_frame_array_s *a6)
{
  v34 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    handle = a1->handle;
    if (handle)
    {
      v9 = (*(*(handle[4] + 24) + 88))();
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 0x40000000;
      v25 = ___ZL38nw_protocol_ethernet_get_output_framesP11nw_protocolS0_jjjP16nw_frame_array_s_block_invoke;
      v26 = &__block_descriptor_tmp_18_34175;
      v27 = a1;
      tqh_first = a6->tqh_first;
      do
      {
        if (!tqh_first)
        {
          break;
        }

        v11 = *(tqh_first + 4);
        v12 = (v25)(v24);
        tqh_first = v11;
      }

      while ((v12 & 1) != 0);
      return v9;
    }

    v19 = __nwlog_obj();
    *buf = 136446210;
    v31 = "nw_protocol_ethernet_get_output_frames";
    v15 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v19, 16, "%{public}s called with null ethernet", buf, 12);
    v29 = OS_LOG_TYPE_ERROR;
    v28 = 0;
    if (!__nwlog_fault(v15, &v29, &v28))
    {
      goto LABEL_34;
    }

    if (v29 == OS_LOG_TYPE_FAULT)
    {
      v16 = __nwlog_obj();
      v17 = v29;
      if (os_log_type_enabled(v16, v29))
      {
        *buf = 136446210;
        v31 = "nw_protocol_ethernet_get_output_frames";
        v18 = "%{public}s called with null ethernet";
        goto LABEL_33;
      }

      goto LABEL_34;
    }

    if (v28 != 1)
    {
      v16 = __nwlog_obj();
      v17 = v29;
      if (os_log_type_enabled(v16, v29))
      {
        *buf = 136446210;
        v31 = "nw_protocol_ethernet_get_output_frames";
        v18 = "%{public}s called with null ethernet, backtrace limit exceeded";
        goto LABEL_33;
      }

      goto LABEL_34;
    }

    backtrace_string = __nw_create_backtrace_string();
    v16 = __nwlog_obj();
    v17 = v29;
    v23 = os_log_type_enabled(v16, v29);
    if (!backtrace_string)
    {
      if (v23)
      {
        *buf = 136446210;
        v31 = "nw_protocol_ethernet_get_output_frames";
        v18 = "%{public}s called with null ethernet, no backtrace";
        goto LABEL_33;
      }

      goto LABEL_34;
    }

    if (v23)
    {
      *buf = 136446466;
      v31 = "nw_protocol_ethernet_get_output_frames";
      v32 = 2082;
      v33 = backtrace_string;
      v22 = "%{public}s called with null ethernet, dumping backtrace:%{public}s";
      goto LABEL_23;
    }

    goto LABEL_24;
  }

  v14 = __nwlog_obj();
  *buf = 136446210;
  v31 = "nw_protocol_ethernet_get_output_frames";
  v15 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v14, 16, "%{public}s called with null protocol", buf, 12);
  v29 = OS_LOG_TYPE_ERROR;
  v28 = 0;
  if (!__nwlog_fault(v15, &v29, &v28))
  {
    goto LABEL_34;
  }

  if (v29 != OS_LOG_TYPE_FAULT)
  {
    if (v28 != 1)
    {
      v16 = __nwlog_obj();
      v17 = v29;
      if (os_log_type_enabled(v16, v29))
      {
        *buf = 136446210;
        v31 = "nw_protocol_ethernet_get_output_frames";
        v18 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_33;
      }

      goto LABEL_34;
    }

    backtrace_string = __nw_create_backtrace_string();
    v16 = __nwlog_obj();
    v17 = v29;
    v21 = os_log_type_enabled(v16, v29);
    if (!backtrace_string)
    {
      if (v21)
      {
        *buf = 136446210;
        v31 = "nw_protocol_ethernet_get_output_frames";
        v18 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_33;
      }

      goto LABEL_34;
    }

    if (v21)
    {
      *buf = 136446466;
      v31 = "nw_protocol_ethernet_get_output_frames";
      v32 = 2082;
      v33 = backtrace_string;
      v22 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_23:
      _os_log_impl(&dword_181A37000, v16, v17, v22, buf, 0x16u);
    }

LABEL_24:
    free(backtrace_string);
    goto LABEL_34;
  }

  v16 = __nwlog_obj();
  v17 = v29;
  if (os_log_type_enabled(v16, v29))
  {
    *buf = 136446210;
    v31 = "nw_protocol_ethernet_get_output_frames";
    v18 = "%{public}s called with null protocol";
LABEL_33:
    _os_log_impl(&dword_181A37000, v16, v17, v18, buf, 0xCu);
  }

LABEL_34:
  if (v15)
  {
    free(v15);
  }

  return 0;
}

uint64_t nw_protocol_ethernet_get_input_frames(nw_protocol *a1, nw_protocol *a2, unsigned int a3, unsigned int a4, unsigned int a5, nw_frame_array_s *a6)
{
  v40 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    handle = a1->handle;
    if (handle)
    {
      v9 = handle[4];
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2000000000;
      v39 = (*(*(v9 + 24) + 80))();
      if (*(*&buf[8] + 24))
      {
        v26[0] = MEMORY[0x1E69E9820];
        v26[1] = 0x40000000;
        v27 = ___ZL37nw_protocol_ethernet_get_input_framesP11nw_protocolS0_jjjP16nw_frame_array_s_block_invoke;
        v28 = &unk_1E6A310C0;
        v29 = buf;
        v30 = handle;
        v31 = a1;
        v32 = a6;
        tqh_first = a6->tqh_first;
        do
        {
          if (!tqh_first)
          {
            break;
          }

          v11 = *(tqh_first + 4);
          v12 = v27(v26);
          tqh_first = v11;
        }

        while ((v12 & 1) != 0);
      }

      else if (gLogDatapath == 1)
      {
        v25 = __nwlog_obj();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
        {
          *type = 136446466;
          v35 = "nw_protocol_ethernet_get_input_frames";
          v36 = 2082;
          v37 = handle + 78;
          _os_log_impl(&dword_181A37000, v25, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s No ethernet input frame", type, 0x16u);
        }
      }

      v13 = *(*&buf[8] + 24);
      _Block_object_dispose(buf, 8);
      return v13;
    }

    v20 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_ethernet_get_input_frames";
    v16 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v20, 16, "%{public}s called with null ethernet", buf, 12);
    type[0] = OS_LOG_TYPE_ERROR;
    v33 = 0;
    if (!__nwlog_fault(v16, type, &v33))
    {
      goto LABEL_40;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v17 = __nwlog_obj();
      v18 = type[0];
      if (os_log_type_enabled(v17, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_ethernet_get_input_frames";
        v19 = "%{public}s called with null ethernet";
        goto LABEL_39;
      }

      goto LABEL_40;
    }

    if (v33 != 1)
    {
      v17 = __nwlog_obj();
      v18 = type[0];
      if (os_log_type_enabled(v17, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_ethernet_get_input_frames";
        v19 = "%{public}s called with null ethernet, backtrace limit exceeded";
        goto LABEL_39;
      }

      goto LABEL_40;
    }

    backtrace_string = __nw_create_backtrace_string();
    v17 = __nwlog_obj();
    v18 = type[0];
    v24 = os_log_type_enabled(v17, type[0]);
    if (!backtrace_string)
    {
      if (v24)
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_ethernet_get_input_frames";
        v19 = "%{public}s called with null ethernet, no backtrace";
        goto LABEL_39;
      }

      goto LABEL_40;
    }

    if (v24)
    {
      *buf = 136446466;
      *&buf[4] = "nw_protocol_ethernet_get_input_frames";
      *&buf[12] = 2082;
      *&buf[14] = backtrace_string;
      v23 = "%{public}s called with null ethernet, dumping backtrace:%{public}s";
      goto LABEL_27;
    }

    goto LABEL_28;
  }

  v15 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_protocol_ethernet_get_input_frames";
  v16 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v15, 16, "%{public}s called with null protocol", buf, 12);
  type[0] = OS_LOG_TYPE_ERROR;
  v33 = 0;
  if (!__nwlog_fault(v16, type, &v33))
  {
    goto LABEL_40;
  }

  if (type[0] != OS_LOG_TYPE_FAULT)
  {
    if (v33 != 1)
    {
      v17 = __nwlog_obj();
      v18 = type[0];
      if (os_log_type_enabled(v17, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_ethernet_get_input_frames";
        v19 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_39;
      }

      goto LABEL_40;
    }

    backtrace_string = __nw_create_backtrace_string();
    v17 = __nwlog_obj();
    v18 = type[0];
    v22 = os_log_type_enabled(v17, type[0]);
    if (!backtrace_string)
    {
      if (v22)
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_ethernet_get_input_frames";
        v19 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_39;
      }

      goto LABEL_40;
    }

    if (v22)
    {
      *buf = 136446466;
      *&buf[4] = "nw_protocol_ethernet_get_input_frames";
      *&buf[12] = 2082;
      *&buf[14] = backtrace_string;
      v23 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_27:
      _os_log_impl(&dword_181A37000, v17, v18, v23, buf, 0x16u);
    }

LABEL_28:
    free(backtrace_string);
    goto LABEL_40;
  }

  v17 = __nwlog_obj();
  v18 = type[0];
  if (os_log_type_enabled(v17, type[0]))
  {
    *buf = 136446210;
    *&buf[4] = "nw_protocol_ethernet_get_input_frames";
    v19 = "%{public}s called with null protocol";
LABEL_39:
    _os_log_impl(&dword_181A37000, v17, v18, v19, buf, 0xCu);
  }

LABEL_40:
  if (v16)
  {
    free(v16);
  }

  return 0;
}

uint64_t ___ZL37nw_protocol_ethernet_get_input_framesP11nw_protocolS0_jjjP16nw_frame_array_s_block_invoke(void *a1, uint64_t a2)
{
  v45 = *MEMORY[0x1E69E9840];
  v36 = 0;
  v4 = nw_frame_unclaimed_bytes(a2, &v36);
  if (v4)
  {
    if (v36 <= 0xD)
    {
      v16 = __nwlog_obj();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = a1[5];
        v18 = (v17 + 78);
        if (!v17)
        {
          v18 = "";
        }

        *buf = 136446722;
        v38 = "nw_protocol_ethernet_get_input_frames_block_invoke";
        v39 = 2082;
        v40 = v18;
        v41 = 1024;
        v42 = v36;
        v13 = "%{public}s %{public}s Received ethernet frame with incorrect length %u";
        v14 = v16;
        v15 = OS_LOG_TYPE_ERROR;
        v19 = 28;
        goto LABEL_46;
      }
    }

    else
    {
      v6 = a1[5];
      v7 = *v4 == *(v6 + 64) && *(v4 + 4) == *(v6 + 68);
      if (v7 || (*v4 == -1 ? (v20 = *(v4 + 4) == -1) : (v20 = 0), v20))
      {
        if (*(v6 + 162) == 1 && (*(v4 + 6) != *(v6 + 70) || *(v4 + 10) != *(v6 + 74)))
        {
          v29 = __nwlog_obj();
          if (!os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_47;
          }

          v31 = a1[5];
          if (v31)
          {
            v32 = (v31 + 78);
          }

          else
          {
            v32 = "";
          }

          *buf = 136446466;
          v38 = "nw_protocol_ethernet_get_input_frames_block_invoke";
          v39 = 2082;
          v40 = v32;
          v13 = "%{public}s %{public}s Received mismatched remote ether address";
          goto LABEL_44;
        }

        if (*(v6 + 76) == bswap32(*(v4 + 12)) >> 16)
        {
          nw_frame_claim(a2, v5, 14, 0);
          return 1;
        }

        v23 = v4;
        v24 = __nwlog_obj();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          v25 = a1[5];
          v26 = (v25 + 78);
          if (!v25)
          {
            v26 = "";
          }

          v27 = bswap32(*(v23 + 12));
          v28 = *(v25 + 76);
          *buf = 136446978;
          v38 = "nw_protocol_ethernet_get_input_frames_block_invoke";
          v39 = 2082;
          v40 = v26;
          v41 = 1024;
          v42 = HIWORD(v27);
          v43 = 1024;
          v44 = v28;
          v13 = "%{public}s %{public}s Mismatched ether type %u != %u";
          v14 = v24;
          v15 = OS_LOG_TYPE_ERROR;
          v19 = 34;
          goto LABEL_46;
        }
      }

      else
      {
        v29 = __nwlog_obj();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          v21 = a1[5];
          if (v21)
          {
            v22 = (v21 + 78);
          }

          else
          {
            v22 = "";
          }

          *buf = 136446466;
          v38 = "nw_protocol_ethernet_get_input_frames_block_invoke";
          v39 = 2082;
          v40 = v22;
          v13 = "%{public}s %{public}s Received mismatched local ether address";
LABEL_44:
          v14 = v29;
          v15 = OS_LOG_TYPE_ERROR;
LABEL_45:
          v19 = 22;
LABEL_46:
          _os_log_impl(&dword_181A37000, v14, v15, v13, buf, v19);
        }
      }
    }
  }

  else
  {
    v10 = __nwlog_obj();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = a1[5];
      if (v11)
      {
        v12 = (v11 + 78);
      }

      else
      {
        v12 = "";
      }

      *buf = 136446466;
      v38 = "nw_protocol_ethernet_get_input_frames_block_invoke";
      v39 = 2082;
      v40 = v12;
      v13 = "%{public}s %{public}s Frame is no longer valid";
      v14 = v10;
      v15 = OS_LOG_TYPE_INFO;
      goto LABEL_45;
    }
  }

LABEL_47:
  --*(*(a1[4] + 8) + 24);
  v33 = (a1[7] + 8);
  v34 = *(a2 + 32);
  v35 = *(a2 + 40);
  if (v34)
  {
    v33 = (v34 + 40);
  }

  *v33 = v35;
  *v35 = v34;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  nw_frame_finalize(a2);
  return 1;
}

uint64_t nw_protocol_ethernet_remove_input_handler(nw_protocol *a1, nw_protocol *a2, int a3)
{
  v25 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v9 = __nwlog_obj();
    *buf = 136446210;
    v22 = "nw_protocol_ethernet_remove_input_handler";
    v10 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v9, 16, "%{public}s called with null protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v19 = 0;
    if (!__nwlog_fault(v10, &type, &v19))
    {
      goto LABEL_40;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v19 != 1)
      {
        v11 = __nwlog_obj();
        v12 = type;
        if (!os_log_type_enabled(v11, type))
        {
          goto LABEL_40;
        }

        *buf = 136446210;
        v22 = "nw_protocol_ethernet_remove_input_handler";
        v13 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_39;
      }

      backtrace_string = __nw_create_backtrace_string();
      v11 = __nwlog_obj();
      v12 = type;
      v16 = os_log_type_enabled(v11, type);
      if (!backtrace_string)
      {
        if (!v16)
        {
          goto LABEL_40;
        }

        *buf = 136446210;
        v22 = "nw_protocol_ethernet_remove_input_handler";
        v13 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_39;
      }

      if (v16)
      {
        *buf = 136446466;
        v22 = "nw_protocol_ethernet_remove_input_handler";
        v23 = 2082;
        v24 = backtrace_string;
        v17 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_29:
        _os_log_impl(&dword_181A37000, v11, v12, v17, buf, 0x16u);
      }

LABEL_30:
      free(backtrace_string);
      goto LABEL_40;
    }

    v11 = __nwlog_obj();
    v12 = type;
    if (!os_log_type_enabled(v11, type))
    {
      goto LABEL_40;
    }

    *buf = 136446210;
    v22 = "nw_protocol_ethernet_remove_input_handler";
    v13 = "%{public}s called with null protocol";
LABEL_39:
    _os_log_impl(&dword_181A37000, v11, v12, v13, buf, 0xCu);
LABEL_40:
    if (v10)
    {
      free(v10);
    }

    return 0;
  }

  handle = a1->handle;
  if (!handle)
  {
    v14 = __nwlog_obj();
    *buf = 136446210;
    v22 = "nw_protocol_ethernet_remove_input_handler";
    v10 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v14, 16, "%{public}s called with null ethernet", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v19 = 0;
    if (!__nwlog_fault(v10, &type, &v19))
    {
      goto LABEL_40;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v11 = __nwlog_obj();
      v12 = type;
      if (!os_log_type_enabled(v11, type))
      {
        goto LABEL_40;
      }

      *buf = 136446210;
      v22 = "nw_protocol_ethernet_remove_input_handler";
      v13 = "%{public}s called with null ethernet";
      goto LABEL_39;
    }

    if (v19 != 1)
    {
      v11 = __nwlog_obj();
      v12 = type;
      if (!os_log_type_enabled(v11, type))
      {
        goto LABEL_40;
      }

      *buf = 136446210;
      v22 = "nw_protocol_ethernet_remove_input_handler";
      v13 = "%{public}s called with null ethernet, backtrace limit exceeded";
      goto LABEL_39;
    }

    backtrace_string = __nw_create_backtrace_string();
    v11 = __nwlog_obj();
    v12 = type;
    v18 = os_log_type_enabled(v11, type);
    if (backtrace_string)
    {
      if (v18)
      {
        *buf = 136446466;
        v22 = "nw_protocol_ethernet_remove_input_handler";
        v23 = 2082;
        v24 = backtrace_string;
        v17 = "%{public}s called with null ethernet, dumping backtrace:%{public}s";
        goto LABEL_29;
      }

      goto LABEL_30;
    }

    if (!v18)
    {
      goto LABEL_40;
    }

    *buf = 136446210;
    v22 = "nw_protocol_ethernet_remove_input_handler";
    v13 = "%{public}s called with null ethernet, no backtrace";
    goto LABEL_39;
  }

  if (a2->output_handler == a1)
  {
    v6 = a2;
    nw_protocol_set_output_handler(a2, 0);
    a2 = v6;
  }

  if (a1->default_input_handler != a2)
  {
    return 0;
  }

  output_handler = a1->output_handler;
  if (output_handler)
  {
    (output_handler->callbacks->remove_input_handler)();
  }

  nw_protocol_set_input_handler(a1, 0);
  if (a3)
  {
    a1->handle = 0;
    free(handle);
  }

  return 1;
}

uint64_t nw_protocol_ethernet_add_input_handler(nw_protocol *a1, nw_protocol *a2)
{
  v38 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    handle = a1->handle;
    if (handle)
    {
      nw_protocol_set_input_handler(a1, a2);
      uuid_clear(handle);
      if (!a2->output_handler)
      {
        nw_protocol_set_output_handler(a2, handle);
      }

      v4 = (a2->callbacks->get_path)(a2);
      if (v4)
      {
        v5 = v4;
        custom_ethertype = _nw_path_get_custom_ethertype(v5);

        *(handle + 38) = custom_ethertype;
      }

      v7 = (a2->callbacks->get_local_endpoint)(a2);
      if (v7)
      {
        v8 = v7;
        ethernet_address = _nw_endpoint_get_ethernet_address();

        if (ethernet_address)
        {
          v10 = *ethernet_address;
          *(handle + 34) = *(ethernet_address + 4);
          *(handle + 16) = v10;
        }

        if (!*(handle + 38))
        {
          v11 = v8;
          address_family = _nw_endpoint_get_address_family(v11);

          if (address_family == 2)
          {
            v13 = 2048;
            goto LABEL_15;
          }

          if (address_family == 30)
          {
            v13 = -31011;
LABEL_15:
            *(handle + 38) = v13;
          }
        }
      }

      v14 = (a2->callbacks->get_remote_endpoint)(a2);
      if (!v14)
      {
        return 1;
      }

      v15 = v14;
      v16 = _nw_endpoint_get_ethernet_address();

      if (v16)
      {
        v17 = *v16;
        *(handle + 37) = *(v16 + 4);
        *(handle + 70) = v17;
      }

      if (*(handle + 38))
      {
        return 1;
      }

      v18 = v15;
      v19 = _nw_endpoint_get_address_family(v18);

      if (v19 == 30)
      {
        v20 = -31011;
      }

      else
      {
        if (v19 != 2)
        {
          return 1;
        }

        v20 = 2048;
      }

      *(handle + 38) = v20;
      return 1;
    }

    v27 = __nwlog_obj();
    *buf = 136446210;
    v35 = "nw_protocol_ethernet_add_input_handler";
    v23 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v27, 16, "%{public}s called with null ethernet", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v32 = 0;
    if (!__nwlog_fault(v23, &type, &v32))
    {
      goto LABEL_54;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v24 = __nwlog_obj();
      v25 = type;
      if (os_log_type_enabled(v24, type))
      {
        *buf = 136446210;
        v35 = "nw_protocol_ethernet_add_input_handler";
        v26 = "%{public}s called with null ethernet";
        goto LABEL_53;
      }

      goto LABEL_54;
    }

    if (v32 != 1)
    {
      v24 = __nwlog_obj();
      v25 = type;
      if (os_log_type_enabled(v24, type))
      {
        *buf = 136446210;
        v35 = "nw_protocol_ethernet_add_input_handler";
        v26 = "%{public}s called with null ethernet, backtrace limit exceeded";
        goto LABEL_53;
      }

      goto LABEL_54;
    }

    backtrace_string = __nw_create_backtrace_string();
    v24 = __nwlog_obj();
    v25 = type;
    v31 = os_log_type_enabled(v24, type);
    if (!backtrace_string)
    {
      if (v31)
      {
        *buf = 136446210;
        v35 = "nw_protocol_ethernet_add_input_handler";
        v26 = "%{public}s called with null ethernet, no backtrace";
        goto LABEL_53;
      }

      goto LABEL_54;
    }

    if (v31)
    {
      *buf = 136446466;
      v35 = "nw_protocol_ethernet_add_input_handler";
      v36 = 2082;
      v37 = backtrace_string;
      v30 = "%{public}s called with null ethernet, dumping backtrace:%{public}s";
      goto LABEL_43;
    }

    goto LABEL_44;
  }

  v22 = __nwlog_obj();
  *buf = 136446210;
  v35 = "nw_protocol_ethernet_add_input_handler";
  v23 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v22, 16, "%{public}s called with null protocol", buf, 12);
  type = OS_LOG_TYPE_ERROR;
  v32 = 0;
  if (!__nwlog_fault(v23, &type, &v32))
  {
    goto LABEL_54;
  }

  if (type != OS_LOG_TYPE_FAULT)
  {
    if (v32 != 1)
    {
      v24 = __nwlog_obj();
      v25 = type;
      if (os_log_type_enabled(v24, type))
      {
        *buf = 136446210;
        v35 = "nw_protocol_ethernet_add_input_handler";
        v26 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_53;
      }

      goto LABEL_54;
    }

    backtrace_string = __nw_create_backtrace_string();
    v24 = __nwlog_obj();
    v25 = type;
    v29 = os_log_type_enabled(v24, type);
    if (!backtrace_string)
    {
      if (v29)
      {
        *buf = 136446210;
        v35 = "nw_protocol_ethernet_add_input_handler";
        v26 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_53;
      }

      goto LABEL_54;
    }

    if (v29)
    {
      *buf = 136446466;
      v35 = "nw_protocol_ethernet_add_input_handler";
      v36 = 2082;
      v37 = backtrace_string;
      v30 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_43:
      _os_log_impl(&dword_181A37000, v24, v25, v30, buf, 0x16u);
    }

LABEL_44:
    free(backtrace_string);
    goto LABEL_54;
  }

  v24 = __nwlog_obj();
  v25 = type;
  if (os_log_type_enabled(v24, type))
  {
    *buf = 136446210;
    v35 = "nw_protocol_ethernet_add_input_handler";
    v26 = "%{public}s called with null protocol";
LABEL_53:
    _os_log_impl(&dword_181A37000, v24, v25, v26, buf, 0xCu);
  }

LABEL_54:
  if (v23)
  {
    free(v23);
  }

  return 0;
}

uint64_t nw_protocol_http_resumable_upload_create(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v59 = *MEMORY[0x1E69E9840];
  v6 = malloc_type_calloc(1uLL, 0x230uLL, 0xAD482A75uLL);
  v7 = v6;
  if (v6)
  {
    bzero(v6, 0x230uLL);
LABEL_12:
    if (gLogDatapath == 1)
    {
      v37 = __nwlog_obj();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446722;
        *&buf[4] = "nw_protocol_http_resumable_upload_create";
        *&buf[12] = 2082;
        *&buf[14] = v7 + 114;
        *&buf[22] = 2080;
        v56 = " ";
        _os_log_impl(&dword_181A37000, v37, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%scalled", buf, 0x20u);
      }
    }

    goto LABEL_13;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v8 = gLogObj;
  *buf = 136446722;
  *&buf[4] = "nw_protocol_http_resumable_upload_create";
  if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
  {
    v9 = 3;
  }

  else
  {
    v9 = 2;
  }

  *&buf[12] = 2048;
  *&buf[14] = 1;
  *&buf[22] = 2048;
  v56 = 560;
  v10 = _os_log_send_and_compose_impl(v9, 0, 0, 0, &dword_181A37000, v8, 16, "%{public}s strict_calloc(%zu, %zu) failed", buf, 32);
  result = __nwlog_should_abort(v10);
  if (result || ((free(v10), bzero(0, 0x230uLL), MEMORY[0xF8] = 0, MEMORY[0x100] &= ~1u, MEMORY[0x108] = 0, MEMORY[0x110] &= ~1u, MEMORY[0x118] = 0, MEMORY[0x120] &= ~1u, MEMORY[0x158] = 0, MEMORY[0x160] &= ~1u, MEMORY[0x168] = 0, MEMORY[0x170] &= ~1u, MEMORY[0x190] = 0, MEMORY[0x198] &= ~1u, MEMORY[0x1D8] = 0, MEMORY[0x1E0] &= ~1u, MEMORY[0x1E8] = 0, MEMORY[0x1F0] &= ~1u, MEMORY[0x1F8] = 0, MEMORY[0x200] &= ~1u, MEMORY[0x208] = 0, MEMORY[0x210] &= ~1u, MEMORY[0x218] = 0, MEMORY[0x220] &= ~1u, pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once), networkd_settings_init(), v12 = gLogObj, !os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR)) ? (v13 = 2) : (v13 = 3), *buf = 136446210, *&buf[4] = "nw_protocol_http_resumable_upload_create", LODWORD(v48) = 12, v14 = _os_log_send_and_compose_impl(v13, 0, 0, 0, &dword_181A37000, v12, 16, "%{public}s strict_placement_new(nw_protocol_http_resumable_upload, strict_calloc(1, sizeof(nw_protocol_http_resumable_upload)),) failed", buf, v48), result = __nwlog_should_abort(v14), result))
  {
    __break(1u);
    return result;
  }

  free(v14);
  if ((MEMORY[0xC6] & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_13:
  if (nw_protocol_http_resumable_upload_identifier::onceToken != -1)
  {
    dispatch_once(&nw_protocol_http_resumable_upload_identifier::onceToken, &__block_literal_global_34230);
  }

  *(v7 + 16) = &nw_protocol_http_resumable_upload_identifier::protocol_identifier;
  if (nw_protocol_http_resumable_upload_get_callbacks(void)::onceToken != -1)
  {
    dispatch_once(&nw_protocol_http_resumable_upload_get_callbacks(void)::onceToken, &__block_literal_global_44_34231);
  }

  *(v7 + 24) = &nw_protocol_http_resumable_upload_get_callbacks(void)::protocol_callbacks;
  *(v7 + 40) = v7;
  if (a3)
  {
    a3 = os_retain(a3);
  }

  v15 = *(v7 + 512);
  if (v15)
  {
    v16 = *(v7 + 504);
    if (v16)
    {
      os_release(v16);
      v15 = *(v7 + 512);
    }
  }

  *(v7 + 504) = a3;
  *(v7 + 512) = v15 | 1;
  if (a4)
  {
    v17 = os_retain(a4);
    v18 = *(v7 + 528);
    if ((v18 & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  else
  {
    v17 = 0;
    v18 = *(v7 + 528);
    if ((v18 & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  v19 = *(v7 + 520);
  if (v19)
  {
    os_release(v19);
    v18 = *(v7 + 528);
  }

LABEL_28:
  *(v7 + 520) = v17;
  *(v7 + 528) = v18 | 1;
  v20 = nw_parameters_copy_context(a4);
  v21 = *(v7 + 544);
  if ((v21 & 1) != 0 && *(v7 + 536))
  {
    v22 = v20;
    os_release(*(v7 + 536));
    v20 = v22;
    v21 = *(v7 + 544);
  }

  *(v7 + 536) = v20;
  *(v7 + 544) = v21 | 1;
  if (nw_protocol_copy_http_resumable_upload_definition_onceToken != -1)
  {
    dispatch_once(&nw_protocol_copy_http_resumable_upload_definition_onceToken, &__block_literal_global_44_76913);
  }

  v23 = nw_protocol_copy_http_resumable_upload_definition_http_resumable_upload_definition;
  v24 = nw_parameters_copy_protocol_options_for_definition(a4, v23);
  if (!v24)
  {
    v33 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http_resumable_upload_options_copy_resume_endpoint";
    LODWORD(v47) = 12;
    v34 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v33, 16, "%{public}s called with null options", buf, v47);

    type[0] = OS_LOG_TYPE_ERROR;
    v54 = 0;
    if (__nwlog_fault(v34, type, &v54))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v35 = __nwlog_obj();
        v36 = type[0];
        if (os_log_type_enabled(v35, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_resumable_upload_options_copy_resume_endpoint";
          _os_log_impl(&dword_181A37000, v35, v36, "%{public}s called with null options", buf, 0xCu);
        }

        goto LABEL_86;
      }

      if (v54 != 1)
      {
        v35 = __nwlog_obj();
        v45 = type[0];
        if (os_log_type_enabled(v35, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_resumable_upload_options_copy_resume_endpoint";
          _os_log_impl(&dword_181A37000, v35, v45, "%{public}s called with null options, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_86;
      }

      backtrace_string = __nw_create_backtrace_string();
      v35 = __nwlog_obj();
      v41 = type[0];
      v42 = os_log_type_enabled(v35, type[0]);
      if (!backtrace_string)
      {
        if (v42)
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_resumable_upload_options_copy_resume_endpoint";
          _os_log_impl(&dword_181A37000, v35, v41, "%{public}s called with null options, no backtrace", buf, 0xCu);
        }

        goto LABEL_86;
      }

      if (v42)
      {
        *buf = 136446466;
        *&buf[4] = "nw_http_resumable_upload_options_copy_resume_endpoint";
        *&buf[12] = 2082;
        *&buf[14] = backtrace_string;
        _os_log_impl(&dword_181A37000, v35, v41, "%{public}s called with null options, dumping backtrace:%{public}s", buf, 0x16u);
      }

LABEL_74:

      free(backtrace_string);
    }

LABEL_87:
    if (v34)
    {
      free(v34);
    }

    v27 = 0;
    goto LABEL_38;
  }

  v25 = _nw_protocol_options_copy_definition();
  if (nw_protocol_copy_http_resumable_upload_definition_onceToken != -1)
  {
    dispatch_once(&nw_protocol_copy_http_resumable_upload_definition_onceToken, &__block_literal_global_44_76913);
  }

  is_equal = nw_protocol_definition_is_equal(v25, nw_protocol_copy_http_resumable_upload_definition_http_resumable_upload_definition);

  if (!is_equal)
  {
    v38 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http_resumable_upload_options_copy_resume_endpoint";
    LODWORD(v47) = 12;
    v34 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v38, 16, "%{public}s protocol options are not http resumable upload", buf, v47);

    type[0] = OS_LOG_TYPE_ERROR;
    v54 = 0;
    if (__nwlog_fault(v34, type, &v54))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v35 = __nwlog_obj();
        v39 = type[0];
        if (os_log_type_enabled(v35, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_resumable_upload_options_copy_resume_endpoint";
          _os_log_impl(&dword_181A37000, v35, v39, "%{public}s protocol options are not http resumable upload", buf, 0xCu);
        }

LABEL_86:

        goto LABEL_87;
      }

      if (v54 != 1)
      {
        v35 = __nwlog_obj();
        v46 = type[0];
        if (os_log_type_enabled(v35, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_resumable_upload_options_copy_resume_endpoint";
          _os_log_impl(&dword_181A37000, v35, v46, "%{public}s protocol options are not http resumable upload, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_86;
      }

      backtrace_string = __nw_create_backtrace_string();
      v35 = __nwlog_obj();
      v43 = type[0];
      v44 = os_log_type_enabled(v35, type[0]);
      if (!backtrace_string)
      {
        if (v44)
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_resumable_upload_options_copy_resume_endpoint";
          _os_log_impl(&dword_181A37000, v35, v43, "%{public}s protocol options are not http resumable upload, no backtrace", buf, 0xCu);
        }

        goto LABEL_86;
      }

      if (v44)
      {
        *buf = 136446466;
        *&buf[4] = "nw_http_resumable_upload_options_copy_resume_endpoint";
        *&buf[12] = 2082;
        *&buf[14] = backtrace_string;
        _os_log_impl(&dword_181A37000, v35, v43, "%{public}s protocol options are not http resumable upload, dumping backtrace:%{public}s", buf, 0x16u);
      }

      goto LABEL_74;
    }

    goto LABEL_87;
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v56 = __Block_byref_object_copy__75915;
  v57 = __Block_byref_object_dispose__75916;
  v58 = 0;
  *type = MEMORY[0x1E69E9820];
  v50 = 3221225472;
  v51 = __nw_http_resumable_upload_options_copy_resume_endpoint_block_invoke;
  v52 = &unk_1E6A3A858;
  v53 = buf;
  nw_protocol_options_access_handle(v24, type);
  v27 = *(*&buf[8] + 40);
  _Block_object_dispose(buf, 8);

LABEL_38:
  v28 = *(v7 + 496);
  if (v28)
  {
    v29 = *(v7 + 488);
    if (v29)
    {
      os_release(v29);
      v28 = *(v7 + 496);
    }
  }

  *(v7 + 488) = v27;
  *(v7 + 496) = v28 | 1;
  if (v27)
  {
    v30 = 3;
  }

  else
  {
    v30 = 1;
  }

  *(v7 + 553) = v30;
  original_content_length = nw_http_resumable_upload_options_get_original_content_length(v24);
  *(v7 + 200) = 0;
  *(v7 + 456) = original_content_length;
  *(v7 + 552) = 3;
  *(v7 + 72) = v7 + 200;
  *(v7 + 208) = v7 + 200;
  *(v7 + 216) = 0;
  *(v7 + 224) = v7 + 216;
  *(v7 + 232) = 0;
  *(v7 + 240) = v7 + 232;
  *(v7 + 340) = 2;
  if (nw_protocol_copy_http_definition_onceToken != -1)
  {
    dispatch_once(&nw_protocol_copy_http_definition_onceToken, &__block_literal_global_16_75909);
  }

  v32 = nw_protocol_copy_http_definition_http_definition;
  nw_protocol_plugin_metadata_set_callbacks(v7, v32, nw_protocol_http_resumable_upload_create::$_0::__invoke, nw_protocol_http_resumable_upload_create::$_1::__invoke);
  if (v32)
  {
    os_release(v32);
  }

  *(v7 + 88) = v7 + 344;
  nw_protocol_plugin_retry_set_callbacks(v7, nw_protocol_http_resumable_upload_create::$_2::__invoke, nw_protocol_http_resumable_upload_create::$_3::__invoke, nw_protocol_http_resumable_upload_create::$_4::__invoke);
  *(v7 + 64) = v7 + 104;
  nw_protocol_plugin_name_set_callbacks(v7, nw_protocol_http_resumable_upload_create::$_5::__invoke);
  if (v24)
  {
    os_release(v24);
  }

  if (v23)
  {
    os_release(v23);
  }

  return v7;
}

void sub_182594B9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t nw_protocol_http_resumable_upload_create::$_2::__invoke(nw_protocol_http_resumable_upload_create::$_2 *this, nw_protocol *a2, nw_protocol *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  if (!this)
  {
    v5 = __nwlog_obj();
    *buf = 136446210;
    v18 = "operator()";
    v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s called with null protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v15 = 0;
    if (!__nwlog_fault(v6, &type, &v15))
    {
      goto LABEL_34;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v15 != 1)
      {
        v7 = __nwlog_obj();
        v8 = type;
        if (!os_log_type_enabled(v7, type))
        {
          goto LABEL_34;
        }

        *buf = 136446210;
        v18 = "operator()";
        v9 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_33;
      }

      backtrace_string = __nw_create_backtrace_string();
      v7 = __nwlog_obj();
      v8 = type;
      v12 = os_log_type_enabled(v7, type);
      if (!backtrace_string)
      {
        if (!v12)
        {
          goto LABEL_34;
        }

        *buf = 136446210;
        v18 = "operator()";
        v9 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_33;
      }

      if (v12)
      {
        *buf = 136446466;
        v18 = "operator()";
        v19 = 2082;
        v20 = backtrace_string;
        v13 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_23:
        _os_log_impl(&dword_181A37000, v7, v8, v13, buf, 0x16u);
      }

LABEL_24:
      free(backtrace_string);
      goto LABEL_34;
    }

    v7 = __nwlog_obj();
    v8 = type;
    if (!os_log_type_enabled(v7, type))
    {
      goto LABEL_34;
    }

    *buf = 136446210;
    v18 = "operator()";
    v9 = "%{public}s called with null protocol";
LABEL_33:
    _os_log_impl(&dword_181A37000, v7, v8, v9, buf, 0xCu);
LABEL_34:
    if (v6)
    {
      free(v6);
    }

    return 0;
  }

  v3 = *(this + 5);
  if (!v3)
  {
    v10 = __nwlog_obj();
    *buf = 136446210;
    v18 = "operator()";
    v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v10, 16, "%{public}s called with null http_resumable_upload", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v15 = 0;
    if (!__nwlog_fault(v6, &type, &v15))
    {
      goto LABEL_34;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (!os_log_type_enabled(v7, type))
      {
        goto LABEL_34;
      }

      *buf = 136446210;
      v18 = "operator()";
      v9 = "%{public}s called with null http_resumable_upload";
      goto LABEL_33;
    }

    if (v15 != 1)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (!os_log_type_enabled(v7, type))
      {
        goto LABEL_34;
      }

      *buf = 136446210;
      v18 = "operator()";
      v9 = "%{public}s called with null http_resumable_upload, backtrace limit exceeded";
      goto LABEL_33;
    }

    backtrace_string = __nw_create_backtrace_string();
    v7 = __nwlog_obj();
    v8 = type;
    v14 = os_log_type_enabled(v7, type);
    if (backtrace_string)
    {
      if (v14)
      {
        *buf = 136446466;
        v18 = "operator()";
        v19 = 2082;
        v20 = backtrace_string;
        v13 = "%{public}s called with null http_resumable_upload, dumping backtrace:%{public}s";
        goto LABEL_23;
      }

      goto LABEL_24;
    }

    if (!v14)
    {
      goto LABEL_34;
    }

    *buf = 136446210;
    v18 = "operator()";
    v9 = "%{public}s called with null http_resumable_upload, no backtrace";
    goto LABEL_33;
  }

  if ((*(v3 + 554) & 2) != 0)
  {
    return 1;
  }

  if (*(v3 + 553) - 2 <= 2)
  {
    *(v3 + 553) = 3;
    nw_http_resumable_upload_reissue(v3);
    return 1;
  }

  return 0;
}

BOOL nw_http_resumable_upload_reissue(uint64_t a1)
{
  v69 = *MEMORY[0x1E69E9840];
  if (!*(a1 + 472))
  {
    v34 = __nwlog_obj();
    LODWORD(buf[0]) = 136446210;
    *(buf + 4) = "nw_http_resumable_upload_reissue";
    v35 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v34, 16, "%{public}s called with null http_resumable_upload->request_metadata", buf, 12);
    LOBYTE(v61[0]) = 16;
    LOBYTE(v51) = 0;
    if (!__nwlog_fault(v35, v61, &v51))
    {
      goto LABEL_82;
    }

    if (LOBYTE(v61[0]) == 17)
    {
      v36 = __nwlog_obj();
      v37 = v61[0];
      if (!os_log_type_enabled(v36, v61[0]))
      {
        goto LABEL_82;
      }

      LODWORD(buf[0]) = 136446210;
      *(buf + 4) = "nw_http_resumable_upload_reissue";
      v38 = "%{public}s called with null http_resumable_upload->request_metadata";
    }

    else if (v51 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v36 = __nwlog_obj();
      v37 = v61[0];
      v40 = os_log_type_enabled(v36, v61[0]);
      if (backtrace_string)
      {
        if (v40)
        {
          LODWORD(buf[0]) = 136446466;
          *(buf + 4) = "nw_http_resumable_upload_reissue";
          WORD2(buf[1]) = 2082;
          *(&buf[1] + 6) = backtrace_string;
          _os_log_impl(&dword_181A37000, v36, v37, "%{public}s called with null http_resumable_upload->request_metadata, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_82;
      }

      if (!v40)
      {
LABEL_82:
        if (v35)
        {
          free(v35);
        }

        return 0;
      }

      LODWORD(buf[0]) = 136446210;
      *(buf + 4) = "nw_http_resumable_upload_reissue";
      v38 = "%{public}s called with null http_resumable_upload->request_metadata, no backtrace";
    }

    else
    {
      v36 = __nwlog_obj();
      v37 = v61[0];
      if (!os_log_type_enabled(v36, v61[0]))
      {
        goto LABEL_82;
      }

      LODWORD(buf[0]) = 136446210;
      *(buf + 4) = "nw_http_resumable_upload_reissue";
      v38 = "%{public}s called with null http_resumable_upload->request_metadata, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v36, v37, v38, buf, 0xCu);
    goto LABEL_82;
  }

  if ((*(a1 + 554) & 2) != 0)
  {
    return 1;
  }

  if ((*(a1 + 198) & 1) == 0 && gLogDatapath == 1)
  {
    v41 = __nwlog_obj();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
    {
      v42 = *(a1 + 552);
      LODWORD(buf[0]) = 136446978;
      *(buf + 4) = "nw_http_resumable_upload_reissue";
      WORD2(buf[1]) = 2082;
      *(&buf[1] + 6) = a1 + 114;
      HIWORD(buf[2]) = 2080;
      v65 = " ";
      LOWORD(v66) = 1024;
      *(&v66 + 2) = v42;
      _os_log_impl(&dword_181A37000, v41, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%scalled with resumable upload limit %u", buf, 0x26u);
    }
  }

  if (!*(a1 + 552))
  {
    if ((*(a1 + 198) & 1) == 0)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v18 = gLogObj;
      result = os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO);
      if (!result)
      {
        return result;
      }

      LODWORD(buf[0]) = 136446722;
      *(buf + 4) = "nw_http_resumable_upload_reissue";
      WORD2(buf[1]) = 2082;
      *(&buf[1] + 6) = a1 + 114;
      HIWORD(buf[2]) = 2080;
      v65 = " ";
      v19 = "%{public}s %{public}s%snot reissuing because we reached the limit";
      v20 = v18;
      v21 = OS_LOG_TYPE_INFO;
      goto LABEL_26;
    }

    return 0;
  }

  if (!*(a1 + 488))
  {
    if ((*(a1 + 198) & 1) == 0)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v22 = gLogObj;
      result = os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }

      LODWORD(buf[0]) = 136446722;
      *(buf + 4) = "nw_http_resumable_upload_reissue";
      WORD2(buf[1]) = 2082;
      *(&buf[1] + 6) = a1 + 114;
      HIWORD(buf[2]) = 2080;
      v65 = " ";
      v19 = "%{public}s %{public}s%scannot resume without a resume endpoint";
      v20 = v22;
      v21 = OS_LOG_TYPE_ERROR;
LABEL_26:
      _os_log_impl(&dword_181A37000, v20, v21, v19, buf, 0x20u);
      return 0;
    }

    return 0;
  }

  nw_http_resumable_upload_update_request_metadata(a1);
  v2 = nw_http_metadata_copy_request(*(a1 + 472));
  v3 = v2;
  if ((*(a1 + 554) & 1) == 0)
  {
    nw_http_fields_remove_by_name(v2, "Cookie");
  }

  buf[0] = 0;
  buf[1] = buf;
  buf[2] = 0x3802000000;
  v65 = __Block_byref_object_copy__34260;
  v66 = __Block_byref_object_dispose__34261;
  metadata_for_request = nw_http_create_metadata_for_request(v3);
  v68 |= 1u;
  v4 = *(buf[1] + 40);
  v5 = v4 != 0;
  if (!v4)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    LODWORD(v61[0]) = 136446210;
    *(v61 + 4) = "nw_http_resumable_upload_reissue";
    v23 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s Unable to create new request metadata", v61, 12);
    LOBYTE(v51) = 16;
    type = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v23, &v51, &type))
    {
      goto LABEL_48;
    }

    if (v51 == 17)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v24 = gLogObj;
      v25 = v51;
      if (!os_log_type_enabled(gLogObj, v51))
      {
        goto LABEL_48;
      }

      LODWORD(v61[0]) = 136446210;
      *(v61 + 4) = "nw_http_resumable_upload_reissue";
      v26 = "%{public}s Unable to create new request metadata";
    }

    else if (type == OS_LOG_TYPE_INFO)
    {
      v27 = __nw_create_backtrace_string();
      v24 = __nwlog_obj();
      v25 = v51;
      v28 = os_log_type_enabled(v24, v51);
      if (v27)
      {
        if (v28)
        {
          LODWORD(v61[0]) = 136446466;
          *(v61 + 4) = "nw_http_resumable_upload_reissue";
          WORD2(v61[1]) = 2082;
          *(&v61[1] + 6) = v27;
          _os_log_impl(&dword_181A37000, v24, v25, "%{public}s Unable to create new request metadata, dumping backtrace:%{public}s", v61, 0x16u);
        }

        free(v27);
        goto LABEL_48;
      }

      if (!v28)
      {
LABEL_48:
        if (v23)
        {
          free(v23);
        }

        goto LABEL_59;
      }

      LODWORD(v61[0]) = 136446210;
      *(v61 + 4) = "nw_http_resumable_upload_reissue";
      v26 = "%{public}s Unable to create new request metadata, no backtrace";
    }

    else
    {
      v24 = __nwlog_obj();
      v25 = v51;
      if (!os_log_type_enabled(v24, v51))
      {
        goto LABEL_48;
      }

      LODWORD(v61[0]) = 136446210;
      *(v61 + 4) = "nw_http_resumable_upload_reissue";
      v26 = "%{public}s Unable to create new request metadata, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v24, v25, v26, v61, 0xCu);
    goto LABEL_48;
  }

  *(a1 + 554) |= 2u;
  v61[0] = 0;
  v61[1] = v61;
  v61[2] = 0x3802000000;
  v61[3] = __Block_byref_object_copy__29;
  v61[4] = __Block_byref_object_dispose__30;
  parameters = nw_protocol_get_parameters(a1);
  if (parameters)
  {
    parameters = os_retain(parameters);
  }

  v62 = parameters;
  v63 |= 1u;
  nw_http_messaging_options_create_transaction_in_parameters(*(v61[1] + 40), a1, 4);
  nw_protocol_plugin_metadata_prepare_for_reissue((a1 + 200), 0);
  v7 = *(a1 + 553) == 3;
  if (*(a1 + 553) == 3)
  {
    *(a1 + 553) = 4;
  }

  v8 = *(a1 + 536);
  v9 = *(a1 + 488);
  v48[0] = MEMORY[0x1E69E9820];
  v48[1] = 0x40000000;
  v48[2] = ___ZL32nw_http_resumable_upload_reissueP33nw_protocol_http_resumable_upload_block_invoke;
  v48[3] = &unk_1E6A311C0;
  v48[4] = buf;
  v49 = v7;
  v46[0] = MEMORY[0x1E69E9820];
  v46[1] = 0x40000000;
  v46[2] = ___ZL32nw_http_resumable_upload_reissueP33nw_protocol_http_resumable_upload_block_invoke_2;
  v46[3] = &unk_1E6A31210;
  v46[5] = buf;
  v46[6] = a1;
  v47 = v7;
  v46[4] = v61;
  v45[0] = MEMORY[0x1E69E9820];
  v45[1] = 0x40000000;
  v45[2] = ___ZL32nw_http_resumable_upload_reissueP33nw_protocol_http_resumable_upload_block_invoke_4;
  v45[3] = &__block_descriptor_tmp_37_34269;
  v45[4] = a1;
  nw_protocol_plugin_retry_reissue_output_frames(a1 + 344, a1, v8, v9, 0, 2, 1, v48, v46, v45);
  v10 = (*(a1 + 552))-- - 1;
  if (v10 < 0x100)
  {
    goto LABEL_56;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v11 = *(a1 + 552);
  v51 = 136446978;
  v52 = "nw_http_resumable_upload_reissue";
  v53 = 2082;
  v54 = "http_resumable_upload->limit";
  v55 = 2048;
  v56 = 1;
  v57 = 2048;
  v58 = v11;
  LODWORD(v43) = 42;
  v12 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s Underflow: %{public}s, decrement %llu, result %llu", &v51, v43);
  type = OS_LOG_TYPE_ERROR;
  v44 = 0;
  if (__nwlog_fault(v12, &type, &v44))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v13 = gLogObj;
      v14 = type;
      if (os_log_type_enabled(gLogObj, type))
      {
        v15 = *(a1 + 552);
        v51 = 136446978;
        v52 = "nw_http_resumable_upload_reissue";
        v53 = 2082;
        v54 = "http_resumable_upload->limit";
        v55 = 2048;
        v56 = 1;
        v57 = 2048;
        v58 = v15;
        v16 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu";
LABEL_52:
        _os_log_impl(&dword_181A37000, v13, v14, v16, &v51, 0x2Au);
      }
    }

    else if (v44 == 1)
    {
      v29 = __nw_create_backtrace_string();
      v13 = __nwlog_obj();
      v14 = type;
      v30 = os_log_type_enabled(v13, type);
      if (v29)
      {
        if (v30)
        {
          v31 = *(a1 + 552);
          v51 = 136447234;
          v52 = "nw_http_resumable_upload_reissue";
          v53 = 2082;
          v54 = "http_resumable_upload->limit";
          v55 = 2048;
          v56 = 1;
          v57 = 2048;
          v58 = v31;
          v59 = 2082;
          v60 = v29;
          _os_log_impl(&dword_181A37000, v13, v14, "%{public}s Underflow: %{public}s, decrement %llu, result %llu, dumping backtrace:%{public}s", &v51, 0x34u);
        }

        free(v29);
        goto LABEL_53;
      }

      if (v30)
      {
        v33 = *(a1 + 552);
        v51 = 136446978;
        v52 = "nw_http_resumable_upload_reissue";
        v53 = 2082;
        v54 = "http_resumable_upload->limit";
        v55 = 2048;
        v56 = 1;
        v57 = 2048;
        v58 = v33;
        v16 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, no backtrace";
        goto LABEL_52;
      }
    }

    else
    {
      v13 = __nwlog_obj();
      v14 = type;
      if (os_log_type_enabled(v13, type))
      {
        v32 = *(a1 + 552);
        v51 = 136446978;
        v52 = "nw_http_resumable_upload_reissue";
        v53 = 2082;
        v54 = "http_resumable_upload->limit";
        v55 = 2048;
        v56 = 1;
        v57 = 2048;
        v58 = v32;
        v16 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, backtrace limit exceeded";
        goto LABEL_52;
      }
    }
  }

LABEL_53:
  if (v12)
  {
    free(v12);
  }

  *(a1 + 552) = 0;
LABEL_56:
  *(a1 + 554) &= ~2u;
  _Block_object_dispose(v61, 8);
  if ((v63 & 1) != 0 && v62)
  {
    os_release(v62);
  }

LABEL_59:
  _Block_object_dispose(buf, 8);
  if ((v68 & 1) != 0 && metadata_for_request)
  {
    os_release(metadata_for_request);
  }

  if (v3)
  {
    os_release(v3);
  }

  return v5;
}

void nw_http_resumable_upload_update_request_metadata(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  if (!*(a1 + 472))
  {
    v13 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http_resumable_upload_update_request_metadata";
    v14 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v13, 16, "%{public}s called with null http_resumable_upload->request_metadata", buf, 12);
    __str[0] = 16;
    v21 = 0;
    if (!__nwlog_fault(v14, __str, &v21))
    {
      goto LABEL_40;
    }

    if (__str[0] == 17)
    {
      v15 = __nwlog_obj();
      v16 = __str[0];
      if (!os_log_type_enabled(v15, __str[0]))
      {
        goto LABEL_40;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http_resumable_upload_update_request_metadata";
      v17 = "%{public}s called with null http_resumable_upload->request_metadata";
    }

    else if (v21 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v15 = __nwlog_obj();
      v16 = __str[0];
      v19 = os_log_type_enabled(v15, __str[0]);
      if (backtrace_string)
      {
        if (v19)
        {
          *buf = 136446466;
          *&buf[4] = "nw_http_resumable_upload_update_request_metadata";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v15, v16, "%{public}s called with null http_resumable_upload->request_metadata, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_40;
      }

      if (!v19)
      {
LABEL_40:
        if (v14)
        {
          free(v14);
        }

        return;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http_resumable_upload_update_request_metadata";
      v17 = "%{public}s called with null http_resumable_upload->request_metadata, no backtrace";
    }

    else
    {
      v15 = __nwlog_obj();
      v16 = __str[0];
      if (!os_log_type_enabled(v15, __str[0]))
      {
        goto LABEL_40;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http_resumable_upload_update_request_metadata";
      v17 = "%{public}s called with null http_resumable_upload->request_metadata, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v15, v16, v17, buf, 0xCu);
    goto LABEL_40;
  }

  if ((*(a1 + 198) & 1) == 0)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v2 = gLogObj;
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
    {
      if (*(a1 + 553) - 1 > 4)
      {
        v3 = "error";
      }

      else
      {
        v3 = off_1E6A312D0[(*(a1 + 553) - 1)];
      }

      *buf = 136446978;
      *&buf[4] = "nw_http_resumable_upload_update_request_metadata";
      *&buf[12] = 2082;
      *&buf[14] = a1 + 114;
      v25 = 2080;
      v26 = " ";
      v27 = 2080;
      v28 = v3;
      _os_log_impl(&dword_181A37000, v2, OS_LOG_TYPE_INFO, "%{public}s %{public}s%sstate: %s", buf, 0x2Au);
    }
  }

  v4 = nw_http_metadata_copy_request(*(a1 + 472));
  v5 = v4;
  v6 = *(a1 + 553);
  if (v6 > 2)
  {
    if (v6 == 3)
    {
      url = nw_endpoint_get_url(*(a1 + 488));
      nw_http_request_set_url(v5, url);
      nw_http_request_set_method(v5, "HEAD");
      nw_http_fields_remove_by_name(v5, "Content-Length");
      nw_http_fields_remove_by_name(v5, "Upload-Complete");
      nw_http_fields_remove_by_name(v5, "Upload-Offset");
    }

    else if (v6 == 4 || v6 == 5)
    {
      *(a1 + 553) = 0;
      if (!v4)
      {
        return;
      }

      goto LABEL_22;
    }

LABEL_21:
    if (!v5)
    {
      return;
    }

    goto LABEL_22;
  }

  if (v6 != 1)
  {
    if (v6 == 2)
    {
      v7 = nw_endpoint_get_url(*(a1 + 488));
      nw_http_request_set_url(v5, v7);
      nw_http_request_set_method(v5, "PATCH");
      nw_http_fields_set_value_by_name(v5, "Content-Type", "application/partial-upload");
      nw_http_fields_set_value_by_name(v5, "Upload-Complete", "?1");
      *buf = 0;
      *&buf[8] = 0;
      *&buf[13] = 0;
      snprintf(buf, 0x15uLL, "%llu", *(a1 + 464));
      nw_http_fields_set_value_by_name(v5, "Upload-Offset", buf);
      v8 = *(a1 + 456);
      v9 = *(a1 + 464);
      v10 = v8 >= v9;
      v11 = v8 - v9;
      if (v10)
      {
        *__str = 0;
        v23[0] = 0;
        *(v23 + 5) = 0;
        snprintf(__str, 0x15uLL, "%llu", v11);
        nw_http_fields_set_value_by_name(v5, "Content-Length", __str);
        if (!v5)
        {
          return;
        }

        goto LABEL_22;
      }
    }

    goto LABEL_21;
  }

  nw_http_fields_set_value_by_name(v4, "Upload-Draft-Interop-Version", "6");
  nw_http_fields_set_value_by_name(v5, "Upload-Complete", "?1");
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 0x40000000;
  v20[2] = ___ZL48nw_http_resumable_upload_update_request_metadataP33nw_protocol_http_resumable_upload_block_invoke;
  v20[3] = &__block_descriptor_tmp_39_34297;
  v20[4] = a1;
  nw_http_fields_access_value_by_name(v5, "Content-Length", v20);
  if (v5)
  {
LABEL_22:
    os_release(v5);
  }
}

uint64_t __Block_byref_object_copy__34260(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(result + 48) = *(result + 48) & 0xFE | *(a2 + 48) & 1;
  *(a2 + 40) = 0;
  *(a2 + 48) &= ~1u;
  return result;
}

uint64_t __Block_byref_object_dispose__34261(uint64_t result)
{
  if ((*(result + 48) & 1) != 0 && *(result + 40))
  {
    v1 = result;
    os_release(*(result + 40));
    result = v1;
  }

  *(result + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__29(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(result + 48) = *(result + 48) & 0xFE | *(a2 + 48) & 1;
  *(a2 + 40) = 0;
  *(a2 + 48) &= ~1u;
  return result;
}

uint64_t __Block_byref_object_dispose__30(uint64_t result)
{
  if ((*(result + 48) & 1) != 0 && *(result + 40))
  {
    v1 = result;
    os_release(*(result + 40));
    result = v1;
  }

  *(result + 40) = 0;
  return result;
}

BOOL ___ZL32nw_http_resumable_upload_reissueP33nw_protocol_http_resumable_upload_block_invoke_2(uint64_t a1)
{
  if (nw_protocol_copy_http_client_definition_onceToken != -1)
  {
    dispatch_once(&nw_protocol_copy_http_client_definition_onceToken, &__block_literal_global_85);
  }

  v2 = nw_protocol_copy_http_client_definition_definition;
  identifier = nw_protocol_definition_get_identifier(v2);
  if (v2)
  {
    os_release(v2);
  }

  v4 = *(a1 + 48);
  do
  {
    v4 = *(v4 + 48);
    if (!v4)
    {
      return 1;
    }
  }

  while (!nw_protocols_are_equal(*(v4 + 16), identifier));
  v5 = nw_parameters_copy_protocol_options_legacy(*(*(*(a1 + 32) + 8) + 40), v4);
  v6 = nw_http_client_options_copy_resend_handler(v5);
  v7 = v6 == 0;
  if (v6)
  {
    v8 = *(*(a1 + 32) + 8);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 0x40000000;
    v13[2] = ___ZL32nw_http_resumable_upload_reissueP33nw_protocol_http_resumable_upload_block_invoke_3;
    v13[3] = &unk_1E6A311E8;
    v9 = *(a1 + 48);
    v13[4] = *(a1 + 40);
    v10 = *(a1 + 56);
    v11 = v6;
    (*(v6 + 2))(v6, *(v8 + 40), *(v9 + 464), v10, v13);
    _Block_release(v11);
  }

  if (v5)
  {
    os_release(v5);
  }

  return v7;
}

void nw_http_resumable_upload_destroy(_BYTE *a1)
{
  v21 = *MEMORY[0x1E69E9840];
  if ((a1[198] & 1) == 0 && gLogDatapath == 1)
  {
    v14 = __nwlog_obj();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v15 = 136446722;
      v16 = "nw_http_resumable_upload_destroy";
      v17 = 2082;
      v18 = a1 + 114;
      v19 = 2080;
      v20 = " ";
      _os_log_impl(&dword_181A37000, v14, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%scalled", &v15, 0x20u);
    }
  }

  if (*(a1 + 112))
  {
    *(a1 + 226) |= 0x40u;
    if ((a1[198] & 1) == 0 && gLogDatapath == 1)
    {
      v2 = __nwlog_obj();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
      {
        v15 = 136446722;
        v16 = "nw_http_resumable_upload_destroy";
        v17 = 2082;
        v18 = a1 + 114;
        v19 = 2080;
        v20 = " ";
        _os_log_impl(&dword_181A37000, v2, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sdeferring destroy because the request is being reissued", &v15, 0x20u);
      }
    }
  }

  else
  {
    if (a1[544])
    {
      v3 = *(a1 + 67);
      if (v3)
      {
        os_release(v3);
      }
    }

    *(a1 + 67) = 0;
    if (a1[528])
    {
      v4 = *(a1 + 65);
      if (v4)
      {
        os_release(v4);
      }
    }

    *(a1 + 65) = 0;
    if (a1[512])
    {
      v5 = *(a1 + 63);
      if (v5)
      {
        os_release(v5);
      }
    }

    *(a1 + 63) = 0;
    if (a1[496])
    {
      v6 = *(a1 + 61);
      if (v6)
      {
        os_release(v6);
      }
    }

    *(a1 + 61) = 0;
    if (a1[480])
    {
      v7 = *(a1 + 59);
      if (v7)
      {
        os_release(v7);
      }
    }

    *(a1 + 59) = 0;
    if (a1[408])
    {
      v8 = *(a1 + 50);
      if (v8)
      {
        _Block_release(v8);
      }
    }

    *(a1 + 50) = 0;
    if (a1[368])
    {
      v9 = *(a1 + 45);
      if (v9)
      {
        _Block_release(v9);
      }
    }

    *(a1 + 45) = 0;
    if (a1[352])
    {
      v10 = *(a1 + 43);
      if (v10)
      {
        os_release(v10);
      }
    }

    *(a1 + 43) = 0;
    if (a1[288])
    {
      v11 = *(a1 + 35);
      if (v11)
      {
        os_release(v11);
      }
    }

    *(a1 + 35) = 0;
    if (a1[272])
    {
      v12 = *(a1 + 33);
      if (v12)
      {
        os_release(v12);
      }
    }

    *(a1 + 33) = 0;
    if (a1[256])
    {
      v13 = *(a1 + 31);
      if (v13)
      {
        os_release(v13);
      }
    }

    free(a1);
  }
}

void ___ZL48nw_http_resumable_upload_update_request_metadataP33nw_protocol_http_resumable_upload_block_invoke(uint64_t a1, char *__s)
{
  if (__s)
  {
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
    *(*(a1 + 32) + 456) = std::stoull(&__dst, 0, 10);
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
    }
  }
}

void nw_protocol_http_resumable_upload_create::$_1::__invoke(uint64_t a1, int a2, void *object, int a4, uint64_t a5)
{
  v34 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v13 = __nwlog_obj();
    *buf = 136446210;
    v31 = "operator()";
    v14 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v13, 16, "%{public}s called with null protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v28 = 0;
    if (!__nwlog_fault(v14, &type, &v28))
    {
      goto LABEL_69;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v15 = __nwlog_obj();
      v16 = type;
      if (!os_log_type_enabled(v15, type))
      {
        goto LABEL_69;
      }

      *buf = 136446210;
      v31 = "operator()";
      v17 = "%{public}s called with null protocol";
    }

    else if (v28 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v15 = __nwlog_obj();
      v16 = type;
      v22 = os_log_type_enabled(v15, type);
      if (backtrace_string)
      {
        if (v22)
        {
          *buf = 136446466;
          v31 = "operator()";
          v32 = 2082;
          v33 = backtrace_string;
          _os_log_impl(&dword_181A37000, v15, v16, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_69:
        if (!v14)
        {
          return;
        }

        goto LABEL_70;
      }

      if (!v22)
      {
        goto LABEL_69;
      }

      *buf = 136446210;
      v31 = "operator()";
      v17 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v15 = __nwlog_obj();
      v16 = type;
      if (!os_log_type_enabled(v15, type))
      {
        goto LABEL_69;
      }

      *buf = 136446210;
      v31 = "operator()";
      v17 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

    goto LABEL_68;
  }

  v5 = *(a1 + 40);
  if (!v5)
  {
    v18 = __nwlog_obj();
    *buf = 136446210;
    v31 = "operator()";
    v14 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v18, 16, "%{public}s called with null http_resumable_upload", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v28 = 0;
    if (!__nwlog_fault(v14, &type, &v28))
    {
      goto LABEL_69;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v28 != 1)
      {
        v15 = __nwlog_obj();
        v16 = type;
        if (!os_log_type_enabled(v15, type))
        {
          goto LABEL_69;
        }

        *buf = 136446210;
        v31 = "operator()";
        v17 = "%{public}s called with null http_resumable_upload, backtrace limit exceeded";
        goto LABEL_68;
      }

      v23 = __nw_create_backtrace_string();
      v15 = __nwlog_obj();
      v16 = type;
      v24 = os_log_type_enabled(v15, type);
      if (!v23)
      {
        if (!v24)
        {
          goto LABEL_69;
        }

        *buf = 136446210;
        v31 = "operator()";
        v17 = "%{public}s called with null http_resumable_upload, no backtrace";
        goto LABEL_68;
      }

      if (!v24)
      {
        goto LABEL_50;
      }

      *buf = 136446466;
      v31 = "operator()";
      v32 = 2082;
      v33 = v23;
      v25 = "%{public}s called with null http_resumable_upload, dumping backtrace:%{public}s";
      goto LABEL_49;
    }

    v15 = __nwlog_obj();
    v16 = type;
    if (!os_log_type_enabled(v15, type))
    {
      goto LABEL_69;
    }

    *buf = 136446210;
    v31 = "operator()";
    v17 = "%{public}s called with null http_resumable_upload";
LABEL_68:
    _os_log_impl(&dword_181A37000, v15, v16, v17, buf, 0xCu);
    goto LABEL_69;
  }

  if (!object)
  {
    v19 = __nwlog_obj();
    *buf = 136446210;
    v31 = "operator()";
    v14 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v19, 16, "%{public}s called with null metadata", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v28 = 0;
    if (!__nwlog_fault(v14, &type, &v28))
    {
      goto LABEL_69;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v15 = __nwlog_obj();
      v16 = type;
      if (!os_log_type_enabled(v15, type))
      {
        goto LABEL_69;
      }

      *buf = 136446210;
      v31 = "operator()";
      v17 = "%{public}s called with null metadata";
      goto LABEL_68;
    }

    if (v28 != 1)
    {
      v15 = __nwlog_obj();
      v16 = type;
      if (!os_log_type_enabled(v15, type))
      {
        goto LABEL_69;
      }

      *buf = 136446210;
      v31 = "operator()";
      v17 = "%{public}s called with null metadata, backtrace limit exceeded";
      goto LABEL_68;
    }

    v23 = __nw_create_backtrace_string();
    v15 = __nwlog_obj();
    v16 = type;
    v26 = os_log_type_enabled(v15, type);
    if (!v23)
    {
      if (!v26)
      {
        goto LABEL_69;
      }

      *buf = 136446210;
      v31 = "operator()";
      v17 = "%{public}s called with null metadata, no backtrace";
      goto LABEL_68;
    }

    if (!v26)
    {
      goto LABEL_50;
    }

    *buf = 136446466;
    v31 = "operator()";
    v32 = 2082;
    v33 = v23;
    v25 = "%{public}s called with null metadata, dumping backtrace:%{public}s";
LABEL_49:
    _os_log_impl(&dword_181A37000, v15, v16, v25, buf, 0x16u);
    goto LABEL_50;
  }

  if (!a5)
  {
    v20 = __nwlog_obj();
    *buf = 136446210;
    v31 = "operator()";
    v14 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v20, 16, "%{public}s called with null completion", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v28 = 0;
    if (!__nwlog_fault(v14, &type, &v28))
    {
      goto LABEL_69;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v15 = __nwlog_obj();
      v16 = type;
      if (!os_log_type_enabled(v15, type))
      {
        goto LABEL_69;
      }

      *buf = 136446210;
      v31 = "operator()";
      v17 = "%{public}s called with null completion";
      goto LABEL_68;
    }

    if (v28 != 1)
    {
      v15 = __nwlog_obj();
      v16 = type;
      if (!os_log_type_enabled(v15, type))
      {
        goto LABEL_69;
      }

      *buf = 136446210;
      v31 = "operator()";
      v17 = "%{public}s called with null completion, backtrace limit exceeded";
      goto LABEL_68;
    }

    v23 = __nw_create_backtrace_string();
    v15 = __nwlog_obj();
    v16 = type;
    v27 = os_log_type_enabled(v15, type);
    if (!v23)
    {
      if (!v27)
      {
        goto LABEL_69;
      }

      *buf = 136446210;
      v31 = "operator()";
      v17 = "%{public}s called with null completion, no backtrace";
      goto LABEL_68;
    }

    if (v27)
    {
      *buf = 136446466;
      v31 = "operator()";
      v32 = 2082;
      v33 = v23;
      v25 = "%{public}s called with null completion, dumping backtrace:%{public}s";
      goto LABEL_49;
    }

LABEL_50:
    free(v23);
    if (!v14)
    {
      return;
    }

LABEL_70:
    free(v14);
    return;
  }

  if (a4)
  {
    v8 = *(a5 + 16);

    v8(a5, 1);
  }

  else
  {
    v9 = os_retain(object);
    v10 = *(v5 + 480);
    if ((v10 & 1) != 0 && *(v5 + 472))
    {
      v11 = v9;
      os_release(*(v5 + 472));
      v9 = v11;
      v10 = *(v5 + 480);
    }

    *(v5 + 472) = v9;
    *(v5 + 480) = v10 | 1;
    v12 = nw_http_metadata_copy_request(object);
    *(v5 + 554) = *(v5 + 554) & 0xFE | nw_http_fields_have_field_with_name(v12, "Cookie");
    nw_http_resumable_upload_update_request_metadata(v5);
    (*(a5 + 16))(a5, 1);
    if (v12)
    {

      os_release(v12);
    }
  }
}

void nw_protocol_http_resumable_upload_create::$_0::__invoke(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v82 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v37 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "operator()";
    v38 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v37, 16, "%{public}s called with null protocol", buf, 12);
    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v61[0]) = 0;
    if (!__nwlog_fault(v38, type, v61))
    {
      goto LABEL_152;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v39 = __nwlog_obj();
      v40 = type[0];
      if (!os_log_type_enabled(v39, type[0]))
      {
        goto LABEL_152;
      }

      *buf = 136446210;
      *&buf[4] = "operator()";
      v41 = "%{public}s called with null protocol";
    }

    else if (LOBYTE(v61[0]) == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v39 = __nwlog_obj();
      v40 = type[0];
      v47 = os_log_type_enabled(v39, type[0]);
      if (backtrace_string)
      {
        if (v47)
        {
          *buf = 136446466;
          *&buf[4] = "operator()";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v39, v40, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_152:
        if (!v38)
        {
          return;
        }

        goto LABEL_153;
      }

      if (!v47)
      {
        goto LABEL_152;
      }

      *buf = 136446210;
      *&buf[4] = "operator()";
      v41 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v39 = __nwlog_obj();
      v40 = type[0];
      if (!os_log_type_enabled(v39, type[0]))
      {
        goto LABEL_152;
      }

      *buf = 136446210;
      *&buf[4] = "operator()";
      v41 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

    goto LABEL_151;
  }

  v5 = *(a1 + 40);
  if (!v5)
  {
    v42 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "operator()";
    v38 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v42, 16, "%{public}s called with null http_resumable_upload", buf, 12);
    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v61[0]) = 0;
    if (!__nwlog_fault(v38, type, v61))
    {
      goto LABEL_152;
    }

    if (type[0] != OS_LOG_TYPE_FAULT)
    {
      if (LOBYTE(v61[0]) != 1)
      {
        v39 = __nwlog_obj();
        v40 = type[0];
        if (!os_log_type_enabled(v39, type[0]))
        {
          goto LABEL_152;
        }

        *buf = 136446210;
        *&buf[4] = "operator()";
        v41 = "%{public}s called with null http_resumable_upload, backtrace limit exceeded";
        goto LABEL_151;
      }

      v48 = __nw_create_backtrace_string();
      v39 = __nwlog_obj();
      v40 = type[0];
      v49 = os_log_type_enabled(v39, type[0]);
      if (!v48)
      {
        if (!v49)
        {
          goto LABEL_152;
        }

        *buf = 136446210;
        *&buf[4] = "operator()";
        v41 = "%{public}s called with null http_resumable_upload, no backtrace";
        goto LABEL_151;
      }

      if (!v49)
      {
        goto LABEL_122;
      }

      *buf = 136446466;
      *&buf[4] = "operator()";
      *&buf[12] = 2082;
      *&buf[14] = v48;
      v50 = "%{public}s called with null http_resumable_upload, dumping backtrace:%{public}s";
      goto LABEL_121;
    }

    v39 = __nwlog_obj();
    v40 = type[0];
    if (!os_log_type_enabled(v39, type[0]))
    {
      goto LABEL_152;
    }

    *buf = 136446210;
    *&buf[4] = "operator()";
    v41 = "%{public}s called with null http_resumable_upload";
LABEL_151:
    _os_log_impl(&dword_181A37000, v39, v40, v41, buf, 0xCu);
    goto LABEL_152;
  }

  if (!a2)
  {
    v43 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "operator()";
    v38 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v43, 16, "%{public}s called with null other_protocol", buf, 12);
    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v61[0]) = 0;
    if (!__nwlog_fault(v38, type, v61))
    {
      goto LABEL_152;
    }

    if (type[0] != OS_LOG_TYPE_FAULT)
    {
      if (LOBYTE(v61[0]) != 1)
      {
        v39 = __nwlog_obj();
        v40 = type[0];
        if (!os_log_type_enabled(v39, type[0]))
        {
          goto LABEL_152;
        }

        *buf = 136446210;
        *&buf[4] = "operator()";
        v41 = "%{public}s called with null other_protocol, backtrace limit exceeded";
        goto LABEL_151;
      }

      v48 = __nw_create_backtrace_string();
      v39 = __nwlog_obj();
      v40 = type[0];
      v51 = os_log_type_enabled(v39, type[0]);
      if (!v48)
      {
        if (!v51)
        {
          goto LABEL_152;
        }

        *buf = 136446210;
        *&buf[4] = "operator()";
        v41 = "%{public}s called with null other_protocol, no backtrace";
        goto LABEL_151;
      }

      if (!v51)
      {
        goto LABEL_122;
      }

      *buf = 136446466;
      *&buf[4] = "operator()";
      *&buf[12] = 2082;
      *&buf[14] = v48;
      v50 = "%{public}s called with null other_protocol, dumping backtrace:%{public}s";
      goto LABEL_121;
    }

    v39 = __nwlog_obj();
    v40 = type[0];
    if (!os_log_type_enabled(v39, type[0]))
    {
      goto LABEL_152;
    }

    *buf = 136446210;
    *&buf[4] = "operator()";
    v41 = "%{public}s called with null other_protocol";
    goto LABEL_151;
  }

  if (!a3)
  {
    v44 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "operator()";
    v38 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v44, 16, "%{public}s called with null metadata", buf, 12);
    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v61[0]) = 0;
    if (!__nwlog_fault(v38, type, v61))
    {
      goto LABEL_152;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v39 = __nwlog_obj();
      v40 = type[0];
      if (!os_log_type_enabled(v39, type[0]))
      {
        goto LABEL_152;
      }

      *buf = 136446210;
      *&buf[4] = "operator()";
      v41 = "%{public}s called with null metadata";
      goto LABEL_151;
    }

    if (LOBYTE(v61[0]) != 1)
    {
      v39 = __nwlog_obj();
      v40 = type[0];
      if (!os_log_type_enabled(v39, type[0]))
      {
        goto LABEL_152;
      }

      *buf = 136446210;
      *&buf[4] = "operator()";
      v41 = "%{public}s called with null metadata, backtrace limit exceeded";
      goto LABEL_151;
    }

    v48 = __nw_create_backtrace_string();
    v39 = __nwlog_obj();
    v40 = type[0];
    v52 = os_log_type_enabled(v39, type[0]);
    if (!v48)
    {
      if (!v52)
      {
        goto LABEL_152;
      }

      *buf = 136446210;
      *&buf[4] = "operator()";
      v41 = "%{public}s called with null metadata, no backtrace";
      goto LABEL_151;
    }

    if (!v52)
    {
      goto LABEL_122;
    }

    *buf = 136446466;
    *&buf[4] = "operator()";
    *&buf[12] = 2082;
    *&buf[14] = v48;
    v50 = "%{public}s called with null metadata, dumping backtrace:%{public}s";
LABEL_121:
    _os_log_impl(&dword_181A37000, v39, v40, v50, buf, 0x16u);
    goto LABEL_122;
  }

  if (!a5)
  {
    v45 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "operator()";
    v38 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v45, 16, "%{public}s called with null completion", buf, 12);
    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v61[0]) = 0;
    if (!__nwlog_fault(v38, type, v61))
    {
      goto LABEL_152;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v39 = __nwlog_obj();
      v40 = type[0];
      if (!os_log_type_enabled(v39, type[0]))
      {
        goto LABEL_152;
      }

      *buf = 136446210;
      *&buf[4] = "operator()";
      v41 = "%{public}s called with null completion";
      goto LABEL_151;
    }

    if (LOBYTE(v61[0]) != 1)
    {
      v39 = __nwlog_obj();
      v40 = type[0];
      if (!os_log_type_enabled(v39, type[0]))
      {
        goto LABEL_152;
      }

      *buf = 136446210;
      *&buf[4] = "operator()";
      v41 = "%{public}s called with null completion, backtrace limit exceeded";
      goto LABEL_151;
    }

    v48 = __nw_create_backtrace_string();
    v39 = __nwlog_obj();
    v40 = type[0];
    v58 = os_log_type_enabled(v39, type[0]);
    if (!v48)
    {
      if (!v58)
      {
        goto LABEL_152;
      }

      *buf = 136446210;
      *&buf[4] = "operator()";
      v41 = "%{public}s called with null completion, no backtrace";
      goto LABEL_151;
    }

    if (v58)
    {
      *buf = 136446466;
      *&buf[4] = "operator()";
      *&buf[12] = 2082;
      *&buf[14] = v48;
      v50 = "%{public}s called with null completion, dumping backtrace:%{public}s";
      goto LABEL_121;
    }

LABEL_122:
    free(v48);
    if (!v38)
    {
      return;
    }

LABEL_153:
    free(v38);
    return;
  }

  if ((*(v5 + 554) & 2) == 0)
  {
    v8 = nw_http_metadata_copy_response(a3);
    if (v8)
    {
      v9 = v8;
      status_code = _nw_http_response_get_status_code(v9);

      if ((*(v5 + 198) & 1) == 0)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v11 = gLogObj;
        if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
        {
          if (*(v5 + 553) - 1 > 4)
          {
            v12 = "error";
          }

          else
          {
            v12 = off_1E6A312D0[(*(v5 + 553) - 1)];
          }

          *buf = 136447234;
          *&buf[4] = "nw_http_resumable_upload_process_response";
          *&buf[12] = 2082;
          *&buf[14] = v5 + 114;
          *&buf[22] = 2080;
          v77 = " ";
          LOWORD(v78) = 1024;
          *(&v78 + 2) = status_code;
          HIWORD(v78) = 2080;
          v79 = v12;
          _os_log_impl(&dword_181A37000, v11, OS_LOG_TYPE_INFO, "%{public}s %{public}s%sstatus: %u, state: %s", buf, 0x30u);
        }
      }

      if ((status_code - 400) <= 0xC7)
      {
        goto LABEL_18;
      }

      *(v5 + 552) = 3;
      v14 = *(v5 + 553);
      if (v14 > 2)
      {
        switch(v14)
        {
          case 3u:
            goto LABEL_18;
          case 4u:
            *buf = 0;
            *&buf[8] = buf;
            *&buf[16] = 0x2000000000;
            LOBYTE(v77) = 0;
            *v80 = 0;
            *&v80[8] = v80;
            *&v80[16] = 0x2000000000;
            LOBYTE(v81) = 0;
            *type = MEMORY[0x1E69E9820];
            v71 = 0x40000000;
            v72 = ___ZL41nw_http_resumable_upload_process_responseP33nw_protocol_http_resumable_uploadP20nw_protocol_metadata_block_invoke;
            v73 = &unk_1E6A31148;
            v74 = buf;
            v75 = v80;
            v9 = v9;
            v15 = type;
            _nw_http_fields_access_value_by_name(v9, "Upload-Complete", v15);

            v16 = 0;
            if (*(*&buf[8] + 24) == 1)
            {
              if ((*(*&v80[8] + 24) & 1) == 0 && (status_code & 0xFFFFFFFB) == 0xC8)
              {
                v66 = 0;
                v67 = &v66;
                v68 = 0x2000000000;
                v69 = 0;
                v62 = 0;
                v63 = &v62;
                v64 = 0x2000000000;
                v65 = 0;
                v61[0] = MEMORY[0x1E69E9820];
                v61[1] = 0x40000000;
                v61[2] = ___ZL41nw_http_resumable_upload_process_responseP33nw_protocol_http_resumable_uploadP20nw_protocol_metadata_block_invoke_2;
                v61[3] = &unk_1E6A31170;
                v61[4] = &v66;
                v61[5] = &v62;
                nw_http_fields_access_value_by_name(v9, "Upload-Offset", v61);
                if (*(v67 + 24) != 1 || (v17 = v63[3], v17 < 0))
                {
                  v19 = 0;
                  v18 = 0;
                }

                else
                {
                  *(v5 + 464) = v17;
                  v18 = 1;
                  v19 = 2;
                }

                *(v5 + 553) = v19;
                _Block_object_dispose(&v62, 8);
                _Block_object_dispose(&v66, 8);
                _Block_object_dispose(v80, 8);
                _Block_object_dispose(buf, 8);
                os_release(v9);
                if ((v18 & 1) != 0 && nw_http_resumable_upload_reissue(v5))
                {
                  (*(a5 + 16))(a5, 3);
                  return;
                }

                goto LABEL_20;
              }

              if ((*(*&v80[8] + 24) & ((status_code - 200) < 0x64)) != 0)
              {
                v16 = 5;
              }

              else
              {
                v16 = 0;
              }
            }

            *(v5 + 553) = v16;
            _Block_object_dispose(v80, 8);
            _Block_object_dispose(buf, 8);
            break;
          case 5u:
            goto LABEL_18;
        }

LABEL_19:
        os_release(v9);
LABEL_20:
        (*(a5 + 16))(a5, 1);
        return;
      }

      if (v14 != 1)
      {
        if (v14 == 2 && (status_code - 200) <= 0x63)
        {
          *(v5 + 553) = 5;
        }

        goto LABEL_19;
      }

      if (status_code != 104)
      {
        goto LABEL_19;
      }

      *v80 = 0;
      *&v80[8] = v80;
      *&v80[16] = 0x2000000000;
      LOBYTE(v81) = 0;
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 0x40000000;
      *&buf[16] = ___ZL52nw_http_resumable_upload_draft_version_is_compatibleP33nw_protocol_http_resumable_uploadP14nw_http_fields_block_invoke;
      v77 = &unk_1E6A31198;
      v78 = v80;
      v20 = v9;
      v21 = buf;
      _nw_http_fields_access_value_by_name(v20, "Upload-Draft-Interop-Version", v21);

      LOBYTE(v20) = *(*&v80[8] + 24);
      _Block_object_dispose(v80, 8);
      if ((v20 & 1) == 0)
      {
LABEL_18:
        *(v5 + 553) = 0;
        goto LABEL_19;
      }

      v22 = nw_protocol_http_copy_location_endpoint(v5, a3);
      v23 = v22;
      if (v22)
      {
        url_scheme = nw_endpoint_get_url_scheme(v22);
        if (strcasecmp(url_scheme, "https") && strcasecmp(url_scheme, "http"))
        {
          if (*(v5 + 198))
          {
            goto LABEL_67;
          }

          v25 = __nwlog_obj();
          if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_67;
          }

          *v80 = 136446722;
          *&v80[4] = "nw_http_resumable_upload_copy_endpoint";
          *&v80[12] = 2082;
          *&v80[14] = v5 + 114;
          *&v80[22] = 2080;
          v81 = " ";
          v26 = "%{public}s %{public}s%sresume URL must be http or https";
LABEL_66:
          _os_log_impl(&dword_181A37000, v25, OS_LOG_TYPE_ERROR, v26, v80, 0x20u);
LABEL_67:
          v32 = v23;
          v23 = 0;
LABEL_68:
          os_release(v32);
          goto LABEL_69;
        }

        hostname = nw_endpoint_get_hostname(v23);
        if (!hostname || !*hostname)
        {
          if (*(v5 + 198))
          {
            goto LABEL_67;
          }

          v25 = __nwlog_obj();
          if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_67;
          }

          *v80 = 136446722;
          *&v80[4] = "nw_http_resumable_upload_copy_endpoint";
          *&v80[12] = 2082;
          *&v80[14] = v5 + 114;
          *&v80[22] = 2080;
          v81 = " ";
          v26 = "%{public}s %{public}s%sinvalid resume URL without hostname";
          goto LABEL_66;
        }

        parameters = nw_protocol_get_parameters(v5);
        v29 = nw_parameters_copy_url_endpoint(parameters);
        v30 = nw_endpoint_get_url_scheme(v29);
        if (strcasecmp(url_scheme, "https") && !strcasecmp(v30, "https"))
        {
          if ((*(v5 + 198) & 1) == 0)
          {
            v31 = __nwlog_obj();
            if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
            {
              *v80 = 136446722;
              *&v80[4] = "nw_http_resumable_upload_copy_endpoint";
              *&v80[12] = 2082;
              *&v80[14] = v5 + 114;
              *&v80[22] = 2080;
              v81 = " ";
              _os_log_impl(&dword_181A37000, v31, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%snot allowing insecure resume URL when original URL was https", v80, 0x20u);
            }
          }

          os_release(v23);
          v23 = 0;
        }

        v32 = v29;
        if (v29)
        {
          goto LABEL_68;
        }
      }

LABEL_69:
      v33 = *(v5 + 496);
      if (v33)
      {
        v34 = *(v5 + 488);
        if (v34)
        {
          os_release(v34);
          v33 = *(v5 + 496);
        }
      }

      *(v5 + 488) = v23;
      *(v5 + 496) = v33 | 1;
      if (v23)
      {
        client_metadata_in_parameters = nw_http_messaging_options_find_or_create_client_metadata_in_parameters(*(v5 + 520), v5);
        if (client_metadata_in_parameters)
        {
          v36 = client_metadata_in_parameters;
          nw_http_client_metadata_set_upload_resume_endpoint(client_metadata_in_parameters, *(v5 + 488));
          *(v5 + 553) = 2;
          os_release(v36);
        }

        else
        {
          *(v5 + 553) = 2;
        }

        goto LABEL_19;
      }

      goto LABEL_18;
    }

    v53 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http_resumable_upload_process_response";
    v54 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v53, 16, "%{public}s called with null response", buf, 12);
    v80[0] = 16;
    LOBYTE(v66) = 0;
    if (__nwlog_fault(v54, v80, &v66))
    {
      if (v80[0] == 17)
      {
        v55 = __nwlog_obj();
        v56 = v80[0];
        if (!os_log_type_enabled(v55, v80[0]))
        {
          goto LABEL_157;
        }

        *buf = 136446210;
        *&buf[4] = "nw_http_resumable_upload_process_response";
        v57 = "%{public}s called with null response";
        goto LABEL_156;
      }

      if (v66 != 1)
      {
        v55 = __nwlog_obj();
        v56 = v80[0];
        if (!os_log_type_enabled(v55, v80[0]))
        {
          goto LABEL_157;
        }

        *buf = 136446210;
        *&buf[4] = "nw_http_resumable_upload_process_response";
        v57 = "%{public}s called with null response, backtrace limit exceeded";
        goto LABEL_156;
      }

      v59 = __nw_create_backtrace_string();
      v55 = __nwlog_obj();
      v56 = v80[0];
      v60 = os_log_type_enabled(v55, v80[0]);
      if (v59)
      {
        if (v60)
        {
          *buf = 136446466;
          *&buf[4] = "nw_http_resumable_upload_process_response";
          *&buf[12] = 2082;
          *&buf[14] = v59;
          _os_log_impl(&dword_181A37000, v55, v56, "%{public}s called with null response, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v59);
        goto LABEL_157;
      }

      if (v60)
      {
        *buf = 136446210;
        *&buf[4] = "nw_http_resumable_upload_process_response";
        v57 = "%{public}s called with null response, no backtrace";
LABEL_156:
        _os_log_impl(&dword_181A37000, v55, v56, v57, buf, 0xCu);
      }
    }

LABEL_157:
    if (v54)
    {
      free(v54);
    }

    goto LABEL_20;
  }

  v13 = *(a5 + 16);

  v13(a5, 3);
}

uint64_t ___ZL52nw_http_resumable_upload_draft_version_is_compatibleP33nw_protocol_http_resumable_uploadP14nw_http_fields_block_invoke(uint64_t result, _BYTE *a2)
{
  if (a2 && *a2 == 54 && !a2[1])
  {
    *(*(*(result + 32) + 8) + 24) = 1;
  }

  return result;
}

uint64_t ___ZL41nw_http_resumable_upload_process_responseP33nw_protocol_http_resumable_uploadP20nw_protocol_metadata_block_invoke(uint64_t result, _BYTE *a2)
{
  if (a2)
  {
    *(*(*(result + 32) + 8) + 24) = 1;
    if (__PAIR64__(a2[1], *a2) == 0x310000003FLL && !a2[2])
    {
      *(*(*(result + 40) + 8) + 24) = 1;
    }
  }

  return result;
}

void ___ZL41nw_http_resumable_upload_process_responseP33nw_protocol_http_resumable_uploadP20nw_protocol_metadata_block_invoke_2(uint64_t a1, char *__s)
{
  if (__s)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
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
    *(*(*(a1 + 40) + 8) + 24) = std::stoll(&__dst, 0, 10);
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
    }
  }
}

void ___ZL47nw_protocol_http_resumable_upload_get_callbacksv_block_invoke()
{
  nw_protocol_http_resumable_upload_get_callbacks(void)::protocol_callbacks = nw_protocol_common_add_input_handler;
  qword_1EA841EB0 = nw_protocol_common_replace_input_handler;
  qword_1EA841EF0 = nw_protocol_common_get_input_frames;
  qword_1EA841EF8 = nw_protocol_common_get_output_frames;
  qword_1EA841F00 = nw_protocol_common_finalize_output_frames;
  qword_1EA841F10 = nw_protocol_common_get_parameters;
  qword_1EA841F18 = nw_protocol_common_get_path;
  qword_1EA841F28 = nw_protocol_common_get_remote_endpoint;
  qword_1EA841F20 = nw_protocol_common_get_local_endpoint;
  qword_1EA841F68 = nw_protocol_common_get_output_local_endpoint;
  qword_1EA841F70 = nw_protocol_common_get_output_interface;
  qword_1EA841EB8 = nw_protocol_common_connect;
  qword_1EA841EC8 = nw_protocol_common_connected;
  qword_1EA841EC0 = nw_protocol_common_disconnect;
  qword_1EA841ED0 = nw_protocol_common_disconnected;
  qword_1EA841EE0 = nw_protocol_common_input_available;
  qword_1EA841EE8 = nw_protocol_common_output_available;
  qword_1EA841F58 = nw_protocol_common_input_finished;
  qword_1EA841F60 = nw_protocol_common_output_finished;
  qword_1EA841FA8 = nw_protocol_common_input_flush;
  qword_1EA841ED8 = nw_protocol_common_error;
  qword_1EA841FA0 = nw_protocol_common_reset;
  qword_1EA841F98 = nw_protocol_common_get_message_properties;
  qword_1EA841F80 = nw_protocol_common_copy_info;
  qword_1EA841F50 = nw_protocol_common_supports_external_data;
  qword_1EA841F78 = nw_protocol_common_waiting_for_output;
  qword_1EA841F30 = nw_protocol_common_register_notification;
  qword_1EA841F38 = nw_protocol_common_unregister_notification;
  qword_1EA841F40 = nw_protocol_common_notify;
  qword_1EA841F48 = nw_protocol_common_updated_path;
  qword_1EA841F08 = nw_protocol_common_link_state;
  qword_1EA841EA8 = nw_protocol_http_resumable_upload_remove_input_handler;
}

uint64_t nw_protocol_http_resumable_upload_remove_input_handler(nw_protocol *a1, nw_protocol *a2, uint64_t a3)
{
  v24 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    handle = a1->handle;
    if (handle)
    {
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 0x40000000;
      v17[2] = ___ZL54nw_protocol_http_resumable_upload_remove_input_handlerP11nw_protocolS0_b_block_invoke;
      v17[3] = &__block_descriptor_tmp_45_34387;
      v17[4] = handle;
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 0x40000000;
      v15[2] = ___ZL54nw_protocol_http_resumable_upload_remove_input_handlerP11nw_protocolS0_b_block_invoke_2;
      v15[3] = &__block_descriptor_tmp_46_34388;
      v16 = a3;
      v15[4] = handle;
      return nw_protocol_common_remove_input_handler_with_cleanup_blocks(a1, a2, a3, v17, v15);
    }

    v10 = __nwlog_obj();
    *buf = 136446210;
    v21 = "nw_protocol_http_resumable_upload_remove_input_handler";
    v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v10, 16, "%{public}s called with null http_resumable_upload", buf, 12);
    v19 = OS_LOG_TYPE_ERROR;
    v18 = 0;
    if (!__nwlog_fault(v6, &v19, &v18))
    {
      goto LABEL_32;
    }

    if (v19 == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = v19;
      if (os_log_type_enabled(v7, v19))
      {
        *buf = 136446210;
        v21 = "nw_protocol_http_resumable_upload_remove_input_handler";
        v9 = "%{public}s called with null http_resumable_upload";
        goto LABEL_31;
      }

      goto LABEL_32;
    }

    if (v18 != 1)
    {
      v7 = __nwlog_obj();
      v8 = v19;
      if (os_log_type_enabled(v7, v19))
      {
        *buf = 136446210;
        v21 = "nw_protocol_http_resumable_upload_remove_input_handler";
        v9 = "%{public}s called with null http_resumable_upload, backtrace limit exceeded";
        goto LABEL_31;
      }

      goto LABEL_32;
    }

    backtrace_string = __nw_create_backtrace_string();
    v7 = __nwlog_obj();
    v8 = v19;
    v14 = os_log_type_enabled(v7, v19);
    if (!backtrace_string)
    {
      if (v14)
      {
        *buf = 136446210;
        v21 = "nw_protocol_http_resumable_upload_remove_input_handler";
        v9 = "%{public}s called with null http_resumable_upload, no backtrace";
        goto LABEL_31;
      }

      goto LABEL_32;
    }

    if (v14)
    {
      *buf = 136446466;
      v21 = "nw_protocol_http_resumable_upload_remove_input_handler";
      v22 = 2082;
      v23 = backtrace_string;
      v13 = "%{public}s called with null http_resumable_upload, dumping backtrace:%{public}s";
      goto LABEL_21;
    }

    goto LABEL_22;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v21 = "nw_protocol_http_resumable_upload_remove_input_handler";
  v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s called with null protocol", buf, 12);
  v19 = OS_LOG_TYPE_ERROR;
  v18 = 0;
  if (!__nwlog_fault(v6, &v19, &v18))
  {
    goto LABEL_32;
  }

  if (v19 != OS_LOG_TYPE_FAULT)
  {
    if (v18 != 1)
    {
      v7 = __nwlog_obj();
      v8 = v19;
      if (os_log_type_enabled(v7, v19))
      {
        *buf = 136446210;
        v21 = "nw_protocol_http_resumable_upload_remove_input_handler";
        v9 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_31;
      }

      goto LABEL_32;
    }

    backtrace_string = __nw_create_backtrace_string();
    v7 = __nwlog_obj();
    v8 = v19;
    v12 = os_log_type_enabled(v7, v19);
    if (!backtrace_string)
    {
      if (v12)
      {
        *buf = 136446210;
        v21 = "nw_protocol_http_resumable_upload_remove_input_handler";
        v9 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_31;
      }

      goto LABEL_32;
    }

    if (v12)
    {
      *buf = 136446466;
      v21 = "nw_protocol_http_resumable_upload_remove_input_handler";
      v22 = 2082;
      v23 = backtrace_string;
      v13 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_21:
      _os_log_impl(&dword_181A37000, v7, v8, v13, buf, 0x16u);
    }

LABEL_22:
    free(backtrace_string);
    goto LABEL_32;
  }

  v7 = __nwlog_obj();
  v8 = v19;
  if (os_log_type_enabled(v7, v19))
  {
    *buf = 136446210;
    v21 = "nw_protocol_http_resumable_upload_remove_input_handler";
    v9 = "%{public}s called with null protocol";
LABEL_31:
    _os_log_impl(&dword_181A37000, v7, v8, v9, buf, 0xCu);
  }

LABEL_32:
  if (v6)
  {
    free(v6);
  }

  return 0;
}

void ___ZL54nw_protocol_http_resumable_upload_remove_input_handlerP11nw_protocolS0_b_block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (gLogDatapath == 1)
  {
    v8 = __nwlog_obj();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v9 = 136446210;
      v10 = "nw_protocol_plugin_metadata_teardown";
      _os_log_impl(&dword_181A37000, v8, OS_LOG_TYPE_DEBUG, "%{public}s called", &v9, 0xCu);
    }
  }

  nw_protocol_plugin_metadata_reset((v2 + 200));
  *(v2 + 328) = 0;
  v3 = *(a1 + 32);
  v4 = *(v3 + 368);
  if (v4)
  {
    v5 = *(v3 + 360);
    if (v5)
    {
      _Block_release(v5);
      v4 = *(v3 + 368);
    }
  }

  *(v3 + 360) = 0;
  *(v3 + 368) = v4 | 1;
  v6 = *(v3 + 408);
  if (v6)
  {
    v7 = *(v3 + 400);
    if (v7)
    {
      _Block_release(v7);
      v6 = *(v3 + 408);
    }
  }

  *(v3 + 400) = 0;
  *(v3 + 408) = v6 | 1;
}

void ___ZL54nw_protocol_http_resumable_upload_remove_input_handlerP11nw_protocolS0_b_block_invoke_2(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    nw_http_resumable_upload_destroy(*(a1 + 32));
  }
}

double __nw_protocol_http_resumable_upload_identifier_block_invoke()
{
  strcpy(&nw_protocol_http_resumable_upload_identifier::protocol_identifier, "http_resumable_upload");
  *&result = 0x100000005;
  qword_1EA841E90 = 0x100000005;
  return result;
}

uint64_t nw_printf_write(uint64_t result, uint64_t a2, _BYTE *a3, unint64_t a4)
{
  if (!a4)
  {
    return result;
  }

  v19 = a4;
  v20 = a3;
  v18 = 0;
  v4 = *(a2 + 32);
  if ((v4 & 9) == 0)
  {
    if (*a3 == 45)
    {
      v18 = 45;
      v5 = a4 - 1;
      ++a3;
      v19 = a4 - 1;
      v20 = a3;
      v17 = 0;
      if ((v4 & 2) != 0)
      {
        goto LABEL_13;
      }
    }

    else
    {
      if ((v4 & 0x4000) != 0)
      {
        v11 = 43;
      }

      else
      {
        if ((v4 & 0x8000) == 0)
        {
          goto LABEL_3;
        }

        v11 = 32;
      }

      v18 = v11;
      v5 = a4++;
      v17 = 0;
      if ((v4 & 2) != 0)
      {
        goto LABEL_13;
      }
    }

LABEL_4:
    if ((v4 & 4) == 0)
    {
      v6 = 0;
      if ((v4 & 8) != 0)
      {
        v7 = *(a2 + 16);
        if ((*(a2 + 24) & 1) == 0)
        {
          v7 = -1;
        }

        if (v7 < a4)
        {
          a4 = v7;
        }

        v19 = a4;
      }

      goto LABEL_34;
    }

    goto LABEL_18;
  }

LABEL_3:
  v5 = a4;
  v17 = 0;
  if ((v4 & 2) == 0)
  {
    goto LABEL_4;
  }

LABEL_13:
  if (*(a2 + 24))
  {
    v8 = *(a2 + 16);
    if (!v8 && v5 == 1)
    {
      if (*a3 == 48)
      {
        v5 = 0;
        a4 = 0;
        v19 = 0;
      }

      else
      {
        v5 = 1;
      }
    }

    v10 = v8 >= v5;
    v6 = v8 - v5;
    goto LABEL_31;
  }

LABEL_18:
  if ((v4 & 0x10000) != 0)
  {
    v9 = *a2;
    if ((*(a2 + 8) & 1) == 0)
    {
      v9 = 0;
    }

    v10 = v9 >= a4;
    v6 = v9 - a4;
LABEL_31:
    if (!v10)
    {
      v6 = 0;
    }

    v17 = v6;
    goto LABEL_34;
  }

  v6 = 0;
LABEL_34:
  v12 = v6 + a4;
  v16[0] = &v18;
  v16[1] = result;
  v16[2] = &v17;
  v16[3] = a2;
  v16[4] = &v19;
  v16[5] = &v20;
  v10 = *a2 >= v12;
  v13 = *a2 - v12;
  v14 = v13 != 0 && v10;
  if ((*(a2 + 8) & v14) != 0)
  {
    v15 = v13;
  }

  else
  {
    v15 = 0;
  }

  if ((v4 & 0x2000) != 0)
  {
    for (result = nw_printf_write::$_0::operator()(v16); v15; --v15)
    {
      result = std::ostream::put();
    }
  }

  else
  {
    for (; v15; --v15)
    {
      std::ostream::put();
    }

    return nw_printf_write::$_0::operator()(v16);
  }

  return result;
}

uint64_t nw_printf_write::$_0::operator()(uint64_t result)
{
  v1 = result;
  v42 = *MEMORY[0x1E69E9840];
  if (**result)
  {
    result = std::ostream::put();
  }

  if (**(v1 + 16))
  {
    v2 = 0;
    do
    {
      result = std::ostream::put();
      ++v2;
    }

    while (v2 < **(v1 + 16));
  }

  v3 = *(*(v1 + 24) + 32);
  if ((v3 & 0x40) != 0 && **(v1 + 32))
  {
    v4 = 0;
    do
    {
      result = __toupper(*(**(v1 + 40) + v4));
      *(**(v1 + 40) + v4++) = result;
    }

    while (v4 < **(v1 + 32));
    v3 = *(*(v1 + 24) + 32);
  }

  if ((v3 & 0x600000) != 0)
  {
    v5 = **(v1 + 40);
    v6 = **(v1 + 32);
    v7 = &v5[v6];
    if (v6)
    {
      v8 = *v5 == 45;
    }

    else
    {
      v8 = 0;
    }

    v9 = &v5[v8];
    v10 = v6 - v8;
    if (v6 == v8)
    {
      v11 = v9;
    }

    else
    {
      v11 = v9;
      while (*v11 == 48)
      {
        ++v11;
        if (!--v10)
        {
          goto LABEL_35;
        }
      }
    }

    if (v11 == v7)
    {
LABEL_35:
      if (v7 == v9)
      {
        return result;
      }
    }

    else
    {
      if (*v11 - 48 < 0xA)
      {
        v12 = 9;
        do
        {
          v13 = *v11;
          if ((*v11 - 58) < 0xF6u)
          {
            break;
          }

          ++v11;
          *&v40[4 * v12] = (v13 - 48);
          if (v12-- == 0)
          {
            break;
          }
        }

        while (v11 != v7);
        v15 = v12 + 1;
        v16 = (v12 + 1) << 32;
        v17 = *&v40[4 * v15];
        if (v15 > 7)
        {
          goto LABEL_47;
        }

        v18 = &v40[v16 >> 30];
        v19 = (v18 + 4);
        v20 = v18 + 8;
        if (v18 + 8 <= &v41)
        {
          v20 = &v41;
        }

        v21 = v20 - v18 - 5;
        if (v21 >= 0x1C)
        {
          v27 = (v21 >> 2) + 1;
          result = 4 * (v27 & 0x7FFFFFFFFFFFFFF8);
          v22 = &std::__itoa::__pow10_32 + result + 4;
          v28 = *&v40[4 * v15];
          v29 = 0uLL;
          v30 = &v40[(v16 >> 30) + 20];
          v31 = &unk_182B0B830;
          v32 = v27 & 0x7FFFFFFFFFFFFFF8;
          do
          {
            v28 = vmlaq_s32(v28, v31[-1], v30[-1]);
            v29 = vmlaq_s32(v29, *v31, *v30);
            v30 += 2;
            v31 += 2;
            v32 -= 8;
          }

          while (v32);
          v17 = vaddvq_s32(vaddq_s32(v29, v28));
          if (v27 == (v27 & 0x7FFFFFFFFFFFFFF8))
          {
            goto LABEL_47;
          }

          v19 = (v19 + result);
        }

        else
        {
          v22 = "\n";
        }

        do
        {
          v34 = *v19++;
          v33 = v34;
          v35 = *v22;
          v22 += 4;
          result = v35;
          v17 += v35 * v33;
        }

        while (v19 < &v41);
LABEL_47:
        v36 = v41 * *(&std::__itoa::__pow10_32 + ((0x900000000 - v16) >> 30));
        v37 = &v11[-((v36 & 0xFFFFFFFF00000000) != 0)];
        if (v37 == v7)
        {
          if (__CFADD__(v17, v36))
          {
            return result;
          }
        }

        else
        {
          v38 = *v37 - 48;
          v39 = __CFADD__(v17, v36);
          if (v38 < 0xA || v39)
          {
            return result;
          }
        }

        v23 = v36 + v17;
        if ((v8 & 1) == 0)
        {
          if ((v23 & 0x80000000) != 0)
          {
            return result;
          }

          goto LABEL_40;
        }

        if (v23 > 0x80000000)
        {
          return result;
        }

        goto LABEL_39;
      }

      if (v11 == v9)
      {
        return result;
      }
    }

    v23 = 0;
    if ((v8 & 1) == 0)
    {
LABEL_40:
      std::ostream::put();
      std::ostream::write();
      std::ostream::put();
      std::ostream::put();
      v24 = *(v1 + 8);
      v25 = strerror(v23);
      v26 = strlen(v25);
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v24, v25, v26);
      return std::ostream::put();
    }

LABEL_39:
    v23 = -v23;
    goto LABEL_40;
  }

  return std::ostream::write();
}

void *nw_printf_write_sockaddr(void *result, uint64_t a2, sockaddr *a3)
{
  v59 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    v7 = "<NULL>";
    v8 = 6;
    goto LABEL_10;
  }

  if ((*(a2 + 24) & 1) == 0)
  {
    v7 = "<fail decode - size not specified>";
    v8 = 34;
    goto LABEL_10;
  }

  v3 = *(a2 + 16);
  if (v3 <= 1)
  {
    v4 = result;
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(result, "<fail decode - size> ", 21);
    if (*(a2 + 24))
    {
      v6 = MEMORY[0x1865DC430](v4, *(a2 + 16));
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v6, " < ", 3);

      JUMPOUT(0x1865DC430);
    }

LABEL_56:
    std::__throw_bad_optional_access[abi:nn200100]();
    return nw_printf_write_data(v54, v55, v56);
  }

  sa_len = a3->sa_len;
  if (v3 < sa_len)
  {
    v11 = a3;
    v12 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(result, "<fail decode - size> ", 21);
    __s[0] = v11->sa_len;
    v13 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v12, __s, 1);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v13, " > ", 3);
    if (*(a2 + 24))
    {
      return MEMORY[0x1865DC430](v13, *(a2 + 16));
    }

    goto LABEL_56;
  }

  sa_family = a3->sa_family;
  v15 = a3;
  if (sa_family <= 0x11)
  {
    if (sa_family != 1)
    {
      if (sa_family == 2)
      {
        if (sa_len <= 0xF)
        {
          v16 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(result, "<fail decode - size> ", 21);
          __s[0] = v15->sa_len;
          v17 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v16, __s, 1);
          v18 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v17, " < ", 3);
          return MEMORY[0x1865DC430](v18, 16);
        }

        v40 = result;
        v41 = a3;
        v42 = 16;
        goto LABEL_34;
      }

      goto LABEL_25;
    }

    v22 = result;
    v23 = a3;
    v24 = strnlen(a3->sa_data, sa_len - 2);
    v25 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v22, "AF_UNIX:", 9);
    result = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v25, v23->sa_data, v24);
    v26 = 34;
    goto LABEL_31;
  }

  if (sa_family != 18)
  {
    if (sa_family == 30)
    {
      if (sa_len <= 0x1B)
      {
        v19 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(result, "<fail decode - size> ", 21);
        __s[0] = v15->sa_len;
        v20 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v19, __s, 1);
        v21 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v20, " < ", 3);
        return MEMORY[0x1865DC430](v21, 28);
      }

      v40 = result;
      v41 = a3;
      v42 = 70;
LABEL_34:
      v43 = getnameinfo(v41, sa_len, __s, v42, v57, 6u, 10);
      if (v43)
      {
        v44 = v43;
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v40, "<failed conversion> ", 20);
        v45 = gai_strerror(v44);
        v39 = strlen(v45);
        result = v40;
        v38 = v45;
      }

      else
      {
        v52 = *v15->sa_data;
        v53 = strlen(__s);
        result = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v40, __s, v53);
        if (!v52)
        {
          return result;
        }

        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v40, ":", 1);
        v39 = strlen(v57);
        v38 = v57;
        result = v40;
      }

      return std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(result, v38, v39);
    }

LABEL_25:
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(result, "<fail decode - address family> ", 31);

    JUMPOUT(0x1865DC410);
  }

  v27 = a3->sa_data[3];
  v28 = a3->sa_data[4];
  if (v27 + v28 + a3->sa_data[5] + 8 > sa_len)
  {
    v29 = a3;
    v30 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(result, "<fail decode - size> ", 21);
    __s[0] = v29->sa_len;
    v31 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v30, __s, 1);
    v32 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v31, " < ", 3);
    v33 = MEMORY[0x1865DC430](v32, 8);
    v34 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v33, " + ", 3);
    __s[0] = v29->sa_data[3];
    v35 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v34, __s, 1);
    v36 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v35, " + ", 3);
    __s[0] = v29->sa_data[4];
    v37 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v36, __s, 1);
    result = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v37, " + ", 3);
    v26 = v29->sa_data[5];
LABEL_31:
    __s[0] = v26;
    v38 = __s;
    v39 = 1;
    return std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(result, v38, v39);
  }

  if (!(v28 | v27))
  {
    if (*a3->sa_data)
    {
      goto LABEL_46;
    }

    v7 = "<fail decode - no information>";
    v8 = 30;
LABEL_10:

    return std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(result, v7, v8);
  }

  if (a3->sa_data[4])
  {
    *(result + *(*result - 24) + 8) = *(result + *(*result - 24) + 8) & 0xFFFFFFB5 | 8;
    __s[0] = a3->sa_data[v27 + 6];
    v46 = result;
    result = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(result, __s, 1);
    v47 = v15;
    if (v15->sa_data[4] >= 2u)
    {
      v48 = &v15->sa_data[v27 + 7];
      v49 = 1;
      do
      {
        v50 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v46, ":", 1);
        v51 = *v48++;
        __s[0] = v51;
        result = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v50, __s, 1);
        v47 = v15;
        ++v49;
      }

      while (v49 < v15->sa_data[4]);
    }

    *(v46 + *(*v46 - 24) + 8) = *(v46 + *(*v46 - 24) + 8) & 0xFFFFFFB5 | 2;
    if (v47->sa_data[3])
    {
      result = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v46, "%", 1);
      a3 = v15;
      v27 = v15->sa_data[3];
LABEL_47:
      v38 = &a3->sa_data[6];
      v39 = v27;
      return std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(result, v38, v39);
    }

    if (*v47->sa_data)
    {
      result = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v46, "%", 1);
      return MEMORY[0x1865DC440](result);
    }

    return result;
  }

LABEL_46:
  if (a3->sa_data[3])
  {
    goto LABEL_47;
  }

  if (*a3->sa_data)
  {
    return MEMORY[0x1865DC440](result);
  }

  return result;
}

void *nw_printf_write_data(void *a1, uint64_t a2, uint64_t a3)
{
  v30 = *MEMORY[0x1E69E9840];
  if (a3 && (*(a2 + 24) & 1) != 0 && (v4 = *(a2 + 16)) != 0)
  {
    v5 = 0;
    *v24 = 0;
    v25 = 0;
    v26 = 0;
    *&v6 = 0x2020202020202020;
    *(&v6 + 1) = 0x2020202020202020;
    *__s = v6;
    *v28 = v6;
    *&v28[15] = v6;
    v29 = 0;
    do
    {
      if (v5)
      {
        std::ios_base::getloc((a1 + *(*a1 - 24)));
        v7 = std::locale::use_facet(&v23, MEMORY[0x1E69E5318]);
        (v7->__vftable[2].~facet_0)(v7, 10);
        std::locale::~locale(&v23);
        std::ostream::put();
        std::ostream::flush();
      }

      if (v4 - v5 >= 0x10)
      {
        v8 = 16;
      }

      else
      {
        v8 = v4 - v5;
      }

      if (v4 != v5)
      {
        v13 = &__s[1];
        v14 = (a3 + v5);
        v15 = v8 - 1;
        if (v8 <= 1)
        {
          v16 = 1;
        }

        else
        {
          v16 = v8;
        }

        v17 = v24;
        do
        {
          v19 = *v14++;
          v18 = v19;
          if (v19 - 32 >= 0x5F)
          {
            v20 = 46;
          }

          else
          {
            v20 = v18;
          }

          v21 = nw_printf_write_data::hex_chars[v18 >> 4];
          *v17 = v20;
          *(v13 - 1) = v21;
          *v13 = nw_printf_write_data::hex_chars[v18 & 0xF];
          if (!v15)
          {
            v24[v8] = 0;
          }

          --v15;
          v13 += 3;
          ++v17;
          --v16;
        }

        while (v16);
      }

      if (v4 - v5 < 0x10)
      {
        memset(&__s[3 * v8], 32, 3 * (16 - v8) - 1);
      }

      *(a1 + *(*a1 - 24) + 24) = 4;
      v9 = MEMORY[0x1865DC430](a1, v5);
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v9, "   ", 3);
      v10 = strlen(__s);
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v9, __s, v10);
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v9, "   ", 3);
      v11 = strlen(v24);
      result = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v9, v24, v11);
      v5 += v8;
    }

    while (v5 < v4);
  }

  else
  {

    return std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a1, "<NULL>", 6);
  }

  return result;
}

void nw_printf_write_foundation(void *a1, uint64_t a2, void *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 description];
    v7 = v6;
    if (v6)
    {
      v8 = [v6 lengthOfBytesUsingEncoding:4];
      memset(v23, 0, sizeof(v23));
      if (v8)
      {
        v9 = 0;
        do
        {
          if (v8 >= 0x200)
          {
            v10 = 512;
          }

          else
          {
            v10 = v8;
          }

          v14 = 0;
          [v7 getBytes:v23 maxLength:512 usedLength:&v14 encoding:4 options:0 range:v9 remainingRange:{v10, 0}];
          std::ostream::write();
          v11 = v8 >= v14;
          v8 -= v14;
          if (!v11)
          {
            if (gLogDatapath == 1)
            {
              loga = __nwlog_obj();
              if (os_log_type_enabled(loga, OS_LOG_TYPE_DEBUG))
              {
                *buf = 136446978;
                v16 = "nw_printf_write_foundation";
                v17 = 2082;
                v18 = "bytes_to_write";
                v19 = 2048;
                v20 = v14;
                v21 = 2048;
                v22 = v8;
                _os_log_impl(&dword_181A37000, loga, OS_LOG_TYPE_DEBUG, "%{public}s Underflow: %{public}s, decrement %llu, result %llu", buf, 0x2Au);
              }

              v8 = 0;
              v11 = __CFADD__(v9, v14);
              v9 += v14;
              if (!v11)
              {
                continue;
              }

LABEL_20:
              if (gLogDatapath == 1)
              {
                log = __nwlog_obj();
                if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 136446978;
                  v16 = "nw_printf_write_foundation";
                  v17 = 2082;
                  v18 = "range.location";
                  v19 = 2048;
                  v20 = v14;
                  v21 = 2048;
                  v22 = v9;
                  _os_log_impl(&dword_181A37000, log, OS_LOG_TYPE_DEBUG, "%{public}s Overflow: %{public}s, increment %llu, result %llu", buf, 0x2Au);
                }
              }

              v9 = 0xFFFFFFFFLL;
              continue;
            }

            v8 = 0;
          }

          v11 = __CFADD__(v9, v14);
          v9 += v14;
          if (v11)
          {
            goto LABEL_20;
          }
        }

        while (v8);
      }
    }

    else
    {
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a1, "(null)", 6);
    }
  }

  else
  {
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a1, "(null)", 6);
  }
}

uint64_t nw_printf_write_uuid(uint64_t a1, uint64_t a2, uint64_t a3)
{
  for (i = 0; i != 16; ++i)
  {
    std::ostream::put();
    result = std::ostream::put();
    if ((i & 0xB) == 3 || i == 9 || i == 5)
    {
      result = std::ostream::put();
    }
  }

  return result;
}

void nw_printf_internal_error(uint64_t a1, uint64_t a2)
{
  v24 = *MEMORY[0x1E69E9840];
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v4 = gLogObj;
  *buf = 136446722;
  v17 = "nw_printf_internal_error";
  v18 = 2080;
  v19 = a1;
  v20 = 2080;
  v21 = a2;
  v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v4, 16, "%{public}s %s %s", buf, 32);

  type = OS_LOG_TYPE_ERROR;
  v14 = 0;
  if (!__nwlog_fault(v5, &type, &v14))
  {
    goto LABEL_10;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v6 = gLogObj;
    v7 = type;
    if (!os_log_type_enabled(v6, type))
    {
      goto LABEL_17;
    }

    *buf = 136446722;
    v17 = "nw_printf_internal_error";
    v18 = 2080;
    v19 = a1;
    v20 = 2080;
    v21 = a2;
    v8 = "%{public}s %s %s";
LABEL_15:
    v12 = v6;
    v13 = v7;
LABEL_16:
    _os_log_impl(&dword_181A37000, v12, v13, v8, buf, 0x20u);
    goto LABEL_17;
  }

  if (v14 != 1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v6 = gLogObj;
    v7 = type;
    if (!os_log_type_enabled(v6, type))
    {
      goto LABEL_17;
    }

    *buf = 136446722;
    v17 = "nw_printf_internal_error";
    v18 = 2080;
    v19 = a1;
    v20 = 2080;
    v21 = a2;
    v8 = "%{public}s %s %s, backtrace limit exceeded";
    goto LABEL_15;
  }

  backtrace_string = __nw_create_backtrace_string();
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v6 = gLogObj;
  v10 = type;
  v11 = os_log_type_enabled(v6, type);
  if (backtrace_string)
  {
    if (v11)
    {
      *buf = 136446978;
      v17 = "nw_printf_internal_error";
      v18 = 2080;
      v19 = a1;
      v20 = 2080;
      v21 = a2;
      v22 = 2082;
      v23 = backtrace_string;
      _os_log_impl(&dword_181A37000, v6, v10, "%{public}s %s %s, dumping backtrace:%{public}s", buf, 0x2Au);
    }

    free(backtrace_string);
LABEL_10:
    if (!v5)
    {
      return;
    }

    goto LABEL_11;
  }

  if (v11)
  {
    *buf = 136446722;
    v17 = "nw_printf_internal_error";
    v18 = 2080;
    v19 = a1;
    v20 = 2080;
    v21 = a2;
    v8 = "%{public}s %s %s, no backtrace";
    v12 = v6;
    v13 = v10;
    goto LABEL_16;
  }

LABEL_17:

  if (v5)
  {
LABEL_11:
    free(v5);
  }
}

const char *tcp_connection_event_to_string(int a1)
{
  if (a1 <= 0x40000000)
  {
    if (a1 > 4)
    {
      if (a1 <= 6)
      {
        if (a1 == 5)
        {
          return "TCP_CONNECTION_EVENT_BETTER_ROUTE";
        }

        else
        {
          return "TCP_CONNECTION_EVENT_VIABILITY_CHANGED";
        }
      }

      if (a1 == 7)
      {
        return "TCP_CONNECTION_EVENT_WAITING";
      }

      if (a1 == 8)
      {
        return "TCP_CONNECTION_EVENT_TLS_HANDSHAKE_COMPLETE";
      }
    }

    else
    {
      if (a1 > 2)
      {
        if (a1 == 3)
        {
          return "TCP_CONNECTION_EVENT_DISCONNECTED";
        }

        else
        {
          return "TCP_CONNECTION_EVENT_WRITE_CLOSE";
        }
      }

      if (a1 == 1)
      {
        return "TCP_CONNECTION_EVENT_CONNECTED";
      }

      if (a1 == 2)
      {
        return "TCP_CONNECTION_EVENT_READ_CLOSE";
      }
    }

    return "UNKNOWN";
  }

  if (a1 <= 1073741828)
  {
    if (a1 > 1073741826)
    {
      if (a1 == 1073741827)
      {
        return "TCP_CONNECTION_EVENT_DNSSEC";
      }

      else
      {
        return "TCP_CONNECTION_EVENT_ADAPTIVE_READ_TIMEOUT";
      }
    }

    else if (a1 == 1073741825)
    {
      return "TCP_CONNECTION_EVENT_KEEPALIVE";
    }

    else
    {
      return "TCP_CONNECTION_EVENT_CONDITIONS_CHANGED";
    }
  }

  else
  {
    if (a1 > 1073741830)
    {
      switch(a1)
      {
        case 1073741831:
          return "TCP_CONNECTION_EVENT_BETTER_ROUTE_CHANGED";
        case 1073741832:
          return "TCP_CONNECTION_EVENT_CONNECTION_ATTEMPT_TIMEOUT";
        case 1073741833:
          return "TCP_CONNECTION_EVENT_CONNECTION_QUALITY_CHANGED";
      }

      return "UNKNOWN";
    }

    if (a1 == 1073741829)
    {
      return "TCP_CONNECTION_EVENT_ADAPTIVE_WRITE_TIMEOUT";
    }

    else
    {
      return "TCP_CONNECTION_EVENT_LOW_THROUGHPUT";
    }
  }
}

uint64_t *tcp_connection_create_with_endpoint_and_parameters(void *a1, void *a2, void *a3)
{
  v66 = *MEMORY[0x1E69E9840];
  v6 = a1;
  v7 = a2;
  v8 = a3;
  nw_allow_use_of_dispatch_internal(v8);
  if (v6)
  {
    if (v8)
    {
      v9 = [[NWConcrete_tcp_connection alloc] initWithParameters:v7];
      v10 = v9;
      if (v9)
      {
        objc_storeStrong(v9 + 7, a3);
        v10[12] = nw_endpoint_handler_get_next_top_id();
        objc_storeStrong(v10 + 5, a1);
        if (nw_parameters_get_allow_socket_access(v10[6]))
        {
          v11 = 0x80;
        }

        else
        {
          v11 = 0;
        }

        *(v10 + 158) = v11 & 0x80 | *(v10 + 158) & 0x7F;
        v12 = v6;
        v13 = _nw_endpoint_get_type(v12);

        switch(v13)
        {
          case 1:
            *(v10 + 157) = 3;
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v14 = gLogObj;
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
            {
              v32 = v10[12];
              v33 = v12;
              logging_description = _nw_endpoint_get_logging_description(v33);

              *buf = 136446722;
              v57 = "tcp_connection_create_with_endpoint_and_parameters";
              v58 = 2048;
              v59 = v32;
              v60 = 2082;
              v61 = logging_description;
              _os_log_impl(&dword_181A37000, v14, OS_LOG_TYPE_DEBUG, "%{public}s %llu %{public}s", buf, 0x20u);
            }

            break;
          case 3:
            *(v10 + 157) = 1;
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v14 = gLogObj;
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
            {
              v26 = v10[12];
              v27 = v12;
              bonjour_service_name = _nw_endpoint_get_bonjour_service_name();

              v28 = v27;
              bonjour_service_type = _nw_endpoint_get_bonjour_service_type();

              v30 = v28;
              bonjour_service_domain = _nw_endpoint_get_bonjour_service_domain();

              *buf = 136447234;
              v57 = "tcp_connection_create_with_endpoint_and_parameters";
              v58 = 2048;
              v59 = v26;
              v60 = 2082;
              v61 = bonjour_service_name;
              v62 = 2082;
              v63 = bonjour_service_type;
              v64 = 2082;
              v65 = bonjour_service_domain;
              _os_log_impl(&dword_181A37000, v14, OS_LOG_TYPE_DEBUG, "%{public}s %llu %{public}s %{public}s %{public}s", buf, 0x34u);
            }

            break;
          case 2:
            *(v10 + 157) = 2;
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v14 = gLogObj;
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
            {
              v15 = v10[12];
              v16 = v12;
              hostname = _nw_endpoint_get_hostname(v16);

              v18 = v16;
              LODWORD(v16) = _nw_endpoint_get_port(v18);

              *buf = 136446978;
              v57 = "tcp_connection_create_with_endpoint_and_parameters";
              v58 = 2048;
              v59 = v15;
              v60 = 2082;
              v61 = hostname;
              v62 = 1024;
              LODWORD(v63) = v16;
              _os_log_impl(&dword_181A37000, v14, OS_LOG_TYPE_DEBUG, "%{public}s %llu %{public}s %d", buf, 0x26u);
            }

            break;
          default:
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v35 = gLogObj;
            if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
            {
              v36 = v10[12];
              *buf = 136446722;
              v57 = "tcp_connection_create_with_endpoint_and_parameters";
              v58 = 2048;
              v59 = v36;
              v60 = 1024;
              LODWORD(v61) = v13;
              _os_log_impl(&dword_181A37000, v35, OS_LOG_TYPE_DEBUG, "%{public}s %llu Custom endpoint type: %u", buf, 0x1Cu);
            }

            *(v10 + 157) = 0;
            goto LABEL_33;
        }

LABEL_33:
        v37 = v10;
LABEL_42:

        goto LABEL_43;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v19 = gLogObj;
      *buf = 136446210;
      v57 = "tcp_connection_create_with_endpoint_and_parameters";
      v20 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v19, 16, "%{public}s [tcp_connection initWithParameters:] failed", buf, 12);

      type = OS_LOG_TYPE_ERROR;
      v54 = 0;
      if (__nwlog_fault(v20, &type, &v54))
      {
        if (type == OS_LOG_TYPE_FAULT)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v21 = gLogObj;
          v22 = type;
          if (os_log_type_enabled(v21, type))
          {
            *buf = 136446210;
            v57 = "tcp_connection_create_with_endpoint_and_parameters";
            _os_log_impl(&dword_181A37000, v21, v22, "%{public}s [tcp_connection initWithParameters:] failed", buf, 0xCu);
          }
        }

        else if (v54 == 1)
        {
          backtrace_string = __nw_create_backtrace_string();
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v21 = gLogObj;
          v24 = type;
          v25 = os_log_type_enabled(v21, type);
          if (backtrace_string)
          {
            if (v25)
            {
              *buf = 136446466;
              v57 = "tcp_connection_create_with_endpoint_and_parameters";
              v58 = 2082;
              v59 = backtrace_string;
              _os_log_impl(&dword_181A37000, v21, v24, "%{public}s [tcp_connection initWithParameters:] failed, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(backtrace_string);
            if (!v20)
            {
              goto LABEL_42;
            }

            goto LABEL_41;
          }

          if (v25)
          {
            *buf = 136446210;
            v57 = "tcp_connection_create_with_endpoint_and_parameters";
            _os_log_impl(&dword_181A37000, v21, v24, "%{public}s [tcp_connection initWithParameters:] failed, no backtrace", buf, 0xCu);
          }
        }

        else
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v21 = gLogObj;
          v38 = type;
          if (os_log_type_enabled(v21, type))
          {
            *buf = 136446210;
            v57 = "tcp_connection_create_with_endpoint_and_parameters";
            _os_log_impl(&dword_181A37000, v21, v38, "%{public}s [tcp_connection initWithParameters:] failed, backtrace limit exceeded", buf, 0xCu);
          }
        }
      }

      if (!v20)
      {
        goto LABEL_42;
      }

LABEL_41:
      free(v20);
      goto LABEL_42;
    }

    v44 = __nwlog_obj();
    *buf = 136446210;
    v57 = "tcp_connection_create_with_endpoint_and_parameters";
    v41 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v44, 16, "%{public}s called with null queue", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v54 = 0;
    if (__nwlog_fault(v41, &type, &v54))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v42 = __nwlog_obj();
        v45 = type;
        if (os_log_type_enabled(v42, type))
        {
          *buf = 136446210;
          v57 = "tcp_connection_create_with_endpoint_and_parameters";
          _os_log_impl(&dword_181A37000, v42, v45, "%{public}s called with null queue", buf, 0xCu);
        }

LABEL_75:

        goto LABEL_76;
      }

      if (v54 != 1)
      {
        v42 = __nwlog_obj();
        v52 = type;
        if (os_log_type_enabled(v42, type))
        {
          *buf = 136446210;
          v57 = "tcp_connection_create_with_endpoint_and_parameters";
          _os_log_impl(&dword_181A37000, v42, v52, "%{public}s called with null queue, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_75;
      }

      v46 = __nw_create_backtrace_string();
      v42 = __nwlog_obj();
      v49 = type;
      v50 = os_log_type_enabled(v42, type);
      if (!v46)
      {
        if (v50)
        {
          *buf = 136446210;
          v57 = "tcp_connection_create_with_endpoint_and_parameters";
          _os_log_impl(&dword_181A37000, v42, v49, "%{public}s called with null queue, no backtrace", buf, 0xCu);
        }

        goto LABEL_75;
      }

      if (v50)
      {
        *buf = 136446466;
        v57 = "tcp_connection_create_with_endpoint_and_parameters";
        v58 = 2082;
        v59 = v46;
        _os_log_impl(&dword_181A37000, v42, v49, "%{public}s called with null queue, dumping backtrace:%{public}s", buf, 0x16u);
      }

      goto LABEL_63;
    }
  }

  else
  {
    v40 = __nwlog_obj();
    *buf = 136446210;
    v57 = "tcp_connection_create_with_endpoint_and_parameters";
    v41 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v40, 16, "%{public}s called with null endpoint", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v54 = 0;
    if (__nwlog_fault(v41, &type, &v54))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v42 = __nwlog_obj();
        v43 = type;
        if (os_log_type_enabled(v42, type))
        {
          *buf = 136446210;
          v57 = "tcp_connection_create_with_endpoint_and_parameters";
          _os_log_impl(&dword_181A37000, v42, v43, "%{public}s called with null endpoint", buf, 0xCu);
        }

        goto LABEL_75;
      }

      if (v54 != 1)
      {
        v42 = __nwlog_obj();
        v51 = type;
        if (os_log_type_enabled(v42, type))
        {
          *buf = 136446210;
          v57 = "tcp_connection_create_with_endpoint_and_parameters";
          _os_log_impl(&dword_181A37000, v42, v51, "%{public}s called with null endpoint, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_75;
      }

      v46 = __nw_create_backtrace_string();
      v42 = __nwlog_obj();
      v47 = type;
      v48 = os_log_type_enabled(v42, type);
      if (!v46)
      {
        if (v48)
        {
          *buf = 136446210;
          v57 = "tcp_connection_create_with_endpoint_and_parameters";
          _os_log_impl(&dword_181A37000, v42, v47, "%{public}s called with null endpoint, no backtrace", buf, 0xCu);
        }

        goto LABEL_75;
      }

      if (v48)
      {
        *buf = 136446466;
        v57 = "tcp_connection_create_with_endpoint_and_parameters";
        v58 = 2082;
        v59 = v46;
        _os_log_impl(&dword_181A37000, v42, v47, "%{public}s called with null endpoint, dumping backtrace:%{public}s", buf, 0x16u);
      }

LABEL_63:

      free(v46);
    }
  }

LABEL_76:
  if (v41)
  {
    free(v41);
  }

  v10 = 0;
LABEL_43:

  return v10;
}

id tcp_connection_copy_endpoint(void *a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v4 = gLogObj;
    *buf = 136446210;
    v18 = "tcp_connection_copy_endpoint";
    v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v4, 16, "%{public}s called with null connection", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v15 = 0;
    if (__nwlog_fault(v5, &type, &v15))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v6 = gLogObj;
        v7 = type;
        if (!os_log_type_enabled(v6, type))
        {
          goto LABEL_20;
        }

        *buf = 136446210;
        v18 = "tcp_connection_copy_endpoint";
        v8 = "%{public}s called with null connection";
LABEL_18:
        v13 = v6;
        v14 = v7;
        goto LABEL_19;
      }

      if (v15 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v6 = gLogObj;
        v7 = type;
        if (!os_log_type_enabled(v6, type))
        {
          goto LABEL_20;
        }

        *buf = 136446210;
        v18 = "tcp_connection_copy_endpoint";
        v8 = "%{public}s called with null connection, backtrace limit exceeded";
        goto LABEL_18;
      }

      backtrace_string = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v6 = gLogObj;
      v10 = type;
      v11 = os_log_type_enabled(v6, type);
      if (!backtrace_string)
      {
        if (!v11)
        {
LABEL_20:

          if (!v5)
          {
            goto LABEL_14;
          }

          goto LABEL_13;
        }

        *buf = 136446210;
        v18 = "tcp_connection_copy_endpoint";
        v8 = "%{public}s called with null connection, no backtrace";
        v13 = v6;
        v14 = v10;
LABEL_19:
        _os_log_impl(&dword_181A37000, v13, v14, v8, buf, 0xCu);
        goto LABEL_20;
      }

      if (v11)
      {
        *buf = 136446466;
        v18 = "tcp_connection_copy_endpoint";
        v19 = 2082;
        v20 = backtrace_string;
        _os_log_impl(&dword_181A37000, v6, v10, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

    if (!v5)
    {
LABEL_14:
      v3 = 0;
      goto LABEL_15;
    }

LABEL_13:
    free(v5);
    goto LABEL_14;
  }

  os_unfair_lock_lock(v1 + 30);
  v3 = *&v2[10]._os_unfair_lock_opaque;
  os_unfair_lock_unlock(v2 + 30);
LABEL_15:

  return v3;
}

id tcp_connection_copy_parameters(void *a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v4 = gLogObj;
    *buf = 136446210;
    v18 = "tcp_connection_copy_parameters";
    v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v4, 16, "%{public}s called with null connection", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v15 = 0;
    if (__nwlog_fault(v5, &type, &v15))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v6 = gLogObj;
        v7 = type;
        if (!os_log_type_enabled(v6, type))
        {
          goto LABEL_20;
        }

        *buf = 136446210;
        v18 = "tcp_connection_copy_parameters";
        v8 = "%{public}s called with null connection";
LABEL_18:
        v13 = v6;
        v14 = v7;
        goto LABEL_19;
      }

      if (v15 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v6 = gLogObj;
        v7 = type;
        if (!os_log_type_enabled(v6, type))
        {
          goto LABEL_20;
        }

        *buf = 136446210;
        v18 = "tcp_connection_copy_parameters";
        v8 = "%{public}s called with null connection, backtrace limit exceeded";
        goto LABEL_18;
      }

      backtrace_string = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v6 = gLogObj;
      v10 = type;
      v11 = os_log_type_enabled(v6, type);
      if (!backtrace_string)
      {
        if (!v11)
        {
LABEL_20:

          if (!v5)
          {
            goto LABEL_14;
          }

          goto LABEL_13;
        }

        *buf = 136446210;
        v18 = "tcp_connection_copy_parameters";
        v8 = "%{public}s called with null connection, no backtrace";
        v13 = v6;
        v14 = v10;
LABEL_19:
        _os_log_impl(&dword_181A37000, v13, v14, v8, buf, 0xCu);
        goto LABEL_20;
      }

      if (v11)
      {
        *buf = 136446466;
        v18 = "tcp_connection_copy_parameters";
        v19 = 2082;
        v20 = backtrace_string;
        _os_log_impl(&dword_181A37000, v6, v10, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

    if (!v5)
    {
LABEL_14:
      v3 = 0;
      goto LABEL_15;
    }

LABEL_13:
    free(v5);
    goto LABEL_14;
  }

  os_unfair_lock_lock(v1 + 30);
  v3 = *&v2[12]._os_unfair_lock_opaque;
  os_unfair_lock_unlock(v2 + 30);
LABEL_15:

  return v3;
}

uint64_t *tcp_connection_create_with_sockaddr(unsigned __int8 *a1, void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a2;
  nw_allow_use_of_dispatch_internal(v3);
  if (v3)
  {
    if (a1)
    {
      address = _nw_endpoint_create_address(a1);
      v5 = address;
      if (address)
      {
        v6 = tcp_connection_create_with_endpoint_and_parameters(address, 0, v3);
      }

      else
      {
        v6 = 0;
      }

      goto LABEL_7;
    }

    v13 = __nwlog_obj();
    *buf = 136446210;
    v21 = "tcp_connection_create_with_sockaddr";
    v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v13, 16, "%{public}s called with null sa", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v18 = 0;
    if (__nwlog_fault(v9, &type, &v18))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v10 = __nwlog_obj();
        v11 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          v21 = "tcp_connection_create_with_sockaddr";
          v12 = "%{public}s called with null sa";
          goto LABEL_34;
        }

        goto LABEL_35;
      }

      if (v18 != 1)
      {
        v10 = __nwlog_obj();
        v11 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          v21 = "tcp_connection_create_with_sockaddr";
          v12 = "%{public}s called with null sa, backtrace limit exceeded";
          goto LABEL_34;
        }

        goto LABEL_35;
      }

      backtrace_string = __nw_create_backtrace_string();
      v10 = __nwlog_obj();
      v11 = type;
      v17 = os_log_type_enabled(v10, type);
      if (!backtrace_string)
      {
        if (v17)
        {
          *buf = 136446210;
          v21 = "tcp_connection_create_with_sockaddr";
          v12 = "%{public}s called with null sa, no backtrace";
          goto LABEL_34;
        }

        goto LABEL_35;
      }

      if (!v17)
      {
        goto LABEL_25;
      }

      *buf = 136446466;
      v21 = "tcp_connection_create_with_sockaddr";
      v22 = 2082;
      v23 = backtrace_string;
      v16 = "%{public}s called with null sa, dumping backtrace:%{public}s";
LABEL_24:
      _os_log_impl(&dword_181A37000, v10, v11, v16, buf, 0x16u);
LABEL_25:

      free(backtrace_string);
    }
  }

  else
  {
    v8 = __nwlog_obj();
    *buf = 136446210;
    v21 = "tcp_connection_create_with_sockaddr";
    v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v8, 16, "%{public}s called with null queue", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v18 = 0;
    if (__nwlog_fault(v9, &type, &v18))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v10 = __nwlog_obj();
        v11 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          v21 = "tcp_connection_create_with_sockaddr";
          v12 = "%{public}s called with null queue";
LABEL_34:
          _os_log_impl(&dword_181A37000, v10, v11, v12, buf, 0xCu);
        }

LABEL_35:

        goto LABEL_36;
      }

      if (v18 != 1)
      {
        v10 = __nwlog_obj();
        v11 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          v21 = "tcp_connection_create_with_sockaddr";
          v12 = "%{public}s called with null queue, backtrace limit exceeded";
          goto LABEL_34;
        }

        goto LABEL_35;
      }

      backtrace_string = __nw_create_backtrace_string();
      v10 = __nwlog_obj();
      v11 = type;
      v15 = os_log_type_enabled(v10, type);
      if (!backtrace_string)
      {
        if (v15)
        {
          *buf = 136446210;
          v21 = "tcp_connection_create_with_sockaddr";
          v12 = "%{public}s called with null queue, no backtrace";
          goto LABEL_34;
        }

        goto LABEL_35;
      }

      if (!v15)
      {
        goto LABEL_25;
      }

      *buf = 136446466;
      v21 = "tcp_connection_create_with_sockaddr";
      v22 = 2082;
      v23 = backtrace_string;
      v16 = "%{public}s called with null queue, dumping backtrace:%{public}s";
      goto LABEL_24;
    }
  }

LABEL_36:
  if (v9)
  {
    free(v9);
  }

  v6 = 0;
LABEL_7:

  return v6;
}

uint64_t *tcp_connection_create_with_connected_fd(uint64_t a1, void *a2)
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = a2;
  nw_allow_use_of_dispatch_internal(v4);
  if (!v4)
  {
    v20 = __nwlog_obj();
    *buf = 136446210;
    v29 = "tcp_connection_create_with_connected_fd";
    v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v20, 16, "%{public}s called with null queue", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v26 = 0;
    if (!__nwlog_fault(v9, &type, &v26))
    {
      goto LABEL_16;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v21 = __nwlog_obj();
      v22 = type;
      if (os_log_type_enabled(v21, type))
      {
        *buf = 136446210;
        v29 = "tcp_connection_create_with_connected_fd";
        v23 = "%{public}s called with null queue";
LABEL_41:
        _os_log_impl(&dword_181A37000, v21, v22, v23, buf, 0xCu);
      }
    }

    else
    {
      if (v26 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v21 = __nwlog_obj();
        v22 = type;
        v25 = os_log_type_enabled(v21, type);
        if (backtrace_string)
        {
          if (v25)
          {
            *buf = 136446466;
            v29 = "tcp_connection_create_with_connected_fd";
            v30 = 2082;
            v31 = backtrace_string;
            _os_log_impl(&dword_181A37000, v21, v22, "%{public}s called with null queue, dumping backtrace:%{public}s", buf, 0x16u);
          }

          v16 = backtrace_string;
LABEL_15:
          free(v16);
          goto LABEL_16;
        }

        if (!v25)
        {
          goto LABEL_42;
        }

        *buf = 136446210;
        v29 = "tcp_connection_create_with_connected_fd";
        v23 = "%{public}s called with null queue, no backtrace";
        goto LABEL_41;
      }

      v21 = __nwlog_obj();
      v22 = type;
      if (os_log_type_enabled(v21, type))
      {
        *buf = 136446210;
        v29 = "tcp_connection_create_with_connected_fd";
        v23 = "%{public}s called with null queue, backtrace limit exceeded";
        goto LABEL_41;
      }
    }

LABEL_42:

LABEL_16:
    if (!v9)
    {
LABEL_18:
      v6 = 0;
      goto LABEL_19;
    }

LABEL_17:
    free(v9);
    goto LABEL_18;
  }

  if ((a1 & 0x80000000) != 0)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v8 = gLogObj;
    *buf = 136446210;
    v29 = "tcp_connection_create_with_connected_fd";
    v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v8, 16, "%{public}s called with null fd", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v26 = 0;
    if (!__nwlog_fault(v9, &type, &v26))
    {
      goto LABEL_16;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v10 = gLogObj;
      v11 = type;
      if (!os_log_type_enabled(v10, type))
      {
        goto LABEL_24;
      }

      *buf = 136446210;
      v29 = "tcp_connection_create_with_connected_fd";
      v12 = "%{public}s called with null fd";
LABEL_22:
      v18 = v10;
      v19 = v11;
      goto LABEL_23;
    }

    if (v26 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v10 = gLogObj;
      v11 = type;
      if (!os_log_type_enabled(v10, type))
      {
        goto LABEL_24;
      }

      *buf = 136446210;
      v29 = "tcp_connection_create_with_connected_fd";
      v12 = "%{public}s called with null fd, backtrace limit exceeded";
      goto LABEL_22;
    }

    v13 = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v10 = gLogObj;
    v14 = type;
    v15 = os_log_type_enabled(v10, type);
    if (!v13)
    {
      if (!v15)
      {
LABEL_24:

        if (!v9)
        {
          goto LABEL_18;
        }

        goto LABEL_17;
      }

      *buf = 136446210;
      v29 = "tcp_connection_create_with_connected_fd";
      v12 = "%{public}s called with null fd, no backtrace";
      v18 = v10;
      v19 = v14;
LABEL_23:
      _os_log_impl(&dword_181A37000, v18, v19, v12, buf, 0xCu);
      goto LABEL_24;
    }

    if (v15)
    {
      *buf = 136446466;
      v29 = "tcp_connection_create_with_connected_fd";
      v30 = 2082;
      v31 = v13;
      _os_log_impl(&dword_181A37000, v10, v14, "%{public}s called with null fd, dumping backtrace:%{public}s", buf, 0x16u);
    }

    v16 = v13;
    goto LABEL_15;
  }

  v5 = tcp_connection_create_with_connected_fd_inner(a1, 0);
  v6 = v5;
  if (v5)
  {
    objc_storeStrong(v5 + 7, a2);
    nw_connection_set_queue(v6[2], v6[7]);
    *(v6 + 157) = 6;
    v7 = v6;
  }

LABEL_19:
  return v6;
}

uint64_t *tcp_connection_create_with_connected_fd_inner(uint64_t a1, uint64_t a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = [[NWConcrete_tcp_connection alloc] initWithParameters:?];
  v5 = v4;
  if (!v4)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v15 = gLogObj;
    *buf = 136446210;
    v27 = "tcp_connection_create_with_connected_fd_inner";
    v16 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v15, 16, "%{public}s [tcp_connection initWithParameters:] failed", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v24 = 0;
    if (__nwlog_fault(v16, &type, &v24))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v17 = gLogObj;
        v18 = type;
        if (os_log_type_enabled(v17, type))
        {
          *buf = 136446210;
          v27 = "tcp_connection_create_with_connected_fd_inner";
          _os_log_impl(&dword_181A37000, v17, v18, "%{public}s [tcp_connection initWithParameters:] failed", buf, 0xCu);
        }
      }

      else if (v24 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v17 = gLogObj;
        v21 = type;
        v22 = os_log_type_enabled(v17, type);
        if (backtrace_string)
        {
          if (v22)
          {
            *buf = 136446466;
            v27 = "tcp_connection_create_with_connected_fd_inner";
            v28 = 2082;
            v29 = backtrace_string;
            _os_log_impl(&dword_181A37000, v17, v21, "%{public}s [tcp_connection initWithParameters:] failed, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          if (!v16)
          {
            goto LABEL_11;
          }

          goto LABEL_10;
        }

        if (v22)
        {
          *buf = 136446210;
          v27 = "tcp_connection_create_with_connected_fd_inner";
          _os_log_impl(&dword_181A37000, v17, v21, "%{public}s [tcp_connection initWithParameters:] failed, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v17 = gLogObj;
        v23 = type;
        if (os_log_type_enabled(v17, type))
        {
          *buf = 136446210;
          v27 = "tcp_connection_create_with_connected_fd_inner";
          _os_log_impl(&dword_181A37000, v17, v23, "%{public}s [tcp_connection initWithParameters:] failed, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

    if (!v16)
    {
LABEL_11:
      v14 = 0;
      goto LABEL_14;
    }

LABEL_10:
    free(v16);
    goto LABEL_11;
  }

  *(v4 + 157) = 4;
  v6 = _nw_parameters_create();
  nw_parameters_set_data_mode(v6, 2);
  nw_parameters_set_server_mode(v6, a2);
  nw_parameters_set_allow_socket_access(v6, 1);
  v7 = nw_connection_create_with_connected_socket_and_parameters(a1, v6);
  v8 = v5[2];
  v5[2] = v7;

  v9 = v5[2];
  if (v9)
  {
    v10 = v9;
    v11 = v10[112];

    v5[12] = v11;
    v12 = nw_connection_copy_endpoint(v5[2]);
    v13 = v5[5];
    v5[5] = v12;

    v14 = v5;
  }

  else
  {
    v14 = 0;
  }

LABEL_14:
  return v14;
}

void tcp_connection_set_cellular_service(void *a1, char *a2)
{
  v36 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (v3)
  {
    v5 = nw_parameters_copy_required_netagent_domains(v3[6]);
    v6 = nw_parameters_copy_required_netagent_types(v4[6]);
    v7 = v6;
    if (!a2)
    {
      if (v5)
      {
        v13 = v6 == 0;
      }

      else
      {
        v13 = 1;
      }

      if (!v13 && xpc_array_get_count(v5))
      {
        v14 = xpc_array_create(0, 0);
        v15 = xpc_array_create(0, 0);
        applier[0] = MEMORY[0x1E69E9820];
        applier[1] = 3221225472;
        applier[2] = __tcp_connection_set_cellular_service_block_invoke;
        applier[3] = &unk_1E6A31300;
        v16 = v14;
        v27 = v16;
        v28 = v7;
        v17 = v15;
        v29 = v17;
        xpc_array_apply(v5, applier);
        v18 = v16;

        v7 = v17;
        v5 = v18;
      }

      goto LABEL_37;
    }

    if (v5)
    {
      if (v6)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v5 = xpc_array_create(0, 0);
      if (v7)
      {
LABEL_5:
        if (!v5)
        {
          goto LABEL_37;
        }

        goto LABEL_26;
      }
    }

    v7 = xpc_array_create(0, 0);
    if (!v5)
    {
LABEL_37:
      nw_parameters_set_required_netagent_classes(v4[6], v5, v7);

      goto LABEL_38;
    }

LABEL_26:
    if (v7)
    {
      xpc_array_set_string(v5, 0xFFFFFFFFFFFFFFFFLL, "Cellular");
      if (strstr(a2, "kCTDataConnectionServiceType"))
      {
        v22 = a2 + 28;
        v23 = v7;
      }

      else
      {
        v23 = v7;
        v22 = a2;
      }

      xpc_array_set_string(v23, 0xFFFFFFFFFFFFFFFFLL, v22);
    }

    goto LABEL_37;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v8 = gLogObj;
  *buf = 136446210;
  v33 = "tcp_connection_set_cellular_service";
  v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v8, 16, "%{public}s called with null connection", buf, 12);

  v31 = OS_LOG_TYPE_ERROR;
  v30 = 0;
  if (!__nwlog_fault(v9, &v31, &v30))
  {
    goto LABEL_22;
  }

  if (v31 == OS_LOG_TYPE_FAULT)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v10 = gLogObj;
    v11 = v31;
    if (!os_log_type_enabled(v10, v31))
    {
      goto LABEL_33;
    }

    *buf = 136446210;
    v33 = "tcp_connection_set_cellular_service";
    v12 = "%{public}s called with null connection";
LABEL_31:
    v24 = v10;
    v25 = v11;
LABEL_32:
    _os_log_impl(&dword_181A37000, v24, v25, v12, buf, 0xCu);
    goto LABEL_33;
  }

  if (v30 != 1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v10 = gLogObj;
    v11 = v31;
    if (!os_log_type_enabled(v10, v31))
    {
      goto LABEL_33;
    }

    *buf = 136446210;
    v33 = "tcp_connection_set_cellular_service";
    v12 = "%{public}s called with null connection, backtrace limit exceeded";
    goto LABEL_31;
  }

  backtrace_string = __nw_create_backtrace_string();
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v10 = gLogObj;
  v20 = v31;
  v21 = os_log_type_enabled(v10, v31);
  if (backtrace_string)
  {
    if (v21)
    {
      *buf = 136446466;
      v33 = "tcp_connection_set_cellular_service";
      v34 = 2082;
      v35 = backtrace_string;
      _os_log_impl(&dword_181A37000, v10, v20, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(backtrace_string);
LABEL_22:
    if (!v9)
    {
      goto LABEL_38;
    }

    goto LABEL_34;
  }

  if (v21)
  {
    *buf = 136446210;
    v33 = "tcp_connection_set_cellular_service";
    v12 = "%{public}s called with null connection, no backtrace";
    v24 = v10;
    v25 = v20;
    goto LABEL_32;
  }

LABEL_33:

  if (v9)
  {
LABEL_34:
    free(v9);
  }

LABEL_38:
}

uint64_t __tcp_connection_set_cellular_service_block_invoke(xpc_object_t *a1, size_t a2, void *a3)
{
  v5 = a3;
  if (object_getClass(v5) == MEMORY[0x1E69E9F10])
  {
    string_ptr = xpc_string_get_string_ptr(v5);
    if (strncmp(string_ptr, "Cellular", 0x20uLL))
    {
      xpc_array_append_value(a1[4], v5);
      v7 = xpc_array_get_value(a1[5], a2);
      if (v7)
      {
        xpc_array_append_value(a1[6], v7);
      }
    }
  }

  return 1;
}

void tcp_connection_set_no_cellular(void *a1, int a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (!v3)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v7 = gLogObj;
    *buf = 136446210;
    v24 = "tcp_connection_set_no_cellular";
    v8 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v7, 16, "%{public}s called with null connection", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v21 = 0;
    if (__nwlog_fault(v8, &type, &v21))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v9 = gLogObj;
        v10 = type;
        if (!os_log_type_enabled(v9, type))
        {
          goto LABEL_26;
        }

        *buf = 136446210;
        v24 = "tcp_connection_set_no_cellular";
        v11 = "%{public}s called with null connection";
LABEL_24:
        v17 = v9;
        v18 = v10;
        goto LABEL_25;
      }

      if (v21 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v9 = gLogObj;
        v10 = type;
        if (!os_log_type_enabled(v9, type))
        {
          goto LABEL_26;
        }

        *buf = 136446210;
        v24 = "tcp_connection_set_no_cellular";
        v11 = "%{public}s called with null connection, backtrace limit exceeded";
        goto LABEL_24;
      }

      backtrace_string = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v9 = gLogObj;
      v13 = type;
      v14 = os_log_type_enabled(v9, type);
      if (!backtrace_string)
      {
        if (!v14)
        {
LABEL_26:

          if (!v8)
          {
            goto LABEL_28;
          }

LABEL_27:
          free(v8);
          goto LABEL_28;
        }

        *buf = 136446210;
        v24 = "tcp_connection_set_no_cellular";
        v11 = "%{public}s called with null connection, no backtrace";
        v17 = v9;
        v18 = v13;
LABEL_25:
        _os_log_impl(&dword_181A37000, v17, v18, v11, buf, 0xCu);
        goto LABEL_26;
      }

      if (v14)
      {
        *buf = 136446466;
        v24 = "tcp_connection_set_no_cellular";
        v25 = 2082;
        v26 = backtrace_string;
        _os_log_impl(&dword_181A37000, v9, v13, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

    if (!v8)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  if (nw_parameters_get_prohibit_cellular(v3[6]) != a2)
  {
    v5 = nw_parameters_copy_prohibited_interface_types(v4[6]);
    v6 = v5;
    if (!a2)
    {
      if (v5)
      {
        v15 = xpc_array_create(0, 0);
        if (v15)
        {
          applier[0] = MEMORY[0x1E69E9820];
          applier[1] = 3221225472;
          applier[2] = __tcp_connection_set_no_cellular_block_invoke;
          applier[3] = &unk_1E6A3D300;
          v20 = v15;
          v16 = v15;
          xpc_array_apply(v6, applier);

          nw_parameters_set_prohibited_interface_types(v4[6], v16);
        }
      }

      goto LABEL_21;
    }

    if (v5 || (v6 = xpc_array_create(0, 0)) != 0)
    {
      xpc_array_set_uint64(v6, 0xFFFFFFFFFFFFFFFFLL, 2uLL);
      nw_parameters_set_prohibited_interface_types(v4[6], v6);
LABEL_21:
    }
  }

LABEL_28:
}

uint64_t __tcp_connection_set_no_cellular_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (object_getClass(v4) == MEMORY[0x1E69E9F18] && xpc_uint64_get_value(v4) != 2)
  {
    xpc_array_append_value(*(a1 + 32), v4);
  }

  return 1;
}

void tcp_connection_set_no_expensive(uint64_t a1, BOOL a2)
{
  v19 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v3 = gLogObj;
    *buf = 136446210;
    v16 = "tcp_connection_set_no_expensive";
    v4 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v3, 16, "%{public}s called with null connection", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v13 = 0;
    if (__nwlog_fault(v4, &type, &v13))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v5 = gLogObj;
        v6 = type;
        if (!os_log_type_enabled(v5, type))
        {
          goto LABEL_21;
        }

        *buf = 136446210;
        v16 = "tcp_connection_set_no_expensive";
        v7 = "%{public}s called with null connection";
LABEL_19:
        v11 = v5;
        v12 = v6;
        goto LABEL_20;
      }

      if (v13 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v5 = gLogObj;
        v6 = type;
        if (!os_log_type_enabled(v5, type))
        {
          goto LABEL_21;
        }

        *buf = 136446210;
        v16 = "tcp_connection_set_no_expensive";
        v7 = "%{public}s called with null connection, backtrace limit exceeded";
        goto LABEL_19;
      }

      backtrace_string = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v5 = gLogObj;
      v9 = type;
      v10 = os_log_type_enabled(v5, type);
      if (!backtrace_string)
      {
        if (!v10)
        {
LABEL_21:

          if (!v4)
          {
            return;
          }

LABEL_15:
          free(v4);
          return;
        }

        *buf = 136446210;
        v16 = "tcp_connection_set_no_expensive";
        v7 = "%{public}s called with null connection, no backtrace";
        v11 = v5;
        v12 = v9;
LABEL_20:
        _os_log_impl(&dword_181A37000, v11, v12, v7, buf, 0xCu);
        goto LABEL_21;
      }

      if (v10)
      {
        *buf = 136446466;
        v16 = "tcp_connection_set_no_expensive";
        v17 = 2082;
        v18 = backtrace_string;
        _os_log_impl(&dword_181A37000, v5, v9, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

    if (!v4)
    {
      return;
    }

    goto LABEL_15;
  }

  v2 = *(a1 + 48);

  nw_parameters_set_prohibit_expensive(v2, a2);
}

void tcp_connection_set_url(uint64_t a1, _BYTE *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v3 = gLogObj;
    *buf = 136446210;
    v16 = "tcp_connection_set_url";
    v4 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v3, 16, "%{public}s called with null connection", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v13 = 0;
    if (__nwlog_fault(v4, &type, &v13))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v5 = gLogObj;
        v6 = type;
        if (!os_log_type_enabled(v5, type))
        {
          goto LABEL_21;
        }

        *buf = 136446210;
        v16 = "tcp_connection_set_url";
        v7 = "%{public}s called with null connection";
LABEL_19:
        v11 = v5;
        v12 = v6;
        goto LABEL_20;
      }

      if (v13 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v5 = gLogObj;
        v6 = type;
        if (!os_log_type_enabled(v5, type))
        {
          goto LABEL_21;
        }

        *buf = 136446210;
        v16 = "tcp_connection_set_url";
        v7 = "%{public}s called with null connection, backtrace limit exceeded";
        goto LABEL_19;
      }

      backtrace_string = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v5 = gLogObj;
      v9 = type;
      v10 = os_log_type_enabled(v5, type);
      if (!backtrace_string)
      {
        if (!v10)
        {
LABEL_21:

          if (!v4)
          {
            return;
          }

LABEL_15:
          free(v4);
          return;
        }

        *buf = 136446210;
        v16 = "tcp_connection_set_url";
        v7 = "%{public}s called with null connection, no backtrace";
        v11 = v5;
        v12 = v9;
LABEL_20:
        _os_log_impl(&dword_181A37000, v11, v12, v7, buf, 0xCu);
        goto LABEL_21;
      }

      if (v10)
      {
        *buf = 136446466;
        v16 = "tcp_connection_set_url";
        v17 = 2082;
        v18 = backtrace_string;
        _os_log_impl(&dword_181A37000, v5, v9, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

    if (!v4)
    {
      return;
    }

    goto LABEL_15;
  }

  v2 = *(a1 + 48);

  nw_parameters_set_url(v2, a2);
}

void tcp_connection_set_proxies(void *a1, void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!v3)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v8 = gLogObj;
    *buf = 136446210;
    v21 = "tcp_connection_set_proxies";
    v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v8, 16, "%{public}s called with null connection", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v18 = 0;
    if (__nwlog_fault(v9, &type, &v18))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v10 = gLogObj;
        v11 = type;
        if (!os_log_type_enabled(v10, type))
        {
          goto LABEL_23;
        }

        *buf = 136446210;
        v21 = "tcp_connection_set_proxies";
        v12 = "%{public}s called with null connection";
LABEL_21:
        v16 = v10;
        v17 = v11;
        goto LABEL_22;
      }

      if (v18 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v10 = gLogObj;
        v11 = type;
        if (!os_log_type_enabled(v10, type))
        {
          goto LABEL_23;
        }

        *buf = 136446210;
        v21 = "tcp_connection_set_proxies";
        v12 = "%{public}s called with null connection, backtrace limit exceeded";
        goto LABEL_21;
      }

      backtrace_string = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v10 = gLogObj;
      v14 = type;
      v15 = os_log_type_enabled(v10, type);
      if (!backtrace_string)
      {
        if (!v15)
        {
LABEL_23:

          if (!v9)
          {
            goto LABEL_25;
          }

LABEL_24:
          free(v9);
          goto LABEL_25;
        }

        *buf = 136446210;
        v21 = "tcp_connection_set_proxies";
        v12 = "%{public}s called with null connection, no backtrace";
        v16 = v10;
        v17 = v14;
LABEL_22:
        _os_log_impl(&dword_181A37000, v16, v17, v12, buf, 0xCu);
        goto LABEL_23;
      }

      if (v15)
      {
        *buf = 136446466;
        v21 = "tcp_connection_set_proxies";
        v22 = 2082;
        v23 = backtrace_string;
        _os_log_impl(&dword_181A37000, v10, v14, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

    if (!v9)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  if (v4)
  {
    if (object_getClass(v4) == MEMORY[0x1E69E9E80] && !xpc_dictionary_get_count(v5))
    {
      nw_parameters_set_no_proxy(v3[6], 1);
      goto LABEL_25;
    }

    v6 = v3[6];
    v7 = v5;
  }

  else
  {
    nw_parameters_set_no_proxy(v3[6], 0);
    v6 = v3[6];
    v7 = 0;
  }

  nw_parameters_set_proxy_configuration(v6, v7);
LABEL_25:
}

void tcp_connection_set_persistent(void *a1, int a2)
{
  v44 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (v3)
  {
    v5 = nw_parameters_copy_preferred_netagent_domains(v3[6]);
    v6 = nw_parameters_copy_preferred_netagent_types(v4[6]);
    v7 = v6;
    if (!a2)
    {
      if (v5)
      {
        v13 = v6 == 0;
      }

      else
      {
        v13 = 1;
      }

      if (!v13 && xpc_array_get_count(v5))
      {
        v14 = xpc_array_create(0, 0);
        v15 = xpc_array_create(0, 0);
        applier[0] = MEMORY[0x1E69E9820];
        applier[1] = 3221225472;
        applier[2] = __tcp_connection_set_persistent_block_invoke;
        applier[3] = &unk_1E6A31300;
        v35 = v7;
        v16 = v14;
        v36 = v16;
        v17 = v15;
        v37 = v17;
        xpc_array_apply(v5, applier);
        v18 = v16;

        v7 = v17;
        v5 = v18;
      }

      goto LABEL_50;
    }

    if (v5)
    {
      if (v6)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v5 = xpc_array_create(0, 0);
      if (v7)
      {
LABEL_5:
        if (!v5)
        {
          goto LABEL_28;
        }

        goto LABEL_26;
      }
    }

    v7 = xpc_array_create(0, 0);
    if (!v5)
    {
      goto LABEL_28;
    }

LABEL_26:
    if (v7)
    {
      xpc_array_set_string(v5, 0xFFFFFFFFFFFFFFFFLL, "Persistent");
      xpc_array_set_string(v7, 0xFFFFFFFFFFFFFFFFLL, "Persistent");
LABEL_50:
      nw_parameters_set_preferred_netagent_classes(v4[6], v5, v7);

      goto LABEL_51;
    }

LABEL_28:
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v22 = gLogObj;
    *buf = 136446210;
    v41 = "tcp_connection_set_persistent";
    v23 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v22, 16, "%{public}s xpc_array_create failed", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v38 = 0;
    if (!__nwlog_fault(v23, &type, &v38))
    {
      goto LABEL_48;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v24 = gLogObj;
      v25 = type;
      if (os_log_type_enabled(v24, type))
      {
        *buf = 136446210;
        v41 = "tcp_connection_set_persistent";
        v26 = "%{public}s xpc_array_create failed";
LABEL_45:
        v32 = v24;
        v33 = v25;
LABEL_46:
        _os_log_impl(&dword_181A37000, v32, v33, v26, buf, 0xCu);
      }
    }

    else
    {
      if (v38 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v24 = gLogObj;
        v30 = type;
        v31 = os_log_type_enabled(v24, type);
        if (backtrace_string)
        {
          if (v31)
          {
            *buf = 136446466;
            v41 = "tcp_connection_set_persistent";
            v42 = 2082;
            v43 = backtrace_string;
            _os_log_impl(&dword_181A37000, v24, v30, "%{public}s xpc_array_create failed, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_48;
        }

        if (!v31)
        {
          goto LABEL_47;
        }

        *buf = 136446210;
        v41 = "tcp_connection_set_persistent";
        v26 = "%{public}s xpc_array_create failed, no backtrace";
        v32 = v24;
        v33 = v30;
        goto LABEL_46;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v24 = gLogObj;
      v25 = type;
      if (os_log_type_enabled(v24, type))
      {
        *buf = 136446210;
        v41 = "tcp_connection_set_persistent";
        v26 = "%{public}s xpc_array_create failed, backtrace limit exceeded";
        goto LABEL_45;
      }
    }

LABEL_47:

LABEL_48:
    if (v23)
    {
      free(v23);
    }

    goto LABEL_50;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v8 = gLogObj;
  *buf = 136446210;
  v41 = "tcp_connection_set_persistent";
  v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v8, 16, "%{public}s called with null connection", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v38 = 0;
  if (!__nwlog_fault(v9, &type, &v38))
  {
    goto LABEL_22;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v10 = gLogObj;
    v11 = type;
    if (!os_log_type_enabled(v10, type))
    {
      goto LABEL_36;
    }

    *buf = 136446210;
    v41 = "tcp_connection_set_persistent";
    v12 = "%{public}s called with null connection";
LABEL_34:
    v27 = v10;
    v28 = v11;
LABEL_35:
    _os_log_impl(&dword_181A37000, v27, v28, v12, buf, 0xCu);
    goto LABEL_36;
  }

  if (v38 != 1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v10 = gLogObj;
    v11 = type;
    if (!os_log_type_enabled(v10, type))
    {
      goto LABEL_36;
    }

    *buf = 136446210;
    v41 = "tcp_connection_set_persistent";
    v12 = "%{public}s called with null connection, backtrace limit exceeded";
    goto LABEL_34;
  }

  v19 = __nw_create_backtrace_string();
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v10 = gLogObj;
  v20 = type;
  v21 = os_log_type_enabled(v10, type);
  if (v19)
  {
    if (v21)
    {
      *buf = 136446466;
      v41 = "tcp_connection_set_persistent";
      v42 = 2082;
      v43 = v19;
      _os_log_impl(&dword_181A37000, v10, v20, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(v19);
LABEL_22:
    if (!v9)
    {
      goto LABEL_51;
    }

    goto LABEL_37;
  }

  if (v21)
  {
    *buf = 136446210;
    v41 = "tcp_connection_set_persistent";
    v12 = "%{public}s called with null connection, no backtrace";
    v27 = v10;
    v28 = v20;
    goto LABEL_35;
  }

LABEL_36:

  if (v9)
  {
LABEL_37:
    free(v9);
  }

LABEL_51:
}

uint64_t __tcp_connection_set_persistent_block_invoke(xpc_object_t *a1, size_t a2, void *a3)
{
  v5 = a3;
  v6 = xpc_array_get_value(a1[4], a2);
  Class = object_getClass(v5);
  v8 = MEMORY[0x1E69E9F10];
  if (Class == MEMORY[0x1E69E9F10] && object_getClass(v6) == v8)
  {
    string_ptr = xpc_string_get_string_ptr(v5);
    if (strncmp(string_ptr, "Persistent", 0x20uLL) || (v10 = xpc_string_get_string_ptr(v5), strncmp(v10, "Persistent", 0x20uLL)))
    {
      xpc_array_append_value(a1[5], v5);
      xpc_array_append_value(a1[6], v6);
    }
  }

  return 1;
}

void tcp_connection_set_opportunistic(void *a1, int a2)
{
  v19 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v3 = gLogObj;
    *buf = 136446210;
    v16 = "tcp_connection_set_opportunistic";
    v4 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v3, 16, "%{public}s called with null connection", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v13 = 0;
    if (__nwlog_fault(v4, &type, &v13))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v5 = gLogObj;
        v6 = type;
        if (!os_log_type_enabled(v5, type))
        {
          goto LABEL_24;
        }

        *buf = 136446210;
        v16 = "tcp_connection_set_opportunistic";
        v7 = "%{public}s called with null connection";
LABEL_22:
        v11 = v5;
        v12 = v6;
        goto LABEL_23;
      }

      if (v13 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v5 = gLogObj;
        v6 = type;
        if (!os_log_type_enabled(v5, type))
        {
          goto LABEL_24;
        }

        *buf = 136446210;
        v16 = "tcp_connection_set_opportunistic";
        v7 = "%{public}s called with null connection, backtrace limit exceeded";
        goto LABEL_22;
      }

      backtrace_string = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v5 = gLogObj;
      v9 = type;
      v10 = os_log_type_enabled(v5, type);
      if (!backtrace_string)
      {
        if (!v10)
        {
LABEL_24:

          if (!v4)
          {
            return;
          }

LABEL_18:
          free(v4);
          return;
        }

        *buf = 136446210;
        v16 = "tcp_connection_set_opportunistic";
        v7 = "%{public}s called with null connection, no backtrace";
        v11 = v5;
        v12 = v9;
LABEL_23:
        _os_log_impl(&dword_181A37000, v11, v12, v7, buf, 0xCu);
        goto LABEL_24;
      }

      if (v10)
      {
        *buf = 136446466;
        v16 = "tcp_connection_set_opportunistic";
        v17 = 2082;
        v18 = backtrace_string;
        _os_log_impl(&dword_181A37000, v5, v9, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

    if (!v4)
    {
      return;
    }

    goto LABEL_18;
  }

  if (a2)
  {
    v2 = 100;
  }

  else
  {
    v2 = 0;
  }

  tcp_connection_set_traffic_class(a1, v2);
}

void tcp_connection_set_traffic_class(void *a1, uint64_t a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (!v3)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v6 = gLogObj;
    *buf = 136446210;
    v19 = "tcp_connection_set_traffic_class";
    v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v6, 16, "%{public}s called with null connection", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v16 = 0;
    if (__nwlog_fault(v7, &type, &v16))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v8 = gLogObj;
        v9 = type;
        if (!os_log_type_enabled(v8, type))
        {
          goto LABEL_23;
        }

        *buf = 136446210;
        v19 = "tcp_connection_set_traffic_class";
        v10 = "%{public}s called with null connection";
LABEL_21:
        v14 = v8;
        v15 = v9;
        goto LABEL_22;
      }

      if (v16 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v8 = gLogObj;
        v9 = type;
        if (!os_log_type_enabled(v8, type))
        {
          goto LABEL_23;
        }

        *buf = 136446210;
        v19 = "tcp_connection_set_traffic_class";
        v10 = "%{public}s called with null connection, backtrace limit exceeded";
        goto LABEL_21;
      }

      backtrace_string = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v8 = gLogObj;
      v12 = type;
      v13 = os_log_type_enabled(v8, type);
      if (!backtrace_string)
      {
        if (!v13)
        {
LABEL_23:

          if (!v7)
          {
            goto LABEL_25;
          }

LABEL_24:
          free(v7);
          goto LABEL_25;
        }

        *buf = 136446210;
        v19 = "tcp_connection_set_traffic_class";
        v10 = "%{public}s called with null connection, no backtrace";
        v14 = v8;
        v15 = v12;
LABEL_22:
        _os_log_impl(&dword_181A37000, v14, v15, v10, buf, 0xCu);
        goto LABEL_23;
      }

      if (v13)
      {
        *buf = 136446466;
        v19 = "tcp_connection_set_traffic_class";
        v20 = 2082;
        v21 = backtrace_string;
        _os_log_impl(&dword_181A37000, v8, v12, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

    if (!v7)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  os_unfair_lock_lock(v3 + 30);
  if (nw_parameters_get_traffic_class(*&v4[12]._os_unfair_lock_opaque) != a2)
  {
    v5 = *&v4[4]._os_unfair_lock_opaque;
    if (v5)
    {
      nw_connection_reset_traffic_class(v5, a2);
    }

    else if (LOBYTE(v4[39]._os_unfair_lock_opaque) - 1 >= 2)
    {
      nw_parameters_set_traffic_class(*&v4[12]._os_unfair_lock_opaque, a2);
    }
  }

  os_unfair_lock_unlock(v4 + 30);
LABEL_25:
}

void tcp_connection_set_no_fallback(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v2 = gLogObj;
    *buf = 136446210;
    v15 = "tcp_connection_set_no_fallback";
    v3 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v2, 16, "%{public}s called with null connection", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v12 = 0;
    if (__nwlog_fault(v3, &type, &v12))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v4 = gLogObj;
        v5 = type;
        if (!os_log_type_enabled(v4, type))
        {
          goto LABEL_21;
        }

        *buf = 136446210;
        v15 = "tcp_connection_set_no_fallback";
        v6 = "%{public}s called with null connection";
LABEL_19:
        v10 = v4;
        v11 = v5;
        goto LABEL_20;
      }

      if (v12 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v4 = gLogObj;
        v5 = type;
        if (!os_log_type_enabled(v4, type))
        {
          goto LABEL_21;
        }

        *buf = 136446210;
        v15 = "tcp_connection_set_no_fallback";
        v6 = "%{public}s called with null connection, backtrace limit exceeded";
        goto LABEL_19;
      }

      backtrace_string = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v4 = gLogObj;
      v8 = type;
      v9 = os_log_type_enabled(v4, type);
      if (!backtrace_string)
      {
        if (!v9)
        {
LABEL_21:

          if (!v3)
          {
            return;
          }

LABEL_15:
          free(v3);
          return;
        }

        *buf = 136446210;
        v15 = "tcp_connection_set_no_fallback";
        v6 = "%{public}s called with null connection, no backtrace";
        v10 = v4;
        v11 = v8;
LABEL_20:
        _os_log_impl(&dword_181A37000, v10, v11, v6, buf, 0xCu);
        goto LABEL_21;
      }

      if (v9)
      {
        *buf = 136446466;
        v15 = "tcp_connection_set_no_fallback";
        v16 = 2082;
        v17 = backtrace_string;
        _os_log_impl(&dword_181A37000, v4, v8, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

    if (!v3)
    {
      return;
    }

    goto LABEL_15;
  }

  v1 = *(a1 + 48);

  nw_parameters_set_no_fallback(v1);
}

void tcp_connection_set_fallback_fast()
{
  v3 = *MEMORY[0x1E69E9840];
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v0 = gLogObj;
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    v1 = 136446210;
    v2 = "tcp_connection_set_fallback_fast";
    _os_log_impl(&dword_181A37000, v0, OS_LOG_TYPE_ERROR, "%{public}s tcp_connection_set_fallback_fast is deprecated", &v1, 0xCu);
  }
}

void tcp_connection_set_usage_model(void *a1, int a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (!v3)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v7 = gLogObj;
    *buf = 136446210;
    v20 = "tcp_connection_set_usage_model";
    v8 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v7, 16, "%{public}s called with null connection", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v17 = 0;
    if (__nwlog_fault(v8, &type, &v17))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v9 = gLogObj;
        v10 = type;
        if (!os_log_type_enabled(v9, type))
        {
          goto LABEL_25;
        }

        *buf = 136446210;
        v20 = "tcp_connection_set_usage_model";
        v11 = "%{public}s called with null connection";
LABEL_23:
        v15 = v9;
        v16 = v10;
        goto LABEL_24;
      }

      if (v17 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v9 = gLogObj;
        v10 = type;
        if (!os_log_type_enabled(v9, type))
        {
          goto LABEL_25;
        }

        *buf = 136446210;
        v20 = "tcp_connection_set_usage_model";
        v11 = "%{public}s called with null connection, backtrace limit exceeded";
        goto LABEL_23;
      }

      backtrace_string = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v9 = gLogObj;
      v13 = type;
      v14 = os_log_type_enabled(v9, type);
      if (!backtrace_string)
      {
        if (!v14)
        {
LABEL_25:

          if (!v8)
          {
            goto LABEL_20;
          }

          goto LABEL_19;
        }

        *buf = 136446210;
        v20 = "tcp_connection_set_usage_model";
        v11 = "%{public}s called with null connection, no backtrace";
        v15 = v9;
        v16 = v13;
LABEL_24:
        _os_log_impl(&dword_181A37000, v15, v16, v11, buf, 0xCu);
        goto LABEL_25;
      }

      if (v14)
      {
        *buf = 136446466;
        v20 = "tcp_connection_set_usage_model";
        v21 = 2082;
        v22 = backtrace_string;
        _os_log_impl(&dword_181A37000, v9, v13, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

    if (!v8)
    {
      goto LABEL_20;
    }

LABEL_19:
    free(v8);
    goto LABEL_20;
  }

  v3[31] = a2;
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v5 = gLogObj;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = *(v4 + 12);
    *buf = 136446722;
    v20 = "tcp_connection_set_usage_model";
    v21 = 2048;
    v22 = v6;
    v23 = 1024;
    v24 = a2;
    _os_log_impl(&dword_181A37000, v5, OS_LOG_TYPE_DEBUG, "%{public}s %llu setting usage model to %d", buf, 0x1Cu);
  }

  if (v4[31] == 1)
  {
    if (tcp_connection_is_first_party_onceToken != -1)
    {
      dispatch_once(&tcp_connection_is_first_party_onceToken, &__block_literal_global_34688);
    }

    if ((tcp_connection_is_first_party_is_first_party & 1) == 0)
    {
      nw_parameters_set_no_fallback(*(v4 + 6));
    }
  }

LABEL_20:
}

__CFBundle *__tcp_connection_is_first_party_block_invoke()
{
  result = CFBundleGetMainBundle();
  if (!result || (result = CFBundleGetValueForInfoDictionaryKey(result, *MEMORY[0x1E695E4F0])) == 0 || (result = CFStringHasPrefix(result, @"com.apple."), result))
  {
    tcp_connection_is_first_party_is_first_party = 1;
  }

  return result;
}

void tcp_connection_add_event_excessive_keepalives(uint64_t a1, int a2, int a3, int a4)
{
  v21 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v5 = gLogObj;
    *buf = 136446210;
    v18 = "tcp_connection_add_event_excessive_keepalives";
    v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s called with null connection", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v15 = 0;
    if (__nwlog_fault(v6, &type, &v15))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v7 = gLogObj;
        v8 = type;
        if (!os_log_type_enabled(v7, type))
        {
          goto LABEL_24;
        }

        *buf = 136446210;
        v18 = "tcp_connection_add_event_excessive_keepalives";
        v9 = "%{public}s called with null connection";
LABEL_22:
        v13 = v7;
        v14 = v8;
        goto LABEL_23;
      }

      if (v15 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v7 = gLogObj;
        v8 = type;
        if (!os_log_type_enabled(v7, type))
        {
          goto LABEL_24;
        }

        *buf = 136446210;
        v18 = "tcp_connection_add_event_excessive_keepalives";
        v9 = "%{public}s called with null connection, backtrace limit exceeded";
        goto LABEL_22;
      }

      backtrace_string = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v7 = gLogObj;
      v11 = type;
      v12 = os_log_type_enabled(v7, type);
      if (!backtrace_string)
      {
        if (!v12)
        {
LABEL_24:

          if (!v6)
          {
            return;
          }

LABEL_18:
          free(v6);
          return;
        }

        *buf = 136446210;
        v18 = "tcp_connection_add_event_excessive_keepalives";
        v9 = "%{public}s called with null connection, no backtrace";
        v13 = v7;
        v14 = v11;
LABEL_23:
        _os_log_impl(&dword_181A37000, v13, v14, v9, buf, 0xCu);
        goto LABEL_24;
      }

      if (v12)
      {
        *buf = 136446466;
        v18 = "tcp_connection_add_event_excessive_keepalives";
        v19 = 2082;
        v20 = backtrace_string;
        _os_log_impl(&dword_181A37000, v7, v11, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

    if (!v6)
    {
      return;
    }

    goto LABEL_18;
  }

  if (a2)
  {
    v4 = 32;
  }

  else
  {
    v4 = 0;
  }

  *(a1 + 159) = *(a1 + 159) & 0xDF | v4;
  *(a1 + 136) = a4;
  *(a1 + 140) = a3;

  tcp_connection_set_keepalive_handler_on_nw_connection(a1);
}

void tcp_connection_set_keepalive_handler_on_nw_connection(void *a1)
{
  v1 = a1;
  v2 = v1;
  v3 = *(v1 + 2);
  if (v3)
  {
    v5 = *(v1 + 34);
    v4 = *(v1 + 35);
    if ((*(v1 + 159) & 0x20) != 0)
    {
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = __tcp_connection_set_keepalive_handler_on_nw_connection_block_invoke;
      v6[3] = &unk_1E6A3D868;
      v7 = v1;
      nw_connection_set_excessive_keepalive_handler(v3, v4, v5, v6);
    }

    else
    {
      nw_connection_set_excessive_keepalive_handler(*(v1 + 2), *(v1 + 35), *(v1 + 34), 0);
    }
  }
}

void tcp_connection_send_event_unlocked(void *a1, uint64_t a2, const void *a3, size_t a4, uint64_t a5)
{
  v8 = a2;
  v14 = a1;
  v15 = 0;
  v16 = 0;
  os_unfair_lock_lock(v14 + 30);
  if ((tcp_connection_fillout_event_locked(v14, &v15, v8, a3, a4, a5) & 1) == 0)
  {
    os_unfair_lock_unlock(v14 + 30);
    goto LABEL_10;
  }

  v9 = _Block_copy(*(v14 + 8));
  os_unfair_lock_unlock(v14 + 30);
  v10 = v14;
  v11 = v9;
  v12 = v11;
  if (v11 && v10[156] != 255)
  {
    v13 = v15;
    (*(v11 + 2))(v11, v16, v15);
    if (!v13)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v13 = v15;
  if (v15)
  {
LABEL_8:
    free(v13);
  }

LABEL_9:

LABEL_10:
}

uint64_t tcp_connection_fillout_event_locked(void *a1, uint64_t a2, int a3, const void *a4, size_t a5, uint64_t a6)
{
  v42 = *MEMORY[0x1E69E9840];
  v11 = a1;
  v12 = v11;
  if (*(v11 + 156) == 255)
  {
    goto LABEL_76;
  }

  if (a3 == 3)
  {
    *(v11 + 156) = 3;
    *(v11 + 158) |= 0x30u;
  }

  if (!v11[8])
  {
    v14 = 0;
    if (a3 != 7)
    {
      goto LABEL_24;
    }

    goto LABEL_25;
  }

  v13 = v11;
  v14 = 1;
  if (a3 > 2)
  {
    if (a3 == 3)
    {
      if ((v13[158] & 8) == 0)
      {
        v16 = v13[158] | 8;
        goto LABEL_20;
      }
    }

    else
    {
      if (a3 != 4)
      {
        goto LABEL_23;
      }

      if ((v13[158] & 2) == 0)
      {
        v16 = v13[158] | 2;
        goto LABEL_20;
      }
    }

    goto LABEL_21;
  }

  if (a3 == 1)
  {
    if ((v13[158] & 4) == 0)
    {
      v16 = v13[158] | 4;
      goto LABEL_20;
    }

LABEL_21:
    v14 = 0;
    goto LABEL_23;
  }

  if (a3 != 2)
  {
    goto LABEL_23;
  }

  v15 = v13[158];
  if ((v15 & 1) == 0)
  {
    v16 = v15 | 1;
LABEL_20:
    v13[158] = v16;
    goto LABEL_23;
  }

  v14 = v15 ^ 1;
LABEL_23:

  if (a3 != 7)
  {
LABEL_24:
    if (a3 != 1)
    {
      goto LABEL_27;
    }
  }

LABEL_25:
  v17 = v12[10];
  if (v17)
  {
    dispatch_source_cancel(v17);
    v18 = v12[10];
    v12[10] = 0;
  }

LABEL_27:
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v19 = gLogObj;
  if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    goto LABEL_66;
  }

  v20 = v12[12];
  if (a3 <= 0x40000000)
  {
    if (a3 > 4)
    {
      if (a3 <= 6)
      {
        if (a3 == 5)
        {
          v21 = "TCP_CONNECTION_EVENT_BETTER_ROUTE";
        }

        else
        {
          v21 = "TCP_CONNECTION_EVENT_VIABILITY_CHANGED";
        }

        goto LABEL_65;
      }

      if (a3 == 7)
      {
        v21 = "TCP_CONNECTION_EVENT_WAITING";
        goto LABEL_65;
      }

      if (a3 == 8)
      {
        v21 = "TCP_CONNECTION_EVENT_TLS_HANDSHAKE_COMPLETE";
        goto LABEL_65;
      }
    }

    else
    {
      if (a3 > 2)
      {
        if (a3 == 3)
        {
          v21 = "TCP_CONNECTION_EVENT_DISCONNECTED";
        }

        else
        {
          v21 = "TCP_CONNECTION_EVENT_WRITE_CLOSE";
        }

        goto LABEL_65;
      }

      if (a3 == 1)
      {
        v21 = "TCP_CONNECTION_EVENT_CONNECTED";
        goto LABEL_65;
      }

      if (a3 == 2)
      {
        v21 = "TCP_CONNECTION_EVENT_READ_CLOSE";
        goto LABEL_65;
      }
    }

LABEL_64:
    v21 = "UNKNOWN";
    goto LABEL_65;
  }

  if (a3 <= 1073741828)
  {
    if (a3 > 1073741826)
    {
      if (a3 == 1073741827)
      {
        v21 = "TCP_CONNECTION_EVENT_DNSSEC";
      }

      else
      {
        v21 = "TCP_CONNECTION_EVENT_ADAPTIVE_READ_TIMEOUT";
      }
    }

    else if (a3 == 1073741825)
    {
      v21 = "TCP_CONNECTION_EVENT_KEEPALIVE";
    }

    else
    {
      v21 = "TCP_CONNECTION_EVENT_CONDITIONS_CHANGED";
    }

    goto LABEL_65;
  }

  if (a3 <= 1073741830)
  {
    if (a3 == 1073741829)
    {
      v21 = "TCP_CONNECTION_EVENT_ADAPTIVE_WRITE_TIMEOUT";
    }

    else
    {
      v21 = "TCP_CONNECTION_EVENT_LOW_THROUGHPUT";
    }

    goto LABEL_65;
  }

  if (a3 == 1073741831)
  {
    v21 = "TCP_CONNECTION_EVENT_BETTER_ROUTE_CHANGED";
    goto LABEL_65;
  }

  if (a3 == 1073741832)
  {
    v21 = "TCP_CONNECTION_EVENT_CONNECTION_ATTEMPT_TIMEOUT";
    goto LABEL_65;
  }

  if (a3 != 1073741833)
  {
    goto LABEL_64;
  }

  v21 = "TCP_CONNECTION_EVENT_CONNECTION_QUALITY_CHANGED";
LABEL_65:
  *buf = 136447234;
  v33 = "tcp_connection_fillout_event_locked";
  v34 = 2048;
  v35 = v20;
  v36 = 2082;
  v37 = v21;
  v38 = 2082;
  v39 = a6;
  v40 = 1024;
  v41 = v14 & 1;
  _os_log_impl(&dword_181A37000, v19, OS_LOG_TYPE_DEBUG, "%{public}s %llu event: %{public}s, reason: %{public}s, should deliver: %{BOOL}d", buf, 0x30u);
LABEL_66:

  if ((v14 & 1) == 0)
  {
LABEL_76:
    v27 = 0;
LABEL_79:

    return v27;
  }

  if (!a4)
  {
    v22 = 0;
    goto LABEL_78;
  }

  if (!a5)
  {
    v28 = __nwlog_obj();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = 3;
    }

    else
    {
      v29 = 2;
    }

    *buf = 136446210;
    v33 = "tcp_connection_fillout_event_locked";
    v30 = _os_log_send_and_compose_impl(v29, 0, 0, 0, &dword_181A37000, v28, 16, "%{public}s strict_malloc called with size 0", buf, 12);

    result = __nwlog_should_abort(v30);
    if (result)
    {
      goto LABEL_85;
    }

    free(v30);
  }

  v22 = malloc_type_malloc(a5, 0x81E3EAC1uLL);
  if (v22)
  {
LABEL_75:
    memcpy(v22, a4, a5);
LABEL_78:
    *(a2 + 8) = a3;
    *a2 = v22;
    v27 = 1;
    goto LABEL_79;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v23 = gLogObj;
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    v24 = 3;
  }

  else
  {
    v24 = 2;
  }

  *buf = 136446210;
  v33 = "tcp_connection_fillout_event_locked";
  LODWORD(v31) = 12;
  v25 = _os_log_send_and_compose_impl(v24, 0, 0, 0, &dword_181A37000, v23, 16, "%{public}s strict allocator failed", buf, v31);

  result = __nwlog_should_abort(v25);
  if (!result)
  {
    free(v25);
    goto LABEL_75;
  }

LABEL_85:
  __break(1u);
  return result;
}

void tcp_connection_add_event_adaptive_read_timeout(uint64_t a1, int a2, int a3)
{
  v20 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v4 = gLogObj;
    *buf = 136446210;
    v17 = "tcp_connection_add_event_adaptive_read_timeout";
    v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v4, 16, "%{public}s called with null connection", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v14 = 0;
    if (__nwlog_fault(v5, &type, &v14))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v6 = gLogObj;
        v7 = type;
        if (!os_log_type_enabled(v6, type))
        {
          goto LABEL_24;
        }

        *buf = 136446210;
        v17 = "tcp_connection_add_event_adaptive_read_timeout";
        v8 = "%{public}s called with null connection";
LABEL_22:
        v12 = v6;
        v13 = v7;
        goto LABEL_23;
      }

      if (v14 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v6 = gLogObj;
        v7 = type;
        if (!os_log_type_enabled(v6, type))
        {
          goto LABEL_24;
        }

        *buf = 136446210;
        v17 = "tcp_connection_add_event_adaptive_read_timeout";
        v8 = "%{public}s called with null connection, backtrace limit exceeded";
        goto LABEL_22;
      }

      backtrace_string = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v6 = gLogObj;
      v10 = type;
      v11 = os_log_type_enabled(v6, type);
      if (!backtrace_string)
      {
        if (!v11)
        {
LABEL_24:

          if (!v5)
          {
            return;
          }

LABEL_18:
          free(v5);
          return;
        }

        *buf = 136446210;
        v17 = "tcp_connection_add_event_adaptive_read_timeout";
        v8 = "%{public}s called with null connection, no backtrace";
        v12 = v6;
        v13 = v10;
LABEL_23:
        _os_log_impl(&dword_181A37000, v12, v13, v8, buf, 0xCu);
        goto LABEL_24;
      }

      if (v11)
      {
        *buf = 136446466;
        v17 = "tcp_connection_add_event_adaptive_read_timeout";
        v18 = 2082;
        v19 = backtrace_string;
        _os_log_impl(&dword_181A37000, v6, v10, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

    if (!v5)
    {
      return;
    }

    goto LABEL_18;
  }

  if (a2)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *(a1 + 159) = *(a1 + 159) & 0xBF | v3;
  *(a1 + 144) = a3;

  tcp_connection_set_adaptive_read_handler_on_nw_connection(a1);
}

void tcp_connection_set_adaptive_read_handler_on_nw_connection(void *a1)
{
  v1 = a1;
  v2 = v1;
  v3 = *(v1 + 2);
  if (v3)
  {
    v4 = *(v1 + 36);
    if ((*(v1 + 159) & 0x40) != 0)
    {
      v5[0] = MEMORY[0x1E69E9820];
      v5[1] = 3221225472;
      v5[2] = __tcp_connection_set_adaptive_read_handler_on_nw_connection_block_invoke;
      v5[3] = &unk_1E6A3D868;
      v6 = v1;
      nw_connection_set_adaptive_read_handler(v3, v4, v5);
    }

    else
    {
      nw_connection_set_adaptive_read_handler(*(v1 + 2), *(v1 + 36), 0);
    }
  }
}

void tcp_connection_add_event_adaptive_write_timeout(uint64_t a1, int a2, int a3)
{
  v20 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v4 = gLogObj;
    *buf = 136446210;
    v17 = "tcp_connection_add_event_adaptive_write_timeout";
    v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v4, 16, "%{public}s called with null connection", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v14 = 0;
    if (__nwlog_fault(v5, &type, &v14))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v6 = gLogObj;
        v7 = type;
        if (!os_log_type_enabled(v6, type))
        {
          goto LABEL_24;
        }

        *buf = 136446210;
        v17 = "tcp_connection_add_event_adaptive_write_timeout";
        v8 = "%{public}s called with null connection";
LABEL_22:
        v12 = v6;
        v13 = v7;
        goto LABEL_23;
      }

      if (v14 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v6 = gLogObj;
        v7 = type;
        if (!os_log_type_enabled(v6, type))
        {
          goto LABEL_24;
        }

        *buf = 136446210;
        v17 = "tcp_connection_add_event_adaptive_write_timeout";
        v8 = "%{public}s called with null connection, backtrace limit exceeded";
        goto LABEL_22;
      }

      backtrace_string = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v6 = gLogObj;
      v10 = type;
      v11 = os_log_type_enabled(v6, type);
      if (!backtrace_string)
      {
        if (!v11)
        {
LABEL_24:

          if (!v5)
          {
            return;
          }

LABEL_18:
          free(v5);
          return;
        }

        *buf = 136446210;
        v17 = "tcp_connection_add_event_adaptive_write_timeout";
        v8 = "%{public}s called with null connection, no backtrace";
        v12 = v6;
        v13 = v10;
LABEL_23:
        _os_log_impl(&dword_181A37000, v12, v13, v8, buf, 0xCu);
        goto LABEL_24;
      }

      if (v11)
      {
        *buf = 136446466;
        v17 = "tcp_connection_add_event_adaptive_write_timeout";
        v18 = 2082;
        v19 = backtrace_string;
        _os_log_impl(&dword_181A37000, v6, v10, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

    if (!v5)
    {
      return;
    }

    goto LABEL_18;
  }

  if (a2)
  {
    v3 = 0x80;
  }

  else
  {
    v3 = 0;
  }

  *(a1 + 159) = v3 & 0x80 | *(a1 + 159) & 0x7F;
  *(a1 + 148) = a3;

  tcp_connection_set_adaptive_write_handler_on_nw_connection(a1);
}

void tcp_connection_set_adaptive_write_handler_on_nw_connection(void *a1)
{
  v1 = a1;
  v2 = v1;
  v3 = *(v1 + 2);
  if (v3)
  {
    v4 = *(v1 + 37);
    if (v1[159] < 0)
    {
      v5[0] = MEMORY[0x1E69E9820];
      v5[1] = 3221225472;
      v5[2] = __tcp_connection_set_adaptive_write_handler_on_nw_connection_block_invoke;
      v5[3] = &unk_1E6A3D868;
      v6 = v1;
      nw_connection_set_adaptive_write_handler(v3, v4, v5);
    }

    else
    {
      nw_connection_set_adaptive_write_handler(*(v1 + 2), *(v1 + 37), 0);
    }
  }
}

uint64_t tcp_connection_did_fallback(void *a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v5 = gLogObj;
    *buf = 136446210;
    v20 = "tcp_connection_did_fallback";
    v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s called with null connection", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v17 = 0;
    if (__nwlog_fault(v6, &type, &v17))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v7 = gLogObj;
        v8 = type;
        if (!os_log_type_enabled(v7, type))
        {
          goto LABEL_24;
        }

        *buf = 136446210;
        v20 = "tcp_connection_did_fallback";
        v9 = "%{public}s called with null connection";
LABEL_22:
        v15 = v7;
        v16 = v8;
        goto LABEL_23;
      }

      if (v17 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v7 = gLogObj;
        v8 = type;
        if (!os_log_type_enabled(v7, type))
        {
          goto LABEL_24;
        }

        *buf = 136446210;
        v20 = "tcp_connection_did_fallback";
        v9 = "%{public}s called with null connection, backtrace limit exceeded";
        goto LABEL_22;
      }

      backtrace_string = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v7 = gLogObj;
      v12 = type;
      v13 = os_log_type_enabled(v7, type);
      if (!backtrace_string)
      {
        if (!v13)
        {
LABEL_24:

          if (!v6)
          {
            goto LABEL_18;
          }

          goto LABEL_17;
        }

        *buf = 136446210;
        v20 = "tcp_connection_did_fallback";
        v9 = "%{public}s called with null connection, no backtrace";
        v15 = v7;
        v16 = v12;
LABEL_23:
        _os_log_impl(&dword_181A37000, v15, v16, v9, buf, 0xCu);
        goto LABEL_24;
      }

      if (v13)
      {
        *buf = 136446466;
        v20 = "tcp_connection_did_fallback";
        v21 = 2082;
        v22 = backtrace_string;
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

    if (!v6)
    {
LABEL_18:
      v4 = 0;
      goto LABEL_19;
    }

LABEL_17:
    free(v6);
    goto LABEL_18;
  }

  v3 = v1[2];
  if (!v3)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v10 = gLogObj;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v20 = "tcp_connection_did_fallback";
      _os_log_impl(&dword_181A37000, v10, OS_LOG_TYPE_ERROR, "%{public}s API Misuse: Function must be called after tcp_connection_start", buf, 0xCu);
    }

    goto LABEL_18;
  }

  v4 = nw_connection_used_fallback(v3);
LABEL_19:

  return v4;
}

void tcp_connection_set_source_application(uint64_t a1, _OWORD *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = *(a1 + 48);
    v3 = a2[1];
    *buf = *a2;
    *&buf[16] = v3;
    nw_parameters_set_source_application(v2, buf);
    return;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v4 = gLogObj;
  *buf = 136446210;
  *&buf[4] = "tcp_connection_set_source_application";
  v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v4, 16, "%{public}s called with null connection", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v14 = 0;
  if (!__nwlog_fault(v5, &type, &v14))
  {
LABEL_12:
    if (!v5)
    {
      return;
    }

    goto LABEL_13;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v6 = gLogObj;
    v7 = type;
    if (!os_log_type_enabled(v6, type))
    {
      goto LABEL_19;
    }

    *buf = 136446210;
    *&buf[4] = "tcp_connection_set_source_application";
    v8 = "%{public}s called with null connection";
LABEL_17:
    v12 = v6;
    v13 = v7;
LABEL_18:
    _os_log_impl(&dword_181A37000, v12, v13, v8, buf, 0xCu);
    goto LABEL_19;
  }

  if (v14 != 1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v6 = gLogObj;
    v7 = type;
    if (!os_log_type_enabled(v6, type))
    {
      goto LABEL_19;
    }

    *buf = 136446210;
    *&buf[4] = "tcp_connection_set_source_application";
    v8 = "%{public}s called with null connection, backtrace limit exceeded";
    goto LABEL_17;
  }

  backtrace_string = __nw_create_backtrace_string();
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v6 = gLogObj;
  v10 = type;
  v11 = os_log_type_enabled(v6, type);
  if (backtrace_string)
  {
    if (v11)
    {
      *buf = 136446466;
      *&buf[4] = "tcp_connection_set_source_application";
      *&buf[12] = 2082;
      *&buf[14] = backtrace_string;
      _os_log_impl(&dword_181A37000, v6, v10, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(backtrace_string);
    goto LABEL_12;
  }

  if (v11)
  {
    *buf = 136446210;
    *&buf[4] = "tcp_connection_set_source_application";
    v8 = "%{public}s called with null connection, no backtrace";
    v12 = v6;
    v13 = v10;
    goto LABEL_18;
  }

LABEL_19:

  if (v5)
  {
LABEL_13:
    free(v5);
  }
}

void tcp_connection_set_source_application_by_bundle(uint64_t a1, char *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v3 = gLogObj;
    *buf = 136446210;
    v16 = "tcp_connection_set_source_application_by_bundle";
    v4 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v3, 16, "%{public}s called with null connection", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v13 = 0;
    if (__nwlog_fault(v4, &type, &v13))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v5 = gLogObj;
        v6 = type;
        if (!os_log_type_enabled(v5, type))
        {
          goto LABEL_21;
        }

        *buf = 136446210;
        v16 = "tcp_connection_set_source_application_by_bundle";
        v7 = "%{public}s called with null connection";
LABEL_19:
        v11 = v5;
        v12 = v6;
        goto LABEL_20;
      }

      if (v13 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v5 = gLogObj;
        v6 = type;
        if (!os_log_type_enabled(v5, type))
        {
          goto LABEL_21;
        }

        *buf = 136446210;
        v16 = "tcp_connection_set_source_application_by_bundle";
        v7 = "%{public}s called with null connection, backtrace limit exceeded";
        goto LABEL_19;
      }

      backtrace_string = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v5 = gLogObj;
      v9 = type;
      v10 = os_log_type_enabled(v5, type);
      if (!backtrace_string)
      {
        if (!v10)
        {
LABEL_21:

          if (!v4)
          {
            return;
          }

LABEL_15:
          free(v4);
          return;
        }

        *buf = 136446210;
        v16 = "tcp_connection_set_source_application_by_bundle";
        v7 = "%{public}s called with null connection, no backtrace";
        v11 = v5;
        v12 = v9;
LABEL_20:
        _os_log_impl(&dword_181A37000, v11, v12, v7, buf, 0xCu);
        goto LABEL_21;
      }

      if (v10)
      {
        *buf = 136446466;
        v16 = "tcp_connection_set_source_application_by_bundle";
        v17 = 2082;
        v18 = backtrace_string;
        _os_log_impl(&dword_181A37000, v5, v9, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

    if (!v4)
    {
      return;
    }

    goto LABEL_15;
  }

  v2 = *(a1 + 48);

  nw_parameters_set_source_application_by_bundle_id_internal(v2, a2, 0);
}

void tcp_connection_set_account_identifier(uint64_t a1, uint64_t a2)
{
  v19 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v3 = gLogObj;
    *buf = 136446210;
    v16 = "tcp_connection_set_account_identifier";
    v4 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v3, 16, "%{public}s called with null connection", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v13 = 0;
    if (__nwlog_fault(v4, &type, &v13))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v5 = gLogObj;
        v6 = type;
        if (!os_log_type_enabled(v5, type))
        {
          goto LABEL_21;
        }

        *buf = 136446210;
        v16 = "tcp_connection_set_account_identifier";
        v7 = "%{public}s called with null connection";
LABEL_19:
        v11 = v5;
        v12 = v6;
        goto LABEL_20;
      }

      if (v13 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v5 = gLogObj;
        v6 = type;
        if (!os_log_type_enabled(v5, type))
        {
          goto LABEL_21;
        }

        *buf = 136446210;
        v16 = "tcp_connection_set_account_identifier";
        v7 = "%{public}s called with null connection, backtrace limit exceeded";
        goto LABEL_19;
      }

      backtrace_string = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v5 = gLogObj;
      v9 = type;
      v10 = os_log_type_enabled(v5, type);
      if (!backtrace_string)
      {
        if (!v10)
        {
LABEL_21:

          if (!v4)
          {
            return;
          }

LABEL_15:
          free(v4);
          return;
        }

        *buf = 136446210;
        v16 = "tcp_connection_set_account_identifier";
        v7 = "%{public}s called with null connection, no backtrace";
        v11 = v5;
        v12 = v9;
LABEL_20:
        _os_log_impl(&dword_181A37000, v11, v12, v7, buf, 0xCu);
        goto LABEL_21;
      }

      if (v10)
      {
        *buf = 136446466;
        v16 = "tcp_connection_set_account_identifier";
        v17 = 2082;
        v18 = backtrace_string;
        _os_log_impl(&dword_181A37000, v5, v9, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

    if (!v4)
    {
      return;
    }

    goto LABEL_15;
  }

  v2 = *(a1 + 48);

  nw_parameters_set_account_id(v2, a2);
}

void tcp_connection_set_no_delay(uint64_t a1, uint64_t a2)
{
  v19 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v3 = gLogObj;
    *buf = 136446210;
    v16 = "tcp_connection_set_no_delay";
    v4 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v3, 16, "%{public}s called with null connection", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v13 = 0;
    if (__nwlog_fault(v4, &type, &v13))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v5 = gLogObj;
        v6 = type;
        if (!os_log_type_enabled(v5, type))
        {
          goto LABEL_21;
        }

        *buf = 136446210;
        v16 = "tcp_connection_set_no_delay";
        v7 = "%{public}s called with null connection";
LABEL_19:
        v11 = v5;
        v12 = v6;
        goto LABEL_20;
      }

      if (v13 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v5 = gLogObj;
        v6 = type;
        if (!os_log_type_enabled(v5, type))
        {
          goto LABEL_21;
        }

        *buf = 136446210;
        v16 = "tcp_connection_set_no_delay";
        v7 = "%{public}s called with null connection, backtrace limit exceeded";
        goto LABEL_19;
      }

      backtrace_string = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v5 = gLogObj;
      v9 = type;
      v10 = os_log_type_enabled(v5, type);
      if (!backtrace_string)
      {
        if (!v10)
        {
LABEL_21:

          if (!v4)
          {
            return;
          }

LABEL_15:
          free(v4);
          return;
        }

        *buf = 136446210;
        v16 = "tcp_connection_set_no_delay";
        v7 = "%{public}s called with null connection, no backtrace";
        v11 = v5;
        v12 = v9;
LABEL_20:
        _os_log_impl(&dword_181A37000, v11, v12, v7, buf, 0xCu);
        goto LABEL_21;
      }

      if (v10)
      {
        *buf = 136446466;
        v16 = "tcp_connection_set_no_delay";
        v17 = 2082;
        v18 = backtrace_string;
        _os_log_impl(&dword_181A37000, v5, v9, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

    if (!v4)
    {
      return;
    }

    goto LABEL_15;
  }

  v2 = *(a1 + 48);

  nw_parameters_set_no_delay(v2, a2);
}

uint64_t tcp_connection_is_sleep_proxied(void *a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v5 = gLogObj;
    *buf = 136446210;
    v20 = "tcp_connection_is_sleep_proxied";
    v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s called with null connection", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v17 = 0;
    if (__nwlog_fault(v6, &type, &v17))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v7 = gLogObj;
        v8 = type;
        if (!os_log_type_enabled(v7, type))
        {
          goto LABEL_24;
        }

        *buf = 136446210;
        v20 = "tcp_connection_is_sleep_proxied";
        v9 = "%{public}s called with null connection";
LABEL_22:
        v15 = v7;
        v16 = v8;
        goto LABEL_23;
      }

      if (v17 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v7 = gLogObj;
        v8 = type;
        if (!os_log_type_enabled(v7, type))
        {
          goto LABEL_24;
        }

        *buf = 136446210;
        v20 = "tcp_connection_is_sleep_proxied";
        v9 = "%{public}s called with null connection, backtrace limit exceeded";
        goto LABEL_22;
      }

      backtrace_string = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v7 = gLogObj;
      v12 = type;
      v13 = os_log_type_enabled(v7, type);
      if (!backtrace_string)
      {
        if (!v13)
        {
LABEL_24:

          if (!v6)
          {
            goto LABEL_18;
          }

          goto LABEL_17;
        }

        *buf = 136446210;
        v20 = "tcp_connection_is_sleep_proxied";
        v9 = "%{public}s called with null connection, no backtrace";
        v15 = v7;
        v16 = v12;
LABEL_23:
        _os_log_impl(&dword_181A37000, v15, v16, v9, buf, 0xCu);
        goto LABEL_24;
      }

      if (v13)
      {
        *buf = 136446466;
        v20 = "tcp_connection_is_sleep_proxied";
        v21 = 2082;
        v22 = backtrace_string;
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

    if (!v6)
    {
LABEL_18:
      v4 = 0;
      goto LABEL_19;
    }

LABEL_17:
    free(v6);
    goto LABEL_18;
  }

  v3 = v1[2];
  if (!v3)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v10 = gLogObj;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v20 = "tcp_connection_is_sleep_proxied";
      _os_log_impl(&dword_181A37000, v10, OS_LOG_TYPE_ERROR, "%{public}s API Misuse: Function must be called after tcp_connection_start", buf, 0xCu);
    }

    goto LABEL_18;
  }

  v4 = nw_connection_uses_sleep_proxy(v3);
LABEL_19:

  return v4;
}

void tcp_connection_set_sleep_idle_interval(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v2 = gLogObj;
    *buf = 136446210;
    v15 = "tcp_connection_set_sleep_idle_interval";
    v3 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v2, 16, "%{public}s called with null connection", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v12 = 0;
    if (__nwlog_fault(v3, &type, &v12))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v4 = gLogObj;
        v5 = type;
        if (!os_log_type_enabled(v4, type))
        {
          goto LABEL_21;
        }

        *buf = 136446210;
        v15 = "tcp_connection_set_sleep_idle_interval";
        v6 = "%{public}s called with null connection";
LABEL_19:
        v10 = v4;
        v11 = v5;
        goto LABEL_20;
      }

      if (v12 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v4 = gLogObj;
        v5 = type;
        if (!os_log_type_enabled(v4, type))
        {
          goto LABEL_21;
        }

        *buf = 136446210;
        v15 = "tcp_connection_set_sleep_idle_interval";
        v6 = "%{public}s called with null connection, backtrace limit exceeded";
        goto LABEL_19;
      }

      backtrace_string = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v4 = gLogObj;
      v8 = type;
      v9 = os_log_type_enabled(v4, type);
      if (!backtrace_string)
      {
        if (!v9)
        {
LABEL_21:

          if (!v3)
          {
            return;
          }

LABEL_15:
          free(v3);
          return;
        }

        *buf = 136446210;
        v15 = "tcp_connection_set_sleep_idle_interval";
        v6 = "%{public}s called with null connection, no backtrace";
        v10 = v4;
        v11 = v8;
LABEL_20:
        _os_log_impl(&dword_181A37000, v10, v11, v6, buf, 0xCu);
        goto LABEL_21;
      }

      if (v9)
      {
        *buf = 136446466;
        v15 = "tcp_connection_set_sleep_idle_interval";
        v16 = 2082;
        v17 = backtrace_string;
        _os_log_impl(&dword_181A37000, v4, v8, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

    if (!v3)
    {
      return;
    }

    goto LABEL_15;
  }

  v1 = *(a1 + 48);

  nw_parameters_set_sleep_keepalive_interval(v1);
}

void tcp_connection_set_keepalive(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = v7;
  if (!v7)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v9 = gLogObj;
    *buf = 136446210;
    v22 = "tcp_connection_set_keepalive";
    v10 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v9, 16, "%{public}s called with null connection", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v19 = 0;
    if (__nwlog_fault(v10, &type, &v19))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v11 = gLogObj;
        v12 = type;
        if (!os_log_type_enabled(v11, type))
        {
          goto LABEL_19;
        }

        *buf = 136446210;
        v22 = "tcp_connection_set_keepalive";
        v13 = "%{public}s called with null connection";
LABEL_17:
        v17 = v11;
        v18 = v12;
        goto LABEL_18;
      }

      if (v19 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v11 = gLogObj;
        v12 = type;
        if (!os_log_type_enabled(v11, type))
        {
          goto LABEL_19;
        }

        *buf = 136446210;
        v22 = "tcp_connection_set_keepalive";
        v13 = "%{public}s called with null connection, backtrace limit exceeded";
        goto LABEL_17;
      }

      backtrace_string = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v11 = gLogObj;
      v15 = type;
      v16 = os_log_type_enabled(v11, type);
      if (!backtrace_string)
      {
        if (!v16)
        {
LABEL_19:

          if (!v10)
          {
            goto LABEL_14;
          }

          goto LABEL_13;
        }

        *buf = 136446210;
        v22 = "tcp_connection_set_keepalive";
        v13 = "%{public}s called with null connection, no backtrace";
        v17 = v11;
        v18 = v15;
LABEL_18:
        _os_log_impl(&dword_181A37000, v17, v18, v13, buf, 0xCu);
        goto LABEL_19;
      }

      if (v16)
      {
        *buf = 136446466;
        v22 = "tcp_connection_set_keepalive";
        v23 = 2082;
        v24 = backtrace_string;
        _os_log_impl(&dword_181A37000, v11, v15, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

    if (!v10)
    {
      goto LABEL_14;
    }

LABEL_13:
    free(v10);
    goto LABEL_14;
  }

  nw_parameters_set_keepalive_enabled(v7[6], a2);
  nw_parameters_set_keepalive_idle_time(v8[6], a3);
  nw_parameters_set_keepalive_interval(v8[6], a4);
LABEL_14:
}

void tcp_connection_set_keepalive_offload(uint64_t a1, uint64_t a2)
{
  v19 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v3 = gLogObj;
    *buf = 136446210;
    v16 = "tcp_connection_set_keepalive_offload";
    v4 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v3, 16, "%{public}s called with null connection", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v13 = 0;
    if (__nwlog_fault(v4, &type, &v13))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v5 = gLogObj;
        v6 = type;
        if (!os_log_type_enabled(v5, type))
        {
          goto LABEL_21;
        }

        *buf = 136446210;
        v16 = "tcp_connection_set_keepalive_offload";
        v7 = "%{public}s called with null connection";
LABEL_19:
        v11 = v5;
        v12 = v6;
        goto LABEL_20;
      }

      if (v13 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v5 = gLogObj;
        v6 = type;
        if (!os_log_type_enabled(v5, type))
        {
          goto LABEL_21;
        }

        *buf = 136446210;
        v16 = "tcp_connection_set_keepalive_offload";
        v7 = "%{public}s called with null connection, backtrace limit exceeded";
        goto LABEL_19;
      }

      backtrace_string = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v5 = gLogObj;
      v9 = type;
      v10 = os_log_type_enabled(v5, type);
      if (!backtrace_string)
      {
        if (!v10)
        {
LABEL_21:

          if (!v4)
          {
            return;
          }

LABEL_15:
          free(v4);
          return;
        }

        *buf = 136446210;
        v16 = "tcp_connection_set_keepalive_offload";
        v7 = "%{public}s called with null connection, no backtrace";
        v11 = v5;
        v12 = v9;
LABEL_20:
        _os_log_impl(&dword_181A37000, v11, v12, v7, buf, 0xCu);
        goto LABEL_21;
      }

      if (v10)
      {
        *buf = 136446466;
        v16 = "tcp_connection_set_keepalive_offload";
        v17 = 2082;
        v18 = backtrace_string;
        _os_log_impl(&dword_181A37000, v5, v9, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

    if (!v4)
    {
      return;
    }

    goto LABEL_15;
  }

  v2 = *(a1 + 48);

  nw_parameters_set_keepalive_offload(v2, a2);
}