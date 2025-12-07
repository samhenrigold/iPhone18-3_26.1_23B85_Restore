uint64_t xnet_tsendv(uint64_t a1, uint64_t *a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  (*(*(a1 + 80) + 384))(*(a1 + 80) + 312, a2, a3, a4, a5);
  if (!(*(*(*(a1 + 80) + 496) + 72))(*(*(a1 + 80) + 496) + 8))
  {
    xnet_tsend_cold_3();
  }

  if (!(*(*(*(a1 + 80) + 496) + 72))(*(*(a1 + 80) + 496) + 8))
  {
    xnet_rma_readmsg_cold_12();
  }

  v12 = xnet_alloc_xfer(*(a1 + 80) + 280);
  if (!v12)
  {
    v20 = -35;
    goto LABEL_19;
  }

  v13 = v12;
  *(v12 + 200) = 3;
  v14 = v12 + 25;
  *(v12 + 204) = 0;
  v12[14] = *(a1 + 136);
  if (!*(a1 + 18896))
  {
    xnet_tsend_cold_1();
  }

  *(v12 + 201) = 1;
  v12[15] = *(a1 + 176);
  v12[27] = a6;
  if (a4 >= 5)
  {
    xnet_sendv_cold_1();
  }

  if (!a4)
  {
    v18 = 24;
    v12[26] = 24;
    *(v12 + 206) = 24;
    v12[3] = v14;
    v19 = xnet_max_inject;
LABEL_13:
    ofi_copy_iov_buf(a2, a4, 0, (v12 + 28), v19, 0);
    *(v13 + 32) = v18;
    *(v13 + 16) = 1;
    goto LABEL_14;
  }

  v15 = 0;
  v16 = 1;
  v17 = a4;
  do
  {
    v15 += a2[v16];
    v16 += 2;
    --v17;
  }

  while (v17);
  v18 = v15 + 24;
  v12[26] = v15 + 24;
  *(v12 + 206) = 24;
  v12[3] = v14;
  v19 = xnet_max_inject;
  if (v15 <= xnet_max_inject)
  {
    goto LABEL_13;
  }

  v12[4] = 24;
  v12[1] = *a2;
  v12[2] = a4 + 1;
  memcpy(v12 + 5, a2, 16 * a4);
LABEL_14:
  *(v13 + 184) = a7;
  *(v13 + 160) = *(a1 + 144) & 0x1000000 | 0x808;
  if ((*(a1 + 147) & 0x18) != 0)
  {
    *(v13 + 202) |= 4u;
    *(v13 + 168) |= 4u;
  }

  v21 = xnet_rts_check(a1, v13);
  if (v21)
  {
    v20 = v21;
  }

  else
  {
    xnet_tx_queue_insert(a1, v13);
    v20 = 0;
  }

LABEL_19:
  (*(*(a1 + 80) + 392))(*(a1 + 80) + 312);
  return v20;
}

uint64_t xnet_tsendmsg(uint64_t a1, uint64_t a2, int a3)
{
  (*(*(a1 + 80) + 384))(*(a1 + 80) + 312);
  if (!(*(*(*(a1 + 80) + 496) + 72))(*(*(a1 + 80) + 496) + 8))
  {
    xnet_tsend_cold_3();
  }

  if (!(*(*(*(a1 + 80) + 496) + 72))(*(*(a1 + 80) + 496) + 8))
  {
    xnet_rma_readmsg_cold_12();
  }

  v6 = xnet_alloc_xfer(*(a1 + 80) + 280);
  if (!v6)
  {
    v11 = -35;
    goto LABEL_22;
  }

  v7 = v6;
  *(v6 + 200) = 3;
  v8 = v6 + 25;
  *(v6 + 204) = 0;
  v6[14] = *(a1 + 136);
  if (!*(a1 + 18896))
  {
    xnet_tsend_cold_1();
  }

  *(v6 + 201) = 1;
  v6[15] = *(a1 + 176);
  if ((a3 & 0x20000) != 0)
  {
    *(v6 + 101) |= 1u;
    v6[27] = *(a2 + 56);
    v9 = 32;
    v10 = 28;
  }

  else
  {
    v9 = 24;
    v10 = 27;
  }

  v6[v10] = *(a2 + 32);
  v12 = *(a2 + 16);
  if (v12 >= 5)
  {
    xnet_sendv_cold_1();
  }

  v13 = *a2;
  if (!v12)
  {
    v6[26] = v9;
    *(v6 + 206) = v9;
    v6[3] = v8;
    v18 = xnet_max_inject;
    v17 = v9;
LABEL_16:
    ofi_copy_iov_buf(v13, v12, 0, &v8[v9 / 8], v18, 0);
    *(v7 + 32) = v17;
    *(v7 + 16) = 1;
    goto LABEL_17;
  }

  v14 = 0;
  v15 = 1;
  v16 = *(a2 + 16);
  do
  {
    v14 += v13[v15];
    v15 += 2;
    --v16;
  }

  while (v16);
  v17 = v14 + v9;
  v6[26] = v14 + v9;
  *(v6 + 206) = v9;
  v6[3] = v8;
  v18 = xnet_max_inject;
  if (v14 <= xnet_max_inject)
  {
    goto LABEL_16;
  }

  v6[4] = v9;
  v6[1] = *v13;
  v6[2] = v12 + 1;
  memcpy(v6 + 5, v13, 16 * v12);
LABEL_17:
  *(v7 + 160) = (*(a1 + 160) | a3) & 0x1000000 | 0x808;
  if ((a3 & 0x18000000) != 0)
  {
    *(v7 + 202) |= 4u;
    *(v7 + 168) |= 4u;
  }

  *(v7 + 184) = *(a2 + 48);
  v19 = xnet_rts_check(a1, v7);
  if (v19)
  {
    v11 = v19;
  }

  else
  {
    xnet_tx_queue_insert(a1, v7);
    v11 = 0;
  }

LABEL_22:
  (*(*(a1 + 80) + 392))(*(a1 + 80) + 312);
  return v11;
}

uint64_t xnet_tinject(void *a1, const void *a2, size_t a3, uint64_t a4, uint64_t a5)
{
  (*(a1[10] + 384))(a1[10] + 312, a2, a3, a4);
  if (!(*(*(a1[10] + 496) + 72))(*(a1[10] + 496) + 8))
  {
    xnet_tsend_cold_3();
  }

  if (!(*(*(a1[10] + 496) + 72))(*(a1[10] + 496) + 8))
  {
    xnet_rma_readmsg_cold_12();
  }

  v9 = xnet_alloc_xfer(a1[10] + 280);
  if (v9)
  {
    v10 = v9;
    *(v9 + 200) = 3;
    *(v9 + 204) = 0;
    v9[14] = a1[17];
    if (!a1[2362])
    {
      xnet_tsend_cold_1();
    }

    *(v9 + 201) = 1;
    v9[15] = a1[22];
    v9[27] = a5;
    if (xnet_max_inject < a3)
    {
      xnet_inject_cold_1();
    }

    v9[26] = a3 + 24;
    *(v9 + 206) = 24;
    v9[3] = (v9 + 25);
    memcpy(v9 + 28, a2, a3);
    *(v10 + 32) = a3 + 24;
    *(v10 + 16) = 1;
    *(v10 + 168) = 64;
    *(v10 + 160) = 33556488;
    xnet_tx_queue_insert(a1, v10);
    v11 = 0;
  }

  else
  {
    v11 = -35;
  }

  (*(a1[10] + 392))(a1[10] + 312);
  return v11;
}

uint64_t xnet_tsenddata(uint64_t a1, const void *a2, size_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  (*(*(a1 + 80) + 384))(*(a1 + 80) + 312, a2, a3, a4, a5, a6);
  if (!(*(*(*(a1 + 80) + 496) + 72))(*(*(a1 + 80) + 496) + 8))
  {
    xnet_tsend_cold_3();
  }

  if (!(*(*(*(a1 + 80) + 496) + 72))(*(*(a1 + 80) + 496) + 8))
  {
    xnet_rma_readmsg_cold_12();
  }

  v14 = xnet_alloc_xfer(*(a1 + 80) + 280);
  if (v14)
  {
    v15 = v14;
    *(v14 + 200) = 3;
    *(v14 + 204) = 0;
    v14[14] = *(a1 + 136);
    if (!*(a1 + 18896))
    {
      xnet_tsend_cold_1();
    }

    *(v14 + 201) = 1;
    v14[15] = *(a1 + 176);
    v16 = *(v14 + 101);
    *(v14 + 101) = v16 | 1;
    v14[28] = a7;
    v17 = xnet_max_inject;
    v18 = a3 + 32;
    v14[26] = a3 + 32;
    v14[27] = a5;
    *(v14 + 206) = 32;
    v14[3] = (v14 + 25);
    if (v17 >= a3)
    {
      memcpy(v14 + 29, a2, a3);
      v19 = 1;
    }

    else
    {
      v14[1] = a2;
      v19 = 2;
      v18 = 32;
      v14[5] = a2;
      v14[6] = a3;
    }

    *(v15 + 32) = v18;
    *(v15 + 16) = v19;
    *(v15 + 184) = a8;
    *(v15 + 160) = *(a1 + 144) & 0x1000000 | 0x808;
    if ((*(a1 + 147) & 0x18) != 0)
    {
      *(v15 + 202) = v16 | 5;
      *(v15 + 168) |= 4u;
    }

    v21 = xnet_rts_check(a1, v15);
    if (v21)
    {
      v20 = v21;
    }

    else
    {
      xnet_tx_queue_insert(a1, v15);
      v20 = 0;
    }
  }

  else
  {
    v20 = -35;
  }

  (*(*(a1 + 80) + 392))(*(a1 + 80) + 312);
  return v20;
}

uint64_t xnet_tinjectdata(void *a1, const void *a2, size_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  (*(a1[10] + 384))(a1[10] + 312, a2, a3, a4, a5);
  if (!(*(*(a1[10] + 496) + 72))(*(a1[10] + 496) + 8))
  {
    xnet_tsend_cold_3();
  }

  if (!(*(*(a1[10] + 496) + 72))(*(a1[10] + 496) + 8))
  {
    xnet_rma_readmsg_cold_12();
  }

  v11 = xnet_alloc_xfer(a1[10] + 280);
  if (v11)
  {
    v12 = v11;
    *(v11 + 200) = 3;
    *(v11 + 204) = 0;
    v11[14] = a1[17];
    if (!a1[2362])
    {
      xnet_tsend_cold_1();
    }

    *(v11 + 201) = 1;
    v11[15] = a1[22];
    *(v11 + 101) |= 1u;
    v11[27] = a4;
    v11[28] = a6;
    if (xnet_max_inject < a3)
    {
      xnet_inject_cold_1();
    }

    v11[26] = a3 + 32;
    *(v11 + 206) = 32;
    v11[3] = (v11 + 25);
    memcpy(v11 + 29, a2, a3);
    *(v12 + 32) = a3 + 32;
    *(v12 + 16) = 1;
    *(v12 + 168) = 64;
    *(v12 + 160) = 33556488;
    xnet_tx_queue_insert(a1, v12);
    v13 = 0;
  }

  else
  {
    v13 = -35;
  }

  (*(a1[10] + 392))(a1[10] + 312);
  return v13;
}

void xnet_free_xfer(uint64_t a1, uint64_t a2)
{
  if (!(*(*(a1 + 216) + 72))(*(a1 + 216) + 8))
  {
    xnet_rma_readmsg_cold_11();
  }

  if ((*(a2 + 168) & 0x80) != 0)
  {
    free(*(a2 + 8));
  }

  if ((*(a2 + 172) & 1) == 0)
  {
    xnet_rma_readmsg_cold_2();
  }

  *(a2 + 172) = 0;
  v3 = *(a2 - 32);
  if (!v3)
  {
    ofi_buf_free_cold_6();
  }

  if (atomic_fetch_add((v3 + 76), 0xFFFFFFFF) <= 0)
  {
    ofi_buf_free_cold_7();
  }

  v4 = *(a2 - 32);
  if (!v4)
  {
    ofi_buf_free_cold_6();
  }

  v5 = *(v4 + 64);
  if (!v5)
  {
    ofi_buf_free_cold_5();
  }

  if ((v5[16] & 2) != 0)
  {
    ofi_buf_free_cold_1();
  }

  if (*(a2 - 8) != 0xF1C0DE0F1C0DE64)
  {
    ofi_buf_free_cold_2();
  }

  if (**(a2 - 16) != 0xF1C0DE0F1C0DE64)
  {
    ofi_buf_free_cold_3();
  }

  v6 = (a2 - 48);
  if (*(a2 - 48) != a2 - 48)
  {
    ofi_buf_free_cold_4();
  }

  v7 = *v5;
  if (!*v5)
  {
    v5[1] = v6;
  }

  *v6 = v7;
  *v5 = v6;
}

uint64_t xnet_rts_check(uint64_t a1, uint64_t a2)
{
  if (!(*(*(*(a1 + 80) + 496) + 72))(*(*(a1 + 80) + 496) + 8))
  {
    xnet_rts_check_cold_5();
  }

  if (*(a2 + 201) != 1)
  {
    xnet_rts_check_cold_1();
  }

  if (*(a2 + 208) <= xnet_max_saved_size || (*(a1 + 288) & 1) == 0)
  {
    return 0;
  }

  if (*(a2 + 16) <= 1uLL)
  {
    xnet_rts_check_cold_4();
  }

  if (*(a2 + 32) != *(a2 + 206))
  {
    xnet_rts_check_cold_2();
  }

  if (*(a1 + 18860) >= 2u)
  {
    xnet_rts_check_cold_3();
  }

  *(a1 + 18860) = 1;
  v5 = *(a1 + 18856);
  if (!*(a1 + 18856))
  {
    if (!ofi_byte_idx_grow(a1 + 18848))
    {
      return 4294967261;
    }

    v5 = *(a1 + 18856);
  }

  v6 = *(a1 + 18848) + 16 * v5;
  *(a1 + 18856) = *(v6 + 8);
  *v6 = a2;
  *(v6 + 8) = -1;
  if (!v5)
  {
    return 4294967261;
  }

  v7 = a2 + 200;
  if (*(a2 + 201) == 5)
  {
    v8 = 32;
    if ((*(a2 + 202) & 1) == 0)
    {
      v8 = 24;
    }

    v9 = *(v7 + v8);
    v10 = *(a2 + 206);
  }

  else
  {
    v10 = *(a2 + 206);
    v9 = *(a2 + 208) - v10;
  }

  result = 0;
  *(v7 + v10) = v9;
  *(a2 + 201) = 5;
  *(a2 + 204) = v5;
  v11 = *(a2 + 206) + 8;
  *(a2 + 206) = v11;
  *(a2 + 208) = v11;
  *(a2 + 32) = v11;
  *(a2 + 144) = *(a2 + 16);
  *(a2 + 16) = 1;
  *(a2 + 168) |= 0x800u;
  return result;
}

uint64_t xnet_listen(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 76))
  {
    if (fi_log_enabled(&xnet_prov, 0, 3))
    {
      v2 = *__error();
      fi_log(&xnet_prov, 0, 3, "xnet_listen", 243, "passive endpoint is not idle\n");
      *__error() = v2;
    }

    return 4294967274;
  }

  else if (listen(*(a1 + 72), 4096))
  {
    if (fi_log_enabled(&xnet_prov, 0, 3))
    {
      v6 = *__error();
      fi_log(&xnet_prov, 0, 3, "xnet_listen", 250, "socket listen failed\n");
      *__error() = v6;
    }

    return -*__error();
  }

  else
  {
    (*(a2 + 104))(a2 + 32);
    v7 = *(a1 + 72);
    if (xnet_io_uring)
    {
      v8 = xnet_uring_pollin_add(a2, v7, 1, a1 + 80);
    }

    else
    {
      v8 = xnet_monitor_sock(a2, v7, 1, a1);
    }

    v3 = v8;
    if (!v8)
    {
      *(a1 + 64) = a2;
      *(a1 + 76) = 6;
    }

    (*(a2 + 112))(a2 + 32);
  }

  return v3;
}

uint64_t xnet_passive_ep(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  if (a2)
  {
    v8 = ofi_prov_check_info(&xnet_util_prov, *(a1 + 32), a2);
    if (!v8)
    {
      v9 = malloc_type_calloc(1uLL, 0x60uLL, 0x10A00400EA4C018uLL);
      if (v9)
      {
        v10 = v9;
        v8 = ofi_pep_init(a1, a2, v9, a4);
        if (v8)
        {
LABEL_16:
          free(v10);
          return v8;
        }

        *(v10 + 16) = &xnet_pep_fi_ops;
        *(v10 + 24) = &xnet_pep_ops;
        *(v10 + 32) = &xnet_pep_cm_ops;
        *(v10 + 80) = v10;
        *(v10 + 88) = 0;
        v11 = fi_dupinfo(a2);
        *(v10 + 56) = v11;
        if (!v11)
        {
          v8 = 4294967284;
          goto LABEL_15;
        }

        *(v10 + 72) = 0xFFFFFFFFLL;
        if (*(a2 + 48))
        {
          v12 = xnet_pep_sock_create(v10);
          if (v12)
          {
            v8 = v12;
            fi_freeinfo(*(v10 + 56));
LABEL_15:
            ofi_pep_close(v10);
            goto LABEL_16;
          }
        }

        v8 = 0;
        *a3 = v10;
      }

      else
      {
        return 4294967284;
      }
    }
  }

  else
  {
    if (fi_log_enabled(&xnet_prov, 0, 3))
    {
      v13 = *__error();
      fi_log(&xnet_prov, 0, 3, "xnet_passive_ep", 366, "invalid info\n");
      *__error() = v13;
    }

    return 4294967274;
  }

  return v8;
}

uint64_t xnet_pep_sock_create(uint64_t a1)
{
  v1 = *(a1 + 56);
  if ((*(v1 + 24) - 1) > 2)
  {
    if (fi_log_enabled(&xnet_prov, 0, 3))
    {
      v7 = *__error();
      fi_log(&xnet_prov, 0, 3, "xnet_pep_sock_create", 147, "invalid source address format\n");
      *__error() = v7;
    }

    return 4294967274;
  }

  v3 = socket(*(*(v1 + 48) + 1), 1, 0);
  *(a1 + 72) = v3;
  if (v3 == -1)
  {
    if (fi_log_enabled(&xnet_prov, 0, 3))
    {
      v8 = *__error();
      v9 = __error();
      v10 = strerror(*v9);
      fi_log(&xnet_prov, 0, 3, "xnet_pep_sock_create", 155, "failed to create listener: %s\n", v10);
      *__error() = v8;
    }

    return 4294967291;
  }

  v4 = xnet_setup_socket(v3, *(a1 + 56));
  if (v4)
  {
    goto LABEL_52;
  }

  if (!xnet_io_uring)
  {
    xnet_set_zerocopy();
  }

  v5 = fi_fd_nonblock(*(a1 + 72));
  if (v5)
  {
    v4 = v5;
    if (fi_log_enabled(&xnet_prov, 0, 3))
    {
      v6 = *__error();
      fi_log(&xnet_prov, 0, 3, "xnet_pep_sock_create", 167, "failed to set listener socket to nonblocking\n");
LABEL_51:
      *__error() = v6;
    }

LABEL_52:
    close(*(a1 + 72));
    *(a1 + 72) = -1;
    return v4;
  }

  v11 = *(*(a1 + 56) + 48);
  if (!v11)
  {
    goto LABEL_24;
  }

  v12 = *(v11 + 1);
  if (v12 == 30)
  {
LABEL_19:
    LODWORD(v11) = bswap32(*(v11 + 2)) >> 16;
    goto LABEL_24;
  }

  if (v12 != 27)
  {
    if (v12 != 2)
    {
      if (fi_log_enabled(&core_prov, 0, 1))
      {
        v13 = *__error();
        fi_log(&core_prov, 0, 1, "ofi_addr_get_port", 809, "Unknown address format\n");
        v14 = __error();
        LOWORD(v11) = 0;
        *v14 = v13;
      }

      else
      {
        LOWORD(v11) = 0;
      }

      goto LABEL_24;
    }

    goto LABEL_19;
  }

  LOWORD(v11) = bswap64(*(v11 + 24));
LABEL_24:
  v15 = *(a1 + 72);
  v16 = *(a1 + 56);
  v17 = *(v16 + 48);
  v18 = *(v16 + 32);
  if (v11 || (v19 = xnet_ports) == 0)
  {
    if (bind(*(a1 + 72), *(v16 + 48), *(v16 + 32)))
    {
      goto LABEL_43;
    }

    return 0;
  }

  seed = xnet_bind_to_port_range_seed;
  if (!xnet_bind_to_port_range_seed)
  {
    seed = ofi_generate_seed();
    v19 = xnet_ports;
  }

  v21 = seed ^ (seed << 13) ^ ((seed ^ (seed << 13)) >> 17);
  v22 = v21 ^ (32 * v21);
  xnet_bind_to_port_range_seed = v22;
  v23 = HIDWORD(xnet_ports);
  if (v19 < SHIDWORD(xnet_ports))
  {
LABEL_46:
    v27 = v23;
LABEL_47:
    if (v27 <= v19)
    {
      return 0;
    }

    v4 = 4294967247;
LABEL_49:
    if (!fi_log_enabled(&xnet_prov, 0, 3))
    {
      goto LABEL_52;
    }

    v6 = *__error();
    v30 = __error();
    strerror(*v30);
    fi_log(&xnet_prov, 0, 3, "xnet_pep_sock_create", 184, "failed to bind listener: %s\n");
    goto LABEL_51;
  }

  v24 = v22 % (v19 - HIDWORD(xnet_ports) + 1) + HIDWORD(xnet_ports);
  while (1)
  {
    if (v24 <= v19)
    {
      v25 = v24;
    }

    else
    {
      v25 = HIDWORD(xnet_ports);
    }

    v26 = *(v17 + 1);
    if (v26 == 30)
    {
      goto LABEL_36;
    }

    if (v26 != 27)
    {
      if (v26 != 2)
      {
        sock_get_src_addr_cold_1();
      }

LABEL_36:
      *(v17 + 2) = bswap32(v25) >> 16;
      goto LABEL_38;
    }

    *(v17 + 24) = bswap64((bswap32(v25) >> 16) | 0x13F0000);
    *(v17 + 32) = -1;
LABEL_38:
    if (!bind(v15, v17, v18))
    {
      v19 = xnet_ports;
      goto LABEL_46;
    }

    if (*__error() != 48)
    {
      break;
    }

    v27 = v23 + 1;
    v24 = v25 + 1;
    v19 = xnet_ports;
    if (v23++ >= xnet_ports)
    {
      goto LABEL_47;
    }
  }

  if (fi_log_enabled(&xnet_prov, 0, 3))
  {
    v32 = *__error();
    v33 = __error();
    v34 = strerror(*v33);
    fi_log(&xnet_prov, 0, 3, "xnet_bind_to_port_range", 127, "failed to bind listener: %s\n", v34);
    *__error() = v32;
  }

LABEL_43:
  v29 = *__error();
  if (v29)
  {
    v4 = -v29;
    goto LABEL_49;
  }

  return 0;
}

uint64_t xnet_pep_close(uint64_t a1)
{
  if (*(a1 + 76) != 6 || (((*(*(a1 + 64) + 104))(*(a1 + 64) + 32), v2 = *(a1 + 64), !xnet_io_uring) ? (xnet_halt_sock(v2, *(a1 + 72)), v3 = 0) : (v3 = xnet_uring_cancel(v2, v2 + 416, a1 + 80)), (*(*(a1 + 64) + 112))(*(a1 + 64) + 32), !v3))
  {
    close(*(a1 + 72));
    ofi_pep_close(a1);
    fi_freeinfo(*(a1 + 56));
    free(a1);
    return 0;
  }

  return v3;
}

uint64_t xnet_pep_bind(uint64_t a1, void *a2, uint64_t a3)
{
  if (*a2 == 13)
  {

    return ofi_pep_bind_eq(a1, a2, a3);
  }

  else
  {
    if (fi_log_enabled(&xnet_prov, 0, 3))
    {
      v5 = *__error();
      fi_log(&xnet_prov, 0, 3, "xnet_pep_bind", 91, "invalid FID class for binding\n");
      *__error() = v5;
    }

    return 4294967274;
  }
}

uint64_t xnet_pep_setname(uint64_t a1, const void *a2, size_t size)
{
  if (size != 28 && size != 16)
  {
    return 4294967274;
  }

  v6 = *(a1 + 72);
  if (v6 != -1)
  {
    close(v6);
    *(a1 + 72) = -1;
  }

  v7 = *(*(a1 + 56) + 48);
  if (v7)
  {
    free(v7);
    *(*(a1 + 56) + 32) = 0;
  }

  v8 = malloc_type_malloc(size, 0x2A1BF8CCuLL);
  if (v8)
  {
    v9 = v8;
    memcpy(v8, a2, size);
    v10 = *(a1 + 56);
    *(v10 + 48) = v9;
    *(v10 + 32) = size;

    return xnet_pep_sock_create(a1);
  }

  else
  {
    *(*(a1 + 56) + 48) = 0;
    return 4294967284;
  }
}

uint64_t xnet_pep_getname(uint64_t a1, sockaddr *a2, socklen_t *a3)
{
  v4 = *a3;
  if (getsockname(*(a1 + 72), a2, a3))
  {
    return -*__error();
  }

  if (v4 >= *a3)
  {
    return 0;
  }

  return 4294967039;
}

uint64_t xnet_pep_reject(int a1, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  v12 = *MEMORY[0x29EDCA608];
  v5 = a2[8];
  if (v5 == -1)
  {
    goto LABEL_11;
  }

  memset(v11, 0, sizeof(v11));
  LOWORD(v11[0]) = 1539;
  WORD1(v11[0]) = bswap32(a4) >> 16;
  if (a4)
  {
    __memcpy_chk();
  }

  v7 = a4 + 32;
  v8 = v7 >= 0x7FFFFFFF ? 0x7FFFFFFFLL : v7;
  if (send(v5, v11, v8, 0x80000) != v7 && fi_log_enabled(&xnet_prov, 0, 3))
  {
    v9 = *__error();
    fi_log(&xnet_prov, 0, 3, "xnet_pep_reject", 307, "sending of reject message failed\n");
    *__error() = v9;
  }

  shutdown(a2[8], 2);
  result = close(a2[8]);
  if (!result)
  {
LABEL_11:
    free(a2);
    return 0;
  }

  return result;
}

uint64_t xnet_pep_getopt(uint64_t a1, int a2, int a3, void *a4, void *a5)
{
  result = 4294967254;
  if (!a2 && a3 == 1)
  {
    if (*a5 >= 8uLL)
    {
      result = 0;
      *a4 = 256;
    }

    else
    {
      result = 4294967039;
    }

    *a5 = 8;
  }

  return result;
}

uint64_t xnet_eq_write(uint64_t a1, int a2, uint64_t **a3, size_t a4)
{
  if (a1)
  {
    return (*(*(a1 + 24) + 24))();
  }

  v8 = *a3;
  v9 = **a3;
  if (v9 == 3)
  {
    v8 = v8[1];
  }

  else if (v9 != 9)
  {
    xnet_eq_write_cold_3();
  }

  v10 = v8[1];
  if (*v10 != 3)
  {
    xnet_eq_write_cold_1();
  }

  if (!(*(*(v10[10] + 496) + 72))(*(v10[10] + 496) + 8))
  {
    xnet_eq_write_cold_2();
  }

  v11 = malloc_type_malloc(a4 + 40, 0x10200406631221BuLL);
  if (!v11)
  {
    return 4294967284;
  }

  v12 = v11;
  v11[1] = v10;
  *(v11 + 4) = a2;
  memcpy(v11 + 3, a3, a4);
  v13 = v10[10];
  if (*(v13 + 632))
  {
    v14 = *(v13 + 640);
  }

  else
  {
    v14 = (v13 + 632);
  }

  result = 0;
  *v14 = v12;
  *v12 = 0;
  *(v13 + 640) = v12;
  return result;
}

uint64_t xnet_del_domain_progress(uint64_t a1)
{
  v2 = *(a1 + 56);
  pthread_mutex_lock((v2 + 56));
  for (i = *(v2 + 160); i != (v2 + 160); i = i->__sig)
  {
    pthread_mutex_lock(i - 1);
    fid_list_remove(&i[-2].__opaque[40], 0, a1);
    v4 = *i[-77].__opaque;
    if (v4)
    {
      v5 = (*(a1 + 872))(a1 + 824);
      ofi_wait_del_fd(v4, v5);
    }

    pthread_mutex_unlock(i - 1);
  }

  return pthread_mutex_unlock((v2 + 56));
}

uint64_t xnet_add_domain_progress(uint64_t a1, uint64_t (**a2)(void))
{
  pthread_mutex_lock((a1 + 4896));
  v4 = fid_list_search((a1 + 4880), a2);
  if (v4)
  {
    v5 = v4;
    pthread_mutex_unlock((a1 + 4896));
    goto LABEL_3;
  }

  v7 = *(a1 + 40);
  if (v7)
  {
    v8 = a2[109](a2 + 103);
    v5 = ofi_wait_add_fd(v7, v8, 1, xnet_eq_wait_try_func, 0, a2);
    pthread_mutex_unlock((a1 + 4896));
    if (v5)
    {
LABEL_3:
      if (v5 == -37)
      {
        return 0;
      }

      else
      {
        return v5;
      }
    }
  }

  else
  {
    pthread_mutex_unlock((a1 + 4896));
  }

  if (*(a1 + 4864) != 1)
  {
    return 0;
  }

  return xnet_start_progress((a2 + 35));
}

uint64_t xnet_eq_create(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v8 = malloc_type_calloc(1uLL, 0x1370uLL, 0x10F204033493F36uLL);
  if (v8)
  {
    v9 = v8;
    v10 = ofi_eq_init(a1, a2, v8, a4);
    if (v10)
    {
      inited = v10;
      if (fi_log_enabled(&xnet_prov, 0, 7))
      {
        v12 = *__error();
        fi_log(&xnet_prov, 0, 7, "xnet_eq_create", 210, "EQ creation failed\n");
        *__error() = v12;
      }

      goto LABEL_13;
    }

    *(v9 + 4880) = v9 + 4880;
    *(v9 + 4888) = v9 + 4880;
    inited = pthread_mutex_init((v9 + 4896), 0);
    if (inited)
    {
LABEL_12:
      ofi_eq_cleanup(v9);
LABEL_13:
      free(v9);
      return inited;
    }

    inited = xnet_init_progress(v9 + 160, 0);
    if (inited)
    {
LABEL_11:
      pthread_mutex_destroy((v9 + 4896));
      goto LABEL_12;
    }

    v13 = *(v9 + 40);
    if (v13)
    {
      v14 = (*(v9 + 752))(v9 + 704);
      inited = ofi_wait_add_fd(v13, v14, 1, xnet_eq_wait_try_func, 0, v9);
      if (inited)
      {
LABEL_10:
        xnet_close_progress(v9 + 160);
        goto LABEL_11;
      }

      if (*(*(v9 + 40) + 64) != 3)
      {
        started = xnet_start_progress(v9 + 160);
        if (started)
        {
          inited = started;
          v17 = *(v9 + 40);
          v18 = (*(v9 + 752))(v9 + 704);
          ofi_wait_del_fd(v17, v18);
          goto LABEL_10;
        }
      }
    }

    pthread_mutex_lock((a1 + 56));
    v19 = *(a1 + 168);
    v20 = *v19;
    *(v9 + 4960) = *v19;
    *(v9 + 4968) = v19;
    *(v20 + 8) = v9 + 4960;
    *v19 = v9 + 4960;
    pthread_mutex_unlock((a1 + 56));
    inited = 0;
    *(v9 + 16) = &xnet_eq_fi_ops;
    *(v9 + 24) = &xnet_eq_ops;
    *a3 = v9;
    return inited;
  }

  return 4294967284;
}

size_t xnet_eq_read(uint64_t a1, _DWORD *a2, void *a3, size_t a4, uint64_t a5)
{
  xnet_progress_all(a1);

  return ofi_eq_read(a1, a2, a3, a4, a5);
}

uint64_t xnet_eq_close(uint64_t a1)
{
  v2 = *(a1 + 32);
  xnet_close_progress(a1 + 160);
  pthread_mutex_lock((v2 + 56));
  v3 = *(a1 + 4960);
  v4 = *(a1 + 4968);
  *v4 = v3;
  *(v3 + 8) = v4;
  pthread_mutex_unlock((v2 + 56));
  pthread_mutex_lock((a1 + 4896));
  v5 = *(a1 + 4880);
  if (v5 != (a1 + 4880))
  {
    do
    {
      v6 = *v5;
      free(v5);
      v5 = v6;
    }

    while (v6 != (a1 + 4880));
  }

  pthread_mutex_unlock((a1 + 4896));
  v7 = ofi_eq_cleanup(a1);
  if (!v7)
  {
    pthread_mutex_destroy((a1 + 4896));
    free(a1);
  }

  return v7;
}

uint64_t xnet_domain_open(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  inited = ofi_prov_check_info(&xnet_util_prov, *(a1 + 32), a2);
  if (!inited)
  {
    if (**(a2 + 88) == 3 && *(*(a2 + 96) + 16) == 4)
    {
      v9 = malloc_type_calloc(1uLL, 0x1408uLL, 0x10F204013B6112EuLL);
      if (v9)
      {
        v10 = v9;
        inited = ofi_domain_init(a1, a2, v9, a4, 0);
        if (!inited)
        {
          inited = ofi_genlock_init(v10 + 5016, 0);
          if (!inited)
          {
            v11 = fi_dupinfo(a2);
            *(v10 + 5008) = v11;
            if (v11)
            {
              inited = 0;
              *(v11[12] + 16) = 3;
              *(v10 + 5112) = v10 + 5112;
              *(v10 + 5120) = v10 + 5112;
              *(v10 + 5000) = **(a2 + 88);
              *(v10 + 16) = &xnet_mplex_domain_fi_ops;
              *(v10 + 24) = &xnet_mplex_domain_ops;
              v13 = &xnet_mplex_domain_fi_ops_mr;
LABEL_17:
              *(v10 + 32) = v13;
              *a3 = v10;
              return inited;
            }

            ofi_genlock_destroy((v10 + 5016), v12);
            inited = 4294967284;
          }

LABEL_12:
          ofi_domain_close(v10);
          goto LABEL_13;
        }

        goto LABEL_13;
      }
    }

    else
    {
      v14 = malloc_type_calloc(1uLL, 0x1408uLL, 0x10F204013B6112EuLL);
      if (v14)
      {
        v10 = v14;
        inited = ofi_domain_init(a1, a2, v14, a4, 3);
        if (!inited)
        {
          inited = xnet_init_progress(v10 + 280, a2);
          if (!inited)
          {
            *(v10 + 5000) = **(a2 + 88);
            *(v10 + 16) = &xnet_domain_fi_ops;
            *(v10 + 24) = &xnet_domain_ops;
            v13 = &xnet_domain_fi_ops_mr;
            goto LABEL_17;
          }

          goto LABEL_12;
        }

LABEL_13:
        free(v10);
        return inited;
      }
    }

    return 4294967284;
  }

  return inited;
}

uint64_t xnet_open_ep(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 5000);
  if (v4 != **(a2 + 88))
  {
    return 4294967274;
  }

  if (v4 != 3)
  {
    if (v4 == 1)
    {
      return xnet_endpoint(a1, a2, a3, a4);
    }

    return 4294967274;
  }

  return xnet_rdm_ep(a1, a2, a3, a4);
}

uint64_t xnet_query_atomic(uint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4, unint64_t a5)
{
  LODWORD(result) = ofi_atomic_valid(&xnet_prov, a2, a3, a5);
  if (result)
  {
    v7 = 1;
  }

  else
  {
    v7 = a4 == 0;
  }

  if (v7)
  {
    return result;
  }

  else
  {
    return 4294967194;
  }
}

uint64_t xnet_mplex_domain_close(uint64_t a1)
{
  (*(a1 + 5096))(a1 + 5024);
  v2 = (a1 + 5112);
  for (i = *(a1 + 5112); i != v2; i = *v2)
  {
    v4 = *i;
    v5 = i[1];
    *v5 = *i;
    *(v4 + 8) = v5;
    (*(*(i[2] + 16) + 8))();
    free(i);
  }

  (*(a1 + 5104))(a1 + 5024);
  ofi_genlock_destroy((a1 + 5016), v6);
  ofi_domain_close(a1);
  free(a1);
  return 0;
}

uint64_t xnet_mplex_mr_reg(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9)
{
  v10[0] = a2;
  v10[1] = a3;
  v15 = 0u;
  v12 = 0u;
  v13 = 0uLL;
  v11[0] = v10;
  v11[1] = 1;
  v11[2] = a4;
  v11[3] = a5;
  v11[4] = a6;
  v11[5] = a9;
  v14 = 0uLL;
  return xnet_mplex_mr_regattr(a1, v11, a7, a8);
}

uint64_t xnet_mplex_mr_regv(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9)
{
  v14 = 0u;
  v11 = 0u;
  v12 = 0uLL;
  v10[0] = a2;
  v10[1] = a3;
  v10[2] = a4;
  v10[3] = a5;
  v10[4] = a6;
  v10[5] = a9;
  v13 = 0uLL;
  return xnet_mplex_mr_regattr(a1, v10, a7, a8);
}

uint64_t xnet_mplex_mr_regattr(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = ofi_mr_regattr(a1, a2, a3, a4);
  if (!v8)
  {
    v14 = 0;
    v9 = *a4;
    *(*a4 + 16) = &xnet_mplex_mr_fi_ops;
    (*(a1 + 5096))(a1 + 5024);
    v10 = (a1 + 5112);
    do
    {
      v10 = *v10;
      if (v10 == (a1 + 5112))
      {
        v8 = 0;
        goto LABEL_9;
      }

      v11 = xnet_mr_regattr(v10[2], a2, a3, &v14);
    }

    while (!v11);
    v8 = v11;
    if (fi_log_enabled(&xnet_prov, 0, 8))
    {
      v12 = *__error();
      fi_log(&xnet_prov, 0, 8, "xnet_mplex_mr_regattr", 200, "Failed to reg mr (%ld) from subdomain (%p)\n", *(v9 + 48), v10[2]);
      *__error() = v12;
    }

    xnet_subdomains_mr_close(a1, *(v9 + 48));
    ofi_mr_close(*a4);
LABEL_9:
    (*(a1 + 5104))(a1 + 5024);
  }

  return v8;
}

uint64_t xnet_mr_regattr(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  (*(*(a1 + 496) + 80))(*(a1 + 496) + 8);
  v8 = ofi_mr_regattr(a1, a2, a3, a4);
  (*(*(a1 + 496) + 88))(*(a1 + 496) + 8);
  if (!v8)
  {
    *(*a4 + 16) = &xnet_mr_fi_ops;
  }

  return v8;
}

uint64_t xnet_subdomains_mr_close(uint64_t a1, uint64_t a2)
{
  result = (*(a1 + 5088))(a1 + 5024);
  if (!result)
  {
    xnet_subdomains_mr_close_cold_1();
  }

  v5 = (a1 + 5112);
  v6 = *(a1 + 5112);
  if (v6 != (a1 + 5112))
  {
    do
    {
      v7 = v6[2];
      (*(v7 + 160))(v7 + 88);
      v8 = ofi_mr_map_remove(v7 + 232, a2);
      result = (*(v7 + 168))(v7 + 88);
      if (!v8)
      {
        atomic_fetch_add((v7 + 176), 0xFFFFFFFF);
      }

      v6 = *v6;
    }

    while (v6 != v5);
  }

  return result;
}

uint64_t xnet_mplex_mr_close(void *a1)
{
  v2 = a1[5];
  (*(v2 + 5096))(v2 + 5024);
  xnet_subdomains_mr_close(v2, a1[6]);
  (*(v2 + 5104))(v2 + 5024);

  return ofi_mr_close(a1);
}

uint64_t xnet_mr_close(void *a1)
{
  v2 = a1[5];
  (*(*(v2 + 496) + 80))(*(v2 + 496) + 8);
  v3 = ofi_mr_close(a1);
  (*(*(v2 + 496) + 88))(*(v2 + 496) + 8);
  return v3;
}

uint64_t xnet_domain_close(char *a1)
{
  xnet_del_domain_progress(a1);
  v2 = ofi_domain_close(a1);
  if (!v2)
  {
    xnet_close_progress((a1 + 280));
    free(a1);
  }

  return v2;
}

uint64_t xnet_mr_reg(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9)
{
  (*(*(a1 + 496) + 80))(*(a1 + 496) + 8);
  v17 = ofi_mr_reg(a1, a2, a3, a4, a5, a6, a7, a8, a9);
  (*(*(a1 + 496) + 88))(*(a1 + 496) + 8);
  if (!v17)
  {
    *(*a8 + 16) = &xnet_mr_fi_ops;
  }

  return v17;
}

uint64_t xnet_mr_regv(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9)
{
  (*(*(a1 + 496) + 80))(*(a1 + 496) + 8);
  v17 = ofi_mr_regv(a1, a2, a3, a4, a5, a6, a7, a8, a9);
  (*(*(a1 + 496) + 88))(*(a1 + 496) + 8);
  if (!v17)
  {
    *(*a8 + 16) = &xnet_mr_fi_ops;
  }

  return v17;
}

uint64_t xnet_srx_context(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v8 = malloc_type_calloc(1uLL, 0x40D8uLL, 0x10B004047B974D4uLL);
  if (!v8)
  {
    return 4294967284;
  }

  v9 = v8;
  *v8 = 6;
  v8[1] = a4;
  v8[2] = &xnet_srx_fid_ops;
  v8[3] = &xnet_srx_ops;
  v8[5] = &xnet_srx_msg_ops;
  v8[7] = &xnet_srx_tag_ops;
  bzero(v8 + 11, 0x2020uLL);
  v9[1039] = 16;
  bzero(v9 + 1040, 0x2008uLL);
  result = 0;
  v9[2065] = 40;
  v9[2066] = xnet_init_saved_msg;
  v9[10] = a1;
  atomic_fetch_add((a1 + 176), 1u);
  v11 = xnet_match_tag_addr;
  if ((*a2 & 0x800000000000000) == 0)
  {
    v11 = xnet_match_tag;
  }

  v9[2067] = v11;
  v9[2069] = a2[2] & 0x10000;
  v9[2070] = 0x4000;
  *a3 = v9;
  return result;
}

void xnet_init_saved_msg(uint64_t a1, uint64_t a2)
{
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *a2 = a2;
  *(a2 + 8) = a2;
  *(a2 + 32) = 0;
}

void *xnet_match_tag_addr(void *a1, uint64_t a2, uint64_t a3)
{
  if (!(*(*(a1[10] + 496) + 72))(*(a1[10] + 496) + 8))
  {
    xnet_match_tag_addr_cold_2();
  }

  v7 = *(a2 + 18912);
  if (v7)
  {
    v8 = *(v7 + 8);
    if (v8 != -1)
    {
      if (v8 >= 0x100000)
      {
        util_srx_generic_trecv_cold_3();
      }

      v9 = a1[(v8 >> 10) + 15];
      if (v9 || (ofi_array_grow((a1 + 15), v8) & 0x80000000) == 0 && (v9 = a1[(v8 >> 10) + 15]) != 0)
      {
        v10 = (v9 + a1[1039] * (v8 & 0x3FF));
        v6 = 0;
        result = v10;
        while (1)
        {
          result = *result;
          if (!result)
          {
            break;
          }

          v12 = v6;
          v6 = result;
          if ((result[18] | result[17]) == (result[18] | a3))
          {
            v15 = a1[13];
            v14 = a1 + 13;
            v13 = v15;
            if (v15)
            {
              v16 = result[16];
              if (v13[16] <= v16)
              {
                v17 = 0;
                while ((v13[18] | v13[17]) != (v13[18] | a3))
                {
                  v18 = *v13;
                  if (*v13)
                  {
                    v17 = v13;
                    v13 = *v13;
                    if (v18[16] <= v16)
                    {
                      continue;
                    }
                  }

                  goto LABEL_22;
                }

                v10 = v14;
                result = v13;
                v12 = v17;
              }
            }

LABEL_22:
            v19 = *result;
            if (v12)
            {
              v20 = v12;
            }

            else
            {
              v20 = v10;
            }

            *v20 = v19;
            if (!v19)
            {
              v10[1] = v12;
            }

            return result;
          }
        }
      }
    }
  }

  return xnet_match_tag(a1, v6, a3);
}

void *xnet_match_tag(void *a1, uint64_t a2, uint64_t a3)
{
  if (!(*(*(a1[10] + 496) + 72))(*(a1[10] + 496) + 8, a2))
  {
    xnet_match_tag_cold_1();
  }

  v5 = 0;
  v6 = a1 + 13;
  result = a1 + 13;
  while (1)
  {
    result = *result;
    if (!result)
    {
      break;
    }

    v8 = v5;
    v5 = result;
    if ((result[18] | result[17]) == (result[18] | a3))
    {
      v9 = *result;
      if (v8)
      {
        v6 = v8;
      }

      *v6 = v9;
      if (!v9)
      {
        a1[14] = v8;
      }

      return result;
    }
  }

  return result;
}

uint64_t xnet_srx_close(void *a1)
{
  (*(*(a1[10] + 496) + 80))(*(a1[10] + 496) + 8);
  xnet_srx_cleanup(a1, (a1 + 11));
  xnet_srx_cleanup(a1, (a1 + 13));
  ofi_array_iter((a1 + 15), a1, xnet_srx_cleanup_queues);
  ofi_array_iter((a1 + 1041), a1, xnet_srx_cleanup_saved);
  (*(*(a1[10] + 496) + 88))(*(a1[10] + 496) + 8);
  ofi_array_destroy((a1 + 15));
  ofi_array_destroy((a1 + 1041));
  v2 = a1[2073];
  if (v2)
  {
    atomic_fetch_add((v2 + 48), 0xFFFFFFFF);
  }

  v3 = a1[2072];
  if (v3)
  {
    atomic_fetch_add((v3 + 48), 0xFFFFFFFF);
  }

  atomic_fetch_add((a1[10] + 176), 0xFFFFFFFF);
  free(a1);
  return 0;
}

uint64_t xnet_srx_bind(void *a1, atomic_uint *a2, uint64_t a3)
{
  v4 = *a2;
  if (*a2 == 3)
  {
    if (a3 == 10)
    {
      result = 0;
      a1[2071] = a2;
      return result;
    }

    return 4294967274;
  }

  if (v4 == 15)
  {
    if (a3 == 1024)
    {
      result = 0;
      a1[2073] = a2;
      goto LABEL_8;
    }

    return 4294967274;
  }

  if (v4 == 14)
  {
    if (a3 == 1024)
    {
      result = 0;
      a1[2072] = a2;
LABEL_8:
      atomic_fetch_add(a2 + 12, 1u);
      return result;
    }

    return 4294967274;
  }

  return 4294967218;
}

void xnet_srx_cleanup(uint64_t a1, uint64_t a2)
{
  if (!(*(*(*(a1 + 80) + 496) + 72))(*(*(a1 + 80) + 496) + 8))
  {
    xnet_srx_cleanup_cold_1();
  }

  while (1)
  {
    v4 = *a2;
    if (!*a2)
    {
      break;
    }

    if (v4 == *(a2 + 8))
    {
      *a2 = 0;
      *(a2 + 8) = 0;
    }

    else
    {
      *a2 = *v4;
    }

    if (v4[14])
    {
      xnet_report_error(v4, 0x59u);
    }

    xnet_free_xfer(*(a1 + 80) + 280, v4);
  }
}

uint64_t xnet_srx_cleanup_queues(uint64_t a1, void *a2, uint64_t a3)
{
  if (*a2)
  {
    xnet_srx_cleanup(a3, a2);
  }

  return 0;
}

uint64_t xnet_srx_cleanup_saved(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a2;
  v5 = a2[1];
  *v5 = *a2;
  *(v4 + 8) = v5;
  *a2 = a2;
  a2[1] = a2;
  xnet_srx_cleanup(a3, (a2 + 2));
  *(a2 + 8) = 0;
  return 0;
}

uint64_t xnet_srx_cancel(void *a1, uint64_t a2)
{
  (*(*(a1[10] + 496) + 80))(*(a1[10] + 496) + 8);
  if (!xnet_srx_cancel_rx(a1, a1 + 13, a2) && !xnet_srx_cancel_rx(a1, a1 + 11, a2))
  {
    ofi_array_iter((a1 + 15), a2, xnet_srx_cancel_src);
  }

  (*(*(a1[10] + 496) + 88))(*(a1[10] + 496) + 8);
  return 0;
}

BOOL xnet_srx_cancel_rx(uint64_t a1, void *a2, uint64_t a3)
{
  if (!(*(*(*(a1 + 80) + 496) + 72))(*(*(a1 + 80) + 496) + 8))
  {
    xnet_srx_cancel_rx_cold_1();
  }

  v6 = 0;
  v7 = a2;
  while (1)
  {
    v7 = *v7;
    if (!v7)
    {
      break;
    }

    v8 = v6;
    v6 = v7;
    if (v7[23] == a3)
    {
      v9 = *v7;
      if (v8)
      {
        v10 = v8;
      }

      else
      {
        v10 = a2;
      }

      *v10 = v9;
      if (!v9)
      {
        a2[1] = v8;
      }

      xnet_report_error(v7, 0x59u);
      xnet_free_xfer(*(a1 + 80) + 280, v7);
      return v7 != 0;
    }
  }

  return v7 != 0;
}

uint64_t xnet_srx_recv(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  (*(*(*(a1 + 80) + 496) + 80))(*(*(a1 + 80) + 496) + 8, a2, a3, a4, a5);
  v10 = xnet_alloc_srx_xfer(a1);
  if (v10)
  {
    *(v10 + 42) = *(a1 + 16552) & 0x10000;
    v10[20] = 1026;
    v10[23] = a6;
    v10[1] = a2;
    v10[2] = 1;
    v10[3] = a2;
    v10[4] = a3;
    xnet_srx_msg(a1, v10);
    v11 = 0;
  }

  else
  {
    v11 = -35;
  }

  (*(*(*(a1 + 80) + 496) + 88))(*(*(a1 + 80) + 496) + 8);
  return v11;
}

uint64_t xnet_srx_recvv(uint64_t a1, uint64_t *a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a4 >= 5)
  {
    xnet_srx_recvv_cold_1();
  }

  (*(*(*(a1 + 80) + 496) + 80))(*(*(a1 + 80) + 496) + 8, a2, a3);
  v10 = xnet_alloc_srx_xfer(a1);
  if (v10)
  {
    v11 = v10;
    *(v10 + 42) = *(a1 + 16552) & 0x10000;
    v10[20] = 1026;
    v10[23] = a6;
    v10[2] = a4;
    if (a4)
    {
      v10[1] = *a2;
      memcpy(v10 + 3, a2, 16 * a4);
    }

    xnet_srx_msg(a1, v11);
    v12 = 0;
  }

  else
  {
    v12 = -35;
  }

  (*(*(*(a1 + 80) + 496) + 88))(*(*(a1 + 80) + 496) + 8);
  return v12;
}

uint64_t xnet_srx_recvmsg(void *a1, const void **a2, int a3)
{
  v3 = a2[2];
  if (v3 >= 5)
  {
    xnet_srx_recvmsg_cold_2();
  }

  if ((a3 & 0x10000) != 0 && v3 != 1)
  {
    xnet_srx_recvmsg_cold_1();
  }

  (*(*(a1[10] + 496) + 80))(*(a1[10] + 496) + 8);
  v7 = xnet_alloc_srx_xfer(a1);
  if (v7)
  {
    v8 = v7;
    *(v7 + 42) = a3 & 0x10000;
    v7[20] = a3 & 0x1000000 | 0x402;
    v7[23] = a2[4];
    v9 = a2[2];
    v7[2] = v9;
    if (v9)
    {
      v7[1] = **a2;
      memcpy(v7 + 3, *a2, 16 * v9);
    }

    xnet_srx_msg(a1, v8);
    v10 = 0;
  }

  else
  {
    v10 = -35;
  }

  (*(*(a1[10] + 496) + 88))(*(a1[10] + 496) + 8);
  return v10;
}

uint64_t *xnet_alloc_srx_xfer(void *a1)
{
  v2 = a1[10];
  if (!(*(*(v2 + 496) + 72))(*(v2 + 496) + 8))
  {
    xnet_alloc_srx_xfer_cold_1();
  }

  result = xnet_alloc_xfer(v2 + 280);
  if (result)
  {
    result[15] = a1[2073];
    result[14] = a1[2072];
    result[18] = 0;
  }

  return result;
}

uint64_t xnet_srx_msg(void *a1, uint64_t a2)
{
  v4 = a1[10];
  result = (*(*(v4 + 496) + 72))(*(v4 + 496) + 8);
  if (!result)
  {
    xnet_srx_msg_cold_1();
  }

  v6 = a1 + 11;
  if (a1[11])
  {
    v6 = a1[12];
  }

  *v6 = a2;
  *a2 = 0;
  a1[12] = a2;
  v7 = *(v4 + 504);
  if (v7 != v4 + 504)
  {
    if (*(a2 + 170))
    {

      return xnet_progress_unexp(v4 + 280, (v4 + 504));
    }

    else
    {

      return xnet_progress_rx(v7 - 18736);
    }
  }

  return result;
}

uint64_t xnet_srx_trecv(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  (*(*(a1[10] + 496) + 80))(*(a1[10] + 496) + 8, a2, a3, a4);
  v15 = xnet_alloc_srx_xfer(a1);
  if (v15)
  {
    v16 = v15;
    v15[17] = a6;
    v15[18] = a7;
    v15[19] = a5;
    v15[20] = 1032;
    v15[23] = a8;
    v15[1] = a2;
    v15[2] = 1;
    v15[3] = a2;
    v15[4] = a3;
    v17 = xnet_srx_tag(a1, v15);
    if (v17)
    {
      xnet_free_xfer(a1[10] + 280, v16);
    }
  }

  else
  {
    v17 = -35;
  }

  (*(*(a1[10] + 496) + 88))(*(a1[10] + 496) + 8);
  return v17;
}

uint64_t xnet_srx_trecvv(void *a1, uint64_t *a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a4 >= 5)
  {
    xnet_srx_trecvv_cold_1();
  }

  (*(*(a1[10] + 496) + 80))(*(a1[10] + 496) + 8, a2, a3);
  v15 = xnet_alloc_srx_xfer(a1);
  if (v15)
  {
    v16 = v15;
    v15[17] = a6;
    v15[18] = a7;
    v15[19] = a5;
    v15[20] = 1032;
    v15[23] = a8;
    v15[2] = a4;
    if (a4)
    {
      v15[1] = *a2;
      memcpy(v15 + 3, a2, 16 * a4);
    }

    v17 = xnet_srx_tag(a1, v16);
    if (v17)
    {
      xnet_free_xfer(a1[10] + 280, v16);
    }
  }

  else
  {
    v17 = -35;
  }

  (*(*(a1[10] + 496) + 88))(*(a1[10] + 496) + 8);
  return v17;
}

uint64_t xnet_srx_trecvmsg(void *a1, const void **a2, uint64_t a3)
{
  if (a2[2] >= 5)
  {
    xnet_srx_trecvmsg_cold_3();
  }

  (*(*(a1[10] + 496) + 80))(*(a1[10] + 496) + 8);
  v6 = xnet_alloc_xfer(a1[10] + 280);
  if (!v6)
  {
    v10 = -35;
    goto LABEL_29;
  }

  v7 = v6;
  v6[17] = a2[4];
  v6[18] = a2[5];
  v8 = a2[2];
  v6[19] = a2[3];
  v6[20] = a3 & 0x1000000 | 0x408;
  v6[14] = a1[2072];
  v6[23] = a2[6];
  v6[2] = v8;
  if (v8)
  {
    v6[1] = **a2;
    memcpy(v6 + 3, *a2, 16 * v8);
  }

  if ((a3 & 0x80000) != 0)
  {
    if (!(*(*(a1[10] + 496) + 72))(*(a1[10] + 496) + 8))
    {
      xnet_srx_trecvmsg_cold_2();
    }

    if (!a1[2071])
    {
      xnet_srx_trecvmsg_cold_1();
    }

    v22 = 0;
    v23 = 0;
    if (xnet_find_msg(a1, v7, &v23, &v22, 0))
    {
      v11 = v22;
      if (v22)
      {
        v12 = (v22 + 25);
        v13 = v22[20];
      }

      else
      {
        v12 = (v23 + 18544);
        v13 = *(v23 + 128) & 0x1000000;
      }

      v7[20] |= v13;
      memcpy(v7 + 25, v12, v12[6]);
      if ((a3 & 0xC00000000000000) != 0)
      {
        v15 = v11 + 23;
        if (!v11)
        {
          v15 = (v23 + 18704);
        }

        *v15 = v7[23];
      }

      if ((a3 & 0x400000000000000) == 0)
      {
        xnet_report_success(v7);
LABEL_27:
        xnet_free_xfer(a1[10] + 280, v7);
        goto LABEL_28;
      }

      v14 = xnet_srx_claim(a1, v7, a3);
      if (!v14)
      {
LABEL_28:
        v10 = 0;
        goto LABEL_29;
      }
    }

    else
    {
      LODWORD(v14) = 91;
    }

    v21 = 0;
    v19 = 0u;
    v20 = 0u;
    v18 = 0u;
    v17[1] = 0u;
    *&v17[0] = v7[23];
    *(&v17[0] + 1) = 1032;
    *(&v18 + 1) = v7[17];
    DWORD2(v19) = v14;
    ofi_cq_write_error(a1[2072], v17);
    goto LABEL_27;
  }

  v7[15] = a1[2073];
  if ((a3 & 0x800000000000000) != 0)
  {
    v9 = xnet_srx_claim(a1, v7, a3);
  }

  else
  {
    v9 = xnet_srx_tag(a1, v7);
  }

  v10 = v9;
  if (v9)
  {
    xnet_free_xfer(a1[10] + 280, v7);
  }

LABEL_29:
  (*(*(a1[10] + 496) + 88))(*(a1[10] + 496) + 8);
  return v10;
}

uint64_t xnet_srx_tag(uint64_t a1, void *a2)
{
  v4 = *(a1 + 80);
  if (!(*(*(v4 + 496) + 72))(*(v4 + 496) + 8))
  {
    xnet_srx_tag_cold_6();
  }

  if (!*(a1 + 16568))
  {
    xnet_srx_tag_cold_5();
  }

  v5 = *(a1 + 16544);
  *(a1 + 16544) = v5 + 1;
  a2[16] = v5;
  if (*(a1 + 16536) == xnet_match_tag || (v6 = a2[19], v6 == -1))
  {
    matched = xnet_search_saved(v4 + 280, a2, 1);
    if (!matched)
    {
      v10 = (a1 + 104);
      if (*(a1 + 104))
      {
        v10 = *(a1 + 112);
      }

      *v10 = a2;
      *a2 = 0;
      *(a1 + 112) = a2;
      if (*(v4 + 520) != v4 + 520)
      {
        xnet_progress_unexp(v4 + 280, (v4 + 520));
      }

      return 0;
    }

    goto LABEL_11;
  }

  if (v6 >= 0x100000)
  {
    util_srx_generic_trecv_cold_3();
  }

  v7 = *(a1 + 8328 + 8 * (v6 >> 10));
  if (v7 || (ofi_array_grow(a1 + 8328, a2[19]) & 0x80000000) == 0 && (v7 = *(a1 + 8328 + 8 * (v6 >> 10))) != 0)
  {
    v8 = v7 + *(a1 + 16520) * (v6 & 0x3FF);
    if (*(v8 + 32))
    {
      matched = xnet_match_saved(v4 + 280, v8, a2, 1);
      if (matched)
      {
LABEL_11:
        xnet_recv_saved(*(a1 + 16568), matched, a2);
        return 0;
      }
    }
  }

  v12 = a2[19];
  if (v12 >= 0x100000)
  {
    util_srx_generic_trecv_cold_3();
  }

  v13 = *(a1 + 120 + 8 * (v12 >> 10));
  if (!v13)
  {
    if ((ofi_array_grow(a1 + 120, a2[19]) & 0x80000000) != 0)
    {
      return -35;
    }

    v13 = *(a1 + 120 + 8 * (v12 >> 10));
    if (!v13)
    {
      return -35;
    }
  }

  v14 = (v13 + *(a1 + 8312) * (v12 & 0x3FF));
  rx_ep = xnet_get_rx_ep(*(a1 + 16568), a2[19]);
  if (rx_ep)
  {
    v16 = rx_ep;
    if (!(*(*(*(rx_ep + 80) + 496) + 72))(*(*(rx_ep + 80) + 496) + 8))
    {
      xnet_recv_cold_2();
    }

    if (v16[2337] && !v16[2336])
    {
      if (v16[2342] == v16 + 2342)
      {
        xnet_srx_tag_cold_1();
      }

      v18 = v14;
      if (*v14)
      {
        v18 = v14[1];
      }

      *v18 = a2;
      *a2 = 0;
      v14[1] = a2;
      xnet_progress_rx(v16);
      return 0;
    }
  }

  v17 = v14;
  if (*v14)
  {
    v17 = v14[1];
  }

  result = 0;
  *v17 = a2;
  *a2 = 0;
  v14[1] = a2;
  return result;
}

uint64_t *xnet_search_saved(uint64_t a1, uint64_t a2, int a3)
{
  if (!(*(*(a1 + 216) + 72))(*(a1 + 216) + 8))
  {
    xnet_search_saved_cold_1();
  }

  v6 = (a1 + 256);
  while (1)
  {
    v6 = *v6;
    if (v6 == (a1 + 256))
    {
      break;
    }

    result = xnet_match_saved(a1, v6, a2, a3);
    if (result)
    {
      return result;
    }
  }

  return 0;
}

uint64_t *xnet_match_saved(uint64_t a1, uint64_t *a2, uint64_t a3, int a4)
{
  if (!(*(*(a1 + 216) + 72))(*(a1 + 216) + 8))
  {
    xnet_match_saved_cold_3();
  }

  v7 = *(a2 + 8);
  if (!v7)
  {
    xnet_match_saved_cold_2();
  }

  v8 = 0;
  v9 = a2 + 2;
  while (1)
  {
    v9 = *v9;
    if (!v9)
    {
      break;
    }

    v10 = v8;
    matched = xnet_match_msg(v9[23], (v9 + 25), a3);
    v8 = v9;
    if (matched)
    {
      if (a4)
      {
        v12 = *v9;
        if (v10)
        {
          v13 = v10;
        }

        else
        {
          v13 = a2 + 2;
        }

        *v13 = v12;
        if (!v12)
        {
          a2[3] = v10;
        }

        *(a2 + 8) = v7 - 1;
        if (v7 == 1)
        {
          v14 = *a2;
          if (*a2 == a2)
          {
            xnet_match_saved_cold_1();
          }

          v15 = a2[1];
          *v15 = v14;
          *(v14 + 8) = v15;
          *a2 = a2;
          a2[1] = a2;
        }
      }

      return v9;
    }
  }

  return v9;
}

BOOL xnet_match_msg(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((*(a3 + 169) & 4) != 0)
  {
    if (*(a3 + 184) == a1)
    {
      goto LABEL_5;
    }

    return 0;
  }

  if (a1)
  {
    return 0;
  }

LABEL_5:
  if ((*(a2 + 1) | 4) != 5)
  {
    return 0;
  }

  v3 = 24;
  if ((*(a2 + 2) & 1) == 0)
  {
    v3 = 16;
  }

  return (*(a3 + 144) | *(a3 + 136)) == (*(a3 + 144) | *(a2 + v3));
}

uint64_t xnet_srx_claim(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!(*(*(*(a1 + 80) + 496) + 72))(*(*(a1 + 80) + 496) + 8))
  {
    xnet_srx_claim_cold_3();
  }

  if (!*(a1 + 16568))
  {
    xnet_srx_claim_cold_2();
  }

  v14 = 0;
  v15 = 0;
  *(a2 + 168) |= 0x400u;
  if (!xnet_find_msg(a1, a2, &v15, &v14, 1))
  {
    return -91;
  }

  v6 = v14;
  if ((a3 & 0x400000000000000) == 0)
  {
    goto LABEL_13;
  }

  v7 = v14 + 25;
  if (!v14)
  {
    v7 = (v15 + 18544);
  }

  if (*(v7 + 1) == 5)
  {
    v8 = 4;
    if ((*(v7 + 1) & 1) == 0)
    {
      v8 = 3;
    }

    v9 = v7[v8];
    if (v9)
    {
      goto LABEL_11;
    }

LABEL_17:
    *(a2 + 16) = 0;
    if (v6)
    {
      goto LABEL_14;
    }

LABEL_18:
    v12 = v15;
    if (!v15)
    {
      xnet_srx_claim_cold_1();
    }

    started = xnet_start_recv(v15, a2);
    if (started != -35 && started)
    {
      xnet_ep_disable(v12, 0, 0, 0);
    }

    else
    {
      xnet_progress_rx(v12);
    }

    return 0;
  }

  v9 = v7[1] - *(v7 + 6);
  if (!v9)
  {
    goto LABEL_17;
  }

LABEL_11:
  v10 = malloc_type_malloc(v9, 0x3F84B98EuLL);
  *(a2 + 8) = v10;
  if (!v10)
  {
    return -12;
  }

  *(a2 + 24) = v10;
  *(a2 + 32) = v9;
  *(a2 + 16) = 1;
  *(a2 + 168) |= 0x80u;
LABEL_13:
  if (!v6)
  {
    goto LABEL_18;
  }

LABEL_14:
  xnet_recv_saved(*(a1 + 16568), v6, a2);
  return 0;
}

uint64_t xnet_find_msg(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t **a4, int a5)
{
  v10 = *(a1 + 80);
  if (!(*(*(v10 + 496) + 72))(*(v10 + 496) + 8))
  {
    xnet_find_msg_cold_4();
  }

  *a3 = 0;
  if (*(a1 + 16536) == xnet_match_tag || (v11 = *(a2 + 152), v11 == -1))
  {
    v15 = xnet_search_saved(v10 + 280, a2, a5);
    *a4 = v15;
    if (!v15)
    {
      v16 = (v10 + 520);
      while (1)
      {
        v16 = *v16;
        if (v16 == (v10 + 520))
        {
          return 0;
        }

        if (xnet_match_msg(*(v16 - 4), (v16 - 24), a2))
        {
          v17 = v16 - 2342;
          *a3 = v17;
          goto LABEL_14;
        }
      }
    }

    return 1;
  }

  *a4 = 0;
  if (v11 >= 0x100000)
  {
    util_srx_generic_trecv_cold_3();
  }

  v12 = *(a1 + 8328 + 8 * (v11 >> 10));
  if (v12 || (ofi_array_grow(a1 + 8328, v11) & 0x80000000) == 0 && (v12 = *(a1 + 8328 + 8 * (v11 >> 10))) != 0)
  {
    v13 = v12 + *(a1 + 16520) * (v11 & 0x3FF);
    if (*(v13 + 32))
    {
      matched = xnet_match_saved(v10 + 280, v13, a2, a5);
      *a4 = matched;
      if (matched)
      {
        return 1;
      }
    }
  }

  result = xnet_get_rx_ep(*(a1 + 16568), *(a2 + 152));
  *a3 = result;
  if (result)
  {
    v19 = result;
    if (!(*(*(*(result + 80) + 496) + 72))(*(*(result + 80) + 496) + 8))
    {
      xnet_recv_cold_2();
    }

    if (!*(v19 + 18696) || *(v19 + 18688) || (v17 = *a3, !xnet_match_msg(*(*a3 + 18704), *a3 + 18544, a2)))
    {
      result = 0;
      *a3 = 0;
      return result;
    }

LABEL_14:
    if (v17[2342] == v17 + 2342)
    {
      xnet_find_msg_cold_3();
    }

    return 1;
  }

  return result;
}

void xnet_hdr_bswap(uint64_t a1, uint64_t a2)
{
  *(a2 + 2) = bswap32(*(a2 + 2)) >> 16;
  *(a2 + 8) = bswap64(*(a2 + 8));
  v2 = *(a2 + 6) + 0x7FFFFFFF0;
  if ((v2 >> 3) >= 1)
  {
    v3 = (a2 + 16);
    v4 = (v2 >> 3) & 0x7FFFFFFF;
    do
    {
      *v3 = bswap64(*v3);
      ++v3;
      --v4;
    }

    while (v4);
  }
}

int *xnet_hdr_trace(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 1) | 4) == 5)
  {
    v4 = 24;
    if ((*(a2 + 2) & 1) == 0)
    {
      v4 = 16;
    }

    v5 = *(a2 + v4);
  }

  else
  {
    v5 = 0;
  }

  result = fi_log_enabled(&xnet_prov, 1, 4);
  if (result)
  {
    if (a1 + 18544 == a2)
    {
      v7 = "Rx";
    }

    else
    {
      v7 = "Tx";
    }

    v8 = *__error();
    v9 = *(a2 + 1);
    if (v9 > 7)
    {
      v10 = "unknown";
    }

    else
    {
      v10 = (&xnet_opstr)[v9];
    }

    fi_log(&xnet_prov, 1, 4, "xnet_hdr_trace", 102, "%s op:%s tag:0x%zx flags:0x%x op_data:0x%x hdr_size:%d data_size:%zu\n", v7, v10, v5, *(a2 + 2), *(a2 + 4), *(a2 + 6), *(a2 + 8) - *(a2 + 6));
    result = __error();
    *result = v8;
  }

  return result;
}

int *xnet_hdr_bswap_trace(uint64_t a1, uint64_t a2)
{
  xnet_hdr_bswap(a1, a2);

  return xnet_hdr_trace(a1, a2);
}

int *xnet_disable_keepalive(uint64_t a1)
{
  v3 = 0;
  if (setsockopt(*(a1 + 424), 0xFFFF, 8, &v3, 4u))
  {
    result = fi_log_enabled(&xnet_prov, 0, 3);
    if (!result)
    {
      return result;
    }

    v2 = *__error();
    fi_log(&xnet_prov, 0, 3, "xnet_disable_keepalive", 168, "set SO_KEEPALIVE failed %d");
  }

  else
  {
    result = fi_log_enabled(&xnet_prov, 2, 3);
    if (!result)
    {
      return result;
    }

    v2 = *__error();
    fi_log(&xnet_prov, 2, 3, "xnet_disable_keepalive", 172, "ep %p KEEPALIVE is disabled.\n");
  }

  result = __error();
  *result = v2;
  return result;
}

uint64_t xnet_setup_socket(int a1, uint64_t a2)
{
  v8 = 1;
  if (setsockopt(a1, 0xFFFF, 4, &v8, 4u))
  {
    if (!fi_log_enabled(&xnet_prov, 0, 3))
    {
      return -*__error();
    }

    v4 = *__error();
    fi_log(&xnet_prov, 0, 3, "xnet_setup_socket", 235, "setsockopt reuseaddr failed\n");
LABEL_4:
    *__error() = v4;
    return -*__error();
  }

  if (xnet_nodelay && ((xnet_nodelay & 0x80000000) == 0 || *(*(a2 + 104) + 28) < 0x10009u || *(*(a2 + 72) + 72) != 515) && setsockopt(a1, 6, 1, &v8, 4u))
  {
    if (!fi_log_enabled(&xnet_prov, 0, 3))
    {
      return -*__error();
    }

    v4 = *__error();
    fi_log(&xnet_prov, 0, 3, "xnet_setup_socket", 250, "setsockopt nodelay failed\n");
    goto LABEL_4;
  }

  v5 = fi_fd_nonblock(a1);
  if (v5 && fi_log_enabled(&xnet_prov, 0, 3))
  {
    v7 = *__error();
    fi_log(&xnet_prov, 0, 3, "xnet_setup_socket", 258, "failed to set socket to nonblocking\n");
    *__error() = v7;
  }

  return v5;
}

uint64_t xnet_ep_disable(uint64_t a1, int a2, const void *a3, size_t a4)
{
  v25[0] = 0;
  v25[1] = 0;
  v23 = 0u;
  v24 = 0u;
  v22 = 0u;
  result = (*(*(*(a1 + 80) + 496) + 72))(*(*(a1 + 80) + 496) + 8);
  if (!result)
  {
    xnet_ep_disable_cold_1();
  }

  v9 = *(a1 + 18904);
  v10 = v9 > 4;
  v11 = (1 << v9) & 0x1A;
  if (!v10 && v11 != 0)
  {
    *(a1 + 18904) = 5;
    v13 = *(a1 + 18736);
    v14 = *(a1 + 18744);
    *v14 = v13;
    *(v13 + 8) = v14;
    *(a1 + 18736) = a1 + 18736;
    *(a1 + 18744) = a1 + 18736;
    if (!xnet_io_uring)
    {
      xnet_halt_sock(*(a1 + 80) + 280, *(a1 + 424));
    }

    if (shutdown(*(a1 + 424), 2) && *__error() != 57 && fi_log_enabled(&xnet_prov, 0, 4))
    {
      v15 = *__error();
      fi_log(&xnet_prov, 0, 4, "xnet_ep_disable", 530, "shutdown failed\n");
      *__error() = v15;
    }

    xnet_ep_flush_all_queues(a1);
    if (a2)
    {
      DWORD2(v23) = a2;
      v16 = *(a1 + 8);
      *&v22 = a1;
      *(&v22 + 1) = v16;
      if (a3 && a4)
      {
        v17 = malloc_type_malloc(a4, 0x2A1BF8CCuLL);
        if (v17)
        {
          v18 = v17;
          memcpy(v17, a3, a4);
          *&v24 = v18;
          *(&v24 + 1) = a4;
        }

        else
        {
          *&v24 = 0;
        }
      }

      v19 = *(a1 + 112);
      v20 = &v22;
      v21 = 48;
    }

    else
    {
      v25[0] = a1;
      v19 = *(a1 + 112);
      v20 = v25;
      v21 = 16;
    }

    return xnet_eq_write(v19, 3, v20, v21);
  }

  return result;
}

double xnet_ep_flush_all_queues(uint64_t a1)
{
  v2 = *(a1 + 80);
  if (!(*(*(v2 + 496) + 72))(*(v2 + 496) + 8))
  {
    xnet_ep_flush_all_queues_cold_3();
  }

  if (xnet_uring_cancel(v2 + 280, v2 + 656, a1 + 440) && fi_log_enabled(&xnet_prov, 0, 4))
  {
    v3 = *__error();
    fi_log(&xnet_prov, 0, 4, "xnet_ep_flush_all_queues", 460, "Failed to cancel TX uring\n");
    *__error() = v3;
  }

  if (xnet_uring_cancel(v2 + 280, v2 + 696, a1 + 456) && fi_log_enabled(&xnet_prov, 0, 4))
  {
    v4 = *__error();
    fi_log(&xnet_prov, 0, 4, "xnet_ep_flush_all_queues", 466, "Failed to cancel RX uring\n");
    *__error() = v4;
  }

  if (xnet_uring_cancel(v2 + 280, v2 + 696, a1 + 472) && fi_log_enabled(&xnet_prov, 0, 4))
  {
    v5 = *__error();
    fi_log(&xnet_prov, 0, 4, "xnet_ep_flush_all_queues", 472, "Failed to cancel POLLIN uring\n");
    *__error() = v5;
  }

  v6 = *(a1 + 18720);
  if (v6)
  {
    (*(a1 + 18944))(a1, v6 + 200);
    v7 = *(a1 + 18720);
    if ((v7[169] & 8) != 0)
    {
      if (v7[201] != 5)
      {
        xnet_ep_flush_all_queues_cold_1();
      }

      if (*(a1 + 18860) != 1)
      {
        xnet_ep_flush_all_queues_cold_2();
      }

      v8 = v7[204];
      v9 = *(a1 + 18848) + 16 * v8;
      if (*(v9 + 8) == -1)
      {
        *v9 = 0;
        *(v9 + 8) = *(a1 + 18856);
        *(a1 + 18856) = v8;
      }
    }

    xnet_report_error(v7, 0x59u);
    xnet_free_xfer(*(a1 + 80) + 280, *(a1 + 18720));
    *(a1 + 18720) = 0;
  }

  xnet_flush_xfer_queue(v2 + 280, (a1 + 18768), a1 + 18848);
  xnet_flush_xfer_queue(v2 + 280, (a1 + 18784), 0);
  xnet_flush_xfer_queue(v2 + 280, (a1 + 18832), 0);
  xnet_flush_xfer_queue(v2 + 280, (a1 + 18800), 0);
  xnet_flush_xfer_queue(v2 + 280, (a1 + 18816), 0);
  xnet_flush_byte_idx(v2 + 280, (a1 + 18848));
  xnet_flush_byte_idx(v2 + 280, (a1 + 18864));
  v10 = *(a1 + 18688);
  if (v10 && (*(v10 + 169) & 1) == 0)
  {
    xnet_report_error(v10, 0x59u);
    xnet_free_xfer(*(a1 + 80) + 280, *(a1 + 18688));
  }

  *(a1 + 18672) = 0;
  *(a1 + 18688) = 0;
  *(a1 + 18696) = 0;
  *(a1 + 18664) = 16;
  *(a1 + 18704) = 0;
  *(a1 + 18544) = 0;
  xnet_flush_xfer_queue(v2 + 280, (a1 + 18752), 0);
  *(a1 + 18888) = 0;
  result = 0.0;
  *(a1 + 9512) = 0;
  *(a1 + 496) = 0;
  return result;
}

uint64_t xnet_reset_rx(uint64_t result)
{
  *(result + 18672) = 0;
  *(result + 18688) = 0;
  *(result + 18704) = 0;
  *(result + 18696) = 0;
  *(result + 18664) = 16;
  *(result + 18544) = 0;
  return result;
}

uint64_t xnet_endpoint(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = malloc_type_calloc(1uLL, 0x4A18uLL, 0x10A204056813E08uLL);
  if (!v8)
  {
    return 4294967284;
  }

  v9 = v8;
  v10 = ofi_endpoint_init(a1, &xnet_util_prov, a2, v8, a4, 0);
  if (v10)
  {
LABEL_40:
    free(v9);
    return v10;
  }

  if (**(a2 + 88) != 1)
  {
    xnet_endpoint_cold_1();
  }

  v11 = *(v9 + 80) + 744;
  v12 = xnet_staging_sbuf_size;
  v13 = xnet_prefetch_rbuf_size;
  *(v9 + 424) = -1;
  *(v9 + 432) = v11;
  *(v9 + 440) = v9;
  *(v9 + 448) = 0;
  *(v9 + 456) = v9;
  *(v9 + 464) = 0;
  *(v9 + 472) = v9;
  *(v9 + 480) = 0;
  bzero((v9 + 496), 0x2330uLL);
  LODWORD(v14) = v12 & ~(v12 >> 31);
  if (v14 >= 9000)
  {
    v14 = 9000;
  }

  else
  {
    v14 = v14;
  }

  *(v9 + 488) = v14;
  bzero((v9 + 9512), 0x2330uLL);
  LODWORD(v15) = v13 & ~(v13 >> 31);
  if (v15 >= 9000)
  {
    v15 = 9000;
  }

  else
  {
    v15 = v15;
  }

  *(v9 + 9504) = v15;
  *(v9 + 18520) = -1;
  *(v9 + 18536) = 0;
  *(v9 + 18528) = -1;
  v16 = *(a2 + 64);
  if (v16)
  {
    if (*v16 == 9)
    {
      *(v9 + 424) = *(v16 + 72);
      *(v16 + 72) = -1;
      goto LABEL_32;
    }

    *(v9 + 18904) = 2;
    v22 = *(v16 + 32);
    *(v9 + 424) = v22;
    *(v16 + 32) = -1;
    if (*(v16 + 36))
    {
      v23 = xnet_hdr_none;
    }

    else
    {
      v23 = xnet_hdr_bswap;
    }

    v24 = xnet_hdr_bswap_trace;
    if (*(v16 + 36))
    {
      v24 = xnet_hdr_trace;
    }

    if (!xnet_trace_msg)
    {
      v24 = v23;
    }

    *(v9 + 18944) = v24;
    *(v9 + 18920) = v16;
    v19 = xnet_setup_socket(v22, a2);
    if (v19)
    {
LABEL_31:
      v10 = v19;
LABEL_37:
      close(*(v9 + 424));
LABEL_39:
      ofi_endpoint_close(v9, v26);
      goto LABEL_40;
    }
  }

  else
  {
    sa_family = ofi_get_sa_family(a2);
    v18 = socket(sa_family, 1, 0);
    *(v9 + 424) = v18;
    if (v18 == -1)
    {
      v10 = -*__error();
      goto LABEL_39;
    }

    v19 = xnet_setup_socket(v18, a2);
    if (v19)
    {
      goto LABEL_31;
    }

    v20 = *(a2 + 48);
    if (v20 && (!ofi_is_any_addr(v20) || ofi_addr_get_port(*(a2 + 48))))
    {
      ofi_addr_get_port(*(a2 + 48));
      if (bind(*(v9 + 424), *(a2 + 48), *(a2 + 32)))
      {
        if (fi_log_enabled(&xnet_prov, 0, 3))
        {
          v21 = *__error();
          fi_log(&xnet_prov, 0, 3, "xnet_endpoint", 880, "bind failed\n");
          *__error() = v21;
        }

        v10 = -*__error();
        goto LABEL_37;
      }
    }
  }

LABEL_32:
  v25 = malloc_type_calloc(1uLL, 0x120uLL, 0x1000040A8CFB95EuLL);
  *(v9 + 18928) = v25;
  if (!v25)
  {
    v10 = 4294967284;
    goto LABEL_37;
  }

  *(v9 + 18736) = v9 + 18736;
  *(v9 + 18744) = v9 + 18736;
  *(v9 + 18752) = 0u;
  *(v9 + 18768) = 0u;
  *(v9 + 18784) = 0u;
  *(v9 + 18800) = 0u;
  *(v9 + 18816) = 0u;
  *(v9 + 18832) = 0u;
  if (*(*(a2 + 88) + 72) != -1)
  {
    *(v9 + 18888) = *(*(a2 + 80) + 48);
  }

  v10 = 0;
  *a3 = v9;
  *(v9 + 16) = &xnet_ep_fi_ops;
  *(*a3 + 24) = &xnet_ep_ops;
  *(*a3 + 32) = &xnet_cm_ops;
  *(*a3 + 40) = &xnet_msg_ops;
  *(*a3 + 48) = &xnet_rma_ops;
  *(v9 + 18664) = 16;
  *(v9 + 18672) = 0;
  *(*a3 + 56) = &xnet_tagged_ops;
  return v10;
}

BOOL ofi_is_any_addr(uint64_t a1)
{
  v1 = *(a1 + 1);
  if (v1 == 30 || v1 == 27)
  {
    return *(a1 + 8) == 0;
  }

  if (v1 == 2)
  {
    return *(a1 + 4) == 0;
  }

  result = fi_log_enabled(&core_prov, 0, 0);
  if (result)
  {
    v4 = *__error();
    fi_log(&core_prov, 0, 0, "ofi_is_any_addr", 791, "Unknown address format!\n");
    v5 = __error();
    result = 0;
    *v5 = v4;
  }

  return result;
}

void xnet_flush_xfer_queue(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (!(*(*(a1 + 216) + 72))(*(a1 + 216) + 8))
  {
    xnet_flush_xfer_queue_cold_4();
  }

  while (1)
  {
    v6 = *a2;
    if (!*a2)
    {
      break;
    }

    if ((*(v6 + 169) & 8) != 0)
    {
      if (!a3)
      {
        xnet_flush_xfer_queue_cold_3();
      }

      if (*(v6 + 201) != 5)
      {
        xnet_flush_xfer_queue_cold_1();
      }

      if (*(a3 + 12) != 1)
      {
        xnet_ep_flush_all_queues_cold_2();
      }

      v7 = *(v6 + 204);
      v8 = *a3 + 16 * v7;
      if (*(v8 + 8) == -1)
      {
        *v8 = 0;
        *(v8 + 8) = *(a3 + 8);
        *(a3 + 8) = v7;
      }
    }

    if (v6 == a2[1])
    {
      *a2 = 0;
      a2[1] = 0;
    }

    else
    {
      *a2 = *v6;
    }

    xnet_report_error(v6, 0x59u);
    xnet_free_xfer(a1, v6);
  }
}

void xnet_flush_byte_idx(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  if (*a2)
  {
    v5 = 0;
LABEL_3:
    v6 = v2 + v5;
    if (*(v6 + 24) == -1)
    {
      v7 = *(v6 + 16);
      if (v7)
      {
        xnet_report_error(*(v6 + 16), 0x59u);
        xnet_free_xfer(a1, v7);
      }
    }

    while (v5 != 4048)
    {
      v2 = *a2;
      v5 += 16;
      if (*a2)
      {
        goto LABEL_3;
      }
    }
  }
}

uint64_t xnet_ep_close(uint64_t a1)
{
  v2 = *(a1 + 80);
  (*(v2 + 384))(v2 + 312);
  *(a1 + 18904) = 5;
  v3 = *(a1 + 18736);
  v4 = *(a1 + 18744);
  *v4 = v3;
  *(v3 + 8) = v4;
  *(a1 + 18736) = a1 + 18736;
  *(a1 + 18744) = a1 + 18736;
  if (!xnet_io_uring)
  {
    xnet_halt_sock(v2 + 280, *(a1 + 424));
  }

  close(*(a1 + 424));
  v5 = xnet_ep_flush_all_queues(a1);
  (*(v2 + 392))(v2 + 312, v5);
  if (*(a1 + 448) & 1) != 0 || (*(a1 + 464) & 1) != 0 || (*(a1 + 480))
  {
    return 4294967280;
  }

  free(*(a1 + 18928));
  free(*(a1 + 18936));
  ofi_endpoint_close(a1, v7);
  free(a1);
  return 0;
}

uint64_t xnet_ep_bind(void *a1, atomic_uint *a2, unint64_t a3)
{
  if (*a2 == 13)
  {
    result = xnet_add_domain_progress(a2, a1[10]);
    if (result)
    {
      return result;
    }
  }

  else if (*a2 == 6)
  {
    a1[2362] = a2;
    if (a1[2370])
    {
      return 0;
    }

    result = 0;
    a1[2370] = *(a2 + 2074);
    return result;
  }

  return ofi_ep_bind(a1, a2, a3);
}

uint64_t xnet_ep_ctrl(uint64_t a1, int a2, _DWORD *a3)
{
  if (a2 == 6)
  {
    if (ofi_needs_rx(*(a1 + 280)) && !*(a1 + 120))
    {
      goto LABEL_17;
    }

    result = ofi_needs_tx(*(a1 + 280));
    if (!result)
    {
      return result;
    }

    if (*(a1 + 136))
    {
      return 0;
    }

    else
    {
LABEL_17:
      if (fi_log_enabled(&xnet_prov, 0, 3))
      {
        v6 = *__error();
        fi_log(&xnet_prov, 0, 3, "xnet_ep_ctrl", 709, "missing needed CQ binding\n");
        *__error() = v6;
      }

      return 4294967033;
    }
  }

  else if (a2 == 20)
  {
    result = 0;
    *a3 = *(a1 + 424);
  }

  else
  {
    if (fi_log_enabled(&xnet_prov, 0, 3))
    {
      v5 = *__error();
      fi_log(&xnet_prov, 0, 3, "xnet_ep_ctrl", 714, "unsupported command\n");
      *__error() = v5;
    }

    return 4294967218;
  }

  return result;
}

uint64_t xnet_ep_cancel(uint64_t a1, uint64_t a2)
{
  (*(*(a1 + 80) + 384))(*(a1 + 80) + 312);
  if (!(*(*(*(a1 + 80) + 496) + 72))(*(*(a1 + 80) + 496) + 8))
  {
    xnet_ep_cancel_cold_1();
  }

  v4 = 0;
  v5 = (a1 + 18752);
  v6 = (a1 + 18752);
  while (1)
  {
    v6 = *v6;
    if (!v6)
    {
      break;
    }

    v7 = v4;
    v4 = v6;
    if (v6[23] == a2)
    {
      if (*(a1 + 18688) != v6)
      {
        v8 = *v6;
        if (v7)
        {
          v5 = v7;
        }

        *v5 = v8;
        if (!v8)
        {
          *(a1 + 18760) = v7;
        }

        ++*(a1 + 18888);
        xnet_report_error(v6, 0x59u);
        xnet_free_xfer(*(a1 + 80) + 280, v6);
      }

      break;
    }
  }

  (*(*(a1 + 80) + 392))(*(a1 + 80) + 312);
  return 0;
}

uint64_t xnet_ep_getopt(uint64_t a1, int a2, int a3, void *a4, void *a5)
{
  result = 4294967254;
  if (!a2 && a3 == 1)
  {
    if (*a5 >= 8uLL)
    {
      result = 0;
      *a4 = 256;
    }

    else
    {
      result = 4294967039;
    }

    *a5 = 8;
  }

  return result;
}

uint64_t xnet_ep_getname(uint64_t a1, sockaddr *a2, socklen_t *a3)
{
  v4 = *a3;
  if (getsockname(*(a1 + 424), a2, a3))
  {
    return -*__error();
  }

  if (v4 >= *a3)
  {
    return 0;
  }

  return 4294967039;
}

uint64_t xnet_ep_getpeer(uint64_t a1, sockaddr *a2, socklen_t *a3)
{
  v4 = *a3;
  if (getpeername(*(a1 + 424), a2, a3))
  {
    return -*__error();
  }

  if (v4 >= *a3)
  {
    return 0;
  }

  return 4294967039;
}

uint64_t xnet_ep_connect(uint64_t a1, unsigned __int8 *a2, void *__src, size_t __n)
{
  if (!a2)
  {
    return 4294967274;
  }

  v4 = __n;
  v5 = 4294967274;
  if (__n <= 0x100 && *(a1 + 424) != -1 && !*(a1 + 18904))
  {
    v8 = *(a1 + 18928);
    *v8 = 3;
    *(v8 + 24) = 1;
    if (__n)
    {
      memcpy((*(a1 + 18928) + 32), __src, __n);
      *(*(a1 + 18928) + 2) = bswap32(v4) >> 16;
    }

    v9 = a2[1];
    switch(v9)
    {
      case 2:
        v10 = 16;
        break;
      case 27:
        v10 = 48;
        break;
      case 30:
        v10 = 28;
        break;
      default:
        if (fi_log_enabled(&core_prov, 0, 0))
        {
          v12 = *__error();
          fi_log(&core_prov, 0, 0, "ofi_sizeofaddr", 692, "Unknown address format\n");
          v10 = 0;
          *__error() = v12;
        }

        else
        {
          v10 = 0;
        }

        break;
    }

    v13 = malloc_type_malloc(v10, 0x2A1BF8CCuLL);
    if (v13)
    {
      v14 = v13;
      memcpy(v13, a2, v10);
      *(a1 + 18936) = v14;
      *(a1 + 18904) = 1;
      v15 = v14[1];
      if (v15 != 2 && v15 != 27 && v15 != 30 && fi_log_enabled(&core_prov, 0, 0))
      {
        v16 = *__error();
        fi_log(&core_prov, 0, 0, "ofi_sizeofaddr", 692, "Unknown address format\n");
        *__error() = v16;
      }

      v17 = (*(*(a1 + 432) + 32))();
      if (v17 == -513)
      {
        return 0;
      }

      else
      {
        v5 = v17;
        if (v17 && v17 != -36)
        {
          *(a1 + 18904) = 0;
          if (fi_log_enabled(&xnet_prov, 0, 3))
          {
            v19 = *__error();
            v20 = fi_strerror(-v5);
            fi_log(&xnet_prov, 0, 3, "xnet_ep_connect", 316, "connect failure %d(%s)\n", -v5, v20);
            *__error() = v19;
          }
        }

        else
        {
          v18 = *(a1 + 80);
          (*(v18 + 384))(v18 + 312);
          *(a1 + 18952) = 4;
          v5 = xnet_monitor_ep(v18 + 280, a1);
          (*(v18 + 392))(v18 + 312);
          if (v5)
          {
            (*(v18 + 384))(v18 + 312);
            xnet_ep_disable(a1, -v5, 0, 0);
            (*(v18 + 392))(v18 + 312);
          }
        }
      }
    }

    else
    {
      *(a1 + 18936) = 0;
      return 4294967284;
    }
  }

  return v5;
}

uint64_t xnet_ep_accept(uint64_t a1, void *__src, size_t __n)
{
  v28 = *MEMORY[0x29EDCA608];
  if (*(a1 + 424) == -1)
  {
    return 4294967274;
  }

  v4 = a1 + 0x4000;
  v5 = *(a1 + 18920);
  if (*(a1 + 18904) != 2 || v5 == 0)
  {
    return 4294967274;
  }

  v7 = 4294967274;
  memset(v27, 0, sizeof(v27));
  if (__n <= 0x100 && *v5 == 18)
  {
    *(a1 + 18920) = 0;
    v10 = *(a1 + 18928);
    if (!v10)
    {
      xnet_ep_accept_cold_2();
    }

    *v10 = 259;
    *(v10 + 24) = 1;
    if (__n)
    {
      memcpy((*(a1 + 18928) + 32), __src, __n);
      *(*(a1 + 18928) + 2) = bswap32(__n) >> 16;
    }

    v25 = 5;
    v26 = 1;
    v23 = 2;
    v24 = 2;
    v11 = setsockopt(*(a1 + 424), 0xFFFF, 8, &v26, 4u);
    if (v11)
    {
      v12 = v11;
      if (fi_log_enabled(&xnet_prov, 0, 3))
      {
        v13 = *__error();
        fi_log(&xnet_prov, 0, 3, "xnet_enable_keepalive", 187, "set SO_KEEPALIVE failed %d", v12);
        *__error() = v13;
      }

      v14 = __error();
      v7 = -*v14;
      if (!*v14)
      {
        goto LABEL_39;
      }

      goto LABEL_33;
    }

    if (setsockopt(*(a1 + 424), 6, 16, &v25, 4u))
    {
      v7 = -*__error();
      if (!fi_log_enabled(&xnet_prov, 0, 3))
      {
        goto LABEL_29;
      }

      v15 = *__error();
      fi_log(&xnet_prov, 0, 3, "xnet_enable_keepalive", 195, "set TCP_KEEPIDLE failed %d", v7);
LABEL_28:
      *__error() = v15;
LABEL_29:
      if (v7)
      {
LABEL_30:
        if (fi_log_enabled(&xnet_prov, 0, 3))
        {
          v16 = *__error();
          fi_log(&xnet_prov, 0, 3, "xnet_enable_keepalive", 221, "%p KEEPALIVE set keepalive failed %d\n", a1, v7);
          *__error() = v16;
        }

        xnet_disable_keepalive(a1);
LABEL_33:
        if (fi_log_enabled(&xnet_prov, 0, 3))
        {
          v17 = *__error();
          fi_log(&xnet_prov, 0, 3, "xnet_ep_accept", 372, "%p set tcp keepalive failure:%d\n", a1, v7);
          *__error() = v17;
        }

        return v7;
      }

LABEL_39:
      v19 = xnet_send_cm_msg(a1);
      if (v19)
      {
        return v19;
      }

      free(*(a1 + 18928));
      *(a1 + 18928) = 0;
      *(v4 + 2520) = 4;
      if (*(a1 + 9516) != *(a1 + 9512) || *(a1 + 18696))
      {
        xnet_ep_accept_cold_1();
      }

      v20 = *(a1 + 80);
      (*(v20 + 384))(v20 + 312);
      *(v4 + 2568) = 1;
      v7 = xnet_monitor_ep(v20 + 280, a1);
      (*(v20 + 392))(v20 + 312);
      if (!v7)
      {
        v27[0] = a1;
        if (__n)
        {
          __memcpy_chk();
        }

        v21 = xnet_eq_write(*(a1 + 112), 2, v27, 0x110uLL);
        if ((v21 & 0x80000000) != 0)
        {
          v7 = v21;
          if (fi_log_enabled(&xnet_prov, 0, 3))
          {
            v22 = *__error();
            fi_log(&xnet_prov, 0, 3, "xnet_ep_accept", 400, "Error writing to EQ\n");
            *__error() = v22;
          }
        }

        else
        {
          free(v5);
          return 0;
        }
      }

      return v7;
    }

    if (setsockopt(*(a1 + 424), 6, 257, &v24, 4u))
    {
      v7 = -*__error();
      if (fi_log_enabled(&xnet_prov, 0, 3))
      {
        v15 = *__error();
        fi_log(&xnet_prov, 0, 3, "xnet_enable_keepalive", 203, "set TCP_KEEPINTVL failed %d");
        goto LABEL_28;
      }
    }

    else
    {
      if (!setsockopt(*(a1 + 424), 6, 258, &v23, 4u))
      {
        if (fi_log_enabled(&xnet_prov, 2, 3))
        {
          v18 = *__error();
          fi_log(&xnet_prov, 2, 3, "xnet_enable_keepalive", 216, "%p KEEPALIVE idle %d intvl %d cnt %d\n", a1, v25, v24, v23);
          *__error() = v18;
        }

        goto LABEL_39;
      }

      v7 = -*__error();
      if (fi_log_enabled(&xnet_prov, 0, 3))
      {
        v15 = *__error();
        fi_log(&xnet_prov, 0, 3, "xnet_enable_keepalive", 211, "set SO_KEEPALIVE failed %d");
        goto LABEL_28;
      }
    }

    if (v7)
    {
      goto LABEL_30;
    }

    goto LABEL_39;
  }

  return v7;
}

uint64_t xnet_ep_shutdown(uint64_t a1)
{
  (*(*(a1 + 80) + 384))(*(a1 + 80) + 312);
  ofi_bsock_flush_sync((a1 + 424));
  xnet_ep_disable(a1, 0, 0, 0);
  (*(*(a1 + 80) + 392))(*(a1 + 80) + 312);
  return 0;
}

uint64_t xnet_monitor_ep(uint64_t a1, uint64_t a2)
{
  if (xnet_io_uring)
  {
    if ((*(a2 + 18952) & 4) != 0)
    {
      xnet_monitor_ep_cold_1();
    }

    v4 = *(a2 + 424);
    v5 = a2 + 472;

    return xnet_uring_pollin_add(a1, v4, 0, v5);
  }

  else
  {
    v7 = *(a2 + 424);
    v8 = *(a2 + 18952);

    return xnet_monitor_sock(a1, v7, v8, a2);
  }
}

void xnet_complete_saved(uint64_t a1, uint64_t a2)
{
  v4 = *(*(a1 + 112) + 32);
  if (!(*(*(v4 + 496) + 72))(*(v4 + 496) + 8))
  {
    xnet_complete_saved_cold_1();
  }

  if (*(a1 + 201) == 5)
  {
    v5 = 32;
    if ((*(a1 + 202) & 1) == 0)
    {
      v5 = 24;
    }

    v6 = *(a1 + v5 + 200);
    if (v6)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v6 = *(a1 + 208) - *(a1 + 206);
    if (v6)
    {
LABEL_6:
      v7 = ofi_copy_iov_buf(a1 + 24, *(a1 + 16), 0, a2, v6, 1);
      goto LABEL_9;
    }
  }

  v7 = 0;
LABEL_9:
  if (v7 == v6)
  {
    xnet_report_success(a1);
  }

  else
  {
    if (fi_log_enabled(&xnet_prov, 0, 4))
    {
      v8 = *__error();
      fi_log(&xnet_prov, 0, 4, "xnet_complete_saved", 272, "saved recv truncated\n");
      *__error() = v8;
    }

    xnet_cntr_incerr(a1);
    xnet_report_error(a1, 0x109u);
  }

  xnet_free_xfer(v4 + 280, a1);
}

void xnet_recv_saved(void *a1, uint64_t a2, void *a3)
{
  v6 = a1[10];
  if (!(*(*(v6 + 496) + 72))(*(v6 + 496) + 8))
  {
    xnet_recv_saved_cold_5();
  }

  v7 = *(a2 + 168);
  if ((v7 & 0x80) != 0)
  {
    v8 = *(a2 + 8);
    v9 = v8;
  }

  else
  {
    v8 = 0;
    v9 = a2 + 320;
  }

  *(a2 + 168) = v7 & 0xFFFFFE7F;
  *(a2 + 184) = a3[23];
  v10 = a3[2];
  *(a2 + 8) = a3[1];
  *(a2 + 160) |= a3[20];
  *(a2 + 120) = a3[15];
  *(a2 + 112) = a3[14];
  if (v10)
  {
    memcpy((a2 + 24), a3 + 3, 16 * v10);
    *(a2 + 16) = a3[2];
  }

  v11 = *(a2 + 104);
  if (*(a2 + 201) == 5)
  {
    xnet_rts_matched(a1, *(a2 + 104), a2);
    if (v11)
    {
      *(a2 + 104) = 0;
      if (v11[2336] != a2)
      {
        xnet_recv_saved_cold_3();
      }

      if (v8)
      {
        xnet_recv_saved_cold_4();
      }

      xnet_reset_rx(v11);
    }
  }

  else
  {
    if (v11)
    {
      *(a2 + 104) = 0;
      if (v11[2336] != a2)
      {
        xnet_recv_saved_cold_1();
      }

      v12 = *(a2 + 208);
      v13 = *(a2 + 206);
      v14 = v12 - v13;
      v15 = v12 - v13;
      if (v12 == v13 || (v16 = v11[2335]) == 0)
      {
        xnet_recv_saved_cold_2();
      }

      v17 = v14 - v16;
      ofi_truncate_iov(a2 + 24, (a2 + 16), v15);
      if (ofi_copy_iov_buf(a2 + 24, *(a2 + 16), 0, v9, v17, 1) >= v17)
      {
        ofi_consume_iov((a2 + 24), (a2 + 16), v17);
      }

      else
      {
        xnet_handle_truncate(v11);
      }
    }

    else
    {
      xnet_complete_saved(a2, v9);
    }

    free(v8);
  }

  xnet_free_xfer(v6 + 280, a3);
}

uint64_t xnet_rts_matched(void *a1, uint64_t rx_ep, uint64_t a3)
{
  if (!(*(*(a1[10] + 496) + 72))(*(a1[10] + 496) + 8))
  {
    xnet_rts_matched_cold_7();
  }

  if (!rx_ep)
  {
    rx_ep = xnet_get_rx_ep(a1, *(a3 + 152));
    if (!rx_ep)
    {
      if (fi_log_enabled(&xnet_prov, 0, 4))
      {
        v12 = *__error();
        fi_log(&xnet_prov, 0, 4, "xnet_rts_matched", 224, "CTS connection no longer active\n");
        *__error() = v12;
      }

      v9 = 4294967291;
      goto LABEL_20;
    }
  }

  if ((*(rx_ep + 18876) & 0xFFFFFFFD) != 0)
  {
    xnet_rts_matched_cold_1();
  }

  v6 = *(a3 + 204);
  *(rx_ep + 18876) = 2;
  v7 = *(rx_ep + 18864);
  if (!v7)
  {
    if (!ofi_byte_idx_grow(rx_ep + 18864))
    {
      LODWORD(v6) = 0;
      goto LABEL_10;
    }

    v7 = *(rx_ep + 18864);
  }

  v8 = v7 + 16 * v6;
  if (*(v8 + 8) == -1)
  {
    xnet_rts_matched_cold_6();
  }

  *v8 = a3;
  *(v8 + 8) = -1;
LABEL_10:
  if (v6 != *(a3 + 204))
  {
    xnet_rts_matched_cold_2();
  }

  v9 = xnet_queue_ack(rx_ep, 6, v6);
  if (v9)
  {
    if (*(rx_ep + 18876) != 2)
    {
      xnet_rts_matched_cold_3();
    }

    v10 = *(rx_ep + 18864);
    if (!v10)
    {
      xnet_rts_matched_cold_5();
    }

    v11 = v10 + 16 * v6;
    if (*(v11 + 8) != -1)
    {
      xnet_rts_matched_cold_4();
    }

    *v11 = 0;
    *(v10 + 16 * v6 + 8) = 0;
LABEL_20:
    xnet_cntr_incerr(a3);
    xnet_report_error(a3, -v9);
    xnet_free_xfer(a1[10] + 280, a3);
  }

  return v9;
}

uint64_t xnet_handle_truncate(void *a1)
{
  if (fi_log_enabled(&xnet_prov, 0, 4))
  {
    v2 = *__error();
    fi_log(&xnet_prov, 0, 4, "xnet_handle_truncate", 160, "msg recv truncated\n");
    *__error() = v2;
  }

  v3 = a1[2336];
  if (!v3)
  {
    xnet_handle_truncate_cold_2();
  }

  if (!a1[2335])
  {
    xnet_handle_truncate_cold_1();
  }

  xnet_cntr_incerr(a1[2336]);
  xnet_report_error(v3, 0x109u);
  a1[2338] = -1;
  *(v3 + 160) = 0;
  *(v3 + 168) = 1032;
  v4 = a1[2335];
  v5 = malloc_type_malloc(v4, 0x3F84B98EuLL);
  *(v3 + 8) = v5;
  if (v5)
  {
    v6 = v5;
    result = 0;
    *(v3 + 24) = v6;
    *(v3 + 32) = v4;
    *(v3 + 16) = 1;
    *(v3 + 168) |= 0x80u;
  }

  else
  {
    xnet_free_xfer(a1[10] + 280, v3);
    xnet_reset_rx(a1);
    return 4294967284;
  }

  return result;
}

uint64_t xnet_uring_pollin_add(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!(*(*(a1 + 216) + 72))(*(a1 + 216) + 8, a2, a3))
  {
    xnet_uring_pollin_add_cold_1();
  }

  if (*(a4 + 8))
  {
    return 0;
  }

  else
  {
    return 4294967218;
  }
}

uint64_t xnet_start_recv(uint64_t a1, uint64_t a2)
{
  if (!(*(*(*(a1 + 80) + 496) + 72))(*(*(a1 + 80) + 496) + 8))
  {
    xnet_start_recv_cold_4();
  }

  v4 = *(a1 + 18736);
  if (v4 != a1 + 18736)
  {
    v5 = *(a1 + 18744);
    *v5 = v4;
    *(v4 + 8) = v5;
    *(a1 + 18736) = a1 + 18736;
    *(a1 + 18744) = a1 + 18736;
    updated = xnet_update_pollflag(a1, 1, 1);
    if (updated)
    {
      v7 = updated;
      xnet_cntr_incerr(a2);
      xnet_report_error(a2, -v7);
      xnet_free_xfer(*(a1 + 80) + 280, a2);
      return v7;
    }
  }

  v9 = *(a1 + 18552);
  v10 = *(a1 + 18550);
  memcpy((a2 + 200), (a1 + 18544), v10);
  v11 = *(a1 + 18912);
  if (v11)
  {
    *(a2 + 152) = *(v11 + 8);
  }

  v12 = v9 - v10;
  v13 = *(a1 + 120);
  *(a2 + 160) |= *(a1 + 128) & 0x1000000;
  *(a2 + 112) = v13;
  *(a2 + 120) = *(a1 + 184);
  if (*(a2 + 170))
  {
    if (*(a1 + 18545))
    {
      xnet_start_recv_cold_1();
    }

    if (!*(a1 + 18896))
    {
      xnet_start_recv_cold_3();
    }

    if (!(*(*(*(a1 + 80) + 496) + 72))(*(*(a1 + 80) + 496) + 8))
    {
      xnet_start_recv_cold_2();
    }

    if (v9 == v10 || *(a2 + 16))
    {
      v14 = *(a2 + 32);
      v15 = v14 - v12;
      if (v14 >= v12)
      {
        if (*(a2 + 16))
        {
          if (v15 >= *(*(a1 + 18896) + 16560))
          {
            v16 = xnet_alloc_xfer(*(a1 + 80) + 280);
            if (v16)
            {
              v17 = v16;
              if (*(a2 + 144))
              {
LABEL_20:
                *(v17 + 42) = 0x10000;
                v17[20] = 1026;
                v17[15] = *(a2 + 120);
                v17[14] = *(a2 + 112);
                v17[23] = *(a2 + 184);
                v19 = *(a2 + 144);
                v17[18] = v19;
                ++*v19;
                v20 = *(a2 + 24) + v12;
                v17[1] = v20;
                v17[2] = 1;
                v17[3] = v20;
                v17[4] = v15;
                v21 = *(a1 + 18896);
                v22 = *(v21 + 88);
                if (!v22)
                {
                  *(v21 + 96) = v17;
                }

                *v17 = v22;
                *(v21 + 88) = v17;
                goto LABEL_25;
              }

              v18 = malloc_type_calloc(1uLL, 8uLL, 0x100004000313F17uLL);
              *(a2 + 144) = v18;
              if (v18)
              {
                *v18 = 1;
                goto LABEL_20;
              }

              goto LABEL_24;
            }
          }
        }
      }
    }

    if (!*(a2 + 144))
    {
LABEL_24:
      *(a2 + 160) |= 0x10000uLL;
    }
  }

LABEL_25:
  *(a1 + 18688) = a2;
  *(a1 + 18696) = xnet_recv_msg_data;
  if (*(a1 + 18545) != 5 || (*(a2 + 169) & 1) != 0)
  {
    ofi_truncate_iov(a2 + 24, (a2 + 16), v12);

    return xnet_recv_msg_data(a1);
  }

  else
  {
    v23 = xnet_rts_matched(*(*(a1 + 18896) + 16568), a1, a2);
    xnet_reset_rx(a1);
    return v23;
  }
}

uint64_t xnet_update_pollflag(uint64_t a1, int a2, int a3)
{
  v6 = *(a1 + 80);
  if (!(*(*(v6 + 496) + 72))(*(v6 + 496) + 8))
  {
    xnet_update_pollflag_cold_4();
  }

  v7 = *(a1 + 18952);
  v8 = v7 & a2;
  if (!a3)
  {
    if (v8)
    {
      v9 = v7 & ~a2;
      *(a1 + 18952) = v9;
      if (!xnet_io_uring)
      {
LABEL_16:
        v10 = (*(v6 + 848))(v6 + 824, *(a1 + 424), v9, a1);
        if (*(v6 + 4984) == 1)
        {
          v12 = 0;
          pthread_mutex_lock((v6 + 552));
          if (!*(v6 + 624))
          {
            if (send(*(v6 + 620), &v12, 1uLL, 0) != 1)
            {
              sock_conn_stop_listener_thread_cold_1();
            }

            ++*(v6 + 624);
          }

          pthread_mutex_unlock((v6 + 552));
        }

        return v10;
      }
    }

    return 0;
  }

  if (v8)
  {
    return 0;
  }

  v9 = v7 | a2;
  *(a1 + 18952) = v9;
  if (!xnet_io_uring)
  {
    goto LABEL_16;
  }

  if ((v9 & 4) != 0)
  {
    if (*(a1 + 448) != 1)
    {
      return 4294967218;
    }

    v9 &= ~4u;
    *(a1 + 18952) = v9;
  }

  if ((v9 & 1) != 0 && *(a1 + 464) == 1)
  {
    *(a1 + 18952) = v9 & 0xFFFE;
    if ((v9 & 4) != 0)
    {
      xnet_update_pollflag_cold_1();
    }

    return 0;
  }

  if (!(*(*(v6 + 496) + 72))(*(v6 + 496) + 8))
  {
    xnet_uring_pollin_add_cold_1();
  }

  if (*(a1 + 480))
  {
    return 0;
  }

  else
  {
    return 4294967218;
  }
}

uint64_t xnet_recv_msg_data(void *a1)
{
  v9 = 0;
  while (1)
  {
    if (!(*(*(a1[10] + 496) + 72))(*(a1[10] + 496) + 8))
    {
      xnet_recv_msg_data_cold_2();
    }

    if (!a1[2335])
    {
      return 0;
    }

    v2 = a1[2336];
    v3 = (v2 + 16);
    result = ofi_bsock_recvv((a1 + 53), (v2 + 24), *(v2 + 16), &v9);
    if ((result & 0x80000000) != 0)
    {
      break;
    }

    v5 = v9;
    v6 = a1[2335] - v9;
    a1[2335] = v6;
    if (!v6)
    {
      return 0;
    }

    ofi_consume_iov((v2 + 24), v3, v5);
    if (*v3 && *(v2 + 32))
    {
      return 4294967261;
    }

    result = xnet_handle_truncate(a1);
    if (result)
    {
      return result;
    }
  }

  if (result == -513)
  {
    v7 = v9;
    v8 = a1[2335] - v9;
    a1[2335] = v8;
    if (!v8)
    {
      xnet_recv_msg_data_cold_1();
    }

    ofi_consume_iov((v2 + 24), v3, v7);
    return 4294966783;
  }

  return result;
}

uint64_t xnet_progress_rx(uint64_t a1)
{
  if (!(*(*(*(a1 + 80) + 496) + 72))(*(*(a1 + 80) + 496) + 8))
  {
    xnet_progress_rx_cold_6();
  }

  do
  {
    if (*(a1 + 18904) != 4)
    {
      xnet_progress_rx_cold_1();
    }

    if (*(a1 + 18672) >= *(a1 + 18664))
    {
      result = (*(a1 + 18696))(a1);
    }

    else
    {
      if (!(*(*(*(a1 + 80) + 496) + 72))(*(*(a1 + 80) + 496) + 8))
      {
        xnet_progress_rx_cold_5();
      }

      v2 = *(a1 + 18672);
      v3 = *(a1 + 18664);
      if (v2 >= v3)
      {
        xnet_progress_rx_cold_2();
      }

      while (1)
      {
        v24 = v3 - v2;
        result = ofi_bsock_recv(a1 + 424, (a1 + 18544 + v2), &v24);
        if ((result & 0x80000000) != 0)
        {
          v7 = result;
          if (result == -513)
          {
            *(a1 + 18672) += v24;
          }

          goto LABEL_28;
        }

        v5 = *(a1 + 18672) + v24;
        *(a1 + 18672) = v5;
        v6 = *(a1 + 18664);
        if (v5 != 16)
        {
          break;
        }

        if (v6 != 16)
        {
          xnet_progress_rx_cold_3();
        }

        v3 = *(a1 + 18550);
        if (v3 >= 0x79)
        {
          result = fi_log_enabled(&xnet_prov, 0, 4);
          if (result)
          {
            v11 = *__error();
            fi_log(&xnet_prov, 0, 4, "xnet_progress_hdr", 1019, "Payload offset is too large\n");
            goto LABEL_26;
          }

          goto LABEL_27;
        }

        *(a1 + 18664) = v3;
        v2 = 16;
        if (v3 <= 0x10)
        {
          goto LABEL_18;
        }
      }

      if (v5 < v6)
      {
        v7 = -35;
        goto LABEL_28;
      }

LABEL_18:
      (*(a1 + 18944))(a1, a1 + 18544);
      v8 = *(a1 + 18551);
      v9 = *(a1 + 18729);
      *(a1 + 18729) = v9 + 1;
      if (v8 != v9)
      {
        result = fi_log_enabled(&xnet_prov, 0, 4);
        if (result)
        {
          v11 = *__error();
          fi_log(&xnet_prov, 0, 4, "xnet_progress_hdr", 1033, "Received invalid hdr sequence number\n");
LABEL_26:
          result = __error();
          *result = v11;
        }

LABEL_27:
        v7 = -5;
        goto LABEL_28;
      }

      v10 = *(a1 + 18545);
      if (v10 >= 8)
      {
        result = fi_log_enabled(&xnet_prov, 0, 4);
        if (result)
        {
          v11 = *__error();
          fi_log(&xnet_prov, 0, 4, "xnet_progress_hdr", 1040, "Received invalid opcode\n");
          goto LABEL_26;
        }

        goto LABEL_27;
      }

      *(a1 + 18680) = *(a1 + 18552) - *(a1 + 18550);
      v22 = xnet_start_op[v10];
      *(a1 + 18696) = v22;
      result = (v22)(a1);
    }

    v7 = result;
LABEL_28:
    if (v7 == -513 || v7 == -35)
    {
      break;
    }

    v12 = *(a1 + 18688);
    if (v12)
    {
      v13 = v7;
      if (v7)
      {
        goto LABEL_76;
      }

      v18 = *(v12 + 202);
      if ((v18 & 8) != 0)
      {
        if (!(*(*(*(a1 + 80) + 496) + 72))(*(*(a1 + 80) + 496) + 8))
        {
          xnet_progress_rx_cold_4();
        }

        v18 = *(v12 + 202);
        if (ofi_pmem_commit)
        {
          v19 = 16;
          if (v18)
          {
            v19 = 24;
          }

          if (*(v12 + 205))
          {
            v20 = 0;
            v21 = (v12 + v19 + 208);
            do
            {
              ofi_pmem_commit(*(v21 - 1), *v21);
              ++v20;
              v21 += 3;
            }

            while (v20 < *(v12 + 205));
            v18 = *(v12 + 202);
          }
        }
      }

      if ((v18 & 0xC) != 0 && (*(v12 + 201) != 5 || (*(v12 + 169) & 1) == 0))
      {
        v13 = xnet_queue_ack(a1, 0, 2);
        if (v13)
        {
LABEL_76:
          if (fi_log_enabled(&xnet_prov, 0, 4))
          {
            v14 = v13;
            v15 = *__error();
            v16 = -v13;
            v17 = fi_strerror(v16);
            fi_log(&xnet_prov, 0, 4, "xnet_complete_rx", 1117, "msg recv failed ret = %zd (%s)\n", v14, v17);
            *__error() = v15;
          }

          else
          {
            v16 = -v13;
          }

          xnet_cntr_incerr(v12);
          xnet_report_error(v12, v16);
          xnet_free_xfer(*(a1 + 80) + 280, v12);
          xnet_reset_rx(a1);
LABEL_53:
          result = xnet_ep_disable(a1, 0, 0, 0);
          if (v7)
          {
            break;
          }

          continue;
        }
      }

      if (*(v12 + 169))
      {
        *(v12 + 104) = 0;
      }

      else
      {
        xnet_report_success(v12);
        xnet_free_xfer(*(a1 + 80) + 280, v12);
      }

      result = xnet_reset_rx(a1);
    }

    else if (v7)
    {
      goto LABEL_53;
    }
  }

  while (*(a1 + 9516) != *(a1 + 9512));
  if (xnet_io_uring)
  {
    if (v7 != -513)
    {
      if (!v7 || v7 == -35)
      {
        v23 = 1;
        goto LABEL_65;
      }

      return xnet_ep_disable(a1, 0, 0, 0);
    }

    v23 = 0;
LABEL_65:
    result = xnet_update_pollflag(a1, 1, v23);
    if (result)
    {
      return xnet_ep_disable(a1, 0, 0, 0);
    }
  }

  return result;
}

void xnet_progress_async(uint64_t a1)
{
  if (!(*(*(*(a1 + 80) + 496) + 72))(*(*(a1 + 80) + 496) + 8))
  {
    xnet_progress_async_cold_1();
  }

  if (ofi_bsock_async_done())
  {

    xnet_ep_disable(a1, 0, 0, 0);
  }

  else
  {
    v2 = *(a1 + 18816);
    if (v2)
    {
      v3 = (a1 + 18816);
      do
      {
        if (*(v2 + 176) - *(a1 + 18532) > 0)
        {
          break;
        }

        if (v2 == *(a1 + 18824))
        {
          *v3 = 0;
          *(a1 + 18824) = 0;
        }

        else
        {
          *v3 = *v2;
        }

        xnet_report_success(v2);
        xnet_free_xfer(*(a1 + 80) + 280, v2);
        v2 = *(a1 + 18816);
      }

      while (v2);
    }
  }
}

uint64_t xnet_uring_cancel(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!(*(*(a1 + 216) + 72))(*(a1 + 216) + 8, a2))
  {
    xnet_uring_cancel_cold_1();
  }

  if (!xnet_io_uring)
  {
    return 0;
  }

  if (*(a3 + 8))
  {
    return 4294967218;
  }

  return 0;
}

uint64_t xnet_tx_queue_insert(uint64_t a1, uint64_t a2)
{
  result = (*(*(*(a1 + 80) + 496) + 72))(*(*(a1 + 80) + 496) + 8);
  if (!result)
  {
    xnet_tx_queue_insert_cold_1();
  }

  if (*(a1 + 18720))
  {
    if ((*(a2 + 168) & 8) != 0)
    {
      if (*(a1 + 18784))
      {
        v7 = *(a1 + 18792);
      }

      else
      {
        v7 = (a1 + 18784);
      }

      *v7 = a2;
      *a2 = 0;
      *(a1 + 18792) = a2;
    }

    else
    {
      if (*(a1 + 18768))
      {
        v5 = *(a1 + 18776);
      }

      else
      {
        v5 = (a1 + 18768);
      }

      *v5 = a2;
      *a2 = 0;
      *(a1 + 18776) = a2;
    }
  }

  else
  {
    *(a1 + 18720) = a2;
    v6 = *(a1 + 18728);
    *(a1 + 18712) = *(a2 + 208);
    *(a1 + 18728) = v6 + 1;
    *(a2 + 207) = v6;
    (*(a1 + 18944))(a1, a2 + 200);

    return xnet_progress_tx(a1);
  }

  return result;
}

uint64_t xnet_progress_tx(uint64_t a1)
{
  if (!(*(*(*(a1 + 80) + 496) + 72))(*(*(a1 + 80) + 496) + 8))
  {
    xnet_progress_tx_cold_9();
  }

  if (*(a1 + 18720))
  {
    v2 = (a1 + 18784);
    v3 = (a1 + 18768);
    while (1)
    {
      if (!(*(*(*(a1 + 80) + 496) + 72))(*(*(a1 + 80) + 496) + 8))
      {
        xnet_progress_tx_cold_8();
      }

      v4 = *(a1 + 18720);
      if (!v4)
      {
        xnet_progress_tx_cold_7();
      }

      v29 = 0;
      result = ofi_bsock_sendv(a1 + 424, (v4 + 24), *(v4 + 16), &v29);
      v6 = result;
      if ((result & 0x80000000) != 0 && result != -512)
      {
        break;
      }

      if (result == -512)
      {
        *(v4 + 176) = *(a1 + 18528);
        *(v4 + 168) |= 0x20u;
      }

      v11 = v29;
      v12 = *(a1 + 18712) - v29;
      *(a1 + 18712) = v12;
      if (v12)
      {
        ofi_consume_iov((v4 + 24), (v4 + 16), v11);
LABEL_55:
        v27 = a1;
        v28 = 1;
        goto LABEL_59;
      }

      v13 = *(a1 + 18720);
      v14 = *(v13 + 168);
      if ((v14 & 0x800) != 0)
      {
        if (!(*(*(*(a1 + 80) + 496) + 72))(*(*(a1 + 80) + 496) + 8))
        {
          xnet_progress_tx_cold_3();
        }

        if (*(v13 + 201) != 5)
        {
          xnet_progress_tx_cold_1();
        }

        v16 = 32;
        if ((*(v13 + 202) & 1) == 0)
        {
          v16 = 24;
        }

        v17 = *(v13 + v16 + 200);
        *(v13 + 201) = 7;
        *(v13 + 206) = 16;
        *(v13 + 32) = 16;
        v18 = *(v13 + 144);
        *(v13 + 16) = v18;
        v19 = v17 + 16;
        *(v13 + 208) = v19;
        v20 = 0;
        if (v18)
        {
          v21 = (v13 + 32);
          do
          {
            v22 = *v21;
            v21 += 2;
            v20 += v22;
            --v18;
          }

          while (v18);
        }

        if (v19 != v20)
        {
          xnet_progress_tx_cold_2();
        }
      }

      else if ((v14 & 4) != 0)
      {
        v23 = (a1 + 18800);
        if (*(a1 + 18800))
        {
          v23 = *(a1 + 18808);
        }

        *v23 = v13;
        *v13 = 0;
        *(a1 + 18808) = v13;
      }

      else
      {
        if ((v14 & 2) != 0)
        {
          v26 = *(v13 + 192);
          if (!v26)
          {
            xnet_progress_tx_cold_4();
          }

          *(v26 + 168) &= ~8u;
LABEL_53:
          v9 = *(a1 + 80) + 280;
          v10 = v13;
LABEL_13:
          xnet_free_xfer(v9, v10);
          goto LABEL_37;
        }

        if ((v14 & 0x20) == 0 || *(v13 + 176) - *(a1 + 18532) < 1)
        {
          xnet_report_success(*(a1 + 18720));
          goto LABEL_53;
        }

        v15 = (a1 + 18816);
        if (*(a1 + 18816))
        {
          v15 = *(a1 + 18824);
        }

        *v15 = v13;
        *v13 = 0;
        *(a1 + 18824) = v13;
      }

LABEL_37:
      v24 = *v2;
      if (*v2)
      {
        if (v24 == *(a1 + 18792))
        {
          *v2 = 0;
          *(a1 + 18792) = 0;
        }

        else
        {
          *v2 = *v24;
        }

        *(a1 + 18720) = v24;
        if ((*(v24 + 168) & 8) == 0)
        {
          xnet_progress_tx_cold_5();
        }
      }

      else
      {
        v24 = *v3;
        if (!*v3)
        {
          *(a1 + 18720) = 0;
          goto LABEL_57;
        }

        if (v24 == *(a1 + 18776))
        {
          *v3 = 0;
          *(a1 + 18776) = 0;
        }

        else
        {
          *v3 = *v24;
        }

        *(a1 + 18720) = v24;
        if ((*(v24 + 168) & 8) != 0)
        {
          xnet_progress_tx_cold_6();
        }
      }

      *(a1 + 18712) = *(v24 + 208);
      v25 = *(a1 + 18728);
      *(a1 + 18728) = v25 + 1;
      *(v24 + 207) = v25;
      (*(a1 + 18944))(a1, *(a1 + 18720) + 200);
      if (!*(a1 + 18720))
      {
        goto LABEL_57;
      }
    }

    if (result == -513)
    {
      return result;
    }

    if (result == -35)
    {
      goto LABEL_55;
    }

    v7 = *(a1 + 18720);
    if (fi_log_enabled(&xnet_prov, 0, 2))
    {
      v8 = *__error();
      fi_log(&xnet_prov, 0, 2, "xnet_complete_tx", 524, "msg send failed\n");
      *__error() = v8;
    }

    xnet_cntr_incerr(v7);
    xnet_report_error(v7, -v6);
    v9 = *(a1 + 80) + 280;
    v10 = v7;
    goto LABEL_13;
  }

LABEL_57:
  result = ofi_bsock_flush(a1 + 424);
  if (result != -513)
  {
    v28 = *(a1 + 500) != *(a1 + 496);
    v27 = a1;
LABEL_59:
    result = xnet_update_pollflag(v27, 4, v28);
    if (result)
    {
      return xnet_ep_disable(a1, 0, 0, 0);
    }
  }

  return result;
}

uint64_t xnet_progress_unexp(uint64_t a1, void *a2)
{
  result = (*(*(a1 + 216) + 72))(*(a1 + 216) + 8);
  if (!result)
  {
    xnet_progress_unexp_cold_4();
  }

  v4 = *a2;
  if (*a2 != a2)
  {
    do
    {
      v5 = *v4;
      if (!(*(*(*(v4 - 2332) + 496) + 72))(*(*(v4 - 2332) + 496) + 8))
      {
        xnet_recv_cold_2();
      }

      if (!*(v4 - 5) || *(v4 - 6))
      {
        xnet_progress_unexp_cold_2();
      }

      if (*(v4 + 42) != 4)
      {
        xnet_progress_unexp_cold_1();
      }

      result = xnet_progress_rx((v4 - 2342));
      v4 = v5;
    }

    while (v5 != a2);
  }

  return result;
}

void xnet_run_progress(uint64_t a1, int a2)
{
  if (!(*(*(a1 + 216) + 72))(*(a1 + 216) + 8))
  {
    xnet_run_progress_cold_8();
  }

  if (xnet_io_uring)
  {
    xnet_handle_event_list(a1);
    if (!xnet_io_uring)
    {
      xnet_run_progress_cold_1();
    }
  }

  else
  {
    v4 = (*(a1 + 584))(a1 + 544, a1 + 608, 128, 0);
    if (!(*(*(a1 + 216) + 72))(*(a1 + 216) + 8))
    {
      xnet_run_progress_cold_7();
    }

    if (v4 >= 1)
    {
      v5 = (a1 + 616);
      v6 = v4;
      do
      {
        v7 = *(v5 + 2);
        if (!v7)
        {
          xnet_run_progress_cold_6();
        }

        v8 = v5[1];
        v9 = *v7;
        if (*v7 <= 17)
        {
          if (v9 == 3)
          {
            v10 = *v5;
            if (!(*(*(*(v7 + 80) + 496) + 72))(*(*(v7 + 80) + 496) + 8))
            {
              xnet_run_progress_cold_4();
            }

            v11 = *(v7 + 18904);
            switch(v11)
            {
              case 1:
                xnet_connect_done(v7);
                break;
              case 3:
                xnet_req_done(v7);
                break;
              case 4:
                if ((v8 & 0x4000) != 0)
                {
                  xnet_progress_async(v7);
                }

                if (v10 == 65534)
                {
                  if (*(v7 + 18904) == 4)
                  {
                    xnet_progress_tx(v7);
                  }
                }

                else if (v10 == 0xFFFF && *(v7 + 18904) == 4)
                {
                  xnet_progress_rx(v7);
                }

                break;
            }
          }

          else
          {
            if (v9 != 9)
            {
              goto LABEL_44;
            }

            xnet_accept_sock(*(v5 + 2));
          }
        }

        else
        {
          switch(v9)
          {
            case 18:
              v12 = *(*(*(v7 + 24) + 64) + 216);
              if (!(*(v12 + 72))(v12 + 8))
              {
                xnet_run_progress_cold_3();
              }

              xnet_halt_sock(*(*(v7 + 24) + 64), *(v7 + 32));
              xnet_handle_conn(v7, (v8 >> 14) & 1);
              break;
            case 130744322:
              if (!xnet_io_uring)
              {
                xnet_run_progress_cold_2();
              }

              break;
            case 130744321:
              if (a2)
              {
                fd_signal_reset(a1 + 272);
              }

              break;
            default:
LABEL_44:
              xnet_run_progress_cold_5();
          }
        }

        v5 += 16;
        --v6;
      }

      while (v6);
    }

    xnet_handle_event_list(a1);
  }
}

uint64_t xnet_progress(uint64_t a1, int a2)
{
  (*(*(a1 + 216) + 80))(*(a1 + 216) + 8);
  xnet_run_progress(a1, a2);
  v4 = *(a1 + 216);
  v5 = *(v4 + 88);

  return v5(v4 + 8);
}

uint64_t xnet_progress_all(uint64_t a1)
{
  pthread_mutex_lock((a1 + 4896));
  for (i = *(a1 + 4880); i != (a1 + 4880); i = *i)
  {
    v3 = i[2];
    (*(*(v3 + 496) + 80))(*(v3 + 496) + 8);
    xnet_run_progress(v3 + 280, 0);
    (*(*(v3 + 496) + 88))(*(v3 + 496) + 8);
  }

  pthread_mutex_unlock((a1 + 4896));
  (*(*(a1 + 376) + 80))(*(a1 + 376) + 8);
  xnet_run_progress(a1 + 160, 0);
  v4 = *(a1 + 376);
  v5 = *(v4 + 88);

  return v5(v4 + 8);
}

uint64_t xnet_trywait(uint64_t a1, uint64_t **a2, unsigned int a3)
{
  if (a3 >= 1)
  {
    v4 = a3;
    v5 = 1;
    while (1)
    {
      v6 = *a2;
      v7 = **a2;
      v8 = 4294967218;
      if (v7 > 14)
      {
        if (v7 != 15)
        {
          if (v7 != 16)
          {
            return v8;
          }

          v8 = (v6[10])(*a2);
          goto LABEL_21;
        }

        (*(*(v6[4] + 496) + 80))(*(v6[4] + 496) + 8);
        v11 = v6[5];
        if (v11)
        {
          fd_signal_reset(v11 + 168);
        }

        (*(*(v6[4] + 496) + 88))(*(v6[4] + 496) + 8);
      }

      else
      {
        if (v7 != 13)
        {
          if (v7 != 14)
          {
            return v8;
          }

          (*(*(v6[4] + 496) + 80))(*(v6[4] + 496) + 8);
          if (*(v6[38] + 24) == *(v6[38] + 16))
          {
            v9 = v6[5];
            if (v9)
            {
              fd_signal_reset(v9 + 168);
            }

            v8 = 0;
          }

          else
          {
            v8 = 4294967261;
          }

          (*(*(v6[4] + 496) + 88))(*(v6[4] + 496) + 8);
          goto LABEL_21;
        }

        pthread_mutex_lock((v6 + 6));
        v10 = v6[16];
        pthread_mutex_unlock((v6 + 6));
        if (v10)
        {
          v8 = 4294967261;
          goto LABEL_21;
        }

        v12 = v6[5];
        if (v12)
        {
          fd_signal_reset(v12 + 168);
        }
      }

      v8 = 0;
LABEL_21:
      if (v5 < v4)
      {
        ++a2;
        ++v5;
        if (!v8)
        {
          continue;
        }
      }

      return v8;
    }
  }

  return 0;
}

uint64_t xnet_monitor_sock(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (xnet_io_uring)
  {
    xnet_monitor_sock_cold_1();
  }

  if (!(*(*(a1 + 216) + 72))(*(a1 + 216) + 8))
  {
    xnet_monitor_sock_cold_2();
  }

  v8 = (*(a1 + 560))(a1 + 544, a2, a3, a4);
  if (v8 && fi_log_enabled(&xnet_prov, 0, 3))
  {
    v9 = *__error();
    fi_log(&xnet_prov, 0, 3, "xnet_monitor_sock", 1723, "Failed to add fd to progress\n");
    *__error() = v9;
  }

  return v8;
}

int *xnet_halt_sock(uint64_t a1, uint64_t a2)
{
  if (xnet_io_uring)
  {
    xnet_halt_sock_cold_1();
  }

  if (!(*(*(a1 + 216) + 72))(*(a1 + 216) + 8))
  {
    xnet_halt_sock_cold_2();
  }

  result = (*(a1 + 576))(a1 + 544, a2);
  if (result != -2 && result != 0)
  {
    result = fi_log_enabled(&xnet_prov, 0, 3);
    if (result)
    {
      v6 = *__error();
      fi_log(&xnet_prov, 0, 3, "xnet_halt_sock", 1738, "Failed to del fd from progress\n");
      result = __error();
      *result = v6;
    }
  }

  return result;
}

uint64_t xnet_start_progress(uint64_t a1)
{
  if (xnet_disable_autoprog)
  {
    return 0;
  }

  (*(*(a1 + 216) + 80))(*(a1 + 216) + 8);
  if (*(a1 + 4704))
  {
    v1 = 0;
  }

  else
  {
    *(a1 + 4704) = 1;
    v1 = pthread_create((a1 + 4712), 0, xnet_auto_progress, a1);
    if (v1)
    {
      if (fi_log_enabled(&xnet_prov, 0, 2))
      {
        v3 = *__error();
        fi_log(&xnet_prov, 0, 2, "xnet_start_progress", 1760, "unable to start progress thread\n");
        *__error() = v3;
      }

      *(a1 + 4704) = 0;
      v1 = -v1;
    }
  }

  (*(*(a1 + 216) + 88))(*(a1 + 216) + 8);
  return v1;
}

uint64_t xnet_auto_progress(uint64_t a1)
{
  if (fi_log_enabled(&xnet_prov, 2, 2))
  {
    v2 = *__error();
    fi_log(&xnet_prov, 2, 2, "xnet_auto_progress", 1698, "progress thread starting\n");
    *__error() = v2;
  }

  (*(*(a1 + 216) + 80))(*(a1 + 216) + 8);
  if (*(a1 + 4704) == 1)
  {
    do
    {
      (*(*(a1 + 216) + 88))(*(a1 + 216) + 8);
      memset(v6, 0, sizeof(v6));
      v3 = (*(a1 + 584))(a1 + 544, v6, 1, 0xFFFFFFFFLL);
      (*(*(a1 + 216) + 80))(*(a1 + 216) + 8);
      if ((v3 & 0x80000000) == 0)
      {
        xnet_run_progress(a1, 1);
      }
    }

    while ((*(a1 + 4704) & 1) != 0);
  }

  (*(*(a1 + 216) + 88))(*(a1 + 216) + 8);
  if (fi_log_enabled(&xnet_prov, 2, 2))
  {
    v4 = *__error();
    fi_log(&xnet_prov, 2, 2, "xnet_auto_progress", 1709, "progress thread exiting\n");
    *__error() = v4;
  }

  return 0;
}

uint64_t xnet_stop_progress(uint64_t a1)
{
  (*(*(a1 + 216) + 80))(*(a1 + 216) + 8);
  if (*(a1 + 4704))
  {
    *(a1 + 4704) = 0;
    v5 = 0;
    pthread_mutex_lock((a1 + 272));
    if (!*(a1 + 344))
    {
      if (send(*(a1 + 340), &v5, 1uLL, 0) != 1)
      {
        sock_conn_stop_listener_thread_cold_1();
      }

      ++*(a1 + 344);
    }

    pthread_mutex_unlock((a1 + 272));
    (*(*(a1 + 216) + 88))(*(a1 + 216) + 8);
    return pthread_join(*(a1 + 4712), 0);
  }

  else
  {
    v3 = *(a1 + 216);
    v4 = *(v3 + 88);

    return v4(v3 + 8);
  }
}

uint64_t xnet_init_progress(uint64_t a1, uint64_t a2)
{
  *a1 = 130744321;
  *(a1 + 4704) = 0;
  *(a1 + 224) = a1 + 224;
  *(a1 + 232) = a1 + 224;
  *(a1 + 240) = a1 + 240;
  *(a1 + 248) = a1 + 240;
  *(a1 + 256) = a1 + 256;
  *(a1 + 264) = a1 + 256;
  v4 = (a1 + 336);
  *(a1 + 352) = 0;
  *(a1 + 360) = 0;
  if (socketpair(1, 1, 0, (a1 + 336)) < 0)
  {
    v7 = *__error();
    if (v7)
    {
      return -v7;
    }

    goto LABEL_8;
  }

  *(a1 + 344) = 0;
  attr = pthread_mutex_init((a1 + 272), 0);
  if (!attr)
  {
    v6 = fi_fd_nonblock(*v4);
    if (v6)
    {
      attr = v6;
      pthread_mutex_destroy((a1 + 272));
      goto LABEL_5;
    }

LABEL_8:
    if (a2 && (v8 = *(a2 + 88)) != 0 && *v8 == 3)
    {
      v9 = 0;
      v10 = 3;
      v11 = 120;
    }

    else
    {
      v10 = 0;
      v9 = 3;
      v11 = 24;
    }

    *(a1 + 216) = a1 + v11;
    attr = ofi_genlock_init(a1 + 24, v10);
    if (!attr)
    {
      v12 = ofi_genlock_init(a1 + 120, v9);
      if (v12)
      {
        attr = v12;
      }

      else
      {
        attr = ofi_dynpoll_create(a1 + 544, 1, 0);
        if (!attr)
        {
          v27 = 0;
          v22 = xnet_buf_size + 320;
          v23 = xmmword_29ED12D40;
          v24 = 1024;
          v25 = 0u;
          v26 = 0u;
          attr = ofi_bufpool_create_attr(&v22, (a1 + 368));
          if (!attr)
          {
            attr = (*(a1 + 560))(a1 + 544, *(a1 + 336), 1, a1);
            if (!attr)
            {
              if (!xnet_io_uring)
              {
                attr = 0;
                v19 = *&off_2A2557E08;
                *(a1 + 496) = xmmword_2A2557DF8;
                *(a1 + 512) = v19;
                *(a1 + 528) = xmmword_2A2557E18;
                v20 = unk_2A2557DE8;
                *(a1 + 464) = xnet_sockapi_socket;
                *(a1 + 480) = v20;
                return attr;
              }

              v16 = malloc_type_calloc(0x80uLL, 8uLL, 0x2004093837F09uLL);
              *(a1 + 456) = v16;
              if (v16)
              {
                v17 = *&off_2A2557DB8;
                *(a1 + 496) = xmmword_2A2557DA8;
                *(a1 + 512) = v17;
                *(a1 + 528) = xmmword_2A2557DC8;
                v18 = unk_2A2557D98;
                *(a1 + 464) = xnet_sockapi_uring;
                *(a1 + 480) = v18;
                (*(a1 + 576))(a1 + 544, *(a1 + 336));
                v16 = *(a1 + 456);
                attr = 4294967218;
              }

              else
              {
                attr = 0;
              }

              free(v16);
            }

            ofi_bufpool_destroy(*(a1 + 368));
          }

          ofi_dynpoll_close(a1 + 544, v15);
        }

        ofi_genlock_destroy((a1 + 120), v14);
      }

      ofi_genlock_destroy((a1 + 24), v13);
    }

    close(*(a1 + 336));
    close(*(a1 + 340));
    pthread_mutex_destroy((a1 + 272));
    return attr;
  }

LABEL_5:
  close(*(a1 + 336));
  close(*(a1 + 340));
  return attr;
}

int *xnet_destroy_uring(uint64_t a1)
{
  if (!xnet_io_uring)
  {
    xnet_destroy_uring_cold_1();
  }

  (*(a1 + 32))(a1, 0xFFFFFFFFLL);
  result = fi_log_enabled(&xnet_prov, 0, 3);
  if (result)
  {
    v2 = *__error();
    fi_log(&xnet_prov, 0, 3, "xnet_destroy_uring", 1849, "Failed to destroy io_uring\n");
    result = __error();
    *result = v2;
  }

  return result;
}

uint64_t xnet_close_progress(uint64_t a1)
{
  if (*(a1 + 224) != a1 + 224)
  {
    xnet_close_progress_cold_1();
  }

  if (*(a1 + 240) != a1 + 240)
  {
    xnet_close_progress_cold_2();
  }

  if (*(a1 + 256) != a1 + 256)
  {
    xnet_close_progress_cold_3();
  }

  if (*(a1 + 352))
  {
    xnet_close_progress_cold_4();
  }

  xnet_stop_progress(a1);
  if (xnet_io_uring)
  {
    free(*(a1 + 456));
    xnet_destroy_uring(a1 + 544);
    xnet_destroy_uring(a1 + 544);
  }

  ofi_dynpoll_close(a1 + 544, v2);
  ofi_bufpool_destroy(*(a1 + 368));
  ofi_genlock_destroy((a1 + 24), v3);
  ofi_genlock_destroy((a1 + 120), v4);
  close(*(a1 + 336));
  close(*(a1 + 340));

  return pthread_mutex_destroy((a1 + 272));
}

uint64_t xnet_queue_ack(uint64_t a1, int a2, char a3)
{
  if (!(*(*(*(a1 + 80) + 496) + 72))(*(*(a1 + 80) + 496) + 8))
  {
    xnet_queue_ack_cold_2();
  }

  if (a2 && a2 != 6)
  {
    xnet_queue_ack_cold_1();
  }

  v6 = xnet_alloc_xfer(*(a1 + 80) + 280);
  if (!v6)
  {
    return 4294967284;
  }

  *(v6 + 200) = 3;
  v6[3] = (v6 + 25);
  v6[4] = 16;
  v6[2] = 1;
  *(v6 + 204) = a3;
  *(v6 + 201) = a2;
  v6[26] = 16;
  *(v6 + 206) = 16;
  *(v6 + 42) = 8;
  v6[23] = 0;
  xnet_tx_queue_insert(a1, v6);
  return 0;
}

uint64_t xnet_handle_msg(uint64_t a1)
{
  if (!(*(*(*(a1 + 80) + 496) + 72))(*(*(a1 + 80) + 496) + 8))
  {
    xnet_handle_msg_cold_4();
  }

  v2 = *(a1 + 18548);
  v3 = (*(*(*(a1 + 80) + 496) + 72))(*(*(a1 + 80) + 496) + 8);
  if (v2 == 2)
  {
    if (!v3)
    {
      xnet_handle_msg_cold_3();
    }

    if (*(a1 + 18552) != 16)
    {
      return 4294967291;
    }

    v4 = *(a1 + 18800);
    if (!v4)
    {
      xnet_handle_msg_cold_2();
    }

    v5 = (a1 + 18800);
    if (v4 == *(a1 + 18808))
    {
      *v5 = 0;
      *(a1 + 18808) = 0;
    }

    else
    {
      *v5 = *v4;
    }

    xnet_report_success(v4);
    xnet_free_xfer(*(a1 + 80) + 280, v4);
    xnet_reset_rx(a1);
    return 0;
  }

  if (!v3)
  {
    xnet_handle_msg_cold_1();
  }

  v6 = *(a1 + 18896);
  if (v6)
  {
    v8 = (v6 + 88);
    v7 = *(v6 + 88);
    if (v7)
    {
      if (v7 == *(v6 + 96))
      {
        *v8 = 0;
        *(v6 + 96) = 0;
      }

      else
      {
        *v8 = *v7;
      }

LABEL_27:

      return xnet_start_recv(a1, v7);
    }
  }

  else
  {
    v7 = *(a1 + 18752);
    if (v7)
    {
      v10 = (a1 + 18752);
      if (v7 == *(a1 + 18760))
      {
        *v10 = 0;
        *(a1 + 18760) = 0;
      }

      else
      {
        *v10 = *v7;
      }

      ++*(a1 + 18888);
      goto LABEL_27;
    }
  }

  v11 = a1 + 18736;
  if (*(a1 + 18736) != a1 + 18736)
  {
    return 4294967261;
  }

  v12 = *(*(a1 + 80) + 512);
  v13 = *v12;
  *(a1 + 18736) = *v12;
  *(a1 + 18744) = v12;
  *(v13 + 8) = v11;
  *v12 = v11;
  result = xnet_update_pollflag(a1, 1, 0);
  if (!result)
  {
    return 4294967261;
  }

  return result;
}

uint64_t xnet_handle_tag(uint64_t a1)
{
  if (!(*(*(*(a1 + 80) + 496) + 72))(*(*(a1 + 80) + 496) + 8))
  {
    xnet_handle_tag_cold_6();
  }

  v2 = *(a1 + 18896);
  if (!v2)
  {
    xnet_handle_tag_cold_5();
  }

  v3 = 18568;
  if ((*(a1 + 18546) & 1) == 0)
  {
    v3 = 18560;
  }

  v4 = *(a1 + v3);
  v5 = (*(v2 + 16536))(v2, a1, v4);
  if (v5)
  {
    v6 = v5;
    v7 = a1;
LABEL_7:

    return xnet_start_recv(v7, v6);
  }

  if (xnet_save_and_cont(a1))
  {
    v9 = *(a1 + 80);
    if (!(*(*(v9 + 496) + 72))(*(v9 + 496) + 8))
    {
      xnet_handle_tag_cold_4();
    }

    if (!xnet_save_and_cont(a1))
    {
      xnet_handle_tag_cold_1();
    }

    if (*(a1 + 18672) != *(a1 + 18664) || *(a1 + 18704))
    {
      xnet_handle_tag_cold_2();
    }

    v10 = xnet_alloc_xfer(*(*(a1 + 18896) + 80) + 280);
    if (v10)
    {
      v11 = v10;
      v10[13] = a1;
      v10[17] = v4;
      v10[18] = 0;
      *(v10 + 42) = 256;
      v12 = *(a1 + 18680);
      v13 = xnet_buf_size;
      if (v12 <= xnet_buf_size)
      {
        v10[3] = (v10 + 40);
        v10[4] = v13;
        v10[1] = 0;
        v10[2] = 1;
        goto LABEL_20;
      }

      v14 = malloc_type_malloc(*(a1 + 18680), 0x3F84B98EuLL);
      *(v11 + 8) = v14;
      if (v14)
      {
        *(v11 + 24) = v14;
        *(v11 + 32) = v12;
        *(v11 + 16) = 1;
        *(v11 + 168) |= 0x80u;
LABEL_20:
        v15 = *(a1 + 18880);
        v16 = (v15 + 16);
        if (*(v15 + 16))
        {
          v16 = *(v15 + 24);
        }

        *v16 = v11;
        *v11 = 0;
        *(v15 + 24) = v11;
        v17 = *(a1 + 18880);
        v18 = *(v17 + 32);
        *(v17 + 32) = v18 + 1;
        if (!v18)
        {
          if (*v17 != v17)
          {
            xnet_handle_tag_cold_3();
          }

          v19 = *(v9 + 544);
          v20 = *v19;
          *v17 = *v19;
          *(v17 + 8) = v19;
          *(v20 + 8) = v17;
          *v19 = v17;
        }

        v7 = a1;
        v6 = v11;
        goto LABEL_7;
      }

      xnet_free_xfer(v9 + 280, v11);
    }
  }

  v21 = a1 + 18736;
  if (*(a1 + 18736) != a1 + 18736)
  {
    return 4294967261;
  }

  v22 = *(*(a1 + 80) + 528);
  v23 = *v22;
  *(a1 + 18736) = *v22;
  *(a1 + 18744) = v22;
  *(v23 + 8) = v21;
  *v22 = v21;
  result = xnet_update_pollflag(a1, 1, 0);
  if (!result)
  {
    return 4294967261;
  }

  return result;
}

uint64_t xnet_handle_read_req(uint64_t a1)
{
  if (!(*(*(*(a1 + 80) + 496) + 72))(*(*(a1 + 80) + 496) + 8))
  {
    xnet_handle_read_req_cold_1();
  }

  v2 = xnet_alloc_xfer(*(a1 + 80) + 280);
  if (!v2)
  {
    return 4294967284;
  }

  v3 = v2;
  v4 = v2 + 25;
  memcpy(v2 + 25, (a1 + 18544), *(a1 + 18550));
  *(v3 + 204) = 0;
  v5 = *(a1 + 18912);
  if (v5)
  {
    *(v3 + 152) = *(v5 + 8);
  }

  *(v3 + 24) = v4;
  *(v3 + 32) = 16;
  v6 = *(v3 + 205);
  *(v3 + 16) = v6 + 1;
  *(v3 + 208) = 16;
  if (v6)
  {
    v7 = 0;
    v8 = v3 + 216;
    v9 = (v3 + 48);
    while (1)
    {
      v10 = ofi_mr_verify((*(a1 + 80) + 232), *(v8 + 8), v8, *(v8 + 16), 4096);
      if (v10)
      {
        break;
      }

      ++v7;
      v11 = *v8;
      v12 = *(v8 + 8);
      v8 += 24;
      *(v9 - 1) = v11;
      *v9 = v12;
      *(v3 + 208) += v12;
      v9 += 2;
      if (v7 >= *(v3 + 205))
      {
        goto LABEL_9;
      }
    }

    v13 = v10;
    if (fi_log_enabled(&xnet_prov, 0, 4))
    {
      v14 = *__error();
      fi_log(&xnet_prov, 0, 4, "xnet_handle_read_req", 918, "invalid rma iov received\n");
      *__error() = v14;
    }

    xnet_free_xfer(*(a1 + 80) + 280, v3);
  }

  else
  {
LABEL_9:
    *(v3 + 201) = 3;
    *(v3 + 206) = 16;
    *(v3 + 168) = 8;
    *(v3 + 184) = 0;
    xnet_tx_queue_insert(a1, v3);
    xnet_reset_rx(a1);
    return 0;
  }

  return v13;
}

uint64_t xnet_handle_read_rsp(uint64_t a1)
{
  if (!(*(*(*(a1 + 80) + 496) + 72))(*(*(a1 + 80) + 496) + 8))
  {
    xnet_handle_read_rsp_cold_1();
  }

  v2 = *(a1 + 18832);
  if (!v2)
  {
    return 4294967274;
  }

  v3 = (a1 + 18832);
  if (v2 == *(a1 + 18840))
  {
    *v3 = 0;
    *(a1 + 18840) = 0;
  }

  else
  {
    *v3 = *v2;
  }

  memcpy((v2 + 200), (a1 + 18544), *(a1 + 18550));
  *(v2 + 204) = 0;
  *(a1 + 18688) = v2;
  *(a1 + 18696) = xnet_recv_msg_data;

  return xnet_recv_msg_data(a1);
}

uint64_t xnet_handle_write(uint64_t a1)
{
  if (!(*(*(*(a1 + 80) + 496) + 72))(*(*(a1 + 80) + 496) + 8))
  {
    xnet_handle_write_cold_1();
  }

  v2 = xnet_alloc_xfer(*(a1 + 80) + 280);
  if (!v2)
  {
    return 4294967284;
  }

  v3 = v2;
  if (*(a1 + 18546))
  {
    v2[20] = 16916480;
    v4 = 224;
  }

  else
  {
    *(v2 + 42) = 8;
    v4 = 216;
  }

  v2[15] = *(a1 + 216);
  v2[14] = *(a1 + 120);
  memcpy(v2 + 25, (a1 + 18544), *(a1 + 18550));
  *(v3 + 204) = 0;
  v6 = *(a1 + 18912);
  if (v6)
  {
    *(v3 + 152) = *(v6 + 8);
  }

  v7 = *(v3 + 205);
  *(v3 + 16) = v7;
  if (v7)
  {
    v8 = 0;
    v9 = v3 + v4;
    v10 = (v3 + 32);
    while (1)
    {
      v11 = ofi_mr_verify((*(a1 + 80) + 232), *(v9 + 8), v9, *(v9 + 16), 0x2000);
      if (v11)
      {
        break;
      }

      v12 = *v9;
      v13 = *(v9 + 8);
      v9 += 24;
      *(v10 - 1) = v12;
      *v10 = v13;
      ++v8;
      v10 += 2;
      if (v8 >= *(v3 + 205))
      {
        goto LABEL_13;
      }
    }

    v5 = v11;
    if (fi_log_enabled(&xnet_prov, 0, 4))
    {
      v15 = *__error();
      fi_log(&xnet_prov, 0, 4, "xnet_handle_write", 978, "invalid rma iov received\n");
      *__error() = v15;
    }

    xnet_free_xfer(*(a1 + 80) + 280, v3);
    return v5;
  }

LABEL_13:
  *(a1 + 18688) = v3;
  *(a1 + 18696) = xnet_recv_msg_data;

  return xnet_recv_msg_data(a1);
}

uint64_t xnet_handle_cts(uint64_t a1)
{
  if (!(*(*(*(a1 + 80) + 496) + 72))(*(*(a1 + 80) + 496) + 8))
  {
    xnet_handle_cts_cold_3();
  }

  if (*(a1 + 18860) != 1)
  {
    xnet_ep_flush_all_queues_cold_2();
  }

  v2 = *(a1 + 18548);
  v3 = *(a1 + 18848) + 16 * v2;
  if (*(v3 + 8) == -1 && (v6 = *v3, *v3 = 0, *(v3 + 8) = *(a1 + 18856), *(a1 + 18856) = v2, v6))
  {
    v7 = *(v6 + 168);
    if ((v7 & 0x800) == 0)
    {
      xnet_handle_cts_cold_2();
    }

    *(v6 + 168) = v7 & 0xFFFFF7FF;
    xnet_tx_queue_insert(a1, v6);
    xnet_reset_rx(a1);
    return 0;
  }

  else
  {
    if (fi_log_enabled(&xnet_prov, 0, 4))
    {
      v4 = *__error();
      fi_log(&xnet_prov, 0, 4, "xnet_handle_cts", 844, "Invalid cst index\n");
      *__error() = v4;
    }

    return 4294967274;
  }
}

uint64_t xnet_handle_data(uint64_t a1)
{
  if (!(*(*(*(a1 + 80) + 496) + 72))(*(*(a1 + 80) + 496) + 8))
  {
    xnet_handle_data_cold_5();
  }

  if (*(a1 + 18876) != 2)
  {
    xnet_rts_matched_cold_3();
  }

  v2 = *(a1 + 18864);
  if (!v2)
  {
    xnet_rts_matched_cold_5();
  }

  v3 = (v2 + 16 * *(a1 + 18548));
  if (*(v3 + 2) != -1)
  {
    xnet_rts_matched_cold_4();
  }

  v4 = *v3;
  *v3 = 0;
  *(v3 + 2) = 0;
  if (v4)
  {
    if (!*(v4 + 112))
    {
      xnet_handle_data_cold_3();
    }

    if (*(a1 + 18545) == 5)
    {
      v5 = 32;
      if ((*(a1 + 18546) & 1) == 0)
      {
        v5 = 24;
      }

      v6 = *(a1 + 18544 + v5);
    }

    else
    {
      v6 = *(a1 + 18552) - *(a1 + 18550);
    }

    if (*(v4 + 201) == 5)
    {
      v9 = 32;
      if ((*(v4 + 202) & 1) == 0)
      {
        v9 = 24;
      }

      v10 = *(v4 + v9 + 200);
    }

    else
    {
      v10 = *(v4 + 208) - *(v4 + 206);
    }

    if (v6 == v10)
    {
      ofi_truncate_iov(v4 + 24, (v4 + 16), v6);
      *(a1 + 18688) = v4;
      *(a1 + 18696) = xnet_recv_msg_data;

      return xnet_recv_msg_data(a1);
    }

    else
    {
      if (fi_log_enabled(&xnet_prov, 0, 4))
      {
        v11 = *__error();
        fi_log(&xnet_prov, 0, 4, "xnet_handle_data", 874, "rts - data size mismatch\n");
        *__error() = v11;
      }

      return 4294967291;
    }
  }

  else
  {
    if (fi_log_enabled(&xnet_prov, 0, 4))
    {
      v7 = *__error();
      fi_log(&xnet_prov, 0, 4, "xnet_handle_data", 866, "Invalid cts index\n");
      *__error() = v7;
    }

    return 4294967274;
  }
}

BOOL xnet_save_and_cont(uint64_t a1)
{
  if (!(*(*(*(a1 + 80) + 496) + 72))(*(*(a1 + 80) + 496) + 8))
  {
    xnet_save_and_cont_cold_4();
  }

  if ((*(a1 + 18545) & 0xFB) != 1)
  {
    xnet_save_and_cont_cold_1();
  }

  v2 = *(a1 + 18896);
  if (!v2)
  {
    xnet_save_and_cont_cold_3();
  }

  if (*(a1 + 18680) > xnet_max_saved_size)
  {
    return 0;
  }

  v3 = *(*(a1 + 18912) + 8);
  if (v3 == -1)
  {
    return 0;
  }

  v4 = *(a1 + 18880);
  if (v4)
  {
    return *(v4 + 32) < xnet_max_saved;
  }

  if (v3 >= 0x100000)
  {
    util_srx_generic_trecv_cold_3();
  }

  v5 = *(v2 + 8328 + 8 * (v3 >> 10));
  if (v5)
  {
    v4 = v5 + *(v2 + 16520) * (*(*(a1 + 18912) + 8) & 0x3FFLL);
    *(a1 + 18880) = v4;
    return *(v4 + 32) < xnet_max_saved;
  }

  if ((ofi_array_grow(v2 + 8328, *(*(a1 + 18912) + 8)) & 0x80000000) == 0)
  {
    v7 = *(v2 + 8328 + 8 * (v3 >> 10));
    v4 = v7 + *(v2 + 16520) * (v3 & 0x3FF);
    *(a1 + 18880) = v4;
    if (v7)
    {
      return *(v4 + 32) < xnet_max_saved;
    }

    return 0;
  }

  result = 0;
  *(a1 + 18880) = 0;
  return result;
}

uint64_t fd_signal_reset(uint64_t a1)
{
  v4 = 0;
  pthread_mutex_lock(a1);
  while (*(a1 + 72))
  {
    while (recv(*(a1 + 64), &v4, 1uLL, 0) == 1)
    {
      v2 = *(a1 + 72) - 1;
      *(a1 + 72) = v2;
      if (!v2)
      {
        return pthread_mutex_unlock(a1);
      }
    }

    if (*__error() != 35 && *__error() != 35)
    {
      sock_conn_listener_thread_cold_1();
    }

    if (fi_poll_fd(*(a1 + 64), 10000) < 1)
    {
      sock_conn_listener_thread_cold_2();
    }
  }

  return pthread_mutex_unlock(a1);
}

uint64_t ofi_sockapi_connect_socket(int a1, int a2, sockaddr *a3, socklen_t a4)
{
  result = connect(a2, a3, a4);
  if ((result & 0x80000000) != 0)
  {
    return -*__error();
  }

  return result;
}

uint64_t ofi_sockapi_accept_socket(int a1, int a2, sockaddr *a3, socklen_t *a4)
{
  result = accept(a2, a3, a4);
  if ((result & 0x80000000) != 0)
  {
    return -*__error();
  }

  return result;
}

ssize_t ofi_sockapi_send_socket(int a1, int a2, void *a3, size_t a4, int a5)
{
  if (a4 >= 0x7FFFFFFF)
  {
    v6 = 0x7FFFFFFFLL;
  }

  else
  {
    v6 = a4;
  }

  result = send(a2, a3, v6, a5);
  if (result < 0)
  {
    v8 = *__error();
    if (v8 == 35)
    {
      v9 = -35;
    }

    else
    {
      v9 = -v8;
    }

    if (v8 == 32)
    {
      return -57;
    }

    else
    {
      return v9;
    }
  }

  return result;
}

ssize_t ofi_sockapi_sendv_socket(int a1, int a2, uint64_t a3, uint64_t a4, int a5)
{
  result = ofi_sendv_socket(a2, a3, a4, a5);
  if (result < 0)
  {
    v6 = *__error();
    if (v6 == 35)
    {
      v7 = -35;
    }

    else
    {
      v7 = -v6;
    }

    if (v6 == 32)
    {
      return -57;
    }

    else
    {
      return v7;
    }
  }

  return result;
}

ssize_t ofi_sockapi_recv_socket(int a1, int a2, void *a3, size_t a4, int a5)
{
  if (a4 >= 0x7FFFFFFF)
  {
    v6 = 0x7FFFFFFFLL;
  }

  else
  {
    v6 = a4;
  }

  result = recv(a2, a3, v6, a5);
  if (result <= 0)
  {
    if (result)
    {
      return -*__error();
    }

    else
    {
      return -57;
    }
  }

  return result;
}

ssize_t ofi_sockapi_recvv_socket(int a1, int a2, uint64_t a3, uint64_t a4, int a5)
{
  result = ofi_recvv_socket(a2, a3, a4, a5);
  if (result <= 0)
  {
    if (result)
    {
      return -*__error();
    }

    else
    {
      return -57;
    }
  }

  return result;
}

uint64_t hook_cntr_adderr(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 24);
  if (v1 && *v1 >= 0x31uLL && (v2 = v1[6]) != 0)
  {
    return v2();
  }

  else
  {
    return 4294967218;
  }
}

uint64_t hook_cntr_seterr(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 24);
  if (v1 && *v1 >= 0x39uLL && (v2 = v1[7]) != 0)
  {
    return v2();
  }

  else
  {
    return 4294967218;
  }
}

uint64_t hook_cntr_open(uint64_t a1, __int128 *a2, void *a3, uint64_t a4)
{
  v8 = malloc_type_calloc(1uLL, 0x30uLL, 0x10A0040B8DA9B7CuLL);
  if (!v8)
  {
    return 4294967284;
  }

  v9 = v8;
  v8[5] = a1;
  *v8 = 15;
  v8[1] = a4;
  v8[2] = &hook_fid_ops;
  v8[3] = &hook_cntr_ops;
  v15 = *a2;
  v16 = *(a2 + 2);
  if (*(a2 + 1) == 2)
  {
    *(&v15 + 1) = hook_to_hwait(*(a2 + 1));
  }

  v10 = (*(*(*(a1 + 40) + 24) + 40))(*(a1 + 40), &v15, v9 + 4);
  if (v10)
  {
    goto LABEL_5;
  }

  *a3 = v9;
  v12 = *(*(*(a1 + 48) + 64) + 8 * *v9 + 72);
  if (!v12)
  {
    return 0;
  }

  v10 = v12(v9);
  if (v10)
  {
    (*(*(v9[4] + 16) + 8))(v9[4], v13, v14);
LABEL_5:
    free(v9);
  }

  return v10;
}

uint64_t hook_eq_read(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  result = (*(*(*(a1 + 32) + 24) + 8))();
  if (result >= 1 && (*a2 - 7) >= 0xFFFFFFFA)
  {
    *a3 = *(*a3 + 8);
  }

  return result;
}

uint64_t hook_eq_sread(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  result = (*(*(*(a1 + 32) + 24) + 32))();
  if (result >= 1 && (*a2 - 7) >= 0xFFFFFFFA)
  {
    *a3 = *(*a3 + 8);
  }

  return result;
}

uint64_t hook_eq_readerr(uint64_t a1, uint64_t a2)
{
  result = (*(*(*(a1 + 32) + 24) + 16))();
  if (result >= 1)
  {
    *a2 = *(*a2 + 8);
  }

  return result;
}

uint64_t hook_eq_init(uint64_t a1, __int128 *a2, void *a3, uint64_t a4, void *a5)
{
  v9 = a2[1];
  v11 = *a2;
  v12 = v9;
  if (*(a2 + 4) == 2)
  {
    *(&v12 + 1) = hook_to_hwait(*(a2 + 3));
  }

  result = (*(*(*(a1 + 40) + 24) + 24))(*(a1 + 40), &v11, a5 + 4, a5);
  if (!result)
  {
    *a3 = a5;
    a5[5] = a1;
    *a5 = 13;
    a5[1] = a4;
    a5[2] = &hook_fid_ops;
    a5[3] = &hook_eq_ops;
  }

  return result;
}

uint64_t hook_eq_open(uint64_t a1, __int128 *a2, void *a3, uint64_t a4)
{
  v8 = malloc_type_calloc(1uLL, 0x30uLL, 0x10A0040B8DA9B7CuLL);
  if (!v8)
  {
    return 4294967284;
  }

  return hook_eq_init(a1, a2, a3, a4, v8);
}

uint64_t *hook_to_fabric(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  if (*result <= 8)
  {
    if (v2 > 2)
    {
      if ((v2 - 3) < 5)
      {
        v3 = result[11];
LABEL_20:
        v4 = (v3 + 48);
        return *v4;
      }

      if (v2 != 8)
      {
LABEL_25:
        hook_to_fabric_cold_1();
      }

LABEL_19:
      v3 = result[5];
      goto LABEL_20;
    }

    if (v2 == 1)
    {
      return result;
    }

    if (v2 != 2)
    {
      goto LABEL_25;
    }

    goto LABEL_14;
  }

  if (v2 > 13)
  {
    if (v2 <= 15)
    {
      goto LABEL_19;
    }

    if (v2 != 16)
    {
      if (v2 != 17)
      {
        goto LABEL_25;
      }

      goto LABEL_19;
    }

LABEL_23:
    v4 = result + 5;
    return *v4;
  }

  if (v2 > 11)
  {
    if (v2 == 12)
    {
      v3 = result[6];
      goto LABEL_20;
    }

    goto LABEL_23;
  }

  if (v2 != 9)
  {
    if (v2 != 11)
    {
      goto LABEL_25;
    }

    goto LABEL_19;
  }

LABEL_14:
  v4 = result + 6;
  return *v4;
}

uint64_t hook_to_hfid(void *a1)
{
  v1 = *a1 - 1;
  if (v1 <= 0x10 && ((0x1FDFFu >> v1) & 1) != 0)
  {
    return *(a1 + qword_29ED12D50[v1]);
  }

  else
  {
    return 0;
  }
}

uint64_t hook_bind(void *a1, void *a2, uint64_t a3)
{
  v5 = hook_to_hfid(a1);
  v6 = hook_to_hfid(a2);
  if (!v5 || !v6)
  {
    return 4294967274;
  }

  v7 = *(*(v5 + 16) + 16);

  return v7(v5, v6, a3);
}

uint64_t hook_control(void *a1)
{
  v1 = hook_to_hfid(a1);
  if (!v1)
  {
    return 4294967274;
  }

  v2 = *(*(v1 + 16) + 24);

  return v2();
}

uint64_t hook_ops_open(void *a1)
{
  v1 = hook_to_hfid(a1);
  if (!v1)
  {
    return 4294967274;
  }

  v2 = *(*(v1 + 16) + 32);

  return v2();
}

uint64_t hook_close(uint64_t *a1)
{
  v2 = hook_to_hfid(a1);
  if (!v2)
  {
    return 4294967274;
  }

  v4 = v2;
  v5 = hook_to_fabric(a1, v3)[8];
  if (!v5)
  {
    return 4294967274;
  }

  v6 = *(v5 + 8 * *a1 + 240);
  if (v6)
  {
    v6(a1);
  }

  result = (*(*(v4 + 16) + 8))(v4);
  if (!result)
  {
    free(a1);
    return 0;
  }

  return result;
}

uint64_t hook_fabric_init(uint64_t result, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(result + 48) = a2;
  *(result + 40) = a3;
  *(result + 56) = a4;
  *(result + 64) = a6;
  v6 = *(a3 + 8);
  *result = 1;
  *(result + 8) = v6;
  *(result + 32) = *(a3 + 32);
  *(result + 16) = a5;
  *(result + 24) = &hook_fabric_ops;
  *(a3 + 8) = result;
  return result;
}

uint64_t hook_noop_fabric(uint64_t *a1, void *a2, uint64_t a3)
{
  if (fi_log_enabled(a3, 1, 1))
  {
    v6 = *__error();
    fi_log(a3, 1, 1, "hook_noop_fabric", 252, "Installing noop hook\n");
    *__error() = v6;
  }

  v7 = malloc_type_calloc(1uLL, 0x48uLL, 0x10A0040A567E723uLL);
  if (!v7)
  {
    return 4294967284;
  }

  v8 = v7;
  result = 0;
  v10 = *a1;
  v8[7] = a3;
  v8[8] = &hook_noop_ctx;
  v11 = *(v10 + 8);
  *v8 = 1;
  v8[1] = v11;
  *(v8 + 8) = *(v10 + 32);
  v8[2] = &hook_fabric_fid_ops;
  v8[3] = &hook_fabric_ops;
  *(v8 + 12) = 0;
  v8[5] = v10;
  *(v10 + 8) = v8;
  *a2 = v8;
  return result;
}

uint64_t hook_cq_readerr(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    *(a2 + 80) = -1;
  }

  return (*(*(v2 + 24) + 24))();
}

uint64_t hook_cq_init(uint64_t a1, __int128 *a2, void *a3, uint64_t a4, uint64_t a5)
{
  *(a5 + 40) = a1;
  *a5 = 14;
  *(a5 + 8) = a4;
  *(a5 + 16) = &hook_fid_ops;
  *(a5 + 24) = &hook_cq_ops;
  v8 = a2[1];
  v10 = *a2;
  v11 = v8;
  v12 = *(a2 + 4);
  if (*(a2 + 5) == 2)
  {
    v12 = hook_to_hwait(*(a2 + 4));
  }

  result = (*(*(*(a1 + 40) + 24) + 16))(*(a1 + 40), &v10);
  if (!result)
  {
    *(a5 + 56) = v11;
    *a3 = a5;
  }

  return result;
}

uint64_t hook_cq_open(uint64_t a1, __int128 *a2, void *a3, uint64_t a4)
{
  v8 = malloc_type_calloc(1uLL, 0x40uLL, 0x10A0040C5782FDDuLL);
  if (!v8)
  {
    return 4294967284;
  }

  v9 = v8;
  v10 = hook_cq_init(a1, a2, a3, a4, v8);
  if (v10)
  {
    goto LABEL_3;
  }

  v12 = *(*(*(a1 + 48) + 64) + 8 * *v9 + 72);
  if (!v12)
  {
    return 0;
  }

  v10 = v12(v9);
  if (v10)
  {
    (*(*(v9[4] + 16) + 8))();
LABEL_3:
    free(v9);
  }

  return v10;
}

uint64_t hook_domain_ops_open(void *a1, const char *a2, uint64_t a3, void *a4)
{
  v7 = hook_to_hfid(a1);
  v8 = (*(*(v7 + 16) + 32))();
  if (!v8 && !strcasecmp(a2, "ofix_flow_ctrl_v1"))
  {
    a1[7] = *a4;
    *a4 = &hook_ops_flow_ctrl;
  }

  return v8;
}

uint64_t hook_query_atomic(uint64_t a1)
{
  v1 = *(*(a1 + 40) + 24);
  if (v1 && *v1 >= 0x49uLL && (v2 = v1[9]) != 0)
  {
    return v2();
  }

  else
  {
    return 4294967218;
  }
}

uint64_t hook_query_collective(uint64_t a1)
{
  v1 = *(*(a1 + 40) + 24);
  if (v1 && *v1 >= 0x51uLL && (v2 = v1[10]) != 0)
  {
    return v2();
  }

  else
  {
    return 4294967218;
  }
}

uint64_t hook_domain_init(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  a5[6] = a1;
  *a5 = 2;
  a5[1] = a4;
  a5[2] = &hook_domain_fid_ops;
  a5[3] = &hook_domain_ops;
  a5[4] = &hook_mr_ops;
  result = (*(*(*(a1 + 40) + 24) + 8))();
  if (!result)
  {
    *a3 = a5;
  }

  return result;
}

uint64_t hook_domain(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = malloc_type_calloc(1uLL, 0x48uLL, 0x10A00403C4E2816uLL);
  if (!v7)
  {
    return 4294967284;
  }

  v8 = v7;
  v7[6] = a1;
  *v7 = 2;
  v7[1] = a4;
  v7[2] = &hook_domain_fid_ops;
  v7[3] = &hook_domain_ops;
  v7[4] = &hook_mr_ops;
  v9 = (*(*(*(a1 + 40) + 24) + 8))();
  if (v9)
  {
    goto LABEL_3;
  }

  *a3 = v8;
  v11 = *(*(v8[6] + 64) + 8 * *v8 + 72);
  if (!v11)
  {
    return 0;
  }

  v9 = v11(v8);
  if (v9)
  {
    (*(v8[2] + 8))(v8);
LABEL_3:
    free(v8);
  }

  return v9;
}

uint64_t hook_mr_reg(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9)
{
  v10[0] = a2;
  v10[1] = a3;
  v13 = 0u;
  v14 = 0u;
  v12 = 0u;
  v11[0] = v10;
  v11[1] = 1;
  v11[2] = a4;
  v11[3] = a5;
  v11[4] = a6;
  v11[5] = a9;
  v11[6] = 0;
  v11[7] = 0;
  LODWORD(v12) = 0;
  return hook_mr_regattr(a1, v11, a7, a8);
}

uint64_t hook_mr_regv(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9)
{
  v12 = 0u;
  v13 = 0u;
  v11 = 0u;
  v10[0] = a2;
  v10[1] = a3;
  v10[2] = a4;
  v10[3] = a5;
  v10[4] = a6;
  v10[5] = a9;
  v10[6] = 0;
  v10[7] = 0;
  LODWORD(v11) = 0;
  return hook_mr_regattr(a1, v10, a7, a8);
}

uint64_t hook_mr_regattr(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = malloc_type_calloc(1uLL, 0x38uLL, 0x10A0040C17459DAuLL);
  if (!v7)
  {
    return 4294967284;
  }

  v8 = v7;
  v7[6] = a1;
  v9 = *(a2 + 40);
  *v7 = 12;
  v7[1] = v9;
  v7[2] = &hook_fid_ops;
  v10 = (*(*(*(a1 + 40) + 32) + 24))();
  if (v10)
  {
    free(v8);
  }

  else
  {
    v11 = v8[5];
    v13 = *(v11 + 24);
    v12 = *(v11 + 32);
    v8[3] = v13;
    v8[4] = v12;
    *a4 = v8;
  }

  return v10;
}

uint64_t hook_poll_open(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = malloc_type_calloc(1uLL, 0x30uLL, 0x10A0040B8DA9B7CuLL);
  if (!v5)
  {
    return 4294967284;
  }

  v6 = v5;
  v5[5] = a1;
  *v5 = 17;
  v5[2] = &hook_fid_ops;
  v5[3] = &hook_poll_ops;
  v7 = (*(*(*(a1 + 40) + 24) + 48))();
  if (v7)
  {
    free(v6);
  }

  else
  {
    *a3 = v6;
  }

  return v7;
}

uint64_t hook_trywait(uint64_t a1, void **a2, unsigned int a3)
{
  if (a3 < 1)
  {
    return 0;
  }

  v5 = a3;
  while (hook_to_hfid(*a2))
  {
    result = (*(*(*(a1 + 40) + 24) + 40))();
    if (result)
    {
      return result;
    }

    ++a2;
    if (!--v5)
    {
      return 0;
    }
  }

  return 4294967274;
}

uint64_t hook_wait_open(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = malloc_type_calloc(1uLL, 0x30uLL, 0x10A0040B8DA9B7CuLL);
  if (!v5)
  {
    return 4294967284;
  }

  v6 = v5;
  v5[5] = a1;
  *v5 = 16;
  v5[2] = &hook_fid_ops;
  v5[3] = &hook_wait_ops;
  v7 = (*(*(*(a1 + 40) + 24) + 32))();
  if (v7)
  {
    free(v6);
  }

  else
  {
    *a3 = v6;
  }

  return v7;
}

uint64_t hook_do_poll(uint64_t a1, uint64_t a2)
{
  result = (*(*(*(a1 + 32) + 24) + 8))();
  if (result >= 1)
  {
    v4 = result;
    do
    {
      *a2 = *(*a2 + 8);
      a2 += 8;
      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t hook_poll_add(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = hook_to_hfid(a2);
  v6 = *(*(v4 + 24) + 16);

  return v6(v4, v5, a3);
}

uint64_t hook_poll_del(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = hook_to_hfid(a2);
  v6 = *(*(v4 + 24) + 24);

  return v6(v4, v5, a3);
}

uint64_t hook_scalable_ep(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = malloc_type_calloc(1uLL, 0x68uLL, 0x10A00407328A17DuLL);
  if (!v7)
  {
    return 4294967284;
  }

  v8 = v7;
  v7[11] = a1;
  *v7 = 4;
  v7[1] = a4;
  v7[2] = &hook_fid_ops;
  v7[3] = &hook_ep_ops;
  v7[4] = &hook_cm_ops;
  v7[5] = &hook_msg_ops;
  v7[6] = &hook_rma_ops;
  v7[7] = &hook_tagged_ops;
  v7[8] = &hook_atomic_ops;
  v9 = (*(*(*(a1 + 40) + 24) + 32))();
  if (v9)
  {
    free(v8);
  }

  else
  {
    *a3 = v8;
  }

  return v9;
}

uint64_t hook_stx_ctx(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = malloc_type_calloc(1uLL, 0x30uLL, 0x10A0040B8DA9B7CuLL);
  if (!v7)
  {
    return 4294967284;
  }

  v8 = v7;
  v7[5] = a1;
  *v7 = 8;
  v7[1] = a4;
  v7[2] = &hook_fid_ops;
  v7[3] = &hook_ep_ops;
  v9 = (*(*(*(a1 + 40) + 24) + 56))();
  if (v9)
  {
    free(v8);
  }

  else
  {
    *a3 = v8;
  }

  return v9;
}

uint64_t hook_srx_ctx(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = malloc_type_calloc(1uLL, 0x68uLL, 0x10A00407328A17DuLL);
  if (!v7)
  {
    return 4294967284;
  }

  v8 = v7;
  v7[11] = a1;
  *v7 = 6;
  v7[1] = a4;
  v7[2] = &hook_fid_ops;
  v7[3] = &hook_ep_ops;
  v7[4] = &hook_cm_ops;
  v7[5] = &hook_msg_ops;
  v7[6] = &hook_rma_ops;
  v7[7] = &hook_tagged_ops;
  v7[8] = &hook_atomic_ops;
  v9 = (*(*(*(a1 + 40) + 24) + 64))();
  if (v9)
  {
    free(v8);
  }

  else
  {
    *a3 = v8;
  }

  return v9;
}

uint64_t hook_passive_ep(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = malloc_type_calloc(1uLL, 0x38uLL, 0x10A00408B49657AuLL);
  if (!v7)
  {
    return 4294967284;
  }

  v8 = v7;
  v7[6] = a1;
  *v7 = 9;
  v7[1] = a4;
  v7[2] = &hook_fid_ops;
  v7[3] = &hook_ep_ops;
  v7[4] = &hook_cm_ops;
  v9 = (*(*(*(a1 + 40) + 24) + 16))();
  if (v9)
  {
    free(v8);
  }

  else
  {
    *a3 = v8;
  }

  return v9;
}

uint64_t hook_endpoint_init(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v10 = *(a2 + 64);
  if (v10)
  {
    v11 = hook_to_hfid(*(a2 + 64));
    if (v11)
    {
      v12 = v11;
    }

    else
    {
      v12 = v10;
    }

    *(a2 + 64) = v12;
  }

  a5[11] = a1;
  *a5 = 3;
  a5[1] = a4;
  a5[2] = &hook_fid_ops;
  a5[3] = &hook_ep_ops;
  a5[4] = &hook_cm_ops;
  a5[5] = &hook_msg_ops;
  a5[6] = &hook_rma_ops;
  a5[7] = &hook_tagged_ops;
  a5[8] = &hook_atomic_ops;
  result = (*(*(*(a1 + 40) + 24) + 24))();
  *(a2 + 64) = v10;
  if (!result)
  {
    *a3 = a5;
  }

  return result;
}

uint64_t hook_endpoint(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = malloc_type_calloc(1uLL, 0x68uLL, 0x10A00407328A17DuLL);
  if (!v8)
  {
    return 4294967284;
  }

  v9 = v8;
  v10 = hook_endpoint_init(a1, a2, a3, a4, v8);
  if (v10)
  {
    goto LABEL_3;
  }

  v12 = *(*(*(a1 + 48) + 64) + 8 * *v9 + 72);
  if (!v12)
  {
    return 0;
  }

  v10 = v12(v9);
  if (v10)
  {
    (*(*(v9[10] + 16) + 8))();
LABEL_3:
    free(v9);
  }

  return v10;
}

uint64_t hook_cancel(void *a1)
{
  v1 = *(*(hook_to_hfid(a1) + 24) + 8);

  return v1();
}

uint64_t hook_getopt(void *a1)
{
  v1 = *(*(hook_to_hfid(a1) + 24) + 16);

  return v1();
}

uint64_t hook_setopt(void *a1)
{
  v1 = *(*(hook_to_hfid(a1) + 24) + 24);

  return v1();
}

uint64_t hook_tx_ctx(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v8 = malloc_type_calloc(1uLL, 0x68uLL, 0x10A00407328A17DuLL);
  if (!v8)
  {
    return 4294967284;
  }

  v9 = v8;
  v10 = *(a1 + 80);
  v9[11] = *(a1 + 88);
  *v9 = 7;
  v9[1] = a5;
  v9[2] = &hook_fid_ops;
  v9[3] = &hook_ep_ops;
  v9[4] = &hook_cm_ops;
  v9[5] = &hook_msg_ops;
  v9[6] = &hook_rma_ops;
  v9[7] = &hook_tagged_ops;
  v9[8] = &hook_atomic_ops;
  v11 = (*(*(v10 + 24) + 32))();
  if (v11)
  {
    free(v9);
  }

  else
  {
    *a4 = v9;
  }

  return v11;
}

uint64_t hook_rx_ctx(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v8 = malloc_type_calloc(1uLL, 0x68uLL, 0x10A00407328A17DuLL);
  if (!v8)
  {
    return 4294967284;
  }

  v9 = v8;
  v10 = *(a1 + 80);
  v9[11] = *(a1 + 88);
  *v9 = 5;
  v9[1] = a5;
  v9[2] = &hook_fid_ops;
  v9[3] = &hook_ep_ops;
  v9[4] = &hook_cm_ops;
  v9[5] = &hook_msg_ops;
  v9[6] = &hook_rma_ops;
  v9[7] = &hook_tagged_ops;
  v9[8] = &hook_atomic_ops;
  v11 = (*(*(v10 + 24) + 40))();
  if (v11)
  {
    free(v9);
  }

  else
  {
    *a4 = v9;
  }

  return v11;
}

uint64_t hook_setname(void *a1)
{
  v1 = *(*(hook_to_hfid(a1) + 32) + 8);

  return v1();
}

uint64_t hook_getname(void *a1)
{
  v1 = *(*(hook_to_hfid(a1) + 32) + 16);

  return v1();
}

uint64_t hook_join(uint64_t a1)
{
  v1 = *(*(a1 + 80) + 32);
  if (v1 && *v1 >= 0x49uLL && (v2 = v1[9]) != 0)
  {
    return v2();
  }

  else
  {
    return 4294967218;
  }
}

uint64_t coll_fabric(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = malloc_type_calloc(1uLL, 0xA0uLL, 0x10F004031851044uLL);
  if (!v6)
  {
    return 4294967284;
  }

  v7 = v6;
  v8 = ofi_fabric_init(&coll_prov, &coll_fabric_attr, a1, v6, a3);
  if (v8)
  {
    free(v7);
  }

  else
  {
    *a2 = v7;
    v7[2] = &coll_fabric_fi_ops;
    *(*a2 + 24) = &coll_fabric_ops;
  }

  return v8;
}

uint64_t coll_fabric_close(void *a1)
{
  v2 = ofi_fabric_close(a1);
  if (!v2)
  {
    free(a1);
  }

  return v2;
}

uint64_t coll_domain_open2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if ((a4 & 0x80000000000) == 0)
  {
    if (fi_log_enabled(&coll_prov, 0, 0))
    {
      v5 = *__error();
      fi_log(&coll_prov, 0, 0, "coll_domain_open2", 90, "FI_PEER flag required\n");
LABEL_8:
      *__error() = v5;
      return 4294967274;
    }

    return 4294967274;
  }

  if (!a5 || *a5 <= 0xFuLL)
  {
    if (fi_log_enabled(&coll_prov, 0, 0))
    {
      v5 = *__error();
      fi_log(&coll_prov, 0, 0, "coll_domain_open2", 96, "Invalid peer domain context\n");
      goto LABEL_8;
    }

    return 4294967274;
  }

  v12 = malloc_type_calloc(1uLL, 0x120uLL, 0x10F2040B8412769uLL);
  if (!v12)
  {
    return 4294967284;
  }

  v13 = v12;
  v12[35] = a5[1];
  v7 = ofi_domain_init(a1, a2, v12, a5, 0);
  if (v7)
  {
    free(v13);
  }

  else
  {
    *a3 = v13;
    v13[2] = &coll_domain_fi_ops;
    *(*a3 + 24) = &coll_domain_ops;
    *(*a3 + 32) = &coll_domain_mr_ops;
  }

  return v7;
}

uint64_t coll_domain_close(void *a1)
{
  v2 = ofi_domain_close(a1);
  if (!v2)
  {
    free(a1);
  }

  return v2;
}

uint64_t coll_av_open(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v18 = 0;
  if (!a2 || (*(a2 + 45) & 8) == 0)
  {
    if (fi_log_enabled(&coll_prov, 0, 0))
    {
      v5 = *__error();
      fi_log(&coll_prov, 0, 0, "coll_av_open", 78, "FI_PEER flag required\n");
LABEL_9:
      *__error() = v5;
      return 22;
    }

    return 22;
  }

  if (!a4 || *a4 <= 0xFuLL)
  {
    if (fi_log_enabled(&coll_prov, 0, 0))
    {
      v5 = *__error();
      fi_log(&coll_prov, 0, 0, "coll_av_open", 83, "invalid peer AV context\n");
      goto LABEL_9;
    }

    return 22;
  }

  v11 = malloc_type_calloc(1uLL, 0x150uLL, 0x10E204082CF14C2uLL);
  if (!v11)
  {
    return 4294967284;
  }

  v12 = v11;
  v17[1] = 8;
  LODWORD(v18) = 0;
  v13 = *(a1 + 220) - 1;
  if (v13 >= 4)
  {
    if (fi_log_enabled(&core_prov, 0, 0))
    {
      v15 = *__error();
      fi_log(&core_prov, 0, 0, "ofi_sizeof_addr_format", 738, "Unsupported address format\n");
      v16 = __error();
      v14 = 0;
      *v16 = v15;
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = qword_29ED12DD8[v13];
  }

  v17[0] = v14;
  if (!*a2)
  {
    *a2 = 2;
  }

  v7 = ofi_av_init(a1, a2, v17, v12, a4);
  if (v7)
  {
    free(v12);
  }

  else
  {
    v12[41] = a4[1];
    v12[2] = &coll_av_fi_ops;
    v12[3] = &coll_av_ops;
    *a3 = v12;
  }

  return v7;
}

uint64_t coll_av_close(void *a1)
{
  v2 = ofi_av_close(a1);
  if (!v2)
  {
    free(a1);
  }

  return v2;
}

uint64_t coll_getinfo(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  if (!a5 || (*(a5 + 20) & 0x10) != 0)
  {
    v7 = fi_dupinfo(coll_info);
    v8 = 0;
  }

  else
  {
    v7 = 0;
    v8 = 4294967200;
  }

  *a6 = v7;
  return v8;
}

uint64_t coll_av_set(uint64_t a1, size_t *a2, pthread_mutex_t **a3, uint64_t a4)
{
  v8 = (*(*(*(a1 + 328) + 24) + 8))();
  if (!v8)
  {
    v9 = malloc_type_calloc(1uLL, 0xC8uLL, 0x10B00407FDB78A8uLL);
    if (v9)
    {
      v10 = v9;
      v8 = pthread_mutex_init(v9 + 2, 0);
      if (v8)
      {
LABEL_26:
        free(v10);
        return v8;
      }

      if (*a2)
      {
        v11 = *a2;
      }

      else
      {
        v11 = 0;
      }

      v10[3].__sig = v11;
      v12 = malloc_type_calloc(v11, 8uLL, 0x100004000313F17uLL);
      *&v10->__opaque[32] = v12;
      if (!v12)
      {
        v8 = 4294967284;
LABEL_25:
        pthread_mutex_destroy(v10 + 2);
        goto LABEL_26;
      }

      v13 = a2[1];
      v14 = a2[2];
      if (v13 == -1)
      {
        if (v14 == -1)
        {
LABEL_20:
          v8 = 0;
          *&v10[1].__opaque[48] = 0;
          *&v10[1].__opaque[24] = v10;
          v10->__sig = 21;
          *v10->__opaque = a4;
          *&v10->__opaque[8] = &coll_av_set_fi_ops;
          *&v10->__opaque[16] = &coll_av_set_ops;
          *&v10->__opaque[24] = a1;
          atomic_fetch_add((a1 + 40), 1u);
          *a3 = v10;
          return v8;
        }
      }

      else if (v14 != -1)
      {
        if (v13 <= v14)
        {
          sig = v10[3].__sig;
          v16 = *&v10->__opaque[40];
          v17 = sig >= v16;
          v18 = sig - v16;
          if (!v17)
          {
            v18 = 0;
          }

          v19 = &v12[8 * v16];
          v20 = v16 + 1;
          while (v18)
          {
            *&v10->__opaque[40] = v20;
            *v19++ = v13;
            v13 += a2[3];
            --v18;
            ++v20;
            if (v13 > a2[2])
            {
              goto LABEL_20;
            }
          }

          if (!fi_log_enabled(*(*&v10->__opaque[24] + 144), 0, 5))
          {
            goto LABEL_24;
          }

          v21 = *__error();
          fi_log(*(*&v10->__opaque[24] + 144), 0, 5, "coll_av_set", 248, "AV set size (%zu) not large enough\n");
          goto LABEL_23;
        }

        goto LABEL_20;
      }

      if (!fi_log_enabled(*(*&v10->__opaque[24] + 144), 0, 5))
      {
LABEL_24:
        free(*&v10->__opaque[32]);
        v8 = 4294967274;
        goto LABEL_25;
      }

      v21 = *__error();
      fi_log(*(*&v10->__opaque[24] + 144), 0, 5, "coll_av_set", 258, "AV set start and end addr must both be set toFI_ADDR_NOTAVAIL when creating empty AV set\n");
LABEL_23:
      *__error() = v21;
      goto LABEL_24;
    }

    return 4294967284;
  }

  return v8;
}

uint64_t coll_av_set_union(void *a1, void *a2)
{
  v2 = a1[4];
  if (a2[4] != v2)
  {
    coll_av_set_union_cold_1();
  }

  v3 = a2[6];
  if (!v3)
  {
    return 0;
  }

  v5 = 0;
  v6 = a1[6];
  while (1)
  {
    v7 = 0;
    if (v6)
    {
      while (*(a1[5] + 8 * v7) != *(a2[5] + 8 * v5))
      {
        if (v6 == ++v7)
        {
          v7 = v6;
          break;
        }
      }
    }

    if (v6 != v7)
    {
      goto LABEL_11;
    }

    if (v6 >= a1[24])
    {
      break;
    }

    *(a1[5] + 8 * v6++) = *(a2[5] + 8 * v5);
    a1[6] = v6;
    v3 = a2[6];
LABEL_11:
    if (v3 <= ++v5)
    {
      return 0;
    }
  }

  if (fi_log_enabled(*(v2 + 144), 2, 5))
  {
    v9 = *__error();
    fi_log(*(a1[4] + 144), 2, 5, "coll_av_set_union", 57, "destination AV is full\n");
    *__error() = v9;
  }

  return 4294967284;
}

uint64_t coll_av_set_intersect(void *a1, void *a2)
{
  if (a2[4] != a1[4])
  {
    coll_av_set_intersect_cold_1();
  }

  v2 = a2[6];
  if (v2)
  {
    v3 = 0;
    v4 = 0;
    v5 = a1[6];
    do
    {
      if (v5 > v4)
      {
        v6 = v4;
        v7 = a1[5];
        v8 = *(a2[5] + 8 * v3);
        v9 = v4;
        while (*(v7 + 8 * v9) != v8)
        {
          if (v5 <= ++v9)
          {
            goto LABEL_10;
          }
        }

        ++v4;
        *(v7 + 8 * v6) = v8;
      }

LABEL_10:
      ++v3;
    }

    while (v3 != v2);
    v2 = v4;
  }

  a1[6] = v2;
  return 0;
}

uint64_t coll_av_set_diff(void *a1, void *a2)
{
  if (a2[4] != a1[4])
  {
    coll_av_set_diff_cold_1();
  }

  v2 = a1[6];
  v3 = a2[6];
  if (v3)
  {
    for (i = 0; i != v3; ++i)
    {
      if (v2)
      {
        v5 = 0;
        v6 = a1[5];
        v7 = *(a2[5] + 8 * i);
        while (*(v6 + 8 * v5) != v7)
        {
          if (v2 == ++v5)
          {
            goto LABEL_10;
          }
        }

        --v2;
        *(v6 + 8 * v2) = v7;
      }

LABEL_10:
      ;
    }
  }

  a1[6] = v2;
  return 0;
}

uint64_t coll_av_set_insert(void *a1, uint64_t a2)
{
  v3 = a1[6];
  if (v3 >= a1[24])
  {
    if (fi_log_enabled(*(a1[4] + 144), 2, 5))
    {
      v9 = *__error();
      fi_log(*(a1[4] + 144), 2, 5, "coll_av_set_insert", 134, "AV set full\n");
      *__error() = v9;
    }

    return 4294967284;
  }

  else
  {
    v4 = a1[5];
    if (v3)
    {
      v5 = a1[6];
      v6 = a1[5];
      while (1)
      {
        v7 = *v6++;
        if (v7 == a2)
        {
          return 4294967274;
        }

        if (!--v5)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
LABEL_6:
      result = 0;
      a1[6] = v3 + 1;
      *(v4 + 8 * v3) = a2;
    }
  }

  return result;
}

uint64_t coll_av_set_remove(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  if (!v2)
  {
    return 4294967274;
  }

  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  for (i = v3; *i != a2; ++i)
  {
    if (!--v4)
    {
      return 4294967274;
    }
  }

  v6 = 0;
  v7 = v2 - 1;
  *(a1 + 48) = v7;
  *i = v3[v7];
  return v6;
}

uint64_t coll_av_set_close(uint64_t a1)
{
  v1 = atomic_load((a1 + 120));
  if (v1 > 0)
  {
    return 4294967280;
  }

  atomic_fetch_add((*(a1 + 32) + 40), 0xFFFFFFFF);
  free(*(a1 + 40));
  free(a1);
  return 0;
}

void coll_join_comp(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = v2[14];
  *(*(a1 + 48) + 50) = 0;
  v4 = *(a1 + 56);
  if (v4 >= 8)
  {
    v6 = 0;
    v7 = *(a1 + 64);
    v8 = v4 >> 3;
    v5 = v4 & 0xFFF8;
    while (1)
    {
      v10 = *v7++;
      v9 = v10;
      if (v10)
      {
        break;
      }

      v6 += 8;
      if (!--v8)
      {
        goto LABEL_10;
      }
    }

    if ((v9 & 1) == 0)
    {
      do
      {
        v11 = v9;
        v9 >>= 1;
        ++v6;
      }

      while ((v11 & 2) == 0);
    }

    v5 = v6;
    if (v6 > v4)
    {
      coll_join_comp_cold_1();
    }
  }

  else
  {
    v5 = 0;
  }

LABEL_10:
  *(*(a1 + 48) + 48) = v5;
  v12 = v2[50];
  v13 = *(*(a1 + 48) + 48);
  if (*v12 < v13)
  {
    coll_join_comp_cold_2();
  }

  *(v12[1] + (v13 >> 3)) &= ~(1 << (v13 & 7));
  if ((*(*(*(v3 + 160) + 24) + 24))() < 0 && fi_log_enabled(*(*(v2[10] + 56) + 136), 0, 2))
  {
    v14 = *__error();
    fi_log(*(*(v2[10] + 56) + 136), 0, 2, "coll_join_comp", 715, "join collective - eq write failed\n");
    *__error() = v14;
  }

  free(*(a1 + 64));
  *(a1 + 64) = 0;
  free(*(a1 + 80));
  *(a1 + 80) = 0;
}

void coll_collective_comp(int *a1)
{
  v2 = *(a1 + 2);
  if ((*(*(*(*(v2 + 136) + 344) + 24) + 8))() && fi_log_enabled(*(*(*(v2 + 80) + 56) + 136), 0, 2))
  {
    v3 = *__error();
    fi_log(*(*(*(v2 + 80) + 56) + 136), 0, 2, "coll_collective_comp", 732, "collective - cq write failed\n");
    *__error() = v3;
  }

  v4 = *a1;
  if (*a1 == 2 || v4 == 5)
  {
    v6 = 12;
  }

  else
  {
    if (v4 != 3)
    {
      return;
    }

    free(*(a1 + 6));
    v6 = 16;
  }

  v7 = *&a1[v6];

  free(v7);
}

void coll_ep_progress(uint64_t result)
{
  v1 = *(result + 408);
  if (!v1)
  {
    return;
  }

  v3 = (result + 408);
  while (1)
  {
    if (v1 == *(result + 416))
    {
      *v3 = 0;
      v3[1] = 0;
    }

    else
    {
      *v3 = *v1;
    }

    v4 = *(v1 + 24);
    v5 = *(v1 + 32);
    if (v5 > 1)
    {
      switch(v5)
      {
        case 2:
          v11 = *(v1 + 72);
          if (v11 > 9)
          {
            return;
          }

          (*(&ofi_atomic_write_handlers[16 * v11] + *(v1 + 68)))(*(v1 + 56), *(v1 + 48), *(v1 + 64));
          break;
        case 3:
          v8 = *(v1 + 48);
          v7 = *(v1 + 56);
          v9 = *(v1 + 64);
          v10 = ofi_datatype_size(*(v1 + 68));
          memcpy(v7, v8, v10 * v9);
          break;
        case 4:
          v6 = v4[11];
          if (v6)
          {
            v6(*(v1 + 24));
          }

          break;
        default:
          return;
      }

      *(v1 + 36) = 2;
      goto LABEL_22;
    }

    if (!v5)
    {
      break;
    }

    if (v5 != 1 || coll_process_xfer_item(v1))
    {
      return;
    }

LABEL_22:
    coll_progress_work(result, v4);
    v1 = *(result + 408);
    if (!v1)
    {
      return;
    }
  }

  if (coll_process_xfer_item(v1) != -35)
  {
    goto LABEL_22;
  }

  if (*v3)
  {
    v3 = *(result + 416);
  }

  *v3 = v1;
  *v1 = 0;
  *(result + 416) = v1;
}

uint64_t coll_process_xfer_item(uint64_t a1)
{
  v9 = 0;
  v10 = 0;
  v2 = *(a1 + 24);
  v11 = &v9;
  v12 = 0;
  v17 = a1;
  v18 = 0;
  v15 = *(a1 + 64);
  v16 = 0;
  v3 = *(v2 + 16);
  v4 = *(*(*(*(v2 + 24) + 32) + 40) + 8 * *(a1 + 72));
  v13 = 1;
  v14 = v4;
  v9 = *(a1 + 48);
  v5 = *(a1 + 56);
  v10 = ofi_datatype_size(*(a1 + 60)) * v5;
  v6 = *(a1 + 32);
  if (!v6)
  {
    v7 = 48;
    return (*(*(*(v3 + 440) + 56) + v7))();
  }

  if (v6 == 1)
  {
    v7 = 24;
    return (*(*(*(v3 + 440) + 56) + v7))();
  }

  return -78;
}

void coll_progress_work(uint64_t a1, void *a2)
{
  v2 = a2 + 4;
  v3 = a2[4];
  if (v3 == a2 + 4)
  {
    return;
  }

  while (1)
  {
    v6 = v3;
    v7 = v3 - 1;
    v3 = *v3;
    v8 = v6[1];
    v9 = v6[2] + 32;
    v10 = *(v6 + 7);
    if (v10 != 2)
    {
      break;
    }

    v11 = *(v6 + 8);
    if (v8 == v9 || v11 == 0)
    {
      *v8 = v3;
      v3[1] = v8;
      free(v7);
      if (*v2 == v2)
      {

        free(a2);
        return;
      }
    }

LABEL_13:
    if (v3 == v2)
    {
      return;
    }
  }

  if (v8 != v9 && *(v8 + 32))
  {
    return;
  }

  if (v10)
  {
    goto LABEL_13;
  }

  *(v6 + 7) = 1;
  if (*(a1 + 408))
  {
    v13 = *(a1 + 416);
  }

  else
  {
    v13 = (a1 + 408);
  }

  *v13 = v7;
  *v7 = 0;
  *(a1 + 416) = v7;
}

uint64_t coll_join_collective(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4, uint64_t a5)
{
  if ((a3 & 0x40) == 0)
  {
    return 4294967218;
  }

  v11 = *a2;
  v10 = a2[1];
  if (v10 == -1)
  {
    (*(*(v11 + 32) + 128))(*(v11 + 32) + 56);
    v12 = *(v11 + 32);
    v13 = *(v12 + 168);
    if (!v13)
    {
      coll_join_collective_cold_1();
    }

    v10 = v13 + 64;
    (*(v12 + 136))(v12 + 56);
  }

  v14 = malloc_type_calloc(1uLL, 0x38uLL, 0x10A004006E814FCuLL);
  if (!v14)
  {
    return 4294967284;
  }

  v15 = v14;
  *v14 = 19;
  v14[1] = a5;
  v14[2] = &util_coll_fi_ops;
  v14[3] = v14;
  atomic_fetch_add((v11 + 120), 1u);
  v14[4] = v11;
  coll_find_local_rank(a1, v14);
  coll_find_local_rank(a1, v10);
  op = coll_create_op(a1, v10, 0, a3, a5, coll_join_comp);
  if (op)
  {
    v17 = op;
    *(op + 6) = v15;
    v18 = malloc_type_calloc(0x20uLL, 1uLL, 0x14C108E5uLL);
    *(v17 + 64) = v18;
    if (v18)
    {
      *(v17 + 56) = 256;
      v19 = malloc_type_calloc(0x20uLL, 1uLL, 0x14C108E5uLL);
      *(v17 + 80) = v19;
      if (v19)
      {
        *(v17 + 72) = 256;
        v20 = **(a1 + 400) >> 3;
        if ((**(a1 + 400) & 7) != 0)
        {
          LODWORD(v20) = v20 + 1;
        }

        v21 = coll_do_allreduce(v17, *(*(a1 + 400) + 8), *(v17 + 64), v19, v20, 1, 7);
        if (v21)
        {
          v6 = v21;
        }

        else
        {
          v6 = coll_sched_comp(v17);
          if (!v6)
          {
            coll_progress_work(a1, v17);
            *a4 = v15;
            return v6;
          }
        }

        free(*(v17 + 80));
        *(v17 + 80) = 0;
      }

      else
      {
        v6 = 4294967284;
      }

      free(*(v17 + 64));
    }

    else
    {
      v6 = 4294967284;
    }

    free(v17);
  }

  else
  {
    v6 = 4294967284;
  }

  (*(v15[2] + 8))(v15);
  return v6;
}

uint64_t coll_find_local_rank(uint64_t a1, uint64_t a2)
{
  result = (*(*(*(*(*(a2 + 32) + 32) + 328) + 24) + 16))();
  *(a2 + 40) = -1;
  if (result != -1)
  {
    v4 = *(a2 + 32);
    v5 = *(v4 + 48);
    if (v5)
    {
      v6 = 0;
      v7 = *(v4 + 40);
      while (*(v7 + 8 * v6) != result)
      {
        if (v5 == ++v6)
        {
          return result;
        }
      }

      *(a2 + 40) = v6;
    }
  }

  return result;
}

_DWORD *coll_create_op(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = malloc_type_calloc(1uLL, 0x68uLL, 0x10B20408FBB428BuLL);
  if (result)
  {
    v13 = *(a2 + 50);
    *(a2 + 50) = v13 + 1;
    v14 = *(a2 + 48);
    *result = a3;
    result[1] = v13 | (v14 << 16);
    *(result + 1) = a5;
    *(result + 2) = a1;
    *(result + 11) = a6;
    *(result + 12) = a4;
    *(result + 3) = a2;
    *(result + 4) = result + 8;
    *(result + 5) = result + 8;
  }

  return result;
}

uint64_t coll_do_allreduce(uint64_t a1, const void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = a7;
  v8 = a6;
  v14 = *(a1 + 24);
  v15 = *(v14 + 40);
  v16 = *(*(v14 + 32) + 48);
  v17 = 2 << ~__clz(v16 - 1);
  if (v16 < 2)
  {
    v17 = v16;
  }

  v26 = v17 >> (v17 > v16);
  v18 = v16 - v26;
  v19 = ofi_datatype_size(a6);
  memcpy(a3, a2, v19 * a5);
  if (v15 >= 2 * v18)
  {
    v25 = v7;
    v21 = v15 - v18;
LABEL_8:
    if (v21 == -1 || v26 < 2)
    {
LABEL_12:
      if (v15 >= 2 * v18)
      {
        return 0;
      }

      if (v15)
      {
        result = coll_sched_send(a1, v15 - 1, a3, a5, v8, 1);
        if (result)
        {
          return result;
        }

        return 0;
      }

LABEL_14:
      result = coll_sched_recv(a1, v15 | 1, a3, a5, v8, 1);
      if (result)
      {
        return result;
      }

      return 0;
    }

    v23 = 1;
    while (1)
    {
      v24 = (v23 ^ v21) < v18 ? 2 * (v23 ^ v21) + 1 : (v23 ^ v21) + v18;
      result = coll_sched_recv(a1, v24, a4, a5, v8, 0);
      if (result)
      {
        return result;
      }

      result = coll_sched_send(a1, v24, a3, a5, v8, 1);
      if (result)
      {
        return result;
      }

      if (v24 >= v15)
      {
        result = coll_sched_reduce(a1, a3, a4, a5, v8, v25);
        if (result)
        {
          return result;
        }

        result = coll_sched_copy(a1, a4, a3, a5, v8);
        if (result)
        {
          return result;
        }
      }

      else
      {
        result = coll_sched_reduce(a1, a4, a3, a5, v8, v25);
        if (result)
        {
          return result;
        }
      }

      v23 *= 2;
      if (v23 >= v26)
      {
        goto LABEL_12;
      }
    }
  }

  if ((v15 & 1) == 0)
  {
    result = coll_sched_send(a1, v15 | 1, a3, a5, v8, 1);
    if (result)
    {
      return result;
    }

    goto LABEL_14;
  }

  result = coll_sched_recv(a1, v15 - 1, a4, a5, v8, 1);
  if (!result)
  {
    result = coll_sched_reduce(a1, a4, a3, a5, v8, v7);
    if (!result)
    {
      v25 = v7;
      v21 = v15 >> 1;
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t coll_sched_comp(uint64_t a1)
{
  v2 = malloc_type_calloc(1uLL, 0x30uLL, 0x102004063BC1FCFuLL);
  if (!v2)
  {
    return 4294967284;
  }

  v3 = v2;
  result = 0;
  v5 = *(a1 + 40);
  v6 = *v5;
  v3[1] = *v5;
  ++v3;
  v3[3] = 4;
  *(v3 + 8) = 1;
  v3[1] = v5;
  v3[2] = a1;
  *(v6 + 8) = v3;
  *v5 = v3;
  return result;
}

uint64_t coll_ep_barrier2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  op = coll_create_op(a1, a2, 1, a3, a4, coll_collective_comp);
  if (!op)
  {
    return -12;
  }

  v6 = op;
  v10 = ~*(*(op + 3) + 40);
  v7 = coll_do_allreduce(op, &v10, op + 12, (op + 14), 1, 7, 7);
  if (v7 || (v7 = coll_sched_comp(v6)) != 0)
  {
    v8 = v7;
    free(v6);
    return v8;
  }

  else
  {
    coll_progress_work(a1, v6);
    return 0;
  }
}

uint64_t coll_ep_allreduce(uint64_t a1, const void *a2, size_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9, uint64_t a10, uint64_t a11)
{
  op = coll_create_op(a1, a7, 2, a10, a11, coll_collective_comp);
  if (!op)
  {
    return -12;
  }

  v17 = op;
  *(op + 7) = ofi_datatype_size(a8) * a3;
  v18 = ofi_datatype_size(a8);
  v19 = malloc_type_calloc(a3, v18, 0x2CDEF784uLL);
  *(v17 + 48) = v19;
  if (v19)
  {
    v20 = coll_do_allreduce(v17, a2, a5, v19, a3, a8, a9);
    if (!v20)
    {
      v20 = coll_sched_comp(v17);
      if (!v20)
      {
        coll_progress_work(a1, v17);
        return 0;
      }
    }

    v21 = v20;
    free(*(v17 + 48));
    v22 = v21;
  }

  else
  {
    v22 = -12;
  }

  free(v17);
  return v22;
}

uint64_t coll_ep_allgather(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  op = coll_create_op(a1, a7, 4, a9, a10, coll_collective_comp);
  if (!op)
  {
    return -12;
  }

  v16 = op;
  v17 = coll_do_allgather(op, a2, a5, a3, a8);
  if (v17 || (v17 = coll_sched_comp(v16)) != 0)
  {
    v18 = v17;
    free(v16);
    return v18;
  }

  else
  {
    coll_progress_work(a1, v16);
    return 0;
  }
}

uint64_t coll_do_allgather(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a5;
  v10 = *(*(a1 + 24) + 40);
  v11 = ofi_datatype_size(a5);
  v12 = v11 * a4;
  v13 = *(*(*(a1 + 24) + 32) + 48);
  result = coll_sched_copy(a1, a2, a3 + v11 * a4 * v10, a4, v5);
  if (!result)
  {
    if (v13 < 2)
    {
      return 0;
    }

    else
    {
      v19 = (v10 + 1) % v13;
      v15 = v13 - 1;
      v16 = (v13 - 1 + v10) % v13;
      v17 = v16;
      while (1)
      {
        v18 = a3 + v10 * v12;
        v10 = v17;
        result = coll_sched_send(a1, v19, v18, a4, v5, 0);
        if (result)
        {
          break;
        }

        result = coll_sched_recv(a1, v16, a3 + v10 * v12, a4, v5, 1);
        if (result)
        {
          break;
        }

        v17 = (v13 - 1 + v10) % v13;
        if (!--v15)
        {
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t coll_ep_scatter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, unsigned int a9, uint64_t a10, uint64_t a11)
{
  op = coll_create_op(a1, a7, 5, a10, a11, coll_collective_comp);
  if (!op)
  {
    return -12;
  }

  v17 = op;
  v18 = coll_do_scatter(op, a2, a5, op + 6, a3, a8, a9);
  if (v18 || (v18 = coll_sched_comp(v17)) != 0)
  {
    v19 = v18;
    free(v17);
    return v19;
  }

  else
  {
    coll_progress_work(a1, v17);
    return 0;
  }
}

uint64_t coll_do_scatter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, unint64_t a6, uint64_t a7)
{
  v7 = a7;
  v12 = *(*(a1 + 24) + 32);
  v13 = *(*(a1 + 24) + 40);
  v14 = *(v12 + 48);
  v15 = v13 - a6;
  if (v13 >= a6)
  {
    v16 = 0;
  }

  else
  {
    v16 = *(v12 + 48);
  }

  v17 = ofi_datatype_size(a7);
  if (!a5)
  {
    return 0;
  }

  v18 = v17;
  v19 = v16 + v15;
  if (v19)
  {
    v20 = (v19 & 1) == 0;
  }

  else
  {
    v20 = 0;
  }

  if (v20)
  {
    v22 = 1 << (ofi_lsb(v19) - 1);
    if (v22 + v19 > v14)
    {
      v22 = v14 - v19;
    }

    v21 = v22 * a5;
    v23 = ofi_datatype_size(v7);
    v24 = malloc_type_malloc(v21 * v23, 0x4722DF4AuLL);
    *a4 = v24;
    if (!v24)
    {
      return 4294967284;
    }
  }

  else
  {
    v21 = 0;
  }

  v25 = v18 * a5;
  if (v13 != a6)
  {
    goto LABEL_18;
  }

  v21 = v14 * a5;
  if (!a6)
  {
    goto LABEL_18;
  }

  v26 = v18 * a5;
  v27 = ofi_datatype_size(v7);
  v28 = malloc_type_malloc(v27 * v21, 0x8CEF68DAuLL);
  *a4 = v28;
  if (!v28)
  {
    return 4294967284;
  }

  result = coll_sched_copy(a1, a2 + v26 * a6, v28, (v14 - a6) * a5, v7);
  if (result)
  {
    return result;
  }

  result = coll_sched_copy(a1, a2, *a4 + v26 * (v14 - a6), a6 * a5, v7);
  v25 = v26;
  if (result)
  {
    return result;
  }

LABEL_18:
  v30 = 1;
  if (v14 < 2)
  {
    goto LABEL_27;
  }

  while ((v30 & v19) == 0)
  {
    v30 *= 2;
    if (v30 >= v14)
    {
      goto LABEL_27;
    }
  }

  v42 = v25;
  v31 = v13 - v30;
  v32 = v14 & ((v13 - v30) >> 63);
  if (v19)
  {
    v34 = v32 + v31;
    v35 = a1;
    v33 = a3;
    v36 = a5;
  }

  else
  {
    v33 = *a4;
    v34 = v32 + v31;
    v35 = a1;
    v36 = v21;
  }

  result = coll_sched_recv(v35, v34, v33, v36, v7, 1);
  v25 = v42;
  if (!result)
  {
LABEL_27:
    if (a6 || v13)
    {
      a2 = *a4;
    }

    if (v30 >= 2)
    {
      do
      {
        v37 = v30 >> 1;
        if (v19 + (v30 >> 1) < v14)
        {
          v38 = v21 - v37 * a5;
          if (v21 == v37 * a5)
          {
            coll_do_scatter_cold_1();
          }

          v39 = v37 + v13 >= v14 ? v14 : 0;
          v40 = v25;
          result = coll_sched_send(a1, v37 + v13 - v39, a2 + v37 * v25, v38, v7, 1);
          v25 = v40;
          v21 = v37 * a5;
          if (result)
          {
            return result;
          }
        }

        v41 = v30 > 3;
        v30 >>= 1;
      }

      while (v41);
    }

    if ((v19 & 1) == 0)
    {
      result = coll_sched_copy(a1, a2, a3, a5, v7);
      if (result)
      {
        return result;
      }
    }

    return 0;
  }

  return result;
}

uint64_t coll_ep_broadcast(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  op = coll_create_op(a1, a5, 3, a8, a9, coll_collective_comp);
  if (!op)
  {
    return -12;
  }

  v15 = op;
  v16 = *(*(op[3] + 32) + 48);
  v17 = (a3 + v16 - 1) / v16;
  v18 = v17 * *(op[3] + 40);
  if (v18 > a3 && v18 - a3 > v17)
  {
    v17 = 0;
  }

  v19 = ofi_datatype_size(a7);
  v20 = malloc_type_malloc(v19 * v17, 0x9B71AD6DuLL);
  v15[6] = v20;
  if (v20)
  {
    v21 = coll_do_scatter(v15, a2, v20, v15 + 8, v17, a6, a7);
    if (!v21)
    {
      v21 = coll_do_allgather(v15, v15[6], a2, v17, a7);
      if (!v21)
      {
        v21 = coll_sched_comp(v15);
        if (!v21)
        {
          coll_progress_work(a1, v15);
          return 0;
        }
      }
    }

    v22 = v21;
    free(v15[6]);
    v23 = v22;
  }

  else
  {
    v23 = -12;
  }

  free(v15);
  return v23;
}

uint64_t coll_peer_xfer_complete(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  *(v2 + 36) = 2;
  coll_progress_work(*(*(v2 + 24) + 16), *(v2 + 24));
  return 0;
}

uint64_t coll_query_collective(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (!a3)
  {
    return 4294967274;
  }

  if (*(a3 + 32))
  {
    return 4294967274;
  }

  result = 4294967218;
  if (a2 <= 7)
  {
    if (((1 << a2) & 0x93) != 0)
    {
      goto LABEL_7;
    }

    if (a2 == 3 && *a3 <= 9u)
    {
      v6 = *(*(a1 + 280) + 24);
      if (!v6)
      {
        return 4294967218;
      }

      if (*v6 < 0x49uLL)
      {
        return 4294967218;
      }

      v7 = v6[9];
      if (!v7)
      {
        return 4294967218;
      }

      result = v7();
      if (!result)
      {
LABEL_7:
        result = 0;
        *(a3 + 24) = 0x7FFFFFFFLL;
      }
    }
  }

  return result;
}

uint64_t coll_close(void *a1)
{
  atomic_fetch_add((a1[4] + 120), 0xFFFFFFFF);
  free(a1);
  return 0;
}

uint64_t coll_sched_send(uint64_t a1, int a2, uint64_t a3, int a4, int a5, int a6)
{
  v12 = malloc_type_calloc(1uLL, 0x50uLL, 0x10A00400124DEBBuLL);
  if (!v12)
  {
    return 4294967284;
  }

  v13 = v12;
  result = 0;
  v15 = *(a1 + 40);
  v16 = *v15;
  v13[1] = *v15;
  ++v13;
  v13[3] = 0;
  *(v13 + 8) = a6;
  v13[7] = *(a1 + 4) | (*(*(a1 + 24) + 40) << 32);
  v13[5] = a3;
  *(v13 + 12) = a4;
  *(v13 + 13) = a5;
  *(v13 + 16) = a2;
  v13[1] = v15;
  v13[2] = a1;
  *(v16 + 8) = v13;
  *v15 = v13;
  return result;
}

uint64_t coll_sched_recv(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, int a6)
{
  v12 = malloc_type_calloc(1uLL, 0x50uLL, 0x10A00400124DEBBuLL);
  if (!v12)
  {
    return 4294967284;
  }

  v13 = v12;
  result = 0;
  v15 = *(a1 + 40);
  v16 = *v15;
  v13[1] = *v15;
  ++v13;
  v13[3] = 1;
  *(v13 + 8) = a6;
  v13[7] = *(a1 + 4) | (a2 << 32);
  v13[5] = a3;
  *(v13 + 12) = a4;
  *(v13 + 13) = a5;
  *(v13 + 16) = a2;
  v13[1] = v15;
  v13[2] = a1;
  *(v16 + 8) = v13;
  *v15 = v13;
  return result;
}

uint64_t coll_sched_reduce(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, int a6)
{
  v12 = malloc_type_calloc(1uLL, 0x50uLL, 0x10A004083DCD24BuLL);
  if (!v12)
  {
    return 4294967284;
  }

  v13 = v12;
  result = 0;
  v15 = *(a1 + 40);
  v16 = *v15;
  v13[1] = *v15;
  *(++v13 + 8) = 1;
  v13[3] = 2;
  v13[5] = a2;
  v13[6] = a3;
  *(v13 + 14) = a4;
  *(v13 + 15) = a5;
  *(v13 + 16) = a6;
  v13[1] = v15;
  v13[2] = a1;
  *(v16 + 8) = v13;
  *v15 = v13;
  return result;
}

uint64_t coll_sched_copy(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  v10 = malloc_type_calloc(1uLL, 0x48uLL, 0x10A0040850C52B4uLL);
  if (!v10)
  {
    return 4294967284;
  }

  v11 = v10;
  result = 0;
  v13 = *(a1 + 40);
  v14 = *v13;
  v11[1] = *v13;
  *(++v11 + 8) = 1;
  v11[3] = 3;
  v11[5] = a2;
  v11[6] = a3;
  *(v11 + 14) = a4;
  *(v11 + 15) = a5;
  v11[1] = v13;
  v11[2] = a1;
  *(v14 + 8) = v11;
  *v13 = v11;
  return result;
}

uint64_t coll_endpoint(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 && (*(a2 + 20) & 0x10) != 0)
  {
    if (a4 && *a4 > 0x1FuLL)
    {
      v11 = malloc_type_calloc(1uLL, 0x1C0uLL, 0x10A204006CFF159uLL);
      if (!v11)
      {
        return 4294967284;
      }

      v12 = v11;
      v13 = fi_dupinfo(a2);
      v12[53] = v13;
      if (v13 && (v14 = fi_dupinfo(*(a4 + 8)), (v12[54] = v14) != 0))
      {
        v12[55] = *(a4 + 16);
        v7 = ofi_endpoint_init(a1, &coll_util_prov, a2, v12, a4, coll_ep_progress);
        if (!v7)
        {
          *(a4 + 24) = &coll_ep_peer_xfer_ops;
          *a3 = v12;
          v12[2] = &coll_ep_fi_ops;
          *(*a3 + 24) = &coll_ops_ep;
          *(*a3 + 32) = &coll_ops_cm;
          *(*a3 + 72) = &coll_ops_collective;
          return v7;
        }
      }

      else
      {
        v7 = 4294967284;
      }

      fi_freeinfo(v12[54]);
      fi_freeinfo(v12[53]);
      free(v12);
      return v7;
    }

    if (fi_log_enabled(&coll_prov, 0, 0))
    {
      v5 = *__error();
      fi_log(&coll_prov, 0, 0, "coll_endpoint", 132, "Invalid peer transfer context\n");
      goto LABEL_9;
    }
  }

  else if (fi_log_enabled(&coll_prov, 0, 0))
  {
    v5 = *__error();
    fi_log(&coll_prov, 0, 0, "coll_endpoint", 126, "FI_PEER_TRANSFER mode required\n");
LABEL_9:
    *__error() = v5;
  }

  return 4294967274;
}

uint64_t coll_ep_close(void **a1, uint64_t a2)
{
  ofi_endpoint_close(a1, a2);
  fi_freeinfo(a1[54]);
  fi_freeinfo(a1[53]);
  free(a1);
  return 0;
}

uint64_t coll_ep_ctrl(uint64_t a1, int a2)
{
  if (a2 == 6)
  {
    return 0;
  }

  else
  {
    return 4294967218;
  }
}

uint64_t ofi_coll_eq_open(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (!a2 || (*(a2 + 13) & 8) == 0)
  {
    if (fi_log_enabled(&coll_prov, 0, 0))
    {
      v5 = *__error();
      fi_log(&coll_prov, 0, 0, "ofi_coll_eq_open", 75, "FI_PEER flag required\n");
LABEL_9:
      *__error() = v5;
      return 4294967274;
    }

    return 4294967274;
  }

  if (!a4 || *a4 <= 0xFuLL)
  {
    if (fi_log_enabled(&coll_prov, 0, 0))
    {
      v5 = *__error();
      fi_log(&coll_prov, 0, 0, "ofi_coll_eq_open", 80, "invalid peer EQ context\n");
      goto LABEL_9;
    }

    return 4294967274;
  }

  v11 = malloc_type_calloc(1uLL, 0xA8uLL, 0x10E00408C7392CEuLL);
  if (!v11)
  {
    return 4294967284;
  }

  v12 = v11;
  v11[20] = a4[1];
  v7 = ofi_eq_init(a1, a2, v11, a4);
  if (v7)
  {
    free(v12);
  }

  else
  {
    *a3 = v12;
    v12[2] = &coll_eq_fi_ops;
    *(*a3 + 24) = &coll_eq_ops;
  }

  return v7;
}

uint64_t coll_eq_close(void *a1)
{
  v2 = ofi_eq_cleanup(a1);
  if (!v2)
  {
    free(a1);
  }

  return v2;
}

uint64_t ofi_copy_iov_buf(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, size_t a5, int a6)
{
  v6 = 0;
  if (a2)
  {
    v7 = a5;
    if (a5)
    {
      v6 = 0;
      v11 = (a1 + 8);
      v12 = 1;
      while (1)
      {
        v13 = *v11;
        if (a3 > *v11)
        {
          a3 -= *v11;
          goto LABEL_17;
        }

        if (v13 - a3 >= v7)
        {
          v14 = v7;
        }

        else
        {
          v14 = v13 - a3;
        }

        v7 -= v14;
        if (v13 == a3)
        {
          a3 = 0;
          goto LABEL_17;
        }

        v15 = *(v11 - 1);
        if (!a6)
        {
          break;
        }

        if (a6 == 1)
        {
          v16 = (v15 + a3);
          v17 = (a4 + v6);
LABEL_15:
          memcpy(v16, v17, v14);
        }

        a3 = 0;
        v6 += v14;
LABEL_17:
        if (v12 < a2)
        {
          ++v12;
          v11 += 2;
          if (v7)
          {
            continue;
          }
        }

        return v6;
      }

      v16 = (a4 + v6);
      v17 = (v15 + a3);
      goto LABEL_15;
    }
  }

  return v6;
}

void *ofi_consume_iov_desc(void *__dst, char *a2, uint64_t *a3, unint64_t a4)
{
  v4 = *a3;
  if (!*a3)
  {
    ofi_consume_iov_desc_cold_2();
  }

  v5 = a4;
  v8 = __dst;
  v9 = 0;
  v10 = 1;
  v11 = *a3;
  do
  {
    v9 += __dst[v10];
    v10 += 2;
    --v11;
  }

  while (v11);
  if (v9 < a4)
  {
    ofi_consume_iov_desc_cold_1();
  }

  v12 = v4 - 1;
  if (v4 == 1)
  {
    if (__dst[1] == a4)
    {
      *a3 = 0;
      return __dst;
    }
  }

  else
  {
    v13 = 0;
    v14 = a2;
    while (1)
    {
      v15 = __dst[v13 + 1];
      v16 = v5 >= v15;
      v17 = v5 - v15;
      if (!v16)
      {
        break;
      }

      v14 += 8;
      *a3 = v12;
      v13 += 2;
      --v12;
      v5 = v17;
      if (v12 == -1)
      {
        return __dst;
      }
    }

    if (v13 * 8)
    {
      __dst = memmove(__dst, &__dst[v13], 16 * v4 - v13 * 8);
      if (a2)
      {
        __dst = memmove(a2, v14, 8 * *a3);
      }
    }
  }

  v18 = v8[1] - v5;
  *v8 += v5;
  v8[1] = v18;
  return __dst;
}