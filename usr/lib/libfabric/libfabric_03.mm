uint64_t hook_debug_tsend(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v10 = 0;
  hook_debug_tx_start(a1, a7, 0, &v10);
  v8 = (*(*(*(a1 + 80) + 56) + 32))();
  hook_debug_tx_end(a1, "fi_tsend", v8, v10);
  return v8;
}

uint64_t hook_debug_tsendv(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v10 = 0;
  hook_debug_tx_start(a1, a7, 0, &v10);
  v8 = (*(*(*(a1 + 80) + 56) + 40))();
  hook_debug_tx_end(a1, "fi_tsendv", v8, v10);
  return v8;
}

uint64_t hook_debug_tsendmsg(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  v5 = a2[1];
  v12[0] = *a2;
  v12[1] = v5;
  v6 = a2[3];
  v12[2] = a2[2];
  v13 = v6;
  hook_debug_tx_start(a1, *(a2 + 6), a3, &v13);
  v10 = (*(*(*(a1 + 80) + 56) + 48))(*(a1 + 80), v12, a3, v7, v8, v9);
  hook_debug_tx_end(a1, "fi_tsendmsg", v10, v13);
  return v10;
}

uint64_t hook_debug_tinject(uint64_t a1)
{
  v2 = (*(*(*(a1 + 80) + 56) + 56))();
  hook_debug_trace_exit(a1, *(a1 + 80), 4, "fi_tinject", v2, (a1 + 152));
  return v2;
}

uint64_t hook_debug_tsenddata(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v11 = 0;
  hook_debug_tx_start(a1, a8, 0, &v11);
  v9 = (*(*(*(a1 + 80) + 56) + 64))();
  hook_debug_tx_end(a1, "fi_tsenddata", v9, v11);
  return v9;
}

uint64_t hook_debug_tinjectdata(uint64_t a1)
{
  v2 = (*(*(*(a1 + 80) + 56) + 72))();
  hook_debug_trace_exit(a1, *(a1 + 80), 4, "fi_tinjectdata", v2, (a1 + 152));
  return v2;
}

uint64_t hook_debug_fabric(uint64_t *a1, void *a2, uint64_t a3)
{
  if (fi_log_enabled(a3, 1, 1))
  {
    v6 = *__error();
    fi_log(a3, 1, 1, "hook_debug_fabric", 899, "Installing debug hook\n");
    *__error() = v6;
  }

  v7 = malloc_type_calloc(1uLL, 0x48uLL, 0x10A0040A567E723uLL);
  if (!v7)
  {
    return 4294967284;
  }

  v8 = v7;
  hook_fabric_init(v7, 4, *a1, a3, &hook_debug_fabric_fid_ops, &hook_debug_prov_ctx);
  result = 0;
  *a2 = v8;
  v8[3] = &hook_debug_fabric_ops;
  return result;
}

void *fi_debug_hook_ini()
{
  hook_debug_fabric_fid_ops = hook_fid_ops;
  unk_2A1894AA0 = *&off_2A1C53EC0;
  xmmword_2A1894AB0 = xmmword_2A1C53ED0;
  qword_2A1894AC0 = qword_2A1C53EE0;
  hook_debug_fabric_ops = hook_fabric_ops;
  *algn_2A1894868 = *&off_2A1C53F30;
  xmmword_2A1894878 = xmmword_2A1C53F40;
  qword_2A1894888 = qword_2A1C53F50;
  qword_2A1894870 = hook_debug_eq_open;
  qword_2A18948C0 = qword_2A1C53EE0;
  hook_debug_eq_fid_ops = hook_fid_ops;
  unk_2A18948A0 = *&off_2A1C53EC0;
  xmmword_2A18948B0 = xmmword_2A1C53ED0;
  *(&hook_debug_eq_fid_ops + 1) = hook_debug_eq_close;
  xmmword_2A18948D8 = xmmword_2A1C53E90;
  *&qword_2A18948E8 = *&off_2A1C53EA0;
  hook_debug_eq_ops = hook_eq_ops;
  *(&hook_debug_eq_ops + 1) = hook_debug_eq_read;
  qword_2A18948E8 = hook_debug_eq_sread;
  hook_debug_domain_ops = hook_domain_ops;
  xmmword_2A1894938 = xmmword_2A1C541A8;
  unk_2A1894948 = *&off_2A1C541B8;
  xmmword_2A1894918 = xmmword_2A1C54188;
  unk_2A1894928 = *&off_2A1C54198;
  qword_2A1894908 = hook_debug_cq_open;
  qword_2A1894910 = hook_debug_endpoint;
  qword_2A1894AF8 = qword_2A1C53EE0;
  xmmword_2A1894AD8 = *&off_2A1C53EC0;
  unk_2A1894AE8 = xmmword_2A1C53ED0;
  hook_debug_cq_fid_ops = hook_fid_ops;
  *(&hook_debug_cq_fid_ops + 1) = hook_debug_cq_close;
  unk_2A1894B30 = *off_2A1C54120;
  hook_debug_cq_ops = hook_cq_ops;
  *&qword_2A1894B10 = *&off_2A1C54100;
  *(&hook_debug_cq_ops + 1) = hook_debug_cq_read;
  qword_2A1894B10 = hook_debug_cq_readfrom;
  *&xmmword_2A1894B20 = fi_no_cq_sread;
  *(&xmmword_2A1894B20 + 1) = fi_no_cq_sreadfrom;
  unk_2A1894988 = *&off_2A1C53E70;
  hook_debug_cntr_ops = hook_cntr_ops;
  *algn_2A1894968 = *&off_2A1C53E50;
  *(&hook_debug_cntr_ops + 1) = hook_debug_cntr_read;
  qword_2A1894970 = fi_no_cntr_add;
  *&xmmword_2A1894978 = fi_no_cntr_set;
  *(&xmmword_2A1894978 + 1) = hook_debug_cntr_wait;
  qword_2A1894B70 = qword_2A1C53EE0;
  xmmword_2A1894B50 = *&off_2A1C53EC0;
  unk_2A1894B60 = xmmword_2A1C53ED0;
  hook_debug_ep_fid_ops = hook_fid_ops;
  *&xmmword_2A1894B50 = hook_debug_ep_bind;
  *(&hook_debug_ep_fid_ops + 1) = hook_debug_ep_close;
  result = &hook_debug_prov_ctx;
  qword_2A1C50E88 = hook_debug_domain_init;
  qword_2A1C50EF0 = hook_debug_cntr_init;
  return result;
}

uint64_t hook_debug_eq_open(uint64_t a1, __int128 *a2, void *a3, uint64_t a4)
{
  v8 = malloc_type_calloc(1uLL, 0x70uLL, 0x10A0040F7E68D4DuLL);
  if (!v8)
  {
    return 4294967284;
  }

  v9 = v8;
  v10 = hook_eq_init(a1, a2, a3, a4, v8);
  if (v10)
  {
    free(v9);
  }

  else
  {
    v9[2] = &hook_debug_eq_fid_ops;
    v9[3] = &hook_debug_eq_ops;
    *(v9 + 3) = 0u;
    *(v9 + 4) = 0u;
    *(v9 + 5) = 0u;
    v9[12] = 0;
  }

  return v10;
}

uint64_t hook_debug_eq_close(void *a1)
{
  if (fi_log_enabled(*(a1[5] + 56), 1, 7))
  {
    v2 = *__error();
    fi_log(*(a1[5] + 56), 1, 7, "hook_debug_eq_close", 842, "EQ events:\n");
    *__error() = v2;
  }

  LODWORD(v10) = 0;
  do
  {
    if (fi_log_enabled(*(a1[5] + 56), 1, 7))
    {
      v3 = *__error();
      v4 = *(a1[5] + 56);
      v5 = fi_tostr(&v10, 19);
      v6 = atomic_load(&a1[v10 + 6]);
      fi_log(v4, 1, 7, "hook_debug_eq_close", 848, "%-20s: %llu\n", v5, v6);
      *__error() = v3;
    }

    v7 = v10;
    LODWORD(v10) = v10 + 1;
  }

  while (v7 < 6);
  v8 = (*(*(a1[4] + 16) + 8))();
  if (!v8)
  {
    free(a1);
  }

  return v8;
}

uint64_t hook_debug_eq_read(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  v5 = hook_eq_read(a1, a2, a3);
  if (v5 >= 1)
  {
    atomic_fetch_add((a1 + 8 * *a2 + 48), 1uLL);
  }

  hook_debug_trace_exit(a1, *(a1 + 32), 7, "fi_eq_read", v5, (a1 + 104));
  return v5;
}

uint64_t hook_debug_eq_sread(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  v5 = hook_eq_sread(a1, a2, a3);
  if (v5 >= 1)
  {
    atomic_fetch_add((a1 + 8 * *a2 + 48), 1uLL);
  }

  hook_debug_trace_exit(a1, *(a1 + 32), 7, "fi_eq_sread", v5, (a1 + 104));
  return v5;
}

uint64_t hook_debug_cq_open(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  if (*(a2 + 8))
  {
    hook_debug_cq_open_cold_1();
  }

  if (fi_log_enabled(*(*(a1 + 48) + 56), 1, 6))
  {
    v8 = *__error();
    fi_log(*(*(a1 + 48) + 56), 1, 6, "hook_debug_cq_attr_log", 597, "fi_cq_attr:\n");
    *__error() = v8;
  }

  if (fi_log_enabled(*(*(a1 + 48) + 56), 1, 6))
  {
    v9 = *__error();
    fi_log(*(*(a1 + 48) + 56), 1, 6, "hook_debug_cq_attr_log", 598, "\tsize: %zu\n", *a2);
    *__error() = v9;
  }

  if (fi_log_enabled(*(*(a1 + 48) + 56), 1, 6))
  {
    v10 = *__error();
    fi_log(*(*(a1 + 48) + 56), 1, 6, "hook_debug_cq_attr_log", 599, "\tflags: %s\n", "TBD");
    *__error() = v10;
  }

  if (fi_log_enabled(*(*(a1 + 48) + 56), 1, 6))
  {
    v11 = *__error();
    fi_log(*(*(a1 + 48) + 56), 1, 6, "hook_debug_cq_attr_log", 600, "\tformat: %s\n", "TBD");
    *__error() = v11;
  }

  if (fi_log_enabled(*(*(a1 + 48) + 56), 1, 6))
  {
    v12 = *__error();
    fi_log(*(*(a1 + 48) + 56), 1, 6, "hook_debug_cq_attr_log", 601, "\twait_obj: %s\n", "TBD");
    *__error() = v12;
  }

  if (fi_log_enabled(*(*(a1 + 48) + 56), 1, 6))
  {
    v13 = *__error();
    fi_log(*(*(a1 + 48) + 56), 1, 6, "hook_debug_cq_attr_log", 603, "\tsignaling_vector: %d\n", *(a2 + 24));
    *__error() = v13;
  }

  if (fi_log_enabled(*(*(a1 + 48) + 56), 1, 6))
  {
    v14 = *__error();
    fi_log(*(*(a1 + 48) + 56), 1, 6, "hook_debug_cq_attr_log", 604, "\twait_cond: %s\n", "TBD");
    *__error() = v14;
  }

  if (fi_log_enabled(*(*(a1 + 48) + 56), 1, 6))
  {
    v15 = *__error();
    fi_log(*(*(a1 + 48) + 56), 1, 6, "hook_debug_cq_attr_log", 606, "\twait_set: %p\n", *(a2 + 32));
    *__error() = v15;
  }

  if ((config & 0xC) != 0 && *(a2 + 16) <= 1u)
  {
    if (fi_log_enabled(&hook_debug_prov_ctx, 0, 6))
    {
      v16 = *__error();
      fi_log(&hook_debug_prov_ctx, 0, 6, "hook_debug_cq_open", 626, "need FI_CQ_FORMAT_MSG or higher for tracking sends and(or) recvs\n");
      *__error() = v16;
    }

    return 4294967274;
  }

  else
  {
    v18 = malloc_type_calloc(1uLL, 0x58uLL, 0x10A00407451FAF6uLL);
    if (v18)
    {
      v19 = v18;
      v20 = hook_cq_init(a1, a2, a3, a4, v18);
      if (v20)
      {
        v17 = v20;
        v21 = v19[4];
        if (!v21 || !(*(*(v21 + 16) + 8))())
        {
          free(v19);
        }
      }

      else
      {
        if (fi_log_enabled(*(*(v19[5] + 48) + 56), 1, 6))
        {
          v22 = *__error();
          fi_log(*(*(v19[5] + 48) + 56), 1, 6, "hook_debug_cq_open", 639, "cq opened, fid: %p\n", v19[4]);
          *__error() = v22;
        }

        v19[2] = &hook_debug_cq_fid_ops;
        v19[3] = &hook_debug_cq_ops;
        v23 = *(a2 + 16);
        *(v19 + 16) = v23;
        v19[9] = cq_entry_size[v23];
        if (!v23)
        {
          hook_debug_cq_open_cold_2();
        }

        return 0;
      }
    }

    else
    {
      return 4294967261;
    }
  }

  return v17;
}

uint64_t hook_debug_endpoint(uint64_t *a1, void *a2, void *a3, uint64_t a4)
{
  v34 = qword_2A2557D48;
  v32 = xmmword_2A2557D28;
  v33 = *&off_2A2557D38;
  v30 = xmmword_2A2557D08;
  v31 = unk_2A2557D18;
  if (*(a2[12] + 16) == 3)
  {
    v8 = hook_to_fabric(a1, a2);
    if (fi_log_enabled(v8[7], 1, 3))
    {
      v10 = *__error();
      v12 = hook_to_fabric(a1, v11);
      fi_log(v12[7], 1, 3, "hook_debug_endpoint", 758, "tx_attr->size: %zu\n", *(a2[9] + 48));
      *__error() = v10;
    }

    v13 = hook_to_fabric(a1, v9);
    if (fi_log_enabled(v13[7], 1, 3))
    {
      v14 = *__error();
      v16 = hook_to_fabric(a1, v15);
      fi_log(v16[7], 1, 3, "hook_debug_endpoint", 760, "rx_attr->size: %zu\n", *(a2[10] + 48));
      *__error() = v14;
    }

    v17 = malloc_type_calloc(1uLL, 0xA8uLL, 0x10A00406C1CE95BuLL);
    if (!v17)
    {
      return 4294967284;
    }

    v18 = v17;
    *(&v33 + 1) = v17;
    v19 = config;
    if ((config & 4) != 0)
    {
      *(&v31 + 1) = *(a2[9] + 48);
      attr = ofi_bufpool_create_attr(&v30, v17 + 15);
      if (attr)
      {
LABEL_13:
        v22 = attr;
        hook_debug_ep_close(v18);
        return v22;
      }

      v19 = config;
    }

    if ((v19 & 8) != 0)
    {
      *(&v31 + 1) = *(a2[10] + 48);
      attr = ofi_bufpool_create_attr(&v30, v18 + 16);
      if (attr)
      {
        goto LABEL_13;
      }
    }

    attr = hook_endpoint_init(a1, a2, a3, a4, v18);
    if (attr)
    {
      goto LABEL_13;
    }

    v24 = hook_to_fabric(v18, v21);
    if (fi_log_enabled(v24[7], 1, 3))
    {
      v25 = *__error();
      v27 = hook_to_fabric(v18, v26);
      fi_log(v27[7], 1, 3, "hook_debug_endpoint", 787, "endpoint opened, fid: %p\n", v18[10]);
      *__error() = v25;
    }

    v22 = 0;
    v18[2] = &hook_debug_ep_fid_ops;
    v18[5] = &hook_debug_msg_ops;
    v18[7] = &hook_debug_tagged_ops;
    v28 = *(a2[10] + 16);
    v18[13] = *(a2[9] + 16);
    v18[14] = v28;
  }

  else
  {
    if (fi_log_enabled(&hook_debug_prov_ctx, 0, 6))
    {
      v23 = *__error();
      fi_log(&hook_debug_prov_ctx, 0, 6, "hook_debug_endpoint", 753, "debug hooking provider doesn't support thread safetyat this time\n");
      *__error() = v23;
    }

    return 4294967274;
  }

  return v22;
}

uint64_t hook_debug_cq_close(void *a1)
{
  v2 = a1[4];
  if (!v2 || (result = (*(*(v2 + 16) + 8))(), !result))
  {
    free(a1);
    return 0;
  }

  return result;
}

uint64_t hook_debug_cq_read(uint64_t a1, uint64_t a2)
{
  v4 = (*(*(*(a1 + 32) + 24) + 8))();
  hook_debug_cq_process_entry(a1, "fi_cq_read", v4, a2);
  return v4;
}

uint64_t hook_debug_cq_readfrom(uint64_t a1, uint64_t a2)
{
  v4 = (*(*(*(a1 + 32) + 24) + 16))();
  hook_debug_cq_process_entry(a1, "fi_cq_readfrom", v4, a2);
  return v4;
}

uint64_t hook_debug_cntr_read(uint64_t a1)
{
  v2 = (*(*(*(a1 + 32) + 24) + 8))();
  hook_debug_trace_exit(a1, *(a1 + 32), 9, "fi_cntr_read", v2, 0);
  return v2;
}

uint64_t hook_debug_cntr_wait(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  if (fi_log_enabled(*(*(*(a1 + 40) + 48) + 56), 1, 9))
  {
    v6 = *__error();
    fi_log(*(*(*(a1 + 40) + 48) + 56), 1, 9, "hook_debug_cntr_wait", 941, "cntr: %p, threshold: %llu, timeout: %d\n", *(a1 + 32), a2, v3);
    *__error() = v6;
  }

  v7 = (*(*(*(a1 + 32) + 24) + 40))();
  hook_debug_trace_exit(a1, *(a1 + 32), 9, "fi_cntr_wait", v7, 0);
  return v7;
}

uint64_t hook_debug_ep_bind(void *a1, void *a2, uint64_t a3)
{
  v10 = a3;
  v4 = hook_to_hfid(a1);
  v5 = hook_to_hfid(a2);
  result = 4294967274;
  if (v4 && v5)
  {
    if (*a2 == 15)
    {
      if (!fi_log_enabled(*(*(a2[5] + 48) + 56), 1, 3))
      {
        return (*(*(v4 + 16) + 16))(v4, v5, v10);
      }

      v7 = *__error();
      v9 = *(*(a2[5] + 48) + 56);
      fi_tostr(&v10, 2);
      fi_log(v9, 1, 3, "hook_debug_ep_bind", 696, "cntr: %p bind flags: %s\n");
    }

    else
    {
      if (*a2 != 14 || !fi_log_enabled(*(*(a2[5] + 48) + 56), 1, 3))
      {
        return (*(*(v4 + 16) + 16))(v4, v5, v10);
      }

      v7 = *__error();
      v8 = *(*(a2[5] + 48) + 56);
      fi_tostr(&v10, 2);
      fi_log(v8, 1, 3, "hook_debug_ep_bind", 689, "cq: %p bind flags: %s\n");
    }

    *__error() = v7;
    return (*(*(v4 + 16) + 16))(v4, v5, v10);
  }

  return result;
}

uint64_t hook_debug_ep_close(void *a1)
{
  v2 = a1[15];
  if (v2)
  {
    ofi_bufpool_destroy(v2);
  }

  v3 = a1[16];
  if (v3)
  {
    ofi_bufpool_destroy(v3);
  }

  v4 = a1[10];
  if (!v4 || (result = (*(*(v4 + 16) + 8))(), !result))
  {
    free(a1);
    return 0;
  }

  return result;
}

uint64_t hook_debug_cntr_init(uint64_t a1)
{
  if (fi_log_enabled(*(*(*(a1 + 40) + 48) + 56), 1, 9))
  {
    v2 = *__error();
    fi_log(*(*(*(a1 + 40) + 48) + 56), 1, 9, "hook_debug_cntr_init", 955, "fi_cntr_open: %p\n", *(a1 + 32));
    *__error() = v2;
  }

  *(a1 + 24) = &hook_debug_cntr_ops;
  return 0;
}

uint64_t hook_debug_rx_start(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v14 = a3;
  if ((config & 8) == 0)
  {
LABEL_17:
    result = 0;
    *a4 = a2;
    return result;
  }

  if ((a3 & 0xFFFFFFFFFEFEFFFFLL) == 0)
  {
    v11 = *(a1 + 128);
    if ((*(v11 + 128) & 2) != 0)
    {
      sock_pe_acquire_entry_cold_2();
    }

    v12 = *v11;
    if (!*v11)
    {
      if (ofi_bufpool_grow(*(a1 + 128)))
      {
        hook_debug_rx_start_cold_2();
      }

      v12 = *v11;
    }

    if (v12 == *(v11 + 8))
    {
      *v11 = 0;
      *(v11 + 8) = 0;
    }

    else
    {
      *v11 = *v12;
    }

    if (atomic_fetch_add((v12[2] + 76), 1u) == -1)
    {
      sock_pe_acquire_entry_cold_4();
    }

    if (*v12 == v12)
    {
      sock_pe_acquire_entry_cold_3();
    }

    v13 = v12[6];
    *v12 = v12;
    if (v13 != 0xF1C0DE0F1C0DE64)
    {
      hook_debug_rx_start_cold_3();
    }

    v12[8] = *(a1 + 112) | a3;
    v12[9] = a2;
    a2 = v12 + 6;
    goto LABEL_17;
  }

  if (fi_log_enabled(&hook_debug_prov_ctx, 1, 4))
  {
    v7 = *__error();
    v8 = fi_tostr(&v14, 3);
    fi_log(&hook_debug_prov_ctx, 1, 4, "hook_debug_rx_start", 164, "unsupported flags: %s\n", v8);
    *__error() = v7;
  }

  return 4294967274;
}

int *hook_debug_rx_end(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = hook_debug_trace_exit(a1, *(a1 + 80), 4, a2, a3, (a1 + 160));
  if ((config & 8) != 0)
  {
    if (a3)
    {

      return ofi_buf_free(a4);
    }

    else
    {
      ++*(a1 + 144);
      v9 = hook_to_fabric(a1, v8);
      result = fi_log_enabled(v9[7], 1, 4);
      if (result)
      {
        v10 = *__error();
        v12 = hook_to_fabric(a1, v11);
        fi_log(v12[7], 1, 4, "hook_debug_rx_end", 147, "ep: %p rx_outs: %zu\n", *(a1 + 80), *(a1 + 144));
        result = __error();
        *result = v10;
      }
    }
  }

  return result;
}

int *hook_debug_trace_exit(int *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  if ((config & 1) == 0)
  {
    return result;
  }

  v9 = a3;
  v11 = result;
  if (a5 < 1)
  {
    if (a5 == -35)
    {
      if (a6)
      {
        v16 = (*a6)++;
        if (__ROR8__(0xE5032477AE8D46A5 * v16, 7) > 0x1AD7F29ABCAuLL)
        {
          return result;
        }
      }
    }

    v17 = hook_to_fabric(result, a2);
    result = fi_log_enabled(v17[7], 1, v9);
    if (!result)
    {
      goto LABEL_11;
    }

    v13 = *__error();
    v19 = hook_to_fabric(v11, v18)[7];
    fi_strerror(-a5);
    fi_log(v19, 1, v9, "hook_debug_trace_exit", 100, "%s (fid: %p) returned: %zd (%s)\n", a4, a2);
  }

  else
  {
    v12 = hook_to_fabric(result, a2);
    result = fi_log_enabled(v12[7], 1, v9);
    if (!result)
    {
      goto LABEL_11;
    }

    v13 = *__error();
    v15 = hook_to_fabric(v11, v14)[7];
    fi_log(v15, 1, v9, "hook_debug_trace_exit", 93, "%s (fid: %p) returned: %zd\n", a4);
  }

  result = __error();
  *result = v13;
LABEL_11:
  if (a5 != -35)
  {
    if (a6)
    {
      *a6 = 0;
    }
  }

  return result;
}

uint64_t hook_debug_tx_start(uint64_t result, void *a2, uint64_t a3, void *a4)
{
  if (a4)
  {
    if ((config & 4) != 0)
    {
      v6 = result;
      v7 = *(result + 120);
      if ((*(v7 + 128) & 2) != 0)
      {
        sock_pe_acquire_entry_cold_2();
      }

      v9 = *v7;
      if (!*v7)
      {
        result = ofi_bufpool_grow(*(result + 120));
        if (result)
        {
          hook_debug_tx_start_cold_2();
        }

        v9 = *v7;
      }

      if (v9 == *(v7 + 8))
      {
        *v7 = 0;
        *(v7 + 8) = 0;
      }

      else
      {
        *v7 = *v9;
      }

      if (atomic_fetch_add((v9[2] + 76), 1u) == -1)
      {
        sock_pe_acquire_entry_cold_4();
      }

      if (*v9 == v9)
      {
        sock_pe_acquire_entry_cold_3();
      }

      v10 = v9[6];
      *v9 = v9;
      if (v10 != 0xF1C0DE0F1C0DE64)
      {
        hook_debug_tx_start_cold_3();
      }

      v9[8] = *(v6 + 104) | a3;
      v9[9] = a2;
      a2 = v9 + 6;
    }

    *a4 = a2;
  }

  return result;
}

int *hook_debug_tx_end(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = hook_debug_trace_exit(a1, *(a1 + 80), 4, a2, a3, (a1 + 152));
  if (a4 && (config & 4) != 0)
  {
    if (a3)
    {

      return ofi_buf_free(a4);
    }

    else
    {
      ++*(a1 + 136);
      v9 = hook_to_fabric(a1, v8);
      result = fi_log_enabled(v9[7], 1, 4);
      if (result)
      {
        v10 = *__error();
        v12 = hook_to_fabric(a1, v11);
        fi_log(v12[7], 1, 4, "hook_debug_tx_end", 242, "ep: %p tx_outs: %zu\n", *(a1 + 80), *(a1 + 136));
        result = __error();
        *result = v10;
      }
    }
  }

  return result;
}

uint64_t hook_debug_txrx_entry_init(uint64_t result, void *a2)
{
  v2 = *(*(result + 64) + 120);
  *a2 = 0xF1C0DE0F1C0DE64;
  a2[1] = v2;
  return result;
}

uint64_t hook_debug_recv(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v11 = 0;
  v7 = hook_debug_rx_start(a1, a6, 0, &v11);
  if (v7)
  {
    return v7;
  }

  v9 = v11;
  v8 = (*(*(*(a1 + 80) + 40) + 8))();
  hook_debug_rx_end(a1, "fi_recv", v8, v9);
  return v8;
}

uint64_t hook_debug_recvmsg(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  v5 = a2[1];
  v10[0] = *a2;
  v10[1] = v5;
  v11 = a2[2];
  v6 = hook_debug_rx_start(a1, *(a2 + 4), a3, &v11);
  if (v6)
  {
    return v6;
  }

  v8 = (*(*(*(a1 + 80) + 40) + 24))(*(a1 + 80), v10, a3, v7);
  hook_debug_rx_end(a1, "fi_recvmsg", v8, v11);
  return v8;
}

uint64_t hook_debug_send(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v9 = 0;
  hook_debug_tx_start(a1, a6, 0, &v9);
  v7 = (*(*(*(a1 + 80) + 40) + 32))();
  hook_debug_tx_end(a1, "fi_send", v7, v9);
  return v7;
}

uint64_t hook_debug_sendv(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v9 = 0;
  hook_debug_tx_start(a1, a6, 0, &v9);
  v7 = (*(*(*(a1 + 80) + 40) + 40))();
  hook_debug_tx_end(a1, "fi_sendv", v7, v9);
  return v7;
}

uint64_t hook_debug_sendmsg(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  v5 = a2[1];
  v9[0] = *a2;
  v9[1] = v5;
  v10 = a2[2];
  hook_debug_tx_start(a1, *(a2 + 4), a3, &v10);
  v7 = (*(*(*(a1 + 80) + 40) + 48))(*(a1 + 80), v9, a3, v6);
  hook_debug_tx_end(a1, "fi_sendmsg", v7, v10);
  return v7;
}

uint64_t hook_debug_inject(uint64_t a1)
{
  v2 = (*(*(*(a1 + 80) + 40) + 56))();
  hook_debug_trace_exit(a1, *(a1 + 80), 4, "fi_inject", v2, (a1 + 152));
  return v2;
}

uint64_t hook_debug_senddata(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v10 = 0;
  hook_debug_tx_start(a1, a7, 0, &v10);
  v8 = (*(*(*(a1 + 80) + 40) + 64))();
  hook_debug_tx_end(a1, "fi_senddata", v8, v10);
  return v8;
}

uint64_t hook_debug_injectdata(uint64_t a1)
{
  v2 = (*(*(*(a1 + 80) + 40) + 72))();
  hook_debug_trace_exit(a1, *(a1 + 80), 4, "fi_injectdata", v2, (a1 + 152));
  return v2;
}

uint64_t hook_debug_cq_process_entry(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  result = hook_debug_trace_exit(a1, *(a1 + 32), 6, a2, a3, (a1 + 80));
  if (v5 >= 1)
  {
    while (1)
    {
      if ((config & 2) != 0)
      {
        if (fi_log_enabled(*(*(*(a1 + 40) + 48) + 56), 1, 6))
        {
          v9 = *__error();
          fi_log(*(*(*(a1 + 40) + 48) + 56), 1, 6, "hook_debug_cq_entry_log", 487, "cq_entry:\n");
          *__error() = v9;
        }

        result = fi_log_enabled(*(*(*(a1 + 40) + 48) + 56), 1, 6);
        if (result)
        {
          v10 = *__error();
          fi_log(*(*(*(a1 + 40) + 48) + 56), 1, 6, "hook_debug_cq_entry_log", 488, "\top_context: %p\n", *a4);
          result = __error();
          *result = v10;
        }

        if (*(a1 + 64) >= 2u)
        {
          result = fi_log_enabled(*(*(*(a1 + 40) + 48) + 56), 1, 6);
          if (result)
          {
            v11 = *__error();
            v12 = *(*(*(a1 + 40) + 48) + 56);
            v13 = fi_tostr((a4 + 8), 2);
            fi_log(v12, 1, 6, "hook_debug_cq_entry_log", 492, "\tflags: %s\n", v13);
            result = __error();
            *result = v11;
          }

          if ((*(a4 + 9) & 4) != 0)
          {
            result = fi_log_enabled(*(*(*(a1 + 40) + 48) + 56), 1, 6);
            if (result)
            {
              v14 = *__error();
              fi_log(*(*(*(a1 + 40) + 48) + 56), 1, 6, "hook_debug_cq_entry_log", 495, "\tlen: %zu\n", *(a4 + 16));
              result = __error();
              *result = v14;
            }
          }

          if (*(a1 + 64) == 4)
          {
            result = fi_log_enabled(*(*(*(a1 + 40) + 48) + 56), 1, 6);
            if (result)
            {
              v15 = *__error();
              fi_log(*(*(*(a1 + 40) + 48) + 56), 1, 6, "hook_debug_cq_entry_log", 498, "\ttag: %llx\n", *(a4 + 40));
              result = __error();
              *result = v15;
            }
          }
        }
      }

      if ((config & 8) != 0)
      {
        v16 = *(a4 + 8);
        if ((v16 & 0x400) != 0)
        {
          break;
        }
      }

      if ((config & 4) == 0 || (*(a4 + 9) & 8) == 0)
      {
        goto LABEL_30;
      }

      v17 = *a4;
      if (**a4 != 0xF1C0DE0F1C0DE64)
      {
        hook_debug_cq_process_entry_cold_2();
      }

      *a4 = v17[3];
      --*(v17[1] + 136);
      v18 = hook_to_fabric(a1, v8);
      if (fi_log_enabled(v18[7], 1, 6))
      {
        v19 = *__error();
        v21 = hook_to_fabric(a1, v20)[7];
        fi_log(v21, 1, 6, "hook_debug_cq_process_entry", 540, "ep: %p tx_outs: %zu\n");
LABEL_28:
        *__error() = v19;
      }

LABEL_29:
      result = ofi_buf_free(v17);
LABEL_30:
      a4 += *(a1 + 72);
      if (!--v5)
      {
        return result;
      }
    }

    v17 = *a4;
    if (**a4 != 0xF1C0DE0F1C0DE64)
    {
      hook_debug_cq_process_entry_cold_1();
    }

    *a4 = v17[3];
    if ((v16 & 0x10000) == 0 && (v17[2] & 0x10000) != 0)
    {
      goto LABEL_30;
    }

    --*(v17[1] + 144);
    v22 = hook_to_fabric(a1, v8);
    if (!fi_log_enabled(v22[7], 1, 6))
    {
      goto LABEL_29;
    }

    v19 = *__error();
    v24 = hook_to_fabric(a1, v23)[7];
    fi_log(v24, 1, 6, "hook_debug_cq_process_entry", 527, "ep: %p rx_outs: %zu\n");
    goto LABEL_28;
  }

  return result;
}

uint64_t ofi_ipc_cache_open(void **a1, uint64_t a2)
{
  v12 = *MEMORY[0x29EDCA608];
  v10 = 0u;
  v11 = 0u;
  v9 = 0u;
  if ((ofi_hmem_is_ipc_enabled(1) & 1) == 0 && (ofi_hmem_is_ipc_enabled(2) & 1) == 0 && !ofi_hmem_is_ipc_enabled(3))
  {
    return 0;
  }

  *(&v9 + 1) = cuda_ipc_monitor;
  *&v10 = rocr_ipc_monitor;
  *(&v10 + 1) = ze_ipc_monitor;
  v4 = malloc_type_calloc(1uLL, 0x1B0uLL, 0x10E004000B4E902uLL);
  *a1 = v4;
  if (!v4)
  {
    return 4294967284;
  }

  v4[52] = ipc_cache_add_region;
  *(*a1 + 53) = ipc_cache_delete_region;
  v5 = ofi_mr_cache_init(a2, &v9, *a1);
  if (!v5)
  {
    if (fi_log_enabled(&core_prov, 2, 0))
    {
      v7 = *__error();
      fi_log(&core_prov, 2, 0, "ofi_ipc_cache_open", 120, "ipc cache enabled, max_cnt: %zu max_size: %zu\n", cache_params, *(&cache_params + 1));
      v6 = 0;
      *__error() = v7;
      return v6;
    }

    return 0;
  }

  v6 = v5;
  free(*a1);
  *a1 = 0;
  return v6;
}

uint64_t ipc_cache_add_region(void *a1, uint64_t a2)
{
  v4 = ofi_hmem_open_handle(*(a2 + 16), a2 + 56, *(a2 + 8), *(a2 + 24), a2 + 48);
  if (v4 == -37)
  {
    ofi_mr_cache_flush(a1, 0);
    v4 = ofi_hmem_open_handle(*(a2 + 16), a2 + 56, *(a2 + 8), *(a2 + 24), a2 + 48);
  }

  if (v4 && fi_log_enabled(&core_prov, 0, 0))
  {
    v5 = *__error();
    fi_log(&core_prov, 0, 0, "ipc_cache_add_region", 69, "Failed to open hmem handle, addr: %p, len: %lu\n", *a2, *(a2 + 8));
    *__error() = v5;
  }

  return v4;
}

void ofi_ipc_cache_destroy(void *a1)
{
  ofi_mr_cache_cleanup(a1);

  free(a1);
}

uint64_t ofi_ipc_cache_search(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v17 = *MEMORY[0x29EDCA608];
  v16 = 0;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v6 = *(a3 + 16);
  v9[0] = *(a3 + 8);
  v9[1] = v6;
  LODWORD(v10) = *a3;
  *(&v11 + 1) = a2;
  if (!ofi_hmem_get_ipc_handle_size(v10))
  {
    ofi_ipc_cache_search_cold_1();
  }

  v8 = 0;
  __memcpy_chk();
  result = ofi_mr_cache_search(a1, v9, &v8);
  if (!result)
  {
    *a4 = v8;
  }

  return result;
}

char *fi_tostr_r(char *__s1, size_t __n, uint64_t *a3, int a4)
{
  result = 0;
  if (__n && __s1 && a3)
  {
    *__s1 = 0;
    switch(a4)
    {
      case 0:
        ofi_tostr_info(__s1, __n, a3);
        break;
      case 1:
        ofi_tostr_ep_type(__s1, __n, *a3);
        break;
      case 2:
        ofi_tostr_caps(__s1, __n, *a3);
        break;
      case 3:
        ofi_tostr_opflags(__s1, __n, *a3);
        break;
      case 4:
        ofi_tostr_addr_format(__s1, __n, *a3);
        break;
      case 5:
        ofi_tostr_tx_attr(__s1, __n, a3, &unk_29ED0916E);
        break;
      case 6:
        ofi_tostr_rx_attr(__s1, __n, a3, &unk_29ED0916E);
        break;
      case 7:
        ofi_tostr_ep_attr(__s1, __n, a3, &unk_29ED0916E);
        break;
      case 8:
        ofi_tostr_domain_attr(__s1, __n, a3, &unk_29ED0916E);
        break;
      case 9:
        ofi_tostr_fabric_attr(__s1, __n, a3, &unk_29ED0916E);
        break;
      case 10:
        ofi_tostr_threading(__s1, __n, *a3);
        break;
      case 11:
        ofi_tostr_progress(__s1, __n, *a3);
        break;
      case 12:
        ofi_tostr_protocol(__s1, __n, *a3);
        break;
      case 13:
        ofi_tostr_msgorder(__s1, __n, *a3);
        break;
      case 14:
        ofi_tostr_mode(__s1, __n, *a3);
        break;
      case 15:
        v6 = *a3;
        if (v6 > 2)
        {
          ofi_strncatf(__s1, __n, "Unknown");
        }

        else
        {
          ofi_strncatf(__s1, __n, (&off_29F3874F8)[v6]);
        }

        break;
      case 16:
        ofi_tostr_atomic_type(__s1, __n, *a3);
        break;
      case 17:
        ofi_tostr_atomic_op(__s1, __n, *a3);
        break;
      case 18:
        ofi_tostr_version(__s1, __n);
        break;
      case 19:
        ofi_tostr_eq_event(__s1, __n, *a3);
        break;
      case 20:
        ofi_tostr_cq_event_flags(__s1, __n, *a3);
        break;
      case 21:
        ofi_tostr_mr_mode(__s1, __n, *a3);
        break;
      case 22:
        ofi_tostr_op_type(__s1, __n, *a3);
        break;
      case 23:
        ofi_tostr_fid("fid: ", __s1, __n, a3);
        break;
      case 24:
        ofi_tostr_collective_op(__s1, __n, *a3);
        break;
      case 25:
        ofi_tostr_hmem_iface(__s1, __n, *a3);
        break;
      case 26:
        ofi_tostr_cq_format(__s1, __n, *a3);
        break;
      case 27:
        ofi_tostr_log_level(__s1, __n, *a3);
        break;
      case 28:
        ofi_tostr_log_subsys(__s1, __n, *a3);
        break;
      case 29:
        ofi_tostr_av_attr(__s1, __n, a3);
        break;
      case 30:
        ofi_tostr_cq_attr(__s1, __n, a3);
        break;
      case 31:
        ofi_tostr_mr_attr(__s1, __n, a3);
        break;
      case 32:
        ofi_tostr_cntr_attr(__s1, __n, a3);
        break;
      case 33:
        ofi_tostr_cq_err_entry(__s1, __n, a3);
        break;
      default:
        ofi_strncatf(__s1, __n, "Unknown type");
        break;
    }

    return __s1;
  }

  return result;
}

uint64_t ofi_tostr_info(char *a1, size_t a2, uint64_t a3)
{
  ofi_strncatf(a1, a2, "fi_info:\n");
  ofi_strncatf(a1, a2, "%scaps: [ ", "    ");
  ofi_tostr_caps(a1, a2, *(a3 + 8));
  ofi_strncatf(a1, a2, " ]\n");
  ofi_strncatf(a1, a2, "%smode: [ ", "    ");
  ofi_tostr_mode(a1, a2, *(a3 + 16));
  ofi_strncatf(a1, a2, " ]\n");
  ofi_strncatf(a1, a2, "%saddr_format: ", "    ");
  ofi_tostr_addr_format(a1, a2, *(a3 + 24));
  ofi_strncatf(a1, a2, "\n");
  ofi_strncatf(a1, a2, "%ssrc_addrlen: %zu\n", "    ", *(a3 + 32));
  ofi_strncatf(a1, a2, "%sdest_addrlen: %zu\n", "    ", *(a3 + 40));
  ofi_strncatf(a1, a2, "%ssrc_addr: ", "    ");
  ofi_tostr_addr(a1, a2, *(a3 + 24), *(a3 + 48));
  ofi_strncatf(a1, a2, "\n");
  ofi_strncatf(a1, a2, "%sdest_addr: ", "    ");
  ofi_tostr_addr(a1, a2, *(a3 + 24), *(a3 + 56));
  ofi_strncatf(a1, a2, "\n");
  ofi_tostr_fid("    handle: ", a1, a2, *(a3 + 64));
  ofi_tostr_tx_attr(a1, a2, *(a3 + 72), "    ");
  ofi_tostr_rx_attr(a1, a2, *(a3 + 80), "    ");
  ofi_tostr_ep_attr(a1, a2, *(a3 + 88), "    ");
  ofi_tostr_domain_attr(a1, a2, *(a3 + 96), "    ");
  ofi_tostr_fabric_attr(a1, a2, *(a3 + 104), "    ");
  v6 = *(a3 + 112);

  return ofi_tostr_fid("    nic: ", a1, a2, v6);
}

uint64_t ofi_tostr_ep_type(const char *a1, size_t a2, unsigned int a3)
{
  if (a3 > 3)
  {
    return ofi_strncatf(a1, a2, "Unknown");
  }

  else
  {
    return ofi_strncatf(a1, a2, (&off_29F3870A8)[a3]);
  }
}

size_t ofi_tostr_caps(const char *a1, size_t a2, uint64_t a3)
{
  if ((a3 & 2) != 0)
  {
    ofi_strncatf(a1, a2, "FI_MSG, ");
    if ((a3 & 4) == 0)
    {
LABEL_3:
      if ((a3 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_35;
    }
  }

  else if ((a3 & 4) == 0)
  {
    goto LABEL_3;
  }

  ofi_strncatf(a1, a2, "FI_RMA, ");
  if ((a3 & 8) == 0)
  {
LABEL_4:
    if ((a3 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_36;
  }

LABEL_35:
  ofi_strncatf(a1, a2, "FI_TAGGED, ");
  if ((a3 & 0x10) == 0)
  {
LABEL_5:
    if ((a3 & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_37;
  }

LABEL_36:
  ofi_strncatf(a1, a2, "FI_ATOMIC, ");
  if ((a3 & 0x20) == 0)
  {
LABEL_6:
    if ((a3 & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_38;
  }

LABEL_37:
  ofi_strncatf(a1, a2, "FI_MULTICAST, ");
  if ((a3 & 0x40) == 0)
  {
LABEL_7:
    if ((a3 & 0x100) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_39;
  }

LABEL_38:
  ofi_strncatf(a1, a2, "FI_COLLECTIVE, ");
  if ((a3 & 0x100) == 0)
  {
LABEL_8:
    if ((a3 & 0x200) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_40;
  }

LABEL_39:
  ofi_strncatf(a1, a2, "FI_READ, ");
  if ((a3 & 0x200) == 0)
  {
LABEL_9:
    if ((a3 & 0x400) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_41;
  }

LABEL_40:
  ofi_strncatf(a1, a2, "FI_WRITE, ");
  if ((a3 & 0x400) == 0)
  {
LABEL_10:
    if ((a3 & 0x800) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_42;
  }

LABEL_41:
  ofi_strncatf(a1, a2, "FI_RECV, ");
  if ((a3 & 0x800) == 0)
  {
LABEL_11:
    if ((a3 & 0x1000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_43;
  }

LABEL_42:
  ofi_strncatf(a1, a2, "FI_SEND, ");
  if ((a3 & 0x1000) == 0)
  {
LABEL_12:
    if ((a3 & 0x2000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_44;
  }

LABEL_43:
  ofi_strncatf(a1, a2, "FI_REMOTE_READ, ");
  if ((a3 & 0x2000) == 0)
  {
LABEL_13:
    if ((a3 & 0x10000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_45;
  }

LABEL_44:
  ofi_strncatf(a1, a2, "FI_REMOTE_WRITE, ");
  if ((a3 & 0x10000) == 0)
  {
LABEL_14:
    if ((a3 & 0x20000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_46;
  }

LABEL_45:
  ofi_strncatf(a1, a2, "FI_MULTI_RECV, ");
  if ((a3 & 0x20000) == 0)
  {
LABEL_15:
    if ((a3 & 0x100000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_47;
  }

LABEL_46:
  ofi_strncatf(a1, a2, "FI_REMOTE_CQ_DATA, ");
  if ((a3 & 0x100000) == 0)
  {
LABEL_16:
    if ((a3 & 0x200000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_48;
  }

LABEL_47:
  ofi_strncatf(a1, a2, "FI_TRIGGER, ");
  if ((a3 & 0x200000) == 0)
  {
LABEL_17:
    if ((a3 & 0x2000000000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_49;
  }

LABEL_48:
  ofi_strncatf(a1, a2, "FI_FENCE, ");
  if ((a3 & 0x2000000000000) == 0)
  {
LABEL_18:
    if ((a3 & 0x4000000000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_50;
  }

LABEL_49:
  ofi_strncatf(a1, a2, "FI_RMA_PMEM, ");
  if ((a3 & 0x4000000000000) == 0)
  {
LABEL_19:
    if ((a3 & 0x8000000000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_51;
  }

LABEL_50:
  ofi_strncatf(a1, a2, "FI_SOURCE_ERR, ");
  if ((a3 & 0x8000000000000) == 0)
  {
LABEL_20:
    if ((a3 & 0x10000000000000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_52;
  }

LABEL_51:
  ofi_strncatf(a1, a2, "FI_LOCAL_COMM, ");
  if ((a3 & 0x10000000000000) == 0)
  {
LABEL_21:
    if ((a3 & 0x20000000000000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_53;
  }

LABEL_52:
  ofi_strncatf(a1, a2, "FI_REMOTE_COMM, ");
  if ((a3 & 0x20000000000000) == 0)
  {
LABEL_22:
    if ((a3 & 0x100000000000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_54;
  }

LABEL_53:
  ofi_strncatf(a1, a2, "FI_SHARED_AV, ");
  if ((a3 & 0x100000000000000) == 0)
  {
LABEL_23:
    if ((a3 & 0x200000000000000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_55;
  }

LABEL_54:
  ofi_strncatf(a1, a2, "FI_RMA_EVENT, ");
  if ((a3 & 0x200000000000000) == 0)
  {
LABEL_24:
    if ((a3 & 0x400000000000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_56;
  }

LABEL_55:
  ofi_strncatf(a1, a2, "FI_SOURCE, ");
  if ((a3 & 0x400000000000000) == 0)
  {
LABEL_25:
    if ((a3 & 0x800000000000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_57;
  }

LABEL_56:
  ofi_strncatf(a1, a2, "FI_NAMED_RX_CTX, ");
  if ((a3 & 0x800000000000000) == 0)
  {
LABEL_26:
    if ((a3 & 0x20000000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_58;
  }

LABEL_57:
  ofi_strncatf(a1, a2, "FI_DIRECTED_RECV, ");
  if ((a3 & 0x20000000000) == 0)
  {
LABEL_27:
    if ((a3 & 0x80000000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_59;
  }

LABEL_58:
  ofi_strncatf(a1, a2, "FI_AV_USER_ID, ");
  if ((a3 & 0x80000000000) == 0)
  {
LABEL_28:
    if ((a3 & 0x800000000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

LABEL_59:
  ofi_strncatf(a1, a2, "FI_PEER, ");
  if ((a3 & 0x800000000000) != 0)
  {
LABEL_29:
    ofi_strncatf(a1, a2, "FI_HMEM, ");
  }

LABEL_30:

  return ofi_remove_comma(a1);
}

size_t ofi_tostr_opflags(const char *a1, size_t a2, uint64_t a3)
{
  if ((a3 & 0x20) != 0)
  {
    ofi_strncatf(a1, a2, "FI_MULTICAST, ");
    if ((a3 & 0x10000) == 0)
    {
LABEL_3:
      if ((a3 & 0x20000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_23;
    }
  }

  else if ((a3 & 0x10000) == 0)
  {
    goto LABEL_3;
  }

  ofi_strncatf(a1, a2, "FI_MULTI_RECV, ");
  if ((a3 & 0x20000) == 0)
  {
LABEL_4:
    if ((a3 & 0x40000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_24;
  }

LABEL_23:
  ofi_strncatf(a1, a2, "FI_REMOTE_CQ_DATA, ");
  if ((a3 & 0x40000) == 0)
  {
LABEL_5:
    if ((a3 & 0x80000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_25;
  }

LABEL_24:
  ofi_strncatf(a1, a2, "FI_MORE, ");
  if ((a3 & 0x80000) == 0)
  {
LABEL_6:
    if ((a3 & 0x100000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_26;
  }

LABEL_25:
  ofi_strncatf(a1, a2, "FI_PEEK, ");
  if ((a3 & 0x100000) == 0)
  {
LABEL_7:
    if ((a3 & 0x200000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_27;
  }

LABEL_26:
  ofi_strncatf(a1, a2, "FI_TRIGGER, ");
  if ((a3 & 0x200000) == 0)
  {
LABEL_8:
    if ((a3 & 0x1000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_28;
  }

LABEL_27:
  ofi_strncatf(a1, a2, "FI_FENCE, ");
  if ((a3 & 0x1000000) == 0)
  {
LABEL_9:
    if ((a3 & 0x2000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_29;
  }

LABEL_28:
  ofi_strncatf(a1, a2, "FI_COMPLETION, ");
  if ((a3 & 0x2000000) == 0)
  {
LABEL_10:
    if ((a3 & 0x4000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_30;
  }

LABEL_29:
  ofi_strncatf(a1, a2, "FI_INJECT, ");
  if ((a3 & 0x4000000) == 0)
  {
LABEL_11:
    if ((a3 & 0x8000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_31;
  }

LABEL_30:
  ofi_strncatf(a1, a2, "FI_INJECT_COMPLETE, ");
  if ((a3 & 0x8000000) == 0)
  {
LABEL_12:
    if ((a3 & 0x10000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_32;
  }

LABEL_31:
  ofi_strncatf(a1, a2, "FI_TRANSMIT_COMPLETE, ");
  if ((a3 & 0x10000000) == 0)
  {
LABEL_13:
    if ((a3 & 0x80000000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_33;
  }

LABEL_32:
  ofi_strncatf(a1, a2, "FI_DELIVERY_COMPLETE, ");
  if ((a3 & 0x80000000) == 0)
  {
LABEL_14:
    if ((a3 & 0x20000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_34;
  }

LABEL_33:
  ofi_strncatf(a1, a2, "FI_MATCH_COMPLETE, ");
  if ((a3 & 0x20000000) == 0)
  {
LABEL_15:
    if ((a3 & 0x800000000000000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_35;
  }

LABEL_34:
  ofi_strncatf(a1, a2, "FI_AFFINITY, ");
  if ((a3 & 0x800000000000000) == 0)
  {
LABEL_16:
    if ((a3 & 0x400000000000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

LABEL_35:
  ofi_strncatf(a1, a2, "FI_CLAIM, ");
  if ((a3 & 0x400000000000000) != 0)
  {
LABEL_17:
    ofi_strncatf(a1, a2, "FI_DISCARD, ");
  }

LABEL_18:

  return ofi_remove_comma(a1);
}

uint64_t ofi_tostr_addr_format(const char *a1, size_t a2, unsigned int a3)
{
  if (a3 > 0x10)
  {
    return ofi_strncatf(a1, a2, "Unknown");
  }

  else
  {
    return ofi_strncatf(a1, a2, (&off_29F3870C8)[a3]);
  }
}

uint64_t ofi_tostr_tx_attr(const char *a1, size_t a2, uint64_t *a3, const char *a4)
{
  if (!a3)
  {
    return ofi_strncatf(a1, a2, "%sfi_tx_attr: (null)\n");
  }

  ofi_strncatf(a1, a2, "%sfi_tx_attr:\n", a4);
  ofi_strncatf(a1, a2, "%s%scaps: [ ", a4, "    ");
  ofi_tostr_caps(a1, a2, *a3);
  ofi_strncatf(a1, a2, " ]\n");
  ofi_strncatf(a1, a2, "%s%smode: [ ", a4, "    ");
  ofi_tostr_mode(a1, a2, a3[1]);
  ofi_strncatf(a1, a2, " ]\n");
  ofi_strncatf(a1, a2, "%s%sop_flags: [ ", a4, "    ");
  ofi_tostr_opflags(a1, a2, a3[2]);
  ofi_strncatf(a1, a2, " ]\n");
  ofi_strncatf(a1, a2, "%s%smsg_order: [ ", a4, "    ");
  ofi_tostr_msgorder(a1, a2, a3[3]);
  ofi_strncatf(a1, a2, " ]\n");
  ofi_strncatf(a1, a2, "%s%sinject_size: %zu\n", a4, "    ", a3[5]);
  ofi_strncatf(a1, a2, "%s%ssize: %zu\n", a4, "    ", a3[6]);
  ofi_strncatf(a1, a2, "%s%siov_limit: %zu\n", a4, "    ", a3[7]);
  ofi_strncatf(a1, a2, "%s%srma_iov_limit: %zu\n", a4, "    ", a3[8]);
  return ofi_strncatf(a1, a2, "%s%stclass: 0x%x\n");
}

uint64_t ofi_tostr_rx_attr(const char *a1, size_t a2, uint64_t *a3, const char *a4)
{
  if (!a3)
  {
    return ofi_strncatf(a1, a2, "%sfi_rx_attr: (null)\n");
  }

  ofi_strncatf(a1, a2, "%sfi_rx_attr:\n", a4);
  ofi_strncatf(a1, a2, "%s%scaps: [ ", a4, "    ");
  ofi_tostr_caps(a1, a2, *a3);
  ofi_strncatf(a1, a2, " ]\n");
  ofi_strncatf(a1, a2, "%s%smode: [ ", a4, "    ");
  ofi_tostr_mode(a1, a2, a3[1]);
  ofi_strncatf(a1, a2, " ]\n");
  ofi_strncatf(a1, a2, "%s%sop_flags: [ ", a4, "    ");
  ofi_tostr_opflags(a1, a2, a3[2]);
  ofi_strncatf(a1, a2, " ]\n");
  ofi_strncatf(a1, a2, "%s%smsg_order: [ ", a4, "    ");
  ofi_tostr_msgorder(a1, a2, a3[3]);
  ofi_strncatf(a1, a2, " ]\n");
  ofi_strncatf(a1, a2, "%s%ssize: %zu\n", a4, "    ", a3[6]);
  return ofi_strncatf(a1, a2, "%s%siov_limit: %zu\n");
}

uint64_t ofi_tostr_ep_attr(const char *a1, size_t a2, uint64_t a3, const char *a4)
{
  if (!a3)
  {
    return ofi_strncatf(a1, a2, "%sfi_ep_attr: (null)\n");
  }

  ofi_strncatf(a1, a2, "%sfi_ep_attr:\n", a4);
  ofi_strncatf(a1, a2, "%s%stype: ", a4, "    ");
  ofi_tostr_ep_type(a1, a2, *a3);
  ofi_strncatf(a1, a2, "\n");
  ofi_strncatf(a1, a2, "%s%sprotocol: ", a4, "    ");
  ofi_tostr_protocol(a1, a2, *(a3 + 4));
  ofi_strncatf(a1, a2, "\n");
  ofi_strncatf(a1, a2, "%s%sprotocol_version: %d\n", a4, "    ", *(a3 + 8));
  ofi_strncatf(a1, a2, "%s%smax_msg_size: %zu\n", a4, "    ", *(a3 + 16));
  ofi_strncatf(a1, a2, "%s%smsg_prefix_size: %zu\n", a4, "    ", *(a3 + 24));
  ofi_strncatf(a1, a2, "%s%smax_order_raw_size: %zu\n", a4, "    ", *(a3 + 32));
  ofi_strncatf(a1, a2, "%s%smax_order_war_size: %zu\n", a4, "    ", *(a3 + 40));
  ofi_strncatf(a1, a2, "%s%smax_order_waw_size: %zu\n", a4, "    ", *(a3 + 48));
  ofi_strncatf(a1, a2, "%s%smem_tag_format: 0x%016llx\n", a4, "    ", *(a3 + 56));
  ofi_strncatf(a1, a2, "%s%stx_ctx_cnt: ", a4, "    ");
  if (*(a3 + 64) == -1)
  {
    ofi_strncatf(a1, a2, "FI_SHARED_CONTEXT\n");
  }

  else
  {
    ofi_strncatf(a1, a2, "%zu\n");
  }

  ofi_strncatf(a1, a2, "%s%srx_ctx_cnt: ", a4, "    ");
  if (*(a3 + 72) == -1)
  {
    ofi_strncatf(a1, a2, "FI_SHARED_CONTEXT\n");
  }

  else
  {
    ofi_strncatf(a1, a2, "%zu\n");
  }

  return ofi_strncatf(a1, a2, "%s%sauth_key_size: %zu\n");
}

uint64_t ofi_tostr_domain_attr(const char *a1, size_t a2, uint64_t a3, const char *a4)
{
  if (!a3)
  {
    return ofi_strncatf(a1, a2, "%sfi_domain_attr: (null)\n");
  }

  ofi_strncatf(a1, a2, "%sfi_domain_attr:\n", a4);
  ofi_strncatf(a1, a2, "%s%sdomain: 0x%x\n", a4, "    ", *a3);
  ofi_strncatf(a1, a2, "%s%sname: %s\n", a4, "    ", *(a3 + 8));
  ofi_strncatf(a1, a2, "%s%sthreading: ", a4, "    ");
  ofi_tostr_threading(a1, a2, *(a3 + 16));
  ofi_strncatf(a1, a2, "\n");
  ofi_strncatf(a1, a2, "%s%sprogress: ", a4, "    ");
  ofi_tostr_progress(a1, a2, *(a3 + 24));
  ofi_strncatf(a1, a2, "\n");
  ofi_strncatf(a1, a2, "%s%sresource_mgmt: ", a4, "    ");
  v8 = *(a3 + 28);
  if (v8 > 2)
  {
    ofi_strncatf(a1, a2, "Unknown");
  }

  else
  {
    ofi_strncatf(a1, a2, (&off_29F387150)[v8]);
  }

  ofi_strncatf(a1, a2, "\n");
  ofi_strncatf(a1, a2, "%s%sav_type: ", a4, "    ");
  v10 = *(a3 + 32);
  if (v10 > 2)
  {
    ofi_strncatf(a1, a2, "Unknown");
  }

  else
  {
    ofi_strncatf(a1, a2, (&off_29F3874F8)[v10]);
  }

  ofi_strncatf(a1, a2, "\n");
  ofi_strncatf(a1, a2, "%s%smr_mode: [ ", a4, "    ");
  ofi_tostr_mr_mode(a1, a2, *(a3 + 36));
  ofi_strncatf(a1, a2, " ]\n");
  ofi_strncatf(a1, a2, "%s%smr_key_size: %zu\n", a4, "    ", *(a3 + 40));
  ofi_strncatf(a1, a2, "%s%scq_data_size: %zu\n", a4, "    ", *(a3 + 48));
  ofi_strncatf(a1, a2, "%s%scq_cnt: %zu\n", a4, "    ", *(a3 + 56));
  ofi_strncatf(a1, a2, "%s%sep_cnt: %zu\n", a4, "    ", *(a3 + 64));
  ofi_strncatf(a1, a2, "%s%stx_ctx_cnt: %zu\n", a4, "    ", *(a3 + 72));
  ofi_strncatf(a1, a2, "%s%srx_ctx_cnt: %zu\n", a4, "    ", *(a3 + 80));
  ofi_strncatf(a1, a2, "%s%smax_ep_tx_ctx: %zu\n", a4, "    ", *(a3 + 88));
  ofi_strncatf(a1, a2, "%s%smax_ep_rx_ctx: %zu\n", a4, "    ", *(a3 + 96));
  ofi_strncatf(a1, a2, "%s%smax_ep_stx_ctx: %zu\n", a4, "    ", *(a3 + 104));
  ofi_strncatf(a1, a2, "%s%smax_ep_srx_ctx: %zu\n", a4, "    ", *(a3 + 112));
  ofi_strncatf(a1, a2, "%s%scntr_cnt: %zu\n", a4, "    ", *(a3 + 120));
  ofi_strncatf(a1, a2, "%s%smr_iov_limit: %zu\n", a4, "    ", *(a3 + 128));
  ofi_strncatf(a1, a2, "%s%scaps: [ ", a4, "    ");
  ofi_tostr_caps(a1, a2, *(a3 + 136));
  ofi_strncatf(a1, a2, " ]\n");
  ofi_strncatf(a1, a2, "%s%smode: [ ", a4, "    ");
  ofi_tostr_mode(a1, a2, *(a3 + 144));
  ofi_strncatf(a1, a2, " ]\n");
  ofi_strncatf(a1, a2, "%s%sauth_key_size: %zu\n", a4, "    ", *(a3 + 160));
  ofi_strncatf(a1, a2, "%s%smax_err_data: %zu\n", a4, "    ", *(a3 + 168));
  ofi_strncatf(a1, a2, "%s%smr_cnt: %zu\n", a4, "    ", *(a3 + 176));
  return ofi_strncatf(a1, a2, "%s%stclass: 0x%x\n");
}

uint64_t ofi_tostr_fabric_attr(const char *a1, size_t a2, uint64_t a3, const char *a4)
{
  if (!a3)
  {
    return ofi_strncatf(a1, a2, "%sfi_fabric_attr: (null)\n");
  }

  ofi_strncatf(a1, a2, "%sfi_fabric_attr:\n", a4);
  ofi_strncatf(a1, a2, "%s%sname: %s\n", a4, "    ", *(a3 + 8));
  ofi_strncatf(a1, a2, "%s%sprov_name: %s\n", a4, "    ", *(a3 + 16));
  ofi_strncatf(a1, a2, "%s%sprov_version: %d.%d\n", a4, "    ", HIWORD(*(a3 + 24)), *(a3 + 24));
  return ofi_strncatf(a1, a2, "%s%sapi_version: %d.%d\n");
}

uint64_t ofi_tostr_threading(const char *a1, size_t a2, unsigned int a3)
{
  if (a3 > 4)
  {
    return ofi_strncatf(a1, a2, "Unknown");
  }

  else
  {
    return ofi_strncatf(a1, a2, (&off_29F387168)[a3]);
  }
}

uint64_t ofi_tostr_progress(const char *a1, size_t a2, unsigned int a3)
{
  if (a3 > 3)
  {
    return ofi_strncatf(a1, a2, "Unknown");
  }

  else
  {
    return ofi_strncatf(a1, a2, (&off_29F387190)[a3]);
  }
}

uint64_t ofi_tostr_protocol(const char *a1, size_t a2, unsigned int a3)
{
  if (a3 > 0x1F)
  {
    return ofi_strncatf(a1, a2, "Unknown");
  }

  else
  {
    return ofi_strncatf(a1, a2, (&off_29F3871B0)[a3]);
  }
}

size_t ofi_tostr_msgorder(const char *a1, size_t a2, uint64_t a3)
{
  if (a3)
  {
    ofi_strncatf(a1, a2, "FI_ORDER_RAR, ");
    if ((a3 & 2) == 0)
    {
LABEL_3:
      if ((a3 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_24;
    }
  }

  else if ((a3 & 2) == 0)
  {
    goto LABEL_3;
  }

  ofi_strncatf(a1, a2, "FI_ORDER_RAW, ");
  if ((a3 & 4) == 0)
  {
LABEL_4:
    if ((a3 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_25;
  }

LABEL_24:
  ofi_strncatf(a1, a2, "FI_ORDER_RAS, ");
  if ((a3 & 8) == 0)
  {
LABEL_5:
    if ((a3 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_26;
  }

LABEL_25:
  ofi_strncatf(a1, a2, "FI_ORDER_WAR, ");
  if ((a3 & 0x10) == 0)
  {
LABEL_6:
    if ((a3 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_27;
  }

LABEL_26:
  ofi_strncatf(a1, a2, "FI_ORDER_WAW, ");
  if ((a3 & 0x20) == 0)
  {
LABEL_7:
    if ((a3 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_28;
  }

LABEL_27:
  ofi_strncatf(a1, a2, "FI_ORDER_WAS, ");
  if ((a3 & 0x40) == 0)
  {
LABEL_8:
    if ((a3 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_29;
  }

LABEL_28:
  ofi_strncatf(a1, a2, "FI_ORDER_SAR, ");
  if ((a3 & 0x80) == 0)
  {
LABEL_9:
    if ((a3 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_30;
  }

LABEL_29:
  ofi_strncatf(a1, a2, "FI_ORDER_SAW, ");
  if ((a3 & 0x100) == 0)
  {
LABEL_10:
    if ((a3 & 0x100000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_31;
  }

LABEL_30:
  ofi_strncatf(a1, a2, "FI_ORDER_SAS, ");
  if ((a3 & 0x100000000) == 0)
  {
LABEL_11:
    if ((a3 & 0x200000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_32;
  }

LABEL_31:
  ofi_strncatf(a1, a2, "FI_ORDER_RMA_RAR, ");
  if ((a3 & 0x200000000) == 0)
  {
LABEL_12:
    if ((a3 & 0x400000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_33;
  }

LABEL_32:
  ofi_strncatf(a1, a2, "FI_ORDER_RMA_RAW, ");
  if ((a3 & 0x400000000) == 0)
  {
LABEL_13:
    if ((a3 & 0x800000000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_34;
  }

LABEL_33:
  ofi_strncatf(a1, a2, "FI_ORDER_RMA_WAR, ");
  if ((a3 & 0x800000000) == 0)
  {
LABEL_14:
    if ((a3 & 0x1000000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_35;
  }

LABEL_34:
  ofi_strncatf(a1, a2, "FI_ORDER_RMA_WAW, ");
  if ((a3 & 0x1000000000) == 0)
  {
LABEL_15:
    if ((a3 & 0x2000000000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_36;
  }

LABEL_35:
  ofi_strncatf(a1, a2, "FI_ORDER_ATOMIC_RAR, ");
  if ((a3 & 0x2000000000) == 0)
  {
LABEL_16:
    if ((a3 & 0x4000000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_37;
  }

LABEL_36:
  ofi_strncatf(a1, a2, "FI_ORDER_ATOMIC_RAW, ");
  if ((a3 & 0x4000000000) == 0)
  {
LABEL_17:
    if ((a3 & 0x8000000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_37:
  ofi_strncatf(a1, a2, "FI_ORDER_ATOMIC_WAR, ");
  if ((a3 & 0x8000000000) != 0)
  {
LABEL_18:
    ofi_strncatf(a1, a2, "FI_ORDER_ATOMIC_WAW, ");
  }

LABEL_19:

  return ofi_remove_comma(a1);
}

size_t ofi_tostr_mode(const char *a1, size_t a2, uint64_t a3)
{
  if ((a3 & 0x800000000000000) != 0)
  {
    ofi_strncatf(a1, a2, "FI_CONTEXT, ");
    if ((a3 & 0x400000000000000) == 0)
    {
LABEL_3:
      if ((a3 & 0x200000000000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((a3 & 0x400000000000000) == 0)
  {
    goto LABEL_3;
  }

  ofi_strncatf(a1, a2, "FI_MSG_PREFIX, ");
  if ((a3 & 0x200000000000000) == 0)
  {
LABEL_4:
    if ((a3 & 0x100000000000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  ofi_strncatf(a1, a2, "FI_ASYNC_IOV, ");
  if ((a3 & 0x100000000000000) == 0)
  {
LABEL_5:
    if ((a3 & 0x80000000000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  ofi_strncatf(a1, a2, "FI_RX_CQ_DATA, ");
  if ((a3 & 0x80000000000000) == 0)
  {
LABEL_6:
    if ((a3 & 0x10000000000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_15:
  ofi_strncatf(a1, a2, "FI_LOCAL_MR, ");
  if ((a3 & 0x10000000000000) != 0)
  {
LABEL_7:
    ofi_strncatf(a1, a2, "FI_CONTEXT2, ");
  }

LABEL_8:

  return ofi_remove_comma(a1);
}

uint64_t ofi_tostr_atomic_type(const char *a1, size_t a2, unsigned int a3)
{
  if (a3 > 0xF)
  {
    return ofi_strncatf(a1, a2, "Unknown");
  }

  else
  {
    return ofi_strncatf(a1, a2, (&off_29F3872B0)[a3]);
  }
}

uint64_t ofi_tostr_atomic_op(const char *a1, size_t a2, unsigned int a3)
{
  if (a3 > 0x12)
  {
    return ofi_strncatf(a1, a2, "Unknown");
  }

  else
  {
    return ofi_strncatf(a1, a2, (&off_29F387330)[a3]);
  }
}

uint64_t ofi_tostr_version(const char *a1, size_t a2)
{
  ofi_strncatf(a1, a2, "2.2.0rc1");

  return ofi_strncatf(a1, a2, &unk_29ED0916E);
}

uint64_t ofi_tostr_eq_event(const char *a1, size_t a2, unsigned int a3)
{
  if (a3 > 6)
  {
    return ofi_strncatf(a1, a2, "Unknown");
  }

  else
  {
    return ofi_strncatf(a1, a2, (&off_29F3873C8)[a3]);
  }
}

size_t ofi_tostr_cq_event_flags(const char *a1, size_t a2, uint64_t a3)
{
  if ((a3 & 0x800) != 0)
  {
    ofi_strncatf(a1, a2, "FI_SEND, ");
    if ((a3 & 0x400) == 0)
    {
LABEL_3:
      if ((a3 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_21;
    }
  }

  else if ((a3 & 0x400) == 0)
  {
    goto LABEL_3;
  }

  ofi_strncatf(a1, a2, "FI_RECV, ");
  if ((a3 & 4) == 0)
  {
LABEL_4:
    if ((a3 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_22;
  }

LABEL_21:
  ofi_strncatf(a1, a2, "FI_RMA, ");
  if ((a3 & 0x10) == 0)
  {
LABEL_5:
    if ((a3 & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_23;
  }

LABEL_22:
  ofi_strncatf(a1, a2, "FI_ATOMIC, ");
  if ((a3 & 2) == 0)
  {
LABEL_6:
    if ((a3 & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_24;
  }

LABEL_23:
  ofi_strncatf(a1, a2, "FI_MSG, ");
  if ((a3 & 8) == 0)
  {
LABEL_7:
    if ((a3 & 0x100) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_25;
  }

LABEL_24:
  ofi_strncatf(a1, a2, "FI_TAGGED, ");
  if ((a3 & 0x100) == 0)
  {
LABEL_8:
    if ((a3 & 0x200) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_26;
  }

LABEL_25:
  ofi_strncatf(a1, a2, "FI_READ, ");
  if ((a3 & 0x200) == 0)
  {
LABEL_9:
    if ((a3 & 0x1000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_27;
  }

LABEL_26:
  ofi_strncatf(a1, a2, "FI_WRITE, ");
  if ((a3 & 0x1000) == 0)
  {
LABEL_10:
    if ((a3 & 0x2000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_28;
  }

LABEL_27:
  ofi_strncatf(a1, a2, "FI_REMOTE_READ, ");
  if ((a3 & 0x2000) == 0)
  {
LABEL_11:
    if ((a3 & 0x20000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_29;
  }

LABEL_28:
  ofi_strncatf(a1, a2, "FI_REMOTE_WRITE, ");
  if ((a3 & 0x20000) == 0)
  {
LABEL_12:
    if ((a3 & 0x10000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_30;
  }

LABEL_29:
  ofi_strncatf(a1, a2, "FI_REMOTE_CQ_DATA, ");
  if ((a3 & 0x10000) == 0)
  {
LABEL_13:
    if ((a3 & 0x40000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_31;
  }

LABEL_30:
  ofi_strncatf(a1, a2, "FI_MULTI_RECV, ");
  if ((a3 & 0x40000) == 0)
  {
LABEL_14:
    if ((a3 & 0x800000000000000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_31:
  ofi_strncatf(a1, a2, "FI_MORE, ");
  if ((a3 & 0x800000000000000) != 0)
  {
LABEL_15:
    ofi_strncatf(a1, a2, "FI_CLAIM, ");
  }

LABEL_16:

  return ofi_remove_comma(a1);
}

size_t ofi_tostr_mr_mode(const char *a1, size_t a2, __int16 a3)
{
  if (a3)
  {
    ofi_strncatf(a1, a2, "FI_MR_BASIC, ");
    if ((a3 & 2) == 0)
    {
LABEL_3:
      if ((a3 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_19;
    }
  }

  else if ((a3 & 2) == 0)
  {
    goto LABEL_3;
  }

  ofi_strncatf(a1, a2, "FI_MR_SCALABLE, ");
  if ((a3 & 4) == 0)
  {
LABEL_4:
    if ((a3 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_20;
  }

LABEL_19:
  ofi_strncatf(a1, a2, "FI_MR_LOCAL, ");
  if ((a3 & 8) == 0)
  {
LABEL_5:
    if ((a3 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_21;
  }

LABEL_20:
  ofi_strncatf(a1, a2, "FI_MR_RAW, ");
  if ((a3 & 0x10) == 0)
  {
LABEL_6:
    if ((a3 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_22;
  }

LABEL_21:
  ofi_strncatf(a1, a2, "FI_MR_VIRT_ADDR, ");
  if ((a3 & 0x20) == 0)
  {
LABEL_7:
    if ((a3 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_23;
  }

LABEL_22:
  ofi_strncatf(a1, a2, "FI_MR_ALLOCATED, ");
  if ((a3 & 0x40) == 0)
  {
LABEL_8:
    if ((a3 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_24;
  }

LABEL_23:
  ofi_strncatf(a1, a2, "FI_MR_PROV_KEY, ");
  if ((a3 & 0x80) == 0)
  {
LABEL_9:
    if ((a3 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_25;
  }

LABEL_24:
  ofi_strncatf(a1, a2, "FI_MR_MMU_NOTIFY, ");
  if ((a3 & 0x100) == 0)
  {
LABEL_10:
    if ((a3 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_26;
  }

LABEL_25:
  ofi_strncatf(a1, a2, "FI_MR_RMA_EVENT, ");
  if ((a3 & 0x200) == 0)
  {
LABEL_11:
    if ((a3 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_27;
  }

LABEL_26:
  ofi_strncatf(a1, a2, "FI_MR_ENDPOINT, ");
  if ((a3 & 0x400) == 0)
  {
LABEL_12:
    if ((a3 & 0x800) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_27:
  ofi_strncatf(a1, a2, "FI_MR_HMEM, ");
  if ((a3 & 0x800) != 0)
  {
LABEL_13:
    ofi_strncatf(a1, a2, "FI_MR_COLLECTIVE, ");
  }

LABEL_14:

  return ofi_remove_comma(a1);
}

uint64_t ofi_tostr_op_type(const char *a1, size_t a2, unsigned int a3)
{
  if (a3 > 0xA)
  {
    return ofi_strncatf(a1, a2, "Unknown");
  }

  else
  {
    return ofi_strncatf(a1, a2, (&off_29F387400)[a3]);
  }
}

uint64_t ofi_tostr_fid(const char *a1, char *__s1, size_t __n, void *a4)
{
  if (!a4)
  {
    return ofi_strncatf(__s1, __n, "%s%p\n", a1, a4);
  }

  v6 = a4[2];
  if (!v6 || *v6 < 0x29uLL || !v6[5])
  {
    return ofi_strncatf(__s1, __n, "%s%p\n", a1, a4);
  }

  v9 = v6[5];
  v7 = __n - strnlen(__s1, __n);

  return v9(a4, __s1, v7);
}

uint64_t ofi_tostr_collective_op(const char *a1, size_t a2, unsigned int a3)
{
  if (a3 > 8)
  {
    return ofi_strncatf(a1, a2, "Unknown");
  }

  else
  {
    return ofi_strncatf(a1, a2, (&off_29F387458)[a3]);
  }
}

uint64_t ofi_tostr_hmem_iface(const char *a1, size_t a2, unsigned int a3)
{
  if (a3 > 5)
  {
    return ofi_strncatf(a1, a2, "Unknown");
  }

  else
  {
    return ofi_strncatf(a1, a2, (&off_29F3874A0)[a3]);
  }
}

uint64_t ofi_tostr_cq_format(const char *a1, size_t a2, unsigned int a3)
{
  if (a3 > 4)
  {
    return ofi_strncatf(a1, a2, "Unknown");
  }

  else
  {
    return ofi_strncatf(a1, a2, (&off_29F3874D0)[a3]);
  }
}

uint64_t ofi_tostr_av_attr(const char *a1, size_t a2, unsigned int *a3)
{
  ofi_strncatf(a1, a2, "fi_av_attr:\n");
  ofi_strncatf(a1, a2, "%stype: ", "    ");
  v6 = *a3;
  if (v6 > 2)
  {
    ofi_strncatf(a1, a2, "Unknown");
  }

  else
  {
    ofi_strncatf(a1, a2, (&off_29F3874F8)[v6]);
  }

  ofi_strncatf(a1, a2, "\n");
  ofi_strncatf(a1, a2, "%scount: %zu\n", "    ", *(a3 + 1));
  ofi_strncatf(a1, a2, "%sep_per_node: %zu\n", "    ", *(a3 + 2));
  ofi_strncatf(a1, a2, "%sname: %s\n", "    ", *(a3 + 3));
  ofi_strncatf(a1, a2, "%sflags: [ ", "    ");
  v7 = *(a3 + 5);
  if ((v7 & 0x1000000) != 0)
  {
    ofi_strncatf(a1, a2, "FI_EVENT, ");
    if ((v7 & 0x100) == 0)
    {
LABEL_6:
      if ((v7 & 0x800000000000000) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }
  }

  else if ((v7 & 0x100) == 0)
  {
    goto LABEL_6;
  }

  ofi_strncatf(a1, a2, "FI_READ, ");
  if ((v7 & 0x800000000000000) != 0)
  {
LABEL_7:
    ofi_strncatf(a1, a2, "FI_SYMMETRIC, ");
  }

LABEL_8:
  ofi_remove_comma(a1);

  return ofi_strncatf(a1, a2, " ]\n");
}

uint64_t ofi_tostr_cq_attr(const char *a1, size_t a2, uint64_t a3)
{
  ofi_strncatf(a1, a2, "fi_cq_attr:\n");
  ofi_strncatf(a1, a2, "%ssize: %zu\n", "    ", *a3);
  ofi_strncatf(a1, a2, "%sflags: [ ", "    ");
  if ((*(a3 + 11) & 0x20) != 0)
  {
    ofi_strncatf(a1, a2, "FI_AFFINITY, ");
  }

  ofi_remove_comma(a1);
  ofi_strncatf(a1, a2, " ]\n");
  ofi_strncatf(a1, a2, "%sformat: ", "    ");
  ofi_tostr_cq_format(a1, a2, *(a3 + 16));
  ofi_strncatf(a1, a2, "\n");
  ofi_strncatf(a1, a2, "%swait_obj: ", "    ");
  ofi_tostr_wait_obj(a1, a2, *(a3 + 20));
  ofi_strncatf(a1, a2, "\n");
  ofi_strncatf(a1, a2, "%ssignaling_vector: %d\n", "    ", *(a3 + 24));
  ofi_strncatf(a1, a2, "%swait_cond: ", "    ");
  v6 = *(a3 + 28);
  v7 = "Unknown";
  if (v6 == 1)
  {
    v7 = "FI_CQ_COND_THRESHOLD";
  }

  if (v6)
  {
    ofi_strncatf(a1, a2, v7);
  }

  else
  {
    ofi_strncatf(a1, a2, "FI_CQ_COND_NONE");
  }

  return ofi_strncatf(a1, a2, "\n");
}

uint64_t ofi_tostr_mr_attr(const char *a1, size_t a2, uint64_t a3)
{
  ofi_strncatf(a1, a2, "fi_mr_attr:\n");
  ofi_strncatf(a1, a2, "%smr_iov: %p\n", "    ", *a3);
  ofi_strncatf(a1, a2, "%siov_count: %zu\n", "    ", *(a3 + 8));
  ofi_strncatf(a1, a2, "%saccess: [ ", "    ");
  v6 = *(a3 + 16);
  if ((v6 & 0x400) != 0)
  {
    ofi_strncatf(a1, a2, "FI_RECV, ");
    if ((v6 & 0x800) == 0)
    {
LABEL_3:
      if ((v6 & 0x100) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((v6 & 0x800) == 0)
  {
    goto LABEL_3;
  }

  ofi_strncatf(a1, a2, "FI_SEND, ");
  if ((v6 & 0x100) == 0)
  {
LABEL_4:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  ofi_strncatf(a1, a2, "FI_READ, ");
  if ((v6 & 0x200) == 0)
  {
LABEL_5:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  ofi_strncatf(a1, a2, "FI_WRITE, ");
  if ((v6 & 0x1000) == 0)
  {
LABEL_6:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  ofi_strncatf(a1, a2, "FI_REMOTE_READ, ");
  if ((v6 & 0x2000) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_17:
  ofi_strncatf(a1, a2, "FI_REMOTE_WRITE, ");
  if ((v6 & 0x40) != 0)
  {
LABEL_8:
    ofi_strncatf(a1, a2, "FI_COLLECTIVE, ");
  }

LABEL_9:
  ofi_remove_comma(a1);
  ofi_strncatf(a1, a2, " ]\n");
  ofi_strncatf(a1, a2, "%soffset: 0x%lx\n", "    ", *(a3 + 24));
  ofi_strncatf(a1, a2, "%srequested_key: 0x%lx\n", "    ", *(a3 + 32));
  ofi_strncatf(a1, a2, "%scontext: %p\n", "    ", *(a3 + 40));
  ofi_strncatf(a1, a2, "%sauth_key_size: %zu\n", "    ", *(a3 + 48));
  ofi_strncatf(a1, a2, "%siface: ", "    ");
  ofi_tostr_hmem_iface(a1, a2, *(a3 + 64));

  return ofi_strncatf(a1, a2, "\n");
}

uint64_t ofi_tostr_cntr_attr(const char *a1, size_t a2, uint64_t a3)
{
  ofi_strncatf(a1, a2, "fi_cntr_attr:\n");
  ofi_strncatf(a1, a2, "%sevents: ", "    ");
  v6 = "Unknown";
  if (*a3 == 1)
  {
    v6 = "FI_CNTR_EVENTS_BYTES";
  }

  if (*a3)
  {
    ofi_strncatf(a1, a2, v6);
  }

  else
  {
    ofi_strncatf(a1, a2, "FI_CNTR_EVENTS_COMP");
  }

  ofi_strncatf(a1, a2, "\n");
  ofi_strncatf(a1, a2, "%swait_obj: ", "    ");
  ofi_tostr_wait_obj(a1, a2, *(a3 + 4));
  ofi_strncatf(a1, a2, "\n");
  return ofi_strncatf(a1, a2, "%sflags: 0x%lx\n", "    ", *(a3 + 16));
}

uint64_t ofi_tostr_cq_err_entry(const char *a1, size_t a2, uint64_t a3)
{
  ofi_strncatf(a1, a2, "fi_cq_err_entry:\n");
  ofi_strncatf(a1, a2, "%sop_context: %p\n", "    ", *a3);
  ofi_strncatf(a1, a2, "%sflags: 0x%lx\n", "    ", *(a3 + 8));
  ofi_strncatf(a1, a2, "%slen: %zu\n", "    ", *(a3 + 16));
  ofi_strncatf(a1, a2, "%sbuf: %p\n", "    ", *(a3 + 24));
  ofi_strncatf(a1, a2, "%sdata: %lu\n", "    ", *(a3 + 32));
  ofi_strncatf(a1, a2, "%stag: 0x%lx\n", "    ", *(a3 + 40));
  ofi_strncatf(a1, a2, "%solen: %zu\n", "    ", *(a3 + 48));
  ofi_strncatf(a1, a2, "%serr: %d\n", "    ", *(a3 + 56));
  ofi_strncatf(a1, a2, "%sprov_errno: %d\n", "    ", *(a3 + 56));
  ofi_strncatf(a1, a2, "%serr_data: %p\n", "    ", *(a3 + 64));
  return ofi_strncatf(a1, a2, "%serr_data_size: %zu\n", "    ", *(a3 + 72));
}

char *fi_tostr(uint64_t *a1, int a2)
{
  result = fi_tostr_buf;
  if (fi_tostr_buf || (result = malloc_type_calloc(0x2000uLL, 1uLL, 0x91E32E21uLL), (fi_tostr_buf = result) != 0))
  {

    return fi_tostr_r(result, 0x2000uLL, a1, a2);
  }

  return result;
}

const char *ofi_tostr_addr(const char *a1, uint64_t a2, int a3, unsigned __int8 *a4)
{
  v8 = strlen(a1);
  v9 = a2 - v8;
  v12 = a2 - v8;
  if (a4)
  {
    return ofi_straddr(&a1[v8], &v12, a3, a4);
  }

  v11 = &a1[v8];

  return ofi_strncatf(v11, v9, "(null)");
}

uint64_t ofi_tostr_wait_obj(const char *a1, size_t a2, unsigned int a3)
{
  if (a3 > 6)
  {
    return ofi_strncatf(a1, a2, "Unknown");
  }

  else
  {
    return ofi_strncatf(a1, a2, (&off_29F387510)[a3]);
  }
}

uint64_t ofi_rm_substr(char *a1, const char *a2)
{
  v3 = strstr(a1, a2);
  if (!v3)
  {
    return 4294967274;
  }

  v4 = v3;
  v5 = strlen(a2);
  v6 = strlen(&v4[v5]);
  memmove(v4, &v4[v5], v6 + 1);
  return 0;
}

uint64_t ofi_rm_substr_delim(char *a1, char *__s, uint64_t a3)
{
  v6 = strlen(__s);
  v7 = malloc_type_malloc(v6 + 2, 0x6B6B7BA0uLL);
  if (!v7)
  {
    return 4294967284;
  }

  v8 = v7;
  snprintf(v7, v6 + 2, "%c%s", a3, __s);
  if (ofi_rm_substr(a1, v8) && (snprintf(v8, v6 + 2, "%s%c", __s, a3), ofi_rm_substr(a1, v8)))
  {
    v9 = ofi_rm_substr(a1, __s);
  }

  else
  {
    v9 = 0;
  }

  free(v8);
  return v9;
}

void *ofi_split_and_alloc(const char *a1, const char *a2, void *a3)
{
  v3 = 0;
  if (a1 && a2)
  {
    v6 = strdup(a1);
    if (v6)
    {
      v7 = v6;
      v8 = *v6;
      if (*v6)
      {
        v9 = 1;
        v10 = v6;
        do
        {
          v11 = a2 + 1;
          v12 = *a2;
          if (*a2)
          {
            while (v8 != v12)
            {
              v13 = *v11++;
              v12 = v13;
              if (!v13)
              {
                goto LABEL_11;
              }
            }

            ++v9;
          }

LABEL_11:
          v14 = *++v10;
          v8 = v14;
        }

        while (v14);
      }

      else
      {
        v9 = 1;
      }

      v3 = malloc_type_calloc(v9 + 1, 8uLL, 0x10040436913F5uLL);
      if (v3)
      {
        v15 = 0;
        __stringp = v7;
        do
        {
          v3[v15++] = strsep(&__stringp, a2);
        }

        while (__stringp);
        if (v9 != v15)
        {
          ofi_split_and_alloc_cold_1();
        }

        if (a3)
        {
          *a3 = v9;
        }
      }

      else
      {
        free(v7);
      }
    }

    else
    {
      return 0;
    }
  }

  return v3;
}

void ofi_free_string_array(void **a1)
{
  if (a1)
  {
    free(*a1);
  }

  free(a1);
}

uint64_t ofi_strncatf(const char *a1, size_t a2, const char *a3, ...)
{
  va_start(va, a3);
  v6 = strnlen(a1, a2);
  return vsnprintf(&a1[v6], ~v6 + a2, a3, va);
}

const char *ofi_tostr_size(const char *a1, size_t a2, unint64_t a3)
{
  v4 = 0x100000;
  v5 = 1024;
  if (a3 <= 0x3FF)
  {
    v5 = 1;
  }

  if (!(a3 >> 20))
  {
    v4 = v5;
  }

  if (a3 >> 30)
  {
    v6 = 0x40000000;
  }

  else
  {
    v6 = v4;
  }

  if (a3 / v6 <= 9 && v6 <= 10 * ((v6 - 1) & a3))
  {
    ofi_strncatf(a1, a2, "%lu.%lu%c");
  }

  else
  {
    ofi_strncatf(a1, a2, "%lu%c");
  }

  return a1;
}

const char *ofi_tostr_count(const char *a1, size_t a2, unint64_t a3)
{
  if (a3 < 0x3B9ACA00)
  {
    if (a3 < 0xF4240)
    {
      if (a3 < 0x3E8)
      {
        ofi_strncatf(a1, a2, "%lu");
      }

      else
      {
        ofi_strncatf(a1, a2, "%luK");
      }
    }

    else
    {
      ofi_strncatf(a1, a2, "%luM");
    }
  }

  else
  {
    ofi_strncatf(a1, a2, "%luB");
  }

  return a1;
}

uint64_t ofi_nic_tostr(void *a1, const char *a2, size_t a3)
{
  if (*a1 != 20)
  {
    ofi_nic_tostr_cold_1();
  }

  ofi_strncatf(a2, a3, "%snic:\n", "    ");
  v6 = a1[3];
  ofi_strncatf(a2, a3, "%sfi_device_attr:\n", "        ");
  ofi_strncatf(a2, a3, "%sname: %s\n", "            ", *v6);
  ofi_strncatf(a2, a3, "%sdevice_id: %s\n", "            ", v6[1]);
  ofi_strncatf(a2, a3, "%sdevice_version: %s\n", "            ", v6[2]);
  ofi_strncatf(a2, a3, "%svendor_id: %s\n", "            ", v6[3]);
  ofi_strncatf(a2, a3, "%sdriver: %s\n", "            ", v6[4]);
  ofi_strncatf(a2, a3, "%sfirmware: %s\n", "            ", v6[5]);
  v7 = a1[4];
  ofi_strncatf(a2, a3, "%sfi_bus_attr:\n", "        ");
  ofi_strncatf(a2, a3, "%sbus_type: ", "            ");
  v8 = "Unknown";
  if (*v7 == 1)
  {
    v8 = "FI_BUS_PCI";
  }

  if (*v7)
  {
    ofi_strncatf(a2, a3, v8);
  }

  else
  {
    ofi_strncatf(a2, a3, "FI_BUS_UNKNOWN");
  }

  ofi_strncatf(a2, a3, "\n");
  if (*v7 == 1)
  {
    ofi_strncatf(a2, a3, "%sfi_pci_attr:\n", "            ");
    ofi_strncatf(a2, a3, "%sdomain_id: %u\n", "                ", *(v7 + 4));
    ofi_strncatf(a2, a3, "%sbus_id: %u\n", "                ", *(v7 + 6));
    ofi_strncatf(a2, a3, "%sdevice_id: %u\n", "                ", *(v7 + 7));
    ofi_strncatf(a2, a3, "%sfunction_id: %u\n", "                ", *(v7 + 8));
  }

  v9 = a1[5];
  ofi_strncatf(a2, a3, "%sfi_link_attr:\n", "        ");
  ofi_strncatf(a2, a3, "%saddress: %s\n", "            ", *v9);
  ofi_strncatf(a2, a3, "%smtu: %zu\n", "            ", *(v9 + 8));
  ofi_strncatf(a2, a3, "%sspeed: %zu\n", "            ", *(v9 + 16));
  ofi_strncatf(a2, a3, "%sstate: ", "            ");
  v10 = *(v9 + 24);
  if (v10 > 2)
  {
    ofi_strncatf(a2, a3, "Unknown");
  }

  else
  {
    ofi_strncatf(a2, a3, (&off_29F387548)[v10]);
  }

  ofi_strncatf(a2, a3, "\n%snetwork_type: %s\n", "            ", *(v9 + 32));
  return 0;
}

uint64_t ofi_apply_filter(uint64_t a1, char *a2)
{
  v2 = *a1;
  if (*a1)
  {
    v5 = *v2;
    if (*v2)
    {
      v6 = v2 + 1;
      while (strcasecmp(a2, v5))
      {
        v7 = *v6++;
        v5 = v7;
        if (!v7)
        {
          goto LABEL_6;
        }
      }

      LOBYTE(v2) = *(a1 + 8);
    }

    else
    {
LABEL_6:
      LOBYTE(v2) = *(a1 + 8) ^ 1;
    }
  }

  return v2;
}

int *ofi_create_filter(int *result, const char *a2)
{
  *result = 0;
  *(result + 1) = 0;
  if (a2)
  {
    v2 = a2;
    v3 = result;
    if (*a2 == 94)
    {
      *(result + 8) = 1;
      v2 = a2 + 1;
    }

    v4 = ofi_split_and_alloc(v2, ",", 0);
    *v3 = v4;
    if (!v4)
    {
      result = fi_log_enabled(&core_prov, 0, 0);
      if (!result)
      {
        return result;
      }

      v21 = *__error();
      fi_log(&core_prov, 0, 0, "ofi_create_filter", 652, "unable to parse filter from: %s\n");
      goto LABEL_33;
    }

    v5 = v4;
    result = *v4;
    if (result)
    {
      v6 = 0;
      v23 = v5;
      while (1)
      {
        v7 = ofi_split_and_alloc(result, ";", 0);
        if (!v7)
        {
          break;
        }

        v8 = v7;
        v24 = v6;
        v9 = *v7;
        if (*v7)
        {
          v10 = 0;
          do
          {
            v11 = strlen(v9);
            if (!ofi_getprov(v9, v11))
            {
              if (fi_log_enabled(&core_prov, 0, 0))
              {
                v12 = *__error();
                fi_log(&core_prov, 0, 0, "verify_filter_names", 623, "provider %s is unknown, misspelled or DL provider?\n", v8[v10]);
                *__error() = v12;
              }

              v13 = prov_head;
              if (prov_head)
              {
                v14 = v8[v10];
                do
                {
                  v15 = v13[1];
                  v16 = strlen(v15);
                  v17 = strlen(v14);
                  if (v16 != v17)
                  {
                    v18 = v17;
                    if (!strncasecmp(v15, v14, v17))
                    {
                      if (v18 <= 5)
                      {
                        v19 = 2;
                      }

                      else
                      {
                        v19 = 5;
                      }

                      if (!strncasecmp(v15, v14, v19) && fi_log_enabled(&core_prov, 0, 0))
                      {
                        v20 = *__error();
                        fi_log(&core_prov, 0, 0, "ofi_closest_prov_names", 229, "Instead misspelled provider: %s, you may want: %s?\n", v14, v15);
                        *__error() = v20;
                      }
                    }
                  }

                  v13 = *v13;
                }

                while (v13);
              }
            }

            v9 = v8[++v10];
          }

          while (v9);
        }

        ofi_free_string_array(v8);
        v6 = v24 + 1;
        result = v23[v24 + 1];
        if (!result)
        {
          return result;
        }
      }

      if (fi_log_enabled(&core_prov, 0, 0))
      {
        v22 = *__error();
        fi_log(&core_prov, 0, 0, "verify_filter_names", 615, "unable to parse given filter string\n");
        *__error() = v22;
      }

      result = fi_log_enabled(&core_prov, 0, 0);
      if (result)
      {
        v21 = *__error();
        fi_log(&core_prov, 0, 0, "ofi_create_filter", 658, "unable to verify filter name\n");
LABEL_33:
        result = __error();
        *result = v21;
      }
    }
  }

  return result;
}

uint64_t fi_ini()
{
  v39 = 0;
  pthread_mutex_lock(&common_locks);
  v0 = &unk_2A1894000;
  if (ofi_init)
  {
    return pthread_mutex_unlock(&common_locks);
  }

  for (i = 0; i != 24; ++i)
  {
    v2 = ofi_alloc_prov((&off_29F3875E0)[i]);
    if (v2)
    {
      ofi_insert_prov(v2);
    }
  }

  fi_param_init();
  fi_log_init();
  ofi_dump_sysconfig();
  ofi_mem_init();
  ofi_pmem_init();
  ofi_perf_init();
  v41 = 0;
  fi_param_define(0, "hook", 0, "Intercept calls to underlying provider and apply the specified functionality to them.  Hook option: perf (gather performance data)");
  fi_param_get(0, "hook", &v41);
  if (v41)
  {
    hooks = ofi_split_and_alloc(v41, ";", &hook_cnt);
  }

  ofi_hmem_init();
  v3 = ofi_monitors_init();
  v4 = off_2A1C51020;
  v5 = 3;
  do
  {
    v3 = (*v4)(v3);
    if (!v3)
    {
      *(v4 - 8) = 1;
    }

    v4 += 4;
    --v5;
  }

  while (v5);
  fi_param_define(0, "provider", 0, "Only use specified provider (default: all available)");
  fi_param_get(0, "provider", &v39);
  ofi_create_filter(&prov_filter, v39);
  fi_param_define(0, "fork_unsafe", 2, "Whether use of fork() may be unsafe for some providers (default: no). Setting this to yes could improve performance at the expense of making fork() potentially unsafe");
  fi_param_define(0, "universe_size", 3, "Defines the maximum number of processes that will be used by distribute OFI application. The provider uses this to optimize resource allocations (default: provider specific)");
  fi_param_get(0, "universe_size", &ofi_universe_size);
  fi_param_define(0, "av_remove_cleanup", 2, "When true, release any underlying resources, such as hidden connections when removing an entry from an AV.  This can help save resources on AV entries that reference a peer which is no longer active.  However, it may abruptly terminate data transfers from peers that are active at the time their address is removed from the local AV.  (default: false)");
  fi_param_get(0, "av_remove_cleanup", &ofi_av_remove_cleanup);
  fi_param_define(0, "offload_coll_provider", 0, "The name of a colective offload provider (default: \t\t\tempty - no provider)");
  fi_param_get(0, "offload_coll_provider", &ofi_offload_coll_prov_name);
  __s = 0;
  v6 = dlopen(0, 2);
  if (!v6)
  {
    goto LABEL_55;
  }

  dlclose(v6);
  fi_param_define(0, "provider_path", 0, "Search for providers in specific path.  Path is specified similar to dir1:dir2:dir3.  If the path starts with @, loaded providers are given preference based on discovery order, rather than version. Optionally any of the dir can be replaced with + followed by the full path to a provider library, which specifies a preferred provider.  If registered successfully, a preferred provider has priority over other providers with the same name. (default: /usr/lib)");
  fi_param_get(0, "provider_path", &__s);
  v7 = __s;
  if (!__s)
  {
    goto LABEL_16;
  }

  if (*__s == 64)
  {
    prov_order = 1;
    if (strlen(__s) == 1)
    {
      v7 = "/usr/lib";
    }

    else
    {
      v7 = __s + 1;
    }
  }

  else if (!*__s)
  {
LABEL_16:
    v8 = prov_head;
    if (prov_head)
    {
      v41 = 0;
      do
      {
        v9 = *(v8 + 8);
        if (v9)
        {
          v10 = strncasecmp(*(v8 + 8), "ofi_", 4uLL);
          v11 = 4;
          if (v10)
          {
            v11 = 4 * (strncasecmp(v9, "off_", 4uLL) == 0);
          }

          if (asprintf(&v41, "%s%s%s%s", "lib", &v9[v11], "-", "fi.so") < 0)
          {
            if (fi_log_enabled(&core_prov, 0, 0))
            {
              v12 = *__error();
              fi_log(&core_prov, 0, 0, "ofi_find_prov_libs", 743, "asprintf failed to allocate memory\n");
              *__error() = v12;
            }
          }

          else
          {
            ofi_reg_dl_prov(v41, 0);
            free(v41);
          }
        }

        v8 = *v8;
      }

      while (v8);
    }

    v7 = "/usr/lib";
    v0 = &unk_2A1894000;
  }

  v13 = ofi_split_and_alloc(v7, ":", 0);
  if (!v13)
  {
    goto LABEL_55;
  }

  v14 = v13;
  v15 = *v13;
  if (*v13)
  {
    v16 = 0;
    v17 = 1;
    while (1)
    {
      if (*v15 == 43)
      {
        v20 = *(v15 + 1);
        v19 = v15 + 1;
        v18 = v20;
        if (v20)
        {
          if (v18 == 47)
          {
            if (!access(v19, 0))
            {
              if (fi_log_enabled(&core_prov, 2, 0))
              {
                v22 = *__error();
                fi_log(&core_prov, 2, 0, "ofi_load_preferred_dl_prov", 772, "loading preferred provider: %s\n", v19);
                *__error() = v22;
              }

              prov_preferred = 1;
              ofi_reg_dl_prov(v19, 1);
              prov_preferred = 0;
              goto LABEL_46;
            }

            if (fi_log_enabled(&core_prov, 0, 0))
            {
              v21 = *__error();
              fi_log(&core_prov, 0, 0, "ofi_load_preferred_dl_prov", 767, "preferred provider not found: %s\n");
LABEL_42:
              *__error() = v21;
            }
          }

          else if (fi_log_enabled(&core_prov, 0, 0))
          {
            v21 = *__error();
            fi_log(&core_prov, 0, 0, "ofi_load_preferred_dl_prov", 760, "invalid format for preferred provider: %s\n");
            goto LABEL_42;
          }
        }
      }

      else
      {
        ofi_ini_dir(v15);
        ++v16;
      }

LABEL_46:
      v15 = v14[v17++];
      if (!v15)
      {
        ofi_free_string_array(v14);
        if (!v16)
        {
          goto LABEL_50;
        }

        goto LABEL_55;
      }
    }
  }

  ofi_free_string_array(v13);
LABEL_50:
  v23 = ofi_split_and_alloc("/usr/lib", ":", 0);
  if (v23)
  {
    v24 = v23;
    v25 = *v23;
    if (v25)
    {
      v26 = (v24 + 1);
      do
      {
        ofi_ini_dir(v25);
        v27 = *v26++;
        v25 = v27;
      }

      while (v27);
    }

    ofi_free_string_array(v24);
  }

LABEL_55:
  v28 = fi_rxm_ini();
  ofi_register_provider(v28, 0);
  v29 = fi_udp_ini();
  ofi_register_provider(v29, 0);
  v30 = fi_sockets_ini();
  ofi_register_provider(v30, 0);
  v31 = fi_tcp_ini();
  ofi_register_provider(v31, 0);
  v32 = fi_hook_perf_ini();
  ofi_register_provider(v32, 0);
  v33 = fi_hook_trace_ini();
  ofi_register_provider(v33, 0);
  v34 = fi_hook_monitor_ini();
  ofi_register_provider(v34, 0);
  v35 = fi_debug_hook_ini();
  ofi_register_provider(v35, 0);
  v36 = fi_hook_noop_ini();
  ofi_register_provider(v36, 0);
  v37 = fi_coll_ini();
  ofi_register_provider(v37, 0);
  pthread_atfork(0, 0, ofi_memhooks_atfork_handler);
  v0[734] = 1;
  return pthread_mutex_unlock(&common_locks);
}

void ofi_register_provider(uint64_t a1, void *__handle)
{
  if (!a1 || !*(a1 + 40))
  {
    goto LABEL_12;
  }

  if (fi_log_enabled(&core_prov, 2, 0))
  {
    v4 = *__error();
    fi_log(&core_prov, 2, 0, "ofi_register_provider", 528, "registering provider: %s (%d.%d)\n", *(a1 + 40), HIWORD(*a1), *a1);
    *__error() = v4;
  }

  if (*(a1 + 56))
  {
    if (*(a1 + 4) <= 0x10002u)
    {
      if (fi_log_enabled(&core_prov, 2, 0))
      {
        v5 = *__error();
        fi_log(&core_prov, 2, 0, "ofi_register_provider", 546, "provider has unsupported FI version (provider %d.%d != libfabric %d.%d); ignoring\n", HIWORD(*(a1 + 4)));
LABEL_11:
        *__error() = v5;
        goto LABEL_12;
      }

      goto LABEL_12;
    }

    if (*(a1 + 48))
    {
      v6 = *(a1 + 40);
      if (!strncasecmp(v6, "ofi_", 4uLL))
      {
        v8 = 1;
      }

      else if (!strncasecmp(v6, "off_", 4uLL))
      {
        v8 = 3;
      }

      else
      {
        if (strncasecmp(v6, "lnx", 3uLL))
        {
          *(a1 + 8) = 0;
          v7 = byte_2A18949A8;
          goto LABEL_26;
        }

        v8 = 4;
      }
    }

    else
    {
      v8 = 2;
    }

    *(a1 + 8) = v8;
    if ((byte_2A18949A8 & 1) == 0)
    {
      goto LABEL_38;
    }

    v7 = 1;
LABEL_26:
    v9 = prov_filter;
    if (prov_filter)
    {
      v10 = *prov_filter;
      if (*prov_filter)
      {
        v11 = *(a1 + 40);
        v12 = (prov_filter + 8);
        v13 = *prov_filter;
        while (strcasecmp(v11, v13))
        {
          v14 = *v12++;
          v13 = v14;
          if (!v14)
          {
            if ((v7 & 1) == 0)
            {
              v15 = strlen(v11);
              v16 = (v9 + 8);
              while (strncasecmp(v11, v10, v15) || v10[v15] != 59)
              {
                v17 = *v16++;
                v10 = v17;
                if (!v17)
                {
                  goto LABEL_58;
                }
              }
            }

            goto LABEL_38;
          }
        }

        if ((v7 & 1) == 0)
        {
          goto LABEL_38;
        }

        goto LABEL_58;
      }

      if ((v7 & 1) == 0)
      {
LABEL_58:
        if (fi_log_enabled(&core_prov, 2, 0))
        {
          v24 = *__error();
          fi_log(&core_prov, 2, 0, "ofi_register_provider", 555, "%s filtered by provider include/exclude list, skipping\n", *(a1 + 40));
          *__error() = v24;
        }

        v18 = 1;
LABEL_39:
        v19 = *(a1 + 40);
        if (ofi_apply_filter(prov_log_filter, v19))
        {
          *(a1 + 12) = 1;
        }

        if (!strcasecmp(v19, "sockets") || !strcasecmp(v19, "shm") || !strcasecmp(v19, "efa") || !strcasecmp(v19, "psm3") || !strcasecmp(v19, "ucx") || !strcasecmp(v19, "cxi") || *(a1 + 8) == 1)
        {
          *(a1 + 13) = 1;
        }

        v20 = strlen(v19);
        v21 = ofi_getprov(v19, v20);
        if (v21 && (v22 = v21, !*(v21 + 16)))
        {
          *(v21 + 16) = a1;
          *(v21 + 24) = __handle;
          *(v21 + 33) = prov_preferred;
          if (!v18)
          {
            return;
          }
        }

        else
        {
          v23 = ofi_alloc_prov(v19);
          if (!v23)
          {
            goto LABEL_12;
          }

          v22 = v23;
          v23[2] = a1;
          v23[3] = __handle;
          *(v23 + 33) = prov_preferred;
          ofi_insert_prov(v23);
          if (!v18)
          {
            return;
          }
        }

        *(v22 + 32) = 1;
        return;
      }
    }

LABEL_38:
    v18 = 0;
    goto LABEL_39;
  }

  if (fi_log_enabled(&core_prov, 0, 0))
  {
    v5 = *__error();
    fi_log(&core_prov, 0, 0, "ofi_register_provider", 532, "provider missing mandatory entry points\n");
    goto LABEL_11;
  }

LABEL_12:

  ofi_cleanup_prov(a1, __handle);
}

uint64_t fi_fini()
{
  pthread_mutex_lock(&common_locks);
  if (ofi_init)
  {
    while (1)
    {
      v0 = prov_head;
      if (!prov_head)
      {
        break;
      }

      prov_head = *prov_head;
      ofi_cleanup_prov(*(v0 + 16), *(v0 + 24));
      free(*(v0 + 8));
      free(v0);
    }

    ofi_free_string_array(prov_filter);
    v1 = off_2A1C51028;
    v2 = 3;
    do
    {
      if (!(*v1)())
      {
        *(v1 - 16) = 0;
      }

      v1 += 4;
      --v2;
    }

    while (v2);
    ofi_monitors_cleanup();
    ofi_hmem_cleanup();
    if (hooks)
    {
      ofi_free_string_array(hooks);
    }

    ofi_mem_fini();
    fi_log_fini();
    fi_param_fini();
    ofi_init = 0;
  }

  return pthread_mutex_unlock(&common_locks);
}

void fi_freeinfo(void *a1)
{
  if (a1)
  {
    v1 = a1;
    do
    {
      v2 = v1;
      v1 = *v1;
      free(v2[6]);
      free(v2[7]);
      free(v2[9]);
      free(v2[10]);
      v3 = v2[11];
      if (v3)
      {
        free(*(v3 + 88));
        free(v2[11]);
      }

      v4 = v2[12];
      if (v4)
      {
        free(*(v4 + 152));
        free(*(v2[12] + 8));
        free(v2[12]);
      }

      v5 = v2[13];
      if (v5)
      {
        free(*(v5 + 8));
        free(*(v2[13] + 16));
        free(v2[13]);
      }

      v6 = v2[14];
      if (v6)
      {
        v7 = *(v6 + 16);
        if (v7)
        {
          if (*v7 >= 9uLL)
          {
            v8 = v7[1];
            if (v8)
            {
              v8();
            }
          }
        }
      }

      free(v2);
    }

    while (v1);
  }
}

uint64_t fi_getinfo(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v86 = 0;
  v87 = 0;
  fi_ini();
  if (a1 >= 0x20003)
  {
    if (fi_log_enabled(&core_prov, 0, 0))
    {
      v12 = *__error();
      fi_log(&core_prov, 0, 0, "fi_getinfo", 1334, "Requested version is newer than library\n");
      *__error() = v12;
    }

    return 4294967218;
  }

  if (a4 != 0x40000000000000)
  {
    if (a5 && (v22 = *(a5 + 104)) != 0 && (v23 = *(v22 + 16)) != 0)
    {
      v24 = ofi_split_and_alloc(v23, ";", &v86);
      if (!v24)
      {
        return 4294967284;
      }
    }

    else
    {
      v24 = 0;
    }

    v83 = a2;
    v84 = a3;
    v85 = a5;
    *a6 = 0;
    v25 = prov_head;
    if (!prov_head)
    {
      goto LABEL_94;
    }

    v81 = 0;
    v82 = a1;
    while (1)
    {
      v26 = *(v25 + 16);
      if (!v26)
      {
        goto LABEL_66;
      }

      v27 = *(v26 + 48);
      if (!v27 || (a4 & 0x1000000000000000) == 0 && (*(v25 + 32) & 1) != 0)
      {
        goto LABEL_66;
      }

      v28 = *(v26 + 8);
      if ((a4 & 0x2000000000000000) == 0 && v28 == 3)
      {
        goto LABEL_66;
      }

      v29 = v86 - 1;
      if (v86 - 1 >= -1)
      {
        v30 = -1;
      }

      else
      {
        v30 = v86 - 1;
      }

      v31 = v30 + 1;
      do
      {
        if (v29 < 0)
        {
          v29 = v30;
          if ((a4 & 0x800000000000000) != 0)
          {
            goto LABEL_51;
          }

          goto LABEL_40;
        }

        v32 = v24[v29];
        if (*v32 != 94)
        {
          v31 = v29 + 1;
          if ((a4 & 0x800000000000000) != 0)
          {
LABEL_51:
            if (v31 >= 2)
            {
              fi_getinfo_cold_1();
            }

            if (v28)
            {
              if (!fi_log_enabled(&core_prov, 2, 0))
              {
                goto LABEL_66;
              }

              v33 = *__error();
              fi_log(&core_prov, 2, 0, "ofi_layering_ok", 1277, "Need core provider, skipping %s\n");
              goto LABEL_65;
            }

            if (!v31)
            {
              if (*(v26 + 13) == 1)
              {
                if (!fi_log_enabled(&core_prov, 2, 0))
                {
                  goto LABEL_66;
                }

                v33 = *__error();
                fi_log(&core_prov, 2, 0, "ofi_layering_ok", 1283, "Skipping util;%s layering\n");
                goto LABEL_65;
              }

LABEL_62:
              if (*(v26 + 4) >= v82)
              {
                v87 = 0;
                v39 = v27(v82, v83, v84, a4, v85, &v87);
                if (v39)
                {
                  v40 = v39;
                  if (v85 && (v41 = *(v85 + 104)) != 0 && (v42 = *(v41 + 16)) != 0)
                  {
                    v43 = 2 * (strcmp(v42, *(*(v25 + 16) + 40)) != 0);
                  }

                  else
                  {
                    v43 = 2;
                  }

                  if (fi_log_enabled(&core_prov, v43, 0))
                  {
                    v44 = *__error();
                    v45 = *(*(v25 + 16) + 40);
                    if (v40 >= 0)
                    {
                      v46 = v40;
                    }

                    else
                    {
                      v46 = -v40;
                    }

                    if (v46 > 0xFF)
                    {
                      v47 = "Unspecified error";
                      if (v46 <= 0x10F)
                      {
                        v47 = (&errstr)[v46 - 256];
                      }
                    }

                    else
                    {
                      v47 = strerror(v46);
                    }

                    fi_log(&core_prov, v43, 0, "fi_getinfo", 1387, "fi_getinfo: provider %s returned -%d (%s)\n", v45, -v40, v47);
                    *__error() = v44;
                  }

                  goto LABEL_66;
                }

                v48 = v87;
                if (v87)
                {
                  if (*a6)
                  {
                    *v81 = v87;
                    v48 = v87;
                  }

                  else
                  {
                    *a6 = v87;
                  }

                  while (*v48)
                  {
                    ofi_set_prov_attr(v48[13], *(v25 + 16));
                    *(v48[13] + 28) = v82;
                    v48 = *v48;
                  }

                  ofi_set_prov_attr(v48[13], *(v25 + 16));
                  *(v48[13] + 28) = v82;
                  v81 = v48;
                  goto LABEL_66;
                }

                if (!fi_log_enabled(&core_prov, 0, 0))
                {
                  goto LABEL_66;
                }

                v33 = *__error();
                fi_log(&core_prov, 0, 0, "fi_getinfo", 1394, "fi_getinfo: provider %s output empty list\n");
              }

              else
              {
                if (!fi_log_enabled(&core_prov, 0, 0))
                {
                  goto LABEL_66;
                }

                v33 = *__error();
                fi_log(&core_prov, 0, 0, "fi_getinfo", 1372, "Provider %s fi_version %d.%d < requested %d.%d\n", *(*(v25 + 16) + 40), HIWORD(*(*(v25 + 16) + 4)));
              }

LABEL_65:
              *__error() = v33;
              goto LABEL_66;
            }

            goto LABEL_60;
          }

LABEL_40:
          if (!v31)
          {
            goto LABEL_62;
          }

          if (v31 == 2)
          {
            v38 = *v24;
            if (strncasecmp(*v24, "ofi_", 4uLL) || !strncasecmp(v24[1], "ofi_", 4uLL))
            {
              goto LABEL_60;
            }
          }

          else
          {
            if (v31 == 1 && v28 == 1)
            {
              v34 = *v24;
              if (strncasecmp(*v24, "ofi_", 4uLL))
              {
                v35 = strlen(v34);
                v36 = ofi_getprov(v34, v35);
                if (!v36)
                {
                  goto LABEL_62;
                }

                v37 = *(v36 + 16);
                if (!v37 || *(v37 + 13) != 1)
                {
                  goto LABEL_62;
                }

                if (!fi_log_enabled(&core_prov, 2, 0))
                {
                  goto LABEL_66;
                }

                v33 = *__error();
                fi_log(&core_prov, 2, 0, "ofi_layering_ok", 1303, "Skipping %s;%s layering\n");
                goto LABEL_65;
              }
            }

LABEL_60:
            v38 = v24[v29];
          }

          if (strcasecmp(*(v26 + 40), v38))
          {
            goto LABEL_66;
          }

          goto LABEL_62;
        }

        --v29;
      }

      while (strcasecmp(v32 + 1, *(v26 + 40)));
      if (fi_log_enabled(&core_prov, 2, 0))
      {
        v33 = *__error();
        fi_log(&core_prov, 2, 0, "ofi_layering_ok", 1266, "Provider %s is excluded\n");
        goto LABEL_65;
      }

LABEL_66:
      v25 = *v25;
      if (!v25)
      {
LABEL_94:
        ofi_free_string_array(v24);
        v49 = *a6;
        if ((a4 & 0x1C00000000000000) != 0 || !v49)
        {
          goto LABEL_156;
        }

        v50 = v85;
        if (!prov_filter && (!v85 || ((v70 = *(v85 + 96)) == 0 || !*(v70 + 8)) && ((v71 = *(v85 + 104)) == 0 || !*(v71 + 8))))
        {
          v88 = "tcp";
          v89 = 3;
LABEL_136:
          v72 = 0;
          v73 = 0;
          v74 = v49;
          v49 = 0;
          do
          {
            v75 = *v74;
            if (ofi_info_match_prov(v74, &v88))
            {
              if (v73)
              {
                v76 = v73;
              }

              else
              {
                v76 = a6;
              }

              *v76 = v75;
              v77 = v74;
              if (v49)
              {
                *v72 = v74;
                v77 = v49;
              }

              *v74 = 0;
              v49 = v77;
              v72 = v74;
            }

            else
            {
              v73 = v74;
            }

            v74 = v75;
          }

          while (v75);
          v78 = *a6;
          if (v49)
          {
            v88 = "tcp;ofi_rxm";
            if (v78)
            {
              if (!ofi_info_match_prov(v78, &v88))
              {
                do
                {
                  v80 = v78;
                  v78 = *v78;
                }

                while (v78 && !ofi_info_match_prov(v78, &v88));
                *v80 = v49;
                *v72 = v78;
                v49 = *a6;
                goto LABEL_156;
              }

              v79 = *a6;
            }

            else
            {
              v79 = 0;
            }

            *v72 = v79;
            *a6 = v49;
          }

          else
          {
            v49 = *a6;
          }

LABEL_156:
          if (v49)
          {
            return 0;
          }

          else
          {
            return 4294967200;
          }
        }

        v51 = 0;
        while (2)
        {
          v52 = v49[13];
          if (!v52 || (v53 = *(v52 + 16)) == 0)
          {
            fi_getinfo_cold_2();
          }

          if (prov_filter)
          {
            v54 = *prov_filter;
            if (*prov_filter)
            {
              v55 = (prov_filter + 8);
              v56 = (prov_filter + 8);
              v57 = *prov_filter;
              do
              {
                if (!strcasecmp(v53, v57))
                {
                  goto LABEL_110;
                }

                v58 = *v56++;
                v57 = v58;
              }

              while (v58);
              while (1)
              {
                v59 = strlen(v54);
                if (!strncasecmp(v53, v54, v59) && v53[v59] == 59)
                {
                  break;
                }

                v60 = *v55++;
                v54 = v60;
                if (!v60)
                {
                  goto LABEL_108;
                }
              }

LABEL_110:
              v50 = v85;
              if ((byte_2A18949A8 & 1) == 0)
              {
                goto LABEL_111;
              }
            }

            else
            {
LABEL_108:
              v50 = v85;
              if (byte_2A18949A8 == 1)
              {
                goto LABEL_111;
              }
            }

LABEL_118:
            v67 = *v49;
            if (v51)
            {
              v68 = v51;
            }

            else
            {
              v68 = a6;
            }

            *v68 = v67;
            *v49 = 0;
            fi_freeinfo(v49);
          }

          else
          {
LABEL_111:
            if (v50)
            {
              v61 = *(v50 + 96);
              if (v61)
              {
                v62 = *(v61 + 8);
                if (v62)
                {
                  v63 = strlen(v62);
                  if (strncasecmp(v62, *(v49[12] + 8), v63 + 1))
                  {
                    goto LABEL_118;
                  }
                }
              }

              v64 = *(v50 + 104);
              if (v64)
              {
                v65 = *(v64 + 8);
                if (v65)
                {
                  v66 = strlen(*(v64 + 8));
                  if (strncasecmp(v65, *(v52 + 8), v66 + 1))
                  {
                    goto LABEL_118;
                  }
                }
              }
            }

            v67 = *v49;
            v51 = v49;
          }

          v49 = v67;
          if (!v67)
          {
            v49 = *a6;
            v88 = "tcp";
            v89 = 3;
            if (!v49)
            {
              goto LABEL_156;
            }

            goto LABEL_136;
          }

          continue;
        }
      }
    }
  }

  *a6 = 0;
  v14 = prov_head;
  if (!prov_head)
  {
    return 4294967200;
  }

  v15 = 0;
  result = 4294967200;
  while (!v14[2])
  {
LABEL_14:
    v14 = *v14;
    if (!v14)
    {
      return result;
    }
  }

  v16 = ofi_allocinfo_internal();
  if (v16)
  {
    v17 = v16;
    v18 = v14[2];
    v19 = strdup(*(v18 + 40));
    result = 0;
    v20 = v17[13];
    *(v20 + 16) = v19;
    *(v20 + 24) = *v18;
    if (*a6)
    {
      v21 = v15;
    }

    else
    {
      v21 = a6;
    }

    *v21 = v17;
    v15 = v17;
    goto LABEL_14;
  }

  if (v15)
  {
    do
    {
      v69 = *v15;
      fi_freeinfo(v15);
      v15 = v69;
    }

    while (v69);
  }

  return 4294967284;
}

char *fi_strerror(unsigned int a1)
{
  if ((a1 & 0x80000000) != 0)
  {
    a1 = -a1;
  }

  if (a1 <= 0xFF)
  {
    return strerror(a1);
  }

  if (a1 > 0x10F)
  {
    return "Unspecified error";
  }

  return (&errstr)[a1 - 256];
}

void ofi_set_prov_attr(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = *(a2 + 8);
    if (v5 != 4)
    {
      if (v5 != 1)
      {
        ofi_set_prov_attr_cold_1();
      }

      *(a1 + 16) = ofi_strdup_append(*(a1 + 16), *(a2 + 40));
      free(v4);
    }
  }

  else
  {
    *(a1 + 16) = strdup(*(a2 + 40));
  }

  *(a1 + 24) = *a2;
}

void *ofi_allocinfo_internal()
{
  v0 = malloc_type_calloc(1uLL, 0x78uLL, 0x10A004019A5F1E0uLL);
  if (v0)
  {
    v0[9] = malloc_type_calloc(1uLL, 0x50uLL, 0x1000040D9C97D19uLL);
    v0[10] = malloc_type_calloc(1uLL, 0x40uLL, 0x1000040FA0F61DDuLL);
    v0[11] = malloc_type_calloc(1uLL, 0x60uLL, 0x10100407B5EC8F1uLL);
    v0[12] = malloc_type_calloc(1uLL, 0xD0uLL, 0x10300407836402CuLL);
    v1 = malloc_type_calloc(1uLL, 0x20uLL, 0x1030040A4FB0822uLL);
    v0[13] = v1;
    if (!v0[9] || !v0[10] || !v0[11] || !v1 || !v0[12])
    {
      fi_freeinfo(v0);
      return 0;
    }
  }

  return v0;
}

void *fi_dupinfo(__int128 *a1)
{
  if (a1)
  {
    v3 = malloc_type_malloc(0x78uLL, 0x2A1BF8CCuLL);
    v4 = v3;
    if (!v3)
    {
      return v4;
    }

    v6 = *a1;
    v5 = a1[1];
    v7 = a1[2];
    *(v3 + 3) = a1[3];
    v8 = *(a1 + 14);
    v10 = a1[5];
    v9 = a1[6];
    *(v3 + 4) = a1[4];
    *(v3 + 5) = v10;
    *(v3 + 6) = v9;
    *(v3 + 1) = v5;
    *(v3 + 2) = v7;
    *v3 = v6;
    *(v3 + 14) = v8;
    *(v3 + 7) = 0;
    v11 = v3 + 56;
    *(v3 + 72) = 0u;
    v12 = v3 + 72;
    *(v3 + 88) = 0u;
    v13 = v3 + 88;
    *(v3 + 13) = 0;
    v14 = v3 + 104;
    *v3 = 0;
    *(v3 + 6) = 0;
    v15 = *(a1 + 6);
    if (v15)
    {
      v16 = (v3 + 48);
      v17 = *(a1 + 4);
      v18 = malloc_type_malloc(v17, 0x2A1BF8CCuLL);
      if (!v18)
      {
        goto LABEL_44;
      }

      v19 = v18;
      memcpy(v18, v15, v17);
      *v16 = v19;
    }

    v20 = *(a1 + 7);
    if (v20)
    {
      v21 = *(a1 + 5);
      v22 = malloc_type_malloc(v21, 0x2A1BF8CCuLL);
      if (!v22)
      {
        v16 = (v4 + 7);
        goto LABEL_44;
      }

      v23 = v22;
      memcpy(v22, v20, v21);
      *v11 = v23;
    }

    v24 = *(a1 + 9);
    if (v24)
    {
      v25 = malloc_type_malloc(0x50uLL, 0x2A1BF8CCuLL);
      if (!v25)
      {
        v16 = (v4 + 9);
        goto LABEL_44;
      }

      *v25 = *v24;
      v26 = v24[1];
      v27 = v24[2];
      v28 = v24[4];
      v25[3] = v24[3];
      v25[4] = v28;
      v25[1] = v26;
      v25[2] = v27;
      *v12 = v25;
    }

    v29 = *(a1 + 10);
    if (v29)
    {
      v16 = (v4 + 10);
      v30 = malloc_type_malloc(0x40uLL, 0x2A1BF8CCuLL);
      if (!v30)
      {
        goto LABEL_44;
      }

      v31 = *v29;
      v32 = v29[1];
      v33 = v29[3];
      v30[2] = v29[2];
      v30[3] = v33;
      *v30 = v31;
      v30[1] = v32;
      *v16 = v30;
    }

    v34 = *(a1 + 11);
    if (v34)
    {
      v35 = malloc_type_malloc(0x60uLL, 0x2A1BF8CCuLL);
      if (!v35)
      {
        v16 = (v4 + 11);
        goto LABEL_44;
      }

      v36 = v34[1];
      *v35 = *v34;
      v35[1] = v36;
      v37 = v34[2];
      v38 = v34[3];
      v39 = v34[5];
      v35[4] = v34[4];
      v35[5] = v39;
      v35[2] = v37;
      v35[3] = v38;
      *v13 = v35;
      v40 = *(a1 + 11);
      v41 = *(v40 + 88);
      if (v41)
      {
        v42 = *(v40 + 80);
        v43 = malloc_type_malloc(v42, 0x2A1BF8CCuLL);
        if (!v43)
        {
          v16 = *v13 + 88;
          goto LABEL_44;
        }

        v44 = v43;
        memcpy(v43, v41, v42);
        *(*v13 + 88) = v44;
      }
    }

    v45 = *(a1 + 12);
    if (v45)
    {
      v16 = (v4 + 12);
      v46 = malloc_type_malloc(0xD0uLL, 0x2A1BF8CCuLL);
      if (!v46)
      {
        goto LABEL_44;
      }

      v47 = v46;
      *v46 = *v45;
      v48 = v45[1];
      v49 = v45[2];
      v50 = v45[4];
      v46[3] = v45[3];
      v46[4] = v50;
      v46[1] = v48;
      v46[2] = v49;
      v51 = v45[5];
      v52 = v45[6];
      v53 = v45[8];
      v46[7] = v45[7];
      v46[8] = v53;
      v46[5] = v51;
      v46[6] = v52;
      v54 = v45[9];
      v55 = v45[10];
      v56 = v45[12];
      v46[11] = v45[11];
      v46[12] = v56;
      v46[9] = v54;
      v46[10] = v55;
      *v16 = v46;
      *(v46 + 1) = 0;
      *(v46 + 19) = 0;
      v57 = *(a1 + 12);
      v58 = v57[1];
      if (v58)
      {
        v59 = strdup(v58);
        *(v47 + 1) = v59;
        if (!v59)
        {
          goto LABEL_45;
        }
      }

      v60 = v57[19];
      if (v60)
      {
        v61 = mem_dup(v60, v57[20]);
        *(*v16 + 152) = v61;
        if (!v61)
        {
          goto LABEL_45;
        }
      }
    }

    v62 = *(a1 + 13);
    if (!v62)
    {
      goto LABEL_32;
    }

    v63 = malloc_type_malloc(0x20uLL, 0x2A1BF8CCuLL);
    if (v63)
    {
      v64 = v63;
      v65 = v62[1];
      *v63 = *v62;
      *(v63 + 1) = v65;
      *v14 = v63;
      *(v63 + 1) = 0;
      v66 = (v63 + 8);
      *(v63 + 2) = 0;
      v67 = *(a1 + 13);
      v68 = *(v67 + 8);
      if (!v68 || (v69 = strdup(v68), (*v66 = v69) != 0))
      {
        v70 = *(v67 + 16);
        if (!v70 || (v71 = strdup(v70), (*(v64 + 2) = v71) != 0))
        {
LABEL_32:
          v72 = *(a1 + 14);
          if (!v72)
          {
            return v4;
          }

          v73 = (*(*(v72 + 16) + 24))();
          if (v73 == -78 || !v73)
          {
            return v4;
          }
        }
      }

LABEL_45:
      fi_freeinfo(v4);
      return 0;
    }

    v16 = (v4 + 13);
LABEL_44:
    *v16 = 0;
    goto LABEL_45;
  }

  return ofi_allocinfo_internal();
}

void *mem_dup(const void *a1, size_t size)
{
  result = malloc_type_malloc(size, 0x2A1BF8CCuLL);
  if (result)
  {

    return memcpy(result, a1, size);
  }

  return result;
}

uint64_t fi_fabric(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (!a1)
  {
    return 4294967274;
  }

  if (!*(a1 + 16) || !*(a1 + 8))
  {
    return 4294967274;
  }

  fi_ini();
  v6 = *(a1 + 16);
  v7 = strrchr(v6, 59);
  if (v7)
  {
    v6 = v7 + 1;
  }

  if (!v6)
  {
    return 4294967274;
  }

  v8 = strlen(v6);
  v9 = ofi_getprov(v6, v8);
  if (!v9)
  {
    return 4294967277;
  }

  v10 = v9;
  memset(&v17, 0, sizeof(v17));
  v11 = *(v9 + 16);
  if (!v11)
  {
    return 4294967277;
  }

  v12 = *(v11 + 56);
  if (!v12)
  {
    return 4294967277;
  }

  result = v12(a1, a2, a3);
  if (!result)
  {
    if (*(*(v10 + 16) + 4) >= 0x10005u)
    {
      *(*a2 + 32) = *(a1 + 28);
    }

    if (fi_log_enabled(&core_prov, 2, 0))
    {
      v14 = *__error();
      fi_log(&core_prov, 2, 0, "fi_fabric", 1590, "Opened fabric: %s\n", *(a1 + 8));
      *__error() = v14;
    }

    ofi_hook_install(*a2, a2, *(v10 + 16));
    result = dladdr(*(*(v10 + 16) + 56), &v17);
    if (result)
    {
      result = fi_log_enabled(&core_prov, 2, 0);
      if (result)
      {
        v15 = *__error();
        fi_log(&core_prov, 2, 0, "fi_fabric", 1601, "Using %s provider %u.%u, path:%s\n", *(v10 + 8), HIWORD(*(*(v10 + 16) + 4)), *(*(v10 + 16) + 4), v17.dli_fname);
        v16 = __error();
        result = 0;
        *v16 = v15;
      }
    }
  }

  return result;
}

uint64_t ofi_getprov(const char *a1, size_t a2)
{
  for (i = prov_head; i; i = *i)
  {
    if (strlen(*(i + 8)) == a2 && !strncasecmp(*(i + 8), a1, a2))
    {
      break;
    }
  }

  return i;
}

void ofi_hook_install(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  *a2 = a1;
  if (hook_cnt)
  {
    v3 = hooks == 0;
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {
    v6 = a1;
    v7 = 0;
    memset(v15, 0, sizeof(v15));
    while (1)
    {
      v8 = *(hooks + 8 * v7);
      v16 = 0;
      v9 = strlen(v8);
      v10 = ofi_getprov(v8, v9);
      if (v10)
      {
        break;
      }

      v14 = asprintf(&v16, "ofi_hook_%s", v8);
      if (v14 <= 0)
      {
        v16 = 0;
      }

      else
      {
        v11 = v16;
        v10 = ofi_getprov(v16, v14);
        if (v10)
        {
          goto LABEL_8;
        }
      }

      if (fi_log_enabled(&core_prov, 0, 0))
      {
        v13 = *__error();
        fi_log(&core_prov, 0, 0, "ofi_get_hook", 452, "No hook found for: %s\n");
        goto LABEL_20;
      }

LABEL_21:
      free(v16);
LABEL_22:
      if (hook_cnt <= ++v7)
      {
        return;
      }
    }

    v11 = 0;
LABEL_8:
    v12 = *(v10 + 16);
    if (v12 && *(v12 + 8) == 2)
    {
      free(v11);
      *&v15[0] = v6;
      if (!(*(v12 + 56))(v15, a2, a3))
      {
        v6 = *a2;
      }

      goto LABEL_22;
    }

    if (fi_log_enabled(&core_prov, 0, 0))
    {
      v13 = *__error();
      fi_log(&core_prov, 0, 0, "ofi_get_hook", 448, "Specified provider is not a hook: %s\n");
LABEL_20:
      *__error() = v13;
      goto LABEL_21;
    }

    goto LABEL_21;
  }
}

uint64_t fi_fabric2(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (!a1 || a3)
  {
    return 4294967274;
  }

  else
  {
    return fi_fabric(*(a1 + 104), a2, a4);
  }
}

uint64_t fi_open(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7)
{
  v13 = a1;
  if (!strcasecmp("mr_cache", a2))
  {

    return ofi_open_mr_cache(v13, a3, a4, a5, a6, a7);
  }

  else if (!strcasecmp("logging", a2))
  {

    return ofi_open_log(v13, a3, a4, a5, a6, a7);
  }

  else
  {
    return 4294967218;
  }
}

void *ofi_alloc_prov(const char *a1)
{
  v2 = malloc_type_calloc(0x28uLL, 1uLL, 0x5EA2A9B7uLL);
  if (v2)
  {
    v3 = strdup(a1);
    v2[1] = v3;
    if (!v3)
    {
      free(v2);
      return 0;
    }
  }

  return v2;
}

size_t ofi_insert_prov(size_t result)
{
  v1 = result;
  v2 = prov_head;
  if (!prov_head)
  {
LABEL_6:
    v8 = &prov_tail;
    v9 = prov_tail;
    if (!prov_tail)
    {
      v9 = &prov_head;
    }

    *v9 = v1;
    goto LABEL_9;
  }

  v3 = *(result + 8);
  v4 = strlen(v3);
  v5 = 0;
  while (1)
  {
    v6 = v2;
    v7 = *(v2 + 8);
    result = strlen(v7);
    if (v4 == result)
    {
      result = strcasecmp(v3, v7);
      if (!result)
      {
        break;
      }
    }

    v2 = *v6;
    v5 = v6;
    if (!*v6)
    {
      goto LABEL_6;
    }
  }

  if ((*(v6 + 33) & 1) == 0 && ((*(v1 + 33) & 1) != 0 || (prov_order & 1) == 0 && **(v6 + 16) < **(v1 + 16)))
  {
    *(v6 + 32) = 1;
    *v1 = v6;
    v8 = &prov_head;
    if (v5)
    {
      v8 = v5;
    }

    goto LABEL_9;
  }

  *(v1 + 32) = 1;
  *v1 = *v6;
  *v6 = v1;
  v8 = &prov_tail;
  if (prov_tail == v6)
  {
LABEL_9:
    *v8 = v1;
  }

  return result;
}

uint64_t cma_copy()
{
  if (fi_log_enabled(&core_prov, 0, 0))
  {
    v0 = *__error();
    v1 = __error();
    fi_log(&core_prov, 0, 0, "cma_copy", 59, "CMA error %d\n", *v1);
    *__error() = v0;
  }

  return 4294967291;
}

void ofi_ini_dir(const char *a1)
{
  v7 = 0;
  v8 = 0;
  v2 = scandir(a1, &v7, lib_filter, MEMORY[0x29EDCA628]);
  if (v2 >= 1)
  {
    v3 = v2 - 1;
    while ((asprintf(&v8, "%s/%s", a1, v7[v3]->d_name) & 0x80000000) == 0)
    {
      ofi_reg_dl_prov(v8, 1);
      free(v7[v3]);
      free(v8);
      if (--v3 == -1)
      {
        goto LABEL_11;
      }
    }

    if (fi_log_enabled(&core_prov, 0, 0))
    {
      v4 = *__error();
      fi_log(&core_prov, 0, 0, "ofi_ini_dir", 703, "asprintf failed to allocate memory\n");
      *__error() = v4;
    }

    if (v3 + 1 >= 2)
    {
      v5 = v3 - 1;
      do
      {
        free(v7[v5]);
        v6 = v5-- + 1;
      }

      while (v6 > 1);
    }
  }

LABEL_11:
  free(v7);
}

void ofi_reg_dl_prov(const char *a1, int a2)
{
  v4 = dlopen(a1, 2);
  if (v4)
  {
    v5 = v4;
    v6 = dlsym(v4, "fi_prov_ini");
    if (v6)
    {
      v7 = v6();

      ofi_register_provider(v7, v5);
    }

    else
    {
      if (fi_log_enabled(&core_prov, 0, 0))
      {
        v10 = *__error();
        v11 = dlerror();
        fi_log(&core_prov, 0, 0, "ofi_reg_dl_prov", 683, "dlsym: %s\n", v11);
        *__error() = v10;
      }

      dlclose(v5);
    }
  }

  else if (a2 && fi_log_enabled(&core_prov, 0, 0))
  {
    v8 = *__error();
    v9 = dlerror();
    fi_log(&core_prov, 0, 0, "ofi_reg_dl_prov", 673, "dlopen(%s): %s\n", a1, v9);
    *__error() = v8;
  }
}

BOOL lib_filter(uint64_t a1)
{
  v1 = a1 + 21;
  v2 = strlen((a1 + 21));
  return v2 >= 6 && strcmp((v2 + v1 - 5), "fi.so") == 0;
}

void ofi_cleanup_prov(uint64_t result, void *__handle)
{
  if (result)
  {
    fi_param_undefine(result);
    v4 = *(result + 64);
    if (v4)
    {
      v4();
    }
  }

  if (__handle)
  {

    dlclose(__handle);
  }
}

BOOL ofi_info_match_prov(uint64_t a1, uint64_t a2)
{
  if (!a2 || (v3 = *a2) == 0)
  {
    ofi_info_match_prov_cold_2();
  }

  v4 = *(a1 + 104);
  if (!v4 || (v5 = *(a1 + 88)) == 0)
  {
    ofi_info_match_prov_cold_1();
  }

  return !strcasecmp(*(v4 + 16), v3) && *v5 == *(a2 + 8);
}

uint64_t ofi_rbmap_init(uint64_t result, uint64_t a2)
{
  *(result + 56) = a2;
  *result = result + 8;
  *(result + 8) = result + 8;
  *(result + 16) = result + 8;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 40) = 0;
  return result;
}

void *ofi_rbmap_create(uint64_t a1)
{
  result = malloc_type_calloc(1uLL, 0x40uLL, 0x10A00405A646735uLL);
  if (result)
  {
    result[7] = a1;
    *result = result + 1;
    result[1] = result + 1;
    result[2] = result + 1;
    result[3] = 0;
    *(result + 8) = 0;
    result[5] = 0;
  }

  return result;
}

uint64_t ofi_rbmap_foreach(uint64_t a1, uint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t), uint64_t a4)
{
  if ((a1 + 8) == a2)
  {
    return 0;
  }

  result = ofi_rbmap_foreach(a1, *a2, a3, a4);
  if (!result)
  {
    result = ofi_rbmap_foreach(a1, a2[1], a3, a4);
    if (!result)
    {

      return a3(a1, a2, a4);
    }
  }

  return result;
}

uint64_t *ofi_rbmap_cleanup(uint64_t **a1)
{
  ofi_rbmap_foreach(a1, *a1, ofi_free_node, 0);
  while (1)
  {
    result = a1[6];
    if (!result)
    {
      break;
    }

    a1[6] = result[1];
    free(result);
  }

  return result;
}

void ofi_rbmap_destroy(uint64_t **a1)
{
  ofi_rbmap_cleanup(a1);

  free(a1);
}

uint64_t ofi_rbmap_insert(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v9 = a1 + 1;
  v8 = *a1;
  if (*a1 == a1 + 1)
  {
    v10 = 0;
LABEL_6:
    v12 = a1[6];
    if (v12)
    {
      a1[6] = v12[1];
    }

    else
    {
      v12 = malloc_type_malloc(0x28uLL, 0x10A00406157DDB6uLL);
      if (!v12)
      {
        return 4294967284;
      }
    }

    v12[1] = v9;
    v12[2] = v10;
    *v12 = v9;
    *(v12 + 6) = 1;
    v15 = a1;
    v12[4] = a3;
    if (v10)
    {
      v15 = &v10[(a1[7])(a1, a2, v10[4]) >= 0];
    }

    *v15 = v12;
    v16 = *a1;
    if (*a1 == v12 || (v17 = v12[2], v18 = (v17 + 24), *(v17 + 24) != 1))
    {
LABEL_30:
      v13 = 0;
      result = 0;
      *(v16 + 6) = 0;
      if (!a4)
      {
        return result;
      }

      goto LABEL_31;
    }

    v19 = v12;
    while (1)
    {
      v20 = *(v17 + 16);
      v21 = *v20;
      if (v17 == *v20)
      {
        v21 = v20[1];
        if (*(v21 + 24) != 1)
        {
          if (v19 == *(v17 + 8))
          {
            rotateLeft(a1, v17);
            v23 = *(v17 + 16);
            v20 = *(v23 + 16);
            v19 = v17;
          }

          else
          {
            v23 = v17;
          }

          *(v23 + 24) = 0;
          *(v20 + 6) = 1;
          rotateRight(a1, v20);
          goto LABEL_28;
        }
      }

      else if (*(v21 + 24) != 1)
      {
        if (v19 == *v17)
        {
          rotateRight(a1, v17);
          v22 = *(v17 + 16);
          v20 = *(v22 + 16);
          v19 = v17;
        }

        else
        {
          v22 = v17;
        }

        *(v22 + 24) = 0;
        *(v20 + 6) = 1;
        rotateLeft(a1, v20);
        goto LABEL_28;
      }

      *v18 = 0;
      *(v21 + 24) = 0;
      v19 = v20;
      *(v20 + 6) = 1;
LABEL_28:
      v16 = *a1;
      if (v19 != *a1)
      {
        v17 = v19[2];
        v18 = (v17 + 24);
        if (*(v17 + 24) == 1)
        {
          continue;
        }
      }

      goto LABEL_30;
    }
  }

  while (1)
  {
    v10 = v8;
    v11 = (a1[7])(a1, a2, v8[4]);
    if (!v11)
    {
      break;
    }

    v8 = v10[v11 >= 0];
    if (v8 == v9)
    {
      goto LABEL_6;
    }
  }

  v13 = 4294967259;
  v12 = v10;
  result = 4294967259;
  if (a4)
  {
LABEL_31:
    *a4 = v12;
    return v13;
  }

  return result;
}

void *ofi_rbmap_delete(void *result, __int128 *a2)
{
  v3 = result;
  v4 = (result + 1);
  v5 = *(a2 + 1);
  if (*a2 == result + 1)
  {
    goto LABEL_6;
  }

  if (v5 == v4)
  {
    v5 = *a2;
LABEL_6:
    v6 = a2;
    goto LABEL_7;
  }

  do
  {
    v6 = v5;
    v5 = *v5;
  }

  while (v5 != v4);
  v5 = *(v6 + 1);
LABEL_7:
  v7 = *(v6 + 2);
  v5[2] = v7;
  v8 = result;
  if (v7)
  {
    v8 = &v7[v6 != *v7];
  }

  *v8 = v5;
  if (v6 != a2)
  {
    *(a2 + 4) = *(v6 + 4);
  }

  if (!*(v6 + 6))
  {
    if (*result != v5)
    {
      do
      {
        if (*(v5 + 6))
        {
          break;
        }

        v10 = (v5 + 2);
        v9 = v5[2];
        v11 = *v9;
        if (v5 == *v9)
        {
          v11 = v9[1];
          if (*(v11 + 6) == 1)
          {
            *(v11 + 6) = 0;
            *(v9 + 6) = 1;
            result = rotateLeft(v3, v9);
            v9 = *v10;
            v11 = (*v10)[1];
          }

          v15 = v11[1];
          v16 = *(v15 + 24);
          if (*(*v11 + 24))
          {
            if (!v16)
            {
              *(*v11 + 24) = 0;
              *(v11 + 6) = 1;
              rotateRight(v3, v11);
              v9 = *v10;
              v11 = (*v10)[1];
              v15 = v11[1];
            }
          }

          else if (!v16)
          {
LABEL_32:
            *(v11 + 6) = 1;
            goto LABEL_30;
          }

          *(v11 + 6) = *(v9 + 6);
          *(v9 + 6) = 0;
          *(v15 + 24) = 0;
          result = rotateLeft(v3, v9);
        }

        else
        {
          if (*(v11 + 6) == 1)
          {
            *(v11 + 6) = 0;
            *(v9 + 6) = 1;
            result = rotateRight(v3, v9);
            v9 = *v10;
            v11 = **v10;
          }

          v12 = *v11;
          v13 = v11[1];
          v14 = *(*v11 + 24);
          if (*(v13 + 24))
          {
            if (!v14)
            {
              *(v13 + 24) = 0;
              *(v11 + 6) = 1;
              rotateLeft(v3, v11);
              v9 = *v10;
              v11 = **v10;
              v12 = *v11;
            }
          }

          else if (!v14)
          {
            goto LABEL_32;
          }

          *(v11 + 6) = *(v9 + 6);
          *(v9 + 6) = 0;
          *(v12 + 24) = 0;
          result = rotateRight(v3, v9);
        }

        v10 = v3;
LABEL_30:
        v5 = *v10;
      }

      while (*v10 != *v3);
    }

    *(v5 + 6) = 0;
  }

  if (v6 != a2)
  {
    v17 = *a2;
    v18 = a2[1];
    *(v6 + 4) = *(a2 + 4);
    *v6 = v17;
    v6[1] = v18;
    v19 = *(a2 + 2);
    v20 = v3;
    if (v19)
    {
      v20 = &v19[*v19 != a2];
    }

    *v20 = v6;
    if (*a2 != v4)
    {
      *(*a2 + 16) = v6;
    }

    v21 = *(a2 + 1);
    if (v21 != v4)
    {
      v21[2] = v6;
    }
  }

  *(a2 + 1) = v3[6];
  v3[6] = a2;
  return result;
}

uint64_t ofi_rbmap_get_root(uint64_t a1)
{
  if (*a1 == a1 + 8)
  {
    return 0;
  }

  else
  {
    return *a1;
  }
}

uint64_t *ofi_rbmap_find(uint64_t **a1, uint64_t a2)
{
  v3 = a1 + 1;
  v2 = *a1;
  if (*a1 == (a1 + 1))
  {
    return 0;
  }

  while (1)
  {
    v6 = (a1[7])(a1, a2, *(v2 + 32));
    if (!v6)
    {
      break;
    }

    v2 = *(v2 + 8 * (v6 >= 0));
    if (v2 == v3)
    {
      return 0;
    }
  }

  return v2;
}

uint64_t ofi_rbmap_find_delete(uint64_t **a1, uint64_t a2)
{
  v3 = a1 + 1;
  v2 = *a1;
  if (*a1 == (a1 + 1))
  {
    return 4294967200;
  }

  while (1)
  {
    v6 = (a1[7])(a1, a2, *(v2 + 32));
    if (!v6)
    {
      break;
    }

    v2 = *(v2 + 8 * (v6 >= 0));
    if (v2 == v3)
    {
      return 4294967200;
    }
  }

  ofi_rbmap_delete(a1, v2);
  return 0;
}

void *ofi_rbmap_search(void *a1, uint64_t a2, uint64_t (*a3)(void *, uint64_t, void))
{
  v4 = a1 + 1;
  v3 = *a1;
  if (*a1 == a1 + 1)
  {
    return 0;
  }

  while (1)
  {
    v8 = a3(a1, a2, v3[4]);
    if (!v8)
    {
      break;
    }

    v3 = v3[v8 >= 0];
    if (v3 == v4)
    {
      return 0;
    }
  }

  return v3;
}

char *ofi_perf_init()
{
  v1 = 0;
  fi_param_define(0, "perf_cntr", 0, "Performance counter to analyze (default: cpu_instr). Options: cpu_instr, cpu_cycles.");
  fi_param_get(0, "perf_cntr", &v1);
  result = v1;
  if (v1)
  {
    result = strcasecmp(v1, "cpu_cycles");
    if (!result)
    {
      perf_domain = 0;
      perf_cntr = 0;
    }
  }

  return result;
}

uint64_t ofi_perfset_create(uint64_t a1, void *a2, size_t count)
{
  a2[2] = 0;
  v6 = malloc_type_calloc(count, 0x18uLL, 0x1000040504FFAC1uLL);
  a2[3] = v6;
  if (!v6)
  {
    return 4294967284;
  }

  result = 0;
  *a2 = a1;
  a2[1] = count;
  return result;
}

int *ofi_perfset_log(uint64_t *a1, uint64_t a2)
{
  if (fi_log_enabled(*a1, 1, 0))
  {
    v4 = *__error();
    fi_log(*a1, 1, 0, "ofi_perfset_log", 138, "\n");
    *__error() = v4;
  }

  if (fi_log_enabled(*a1, 1, 0))
  {
    v5 = *__error();
    switch(perf_domain)
    {
      case 2:
        if (!perf_cntr)
        {
          v7 = "page faults";
          goto LABEL_16;
        }

        break;
      case 1:
        if (perf_cntr < 4)
        {
          v7 = (&off_29F3876A0)[perf_cntr];
LABEL_16:
          fi_log(*a1, 1, 0, "ofi_perfset_log", 139, "\tPERF: %s\n", v7);
          *__error() = v5;
          goto LABEL_17;
        }

        break;
      case 0:
        v6 = "unknown";
        if (perf_cntr == 1)
        {
          v6 = "CPU instr";
        }

        if (perf_cntr)
        {
          v7 = v6;
        }

        else
        {
          v7 = "CPU cycles";
        }

        goto LABEL_16;
    }

    v7 = "unknown";
    goto LABEL_16;
  }

LABEL_17:
  result = fi_log_enabled(*a1, 1, 0);
  if (result)
  {
    v9 = *__error();
    fi_log(*a1, 1, 0, "ofi_perfset_log", 140, "\t%-20s%-10s%s\n", "Name", "Avg", "Events");
    result = __error();
    *result = v9;
  }

  if (a1[1])
  {
    v10 = 0;
    v11 = 0;
    do
    {
      if (*(a1[3] + v10 + 16))
      {
        result = fi_log_enabled(*a1, 1, 0);
        if (result)
        {
          v12 = __error();
          if (a2)
          {
            v13 = *(a2 + 8 * v11);
            if (!v13)
            {
              v13 = "unknown";
            }
          }

          else
          {
            v13 = "unknown";
          }

          v14 = *v12;
          fi_log(*a1, 1, 0, "ofi_perfset_log", 149, "\t%-20s%-10g%llu\n", v13, *(a1[3] + v10 + 8) / *(a1[3] + v10 + 16), *(a1[3] + v10 + 16));
          result = __error();
          *result = v14;
        }
      }

      ++v11;
      v10 += 24;
    }

    while (v11 < a1[1]);
  }

  return result;
}

uint64_t ofi_genlock_init(uint64_t a1, int a2)
{
  *a1 = a2;
  result = 4294967274;
  if (a2 > 1)
  {
    if (a2 == 2)
    {
      result = pthread_mutex_init((a1 + 8), 0);
      v4 = ofi_mutex_held_op;
      v5 = ofi_mutex_unlock_noop;
      v6 = ofi_mutex_lock_noop;
    }

    else
    {
      if (a2 != 3)
      {
        return result;
      }

      result = 0;
      *(a1 + 8) = 0;
      v4 = ofi_nolock_held_op;
      v5 = ofi_nolock_unlock_op;
      v6 = ofi_nolock_lock_op;
    }
  }

  else if (a2)
  {
    if (a2 != 1)
    {
      return result;
    }

    result = pthread_mutex_init((a1 + 8), 0);
    v4 = ofi_spin_held_op;
    v5 = ofi_spin_unlock_op;
    v6 = ofi_spin_lock_op;
  }

  else
  {
    result = pthread_mutex_init((a1 + 8), 0);
    v4 = ofi_mutex_held_op;
    v5 = ofi_mutex_unlock_op;
    v6 = ofi_mutex_lock_op;
  }

  *(a1 + 80) = v6;
  *(a1 + 88) = v5;
  *(a1 + 72) = v4;
  return result;
}

_DWORD *ofi_genlock_destroy(_DWORD *result, uint64_t a2)
{
  if (*result >= 3u)
  {
    if (*result != 3)
    {
      ofi_genlock_destroy_cold_1();
    }
  }

  else
  {
    v3 = (result + 2);

    return pthread_mutex_destroy(v3);
  }

  return result;
}

uint64_t fi_poll_fd(int a1, int a2)
{
  *&v3.events = 1;
  v3.fd = a1;
  result = poll(&v3, 1u, a2);
  if (result == -1)
  {
    return -*__error();
  }

  return result;
}

unint64_t ofi_max_tag(unint64_t a1)
{
  v1 = 0xFFFFFFFFFFFFFFFFLL >> __clz(a1);
  if (a1)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t ofi_msb(unint64_t a1)
{
  v1 = 64 - __clz(a1);
  if (!a1)
  {
    return 0;
  }

  return v1;
}

unint64_t ofi_tag_format(unint64_t a1)
{
  v1 = 0xAAAAAAAAAAAAAAAALL >> __clz(a1);
  if (a1)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t ofi_lsb(uint64_t a1)
{
  v1 = 64 - __clz(-a1 & a1);
  if ((-a1 & a1) != 0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

BOOL ofi_rma_initiate_allowed(__int16 a1)
{
  v1 = (a1 & 0x3000) == 0;
  if ((a1 & 0x300) != 0)
  {
    v1 = 1;
  }

  return (a1 & 0x14) != 0 && v1;
}

BOOL ofi_rma_target_allowed(__int16 a1)
{
  v1 = (a1 & 0x300) == 0;
  if ((a1 & 0x3000) != 0)
  {
    v1 = 1;
  }

  return (a1 & 0x14) != 0 && v1;
}

BOOL ofi_needs_tx(__int16 a1)
{
  if ((a1 & 0xA) != 0 && (a1 & 0xC00) != 0x400)
  {
    return 1;
  }

  v2 = (a1 & 0x3000) == 0;
  if ((a1 & 0x300) != 0)
  {
    v2 = 1;
  }

  return (a1 & 0x14) != 0 && v2;
}

uint64_t ofi_ep_bind_valid(uint64_t a1, void *a2, uint64_t a3)
{
  if (!a2)
  {
    if (!fi_log_enabled(a1, 0, 3))
    {
      return 4294967274;
    }

    v4 = *__error();
    fi_log(a1, 0, 3, "ofi_ep_bind_valid", 255, "NULL bind fid\n");
    v5 = 4294967274;
    goto LABEL_16;
  }

  if (*a2 == 15)
  {
    if ((a3 & 0xFFFFFFFFFFFFC0FFLL) == 0)
    {
      return 0;
    }

    if (fi_log_enabled(a1, 0, 3))
    {
      v4 = *__error();
      fi_log(a1, 0, 3, "ofi_ep_bind_valid", 269, "invalid cntr flags\n");
      goto LABEL_15;
    }

    return 4294967036;
  }

  if (*a2 != 14)
  {
    if (!a3)
    {
      return 0;
    }

    if (fi_log_enabled(a1, 0, 3))
    {
      v4 = *__error();
      fi_log(a1, 0, 3, "ofi_ep_bind_valid", 275, "invalid bind flags\n");
      goto LABEL_15;
    }

    return 4294967036;
  }

  if ((a3 & 0xF7FFFFFFFFFFF3FFLL) == 0)
  {
    return 0;
  }

  if (!fi_log_enabled(a1, 0, 3))
  {
    return 4294967036;
  }

  v4 = *__error();
  fi_log(a1, 0, 3, "ofi_ep_bind_valid", 262, "invalid CQ flags\n");
LABEL_15:
  v5 = 4294967036;
LABEL_16:
  *__error() = v4;
  return v5;
}

BOOL ofi_check_rx_mode(_BOOL8 result, uint64_t a2)
{
  if (result)
  {
    v2 = *(result + 80);
    return v2 && (*(v2 + 8) & a2) != 0 || (*(result + 16) & a2) != 0;
  }

  return result;
}

uint64_t ofi_generate_seed()
{
  v1.tv_sec = 0;
  *&v1.tv_usec = 0;
  gettimeofday(&v1, 0);
  return v1.tv_usec | (getpid() << 16);
}

uint64_t ofi_get_realtime_ns()
{
  v1.tv_sec = 0;
  v1.tv_nsec = 0;
  clock_gettime(_CLOCK_REALTIME, &v1);
  return v1.tv_nsec + 1000000000 * v1.tv_sec;
}

unint64_t ofi_get_realtime_us()
{
  v1.tv_sec = 0;
  v1.tv_nsec = 0;
  clock_gettime(_CLOCK_REALTIME, &v1);
  return (v1.tv_nsec + 1000000000 * v1.tv_sec) / 0x3E8uLL;
}

unint64_t ofi_get_realtime_ms()
{
  v1.tv_sec = 0;
  v1.tv_nsec = 0;
  clock_gettime(_CLOCK_REALTIME, &v1);
  return (v1.tv_nsec + 1000000000 * v1.tv_sec) / 0xF4240uLL;
}

uint64_t ofi_gettime_ns()
{
  v1.tv_sec = 0;
  v1.tv_nsec = 0;
  clock_gettime(_CLOCK_MONOTONIC, &v1);
  return v1.tv_nsec + 1000000000 * v1.tv_sec;
}

unint64_t ofi_gettime_us()
{
  v1.tv_sec = 0;
  v1.tv_nsec = 0;
  clock_gettime(_CLOCK_MONOTONIC, &v1);
  return (v1.tv_nsec + 1000000000 * v1.tv_sec) / 0x3E8uLL;
}

unint64_t ofi_gettime_ms()
{
  v1.tv_sec = 0;
  v1.tv_nsec = 0;
  clock_gettime(_CLOCK_MONOTONIC, &v1);
  return (v1.tv_nsec + 1000000000 * v1.tv_sec) / 0xF4240uLL;
}

uint64_t ofi_get_sa_family(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 24);
    if (v1 > 2)
    {
      if (v1 == 4)
      {
        return 27;
      }

      if (v1 == 3)
      {
        return 30;
      }
    }

    else if (v1 >= 2)
    {
      if (v1 == 2)
      {
        return 2;
      }
    }

    else
    {
      v2 = *(result + 48);
      if (v2)
      {
        return *(v2 + 1);
      }

      v2 = *(result + 56);
      if (v2)
      {
        return *(v2 + 1);
      }
    }

    return 0;
  }

  return result;
}

const char *ofi_straddr(char *__str, size_t *a2, int a3, unsigned __int8 *a4)
{
  result = 0;
  v12 = *MEMORY[0x29EDCA608];
  if (a2 && a4)
  {
    result = 0;
    switch(a3)
    {
      case 1:
        v7 = a4[1];
        if (v7 == 30)
        {
          goto LABEL_15;
        }

        if (v7 == 2)
        {
          goto LABEL_18;
        }

        return 0;
      case 2:
        v7 = a4[1];
LABEL_18:
        result = inet_ntop(v7, a4 + 4, v9, 0x36u);
        if (result)
        {
          v8 = snprintf(__str, *a2, "fi_sockaddr_in://%s:%hu");
          break;
        }

        return result;
      case 3:
        v7 = a4[1];
LABEL_15:
        result = inet_ntop(v7, a4 + 8, v9, 0x36u);
        if (result)
        {
          v8 = snprintf(__str, *a2, "fi_sockaddr_in6://[%s]:%hu");
          break;
        }

        return result;
      case 4:
        v10 = 0u;
        memset(v11, 0, sizeof(v11));
        *v9 = 0u;
        result = inet_ntop(30, a4 + 8, v9, 0x2Eu);
        if (result)
        {
          v8 = snprintf(__str, *a2, "fi_sockaddr_ib://[%s]:0x%hx:0x%hx:0x%hhx");
          break;
        }

        return result;
      case 8:
        v8 = snprintf(__str, *a2, "fi_addr_mlx://%p");
        break;
      case 9:
        v8 = snprintf(__str, *a2, "%s");
        break;
      case 10:
        v8 = snprintf(__str, *a2, "fi_addr_psmx2://%llx:%llx");
        break;
      case 11:
        v10 = 0u;
        memset(v11, 0, sizeof(v11));
        *v9 = 0u;
        result = inet_ntop(30, a4, v9, 0x2Eu);
        if (!result)
        {
          return result;
        }

        v8 = snprintf(__str, *a2, "fi_addr_ib_ud://%s:%x/%hx/%hx/%hhx");
        break;
      case 12:
        v10 = 0u;
        memset(v11, 0, sizeof(v11));
        *v9 = 0u;
        result = inet_ntop(30, a4, v9, 0x2Eu);
        if (!result)
        {
          return result;
        }

        v8 = snprintf(__str, *a2, "fi_addr_efa://[%s]:%hu:%u");
        break;
      case 13:
        v8 = snprintf(__str, *a2, "fi_addr_psmx3://%llx:%llx:%llx:%llx");
        break;
      case 14:
        v8 = snprintf(__str, *a2, "fi_addr_opx://%016lx");
        break;
      case 15:
        v8 = snprintf(__str, *a2, "fi_addr_cxi://0x%08x");
        break;
      case 16:
        v8 = snprintf(__str, *a2, "fi_addr_ucx://%p");
        break;
      default:
        return result;
    }

    if (__str)
    {
      if (*a2)
      {
        __str[*a2 - 1] = 0;
      }
    }

    *a2 = v8 + 1;
    return __str;
  }

  return result;
}

uint64_t ofi_addr_format(const char *a1)
{
  v6 = *MEMORY[0x29EDCA608];
  *v3 = 0;
  v4 = 0;
  v5 = 0;
  v1 = sscanf(a1, "%16[^:]://", v3);
  result = 0;
  if (v1 == 1)
  {
    if (!strcasecmp(v3, "fi_sockaddr_in"))
    {
      return 2;
    }

    else if (!strcasecmp(v3, "fi_sockaddr_in6"))
    {
      return 3;
    }

    else if (!strcasecmp(v3, "fi_sockaddr_ib"))
    {
      return 4;
    }

    else if (!strcasecmp(v3, "fi_addr_psmx2"))
    {
      return 10;
    }

    else if (!strcasecmp(v3, "fi_addr_psmx3"))
    {
      return 13;
    }

    else if (!strcasecmp(v3, "fi_addr_opx"))
    {
      return 14;
    }

    else if (!strcasecmp(v3, "fi_addr_efa"))
    {
      return 12;
    }

    else if (!strcasecmp(v3, "fi_addr_mlx"))
    {
      return 8;
    }

    else if (!strcasecmp(v3, "fi_addr_ucx"))
    {
      return 16;
    }

    else if (!strcasecmp(v3, "fi_addr_ib_ud"))
    {
      return 11;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t ofi_str_toaddr(const char *a1, int *a2, void **a3, size_t *a4)
{
  v55 = *MEMORY[0x29EDCA608];
  v8 = ofi_addr_format(a1);
  *a2 = v8;
  v9 = 4294967218;
  if (v8 <= 9)
  {
    if (v8 <= 2)
    {
      if (v8)
      {
        if (v8 != 2)
        {
          return v9;
        }

        *a4 = 16;
        v11 = malloc_type_calloc(1uLL, 0x10uLL, 0x8EEA1AF9uLL);
        if (!v11)
        {
          return 4294967284;
        }

        v12 = v11;
        *(v11 + 1) = 2;
        v13 = (v11 + 1);
        if (sscanf(a1, "%*[^:]://:%hu", v11 + 1) != 1)
        {
          if (sscanf(a1, "%*[^:]://%64[^:]:%hu", v52, v13) != 2 && sscanf(a1, "%*[^:]://%64[^:/]", v52) != 1)
          {
            if (fi_log_enabled(&core_prov, 0, 0))
            {
              v14 = *__error();
              fi_log(&core_prov, 0, 0, "ofi_str_to_sin", 749, "Malformed FI_ADDR_STR: %s\n");
              goto LABEL_81;
            }

            goto LABEL_82;
          }

          v54 = 0;
          if (inet_pton(2, v52, v12 + 2) != 1)
          {
            if (fi_log_enabled(&core_prov, 0, 0))
            {
              v14 = *__error();
              fi_log(&core_prov, 0, 0, "ofi_str_to_sin", 759, "Unable to convert IPv4 address: %s\n");
LABEL_81:
              *__error() = v14;
              goto LABEL_82;
            }

            goto LABEL_82;
          }
        }

        goto LABEL_53;
      }

      v52[0] = 0;
      if (!ofi_getifaddrs(v52))
      {
        v19 = v52[0];
        if (v52[0])
        {
          v20 = v52[0];
          while (1)
          {
            ai_canonname = v20->ai_canonname;
            if (ai_canonname)
            {
              v22 = ai_canonname[1];
              v23 = v22 == 30 || v22 == 2;
              if (v23 && !strcmp(a1, *&v20->ai_socktype))
              {
                break;
              }
            }

            v20 = *&v20->ai_flags;
            if (!v20)
            {
              goto LABEL_41;
            }
          }

          if (v22 == 30)
          {
            v37 = 3;
          }

          else
          {
            v37 = 2;
          }

          if (v22 == 30)
          {
            v38 = 28;
          }

          else
          {
            v38 = 16;
          }

          *a2 = v37;
          *a4 = v38;
          v39 = malloc_type_calloc(1uLL, v38, 0x3F9EA25uLL);
          *a3 = v39;
          if (v39)
          {
            memcpy(v39, v20->ai_canonname, *a4);
            MEMORY[0x29EDAFA80](v52[0]);
            return 0;
          }

          v19 = v52[0];
        }

LABEL_41:
        MEMORY[0x29EDAFA80](v19);
      }

      v52[0] = 0;
      if (!getaddrinfo(a1, 0, 0, v52))
      {
        v24 = v52[0];
        if (v52[0]->ai_family == 30)
        {
          v25 = 3;
        }

        else
        {
          v25 = 2;
        }

        *a2 = v25;
        ai_addrlen = v24->ai_addrlen;
        *a4 = ai_addrlen;
        v27 = malloc_type_calloc(1uLL, ai_addrlen, 0x4ECBE89AuLL);
        *a3 = v27;
        if (v27)
        {
          memcpy(v27, v52[0]->ai_addr, *a4);
          v9 = 0;
        }

        else
        {
          v9 = 4294967274;
        }

        freeaddrinfo(v52[0]);
        return v9;
      }

      return 4294967274;
    }

    if (v8 == 3)
    {
      *a4 = 28;
      v28 = malloc_type_calloc(1uLL, 0x1CuLL, 0x47FEDCFCuLL);
      if (!v28)
      {
        return 4294967284;
      }

      v12 = v28;
      *(v28 + 1) = 30;
      v29 = (v28 + 1);
      if (sscanf(a1, "%*[^:]://:%hu", v28 + 1) != 1)
      {
        if (sscanf(a1, "%*[^:]://[%64[^]]]:%hu", v52, v29) != 2 && sscanf(a1, "%*[^:]://[%64[^]]", v52) != 1)
        {
          if (fi_log_enabled(&core_prov, 0, 0))
          {
            v14 = *__error();
            fi_log(&core_prov, 0, 0, "ofi_str_to_sin6", 794, "Malformed FI_ADDR_STR: %s\n");
            goto LABEL_81;
          }

          goto LABEL_82;
        }

        v54 = 0;
        if (inet_pton(30, v52, v12 + 4) != 1)
        {
          if (fi_log_enabled(&core_prov, 0, 0))
          {
            v14 = *__error();
            fi_log(&core_prov, 0, 0, "ofi_str_to_sin6", 804, "Unable to convert IPv6 address: %s\n");
            goto LABEL_81;
          }

LABEL_82:
          v36 = v12;
LABEL_111:
          free(v36);
          return 4294967274;
        }
      }

LABEL_53:
      v9 = 0;
      v12[1] = bswap32(v12[1]) >> 16;
      *a3 = v12;
      return v9;
    }

    if (v8 != 4)
    {
      return v9;
    }

    __lasts = 0;
    *v52 = 0u;
    memset(v53, 0, sizeof(v53));
    v54 = 0;
    if (sscanf(a1, "%*[^:]://[%64[^]]]:%64s", v52, __str) == 2)
    {
      v15 = strtok_r(__str, ":", &__lasts);
      if (v15)
      {
        __endptr = 0;
        v16 = strtol(v15, &__endptr, 0);
        if (*__endptr)
        {
          if (!fi_log_enabled(&core_prov, 0, 0))
          {
            return 4294967274;
          }

          v17 = *__error();
          fi_log(&core_prov, 0, 0, "ofi_str_to_sib", 635, "Invalid pkey in address: %s\n");
        }

        else
        {
          v33 = v16;
          v34 = strtok_r(0, ":", &__lasts);
          if (v34)
          {
            v35 = strtol(v34, &__endptr, 0);
            if (*__endptr)
            {
              if (!fi_log_enabled(&core_prov, 0, 0))
              {
                return 4294967274;
              }

              v17 = *__error();
              fi_log(&core_prov, 0, 0, "ofi_str_to_sib", 649, "Invalid port space in address: %s\n");
            }

            else
            {
              v40 = v35;
              v41 = strtok_r(0, ":", &__lasts);
              if (v41)
              {
                v42 = strtol(v41, &__endptr, 0);
                if (!*__endptr)
                {
                  v43 = v42;
                  v44 = strtok_r(0, ":", &__lasts);
                  if (v44)
                  {
                    v45 = strtol(v44, &__endptr, 0);
                  }

                  else
                  {
                    v45 = 0;
                  }

                  *a4 = 48;
                  v46 = malloc_type_calloc(1uLL, 0x30uLL, 0x4A3545E0uLL);
                  *a3 = v46;
                  if (!v46)
                  {
                    return 4294967284;
                  }

                  v47 = v46;
                  if (inet_pton(30, v52, v46 + 8) >= 1)
                  {
                    *v47 = 27;
                    *(v47 + 1) = bswap32(v33) >> 16;
                    if (v40 && v45)
                    {
                      *(v47 + 3) = bswap64(v45 | (v40 << 16));
                      *(v47 + 4) = -1;
                    }

                    v9 = 0;
                    *(v47 + 5) = bswap64(v43);
                    return v9;
                  }

                  goto LABEL_110;
                }

                if (!fi_log_enabled(&core_prov, 0, 0))
                {
                  return 4294967274;
                }

                v17 = *__error();
                fi_log(&core_prov, 0, 0, "ofi_str_to_sib", 663, "Invalid scope id in address: %s\n");
              }

              else
              {
                if (!fi_log_enabled(&core_prov, 0, 0))
                {
                  return 4294967274;
                }

                v17 = *__error();
                fi_log(&core_prov, 0, 0, "ofi_str_to_sib", 656, "Invalid scope id in address: %s\n");
              }
            }
          }

          else
          {
            if (!fi_log_enabled(&core_prov, 0, 0))
            {
              return 4294967274;
            }

            v17 = *__error();
            fi_log(&core_prov, 0, 0, "ofi_str_to_sib", 642, "Invalid port space in address: %s\n");
          }
        }
      }

      else
      {
        if (!fi_log_enabled(&core_prov, 0, 0))
        {
          return 4294967274;
        }

        v17 = *__error();
        fi_log(&core_prov, 0, 0, "ofi_str_to_sib", 628, "Invalid pkey in address: %s\n");
      }
    }

    else
    {
      if (!fi_log_enabled(&core_prov, 0, 0))
      {
        return 4294967274;
      }

      v17 = *__error();
      fi_log(&core_prov, 0, 0, "ofi_str_to_sib", 621, "Invalid GID in address: %s\n");
    }

    *__error() = v17;
    return 4294967274;
  }

  if (v8 <= 11)
  {
    if (v8 == 10)
    {
      *a4 = 16;
      v31 = malloc_type_calloc(1uLL, 0x10uLL, 0x383BC59FuLL);
      *a3 = v31;
      if (!v31)
      {
        return 4294967284;
      }

      if (sscanf(a1, "%*[^:]://%llx:%llx", v31, v31 + 8) != 2)
      {
        goto LABEL_110;
      }

      return 0;
    }

    *v52 = 0u;
    memset(v53, 0, 30);
    *a4 = 32;
    v18 = malloc_type_calloc(1uLL, 0x20uLL, 0xF0340FC1uLL);
    *a3 = v18;
    if (!v18)
    {
      return 4294967284;
    }

    if (sscanf(a1, "%*[^:]://%s:%x:%hx:%hx:%hhx", v52, v18 + 16, v18 + 20, v18 + 22, v18 + 26) != 5)
    {
      goto LABEL_110;
    }

    goto LABEL_56;
  }

  switch(v8)
  {
    case 12:
      *v52 = 0u;
      memset(v53, 0, 31);
      *a4 = 24;
      v30 = malloc_type_calloc(1uLL, 0x18uLL, 0xAC091A98uLL);
      *a3 = v30;
      if (!v30)
      {
        return 4294967284;
      }

      if (sscanf(a1, "%*[^:]://[%46[^]]]:%hu:%u", v52, v30 + 16, v30 + 20) < 1)
      {
        goto LABEL_110;
      }

LABEL_56:
      if (inet_pton(30, v52, *a3) <= 0)
      {
        goto LABEL_110;
      }

      return 0;
    case 13:
      *a4 = 32;
      v32 = malloc_type_calloc(1uLL, 0x20uLL, 0x46D4EDFuLL);
      *a3 = v32;
      if (!v32)
      {
        return 4294967284;
      }

      if (sscanf(a1, "%*[^:]://%llx:%llx:%llx:%llx", v32, v32 + 8, v32 + 16, v32 + 24) == 4)
      {
        return 0;
      }

LABEL_110:
      v36 = *a3;
      goto LABEL_111;
    case 14:
      *a4 = 8;
      v10 = malloc_type_calloc(1uLL, 8uLL, 0xA03865BFuLL);
      *a3 = v10;
      if (v10)
      {
        if (sscanf(a1, "%*[^:]://%llx", v10) != 1)
        {
          goto LABEL_110;
        }

        return 0;
      }

      return 4294967284;
  }

  return v9;
}

char *ofi_hex_str(char *a1, unint64_t a2)
{
  if (a2 >= 0x1F)
  {
    v3 = 31;
  }

  else
  {
    v3 = a2;
  }

  result = ofi_hex_str_str;
  v5 = 0;
  if (a2)
  {
    v6 = 2 * v3;
    v7 = ofi_hex_str_str;
    do
    {
      *v7 = a0123456789abcd[*a1 >> 4];
      v8 = *a1++;
      v5 += 2;
      v7[1] = a0123456789abcd[v8 & 0xF];
      v7 += 2;
    }

    while (v6 != v5);
    if (a2 >= 0x1F)
    {
      ++v5;
      *v7 = 126;
    }
  }

  ofi_hex_str_str[v5] = 0;
  return result;
}

uint64_t ofi_addr_cmp(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 1);
  if (v3 == 30)
  {
    v10 = bswap64(*(a2 + 8));
    v11 = bswap64(*(a3 + 8));
    if (v10 == v11)
    {
      v10 = bswap64(*(a2 + 16));
      v11 = bswap64(*(a3 + 16));
      if (v10 == v11)
      {
        return (bswap32(*(a2 + 2)) >> 16) - (bswap32(*(a3 + 2)) >> 16);
      }
    }

    if (v10 < v11)
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      return 1;
    }
  }

  else
  {
    if (v3 != 2)
    {
      ofi_addr_cmp_cold_1(a1);
    }

    v4 = bswap32(*(a2 + 4));
    v5 = bswap32(*(a3 + 4));
    v6 = v4 >= v5;
    v7 = v4 > v5;
    v8 = !v6;
    result = (v7 - v8);
    if (v7 == v8)
    {
      return (bswap32(*(a2 + 2)) >> 16) - (bswap32(*(a3 + 2)) >> 16);
    }
  }

  return result;
}

BOOL ofi_is_wildcard_listen_addr(const char *a1, char *a2, unint64_t a3, uint64_t a4)
{
  v11 = 0;
  if (a4)
  {
    if (*(a4 + 24) >= 4u)
    {
      return 0;
    }

    if (!a1)
    {
      if (!*(a4 + 56))
      {
        v6 = *(a4 + 48);
        if (v6)
        {
          return ofi_is_any_addr_port(v6);
        }

        goto LABEL_14;
      }

      return 0;
    }
  }

  else if (!a1)
  {
    goto LABEL_14;
  }

  if ((a3 & 0x200000000000000) == 0)
  {
    return 0;
  }

  if (!getaddrinfo(a1, a2, 0, &v11))
  {
    is_any_addr_port = ofi_is_any_addr_port(v11->ai_addr);
    freeaddrinfo(v11);
    if (!is_any_addr_port)
    {
      return 0;
    }

LABEL_14:
    if (a2)
    {
      return (a3 >> 57) & 1;
    }

    else
    {
      return 0;
    }
  }

  result = fi_log_enabled(&core_prov, 0, 0);
  if (result)
  {
    v8 = *__error();
    fi_log(&core_prov, 0, 0, "ofi_is_wildcard_listen_addr", 1005, "getaddrinfo failed!\n");
    v9 = __error();
    result = 0;
    *v9 = v8;
  }

  return result;
}

BOOL ofi_is_any_addr_port(uint64_t a1)
{
  v1 = *(a1 + 1);
  if (v1 == 30)
  {
    if (*(a1 + 8) != 0)
    {
      return 0;
    }

    return *(a1 + 2) != 0;
  }

  if (v1 == 2)
  {
    if (*(a1 + 4))
    {
      return 0;
    }

    return *(a1 + 2) != 0;
  }

  result = fi_log_enabled(&core_prov, 0, 0);
  if (result)
  {
    v3 = *__error();
    fi_log(&core_prov, 0, 0, "ofi_is_any_addr_port", 980, "Unknown address format\n");
    v4 = __error();
    result = 0;
    *v4 = v3;
  }

  return result;
}

uint64_t ofi_mask_addr(char *__dst, unsigned __int8 *__src, uint64_t a3)
{
  v6 = __src[1];
  switch(v6)
  {
    case 2:
      v7 = 16;
      break;
    case 27:
      v7 = 48;
      break;
    case 30:
      v7 = 28;
      break;
    default:
      if (fi_log_enabled(&core_prov, 0, 0))
      {
        v8 = *__error();
        fi_log(&core_prov, 0, 0, "ofi_sizeofaddr", 692, "Unknown address format\n");
        v9 = __error();
        v7 = 0;
        *v9 = v8;
      }

      else
      {
        v7 = 0;
      }

      break;
  }

  memcpy(__dst, __src, v7);
  v10 = __src[1];
  if (v10 == 2)
  {
    v11 = 1;
    v12 = 4;
  }

  else if (v10 == 27 || v10 == 30)
  {
    v11 = 1;
    v12 = 16;
  }

  else if (fi_log_enabled(&core_prov, 0, 0))
  {
    v13 = *__error();
    fi_log(&core_prov, 0, 0, "ofi_sizeofip", 707, "Unknown address format\n");
    v14 = __error();
    v11 = 0;
    v12 = 0;
    *v14 = v13;
  }

  else
  {
    v11 = 0;
    v12 = 0;
  }

  v15 = __dst[1];
  v16 = __dst + 4;
  if (v15 != 2)
  {
    v16 = 0;
  }

  if (v15 == 27)
  {
    v16 = __dst + 8;
  }

  if (v15 == 30)
  {
    v17 = __dst + 8;
  }

  else
  {
    v17 = v16;
  }

  v18 = *(a3 + 1);
  if (v18 == 2)
  {
    v19 = 4;
  }

  else
  {
    if (v18 != 27 && v18 != 30)
    {
      return 0;
    }

    v19 = 8;
  }

  if (!v17)
  {
    v11 = 0;
  }

  if (v11 != 1)
  {
    return 0;
  }

  result = 0;
  v21 = 0;
  v22 = a3 + v19;
  if (v12 <= 1)
  {
    v12 = 1;
  }

  do
  {
    v17[v21] &= *(v22 + v21);
    v23 = *(v22 + v21);
    if (*(v22 + v21))
    {
      if (v23 == 255)
      {
        result += 8;
      }

      else
      {
        do
        {
          result += v23 & 1;
          v24 = v23 > 1;
          v23 >>= 1;
        }

        while (v24);
      }
    }

    ++v21;
  }

  while (v21 != v12);
  return result;
}

uint64_t ofi_straddr_log_internal(const char *a1, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8)
{
  v9 = a6;
  v10 = a5;
  v21 = *MEMORY[0x29EDCA608];
  v19 = 96;
  result = fi_log_enabled(a4, a5, a6);
  if (result)
  {
    if (a8)
    {
      if (!a3)
      {
        v16 = a8[1];
        if (v16 == 30)
        {
          v17 = 3;
        }

        else
        {
          v17 = 0;
        }

        if (v16 == 27)
        {
          v18 = 4;
        }

        else
        {
          v18 = v17;
        }

        if (v16 == 2)
        {
          a3 = 2;
        }

        else
        {
          a3 = v18;
        }
      }

      ofi_straddr(__str, &v19, a3, a8);
      return fi_log(a4, v10, v9, a1, a2, "%s: %s\n");
    }

    else
    {
      return fi_log(a4, v10, v9, a1, a2, "%s: (null)\n");
    }
  }

  return result;
}

BOOL ofi_discard_socket(int a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v6 = 0;
  v3 = a2 - 1;
  do
  {
    v4 = recv(a1, &v6, 1uLL, 64);
    if (!v3)
    {
      break;
    }

    --v3;
  }

  while (v4 == 1);
  return v4 != 1;
}

size_t ofi_byteq_readv(uint64_t a1, void **a2, unint64_t a3, unint64_t a4)
{
  if (a3 != 1 || a4)
  {
    v11 = *(a1 + 8);
    v12 = *(a1 + 12);
    if (v12 != v11)
    {
      v13 = (v12 - v11);
      v14 = ofi_copy_iov_buf(a2, a3, a4, a1 + v11 + 16, v13, 1);
      v7 = v14;
      if (v14 < v13)
      {
        *(a1 + 8) += v14;
        return v7;
      }

LABEL_11:
      *(a1 + 8) = 0;
      return v7;
    }

    return 0;
  }

  v5 = *(a1 + 8);
  v6 = *(a1 + 12);
  v7 = (v6 - v5);
  if (v6 == v5)
  {
    return 0;
  }

  v8 = *a2;
  v9 = a2[1];
  v10 = (a1 + v5 + 16);
  if (v9 >= v7)
  {
    memcpy(v8, v10, v7);
    goto LABEL_11;
  }

  memcpy(v8, v10, v9);
  *(a1 + 8) += v9;
  return v9;
}

unsigned int *ofi_byteq_writev(unsigned int *result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v3 = a3;
    v4 = result;
    v5 = 0;
    v6 = 8;
    v7 = a3;
    do
    {
      v5 += *(a2 + v6);
      v6 += 16;
      --v7;
    }

    while (v7);
    v8 = result[3];
    v9 = *result - v8;
    if (v5 > v9)
    {
      ofi_byteq_writev_cold_2();
    }

    if (a3 == 1)
    {
      v10 = *(a2 + 8);
      if (v9 < v10)
      {
        ofi_byteq_writev_cold_1();
      }

      result = memcpy(result + v8 + 16, *a2, v10);
      v4[3] += v10;
    }

    else
    {
      v11 = (a2 + 8);
      do
      {
        result = memcpy(v4 + v8 + 16, *(v11 - 1), *v11);
        v12 = *v11;
        v11 += 2;
        LODWORD(v8) = v4[3] + v12;
        v4[3] = v8;
        --v3;
      }

      while (v3);
    }
  }

  return result;
}

uint64_t ofi_bsock_flush(uint64_t a1)
{
  if (*(a1 + 76) == *(a1 + 72))
  {
    return 0;
  }

  result = (*(*(a1 + 8) + 48))();
  if ((result & 0x8000000000000000) == 0)
  {
    v4 = *(a1 + 72);
    v3 = *(a1 + 76);
    if (result == v3 - v4)
    {
      v3 = 0;
      v5 = 0;
      *(a1 + 76) = 0;
    }

    else
    {
      v5 = v4 + result;
    }

    *(a1 + 72) = v5;
    if (v3 == v5)
    {
      return 0;
    }

    else
    {
      return 4294967261;
    }
  }

  return result;
}

ssize_t ofi_bsock_flush_sync(int *a1)
{
  v1 = a1[18];
  v2 = a1[19];
  if (v2 == v1)
  {
    return 0;
  }

  v5 = v2 - v1;
  v6 = *a1;
  v7 = a1 + v1;
  if (v5 >= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFFLL;
  }

  else
  {
    v8 = v5;
  }

  result = send(v6, v7 + 80, v8, 0x80000);
  if ((result & 0x8000000000000000) == 0)
  {
    v10 = a1[18];
    v9 = a1[19];
    if (result == v9 - v10)
    {
      v9 = 0;
      v11 = 0;
      a1[19] = 0;
    }

    else
    {
      v11 = v10 + result;
    }

    a1[18] = v11;
    if (v9 == v11)
    {
      return 0;
    }

    else
    {
      return 4294967261;
    }
  }

  return result;
}

uint64_t ofi_bsock_send(uint64_t a1, void *__src, size_t *a3)
{
  v6 = *(a1 + 76);
  if (v6 != *(a1 + 72))
  {
    v10 = *a3;
    if (*a3 < *(a1 + 64) - v6)
    {
      memcpy((a1 + v6 + 80), __src, *a3);
      *(a1 + 76) += v10;
      LODWORD(result) = ofi_bsock_flush(a1);
      if (result == -35)
      {
        return 0;
      }

      else
      {
        return result;
      }
    }

    result = ofi_bsock_flush(a1);
    if (result)
    {
LABEL_18:
      *a3 = 0;
      return result;
    }

    if (*(a1 + 76) != *(a1 + 72))
    {
      ofi_bsock_send_cold_1();
    }
  }

  v7 = *a3;
  v8 = *(a1 + 18096);
  result = (*(*(a1 + 8) + 48))();
  if (v7 <= v8)
  {
    if ((result & 0x8000000000000000) == 0)
    {
      *a3 = result;
      return 0;
    }
  }

  else if ((result & 0x8000000000000000) == 0)
  {
    ++*(a1 + 18104);
    *a3 = result;
    return 4294966784;
  }

  if (result != -513)
  {
    if (result == -35)
    {
      v11 = *a3;
      v12 = *(a1 + 76);
      if (*a3 < *(a1 + 64) - v12)
      {
        memcpy((a1 + v12 + 80), __src, *a3);
        result = 0;
        *(a1 + 76) += v11;
        return result;
      }
    }

    goto LABEL_18;
  }

  return 4294966783;
}

size_t ofi_bsock_sendv(uint64_t a1, void **a2, size_t a3, size_t *a4)
{
  v8 = a3;
  if (!a3)
  {
LABEL_8:
    *a4 = v8;
    v14 = *(a1 + 76);
    if (v14 != *(a1 + 72))
    {
      v17 = (a1 + 64);
      if (v8 < *(a1 + 64) - v14)
      {
        ofi_byteq_writev(v17, a2, a3);
        LODWORD(result) = ofi_bsock_flush(a1);
        if (result == -35)
        {
          return 0;
        }

        else
        {
          return result;
        }
      }

      result = ofi_bsock_flush(a1);
      if (result)
      {
        goto LABEL_26;
      }

      if (*(a1 + 76) != *(a1 + 72))
      {
        ofi_bsock_sendv_cold_1();
      }
    }

    v15 = *a4;
    v16 = *(a1 + 18096);
    result = (*(*(a1 + 8) + 56))();
    if (v15 <= v16)
    {
      if ((result & 0x8000000000000000) == 0)
      {
        *a4 = result;
        return 0;
      }
    }

    else if ((result & 0x8000000000000000) == 0)
    {
      ++*(a1 + 18104);
      *a4 = result;
      return 4294966784;
    }

    if (result == -513)
    {
      return 4294966783;
    }

    if (result == -35)
    {
      v19 = *(a1 + 64);
      v18 = (a1 + 64);
      if (*a4 < v19 - v18[3])
      {
        ofi_byteq_writev(v18, a2, a3);
        return 0;
      }
    }

LABEL_26:
    *a4 = 0;
    return result;
  }

  if (a3 != 1)
  {
    v8 = 0;
    v11 = (a2 + 1);
    v12 = a3;
    do
    {
      v13 = *v11;
      v11 += 2;
      v8 += v13;
      --v12;
    }

    while (v12);
    goto LABEL_8;
  }

  v9 = *a2;
  *a4 = a2[1];

  return ofi_bsock_send(a1, v9, a4);
}

uint64_t ofi_bsock_recv(uint64_t a1, char *__dst, size_t *a3)
{
  v6 = *(a1 + 9092);
  v7 = *(a1 + 9088);
  v8 = (v6 - v7);
  if (v6 == v7)
  {
    v8 = 0;
LABEL_9:
    v12 = 1;
    goto LABEL_10;
  }

  v9 = *a3;
  v10 = (a1 + v7 + 9096);
  if (*a3 >= v8)
  {
    memcpy(__dst, v10, v8);
    v6 = 0;
    *(a1 + 9092) = 0;
  }

  else
  {
    memcpy(__dst, v10, *a3);
    v6 = *(a1 + 9088) + v9;
    v8 = v9;
  }

  *(a1 + 9088) = v6;
  if (!v8)
  {
    goto LABEL_9;
  }

  if (*a3 == v8)
  {
    return 0;
  }

  v12 = 0;
  __dst += v8;
  *a3 -= v8;
LABEL_10:
  if (*(a1 + 9092) != v6)
  {
    ofi_bsock_recv_cold_1();
  }

  v13 = *a3;
  v14 = *(a1 + 9080);
  if (*a3 >= v14 >> 1)
  {
    v15 = (*(*(a1 + 8) + 64))();
    if (v15 >= 1)
    {
      v11 = 0;
      v21 = v15 + v8;
LABEL_28:
      *a3 = v21;
      return v11;
    }
  }

  else
  {
    if (v14 == v6)
    {
      ofi_bsock_recv_cold_4();
    }

    v15 = (*(*(a1 + 8) + 64))();
    if (v15 >= 1)
    {
      v16 = *(a1 + 9092) + v15;
      *(a1 + 9092) = v16;
      v17 = *(a1 + 9088);
      if (v16 == v17)
      {
        ofi_bsock_recv_cold_2();
      }

      v18 = *a3;
      v19 = (v16 - v17);
      v20 = (a1 + 9096 + v17);
      if (*a3 >= v19)
      {
        memcpy(__dst, v20, (v16 - v17));
        *(a1 + 9088) = 0;
      }

      else
      {
        memcpy(__dst, v20, *a3);
        *(a1 + 9088) += v18;
        v19 = v18;
      }

      v11 = 0;
      v21 = v19 + v8;
      goto LABEL_28;
    }
  }

  *a3 = v8;
  if (v15 == -513)
  {
    if (*(a1 + 18112) == 1)
    {
      ofi_bsock_recv_cold_3();
    }

    *(a1 + 18112) = v13 < v14 >> 1;
    return 4294966783;
  }

  else if (v12)
  {
    return v15;
  }

  else
  {
    return 0;
  }
}

uint64_t ofi_bsock_recvv(uint64_t a1, void **a2, unint64_t a3, size_t *a4)
{
  v8 = a3;
  if (!a3)
  {
LABEL_8:
    *a4 = v8;
    v14 = *(a1 + 9092);
    if (v14 == *(a1 + 9088))
    {
      v15 = *(a1 + 9080);
      if (v8 < v15 >> 1)
      {
        v16 = 0;
LABEL_14:
        if (v15 == v14)
        {
          ofi_bsock_recvv_cold_4();
        }

        v19 = (*(*(a1 + 8) + 64))();
        if (v19 >= 1)
        {
          v20 = *(a1 + 9092) + v19;
          *(a1 + 9092) = v20;
          if (v20 == *(a1 + 9088))
          {
            ofi_bsock_recvv_cold_2();
          }

          v21 = ofi_byteq_readv(a1 + 9080, a2, a3, v16);
          v18 = 0;
          *a4 = v21 + v16;
          return v18;
        }

        v22 = 1;
LABEL_24:
        *a4 = v16;
        if (v19 == -513)
        {
          if (*(a1 + 18112) == 1)
          {
            ofi_bsock_recvv_cold_3();
          }

          *(a1 + 18112) = v22;
          return 4294966783;
        }

        else if (v16)
        {
          return 0;
        }

        else
        {
          return v19;
        }
      }
    }

    else
    {
      v17 = ofi_byteq_readv(a1 + 9080, a2, a3, 0);
      v18 = *a4 - v17;
      if (*a4 == v17)
      {
        return v18;
      }

      *a4 = v18;
      v14 = *(a1 + 9088);
      if (*(a1 + 9092) != v14)
      {
        ofi_bsock_recvv_cold_1();
      }

      v16 = v17;
      v15 = *(a1 + 9080);
      if (v18 < v15 >> 1)
      {
        goto LABEL_14;
      }

      if (v17)
      {
        v18 = 0;
        *a4 = v17;
        return v18;
      }
    }

    v19 = (*(*(a1 + 8) + 72))();
    if (v19 < 1)
    {
      v22 = 0;
      v16 = 0;
      goto LABEL_24;
    }

    v18 = 0;
    *a4 = v19;
    return v18;
  }

  if (a3 != 1)
  {
    v8 = 0;
    v11 = (a2 + 1);
    v12 = a3;
    do
    {
      v13 = *v11;
      v11 += 2;
      v8 += v13;
      --v12;
    }

    while (v12);
    goto LABEL_8;
  }

  v9 = *a2;
  *a4 = a2[1];

  return ofi_bsock_recv(a1, v9, a4);
}

uint64_t ofi_bsock_prefetch_done(uint64_t result, unint64_t a2)
{
  v2 = *(result + 9092);
  if (*(result + 9080) - v2 < a2)
  {
    ofi_bsock_prefetch_done_cold_3();
  }

  if ((*(result + 18112) & 1) == 0)
  {
    ofi_bsock_prefetch_done_cold_1();
  }

  v3 = v2 + a2;
  *(result + 9092) = v3;
  if (v3 == *(result + 9088))
  {
    ofi_bsock_prefetch_done_cold_2();
  }

  *(result + 18112) = 0;
  return result;
}

uint64_t ofi_pollfds_grow(int *a1, int a2)
{
  if (!(*(a1 + 24))(a1 + 32))
  {
    ofi_pollfds_grow_cold_1();
  }

  if (*a1 > a2)
  {
    return 0;
  }

  v5 = *a1 + 64;
  if (a2 + 1 > v5)
  {
    v5 = a2 + 1;
  }

  v6 = v5;
  v7 = malloc_type_calloc(v5, 0x18uLL, 0x100004000313F17uLL);
  if (!v7)
  {
    return 4294967284;
  }

  v8 = v7;
  v9 = &v7[8 * v6];
  v10 = *a1;
  if (v10)
  {
    memcpy(v7, *(a1 + 1), 8 * v10);
    memcpy(v9, *(a1 + 2), 16 * *a1);
    free(*(a1 + 1));
    LODWORD(v10) = *a1;
  }

  if (v10 < v6)
  {
    v11 = &v8[16 * v10 + 8 + 8 * v6];
    v12 = &v8[8 * v10];
    do
    {
      *v11 = -1;
      v11 += 16;
      *v12 = -1;
      v12 += 8;
      LODWORD(v10) = v10 + 1;
    }

    while (v6 > v10);
    *a1 = v10;
  }

  result = 0;
  *(a1 + 1) = v8;
  *(a1 + 2) = v9;
  return result;
}

uint64_t ofi_pollfds_ctl(uint64_t a1, int a2, int a3, int a4, uint64_t a5)
{
  v10 = malloc_type_calloc(1uLL, 0x20uLL, 0x10A00403A86D549uLL);
  if (!v10)
  {
    return 4294967284;
  }

  v11 = v10;
  *v10 = a3;
  v10[1] = a4;
  *(v10 + 1) = a5;
  v10[4] = a2;
  (*(a1 + 200))(a1 + 128);
  v12 = v11 + 6;
  v13 = (a1 + 104);
  if (*(a1 + 104))
  {
    v13 = *(a1 + 112);
  }

  *v13 = v12;
  *v12 = 0;
  *(a1 + 112) = v12;
  v15 = 0;
  pthread_mutex_lock((a1 + 24));
  if (!*(a1 + 96))
  {
    if (send(*(a1 + 92), &v15, 1uLL, 0) != 1)
    {
      sock_conn_stop_listener_thread_cold_1();
    }

    ++*(a1 + 96);
  }

  pthread_mutex_unlock((a1 + 24));
  (*(a1 + 208))(a1 + 128);
  return 0;
}

uint64_t ofi_pollfds_mod(uint64_t a1, signed int a2, int a3, uint64_t a4)
{
  (*(a1 + 200))(a1 + 128);
  ctx = ofi_pollfds_get_ctx(a1, a2);
  if (ctx)
  {
    *(*(a1 + 8) + 8 * *(ctx + 8) + 4) = a3;
LABEL_8:
    *ctx = a4;
  }

  else
  {
    if (!(*(a1 + 192))(a1 + 128))
    {
      ofi_pollfds_mod_cold_2();
    }

    v9 = (a1 + 104);
    while (1)
    {
      v9 = *v9;
      if (!v9)
      {
        break;
      }

      if (*(v9 - 6) == a2)
      {
        *(v9 - 5) = a3;
        ctx = (v9 - 2);
        goto LABEL_8;
      }
    }
  }

  v11 = 0;
  pthread_mutex_lock((a1 + 24));
  if (!*(a1 + 96))
  {
    if (send(*(a1 + 92), &v11, 1uLL, 0) != 1)
    {
      sock_conn_stop_listener_thread_cold_1();
    }

    ++*(a1 + 96);
  }

  pthread_mutex_unlock((a1 + 24));
  (*(a1 + 208))(a1 + 128);
  return 0;
}

uint64_t ofi_pollfds_wait(uint64_t a1, uint64_t a2, int a3, int a4)
{
  (*(a1 + 200))(a1 + 128);
  if (*(a1 + 104))
  {
    ofi_pollfds_process_work(a1);
  }

  if (a4)
  {
    v8 = 0;
  }

  else
  {
    v8 = -1;
  }

  v21 = v8;
  if (a4 < 0)
  {
    LODWORD(v20) = 0;
  }

  else
  {
    __tp.tv_sec = 0;
    __tp.tv_nsec = 0;
    clock_gettime(_CLOCK_MONOTONIC, &__tp);
    v20 = (__tp.tv_nsec + 1000000000 * __tp.tv_sec) / 0xF4240uLL + a4;
  }

  v9 = a4;
  while (1)
  {
    (*(a1 + 208))(a1 + 128);
    v10 = poll((*(a1 + 8) + 8 * (a4 == 0)), *(a1 + 4) + v21, v9);
    v11 = v10;
    if (!v10)
    {
      return v11;
    }

    if (v10 == -1)
    {
      return -*__error();
    }

    (*(a1 + 200))(a1 + 128);
    if (a4 && *(*(a1 + 8) + 6))
    {
      if (v11 <= 0)
      {
        ofi_pollfds_wait_cold_3();
      }

      LOBYTE(__tp.tv_sec) = 0;
      pthread_mutex_lock((a1 + 24));
      while (*(a1 + 96))
      {
        while (recv(*(a1 + 88), &__tp, 1uLL, 0) == 1)
        {
          v12 = *(a1 + 96) - 1;
          *(a1 + 96) = v12;
          if (!v12)
          {
            goto LABEL_23;
          }
        }

        if (*__error() != 35 && *__error() != 35)
        {
          sock_conn_listener_thread_cold_1();
        }

        if (fi_poll_fd(*(a1 + 88), 10000) < 1)
        {
          sock_conn_listener_thread_cold_2();
        }
      }

LABEL_23:
      pthread_mutex_unlock((a1 + 24));
      LODWORD(v11) = v11 - 1;
    }

    if (*(a1 + 104))
    {
      ofi_pollfds_process_work(a1);
    }

    if (v11 >= a3)
    {
      v13 = a3;
    }

    else
    {
      v13 = v11;
    }

    if (v13)
    {
      v14 = 0;
      v15 = 0;
      v11 = 0;
      do
      {
        if (++v15 >= *(a1 + 4))
        {
          break;
        }

        v16 = *(a1 + 8) + v14;
        if (*(v16 + 14))
        {
          ctx = ofi_pollfds_get_ctx(a1, *(v16 + 8));
          if (ctx)
          {
            v18 = a2 + 32 * v11;
            *(v18 + 8) = *(*(a1 + 8) + v14 + 14);
            v11 = (v11 + 1);
            *(v18 + 24) = *ctx;
          }

          --v13;
        }

        v14 += 8;
      }

      while (v13);
      if (v11)
      {
        goto LABEL_41;
      }
    }

    if ((v9 & 0x80000000) == 0)
    {
      __tp.tv_sec = 0;
      __tp.tv_nsec = 0;
      clock_gettime(_CLOCK_MONOTONIC, &__tp);
      v9 = v20 - (__tp.tv_nsec + 1000000000 * __tp.tv_sec) / 0xF4240uLL;
      if (v9 <= 0)
      {
        v11 = 0;
LABEL_41:
        (*(a1 + 208))(a1 + 128);
        return v11;
      }
    }
  }
}

void ofi_pollfds_process_work(uint64_t a1)
{
  if (!(*(a1 + 192))(a1 + 128))
  {
    ofi_pollfds_process_work_cold_2();
  }

  v3 = (a1 + 104);
  v2 = *(a1 + 104);
  if (v2)
  {
    do
    {
      if (v2 == *(a1 + 112))
      {
        *v3 = 0;
        *(a1 + 112) = 0;
      }

      else
      {
        *v3 = *v2;
      }

      v4 = (v2 - 3);
      v5 = *(v2 - 2);
      if (v5 == 1)
      {
        ofi_pollfds_do_del(a1, *v4);
      }

      else
      {
        if (v5)
        {
          ofi_pollfds_process_work_cold_1();
        }

        ofi_pollfds_do_add(a1, *(v2 - 6), *(v2 - 5), *(v2 - 2));
      }

      free(v4);
      v2 = *v3;
    }

    while (*v3);
  }
}

void ofi_pollfds_close(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v4 = (a1 + 104);
    v3 = *(a1 + 104);
    if (v3)
    {
      do
      {
        if (v3 == *(a1 + 112))
        {
          *v4 = 0;
          v4[1] = 0;
        }

        else
        {
          *v4 = *v3;
        }

        free(v3 - 3);
        v3 = *v4;
      }

      while (*v4);
    }

    ofi_genlock_destroy((a1 + 120), a2);
    close(*(a1 + 88));
    close(*(a1 + 92));
    pthread_mutex_destroy((a1 + 24));
    free(*(a1 + 8));

    free(a1);
  }
}

uint64_t ofi_pollfds_create_(void **a1, int a2)
{
  v4 = malloc_type_calloc(1uLL, 0xE8uLL, 0x10A204083098689uLL);
  *a1 = v4;
  if (!v4)
  {
    return 4294967284;
  }

  v5 = ofi_genlock_init(v4 + 120, a2);
  if (v5)
  {
LABEL_14:
    free(*a1);
    return v5;
  }

  (*(*a1 + 25))(*a1 + 128);
  v5 = ofi_pollfds_grow(*a1, 63);
  (*(*a1 + 26))(*a1 + 128);
  if (v5)
  {
LABEL_13:
    ofi_genlock_destroy(*a1 + 30, v6);
    goto LABEL_14;
  }

  v7 = *a1;
  if (socketpair(1, 1, 0, *a1 + 22) < 0)
  {
    v9 = *__error();
    if (v9)
    {
      v5 = -v9;
      goto LABEL_12;
    }
  }

  else
  {
    *(v7 + 24) = 0;
    v5 = pthread_mutex_init((v7 + 24), 0);
    if (v5)
    {
LABEL_8:
      close(*(v7 + 22));
      close(*(v7 + 23));
LABEL_12:
      free(*(*a1 + 1));
      goto LABEL_13;
    }

    v8 = fi_fd_nonblock(*(v7 + 22));
    if (v8)
    {
      v5 = v8;
      pthread_mutex_destroy((v7 + 24));
      goto LABEL_8;
    }
  }

  v11 = *a1;
  v12 = *(*a1 + 1);
  *v12 = *(*a1 + 22);
  *(v12 + 4) = 1;
  ++v11[1];
  *(v11 + 13) = 0;
  *(v11 + 14) = 0;
  v13 = *a1;
  v5 = 0;
  if ((a2 & 0xFFFFFFFE) == 2)
  {
    v13[27] = ofi_pollfds_sync_add;
    v14 = *a1;
    v15 = ofi_pollfds_sync_del;
  }

  else
  {
    v13[27] = ofi_pollfds_add_ctl;
    v14 = *a1;
    v15 = ofi_pollfds_del_ctl;
  }

  v14[28] = v15;
  return v5;
}

uint64_t ofi_pollfds_sync_add(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  (*(a1 + 200))(a1 + 128);
  ofi_pollfds_do_add(a1, a2, v5, a4);
  (*(a1 + 208))(a1 + 128);
  return 0;
}

uint64_t ofi_pollfds_sync_del(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  (*(a1 + 200))(a1 + 128);
  ofi_pollfds_do_del(a1, v2);
  (*(a1 + 208))(a1 + 128);
  return 0;
}

void ofi_dynpoll_close(uint64_t a1, uint64_t a2)
{
  if (*a1 == 2)
  {
    v4 = *(a1 + 8);

    ofi_pollfds_close(v4, a2);
  }

  else
  {
    if (*a1 != 1)
    {
      ofi_dynpoll_close_cold_1();
    }

    v3 = *(a1 + 8);

    close(v3);
  }
}

uint64_t ofi_dynpoll_create(uint64_t a1, int a2, int a3)
{
  *a1 = a2;
  if (a2 == 2)
  {
    result = ofi_pollfds_create_((a1 + 8), a3);
    v5 = ofi_dynpoll_get_fd_poll;
    v6 = ofi_dynpoll_wait_poll;
    v7 = ofi_dynpoll_del_poll;
    v8 = ofi_dynpoll_mod_poll;
    v9 = ofi_dynpoll_add_poll;
  }

  else
  {
    if (a2 != 1)
    {
      ofi_dynpoll_create_cold_1();
    }

    v4 = kqueue();
    *(a1 + 8) = v4;
    v5 = ofi_dynpoll_get_fd_epoll;
    v6 = ofi_dynpoll_wait_epoll;
    v7 = ofi_dynpoll_del_epoll;
    v8 = ofi_dynpoll_mod_epoll;
    v9 = ofi_dynpoll_add_epoll;
    if (v4 < 0)
    {
      result = -*__error();
      v5 = ofi_dynpoll_get_fd_epoll;
      v6 = ofi_dynpoll_wait_epoll;
      v7 = ofi_dynpoll_del_epoll;
      v8 = ofi_dynpoll_mod_epoll;
      v9 = ofi_dynpoll_add_epoll;
    }

    else
    {
      result = 0;
    }
  }

  *(a1 + 16) = v9;
  *(a1 + 24) = v8;
  *(a1 + 32) = v7;
  *(a1 + 40) = v6;
  *(a1 + 48) = v5;
  return result;
}

uint64_t ofi_dynpoll_add_epoll(_DWORD *a1, int a2, char a3, void *a4)
{
  v11 = *MEMORY[0x29EDCA608];
  if (*a1 != 1)
  {
    ofi_dynpoll_add_epoll_cold_1();
  }

  v5 = a1[2];
  if (a3)
  {
    changelist[0].ident = a2;
    *&changelist[0].filter = 0x1FFFFLL;
    changelist[0].data = 0;
    changelist[0].udata = a4;
    v6 = 1;
    if ((a3 & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v6 = 0;
  if ((a3 & 4) != 0)
  {
LABEL_6:
    v7 = &changelist[v6];
    v7->ident = a2;
    *&v7->filter = 131070;
    ++v6;
    v7->data = 0;
    v7->udata = a4;
  }

LABEL_7:
  v8 = kevent(v5, changelist, v6, 0, 0, 0);
  result = 0;
  if (v8 < 0)
  {
    return -*__error();
  }

  return result;
}

uint64_t ofi_dynpoll_mod_epoll(_DWORD *a1, int a2, char a3, void *a4)
{
  v16 = *MEMORY[0x29EDCA608];
  if (*a1 != 1)
  {
    ofi_dynpoll_mod_epoll_cold_1();
  }

  v7 = a1[2];
  if ((a3 & 1) == 0)
  {
    changelist[0].ident = a2;
    *&changelist[0].filter = 196607;
    *&changelist[0].fflags = 0uLL;
    v8 = 1;
    HIDWORD(changelist[0].udata) = 0;
    if ((a3 & 4) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v8 = 0;
  if ((a3 & 4) == 0)
  {
LABEL_6:
    v9 = &changelist[v8];
    v9->ident = a2;
    *&v9->filter = 196606;
    *(&v9->data + 4) = 0;
    ++v8;
    *&v9->fflags = 0;
    HIDWORD(v9->udata) = 0;
  }

LABEL_7:
  if ((kevent(v7, changelist, v8, 0, 0, 0) & 0x80000000) == 0 || *__error() == 2)
  {
    if (a3)
    {
      v15[0].ident = a2;
      *&v15[0].filter = 0x1FFFFLL;
      v15[0].data = 0;
      v15[0].udata = a4;
      v10 = 1;
      if ((a3 & 4) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v10 = 0;
      if ((a3 & 4) == 0)
      {
LABEL_14:
        v12 = kevent(v7, v15, v10, 0, 0, 0);
        result = 0;
        if ((v12 & 0x80000000) == 0)
        {
          return result;
        }

        return -*__error();
      }
    }

    v11 = &v15[v10];
    v11->ident = a2;
    *&v11->filter = 131070;
    ++v10;
    v11->data = 0;
    v11->udata = a4;
    goto LABEL_14;
  }

  return -*__error();
}

uint64_t ofi_dynpoll_del_epoll(_DWORD *a1, int a2)
{
  v10 = *MEMORY[0x29EDCA608];
  if (*a1 != 1)
  {
    ofi_dynpoll_del_epoll_cold_1();
  }

  v2 = a1[2];
  changelist.ident = a2;
  *&changelist.filter = 196607;
  memset(&changelist.fflags, 0, 20);
  v5 = a2;
  v6 = 196606;
  v8 = 0;
  v7 = 0;
  v9 = 0;
  if (kevent(v2, &changelist, 2, 0, 0, 0) < 0 && *__error() != 2)
  {
    return -*__error();
  }

  else
  {
    return 0;
  }
}

uint64_t ofi_dynpoll_wait_epoll(_DWORD *a1, kevent *eventlist, int nevents, unsigned int a4)
{
  if (*a1 != 1)
  {
    ofi_dynpoll_wait_epoll_cold_1();
  }

  v4 = a1[2];
  v7 = 0;
  v8 = 0;
  if ((a4 & 0x80000000) != 0)
  {
    v5 = 0;
  }

  else
  {
    if (a4)
    {
      v7 = a4 / 0x3E8uLL;
      v8 = 1000000 * (a4 % 0x3E8);
    }

    v5 = &v7;
  }

  result = kevent(v4, 0, 0, eventlist, nevents, v5);
  if ((result & 0x80000000) != 0)
  {
    return -*__error();
  }

  return result;
}

uint64_t ofi_dynpoll_get_fd_epoll(_DWORD *a1, uint64_t a2)
{
  if (*a1 != 1)
  {
    ofi_dynpoll_get_fd_epoll_cold_1();
  }

  return a1[2];
}

uint64_t ofi_dynpoll_add_poll(uint64_t a1, uint64_t a2)
{
  if (*a1 != 2)
  {
    ofi_dynpoll_add_poll_cold_1();
  }

  v3 = *(*(a1 + 8) + 216);

  return v3();
}

uint64_t ofi_dynpoll_mod_poll(uint64_t a1, signed int a2, int a3, uint64_t a4)
{
  if (*a1 != 2)
  {
    ofi_dynpoll_mod_poll_cold_1();
  }

  ofi_pollfds_mod(*(a1 + 8), a2, a3, a4);
  return 0;
}

uint64_t ofi_dynpoll_del_poll(uint64_t a1, uint64_t a2)
{
  if (*a1 != 2)
  {
    ofi_dynpoll_del_poll_cold_1();
  }

  v3 = *(*(a1 + 8) + 224);

  return v3();
}

uint64_t ofi_dynpoll_wait_poll(uint64_t a1, uint64_t a2, int a3, int a4)
{
  if (*a1 != 2)
  {
    ofi_dynpoll_wait_poll_cold_1();
  }

  v5 = *(a1 + 8);

  return ofi_pollfds_wait(v5, a2, a3, a4);
}

uint64_t ofi_dynpoll_get_fd_poll(_DWORD *a1, uint64_t a2)
{
  if (*a1 != 2)
  {
    ofi_dynpoll_get_fd_poll_cold_1();
  }

  return 0xFFFFFFFFLL;
}

void *ofi_free_list_of_addr(uint64_t a1)
{
  result = *a1;
  if (result)
  {
    do
    {
      if (result == *(a1 + 8))
      {
        *a1 = 0;
        *(a1 + 8) = 0;
      }

      else
      {
        *a1 = *result;
      }

      free(result);
      result = *a1;
    }

    while (*a1);
  }

  return result;
}

uint64_t ofi_getifaddrs(ifaddrs **a1)
{
  v2 = 0;
  while (1)
  {
    if (v2 >= 2)
    {
      usleep(1000 << v2);
    }

    result = getifaddrs(a1);
    if (!result)
    {
      break;
    }

    if (*__error() != 61 || v2++ == 9)
    {
      return -*__error();
    }
  }

  return result;
}

uint64_t ofi_set_netmask_str(char *a1, size_t a2, uint64_t a3)
{
  v11 = *MEMORY[0x29EDCA608];
  memset(__dst, 0, sizeof(__dst));
  *a1 = 0;
  v5 = ofi_mask_addr(__dst, *(a3 + 24), *(a3 + 32));
  if (BYTE1(__dst[0]) == 30)
  {
    v6 = __dst + 8;
    v7 = 30;
  }

  else
  {
    if (BYTE1(__dst[0]) != 2)
    {
      snprintf(a1, a2, "%s", "<unknown>");
      a1[a2 - 1] = 0;
      goto LABEL_7;
    }

    v6 = __dst + 4;
    v7 = 2;
  }

  inet_ntop(v7, v6, a1, a2);
LABEL_7:
  v8 = strlen(a1);
  result = snprintf(&a1[v8], a2 - v8, "%s%d", "/", v5);
  a1[a2 - 1] = 0;
  return result;
}

uint64_t ofi_get_list_of_addr(void *a1, char *a2, void *a3)
{
  v39 = 0;
  v40 = 0;
  fi_param_get(a1, a2, &v40);
  if (!ofi_getifaddrs(&v39))
  {
    v5 = v40;
    if (v40)
    {
      v6 = &v39;
      while (1)
      {
        v6 = *v6;
        if (!v6)
        {
          break;
        }

        v7 = strlen(v5);
        if (!strncmp(v5, v6[1], v7 + 1))
        {
          goto LABEL_10;
        }
      }

      if (fi_log_enabled(a1, 2, 0))
      {
        v8 = *__error();
        fi_log(a1, 2, 0, "ofi_get_list_of_addr", 2103, "Can't set filter to unknown interface: (%s)\n", v40);
        *__error() = v8;
      }

      v40 = 0;
    }

LABEL_10:
    v9 = v39;
    if (v39)
    {
      v10 = (a3 + 1);
      do
      {
        ifa_addr = v9->ifa_addr;
        if (ifa_addr && (v9->ifa_flags & 0x49) == 0x41)
        {
          sa_family = ifa_addr->sa_family;
          if (sa_family == 30 || sa_family == 2)
          {
            if (!v40 || (v14 = strlen(v40), !strncmp(v40, v9->ifa_name, v14 + 1)))
            {
              v15 = malloc_type_calloc(1uLL, 0x138uLL, 0x102004037C7012DuLL);
              if (v15)
              {
                v16 = v15;
                *(v15 + 38) = 0x18000000000000;
                v17 = v9->ifa_addr->sa_family;
                if (v17 != 2 && v17 != 27 && v17 != 30 && fi_log_enabled(&core_prov, 0, 0))
                {
                  v18 = *__error();
                  fi_log(&core_prov, 0, 0, "ofi_sizeofaddr", 692, "Unknown address format\n");
                  *__error() = v18;
                }

                __memcpy_chk();
                strncpy(v16 + 208, v9->ifa_name, 0x5FuLL);
                ofi_set_netmask_str(v16 + 112, 0x60uLL, v9);
                v19 = v9->ifa_addr;
                v20 = v19->sa_family;
                v21 = &v19->sa_data[6];
                v22 = &v19->sa_data[2];
                if (v20 != 2)
                {
                  v22 = 0;
                }

                if (v20 == 27)
                {
                  v22 = v21;
                }

                if (v20 == 30)
                {
                  v23 = v21;
                }

                else
                {
                  v23 = v22;
                }

                if (inet_ntop(v20, v23, v16 + 8, 0x2Eu))
                {
                  *(v16 + 13) = 0;
                  if (fi_log_enabled(a1, 2, 0))
                  {
                    v24 = *__error();
                    fi_log(a1, 2, 0, "ofi_get_list_of_addr", 2146, "Available addr: %s, iface name: %s, speed: %zu\n", v16 + 8, v9->ifa_name, *(v16 + 13));
                    *__error() = v24;
                  }

                  v25 = 0;
                  v26 = a3;
                  while (1)
                  {
                    v26 = *v26;
                    if (!v26)
                    {
                      break;
                    }

                    v27 = v25;
                    v28 = ofi_compare_addr_entry(v26, v16);
                    v25 = v26;
                    if (v28)
                    {
                      if (v27)
                      {
                        v29 = *v27;
                      }

                      else
                      {
                        v29 = *a3;
                        if (!*a3)
                        {
                          *v10 = v16;
                        }

                        v27 = a3;
                      }

                      goto LABEL_52;
                    }
                  }

                  v30 = a3;
                  if (*a3)
                  {
                    v30 = *v10;
                  }

                  v29 = 0;
                  *v30 = v16;
                  v27 = (a3 + 1);
LABEL_52:
                  *v16 = v29;
                  *v27 = v16;
                }

                else
                {
                  free(v16);
                }
              }
            }
          }
        }

        v9 = v9->ifa_next;
      }

      while (v9);
      v31 = v39;
    }

    else
    {
      v31 = 0;
    }

    MEMORY[0x29EDAFA80](v31);
  }

  v32 = v40;
  if (!v40 || (v33 = strlen(v40), !strncmp(v40, "lo", v33 + 1)) || (result = strncmp(v32, "loopback", v33 + 1), !result))
  {
    result = malloc_type_calloc(1uLL, 0x138uLL, 0x102004037C7012DuLL);
    if (result)
    {
      v35 = result;
      *(result + 304) = 0x8000000000000;
      *(result + 57) = 2;
      *(result + 60) = 16777343;
      ofi_straddr_log_internal("ofi_insert_loopback_addr", 1976, 0, a1, 2, 0, "available addr: ", (result + 56));
      *(v35 + 8) = *"127.0.0.1";
      *(v35 + 24) = unk_29ED12A98;
      *(v35 + 38) = unk_29ED12AA6;
      *(v35 + 144) = xmmword_29ED12AD7;
      *(v35 + 160) = unk_29ED12AE7;
      *(v35 + 176) = xmmword_29ED12AF7;
      *(v35 + 192) = unk_29ED12B07;
      *(v35 + 112) = *"127.0.0.1/32";
      *(v35 + 128) = *&algn_29ED12AC4[3];
      *(v35 + 208) = *"lo";
      *(v35 + 224) = unk_29ED12BB8;
      *(v35 + 272) = xmmword_29ED12BE8;
      *(v35 + 288) = unk_29ED12BF8;
      *(v35 + 240) = xmmword_29ED12BC8;
      *(v35 + 256) = unk_29ED12BD8;
      v36 = a3;
      if (*a3)
      {
        v36 = a3[1];
      }

      *v36 = v35;
      *v35 = 0;
      a3[1] = v35;
      result = malloc_type_calloc(1uLL, 0x138uLL, 0x102004037C7012DuLL);
      if (result)
      {
        v37 = result;
        *(result + 304) = 0x8000000000000;
        *(result + 57) = 30;
        *(result + 64) = *MEMORY[0x29EDCA688];
        result = ofi_straddr_log_internal("ofi_insert_loopback_addr", 1991, 0, a1, 2, 0, "available addr: ", (result + 56));
        *(v37 + 8) = *"::1";
        *(v37 + 24) = unk_29ED12B28;
        *(v37 + 38) = unk_29ED12B36;
        *(v37 + 144) = xmmword_29ED12B67;
        *(v37 + 160) = unk_29ED12B77;
        *(v37 + 176) = xmmword_29ED12B87;
        *(v37 + 192) = unk_29ED12B97;
        *(v37 + 112) = *"::1/128";
        *(v37 + 128) = unk_29ED12B57;
        *(v37 + 208) = *"lo";
        *(v37 + 224) = unk_29ED12BB8;
        *(v37 + 272) = xmmword_29ED12BE8;
        *(v37 + 288) = unk_29ED12BF8;
        *(v37 + 240) = xmmword_29ED12BC8;
        *(v37 + 256) = unk_29ED12BD8;
        v38 = a3;
        if (*a3)
        {
          v38 = a3[1];
        }

        *v38 = v37;
        *v37 = 0;
        a3[1] = v37;
      }
    }
  }

  return result;
}

uint64_t ofi_compare_addr_entry(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 104);
  v3 = *(a1 + 104);
  if (v2 > v3)
  {
    return 1;
  }

  if (v2 < v3)
  {
    return 0;
  }

  v5 = *(a2 + 57);
  v6 = *(a1 + 57);
  if (v5 < v6)
  {
    return 1;
  }

  if (v5 > v6)
  {
    return 0;
  }

  else
  {
    return ofi_addr_cmp(&core_prov, a2 + 56, a1 + 56);
  }
}

uint64_t ofi_cpu_supports(int a1, unsigned int a2, unsigned int a3)
{
  v4[2] = *MEMORY[0x29EDCA608];
  v4[0] = 0;
  v4[1] = 0;
  if (a1)
  {
    return 0;
  }

  else
  {
    return *(v4 + a2) & a3;
  }
}

size_t ofi_remove_comma(const char *a1)
{
  result = strlen(a1);
  if (result >= 2)
  {
    v3 = &a1[result];
    if (a1[result - 2] == 44 && *(v3 - 1) == 32 && !*v3)
    {
      *(v3 - 2) = 0;
    }
  }

  return result;
}

uint64_t ofi_nic_close(void *a1)
{
  if (!a1 || *a1 != 20)
  {
    ofi_nic_close_cold_1();
  }

  v2 = *(a1 + 3);
  if (v2)
  {
    free(*v2);
    free(*(*(a1 + 3) + 8));
    free(*(*(a1 + 3) + 16));
    free(*(*(a1 + 3) + 24));
    free(*(*(a1 + 3) + 32));
    free(*(*(a1 + 3) + 40));
    free(*(a1 + 3));
  }

  free(*(a1 + 4));
  v3 = *(a1 + 5);
  if (v3)
  {
    free(*v3);
    free(*(*(a1 + 5) + 32));
    free(*(a1 + 5));
  }

  free(a1);
  return 0;
}

uint64_t ofi_nic_control(void *a1, int a2, uint64_t *a3)
{
  if (a2 != 15)
  {
    return 4294967218;
  }

  v4 = ofi_nic_dup(a1);
  *a3 = v4;
  if (v4)
  {
    return 0;
  }

  else
  {
    return 4294967284;
  }
}

void *ofi_nic_dup(void *a1)
{
  v2 = malloc_type_calloc(1uLL, 0x38uLL, 0x10A00401A993988uLL);
  v3 = v2;
  if (v2)
  {
    if (a1)
    {
      if (*a1 != 20)
      {
        ofi_nic_dup_cold_1();
      }

      v4 = *a1;
      v2[2] = a1[2];
      *v2 = v4;
      v5 = a1[3];
      if (v5)
      {
        v6 = malloc_type_calloc(1uLL, 0x30uLL, 0x100407BD0BEC4uLL);
        v3[3] = v6;
        if (!v6)
        {
          goto LABEL_45;
        }

        v7 = v6;
        if (*v5)
        {
          v8 = strdup(*v5);
          *v7 = v8;
          if (!v8)
          {
            goto LABEL_45;
          }
        }

        else
        {
          *v6 = 0;
        }

        v10 = v5[1];
        v11 = v3[3];
        if (v10)
        {
          v12 = strdup(v10);
          *(v11 + 8) = v12;
          if (!v12)
          {
            goto LABEL_45;
          }
        }

        else
        {
          *(v11 + 8) = 0;
        }

        v13 = v5[2];
        v14 = v3[3];
        if (v13)
        {
          v15 = strdup(v13);
          *(v14 + 16) = v15;
          if (!v15)
          {
            goto LABEL_45;
          }
        }

        else
        {
          *(v14 + 16) = 0;
        }

        v16 = v5[3];
        v17 = v3[3];
        if (v16)
        {
          v18 = strdup(v16);
          *(v17 + 24) = v18;
          if (!v18)
          {
            goto LABEL_45;
          }
        }

        else
        {
          *(v17 + 24) = 0;
        }

        v19 = v5[4];
        v20 = v3[3];
        if (v19)
        {
          v21 = strdup(v19);
          *(v20 + 32) = v21;
          if (!v21)
          {
            goto LABEL_45;
          }
        }

        else
        {
          *(v20 + 32) = 0;
        }

        v22 = v5[5];
        v23 = v3[3];
        if (v22)
        {
          v24 = strdup(v22);
          *(v23 + 40) = v24;
          if (!v24)
          {
            goto LABEL_45;
          }
        }

        else
        {
          *(v23 + 40) = 0;
        }
      }

      v25 = a1[4];
      if (v25)
      {
        v26 = malloc_type_calloc(1uLL, 0xCuLL, 0x100004005A209FEuLL);
        v3[4] = v26;
        if (!v26)
        {
          goto LABEL_45;
        }

        v27 = *v25;
        v26[2] = *(v25 + 2);
        *v26 = v27;
      }

      v28 = a1[5];
      if (v28)
      {
        v29 = malloc_type_calloc(1uLL, 0x28uLL, 0x10100407AC8CDE2uLL);
        v3[5] = v29;
        if (v29)
        {
          v30 = v29;
          if (*v28)
          {
            v31 = strdup(*v28);
            *v30 = v31;
            if (!v31)
            {
              goto LABEL_45;
            }
          }

          else
          {
            *v29 = 0;
          }

          v32 = *(v28 + 32);
          v33 = v3[5];
          if (v32)
          {
            v34 = strdup(v32);
            *(v33 + 32) = v34;
            if (!v34)
            {
              goto LABEL_45;
            }
          }

          else
          {
            *(v33 + 32) = 0;
          }

          v36 = v3[5];
          *(v36 + 8) = *(v28 + 8);
          *(v36 + 24) = *(v28 + 24);
          return v3;
        }

LABEL_45:
        ofi_nic_close(v3);
        return 0;
      }
    }

    else
    {
      *v2 = 20;
      v2[3] = malloc_type_calloc(1uLL, 0x30uLL, 0x100407BD0BEC4uLL);
      v3[4] = malloc_type_calloc(1uLL, 0xCuLL, 0x100004005A209FEuLL);
      v9 = malloc_type_calloc(1uLL, 0x28uLL, 0x10100407AC8CDE2uLL);
      v3[5] = v9;
      if (!v3[3] || !v9 || !v3[4])
      {
        goto LABEL_45;
      }

      v3[2] = &default_nic_ops;
    }
  }

  return v3;
}

uint64_t ofi_vrb_speed(int a1, int a2)
{
  if (a1 > 15)
  {
    if (a1 > 63)
    {
      if (a1 == 64)
      {
        v2 = 50000000000;
        goto LABEL_20;
      }

      if (a1 == 128)
      {
        v2 = 100000000000;
        goto LABEL_20;
      }
    }

    else
    {
      if (a1 == 16)
      {
        v2 = 14000000000;
        goto LABEL_20;
      }

      if (a1 == 32)
      {
        v2 = 25000000000;
        goto LABEL_20;
      }
    }
  }

  else if (a1 > 3)
  {
    if (a1 == 4 || a1 == 8)
    {
      v2 = 10000000000;
      goto LABEL_20;
    }
  }

  else
  {
    if (a1 == 1)
    {
      v2 = 2500000000;
      goto LABEL_20;
    }

    if (a1 == 2)
    {
      v2 = 5000000000;
      goto LABEL_20;
    }
  }

  v2 = 0;
LABEL_20:
  if (a2 <= 3)
  {
    if (a2 == 1)
    {
      v3 = 1;
      return v3 * v2;
    }

    if (a2 == 2)
    {
      v3 = 4;
      return v3 * v2;
    }

LABEL_31:
    v3 = 0;
    return v3 * v2;
  }

  if (a2 == 4)
  {
    v3 = 8;
    return v3 * v2;
  }

  if (a2 == 8)
  {
    v3 = 12;
    return v3 * v2;
  }

  if (a2 != 16)
  {
    goto LABEL_31;
  }

  v3 = 2;
  return v3 * v2;
}