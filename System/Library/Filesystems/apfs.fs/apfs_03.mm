uint64_t btree_check_ext(FILE *a1, void *a2, unint64_t a3, int a4, uint64_t a5)
{
  v5 = a5;
  if (obj_type(a2) == 2)
  {
    v34 = 0;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v17 = 0u;
    v10 = btree_node_check(a2, a3, 0, 0, a2, 1u, 0, 0, &v17, 0, 0);
    v11 = v10;
    if (*(a2[49] + 24) != v18)
    {
      if (v10)
      {
        v11 = v10;
      }

      else
      {
        v11 = 22;
      }

      v12 = a2[1];
      if (v12)
      {
        v13 = (v12 + 4040);
      }

      else
      {
        v13 = (*(*(*a2 + 392) + 384) + 212);
      }

      v14 = obj_oid(a2);
      log_err("%s:%d: %s oid 0x%llx: btree key count (%llu) doesn't match # leaf entries (%u)\n", "btree_check_ext", 681, v13, v14, *(a2[49] + 24), v18);
    }

    if (*(a2[49] + 32) == DWORD1(v17) + v17)
    {
      if (v5 && a4 && !v11)
      {
        if (a1)
        {
          v15 = a1;
        }

        else
        {
          v15 = __stdoutp;
        }

        btree_debug_stats_print(v15, a2, &v17, v5);
      }
    }

    else
    {
      if (v11)
      {
        v11 = v11;
      }

      else
      {
        v11 = 22;
      }

      obj_oid(a2);
      log_err("%s:%d: %s oid 0x%llx: btree node count (%llu) doesn't match # nodes traversed (%u)\n");
    }
  }

  else
  {
    v11 = 22;
    if (a2[1])
    {
      log_err("%s:%d: %s btree check called with non-root btree node: %d\n");
    }

    else
    {
      log_err("%s:%d: %s btree check called with non-root btree node: %d\n", "btree_check_ext", 672, (*(*(*a2 + 392) + 384) + 212), 22);
    }
  }

  return v11;
}

uint64_t btree_debug_stats_print(FILE *a1, uint64_t a2, _DWORD *a3, int a4)
{
  if (a1)
  {
    a4 = 5;
  }

  if (a1)
  {
    v7 = a1;
  }

  else
  {
    v7 = __stdoutp;
  }

  if (a4 >= 2)
  {
    v8 = *(a2 + 392);
    v9 = v8[1];
    v10 = v8[2];
    v11 = v8[3];
    v12 = v10 + 8;
    if (v10)
    {
      v13 = v10;
    }

    else
    {
      v12 = 16;
      v13 = 8;
    }

    if (v11)
    {
      v14 = v11;
    }

    else
    {
      v14 = 8;
    }

    v15 = v14 + v13;
    v16 = *a3;
    if (*a3 <= 1u)
    {
      v16 = 1;
    }

    fprintf(v7, "nodesize: %d  dataspace: %d  key size: %d  val size: %d  max keys: node %d leaf %d  avg keys: node %d leaf %d\n", v9, v9 - 56, v10, v11, (v9 - 56) / v12, (v9 - 56) / v15, a3[3] / v16, a3[4] / a3[1]);
  }

  v18 = *(a3 + 11);
  v19 = v18;
  if (!v18)
  {
    v19 = 1.0;
  }

  v20 = *(a3 + 12) * 100.0 / v19;
  v21 = *(a3 + 16);
  v22 = v21;
  if (!v21)
  {
    v22 = 1.0;
  }

  v17 = a3[1];
  result = fprintf(v7, "levels: %d  keys: %lld  nodes: total %d  internal: %d (%.2f%%)  leaves: %d (%.2f%%)  usage: %.2f%% (%.2f%% %.2f%%)\n", a3[2], *(*(a2 + 392) + 24), v17 + *a3, *a3, *a3 * 100.0 / (v17 + *a3), v17, v17 * 100.0 / (v17 + *a3), *(a3 + 7) * 100.0 / *(a3 + 6), v20, *(a3 + 17) * 100.0 / v22);
  if (a4 > 2)
  {
    v24 = 0;
    v25 = 0;
    v26 = a3 + 54;
    do
    {
      if (v26[v24])
      {
        if (v24)
        {
          result = fprintf(v7, "level %d: %d nodes %.2f average descendents\n");
        }

        else
        {
          result = fprintf(v7, "level %d: %d nodes\n");
        }

        v25 += v26[v24];
      }

      ++v24;
    }

    while (v24 != 16);
  }

  if (a4 >= 2)
  {
    LODWORD(v27) = a3[4];
    v27 = v27 <= 1 ? 1 : v27;
    result = fprintf(v7, "key/val sizes:  tree max k:%d v:%d  max k:%d v:%d  avg k:%llu v:%llu\n", *(*(a2 + 392) + 16), *(*(a2 + 392) + 20), a3[52], a3[53], *(a3 + 18) / v27, *(a3 + 19) / v27);
    if (a4 >= 4)
    {
      *&v28 = 0xAAAAAAAAAAAAAAAALL;
      *(&v28 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v66 = v28;
      v67 = v28;
      v64 = v28;
      v65 = v28;
      *__str = v28;
      v63 = v28;
      snprintf(__str, 0x10uLL, "<%d", *(*(a2 + 392) + 16) / 5u);
      snprintf(&v63, 0x10uLL, "<%d", 2 * *(*(a2 + 392) + 16) / 5u);
      snprintf(&v64, 0x10uLL, "<%d", 3 * *(*(a2 + 392) + 16) / 5u);
      snprintf(&v65, 0x10uLL, "<%d", 4 * *(*(a2 + 392) + 16) / 5u);
      snprintf(&v66, 0x10uLL, "<%d", *(*(a2 + 392) + 16));
      snprintf(&v67, 0x10uLL, "=%d", *(*(a2 + 392) + 16));
      fprintf(v7, "    keys: %9s %9s %9s %9s %9s %9s\n", __str, &v63, &v64, &v65, &v66, &v67);
      fprintf(v7, "    keys: %9d %9d %9d %9d %9d %9d\n", a3[40], a3[41], a3[42], a3[43], a3[44], a3[45]);
      LODWORD(v34) = a3[40];
      v35 = a3[4];
      v36 = v35;
      v37 = v34 * 100.0;
      if (!v35)
      {
        v36 = 1.0;
      }

      LODWORD(v29) = a3[41];
      LODWORD(v30) = a3[42];
      LODWORD(v31) = a3[43];
      LODWORD(v32) = a3[44];
      LODWORD(v33) = a3[45];
      fprintf(v7, "    keys: %9.2f %9.2f %9.2f %9.2f %9.2f %9.2f\n", v37 / v36, v29 * 100.0 / v36, v30 * 100.0 / v36, v31 * 100.0 / v36, v32 * 100.0 / v36, v33 * 100.0 / v36);
      snprintf(__str, 0x10uLL, "<%d", *(*(a2 + 392) + 20) / 5u);
      snprintf(&v63, 0x10uLL, "<%d", 2 * *(*(a2 + 392) + 20) / 5u);
      snprintf(&v64, 0x10uLL, "<%d", 3 * *(*(a2 + 392) + 20) / 5u);
      snprintf(&v65, 0x10uLL, "<%d", 4 * *(*(a2 + 392) + 20) / 5u);
      snprintf(&v66, 0x10uLL, "<%d", *(*(a2 + 392) + 20));
      snprintf(&v67, 0x10uLL, "=%d", *(*(a2 + 392) + 20));
      fprintf(v7, "  values: %9s %9s %9s %9s %9s %9s\n", __str, &v63, &v64, &v65, &v66, &v67);
      fprintf(v7, "  values: %9d %9d %9d %9d %9d %9d\n", a3[46], a3[47], a3[48], a3[49], a3[50], a3[51]);
      LODWORD(v43) = a3[46];
      v44 = v43 * 100.0;
      v45 = a3[4];
      v46 = v45;
      if (!v45)
      {
        v46 = 1.0;
      }

      LODWORD(v38) = a3[47];
      LODWORD(v39) = a3[48];
      LODWORD(v40) = a3[49];
      LODWORD(v41) = a3[50];
      LODWORD(v42) = a3[51];
      fprintf(v7, "  values: %9.2f %9.2f %9.2f %9.2f %9.2f %9.2f\n", v44 / v46, v38 * 100.0 / v46, v39 * 100.0 / v46, v40 * 100.0 / v46, v41 * 100.0 / v46, v42 * 100.0 / v46);
      fprintf(v7, "capacity: all    %llu / %llu => %.2f %% used\n", *(a3 + 7), *(a3 + 6), *(a3 + 7) * 100.0 / *(a3 + 6));
      if (a4 == 4)
      {
        fprintf(v7, "capacity: nodes  %llu / %llu => %.2f %% used\n");
      }

      else
      {
        fprintf(v7, "capacity: %9s %9s %9s %9s %9s %9s\n", "<20", "<40", "<60", "<80", "<100", "FULL");
        fprintf(v7, "capacity: %9d %9d %9d %9d %9d %9d\n", a3[5], a3[6], a3[7], a3[8], a3[9], a3[10]);
        LODWORD(v47) = a3[5];
        LODWORD(v48) = a3[6];
        v49 = a3[1] + *a3;
        LODWORD(v50) = a3[7];
        LODWORD(v51) = a3[8];
        LODWORD(v52) = a3[9];
        LODWORD(v53) = a3[10];
        fprintf(v7, "capacity: %9.2f %9.2f %9.2f %9.2f %9.2f %9.2f\n", v47 * 100.0 / v49, v48 * 100.0 / v49, v50 * 100.0 / v49, v51 * 100.0 / v49, v52 * 100.0 / v49, v53 * 100.0 / v49);
        fprintf(v7, "capacity: nodes  %llu / %llu => %.2f %% used\n", *(a3 + 12), *(a3 + 11), *(a3 + 12) * 100.0 / *(a3 + 11));
        fprintf(v7, "capacity: %9s %9s %9s %9s %9s %9s\n", "<20", "<40", "<60", "<80", "<100", "FULL");
        fprintf(v7, "capacity: %9d %9d %9d %9d %9d %9d\n", a3[16], a3[17], a3[18], a3[19], a3[20], a3[21]);
        fprintf(v7, "capacity: %9.2f %9.2f %9.2f %9.2f %9.2f %9.2f\n");
      }

      result = fprintf(v7, "capacity: leaves %llu / %llu => %.2f %% used\n", *(a3 + 17), *(a3 + 16), *(a3 + 17) * 100.0 / *(a3 + 16));
      if (a4 != 4)
      {
        fprintf(v7, "capacity: %9s %9s %9s %9s %9s %9s\n", "<20", "<40", "<60", "<80", "<100", "FULL");
        fprintf(v7, "capacity: %9d %9d %9d %9d %9d %9d\n", a3[26], a3[27], a3[28], a3[29], a3[30], a3[31]);
        LODWORD(v54) = a3[26];
        LODWORD(v55) = a3[27];
        LODWORD(v56) = a3[1];
        v57 = v56;
        LODWORD(v58) = a3[28];
        LODWORD(v59) = a3[29];
        LODWORD(v60) = a3[30];
        LODWORD(v61) = a3[31];
        return fprintf(v7, "capacity: %9.2f %9.2f %9.2f %9.2f %9.2f %9.2f\n", v54 * 100.0 / v57, v55 * 100.0 / v57, v58 * 100.0 / v57, v59 * 100.0 / v57, v60 * 100.0 / v57, v61 * 100.0 / v57);
      }
    }
  }

  return result;
}

uint64_t btree_check_recent_sanity(atomic_ullong *a1, unint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t, unint64_t, void, uint64_t, void), uint64_t a4)
{
  v8 = a1[1];
  if (!v8)
  {
    v8 = *(*a1 + 392);
  }

  __chkstk_darwin(a1);
  v10 = (&v40 - v9);
  bzero(&v40 - v9, v11);
  v45 = 0;
  v46 = 0xAAAAAAAAAAAAAAAALL;
  v44 = -1431655766;
  v43 = -21846;
  v42 = 0;
  obj_lock(a1, 1);
  v12 = btree_level_count(a1, &v44);
  if (v12)
  {
    v13 = v12;
    obj_unlock(a1, 1);
    return v13;
  }

  v14 = _apfs_calloc_typed(v44, 0x10uLL, 0x1020040FFEA222EuLL);
  if (!v14)
  {
    obj_unlock(a1, 1);
    return 12;
  }

  v15 = v14;
  *v14 = a1;
  *(v14 + 4) = 0;
  obj_retain(a1);
  v16 = 0;
  v41 = v15;
  while (1)
  {
    while (1)
    {
      v17 = &v15[16 * v16];
      if (obj_xid(*v17) <= a2)
      {
        v19 = *v17;
LABEL_16:
        btree_node_release(v19, 1);
        goto LABEL_17;
      }

      v18 = *(v17 + 4);
      v19 = *v17;
      v20 = *(*v17 + 56);
      if (*(v20 + 36) <= v18)
      {
        goto LABEL_16;
      }

      if ((*(v20 + 32) & 2) == 0)
      {
        break;
      }

      if (a3)
      {
        v24 = 0;
        while (1)
        {
          v25 = btree_node_key_ptr(v19, v24, &v46, &v43);
          if (v25 || (v25 = btree_node_val_ptr(*v17, v24, &v45, &v42), v25))
          {
            v13 = v25;
            obj_oid(*v17);
            log_err("%s:%d: %s node 0x%llx (level %d): error getting index %d key/val: %d\n");
            goto LABEL_30;
          }

          v26 = a3(v8, a4, a2, v46, v43, v45, v42);
          if (v26)
          {
            break;
          }

          ++v24;
          v19 = *v17;
          if (v24 >= *(*(*v17 + 56) + 36))
          {
            goto LABEL_25;
          }
        }

        v13 = v26;
        goto LABEL_30;
      }

LABEL_25:
      btree_node_release(v19, 1);
      v15 = v41;
LABEL_17:
      *v17 = 0;
      if ((--v16 & 0x8000) != 0)
      {
LABEL_28:
        v13 = 0;
        goto LABEL_31;
      }
    }

    v21 = btree_node_child_val(v19, v18, v10);
    if (v21)
    {
      v13 = v21;
      obj_oid(*v17);
      log_err("%s:%d: %s node 0x%llx (level %d): error getting index %d child oid: %d\n");
LABEL_30:
      v15 = v41;
      goto LABEL_31;
    }

    ++*(v17 + 4);
    if (v44 <= ++v16)
    {
      break;
    }

    v22 = &v15[16 * v16];
    *(v22 + 4) = 0;
    v23 = btree_node_get(a1, v10, 0, 2u, *(*(*(v22 - 2) + 56) + 34) - 1, 0, v22);
    if (v23)
    {
      v13 = v23;
      obj_oid(*(v22 - 2));
      log_err("%s:%d: %s node 0x%llx (level %d): error getting index %d child: %d\n");
      goto LABEL_30;
    }

    if ((v16 & 0x8000) != 0)
    {
      goto LABEL_28;
    }
  }

  v34 = a1[1];
  if (v34)
  {
    v35 = v34 + 4040;
  }

  else
  {
    v35 = *(*(*a1 + 392) + 384) + 212;
  }

  v36 = v41;
  v37 = &v41[16 * v16];
  v38 = obj_oid(*(v37 - 2));
  v39 = v35;
  v15 = v36;
  log_err("%s:%d: %s node 0x%llx (level %d) index %d: more levels than expected\n", "btree_check_recent_sanity", 769, v39, v38, *(*(*(v37 - 2) + 56) + 34), *(v37 - 4));
  v13 = 22;
LABEL_31:
  v27 = v44;
  v28 = v44 - 1;
  if (((v44 - 1) & 0x8000) == 0)
  {
    v29 = v15;
    v30 = v28 + 1;
    v31 = &v29[16 * v28];
    do
    {
      if (*v31)
      {
        btree_node_release(*v31, 1);
      }

      v31 -= 16;
    }

    while (v30-- > 1);
    v27 = v44;
    v15 = v41;
  }

  _apfs_free(v15, 16 * v27);
  return v13;
}

void crc32c_init()
{
  if (!crc32c)
  {
    cpu_capabilities = _get_cpu_capabilities();
    v1 = sub_100026A44;
    if ((cpu_capabilities & 0x4000000) == 0)
    {
      v2 = crc32c;
      if (crc32c)
      {
        return;
      }

      do
      {
        v3 = 0;
        for (i = 0; i != 8; ++i)
        {
          v5 = (v2 >> i) ^ v3;
          v6 = v3 >> 1;
          v3 = (v3 >> 1) ^ 0x82F63B78;
          if ((v5 & 1) == 0)
          {
            v3 = v6;
          }
        }

        crc32c_table[v2++] = v3;
        v1 = sub_100026A18;
      }

      while (v2 != 256);
    }

    crc32c = v1;
  }
}

uint64_t sub_100026A18(uint64_t result, char *a2, uint64_t a3)
{
  for (; a3; --a3)
  {
    v3 = *a2++;
    result = crc32c_table[(v3 ^ result)] ^ (result >> 8);
  }

  return result;
}

uint64_t sub_100026A44(uint64_t result, unsigned __int16 *a2, unint64_t a3)
{
  if ((a2 & 7) != 0)
  {
    if (!a3)
    {
      return result;
    }

    if (a2)
    {
      v4 = *a2;
      a2 = (a2 + 1);
      _W8 = v4;
      __asm { CRC32CB         W0, W0, W8 }

      result = _OFF;
      __asm { CRC32CB         W0, W0, W8 }

      --a3;
    }

    if (a3 >= 2 && (a2 & 3) != 0)
    {
      v11 = *a2++;
      _W9 = v11;
      __asm { CRC32CH         W0, W0, W9 }

      result = _OFF;
      __asm { CRC32CH         W0, W0, W9 }

      a3 -= 2;
    }

    if (a3 >= 4 && (a2 & 7) != 0)
    {
      v14 = *a2;
      a2 += 2;
      _W9 = v14;
      __asm { CRC32CW         W0, W0, W9 }

      result = _OFF;
      __asm { CRC32CW         W0, W0, W9 }

      a3 -= 4;
    }
  }

  if (a3 >= 8)
  {
    do
    {
      v17 = *a2;
      a2 += 4;
      _X8 = v17;
      __asm { CRC32CX         W0, W0, X8 }

      result = _OFF;
      __asm { CRC32CX         W0, W0, X8 }

      a3 -= 8;
    }

    while (a3 > 7);
  }

  if (a3 >= 4)
  {
    v20 = *a2;
    a2 += 2;
    _W9 = v20;
    __asm { CRC32CW         W0, W0, W9 }

    result = _OFF;
    __asm { CRC32CW         W0, W0, W9 }

    a3 -= 4;
  }

  if (a3 >= 2)
  {
    v23 = *a2++;
    _W9 = v23;
    __asm { CRC32CH         W0, W0, W9 }

    result = _OFF;
    __asm { CRC32CH         W0, W0, W9 }

    a3 -= 2;
  }

  if (a3)
  {
    _W8 = *a2;
    __asm { CRC32CB         W0, W0, W8 }

    result = _OFF;
    __asm { CRC32CB         W0, W0, W8 }
  }

  return result;
}

uint64_t fext_tree_key_cmp(uint64_t a1, void *a2, int a3, void *a4, int a5, int *a6)
{
  result = 22;
  if (a3 == 16 && a5 == 16)
  {
    if (*a2 >= *a4)
    {
      if (*a2 > *a4)
      {
        v7 = 1;
      }

      else
      {
        v8 = a2[1];
        v9 = a4[1];
        v10 = v8 >= v9;
        v7 = v8 > v9;
        if (!v10)
        {
          v7 = -1;
        }
      }
    }

    else
    {
      v7 = -1;
    }

    result = 0;
    *a6 = v7;
  }

  return result;
}

uint64_t graft_blockmap_lut_tree_key_compare(uint64_t a1, _DWORD *a2, uint64_t a3, _DWORD *a4, uint64_t a5, int *a6)
{
  v6 = *a2 & 0x7FFFFFFF;
  v7 = *a4 & 0x7FFFFFFF;
  v8 = v6 >= v7;
  v9 = v6 > v7;
  if (!v8)
  {
    v9 = -1;
  }

  *a6 = v9;
  return 0;
}

unint64_t fletcher64_set_cksum(unint64_t *a1, uint32x4_t *a2, unint64_t a3, unint64_t a4, int8x16_t a5, int8x16_t a6)
{
  result = sub_100026E90(a2, a3, a4, a5, a6);
  v8 = (HIDWORD(result) + result - 0xFFFFFFFF * ((((HIDWORD(result) + result) * 0x200000003uLL) >> 64) >> 1)) ^ 0xFFFFFFFF;
  *a1 = v8 | (~(v8 + result + ((((v8 + result) * 0x200000003uLL) >> 64) >> 1)) << 32);
  return result;
}

unint64_t fletcher64_verify_cksum(void *a1, uint32x4_t *a2, unint64_t a3, unint64_t a4, int8x16_t a5, int8x16_t a6)
{
  v7 = sub_100026E90(a2, a3, a4, a5, a6);
  v8 = (HIDWORD(v7) + v7 - 0xFFFFFFFF * ((((HIDWORD(v7) + v7) * 0x200000003uLL) >> 64) >> 1)) ^ 0xFFFFFFFF;
  return (v8 | (~(v8 + v7 + ((((v8 + v7) * 0x200000003uLL) >> 64) >> 1)) << 32)) ^ *a1;
}

uint64_t supplemental_tree_destroy(char *a1, int a2, uint64_t a3, unint64_t a4, unint64_t a5, void *a6, __n128 a7)
{
  v10 = a3;
  v12 = fext_tree_key_cmp;
  if (a3 == 5)
  {
    v13 = 0x20000001FLL;
  }

  else
  {
    if (a3 != 6)
    {
      log_err("%s:%d: %s unsupported tree type: %d\n", "supplemental_tree_get_descriptor", 64, a1 + 4040, a3);
      return 45;
    }

    v13 = 32;
    v12 = pfkur_tree_key_cmp;
  }

  v19 = 0xAAAAAAAAAAAAAAAALL;
  if (!a5)
  {
    tree = jfs_get_tree(a1, a3, a4, &v19);
    if (tree)
    {
      return tree;
    }

    goto LABEL_11;
  }

  v20[1] = 0;
  v21 = 0u;
  v25 = 0;
  v23 = 0u;
  v24 = 0u;
  v22 = 0u;
  v20[0] = v12;
  v20[2] = v13;
  if (a2 != 2)
  {
    tree = 22;
    goto LABEL_15;
  }

  tree = btree_get_extended(a1, a2 & 0xFFFF0000, a5, 0, 0, v20, 0, &v19);
  if (tree)
  {
LABEL_15:
    v17 = strerror(tree);
    log_err("%s:%d: %s Failed to get supplemental tree (type %d, oid %llu): %d (%s)\n", "supplemental_tree_destroy", 159, a1 + 4040, v10, a5, tree, v17);
    return tree;
  }

LABEL_11:
  v15 = btree_delete(v19, a4, a6);
  tree = v15;
  if (v15)
  {
    v16 = strerror(v15);
    log_err("%s:%d: %s Failed to delete supplemental tree (type %d): %d (%s)\n", "supplemental_tree_destroy", 167, a1 + 4040, v10, tree, v16);
  }

  obj_release(v19);
  return tree;
}

unint64_t sub_100026E90(uint32x4_t *a1, unint64_t a2, unint64_t a3, int8x16_t a4, int8x16_t a5)
{
  v5 = a3;
  v6 = HIDWORD(a3);
  if ((a2 & 3) == 0)
  {
    for (i = a2 >> 2; i; v6 = v34 + HIDWORD(v34))
    {
      if (i >= 0x16A00)
      {
        v8 = 92672;
      }

      else
      {
        v8 = i;
      }

      i -= v8;
      v9 = veorq_s8(a4, a4);
      v10 = veorq_s8(a5, a5);
      v9.i64[0] = v5;
      v10.i64[0] = v6;
      if (v8 >= 16)
      {
        v11 = *a1;
        v12 = a1[1];
        v13 = a1[2];
        v14 = a1[3];
        a1 += 4;
        v15 = vshlq_n_s64(v9, 4uLL);
        v16 = vmull_u32(*v12.i8, 0xB0000000CLL);
        v17 = vmull_u32(*v13.i8, 0x700000008);
        v18 = vmlal_u32(vmlal_u32(v10, *v11.i8, 0xF00000010), *v14.i8, 0x300000004);
        v19 = vpadalq_u32(vpadalq_u32(vpadalq_u32(v9, v11), v12), v13);
        v20 = v8 < 32;
        for (v8 -= 32; !v20; v8 -= 16)
        {
          v21 = vmlal_high_u32(v16, v11, *qword_100026E50);
          v22 = *a1;
          a1 += 4;
          v11 = v22;
          v23 = vmlal_high_u32(v17, v12, *&qword_100026E50[2]);
          v12 = a1[-3];
          v24 = vpadalq_u32(v19, v14);
          v25 = vmlal_high_u32(vaddq_s64(v18, v15), v13, *&qword_100026E50[4]);
          v13 = a1[-2];
          v26 = vmlal_high_u32(v21, v14, *&qword_100026E50[6]);
          v14 = a1[-1];
          v15 = vshlq_n_s64(v24, 4uLL);
          v16 = vmlal_u32(v26, *v12.i8, 0xB0000000CLL);
          v17 = vmlal_u32(v23, *v13.i8, 0x700000008);
          v18 = vmlal_u32(vmlal_u32(v25, *v22.i8, 0xF00000010), *v14.i8, 0x300000004);
          v19 = vpadalq_u32(vpadalq_u32(vpadalq_u32(v24, v22), v12), v13);
          v20 = v8 < 16;
        }

        v9 = vpadalq_u32(v19, v14);
        v10 = vaddq_s64(vaddq_s64(vmlal_high_u32(vaddq_s64(v18, v15), v13, *&qword_100026E50[4]), vmlal_high_u32(v17, v12, *&qword_100026E50[2])), vmlal_high_u32(vmlal_high_u32(v16, v11, *qword_100026E50), v14, *&qword_100026E50[6]));
      }

      if ((v8 & 8) != 0)
      {
        v27 = *a1;
        a1 += 2;
        v28 = a1[-1];
        v29 = vshlq_n_s64(v9, 3uLL);
        v9 = vpadalq_u32(vpadalq_u32(v9, v27), v28);
        v10 = vaddq_s64(vmlal_high_u32(vmlal_high_u32(vmlal_u32(vmlal_u32(v10, *v27.i8, 0x700000008), *v28.i8, 0x300000004), v27, *&qword_100026E50[4]), v28, *&qword_100026E50[6]), v29);
      }

      if ((v8 & 4) != 0)
      {
        v30 = *a1++;
        v31 = vshlq_n_s64(v9, 2uLL);
        v9 = vpadalq_u32(v9, v30);
        v10 = vaddq_s64(vmlal_high_u32(vmlal_u32(v10, *v30.i8, 0x300000004), v30, *&qword_100026E50[6]), v31);
      }

      v32 = v8 & 3;
      a4 = vpaddq_s64(v9, v9);
      a5 = vpaddq_s64(v10, v10);
      v33 = a4.i64[0];
      v34 = a5.i64[0];
      if (v32)
      {
        do
        {
          v35 = a1->i32[0];
          a1 = (a1 + 4);
          v33 += v35;
          v34 += v33;
          v20 = v32-- <= 1;
        }

        while (!v20);
      }

      v5 = v33 + HIDWORD(v33);
    }
  }

  v36 = v5 + HIDWORD(v5);
  v37 = v6 + HIDWORD(v6);
  if (v36 == 0xFFFFFFFF)
  {
    v36 = 0;
  }

  if (v37 == 0xFFFFFFFF)
  {
    v37 = 0;
  }

  return v36 + (v37 << 32);
}

uint64_t gbitmap_key_compare(uint64_t a1, void *a2, int a3, void *a4, int a5, int *a6)
{
  result = 22;
  if (a3 == 8 && a5 == 8)
  {
    result = 0;
    v7 = *a2 > *a4;
    if (*a2 < *a4)
    {
      v7 = -1;
    }

    *a6 = v7;
  }

  return result;
}

uint64_t sub_10002706C(void *a1)
{
  v1 = a1[7];
  a1[47] = v1;
  a1[48] = v1 + 32;
  return 0;
}

uint64_t sub_100027080(void *a1, uint64_t a2, uint64_t *a3)
{
  if (!a3)
  {
    return 22;
  }

  result = 0;
  v5 = *a3;
  a1[4] = a3[2];
  a1[5] = v5;
  a1[6] = 0;
  return result;
}

uint64_t sub_1000270A8(uint64_t a1, uint64_t a2)
{
  *(a1 + 376) = *(a1 + 56);
  *(a1 + 408) = 8 * *(a1 + 48) - 256;
  if (a2)
  {
    *(a1 + 384) = *(a2 + 24);
  }

  return 0;
}

uint64_t sub_1000270D4(void *a1, uint64_t a2, unint64_t *a3, uint64_t a4, unint64_t a5)
{
  v8 = a1[1];
  v9 = *(*a1 + 392);
  if (v8)
  {
    v10 = a1[1];
  }

  else
  {
    v10 = *(*a1 + 392);
  }

  v37 = a1[2];
  v42 = 0;
  if (v8)
  {
    v11 = obj_modify(v8, 0, a5);
    if (v11)
    {
      v12 = v11;
      if (obj_type(v8) == 13)
      {
        v13 = (v8 + 505);
      }

      else
      {
        v13 = (v8[48] + 212);
      }

      v14 = obj_oid(v8);
      log_err("%s:%d: %s obj_modify(fs %lld) failed: %d\n", "gbitmap_reap", 160, v13, v14, v12);
    }
  }

  v15 = sub_100027468(a1, 0, 0, &v42);
  if (v15)
  {
    v16 = v15;
    if (obj_type(v10) == 13)
    {
      v17 = (v10 + 4040);
    }

    else
    {
      v17 = (*(v10 + 384) + 212);
    }

    log_err("%s:%d: %s Can't get tree: %d\n", "gbitmap_reap", 166, v17, v16);
  }

  if (v42)
  {
    v18 = *a3;
    v40 = 0;
    v41 = v18;
    v39 = 0xAAAAAAAAAAAAAAAALL;
    *&v19 = 0xAAAAAAAAAAAAAAAALL;
    *(&v19 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v38[2] = v19;
    v38[3] = v19;
    v38[0] = v19;
    v38[1] = v19;
    bt_iterator_init(v38, v42, 0, 0, &v41, 8, 8, &v40, 8u);
    v21 = v20;
    v36 = (v10 + 4040);
    v22 = 1023;
    if (v20)
    {
LABEL_31:
      if (v21 != 2)
      {
        if (obj_type(v10) == 13)
        {
          log_err("%s:%d: %s Tree iteration threw %d at cursor %llu\n", "gbitmap_reap", 203, v36, v21, v41);
        }

        else
        {
          log_err("%s:%d: %s Tree iteration threw %d at cursor %llu\n", "gbitmap_reap", 203, (*(v10 + 384) + 212), v21, v41);
        }
      }
    }

    else
    {
      while (!bt_iterator_ended(v38))
      {
        if ((v37 & 0x40000000) != 0 && (v23 = v40, (v40 & 0x8000000000000000) != 0))
        {
          v40 &= ~0x8000000000000000;
          sub_100011A14(v10, 64, v23 & 0x7FFFFFFFFFFFFFFFLL, 1, a5);
        }

        else
        {
          v24 = *(a1 + 4);
          if (v8)
          {
            v25 = obj_oid(v8);
          }

          else
          {
            v25 = 0;
          }

          v26 = *(v9 + 392);
          v27 = v24 & 0xD8000000 | 0x1B;
          v28 = obj_size_phys(a1);
          v29 = obj_delete_and_free_by_oid(v26, v27, v28, v25, v40, a5);
          if (v29)
          {
            v30 = v29;
            if (obj_type(v10) == 13)
            {
              log_err("%s:%d: %s deletion threw %d for cursor %llu, oid %llu, oflags 0x%x\n", "gbitmap_reap", 188, v36, v30, v41, v40, v27);
            }

            else
            {
              log_err("%s:%d: %s deletion threw %d for cursor %llu, oid %llu, oflags 0x%x\n", "gbitmap_reap", 188, (*(v10 + 384) + 212), v30, v41, v40, v27);
            }
          }
        }

        *a3 = v41 + 1;
        if (!v22)
        {
          v31 = 36;
          goto LABEL_41;
        }

        v21 = bt_iterator_next(v38);
        --v22;
        if (v21)
        {
          goto LABEL_31;
        }
      }
    }

    v32 = btree_delete(v42, a5, 0);
    if (v32)
    {
      v33 = v32;
      if (obj_type(v10) != 13)
      {
        v36 = (*(v10 + 384) + 212);
      }

      v34 = obj_oid(v42);
      log_err("%s:%d: %s Tree delete oid %llu threw %d\n", "gbitmap_reap", 208, v36, v34, v33);
    }
  }

  obj_delete_and_free(a1, a5);
  v31 = 0;
LABEL_41:
  if (v42)
  {
    obj_release(v42);
  }

  return v31;
}

uint64_t sub_100027468(void *a1, unint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a1[1])
  {
    v8 = a1[1];
  }

  else
  {
    v8 = *(*a1 + 392);
  }

  *a4 = 0;
  v9 = obj_flags(a1);
  return btree_get(v8, v9 & 0xFFFFFC00, *(a1[47] + 32), a2, 3, a3 != 0, 26, gbitmap_key_compare, a3, a4);
}

uint64_t io_get_device_block_size(int a1)
{
  v7 = -1431655766;
  v2.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v2.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  *&v6.st_blksize = v2;
  *v6.st_qspare = v2;
  v6.st_birthtimespec = v2;
  *&v6.st_size = v2;
  v6.st_mtimespec = v2;
  v6.st_ctimespec = v2;
  *&v6.st_uid = v2;
  v6.st_atimespec = v2;
  *&v6.st_dev = v2;
  memset(&__b, 170, sizeof(__b));
  if (!ioctl(a1, 0x40046418uLL, &v7))
  {
    return v7;
  }

  if (!fstatfs(a1, &__b))
  {
    return __b.f_bsize;
  }

  if (!fstat(a1, &v6))
  {
    return v6.st_blksize;
  }

  v3 = __error();
  v4 = strerror(*v3);
  log_err("%s:%d: can't get the device block size (%s). assuming 512\n", "io_get_device_block_size", 57, v4);
  return 512;
}

uint64_t dev_read_async(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(a1 + 72);
  v8 = *(v7 + 32);
  if (v8)
  {

    return v8();
  }

  else
  {
    v10 = (*(v7 + 24))();
    v11 = v10;
    v12 = *a6;
    if (*a6)
    {
      *(a6 + 96) = v10;
      v12(a6);
    }

    return v11;
  }
}

uint64_t dev_read_extended(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, int a9)
{
  if (a9)
  {
    v9 = *(*(a1 + 72) + 40);
    if (v9)
    {
      return v9();
    }

    else
    {
      return 45;
    }
  }

  else if (a6)
  {
    return dev_read_async(a1, a2, a3, a4, a5, a7);
  }

  else
  {
    return (*(*(a1 + 72) + 24))();
  }
}

uint64_t dev_read_poll(uint64_t a1)
{
  v1 = *(*(a1 + 72) + 56);
  if (v1)
  {
    return v1();
  }

  else
  {
    return 45;
  }
}

uint64_t dev_write_extended(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v7 = *(a1 + 72);
  if (!a7)
  {
    return (*(v7 + 64))();
  }

  v8 = *(v7 + 72);
  if (v8)
  {
    return v8();
  }

  else
  {
    return 45;
  }
}

uint64_t fd_dev_read_poll(uint64_t a1, uint64_t a2)
{
  result = aio_error((a2 + 8));
  if (result == -1)
  {
    return *__error();
  }

  return result;
}

uint64_t sub_10002780C(_DWORD *a1, _DWORD *a2, _DWORD *a3, _DWORD *a4, _DWORD *a5)
{
  if (a2)
  {
    *a2 = a1[22];
  }

  if (a3)
  {
    *a3 = a1[23];
  }

  if (a4)
  {
    *a4 = a1[24];
  }

  if (a5)
  {
    *a5 = a1[25];
  }

  return 0;
}

uint64_t sub_100027850(uint64_t a1, unint64_t a2, unint64_t a3, void *a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, unsigned int a9)
{
  if ((a9 & 0xFFFFFFFA) != 0 || (a8 != 0) == a9 < 4)
  {
    if ((a8 != 0) != a9 < 4)
    {
      v10 = 0;
    }

    else
    {
      v10 = 22;
    }

    if ((a9 & 0xFFFFFFFA) != 0)
    {
      v11 = 45;
    }

    else
    {
      v11 = v10;
    }

    log_err("%s:%d: failed to read blknum 0x%llx size %zu flags 0x%x error %d dev_name = %s\n", "fd_dev_read_extended", 597, a2, a3, a9, v11, (a1 + 212));
    return v11;
  }

  else if (a6)
  {

    return sub_100028704(a1, a2, a3, a4, a5, a7);
  }

  else
  {

    return sub_100028494(a1, a2, a3, a4, a5);
  }
}

uint64_t sub_10002792C(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 8);
  aiocblist = (a2 + 8);
  if (aio_suspend(&aiocblist, 1, 0) || (v5 = aio_return(v3), v5 == -1))
  {
    v4 = *__error();
  }

  else if (v5 >= *(a2 + 32))
  {
    v4 = 0;
  }

  else
  {
    v4 = 5;
  }

  v6 = *a2;
  if (*a2)
  {
    *(a2 + 96) = v4;
    v6(a2);
  }

  return v4;
}

uint64_t sub_1000279B8(uint64_t a1, unint64_t a2, unint64_t a3, char *a4, uint64_t a5, uint64_t a6, unsigned int a7)
{
  if ((a7 & 0xFFFFFFFA) != 0 || (a6 != 0) == a7 < 4)
  {
    if ((a6 != 0) != a7 < 4)
    {
      v9 = 0;
    }

    else
    {
      v9 = 22;
    }

    if ((a7 & 0xFFFFFFFA) != 0)
    {
      v10 = 45;
    }

    else
    {
      v10 = v9;
    }

    log_err("%s:%d: failed to write blknum 0x%llx size %zu flags 0x%x error %d dev_name = %s\n", "fd_dev_write_extended", 845, a2, a3, a7, v10, (a1 + 212));
    return v10;
  }

  else
  {

    return sub_1000287EC(a1, a2, a3, a4, a5, a7);
  }
}

uint64_t sub_100027A5C(uint64_t a1, int a2)
{
  v4 = *(a1 + 24);
  if (v4)
  {
    v5 = *(a1 + 36);
    if (v5)
    {
      result = sub_10002862C(a1, *(a1 + 40), v5, v4, *(a1 + 48));
      if (result)
      {
        return result;
      }

      *(a1 + 36) = 0;
    }
  }

  fsync(*a1);
  v7 = *(a1 + 4);
  if ((v7 & 0x80000000) == 0)
  {
    fsync(v7);
  }

  if (!a2 && (*(a1 + 88) & 2) != 0)
  {
    v9 = ioctl(*a1, 0x80186416uLL, &v10, 0, 0, 2);
  }

  else
  {
    v8 = *a1;
    if ((*(a1 + 64) & 0xF000) == 0x8000)
    {
      v9 = fcntl(v8, 51, 0);
    }

    else
    {
      v9 = ioctl(v8, 0x20006416uLL, 0, v10, v11);
    }
  }

  if (v9 == -1)
  {
    return *__error();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100027B58(uint64_t a1, unint64_t a2, unint64_t a3, int a4)
{
  v4 = *(a1 + 112);
  v5 = v4 > a2;
  v6 = v4 - a2;
  if (!v5 || v6 < a3)
  {
    return 6;
  }

  v10 = *(a1 + 192);
  if (!v10)
  {
    return 45;
  }

  if (a4 != 1)
  {
    return 22;
  }

  v13 = *(a1 + 200);
  if (v13 >= *(a1 + 204) || *(a1 + 208) != 1)
  {
    result = sub_100027C18(a1);
    if (result)
    {
      return result;
    }

    v13 = *(a1 + 200);
    v10 = *(a1 + 192);
  }

  result = 0;
  *(a1 + 200) = v13 + 1;
  v14 = *(a1 + 84);
  v15 = (v10 + 16 * v13);
  *v15 = v14 * a2;
  v15[1] = v14 * a3;
  *(a1 + 208) = 1;
  return result;
}

uint64_t sub_100027C18(uint64_t a1)
{
  v1 = *(a1 + 192);
  if (!v1)
  {
    return 45;
  }

  v3 = *(a1 + 200);
  if (!v3)
  {
    return 0;
  }

  v11 = 0u;
  v12 = 0u;
  v10 = 0u;
  v7 = v1;
  v4 = *(a1 + 208);
  v8 = v3;
  v9 = v4;
  if (ioctl(*a1, 0x80406459uLL, &v7) == -1)
  {
    v5 = *__error();
    if (v5)
    {
      log_err("%s:%d: hinting %d blocks from hint_list failed w/: %d (entry %lld:%lld ; %lld:%lld)\n", "fd_dev_hint_flush", 936, *(a1 + 200), v5, **(a1 + 192), *(*(a1 + 192) + 8), *(*(a1 + 192) + 16), *(*(a1 + 192) + 24));
    }
  }

  else
  {
    v5 = 0;
  }

  bzero(*(a1 + 192), 16 * *(a1 + 204));
  *(a1 + 200) = 0;
  return v5;
}

uint64_t sub_100027CFC(uint64_t a1)
{
  v2 = (a1 + 212);
  v3 = strlen((a1 + 212));
  v4 = *(a1 + 24);
  if (!v4)
  {
    v7 = 0;
    goto LABEL_10;
  }

  v5 = *(a1 + 36);
  if (!v5)
  {
    v7 = 0;
LABEL_9:
    _apfs_free(v4, (*(a1 + 84) * *(a1 + 32)));
    *(a1 + 24) = 0;
    goto LABEL_10;
  }

  v6 = sub_10002862C(a1, *(a1 + 40), v5, v4, *(a1 + 48));
  v7 = v6;
  if (v6)
  {
    log_err("%s:%d: Hit an error flushing the cache, %d dev_name = %s\n", "fd_dev_close", 333, v6, v2);
  }

  *(a1 + 36) = 0;
  v4 = *(a1 + 24);
  if (v4)
  {
    goto LABEL_9;
  }

LABEL_10:
  if (*(a1 + 192))
  {
    v8 = sub_100027C18(a1);
    v7 = v8;
    if (v8)
    {
      log_err("%s:%d: Hit an error flushing the hint list, %d dev_name = %s\n", "fd_dev_close", 346, v8, v2);
    }

    _apfs_free(*(a1 + 192), 16 * *(a1 + 204));
    *(a1 + 192) = 0;
  }

  if (close(*a1))
  {
    v7 = *__error();
  }

  v9 = *(a1 + 4);
  if ((v9 & 0x80000000) == 0 && close(v9))
  {
    v7 = *__error();
  }

  v10 = *(a1 + 8);
  if ((v10 & 0x80000000) == 0 && close(v10))
  {
    v7 = *__error();
  }

  _apfs_free(a1, v3 + 216);
  return v7;
}

uint64_t sub_100027E60(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 112) * *(a1 + 84) / a2;
  *(a1 + 84) = a2;
  *(a1 + 112) = v2;
  return 0;
}

uint64_t sub_100027EAC(uint64_t a1)
{
  v20 = -1431655766;
  v18 = -1431655766;
  v19 = -1431655766;
  v17 = -1431655766;
  v2.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v2.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  *&v16.st_blksize = v2;
  *v16.st_qspare = v2;
  v16.st_birthtimespec = v2;
  *&v16.st_size = v2;
  v16.st_mtimespec = v2;
  v16.st_ctimespec = v2;
  *&v16.st_uid = v2;
  v16.st_atimespec = v2;
  *&v16.st_dev = v2;
  if (fstat(*a1, &v16))
  {
    v3 = __error();
    v4 = *v3;
    log_err("%s:%d: Couldn't fstat dev_fd (%d), err %d dev_name = %s\n", "dev_init_common", 1035, *a1, *v3, (a1 + 212));
  }

  else
  {
    *(a1 + 72) = apfs_userspace_io;
    device_block_size = io_get_device_block_size(*a1);
    *(a1 + 80) = device_block_size;
    *(a1 + 84) = device_block_size;
    v6 = *a1;
    v22 = 0xAAAAAAAAAAAAAAAALL;
    v7.tv_sec = 0xAAAAAAAAAAAAAAAALL;
    v7.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
    *&v21.st_blksize = v7;
    *v21.st_qspare = v7;
    v21.st_birthtimespec = v7;
    *&v21.st_size = v7;
    v21.st_mtimespec = v7;
    v21.st_ctimespec = v7;
    *&v21.st_uid = v7;
    v21.st_atimespec = v7;
    *&v21.st_dev = v7;
    if (ioctl(v6, 0x40086419uLL, &v22))
    {
      if (fstat(v6, &v21))
      {
        v8 = __error();
        v9 = strerror(*v8);
        log_err("%s:%d: can't get block count (%s)\n", "io_get_num_device_blocks", 78, v9);
        v10 = 0;
      }

      else
      {
        st_size = v21.st_size;
        v10 = st_size / io_get_device_block_size(v6);
      }
    }

    else
    {
      v10 = v22;
    }

    *(a1 + 112) = v10;
    io_get_device_features(*a1, &v20, &v19, &v18, &v17);
    v12 = v19;
    *(a1 + 88) = v20;
    *(a1 + 92) = v12;
    v13 = v17;
    *(a1 + 96) = v18;
    *(a1 + 100) = v13;
    *(a1 + 64) = v16.st_mode;
    *(a1 + 104) = 0;
    v14 = *(a1 + 80) >> 4;
    *(a1 + 204) = *(a1 + 80) >> 4;
    v4 = 0;
    *(a1 + 192) = _apfs_calloc_typed(v14, 0x10uLL, 0x1000040451B5BE8uLL);
    *(a1 + 200) = 0;
  }

  return v4;
}

uint64_t dev_init(char *a1, int a2, int **a3)
{
  if (!strncmp(a1, "/dev/", 5uLL))
  {
    v6 = 5;
  }

  else
  {
    v6 = 0;
  }

  v7 = &a1[v6];
  v8 = strlen(&a1[v6]);
  *a3 = 0;
  v9 = _apfs_calloc_typed(1uLL, v8 + 216, 0xB22E4C5DuLL);
  if (v9)
  {
    v10 = v9;
    v11.tv_sec = 0xAAAAAAAAAAAAAAAALL;
    v11.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
    *&v34.st_blksize = v11;
    *v34.st_qspare = v11;
    v34.st_birthtimespec = v11;
    *&v34.st_size = v11;
    v34.st_mtimespec = v11;
    v34.st_ctimespec = v11;
    *&v34.st_uid = v11;
    v34.st_atimespec = v11;
    *&v34.st_dev = v11;
    v9[17] = 0;
    if (stat(a1, &v34) || (v34.st_mode & 0xF000) != 0x4000)
    {
      v14 = device_container_path(a1, 0);
      if (v14)
      {
        v15 = v14;
        v10[2] = -1;
        v16 = open(a1, a2 & 0xFFFFFFCF | 0x10);
        v10[1] = v16;
        if (v16 < 0)
        {
          v24 = __error();
          v13 = *v24;
          v25 = strerror(*v24);
          log_err("%s:%d: failed to open volume device %s: %s\n", "dev_init", 1163, a1, v25);
        }

        else
        {
          v17 = open(v15, a2 & 0xFFFFFFCF | 0x10);
          *v10 = v17;
          if ((v17 & 0x80000000) == 0)
          {
LABEL_30:
            v30 = sub_100027EAC(v10);
            if (v30)
            {
              v13 = v30;
              free(v15);
LABEL_38:
              _apfs_free(v10, v8 + 216);
              return v13;
            }

            strlcpy(v10 + 212, v7, v8 + 1);
            free(v15);
LABEL_39:
            v13 = 0;
            *a3 = v10;
            return v13;
          }

          v18 = __error();
          v13 = *v18;
          v19 = strerror(*v18);
          log_err("%s:%d: failed to open container device %s: %s\n", "dev_init", 1169, v15, v19);
          close(v10[1]);
        }
      }

      else
      {
        *(v10 + 1) = -1;
        v20 = open(a1, a2);
        *v10 = v20;
        if ((v20 & 0x80000000) == 0)
        {
LABEL_29:
          v15 = 0;
          goto LABEL_30;
        }

        v21 = 30;
        while (*__error() == 16 && v21 != 0)
        {
          log_err("%s:%d: open %s hit EBUSY, attempts remaining: %u dev_name = %s\n", "dev_init", 1189, a1, v21, v7);
          sleep(1u);
          v23 = open(a1, a2);
          *v10 = v23;
          --v21;
          if ((v23 & 0x80000000) == 0)
          {
            v15 = 0;
            goto LABEL_30;
          }
        }

        v15 = 0;
        v13 = *__error();
      }
    }

    else
    {
      memset(__b, 170, sizeof(__b));
      memset(v36, 170, sizeof(v36));
      memset(__str, 170, sizeof(__str));
      snprintf(__b, 0x400uLL, "%s/apfs", a1);
      snprintf(__str, 0x400uLL, "%s/apfs_data", a1);
      snprintf(v36, 0x400uLL, "%s/nx", a1);
      v12 = open(__b, a2);
      v10[1] = v12;
      if (v12 < 0)
      {
        v13 = *__error();
      }

      else
      {
        v13 = 0;
      }

      v26 = open(__str, a2);
      v10[2] = v26;
      if (v26 < 0)
      {
        v13 = *__error();
      }

      v27 = open(v36, a2);
      v28 = v27;
      *v10 = v27;
      v29 = v10[1];
      if ((v29 & 0x80000000) == 0 && (v10[2] & 0x80000000) == 0 && (v27 & 0x80000000) == 0)
      {
        goto LABEL_29;
      }

      if (!v13)
      {
        v13 = *__error();
        v28 = *v10;
        v29 = v10[1];
      }

      v31 = v10[2];
      v32 = strerror(v13);
      log_err("%s:%d: failed to open apfs/nx special devices ['%s'(%d) / '%s'(%d) / '%s'(%d)] - err %d (%s) dev_name = '%s'\n", "dev_init", 1150, __b, v29, __str, v31, v36, v28, v13, v32, v7);
      close(*v10);
      close(v10[1]);
      close(v10[2]);
      v15 = 0;
    }

    free(v15);
    if (v13)
    {
      goto LABEL_38;
    }

    goto LABEL_39;
  }

  return 12;
}

uint64_t sub_100028494(const char *a1, unint64_t a2, unint64_t a3, void *a4, uint64_t a5)
{
  v10 = sub_1000285A4(a1, a2, a3);
  if (!v10)
  {
    v11 = *(a1 + 21);
    if ((a2 & 0x8000000000000000) == 0 && is_mul_ok(a2, v11) && ((a2 * v11) & 0x8000000000000000) == 0 && is_mul_ok(a3, v11))
    {
      v13 = a3 * v11;
      if (!a5 || (v14 = *(a1 + 1), v14 < 0))
      {
        v14 = *a1;
      }

      v15 = pread(v14, a4, a3 * v11, a2 * v11);
      if (v15 < 0)
      {
        v16 = __error();
        v10 = *v16;
        log_err("%s:%d: blknum 0x%llx size %zu, error %d dev_name = %s\n", "fd_dev_read_helper", 484, a2, a3, *v16, a1 + 212);
      }

      else if (v15 == v13)
      {
        return 0;
      }

      else
      {
        return 5;
      }
    }

    else
    {
      log_err("%s:%d: blknum %lld size %zu blksize %u invalid, dev_name = %s\n", "fd_dev_read_helper", 448, a2, a3, *(a1 + 21), a1 + 212);
      return 22;
    }
  }

  return v10;
}

uint64_t sub_1000285A4(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v6 = *(a1 + 24);
  if (v6)
  {
    v7 = *(a1 + 36);
    if (v7)
    {
      v8 = *(a1 + 40);
      if (a3 + a2 > v8 && v8 + v7 > a2)
      {
        result = sub_10002862C(a1, v8, v7, v6, *(a1 + 48));
        if (result)
        {
          return result;
        }

        *(a1 + 36) = 0;
      }
    }
  }

  v10 = *(a1 + 112);
  if (v10 - a2 >= a3 && v10 > a2)
  {
    return 0;
  }

  else
  {
    return 6;
  }
}

uint64_t sub_10002862C(uint64_t a1, unint64_t a2, unint64_t a3, void *__buf, uint64_t a5)
{
  v5 = *(a1 + 112);
  v6 = v5 > a2;
  v7 = v5 - a2;
  if (!v6 || v7 < a3)
  {
    return 6;
  }

  v10 = *(a1 + 84);
  if ((a2 & 0x8000000000000000) == 0 && is_mul_ok(a2, v10) && (v11 = a2 * v10, ((a2 * v10) & 0x8000000000000000) == 0) && is_mul_ok(a3, v10))
  {
    v12 = a3 * v10;
    if (!a5 || (v13 = *(a1 + 4), v13 < 0))
    {
      v13 = *a1;
    }

    v14 = pwrite(v13, __buf, v12, v11);
    if (v14 < 0)
    {
      return *__error();
    }

    else if (v14 == v12)
    {
      return 0;
    }

    else
    {
      return 5;
    }
  }

  else
  {
    log_err("%s:%d: blknum %lld size %zu blksize %u invalid, dev_name = %s\n", "_fd_dev_write", 702, a2, a3, *(a1 + 84), (a1 + 212));
    return 22;
  }
}

uint64_t sub_100028704(int *a1, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_1000285A4(a1, a2, a3);
  if (!v12)
  {
    *(a6 + 8) = 0u;
    v14 = (a6 + 8);
    *(a6 + 88) = a5;
    *(a6 + 24) = 0u;
    *(a6 + 40) = 0u;
    *(a6 + 56) = 0u;
    *(a6 + 72) = 0u;
    v15 = a1[21];
    *(a6 + 16) = v15 * a2;
    *(a6 + 24) = a4;
    *(a6 + 32) = v15 * a3;
    if (!a5 || (v16 = a1[1], v16 < 0))
    {
      v16 = *a1;
    }

    v14->aio_fildes = v16;
    if (!aio_read(v14))
    {
      return 0;
    }

    if (*__error() == 35)
    {
      v12 = 16;
    }

    else
    {
      v12 = *__error();
      if (!v12)
      {
        return v12;
      }
    }
  }

  v13 = *a6;
  if (*a6)
  {
    *(a6 + 96) = v12;
    v13(a6);
  }

  return v12;
}

uint64_t sub_1000287EC(uint64_t a1, unint64_t a2, unint64_t a3, char *__buf, uint64_t a5, int a6)
{
  v8 = __buf;
  v9 = a3;
  v10 = a2;
  v12 = *(a1 + 24);
  if (*(a1 + 60))
  {
    if (!v12)
    {
      v13 = *(a1 + 84);
      v14 = v13 <= 0x100000 ? 0x100000 / v13 : 1;
      *(a1 + 32) = v14;
      v16 = _apfs_malloc_typed(v14 * v13, 0x835B50A5uLL);
      *(a1 + 24) = v16;
      *(a1 + 36) = 0;
      if (!v16)
      {
        return 12;
      }
    }
  }

  else if (!v12)
  {

    return sub_10002862C(a1, a2, a3, __buf, a5);
  }

  if (!v9)
  {
    return 0;
  }

  v17 = *(a1 + 36);
  while (1)
  {
    while (1)
    {
      v18 = v9 <= *(a1 + 32) - v17 ? v9 : *(a1 + 32) - v17;
      if ((a6 & 4) != 0 || ((*(a1 + 56) ^ a6) & 1) != 0 || v10 != *(a1 + 40) + v17)
      {
        break;
      }

      if (*(a1 + 48) != a5 || v18 == 0)
      {
        break;
      }

      memcpy((*(a1 + 24) + *(a1 + 84) * v17), v8, *(a1 + 84) * v18);
      v17 = *(a1 + 36) + v18;
      *(a1 + 36) = v17;
      v10 += v18;
      v9 -= v18;
      v8 += *(a1 + 84) * v18;
      if (!v9)
      {
        return 0;
      }
    }

    if (v17)
    {
      result = sub_10002862C(a1, *(a1 + 40), v17, *(a1 + 24), *(a1 + 48));
      if (result)
      {
        break;
      }
    }

    v17 = 0;
    *(a1 + 36) = 0;
    *(a1 + 40) = v10;
    *(a1 + 48) = a5;
    *(a1 + 56) = a6;
  }

  return result;
}

uint64_t io_container_is_external(io_object_t a1)
{
  v1 = a1;
  IOObjectRetain(a1);
  if (!v1)
  {
    return 0;
  }

  iterator = -1431655766;
  while (1)
  {
    parent = -1431655766;
    if (IOObjectConformsTo(v1, "AppleAPFSContainerScheme"))
    {
      break;
    }

    if (IOObjectConformsTo(v1, "IOBlockStorageDevice"))
    {
      goto LABEL_15;
    }

    if (IORegistryEntryGetParentEntry(v1, "IOService", &parent))
    {
      parent = 0;
    }

    IOObjectRelease(v1);
    v1 = parent;
    if (!parent)
    {
      return 0;
    }
  }

  v3 = IORegistryEntrySearchCFProperty(v1, "IOService", @"Device Characteristics", kCFAllocatorDefault, 3u);
  if (v3)
  {
    v4 = v3;
    Value = CFDictionaryGetValue(v3, @"Target Disk Mode");
    if (Value)
    {
      v6 = CFBooleanGetValue(Value);
      CFRelease(v4);
      if (v6)
      {
LABEL_15:
        v2 = 0;
        goto LABEL_16;
      }
    }

    else
    {
      CFRelease(v4);
    }
  }

  if (IORegistryEntryGetParentIterator(v1, "IOService", &iterator))
  {
    goto LABEL_15;
  }

  while (1)
  {
    while (1)
    {
      v8 = IOIteratorNext(iterator);
      if (!v8)
      {
        v2 = 0;
        goto LABEL_32;
      }

      v9 = v8;
      if (!sub_100028BF0(v8, @"image-format-read-only"))
      {
        break;
      }

LABEL_28:
      IOObjectRelease(v9);
    }

    if (sub_100028BF0(v9, @"Removable"))
    {
      break;
    }

    v10 = IORegistryEntrySearchCFProperty(v9, "IOService", @"Protocol Characteristics", kCFAllocatorDefault, 3u);
    if (!v10)
    {
      goto LABEL_28;
    }

    v11 = v10;
    TypeID = CFDictionaryGetTypeID();
    if (TypeID != CFGetTypeID(v11) || (v13 = CFDictionaryGetValue(v11, @"Physical Interconnect Location")) == 0 || (v14 = v13, v15 = CFStringGetTypeID(), v15 != CFGetTypeID(v14)))
    {
      CFRelease(v11);
      goto LABEL_28;
    }

    v16 = CFEqual(v14, @"Internal");
    CFRelease(v11);
    IOObjectRelease(v9);
    if (!v16)
    {
      goto LABEL_31;
    }
  }

  IOObjectRelease(v9);
LABEL_31:
  v2 = 1;
LABEL_32:
  IOObjectRelease(iterator);
LABEL_16:
  IOObjectRelease(v1);
  return v2;
}

BOOL sub_100028BF0(io_registry_entry_t a1, CFStringRef key)
{
  v2 = IORegistryEntrySearchCFProperty(a1, "IOService", key, kCFAllocatorDefault, 3u);
  if (!v2)
  {
    return 0;
  }

  v3 = v2 == kCFBooleanTrue;
  CFRelease(v2);
  return v3;
}

uint64_t io_get_device_features(int a1, dev_t *a2, _DWORD *a3, _DWORD *a4, dev_t *a5)
{
  if (a2)
  {
    v27.st_dev = -1431655766;
    if (ioctl(a1, 0x4004644CuLL, &v27))
    {
      if (*__error() != 25)
      {
        v10 = __error();
        v11 = strerror(*v10);
        log_err("%s:%d: can't get features for device (%s)\n", "io_get_device_features", 180, v11);
      }

      st_dev = 0;
    }

    else
    {
      st_dev = v27.st_dev;
    }

    *a2 = st_dev;
  }

  if (a3)
  {
    *a3 = (fcntl(a1, 3) & 3) != 0;
  }

  if (a4)
  {
    v13.tv_sec = 0xAAAAAAAAAAAAAAAALL;
    v13.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
    *&v27.st_blksize = v13;
    *v27.st_qspare = v13;
    v27.st_birthtimespec = v13;
    *&v27.st_size = v13;
    v27.st_mtimespec = v13;
    v27.st_ctimespec = v13;
    *&v27.st_uid = v13;
    v27.st_atimespec = v13;
    *&v27.st_dev = v13;
    if (!fstat(a1, &v27) && (v27.st_mode & 0xB000 | 0x4000) == 0x6000)
    {
      v14 = IOServiceMatching("IOMedia");
      if (!v14)
      {
        goto LABEL_13;
      }

      v25 = v27.st_rdev & 0xFFFFFF;
      valuePtr = HIBYTE(v27.st_rdev);
      v18 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &valuePtr);
      if (v18)
      {
        v19 = v18;
        CFDictionarySetValue(v14, @"BSD Major", v18);
        CFRelease(v19);
      }

      v20 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &v25);
      if (v20)
      {
        v21 = v20;
        CFDictionarySetValue(v14, @"BSD Minor", v20);
        CFRelease(v21);
      }

      MatchingService = IOServiceGetMatchingService(kIOMasterPortDefault, v14);
      if (MatchingService)
      {
        v23 = MatchingService;
        LODWORD(v14) = io_container_is_external(MatchingService);
        IOObjectRelease(v23);
        goto LABEL_13;
      }

      log_debug("%s:%d: fd %d is type %o rdev %d (%d, %d): I/O registry entry not found\n", "io_get_device_features", 228, a1, v27.st_mode & 0xF000, v27.st_rdev, HIBYTE(v27.st_rdev), v27.st_rdev & 0xFFFFFF);
    }

    LODWORD(v14) = 0;
LABEL_13:
    *a4 = v14;
  }

  if (a5)
  {
    v27.st_dev = -1431655766;
    if (ioctl(a1, 0x4004644FuLL, &v27))
    {
      if (*__error() != 25)
      {
        v15 = __error();
        v16 = strerror(*v15);
        log_err("%s:%d: can't get solidstate for device (%s)\n", "io_get_device_features", 244, v16);
      }

      v17 = 1;
    }

    else
    {
      v17 = v27.st_dev;
    }

    *a5 = v17;
  }

  return 0;
}

uint64_t get_volume_io_object_from_snapshot(io_object_t *a1, _BYTE *a2)
{
  if (a2)
  {
    *a2 = 0;
  }

  v4 = IOObjectConformsTo(*a1, "AppleAPFSSnapshot");
  v5 = *a1;
  if (v4)
  {
    parent = -1431655766;
    if (IORegistryEntryGetParentEntry(v5, "IOService", &parent))
    {
      return 0;
    }

    IOObjectRelease(*a1);
    v5 = parent;
    *a1 = parent;
    if (a2)
    {
      *a2 = 1;
    }
  }

  result = IOObjectConformsTo(v5, "AppleAPFSVolume");
  if (result)
  {
    return *a1;
  }

  return result;
}

unint64_t device_container_path(char *a1, _DWORD *a2)
{
  if (!device_is_volume(a1))
  {
    return 0;
  }

  result = strrchr(a1, 115);
  if (result)
  {
    v5 = result;
    result = strtoul((result + 1), 0, 10);
    if (result)
    {
      v6 = result;
      result = strndup(a1, v5 - a1);
      if (result)
      {
        if (a2)
        {
          *a2 = v6 - 1;
        }
      }
    }
  }

  return result;
}

BOOL device_is_volume(const char *a1)
{
  v1 = a1;
  if (!strncmp(a1, "/dev/", 5uLL))
  {
    v2 = *(v1 + 5);
    v1 += 5;
    if (v2 == 114)
    {
      ++v1;
    }
  }

  v3 = IOBSDNameMatching(kIOMasterPortDefault, 0, v1);
  MatchingService = IOServiceGetMatchingService(kIOMasterPortDefault, v3);
  if (!MatchingService)
  {
    return 0;
  }

  v5 = MatchingService;
  v6 = IOObjectConformsTo(MatchingService, "AppleAPFSVolume") != 0;
  IOObjectRelease(v5);
  return v6;
}

uint64_t get_first_child_of_class(io_registry_entry_t a1, const char *a2)
{
  iterator = -1431655766;
  if (IORegistryEntryGetChildIterator(a1, "IOService", &iterator))
  {
    return 0;
  }

  while (1)
  {
    v4 = IOIteratorNext(iterator);
    v3 = v4;
    if (!v4 || IOObjectConformsTo(v4, a2))
    {
      break;
    }

    IOObjectRelease(v3);
  }

  IOObjectRelease(iterator);
  return v3;
}

uint64_t fsindex_parse(char *a1, int a2)
{
  v4 = strrchr(a1, 115);
  if (!v4)
  {
    return 0xFFFFFFFFLL;
  }

  if (a2)
  {
    v5 = v4 - 1;
    while (v5 > a1)
    {
      v7 = *v5--;
      v6 = v7;
      if ((v7 - 48) >= 0xA)
      {
        if (v6 != 115)
        {
          return 0xFFFFFFFFLL;
        }

        v4 = v5 + 1;
        goto LABEL_8;
      }
    }

    return 0xFFFFFFFFLL;
  }

LABEL_8:
  if (v4 <= a1 || *(v4 - 1) == 47)
  {
    return 0xFFFFFFFFLL;
  }

  return strtoul(v4 + 1, 0, 10) - 1;
}

const char *get_apfs_io_object(const char *result)
{
  if (result)
  {
    v1 = result;
    if (!strncmp(result, "/dev/", 5uLL))
    {
      v2 = *(v1 + 5);
      v1 += 5;
      if (v2 == 114)
      {
        ++v1;
      }
    }

    v3 = IOBSDNameMatching(kIOMasterPortDefault, 0, v1);

    return IOServiceGetMatchingService(kIOMasterPortDefault, v3);
  }

  return result;
}

const char *get_volume_io_object(const char *a1, _BYTE *a2)
{
  result = get_apfs_io_object(a1);
  object = result;
  if (result)
  {
    volume_io_object_from_snapshot = get_volume_io_object_from_snapshot(&object, a2);
    result = object;
    if (!volume_io_object_from_snapshot)
    {
      IOObjectRelease(object);
      return 0;
    }
  }

  return result;
}

uint64_t physical_store_to_container(io_registry_entry_t a1)
{
  v9 = -1431655766;
  iterator = -1431655766;
  object = -1431655766;
  if (IORegistryEntryGetChildIterator(a1, "IOService", &iterator))
  {
    return 0;
  }

  v2 = IOIteratorNext(iterator);
  if (!v2)
  {
LABEL_19:
    v1 = 0;
    v5 = iterator;
    goto LABEL_21;
  }

  v3 = v2;
  while (1)
  {
    if (!IOObjectConformsTo(v3, "AppleAPFSContainerScheme") || IORegistryEntryGetChildIterator(v3, "IOService", &v9))
    {
      goto LABEL_18;
    }

    v4 = IOIteratorNext(v9);
    if (v4)
    {
      break;
    }

LABEL_17:
    IOObjectRelease(v9);
LABEL_18:
    IOObjectRelease(v3);
    v3 = IOIteratorNext(iterator);
    if (!v3)
    {
      goto LABEL_19;
    }
  }

  v5 = v4;
  while (1)
  {
    if (!IOObjectConformsTo(v5, "AppleAPFSMedia") || IORegistryEntryGetChildIterator(v5, "IOService", &object))
    {
      goto LABEL_16;
    }

    v6 = IOIteratorNext(object);
    if (v6)
    {
      break;
    }

LABEL_15:
    IOObjectRelease(object);
LABEL_16:
    IOObjectRelease(v5);
    v5 = IOIteratorNext(v9);
    if (!v5)
    {
      goto LABEL_17;
    }
  }

  v1 = v6;
  while (!IOObjectConformsTo(v1, "AppleAPFSContainer"))
  {
    IOObjectRelease(v1);
    v1 = IOIteratorNext(object);
    if (!v1)
    {
      goto LABEL_15;
    }
  }

  IOObjectRelease(iterator);
  IOObjectRelease(v9);
  IOObjectRelease(object);
  IOObjectRelease(v3);
LABEL_21:
  IOObjectRelease(v5);
  return v1;
}

uint64_t apfs_container_iouc(char *__s, _DWORD *a2, io_connect_t *a3, io_registry_entry_t *a4, int a5)
{
  parent = -1431655766;
  if (a2)
  {
    v9 = strrchr(__s, 47);
    if (v9)
    {
      v10 = v9 + 1;
    }

    else
    {
      v10 = __s;
    }

    v20 = 0;
    volume_io_object = get_volume_io_object(v10, &v20);
    if (volume_io_object)
    {
      v12 = volume_io_object;
      if (IORegistryEntryGetParentEntry(volume_io_object, "IOService", &parent))
      {
        v13 = 49158;
LABEL_24:
        IOObjectRelease(v12);
        return v13;
      }

      if (IOObjectConformsTo(parent, "AppleAPFSContainer"))
      {
        v17 = fsindex_parse(v10, v20);
        *a2 = v17;
        if (v17 != -1)
        {
          first_child_of_class = parent;
LABEL_17:
          v13 = IOServiceOpen(first_child_of_class, mach_task_self_, 0, a3);
          v18 = parent;
          if (a4 && !v13)
          {
            *a4 = parent;
            goto LABEL_24;
          }

LABEL_23:
          IOObjectRelease(v18);
          goto LABEL_24;
        }

        v13 = 49154;
      }

      else
      {
        v13 = 49231;
      }

      v18 = parent;
      goto LABEL_23;
    }
  }

  else
  {
    apfs_io_object = get_apfs_io_object(__s);
    if (apfs_io_object)
    {
      v12 = apfs_io_object;
      first_child_of_class = get_first_child_of_class(apfs_io_object, "AppleAPFSContainer");
      parent = first_child_of_class;
      if (!first_child_of_class)
      {
        if (!a5 || (first_child_of_class = physical_store_to_container(v12), (parent = first_child_of_class) == 0))
        {
          v13 = 49231;
          goto LABEL_24;
        }
      }

      goto LABEL_17;
    }
  }

  return 49154;
}

void jobj_release(uint64_t a1, unsigned __int8 *a2)
{
  if (a2)
  {
    switch(*a2)
    {
      case 1u:
        _apfs_free(*(a2 + 9), *(a2 + 32));
        goto LABEL_21;
      case 2u:
        v4 = a2;
        v3 = 40;
        goto LABEL_27;
      case 3u:
        if ((*(a2 + 48) & 0xF000) == 0xA000)
        {
          v5 = *(a2 + 44);
          if (v5)
          {
            _apfs_free(v5, *(a2 + 90));
            *(a2 + 44) = 0;
          }
        }

        xf_release((a2 + 408));
        if ((a2[117] & 0x10) != 0)
        {
          free_rwlock((a2 + 448));
          free_rwlock((a2 + 120));
          *(a2 + 14) &= ~0x100000000000uLL;
        }

        _apfs_zfree(a2, 2u);
        return;
      case 4u:
      case 5u:
      case 7u:
      case 0xBu:
        goto LABEL_3;
      case 6u:
      case 0xCu:
        v4 = a2;
        v3 = 24;
        goto LABEL_27;
      case 8u:
        v4 = a2;
        v3 = 56;
        goto LABEL_27;
      case 9u:
        xf_release((a2 + 32));
        _apfs_free(*(a2 + 8), *(a2 + 31));
        goto LABEL_26;
      case 0xAu:
      case 0x12u:
        xf_release((a2 + 64));
        v4 = a2;
        v3 = 96;
        goto LABEL_27;
      case 0xDu:
        v6 = a2[16];
        if (v6 == 2)
        {
          goto LABEL_20;
        }

        if (v6 != 1)
        {
          return;
        }

LABEL_3:
        v3 = *(a2 + 1);
        v4 = a2;
LABEL_27:

        _apfs_free(v4, v3);
        break;
      case 0x10u:
LABEL_20:
        xf_release((a2 + 56));
LABEL_21:
        v4 = a2;
        v3 = 80;
        goto LABEL_27;
      case 0x11u:
        v4 = a2;
        v3 = 32;
        goto LABEL_27;
      case 0x13u:
        xf_release((a2 + 48));
LABEL_26:
        v4 = a2;
        v3 = 72;
        goto LABEL_27;
      default:
        log_err("%s:%d: *** Can't release unknown obj type %d\n", "jobj_release", 2834, *a2);
        return;
    }
  }
}

const char *make_jkey_from_jobj(const char *result, unsigned __int8 *a2, uint64_t a3, int *a4)
{
  v7 = result;
  v8 = *a2;
  v9 = *a2;
  v10 = v8 << 60;
  v11 = (v8 & 0xF0) == 0;
  v12 = 0xE000000000000000;
  if (v11)
  {
    v12 = v10;
  }

  *a3 = v12 & 0xF000000000000000 | *(a2 + 1) & 0xFFFFFFFFFFFFFFFLL;
  if (v9 >= 0x10)
  {
    if ((*(*(result + 47) + 57) & 2) == 0)
    {
      v13 = sub_1000043D4(*(result + 49));
      result = log_corrupt(v13, "%s:%d: %s ***: expanded obj type %d (obj_id %llu) found on unsupported volume\n", "make_jkey_from_jobj", 1209, v7 + 4040, *a2, *(a2 + 1));
      *a4 = 0;
      return result;
    }

    if ((v9 & 0xFC) == 0x10)
    {
      *(a3 + 8) = v9;
    }

    else
    {
      v14 = sub_1000043D4(*(result + 49));
      result = log_corrupt(v14, "%s:%d: %s Cannot make large jkey from unknown type %d (obj_id %llu)\n", "make_large_jkey_header_from_jobj", 1186, v7 + 4040, *a2, *(a2 + 1));
      v9 = *a2;
    }
  }

  switch(v9)
  {
    case 4u:
      v20 = *(a2 + 10);
      *(a3 + 8) = v20;
      result = memcpy((a3 + 10), a2 + 24, v20);
      v21 = *(a2 + 10);
      goto LABEL_23;
    case 5u:
    case 8u:
      *(a3 + 8) = *(a2 + 2);
      v15 = 16;
      goto LABEL_26;
    case 9u:
      v17 = *(a2 + 31);
      if ((*(*(v7 + 47) + 56) & 9) != 0)
      {
        *(a3 + 8) = *(a2 + 31) & 0x3FF | (*(a2 + 14) << 10);
        v18 = 12;
        v19 = 12;
      }

      else
      {
        *(a3 + 8) = v17;
        v18 = 10;
        v19 = 10;
      }

      result = memcpy((a3 + v18), *(a2 + 8), v17);
      v15 = v19 + *(a2 + 31);
      goto LABEL_26;
    case 0xAu:
      v15 = 96;
      goto LABEL_26;
    case 0xBu:
      v22 = *(a2 + 12);
      *(a3 + 8) = v22;
      result = memcpy((a3 + 10), a2 + 26, v22);
      v21 = *(a2 + 12);
LABEL_23:
      v15 = v21 + 10;
      goto LABEL_26;
    case 0xDu:
      *a4 = 16;
      *(a3 + 8) = __ROR8__(*(a2 + 2), 8);
      return result;
    case 0xEu:
      *a4 = 0;
      v16 = sub_1000043D4(*(v7 + 49));
      return log_corrupt(v16, "%s:%d: %s ***: expanded type seen on in-memory obj!\n", "make_jkey_from_jobj", 1324, v7 + 4040);
    case 0x10u:
    case 0x13u:
      *(a3 + 12) = *(a2 + 1);
      v15 = 28;
      goto LABEL_26;
    case 0x11u:
      *(a3 + 12) = *(a2 + 2);
      v15 = 20;
      goto LABEL_26;
    case 0x12u:
      v15 = 12;
      goto LABEL_26;
    default:
      v15 = 8;
LABEL_26:
      *a4 = v15;
      break;
  }

  return result;
}

uint64_t jobj_validate_key_val(uint64_t a1, uint64_t a2, unint64_t a3, unsigned __int16 *a4, unint64_t a5)
{
  result = 22;
  if (a2 && a3 >= 8)
  {
    switch(*a2 >> 60)
    {
      case 1:
        if (!a4)
        {
          goto LABEL_4;
        }

        v8 = a5 - 50;
        if (a5 >= 0x32)
        {
          v9 = a4[24];
          goto LABEL_53;
        }

        break;
      case 2:
        if (!a4 || a5 >= 0x14)
        {
          goto LABEL_4;
        }

        break;
      case 3:
        if (!a4 || a5 >= 0x5C)
        {
          goto LABEL_4;
        }

        break;
      case 4:
        if (a3 >= 0xA && a3 - 10 >= *(a2 + 8))
        {
          if (!a4)
          {
            goto LABEL_4;
          }

          v8 = a5 - 4;
          if (a5 >= 4)
          {
            v9 = a4[1];
            goto LABEL_53;
          }
        }

        break;
      case 5:
        if (a3 >= 0x10)
        {
          if (!a4)
          {
            goto LABEL_4;
          }

          v8 = a5 - 10;
          if (a5 >= 0xA)
          {
            v9 = a4[4];
            goto LABEL_53;
          }
        }

        break;
      case 6:
        if (!a4 || a5 >= 4)
        {
          goto LABEL_4;
        }

        break;
      case 7:
        if (!a4)
        {
          goto LABEL_4;
        }

        v8 = a5 - 24;
        if (a5 >= 0x18)
        {
          v9 = a4[2] == 6 ? HIBYTE(a4[11]) + a4[11] : a4[11];
LABEL_53:
          if (v8 >= v9)
          {
            goto LABEL_4;
          }
        }

        break;
      case 8:
        if (a3 >= 0x10 && (!a4 || a5 >= 0x18))
        {
          goto LABEL_4;
        }

        break;
      case 9:
        if ((*(*(a1 + 376) + 56) & 9) != 0)
        {
          v10 = a3 - 12;
          if (a3 < 0xC)
          {
            return result;
          }

          v11 = *(a2 + 8) & 0x3FF;
        }

        else
        {
          v10 = a3 - 10;
          if (a3 < 0xA)
          {
            return result;
          }

          v11 = *(a2 + 8);
        }

        if (v10 >= v11 && (!a4 || a5 >= 0x12))
        {
          goto LABEL_4;
        }

        break;
      case 0xALL:
        if (!a4 || a5 >= 0x20)
        {
          goto LABEL_4;
        }

        break;
      case 0xBLL:
        if (a3 >= 0xA && a3 - 10 >= *(a2 + 8))
        {
          goto LABEL_38;
        }

        break;
      case 0xCLL:
LABEL_38:
        if (!a4 || a5 >= 8)
        {
          goto LABEL_4;
        }

        break;
      case 0xDLL:
        if (a3 >= 0x10)
        {
          if (*(a2 + 15) == 1)
          {
            if (!a4 || *(a4 + 2) + 3 <= a5)
            {
              goto LABEL_4;
            }
          }

          else if (!a4 || a5 >= 0x1A)
          {
            goto LABEL_4;
          }
        }

        break;
      case 0xELL:
        if (a3 > 0xB)
        {

          result = sub_100029CE8(a1, a2, a3, a4, a5);
        }

        else
        {
          log_err("%s:%d: %s key size (%zu) on expanded record (%llu) is too small\n", "jobj_validate_key_val", 2403, (a1 + 4040), a3, *a2 & 0xFFFFFFFFFFFFFFFLL);
          result = 22;
        }

        break;
      default:
LABEL_4:
        result = 0;
        break;
    }
  }

  return result;
}

uint64_t sub_100029CE8(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  if ((*(*(a1 + 376) + 57) & 2) == 0)
  {
    log_err("%s:%d: %s ***: expanded obj type found on unsupported volume\n", a2, a3, a4, a5);
    return 22;
  }

  v7 = *(a2 + 8);
  if (v7 > 0x11)
  {
    if (v7 == 18)
    {
      v5 = 0;
      if (a4 && a5 <= 0x33)
      {
        log_err("%s:%d: %s value size (%zu) on dir stats (%llu) is too small\n", a2, a3, a4, a5);
        return 22;
      }

      return v5;
    }

    if (v7 == 19)
    {
      if (a3 <= 0x1B)
      {
        log_err("%s:%d: %s key size (%zu) on clone mapping (%llu) is too small\n", a2, a3, a4, a5);
        return 22;
      }

      v5 = 0;
      if (a4 && a5 <= 7)
      {
        log_err("%s:%d: %s value size (%zu) on clone mapping (%llu) is too small\n", a2, a3, a4, a5);
        return 22;
      }

      return v5;
    }

LABEL_14:
    v5 = 0;
    if (a4 && a5 <= 3)
    {
      log_err("%s:%d: %s value size (%zu) on unknown record (%llu) is too small\n", a2, a3, a4, a5);
      return 22;
    }

    return v5;
  }

  if (v7 == 16)
  {
    if (a3 <= 0x1B)
    {
      log_err("%s:%d: %s key size (%zu) on purgeable record (%llu) is too small\n", a2, a3, a4, a5);
      return 22;
    }

    v5 = 0;
    if (a4 && a5 <= 0x17)
    {
      log_err("%s:%d: %s value size (%zu) on purgeable record (%llu) is too small\n", a2, a3, a4, a5);
      return 22;
    }

    return v5;
  }

  if (v7 != 17)
  {
    goto LABEL_14;
  }

  if (a3 <= 0x13)
  {
    log_err("%s:%d: %s key size (%zu) on purgeable tombstone (%llu) is too small\n", a2, a3, a4, a5);
    return 22;
  }

  v5 = 0;
  if (a4 && a5 <= 7)
  {
    log_err("%s:%d: %s value size (%zu) on purgeable tombstone (%llu) is too small\n", a2, a3, a4, a5);
    return 22;
  }

  return v5;
}

uint64_t apfs_key_compare(uint64_t a1, void *a2, unsigned int a3, void *a4, unsigned int a5, int *a6)
{
  v6 = 22;
  if (a3 >= 8 && a5 >= 8)
  {
    v11 = *a2 & 0xFFFFFFFFFFFFFFFLL;
    v12 = *a4 & 0xFFFFFFFFFFFFFFFLL;
    if (v11 < v12)
    {
LABEL_4:
      v13 = -1;
LABEL_12:
      v6 = 0;
      *a6 = v13;
      return v6;
    }

    if (v11 > v12)
    {
LABEL_6:
      v13 = 1;
      goto LABEL_12;
    }

    v14 = *a2 >> 60;
    v15 = *a4 >> 60;
    if (!v14)
    {
      goto LABEL_8;
    }

    if (!v15)
    {
      goto LABEL_6;
    }

    if (v14 < v15)
    {
      goto LABEL_4;
    }

    if (v14 > v15)
    {
      goto LABEL_6;
    }

    if (v14 != 14)
    {
LABEL_22:
      if (obj_type(a1) != 13)
      {
        return 22;
      }

      if (jobj_validate_key_val(a1, a2, a3, 0, 0))
      {
        return 22;
      }

      v13 = jobj_validate_key_val(a1, a4, a5, 0, 0);
      if (v13)
      {
        return 22;
      }

      if (v14 <= 10)
      {
        if (v14 > 7)
        {
          if (v14 == 8)
          {
            v39 = a2[1];
            v40 = a4[1];
            if (v39 != -1)
            {
              if (v40 == -1)
              {
                goto LABEL_6;
              }

              v25 = v39 > v40;
              if (v39 < v40)
              {
                goto LABEL_4;
              }

              goto LABEL_83;
            }

            v16 = v40 == -1;
            goto LABEL_9;
          }

          if (v14 != 9)
          {
            goto LABEL_12;
          }

          if ((*(*(a1 + 376) + 56) & 9) != 0)
          {
            v29 = *(a2 + 2);
            v30 = *(a4 + 2);
            if (v29 >> 10 < v30 >> 10)
            {
              goto LABEL_4;
            }

            if (v29 >> 10 > v30 >> 10)
            {
              goto LABEL_6;
            }

            v31 = a2 + 12;
            v32 = a4 + 12;
            v33 = v29 & 0x3FF;
            v34 = v30 & 0x3FF;
LABEL_52:
            v13 = apfs_cstrncmp(v31, v32, v33, v34);
            goto LABEL_12;
          }
        }

        else if (v14 != 4)
        {
          if (v14 != 5)
          {
            goto LABEL_12;
          }

          v26 = a2[1];
          v15 = a4[1];
          if (v26)
          {
            if (!v15)
            {
              goto LABEL_6;
            }

            v27 = v26 >= v15;
            v28 = v26 > v15;
LABEL_72:
            if (v27)
            {
              v13 = v28;
            }

            else
            {
              v13 = -1;
            }

            goto LABEL_12;
          }

          goto LABEL_8;
        }
      }

      else
      {
        if (v14 > 15)
        {
          switch(v14)
          {
            case 0x10:
              v41 = *(a2 + 12);
              v15 = *(a4 + 12);
              if (v41)
              {
                if (!v15)
                {
                  goto LABEL_6;
                }

                if (v41 < v15)
                {
                  goto LABEL_4;
                }

                if (v41 != v15)
                {
                  v25 = v41 > v15;
                  goto LABEL_83;
                }

                v42 = *(a2 + 20);
                v15 = *(a4 + 20);
                if (v42)
                {
                  if (v15)
                  {
                    if (v42 >= v15)
                    {
                      v13 = v42 != v15;
                      goto LABEL_12;
                    }

                    goto LABEL_4;
                  }

                  goto LABEL_6;
                }
              }

              break;
            case 0x11:
              v43 = *(a2 + 12);
              v15 = *(a4 + 12);
              if (v43)
              {
                if (!v15)
                {
                  goto LABEL_6;
                }

                v27 = v43 >= v15;
                v44 = v43 == v15;
                goto LABEL_69;
              }

              break;
            case 0x13:
              v21 = *(a2 + 12);
              v22 = *(a4 + 12);
              if (v21 < v22)
              {
                goto LABEL_4;
              }

              if (v21 > v22)
              {
                goto LABEL_6;
              }

              v23 = *(a2 + 20);
              v24 = *(a4 + 20);
              v25 = v23 > v24;
              if (v23 < v24)
              {
                goto LABEL_4;
              }

LABEL_83:
              v13 = v25;
              goto LABEL_12;
            default:
              goto LABEL_12;
          }

LABEL_8:
          v16 = v15 == 0;
          goto LABEL_9;
        }

        if (v14 != 11)
        {
          if (v14 != 13)
          {
            goto LABEL_12;
          }

          v35 = a2[1];
          v36 = HIBYTE(v35);
          v37 = a4[1];
          v38 = HIBYTE(v37);
          if (HIBYTE(v35))
          {
            if (!v38)
            {
              goto LABEL_6;
            }

            if (v36 != v38)
            {
              if (v36 < v38)
              {
                v13 = -1;
              }

              else
              {
                v13 = 1;
              }

              goto LABEL_12;
            }

            v45 = v35 & 0xFFFFFFFFFFFFFFLL;
            v46 = v37 & 0xFFFFFFFFFFFFFFLL;
            if (v45 != 0xFFFFFFFFFFFFFFLL)
            {
              if (v46 == 0xFFFFFFFFFFFFFFLL)
              {
                goto LABEL_6;
              }

              v27 = v45 >= v46;
              v44 = v45 == v46;
LABEL_69:
              v28 = !v44;
              goto LABEL_72;
            }

            v16 = v46 == 0xFFFFFFFFFFFFFFLL;
          }

          else
          {
            v16 = v38 == 0;
          }

LABEL_9:
          if (v16)
          {
            v13 = 0;
          }

          else
          {
            v13 = -1;
          }

          goto LABEL_12;
        }
      }

      v33 = *(a2 + 4);
      v34 = *(a4 + 4);
      v31 = a2 + 10;
      v32 = a4 + 10;
      goto LABEL_52;
    }

    v6 = 22;
    if (a3 >= 0xC && a5 >= 0xC)
    {
      LODWORD(v14) = *(a2 + 8);
      v20 = *(a4 + 8);
      if (v14 < v20)
      {
        goto LABEL_4;
      }

      if (v14 > v20)
      {
        goto LABEL_6;
      }

      goto LABEL_22;
    }
  }

  return v6;
}

uint64_t jfs_get_tree_in_snap(uint64_t a1, int a2, uint64_t a3, unint64_t a4, uint64_t *a5)
{
  doc_id_tree = 22;
  if (a2 > 4)
  {
    if (a2 > 6)
    {
      if (a2 == 7)
      {
        pthread_mutex_lock((a1 + 1664));
        if (*(a1 + 440) == a4 && (v22 = *(a1 + 3616)) != 0)
        {
          obj_retain(*(a1 + 3616));
          if (a3 && (v23 = obj_modify(v22, 0, a3), v23))
          {
            doc_id_tree = v23;
            obj_release(v22);
          }

          else
          {
            doc_id_tree = 0;
            *a5 = v22;
          }
        }

        else
        {
          doc_id_tree = apfs_get_doc_id_tree(a1, 0, a4, a3, a5);
          if (!doc_id_tree)
          {
            if (*(a1 + 440) == a4)
            {
              v25 = *a5;
              obj_retain(v25);
              doc_id_tree = 0;
              *(a1 + 3616) = v25;
            }

            else
            {
              doc_id_tree = 0;
            }
          }
        }

        v21 = (a1 + 1664);
        goto LABEL_110;
      }

      if (a2 != 8)
      {
        return doc_id_tree;
      }

      if (*(a1 + 440) != a4 || (v14 = *(a1 + 3576)) == 0)
      {
        doc_id_tree = apfs_get_secondary_fsroot_tree(a1, a4, a3, a5);
        if (!doc_id_tree)
        {
          v27 = *(a1 + 440);
          v28 = v27 && *(a1 + 504) == 0;
          if (!v28 && v27 == a4)
          {
            v29 = *a5;
            obj_retain(v29);
            doc_id_tree = 0;
            *(a1 + 3576) = v29;
          }
        }

        return doc_id_tree;
      }

      obj_retain(*(a1 + 3576));
      if (!a3)
      {
LABEL_72:
        doc_id_tree = 0;
        *a5 = v14;
        return doc_id_tree;
      }

LABEL_51:
      v24 = obj_modify(v14, 0, a3);
      if (v24)
      {
        doc_id_tree = v24;
        obj_release(v14);
        return doc_id_tree;
      }

      goto LABEL_72;
    }

    if (a2 != 5)
    {
      if ((*(*(a1 + 376) + 56) & 0x40) != 0)
      {
        pthread_mutex_lock((a1 + 1600));
        v12 = *(a1 + 3608);
        if (v12)
        {
          obj_retain(v12);
          if (a3)
          {
            doc_id_tree = obj_modify(*(a1 + 3608), 2, a3);
            v13 = *(a1 + 3608);
            if (doc_id_tree)
            {
              obj_release(v13);
LABEL_109:
              v21 = (a1 + 1600);
              goto LABEL_110;
            }

            *(*(a1 + 376) + 1048) = obj_oid(v13);
          }

          doc_id_tree = 0;
          *a5 = *(a1 + 3608);
          goto LABEL_109;
        }

        v34 = *(a1 + 384);
        if (!v34)
        {
          v34 = *(a1 + 376);
        }

        v35 = *(v34 + 1044);
        v36 = *(v34 + 1048);
        v46 = 0u;
        v47 = 0u;
        v51 = 0;
        v49 = 0u;
        v50 = 0u;
        v48 = 0u;
        v45 = pfkur_tree_key_cmp;
        DWORD2(v46) = 32;
        if (v35 == 2)
        {
          extended = btree_get_extended(a1, v35 & 0xFFFF0000, v36, a4, a3 != 0, &v45, a3, a5);
          v38 = extended;
          if (a3 && !extended)
          {
            doc_id_tree = 0;
            *(*(a1 + 376) + 1048) = obj_oid(*a5);
            goto LABEL_109;
          }

          if (!extended)
          {
            doc_id_tree = 0;
            goto LABEL_109;
          }

          v36 = *(v34 + 1048);
        }

        else
        {
          v38 = 22;
        }

        v43 = strerror(v38);
        log_err("%s:%d: %s Failed to get pfkur tree w/oid %llu (modify_xid %llu): %d (%s)\n", "jfs_get_tree_in_snap", 3946, (a1 + 4040), v36, a3, v38, v43);
        doc_id_tree = v38;
        goto LABEL_109;
      }

      return 45;
    }

    v20 = *(a1 + 376);
    if ((*(v20 + 56) & 0x20) == 0)
    {
      return 45;
    }

    v26 = *(v20 + 1040);
    if (a3 && *(a1 + 448))
    {
      return 30;
    }

    pthread_mutex_lock((a1 + 1536));
    v31 = *(a1 + 3600);
    if (v31)
    {
      if ((v26 & 0xC0000000) != 0)
      {
        if ((v26 & 0xC0000000) == 0x40000000)
        {
          v32 = *(a1 + 448);
          if (v32)
          {
            v33 = *(a1 + 376);
            goto LABEL_98;
          }

LABEL_93:
          obj_retain(v31);
          if (a3)
          {
            doc_id_tree = obj_modify(*(a1 + 3600), 2, a3);
            v39 = *(a1 + 3600);
            if (doc_id_tree)
            {
              obj_release(v39);
LABEL_105:
              v21 = (a1 + 1536);
              goto LABEL_110;
            }

            *(*(a1 + 376) + 1032) = obj_oid(v39);
          }

          doc_id_tree = 0;
          *a5 = *(a1 + 3600);
          goto LABEL_105;
        }
      }

      else if (*(a1 + 440) == a4)
      {
        goto LABEL_93;
      }
    }

    v32 = *(a1 + 448);
    v33 = *(a1 + 376);
    if (!v32)
    {
      v32 = *(v33 + 1032);
    }

LABEL_98:
    v40 = *(v33 + 1040);
    *&v46 = 0;
    v47 = 0u;
    v51 = 0;
    v49 = 0u;
    v50 = 0u;
    v48 = 0u;
    v45 = fext_tree_key_cmp;
    *(&v46 + 1) = 0x20000001FLL;
    if (v40 == 2)
    {
      v41 = btree_get_extended(a1, v40 & 0xFFFF0000, v32, a4, a3 != 0, &v45, a3, a5);
      doc_id_tree = v41;
      if (a3 && !v41)
      {
        *(*(a1 + 376) + 1032) = obj_oid(*a5);
        goto LABEL_105;
      }

      if (!v41)
      {
        goto LABEL_105;
      }
    }

    else
    {
      doc_id_tree = 22;
    }

    v42 = strerror(doc_id_tree);
    log_err("%s:%d: %s Failed to get fext tree w/oid %llu (modify_xid %llu): %d (%s)\n", "jfs_get_tree_in_snap", 3898, (a1 + 4040), v32, a3, doc_id_tree, v42);
    goto LABEL_105;
  }

  if (a2 > 2)
  {
    if (a2 == 3)
    {
      pthread_mutex_lock((a1 + 1472));
      doc_id_tree = apfs_get_snap_meta_tree(a1, a3, a5);
      if (!doc_id_tree)
      {
        *(*(a1 + 376) + 152) = obj_oid(*a5);
      }

      v21 = (a1 + 1472);
      goto LABEL_110;
    }

    v14 = *(a1 + 3584);
    if (v14)
    {
      obj_retain(*(a1 + 3584));
      if (!a3)
      {
        goto LABEL_72;
      }

      v15 = obj_modify(v14, 0, a3);
      if (!v15)
      {
        goto LABEL_72;
      }

      doc_id_tree = v15;
      obj_release(v14);
LABEL_28:
      v14 = *(a1 + 3568);
      if (*(a1 + 440) != a4 || v14 == 0)
      {
        doc_id_tree = apfs_get_fsroot_tree(a1, a4, a3, a5);
        if (!doc_id_tree)
        {
          v17 = *(a1 + 440);
          v18 = v17 && *(a1 + 504) == 0;
          if (!v18 && v17 == a4)
          {
            v19 = *a5;
            obj_retain(v19);
            doc_id_tree = 0;
            *(a1 + 3568) = v19;
          }
        }

        return doc_id_tree;
      }

      obj_retain(*(a1 + 3568));
      if (!a3)
      {
        if (doc_id_tree)
        {
          return doc_id_tree;
        }

        goto LABEL_72;
      }

      goto LABEL_51;
    }

LABEL_27:
    doc_id_tree = 0;
    goto LABEL_28;
  }

  if (a2 == 1)
  {
    goto LABEL_27;
  }

  if (a2 == 2)
  {
    pthread_mutex_lock((a1 + 1408));
    v10 = *(a1 + 3592);
    if (!v10)
    {
      doc_id_tree = apfs_get_extentref_tree(a1, *(*(a1 + 376) + 144), a3, a5);
      if (!doc_id_tree)
      {
        if (a3)
        {
          *(*(a1 + 376) + 144) = obj_oid(*a5);
        }

        v30 = *a5;
        *(a1 + 3592) = *a5;
        obj_retain(v30);
        doc_id_tree = 0;
      }

      goto LABEL_86;
    }

    obj_retain(v10);
    if (a3)
    {
      doc_id_tree = obj_modify(*(a1 + 3592), 2, a3);
      v11 = *(a1 + 3592);
      if (doc_id_tree)
      {
        obj_release(v11);
LABEL_86:
        v21 = (a1 + 1408);
LABEL_110:
        pthread_mutex_unlock(v21);
        return doc_id_tree;
      }

      *(*(a1 + 376) + 144) = obj_oid(v11);
    }

    doc_id_tree = 0;
    *a5 = *(a1 + 3592);
    goto LABEL_86;
  }

  return doc_id_tree;
}

uint64_t match_jobj_type_to_tree_type(uint64_t a1, unsigned int a2, int a3)
{
  if (a2 >= 0x10)
  {
    if ((*(*(a1 + 376) + 57) & 2) == 0)
    {
      log_err("%s:%d: %s expanded obj type %hhu found on unsupported volume\n", "match_jobj_expanded_type_to_tree_type", 4205, (a1 + 4040), a2);
      return 0;
    }

    if ((a2 & 0xFC) == 0x10)
    {
      if (apfs_has_secondary_fsroot(a1))
      {
        return 8;
      }

      else
      {
        return 1;
      }
    }

    log_warn("%s:%d: %s Warning: attempting to place unknown expanded type %hhu into fsroot.\n", "match_jobj_expanded_type_to_tree_type", 4226, (a1 + 4040), a2);
    return 1;
  }

  v4 = 3;
  if (a2 <= 5)
  {
    if (a2 == 1)
    {
      return v4;
    }

    if (a2 == 2)
    {
      return 2;
    }

    return a3;
  }

  if (a2 - 6 < 2)
  {
    goto LABEL_18;
  }

  if (a2 != 8)
  {
    if (a2 == 11)
    {
      return v4;
    }

    return a3;
  }

  if ((*(*(a1 + 376) + 56) & 0x20) == 0)
  {
LABEL_18:
    if (a3 == 100)
    {
      return 1;
    }

    if (a3 == 101)
    {
      if ((*(*(a1 + 376) + 57) & 1) == 0)
      {
        panic("Requested forced secondary_fs_root but the tree is missing\n");
      }
    }

    else
    {
      if ((apfs_has_secondary_fsroot(a1) & 1) == 0)
      {
        return a3;
      }

      if (a3 != 1)
      {
        panic("type = %u, req_tree != fs_root\n", a2);
      }
    }

    return 8;
  }

  if (a3 != 1)
  {
    panic("sealed, fext, req_tree != fs_root");
  }

  return 5;
}

unsigned __int16 *key_val_to_jobj(uint64_t a1, uint64_t *a2, unint64_t a3, unsigned __int16 *a4, unint64_t a5)
{
  if (jobj_validate_key_val(a1, a2, a3, a4, a5))
  {
    return 0;
  }

  v12 = *a2 >> 60;
  LODWORD(v13) = 40;
  switch(v12)
  {
    case 1:
      if (!a4)
      {
        return 0;
      }

      v14 = a4[24] + 80;
      goto LABEL_32;
    case 2:
      goto LABEL_36;
    case 3:
      LODWORD(v13) = 648;
      goto LABEL_36;
    case 4:
      if (!a4)
      {
        return 0;
      }

      v14 = *(a2 + 4) + a4[1] + 24;
      goto LABEL_32;
    case 5:
      if (!a4)
      {
        return 0;
      }

      v16 = a4[4];
      goto LABEL_19;
    case 6:
    case 12:
      LODWORD(v13) = 24;
      goto LABEL_36;
    case 7:
      if (!a4)
      {
        return 0;
      }

      if (a4[2] == 6)
      {
        v16 = HIBYTE(a4[11]) + a4[11];
      }

      else
      {
        v16 = a4[11];
      }

LABEL_19:
      v14 = v16 + 40;
      goto LABEL_32;
    case 8:
      LODWORD(v13) = 56;
      goto LABEL_36;
    case 9:
      if ((*(*(a1 + 376) + 56) & 9) != 0)
      {
        LODWORD(v13) = (a2[1] & 0x3FF) + 72;
        goto LABEL_36;
      }

      v14 = *(a2 + 4) + 72;
LABEL_32:
      LODWORD(v13) = v14;
      if (v14 >> 16)
      {
        v19 = 1;
      }

      else
      {
        v19 = v14 == 0;
      }

      if (!v19)
      {
        goto LABEL_36;
      }

      return 0;
    case 10:
      LODWORD(v13) = 96;
      goto LABEL_36;
    case 11:
      v14 = *(a2 + 4) + 32;
      goto LABEL_32;
    case 13:
      if (!a4)
      {
        return 0;
      }

      v15 = *(a2 + 15);
      if (v15 == 2)
      {
        LODWORD(v13) = 80;
      }

      else
      {
        if (v15 != 1)
        {
          return 0;
        }

        LODWORD(v13) = *(a4 + 2) + 32;
      }

      goto LABEL_36;
    case 14:
      v17 = *(a2 + 2);
      if ((a2[1] & 0xFC) != 0x10)
      {
        v18 = sub_1000043D4(*(a1 + 392));
        log_corrupt(v18, "%s:%d: %s *** unknown expanded obj type %hhu\n", "jobj_size_for_large_key_val", 2464, (a1 + 4040), v17);
        return 0;
      }

      v13 = (0x48006000200050uLL >> (16 * (v17 & 0xFu))) & 0x78;
LABEL_36:
      if (v12 == 14)
      {
        LODWORD(v20) = *(a2 + 8);
        if (v20 <= 0xF)
        {
          log_err("%s:%d: unknown expanded type (%hhu) on record (%u)\n");
          return 0;
        }
      }

      else
      {
        v20 = *a2 >> 60;
      }

      switch(v20)
      {
        case 1:
          v10 = _apfs_calloc_typed(1uLL, 0x50uLL, 0x10100406569770FuLL);
          if (!v10)
          {
            return v10;
          }

          v27 = _apfs_calloc_typed(1uLL, v13 - 80, 0xDA2D0A4CuLL);
          *(v10 + 9) = v27;
          if (v27)
          {
            goto LABEL_73;
          }

          v28 = v10;
          v29 = 80;
          goto LABEL_66;
        case 2:
          v21 = 0x10000407607B2BCLL;
          v22 = 40;
          goto LABEL_71;
        case 3:
          v30 = _apfs_zalloc(2u);
          goto LABEL_72;
        case 4:
          v24 = v13;
          v25 = -753538664;
          goto LABEL_59;
        case 5:
          v24 = v13;
          v25 = -2067986874;
          goto LABEL_59;
        case 6:
          v26 = 887226456;
          goto LABEL_51;
        case 7:
          v24 = v13;
          v25 = -1260340143;
          goto LABEL_59;
        case 8:
          v21 = 0x1000040C6EC63FFLL;
          v22 = 56;
          goto LABEL_71;
        case 9:
          v10 = _apfs_calloc_typed(1uLL, 0x48uLL, 0x10B004060F4C5C5uLL);
          if (!v10)
          {
            return v10;
          }

          v32 = _apfs_malloc_typed(v13 - 72, 0xEA9F5E2EuLL);
          *(v10 + 8) = v32;
          if (v32)
          {
            goto LABEL_73;
          }

          v28 = v10;
          v29 = 72;
LABEL_66:
          _apfs_free(v28, v29);
          return 0;
        case 10:
        case 18:
          v21 = 0x10A004019B037CALL;
          v22 = 96;
          goto LABEL_71;
        case 11:
          v24 = v13;
          v25 = 173046394;
          goto LABEL_59;
        case 12:
          v26 = -753538664;
LABEL_51:
          v21 = v26 | 0x100004000000000;
          v22 = 24;
          goto LABEL_71;
        case 13:
          v23 = HIBYTE(a2[1]);
          if (v23 == 2)
          {
            v31 = 1202085462;
LABEL_70:
            v21 = v31 | 0x10A004000000000;
            v22 = 80;
LABEL_71:
            v30 = _apfs_calloc_typed(1uLL, v22, v21);
          }

          else
          {
            if (v23 != 1)
            {
              log_err("%s:%d: *** Unknown file info type %llu\n");
              return 0;
            }

            v24 = v13;
            v25 = 130634920;
LABEL_59:
            v30 = _apfs_malloc_typed(v24, v25 | 0x100004000000000);
          }

LABEL_72:
          v10 = v30;
          if (!v30)
          {
            return v10;
          }

LABEL_73:
          v33 = *a2;
          v34 = *a2 & 0xFFFFFFFFFFFFFFFLL;
          *(v10 + 1) = v34;
          v33 >>= 60;
          *v10 = v33;
          *(v10 + 1) = 1;
          v10[1] = v13;
          switch(v33)
          {
            case 1:
              *(v10 + 1) = *a4;
              *(v10 + 2) = *(a4 + 1);
              *(v10 + 6) = *(a4 + 4);
              *(v10 + 7) = *(a4 + 5);
              v35 = a4[24];
              v10[32] = v35;
              v36 = *(v10 + 9);
              v37 = a4 + 25;
              goto LABEL_78;
            case 2:
              v47 = *(a4 + 1);
              v48 = *a4 & 0xFFFFFFFFFFFFFFFLL;
              *(v10 + 1) = *a4 >> 60;
              *(v10 + 8) = *(a4 + 4);
              *(v10 + 2) = v48;
              *(v10 + 3) = v47;
              return v10;
            case 3:
              *(v10 + 2) = *a4;
              *(v10 + 3) = *(a4 + 1);
              *(v10 + 4) = *(a4 + 2);
              *(v10 + 5) = *(a4 + 3);
              *(v10 + 6) = *(a4 + 4);
              *(v10 + 7) = *(a4 + 5);
              *(v10 + 18) = *(a4 + 14);
              *(v10 + 8) = *(a4 + 6);
              *(v10 + 19) = *(a4 + 15);
              *(v10 + 20) = *(a4 + 16);
              *(v10 + 21) = *(a4 + 17);
              *(v10 + 22) = *(a4 + 18);
              *(v10 + 23) = *(a4 + 19);
              v10[48] = a4[40];
              v10[49] = a4[41];
              *(v10 + 13) = *(a4 + 42);
              if (a5 < 0x5D)
              {
                return v10;
              }

              if (xf_init_with_blob(v10 + 204, a4 + 46, a5 - 92))
              {
                log_debug("%s:%d: failed to init extended fields on inode %lld from blob (xfret %d).\n");
                return v10;
              }

              v57 = v10[204];
              if (!v10[204])
              {
                return v10;
              }

              v58 = 0;
              v59 = (*(v10 + 52) + 2);
              break;
            case 4:
              v45 = *(a2 + 4);
              v10[10] = v45;
              strlcpy(v10 + 24, a2 + 10, v45);
              *(v10 + 4) = *a4;
              v42 = a4[1];
              v10[11] = v42;
              v43 = v10 + v10[10] + 24;
              v44 = a4 + 2;
              goto LABEL_98;
            case 5:
              v39 = *a4;
              *(v10 + 2) = a2[1];
              *(v10 + 3) = v39;
              v35 = a4[4];
              v10[16] = v35;
              v36 = (v10 + 17);
              v37 = a4 + 5;
LABEL_78:
              strlcpy(v36, v37, v35);
              return v10;
            case 6:
              *(v10 + 4) = *a4;
              return v10;
            case 7:
              *(v10 + 4) = *a4;
              LODWORD(v50) = a4[11];
              v52 = a4[2];
              v51 = a4 + 2;
              if (v52 == 6)
              {
                v50 = (v50 >> 8) + v50;
              }

              else
              {
                v50 = v50;
              }

              v43 = (v10 + 10);
              v42 = v50 + 20;
              v44 = v51;
              goto LABEL_98;
            case 8:
              *(v10 + 2) = a2[1];
              v46 = *a4;
              *(v10 + 5) = *a4 & 0xFFFFFFFFFFFFFFLL;
              *(v10 + 12) = *(a4 + 4);
              *(v10 + 48) = HIBYTE(v46);
              return v10;
            case 9:
              if ((*(*(a1 + 376) + 56) & 9) != 0)
              {
                v53 = *(a2 + 2);
                *(v10 + 14) = v53 >> 10;
                v54 = v53 & 0x3FF;
                v55 = 12;
              }

              else
              {
                *(v10 + 14) = 0;
                v54 = *(a2 + 4);
                v55 = 10;
              }

              v10[31] = v54;
              strlcpy(*(v10 + 8), a2 + v55, v54);
              *(v10 + 2) = *a4;
              *(v10 + 3) = *(a4 + 1);
              v10[30] = a4[8];
              if (a5 < 0x13)
              {
                xf_init((v10 + 16), 0);
              }

              else if (xf_init_with_blob(v10 + 16, a4 + 9, a5 - 18))
              {
                log_debug("%s:%d: failed to init extended fields on drec %lld from blob.\n");
              }

              return v10;
            case 10:
              *(v10 + 12) = *a4;
              *(v10 + 3) = vextq_s8(*(a4 + 1), *(a4 + 1), 8uLL);
              return v10;
            case 11:
              v38 = *(a2 + 4);
              v10[12] = v38;
              strlcpy(v10 + 26, a2 + 10, v38);
              goto LABEL_76;
            case 12:
LABEL_76:
              *(v10 + 2) = *a4;
              return v10;
            case 13:
              v40 = a2[1];
              *(v10 + 16) = HIBYTE(v40);
              *(&v41 + 1) = a2[1];
              *&v41 = v40;
              *(v10 + 2) = v41 >> 56;
              if (HIBYTE(v40) == 2)
              {
                *(v10 + 3) = *a4;
                *(v10 + 4) = *(a4 + 1);
                *(v10 + 5) = *(a4 + 2);
                v10[24] = a4[12];
                if (a5 < 0x1B)
                {
                  log_err("%s:%d: %s s_hash <%llu> finfo attribution tag value <%zu> is less than sizeof(j_file_attribution_tag_val_t) <%lu\n");
                  return v10;
                }

                v56 = xf_init_with_blob(v10 + 28, a4 + 13, a5 - 26);
                if (v56)
                {
                  strerror(v56);
                  log_debug("%s:%d: failed to init extended fields on attribution tag record with objid <%lld> from blob due to error <%d> %s\n");
                  return v10;
                }

                v61 = v10[28];
                if (v10[28])
                {
                  v62 = 0;
                  for (i = (*(v10 + 8) + 2); ; i += 2)
                  {
                    v64 = *i;
                    if (*(i - 2) == 1)
                    {
                      break;
                    }

                    v62 += (v64 + 7) & 0x1FFF8;
                    if (!--v61)
                    {
                      return v10;
                    }
                  }

                  if (v64 > 0)
                  {
                    v65 = *(v10 + 9) + (v62 + v64);
                    goto LABEL_126;
                  }

                  log_err("%s:%d: %s size (%d) of FILE_INFO_TAG_EXT_TYPE_SIGNING_ID in attribution tag record with s_hash <%llu> <= 0 \n");
                }
              }

              else if (HIBYTE(v40) == 1)
              {
                v10[12] = *a4;
                v42 = *(a4 + 2);
                *(v10 + 26) = v42;
                v43 = v10 + 27;
                v44 = (a4 + 3);
LABEL_98:
                memcpy(v43, v44, v42);
              }

              return v10;
            case 14:
              if (a3 < 0xC)
              {
                goto LABEL_93;
              }

              if (sub_10002B53C(a1, v10, a2, a4, a5))
              {
                return v10;
              }

              v34 = *(v10 + 1);
LABEL_93:
              v49 = log_err("%s:%d: %s cannot translate key-val (%llu) into valid jobj\n", "key_val_to_jobj", 4935, (a1 + 4040), v34);
              jobj_release(v49, v10);
              return 0;
            default:
              return v10;
          }

          break;
        case 16:
          v31 = -624060581;
          goto LABEL_70;
        case 17:
          v21 = 0x100004089CA3EB1;
          v22 = 32;
          goto LABEL_71;
        case 19:
          v21 = 0x10A0040D41B49CCLL;
          v22 = 72;
          goto LABEL_71;
        default:
          log_err("%s:%d: *** Can't allocate unknown obj type %d\n");
          return 0;
      }

      break;
    default:
      log_err("%s:%d: *** unknown obj type %d\n");
      return 0;
  }

  while (1)
  {
    v60 = *v59;
    if (*(v59 - 2) != 4)
    {
      v60 = (v60 + 7) & 0x1FFF8;
      goto LABEL_116;
    }

    if (*v59)
    {
      break;
    }

LABEL_116:
    v59 += 2;
    v58 += v60;
    if (!--v57)
    {
      return v10;
    }
  }

  v65 = *(v10 + 53) + (v58 + v60);
LABEL_126:
  *(v65 - 1) = 0;
  return v10;
}

uint64_t sub_10002B53C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, unint64_t a5)
{
  v5 = *(a3 + 8);
  if (v5 <= 0xF)
  {
    log_err("%s:%d: %s unknown expanded type (%hhu) on record (%u)\n", "large_key_val_to_jobj", 4506, (a1 + 4040), *(a3 + 8), *a3 >> 60);
    return 0;
  }

  v6 = a2;
  *a2 = v5;
  if (v5 <= 17)
  {
    if (v5 != 16)
    {
      v7 = *a4;
      *(a2 + 16) = *(a3 + 12);
      *(a2 + 24) = v7;
      return v6;
    }

    *(a2 + 16) = *(a3 + 12);
    *(a2 + 32) = *a4;
    *(a2 + 40) = a4[1];
    *(a2 + 48) = *(a4 + 4);
    *(a2 + 52) = *(a4 + 5);
    if (a5 >= 0x19)
    {
      if (xf_init_with_blob((a2 + 56), a4 + 12, a5 - 24))
      {
        log_err("%s:%d: %s failed to init extended fields on purgeable %llu from blob\n");
      }

      return v6;
    }

    v8 = a2 + 56;
LABEL_20:
    xf_init(v8, 0);
    return v6;
  }

  if (v5 == 18)
  {
    *(a2 + 16) = a4[3];
    *(a2 + 24) = *a4;
    *(a2 + 32) = a4[1];
    *(a2 + 40) = a4[2];
    *(a2 + 56) = a4[4];
    *(a2 + 48) = a4[5];
    *(a2 + 92) = *(a4 + 12);
    if (a5 < 0x35)
    {
      v8 = a2 + 64;
      goto LABEL_20;
    }

    if (xf_init_with_blob((a2 + 64), a4 + 26, a5 - 52))
    {
      log_err("%s:%d: %s failed to init extended fields on dir-stats %llu from blob\n");
    }
  }

  else
  {
    if (v5 != 19)
    {
      return v6;
    }

    *(a2 + 16) = *(a3 + 12);
    *(a2 + 32) = *a4 & 0xFFFFFFFFFFFFFFLL;
    *(a2 + 40) = *(a4 + 7);
    if (a5 < 9)
    {
      v8 = a2 + 48;
      goto LABEL_20;
    }

    if (xf_init_with_blob((a2 + 48), a4 + 4, a5 - 8))
    {
      log_err("%s:%d: %s failed to init extended fields on clone mapping <%llu/%llu> from blob\n");
    }
  }

  return v6;
}

uint64_t lookup_jobj_in_snap(uint64_t a1, int a2, uint64_t *a3, unsigned __int8 *a4, unint64_t a5, unsigned __int16 **a6)
{
  matched = match_jobj_type_to_tree_type(a1, *a4, a2);
  v12 = _apfs_zalloc(3u);
  if (!v12)
  {
    return 12;
  }

  v13 = v12;
  v18 = 832;
  v19 = 3808;
  make_jkey_from_jobj(a1, a4, v12, &v18);
  v17 = 0xAAAAAAAAAAAAAAAALL;
  tree_in_snap = jfs_get_tree_in_snap(a1, matched, 0, a5, &v17);
  if (tree_in_snap)
  {
    v15 = tree_in_snap;
LABEL_6:
    _apfs_zfree(v13, 3u);
    return v15;
  }

  v15 = bt_lookup_variant(v17, a5, v13, &v18, 832, v13 + 832, &v19, 0, 0, a3);
  obj_release(v17);
  if (v15)
  {
    goto LABEL_6;
  }

  *a6 = key_val_to_jobj(a1, v13, v18, v13 + 416, v19);
  _apfs_zfree(v13, 3u);
  if (*a6)
  {
    return 0;
  }

  else
  {
    return nx_corruption_detected_int(*(a1 + 392));
  }
}

uint64_t initialize_phys_range_lock_state(uint64_t *a1, unsigned int a2)
{
  a1[12] = 0;
  *(a1 + 4) = 0u;
  *(a1 + 5) = 0u;
  *(a1 + 2) = 0u;
  *(a1 + 3) = 0u;
  *a1 = 0u;
  *(a1 + 1) = 0u;
  v4 = a2;
  *(a1 + 23) = a2;
  v5 = _apfs_calloc_typed(a2, 0x10uLL, 0x1000040451B5BE8uLL);
  *a1 = v5;
  if (v5)
  {
    v6 = (a2 + 63) >> 6;
    *(a1 + 22) = v6;
    v7 = _apfs_calloc_typed(v6, 8uLL, 0x100004000313F17uLL);
    a1[9] = v7;
    if (v7)
    {
      v8 = _apfs_calloc_typed(*(a1 + 22), 8uLL, 0x100004000313F17uLL);
      a1[10] = v8;
      if (v8)
      {
        new_lock((a1 + 1));
        return 0;
      }

      _apfs_free(*a1, 16 * v4);
      v10 = a1[9];
      v11 = 8 * *(a1 + 22);
    }

    else
    {
      v10 = *a1;
      v11 = 16 * v4;
    }

    _apfs_free(v10, v11);
  }

  return 12;
}

uint64_t release_phys_range_lock_state(uint64_t a1)
{
  _apfs_free(*a1, 16 * *(a1 + 92));
  _apfs_free(*(a1 + 72), 8 * *(a1 + 88));
  _apfs_free(*(a1 + 80), 8 * *(a1 + 88));

  return free_lock((a1 + 8));
}

uint64_t apfs_cstrncmp(unsigned __int8 *a1, unsigned __int8 *a2, unint64_t a3, unint64_t a4)
{
  if (a3 >= a4)
  {
    v4 = a4;
  }

  else
  {
    v4 = a3;
  }

  v5 = v4 - 2;
  if (v4 < 2)
  {
LABEL_11:
    if (a3 < a4)
    {
      LODWORD(v7) = -1;
    }

    else
    {
      LODWORD(v7) = 1;
    }

    if (a3 == a4)
    {
      return 0;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    while (1)
    {
      v6 = *a1;
      v7 = v6 - *a2;
      if (v7)
      {
        break;
      }

      ++a1;
      ++a2;
      if (v6)
      {
        v8 = v5 == 0;
      }

      else
      {
        v8 = 1;
      }

      --v5;
      if (v8)
      {
        goto LABEL_11;
      }
    }
  }

  return v7;
}

void fs_sb_dirty(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 484) & 4) != 0)
  {
    v4 = *(a1 + 376);
    if ((*(v4 + 264) & 4) == 0)
    {
      atomic_fetch_or_explicit((v4 + 264), 4uLL, memory_order_relaxed);
    }

    pthread_mutex_lock((a1 + 1280));
    *(a1 + 480) &= ~0x400000000uLL;
    pthread_mutex_unlock((a1 + 1280));
  }

  *(*(a1 + 376) + 1056) = a2;
  v5 = apfs_doc_id_index_supported(a1);
  v6 = *(a1 + 376);
  if (v5)
  {
    *(v6 + 1064) |= 0x10u;
  }

  *(v6 + 1120) = a2;

  obj_dirty(a1, a2, 0);
}

uint64_t evict_mapping_key_compare(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, int *a6)
{
  v6 = *a2 > *a4;
  if (*a2 < *a4)
  {
    v6 = -1;
  }

  *a6 = v6;
  return 0;
}

uint64_t apfs_free_data_blocks(char *a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if (*(a1 + 63))
  {
    v7 = *(a1 + 63);
  }

  else
  {
    v7 = a1;
  }

  v8 = sub_100011A14(v7, 0, a3, a4, a2);
  v9 = v8;
  if (v8)
  {
    v10 = strerror(v8);
    log_err("%s:%d: %s spaceman_free failed for LBA %llx, size %llu : %d %s\n", "apfs_free_data_blocks", 32582, v7 + 4040, a3, a4, v9, v10);
  }

  else
  {
    atomic_fetch_add_explicit((*(v7 + 47) + 232), a4, memory_order_relaxed);
    fs_sb_dirty(v7, a2);
  }

  return v9;
}

uint64_t fs_is_fully_unencrypted(uint64_t a1)
{
  v1 = *(a1 + 504);
  if (!v1)
  {
    v1 = a1;
  }

  v2 = *(*(v1 + 376) + 264);
  if (v2)
  {
    LOBYTE(v2) = *(*(a1 + 376) + 976) == 0;
  }

  return v2 & 1;
}

uint64_t sub_10002BC38(void *a1)
{
  v1 = a1[7];
  a1[47] = v1;
  a1[48] = v1 + 32;
  return 0;
}

uint64_t fs_lookup_snapshot_metadata_by_xid(uint64_t a1, uint64_t a2, unsigned __int16 **a3)
{
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v8[0] = 5242881;
  v8[1] = a2;
  v5 = lookup_jobj(a1, 3, 0, v8, a3);
  v6 = v5;
  if (v5)
  {
    log_err("%s:%d: %s Couldn't find snap_meta for xid %llu: %d\n", "fs_lookup_snapshot_metadata_by_xid", 445, (a1 + 4040), a2, v5);
  }

  return v6;
}

uint64_t fs_delete_clone_superblock(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = *(*(a1 + 392) + 392);
  v7 = 0xAAAAAAAAAAAAAAAALL;
  v5 = obj_get(v4, 0x40000000uLL, a2, &apfs_desc, 0, 0, 0, 0, &v7);
  if (!v5)
  {
    obj_delete_and_free(v7, a3);
    obj_release(v7);
  }

  return v5;
}

uint64_t fs_delete_supplemental_tree(char *a1, uint64_t a2, unint64_t a3, unint64_t a4, void *a5)
{
  v9 = *(*(a1 + 49) + 392);
  v17 = 0xAAAAAAAAAAAAAAAALL;
  result = obj_get(v9, 0x40000000uLL, a3, &apfs_desc, 0, 0, 0, a4, &v17);
  if (!result)
  {
    v11 = v17[47];
    if (a2 == 5)
    {
      v12 = 1040;
      v13 = 1032;
    }

    else
    {
      if (a2 != 6)
      {
        obj_release(v17);
        return 45;
      }

      v12 = 1044;
      v13 = 1048;
    }

    v14 = *(v11 + v12);
    v15 = *(v11 + v13);
    obj_release(v17);
    if (v15)
    {
      return supplemental_tree_destroy(a1, v14, a2, a4, v15, a5, v16);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t fs_delete_snapshot_metadata_tree(uint64_t a1, unint64_t a2, void *a3)
{
  v9 = 0;
  tree = jfs_get_tree(a1, 3, 0, &v9);
  if (tree)
  {
    return tree;
  }

  v7 = btree_delete(v9, a2, a3);
  obj_release(v9);
  if (!v7)
  {
    pthread_mutex_lock((a1 + 1472));
    *(*(a1 + 376) + 152) = 0;
    fs_sb_dirty(a1, a2);
    pthread_mutex_unlock((a1 + 1472));
  }

  return v7;
}

uint64_t spaceman_metazone_get_size(unint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, void *a5, void *a6)
{
  if (!a4)
  {
    return 28;
  }

  v6 = a1;
  if (a1 <= a2 || a4 < a1)
  {
    if (0x180000000 * (a2 >> 12) > a4)
    {
      return 28;
    }

    if (a4 >> 34)
    {
      v9 = 0x1000000000;
      if (a4 >= 0x1000000000)
      {
        v10 = 0x1000000000;
      }

      else
      {
        v10 = a4;
      }

      v8 = v10 >> 5;
      if (a4 >= 0x1000000001)
      {
        if (a4 - 0x1000000000 < 0x1000000000)
        {
          v9 = a4 - 0x1000000000;
        }

        v8 += (v9 * 0x666666666666667uLL) >> 64;
        if (a4 >= 0x2000000001)
        {
          v11 = a4 - 0x2000000000;
          if (a4 - 0x2000000000 >= 0x2000000000)
          {
            v11 = 0x2000000000;
          }

          v8 += v11 >> 7;
          if (a4 >= 0x4000000001)
          {
            v8 += (a4 - 0x4000000000) / 0xA0;
          }
        }
      }
    }

    else
    {
      v8 = 0x20000000;
    }

    v6 = v8 * (a2 >> 12);
    if (v6 >= a4 >> 2)
    {
      v6 = a4 >> 2;
    }
  }

  result = 0;
  v12 = v6 / a2;
  *a5 = v12 * a2;
  *a6 = a3 - v12;
  return result;
}

unint64_t spaceman_metazone_get_partitions(unint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  if (a5)
  {
    *a5 = (a2 >> 1) / result + a3;
  }

  if (a6)
  {
    v6 = (a2 >> 4) / result;
    if (v6 >= 0x8000000 / result)
    {
      v6 = 0x8000000 / result;
    }

    *a6 = a4 - v6;
  }

  return result;
}

uint64_t nx_corruption_detected_int(uint64_t a1)
{
  if (a1)
  {
    v1 = sub_1000043D4(a1);
    log_corrupt(v1, "%s:%d: %s Container corruption detected by %s:%u!\n");
  }

  else
  {
    v2 = sub_1000043D4(0);
    log_corrupt(v2, "%s:%d: Container corruption detected by %s:%u!\n");
  }

  return 92;
}

unint64_t obj_checksum_verify_phys(void *a1, int a2, int8x16_t a3, int8x16_t a4)
{
  result = fletcher64_verify_cksum(a1, (a1 + 1), (a2 - 8), 0, a3, a4);
  if (result)
  {
    log_err("%s:%d: failed: cksum 0x%016llx, oid 0x%llx, type 0x%x/0x%x, size %d\n", "obj_checksum_verify_phys", 52, *a1, a1[1], *(a1 + 6), *(a1 + 7), a2);
    v7 = sub_1000043D4(0);
    log_corrupt(v7, "%s:%d: Container corruption detected by %s:%u!\n", "nx_corruption_detected_int", 39, "obj_checksum_verify_phys", 54);
    return 92;
  }

  return result;
}

uint64_t nx_superblock_sanity_check_extent(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, int a5)
{
  v5 = (a2 + 48);
  if (!a2)
  {
    v5 = (a1 + 40);
  }

  v6 = *v5;
  if ((a5 ^ 1u) > a3 || v6 - 1 < a3)
  {
    return 22;
  }

  if (a4 < 2)
  {
    return 0;
  }

  if (v6 - a3 >= a4)
  {
    return 0;
  }

  return 22;
}

unint64_t nx_check_superblock(uint64_t a1, unsigned int a2, int a3, int8x16_t a4, int8x16_t a5)
{
  if (a2 < 0x1000)
  {
    return 22;
  }

  if (*(a1 + 32) != 1112758350)
  {
    return 79;
  }

  if (a3 || (v8 = *(a1 + 36), v8 == a2))
  {
    result = obj_checksum_verify_phys(a1, a2, a4, a5);
    if (result)
    {
      return result;
    }

    v8 = *(a1 + 36);
  }

  v9 = *(a1 + 24);
  v10 = v9 != -2147483647;
  if (v9 == -2147483647)
  {
    v11 = 1;
  }

  else
  {
    v11 = 2;
  }

  if (*(a1 + 28))
  {
    v10 = v11;
  }

  if (*(a1 + 8) != 1)
  {
    ++v10;
  }

  if (v8 < 0x1000)
  {
    ++v10;
  }

  if (v8 <= 0x10000)
  {
    v12 = v10;
  }

  else
  {
    v12 = v10 + 1;
  }

  if (*(a1 + 88) < 0x400uLL)
  {
    ++v12;
  }

  v13 = *(a1 + 104);
  if ((v13 & 0x7FFFFFF8) != 0)
  {
    v14 = v12;
  }

  else
  {
    v14 = v12 + 1;
  }

  v15 = v13 & 0x7FFFFFFF;
  v16 = *(a1 + 40);
  if ((v13 & 0x7FFFFFFF) > 0x1000)
  {
    ++v14;
  }

  if (v16 <= v15)
  {
    ++v14;
  }

  v17 = *(a1 + 112);
  v18 = v16 - 1;
  v20 = v17 < 1 || v18 < v17;
  if ((v13 & 0x80000000) != 0)
  {
    v14 += v20;
  }

  else if ((v20 & 1) != 0 || v13 >= 2 && v16 - v17 < v13)
  {
    ++v14;
  }

  if (*(a1 + 128) >= v15)
  {
    ++v14;
  }

  v21 = *(a1 + 108);
  if ((v21 & 0x7FFFFFF8) != 0)
  {
    v22 = v14;
  }

  else
  {
    v22 = v14 + 1;
  }

  v23 = v21 & 0x7FFFFFFF;
  if (v16 > (v21 & 0x7FFFFFFF))
  {
    v24 = v22;
  }

  else
  {
    v24 = v22 + 1;
  }

  v25 = *(a1 + 120);
  v27 = v25 < 1 || v18 < v25;
  if ((v21 & 0x80000000) != 0)
  {
    v24 += v27;
    LODWORD(v21) = 1;
  }

  else if ((v27 & 1) != 0 || v21 >= 2 && v16 - v25 < v21)
  {
    ++v24;
  }

  if (*(a1 + 132) < v23)
  {
    v28 = v24;
  }

  else
  {
    v28 = v24 + 1;
  }

  if ((v13 & 0x80000000) != 0)
  {
    LODWORD(v13) = 1;
  }

  if (v17 >= v25)
  {
    v13 = v21;
  }

  else
  {
    v13 = v13;
  }

  if (v17 >= v25)
  {
    v29 = *(a1 + 120);
  }

  else
  {
    v29 = *(a1 + 112);
  }

  if (v17 <= v25)
  {
    v17 = *(a1 + 120);
  }

  if ((v29 + v13) <= v17)
  {
    v30 = v28;
  }

  else
  {
    v30 = v28 + 1;
  }

  if ((*(a1 + 64) & 0xFFFFFFFFFFFFFFFDLL) != 0)
  {
    if (v30)
    {
      v31 = 193;
LABEL_106:
      v35 = sub_1000043D4(0);
      log_corrupt(v35, "%s:%d: Container corruption detected by %s:%u!\n", "nx_corruption_detected_int", 39, "nx_check_superblock", v31);
      return 92;
    }

    return 0;
  }

  v32 = *(a1 + 140);
  if (!*(a1 + 152))
  {
    ++v30;
  }

  if (!*(a1 + 160))
  {
    ++v30;
  }

  if (!(a3 | v32))
  {
    if (!*(a1 + 148) && !*(a1 + 136) && !*(a1 + 144))
    {
      goto LABEL_104;
    }

    v32 = 0;
  }

  if (*(a1 + 136) >= v15)
  {
    ++v30;
  }

  v33 = *(a1 + 148);
  if (*(a1 + 144) >= v23)
  {
    ++v30;
  }

  if (v32 < 2)
  {
    ++v30;
  }

  if (v32 < v15)
  {
    v34 = v30;
  }

  else
  {
    v34 = v30 + 1;
  }

  if (v33 < 2)
  {
    ++v34;
  }

  if (v33 < v23)
  {
    v30 = v34;
  }

  else
  {
    v30 = v34 + 1;
  }

LABEL_104:
  if (v30 | (*(a1 + 180) > 0x64u))
  {
    v31 = 226;
    goto LABEL_106;
  }

  return 0;
}

pthread_cond_t *free_cv(pthread_cond_t *result)
{
  if (result)
  {
    return pthread_cond_destroy(result);
  }

  return result;
}

uint64_t cv_wait(pthread_cond_t *a1, pthread_mutex_t *a2, uint64_t a3, uint64_t a4, timespec *a5)
{
  if (a5)
  {
    v14.tv_sec = 0xAAAAAAAAAAAAAAAALL;
    v14.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
    clock_gettime(_CLOCK_REALTIME, &v14);
    v8 = __OFADD__(a5->tv_sec, v14.tv_sec);
    v9 = a5->tv_sec + v14.tv_sec;
    a5->tv_sec = v9;
    if (v8)
    {
      return 35;
    }

    else
    {
      tv_nsec = a5->tv_nsec;
      v8 = __OFADD__(tv_nsec, v14.tv_nsec);
      v12 = tv_nsec + v14.tv_nsec;
      if (v8)
      {
        v12 = 999999999;
      }

      a5->tv_nsec = v12;
      if (v12 > 0x3B9ACA00)
      {
        v13 = v12 - 1000000000;
        a5->tv_sec = v9 + (v13 - 1) / 0x3B9ACA00 + 1;
        a5->tv_nsec = v13 - 1000000000 * ((v13 - 1) / 0x3B9ACA00);
      }

      LODWORD(result) = pthread_cond_timedwait(a1, a2, a5);
      if (result == 60)
      {
        return 35;
      }

      else
      {
        return result;
      }
    }
  }

  else
  {

    return pthread_cond_wait(a1, a2);
  }
}

const char *log_debug(const char *result, ...)
{
  va_start(va, result);
  if (apfs_log_level >= 5)
  {
    return vfprintf(__stderrp, result, va);
  }

  return result;
}

const char *log_info(const char *result, ...)
{
  va_start(va, result);
  if (apfs_log_level >= 4)
  {
    return vfprintf(__stderrp, result, va);
  }

  return result;
}

const char *log_warn(const char *result, ...)
{
  va_start(va, result);
  if (apfs_log_level >= 3)
  {
    return vfprintf(__stderrp, result, va);
  }

  return result;
}

const char *log_err(const char *result, ...)
{
  va_start(va, result);
  if (apfs_log_level >= 2)
  {
    return vfprintf(__stderrp, result, va);
  }

  return result;
}

uint64_t log_corrupt(uint64_t a1, const char *a2, ...)
{
  va_start(va, a2);
  if (apfs_log_level >= 1)
  {
    return vfprintf(__stderrp, a2, va);
  }

  return result;
}

void *_apfs_obj_zalloc(size_t size, uint64_t a2)
{
  if (size == 0x2000)
  {
    v2 = qword_1000581A0;
    goto LABEL_5;
  }

  v2 = size;
  if (size == 4096)
  {
    v2 = *(&apfs_zone_infos + ((a2 << 63 >> 63) & 0x78) + 8);
LABEL_5:
    v3 = v2;
    v4 = 3442331901;
    goto LABEL_7;
  }

  v3 = size;
  v4 = 889960617;
LABEL_7:
  result = malloc_type_calloc(1uLL, v3, v4);
  if (result)
  {
    atomic_fetch_add_explicit(&apfs_allocated_mem_total, v2, memory_order_relaxed);
  }

  return result;
}

void *_apfs_zalloc(unsigned int a1)
{
  v1 = *(&apfs_zone_infos + 3 * a1 + 1);
  result = malloc_type_calloc(1uLL, v1, 0xCD2DD0FDuLL);
  if (result)
  {
    atomic_fetch_add_explicit(&apfs_allocated_mem_total, v1, memory_order_relaxed);
  }

  return result;
}

void *_apfs_calloc_typed(size_t a1, size_t a2, malloc_type_id_t a3)
{
  result = malloc_type_calloc(a1, a2, a3);
  if (result)
  {
    atomic_fetch_add_explicit(&apfs_allocated_mem_total, a2 * a1, memory_order_relaxed);
  }

  return result;
}

void _apfs_obj_zfree(void *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x2000)
  {
    if (!a1)
    {
      return;
    }

    v4 = &qword_1000581A0;
  }

  else
  {
    v3 = a2;
    if (a2 != 4096)
    {
      if (!a1)
      {
        return;
      }

      goto LABEL_9;
    }

    if (!a1)
    {
      return;
    }

    v4 = (&apfs_zone_infos + ((a3 << 63 >> 63) & 0x78) + 8);
  }

  v3 = *v4;
LABEL_9:
  free(a1);
  atomic_fetch_add_explicit(&apfs_allocated_mem_total, -v3, memory_order_relaxed);
}

void _apfs_zfree(void *a1, unsigned int a2)
{
  if (a1)
  {
    v2 = *(&apfs_zone_infos + 3 * a2 + 1);
    free(a1);
    atomic_fetch_add_explicit(&apfs_allocated_mem_total, -v2, memory_order_relaxed);
  }
}

void _apfs_free(void *a1, uint64_t a2)
{
  if (a1)
  {
    free(a1);
    atomic_fetch_add_explicit(&apfs_allocated_mem_total, -a2, memory_order_relaxed);
  }
}

void *_apfs_malloc_typed(size_t a1, malloc_type_id_t a2)
{
  result = malloc_type_malloc(a1, a2);
  if (result)
  {
    atomic_fetch_add_explicit(&apfs_allocated_mem_total, a1, memory_order_relaxed);
  }

  return result;
}

void *_apfs_calloc(size_t a1, size_t a2)
{
  result = malloc_type_calloc(a1, a2, 0x7012DB5EuLL);
  if (result)
  {
    atomic_fetch_add_explicit(&apfs_allocated_mem_total, a2 * a1, memory_order_relaxed);
  }

  return result;
}

uint64_t nx_check(uint64_t *a1, char a2)
{
  v255 = 0xAAAAAAAAAAAAAAAALL;
  v256 = 0xAAAAAAAAAAAAAAAALL;
  v254 = 0;
  v252 = 0xAAAAAAAAAAAAAAAALL;
  v253 = 0;
  v251 = 0;
  memset(v250, 170, sizeof(v250));
  memset(v249, 170, sizeof(v249));
  v4 = a1[47];
  v5 = sub_100009C74(a1, &v256);
  if (v5)
  {
    v6 = v5;
    log_err("%s:%d: %s unable to get spaceman: %d\n", "nx_check", 70, (a1[48] + 212), v5);
    return v6;
  }

  v7 = v256[47];
  v237 = obj_xid(v256);
  v8 = *(v7 + 32);
  v240 = v4;
  v9 = *(v4 + 36);
  if (v8 != v9)
  {
    ++v254;
    log_warn("%s:%d: %s spaceman block size %d doesn't match nx superblock block size %d\n", "nx_check", 78, (a1[48] + 212), v8, v9);
    v8 = *(v7 + 32);
  }

  v227 = a2;
  v10 = *(v7 + 36);
  LODWORD(v11) = v8;
  if (v10 != 8 * v8)
  {
    ++v254;
    log_warn("%s:%d: %s spaceman blocks per chunk is bad: %d\n", "nx_check", 82, (a1[48] + 212), v10);
    LODWORD(v11) = *(v7 + 32);
  }

  v12 = v11 + 0x1FFFFFFFD8;
  v13 = v12 >> 5;
  v14 = *(v7 + 40);
  if (v14 == (v12 >> 5))
  {
    v11 = v11;
  }

  else
  {
    ++v254;
    log_warn("%s:%d: %s spaceman chunks per cib is bad: %d\n", "nx_check", 86, (a1[48] + 212), v14);
    v11 = *(v7 + 32);
  }

  v243 = v11 + 0x7FFFFFFD8;
  v15 = (v11 + 0x7FFFFFFD8) >> 3;
  v16 = *(v7 + 44);
  if (v16 != v15)
  {
    ++v254;
    log_warn("%s:%d: %s spaceman cibs per cab is bad: %d\n", "nx_check", 90, (a1[48] + 212), v16);
  }

  v17 = (8 * v8);
  v18 = *(v7 + 48);
  v231 = (v7 + 48);
  v19 = *(v7 + 96) + v18;
  v20 = *(v240 + 40);
  if (v19 != v20)
  {
    ++v254;
    log_warn("%s:%d: %s spaceman block count %lld doesn't match nx superblock block count %lld\n", "nx_check", 94, (a1[48] + 212), v19, v20);
    v18 = *v231;
  }

  v21 = *(v7 + 56);
  if (v18 % v17)
  {
    v22 = v18 / v17 + 1;
  }

  else
  {
    v22 = v18 / v17;
  }

  v23 = v237;
  if (v21 != v22)
  {
    ++v254;
    log_warn("%s:%d: %s spaceman chunk count is bad: %lld\n", "nx_check", 97, (a1[48] + 212), v21);
    v21 = *(v7 + 56);
  }

  v24 = *(v7 + 64);
  v25 = (v12 >> 5);
  v235 = v25;
  if (v21 % v25)
  {
    v26 = v21 / v25 + 1;
  }

  else
  {
    v26 = v21 / v25;
  }

  if (v26 != v24)
  {
    ++v254;
    log_warn("%s:%d: %s spaceman cib count is bad: %d\n", "nx_check", 100, (a1[48] + 212), v24);
    LODWORD(v24) = *(v7 + 64);
  }

  v27 = v24 / v15;
  if (v24 % v15)
  {
    ++v27;
  }

  if (v27 == 1)
  {
    v28 = 0;
  }

  else
  {
    v28 = v27;
  }

  v29 = *(v7 + 68);
  if (v29 != v28)
  {
    ++v254;
    log_warn("%s:%d: %s spaceman cab count is bad: %d\n", "nx_check", 109, (a1[48] + 212), v29);
  }

  v30 = *(v7 + 72);
  v31 = *(v7 + 48);
  if (v30 > v31)
  {
    ++v254;
    log_warn("%s:%d: %s spaceman free count is too large: %lld > %lld\n", "nx_check", 112, (a1[48] + 212), v30, v31);
  }

  v33 = *(v7 + 96);
  v32 = *(v7 + 104);
  if (v33 % v17)
  {
    v34 = v33 / v17 + 1;
  }

  else
  {
    v34 = v33 / v17;
  }

  if (v32 != v34)
  {
    ++v254;
    log_warn("%s:%d: %s spaceman tier2 chunk count is bad: %lld\n", "nx_check", 116, (a1[48] + 212), v32);
    v32 = *(v7 + 104);
  }

  v35 = *(v7 + 112);
  if (v32 % v235)
  {
    v36 = v32 / v235 + 1;
  }

  else
  {
    v36 = v32 / v235;
  }

  if (v36 != v35)
  {
    ++v254;
    log_warn("%s:%d: %s spaceman tier2 cib count is bad: %d\n", "nx_check", 119, (a1[48] + 212), v35);
    LODWORD(v35) = *(v7 + 112);
  }

  v37 = v35 / v15;
  if (v35 % v15)
  {
    ++v37;
  }

  if (v37 == 1)
  {
    v38 = 0;
  }

  else
  {
    v38 = v37;
  }

  v39 = *(v7 + 116);
  if (v39 != v38)
  {
    ++v254;
    log_warn("%s:%d: %s spaceman tier2 cab count is bad: %d\n", "nx_check", 128, (a1[48] + 212), v39);
  }

  v40 = *(v7 + 120);
  v41 = *(v7 + 96);
  if (v40 > v41)
  {
    ++v254;
    log_warn("%s:%d: %s spaceman tier2 free count is too large: %lld > %lld\n", "nx_check", 131, (a1[48] + 212), v40, v41);
  }

  v42.i64[0] = *(v7 + 64);
  v42.i64[1] = *(v7 + 112);
  v43 = vaddlvq_u32(v42) + *(v7 + 56) + *(v7 + 104);
  v44 = *(v7 + 152) & 0x7FFFFFFFFFFFFFFFLL;
  if (v44 != 3 * v43)
  {
    ++v254;
    log_warn("%s:%d: %s spaceman IP block count is bad: %lld\n", "nx_check", 137, (a1[48] + 212), v44);
    v44 = *(v7 + 152) & 0x7FFFFFFFFFFFFFFFLL;
  }

  v45 = *(v7 + 160);
  if ((*(v7 + 32) + 8 * ((v44 + 63) >> 6) - 1) / *(v7 + 32) != v45)
  {
    ++v254;
    log_warn("%s:%d: %s spaceman IP bm block count is bad: %d\n", "nx_check", 140, (a1[48] + 212), v45);
  }

  v46 = *(v7 + 164) & 0x7FFFFFFF;
  if (v46 >= 0xFFFF)
  {
    ++v254;
    log_warn("%s:%d: %s spaceman IP bitmap block count is too large: %d\n", "nx_check", 143, (a1[48] + 212), v46);
  }

  v47 = *(v7 + 148);
  if (v47 <= 3)
  {
    ++v254;
    log_warn("%s:%d: %s spaceman IP bitmap tx multiplier is too small: %d\n", "nx_check", 146, (a1[48] + 212), v47);
  }

  v48 = *(v7 + 160);
  v49 = *(v7 + 164) & 0x7FFFFFFF;
  if (v49 / v48 <= 3)
  {
    ++v254;
    log_warn("%s:%d: %s spaceman IP bitmap block count per tx is too small: %d\n", "nx_check", 149, (a1[48] + 212), v49 / v48);
    v48 = *(v7 + 160);
    v49 = *(v7 + 164) & 0x7FFFFFFF;
  }

  v50 = *(v7 + 148);
  if (v49 != v50 * v48)
  {
    v51 = 65534;
    if (v49 != 65534)
    {
      ++v254;
      log_warn("%s:%d: %s spaceman IP bitmap block count is bad: %d\n", "nx_check", 156, (a1[48] + 212), v49);
      v48 = *(v7 + 160);
      v50 = *(v7 + 148);
      v51 = *(v7 + 164) & 0x7FFFFFFF;
    }

    if (v51 / v48 < v50 >> 1)
    {
      ++v254;
      log_warn("%s:%d: %s spaceman IP bitmap block count is too low: %d\n", "nx_check", 159, (a1[48] + 212), v51);
    }
  }

  v52 = *(v7 + 48);
  v53 = *(v7 + 168);
  if (!v53 || v53 >= v52)
  {
    ++v254;
    log_warn("%s:%d: %s spaceman IP bm base address is bad: %lld\n", "nx_check", 166, (a1[48] + 212), v53);
  }

  v54 = *(v7 + 176);
  if (!v54 || v54 >= v52)
  {
    ++v254;
    log_warn("%s:%d: %s spaceman IP base address is bad: %lld\n", "nx_check", 169, (a1[48] + 212), v54);
  }

  v245 = v43;
  v247 = a1;
  v236 = v15;
  v234 = v7;
  if (*(v7 + 160))
  {
    v55 = 0;
    v230 = 0;
    do
    {
      v56 = v256;
      v57 = *(v256[109] + 8 * v55);
      if (v57 > v23)
      {
        ++v254;
        log_warn("%s:%d: %s spaceman IP bitmap block %d xid %lld > spaceman xid %lld\n", "nx_check", 176, (a1[48] + 212), v55, v57, v23);
        v56 = v256;
      }

      v58 = *(v56[110] + 2 * v55);
      if ((*(v7 + 164) & 0x7FFFFFFFu) <= v58)
      {
        ++v254;
        log_warn("%s:%d: %s spaceman IP bitmap block %d index %d out of range\n", "nx_check", 179, (a1[48] + 212), v55, v58);
        v58 = *(v256[110] + 2 * v55);
      }

      v59 = sub_100009C38(a1, v7, v58, &v249[2]);
      if (v59 || (v59 = obj_get(a1[49], 0x40000000uLL, v249[2], &xmmword_1000517E0, 0, 0, 0, 0, &v251)) != 0)
      {
        v23 = v237;
        ++v254;
        log_warn("%s:%d: %s spaceman IP bitmap unable to get bitmap block %d @ %lld: %d\n", "nx_check", 187, (a1[48] + 212), v55, v249[2], v59);
      }

      else
      {
        v23 = v237;
        if (v55 == *(v7 + 160) - 1)
        {
          v60 = (*(v7 + 152) & 0x7FFFFFFFFFFFFFFFuLL) % (8 * *(v7 + 32));
        }

        else
        {
          v60 = (8 * *(v7 + 32));
        }

        v230 += bitmap_count_bits(v251[7], 0, 0, v60);
        obj_release(v251);
      }

      ++v55;
    }

    while (v55 < *(v7 + 160));
  }

  else
  {
    v230 = 0;
  }

  v61 = v7;
  v63 = v43;
  v62 = a1;
  v64 = *(v7 + 56) + 2 * v245 + *(v7 + 104) - 1;
  if (v230 > v64)
  {
    ++v254;
    log_warn("%s:%d: %s spaceman IP bitmap has too many free blocks %lld > %lld\n", "nx_check", 196, (a1[48] + 212), v230, v64);
  }

  v65 = *(v7 + 320);
  v66 = *(v7 + 164);
  LODWORD(v67) = v66 & 0x7FFFFFFF;
  if ((v66 & 0x7FFFFFFFu) <= v65)
  {
    ++v254;
    log_warn("%s:%d: %s spaceman IP bitmap free head %d out of range\n", "nx_check", 201, (a1[48] + 212), v65);
    v66 = *(v7 + 164);
    LODWORD(v67) = v66 & 0x7FFFFFFF;
  }

  v68 = *(v7 + 322);
  if (v67 > v68 || (++v254, log_warn("%s:%d: %s spaceman IP bitmap free head %d out of range\n", "nx_check", 204, (a1[48] + 212), v68), v66 = *(v7 + 164), LODWORD(v67) = v66 & 0x7FFFFFFF, (v66 & 0x7FFFFFFF) != 0))
  {
    v69 = 0;
    v70 = 0;
    v71 = v256[111];
    do
    {
      v72 = *(v71 + 2 * v69);
      v73 = v72 == 0xFFFF || v67 > v72;
      if (!v73)
      {
        ++v254;
        log_warn("%s:%d: %s spaceman IP bitmap free next %d, value %d invalid\n", "nx_check", 209, (a1[48] + 212), v69, v72);
        v66 = *(v7 + 164);
        v71 = v256[111];
        v72 = *(v71 + 2 * v69);
      }

      v67 = v66 & 0x7FFFFFFF;
      if (v67 > v72)
      {
        ++v70;
      }

      ++v69;
    }

    while (v69 < v67);
  }

  else
  {
    v70 = 0;
  }

  v74 = *(v7 + 320);
  if (v74 != 0xFFFF)
  {
    ++v70;
  }

  v75 = (v67 - *(v7 + 160));
  if (v70 != v75)
  {
    ++v254;
    log_warn("%s:%d: %s spaceman IP bitmap next array free count is wrong, %lld != %d\n", "nx_check", 224, (a1[48] + 212), v70, v75);
    v66 = *(v7 + 164);
    v74 = *(v7 + 320);
  }

  v76 = v66 & 0x7FFFFFFF;
  v77 = v237;
  if (v76 && v76 > v74)
  {
    v78 = 1;
    do
    {
      --v70;
      if (v78 >= v76)
      {
        break;
      }

      v74 = *(v256[111] + 2 * v74);
      ++v78;
    }

    while (v76 > v74);
  }

  if (v70 < 0)
  {
    ++v254;
    log_warn("%s:%d: %s spaceman IP bitmap free list corrupted, too long, count %lld\n");
  }

  else if (v70)
  {
    ++v254;
    log_warn("%s:%d: %s spaceman IP bitmap free list corrupted, too short, count %lld\n");
  }

  v79 = *(v7 + 200);
  v80 = *(v7 + 152) & 0x7FFFFFFFFFFFFFFFLL;
  if (v79 > v80)
  {
    ++v254;
    log_warn("%s:%d: %s spaceman IP free queue count is too large: %lld > %lld\n", "nx_check", 244, (a1[48] + 212), v79, v80);
  }

  if (*(v7 + 208))
  {
    v81 = sub_10000B310(a1, v256, 0, 0, 0, &v250[4]);
    if (v81)
    {
      ++v254;
      log_warn("%s:%d: %s unable to get spaceman IP free queue tree: %d\n", "nx_check", 252, (a1[48] + 212), v81);
    }

    else if (v250[4])
    {
      v143 = btree_check(v250[4], 0, 0, 0);
      if (v143)
      {
        v144 = v143;
        ++v254;
        log_warn("%s:%d: %s spaceman IP free queue tree sanity check failed: %d\n", "nx_check", 256, (a1[48] + 212), v143);
        v249[1] = 0x1000000008;
      }

      else
      {
        v249[1] = 0x1000000008;
        v144 = bt_lookup_first(v250[4], 0, &v250[1], &v249[1] + 1, &v250[3], &v249[1]);
      }

      v170 = 0;
      v171 = 0;
      for (i = 0; !v144; v144 = bt_lookup_variant(v250[4], 0, &v250[1], &v249[1] + 1, HIDWORD(v249[1]), &v250[3], &v249[1], 4, 0, 0))
      {
        if (LODWORD(v249[1]))
        {
          v173 = v250[3];
        }

        else
        {
          v250[3] = 1;
          v173 = 1;
        }

        v174 = v250[1];
        if (v250[1] > v237)
        {
          ++v254;
          log_warn("%s:%d: %s spaceman IP free queue tree entry %lld:%lld xid larger than spaceman xid %lld\n", "nx_check", 269, (v247[48] + 212), v250[1], v250[2], v237);
          v174 = v250[1];
        }

        if (v174 >= i)
        {
          v176 = v250[2];
          if (v174 == i)
          {
            if (v250[2] < v171)
            {
              ++v254;
              log_warn("%s:%d: %s spaceman IP free queue tree entries out of order: addr %lld < %lld\n", "nx_check", 277, (v247[48] + 212), v250[2], v171);
              v176 = v250[2];
            }

            v171 = v250[3] + v176;
          }

          else
          {
            v171 = 0;
            i = v174;
          }

          v175 = v247;
        }

        else
        {
          ++v254;
          v175 = v247;
          log_warn("%s:%d: %s spaceman IP free queue tree entries out of order: xid %lld < %lld\n", "nx_check", 272, (v247[48] + 212), v174, i);
          v171 = 0;
          v176 = v250[2];
          i = v250[1];
        }

        v177 = sub_10000D4FC(v175, v256, v176, v249);
        if (v177)
        {
          ++v254;
          if (v177 == 2)
          {
            log_warn("%s:%d: %s spaceman IP free queue tree entry %lld:%lld %lld addr is bad\n");
          }

          else
          {
            log_warn("%s:%d: %s error getting IP block index for spaceman IP free queue tree entry %lld:%lld %lld\n");
          }
        }

        if (v250[3] >= 2uLL)
        {
          v178 = sub_10000D4FC(v247, v256, v250[3] + v250[2] - 1, v249);
          if (v178)
          {
            ++v254;
            if (v178 == 2)
            {
              log_warn("%s:%d: %s spaceman IP free queue tree entry %lld:%lld %lld end addr is bad\n");
            }

            else
            {
              log_warn("%s:%d: %s error getting end block index for spaceman IP free queue tree entry %lld:%lld %lld\n");
            }
          }
        }

        v170 += v173;
        LODWORD(v249[1]) = 8;
      }

      if (v144 != 2)
      {
        ++v254;
        log_warn("%s:%d: %s spaceman IP free queue tree iteration aborted with error %d\n", "nx_check", 304, (v247[48] + 212), v144);
      }

      obj_release(v250[4]);
      v63 = v245;
      v62 = v247;
      v77 = v237;
      v61 = v7;
      v82 = v170;
      goto LABEL_123;
    }
  }

  v82 = 0;
LABEL_123:
  v83 = *(v61 + 200);
  if (v82 != v83)
  {
    ++v254;
    log_warn("%s:%d: %s spaceman IP free queue count %lld doesn't match count in the free queue: %lld\n", "nx_check", 310, (v62[48] + 212), v83, v82);
  }

  v229 = v82;
  v84 = 0;
  v85 = 0;
  v241 = 0;
  v228 = 2 * v63;
  v232 = (v243 >> 3);
  v86 = v236;
  v87 = 1;
  do
  {
    v233 = v87;
    v88 = &v231[6 * v84];
    if (*(v88 + 4))
    {
      v239 = v84;
      v89 = 0;
      v244 = 0;
      v246 = 0;
      v90 = 0xFFFFFFFFLL;
      while (1)
      {
        if (*(v88 + 5))
        {
          if (v89 / v86 != v90 || v85 == 0)
          {
            v242 = v89 / v86;
            v92 = *(v256[v239 + 112] + 8 * v242);
            if (v253)
            {
              obj_release(v253);
              v253 = 0;
            }

            if (obj_get(v62[49], 0x40000000uLL, v92, &xmmword_1000517C0, 0, 0, 0, 0, &v253))
            {
              ++v254;
              log_warn("%s:%d: %s unable to read cab %d @ %lld: %d\n");
              goto LABEL_198;
            }

            v122 = v253[7];
            v123 = *(v122 + 36);
            if (v123 > (obj_size_phys(v253) - 40) >> 3)
            {
              ++v254;
              log_warn("%s:%d: %s cab %d @ %lld cab_cib_count %d invalid\n", "nx_check", 337, (v62[48] + 212), v242, v92, *(v122 + 36));
              v89 = v89 + v232 - 1 + ~((v89 + v232 - 1) % v232);
              v85 = v122;
              v77 = v237;
              goto LABEL_198;
            }

            if (obj_xid(v253) > v237)
            {
              ++v254;
              v124 = (v62[48] + 212);
              v125 = obj_xid(v253);
              log_warn("%s:%d: %s cab %d xid %lld > spaceman xid %lld\n", "nx_check", 344, v124, v242, v125, v237);
            }

            v85 = v122;
            v126 = *(v122 + 32);
            v95 = v89 / v86;
            if (v126 != v242)
            {
              ++v254;
              log_warn("%s:%d: %s cab %d index %d should be %d\n", "nx_check", 347, (v62[48] + 212), v242, v126, v242);
              v95 = v89 / v86;
            }

            v127 = *(v122 + 36);
            v77 = v237;
            if (v127 != v86 && (*(v88 + 5) - 1 != v95 || v127 != *(v88 + 4) % v86))
            {
              ++v254;
              v128 = v86;
              if (*(v88 + 5) - 1 == v95)
              {
                v128 = *(v88 + 4) % v86;
              }

              log_warn("%s:%d: %s cab %d cib count %d should be %d\n", "nx_check", 352, (v62[48] + 212), v95, v127, v128);
              v95 = v89 / v86;
            }
          }

          else
          {
            v95 = v90;
          }

          v242 = v95;
          v94 = (v85 + 8 * (v89 - v95 * v86) + 40);
          v93 = v256;
        }

        else
        {
          v93 = v256;
          v94 = (v256[v239 + 112] + 8 * v89);
          v242 = v90;
        }

        v96 = *v94;
        v97 = sub_10000D4FC(v62, v93, *v94, v249);
        if (v97)
        {
          ++v254;
          if (v97 == 2)
          {
            log_warn("%s:%d: %s spaceman chunk info block %lld addr %lld not within IP block range\n");
          }

          else
          {
            log_warn("%s:%d: %s error getting IP block index for spaceman chunk info block %lld addr %lld\n");
          }
        }

        if (!obj_get(v62[49], 0x40000000uLL, v96, &xmmword_1000517D0, 0, 0, 0, 0, &v252))
        {
          v238 = v85;
          if (obj_xid(v252) > v77)
          {
            ++v254;
            v98 = (v62[48] + 212);
            v99 = obj_xid(v252);
            log_warn("%s:%d: %s cib %lld xid %lld > spaceman xid %lld\n", "nx_check", 374, v98, v89, v99, v77);
          }

          v100 = v252[7];
          v101 = *(v100 + 32);
          if (v89 != v101)
          {
            ++v254;
            log_warn("%s:%d: %s cib %lld index %d should be %lld\n", "nx_check", 378, (v62[48] + 212), v89, v101, v89);
          }

          v102 = *(v100 + 36);
          v103 = v13;
          if (v102 != v13)
          {
            if (v89 != *(v88 + 4) - 1 || (v103 = *(v100 + 36), v88[1] % v235 != v102))
            {
              ++v254;
              v104 = v235;
              if (v89 == *(v88 + 4) - 1)
              {
                v104 = v88[1] % v235;
              }

              log_warn("%s:%d: %s cib %lld chunk info count %d should be %lld\n", "nx_check", 383, (v62[48] + 212), v89, v102, v104);
              v103 = *(v100 + 36);
            }

            if (v103 > v13)
            {
              ++v254;
              log_warn("%s:%d: %s cib %lld cib_chunk_info_count %d invalid\n", "nx_check", 387, (v62[48] + 212), v96, v103);
              v103 = *(v100 + 36);
            }
          }

          if (v103 >= v13)
          {
            v105 = v13;
          }

          else
          {
            v105 = v103;
          }

          if (!v105)
          {
LABEL_197:
            obj_release(v252);
            v62 = v247;
            v86 = v236;
            v77 = v237;
            v85 = v238;
            goto LABEL_198;
          }

          v106 = 0;
          v107 = v17 * v235 * v89;
          v108 = (v100 + 64);
          while (2)
          {
            v109 = *(v108 - 3);
            if (v109 > obj_xid(v252))
            {
              ++v254;
              v110 = (v247[48] + 212);
              v111 = *(v108 - 3);
              v112 = obj_xid(v252);
              log_warn("%s:%d: %s cib %lld chunk info %d xid %lld > cib xid %lld\n", "nx_check", 392, v110, v89, v106, v111, v112);
            }

            v113 = *(v108 - 2);
            if (v107 != v113)
            {
              ++v254;
              log_warn("%s:%d: %s cib %lld chunk info %d addr %lld should be %lld\n", "nx_check", 396, (v247[48] + 212), v89, v106, v113, v107);
            }

            v114 = *(v108 - 1) & 0xFFFFF;
            if (v114 != v17 && (v89 != *(v88 + 4) - 1 || v106 != *(v100 + 36) - 1 || *v88 % v17 != v114))
            {
              ++v254;
              log_warn("%s:%d: %s cib %lld chunk info %d block count %d should be %d\n");
              goto LABEL_191;
            }

            if ((*(v108 - 1) & 0xFFFFFu) > v114)
            {
              ++v254;
              log_warn("%s:%d: %s cib %lld chunk info %d free count %d > chunk block count %d\n", "nx_check", 407, (v247[48] + 212), v89, v106, *(v108 - 1) & 0xFFFFF, *(v108 - 1) & 0xFFFFF);
            }

            if (*v108)
            {
              v115 = sub_10000D4FC(v247, v256, *v108, v249);
              if (v115)
              {
                ++v254;
                if (v115 == 2)
                {
                  log_warn("%s:%d: %s cib %lld ci %d bm addr %lld not within IP block range\n");
                }

                else
                {
                  log_warn("%s:%d: %s error getting IP block index for cib %lld ci %d bm addr %lld\n");
                }

                goto LABEL_191;
              }

              if (obj_get(v247[49], 0x40000000uLL, *v108, &xmmword_1000517E0, 0, 0, 0, 0, &v251))
              {
                ++v254;
                log_warn("%s:%d: %s cib %lld chunk %d unable to get bitmap block @ %lld: %d\n");
                goto LABEL_191;
              }

              v116 = bitmap_count_bits(v251[7], 0, 0, *(v108 - 1) & 0xFFFFF);
            }

            else
            {
              ++v241;
              v116 = *(v108 - 1) & 0xFFFFFLL;
            }

            v117 = *(v108 - 1) & 0xFFFFF;
            if (v116 != v117)
            {
              ++v254;
              log_warn("%s:%d: %s cib %lld ci %d free count %d doesn't match free bits in bitmap block %lld\n", "nx_check", 429, (v247[48] + 212), v89, v106, *(v108 - 1) & 0xFFFFF, v116);
              v117 = *(v108 - 1) & 0xFFFFF;
            }

            v246 += v116;
            v244 += v117;
            v118 = *(v240 + 1248);
            if (v118)
            {
              v119 = *(v240 + 1240);
              v257[0] = 0xAAAAAAAAAAAAAAAALL;
              v120 = calc_overlap_range(*(v108 - 2), *(v108 - 1) & 0xFFFFF, v119, v118, v257);
              if (v120)
              {
                if (*v108)
                {
                  v120 = bitmap_count_bits(v251[7], 0, v257[0] - *(v108 - 2), v257[0] + v120 - *(v108 - 2));
                }

                v246 -= v120;
                v244 -= v120;
              }
            }

            if (*v108)
            {
              obj_release(v251);
            }

LABEL_191:
            ++v106;
            LODWORD(v121) = *(v100 + 36);
            if (v121 >= v13)
            {
              v121 = v13;
            }

            else
            {
              v121 = v121;
            }

            v107 += v17;
            v108 += 4;
            if (v106 >= v121)
            {
              goto LABEL_197;
            }

            continue;
          }
        }

        ++v254;
        log_warn("%s:%d: %s unable to read cib %lld @ %lld: %d\n");
LABEL_198:
        ++v89;
        v90 = v242;
        if (v89 >= *(v88 + 4))
        {
          goto LABEL_213;
        }
      }
    }

    v244 = 0;
    v246 = 0;
LABEL_213:
    if (v253)
    {
      obj_release(v253);
      v253 = 0;
    }

    v129 = v88[3];
    v130 = v244;
    if (v244 != v129)
    {
      ++v254;
      log_warn("%s:%d: %s spaceman free count %lld doesn't match free count in chunks %lld\n", "nx_check", 469, (v62[48] + 212), v129, v244);
      v130 = v88[3];
    }

    if (v246 != v130)
    {
      ++v254;
      log_warn("%s:%d: %s spaceman free count %lld doesn't match free count in bitmap %lld\n", "nx_check", 472, (v62[48] + 212), v130, v246);
    }

    v87 = 0;
    v84 = 1;
  }

  while ((v233 & 1) != 0);
  if (v229 + v230 != v241 + v228)
  {
    ++v254;
    log_warn("%s:%d: %s spaceman IP free block count is wrong %lld != %lld\n", "nx_check", 477, (v62[48] + 212), v229 + v230, v241 + v228);
  }

  v131 = v234;
  v132 = v234[30];
  v133 = v234[6];
  if (v132 > v133)
  {
    ++v254;
    log_warn("%s:%d: %s spaceman free queue count is too large: %lld > %lld\n", "nx_check", 482, (v62[48] + 212), v132, v133);
  }

  if (!v234[31])
  {
    goto LABEL_227;
  }

  v134 = sub_10000B310(v62, v256, 1u, 0, 0, &v250[4]);
  if (v134)
  {
    ++v254;
    log_warn("%s:%d: %s unable to get spaceman free queue tree: %d\n", "nx_check", 490, (v62[48] + 212), v134);
    goto LABEL_227;
  }

  if (v250[4])
  {
    v145 = btree_check(v250[4], 0, 0, 0);
    if (v145)
    {
      v146 = v145;
      ++v254;
      log_warn("%s:%d: %s spaceman free queue tree sanity check failed: %d\n", "nx_check", 494, (v62[48] + 212), v145);
      v249[1] = 0x1000000008;
    }

    else
    {
      v249[1] = 0x1000000008;
      v146 = bt_lookup_first(v250[4], 0, &v250[1], &v249[1] + 1, &v250[3], &v249[1]);
    }

    v135 = 0;
    v179 = 0;
    v180 = 0;
    while (!v146)
    {
      if (LODWORD(v249[1]))
      {
        v181 = v250[3];
      }

      else
      {
        v250[3] = 1;
        v181 = 1;
      }

      v182 = v250[1];
      if (v250[1] > v237)
      {
        ++v254;
        log_warn("%s:%d: %s spaceman free queue tree entry %lld:%lld xid larger than spaceman xid %lld\n", "nx_check", 507, (v247[48] + 212), v250[1], v250[2], v237);
        v182 = v250[1];
      }

      if (v182 >= v180)
      {
        if (v182 == v180)
        {
          v183 = v250[2];
          if (v250[2] < v179)
          {
            ++v254;
            log_warn("%s:%d: %s spaceman free queue tree entries out of order: addr %lld < %lld\n", "nx_check", 515, (v247[48] + 212), v250[2], v179);
            v183 = v250[2];
          }

          v179 = v250[3] + v183;
          goto LABEL_334;
        }
      }

      else
      {
        ++v254;
        log_warn("%s:%d: %s spaceman free queue tree entries out of order: xid %lld < %lld\n", "nx_check", 510, (v247[48] + 212), v182, v180);
        v182 = v250[1];
      }

      v179 = 0;
      v183 = v250[2];
      v180 = v182;
LABEL_334:
      if (v183 < 1 || (v184 = *v231, v183 >= *v231))
      {
        ++v254;
        log_warn("%s:%d: %s spaceman free queue tree entry %lld:%lld %lld addr is bad\n", "nx_check", 524, (v247[48] + 212), v250[1], v183, v250[3]);
        v184 = *v231;
        v183 = v250[2];
      }

      v73 = v184 > v250[3];
      v185 = v184 - v250[3];
      if (!v73 || v183 > v185)
      {
        ++v254;
        log_warn("%s:%d: %s spaceman free queue tree entry %lld:%lld %lld range is bad\n", "nx_check", 527, (v247[48] + 212), v250[1], v183, v250[3]);
      }

      v135 += v181;
      LODWORD(v249[1]) = 8;
      v146 = bt_lookup_variant(v250[4], 0, &v250[1], &v249[1] + 1, HIDWORD(v249[1]), &v250[3], &v249[1], 4, 0, 0);
    }

    v62 = v247;
    if (v146 != 2)
    {
      ++v254;
      log_warn("%s:%d: %s spaceman free queue tree iteration aborted with error %d\n", "nx_check", 534, (v247[48] + 212), v146);
    }

    obj_release(v250[4]);
    v77 = v237;
    v131 = v234;
  }

  else
  {
LABEL_227:
    v135 = 0;
  }

  v136 = v131[30];
  if (v135 != v136)
  {
    ++v254;
    log_warn("%s:%d: %s spaceman free queue count %lld doesn't match count in the free queue: %lld\n", "nx_check", 540, (v62[48] + 212), v136, v135);
  }

  v137 = v131[35];
  v138 = v131[12];
  if (v137 > v138)
  {
    ++v254;
    log_warn("%s:%d: %s spaceman free queue count is too large: %lld > %lld\n", "nx_check", 544, (v62[48] + 212), v137, v138);
  }

  if (!v131[36])
  {
    goto LABEL_235;
  }

  v139 = sub_10000B310(v62, v256, 2u, 0, 0, &v250[4]);
  if (v139)
  {
    ++v254;
    log_warn("%s:%d: %s unable to get spaceman free queue tree: %d\n", "nx_check", 552, (v62[48] + 212), v139);
LABEL_235:
    v140 = 0;
    goto LABEL_236;
  }

  if (!v250[4])
  {
    goto LABEL_235;
  }

  v147 = btree_check(v250[4], 0, 0, 0);
  if (v147)
  {
    v148 = v147;
    ++v254;
    log_warn("%s:%d: %s spaceman free queue tree sanity check failed: %d\n", "nx_check", 556, (v62[48] + 212), v147);
    v249[1] = 0x1000000008;
  }

  else
  {
    v249[1] = 0x1000000008;
    v148 = bt_lookup_first(v250[4], 0, &v250[1], &v249[1] + 1, &v250[3], &v249[1]);
  }

  v140 = 0;
  v186 = 0;
  v187 = 0;
  while (!v148)
  {
    if (LODWORD(v249[1]))
    {
      v188 = v250[3];
    }

    else
    {
      v250[3] = 1;
      v188 = 1;
    }

    v189 = v250[1];
    if (v250[1] > v77)
    {
      ++v254;
      log_warn("%s:%d: %s spaceman free queue tree entry %lld:%lld xid larger than spaceman xid %lld\n", "nx_check", 569, (v247[48] + 212), v250[1], v250[2], v77);
      v189 = v250[1];
    }

    if (v189 >= v187)
    {
      if (v189 == v187)
      {
        v190 = v250[2];
        if (v250[2] < v186)
        {
          ++v254;
          log_warn("%s:%d: %s spaceman free queue tree entries out of order: addr %lld < %lld\n", "nx_check", 577, (v247[48] + 212), v250[2], v186);
          v190 = v250[2];
        }

        v186 = v250[3] + v190;
        goto LABEL_359;
      }
    }

    else
    {
      ++v254;
      log_warn("%s:%d: %s spaceman free queue tree entries out of order: xid %lld < %lld\n", "nx_check", 572, (v247[48] + 212), v189, v187);
      v189 = v250[1];
    }

    v186 = 0;
    v190 = v250[2];
    v187 = v189;
LABEL_359:
    if (v190 < 1 || (v191 = v234[12], v190 >= v191))
    {
      ++v254;
      log_warn("%s:%d: %s spaceman free queue tree entry %lld:%lld %lld addr is bad\n", "nx_check", 587, (v247[48] + 212), v250[1], v190, v250[3]);
      v191 = v234[12];
    }

    v73 = v191 > v250[3];
    v192 = v191 - v250[3];
    if (!v73 || v190 > v192)
    {
      ++v254;
      log_warn("%s:%d: %s spaceman free queue tree entry %lld:%lld %lld range is bad\n", "nx_check", 590, (v247[48] + 212), v250[1], v250[2], v250[3]);
    }

    v140 += v188;
    LODWORD(v249[1]) = 8;
    v148 = bt_lookup_variant(v250[4], 0, &v250[1], &v249[1] + 1, HIDWORD(v249[1]), &v250[3], &v249[1], 4, 0, 0);
    v77 = v237;
  }

  v62 = v247;
  if (v148 != 2)
  {
    ++v254;
    log_warn("%s:%d: %s spaceman free queue tree iteration aborted with error %d\n", "nx_check", 597, (v247[48] + 212), v148);
  }

  obj_release(v250[4]);
  v131 = v234;
LABEL_236:
  v141 = v131[35];
  if (v140 != v141)
  {
    ++v254;
    log_warn("%s:%d: %s spaceman free queue count %lld doesn't match count in the free queue: %lld\n", "nx_check", 603, (v62[48] + 212), v141, v140);
  }

  if (*(v240 + 168))
  {
    v142 = sub_100005138(v62, &v255);
    if (v142)
    {
      v6 = v142;
      log_err("%s:%d: %s unable to get reaper: %d\n");
      goto LABEL_380;
    }

    v149 = v255[47];
    v150 = *(v149 + 32);
    if (*(v149 + 40) >= v150)
    {
      log_warn("%s:%d: %s reaper completed ID 0x%llx not less than next reap ID 0x%llx\n", "nx_check_reaper", 940, (v62[48] + 212), *(v149 + 40), v150);
      v151 = 1;
    }

    else
    {
      v151 = 0;
    }

    v152 = *(v149 + 64);
    if ((v152 & 1) == 0)
    {
      ++v151;
      log_warn("%s:%d: %s reaper needs more cowbell, flags 0x%x\n", "nx_check_reaper", 943, (v62[48] + 212), v152);
    }

    v153 = *(v149 + 48);
    if (!v153)
    {
      if (!*(v149 + 56) || (++v151, log_warn("%s:%d: %s reaper has tail with no head\n", "nx_check_reaper", 947, (v62[48] + 212)), (v153 = *(v149 + 48)) == 0))
      {
LABEL_372:
        v254 += v151;
        obj_release(v255);
        v77 = v237;
        goto LABEL_373;
      }
    }

    v257[0] = 0xAAAAAAAAAAAAAAAALL;
    v154 = *(v149 + 68);
    while (1)
    {
      v155 = obj_get(v62[49], 0x80000000uLL, v153, &xmmword_100051748, 0, 0, 0, 0, v257);
      if (v155)
      {
        v6 = v155;
        log_err("%s:%d: %s failed to get reap list head: %d\n", "nx_check_reaper", 956, (v62[48] + 212), v155);
        obj_release(v255);
        log_err("%s:%d: %s reaper check failed with error: %d\n");
        goto LABEL_380;
      }

      v156 = v257[0][47];
      v157 = *(v156 + 44);
      if (v157 != ((obj_size_phys(v257[0]) - 64) / 0x28))
      {
        ++v151;
        v158 = (v62[48] + 212);
        v159 = *(v156 + 44);
        v160 = obj_size_phys(v257[0]);
        log_warn("%s:%d: %s reap list object 0x%llx max record count %u not expected value %u\n", "nx_check_reaper", 963, v158, v153, v159, (v160 - 64) / 0x28);
      }

      v161 = *(v156 + 44);
      if (*(v156 + 48) <= v161)
      {
        v62 = v247;
      }

      else
      {
        ++v151;
        v62 = v247;
        log_warn("%s:%d: %s reap list object 0x%llx record count %d larger than max %d\n", "nx_check_reaper", 966, (v247[48] + 212), v153, *(v156 + 48), v161);
      }

      v162 = *(v156 + 52);
      if (v162 != -1)
      {
        v163 = *(v156 + 44);
        if (v162 > v163)
        {
          ++v151;
          log_warn("%s:%d: %s reap list object 0x%llx first index %u larger than max %u\n", "nx_check_reaper", 969, (v62[48] + 212), v153, *(v156 + 52), v163);
        }
      }

      v164 = *(v156 + 56);
      if (v164 != -1)
      {
        v165 = *(v156 + 44);
        if (v164 > v165)
        {
          ++v151;
          log_warn("%s:%d: %s reap list object 0x%llx last index %u larger than max %u\n", "nx_check_reaper", 972, (v62[48] + 212), v153, *(v156 + 52), v165);
        }
      }

      v166 = *(v156 + 60);
      if (v166 != -1)
      {
        v167 = *(v156 + 44);
        if (v166 > v167)
        {
          ++v151;
          log_warn("%s:%d: %s reap list object 0x%llx free index %u larger than max %u\n", "nx_check_reaper", 975, (v62[48] + 212), v153, *(v156 + 60), v167);
        }
      }

      v168 = *(v156 + 32);
      v169 = *(v149 + 56);
      if (!v168)
      {
        if (v169 == v153)
        {
          goto LABEL_280;
        }

        ++v151;
        log_warn("%s:%d: %s last reap list object 0x%llx doesn't match tail 0x%llx\n", "nx_check_reaper", 984, (v62[48] + 212), v153, v169);
        v169 = *(v149 + 56);
        v168 = *(v156 + 32);
      }

      if (v169 == v153)
      {
        if (!v168)
        {
LABEL_280:
          v153 = 0;
          goto LABEL_281;
        }

        ++v151;
        log_warn("%s:%d: %s reap list tail 0x%llx is not last reap list object, next 0x%llx\n", "nx_check_reaper", 987, (v62[48] + 212), v153, v168);
        v153 = *(v156 + 32);
      }

      else
      {
        v153 = v168;
      }

LABEL_281:
      obj_release(v257[0]);
      if (*(v149 + 68))
      {
        --v154;
        if (v153 && !v154)
        {
          ++v151;
          log_warn("%s:%d: %s reap list expected %u objects, but haven't seen last reap list object yet\n");
          goto LABEL_372;
        }

        if (!v153 && v154)
        {
          ++v151;
          log_warn("%s:%d: %s reap list expected %u objects, but got last reap list object with %u more objects left\n");
          goto LABEL_372;
        }
      }

      if (!v153)
      {
        goto LABEL_372;
      }
    }
  }

LABEL_373:
  v193 = *(v240 + 160);
  if (v193)
  {
    v194 = obj_get(v62[49], 0x40000000uLL, v193, &om_desc, 0, 0, 0, 0, v250);
    if (v194)
    {
      v6 = v194;
      log_err("%s:%d: %s unable to get omap: %d\n");
LABEL_380:
      obj_release(v256);
      return v6;
    }

    if (obj_xid(v250[0]) > v77)
    {
      ++v254;
      v195 = (v62[48] + 212);
      v196 = obj_xid(v250[0]);
      log_warn("%s:%d: %s omap xid %lld > spaceman xid %lld\n", "nx_check", 633, v195, v196, v77);
    }

    v6 = sub_10002F8F8(v62, v250[0], v77, &v254);
    obj_release(v250[0]);
    if (v6)
    {
      log_err("%s:%d: %s omap check failed with error: %d\n");
      goto LABEL_380;
    }
  }

  v257[0] = 0xAAAAAAAAAAAAAAAALL;
  v248 = 0xAAAAAAAAAAAAAAAALL;
  if (*(v240 + 180))
  {
    for (j = 0; j < *(v240 + 180); ++j)
    {
      v198 = *(v240 + 184 + 8 * j);
      if (v198)
      {
        v199 = obj_get(v247[49], 0, v198, &apfs_desc, 0, 0, 0, 0, v257);
        if (v199)
        {
          log_err("%s:%d: %s unable to get fs[%d] oid %lld, %d\n", "nx_check", 654, (v247[48] + 212), j, v198, v199);
        }

        else
        {
          v200 = v257[0];
          v201 = v257[0][47];
          v202 = *(v201 + 128);
          if (!v202)
          {
            goto LABEL_392;
          }

          v203 = obj_get(v247[49], 0x40000000uLL, v202, &om_desc, 0, v257[0], 0, 0, v250);
          if (v203)
          {
            log_err("%s:%d: %s unable to get omap %lld: %d\n", "nx_check", 661, v257[0] + 4040, *(v257[0][47] + 128), v203);
            goto LABEL_440;
          }

          v204 = sub_10002F8F8(v257[0], v250[0], v237, &v254);
          obj_release(v250[0]);
          v200 = v257[0];
          if (!v204)
          {
            v201 = v257[0][47];
LABEL_392:
            if (*(v201 + 136))
            {
              if (*(v201 + 264) & 1) != 0 || (v227)
              {
                v248 = 0;
                fsroot_tree = apfs_get_fsroot_tree(v200, 0, 0, &v248);
                if (fsroot_tree)
                {
                  log_err("%s:%d: %s unable to get fs root tree: %d\n", "nx_check", 680, v257[0] + 4040, fsroot_tree);
                }

                else
                {
                  if (obj_xid(v248) > v237)
                  {
                    ++v254;
                    v206 = (v257[0] + 505);
                    v207 = obj_xid(v248);
                    log_warn("%s:%d: %s fs root tree xid %lld > spaceman xid %lld\n", "nx_check", 683, v206, v207, v237);
                  }

                  v208 = btree_check(v248, 0, 0, 0);
                  if (v208)
                  {
                    ++v254;
                    log_warn("%s:%d: %s fs root tree sanity check failed: %d\n", "nx_check", 688, v257[0] + 4040, v208);
                  }
                }

                if (v248)
                {
                  obj_release(v248);
                }
              }

              else
              {
                log_err("%s:%d: %s skipping check of fs[%d] oid %lld fs root tree because it's encrypted\n", "nx_check", 675, v200 + 4040, j, v198);
              }
            }

            v209 = *(v257[0][47] + 144);
            if (v209)
            {
              v248 = 0;
              extentref_tree = apfs_get_extentref_tree(v257[0], v209, 0, &v248);
              if (extentref_tree)
              {
                log_err("%s:%d: %s unable to get fs extentref tree: %d\n", "nx_check", 700, v257[0] + 4040, extentref_tree);
              }

              else
              {
                if (obj_xid(v248) > v237)
                {
                  ++v254;
                  v211 = (v257[0] + 505);
                  v212 = obj_xid(v248);
                  log_warn("%s:%d: %s fs extentref tree xid %lld > spaceman xid %lld\n", "nx_check", 703, v211, v212, v237);
                }

                v213 = btree_check(v248, 0, 0, 0);
                if (v213)
                {
                  ++v254;
                  log_warn("%s:%d: %s fs extentref tree sanity check failed: %d\n", "nx_check", 708, v257[0] + 4040, v213);
                }
              }

              if (v248)
              {
                obj_release(v248);
              }
            }

            if (*(v257[0][47] + 152))
            {
              v248 = 0;
              snap_meta_tree = apfs_get_snap_meta_tree(v257[0], 0, &v248);
              if (snap_meta_tree)
              {
                log_err("%s:%d: %s unable to get fs snap meta tree: %d\n", "nx_check", 719, v257[0] + 4040, snap_meta_tree);
              }

              else
              {
                if (obj_xid(v248) > v237)
                {
                  ++v254;
                  v215 = (v257[0] + 505);
                  v216 = obj_xid(v248);
                  log_warn("%s:%d: %s fs snap meta tree xid %lld > spaceman xid %lld\n", "nx_check", 722, v215, v216, v237);
                }

                v217 = btree_check(v248, 0, 0, 0);
                if (v217)
                {
                  ++v254;
                  log_warn("%s:%d: %s fs snap meta tree sanity check failed: %d\n", "nx_check", 727, v257[0] + 4040, v217);
                }
              }

              if (v248)
              {
                obj_release(v248);
              }
            }

            if (*(v257[0][47] + 1072))
            {
              v248 = 0;
              doc_id_tree = apfs_get_doc_id_tree(v257[0], 0, 0, 0, &v248);
              if (doc_id_tree)
              {
                log_err("%s:%d: %s unable to get doc-id tree: %d\n", "nx_check", 738, v257[0] + 4040, doc_id_tree);
              }

              else
              {
                if (obj_xid(v248) > v237)
                {
                  ++v254;
                  v219 = (v257[0] + 505);
                  v220 = obj_xid(v248);
                  log_warn("%s:%d: %s doc-id tree xid %lld > spaceman xid %lld\n", "nx_check", 741, v219, v220, v237);
                }

                v221 = btree_check(v248, 0, 0, 0);
                if (v221)
                {
                  ++v254;
                  log_warn("%s:%d: %s doc-id tree sanity check failed: %d\n", "nx_check", 746, v257[0] + 4040, v221);
                }
              }

              if (v248)
              {
                obj_release(v248);
              }
            }

            if (*(v257[0][47] + 1080))
            {
              v248 = 0;
              v222 = apfs_get_doc_id_tree(v257[0], 1, 0, 0, &v248);
              if (v222)
              {
                log_err("%s:%d: %s unable to get prev doc-id tree: %d\n", "nx_check", 757, v257[0] + 4040, v222);
              }

              else
              {
                if (obj_xid(v248) > v237)
                {
                  ++v254;
                  v223 = (v257[0] + 505);
                  v224 = obj_xid(v248);
                  log_warn("%s:%d: %s prev doc-id tree xid %lld > spaceman xid %lld\n", "nx_check", 760, v223, v224, v237);
                }

                v225 = btree_check(v248, 0, 0, 0);
                if (v225)
                {
                  ++v254;
                  log_warn("%s:%d: %s prev doc-id tree sanity check failed: %d\n", "nx_check", 765, v257[0] + 4040, v225);
                }
              }

              if (v248)
              {
                obj_release(v248);
              }
            }

LABEL_440:
            obj_release(v257[0]);
            continue;
          }

          log_err("%s:%d: %s omap check failed for omap %lld: %d\n", "nx_check", 668, v257[0] + 4040, *(v257[0][47] + 128), v204);
          obj_release(v257[0]);
        }
      }
    }
  }

  obj_release(v256);
  if (v254)
  {
    return 22;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10002F8F8(uint64_t *a1, uint64_t a2, unint64_t a3, _DWORD *a4)
{
  v8 = a1;
  if (obj_type(a1) == 13)
  {
    v8 = a1[49];
  }

  v44 = 0xAAAAAAAAAAAAAAAALL;
  *&v9 = 0xAAAAAAAAAAAAAAAALL;
  *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v43[2] = v9;
  v43[3] = v9;
  v43[0] = v9;
  v43[1] = v9;
  v10 = *(v8[47] + 36);
  if (*(*(a2 + 376) + 36) >= 0x400u)
  {
    if (obj_type(a1) == 13)
    {
      v11 = (a1 + 505);
    }

    else
    {
      v11 = (a1[48] + 212);
    }

    log_warn("%s:%d: %s omap snapshot count %d seems excessive\n", "nx_check_omap", 802, v11, *(*(a2 + 376) + 36));
  }

  v45 = 0xAAAAAAAAAAAAAAAALL;
  v12 = *(a2 + 376);
  v13 = *(v12 + 40);
  if (v13 == 1073741826 || v13 == -2147483646)
  {
    v15 = *(v12 + 48);
    v47 = 0u;
    v52 = 0;
    v51 = 0u;
    v50 = 0u;
    v49 = 0u;
    v48 = 0u;
    v46 = omap_key_cmp;
    DWORD2(v47) = 11;
    if (v13 == 2)
    {
      extended = btree_get_extended(a1, v13 & 0xFFFF0000, v15, 0, 0, &v46, 0, &v45);
      if (!extended)
      {
        if (obj_xid(v45) <= a3)
        {
          v22 = 0;
        }

        else
        {
          if (obj_type(a1) == 13)
          {
            v17 = (a1 + 505);
          }

          else
          {
            v17 = (a1[48] + 212);
          }

          v23 = obj_xid(v45);
          log_warn("%s:%d: %s omap tree xid %lld > spaceman xid %lld\n", "nx_check_omap", 817, v17, v23, a3);
          v22 = 1;
        }

        v24 = btree_check(v45, 0, 0, 0);
        if (v24)
        {
          v25 = v24;
          ++v22;
          if (obj_type(a1) == 13)
          {
            v26 = (a1 + 505);
          }

          else
          {
            v26 = (a1[48] + 212);
          }

          log_warn("%s:%d: %s omap tree sanity check failed: %d\n", "nx_check_omap", 822, v26, v25);
          goto LABEL_83;
        }

        v41 = 0xAAAAAAAAAAAAAAAALL;
        v42 = 0xAAAAAAAAAAAAAAAALL;
        v46 = 0;
        *&v47 = 0;
        bt_iterator_init_with_hint(v43, v45, 0, 0, &v46, 16, 16, &v41, 0x10u, 0);
        if (bt_iterator_ended(v43))
        {
LABEL_83:
          obj_release(v45);
          goto LABEL_84;
        }

        v27 = 0;
        *&v39[8] = 0;
        v40 = (a1 + 505);
        *v39 = v10 - 1;
        v28 = -1;
        while (v46 >= v27)
        {
          v29 = v47;
          if (v46 == v27)
          {
            if (v47 <= *&v39[4])
            {
              ++v22;
              if (obj_type(a1) == 13)
              {
                log_warn("%s:%d: %s omap tree entries out of order: oid %lld xid %lld <= lastxid %lld\n", "nx_check_omap", 841, v40, v46, v47, *&v39[4]);
              }

              else
              {
                log_warn("%s:%d: %s omap tree entries out of order: oid %lld xid %lld <= lastxid %lld\n", "nx_check_omap", 841, (a1[48] + 212), v46, v47, *&v39[4]);
              }
            }

            goto LABEL_44;
          }

          *&v39[4] = 0;
          v28 = -1;
          v27 = v46;
LABEL_46:
          if (v29 > a3)
          {
            ++v22;
            if (obj_type(a1) == 13)
            {
              log_warn("%s:%d: %s omap entry %lld:%lld xid > spaceman xid %lld\n", "nx_check_omap", 850, v40, v46, v47, a3);
            }

            else
            {
              log_warn("%s:%d: %s omap entry %lld:%lld xid > spaceman xid %lld\n", "nx_check_omap", 850, (a1[48] + 212), v46, v47, a3);
            }
          }

          if (v41 >= 0x800)
          {
            ++v22;
            if (obj_type(a1) == 13)
            {
              log_warn("%s:%d: %s omap entry %lld:%lld unknown flags are set: 0x%x\n", "nx_check_omap", 853, v40, v46, v47, v41 & 0xFFFFFFFE);
            }

            else
            {
              log_warn("%s:%d: %s omap entry %lld:%lld unknown flags are set: 0x%x\n", "nx_check_omap", 853, (a1[48] + 212), v46, v47, v41 & 0xFFFFFFFE);
            }
          }

          if ((v41 & 1) != 0 && v28 == -1)
          {
            ++v22;
            if (obj_type(a1) == 13)
            {
              log_warn("%s:%d: %s omap entry %lld:%lld marks deletion of object with no earlier mappings\n", "nx_check_omap", 856, v40, v46, v47);
            }

            else
            {
              log_warn("%s:%d: %s omap entry %lld:%lld marks deletion of object with no earlier mappings\n", "nx_check_omap", 856, (a1[48] + 212), v46, v47);
            }
          }

          else if (v28 != -1)
          {
            if (v28)
            {
              ++v22;
              if (obj_type(a1) == 13)
              {
                log_warn("%s:%d: %s omap entry %lld:%lld beyond deletion entry @ xid %lld\n", "nx_check_omap", 861, v40, v46, v47, v28);
              }

              else
              {
                log_warn("%s:%d: %s omap entry %lld:%lld beyond deletion entry @ xid %lld\n", "nx_check_omap", 861, (a1[48] + 212), v46, v47, v28);
              }
            }

            else if (v41)
            {
              v28 = v47;
            }

            else
            {
              v28 = 0;
            }

            goto LABEL_70;
          }

          if (v41)
          {
            v28 = v47;
          }

          else
          {
            v28 = 0;
          }

LABEL_70:
          if (HIDWORD(v41) >= 0x100000)
          {
            ++v22;
            if (obj_type(a1) == 13)
            {
              log_warn("%s:%d: %s omap entry %lld:%lld size %d seems excessive\n", "nx_check_omap", 866, v40, v46, v47, HIDWORD(v41));
            }

            else
            {
              log_warn("%s:%d: %s omap entry %lld:%lld size %d seems excessive\n", "nx_check_omap", 866, (a1[48] + 212), v46, v47, HIDWORD(v41));
            }
          }

          if (nx_superblock_sanity_check_extent(v8[47], 0, v42, (*v39 + HIDWORD(v41)) / v10, 0))
          {
            ++v22;
            if (obj_type(a1) == 13)
            {
              log_warn("%s:%d: %s omap entry %lld:%lld addr %lld size %d is bad\n", "nx_check_omap", 871, v40, v46, v47, v42, HIDWORD(v41));
            }

            else
            {
              log_warn("%s:%d: %s omap entry %lld:%lld addr %lld size %d is bad\n", "nx_check_omap", 871, (a1[48] + 212), v46, v47, v42, HIDWORD(v41));
            }
          }

          bt_iterator_next(v43);
          if (bt_iterator_ended(v43))
          {
            goto LABEL_83;
          }
        }

        if (obj_type(a1) == 13)
        {
          log_warn("%s:%d: %s omap tree entries out of order: oid %lld < %lld\n", "nx_check_omap", 835, v40, v46, v27);
        }

        else
        {
          log_warn("%s:%d: %s omap tree entries out of order: oid %lld < %lld\n", "nx_check_omap", 835, (a1[48] + 212), v46, v27);
        }

        ++v22;
        v28 = -1;
        v27 = v46;
LABEL_44:
        v29 = v47;
        *&v39[4] = v47;
        goto LABEL_46;
      }
    }

    else
    {
      extended = 22;
    }

    if (obj_type(a1) == 13)
    {
      v18 = (a1 + 505);
    }

    else
    {
      v18 = (a1[48] + 212);
    }

    log_warn("%s:%d: %s unable to get omap tree: %d\n", "nx_check_omap", 812, v18, extended);
    v21 = *a4 + 1;
    goto LABEL_110;
  }

  v19 = obj_type(a1);
  if (v19 == 13)
  {
    v20 = (a1 + 505);
  }

  else
  {
    v20 = (a1[48] + 212);
  }

  log_warn("%s:%d: %s omap tree type 0x%x is bad\n", "nx_check_omap", 881, v20, *(*(a2 + 376) + 40));
  v22 = 1;
LABEL_84:
  v30 = *(a2 + 376);
  v31 = *(v30 + 56);
  if (!v31)
  {
LABEL_109:
    extended = 0;
    v21 = *a4 + v22;
    goto LABEL_110;
  }

  v32 = *(v30 + 44);
  if (v32 != 1073741826 && v32 != -2147483646)
  {
    ++v22;
    if (obj_type(a1) == 13)
    {
      v35 = (a1 + 505);
    }

    else
    {
      v35 = (a1[48] + 212);
    }

    log_warn("%s:%d: %s omap snapshot tree type 0x%x is bad\n", "nx_check_omap", 920, v35, *(*(a2 + 376) + 40));
    goto LABEL_109;
  }

  v47 = 0u;
  v52 = 0;
  v51 = 0u;
  v50 = 0u;
  v49 = 0u;
  v48 = 0u;
  v46 = omap_snapshot_key_cmp;
  DWORD2(v47) = 19;
  extended = btree_get_extended(a1, v32 & 0xFFFF0000, v31, 0, 0, &v46, 0, &v45);
  if (!extended)
  {
    if (obj_xid(v45) > a3)
    {
      ++v22;
      if (obj_type(a1) == 13)
      {
        v33 = (a1 + 505);
      }

      else
      {
        v33 = (a1[48] + 212);
      }

      v36 = obj_xid(v45);
      log_warn("%s:%d: %s omap snapshot tree xid %lld > spaceman xid %lld\n", "nx_check_omap", 896, v33, v36, a3);
    }

    if (btree_check(v45, 0, 0, 0))
    {
      ++v22;
      obj_type(a1);
      log_warn("%s:%d: %s omap snapshot tree sanity check failed: %d\n");
    }

    else
    {
      v46 = 0xAAAAAAAAAAAAAAAALL;
      *&v47 = 0xAAAAAAAAAAAAAAAALL;
      v41 = 0;
      bt_iterator_init_with_hint(v43, v45, 0, 0, &v41, 8, 8, &v46, 0x10u, 0);
      v37 = 0;
      if (!bt_iterator_ended(v43))
      {
        v37 = 0;
        do
        {
          ++v37;
          bt_iterator_next(v43);
        }

        while (!bt_iterator_ended(v43));
      }

      if (v37 != *(*(a2 + 376) + 36))
      {
        ++v22;
        obj_type(a1);
        log_warn("%s:%d: %s omap snapshot count %d doesn't match snapshot tree record count %lld\n");
      }
    }

    obj_release(v45);
    goto LABEL_109;
  }

  if (obj_type(a1) == 13)
  {
    v34 = (a1 + 505);
  }

  else
  {
    v34 = (a1[48] + 212);
  }

  log_warn("%s:%d: %s unable to get omap snapshot tree: %d\n", "nx_check_omap", 891, v34, extended);
  v21 = v22 + 1 + *a4;
LABEL_110:
  *a4 = v21;
  return extended;
}

uint64_t omap_recent_sanity_callback(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t *a4, int a5, _DWORD *a6, int a7)
{
  v21 = 0;
  v22 = 0;
  v13 = obj_type(a1);
  v14 = 0;
  v15 = a1;
  if (v13 == 13)
  {
    v15 = *(a1 + 392);
    v14 = a1;
  }

  v16 = 22;
  if (a5 == 16 && a7 == 16)
  {
    v17 = a4[1];
    if (v17 <= a3)
    {
      return 0;
    }

    v18 = *a6;
    if ((*a6 & 5) != 0)
    {
      return 0;
    }

    else
    {
      v23 = 0xAAAAAAAAAAAAAAAALL;
      if ((v18 & 8) != 0)
      {
        v20 = 536870936;
      }

      else
      {
        v20 = 24;
      }

      LODWORD(v22) = a6[1];
      v16 = obj_get(*(v15 + 392), v20, *a4, &v21, 0, v14, v17, 0, &v23);
      if (v16)
      {
        if (obj_type(a1) == 13)
        {
          log_err("%s:%d: %s check of oid:xid %lld:%lld  size %d paddr 0x%llx flags 0x%x failed: %d\n", "omap_recent_sanity_callback", 1071, (a1 + 4040), *a4, a4[1], a6[1], *(a6 + 1), *a6, v16);
        }

        else
        {
          log_err("%s:%d: %s check of oid:xid %lld:%lld  size %d paddr 0x%llx flags 0x%x failed: %d\n", "omap_recent_sanity_callback", 1071, (*(a1 + 384) + 212), *a4, a4[1], a6[1], *(a6 + 1), *a6, v16);
        }
      }

      else
      {
        obj_release(v23);
      }
    }
  }

  return v16;
}

uint64_t nx_check_recent_sanity(uint64_t *a1)
{
  memset(v49, 170, sizeof(v49));
  v48 = 0xAAAAAAAAAAAAAAAALL;
  v2 = sub_100009C74(a1, &v49[2]);
  if (v2)
  {
    v3 = v2;
    log_err("%s:%d: %s unable to get spaceman: %d\n");
    return v3;
  }

  v4 = *(v49[2] + 376);
  v5 = obj_xid(v49[2]);
  v6 = 0;
  v7 = 0;
  if (v5 >= 3)
  {
    v8 = v5 - 3;
  }

  else
  {
    v8 = 0;
  }

  v47 = 0;
  memset(v46, 170, sizeof(v46));
  v43 = v8;
  v44 = 0xAAAAAAAAAAAAAAAALL;
  v45 = 0xAAAAAAAAAAAAAAAALL;
  do
  {
    v9 = v4 + 48 + 48 * v6;
    if (!*(v9 + 16))
    {
LABEL_28:
      v3 = 0;
      goto LABEL_31;
    }

    v10 = 0;
    v11 = -1;
    while (!*(v9 + 20))
    {
      v17 = (*(v49[2] + 8 * v6 + 896) + 8 * v10);
LABEL_23:
      v18 = *v17;
      v44 = v4;
      v45 = __PAIR64__(v10, v6);
      v19 = obj_get(a1[49], 0x40000000uLL, v18, &xmmword_1000517D0, &v44, 0, 0, 0, &v46[2]);
      if (v19)
      {
        v21 = v19;
        log_err("%s:%d: %s unable to read cib %lld @ %lld: %d\n", "nx_check_recent_sanity", 1152, (a1[48] + 212), v10, v18, v19);
        v3 = v21;
        goto LABEL_31;
      }

      obj_release(v46[2]);
      v20 = 1;
LABEL_25:
      v10 += v20;
      if (v10 >= *(v9 + 16))
      {
        goto LABEL_28;
      }
    }

    v12 = *(v4 + 44);
    v13 = v10 / v12;
    if (v10 / v12 == v11 && v7 != 0)
    {
      v13 = v11;
LABEL_22:
      v17 = (v7 + 8 * (v10 - v12 * v13) + 40);
      goto LABEL_23;
    }

    v15 = *(*(v49[2] + 8 * v6 + 896) + 8 * v13);
    if (v47)
    {
      obj_release(v47);
      v47 = 0;
    }

    v46[0] = v4;
    v46[1] = __PAIR64__(v13, v6);
    v16 = obj_get(a1[49], 0x40000000uLL, v15, &xmmword_1000517C0, v46, 0, 0, 0, &v47);
    if (!v16)
    {
      v7 = v47[7];
      if (obj_xid(v47) <= v43)
      {
        v20 = *(v7 + 36);
        v11 = v13;
        goto LABEL_25;
      }

      v12 = *(v4 + 44);
      v11 = v13;
      goto LABEL_22;
    }

    v3 = v16;
    log_err("%s:%d: %s unable to read cab %d @ %lld: %d\n", "nx_check_recent_sanity", 1125, (a1[48] + 212), v13, v15, v16);
LABEL_31:
    if (v47)
    {
      obj_release(v47);
      v47 = 0;
    }
  }

  while (!(v3 | v6++));
  obj_release(v49[2]);
  if (v3)
  {
    return v3;
  }

  v24 = *(a1[47] + 160);
  if (v24)
  {
    v25 = obj_get(a1[49], 0x40000000uLL, v24, &om_desc, 0, 0, 0, 0, &v49[1]);
    if (v25)
    {
      v3 = v25;
      log_err("%s:%d: %s unable to get omap: %d\n");
      return v3;
    }

    if (obj_xid(v49[1]) <= v43)
    {
      obj_release(v49[1]);
    }

    else
    {
      v3 = nx_check_recent_sanity_omap(a1, v49[1], v43);
      obj_release(v49[1]);
      if (v3)
      {
        log_err("%s:%d: %s omap check failed with error: %d\n");
        return v3;
      }
    }
  }

  v26 = a1[47];
  if (!*(v26 + 180))
  {
    return 0;
  }

  v27 = 0;
  while (2)
  {
    v28 = *(v26 + 8 * v27 + 184);
    if (!v28)
    {
      goto LABEL_76;
    }

    v29 = obj_get(a1[49], 0, v28, &apfs_desc, 0, 0, 0, 0, v49);
    if (v29)
    {
      v41 = v29;
      log_err("%s:%d: %s unable to get fs[%d] oid %lld, %d\n", "nx_check_recent_sanity", 1194, (a1[48] + 212), v27, v28, v29);
      return v41;
    }

    v30 = obj_xid(v49[0]);
    v31 = v49[0];
    if (v30 <= v43)
    {
      goto LABEL_75;
    }

    v32 = *(*(v49[0] + 376) + 128);
    if (!v32)
    {
      goto LABEL_54;
    }

    v33 = obj_get(a1[49], 0x40000000uLL, v32, &om_desc, 0, v49[0], 0, 0, &v49[1]);
    if (!v33)
    {
      if (obj_xid(v49[1]) <= v43)
      {
        obj_release(v49[1]);
        v31 = v49[0];
      }

      else
      {
        v34 = nx_check_recent_sanity_omap(v49[0], v49[1], v43);
        obj_release(v49[1]);
        v31 = v49[0];
        if (v34)
        {
          log_err("%s:%d: %s omap check failed for omap %lld: %d\n");
          goto LABEL_81;
        }
      }

LABEL_54:
      v35 = v31[47];
      v36 = *(v35 + 144);
      if (v36)
      {
        v48 = 0;
        extentref_tree = apfs_get_extentref_tree(v31, v36, 0, &v48);
        if (extentref_tree)
        {
          v34 = extentref_tree;
          log_err("%s:%d: %s unable to get extentref tree %lld: %d\n", "nx_check_recent_sanity", 1228, (v49[0] + 4040), *(*(v49[0] + 376) + 144), extentref_tree);
        }

        else if (obj_xid(v48) <= v43)
        {
          v34 = 0;
        }

        else
        {
          v38 = btree_check_recent_sanity(v48, v43, 0, 0);
          v34 = v38;
          if (v38)
          {
            log_err("%s:%d: %s extentref tree %lld: %d\n", "nx_check_recent_sanity", 1233, (v49[0] + 4040), *(*(v49[0] + 376) + 144), v38);
          }
        }

        if (v48)
        {
          obj_release(v48);
        }

        v31 = v49[0];
        if (v34)
        {
LABEL_79:
          v42 = v31;
          goto LABEL_82;
        }

        v35 = *(v49[0] + 376);
      }

      if (*(v35 + 152))
      {
        v48 = 0;
        snap_meta_tree = apfs_get_snap_meta_tree(v31, 0, &v48);
        if (snap_meta_tree)
        {
          v34 = snap_meta_tree;
          log_err("%s:%d: %s unable to get snap meta tree %lld: %d\n", "nx_check_recent_sanity", 1250, (v49[0] + 4040), *(*(v49[0] + 376) + 152), snap_meta_tree);
        }

        else if (obj_xid(v48) <= v43)
        {
          v34 = 0;
        }

        else
        {
          v40 = btree_check_recent_sanity(v48, v43, 0, 0);
          v34 = v40;
          if (v40)
          {
            log_err("%s:%d: %s snap meta tree %lld: %d\n", "nx_check_recent_sanity", 1255, (v49[0] + 4040), *(*(v49[0] + 376) + 144), v40);
          }
        }

        if (v48)
        {
          obj_release(v48);
        }

        v31 = v49[0];
        if (v34)
        {
          goto LABEL_79;
        }
      }

LABEL_75:
      obj_release(v31);
LABEL_76:
      ++v27;
      v26 = a1[47];
      if (v27 >= *(v26 + 180))
      {
        return 0;
      }

      continue;
    }

    break;
  }

  v34 = v33;
  log_err("%s:%d: %s unable to get omap %lld: %d\n");
LABEL_81:
  v42 = v49[0];
LABEL_82:
  obj_release(v42);
  return v34;
}

uint64_t nx_check_recent_sanity_omap(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v14 = 0xAAAAAAAAAAAAAAAALL;
  v6 = *(a2 + 376);
  v7 = *(v6 + 48);
  if (!v7)
  {
    goto LABEL_10;
  }

  v8 = *(v6 + 40);
  v16 = 0u;
  v17 = 0u;
  v21 = 0;
  v19 = 0u;
  v20 = 0u;
  v18 = 0u;
  v15 = omap_key_cmp;
  DWORD2(v16) = 11;
  if (v8 != 2)
  {
    extended = 22;
    goto LABEL_8;
  }

  extended = btree_get_extended(a1, v8 & 0xFFFF0000, v7, 0, 0, &v15, 0, &v14);
  if (extended)
  {
LABEL_8:
    obj_type(a1);
    log_err("%s:%d: %s unable to get omap tree: %d\n");
    return extended;
  }

  if (obj_xid(v14) <= a3)
  {
    obj_release(v14);
  }

  else
  {
    extended = btree_check_recent_sanity(v14, a3, omap_recent_sanity_callback, 0);
    obj_release(v14);
    if (extended)
    {
      return extended;
    }
  }

LABEL_10:
  v10 = *(a2 + 376);
  v11 = *(v10 + 56);
  if (!v11)
  {
    return 0;
  }

  v12 = *(v10 + 44);
  v16 = 0u;
  v17 = 0u;
  v21 = 0;
  v19 = 0u;
  v20 = 0u;
  v18 = 0u;
  v15 = omap_snapshot_key_cmp;
  DWORD2(v16) = 19;
  if (v12 != 2)
  {
    extended = 22;
    goto LABEL_17;
  }

  extended = btree_get_extended(a1, v12 & 0xFFFF0000, v11, 0, 0, &v15, 0, &v14);
  if (extended)
  {
LABEL_17:
    obj_type(a1);
    log_err("%s:%d: %s unable to get omap snapshot tree: %d\n");
    return extended;
  }

  if (obj_xid(v14) <= a3)
  {
    extended = 0;
  }

  else
  {
    extended = btree_check_recent_sanity(v14, a3, 0, 0);
  }

  obj_release(v14);
  return extended;
}

uint64_t nx_checkpoint_find_highest_xid(uint64_t *a1, int *a2, unint64_t *a3)
{
  v6 = _apfs_malloc_typed(*(a1[47] + 36), 0xD3A61ACFuLL);
  if (!v6)
  {
    return 12;
  }

  v7 = v6;
  v19 = 0xAAAAAAAAAAAAAAAALL;
  v8 = a1[47];
  if ((*(v8 + 104) & 0x7FFFFFFF) != 0)
  {
    v9 = 0;
    v18 = 0;
    v10 = 0;
    v11 = -1;
    while (1)
    {
      *(v7 + 6) = 0;
      if (sub_1000073E8(a1, v9, &v19) || dev_read(a1[48]))
      {
        log_err("%s:%d: %s couldn't read checkpoint descriptor block %d @ 0x%llx: %d\n");
      }

      else
      {
        v14 = *(v7 + 6);
        if (v14 == -2147483647)
        {
          goto LABEL_12;
        }

        if (v14)
        {
          if (v14 == 1073741836)
          {
LABEL_12:
            if (obj_checksum_verify_phys(v7, *(a1[47] + 36), v12, v13))
            {
              log_err("%s:%d: %s invalid checksum for object type 0x%x @ checkpoint descriptor block %d @ 0x%llx\n");
            }

            else if (*(v7 + 7))
            {
              log_err("%s:%d: %s found unexpected subtype 0x%x for object type 0x%x @ checkpoint descriptor block %d\n");
            }

            else
            {
              v15 = v7[2];
              if (v15)
              {
                if (v15 >= v10)
                {
                  v16 = *(v7 + 6);
                  if (v15 == v10 && v18 && v16 != -2147483647)
                  {
                    v18 = 1;
                  }

                  else
                  {
                    v18 = v16 == -2147483647;
                    v10 = v7[2];
                    v11 = v9;
                  }
                }
              }

              else
              {
                log_err("%s:%d: %s found unexpected xid %lld @ checkpoint descriptor block %d\n");
              }
            }

            goto LABEL_7;
          }

          log_err("%s:%d: %s found unexpected object type 0x%x @ checkpoint descriptor block %d\n");
        }
      }

LABEL_7:
      ++v9;
      v8 = a1[47];
      if (v9 >= (*(v8 + 104) & 0x7FFFFFFFu))
      {
        goto LABEL_27;
      }
    }
  }

  v10 = 0;
  v11 = -1;
LABEL_27:
  _apfs_free(v7, *(v8 + 36));
  *a2 = v11;
  *a3 = v10;
  return 2 * (v10 == 0);
}

uint64_t nx_check_checkpoint_map_block(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int8x16_t a5, int8x16_t a6)
{
  v10 = obj_checksum_verify_phys(a2, *(a1 + 36), a5, a6);
  v11 = *(a2 + 36);
  if (!v11)
  {
    goto LABEL_19;
  }

  if (v10)
  {
    v12 = 2;
  }

  else
  {
    v12 = 1;
  }

  if (*(a2 + 24) == 1073741836)
  {
    v13 = v10 != 0;
  }

  else
  {
    v13 = v12;
  }

  if (*(a2 + 28))
  {
    ++v13;
  }

  if (*(a2 + 16) != *(a1 + 16))
  {
    ++v13;
  }

  v14 = *(a2 + 8) == a3 ? v13 : v13 + 1;
  v15 = *(a1 + 36);
  v16 = v14 | *(a2 + 32) & 1 ^ (a4 != 0);
  if (v11 <= (v15 - 40) / 0x28uLL && v16 == 0)
  {
    v19 = 0;
    v20 = *(a1 + 108);
    v21 = (a2 + 72);
    while (v11 != v19)
    {
      v23 = *(v21 - 8);
      v22 = *(v21 - 7);
      if ((v23 & 0xC0000000) == 0x80000000)
      {
        v24 = 1;
      }

      else
      {
        v24 = 2;
      }

      if (*(v21 - 8) > 0x12u || ((1 << *(v21 - 8)) & 0x6002C) == 0)
      {
        v26 = v24;
      }

      else
      {
        v26 = (v23 & 0xC0000000) != 0x80000000;
      }

      if ((v22 & 0xC0000000) != 0)
      {
        ++v26;
      }

      if ((*(v21 - 7) > 0x24u || ((1 << v22) & 0x100009CA01) == 0) && *(v21 - 7) != 255)
      {
        ++v26;
      }

      if (!*(v21 - 1))
      {
        ++v26;
      }

      if ((v20 & 0x80000000) != 0)
      {
        v32 = v19;
      }

      else
      {
        v27 = *v21;
        v28 = *(a1 + 120);
        if (*v21 < v28)
        {
          ++v26;
        }

        if (v27 >= v28 + v20)
        {
          ++v26;
        }

        v29 = v27 - v28;
        v30 = *(a1 + 144);
        if (v30 <= v29)
        {
          v31 = 0;
        }

        else
        {
          v31 = *(a1 + 108);
        }

        v32 = v31 - v30 + v29;
        if (v32 >= *(a1 + 148))
        {
          ++v26;
        }
      }

      v33 = *(v21 - 6);
      if (v33)
      {
        v34 = v26;
      }

      else
      {
        v34 = v26 + 1;
      }

      if (!(v34 | (v33 % v15 != 0)))
      {
        ++v19;
        v21 += 5;
        if (v33 / v15 <= *(a1 + 148) - v32)
        {
          continue;
        }
      }

      goto LABEL_19;
    }

    return 0;
  }

  else
  {
LABEL_19:

    return nx_corruption_detected_int(0);
  }
}

BOOL nx_superblock_agrees_with_main_superblock(uint64_t a1, uint64_t a2, const char *a3)
{
  if (*(a1 + 72) == *(a2 + 72) && *(a1 + 80) == *(a2 + 80))
  {
    v7 = 0;
  }

  else
  {
    log_err("%s:%d: %s<->superblock mismatch on uuid\n", "nx_superblock_agrees_with_main_superblock", 254, a3);
    v7 = 1;
  }

  if (*(a1 + 1280) != *(a2 + 1280) || *(a1 + 1288) != *(a2 + 1288))
  {
    log_err("%s:%d: %s<->superblock mismatch on fusion uuid\n", "nx_superblock_agrees_with_main_superblock", 258, a3);
    ++v7;
  }

  v9 = *(a1 + 16);
  if (v9 > *(a2 + 16))
  {
    log_err("%s:%d: the %s superblock has a lower XID %lld than the main superblock %lld\n", "nx_superblock_agrees_with_main_superblock", 263, a3, *(a2 + 16), v9);
  }

  v10 = *(a2 + 36);
  if (*(a1 + 36) != v10)
  {
    log_err("%s:%d: %s<->superblock mismatch on block size: %d %d\n", "nx_superblock_agrees_with_main_superblock", 269, a3, *(a1 + 36), v10);
    ++v7;
  }

  v11 = *(a2 + 40);
  if (*(a1 + 40) != v11)
  {
    log_err("%s:%d: %s<->superblock mismatch on block count: %lld %lld\n", "nx_superblock_agrees_with_main_superblock", 274, a3, *(a1 + 40), v11);
    ++v7;
  }

  v12 = *(a2 + 104);
  if (*(a1 + 104) != v12)
  {
    log_err("%s:%d: %s<->superblock mismatch on checkpoint descriptor block count: %d %d\n", "nx_superblock_agrees_with_main_superblock", 279, a3, *(a1 + 104), v12);
    ++v7;
  }

  v13 = *(a2 + 108);
  if (*(a1 + 108) != v13)
  {
    log_err("%s:%d: %s<->superblock mismatch on checkpoint data block count: %d %d\n", "nx_superblock_agrees_with_main_superblock", 284, a3, *(a1 + 108), v13);
    ++v7;
  }

  v14 = *(a2 + 112);
  if (*(a1 + 112) != v14)
  {
    log_err("%s:%d: %s<->superblock mismatch on checkpoint descriptor base address: %lld %lld\n", "nx_superblock_agrees_with_main_superblock", 289, a3, *(a1 + 112), v14);
    ++v7;
  }

  v15 = *(a2 + 120);
  if (*(a1 + 120) != v15)
  {
    log_err("%s:%d: %s<->superblock mismatch on checkpoint data base address: %lld %lld\n", "nx_superblock_agrees_with_main_superblock", 294, a3, *(a1 + 120), v15);
    v7 = 1;
  }

  return v7 == 0;
}

uint64_t nx_checkpoint_find_valid_checkpoint(uint64_t a1, uint64_t a2, int a3, uint64_t a4, unsigned int *a5)
{
  v25 = 0;
  v26 = 0;
  v24 = 0xAAAAAAAAAAAAAAAALL;
  *a5 = -1;
  v5 = *(a2 + 104) & 0x7FFFFFFF;
  if (!v5)
  {
    return 2;
  }

  v6 = a5;
  v11 = 0;
  v12 = 0;
  v23 = (a1 + 424);
  while (1)
  {
    if (v11 && (*(a2 + 1264) & 2) != 0)
    {
      return 35;
    }

    v13 = (v5 + a3) % v5;
    v27 = -1;
    if (sub_1000073E8(a1, v13, &v27) || dev_read(*(a1 + 384)))
    {
      log_err("%s:%d: %s couldn't read checkpoint descriptor block %d @ %lld: %d\n");
      goto LABEL_8;
    }

    if (*(a4 + 24) != -2147483647)
    {
      goto LABEL_8;
    }

    if (nx_check_superblock(a4, *(a2 + 36), 1, v14, v15))
    {
      log_err("%s:%d: %s checkpoint superblock %d @ %lld: failed sanity check: %d\n");
      goto LABEL_8;
    }

    v22 = v6;
    v16 = *(a2 + 64);
    if ((v16 & 0xFFFFFFFFFFFFFFFDLL) != 0)
    {
      break;
    }

    v6 = v22;
    if (nx_superblock_agrees_with_main_superblock(a2, a4, "checkpoint"))
    {
      v17 = *(a4 + 140);
      v18 = *(a2 + 104) & 0x7FFFFFFF;
      if (v13 == (*(a4 + 136) + v17 - 1) % v18)
      {
        if (v17 <= v11 + v18)
        {
          if (sub_100006F68(a1, 0, 1, 0, 1) || sub_100006F68(a1, *(a4 + 112), *(a4 + 104) & 0x7FFFFFFF, *(a4 + 104) < 0, 0) || sub_100006F68(a1, *(a4 + 120), *(a4 + 108) & 0x7FFFFFFF, *(a4 + 108) < 0, 0))
          {
            log_err("%s:%d: %s xid %lld at index %d failed to load checkpoint metadata ranges (overlap?): %d\n");
          }

          else if (sub_100031B88(a1, a4))
          {
            log_err("%s:%d: %s xid %lld validation failed for checkpoint at index %d: %d\n");
          }

          else
          {
            if (!sub_100031C98(a1, a4, &v26, &v25))
            {
              memcpy(*(a1 + 376), a4, *(a2 + 36));
              *(*(a1 + 392) + 400) = *(*(a1 + 376) + 88);
              if (sub_100004A70(a1, 0, 2))
              {
                log_err("%s:%d: %s xid %lld failed to fix up checkpoint data: %d\n");
LABEL_37:
                obj_cache_reset(*(a1 + 392), 0);
                *(a1 + 408) = 0;
                *(a1 + 736) = 0;
                *v23 = 0u;
                v23[1] = 0u;
                v23[2] = 0u;
                memcpy(*(a1 + 376), a2, *(a2 + 36));
                *(*(a1 + 392) + 400) = *(*(a1 + 376) + 88);
                goto LABEL_8;
              }

              if (*(a1 + 628) == 1)
              {
                if (*(a1 + 631) == 1)
                {
                  log_info("%s:%d: %s probe of external device... skipping recent sanity checks.\n", "nx_checkpoint_find_valid_checkpoint", 586, (*(a1 + 384) + 212));
                }

                else
                {
                  log_info("%s:%d: %s sanity checking all recently-changed container state... please be patient.\n", "nx_checkpoint_find_valid_checkpoint", 595, (*(a1 + 384) + 212));
                  if (nx_check_recent_sanity(a1))
                  {
                    log_err("%s:%d: %s xid %lld sanity check of recently-changed structures failed: %d\n");
                    goto LABEL_37;
                  }
                }
              }

              if (sub_100009C74(a1, &v24))
              {
                log_err("%s:%d: %s xid %lld failed to get spaceman: %d\n");
              }

              else
              {
                v19 = sub_100006F68(a1, *(v24[47] + 168), *(v24[47] + 164) & 0x7FFFFFFF, *(v24[47] + 164) < 0, 0);
                if (v19)
                {
                  obj_release(v24);
                }

                else
                {
                  v19 = sub_100006F68(a1, *(v24[47] + 176), *(v24[47] + 152), *(v24[47] + 152) < 0, 0);
                  obj_release(v24);
                  if (!v19)
                  {
                    v21 = *(*(a1 + 376) + 16);
                    if (v21 < v26)
                    {
                      log_err("%s:%d: %s warning: best valid checkpoint xid %lld is less than max free queue oldest xid %lld seen in checkpoint %lld\n", "nx_checkpoint_find_valid_checkpoint", 633, (*(a1 + 384) + 212), v21, v26, v25);
                    }

                    result = 0;
                    *v22 = v13;
                    return result;
                  }
                }

                log_err("%s:%d: %s xid %lld failed to load spaceman metadata ranges (overlap?): %d\n", "nx_checkpoint_find_valid_checkpoint", 626, (*(a1 + 384) + 212), *(a4 + 16), v19);
                v6 = v22;
              }

              goto LABEL_37;
            }

            log_err("%s:%d: %s xid %lld data for checkpoint at index %d couldn't be loaded: %d\n");
          }

          obj_cache_reset(*(a1 + 392), 0);
          *(a1 + 408) = 0;
          *(a1 + 736) = 0;
          *v23 = 0u;
          v23[1] = 0u;
          v23[2] = 0u;
        }

        else
        {
          log_err("%s:%d: %s xid %lld checkpoint superblock index %d doesn't fit in blocks remaining: %d > %d\n");
        }
      }

      else
      {
        log_err("%s:%d: %s xid %lld checkpoint superblock index %d doesn't match index block was found at: %d\n");
      }
    }

LABEL_8:
    ++v12;
    v5 = *(a2 + 104) & 0x7FFFFFFF;
    --a3;
    --v11;
    if (v12 >= v5)
    {
      return 2 * (*v6 == -1);
    }
  }

  log_err("%s:%d: %s unsupported nx_incompatible_features (0x%llx): unable to mount\n", "nx_checkpoint_find_valid_checkpoint", 497, (*(a1 + 384) + 212), v16 & 0xFFFFFFFFFFFFFFFDLL);
  if ((v16 & 0x100) != 0)
  {
    log_err("%s:%d: %s Fusion is not supported anymore\n", "nx_checkpoint_find_valid_checkpoint", 499, (*(a1 + 384) + 212));
  }

  return 75;
}

uint64_t sub_100031B88(uint64_t *a1, unsigned int *a2)
{
  v4 = _apfs_malloc_typed(a2[9], 0x9BA6ADA8uLL);
  if (!v4)
  {
    return 12;
  }

  v5 = v4;
  v12 = 0xAAAAAAAAAAAAAAAALL;
  if (a2[35] == 1)
  {
LABEL_3:
    v6 = 0;
  }

  else
  {
    v7 = 0;
    while (1)
    {
      v8 = sub_1000073E8(a1, (v7 + a2[34]) % (a2[26] & 0x7FFFFFFF), &v12);
      if (v8)
      {
        break;
      }

      v8 = dev_read(a1[48]);
      if (v8)
      {
        break;
      }

      v8 = nx_check_checkpoint_map_block(a2, v5, v12, v7 == a2[35] - 2, v9, v10);
      if (v8)
      {
        break;
      }

      if (++v7 >= a2[35] - 1)
      {
        goto LABEL_3;
      }
    }

    v6 = v8;
  }

  _apfs_free(v5, a2[9]);
  return v6;
}

uint64_t sub_100031C98(uint64_t a1, uint64_t a2, unint64_t *a3, void *a4)
{
  v45[0] = 0;
  v6 = *(*(a1 + 376) + 36);
  v43 = 0xAAAAAAAAAAAAAAAALL;
  v44 = 0xAAAAAAAAAAAAAAAALL;
  v42 = 0;
  v7 = _apfs_malloc_typed(v6, 0xB5246107uLL);
  if (v7)
  {
    v8 = v7;
    v40 = 0xAAAAAAAAAAAAAAAALL;
    v41 = 0xAAAAAAAAAAAAAAAALL;
    if (*(a2 + 140) - 1 < 1)
    {
LABEL_28:
      _apfs_free(v8, v6);
      return 0;
    }

    else
    {
      v9 = 0;
      v10 = *(a2 + 144);
      v11 = *(a2 + 136);
      v34 = (v7 + 10);
      v38 = v6 - 1;
      v33 = *(a2 + 140) - 1;
      while (1)
      {
        v41 = 0;
        v12 = sub_1000073E8(a1, v11, &v41);
        if (v12 || (v12 = dev_read(*(a1 + 384)), v12) || (v12 = obj_checksum_verify_phys(v8, v6, v13, v14), v12))
        {
          v31 = v12;
          log_err("%s:%d: %s couldn't read checkpoint descriptor map block %d @ %lld: %d\n");
LABEL_39:
          _apfs_free(v8, v6);
LABEL_40:
          obj_cache_reset(*(a1 + 392), 0);
          *(a1 + 408) = 0;
          *(a1 + 736) = 0;
          *(a1 + 424) = 0u;
          *(a1 + 440) = 0u;
          *(a1 + 456) = 0u;
          return v31;
        }

        v35 = v9;
        v36 = v11;
        if (v8[9])
        {
          break;
        }

LABEL_27:
        v11 = (v36 + 1) % (*(a2 + 104) & 0x7FFFFFFFu);
        v9 = v35 + 1;
        if (v35 + 1 == v33)
        {
          goto LABEL_28;
        }
      }

      v15 = 0;
      v16 = v34;
      while (1)
      {
        v17 = *(v16 + 2);
        v41 = 0;
        v18 = sub_10000742C(a1, v10, &v41, &v40);
        if (v18)
        {
          v31 = v18;
          log_err("%s:%d: %s couldn't read checkpoint data block %d @ %lld: %d\n", "nx_checkpoint_load_data", 387, (*(a1 + 384) + 212), v10, v41, v18);
          goto LABEL_39;
        }

        if (v41 != *(v16 + 4))
        {
          break;
        }

        v19 = *(a2 + 144);
        v20 = v10;
        if (v10 < v19)
        {
          v20 = (*(a2 + 108) & 0x7FFFFFFF) + v10;
        }

        v21 = v20 - v19;
        v22 = *(a2 + 148);
        v23 = (v38 + v17) / v6;
        if (v21 >= v22 || v21 + v23 > v22)
        {
          log_err("%s:%d: %s checkpoint mapping (%d,%d) extends beyond checkpoint data range: %d,%d\n", "nx_checkpoint_load_data", 403, (*(a1 + 384) + 212), v21, (v38 + v17) / v6, *(a2 + 144), v22);
          goto LABEL_33;
        }

        v45[0] = 0;
        v24 = obj_descriptor_and_flags_for_type(*v16, v45, &v43);
        HIDWORD(v43) = *(v16 + 1);
        LODWORD(v44) = v17;
        if (v24)
        {
          v31 = v24;
LABEL_38:
          log_err("%s:%d: %s failed to load checkpoint data of type 0x%x:0x%x @ %lld\n");
          goto LABEL_39;
        }

        v25 = obj_checkpoint_get(*(a1 + 392), v45[0] | 0x80000000, *(v16 + 3), &v43, v41, v10, v40, *(a2 + 16), &v42);
        if (v25)
        {
          v31 = v25;
          goto LABEL_38;
        }

        if (a3)
        {
          v26 = v42;
          if (!*a4)
          {
            v27 = obj_type(v42);
            v26 = v42;
            if (v27 == 5)
            {
              tv_nsec = v42[3].tv_nsec;
              v29 = tv_nsec[32];
              if (v29 <= tv_nsec[27])
              {
                v29 = tv_nsec[27];
              }

              *a3 = v29;
              v30 = tv_nsec[37];
              if (v30 <= v29)
              {
                v30 = v29;
              }

              *a3 = v30;
              *a4 = *(a2 + 16);
            }
          }
        }

        else
        {
          v26 = v42;
        }

        obj_release(v26);
        v10 = (v23 + v10) % (*(a2 + 108) & 0x7FFFFFFFu);
        ++v15;
        v16 += 40;
        if (v15 >= v8[9])
        {
          goto LABEL_27;
        }
      }

      log_err("%s:%d: %s unexpected checkpoint map entry address: 0x%llx, expected 0x%llx\n", "nx_checkpoint_load_data", 392, (*(a1 + 384) + 212), *(v16 + 4), v41);
LABEL_33:
      v31 = nx_corruption_detected_int(0);
      _apfs_free(v8, v6);
      if (v31)
      {
        goto LABEL_40;
      }
    }
  }

  else
  {
    log_err("%s:%d: %s couldn't allocate memory for checkpoint map block\n", "nx_checkpoint_load_data", 358, (*(a1 + 384) + 212));
    return 12;
  }

  return v31;
}

uint64_t nx_dev_init(char *a1, int a2, int a3, char a4, uint64_t a5, const char **a6, unsigned int **a7)
{
  v22 = 0;
  if (a3)
  {
    v22 = a1;
  }

  else
  {
    if (a4)
    {
      return 45;
    }

    v20 = dev_init(a1, a2, &v22);
    if (v20)
    {
      v18 = v20;
      log_err("%s:%d: device initialization failed: %d\n", "nx_dev_init", 679, v20);
      goto LABEL_36;
    }

    a1 = v22;
  }

  v9 = dev_block_size(a1);
  v10 = dev_block_count(v22);
  if (v9 <= 0x1000)
  {
    v11 = 4096;
  }

  else
  {
    v11 = v9;
  }

  v12 = v10 * v9;
  while (!(v11 % v9))
  {
    if (v11 > v9)
    {
      dev_set_block_size(v22);
    }

    v13 = _apfs_malloc_typed(v11, 0x92FC743FuLL);
    if (!v13)
    {
      log_err("%s:%d: %s couldn't allocate memory for superblock of size %d\n", "nx_dev_init", 713, v22 + 212, v11);
      v18 = 12;
      goto LABEL_36;
    }

    v14 = dev_read(v22);
    if (v14)
    {
      v18 = v14;
      log_err("%s:%d: %s couldn't read superblock of size %d\n");
LABEL_33:
      _apfs_free(v13, v11);
      goto LABEL_36;
    }

    v17 = nx_check_superblock(v13, v11, 0, v15, v16);
    if (v17)
    {
      goto LABEL_13;
    }

    v19 = v13[9];
    if (v19 % v9)
    {
      log_err("%s:%d: %s superblock block size %d not an even multiple of device block size %d\n", "nx_dev_init", 729, v22 + 212, v13[9], v9);
      v17 = nx_corruption_detected_int(0);
      if (v17)
      {
        goto LABEL_13;
      }

      v19 = v13[9];
    }

    if (*(v13 + 5) * v19 > v12)
    {
      log_err("%s:%d: %s superblock container size %lld greater than device size %lld\n", "nx_dev_init", 735, v22 + 212, *(v13 + 5) * v19, v12);
      v17 = nx_corruption_detected_int(0);
LABEL_13:
      v18 = v17;
      if (v17)
      {
        if (v17 != 79)
        {
          log_err("%s:%d: %s superblock failed sanity checks: %d\n");
        }

        goto LABEL_33;
      }

      v19 = v13[9];
    }

    if (v19 == v11)
    {
      v18 = 0;
      *a7 = v13;
      *a6 = v22;
      return v18;
    }

    _apfs_free(v13, v11);
    dev_set_block_size(v22);
    v11 = v19;
    if (v19 < v9)
    {
      log_err("%s:%d: %s container block size too small for device block size (%d < %d)\n");
      goto LABEL_35;
    }
  }

  log_err("%s:%d: %s block size %d is not an even multiple of device block size %d\n");
LABEL_35:
  v18 = 22;
LABEL_36:
  if (v22)
  {
    dev_close(v22);
  }

  return v18;
}

uint64_t nx_mount(char *a1, int *a2, uint64_t **a3)
{
  v3 = a3;
  v120 = 0;
  v118 = 0;
  v119 = 0;
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v121[4] = v5;
  v121[2] = v5;
  v121[3] = v5;
  v121[0] = v5;
  v121[1] = v5;
  v116 = 0xAAAAAAAAAAAAAAAALL;
  v117 = 0;
  v115 = -1431655766;
  v114 = 0xAAAAAAAAAAAAAAAALL;
  v113 = -1431655766;
  v112 = 0;
  *a3 = 0;
  if (a2)
  {
    v6 = *(a2 + 4);
    v7 = *a2;
    v8 = a2[1];
    if (((v6 & 0x100) != 0 || (v6 & 0x2000) != 0) && (v8 & 0x80000000) == 0)
    {
      log_err("%s:%d: conflicting mount options: probe %d temporary %d sbindex %d\n");
LABEL_9:
      LODWORD(v13) = 0;
      v14 = 0;
      v15 = 22;
      goto LABEL_10;
    }

    if ((v6 & 0xC00) == 0x800)
    {
      log_err("%s:%d: conflicting mount options: is_system_graft but not is_graft\n");
      goto LABEL_9;
    }

    v106 = (v6 >> 13) & 1;
    v108 = (v6 >> 8) & 1;
    __src = (v6 >> 9) & 1;
    v11 = (*(a2 + 4) >> 1) & 1;
    v9 = (v6 >> 10) & 1;
    v101 = (*(a2 + 4) >> 5) & 1;
    crc32c_init();
    if (v7)
    {
      v18 = 0;
    }

    else
    {
      v18 = 2;
    }

    v3 = a3;
    v10 = (v6 >> 11) & 1;
    if ((v7 | ((v6 & 0x4000) >> 14)))
    {
      v19 = 16;
    }

    else
    {
      v19 = 32;
    }

    v12 = v19 | v18;
    v104 = (v6 >> 2) & 1;
    v102 = (v6 >> 12) & 1;
  }

  else
  {
    crc32c_init();
    LOBYTE(v7) = 0;
    LOBYTE(v6) = 0;
    v104 = 0;
    v101 = 0;
    v102 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v106 = 0;
    v108 = 0;
    __src = 0;
    v12 = 34;
    v8 = 0xFFFFFFFFLL;
  }

  v20 = nx_dev_init(a1, v12, v11, v9, 0, &v120, &v117);
  if (v20)
  {
    v15 = v20;
    if (v20 != 79)
    {
      log_err("%s:%d: device initialization failed: %d\n", "nx_mount", 1006, v20);
    }

    return v15;
  }

  v99 = v10;
  v95 = v6;
  v100 = v8;
  v94 = v3;
  v22 = v120;
  v98 = dev_is_writable(v120) == 0;
  is_external = dev_is_external(v22);
  v96 = dev_real_block_size(v22);
  v23 = v117;
  v24 = v117[9];
  if (__src)
  {
    v25 = 128;
  }

  else
  {
    v25 = 0x10000;
  }

  if (__src)
  {
    v26 = 128;
  }

  else
  {
    v26 = 0x8000;
  }

  if (__src)
  {
    v27 = 128;
  }

  else
  {
    v27 = 0x10000;
  }

  if (__src)
  {
    v28 = 128;
  }

  else
  {
    v28 = 0x8000;
  }

  log_debug("%s:%d: %s initializing cache w/hash_size %u and cache size %u\n", "nx_mount", 1195, v22 + 212, v28, v27);
  v29 = v26;
  v13 = v24;
  v30 = obj_cache_create(v29, v25, v24, &v119);
  if (v30)
  {
    v31 = v30;
    log_err("%s:%d: %s object cache initialization failed: %d\n", "nx_mount", 1199, v22 + 212, v30);
    v14 = 0;
    v15 = v31;
    goto LABEL_10;
  }

  __srca = v23;
  v32 = v119;
  if (v99)
  {
    *&v119[14].__opaque[48] = 1;
  }

  memset(&v121[3] + 8, 0, 24);
  *(&v121[2] + 8) = 0u;
  memset(v121 + 8, 0, 32);
  *&v121[0] = __PAIR64__(v24, v96);
  *(&v121[0] + 1) = *(v23 + 5);
  *(&v121[1] + 1) = v22;
  *&v121[2] = 1;
  DWORD2(v121[2]) = (v7 | v98) & 1;
  HIDWORD(v121[2]) = is_external != 0;
  *&v121[3] = __PAIR64__(v108, v104);
  *(&v121[3] + 1) = __PAIR64__(v106, v102);
  bootstrap = obj_create_bootstrap(v32, 0x80000000, 1uLL, &xmmword_100051728, v121, v24, 1, &v118);
  if (bootstrap)
  {
    v15 = bootstrap;
    log_err("%s:%d: %s object cache bootstrap failed: %d\n");
LABEL_49:
    v14 = 0;
    goto LABEL_10;
  }

  v34 = v118;
  if (v101)
  {
    *(v118 + 640) = 1;
  }

  memcpy(v34[47], v23, v24);
  v35 = v119;
  v36 = v118[47];
  v37 = *(v36 + 88);
  *v119[6].__opaque = v118;
  v35[25].i64[0] = v37;
  __strlcpy_chk();
  obj_mem_mgr_register(v119, v9 & (v99 ^ 1));
  v119 = 0;
  v120 = 0;
  v38 = *(v36 + 104);
  if (v38 < 0 && (v41 = sub_100006B94(v118, *(v36 + 112), v38 & 0x7FFFFFFF), v41) || (v39 = *(v36 + 108), v39 < 0) && (v41 = sub_100006B94(v118, *(v36 + 120), v39 & 0x7FFFFFFF), v41))
  {
    v15 = v41;
    log_err("%s:%d: %s fragmented checkpoint area failed sanity check: %d\n");
    goto LABEL_49;
  }

  v14 = _apfs_malloc_typed(v24, 0x286E03C4uLL);
  if (!v14)
  {
    log_err("%s:%d: %s failed to allocate buffer for checkpoint superblock\n", "nx_mount", 1307, (v118[48] + 212));
    v15 = 12;
    goto LABEL_10;
  }

  if ((*(v36 + 1264) & 2) == 0)
  {
    goto LABEL_68;
  }

  v40 = v118;
  *(v118 + 626) = 1;
  if (*(v40 + 628) == 1)
  {
    log_err("%s:%d: %s storage is untrusted. Container cleanly-unmounted flag ignored\n");
LABEL_67:
    *(v36 + 1264) &= ~2uLL;
    *(v23 + 158) &= ~2uLL;
    goto LABEL_68;
  }

  if (!*(v36 + 140))
  {
    log_err("%s:%d: %s checkpoint descriptor length is bad.  Container cleanly-unmounted flag ignored\n");
    goto LABEL_67;
  }

  if (!*(v36 + 148))
  {
    log_err("%s:%d: %s checkpoint data length is bad.  Container cleanly-unmounted flag ignored\n");
    goto LABEL_67;
  }

LABEL_68:
  v42 = v13;
  v43 = 0;
  v105 = 0;
  v107 = 0;
  v109 = 0;
  while (1)
  {
    v44 = v118;
    if ((*(v36 + 1264) & 2) != 0)
    {
      break;
    }

    v45 = *(v118 + 633);
    if (v43 & v45)
    {
      goto LABEL_74;
    }

    highest_xid = nx_checkpoint_find_highest_xid(v118, &v113, &v114);
    if (highest_xid)
    {
      v15 = highest_xid;
      log_err("%s:%d: %s failed to scan checkpoint descriptor area for largest xid: %d\n");
LABEL_144:
      LODWORD(v13) = v42;
      goto LABEL_10;
    }

LABEL_75:
    if ((v100 & 0x80000000) == 0)
    {
      v54 = v100;
      v55 = __srca;
      goto LABEL_85;
    }

    v50 = __srca;
    valid_checkpoint = nx_checkpoint_find_valid_checkpoint(v118, __srca, v113, v14, &v115);
    v15 = valid_checkpoint;
    if (valid_checkpoint == 35)
    {
      if ((*(v36 + 1264) & 2) == 0)
      {
        goto LABEL_121;
      }

      log_err("%s:%d: %s Couldn't load checkpoint from cleanly-unmounted state.  Falling back to descriptor scan.\n", "nx_mount", 1503, (v118[48] + 212));
      *(v36 + 1264) &= ~2uLL;
      *(__srca + 158) &= ~2uLL;
    }

    else
    {
      if (valid_checkpoint)
      {
LABEL_121:
        log_err("%s:%d: %s failed to find valid checkpoint: %d\n", "nx_mount", 1508, (v118[48] + 212), valid_checkpoint);
        goto LABEL_144;
      }

      v103 = v14[2];
      log_debug("%s:%d: %s checkpoint search: largest xid %lld, best xid %lld @ %d\n", "nx_mount", 1512, (v118[48] + 212), v114, v103, v115);
      v52 = *(__srca + 2);
      v53 = v118;
      if (v52 != v14[2])
      {
        log_err("%s:%d: %s reloading after unclean unmount, checkpoint xid %lld, superblock xid %lld\n", "nx_mount", 1514, (v118[48] + 212), v14[2], v52);
        v53 = v118;
        if ((*(v118 + 633) & 1) == 0)
        {
          v105 = 1;
          *(v118 + 643) = 1;
        }
      }

LABEL_115:
      v73 = *(v53[47] + 56);
      if (v73)
      {
        log_debug("%s:%d: %s unsupported nx_readonly_compatible_features (0x%llx): mount r/o\n", "nx_mount", 1525, (v53[48] + 212), v73);
        v53 = v118;
        *(v118 + 627) = 1;
      }

      obj_checkpoint_check_for_unknown(v53[49]);
      v74 = v118;
      v75 = *(v118 + 633);
      if ((v43 & v75 & 1) == 0)
      {
        v107 = *(v14 + 36);
        v109 = *(v14 + 34);
        log_debug("%s:%d: %s stable checkpoint indices: desc %d data %d\n", "nx_mount", 1539, (v118[48] + 212), v109, v107);
        v74 = v118;
        v75 = *(v118 + 633);
      }

      if (v43 & 1 | ((v75 & 1) == 0))
      {
        if (*(v74 + 628) == 1 && ((*(v74 + 631) | v75) & 1) == 0 && (v74[79] & 1) == 0 && !*(v50 + 176))
        {
          *(v74 + 165) = (*(v14 + 34) + *(v14 + 35) - 1) % (v14[13] & 0x7FFFFFFFu);
        }

        *(v36 + 136) = 0;
        *(v36 + 144) = 0;
        *(v36 + 1264) &= ~2uLL;
        sub_100007234(v74);
        v77 = v118;
        if (*(v118 + 629) == 1)
        {
          v15 = sub_100009C74(v118, &v116);
          if (v15)
          {
LABEL_133:
            log_err("%s:%d: %s failed to set up spaceman for demo mode: %d\n");
            goto LABEL_144;
          }

          obj_cache_lock_write(v118[49]);
          v78 = v118;
          v118[52] = 0;
          v15 = obj_clone(v116, 0, v78 + 52, 0);
          obj_cache_unlock_write(v118[49]);
          if (v15)
          {
            obj_release(v116);
            goto LABEL_133;
          }

          obj_ephemeral_set_persistent(v118[52], 0);
          obj_release(v116);
          v77 = v118;
        }

        v79 = v103 + 1;
        v15 = tx_mgr_init(v77, v103 + 1, v77 + 50);
        v80 = v118;
        if (v15)
        {
          log_err("%s:%d: %s tx manager initialization failed: %d\n");
          goto LABEL_144;
        }

        v81 = v118[50];
        *(v81 + 104) = v109;
        *(v81 + 108) = v107;
        if ((v95 & 1) == 0)
        {
          log_info("%s:%d: %s sanity checking all container state... please be patient.\n", "nx_mount", 1602, (v80[48] + 212));
          v15 = nx_check(v118, 0);
          v80 = v118;
          if (v15)
          {
            log_err("%s:%d: %s failed nx_check sanity: %d\n");
            goto LABEL_144;
          }
        }

        if ((*(v80 + 627) & 1) == 0)
        {
          if (*(v80 + 633) & 1) != 0 || *(v80 + 632) == 1 && (log_info("%s:%d: %s Enabling temporary checkpoints starting with xid %lld.\n", "nx_mount", 1614, (v80[48] + 212), v79), v80 = v118, *(v118[47] + 1408) = v79, (*(v80 + 633)))
          {
            if ((v80[79] & 1) == 0)
            {
              log_info("%s:%d: %s Making temporary checkpoint %lld permanent (start %lld).\n", "nx_mount", 1622, (v80[48] + 212), *(v80[47] + 16), *(v80[47] + 1408));
              v14[176] = 0;
              obj_checksum_set_phys(v118, v14, v13, v82, v83);
              if (!v112)
              {
                v15 = 22;
                goto LABEL_183;
              }

              v84 = dev_write(v118[48]);
              if (v84 || (v84 = tx_barrier(v118, 16), v84))
              {
                v15 = v84;
LABEL_183:
                log_err("%s:%d: %s failed to write superblock to block %lld: %d\n");
                goto LABEL_144;
              }

              v80 = v118;
              *(v118[47] + 1408) = 0;
              v105 = 1;
            }
          }

          v85 = spaceman_allocation_init(v80);
          if (v85)
          {
            log_err("%s:%d: %s failed to set up sm allocation metadata: %d\n", "nx_mount", 1648, (v118[48] + 212), v85);
          }

          if (v105)
          {
            obj_checksum_set(v118, v86, v87);
            v88 = dev_write(v118[48]);
            if (v88)
            {
              v15 = v88;
              log_err("%s:%d: %s failed to write superblock to block 0: %d\n");
              goto LABEL_144;
            }
          }

          v89 = v118;
          v90 = v118[47];
          v91 = *(v90 + 1384);
          v92 = apfs_source_version_val_full();
          if (v91 < v92)
          {
            *(v90 + 1384) = v92;
          }

          sub_100033740(v89);
          sub_100006480(v118);
        }

        _apfs_free(v14, v42);
        v93 = v118;
        if (*(v118[47] + 1248))
        {
          if ((*(v118 + 627) & 1) == 0)
          {
            v15 = sub_100007478(v118);
            v93 = v118;
            if (v15)
            {
              log_err("%s:%d: %s nx_unblock_physical_range failed with error: %d\n", "nx_mount", 1706, (v118[48] + 212), v15);
              v14 = 0;
              goto LABEL_144;
            }
          }
        }

        *v94 = v93;
        if (v117)
        {
          _apfs_free(v117, v117[9]);
        }

        return 0;
      }

      obj_cache_reset(v74[49], 0);
      v74[51] = 0;
      v74[92] = 0;
      *(v74 + 53) = 0u;
      *(v74 + 55) = 0u;
      *(v74 + 57) = 0u;
      memcpy(v118[47], v50, v13);
      v43 = 1;
    }
  }

  log_info("%s:%d: %s container cleanly-unmounted flag set.\n", "nx_mount", 1341, (v118[48] + 212));
  v44 = v118;
  v45 = *(v118 + 633);
LABEL_74:
  v47 = *(v36 + 136) + *(v36 + 140) - 1;
  v48 = *(v36 + 104) & 0x7FFFFFFF;
  v49 = v47 % v48;
  v113 = v47 % v48;
  v114 = *(v36 + 16);
  if ((v43 & v45 & 1) == 0)
  {
    goto LABEL_75;
  }

  log_info("%s:%d: %s Attempting to load from temporary checkpoint (start xid %lld).\n", "nx_mount", 1346, (v44[48] + 212), *(v36 + 1408));
  v54 = v49;
  v55 = __srca;
  if (!*(v36 + 1408))
  {
    log_err("%s:%d: %s No temporary checkpoint start xid!  Aborting!\n", "nx_mount", 1348, (v118[48] + 212));
    v15 = 100;
    goto LABEL_144;
  }

LABEL_85:
  v56 = *(v36 + 104) & 0x7FFFFFFF;
  if (v54 >= v56)
  {
    log_err("%s:%d: %s checkpoint descriptor index %d out of range [0...%d]\n", "nx_mount", 1366, (v118[48] + 212), v54, v56 - 1);
    v76 = v118;
LABEL_143:
    v15 = nx_corruption_detected_int(v76);
    goto LABEL_144;
  }

  v100 = v54;
  v57 = sub_1000073E8(v118, v54, &v112);
  if (v57)
  {
    v15 = v57;
LABEL_136:
    log_err("%s:%d: %s couldn't read checkpoint descriptor block %d @ %lld: %d\n");
    goto LABEL_10;
  }

  v58 = dev_read(v118[48]);
  v15 = v58;
  if (*(v118 + 633) == 1)
  {
    if (!v58 && v13)
    {
      v61 = 0;
      while (!*(v14 + v61))
      {
        if (v13 == ++v61)
        {
          v15 = 0;
          goto LABEL_95;
        }
      }

      log_err("%s:%d: %s Attempt to load temporary checkpoint found unexpected data (0x%02x @ %d), checkpoint descriptor block %d @ %lld\n", "nx_mount", 1382, (v118[48] + 212), *(v14 + v61), v61, v100, v112);
      v15 = 22;
    }

LABEL_95:
    memcpy(v14, v55, v13);
    obj_checksum_set_phys(v118, v14, v13, v62, v63);
  }

  if (v15)
  {
    goto LABEL_136;
  }

  if (*(v14 + 7) || *(v14 + 6) != -2147483647)
  {
    log_err("%s:%d: %s checkpoint descriptor block %d is not a valid superblock\n", "nx_mount", 1399, (v118[48] + 212), v100);
    v76 = v118;
    goto LABEL_143;
  }

  v64 = nx_check_superblock(v14, *(v36 + 36), 1, v59, v60);
  if (v64)
  {
    v15 = v64;
    log_err("%s:%d: %s checkpoint descriptor block %d superblock failed sanity checks: %d\n");
    goto LABEL_144;
  }

  v65 = *(v36 + 64);
  if ((v65 & 0xFFFFFFFFFFFFFFFDLL) != 0)
  {
    log_err("%s:%d: %s unsupported nx_incompatible_features (0x%llx): unable to mount\n", "nx_mount", 1409, (v118[48] + 212), v65 & 0xFFFFFFFFFFFFFFFDLL);
    if ((v65 & 0x100) != 0)
    {
      log_err("%s:%d: %s Fusion is not supported anymore\n", "nx_mount", 1411, (v118[48] + 212));
    }

    v15 = 75;
    goto LABEL_10;
  }

  v50 = __srca;
  if (!nx_superblock_agrees_with_main_superblock(__srca, v14, "checkpoint"))
  {
    log_err("%s:%d: %s checkpoint descriptor block %d doesn't agree with main superblock\n", "nx_mount", 1418, (v118[48] + 212), v100);
    v15 = 22;
    goto LABEL_144;
  }

  v66 = (*(v14 + 34) + *(v14 + 35) - 1) % (*(v36 + 104) & 0x7FFFFFFFu);
  if (v100 != v66)
  {
    log_err("%s:%d: %s checkpoint superblock index %d doesn't match index block was found at: %d\n", "nx_mount", 1425, (v118[48] + 212), v66, v100);
    v76 = v118;
    goto LABEL_143;
  }

  v67 = sub_100006F68(v118, 0, 1, 0, 1);
  if (v67 || (v67 = sub_100006F68(v118, v14[14], v14[13] & 0x7FFFFFFF, *(v14 + 26) < 0, 0), v67) || (v67 = sub_100006F68(v118, v14[15], *(v14 + 27) & 0x7FFFFFFF, *(v14 + 27) < 0, 0), v67))
  {
    v15 = v67;
    log_err("%s:%d: %s xid %lld at index %d failed to load checkpoint metadata ranges (overlap?): %d\n", "nx_mount", 1442, (v118[48] + 212), v14[2], *(v14 + 34), v67);
    goto LABEL_10;
  }

  v68 = sub_100031B88(v118, v14);
  if (v68)
  {
    v15 = v68;
    log_err("%s:%d: %s validation failed for checkpoint at index %d: %d\n");
    goto LABEL_144;
  }

  v115 = v100;
  v103 = v14[2];
  log_debug("%s:%d: %s checkpoint: largest xid %lld, given checkpoint xid %lld @ %d\n", "nx_mount", 1453, (v118[48] + 212), v114, v103, v100);
  v69 = v118;
  if (*(__srca + 2) != v14[2])
  {
    log_err("%s:%d: %s loading older checkpoint, checkpoint xid %lld, superblock xid %lld\n", "nx_mount", 1455, (v118[48] + 212), v14[2], *(v36 + 16));
    v69 = v118;
    v105 = 1;
    *(v118 + 643) = 1;
  }

  v70 = sub_100031C98(v69, v14, 0, 0);
  if (v70)
  {
    v15 = v70;
    log_err("%s:%d: %s data for checkpoint at index %d couldn't be loaded: %d\n");
    goto LABEL_144;
  }

  memcpy(v118[47], v14, v13);
  v71 = v118;
  *(v118[49] + 400) = *(v118[47] + 88);
  v15 = sub_100004A70(v71, 0, 2);
  if (v15)
  {
    log_err("%s:%d: %s failed to fix up checkpoint data: %d\n");
    goto LABEL_144;
  }

  v15 = sub_100009C74(v118, &v116);
  if (v15)
  {
    log_err("%s:%d: %s checkpoint xid %lld failed to get spaceman: %d\n");
    goto LABEL_144;
  }

  v72 = sub_100006F68(v118, *(v116[47] + 168), *(v116[47] + 164) & 0x7FFFFFFF, *(v116[47] + 164) < 0, 0);
  if (!v72)
  {
    v15 = sub_100006F68(v118, *(v116[47] + 176), *(v116[47] + 152), *(v116[47] + 152) < 0, 0);
    obj_release(v116);
    if (v15)
    {
      goto LABEL_150;
    }

    v53 = v118;
    goto LABEL_115;
  }

  v15 = v72;
  obj_release(v116);
LABEL_150:
  log_err("%s:%d: %s checkpoint xid %lld failed to load spaceman metadata ranges (overlap?): %d\n");
LABEL_10:
  if (v117)
  {
    _apfs_free(v117, v117[9]);
  }

  if (v14)
  {
    _apfs_free(v14, v13);
  }

  v16 = v118;
  if (v118)
  {
    *(v118 + 627) = 1;
    nx_unmount_internal(v16, 0);
  }

  if (v119)
  {
    obj_cache_destroy(v119);
  }

  if (v120)
  {
    dev_close(v120);
  }

  return v15;
}