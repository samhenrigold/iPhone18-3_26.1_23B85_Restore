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
          v15 = *MEMORY[0x277D85E08];
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
  v67 = *MEMORY[0x277D85DE8];
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
    v7 = *MEMORY[0x277D85E08];
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
      v65 = 0u;
      v66 = 0u;
      v63 = 0u;
      v64 = 0u;
      *__str = 0u;
      v62 = 0u;
      snprintf(__str, 0x10uLL, "<%d", *(*(a2 + 392) + 16) / 5u);
      snprintf(&v62, 0x10uLL, "<%d", 2 * *(*(a2 + 392) + 16) / 5u);
      snprintf(&v63, 0x10uLL, "<%d", 3 * *(*(a2 + 392) + 16) / 5u);
      snprintf(&v64, 0x10uLL, "<%d", 4 * *(*(a2 + 392) + 16) / 5u);
      snprintf(&v65, 0x10uLL, "<%d", *(*(a2 + 392) + 16));
      snprintf(&v66, 0x10uLL, "=%d", *(*(a2 + 392) + 16));
      fprintf(v7, "    keys: %9s %9s %9s %9s %9s %9s\n", __str, &v62, &v63, &v64, &v65, &v66);
      fprintf(v7, "    keys: %9d %9d %9d %9d %9d %9d\n", a3[40], a3[41], a3[42], a3[43], a3[44], a3[45]);
      LODWORD(v33) = a3[40];
      v34 = a3[4];
      v35 = v34;
      v36 = v33 * 100.0;
      if (!v34)
      {
        v35 = 1.0;
      }

      LODWORD(v28) = a3[41];
      LODWORD(v29) = a3[42];
      LODWORD(v30) = a3[43];
      LODWORD(v31) = a3[44];
      LODWORD(v32) = a3[45];
      fprintf(v7, "    keys: %9.2f %9.2f %9.2f %9.2f %9.2f %9.2f\n", v36 / v35, v28 * 100.0 / v35, v29 * 100.0 / v35, v30 * 100.0 / v35, v31 * 100.0 / v35, v32 * 100.0 / v35);
      snprintf(__str, 0x10uLL, "<%d", *(*(a2 + 392) + 20) / 5u);
      snprintf(&v62, 0x10uLL, "<%d", 2 * *(*(a2 + 392) + 20) / 5u);
      snprintf(&v63, 0x10uLL, "<%d", 3 * *(*(a2 + 392) + 20) / 5u);
      snprintf(&v64, 0x10uLL, "<%d", 4 * *(*(a2 + 392) + 20) / 5u);
      snprintf(&v65, 0x10uLL, "<%d", *(*(a2 + 392) + 20));
      snprintf(&v66, 0x10uLL, "=%d", *(*(a2 + 392) + 20));
      fprintf(v7, "  values: %9s %9s %9s %9s %9s %9s\n", __str, &v62, &v63, &v64, &v65, &v66);
      fprintf(v7, "  values: %9d %9d %9d %9d %9d %9d\n", a3[46], a3[47], a3[48], a3[49], a3[50], a3[51]);
      LODWORD(v42) = a3[46];
      v43 = v42 * 100.0;
      v44 = a3[4];
      v45 = v44;
      if (!v44)
      {
        v45 = 1.0;
      }

      LODWORD(v37) = a3[47];
      LODWORD(v38) = a3[48];
      LODWORD(v39) = a3[49];
      LODWORD(v40) = a3[50];
      LODWORD(v41) = a3[51];
      fprintf(v7, "  values: %9.2f %9.2f %9.2f %9.2f %9.2f %9.2f\n", v43 / v45, v37 * 100.0 / v45, v38 * 100.0 / v45, v39 * 100.0 / v45, v40 * 100.0 / v45, v41 * 100.0 / v45);
      fprintf(v7, "capacity: all    %llu / %llu => %.2f %% used\n", *(a3 + 7), *(a3 + 6), *(a3 + 7) * 100.0 / *(a3 + 6));
      if (a4 == 4)
      {
        fprintf(v7, "capacity: nodes  %llu / %llu => %.2f %% used\n");
      }

      else
      {
        fprintf(v7, "capacity: %9s %9s %9s %9s %9s %9s\n", "<20", "<40", "<60", "<80", "<100", "FULL");
        fprintf(v7, "capacity: %9d %9d %9d %9d %9d %9d\n", a3[5], a3[6], a3[7], a3[8], a3[9], a3[10]);
        LODWORD(v46) = a3[5];
        LODWORD(v47) = a3[6];
        v48 = a3[1] + *a3;
        LODWORD(v49) = a3[7];
        LODWORD(v50) = a3[8];
        LODWORD(v51) = a3[9];
        LODWORD(v52) = a3[10];
        fprintf(v7, "capacity: %9.2f %9.2f %9.2f %9.2f %9.2f %9.2f\n", v46 * 100.0 / v48, v47 * 100.0 / v48, v49 * 100.0 / v48, v50 * 100.0 / v48, v51 * 100.0 / v48, v52 * 100.0 / v48);
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
        LODWORD(v53) = a3[26];
        LODWORD(v54) = a3[27];
        LODWORD(v55) = a3[1];
        v56 = v55;
        LODWORD(v57) = a3[28];
        LODWORD(v58) = a3[29];
        LODWORD(v59) = a3[30];
        LODWORD(v60) = a3[31];
        return fprintf(v7, "capacity: %9.2f %9.2f %9.2f %9.2f %9.2f %9.2f\n", v53 * 100.0 / v56, v54 * 100.0 / v56, v57 * 100.0 / v56, v58 * 100.0 / v56, v59 * 100.0 / v56, v60 * 100.0 / v56);
      }
    }
  }

  return result;
}

uint64_t btree_check_recent_sanity(atomic_ullong *a1, unint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t, void, void, uint64_t, void), uint64_t a4)
{
  v45[1] = *MEMORY[0x277D85DE8];
  v8 = a1[1];
  if (!v8)
  {
    v8 = *(*a1 + 392);
  }

  MEMORY[0x28223BE20](a1);
  v10 = (&v40 - v9);
  bzero(&v40 - v9, v11);
  v44 = 0;
  v45[0] = 0;
  v42 = 0;
  v43 = 0;
  obj_lock(a1, 1);
  v12 = btree_level_count(a1, &v43);
  if (v12)
  {
    v13 = v12;
    obj_unlock(a1, 1);
    return v13;
  }

  v14 = _apfs_calloc_typed(v43, 0x10uLL, 0x1020040FFEA222EuLL);
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
          v25 = btree_node_key_ptr(v19, v24, v45, &v42 + 1);
          if (v25 || (v25 = btree_node_val_ptr(*v17, v24, &v44, &v42), v25))
          {
            v13 = v25;
            obj_oid(*v17);
            log_err("%s:%d: %s node 0x%llx (level %d): error getting index %d key/val: %d\n");
            goto LABEL_30;
          }

          v26 = a3(v8, a4, a2, v45[0], HIWORD(v42), v44, v42);
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
    if (v43 <= ++v16)
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
  v27 = v43;
  v28 = v43 - 1;
  if (((v43 - 1) & 0x8000) == 0)
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

      v31 -= 2;
    }

    while (v30-- > 1);
    v27 = v43;
    v15 = v41;
  }

  _apfs_free(v15, 16 * v27);
  return v13;
}

uint64_t nx_check(uint64_t *a1, char a2)
{
  v257 = 0;
  v258 = 0;
  v256 = 0;
  v254 = 0;
  v255 = 0;
  v252 = 0;
  v253 = 0;
  v250 = 0uLL;
  v251 = 0;
  v248 = 0;
  v249 = 0;
  v246 = 0;
  v247 = 0;
  v4 = a1[47];
  v5 = spaceman_get(a1, &v258);
  if (v5)
  {
    v6 = v5;
    log_err("%s:%d: %s unable to get spaceman: %d\n", "nx_check", 70, (a1[48] + 212), v5);
    return v6;
  }

  v7 = v258[47];
  v234 = obj_xid(v258);
  v8 = *(v7 + 32);
  v237 = v4;
  v9 = *(v4 + 36);
  if (v8 != v9)
  {
    ++v256;
    log_warn("%s:%d: %s spaceman block size %d doesn't match nx superblock block size %d\n", "nx_check", 78, (a1[48] + 212), v8, v9);
    v8 = *(v7 + 32);
  }

  v224 = a2;
  v10 = *(v7 + 36);
  LODWORD(v11) = v8;
  if (v10 != 8 * v8)
  {
    ++v256;
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
    ++v256;
    log_warn("%s:%d: %s spaceman chunks per cib is bad: %d\n", "nx_check", 86, (a1[48] + 212), v14);
    v11 = *(v7 + 32);
  }

  v240 = v11 + 0x7FFFFFFD8;
  v15 = (v11 + 0x7FFFFFFD8) >> 3;
  v16 = *(v7 + 44);
  if (v16 != v15)
  {
    ++v256;
    log_warn("%s:%d: %s spaceman cibs per cab is bad: %d\n", "nx_check", 90, (a1[48] + 212), v16);
  }

  v17 = (8 * v8);
  v18 = *(v7 + 48);
  v228 = (v7 + 48);
  v19 = *(v7 + 96) + v18;
  v20 = *(v237 + 40);
  if (v19 != v20)
  {
    ++v256;
    log_warn("%s:%d: %s spaceman block count %lld doesn't match nx superblock block count %lld\n", "nx_check", 94, (a1[48] + 212), v19, v20);
    v18 = *v228;
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

  v23 = v234;
  if (v21 != v22)
  {
    ++v256;
    log_warn("%s:%d: %s spaceman chunk count is bad: %lld\n", "nx_check", 97, (a1[48] + 212), v21);
    v21 = *(v7 + 56);
  }

  v24 = *(v7 + 64);
  v25 = (v12 >> 5);
  v232 = v25;
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
    ++v256;
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
    ++v256;
    log_warn("%s:%d: %s spaceman cab count is bad: %d\n", "nx_check", 109, (a1[48] + 212), v29);
  }

  v30 = *(v7 + 72);
  v31 = *(v7 + 48);
  if (v30 > v31)
  {
    ++v256;
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
    ++v256;
    log_warn("%s:%d: %s spaceman tier2 chunk count is bad: %lld\n", "nx_check", 116, (a1[48] + 212), v32);
    v32 = *(v7 + 104);
  }

  v35 = *(v7 + 112);
  if (v32 % v232)
  {
    v36 = v32 / v232 + 1;
  }

  else
  {
    v36 = v32 / v232;
  }

  if (v36 != v35)
  {
    ++v256;
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
    ++v256;
    log_warn("%s:%d: %s spaceman tier2 cab count is bad: %d\n", "nx_check", 128, (a1[48] + 212), v39);
  }

  v40 = *(v7 + 120);
  v41 = *(v7 + 96);
  if (v40 > v41)
  {
    ++v256;
    log_warn("%s:%d: %s spaceman tier2 free count is too large: %lld > %lld\n", "nx_check", 131, (a1[48] + 212), v40, v41);
  }

  v42.i64[0] = *(v7 + 64);
  v42.i64[1] = *(v7 + 112);
  v43 = *(v7 + 152) & 0x7FFFFFFFFFFFFFFFLL;
  v242 = vaddlvq_u32(v42) + *(v7 + 56) + *(v7 + 104);
  if (v43 != 3 * v242)
  {
    ++v256;
    log_warn("%s:%d: %s spaceman IP block count is bad: %lld\n", "nx_check", 137, (a1[48] + 212), v43);
    v43 = *(v7 + 152) & 0x7FFFFFFFFFFFFFFFLL;
  }

  v44 = *(v7 + 160);
  if ((*(v7 + 32) + 8 * ((v43 + 63) >> 6) - 1) / *(v7 + 32) != v44)
  {
    ++v256;
    log_warn("%s:%d: %s spaceman IP bm block count is bad: %d\n", "nx_check", 140, (a1[48] + 212), v44);
  }

  v45 = *(v7 + 164) & 0x7FFFFFFF;
  if (v45 >= 0xFFFF)
  {
    ++v256;
    log_warn("%s:%d: %s spaceman IP bitmap block count is too large: %d\n", "nx_check", 143, (a1[48] + 212), v45);
  }

  v46 = *(v7 + 148);
  if (v46 <= 3)
  {
    ++v256;
    log_warn("%s:%d: %s spaceman IP bitmap tx multiplier is too small: %d\n", "nx_check", 146, (a1[48] + 212), v46);
  }

  v47 = *(v7 + 160);
  v48 = *(v7 + 164) & 0x7FFFFFFF;
  if (v48 / v47 <= 3)
  {
    ++v256;
    log_warn("%s:%d: %s spaceman IP bitmap block count per tx is too small: %d\n", "nx_check", 149, (a1[48] + 212), v48 / v47);
    v47 = *(v7 + 160);
    v48 = *(v7 + 164) & 0x7FFFFFFF;
  }

  v49 = *(v7 + 148);
  if (v48 != v49 * v47)
  {
    v50 = 65534;
    if (v48 != 65534)
    {
      ++v256;
      log_warn("%s:%d: %s spaceman IP bitmap block count is bad: %d\n", "nx_check", 156, (a1[48] + 212), v48);
      v47 = *(v7 + 160);
      v49 = *(v7 + 148);
      v50 = *(v7 + 164) & 0x7FFFFFFF;
    }

    if (v50 / v47 < v49 >> 1)
    {
      ++v256;
      log_warn("%s:%d: %s spaceman IP bitmap block count is too low: %d\n", "nx_check", 159, (a1[48] + 212), v50);
    }
  }

  v51 = *(v7 + 48);
  v52 = *(v7 + 168);
  if (!v52 || v52 >= v51)
  {
    ++v256;
    log_warn("%s:%d: %s spaceman IP bm base address is bad: %lld\n", "nx_check", 166, (a1[48] + 212), v52);
  }

  v53 = *(v7 + 176);
  if (!v53 || v53 >= v51)
  {
    ++v256;
    log_warn("%s:%d: %s spaceman IP base address is bad: %lld\n", "nx_check", 169, (a1[48] + 212), v53);
  }

  v233 = v15;
  v244 = a1;
  v231 = v7;
  if (*(v7 + 160))
  {
    v54 = 0;
    v226 = 0;
    do
    {
      v55 = v258;
      v56 = *(v258[109] + 8 * v54);
      if (v56 > v23)
      {
        ++v256;
        log_warn("%s:%d: %s spaceman IP bitmap block %d xid %lld > spaceman xid %lld\n", "nx_check", 176, (a1[48] + 212), v54, v56, v23);
        v55 = v258;
      }

      v57 = *(v55[110] + 2 * v54);
      if ((*(v7 + 164) & 0x7FFFFFFFu) <= v57)
      {
        ++v256;
        log_warn("%s:%d: %s spaceman IP bitmap block %d index %d out of range\n", "nx_check", 179, (a1[48] + 212), v54, v57);
        v57 = *(v258[110] + 2 * v54);
      }

      v58 = spaceman_ip_bm_block_address(a1, v7, v57, &v248);
      if (v58 || (v58 = obj_get(a1[49], 0x40000000uLL, v248, &sm_bm_desc, 0, 0, 0, 0, &v253)) != 0)
      {
        v23 = v234;
        ++v256;
        log_warn("%s:%d: %s spaceman IP bitmap unable to get bitmap block %d @ %lld: %d\n", "nx_check", 187, (a1[48] + 212), v54, v248, v58);
      }

      else
      {
        v23 = v234;
        if (v54 == *(v7 + 160) - 1)
        {
          v59 = (*(v7 + 152) & 0x7FFFFFFFFFFFFFFFuLL) % (8 * *(v7 + 32));
        }

        else
        {
          v59 = (8 * *(v7 + 32));
        }

        v226 += bitmap_count_bits(v253[7], 0, 0, v59);
        obj_release(v253);
      }

      ++v54;
    }

    while (v54 < *(v7 + 160));
  }

  else
  {
    v226 = 0;
  }

  v60 = v7;
  v61 = a1;
  v62 = *(v7 + 56) + 2 * v242 + *(v7 + 104) - 1;
  if (v226 > v62)
  {
    ++v256;
    log_warn("%s:%d: %s spaceman IP bitmap has too many free blocks %lld > %lld\n", "nx_check", 196, (a1[48] + 212), v226, v62);
  }

  v63 = *(v7 + 320);
  v64 = *(v7 + 164);
  LODWORD(v65) = v64 & 0x7FFFFFFF;
  if ((v64 & 0x7FFFFFFFu) <= v63)
  {
    ++v256;
    log_warn("%s:%d: %s spaceman IP bitmap free head %d out of range\n", "nx_check", 201, (a1[48] + 212), v63);
    v64 = *(v7 + 164);
    LODWORD(v65) = v64 & 0x7FFFFFFF;
  }

  v66 = *(v7 + 322);
  if (v65 > v66 || (++v256, log_warn("%s:%d: %s spaceman IP bitmap free head %d out of range\n", "nx_check", 204, (a1[48] + 212), v66), v64 = *(v7 + 164), LODWORD(v65) = v64 & 0x7FFFFFFF, (v64 & 0x7FFFFFFF) != 0))
  {
    v67 = 0;
    v68 = 0;
    v69 = v258[111];
    do
    {
      v70 = *(v69 + 2 * v67);
      v71 = v70 == 0xFFFF || v65 > v70;
      if (!v71)
      {
        ++v256;
        log_warn("%s:%d: %s spaceman IP bitmap free next %d, value %d invalid\n", "nx_check", 209, (a1[48] + 212), v67, v70);
        v64 = *(v7 + 164);
        v69 = v258[111];
        v70 = *(v69 + 2 * v67);
      }

      v65 = v64 & 0x7FFFFFFF;
      if (v65 > v70)
      {
        ++v68;
      }

      ++v67;
    }

    while (v67 < v65);
  }

  else
  {
    v68 = 0;
  }

  v72 = *(v7 + 320);
  if (v72 != 0xFFFF)
  {
    ++v68;
  }

  v73 = (v65 - *(v7 + 160));
  if (v68 != v73)
  {
    ++v256;
    log_warn("%s:%d: %s spaceman IP bitmap next array free count is wrong, %lld != %d\n", "nx_check", 224, (a1[48] + 212), v68, v73);
    v64 = *(v7 + 164);
    v72 = *(v7 + 320);
  }

  v74 = v64 & 0x7FFFFFFF;
  if (v74 && v74 > v72)
  {
    v75 = 1;
    do
    {
      --v68;
      if (v75 >= v74)
      {
        break;
      }

      v72 = *(v258[111] + 2 * v72);
      ++v75;
    }

    while (v74 > v72);
  }

  if (v68 < 0)
  {
    ++v256;
    log_warn("%s:%d: %s spaceman IP bitmap free list corrupted, too long, count %lld\n");
  }

  else if (v68)
  {
    ++v256;
    log_warn("%s:%d: %s spaceman IP bitmap free list corrupted, too short, count %lld\n");
  }

  v76 = *(v7 + 200);
  v77 = *(v7 + 152) & 0x7FFFFFFFFFFFFFFFLL;
  if (v76 > v77)
  {
    ++v256;
    log_warn("%s:%d: %s spaceman IP free queue count is too large: %lld > %lld\n", "nx_check", 244, (a1[48] + 212), v76, v77);
  }

  if (*(v7 + 208))
  {
    v78 = spaceman_fq_tree_get(a1, v258, 0, 0, 0, &v252);
    if (v78)
    {
      ++v256;
      log_warn("%s:%d: %s unable to get spaceman IP free queue tree: %d\n", "nx_check", 252, (a1[48] + 212), v78);
    }

    else if (v252)
    {
      v140 = btree_check(v252, 0, 0, 0);
      if (v140)
      {
        v141 = v140;
        ++v256;
        log_warn("%s:%d: %s spaceman IP free queue tree sanity check failed: %d\n", "nx_check", 256, (a1[48] + 212), v140);
        v247 = 0x1000000008;
      }

      else
      {
        v247 = 0x1000000008;
        v141 = bt_lookup_first(v252, 0, &v250, &v247 + 1, &v251, &v247);
      }

      v79 = 0;
      v167 = 0;
      for (i = 0; !v141; v141 = bt_lookup_variant(v252, 0, &v250, &v247 + 1, HIDWORD(v247), &v251, &v247, 4, 0, 0))
      {
        if (v247)
        {
          v169 = v251;
        }

        else
        {
          v251 = 1;
          v169 = 1;
        }

        v170 = v250;
        if (v250 > v234)
        {
          ++v256;
          log_warn("%s:%d: %s spaceman IP free queue tree entry %lld:%lld xid larger than spaceman xid %lld\n", "nx_check", 269, (v244[48] + 212), v250, *(&v250 + 1), v234);
          v170 = v250;
        }

        if (v170 >= i)
        {
          v172 = *(&v250 + 1);
          if (v170 == i)
          {
            if (*(&v250 + 1) < v167)
            {
              ++v256;
              log_warn("%s:%d: %s spaceman IP free queue tree entries out of order: addr %lld < %lld\n", "nx_check", 277, (v244[48] + 212), *(&v250 + 1), v167);
              v172 = *(&v250 + 1);
            }

            v167 = v251 + v172;
          }

          else
          {
            v167 = 0;
            i = v170;
          }

          v171 = v244;
        }

        else
        {
          ++v256;
          v171 = v244;
          log_warn("%s:%d: %s spaceman IP free queue tree entries out of order: xid %lld < %lld\n", "nx_check", 272, (v244[48] + 212), v170, i);
          v167 = 0;
          v172 = *(&v250 + 1);
          i = v250;
        }

        v173 = spaceman_ip_block_index(v171, v258, v172, &v246);
        v60 = v231;
        if (v173)
        {
          ++v256;
          if (v173 == 2)
          {
            log_warn("%s:%d: %s spaceman IP free queue tree entry %lld:%lld %lld addr is bad\n");
          }

          else
          {
            log_warn("%s:%d: %s error getting IP block index for spaceman IP free queue tree entry %lld:%lld %lld\n");
          }
        }

        if (v251 >= 2)
        {
          v174 = spaceman_ip_block_index(v244, v258, v251 + *(&v250 + 1) - 1, &v246);
          if (v174)
          {
            ++v256;
            if (v174 == 2)
            {
              log_warn("%s:%d: %s spaceman IP free queue tree entry %lld:%lld %lld end addr is bad\n");
            }

            else
            {
              log_warn("%s:%d: %s error getting end block index for spaceman IP free queue tree entry %lld:%lld %lld\n");
            }
          }
        }

        v79 += v169;
        LODWORD(v247) = 8;
      }

      if (v141 != 2)
      {
        ++v256;
        log_warn("%s:%d: %s spaceman IP free queue tree iteration aborted with error %d\n", "nx_check", 304, (v244[48] + 212), v141);
      }

      obj_release(v252);
      v61 = v244;
      LODWORD(v15) = v233;
      goto LABEL_123;
    }
  }

  v79 = 0;
LABEL_123:
  v80 = v60[25];
  if (v79 != v80)
  {
    ++v256;
    log_warn("%s:%d: %s spaceman IP free queue count %lld doesn't match count in the free queue: %lld\n", "nx_check", 310, (v61[48] + 212), v80, v79);
  }

  v81 = 0;
  v82 = 0;
  v238 = 0;
  v225 = 2 * v242;
  v229 = (v240 >> 3);
  v83 = 1;
  v227 = v79;
  do
  {
    v230 = v83;
    v84 = &v228[6 * v81];
    if (*(v84 + 4))
    {
      v85 = 0;
      v241 = 0;
      v243 = 0;
      v86 = 0xFFFFFFFFLL;
      v235 = v81;
      while (1)
      {
        if (!*(v84 + 5))
        {
          v89 = v258;
          v90 = (v258[v81 + 112] + 8 * v85);
          v239 = v86;
          goto LABEL_140;
        }

        if (v85 / v15 == v86 && v82 != 0)
        {
          v91 = v86;
          goto LABEL_139;
        }

        v239 = v85 / v15;
        v88 = *(v258[v81 + 112] + 8 * v239);
        if (v255)
        {
          obj_release(v255);
          v255 = 0;
        }

        if (!obj_get(v61[49], 0x40000000uLL, v88, &sm_cab_desc, 0, 0, 0, 0, &v255))
        {
          break;
        }

        ++v256;
        log_warn("%s:%d: %s unable to read cab %d @ %lld: %d\n");
LABEL_199:
        ++v85;
        v86 = v239;
        if (v85 >= *(v84 + 4))
        {
          goto LABEL_214;
        }
      }

      v118 = *(v255 + 56);
      v119 = *(v118 + 36);
      if (v119 > (obj_size_phys(v255) - 40) >> 3)
      {
        ++v256;
        log_warn("%s:%d: %s cab %d @ %lld cab_cib_count %d invalid\n", "nx_check", 337, (v61[48] + 212), v239, v88, *(v118 + 36));
        v85 = v85 + v229 - 1 + ~((v85 + v229 - 1) % v229);
        v82 = v118;
        goto LABEL_198;
      }

      if (obj_xid(v255) > v234)
      {
        ++v256;
        v120 = (v61[48] + 212);
        v121 = obj_xid(v255);
        log_warn("%s:%d: %s cab %d xid %lld > spaceman xid %lld\n", "nx_check", 344, v120, v239, v121, v234);
      }

      v82 = v118;
      v122 = *(v118 + 32);
      v91 = v85 / v15;
      if (v122 != v239)
      {
        ++v256;
        log_warn("%s:%d: %s cab %d index %d should be %d\n", "nx_check", 347, (v61[48] + 212), v239, v122, v239);
        v91 = v85 / v15;
      }

      v123 = *(v118 + 36);
      v81 = v235;
      if (v123 != v15 && (*(v84 + 5) - 1 != v91 || v123 != *(v84 + 4) % v15))
      {
        ++v256;
        v124 = v15;
        if (*(v84 + 5) - 1 == v91)
        {
          v124 = *(v84 + 4) % v15;
        }

        log_warn("%s:%d: %s cab %d cib count %d should be %d\n", "nx_check", 352, (v61[48] + 212), v91, v123, v124);
        v91 = v85 / v15;
      }

LABEL_139:
      v239 = v91;
      v90 = (v82 + 8 * (v85 - (v91 * v15)) + 40);
      v89 = v258;
LABEL_140:
      v92 = *v90;
      v93 = spaceman_ip_block_index(v61, v89, *v90, &v246);
      if (v93)
      {
        ++v256;
        if (v93 == 2)
        {
          log_warn("%s:%d: %s spaceman chunk info block %lld addr %lld not within IP block range\n");
        }

        else
        {
          log_warn("%s:%d: %s error getting IP block index for spaceman chunk info block %lld addr %lld\n");
        }
      }

      if (obj_get(v61[49], 0x40000000uLL, v92, &sm_cib_desc, 0, 0, 0, 0, &v254))
      {
        ++v256;
        log_warn("%s:%d: %s unable to read cib %lld @ %lld: %d\n");
        goto LABEL_199;
      }

      v236 = v82;
      if (obj_xid(v254) > v234)
      {
        ++v256;
        v94 = (v61[48] + 212);
        v95 = obj_xid(v254);
        log_warn("%s:%d: %s cib %lld xid %lld > spaceman xid %lld\n", "nx_check", 374, v94, v85, v95, v234);
      }

      v96 = v254[7];
      v97 = *(v96 + 32);
      if (v85 != v97)
      {
        ++v256;
        log_warn("%s:%d: %s cib %lld index %d should be %lld\n", "nx_check", 378, (v61[48] + 212), v85, v97, v85);
      }

      v98 = *(v96 + 36);
      v99 = v13;
      if (v98 != v13)
      {
        if (v85 != *(v84 + 4) - 1 || (v99 = *(v96 + 36), v84[1] % v232 != v98))
        {
          ++v256;
          v100 = v232;
          if (v85 == *(v84 + 4) - 1)
          {
            v100 = v84[1] % v232;
          }

          log_warn("%s:%d: %s cib %lld chunk info count %d should be %lld\n", "nx_check", 383, (v61[48] + 212), v85, v98, v100);
          v99 = *(v96 + 36);
        }

        if (v99 > v13)
        {
          ++v256;
          log_warn("%s:%d: %s cib %lld cib_chunk_info_count %d invalid\n", "nx_check", 387, (v61[48] + 212), v92, v99);
          v99 = *(v96 + 36);
        }
      }

      if (v99 >= v13)
      {
        v101 = v13;
      }

      else
      {
        v101 = v99;
      }

      if (!v101)
      {
LABEL_197:
        obj_release(v254);
        v61 = v244;
        LODWORD(v15) = v233;
        v82 = v236;
LABEL_198:
        v81 = v235;
        goto LABEL_199;
      }

      v102 = 0;
      v103 = v17 * v232 * v85;
      v104 = (v96 + 64);
      while (1)
      {
        v105 = *(v104 - 3);
        if (v105 > obj_xid(v254))
        {
          ++v256;
          v106 = (v244[48] + 212);
          v107 = *(v104 - 3);
          v108 = obj_xid(v254);
          log_warn("%s:%d: %s cib %lld chunk info %d xid %lld > cib xid %lld\n", "nx_check", 392, v106, v85, v102, v107, v108);
        }

        v109 = *(v104 - 2);
        if (v103 != v109)
        {
          ++v256;
          log_warn("%s:%d: %s cib %lld chunk info %d addr %lld should be %lld\n", "nx_check", 396, (v244[48] + 212), v85, v102, v109, v103);
        }

        v110 = *(v104 - 1) & 0xFFFFF;
        if (v110 == v17 || v85 == *(v84 + 4) - 1 && v102 == *(v96 + 36) - 1 && *v84 % v17 == v110)
        {
          if ((*(v104 - 1) & 0xFFFFFu) > v110)
          {
            ++v256;
            log_warn("%s:%d: %s cib %lld chunk info %d free count %d > chunk block count %d\n", "nx_check", 407, (v244[48] + 212), v85, v102, *(v104 - 1) & 0xFFFFF, *(v104 - 1) & 0xFFFFF);
          }

          if (!*v104)
          {
            ++v238;
            v112 = *(v104 - 1) & 0xFFFFFLL;
LABEL_179:
            v113 = *(v104 - 1) & 0xFFFFF;
            if (v112 != v113)
            {
              ++v256;
              log_warn("%s:%d: %s cib %lld ci %d free count %d doesn't match free bits in bitmap block %lld\n", "nx_check", 429, (v244[48] + 212), v85, v102, *(v104 - 1) & 0xFFFFF, v112);
              v113 = *(v104 - 1) & 0xFFFFF;
            }

            v243 += v112;
            v241 += v113;
            v114 = *(v237 + 1248);
            if (v114)
            {
              v115 = *(v237 + 1240);
              v259[0] = 0;
              v116 = calc_overlap_range(*(v104 - 2), *(v104 - 1) & 0xFFFFF, v115, v114, v259);
              if (v116)
              {
                if (*v104)
                {
                  v116 = bitmap_count_bits(v253[7], 0, v259[0] - *(v104 - 2), v259[0] + v116 - *(v104 - 2));
                }

                v243 -= v116;
                v241 -= v116;
              }
            }

            if (*v104)
            {
              obj_release(v253);
            }

            goto LABEL_191;
          }

          v111 = spaceman_ip_block_index(v244, v258, *v104, &v246);
          if (v111)
          {
            ++v256;
            if (v111 == 2)
            {
              log_warn("%s:%d: %s cib %lld ci %d bm addr %lld not within IP block range\n");
            }

            else
            {
              log_warn("%s:%d: %s error getting IP block index for cib %lld ci %d bm addr %lld\n");
            }
          }

          else
          {
            if (!obj_get(v244[49], 0x40000000uLL, *v104, &sm_bm_desc, 0, 0, 0, 0, &v253))
            {
              v112 = bitmap_count_bits(v253[7], 0, 0, *(v104 - 1) & 0xFFFFF);
              goto LABEL_179;
            }

            ++v256;
            log_warn("%s:%d: %s cib %lld chunk %d unable to get bitmap block @ %lld: %d\n");
          }
        }

        else
        {
          ++v256;
          log_warn("%s:%d: %s cib %lld chunk info %d block count %d should be %d\n");
        }

LABEL_191:
        ++v102;
        LODWORD(v117) = *(v96 + 36);
        if (v117 >= v13)
        {
          v117 = v13;
        }

        else
        {
          v117 = v117;
        }

        v103 += v17;
        v104 += 4;
        if (v102 >= v117)
        {
          goto LABEL_197;
        }
      }
    }

    v241 = 0;
    v243 = 0;
LABEL_214:
    if (v255)
    {
      obj_release(v255);
      v255 = 0;
    }

    v125 = v84[3];
    if (v241 == v125)
    {
      v126 = v241;
    }

    else
    {
      ++v256;
      log_warn("%s:%d: %s spaceman free count %lld doesn't match free count in chunks %lld\n", "nx_check", 469, (v61[48] + 212), v125, v241);
      v126 = v84[3];
    }

    if (v243 != v126)
    {
      ++v256;
      log_warn("%s:%d: %s spaceman free count %lld doesn't match free count in bitmap %lld\n", "nx_check", 472, (v61[48] + 212), v126, v243);
    }

    v83 = 0;
    v81 = 1;
  }

  while ((v230 & 1) != 0);
  if (v227 + v226 != v238 + v225)
  {
    ++v256;
    log_warn("%s:%d: %s spaceman IP free block count is wrong %lld != %lld\n", "nx_check", 477, (v61[48] + 212), v227 + v226, v238 + v225);
  }

  v127 = v231;
  v128 = v231[30];
  v129 = v231[6];
  v130 = v234;
  if (v128 > v129)
  {
    ++v256;
    log_warn("%s:%d: %s spaceman free queue count is too large: %lld > %lld\n", "nx_check", 482, (v61[48] + 212), v128, v129);
  }

  if (!v231[31])
  {
    goto LABEL_229;
  }

  v131 = spaceman_fq_tree_get(v61, v258, 1u, 0, 0, &v252);
  if (v131)
  {
    ++v256;
    log_warn("%s:%d: %s unable to get spaceman free queue tree: %d\n", "nx_check", 490, (v61[48] + 212), v131);
    goto LABEL_229;
  }

  if (v252)
  {
    v142 = btree_check(v252, 0, 0, 0);
    if (v142)
    {
      v143 = v142;
      ++v256;
      log_warn("%s:%d: %s spaceman free queue tree sanity check failed: %d\n", "nx_check", 494, (v61[48] + 212), v142);
      v247 = 0x1000000008;
    }

    else
    {
      v247 = 0x1000000008;
      v143 = bt_lookup_first(v252, 0, &v250, &v247 + 1, &v251, &v247);
    }

    v132 = 0;
    v175 = 0;
    for (j = 0; !v143; v143 = bt_lookup_variant(v252, 0, &v250, &v247 + 1, HIDWORD(v247), &v251, &v247, 4, 0, 0))
    {
      if (v247)
      {
        v177 = v251;
      }

      else
      {
        v251 = 1;
        v177 = 1;
      }

      v178 = v250;
      if (v250 > v234)
      {
        ++v256;
        log_warn("%s:%d: %s spaceman free queue tree entry %lld:%lld xid larger than spaceman xid %lld\n", "nx_check", 507, (v244[48] + 212), v250, *(&v250 + 1), v234);
        v178 = v250;
      }

      if (v178 >= j)
      {
        v179 = *(&v250 + 1);
        if (v178 == j)
        {
          if (*(&v250 + 1) < v175)
          {
            ++v256;
            log_warn("%s:%d: %s spaceman free queue tree entries out of order: addr %lld < %lld\n", "nx_check", 515, (v244[48] + 212), *(&v250 + 1), v175);
            v179 = *(&v250 + 1);
          }

          v175 = v251 + v179;
        }

        else
        {
          v175 = 0;
          j = v178;
        }
      }

      else
      {
        ++v256;
        log_warn("%s:%d: %s spaceman free queue tree entries out of order: xid %lld < %lld\n", "nx_check", 510, (v244[48] + 212), v178, j);
        v175 = 0;
        v179 = *(&v250 + 1);
        j = v250;
      }

      if (v179 < 1 || (v180 = *v228, v179 >= *v228))
      {
        ++v256;
        log_warn("%s:%d: %s spaceman free queue tree entry %lld:%lld %lld addr is bad\n", "nx_check", 524, (v244[48] + 212), v250, v179, v251);
        v180 = *v228;
        v179 = *(&v250 + 1);
      }

      v71 = v180 > v251;
      v181 = v180 - v251;
      if (!v71 || v179 > v181)
      {
        ++v256;
        log_warn("%s:%d: %s spaceman free queue tree entry %lld:%lld %lld range is bad\n", "nx_check", 527, (v244[48] + 212), v250, v179, v251);
      }

      v132 += v177;
      LODWORD(v247) = 8;
    }

    v61 = v244;
    if (v143 != 2)
    {
      ++v256;
      log_warn("%s:%d: %s spaceman free queue tree iteration aborted with error %d\n", "nx_check", 534, (v244[48] + 212), v143);
    }

    obj_release(v252);
    v130 = v234;
    v127 = v231;
  }

  else
  {
LABEL_229:
    v132 = 0;
  }

  v133 = v127[30];
  if (v132 != v133)
  {
    ++v256;
    log_warn("%s:%d: %s spaceman free queue count %lld doesn't match count in the free queue: %lld\n", "nx_check", 540, (v61[48] + 212), v133, v132);
  }

  v134 = v127[35];
  v135 = v127[12];
  if (v134 > v135)
  {
    ++v256;
    log_warn("%s:%d: %s spaceman free queue count is too large: %lld > %lld\n", "nx_check", 544, (v61[48] + 212), v134, v135);
  }

  if (!v127[36])
  {
    goto LABEL_237;
  }

  v136 = spaceman_fq_tree_get(v61, v258, 2u, 0, 0, &v252);
  if (v136)
  {
    ++v256;
    log_warn("%s:%d: %s unable to get spaceman free queue tree: %d\n", "nx_check", 552, (v61[48] + 212), v136);
    goto LABEL_237;
  }

  if (v252)
  {
    v144 = btree_check(v252, 0, 0, 0);
    if (v144)
    {
      v145 = v144;
      ++v256;
      log_warn("%s:%d: %s spaceman free queue tree sanity check failed: %d\n", "nx_check", 556, (v61[48] + 212), v144);
      v247 = 0x1000000008;
    }

    else
    {
      v247 = 0x1000000008;
      v145 = bt_lookup_first(v252, 0, &v250, &v247 + 1, &v251, &v247);
    }

    v137 = 0;
    v182 = 0;
    for (k = 0; !v145; v145 = bt_lookup_variant(v252, 0, &v250, &v247 + 1, HIDWORD(v247), &v251, &v247, 4, 0, 0))
    {
      if (v247)
      {
        v184 = v251;
      }

      else
      {
        v251 = 1;
        v184 = 1;
      }

      v185 = v250;
      if (v250 > v234)
      {
        ++v256;
        log_warn("%s:%d: %s spaceman free queue tree entry %lld:%lld xid larger than spaceman xid %lld\n", "nx_check", 569, (v244[48] + 212), v250, *(&v250 + 1), v234);
        v185 = v250;
      }

      if (v185 >= k)
      {
        v186 = *(&v250 + 1);
        if (v185 == k)
        {
          if (*(&v250 + 1) < v182)
          {
            ++v256;
            log_warn("%s:%d: %s spaceman free queue tree entries out of order: addr %lld < %lld\n", "nx_check", 577, (v244[48] + 212), *(&v250 + 1), v182);
            v186 = *(&v250 + 1);
          }

          v182 = v251 + v186;
        }

        else
        {
          v182 = 0;
          k = v185;
        }
      }

      else
      {
        ++v256;
        log_warn("%s:%d: %s spaceman free queue tree entries out of order: xid %lld < %lld\n", "nx_check", 572, (v244[48] + 212), v185, k);
        v182 = 0;
        v186 = *(&v250 + 1);
        k = v250;
      }

      if (v186 < 1 || (v187 = v231[12], v186 >= v187))
      {
        ++v256;
        log_warn("%s:%d: %s spaceman free queue tree entry %lld:%lld %lld addr is bad\n", "nx_check", 587, (v244[48] + 212), v250, v186, v251);
        v187 = v231[12];
      }

      v71 = v187 > v251;
      v188 = v187 - v251;
      if (!v71 || v186 > v188)
      {
        ++v256;
        log_warn("%s:%d: %s spaceman free queue tree entry %lld:%lld %lld range is bad\n", "nx_check", 590, (v244[48] + 212), v250, *(&v250 + 1), v251);
      }

      v137 += v184;
      LODWORD(v247) = 8;
    }

    v61 = v244;
    if (v145 != 2)
    {
      ++v256;
      log_warn("%s:%d: %s spaceman free queue tree iteration aborted with error %d\n", "nx_check", 597, (v244[48] + 212), v145);
    }

    obj_release(v252);
    v130 = v234;
    v127 = v231;
  }

  else
  {
LABEL_237:
    v137 = 0;
  }

  v138 = v127[35];
  if (v137 != v138)
  {
    ++v256;
    log_warn("%s:%d: %s spaceman free queue count %lld doesn't match count in the free queue: %lld\n", "nx_check", 603, (v61[48] + 212), v138, v137);
  }

  if (*(v237 + 168))
  {
    v139 = nx_reaper_get(v61, &v257);
    if (v139)
    {
      v6 = v139;
      log_err("%s:%d: %s unable to get reaper: %d\n");
      goto LABEL_381;
    }

    v146 = v257[47];
    v147 = *(v146 + 32);
    if (*(v146 + 40) >= v147)
    {
      log_warn("%s:%d: %s reaper completed ID 0x%llx not less than next reap ID 0x%llx\n", "nx_check_reaper", 940, (v61[48] + 212), *(v146 + 40), v147);
      v148 = 1;
    }

    else
    {
      v148 = 0;
    }

    v149 = *(v146 + 64);
    if ((v149 & 1) == 0)
    {
      ++v148;
      log_warn("%s:%d: %s reaper needs more cowbell, flags 0x%x\n", "nx_check_reaper", 943, (v61[48] + 212), v149);
    }

    v150 = *(v146 + 48);
    if (!v150)
    {
      if (!*(v146 + 56) || (++v148, log_warn("%s:%d: %s reaper has tail with no head\n", "nx_check_reaper", 947, (v61[48] + 212)), (v150 = *(v146 + 48)) == 0))
      {
LABEL_373:
        v256 += v148;
        obj_release(v257);
        v61 = v244;
        v130 = v234;
        goto LABEL_374;
      }
    }

    v259[0] = 0;
    v151 = *(v146 + 68);
    while (2)
    {
      v152 = obj_get(v244[49], 0x80000000uLL, v150, &nx_reap_list_desc, 0, 0, 0, 0, v259);
      if (v152)
      {
        v6 = v152;
        log_err("%s:%d: %s failed to get reap list head: %d\n", "nx_check_reaper", 956, (v244[48] + 212), v152);
        obj_release(v257);
        log_err("%s:%d: %s reaper check failed with error: %d\n");
        goto LABEL_381;
      }

      v153 = v259[0][47];
      v154 = *(v153 + 44);
      if (v154 != ((obj_size_phys(v259[0]) - 64) / 0x28))
      {
        ++v148;
        v155 = (v244[48] + 212);
        v156 = *(v153 + 44);
        v157 = obj_size_phys(v259[0]);
        log_warn("%s:%d: %s reap list object 0x%llx max record count %u not expected value %u\n", "nx_check_reaper", 963, v155, v150, v156, (v157 - 64) / 0x28);
      }

      v158 = *(v153 + 44);
      if (*(v153 + 48) > v158)
      {
        ++v148;
        log_warn("%s:%d: %s reap list object 0x%llx record count %d larger than max %d\n", "nx_check_reaper", 966, (v244[48] + 212), v150, *(v153 + 48), v158);
      }

      v159 = *(v153 + 52);
      if (v159 != -1)
      {
        v160 = *(v153 + 44);
        if (v159 > v160)
        {
          ++v148;
          log_warn("%s:%d: %s reap list object 0x%llx first index %u larger than max %u\n", "nx_check_reaper", 969, (v244[48] + 212), v150, *(v153 + 52), v160);
        }
      }

      v161 = *(v153 + 56);
      if (v161 != -1)
      {
        v162 = *(v153 + 44);
        if (v161 > v162)
        {
          ++v148;
          log_warn("%s:%d: %s reap list object 0x%llx last index %u larger than max %u\n", "nx_check_reaper", 972, (v244[48] + 212), v150, *(v153 + 52), v162);
        }
      }

      v163 = *(v153 + 60);
      if (v163 != -1)
      {
        v164 = *(v153 + 44);
        if (v163 > v164)
        {
          ++v148;
          log_warn("%s:%d: %s reap list object 0x%llx free index %u larger than max %u\n", "nx_check_reaper", 975, (v244[48] + 212), v150, *(v153 + 60), v164);
        }
      }

      v165 = *(v153 + 32);
      v166 = *(v146 + 56);
      if (v165)
      {
LABEL_277:
        if (v166 == v150)
        {
          if (!v165)
          {
            goto LABEL_281;
          }

          ++v148;
          log_warn("%s:%d: %s reap list tail 0x%llx is not last reap list object, next 0x%llx\n", "nx_check_reaper", 987, (v244[48] + 212), v150, v165);
          v150 = *(v153 + 32);
        }

        else
        {
          v150 = v165;
        }
      }

      else
      {
        if (v166 != v150)
        {
          ++v148;
          log_warn("%s:%d: %s last reap list object 0x%llx doesn't match tail 0x%llx\n", "nx_check_reaper", 984, (v244[48] + 212), v150, v166);
          v166 = *(v146 + 56);
          v165 = *(v153 + 32);
          goto LABEL_277;
        }

LABEL_281:
        v150 = 0;
      }

      obj_release(v259[0]);
      if (*(v146 + 68))
      {
        --v151;
        if (v150 && !v151)
        {
          ++v148;
          log_warn("%s:%d: %s reap list expected %u objects, but haven't seen last reap list object yet\n");
          goto LABEL_373;
        }

        if (!v150 && v151)
        {
          ++v148;
          log_warn("%s:%d: %s reap list expected %u objects, but got last reap list object with %u more objects left\n");
          goto LABEL_373;
        }
      }

      if (!v150)
      {
        goto LABEL_373;
      }

      continue;
    }
  }

LABEL_374:
  v189 = v237;
  v190 = *(v237 + 160);
  if (!v190)
  {
    goto LABEL_382;
  }

  v191 = obj_get(v61[49], 0x40000000uLL, v190, &om_desc, 0, 0, 0, 0, &v249);
  if (v191)
  {
    v6 = v191;
    log_err("%s:%d: %s unable to get omap: %d\n");
    goto LABEL_381;
  }

  if (obj_xid(v249) > v130)
  {
    ++v256;
    v192 = (v61[48] + 212);
    v193 = obj_xid(v249);
    log_warn("%s:%d: %s omap xid %lld > spaceman xid %lld\n", "nx_check", 633, v192, v193, v130);
  }

  v6 = nx_check_omap(v61, v249, v130, &v256);
  obj_release(v249);
  v189 = v237;
  if (!v6)
  {
LABEL_382:
    v259[0] = 0;
    v245 = 0;
    if (!*(v189 + 180))
    {
LABEL_443:
      obj_release(v258);
      if (v256)
      {
        return 22;
      }

      else
      {
        return 0;
      }
    }

    v194 = 0;
    while (1)
    {
      v195 = *(v237 + 184 + 8 * v194);
      if (v195)
      {
        v196 = obj_get(v244[49], 0, v195, &apfs_desc, 0, 0, 0, 0, v259);
        if (v196)
        {
          log_err("%s:%d: %s unable to get fs[%d] oid %lld, %d\n", "nx_check", 654, (v244[48] + 212), v194, v195, v196);
        }

        else
        {
          v197 = v259[0];
          v198 = v259[0][47];
          v199 = *(v198 + 128);
          if (!v199)
          {
            goto LABEL_393;
          }

          v200 = obj_get(v244[49], 0x40000000uLL, v199, &om_desc, 0, v259[0], 0, 0, &v249);
          if (v200)
          {
            log_err("%s:%d: %s unable to get omap %lld: %d\n", "nx_check", 661, v259[0] + 4040, *(v259[0][47] + 128), v200);
            goto LABEL_441;
          }

          v201 = nx_check_omap(v259[0], v249, v234, &v256);
          obj_release(v249);
          v197 = v259[0];
          if (!v201)
          {
            v198 = v259[0][47];
LABEL_393:
            if (*(v198 + 136))
            {
              if (*(v198 + 264) & 1) != 0 || (v224)
              {
                v245 = 0;
                fsroot_tree = apfs_get_fsroot_tree(v197, 0, 0, &v245);
                if (fsroot_tree)
                {
                  log_err("%s:%d: %s unable to get fs root tree: %d\n", "nx_check", 680, v259[0] + 4040, fsroot_tree);
                }

                else
                {
                  if (obj_xid(v245) > v234)
                  {
                    ++v256;
                    v203 = (v259[0] + 505);
                    v204 = obj_xid(v245);
                    log_warn("%s:%d: %s fs root tree xid %lld > spaceman xid %lld\n", "nx_check", 683, v203, v204, v234);
                  }

                  v205 = btree_check(v245, 0, 0, 0);
                  if (v205)
                  {
                    ++v256;
                    log_warn("%s:%d: %s fs root tree sanity check failed: %d\n", "nx_check", 688, v259[0] + 4040, v205);
                  }
                }

                if (v245)
                {
                  obj_release(v245);
                }
              }

              else
              {
                log_err("%s:%d: %s skipping check of fs[%d] oid %lld fs root tree because it's encrypted\n", "nx_check", 675, v197 + 4040, v194, v195);
              }
            }

            v206 = *(v259[0][47] + 144);
            if (v206)
            {
              v245 = 0;
              extentref_tree = apfs_get_extentref_tree(v259[0], v206, 0, &v245);
              if (extentref_tree)
              {
                log_err("%s:%d: %s unable to get fs extentref tree: %d\n", "nx_check", 700, v259[0] + 4040, extentref_tree);
              }

              else
              {
                if (obj_xid(v245) > v234)
                {
                  ++v256;
                  v208 = (v259[0] + 505);
                  v209 = obj_xid(v245);
                  log_warn("%s:%d: %s fs extentref tree xid %lld > spaceman xid %lld\n", "nx_check", 703, v208, v209, v234);
                }

                v210 = btree_check(v245, 0, 0, 0);
                if (v210)
                {
                  ++v256;
                  log_warn("%s:%d: %s fs extentref tree sanity check failed: %d\n", "nx_check", 708, v259[0] + 4040, v210);
                }
              }

              if (v245)
              {
                obj_release(v245);
              }
            }

            if (*(v259[0][47] + 152))
            {
              v245 = 0;
              snap_meta_tree = apfs_get_snap_meta_tree(v259[0], 0, &v245);
              if (snap_meta_tree)
              {
                log_err("%s:%d: %s unable to get fs snap meta tree: %d\n", "nx_check", 719, v259[0] + 4040, snap_meta_tree);
              }

              else
              {
                if (obj_xid(v245) > v234)
                {
                  ++v256;
                  v212 = (v259[0] + 505);
                  v213 = obj_xid(v245);
                  log_warn("%s:%d: %s fs snap meta tree xid %lld > spaceman xid %lld\n", "nx_check", 722, v212, v213, v234);
                }

                v214 = btree_check(v245, 0, 0, 0);
                if (v214)
                {
                  ++v256;
                  log_warn("%s:%d: %s fs snap meta tree sanity check failed: %d\n", "nx_check", 727, v259[0] + 4040, v214);
                }
              }

              if (v245)
              {
                obj_release(v245);
              }
            }

            if (*(v259[0][47] + 1072))
            {
              v245 = 0;
              doc_id_tree = apfs_get_doc_id_tree(v259[0], 0, 0, 0, &v245);
              if (doc_id_tree)
              {
                log_err("%s:%d: %s unable to get doc-id tree: %d\n", "nx_check", 738, v259[0] + 4040, doc_id_tree);
              }

              else
              {
                if (obj_xid(v245) > v234)
                {
                  ++v256;
                  v216 = (v259[0] + 505);
                  v217 = obj_xid(v245);
                  log_warn("%s:%d: %s doc-id tree xid %lld > spaceman xid %lld\n", "nx_check", 741, v216, v217, v234);
                }

                v218 = btree_check(v245, 0, 0, 0);
                if (v218)
                {
                  ++v256;
                  log_warn("%s:%d: %s doc-id tree sanity check failed: %d\n", "nx_check", 746, v259[0] + 4040, v218);
                }
              }

              if (v245)
              {
                obj_release(v245);
              }
            }

            if (*(v259[0][47] + 1080))
            {
              v245 = 0;
              v219 = apfs_get_doc_id_tree(v259[0], 1, 0, 0, &v245);
              if (v219)
              {
                log_err("%s:%d: %s unable to get prev doc-id tree: %d\n", "nx_check", 757, v259[0] + 4040, v219);
              }

              else
              {
                if (obj_xid(v245) > v234)
                {
                  ++v256;
                  v220 = (v259[0] + 505);
                  v221 = obj_xid(v245);
                  log_warn("%s:%d: %s prev doc-id tree xid %lld > spaceman xid %lld\n", "nx_check", 760, v220, v221, v234);
                }

                v222 = btree_check(v245, 0, 0, 0);
                if (v222)
                {
                  ++v256;
                  log_warn("%s:%d: %s prev doc-id tree sanity check failed: %d\n", "nx_check", 765, v259[0] + 4040, v222);
                }
              }

              if (v245)
              {
                obj_release(v245);
              }
            }

LABEL_441:
            obj_release(v259[0]);
            goto LABEL_442;
          }

          log_err("%s:%d: %s omap check failed for omap %lld: %d\n", "nx_check", 668, v259[0] + 4040, *(v259[0][47] + 128), v201);
          obj_release(v259[0]);
        }
      }

LABEL_442:
      if (++v194 >= *(v237 + 180))
      {
        goto LABEL_443;
      }
    }
  }

  log_err("%s:%d: %s omap check failed with error: %d\n");
LABEL_381:
  obj_release(v258);
  return v6;
}

uint64_t nx_check_omap(uint64_t *a1, uint64_t a2, unint64_t a3, _DWORD *a4)
{
  v52 = *MEMORY[0x277D85DE8];
  v8 = a1;
  if (obj_type(a1) == 13)
  {
    v8 = a1[49];
  }

  v43 = 0;
  memset(v42, 0, sizeof(v42));
  v9 = *(v8[47] + 36);
  if (*(*(a2 + 376) + 36) >= 0x400u)
  {
    if (obj_type(a1) == 13)
    {
      v10 = (a1 + 505);
    }

    else
    {
      v10 = (a1[48] + 212);
    }

    log_warn("%s:%d: %s omap snapshot count %d seems excessive\n", "nx_check_omap", 802, v10, *(*(a2 + 376) + 36));
  }

  v44 = 0;
  v11 = *(a2 + 376);
  v12 = *(v11 + 40);
  if (v12 == 1073741826 || v12 == -2147483646)
  {
    v14 = *(v11 + 48);
    v46 = 0u;
    v51 = 0;
    v50 = 0u;
    v49 = 0u;
    v48 = 0u;
    v47 = 0u;
    v45 = omap_key_cmp;
    DWORD2(v46) = 11;
    if (v12 == 2)
    {
      extended = btree_get_extended(a1, v12 & 0xFFFF0000, v14, 0, 0, &v45, 0, &v44);
      if (!extended)
      {
        if (obj_xid(v44) <= a3)
        {
          v21 = 0;
        }

        else
        {
          if (obj_type(a1) == 13)
          {
            v16 = (a1 + 505);
          }

          else
          {
            v16 = (a1[48] + 212);
          }

          v22 = obj_xid(v44);
          log_warn("%s:%d: %s omap tree xid %lld > spaceman xid %lld\n", "nx_check_omap", 817, v16, v22, a3);
          v21 = 1;
        }

        v23 = btree_check(v44, 0, 0, 0);
        if (v23)
        {
          v24 = v23;
          ++v21;
          if (obj_type(a1) == 13)
          {
            v25 = (a1 + 505);
          }

          else
          {
            v25 = (a1[48] + 212);
          }

          log_warn("%s:%d: %s omap tree sanity check failed: %d\n", "nx_check_omap", 822, v25, v24);
          goto LABEL_83;
        }

        v40 = 0;
        v41 = 0;
        v45 = 0;
        *&v46 = 0;
        bt_iterator_init_with_hint(v42, v44, 0, 0, &v45, 16, 16, &v40, 0x10u, 0);
        if (bt_iterator_ended(v42))
        {
LABEL_83:
          obj_release(v44);
          goto LABEL_84;
        }

        v26 = 0;
        *&v38[8] = 0;
        v39 = (a1 + 505);
        *v38 = v9 - 1;
        v27 = -1;
        while (v45 >= v26)
        {
          v28 = v46;
          if (v45 == v26)
          {
            if (v46 <= *&v38[4])
            {
              ++v21;
              if (obj_type(a1) == 13)
              {
                log_warn("%s:%d: %s omap tree entries out of order: oid %lld xid %lld <= lastxid %lld\n", "nx_check_omap", 841, v39, v45, v46, *&v38[4]);
              }

              else
              {
                log_warn("%s:%d: %s omap tree entries out of order: oid %lld xid %lld <= lastxid %lld\n", "nx_check_omap", 841, (a1[48] + 212), v45, v46, *&v38[4]);
              }
            }

            goto LABEL_44;
          }

          *&v38[4] = 0;
          v27 = -1;
          v26 = v45;
LABEL_46:
          if (v28 > a3)
          {
            ++v21;
            if (obj_type(a1) == 13)
            {
              log_warn("%s:%d: %s omap entry %lld:%lld xid > spaceman xid %lld\n", "nx_check_omap", 850, v39, v45, v46, a3);
            }

            else
            {
              log_warn("%s:%d: %s omap entry %lld:%lld xid > spaceman xid %lld\n", "nx_check_omap", 850, (a1[48] + 212), v45, v46, a3);
            }
          }

          if (v40 >= 0x800)
          {
            ++v21;
            if (obj_type(a1) == 13)
            {
              log_warn("%s:%d: %s omap entry %lld:%lld unknown flags are set: 0x%x\n", "nx_check_omap", 853, v39, v45, v46, v40 & 0xFFFFFFFE);
            }

            else
            {
              log_warn("%s:%d: %s omap entry %lld:%lld unknown flags are set: 0x%x\n", "nx_check_omap", 853, (a1[48] + 212), v45, v46, v40 & 0xFFFFFFFE);
            }
          }

          if ((v40 & 1) != 0 && v27 == -1)
          {
            ++v21;
            if (obj_type(a1) == 13)
            {
              log_warn("%s:%d: %s omap entry %lld:%lld marks deletion of object with no earlier mappings\n", "nx_check_omap", 856, v39, v45, v46);
            }

            else
            {
              log_warn("%s:%d: %s omap entry %lld:%lld marks deletion of object with no earlier mappings\n", "nx_check_omap", 856, (a1[48] + 212), v45, v46);
            }
          }

          else if (v27 != -1)
          {
            if (v27)
            {
              ++v21;
              if (obj_type(a1) == 13)
              {
                log_warn("%s:%d: %s omap entry %lld:%lld beyond deletion entry @ xid %lld\n", "nx_check_omap", 861, v39, v45, v46, v27);
              }

              else
              {
                log_warn("%s:%d: %s omap entry %lld:%lld beyond deletion entry @ xid %lld\n", "nx_check_omap", 861, (a1[48] + 212), v45, v46, v27);
              }
            }

            else if (v40)
            {
              v27 = v46;
            }

            else
            {
              v27 = 0;
            }

            goto LABEL_70;
          }

          if (v40)
          {
            v27 = v46;
          }

          else
          {
            v27 = 0;
          }

LABEL_70:
          if (HIDWORD(v40) >= 0x100000)
          {
            ++v21;
            if (obj_type(a1) == 13)
            {
              log_warn("%s:%d: %s omap entry %lld:%lld size %d seems excessive\n", "nx_check_omap", 866, v39, v45, v46, HIDWORD(v40));
            }

            else
            {
              log_warn("%s:%d: %s omap entry %lld:%lld size %d seems excessive\n", "nx_check_omap", 866, (a1[48] + 212), v45, v46, HIDWORD(v40));
            }
          }

          if (nx_superblock_sanity_check_extent(v8[47], 0, v41, (*v38 + HIDWORD(v40)) / v9, 0))
          {
            ++v21;
            if (obj_type(a1) == 13)
            {
              log_warn("%s:%d: %s omap entry %lld:%lld addr %lld size %d is bad\n", "nx_check_omap", 871, v39, v45, v46, v41, HIDWORD(v40));
            }

            else
            {
              log_warn("%s:%d: %s omap entry %lld:%lld addr %lld size %d is bad\n", "nx_check_omap", 871, (a1[48] + 212), v45, v46, v41, HIDWORD(v40));
            }
          }

          bt_iterator_next(v42);
          if (bt_iterator_ended(v42))
          {
            goto LABEL_83;
          }
        }

        if (obj_type(a1) == 13)
        {
          log_warn("%s:%d: %s omap tree entries out of order: oid %lld < %lld\n", "nx_check_omap", 835, v39, v45, v26);
        }

        else
        {
          log_warn("%s:%d: %s omap tree entries out of order: oid %lld < %lld\n", "nx_check_omap", 835, (a1[48] + 212), v45, v26);
        }

        ++v21;
        v27 = -1;
        v26 = v45;
LABEL_44:
        v28 = v46;
        *&v38[4] = v46;
        goto LABEL_46;
      }
    }

    else
    {
      extended = 22;
    }

    if (obj_type(a1) == 13)
    {
      v17 = (a1 + 505);
    }

    else
    {
      v17 = (a1[48] + 212);
    }

    log_warn("%s:%d: %s unable to get omap tree: %d\n", "nx_check_omap", 812, v17, extended);
    v20 = *a4 + 1;
    goto LABEL_110;
  }

  v18 = obj_type(a1);
  if (v18 == 13)
  {
    v19 = (a1 + 505);
  }

  else
  {
    v19 = (a1[48] + 212);
  }

  log_warn("%s:%d: %s omap tree type 0x%x is bad\n", "nx_check_omap", 881, v19, *(*(a2 + 376) + 40));
  v21 = 1;
LABEL_84:
  v29 = *(a2 + 376);
  v30 = *(v29 + 56);
  if (!v30)
  {
LABEL_109:
    extended = 0;
    v20 = *a4 + v21;
    goto LABEL_110;
  }

  v31 = *(v29 + 44);
  if (v31 != 1073741826 && v31 != -2147483646)
  {
    ++v21;
    if (obj_type(a1) == 13)
    {
      v34 = (a1 + 505);
    }

    else
    {
      v34 = (a1[48] + 212);
    }

    log_warn("%s:%d: %s omap snapshot tree type 0x%x is bad\n", "nx_check_omap", 920, v34, *(*(a2 + 376) + 40));
    goto LABEL_109;
  }

  v46 = 0u;
  v51 = 0;
  v50 = 0u;
  v49 = 0u;
  v48 = 0u;
  v47 = 0u;
  v45 = omap_snapshot_key_cmp;
  DWORD2(v46) = 19;
  extended = btree_get_extended(a1, v31 & 0xFFFF0000, v30, 0, 0, &v45, 0, &v44);
  if (!extended)
  {
    if (obj_xid(v44) > a3)
    {
      ++v21;
      if (obj_type(a1) == 13)
      {
        v32 = (a1 + 505);
      }

      else
      {
        v32 = (a1[48] + 212);
      }

      v35 = obj_xid(v44);
      log_warn("%s:%d: %s omap snapshot tree xid %lld > spaceman xid %lld\n", "nx_check_omap", 896, v32, v35, a3);
    }

    if (btree_check(v44, 0, 0, 0))
    {
      ++v21;
      obj_type(a1);
      log_warn("%s:%d: %s omap snapshot tree sanity check failed: %d\n");
    }

    else
    {
      v45 = 0;
      *&v46 = 0;
      v40 = 0;
      bt_iterator_init_with_hint(v42, v44, 0, 0, &v40, 8, 8, &v45, 0x10u, 0);
      v36 = 0;
      if (!bt_iterator_ended(v42))
      {
        v36 = 0;
        do
        {
          ++v36;
          bt_iterator_next(v42);
        }

        while (!bt_iterator_ended(v42));
      }

      if (v36 != *(*(a2 + 376) + 36))
      {
        ++v21;
        obj_type(a1);
        log_warn("%s:%d: %s omap snapshot count %d doesn't match snapshot tree record count %lld\n");
      }
    }

    obj_release(v44);
    goto LABEL_109;
  }

  if (obj_type(a1) == 13)
  {
    v33 = (a1 + 505);
  }

  else
  {
    v33 = (a1[48] + 212);
  }

  log_warn("%s:%d: %s unable to get omap snapshot tree: %d\n", "nx_check_omap", 891, v33, extended);
  v20 = v21 + 1 + *a4;
LABEL_110:
  *a4 = v20;
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
      v23 = 0;
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
  v52 = 0;
  v53 = 0;
  v51 = 0;
  v50 = 0;
  v2 = spaceman_get(a1, &v53);
  if (v2)
  {
    v3 = v2;
    log_err("%s:%d: %s unable to get spaceman: %d\n");
    return v3;
  }

  v4 = v53[47];
  v5 = obj_xid(v53);
  v6 = 0;
  v7 = 0;
  v8 = v5 - 3;
  if (v5 < 3)
  {
    v8 = 0;
  }

  v43 = v8;
  v44 = 0;
  v48 = 0;
  v49 = 0;
  v46 = 0;
  v47 = 0;
  v45 = 0;
  do
  {
    v9 = v4 + 48 + 48 * v6;
    if (!*(v9 + 16))
    {
LABEL_27:
      v3 = 0;
      goto LABEL_30;
    }

    v10 = 0;
    v11 = -1;
    while (!*(v9 + 20))
    {
      v17 = (v53[v6 + 112] + 8 * v10);
LABEL_22:
      v18 = *v17;
      v44 = v4;
      v45 = __PAIR64__(v10, v6);
      v19 = obj_get(a1[49], 0x40000000uLL, v18, &sm_cib_desc, &v44, 0, 0, 0, &v48);
      if (v19)
      {
        v21 = v19;
        log_err("%s:%d: %s unable to read cib %lld @ %lld: %d\n", "nx_check_recent_sanity", 1152, (a1[48] + 212), v10, v18, v19);
        v3 = v21;
        goto LABEL_30;
      }

      obj_release(v48);
      v20 = 1;
LABEL_24:
      v10 += v20;
      if (v10 >= *(v9 + 16))
      {
        goto LABEL_27;
      }
    }

    v12 = *(v4 + 44);
    v13 = v10 / v12;
    if (v10 / v12 == v11 && v7 != 0)
    {
      v13 = v11;
LABEL_21:
      v17 = (v7 + 8 * (v10 - v12 * v13) + 40);
      goto LABEL_22;
    }

    v15 = *(v53[v6 + 112] + 8 * v13);
    if (v49)
    {
      obj_release(v49);
      v49 = 0;
    }

    v46 = v4;
    v47 = __PAIR64__(v13, v6);
    v16 = obj_get(a1[49], 0x40000000uLL, v15, &sm_cab_desc, &v46, 0, 0, 0, &v49);
    if (!v16)
    {
      v7 = v49[7];
      if (obj_xid(v49) <= v43)
      {
        v20 = *(v7 + 36);
        v11 = v13;
        goto LABEL_24;
      }

      v12 = *(v4 + 44);
      v11 = v13;
      goto LABEL_21;
    }

    v3 = v16;
    log_err("%s:%d: %s unable to read cab %d @ %lld: %d\n", "nx_check_recent_sanity", 1125, (a1[48] + 212), v13, v15, v16);
LABEL_30:
    if (v49)
    {
      obj_release(v49);
      v49 = 0;
    }
  }

  while (!(v3 | v6++));
  obj_release(v53);
  if (v3)
  {
    return v3;
  }

  v24 = *(a1[47] + 160);
  if (v24)
  {
    v25 = obj_get(a1[49], 0x40000000uLL, v24, &om_desc, 0, 0, 0, 0, &v52);
    if (v25)
    {
      v3 = v25;
      log_err("%s:%d: %s unable to get omap: %d\n");
      return v3;
    }

    if (obj_xid(v52) <= v43)
    {
      obj_release(v52);
    }

    else
    {
      v3 = nx_check_recent_sanity_omap(a1, v52, v43);
      obj_release(v52);
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
      goto LABEL_75;
    }

    v29 = obj_get(a1[49], 0, v28, &apfs_desc, 0, 0, 0, 0, &v51);
    if (v29)
    {
      v41 = v29;
      log_err("%s:%d: %s unable to get fs[%d] oid %lld, %d\n", "nx_check_recent_sanity", 1194, (a1[48] + 212), v27, v28, v29);
      return v41;
    }

    v30 = obj_xid(v51);
    v31 = v51;
    if (v30 <= v43)
    {
      goto LABEL_74;
    }

    v32 = *(v51[47] + 128);
    if (!v32)
    {
      goto LABEL_53;
    }

    v33 = obj_get(a1[49], 0x40000000uLL, v32, &om_desc, 0, v51, 0, 0, &v52);
    if (!v33)
    {
      if (obj_xid(v52) <= v43)
      {
        obj_release(v52);
        v31 = v51;
      }

      else
      {
        v34 = nx_check_recent_sanity_omap(v51, v52, v43);
        obj_release(v52);
        v31 = v51;
        if (v34)
        {
          log_err("%s:%d: %s omap check failed for omap %lld: %d\n");
          goto LABEL_80;
        }
      }

LABEL_53:
      v35 = v31[47];
      v36 = *(v35 + 144);
      if (v36)
      {
        v50 = 0;
        extentref_tree = apfs_get_extentref_tree(v31, v36, 0, &v50);
        if (extentref_tree)
        {
          v34 = extentref_tree;
          log_err("%s:%d: %s unable to get extentref tree %lld: %d\n", "nx_check_recent_sanity", 1228, v51 + 4040, *(v51[47] + 144), extentref_tree);
        }

        else if (obj_xid(v50) <= v43)
        {
          v34 = 0;
        }

        else
        {
          v38 = btree_check_recent_sanity(v50, v43, 0, 0);
          v34 = v38;
          if (v38)
          {
            log_err("%s:%d: %s extentref tree %lld: %d\n", "nx_check_recent_sanity", 1233, v51 + 4040, *(v51[47] + 144), v38);
          }
        }

        if (v50)
        {
          obj_release(v50);
        }

        v31 = v51;
        if (v34)
        {
LABEL_78:
          v42 = v31;
          goto LABEL_81;
        }

        v35 = v51[47];
      }

      if (*(v35 + 152))
      {
        v50 = 0;
        snap_meta_tree = apfs_get_snap_meta_tree(v31, 0, &v50);
        if (snap_meta_tree)
        {
          v34 = snap_meta_tree;
          log_err("%s:%d: %s unable to get snap meta tree %lld: %d\n", "nx_check_recent_sanity", 1250, v51 + 4040, *(v51[47] + 152), snap_meta_tree);
        }

        else if (obj_xid(v50) <= v43)
        {
          v34 = 0;
        }

        else
        {
          v40 = btree_check_recent_sanity(v50, v43, 0, 0);
          v34 = v40;
          if (v40)
          {
            log_err("%s:%d: %s snap meta tree %lld: %d\n", "nx_check_recent_sanity", 1255, v51 + 4040, *(v51[47] + 144), v40);
          }
        }

        if (v50)
        {
          obj_release(v50);
        }

        v31 = v51;
        if (v34)
        {
          goto LABEL_78;
        }
      }

LABEL_74:
      obj_release(v31);
LABEL_75:
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
LABEL_80:
  v42 = v51;
LABEL_81:
  obj_release(v42);
  return v34;
}

uint64_t nx_check_recent_sanity_omap(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v14 = 0;
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

uint64_t MetricsCompactor::Import(uint64_t *a1, char *a2, uint64_t a3, void *a4)
{
  v50 = *MEMORY[0x277D85DE8];
  bzero(a1 + 2, 0x210uLL);
  *a1 = xmmword_23D298FC0;
  *(a1 + 544) = 0;
  set_metric_default_values(a3);
  v8 = strlen(a2);
  *(a3 + 344) = v8;
  v9 = a1 + 4;
  *(a1 + 544) = Base85::Decode(a2, v8, (a1 + 4), 0x200, a1 + 3, v10) ^ 1;
  v11 = MetricsCompactor::Read(a1);
  *(a3 + 68) = v11;
  if (v11 > 11)
  {
    goto LABEL_143;
  }

  if (v11)
  {
    v12 = MetricsCompactor::Read(a1);
    v13 = v12 >> 1;
    if (v12)
    {
      v13 = -v13;
    }

    v14 = v13 + a1[1];
    a1[1] = v14;
    *(a3 + 176) = MetricsCompactor::Read(a1);
    *(a3 + 152) = v14;
    if (*(a3 + 68) >= 2)
    {
      v15 = 0;
      v16 = (a3 + 72);
      do
      {
        MetricsCompactor::Read(a1, v16, 0);
        ++v15;
        v16 += 2;
      }

      while (v15 < *(a3 + 68) - 1);
    }
  }

  v17 = 0;
  v18 = 0;
  v19 = 0;
  *a1 = MetricsCompactor::Read(a1);
  do
  {
    switch(v17)
    {
      case 0:
        if ((*a1 >> v17))
        {
          *(a3 + 408) = MetricsCompactor::Read(a1);
        }

        break;
      case 1:
        if ((*a1 >> v17))
        {
          *(a3 + 384) = MetricsCompactor::Read(a1);
        }

        break;
      case 2:
        if ((*a1 >> v17))
        {
          *(a3 + 400) = MetricsCompactor::Read(a1);
        }

        break;
      case 3:
        if ((*a1 >> v17))
        {
          *(a3 + 352) = MetricsCompactor::Read(a1);
        }

        break;
      case 4:
        if ((*a1 >> v17))
        {
          *(a3 + 368) = MetricsCompactor::Read(a1);
        }

        break;
      case 5:
        if ((*a1 >> v17))
        {
          *(a3 + 392) = MetricsCompactor::Read(a1);
        }

        break;
      case 6:
        if ((*a1 >> v17))
        {
          *(a3 + 360) = MetricsCompactor::Read(a1);
        }

        break;
      case 7:
        if ((*a1 >> v17))
        {
          *(a3 + 376) = MetricsCompactor::Read(a1);
        }

        break;
      case 8:
        if ((*a1 & (1 << v17)) != 0)
        {
          *(a3 + 272) = MetricsCompactor::Read(a1);
          if ((*a1 & (1 << v17)) != 0)
          {
            *(a3 + 264) = MetricsCompactor::Read(a1);
          }
        }

        break;
      case 9:
        if ((*a1 & (1 << v17)) != 0)
        {
          *(a3 + 288) = MetricsCompactor::Read(a1);
          if ((*a1 & (1 << v17)) != 0)
          {
            *(a3 + 280) = MetricsCompactor::Read(a1);
          }
        }

        break;
      case 10:
        if ((*a1 >> v17))
        {
          *(a3 + 328) = MetricsCompactor::Read(a1);
        }

        break;
      case 11:
        if ((*a1 >> v17))
        {
          *(a3 + 320) = MetricsCompactor::Read(a1);
        }

        break;
      case 12:
        if ((*a1 >> v17))
        {
          *(a3 + 296) = MetricsCompactor::Read(a1);
        }

        break;
      case 13:
        if ((*a1 >> v17))
        {
          v24 = MetricsCompactor::Read(a1);
          v25 = v24 >> 1;
          if (v24)
          {
            v25 = -v25;
          }

          *(a3 + 416) = v25;
        }

        break;
      case 14:
        if ((*a1 >> v17))
        {
          *(a3 + 424) = MetricsCompactor::Read(a1);
        }

        break;
      case 15:
        if ((*a1 >> v17))
        {
          v26 = MetricsCompactor::Read(a1);
          v27 = v26 >> 1;
          if (v26)
          {
            v27 = -v27;
          }

          *(a3 + 432) = v27;
        }

        break;
      case 16:
        if ((*a1 >> v17))
        {
          v28 = MetricsCompactor::Read(a1);
          v29 = v28 >> 1;
          if (v28)
          {
            v29 = -v29;
          }

          *(a3 + 440) = v29;
        }

        break;
      case 17:
        if ((*a1 >> v17))
        {
          *(a3 + 448) = MetricsCompactor::Read(a1);
        }

        break;
      case 18:
        if ((*a1 >> v17))
        {
          *(a3 + 456) = MetricsCompactor::Read(a1);
        }

        break;
      case 19:
        if ((*a1 >> v17))
        {
          *(a3 + 336) = MetricsCompactor::Read(a1);
        }

        break;
      case 20:
        if ((*a1 & (1 << v17)) != 0)
        {
          v18 = MetricsCompactor::Read(a1);
          if ((*a1 & (1 << v17)) != 0)
          {
            v19 = MetricsCompactor::Read(a1);
          }
        }

        break;
      case 21:
        if ((*a1 >> v17))
        {
          *(a3 + 464) = MetricsCompactor::Read(a1);
        }

        break;
      case 22:
        if ((*a1 >> v17))
        {
          *(a3 + 472) = MetricsCompactor::Read(a1);
        }

        break;
      case 23:
        if ((*a1 >> v17))
        {
          *(a3 + 480) = MetricsCompactor::Read(a1);
        }

        break;
      case 24:
        if ((*a1 >> v17))
        {
          *(a3 + 496) = MetricsCompactor::Read(a1);
        }

        break;
      case 25:
        if ((*a1 & (1 << v17)) != 0)
        {
          *(a3 + 544) = MetricsCompactor::Read(a1);
          if ((*a1 & (1 << v17)) != 0)
          {
            *(a3 + 568) = MetricsCompactor::Read(a1);
          }
        }

        break;
      case 26:
        if ((*a1 & (1 << v17)) != 0)
        {
          *(a3 + 552) = MetricsCompactor::Read(a1);
          if ((*a1 & (1 << v17)) != 0)
          {
            *(a3 + 576) = MetricsCompactor::Read(a1);
          }
        }

        break;
      case 27:
        if ((*a1 & (1 << v17)) != 0)
        {
          *(a3 + 560) = MetricsCompactor::Read(a1);
          if ((*a1 & (1 << v17)) != 0)
          {
            *(a3 + 584) = MetricsCompactor::Read(a1);
          }
        }

        break;
      case 28:
        if ((*a1 >> v17))
        {
          *(a3 + 512) = MetricsCompactor::Read(a1);
        }

        break;
      case 29:
        if ((*a1 >> v17))
        {
          *(a3 + 520) = MetricsCompactor::Read(a1);
        }

        break;
      case 30:
        if ((*a1 >> v17))
        {
          *(a3 + 528) = MetricsCompactor::Read(a1);
        }

        break;
      case 31:
        if ((*a1 >> v17))
        {
          *(a3 + 536) = MetricsCompactor::Read(a1);
        }

        break;
      case 32:
        v21 = 1 << v17;
        if ((*a1 & (1 << v17)) != 0)
        {
          *(a3 + 592) = MetricsCompactor::Read(a1);
          if ((*a1 & v21) != 0)
          {
            *(a3 + 608) = MetricsCompactor::Read(a1);
            if ((*a1 & v21) != 0)
            {
              *(a3 + 624) = MetricsCompactor::Read(a1);
            }
          }
        }

        break;
      case 33:
        v23 = 1 << v17;
        if ((*a1 & (1 << v17)) != 0)
        {
          *(a3 + 600) = MetricsCompactor::Read(a1);
          if ((*a1 & v23) != 0)
          {
            *(a3 + 616) = MetricsCompactor::Read(a1);
            if ((*a1 & v23) != 0)
            {
              *(a3 + 632) = MetricsCompactor::Read(a1);
            }
          }
        }

        break;
      case 34:
        if ((*a1 >> v17))
        {
          *(a3 + 504) = MetricsCompactor::Read(a1);
        }

        break;
      case 35:
        if ((*a1 >> v17))
        {
          *(a3 + 688) = MetricsCompactor::Read(a1);
        }

        break;
      case 36:
        v22 = 1 << v17;
        if ((*a1 & (1 << v17)) != 0)
        {
          *(a3 + 696) = MetricsCompactor::Read(a1);
          if ((*a1 & v22) != 0)
          {
            *(a3 + 712) = MetricsCompactor::Read(a1);
            if ((*a1 & v22) != 0)
            {
              *(a3 + 720) = MetricsCompactor::Read(a1);
            }
          }
        }

        break;
      case 37:
        if ((*a1 >> v17))
        {
          *(a3 + 704) = MetricsCompactor::Read(a1);
        }

        break;
      case 38:
        if ((*a1 & (1 << v17)) != 0)
        {
          *(a3 + 640) = MetricsCompactor::Read(a1);
          if ((*a1 & (1 << v17)) != 0)
          {
            *(a3 + 648) = MetricsCompactor::Read(a1);
          }
        }

        break;
      case 39:
        if ((*a1 & (1 << v17)) != 0)
        {
          *(a3 + 656) = MetricsCompactor::Read(a1);
          if ((*a1 & (1 << v17)) != 0)
          {
            *(a3 + 664) = MetricsCompactor::Read(a1);
          }
        }

        break;
      case 40:
        if ((*a1 & (1 << v17)) != 0)
        {
          *(a3 + 672) = MetricsCompactor::Read(a1);
          if ((*a1 & (1 << v17)) != 0)
          {
            *(a3 + 680) = MetricsCompactor::Read(a1);
          }
        }

        break;
      case 41:
        if ((*a1 >> v17))
        {
          *(a3 + 312) = MetricsCompactor::Read(a1);
        }

        break;
      case 42:
        if ((*a1 >> v17))
        {
          *(a3 + 304) = MetricsCompactor::Read(a1);
        }

        break;
      case 44:
        v20 = 1 << v17;
        if ((*a1 & (1 << v17)) != 0)
        {
          *(a3 + 728) = MetricsCompactor::Read(a1);
          if ((*a1 & v20) != 0)
          {
            *(a3 + 736) = MetricsCompactor::Read(a1);
            if ((*a1 & v20) != 0)
            {
              *(a3 + 744) = MetricsCompactor::Read(a1);
            }
          }
        }

        break;
      default:
        break;
    }

    ++v17;
  }

  while (v17 != 51);
  if ((*(a1 + 5) & 0x20) != 0)
  {
    if (!a4)
    {
LABEL_143:
      v37 = 0;
      return v37 & 1;
    }

    MetricsCompactor::Read(a1, a4);
  }

  v30 = MetricsCompactor::Read(a1);
  *(a3 + 24) = v30;
  if (v30 > 5)
  {
    goto LABEL_143;
  }

  if (v30 >= 1)
  {
    v31 = 0;
    v32 = (a3 + 28);
    do
    {
      MetricsCompactor::Read(a1, v32, 1);
      ++v31;
      v32 += 2;
    }

    while (v31 < *(a3 + 24));
  }

  if ((*(a1 + 2) & 0x10) != 0)
  {
    v49 = 0;
    v47 = 0u;
    v48 = 0u;
    *__str = 0u;
    snprintf(__str, 0x34uLL, "/dev/rdisk%llus%llu", v18, v19);
    goto LABEL_135;
  }

  memset(__str, 0, sizeof(__str));
  *&v47 = 0;
  v33 = MetricsCompactor::Read(a1, __str);
  v34 = SBYTE7(v47);
  if (!v33)
  {
LABEL_141:
    if (v34 < 0)
    {
      operator delete(*__str);
    }

    goto LABEL_143;
  }

  if ((SBYTE7(v47) & 0x80000000) == 0)
  {
    if (!BYTE7(v47))
    {
      goto LABEL_136;
    }

LABEL_135:
    *(a3 + 160) = strdup(__str);
    goto LABEL_136;
  }

  if (*&__str[8])
  {
    *(a3 + 160) = strdup(*__str);
  }

  operator delete(*__str);
LABEL_136:
  v35 = *a1;
  if ((*a1 & 0x4000000000000) != 0)
  {
    memset(__str, 0, sizeof(__str));
    *&v47 = 0;
    v36 = MetricsCompactor::Read(a1, __str);
    v34 = SBYTE7(v47);
    if (v36)
    {
      if (SBYTE7(v47) < 0)
      {
        if (*&__str[8])
        {
          *(a3 + 168) = strdup(*__str);
        }

        operator delete(*__str);
      }

      else if (BYTE7(v47))
      {
        *(a3 + 168) = strdup(__str);
      }

      v35 = *a1;
      goto LABEL_152;
    }

    goto LABEL_141;
  }

LABEL_152:
  if ((v35 & 0x80000000000) == 0)
  {
    goto LABEL_164;
  }

  v39 = a1[2];
  if (v39)
  {
    v40 = 0;
    do
    {
      v40 ^= *v9;
      v41 = 8;
      do
      {
        v42 = v40;
        v43 = 2 * v40;
        v40 = (2 * v40) ^ 0x12;
        if (v42 >= 0)
        {
          v40 = v43;
        }

        --v41;
      }

      while (v41);
      v9 = (v9 + 1);
      --v39;
    }

    while (v39);
    v44 = v40 >> 1;
  }

  else
  {
    v44 = 0;
  }

  v45 = MetricsCompactor::Read(a1);
  v37 = 0;
  if (v45 <= 0x7F && v45 == v44)
  {
LABEL_164:
    v37 = *(a1 + 544) ^ 1;
  }

  return v37 & 1;
}

void sub_23D2777E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MetricsCompactor::Read(MetricsCompactor *this)
{
  v2 = 0;
  result = 0;
  v5 = *(this + 2);
  v4 = *(this + 3);
  v6 = v4 >= v5;
  v7 = v4 - v5;
  if (!v6)
  {
    v7 = 0;
  }

  v8 = this + v5 + 32;
  for (i = v5 + 1; ; ++i)
  {
    if (!v7)
    {
      *(this + 544) = 1;
      return result;
    }

    *(this + 2) = i;
    v10 = *v8;
    if (v2 == 56)
    {
      break;
    }

    result |= (v10 & 0x7F) << v2;
    v2 += 7;
    --v7;
    ++v8;
    if ((v10 & 0x80) == 0)
    {
      return result;
    }
  }

  return result | (v10 << 56);
}

unint64_t MetricsCompactor::Read(MetricsCompactor *a1, _DWORD *a2, int a3)
{
  v6 = MetricsCompactor::Read(a1);
  v7 = v6 >> 1;
  if (v6)
  {
    v7 = -v7;
  }

  v8 = v7 + *(a1 + 1);
  *(a1 + 1) = v8;
  *a2 = v8;
  result = MetricsCompactor::Read(a1);
  v10 = result >> 1;
  if (result)
  {
    v10 = -v10;
  }

  if (!a3)
  {
    LODWORD(v10) = result;
  }

  a2[1] = v10;
  return result;
}

uint64_t MetricsCompactor::Read(MetricsCompactor *a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = MetricsCompactor::Read(a1);
  v5 = 0;
  v16 = 0;
  v15 = 0;
  do
  {
    *(&v15 + v5++) = v4 % 0x54;
    v4 /= 0x54uLL;
  }

  while (v5 != 10);
  v6 = 0;
  v7 = 0;
  for (i = 0; i != 10; ++i)
  {
    v9 = *(&v15 + i);
    if (*(&v15 + i))
    {
      v10 = MetricsCompactor::Read(a1);
      v11 = v10 >> 1;
      if (v10)
      {
        v11 = -v11;
      }

      v7 += v11;
      v6 += MetricsCompactor::Read(a1);
      if (v9 <= 0x53)
      {
        v12 = &a2[3 * v9 - 3];
        *v12 = v7;
        v12[1] = v6;
      }
    }
  }

  v13 = MetricsCompactor::Read(a1);
  a2[255] = v13;
  if (v13)
  {
    a2[256] = MetricsCompactor::Read(a1) << 20;
    a2[257] = 1000000000 * MetricsCompactor::Read(a1);
  }

  result = MetricsCompactor::Read(a1);
  a2[258] = result;
  if (result)
  {
    a2[259] = MetricsCompactor::Read(a1) << 20;
    result = MetricsCompactor::Read(a1);
    a2[260] = 1000000000 * result;
  }

  return result;
}

BOOL MetricsCompactor::Read(MetricsCompactor *this, uint64_t a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (*(a2 + 23) < 0)
  {
    **a2 = 0;
    *(a2 + 8) = 0;
  }

  else
  {
    *a2 = 0;
    *(a2 + 23) = 0;
  }

  v4 = MetricsCompactor::Read(this);
  if (v4 <= *(this + 3) - *(this + 2))
  {
    v6 = v4;
    v7 = 0;
    v13 = 0;
    v12 = 0;
    v8 = 12;
    while (1)
    {
      v11 = v7;
      if (!v7)
      {
        std::string::append(a2, &v12 + v8, 12 - v8);
        result = v6 == 0;
        if (!v6)
        {
          return result;
        }

        if (v6 >= 8)
        {
          v9 = 8;
        }

        else
        {
          v9 = v6;
        }

        v10 = *(this + 2);
        if (v9 > *(this + 3) - v10)
        {
          goto LABEL_6;
        }

        memcpy(&v11, this + v10 + 32, v9);
        *(this + 2) = v10 + v9;
        v6 -= v9;
        v8 = 12;
        v7 = v11;
      }

      *(&v12 + --v8) = s_strUnpackTable[v7 % 0x38];
      v7 /= 0x38uLL;
    }
  }

  result = 0;
LABEL_6:
  *(this + 544) = 1;
  return result;
}

uint64_t MetricsCompactor_Import(char *a1, uint64_t a2)
{
  v5[69] = *MEMORY[0x277D85DE8];
  bzero(v5, 0x228uLL);
  return MetricsCompactor::Import(v5, a1, a2, 0);
}

uint64_t io_get_device_block_size(int a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v6 = 0;
  memset(&v5, 0, sizeof(v5));
  bzero(&v7, 0x878uLL);
  if (!ioctl(a1, 0x40046418uLL, &v6))
  {
    return v6;
  }

  if (!fstatfs(a1, &v7))
  {
    return v7.f_bsize;
  }

  if (!fstat(a1, &v5))
  {
    return v5.st_blksize;
  }

  v2 = __error();
  v3 = strerror(*v2);
  log_err("%s:%d: can't get the device block size (%s). assuming 512\n", "io_get_device_block_size", 57, v3);
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

uint64_t fd_dev_features(_DWORD *a1, _DWORD *a2, _DWORD *a3, _DWORD *a4, _DWORD *a5)
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

uint64_t fd_dev_read_extended(uint64_t a1, unint64_t a2, unint64_t a3, void *a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, unsigned int a9)
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

    return fd_dev_read_async_helper(a1, a2, a3, a4, a5, a7);
  }

  else
  {

    return fd_dev_read_helper(a1, a2, a3, a4, a5);
  }
}

uint64_t fd_dev_read_finish(uint64_t a1, uint64_t a2)
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

uint64_t fd_dev_write_extended(uint64_t a1, unint64_t a2, unint64_t a3, char *a4, uint64_t a5, uint64_t a6, unsigned int a7)
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

    return fd_dev_write_helper(a1, a2, a3, a4, a5, a7);
  }
}

uint64_t fd_dev_barrier(uint64_t a1, int a2)
{
  v4 = *(a1 + 24);
  if (v4)
  {
    v5 = *(a1 + 36);
    if (v5)
    {
      result = _fd_dev_write(a1, *(a1 + 40), v5, v4, *(a1 + 48));
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
    v10 = xmmword_23D298FD0;
    v11 = 2;
    v9 = ioctl(*a1, 0x80186416uLL, &v10);
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
      v9 = ioctl(v8, 0x20006416uLL, 0);
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

uint64_t fd_dev_hint(uint64_t a1, unint64_t a2, unint64_t a3, int a4)
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
    result = fd_dev_hint_flush(a1);
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

uint64_t fd_dev_hint_flush(uint64_t a1)
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

uint64_t fd_dev_close(uint64_t a1)
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

  v6 = _fd_dev_write(a1, *(a1 + 40), v5, v4, *(a1 + 48));
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
    v8 = fd_dev_hint_flush(a1);
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

uint64_t fd_dev_set_block_size(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 112) * *(a1 + 84) / a2;
  *(a1 + 84) = a2;
  *(a1 + 112) = v2;
  return 0;
}

uint64_t dev_init_common(uint64_t a1)
{
  v17 = 0;
  v16 = 0;
  v15 = 0;
  memset(&v14, 0, sizeof(v14));
  if (fstat(*a1, &v14))
  {
    v2 = __error();
    v3 = *v2;
    log_err("%s:%d: Couldn't fstat dev_fd (%d), err %d dev_name = %s\n", "dev_init_common", 1035, *a1, *v2, (a1 + 212));
  }

  else
  {
    *(a1 + 72) = apfs_userspace_io;
    device_block_size = io_get_device_block_size(*a1);
    *(a1 + 80) = device_block_size;
    *(a1 + 84) = device_block_size;
    v5 = *a1;
    v19 = 0;
    memset(&v18, 0, sizeof(v18));
    if (ioctl(v5, 0x40086419uLL, &v19))
    {
      if (fstat(v5, &v18))
      {
        v6 = __error();
        v7 = strerror(*v6);
        log_err("%s:%d: can't get block count (%s)\n", "io_get_num_device_blocks", 78, v7);
        v8 = 0;
      }

      else
      {
        st_size = v18.st_size;
        v8 = st_size / io_get_device_block_size(v5);
      }
    }

    else
    {
      v8 = v19;
    }

    *(a1 + 112) = v8;
    io_get_device_features(*a1, &v17, &v16, &v15 + 1, &v15);
    v10 = v16;
    *(a1 + 88) = v17;
    *(a1 + 92) = v10;
    v11 = v15;
    *(a1 + 96) = HIDWORD(v15);
    *(a1 + 100) = v11;
    *(a1 + 64) = v14.st_mode;
    *(a1 + 104) = 0;
    v12 = *(a1 + 80) >> 4;
    *(a1 + 204) = *(a1 + 80) >> 4;
    v3 = 0;
    *(a1 + 192) = _apfs_calloc_typed(v12, 0x10uLL, 0x1000040451B5BE8uLL);
    *(a1 + 200) = 0;
  }

  return v3;
}

uint64_t dev_init(char *a1, int a2, int **a3)
{
  v37 = *MEMORY[0x277D85DE8];
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
    memset(&v33, 0, sizeof(v33));
    v9[17] = 0;
    if (stat(a1, &v33) || (v33.st_mode & 0xF000) != 0x4000)
    {
      v13 = device_container_path(a1, 0);
      if (v13)
      {
        v14 = v13;
        v10[2] = -1;
        v15 = open(a1, a2 & 0xFFFFFFCF | 0x10);
        v10[1] = v15;
        if (v15 < 0)
        {
          v23 = __error();
          v12 = *v23;
          v24 = strerror(*v23);
          log_err("%s:%d: failed to open volume device %s: %s\n", "dev_init", 1163, a1, v24);
        }

        else
        {
          v16 = open(v14, a2 & 0xFFFFFFCF | 0x10);
          *v10 = v16;
          if ((v16 & 0x80000000) == 0)
          {
LABEL_30:
            inited = dev_init_common(v10);
            if (inited)
            {
              v12 = inited;
              free(v14);
LABEL_38:
              _apfs_free(v10, v8 + 216);
              return v12;
            }

            strlcpy(v10 + 212, v7, v8 + 1);
            free(v14);
LABEL_39:
            v12 = 0;
            *a3 = v10;
            return v12;
          }

          v17 = __error();
          v12 = *v17;
          v18 = strerror(*v17);
          log_err("%s:%d: failed to open container device %s: %s\n", "dev_init", 1169, v14, v18);
          close(v10[1]);
        }
      }

      else
      {
        *(v10 + 1) = -1;
        v19 = open(a1, a2);
        *v10 = v19;
        if ((v19 & 0x80000000) == 0)
        {
LABEL_29:
          v14 = 0;
          goto LABEL_30;
        }

        v20 = 30;
        while (*__error() == 16 && v20 != 0)
        {
          log_err("%s:%d: open %s hit EBUSY, attempts remaining: %u dev_name = %s\n", "dev_init", 1189, a1, v20, v7);
          sleep(1u);
          v22 = open(a1, a2);
          *v10 = v22;
          --v20;
          if ((v22 & 0x80000000) == 0)
          {
            v14 = 0;
            goto LABEL_30;
          }
        }

        v14 = 0;
        v12 = *__error();
      }
    }

    else
    {
      bzero(__str, 0x400uLL);
      bzero(v35, 0x400uLL);
      bzero(v34, 0x400uLL);
      snprintf(__str, 0x400uLL, "%s/apfs", a1);
      snprintf(v34, 0x400uLL, "%s/apfs_data", a1);
      snprintf(v35, 0x400uLL, "%s/nx", a1);
      v11 = open(__str, a2);
      v10[1] = v11;
      if (v11 < 0)
      {
        v12 = *__error();
      }

      else
      {
        v12 = 0;
      }

      v25 = open(v34, a2);
      v10[2] = v25;
      if (v25 < 0)
      {
        v12 = *__error();
      }

      v26 = open(v35, a2);
      v27 = v26;
      *v10 = v26;
      v28 = v10[1];
      if ((v28 & 0x80000000) == 0 && (v10[2] & 0x80000000) == 0 && (v26 & 0x80000000) == 0)
      {
        goto LABEL_29;
      }

      if (!v12)
      {
        v12 = *__error();
        v27 = *v10;
        v28 = v10[1];
      }

      v30 = v10[2];
      v31 = strerror(v12);
      log_err("%s:%d: failed to open apfs/nx special devices ['%s'(%d) / '%s'(%d) / '%s'(%d)] - err %d (%s) dev_name = '%s'\n", "dev_init", 1150, __str, v28, v34, v30, v35, v27, v12, v31, v7);
      close(*v10);
      close(v10[1]);
      close(v10[2]);
      v14 = 0;
    }

    free(v14);
    if (v12)
    {
      goto LABEL_38;
    }

    goto LABEL_39;
  }

  return 12;
}

uint64_t fd_dev_read_helper(uint64_t a1, unint64_t a2, unint64_t a3, void *a4, uint64_t a5)
{
  common = fd_dev_read_common(a1, a2, a3);
  if (!common)
  {
    v11 = *(a1 + 84);
    if ((a2 & 0x8000000000000000) == 0 && is_mul_ok(a2, v11) && ((a2 * v11) & 0x8000000000000000) == 0 && is_mul_ok(a3, v11))
    {
      v13 = a3 * v11;
      if (!a5 || (v14 = *(a1 + 4), v14 < 0))
      {
        v14 = *a1;
      }

      v15 = pread(v14, a4, a3 * v11, a2 * v11);
      if (v15 < 0)
      {
        v16 = __error();
        common = *v16;
        log_err("%s:%d: blknum 0x%llx size %zu, error %d dev_name = %s\n", "fd_dev_read_helper", 484, a2, a3, *v16, (a1 + 212));
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
      log_err("%s:%d: blknum %lld size %zu blksize %u invalid, dev_name = %s\n", "fd_dev_read_helper", 448, a2, a3, *(a1 + 84), (a1 + 212));
      return 22;
    }
  }

  return common;
}

uint64_t fd_dev_read_common(uint64_t a1, unint64_t a2, unint64_t a3)
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
        result = _fd_dev_write(a1, v8, v7, v6, *(a1 + 48));
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

uint64_t _fd_dev_write(uint64_t a1, unint64_t a2, unint64_t a3, void *__buf, uint64_t a5)
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

uint64_t fd_dev_read_async_helper(int *a1, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  common = fd_dev_read_common(a1, a2, a3);
  if (!common)
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
      common = 16;
    }

    else
    {
      common = *__error();
      if (!common)
      {
        return common;
      }
    }
  }

  v13 = *a6;
  if (*a6)
  {
    *(a6 + 96) = common;
    v13(a6);
  }

  return common;
}

uint64_t fd_dev_write_helper(uint64_t a1, unint64_t a2, unint64_t a3, char *__buf, uint64_t a5, int a6)
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

    return _fd_dev_write(a1, a2, a3, __buf, a5);
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
      result = _fd_dev_write(a1, *(a1 + 40), v17, *(a1 + 24), *(a1 + 48));
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

atomic_ullong *fs_obj_zfree_oc(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  _apfs_obj_zfree(a1, a2, *(a4 + 952));
  obj_cache_stats_update_zfree((a4 + 976), v5, a2);
  v7 = (omm + 136);

  return obj_cache_stats_update_zfree(v7, v5, a2);
}

atomic_ullong *obj_cache_stats_update_zfree(atomic_ullong *result, int a2, int64_t a3)
{
  v4 = a2 & 0xC8000000;
  if (a2 < 0 != v3)
  {
    if (v4 == 0x80000000)
    {
      atomic_fetch_add_explicit(result + 29, -a3, memory_order_relaxed);
      atomic_fetch_add_explicit(result + 31, a3, memory_order_relaxed);
      v5 = result + 33;
    }

    else
    {
      if (v4 != -2013265920)
      {
        goto LABEL_12;
      }

      atomic_fetch_add_explicit(result + 35, -a3, memory_order_relaxed);
      atomic_fetch_add_explicit(result + 37, a3, memory_order_relaxed);
      v5 = result + 39;
    }
  }

  else
  {
    if (v4 != 0x40000000 && v4 != 0)
    {
LABEL_12:
      panic("unexpected storagetype: 0x%x\n", a2 & 0xC8000000);
    }

    atomic_fetch_add_explicit(result + 23, -a3, memory_order_relaxed);
    atomic_fetch_add_explicit(result + 25, a3, memory_order_relaxed);
    v5 = result + 27;
  }

  atomic_fetch_add_explicit(v5, 1uLL, memory_order_relaxed);
  return result;
}

uint64_t obj_cache_create(unsigned int a1, unsigned int a2, unsigned int a3, void *a4)
{
  v8 = obj_mem_mgr_init();
  if (!v8)
  {
    v9 = _apfs_calloc_typed(1uLL, 0x570uLL, 0x10A004059D813F0uLL);
    if (v9)
    {
      v10 = v9;
      bzero(v9, 0x570uLL);
      v11 = new_lock(v10);
      if (v11)
      {
        v8 = v11;
LABEL_13:
        _apfs_free(v10, 1392);
        return v8;
      }

      v12 = new_rwlock((v10 + 128));
      if (v12)
      {
        v8 = v12;
LABEL_12:
        free_lock(v10);
        goto LABEL_13;
      }

      v13 = new_lock((v10 + 328));
      if (v13)
      {
        v8 = v13;
LABEL_11:
        free_rwlock((v10 + 128));
        goto LABEL_12;
      }

      v14 = new_cv((v10 + 1328));
      if (v14)
      {
        v8 = v14;
        free_lock((v10 + 328));
        goto LABEL_11;
      }

      if (!a1)
      {
        a1 = 4096;
      }

      v15 = _apfs_malloc_typed(8 * a1, 0x2004093837F09uLL);
      *(v10 + 89) = v15;
      if (v15)
      {
        bzero(v15, 8 * a1);
        *(v10 + 175) = a1;
        *(v10 + 176) = a1 - 1;
        if (!a2)
        {
          a2 = 4096;
        }

        *(v10 + 169) = 128;
        *(v10 + 170) = a2;
        v16 = a2 / 0x64u;
        if (v16 <= 0x10)
        {
          v16 = 16;
        }

        if (a2 > 0xC863)
        {
          v16 = 512;
        }

        *(v10 + 174) = v16;
        *(v10 + 171) = 0;
        *(v10 + 86) = 0;
        *(v10 + 168) = a3;
        v21.tv_sec = 0;
        v21.tv_nsec = 0;
        clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &v21);
        tv_sec = v21.tv_sec;
        *(v10 + 1288) = 0u;
        *(v10 + 1304) = 0u;
        *(v10 + 1256) = 0u;
        *(v10 + 1272) = 0u;
        *(v10 + 1224) = 0u;
        *(v10 + 1240) = 0u;
        *(v10 + 1192) = 0u;
        *(v10 + 1208) = 0u;
        *(v10 + 1160) = 0u;
        *(v10 + 1176) = 0u;
        *(v10 + 1128) = 0u;
        *(v10 + 1144) = 0u;
        *(v10 + 1096) = 0u;
        *(v10 + 1112) = 0u;
        *(v10 + 1064) = 0u;
        *(v10 + 1080) = 0u;
        *(v10 + 1032) = 0u;
        *(v10 + 1048) = 0u;
        *(v10 + 1000) = 0u;
        *(v10 + 1016) = 0u;
        *(v10 + 123) = a3 << 7;
        v18 = a2 * a3;
        *(v10 + 124) = v18;
        *(v10 + 122) = v18;
        *(v10 + 163) = tv_sec;
        v19 = _apfs_calloc_typed(0x100uLL, 8uLL, 0x2004093837F09uLL);
        *(v10 + 112) = v19;
        if (v19)
        {
          v8 = 0;
          *(v10 + 94) = v10 + 744;
          *(v10 + 96) = v10 + 760;
          *(v10 + 98) = v10 + 776;
          *(v10 + 100) = v10 + 792;
          *(v10 + 102) = v10 + 808;
          *(v10 + 104) = v10 + 824;
          *(v10 + 106) = v10 + 840;
          *(v10 + 173) = v10 + 1376;
          *(v10 + 110) = v10 + 872;
          *(v10 + 108) = v10 + 856;
          *(v10 + 45) = 0u;
          *(v10 + 93) = 0;
          *(v10 + 95) = 0;
          *(v10 + 97) = 0;
          *(v10 + 99) = 0;
          *(v10 + 101) = 0;
          *(v10 + 103) = 0;
          *(v10 + 105) = 0;
          *(v10 + 172) = 0;
          *(v10 + 109) = 0;
          *(v10 + 107) = 0;
          *(v10 + 92) = 0;
          *(v10 + 25) = vdupq_n_s64(0x400uLL);
          *a4 = v10;
          return v8;
        }

        _apfs_free(*(v10 + 89), 8 * a1);
      }

      free_cv((v10 + 1328));
      free_lock((v10 + 328));
      free_rwlock((v10 + 128));
      free_lock(v10);
      _apfs_free(v10, 1392);
    }

    return 12;
  }

  return v8;
}

uint64_t obj_mem_mgr_init()
{
  if (!atomic_load_explicit(&omm, memory_order_acquire))
  {
    v2 = _apfs_calloc_typed(1uLL, 0x1E0uLL, 0x10200403418AD1FuLL);
    if (!v2)
    {
      return 12;
    }

    v3 = v2;
    *(v2 + 28) = 0u;
    *(v2 + 29) = 0u;
    *(v2 + 26) = 0u;
    *(v2 + 27) = 0u;
    *(v2 + 24) = 0u;
    *(v2 + 25) = 0u;
    *(v2 + 22) = 0u;
    *(v2 + 23) = 0u;
    *(v2 + 20) = 0u;
    *(v2 + 21) = 0u;
    *(v2 + 18) = 0u;
    *(v2 + 19) = 0u;
    *(v2 + 16) = 0u;
    *(v2 + 17) = 0u;
    *(v2 + 14) = 0u;
    *(v2 + 15) = 0u;
    *(v2 + 12) = 0u;
    *(v2 + 13) = 0u;
    *(v2 + 10) = 0u;
    *(v2 + 11) = 0u;
    *(v2 + 8) = 0u;
    *(v2 + 9) = 0u;
    *(v2 + 6) = 0u;
    *(v2 + 7) = 0u;
    *(v2 + 4) = 0u;
    *(v2 + 5) = 0u;
    *(v2 + 2) = 0u;
    *(v2 + 3) = 0u;
    *v2 = 0u;
    *(v2 + 1) = 0u;
    v4 = new_lock((v2 + 8));
    if (v4)
    {
      v0 = v4;
      log_err("%s:%d: object memory manager failed to create lock, error: %d\n", "obj_mem_mgr_init", 7393, v4);
      _apfs_free(v3, 480);
      return v0;
    }

    *(v3 + 72) = 0;
    __tp.tv_sec = 0;
    __tp.tv_nsec = 0;
    clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &__tp);
    v5 = 0;
    *(v3 + 136) = 0u;
    *(v3 + 440) = 0u;
    *(v3 + 456) = 0u;
    *(v3 + 408) = 0u;
    *(v3 + 424) = 0u;
    *(v3 + 376) = 0u;
    *(v3 + 392) = 0u;
    *(v3 + 344) = 0u;
    *(v3 + 360) = 0u;
    *(v3 + 312) = 0u;
    *(v3 + 328) = 0u;
    *(v3 + 280) = 0u;
    *(v3 + 296) = 0u;
    *(v3 + 264) = 0u;
    tv_sec = __tp.tv_sec;
    *(v3 + 248) = 0u;
    *(v3 + 232) = 0u;
    *(v3 + 216) = 0u;
    *(v3 + 200) = 0u;
    *(v3 + 184) = 0u;
    *(v3 + 168) = 0u;
    *(v3 + 152) = 0u;
    *(v3 + 464) = tv_sec;
    *(v3 + 472) = 0;
    atomic_compare_exchange_strong_explicit(&omm, &v5, v3, memory_order_release, memory_order_relaxed);
    if (v5)
    {
      atomic_load_explicit(&omm, memory_order_acquire);
      free_lock((v3 + 8));
      _apfs_free(v3, 480);
    }

    else if ((*omm & 4) != 0)
    {
      log_debug("%s:%d: object memory manager initialized with feature flags: 0x%x, apfs_mem_max: %lld\n", "obj_mem_mgr_init", 7414, *omm, *(omm + 96));
    }
  }

  return 0;
}

uint64_t obj_cache_ephemeral_adjust(uint64_t result, int a2, int a3, int a4)
{
  if ((a2 & 0x8000000) != 0)
  {
    *(result + 692) += a4;
  }

  else
  {
    *(result + 688) += a4;
    v4 = *(result + 392);
    if (v4)
    {
      v5 = (a3 + *(*(v4 + 376) + 36) - 1) / *(*(v4 + 376) + 36);
      v6 = *(result + 928);
      if (a4 < 0)
      {
        v7 = v6 - v5;
      }

      else
      {
        v7 = v6 + v5;
      }
    }

    else
    {
      v7 = *(result + 928) + a4;
    }

    *(result + 928) = v7;
  }

  return result;
}

void obj_cache_unlock_write(uint64_t a1)
{
  v1 = *(a1 + 728);
  if (v1)
  {
    *(a1 + 728) = 0;
    *(a1 + 736) = 0;
    pthread_mutex_unlock(a1);
    do
    {
      v2 = *(v1 + 72);
      obj_destroy_complete(v1, 0);
      v1 = v2;
    }

    while (v2);
  }

  else
  {

    pthread_mutex_unlock(a1);
  }
}

uint64_t obj_cache_lock_by_state(pthread_mutex_t *a1, int a2)
{
  if (a2 != 2 && a2 != 1)
  {
    panic("obj_cache_lock_by_state, invalid oc_lock_state %d\n", a2);
  }

  return pthread_mutex_lock(a1);
}

void obj_cache_unlock_by_state(pthread_mutex_t *a1, int a2)
{
  if (a2 == 2)
  {

    obj_cache_unlock_write(a1);
  }

  else
  {
    if (a2 != 1)
    {
      panic("obj_cache_unlock_by_state, invalid oc_lock_state %d\n", a2);
    }

    pthread_mutex_unlock(a1);
  }
}

void obj_cache_reset(pthread_mutex_t *a1, int a2)
{
  if (!a2)
  {
    pthread_mutex_lock(a1);
    atomic_fetch_add_explicit(&a1[14].__opaque[36], 1u, memory_order_relaxed);
  }

  while (atomic_fetch_add_explicit(&a1[14].__opaque[40], 0, memory_order_relaxed))
  {
    v16 = 1;
    v4 = *&a1[21].__opaque[24];
    if (v4)
    {
      if ((*(*(v4 + 136) + 20) & 0x80) == 0)
      {
        obj_async_finish(v4, &v16);
        if ((v16 & 1) == 0)
        {
          pthread_mutex_lock(a1);
        }
      }
    }
  }

  if (*a1[11].__opaque)
  {
    v5 = *&a1[10].__opaque[52];
    if (v5)
    {
      for (i = 0; i < v5; ++i)
      {
        v7 = *(*a1[11].__opaque + 8 * i);
        if (v7)
        {
          do
          {
            v8 = *(v7 + 72);
            if (v7 != *a1[6].__opaque)
            {
              v9 = *(v7 + 16);
              if ((v9 & 0x80000000) != 0)
              {
                obj_cache_ephemeral_adjust(a1, v9, *(v7 + 48), -1);
              }

              else
              {
                --*&a1[10].__opaque[36];
              }

              obj_destroy_internal(v7, 0);
            }

            v7 = v8;
          }

          while (v8);
          v5 = *&a1[10].__opaque[52];
        }
      }
    }
  }

  v10 = *&a1[11].__opaque[8];
  if (v10)
  {
    do
    {
      v11 = *(v10 + 72);
      --*&a1[10].__opaque[36];
      obj_destroy_internal(v10, 0);
      v10 = v11;
    }

    while (v11);
  }

  v12 = *&a1[11].__opaque[32];
  if (v12)
  {
    do
    {
      v13 = *(v12 + 88);
      if (v12 != *a1[6].__opaque)
      {
        obj_destroy_internal(v12, 0);
      }

      v12 = v13;
    }

    while (v13);
  }

  v14 = *&a1[11].__opaque[48];
  if (v14)
  {
    do
    {
      v15 = *(v14 + 88);
      obj_destroy_internal(v14, 0);
      v14 = v15;
    }

    while (v15);
  }

  if (!a2)
  {
    obj_cache_unlock_write(a1);
    atomic_fetch_add_explicit(&a1[14].__opaque[36], 0xFFFFFFFF, memory_order_relaxed);
  }
}

void obj_cache_destroy(uint64_t a1)
{
  pthread_mutex_lock((omm + 8));
  v2 = *(a1 + 1320);
  if (v2)
  {
    *(a1 + 1320) = v2 & 0xFFFFFFFFFFFFFFFELL;
    v3 = *(a1 + 960);
    v4 = *(a1 + 968);
    if (v3)
    {
      *(v3 + 968) = v4;
    }

    *v4 = v3;
    if ((v2 & 2) == 0)
    {
      v5 = omm;
      --*(omm + 104);
      *(v5 + 136) = vsubq_s64(*(v5 + 136), *(a1 + 976));
      *(v5 + 152) -= *(a1 + 992);
      goto LABEL_8;
    }

    *(a1 + 1320) = v2 & 0xFFFFFFFFFFFFFFFCLL;
  }

  v5 = omm;
LABEL_8:
  pthread_mutex_unlock((v5 + 8));
  pthread_mutex_lock(a1);
  atomic_fetch_add_explicit((a1 + 940), 1u, memory_order_relaxed);
  obj_cache_reset(a1, 1);
  v6 = *(a1 + 392);
  if (v6)
  {
    obj_cache_ephemeral_adjust(a1, *(v6 + 16), *(v6 + 48), -1);
    obj_destroy_internal(*(a1 + 392), 0);
  }

  v7 = *(a1 + 712);
  if (v7)
  {
    _apfs_free(v7, 8 * *(a1 + 700));
  }

  obj_cache_unlock_write(a1);
  v8 = *(a1 + 896);
  if (v8)
  {
    _apfs_free(v8, 2048);
  }

  free_cv((a1 + 1328));
  free_lock((a1 + 328));
  free_rwlock((a1 + 128));
  free_lock(a1);

  _apfs_free(a1, 1392);
}

uint64_t obj_cache_flush_prepare(uint64_t a1, unsigned int a2, char a3, unint64_t a4)
{
  v91 = 0;
  if ((a2 & 0x80000000) != 0)
  {
    return 22;
  }

  pthread_mutex_lock(a1);
  if (*(a1 + 936))
  {
    if (a2)
    {
      obj_cache_unlock_write(a1);
      return 0;
    }

    do
    {
      *(a1 + 936) = 2;
      cv_wait_rw((a1 + 1328), a1, 2, 0);
    }

    while (*(a1 + 936));
  }

  *(a1 + 936) = 1;
  v8 = pthread_rwlock_wrlock((a1 + 128));
  if (v8)
  {
    panic("%s:%d: wrlock == 0 failed %d\n", "/Library/Caches/com.apple.xbs/Sources/apfs_framework/nx/obj.c", 1153, v8);
  }

  if (a2)
  {
    if (a3)
    {
      v11 = 0;
      v9 = a2;
      goto LABEL_90;
    }

    if (*(a1 + 908) >= a2)
    {
      v9 = a2;
    }

    else
    {
      v9 = *(a1 + 908);
    }

    v86 = a2 - v9;
  }

  else
  {
    v9 = 0;
    if (a3)
    {
      v11 = 0;
      goto LABEL_90;
    }

    v86 = 0;
  }

  v10 = 0;
  v11 = 0;
  v12 = 0;
  if (a2)
  {
    v13 = -1;
  }

  else
  {
    v13 = 0;
  }

  v88 = v13;
  while (1)
  {
    v14 = *(a1 + 824);
    if (!v14)
    {
      goto LABEL_68;
    }

    while (!a2 || v9 >= 1)
    {
      if (*(v14 + 36) >> 30)
      {
        panic("non-virtual object on virtual object dirty list: oid %lld flags 0x%llx 0x%x\n", *(v14 + 112), *(v14 + 16), *(v14 + 32));
      }

      v15 = *(v14 + 32);
      if ((v15 & 1) == 0)
      {
        panic("virtual object on dirty list not dirty: oid %lld flags 0x%llx 0x%x\n", *(v14 + 112), *(v14 + 16), v15);
      }

      if (v12)
      {
        if (v12 > 1)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v16 = *(v14 + 8);
        if (!v16)
        {
          goto LABEL_51;
        }

        if (*(v16 + 504))
        {
          v16 = *(v16 + 504);
        }

        if (*(*(v16 + 376) + 264))
        {
          goto LABEL_51;
        }
      }

      if (*(v14 + 36) == 13)
      {
LABEL_51:
        v14 = *(v14 + 88);
        *(a1 + 888) = v14;
        if (!v14)
        {
          goto LABEL_68;
        }
      }

      else
      {
LABEL_36:
        if (a2)
        {
          add_explicit = atomic_fetch_add_explicit((v14 + 24), 0, memory_order_relaxed);
          if ((add_explicit & 0xFFFFFF) != ((add_explicit >> 24) & 0xFFFFF))
          {
            goto LABEL_51;
          }
        }

        v19 = (v14 + 104);
        v18 = *(v14 + 104);
        v20 = *(v14 + 16);
        if ((v18 != 3735928559) == ((v20 & 0x20000000000) == 0))
        {
          panic("dirty object flush state inconsistent: oid %lld flags 0x%llx 0x%x fl %p\n", *(v14 + 112), v20, *(v14 + 32), v18);
        }

        if ((v20 & 0x20000000000) != 0 && *v19 != 3735928559)
        {
          goto LABEL_53;
        }

        if (v14 != v10)
        {
          v91 = 16000;
        }

        *(a1 + 888) = v14;
        v10 = v14;
        if (obj_reference_release_wait(v14, &v91, 1, 2))
        {
          if (v91 > 0x773593FF)
          {
            v21 = *(v14 + 8);
            if (!v21)
            {
              v21 = *(*v14 + 392);
            }

            if (nx_ratelimit_log_allowed(*(*v21 + 392)))
            {
              if (*(v21 + 36) == 13)
              {
                v22 = (v21 + 4040);
              }

              else
              {
                v22 = (*(v21 + 384) + 212);
              }

              log_debug("%s:%d: %s oid %lld flags 0x%llx 0x%x refs 0x%llx taking too long to get reference!\n", "obj_cache_flush_prepare", 1243, v22, *(v14 + 112), *(v14 + 16), *(v14 + 32), *(v14 + 24));
            }
          }

          v10 = v14;
        }

        else
        {
LABEL_53:
          v23 = *(v14 + 88);
          *(a1 + 888) = v23;
          if (!*(a1 + 908))
          {
            panic("virtual object dirty count underflow\n");
          }

          v24 = *(v14 + 96);
          v25 = (v23 + 96);
          if (!v23)
          {
            v25 = (a1 + 832);
          }

          *v25 = v24;
          *v24 = v23;
          --*(a1 + 908);
          *(v14 + 88) = 3735928559;
          atomic_fetch_and_explicit((v14 + 32), 0xFFFFFFFE, memory_order_relaxed);
          *(v14 + 16) |= 0x20000000000uLL;
          if ((a3 & 2) != 0)
          {
            *(v14 + 64) = *(v14 + 56);
          }

          if (*v19 == 3735928559)
          {
            *(v14 + 104) = 0;
            **(a1 + 864) = v14;
            *(a1 + 864) = v19;
            ++*(a1 + 932);
          }

          v9 += v88;
        }

        v14 = *(a1 + 888);
        if (!v14)
        {
          goto LABEL_68;
        }
      }
    }

    v12 = 3;
LABEL_68:
    v26 = pthread_rwlock_unlock((a1 + 128));
    if (v26)
    {
      panic("%s:%d: unlock == 0 failed %d\n", "/Library/Caches/com.apple.xbs/Sources/apfs_framework/nx/obj.c", 1273, v26);
    }

    obj_cache_unlock_write(a1);
    v29 = v11 + 13;
    if (!v11)
    {
      v29 = (a1 + 856);
    }

    v30 = *v29;
    if (v30)
    {
      break;
    }

LABEL_79:
    pthread_mutex_lock(a1);
    v33 = pthread_rwlock_wrlock((a1 + 128));
    if (v33)
    {
      panic("%s:%d: wrlock == 0 failed %d\n", "/Library/Caches/com.apple.xbs/Sources/apfs_framework/nx/obj.c", 1300, v33);
    }

    v36 = v12++ < 2;
    if (!v36)
    {
      v9 = v86;
LABEL_90:
      v35 = *(a1 + 840);
      if (a2)
      {
        v36 = v9 < 1;
      }

      else
      {
        v36 = 0;
      }

      v37 = v36;
      if (v35 && (v37 & 1) == 0)
      {
        v89 = a4;
        if (a2)
        {
          v38 = -1;
        }

        else
        {
          v38 = 0;
        }

        v87 = v38;
        do
        {
          if (*(v35 + 36) >> 30 != 1)
          {
            panic("non-physical object on physical object dirty list: oid %lld flags 0x%llx 0x%x\n", *(v35 + 112), *(v35 + 16), *(v35 + 32));
          }

          v39 = *(v35 + 32);
          if ((v39 & 1) == 0)
          {
            panic("physical object on dirty list not dirty: oid %lld flags 0x%llx 0x%x\n", *(v35 + 112), *(v35 + 16), v39);
          }

          v41 = (v35 + 104);
          v40 = *(v35 + 104);
          v42 = *(v35 + 16);
          if ((v40 != 3735928559) == ((v42 & 0x20000000000) == 0))
          {
            panic("dirty object flush state inconsistent: oid %lld flags 0x%llx 0x%x fl %p\n", *(v35 + 112), v42, *(v35 + 32), v40);
          }

          if ((v42 & 0x20000000000) == 0 || *v41 == 3735928559)
          {
            v91 = 16000;
            if (obj_reference_release_wait(v35, &v91, 1, 2))
            {
              do
              {
                if (v91 > 0x773593FF)
                {
                  v43 = *(v35 + 8);
                  if (!v43)
                  {
                    v43 = *(*v35 + 392);
                  }

                  if (nx_ratelimit_log_allowed(*(*v43 + 392)))
                  {
                    if (*(v43 + 36) == 13)
                    {
                      v44 = (v43 + 4040);
                    }

                    else
                    {
                      v44 = (*(v43 + 384) + 212);
                    }

                    log_debug("%s:%d: %s oid %lld flags 0x%llx 0x%x refs 0x%llx taking too long to get reference!\n", "obj_cache_flush_prepare", 1332, v44, *(v35 + 112), *(v35 + 16), *(v35 + 32), *(v35 + 24));
                  }
                }
              }

              while ((obj_reference_release_wait(v35, &v91, 1, 2) & 1) != 0);
            }
          }

          if (!*(a1 + 912))
          {
            panic("physical object dirty count underflow\n");
          }

          v45 = *(v35 + 88);
          v46 = *(v35 + 96);
          v47 = (v45 + 96);
          a4 = v89;
          if (!v45)
          {
            v47 = (a1 + 848);
          }

          *v47 = v46;
          *v46 = v45;
          --*(a1 + 912);
          *(v35 + 88) = 3735928559;
          atomic_fetch_and_explicit((v35 + 32), 0xFFFFFFFE, memory_order_relaxed);
          *(v35 + 16) |= 0x20000000000uLL;
          if ((a3 & 2) != 0)
          {
            *(v35 + 64) = *(v35 + 56);
          }

          if (*v41 == 3735928559)
          {
            *(v35 + 104) = 0;
            **(a1 + 864) = v35;
            *(a1 + 864) = v41;
            ++*(a1 + 932);
          }

          v9 += v87;
          v35 = *(a1 + 840);
          if (a2)
          {
            v48 = v9 < 1;
          }

          else
          {
            v48 = 0;
          }

          v49 = v48;
        }

        while (v35 && !v49);
      }

      v50 = pthread_rwlock_unlock((a1 + 128));
      if (v50)
      {
        panic("%s:%d: unlock == 0 failed %d\n", "/Library/Caches/com.apple.xbs/Sources/apfs_framework/nx/obj.c", 1361, v50);
      }

      obj_cache_unlock_write(a1);
      v53 = v11 + 13;
      if (!v11)
      {
        v53 = (a1 + 856);
      }

      v54 = *v53;
      if (*v53)
      {
        while (1)
        {
          v55 = obj_write_prepare(v54, 0, a4, v51, v52);
          if (v55)
          {
            break;
          }

          if ((a3 & 2) != 0)
          {
            v56 = v54[19];
            if (!v56)
            {
              v56 = v54[16];
            }

            v54[17] = v56;
          }

          v54 = v54[13];
          if (!v54)
          {
            goto LABEL_147;
          }
        }

        v7 = v55;
        if (!*(*(*(a1 + 392) + 400) + 76))
        {
          v85 = v54[1];
          if (!v85)
          {
            v85 = *(*v54 + 392);
          }

          if (nx_ratelimit_log_allowed(*(*v85 + 392)))
          {
            goto LABEL_210;
          }
        }

        return v7;
      }

LABEL_147:
      v57 = *(a1 + 932);
      if (v57 >= 2)
      {
        v58 = 0;
        v59 = *(a1 + 856);
        for (i = 1; i < v57; i *= 2)
        {
          if (v59)
          {
            v61 = 0;
            v62 = 1;
            v63 = v59;
            while (1)
            {
              v64 = i;
              v65 = v63;
              if (i >= 2)
              {
                break;
              }

              v66 = v63[13];
              v65 = v63;
              v68 = v66;
              if (!v66)
              {
                goto LABEL_199;
              }

LABEL_159:
              v70 = v63[19];
              if (!v70)
              {
                v70 = v63[16];
              }

              v71 = v66[19];
              if (!v71)
              {
                v71 = v66[16];
              }

              v72 = v68[13];
              v73 = v70 <= v71;
              if (v70 > v71)
              {
                v74 = v66;
              }

              else
              {
                v74 = v68[13];
              }

              if (v70 > v71)
              {
                v75 = v65;
              }

              else
              {
                v75 = v68;
              }

              if (v73)
              {
                v76 = v66;
              }

              else
              {
                v76 = v63;
              }

              if (v73)
              {
                v58 = v65;
              }

              else
              {
                v58 = v68;
              }

              if (!v73)
              {
                v63 = v66;
              }

              if (v63 == v58 || v76 == v74)
              {
                v78 = v63;
              }

              else
              {
                v77 = v63;
                do
                {
                  v78 = v77[13];
                  v79 = v78[19];
                  if (!v79)
                  {
                    v79 = v78[16];
                  }

                  v80 = v76[19];
                  if (!v80)
                  {
                    v80 = v76[16];
                  }

                  if (v79 > v80)
                  {
                    v81 = v76[13];
                    v76[13] = v78;
                    v77[13] = v76;
                    v78 = v76;
                    v76 = v81;
                  }

                  v82 = v78 == v58 || v76 == v74;
                  v77 = v78;
                }

                while (!v82);
              }

              if (v78 == v58)
              {
                v78[13] = v76;
                v58 = v75;
              }

              v83 = v61 + 13;
              if (v62)
              {
                v83 = (a1 + 856);
                v59 = v63;
              }

              *v83 = v63;
              v61 = v58;
              v63 = v72;
              v62 = 0;
              if (!v72)
              {
                v61 = v58;
                goto LABEL_199;
              }
            }

            while (1)
            {
              v65 = v65[13];
              if (!v65)
              {
                break;
              }

              if (--v64 < 2)
              {
                v66 = v65[13];
                v67 = i;
                v68 = v66;
                if (!v66)
                {
                  break;
                }

                while (1)
                {
                  v69 = v68[13];
                  if (!v69)
                  {
                    goto LABEL_159;
                  }

                  --v67;
                  v68 = v68[13];
                  if (v67 < 2)
                  {
                    v68 = v69;
                    goto LABEL_159;
                  }
                }
              }
            }

LABEL_199:
            if (v61)
            {
              v61[13] = v63;
            }
          }
        }

        if (v58)
        {
          v7 = 0;
          *(a1 + 864) = v58 + 13;
          return v7;
        }
      }

      return 0;
    }
  }

  while (1)
  {
    v11 = v30;
    v31 = obj_write_prepare(v30, 0, a4, v27, v28);
    if (v31)
    {
      break;
    }

    if ((a3 & 2) != 0)
    {
      v32 = v11[19];
      if (!v32)
      {
        v32 = v11[16];
      }

      v11[17] = v32;
    }

    v30 = v11[13];
    if (!v30)
    {
      goto LABEL_79;
    }
  }

  v7 = v31;
  if (!*(*(*(a1 + 392) + 400) + 76))
  {
    v34 = v11[1];
    if (!v34)
    {
      v34 = (*v11)[49];
    }

    if (nx_ratelimit_log_allowed(*(*v34 + 392)))
    {
LABEL_210:
      log_err("%s:%d: %s oid 0x%llx flags 0x%llx 0x%x type 0x%x/0x%x error preparing for write: %d\n", "obj_cache_flush_prepare");
    }
  }

  return v7;
}

uint64_t obj_reference_release_wait(void *a1, unsigned int *a2, int a3, int a4)
{
  v8 = *a1;
  add_explicit = atomic_fetch_add_explicit(a1 + 3, 0x1000001uLL, memory_order_relaxed);
  if ((add_explicit & 0xFFFFFF) == 0xFFFFFF)
  {
    panic("Reference count overflowed for object %p!\n", a1);
  }

  v10 = (add_explicit >> 24) & 0xFFFFF;
  if (v10 == 0xFFFFF)
  {
    panic("Get count overflowed for object %p!\n", a1);
  }

  v11 = (-(add_explicit >> 44) & 0xFFFFF) != 0 && (add_explicit & 0xFFFFFF) == v10;
  if (v11 && (-(atomic_fetch_add_explicit(a1 + 3, 0, memory_order_relaxed) >> 44) & 0xFFFFF) != 0)
  {
    atomic_fetch_or_explicit(a1 + 8, 2u, memory_order_relaxed);
    atomic_fetch_add_explicit(a1 + 3, 0xFFFFFFFFFEFFFFFFLL, memory_order_relaxed);
    if (a3)
    {
      v12 = pthread_rwlock_unlock((v8 + 128));
      if (v12)
      {
        panic("%s:%d: unlock == 0 failed %d\n", "/Library/Caches/com.apple.xbs/Sources/apfs_framework/nx/obj.c", 4153, v12);
      }
    }

    v13 = *a2 % 0x3B9ACA00;
    v18.tv_sec = *a2 / 0x3B9ACA00uLL;
    v18.tv_nsec = v13;
    if (a4 == 1)
    {
      v14 = 1;
    }

    else
    {
      v14 = 2;
    }

    if (cv_wait_rw((v8 + 1328), v8, v14, &v18) == 35 && *a2 != 2000000000)
    {
      if (4 * *a2 >= 0x77359400)
      {
        v15 = 2000000000;
      }

      else
      {
        v15 = 4 * *a2;
      }

      *a2 = v15;
    }

    if (a3)
    {
      v16 = pthread_rwlock_wrlock((v8 + 128));
      if (v16)
      {
        panic("%s:%d: wrlock == 0 failed %d\n", "/Library/Caches/com.apple.xbs/Sources/apfs_framework/nx/obj.c", 4170, v16);
      }
    }

    return 1;
  }

  else
  {
    result = 0;
    atomic_fetch_add_explicit(a1 + 3, 0xFFFFFFFFFF000000, memory_order_relaxed);
  }

  return result;
}

uint64_t obj_write_prepare(uint64_t *a1, int a2, unint64_t a3, int8x16_t a4, int8x16_t a5)
{
  v5 = *(*a1 + 392);
  if (a1[1])
  {
    v6 = a1[1];
  }

  else
  {
    v6 = *(*a1 + 392);
  }

  if (*(v5 + 627))
  {
    return 30;
  }

  v11 = (*(*(v5 + 376) + 36) + *(a1 + 12) - 1) / *(*(v5 + 376) + 36);
  v13 = a1 + 18;
  v12 = a1[18];
  v14 = a1[2];
  v15 = a1[15];
  v48 = v15;
  if (a1[19])
  {
    v49 = a1[19];
    goto LABEL_9;
  }

  v49 = a1[16];
  if (v49)
  {
LABEL_9:
    if ((v14 & 0xC0000000) != 0)
    {
      v47 = v11;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      goto LABEL_11;
    }

LABEL_46:
    v47 = v11;
    if (v12 == v15)
    {
      v18 = v49;
    }

    else
    {
      v18 = v49;
      if (a2 || v12)
      {
        goto LABEL_55;
      }
    }

    v27 = v18;
    v18 = 0;
    if (v27)
    {
      v16 = 0;
      goto LABEL_52;
    }

LABEL_55:
    v29 = a1[2];
    v30 = v29 & 0xC00000000;
    if ((v29 & 0x800000000) != 0)
    {
      v31 = 49;
    }

    else
    {
      v31 = 41;
    }

    if ((v29 & 0x100000000000) != 0)
    {
      v32 = 65600;
    }

    else
    {
      v32 = 131136;
    }

    v33 = v32 | v31;
    v34 = v30 == 0;
    v35 = v30 != 0;
    if (v34)
    {
      v33 = 72;
    }

    if (a2)
    {
      v16 = 0;
    }

    else
    {
      v16 = v35;
    }

    if (a2)
    {
      v36 = 72;
    }

    else
    {
      v36 = v33;
    }

    if ((v29 & 0x10000000) != 0)
    {
      v49 = 0;
    }

    else
    {
      if (*(a1 + 18) == 11 || *(a1 + 20) == 11)
      {
        v37 = 2;
      }

      else
      {
        v37 = 1;
      }

      v49 = v37;
    }

    v38 = spaceman_alloc(v6, v36, v11, a3, &v49, 0);
    if (v38)
    {
      v7 = v38;
      if (nx_ratelimit_log_allowed(*(*v6 + 392)))
      {
        if (*(v6 + 36) == 13)
        {
          v39 = (v6 + 4040);
        }

        else
        {
          v39 = (*(v6 + 384) + 212);
        }

        log_err("%s:%d: %s oid %lld flags 0x%llx 0x%x type 0x%x/0x%x xid %lld (cur xid %lld) error allocating space to write %d; blkcount %d (o_size_phys %d) paddr %lld\n", "obj_write_prepare", 6703, v39, a1[14], a1[2], *(a1 + 8), *(a1 + 9), *(a1 + 10), a1[18], a3, v7, v47, *(a1 + 12), v49);
      }

      v16 = 0;
      v17 = 0;
      goto LABEL_102;
    }

    v15 = v48;
    v17 = v49;
    v28 = v49;
    if (v49)
    {
LABEL_82:
      v49 = v28;
      v40 = a1[2];
      v41 = (v40 >> 2) & 0x700 | (v40 >> 8) & 0xE0 | 4;
      if ((v40 & 0x10000000) == 0)
      {
        v41 = 0;
      }

      v42 = (v40 >> 26) & 8;
      if (v12)
      {
        v43 = v12;
      }

      else
      {
        v43 = v15;
      }

      v44 = omap_set(v6, a1[14], v43, v28, *(a1 + 12), v41 | v42, a3);
      if (!v44)
      {
        v15 = v48;
        goto LABEL_11;
      }

      v7 = v44;
      if (nx_ratelimit_log_allowed(*(*v6 + 392)))
      {
        if (*(v6 + 36) == 13)
        {
          v45 = (v6 + 4040);
        }

        else
        {
          v45 = (*(v6 + 384) + 212);
        }

        log_err("%s:%d: %s oid 0x%llx flags 0x%llx 0x%x type 0x%x/0x%x error setting mapping for write %d\n", "obj_write_prepare", 6730, v45, a1[14], a1[2], *(a1 + 8), *(a1 + 9), *(a1 + 10), v7);
      }

      if (!a2)
      {
LABEL_17:
        pthread_mutex_lock(*a1);
        if (v17)
        {
          a1[19] = v17;
        }

        if (!v16)
        {
          goto LABEL_21;
        }

LABEL_20:
        a1[2] &= 0xFFFFEFF3FFFFFFFFLL;
LABEL_21:
        if (!v7)
        {
          v22 = a1[2];
          if ((v22 & 0x40) != 0)
          {
            a1[2] = v22 & 0xFFFFFFFFFFFFFFBFLL;
          }

          if (v12)
          {
            a1[15] = v12;
          }

          v23 = a1[19];
          if (v23)
          {
            a1[16] = v23;
          }

          if ((atomic_fetch_or_explicit(a1 + 8, 0, memory_order_relaxed) & 1) == 0)
          {
            *v13 = 0;
            v13[1] = 0;
          }
        }

        obj_cache_unlock_write(*a1);
        if (v18)
        {
          if (v12)
          {
            if (omap_delete(v6, a1[14], v48, v18, *(a1 + 12), 0, a3) && nx_ratelimit_log_allowed(*(*v6 + 392)))
            {
              log_err("%s:%d: %s oid 0x%llx flags 0x%llx 0x%x type 0x%x/0x%x error deleting old mapping %d\n", "obj_write_prepare");
            }
          }

          else if (spaceman_free(v6, 64, v18, v47, a3) && nx_ratelimit_log_allowed(*(*v6 + 392)))
          {
            log_err("%s:%d: %s oid 0x%llx flags 0x%llx 0x%x type 0x%x/0x%x error freeing old location %d\n", "obj_write_prepare");
          }
        }

        return v7;
      }

LABEL_102:
      pthread_mutex_lock(*a1);
      v18 = v17;
      if (!v16)
      {
        goto LABEL_21;
      }

      goto LABEL_20;
    }

LABEL_52:
    v28 = a1[19];
    if (!v28)
    {
      v17 = 0;
      goto LABEL_11;
    }

    v17 = 0;
    if (v28 == a1[16])
    {
LABEL_11:
      if ((*(a1 + 18) & 0x8002000) == 0)
      {
        v19 = a1[7];
        a4.i64[0] = *(a1 + 36);
        *(v19 + 8) = a1[14];
        *(v19 + 24) = a4.i64[0];
        if (v12)
        {
          v20 = v12;
        }

        else
        {
          v20 = v15;
        }

        *(v19 + 16) = v20;
        v21 = *(a1 + 12);
        atomic_fetch_add_explicit((*(*(*a1 + 392) + 376) + 984), 1uLL, memory_order_relaxed);
        fletcher64_set_cksum(v19, (v19 + 8), (v21 - 8), 0, a4, a5);
      }

      v7 = 0;
      goto LABEL_17;
    }

    goto LABEL_82;
  }

  if ((v14 & 0xC0000000) != 0)
  {
    if (nx_ratelimit_log_allowed(*(*v6 + 392)))
    {
      if (*(v6 + 36) == 13)
      {
        v24 = (v6 + 4040);
      }

      else
      {
        v24 = (*(v6 + 384) + 212);
      }

      log_err("%s:%d: %s oid 0x%llx flags 0x%llx 0x%x type 0x%x/0x%x non-virtual object missing paddr!\n", "obj_write_prepare", 6655, v24, a1[14], a1[2], *(a1 + 8), *(a1 + 9), *(a1 + 10));
    }

    return 22;
  }

  else
  {
    if ((v14 & 0x40) != 0)
    {
      goto LABEL_46;
    }

    v25 = v11;
    v26 = omap_get(v6, a1[14], v15, &v49, 0, 0, 0);
    v15 = v48;
    v11 = v25;
    if ((v26 & 0xFFFFFFFD) == 0)
    {
      goto LABEL_46;
    }

    v7 = v26;
    if (nx_ratelimit_log_allowed(*(*v6 + 392)))
    {
      log_err("%s:%d: %s oid 0x%llx flags 0x%llx 0x%x type 0x%x/0x%x error getting mapping to write %d\n", "obj_write_prepare");
    }
  }

  return v7;
}

void obj_cache_flush_unprepare(uint64_t a1)
{
  pthread_mutex_lock(a1);
  v2 = pthread_rwlock_wrlock((a1 + 128));
  if (v2)
  {
    panic("%s:%d: wrlock == 0 failed %d\n", "/Library/Caches/com.apple.xbs/Sources/apfs_framework/nx/obj.c", 1410, v2);
  }

  for (i = *(a1 + 856); i; i = *(i + 104))
  {
    if ((atomic_fetch_or_explicit((i + 32), 1u, memory_order_relaxed) & 1) == 0)
    {
      v4 = *(i + 36) >> 30;
      if (v4)
      {
        if (v4 != 1)
        {
          panic("bad object type in flush list: oid %lld flags 0x%llx 0x%x\n", *(i + 112), *(i + 16), *(i + 32));
        }

        *(i + 88) = 0;
        v6 = *(a1 + 848);
        *(i + 96) = v6;
        *v6 = i;
        *(a1 + 848) = i + 88;
        ++*(a1 + 912);
      }

      else
      {
        *(i + 88) = 0;
        v5 = *(a1 + 832);
        *(i + 96) = v5;
        *v5 = i;
        *(a1 + 832) = i + 88;
        ++*(a1 + 908);
      }
    }

    v7 = *(i + 16);
    *(i + 16) = v7 & 0xFFFFFDFFFFFFFFFFLL;
    if ((v7 & 0x80) != 0)
    {
      *(i + 16) = v7 & 0xFFFFFDFFFFFFFF7FLL;
      cv_wakeup((a1 + 1328));
    }
  }

  v8 = pthread_rwlock_unlock((a1 + 128));
  if (v8)
  {
    panic("%s:%d: unlock == 0 failed %d\n", "/Library/Caches/com.apple.xbs/Sources/apfs_framework/nx/obj.c", 1430, v8);
  }

  obj_cache_unlock_write(a1);
  v9 = *(a1 + 856);
  if (v9)
  {
    v10 = (a1 + 856);
    do
    {
      v11 = *(v9 + 104);
      *v10 = v11;
      if (!v11)
      {
        *(a1 + 864) = v10;
      }

      *(v9 + 104) = 3735928559;
      --*(a1 + 932);
      v12 = *(v9 + 64);
      if (v12)
      {
        if (v12 != *(v9 + 56))
        {
          fs_obj_zfree_oc(v12, *(v9 + 48), *(v9 + 16), a1);
        }

        *(v9 + 64) = 0;
        *(v9 + 136) = 0;
      }

      obj_release(v9);
      v9 = *v10;
    }

    while (*v10);
  }

  pthread_mutex_lock(a1);
  if (*(a1 + 936) >= 2u)
  {
    cv_wakeup((a1 + 1328));
  }

  *(a1 + 936) = 0;

  obj_cache_unlock_write(a1);
}

void obj_release(void *result)
{
  v3 = *result;
  v2 = result[1];
  if (!v2)
  {
    v2 = *(v3 + 392);
  }

  add_explicit = atomic_fetch_add_explicit(result + 3, 0xFFFFEFFFFFFFFFFFLL, memory_order_relaxed);
  v5 = add_explicit & 0xFFFFFF;
  if ((add_explicit & 0xFFFFFF) == 0)
  {
    panic("Reference count underflowed for object %p!\n", result);
  }

  v6 = -(add_explicit >> 44) & 0xFFFFF;
  if (v6 == 0x80000)
  {
    panic("Release count overflowed for object %p!\n", result);
  }

  if (v5 >= 2)
  {
    v7 = atomic_fetch_add_explicit(result + 3, 0x100000000000uLL, memory_order_relaxed);
    if ((v7 & 0xFFFFFF) == 0 && (-(v7 >> 44) & 0xFFFFF) == 1)
    {

      cv_wakeup((v3 + 1328));
    }

    return;
  }

  v8 = result[2];
  if ((v8 & 0xC) != 0 || (v8 & 0xC00000000) != 0 && (atomic_fetch_or_explicit(result + 8, 0, memory_order_relaxed) & 1) == 0)
  {
    pthread_mutex_lock(v3);
    v8 = result[2];
    if (v6)
    {
      v9 = (result[2] & 8) == 0;
    }

    else
    {
      v9 = 1;
    }

    if (v9 || (-(atomic_fetch_add_explicit(result + 3, 0, memory_order_relaxed) >> 44) & 0xFFFFE) == 0)
    {
      v10 = 0;
    }

    else
    {
      do
      {
        v29 = xmmword_23D298FF0;
        cv_wait_rw((v3 + 1328), v3, 2, &v29);
      }

      while ((-(atomic_fetch_add_explicit(result + 3, 0, memory_order_relaxed) >> 44) & 0xFFFFE) != 0);
      v10 = 0;
      v8 = result[2];
    }
  }

  else
  {
    v10 = 1;
  }

  if ((v8 & 0x80000008) == 0 && *(result + 18) != 13 && (result[4] & 1) == 0)
  {
    v11 = pthread_rwlock_rdlock((v3 + 128));
    if (v11)
    {
      panic("%s:%d: rdlock == 0 failed %d\n", "/Library/Caches/com.apple.xbs/Sources/apfs_framework/nx/obj.c", 5319, v11);
    }

    obj_cache_enqueue_deferred_update(v3, result);
    v12 = pthread_rwlock_unlock((v3 + 128));
    if (v12)
    {
      panic("%s:%d: unlock == 0 failed %d\n", "/Library/Caches/com.apple.xbs/Sources/apfs_framework/nx/obj.c", 5321, v12);
    }
  }

  v13 = result[14];
  v15 = *(result + 9);
  v14 = *(result + 10);
  v16 = result[2];
  v28 = v16;
  if (v10)
  {
    v17 = 0;
    v18 = 0;
    v19 = 0;
    goto LABEL_42;
  }

  if ((v16 & 4) != 0)
  {
    v20 = v16 & 0xFFFFFFFFFFFFFFFBLL;
    result[2] = v16 & 0xFFFFFFFFFFFFFFFBLL;
    v19 = result;
  }

  else
  {
    v19 = 0;
    v20 = result[2];
  }

  if ((v20 & 0xC00000000) != 0 && ((v21 = atomic_fetch_or_explicit(result + 8, 0, memory_order_relaxed), (v20 & 8) != 0) || (v21 & 1) == 0))
  {
    v22 = *(*(*(v3 + 392) + 376) + 36);
    v17 = (v22 + *(result + 12) - 1) / v22;
    if ((v20 & 0x800000000) != 0)
    {
      v23 = 80;
    }

    else
    {
      v23 = 72;
    }

    if ((v20 & 0x100000000000) != 0)
    {
      v24 = 0x10000;
    }

    else
    {
      v24 = 0x20000;
    }

    v18 = v23 | v24;
    v20 &= 0xFFFFEFF3FFFFFFFFLL;
    result[2] = v20;
    if ((v20 & 8) == 0)
    {
      goto LABEL_41;
    }
  }

  else
  {
    v18 = 0;
    v17 = 0;
    if ((v20 & 8) == 0)
    {
LABEL_41:
      obj_cache_unlock_write(v3);
LABEL_42:
      if ((atomic_fetch_and_explicit(result + 8, 0xFFFFFFFD, memory_order_relaxed) & 2) != 0)
      {
        v19 = result;
      }

      if ((atomic_fetch_add_explicit(result + 3, 0x100000000000uLL, memory_order_relaxed) & 0xFFFFFF) != 0)
      {
        goto LABEL_58;
      }

      goto LABEL_57;
    }
  }

  if ((v20 & 0x80000000) != 0)
  {
    obj_cache_ephemeral_adjust(v3, v20, *(result + 12), -1);
  }

  else
  {
    --*(v3 + 684);
  }

  atomic_fetch_add_explicit(result + 3, 0x100000000000uLL, memory_order_relaxed);
  v25 = atomic_fetch_and_explicit(result + 8, 0xFFFFFFFD, memory_order_relaxed);
  obj_destroy_internal(result, 0);
  obj_cache_unlock_write(v3);
  if ((v25 & 2) != 0)
  {
    goto LABEL_58;
  }

LABEL_57:
  if (v19)
  {
LABEL_58:
    cv_wakeup((v3 + 1328));
  }

  if (v17)
  {
    v26 = spaceman_unreserve(v2, v18, v17);
    if (v26)
    {
      if (*(v2 + 36) == 13)
      {
        v27 = (v2 + 4040);
      }

      else
      {
        v27 = (*(v2 + 384) + 212);
      }

      log_err("%s:%d: %s oid 0x%llx flags 0x%llx type 0x%x/0x%x error unreserving space on non-dirty release: %d\n", "obj_release", 5417, v27, v13, v28, v15, v14, v26);
    }
  }
}

void obj_was_being_written_wakeup(uint64_t a1)
{
  v2 = *a1;
  pthread_mutex_lock(*a1);
  v3 = *(a1 + 16);
  *(a1 + 16) = v3 & 0xFFFFFDFFFFFFFF7FLL;
  obj_cache_unlock_write(v2);
  if ((v3 & 0x80) != 0)
  {

    cv_wakeup(&v2[20].__opaque[40]);
  }
}

uint64_t obj_cache_flush_write(pthread_mutex_t *a1, unsigned int a2)
{
  v3 = *&a1[13].__opaque[16];
  if (!v3)
  {
LABEL_30:
    pthread_mutex_lock(a1);
    if (*&a1[14].__opaque[32] >= 2u)
    {
      cv_wakeup(&a1[20].__opaque[40]);
    }

    *&a1[14].__opaque[32] = 0;
    obj_cache_unlock_write(a1);
    return 0;
  }

  v4 = 0;
  v5 = 0;
  v6 = &a1[13].__opaque[16];
  v7 = (a2 >> 1) & 1;
  do
  {
    v8 = *(v3 + 104);
    while (1)
    {
      pthread_mutex_lock((a1 + 328));
      if ((atomic_fetch_or_explicit((v3 + 32), 8u, memory_order_acquire) & 8) == 0)
      {
        break;
      }

      pthread_mutex_unlock((a1 + 328));
    }

    v9 = obj_write_internal(v3, v7);
    if (!v9)
    {
      v14 = *(v3 + 56);
      v13 = *(v3 + 64);
      *(v3 + 64) = 0;
      *(v3 + 136) = 0;
      atomic_fetch_and_explicit((v3 + 32), 0xFFFFFFF7, memory_order_release);
      pthread_mutex_unlock((a1 + 328));
      if (v13 && v13 != v14)
      {
        fs_obj_zfree_oc(v13, *(v3 + 48), *(v3 + 16), a1);
      }

      if (v4)
      {
        v15 = (v4 + 104);
        v16 = *(*(v4 + 104) + 104);
        *(v4 + 104) = v16;
        if (v16)
        {
LABEL_18:
          *(v3 + 104) = 3735928559;
          --*&a1[14].__opaque[28];
          obj_was_being_written_wakeup(v3);
          obj_release(v3);
          goto LABEL_25;
        }
      }

      else
      {
        v17 = *(*v6 + 104);
        *v6 = v17;
        v15 = &a1[13].__opaque[16];
        if (v17)
        {
          goto LABEL_18;
        }
      }

      *&a1[13].__opaque[24] = v15;
      goto LABEL_18;
    }

    v10 = v9;
    atomic_fetch_and_explicit((v3 + 32), 0xFFFFFFF7, memory_order_release);
    pthread_mutex_unlock((a1 + 328));
    v11 = *(v3 + 8);
    if (!v11)
    {
      v11 = *(*v3 + 392);
    }

    if (nx_ratelimit_log_allowed(*(*v11 + 392)))
    {
      if (*(v11 + 36) == 13)
      {
        v12 = (v11 + 4040);
      }

      else
      {
        v12 = (*(v11 + 384) + 212);
      }

      log_err("%s:%d: %s oid 0x%llx flags 0x%llx 0x%x type 0x%x/0x%x error writing: %d\n", "obj_cache_flush_write", 1528, v12, *(v3 + 112), *(v3 + 16), *(v3 + 32), *(v3 + 36), *(v3 + 40), v10);
    }

    if (v5)
    {
      v5 = v5;
    }

    else
    {
      v5 = v10;
    }

    v4 = v3;
LABEL_25:
    v3 = v8;
  }

  while (v8);
  if (!v5)
  {
    goto LABEL_30;
  }

  return v5;
}

uint64_t obj_write_internal(uint64_t a1, int a2)
{
  v2 = *(*a1 + 392);
  v3 = *(a1 + 48);
  if (!a2)
  {
    v4 = *(a1 + 56);
LABEL_7:
    v5 = *(a1 + 152);
    if (!v5)
    {
      v5 = *(a1 + 128);
      if (!v5)
      {
        panic("Object has no address: o %p oid %llu flags 0x%llx 0x%x paddr %llu naddr %llu\n", a1, *(a1 + 112), *(a1 + 16), *(a1 + 32), 0, 0);
      }
    }

    goto LABEL_10;
  }

  v4 = *(a1 + 64);
  if (!v4)
  {
    v4 = *(a1 + 56);
  }

  v5 = *(a1 + 136);
  if (!v5)
  {
    goto LABEL_7;
  }

LABEL_10:
  if (*(v2 + 627))
  {
    return 30;
  }

  v7 = *(a1 + 16);
  if ((v7 & 0x10000000) != 0 && (v7 & 0x80000000000) == 0 && (v12 = *(a1 + 8)) != 0)
  {
    if (v7 >> 13)
    {
      if (v7 >> 13 != 1)
      {
        panic("invalid crypto index %d\n");
      }

      v13 = 632;
    }

    else
    {
      v13 = 536;
    }

    v10 = (v7 >> 10) & 7;
    if (v10)
    {
      if (v10 != 1)
      {
        panic("invalid tweak type %d\n");
      }

      v8 = *(a1 + 112) ^ HIDWORD(*(a1 + 120)) | *(a1 + 112) & 0xFFFFFFFF00000000 ^ (*(a1 + 120) << 32);
      LODWORD(v10) = 4;
    }

    else
    {
      v8 = (v7 >> 10) & 7;
    }

    v9 = v12 + v13;
    v14 = *(v12 + 1144);
    if (v14)
    {
      v11 = v14;
    }

    else
    {
      v11 = *(v2 + 384);
    }
  }

  else
  {
    v8 = 0;
    v9 = 0;
    LODWORD(v10) = 0;
    v11 = *(v2 + 384);
  }

  v15 = (*(*(v2 + 376) + 36) + v3 - 1) / *(*(v2 + 376) + 36);

  return dev_write_extended(v11, v5, v15, v4, v9, v8, v10);
}

BOOL obj_cache_tx_start_closing(uint64_t a1)
{
  v1 = *(a1 + 912) + *(a1 + 908);
  if (dev_is_solidstate(*(*(a1 + 392) + 384)))
  {
    v2 = 1024;
  }

  else
  {
    v2 = 256;
  }

  return v1 >= v2;
}

void obj_cache_remove(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v8 = a2;
  }

  else
  {
    v8 = *(a1 + 392);
  }

  v9 = *(*(*(a1 + 392) + 376) + 36);
  pthread_mutex_lock(a1);
  v10 = *(*(a1 + 712) + 8 * (*(a1 + 704) & a3));
  if (v10)
  {
    v38 = 0;
    v11 = 0;
    v12 = v9;
    v13 = 0;
    v14 = 0;
    v15 = (a1 + 720);
    v37 = v12;
    v36 = v12 - 1;
    while (1)
    {
      while (1)
      {
        v16 = v10;
        v17 = (v10 + 72);
        v10 = *(v10 + 72);
        if (v16 != a2 && *(v16 + 8) == a2)
        {
          v18 = *(v16 + 16);
          if ((v18 & 0xC0000000) == 0 && *(v16 + 112) == a3 && *(v16 + 120) == a4)
          {
            break;
          }
        }

LABEL_24:
        if (!v10)
        {
          goto LABEL_33;
        }
      }

      add_explicit = atomic_fetch_add_explicit((v16 + 24), 0, memory_order_relaxed);
      if ((add_explicit & 0xFFFFFF) == ((add_explicit >> 24) & 0xFFFFF))
      {
        if ((v18 & 0xC00000000) != 0)
        {
          v20 = (v36 + *(v16 + 48)) / v37;
          v21 = v14 + v20;
          v22 = v13 + v20;
          if ((v18 & 0x100000000000) != 0)
          {
            v21 = v14;
          }

          else
          {
            v22 = v13;
          }

          v23 = v11 + v20;
          v24 = v38;
          v25 = v38 + v20;
          if ((v18 & 0x100000000000) != 0)
          {
            v23 = v11;
          }

          else
          {
            v25 = v38;
          }

          if ((v18 & 0x800000000) != 0)
          {
            v11 = v23;
            v24 = v25;
          }

          else
          {
            v14 = v21;
            v13 = v22;
          }

          v38 = v24;
          *(v16 + 16) = v18 & 0xFFFFEFF33FFFFFFFLL;
        }

        --*(a1 + 684);
        obj_destroy_internal(v16, 0);
        goto LABEL_24;
      }

      if (v18)
      {
        v26 = *(v16 + 80);
        if (v10)
        {
          *(v10 + 80) = v26;
        }

        *v26 = v10;
      }

      v27 = *v15;
      *v17 = *v15;
      if (v27)
      {
        *(v27 + 80) = v17;
      }

      *v15 = v16;
      *(v16 + 80) = v15;
      *(v16 + 16) = v18 | 9;
      if (!v10)
      {
LABEL_33:
        obj_cache_unlock_write(a1);
        if (v14)
        {
          v28 = spaceman_unreserve(v8, 0x48u, v14);
          if (v28)
          {
            if (*(v8 + 36) == 13)
            {
              v29 = (v8 + 4040);
            }

            else
            {
              v29 = (*(v8 + 384) + 212);
            }

            log_err("%s:%d: %s error unreserving space, %lld blocks: %d\n", "obj_cache_remove", 1830, v29, v14, v28);
          }
        }

        if (v11)
        {
          v30 = spaceman_unreserve(v8, 0x50u, v11);
          if (v30)
          {
            if (*(v8 + 36) == 13)
            {
              v31 = (v8 + 4040);
            }

            else
            {
              v31 = (*(v8 + 384) + 212);
            }

            log_err("%s:%d: %s error unreserving tier2 space, %lld blocks: %d\n", "obj_cache_remove", 1836, v31, v11, v30);
          }
        }

        if (v13)
        {
          v32 = spaceman_unreserve(v8, 0x10048u, v13);
          if (v32)
          {
            if (*(v8 + 36) == 13)
            {
              v33 = (v8 + 4040);
            }

            else
            {
              v33 = (*(v8 + 384) + 212);
            }

            log_err("%s:%d: %s error unreserving space, %lld blocks: %d\n", "obj_cache_remove", 1842, v33, v13, v32);
          }
        }

        if (v38)
        {
          v34 = spaceman_unreserve(v8, 0x10050u, v38);
          if (v34)
          {
            if (*(v8 + 36) == 13)
            {
              v35 = (v8 + 4040);
            }

            else
            {
              v35 = (*(v8 + 384) + 212);
            }

            log_err("%s:%d: %s error unreserving tier2 space, %lld blocks: %d\n", "obj_cache_remove", 1848, v35, v38, v34);
          }
        }

        return;
      }
    }
  }

  obj_cache_unlock_write(a1);
}

void obj_cache_remove_reverted_fs_objects(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v8 = *(*(*(a1 + 392) + 376) + 36);
  pthread_mutex_lock(a1);
  v44 = (a2 + 4040);
  log_debug("%s:%d: %s removing reverted fs objects for fs %lld: %lld - %lld\n", "obj_cache_remove_reverted_fs_objects", 1870, (a2 + 4040), *(a2 + 112), a3, a4);
  v9 = *(a1 + 700);
  if (!v9)
  {
    v11 = 0;
    v41 = 0;
    v42 = 0;
    v43 = 0;
    goto LABEL_45;
  }

  v10 = 0;
  v43 = 0;
  v41 = 0;
  v42 = 0;
  v11 = 0;
  v12 = (a1 + 720);
  v39 = v8 - 1;
  v40 = v8;
  do
  {
    v13 = *(*(a1 + 712) + 8 * v10);
    if (!v13)
    {
      goto LABEL_42;
    }

    do
    {
      while (1)
      {
        v14 = v13;
        v15 = (v13 + 72);
        v13 = *(v13 + 72);
        if (v14 == a2)
        {
          goto LABEL_30;
        }

        if (*(v14 + 8) != a2)
        {
          goto LABEL_30;
        }

        v16 = *(v14 + 16);
        if ((v16 & 0xC0000000) != 0)
        {
          goto LABEL_30;
        }

        v17 = *(v14 + 120);
        if (v17 <= *(v14 + 144))
        {
          v17 = *(v14 + 144);
        }

        if (v17 < a3 || v17 > a4)
        {
          goto LABEL_30;
        }

        v19 = *(v14 + 32);
        if (v19)
        {
          log_debug("%s:%d: %s danger: oid %lld type 0x%x/0x%x flags 0x%llx 0x%x xid %lld refs 0x%llx - is dirty\n", "obj_cache_remove_reverted_fs_objects", 1887, v44, *(v14 + 112), *(v14 + 36), *(v14 + 40), v16, v19, v17, *(v14 + 24));
        }

        add_explicit = atomic_fetch_add_explicit((v14 + 24), 0, memory_order_relaxed);
        if ((add_explicit & 0xFFFFFF) != ((add_explicit >> 24) & 0xFFFFF))
        {
          break;
        }

        v21 = *(v14 + 16);
        if ((v21 & 0xC00000000) != 0)
        {
          v22 = (v39 + *(v14 + 48)) / v40;
          v23 = v11 + v22;
          v25 = v41;
          v24 = v42;
          v26 = v42 + v22;
          if ((v21 & 0x100000000000) != 0)
          {
            v23 = v11;
          }

          else
          {
            v26 = v42;
          }

          v27 = v41 + v22;
          v28 = v43;
          v29 = v43 + v22;
          if ((v21 & 0x100000000000) != 0)
          {
            v27 = v41;
          }

          else
          {
            v29 = v43;
          }

          if ((v21 & 0x800000000) != 0)
          {
            v25 = v27;
          }

          else
          {
            v11 = v23;
            v24 = v26;
          }

          v41 = v25;
          v42 = v24;
          if ((v21 & 0x800000000) != 0)
          {
            v28 = v29;
          }

          v43 = v28;
          *(v14 + 16) = v21 & 0xFFFFEFF3FFFFFFFFLL;
        }

        --*(a1 + 684);
        obj_destroy_internal(v14, 0);
LABEL_30:
        if (!v13)
        {
          goto LABEL_41;
        }
      }

      v30 = *(v14 + 120);
      if (v30 <= *(v14 + 144))
      {
        v30 = *(v14 + 144);
      }

      log_debug("%s:%d: %s danger: oid %lld type 0x%x/0x%x flags 0x%llx 0x%x xid %lld refs 0x%llx - has refs\n", "obj_cache_remove_reverted_fs_objects", 1891, v44, *(v14 + 112), *(v14 + 36), *(v14 + 40), *(v14 + 16), *(v14 + 32), v30, *(v14 + 24));
      v31 = *(v14 + 16);
      if (v31)
      {
        v32 = *(v14 + 72);
        v33 = *(v14 + 80);
        if (v32)
        {
          *(v32 + 80) = v33;
        }

        *v33 = v32;
      }

      v34 = *v12;
      *v15 = *v12;
      if (v34)
      {
        *(v34 + 80) = v15;
      }

      *v12 = v14;
      *(v14 + 80) = v12;
      *(v14 + 16) = v31 | 9;
    }

    while (v13);
LABEL_41:
    v9 = *(a1 + 700);
LABEL_42:
    ++v10;
  }

  while (v10 < v9);
LABEL_45:
  obj_cache_unlock_write(a1);
  if (v42 + v11 + v41 + v43)
  {
    log_debug("%s:%d: %s unreserving %lld blocks for reverted fs objects\n", "obj_cache_remove_reverted_fs_objects", 1930, v44, v42 + v11 + v41 + v43);
  }

  if (v11)
  {
    v35 = spaceman_unreserve(a2, 0x48u, v11);
    if (v35)
    {
      log_err("%s:%d: %s error unreserving space, %lld blocks: %d\n", "obj_cache_remove_reverted_fs_objects", 1935, v44, v11, v35);
    }
  }

  if (v41)
  {
    v36 = spaceman_unreserve(a2, 0x50u, v41);
    if (v36)
    {
      log_err("%s:%d: %s error unreserving tier2 space, %lld blocks: %d\n", "obj_cache_remove_reverted_fs_objects", 1941, v44, v41, v36);
    }
  }

  if (v42)
  {
    v37 = spaceman_unreserve(a2, 0x10048u, v42);
    if (v37)
    {
      log_err("%s:%d: %s error unreserving space, %lld blocks: %d\n", "obj_cache_remove_reverted_fs_objects", 1947, v44, v42, v37);
    }
  }

  if (v43)
  {
    v38 = spaceman_unreserve(a2, 0x10050u, v43);
    if (v38)
    {
      log_err("%s:%d: %s error unreserving tier2 space, %lld blocks: %d\n", "obj_cache_remove_reverted_fs_objects", 1953, v44, v43, v38);
    }
  }
}

uint64_t obj_xid(uint64_t a1)
{
  if (*(a1 + 120) <= *(a1 + 144))
  {
    return *(a1 + 144);
  }

  else
  {
    return *(a1 + 120);
  }
}

void obj_cache_remove_new_fs_objects(uint64_t a1, uint64_t a2)
{
  v30 = *(*(*(a1 + 392) + 376) + 36);
  v31 = 0;
  v32 = &v31;
  pthread_mutex_lock(a1);
  v4 = pthread_rwlock_wrlock((a1 + 128));
  if (v4)
  {
    panic("%s:%d: wrlock == 0 failed %d\n", "/Library/Caches/com.apple.xbs/Sources/apfs_framework/nx/obj.c", 2088, v4);
  }

  for (i = *(a1 + 824); i; v32 = v7)
  {
    while (1)
    {
      v6 = i;
      v7 = (i + 88);
      i = *(i + 88);
      if (*(v7 - 10) == a2 && (*(v6 + 19) & 0xC0) == 0 && !*(v6 + 128))
      {
        break;
      }

      if (!i)
      {
        goto LABEL_12;
      }
    }

    v8 = *(v6 + 96);
    v9 = (i + 96);
    if (!i)
    {
      v9 = (a1 + 832);
    }

    *v9 = v8;
    *v8 = i;
    --*(a1 + 908);
    v10 = v32;
    *(v6 + 88) = 0;
    *(v6 + 96) = v10;
    *v10 = v6;
  }

LABEL_12:
  v11 = pthread_rwlock_unlock((a1 + 128));
  if (v11)
  {
    panic("%s:%d: unlock == 0 failed %d\n", "/Library/Caches/com.apple.xbs/Sources/apfs_framework/nx/obj.c", 2100, v11);
  }

  v12 = v31;
  if (v31)
  {
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    do
    {
      v18 = *(v12 + 88);
      v17 = *(v12 + 96);
      v19 = (v18 + 96);
      if (!v18)
      {
        v19 = &v32;
      }

      *v19 = v17;
      *v17 = v18;
      *(v12 + 88) = 3735928559;
      v20 = *(v12 + 16);
      if ((v20 & 0xC00000000) != 0)
      {
        v21 = (v30 - 1 + *(v12 + 48)) / v30;
        v22 = v13 + v21;
        v23 = v16 + v21;
        if ((v20 & 0x100000000000) != 0)
        {
          v22 = v13;
        }

        else
        {
          v23 = v16;
        }

        v24 = v15 + v21;
        v25 = v14 + v21;
        if ((v20 & 0x100000000000) != 0)
        {
          v24 = v15;
        }

        else
        {
          v25 = v14;
        }

        if ((v20 & 0x800000000) != 0)
        {
          v15 = v24;
        }

        else
        {
          v16 = v23;
        }

        if ((v20 & 0x800000000) != 0)
        {
          v14 = v25;
        }

        else
        {
          v13 = v22;
        }

        *(v12 + 16) = v20 & 0xFFFFEFF3FFFFFFFFLL;
      }

      --*(a1 + 684);
      obj_destroy_internal(v12, 0);
      v12 = v18;
    }

    while (v18);
    obj_cache_unlock_write(a1);
    if (v13)
    {
      v26 = spaceman_unreserve(a2, 0x48u, v13);
      if (v26)
      {
        log_err("%s:%d: %s error unreserving space, %lld blocks: %d\n", "obj_cache_remove_new_fs_objects", 2133, (a2 + 4040), v13, v26);
      }
    }

    if (v15)
    {
      v27 = spaceman_unreserve(a2, 0x50u, v15);
      if (v27)
      {
        log_err("%s:%d: %s error unreserving tier2 space, %lld blocks: %d\n", "obj_cache_remove_new_fs_objects", 2139, (a2 + 4040), v15, v27);
      }
    }

    if (v16)
    {
      v28 = spaceman_unreserve(a2, 0x10048u, v16);
      if (v28)
      {
        log_err("%s:%d: %s error unreserving space, %lld blocks: %d\n", "obj_cache_remove_new_fs_objects", 2145, (a2 + 4040), v16, v28);
      }
    }

    if (v14)
    {
      v29 = spaceman_unreserve(a2, 0x10050u, v14);
      if (v29)
      {
        log_err("%s:%d: %s error unreserving tier2 space, %lld blocks: %d\n", "obj_cache_remove_new_fs_objects", 2151, (a2 + 4040), v14, v29);
      }
    }
  }

  else
  {
    obj_cache_unlock_write(a1);
  }
}

uint64_t obj_type_is_or_contains_ephemeral(int a1)
{
  if (a1 < 0)
  {
    return 1;
  }

  v1 = a1;
  if (a1 > 0xDu)
  {
    return 0;
  }

  result = 1;
  if (((1 << v1) & 0x2832) == 0)
  {
    return 0;
  }

  return result;
}

uint64_t obj_create_bootstrap(pthread_mutex_t *a1, uint64_t a2, unint64_t a3, unsigned int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t *a8)
{
  if (a6 >= 0x1000)
  {
    return obj_create_internal(a1, a2, a3, a4, a5, a6, 0, 0, a7, 1, a8);
  }

  else
  {
    return 22;
  }
}

uint64_t obj_create_internal(pthread_mutex_t *a1, uint64_t a2, unint64_t a3, unsigned int *a4, uint64_t a5, uint64_t a6, char *a7, unint64_t a8, uint64_t a9, char a10, uint64_t *a11)
{
  v11 = *a1[6].__opaque;
  if (a7)
  {
    v12 = a7;
  }

  else
  {
    v12 = *a1[6].__opaque;
  }

  v79 = 0;
  v78 = 0;
  if (!a4)
  {
    return 22;
  }

  if (a4[3] < 0x178)
  {
    return 22;
  }

  v16 = a6;
  if (!a6)
  {
    v16 = a4[2];
    if (!v16)
    {
      if (!v11)
      {
        return 22;
      }

      v16 = *(*(v11 + 376) + 36);
      if (!v16)
      {
        return 22;
      }
    }
  }

  v19 = a10;
  if ((a10 & 1) == 0)
  {
    if (v16 % *(*(v11 + 376) + 36))
    {
      return 22;
    }
  }

  v20 = a2 | (*(a4 + 1) << 16);
  v21 = v20 & 0xC0000000;
  v22 = ((v20 >> 30) & 1) + (v20 >> 31);
  if ((v20 & 0xC0000000) == 0)
  {
    ++v22;
  }

  if ((v20 & 0x88000000) == 0x8000000 || v22 != 1)
  {
    return 22;
  }

  v26 = a2 | (*(a4 + 1) << 16);
  if (a7)
  {
    v26 = a2 | (*(a4 + 1) << 16);
    if ((v20 & 0xC0000000) == 0)
    {
      v27 = *(a7 + 63);
      if (!v27)
      {
        v27 = a7;
      }

      if (*(*(v27 + 47) + 264))
      {
        v26 = v20 & 0xFFFFFFFF2FFF03FFLL;
      }

      else
      {
        v68 = a5;
        v28 = v20 | 0x10000000;
        if (a4[1] == 36 || (v71 = a4[1], has_secondary_fsroot = apfs_has_secondary_fsroot(a7), v28 = v20 | 0x10000000, v71 == 37) && has_secondary_fsroot)
        {
          v30 = v28 & 0xFFFFFFFF3FFF1FFFLL | 0x2000;
        }

        else
        {
          v30 = v20 & 0xFFFFFFFF2FFF1FFFLL | 0x10000000;
        }

        v74 = v30;
        v31 = apfs_has_secondary_fsroot(a7);
        v32 = 1024;
        if (!v31)
        {
          v32 = 0;
        }

        v21 = v20 & 0xC0000000;
        v26 = v32 | v74 & 0xFFFFFFFFFFFFE3FFLL;
        a5 = v68;
      }
    }
  }

  v33 = a9;
  if ((v26 & 0x10000000) != 0)
  {
    v77 = 0;
    if ((v26 & 0x8000000) != 0)
    {
      goto LABEL_47;
    }
  }

  else
  {
    if (*a4 == 11 || a4[1] == 11)
    {
      v34 = 2;
    }

    else
    {
      v34 = 1;
    }

    v77 = v34;
    if ((v26 & 0x8000000) != 0)
    {
      goto LABEL_47;
    }
  }

  if ((a10 & 1) == 0)
  {
    if (*(v11 + 627))
    {
      return 30;
    }

    v69 = v12;
    v75 = v26;
    v35 = v21;
    v36 = a5;
    is_current_tx = xid_is_current_tx(v11, a9);
    a5 = v36;
    v21 = v35;
    v19 = a10;
    v26 = v75;
    v12 = v69;
    v33 = a9;
    if (!is_current_tx)
    {
      return 22;
    }
  }

LABEL_47:
  v38 = v33;
  if (a8)
  {
    v38 = a8;
    if (a8 > v33)
    {
      return 22;
    }
  }

  v65 = v38;
  v70 = a5;
  v72 = v33;
  v73 = v21;
  v76 = v26;
  if (a3)
  {
    v39 = 1;
  }

  else
  {
    v39 = v19;
  }

  v80 = 0;
  if ((v20 & 0x40000000) == 0)
  {
    v39 = 1;
  }

  v66 = v39;
  if (v39)
  {
    LODWORD(v67) = 0;
    if (v21)
    {
      goto LABEL_63;
    }

    goto LABEL_60;
  }

  v67 = (v16 + *(*(v11 + 376) + 36) - 1) / *(*(v11 + 376) + 36);
  v40 = spaceman_alloc(v12, 72, v67, v33, &v77, 0);
  if (v40)
  {
    v24 = v40;
    log_err("%s:%d: %s flags 0x%llx type 0x%x/0x%x error allocating new physical location %d\n");
    return v24;
  }

  v33 = v72;
  if (!v73)
  {
LABEL_60:
    v41 = (v16 + *(*(v11 + 376) + 36) - 1) / *(*(v11 + 376) + 36);
    v42 = spaceman_reserve(v12, 0x48u, v41, v33, &v78);
    if (v42)
    {
      v24 = v42;
      log_err("%s:%d: %s flags 0x%llx type 0x%x/0x%x error reserving %d blocks of space: %d\n", "obj_create_internal");
      return v24;
    }

    LODWORD(v67) = v41;
  }

LABEL_63:
  pthread_mutex_lock(a1);
  v43 = obj_alloc(a1, a4[3], *a4, v16, v76, 0, &v80);
  if (v43)
  {
    v24 = v43;
LABEL_99:
    obj_cache_unlock_write(a1);
    if ((v66 & 1) == 0)
    {
      spaceman_free(v12, 64, v77, v67, v72);
    }

    if (!v73)
    {
      spaceman_unreserve(v12, v78, v67);
    }

    return v24;
  }

  v44 = v80;
  v45 = 66;
  if ((v76 & 0x40) != 0)
  {
    v45 = 0x100000004ALL;
  }

  v46 = *(v80 + 16) | v76 & 0xFFFFFC00 | v45 | (v76 << 14) & 0x400000000000;
  *(v80 + 16) = v46;
  v48 = *a4;
  v47 = a4[1];
  v49 = v44;
  v50 = v48 | v76 & 0xFFFF0000;
  *(v44 + 36) = v50;
  *(v44 + 40) = v47;
  if (!a7 || (v51 = *(a7 + 63)) == 0)
  {
    v51 = a7;
  }

  *(v44 + 8) = v51;
  *(v44 + 120) = v65;
  *(v44 + 144) = 0;
  if ((v20 & 0x80000000) != 0)
  {
    if (!a3)
    {
      if ((v76 & 0x8000000) == 0)
      {
        v52 = *&a1[6].__opaque[8];
        *(v44 + 112) = v52;
        *&a1[6].__opaque[8] = v52 + 1;
        if (trace_obj_alloc != 1)
        {
          goto LABEL_91;
        }

        v53 = "ephemeral";
        goto LABEL_75;
      }

      v56 = *&a1[6].__opaque[16];
      *(v44 + 112) = v56;
      *&a1[6].__opaque[16] = v56 + 1;
      goto LABEL_91;
    }

LABEL_90:
    *(v49 + 112) = a3;
    goto LABEL_91;
  }

  if ((v20 & 0x40000000) != 0)
  {
    if (a3)
    {
      v77 = a3;
    }

    else
    {
      a3 = v77;
    }

    *(v44 + 128) = a3;
    goto LABEL_90;
  }

  if (v73)
  {
    goto LABEL_91;
  }

  v54 = 0x800000120;
  if ((v78 & 0x10) == 0)
  {
    v54 = 0x400000120;
  }

  *(v49 + 16) = v54 & 0xFFFFEFFFFFFFFFFFLL | ((((v78 & 0x10000) >> 16) & 1) << 44) | v46;
  if (a3)
  {
    goto LABEL_90;
  }

  v55 = *&a1[6].__opaque[8];
  *(v49 + 112) = v55;
  *&a1[6].__opaque[8] = v55 + 1;
  if (trace_obj_alloc == 1 && (obj_type_expected != v50 || obj_subtype_expected != v47))
  {
    v53 = "virtual";
LABEL_75:
    report_obj_alloc(v49, v53);
  }

LABEL_91:
  if ((*(v49 + 19) & 0x20) == 0)
  {
    v57 = *(v49 + 56);
    *(v57 + 24) = *(v49 + 36);
    *(v57 + 8) = *(v49 + 112);
  }

  if ((~atomic_fetch_add_explicit((v49 + 24), 1uLL, memory_order_relaxed) & 0xFFFFFF) == 0)
  {
    panic("Reference count overflowed for object %p!\n", v49);
  }

  v58 = obj_descriptor_funcs_for_type(*(v49 + 36), &v79);
  if (v58 || (v59 = v79, *v79) && (v58 = (*v79)(*(v49 + 56), v16, v70), v58) || (v60 = v59[1]) != 0 && (v58 = v60(v49, v70), v58))
  {
    v24 = v58;
    if ((v76 & 0x80000000) != 0)
    {
      obj_cache_ephemeral_adjust(a1, v76, v16, -1);
    }

    else
    {
      --*&a1[10].__opaque[36];
    }

    obj_destroy_internal(v49, 0);
    goto LABEL_99;
  }

  obj_init_wakeup(v49, v76);
  v61 = (*a1[11].__opaque + 8 * (*(v49 + 112) & LODWORD(a1[11].__sig)));
  v62 = *v61;
  *(v49 + 72) = *v61;
  if (v62)
  {
    *(v62 + 80) = v49 + 72;
  }

  *v61 = v49;
  *(v49 + 80) = v61;
  *(v49 + 16) |= 1uLL;
  if ((v76 & 0x80000000) != 0)
  {
    *(v49 + 88) = 0;
    v63 = 768;
    if ((v76 & 0x8000000) == 0)
    {
      v63 = 752;
    }

    v64 = *(&a1->__sig + v63);
    *(v49 + 96) = v64;
    *v64 = v49;
    *(&a1->__sig + v63) = v49 + 88;
  }

  if ((v19 & 1) == 0)
  {
    obj_dirty_locked(v49, v72, 0);
  }

  obj_cache_unlock_write(a1);
  if ((v76 & 4) != 0)
  {
    obj_lock(v49, 2);
  }

  v24 = 0;
  *a11 = v49;
  return v24;
}

uint64_t obj_clone(uint64_t a1, uint64_t a2, atomic_ullong **a3, _BYTE *a4)
{
  v8 = *(a1 + 56);
  v9 = *a1;
  v32[0] = 0;
  v32[1] = 0;
  v31 = 0;
  if (a4)
  {
    *a4 = 0;
  }

  if ((a2 & 0x210) == 0)
  {
    v25 = obj_descriptor_and_flags_for_type(*(a1 + 36), &v31, v32);
    if (v25)
    {
      return v25;
    }
  }

  v10 = *(a1 + 16);
  if ((v10 & 2) != 0)
  {
    return 22;
  }

  v33 = 0;
  v11 = v10 | 2;
  *(a1 + 16) = v10 | 2;
  if (*a3)
  {
    v33 = *a3;
    goto LABEL_7;
  }

  v25 = obj_alloc(v9, *(a1 + 44), *(a1 + 36), *(a1 + 48), v10 & 0xC0000000, a4, &v33);
  if (v25)
  {
    return v25;
  }

  v11 = *(a1 + 16);
LABEL_7:
  LODWORD(v12) = v11 & 0xFFFFFFFB;
  *(a1 + 16) = v11 & 0xFFFFFE7FFFFFFFFBLL;
  if (!*(a1 + 52))
  {
    LODWORD(v12) = v11 & 0xFFFFFFF9;
    *(a1 + 16) = v11 & 0xFFFFFE7FFFFFFFF9;
  }

  if ((v11 & 4) != 0)
  {
    cv_wakeup((*a1 + 1328));
    v12 = *(a1 + 16);
  }

  v13 = v33;
  *(v33 + 36) = *(a1 + 36);
  v14 = *(a1 + 8);
  *(v13 + 112) = *(a1 + 112);
  *(v13 + 128) = *(a1 + 128);
  v15 = v12 & 0xFFFFFC00 | *(v13 + 16);
  v16 = v15 | 0x40000000002;
  *(v13 + 8) = v14;
  *(v13 + 16) = v15 | 0x40000000002;
  if ((a2 & 0x50) != 0)
  {
    v16 = v15 | 0x4000000000ALL;
    *(v13 + 16) = v15 | 0x4000000000ALL;
    if ((a2 & 0x40) != 0)
    {
      v16 = v15 | 0x4100000000ALL;
      *(v13 + 16) = v15 | 0x4100000000ALL;
    }
  }

  if ((a2 & 0x100000200) != 0)
  {
    *(v13 + 16) = v16 | (a2 << 14) & 0x400000000000 | (a2 << 34) & 0x80000000000;
  }

  memcpy(*(v13 + 56), v8, *(a1 + 48));
  if ((a2 & 0x210) != 0)
  {
    goto LABEL_17;
  }

  v30 = 0;
  memcpy((v13 + 376), (a1 + 376), *(a1 + 44) - 376);
  v27 = obj_descriptor_funcs_for_type(*(a1 + 36), &v30);
  if (v27)
  {
    v24 = v27;
    goto LABEL_38;
  }

  v29 = *(v30 + 8);
  if (v29)
  {
    v24 = v29(v13, 0);
    if (v24)
    {
LABEL_38:
      v28 = *(v13 + 16);
      if ((v28 & 0x80000000) != 0)
      {
        obj_cache_ephemeral_adjust(v9, v28, *(v13 + 48), -1);
      }

      else
      {
        --*(v9 + 684);
      }

      if (*a3)
      {
        *(v13 + 16) &= ~0x40000000000uLL;
      }

      else
      {
        obj_destroy_internal(v13, 0);
      }

      return v24;
    }
  }

LABEL_17:
  v17 = (*(v9 + 712) + 8 * (*(v13 + 112) & *(v9 + 704)));
  v18 = *v17;
  *(v13 + 72) = *v17;
  if (v18)
  {
    *(v18 + 80) = v13 + 72;
  }

  *v17 = v13;
  *(v13 + 80) = v17;
  v19 = *(v13 + 16);
  *(v13 + 16) = v19 | 1;
  v20 = *(a1 + 16);
  if ((v20 & 0x80000000) != 0)
  {
    *(v13 + 88) = 0;
    v21 = (v20 & 0x8000000) == 0;
    v22 = 768;
    if (v21)
    {
      v22 = 752;
    }

    v23 = *(v9 + v22);
    *(v13 + 96) = v23;
    *v23 = v13;
    *(v9 + v22) = v13 + 88;
  }

  *(v13 + 16) = v19 & 0xFFFFFA7FFFFFFFFALL | 1;
  if ((a2 & 0x10) == 0 && !*(v13 + 52))
  {
    *(v13 + 16) = v19 & 0xFFFFFA7FFFFFFFF8 | 1;
  }

  if ((v19 & 4) != 0)
  {
    cv_wakeup((*v13 + 1328));
  }

  if ((~atomic_fetch_add_explicit((v13 + 24), 1uLL, memory_order_relaxed) & 0xFFFFFF) == 0)
  {
    panic("Reference count overflowed for object %p!\n", v13);
  }

  v24 = 0;
  *a3 = v13;
  return v24;
}

uint64_t obj_descriptor_and_flags_for_type(int a1, unsigned int *a2, uint64_t a3)
{
  v3 = 22;
  switch(a1)
  {
    case 1:
      v4 = &nx_desc;
      goto LABEL_17;
    case 2:
      *a3 = btree_node_desc;
      *a3 = 2;
      goto LABEL_18;
    case 3:
      v4 = &btree_node_desc;
      goto LABEL_17;
    case 5:
      v4 = &sm_desc;
      goto LABEL_17;
    case 6:
      v4 = &sm_cab_desc;
      goto LABEL_17;
    case 7:
      v4 = &sm_cib_desc;
      goto LABEL_17;
    case 8:
      v4 = &sm_bm_desc;
      goto LABEL_17;
    case 11:
      v4 = &om_desc;
      goto LABEL_17;
    case 13:
      v4 = &apfs_desc;
      goto LABEL_17;
    case 17:
      v4 = &nx_reaper_desc;
      goto LABEL_17;
    case 18:
      v4 = &nx_reap_list_desc;
      goto LABEL_17;
    case 25:
      v4 = &gbitmap_desc;
      goto LABEL_17;
    case 27:
      v4 = &gbitmap_block_desc;
      goto LABEL_17;
    case 29:
      v4 = &snap_meta_ext_desc;
      goto LABEL_17;
    case 30:
      v4 = &integrity_meta_desc;
LABEL_17:
      *a3 = *v4;
LABEL_18:
      v3 = 0;
      v5 = *a2 | a1 & 0xFFFF0000;
      *a2 = v5;
      *a2 = v5 | (*(a3 + 2) << 16);
      break;
    default:
      return v3;
  }

  return v3;
}

uint64_t obj_alloc(uint64_t a1, unsigned int a2, uint64_t a3, unsigned int a4, uint64_t a5, _BYTE *a6, uint64_t *a7)
{
  v7 = a6;
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v85 = *MEMORY[0x277D85DE8];
  if (a6)
  {
    *a6 = 0;
  }

  if (a2)
  {
    v12 = a2;
  }

  else
  {
    v12 = 376;
  }

  if (a4)
  {
    v13 = 0;
  }

  else
  {
    v14 = *(a1 + 392);
    if (!v14)
    {
      v9 = 0;
      v13 = 22;
      goto LABEL_11;
    }

    v13 = 0;
    v9 = *(*(v14 + 376) + 36);
  }

  LOBYTE(v14) = 1;
LABEL_11:
  v15 = *(a1 + 392);
  if (v12 < 0x178)
  {
    v13 = 22;
    if (!v15)
    {
      goto LABEL_23;
    }

LABEL_19:
    log_err("%s:%d: %s invalid object size: %d size_phys %d\n");
    return v13;
  }

  if (v15)
  {
    if (v9 % *(*(v15 + 376) + 36))
    {
      LOBYTE(v14) = 0;
      v13 = 22;
    }

    else
    {
      v13 = v13;
    }

    if ((v14 & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  else if ((v14 & 1) == 0)
  {
LABEL_23:
    log_err("%s:%d: invalid object size: %d size_phys %d\n");
    return v13;
  }

  v69 = v12;
  v67 = a3;
  v66 = v9;
  if ((a5 & 0x80000000) != 0)
  {
    v65 = 0;
    v20 = 0;
    v63 = 0;
    goto LABEL_95;
  }

  v16 = 0;
  v65 = 0;
  v17 = 0;
  v63 = 0;
  v71 = 0;
  v18 = *(a1 + 684);
  while (2)
  {
    if (v18 < *(a1 + 676))
    {
      v21 = 0;
      goto LABEL_93;
    }

    v22 = (v8 & 0x40000000) == 0;
    if ((v8 & 0x40000000) != 0)
    {
      v23 = (a1 + 792);
    }

    else
    {
      v23 = (a1 + 776);
    }

    if (v22)
    {
      v24 = (a1 + 792);
    }

    else
    {
      v24 = (a1 + 776);
    }

    while (1)
    {
      v25 = pthread_rwlock_wrlock((a1 + 128));
      if (v25)
      {
        panic("%s:%d: wrlock == 0 failed %d\n", "/Library/Caches/com.apple.xbs/Sources/apfs_framework/nx/obj.c", 2308, v25);
      }

      v26 = *(a1 + 808);
      if (v26)
      {
        if ((*(v26 + 32) & 0x10) != 0)
        {
          obj_cache_perform_deferred_updates(a1);
          v28 = pthread_rwlock_unlock((a1 + 128));
          if (v28)
          {
            panic("%s:%d: unlock == 0 failed %d\n", "/Library/Caches/com.apple.xbs/Sources/apfs_framework/nx/obj.c", 2313, v28);
          }

          goto LABEL_51;
        }

        if (*(a1 + 924) > *(a1 + 696))
        {
          goto LABEL_73;
        }

        __tp.tv_sec = 0;
        __tp.tv_nsec = 0;
        clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &__tp);
        if (__tp.tv_sec - *(v26 + 160) > 29)
        {
          goto LABEL_73;
        }
      }

      v26 = *v23;
      if (*v23)
      {
        if ((*(v26 + 32) & 0x10) != 0)
        {
          goto LABEL_49;
        }

        v27 = *v24;
        if (!*v24)
        {
          break;
        }
      }

      else
      {
        v27 = *v24;
        if (!*v24)
        {
          v21 = 0;
          v26 = 0;
          goto LABEL_62;
        }
      }

      if ((*(v27 + 32) & 0x10) == 0)
      {
        break;
      }

LABEL_49:
      obj_cache_perform_deferred_updates(a1);
      v29 = pthread_rwlock_unlock((a1 + 128));
      if (v29)
      {
        panic("%s:%d: unlock == 0 failed %d\n", "/Library/Caches/com.apple.xbs/Sources/apfs_framework/nx/obj.c", 2364, v29);
      }

LABEL_51:
      if (*(a1 + 684) < *(a1 + 676))
      {
        v21 = 0;
        v8 = a5;
        v12 = v69;
        v10 = v67;
        v9 = v66;
        goto LABEL_93;
      }
    }

    if ((*(a1 + 1320) & 4) != 0)
    {
      goto LABEL_58;
    }

    __tp.tv_sec = 0;
    __tp.tv_nsec = 0;
    clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &__tp);
    if (!v26 || __tp.tv_sec - *(v26 + 160) <= 599)
    {
      if (v27)
      {
        if (__tp.tv_sec - *(v27 + 160) > 599)
        {
          goto LABEL_68;
        }

LABEL_58:
        if (*(a1 + 684) < *(a1 + 680))
        {
          goto LABEL_59;
        }

        if (v27)
        {
          if (v26)
          {
            if (*(v27 + 160) < *(v26 + 160))
            {
              v26 = v27;
            }

            goto LABEL_73;
          }

LABEL_68:
          v26 = v27;
          goto LABEL_73;
        }

        if (v26)
        {
          goto LABEL_73;
        }

LABEL_59:
        v21 = 0;
      }

      else
      {
        v21 = 0;
        if (v26 && *(a1 + 684) >= *(a1 + 680))
        {
          goto LABEL_73;
        }
      }

      v26 = 0;
LABEL_62:
      v8 = a5;
      v10 = v67;
      v9 = v66;
      goto LABEL_88;
    }

LABEL_73:
    v9 = v66;
    if (*(v26 + 44) == v69 && *(v26 + 48) == v66)
    {
      obj_free_list_remove(v26);
      v8 = a5;
      v10 = v67;
      if (v16)
      {
        fs_obj_zfree_oc(v71, v66, a5, a1);
        free_rwlock((v16 + 176));
        obj_type_free(v16, v67, v69);
        v71 = 0;
        v63 = 1;
      }

      v30 = *(v26 + 16);
      v65 = 1;
      if (v30)
      {
        v31 = *(v26 + 72);
        v32 = *(v26 + 80);
        if (v31)
        {
          *(v31 + 80) = v32;
        }

        v16 = 0;
        *v32 = v31;
        *(v26 + 16) = v30 & 0xFFFFFFFFFFFFFFFELL;
        v65 = 1;
      }

      else
      {
        v16 = 0;
      }

      v21 = v26;
LABEL_87:
      v26 = 0;
    }

    else
    {
      v8 = a5;
      v10 = v67;
      if ((*(v26 + 21) & 0x40) == 0)
      {
        v65 = 1;
        if (*(a1 + 684) < *(a1 + 680))
        {
          v21 = 0;
          goto LABEL_87;
        }
      }

      obj_free_list_remove(v26);
      v21 = 0;
      --*(a1 + 684);
      v65 = 1;
    }

LABEL_88:
    v33 = pthread_rwlock_unlock((a1 + 128));
    if (v33)
    {
      panic("%s:%d: unlock == 0 failed %d\n", "/Library/Caches/com.apple.xbs/Sources/apfs_framework/nx/obj.c", 2427, v33);
    }

    if (v26)
    {
      obj_destroy_internal(v26, 0);
    }

    v12 = v69;
LABEL_93:
    if (v21 | v16)
    {
      if (v21)
      {
        v20 = v17;
        v84 = 0;
        v82 = 0u;
        v83 = 0u;
        v80 = 0u;
        v81 = 0u;
        v78 = 0u;
        v79 = 0u;
        v76 = 0u;
        v77 = 0u;
        v74 = 0u;
        v75 = 0u;
        __tp = 0;
        v73 = 0u;
        v41 = obj_destroy_for_obj(v21);
        if (v41)
        {
          v42 = v41;
          obj_cache_unlock_write(a1);
          if (a6)
          {
            *a6 = 1;
          }

          v43 = v42(v21);
          if (v43)
          {
            v44 = *(v21 + 8);
            if (v44)
            {
              v45 = (v44 + 4040);
            }

            else
            {
              v45 = (*(*(*v21 + 392) + 384) + 212);
            }

            log_err("%s:%d: %s oid 0x%llx flags 0x%llx 0x%x type 0x%x/0x%x error destroying: %d\n", "obj_alloc", 2523, v45, *(v21 + 112), *(v21 + 16), *(v21 + 32), *(v21 + 36), *(v21 + 40), v43);
          }

          pthread_mutex_lock(a1);
        }

        v46 = *(v21 + 56);
        v47 = *(v21 + 352);
        v82 = *(v21 + 336);
        v83 = v47;
        v84 = *(v21 + 368);
        v48 = *(v21 + 288);
        v78 = *(v21 + 272);
        v79 = v48;
        v49 = *(v21 + 320);
        v80 = *(v21 + 304);
        v81 = v49;
        v50 = *(v21 + 224);
        v74 = *(v21 + 208);
        v75 = v50;
        v51 = *(v21 + 256);
        v76 = *(v21 + 240);
        v77 = v51;
        v52 = *(v21 + 192);
        __tp = *(v21 + 176);
        v73 = v52;
        v71 = v46;
        bzero(v46, v9);
        bzero(v21, v12);
        v53 = v83;
        *(v21 + 336) = v82;
        *(v21 + 352) = v53;
        *(v21 + 368) = v84;
        v54 = v79;
        *(v21 + 272) = v78;
        *(v21 + 288) = v54;
        v55 = v81;
        *(v21 + 304) = v80;
        *(v21 + 320) = v55;
        v56 = v75;
        *(v21 + 208) = v74;
        *(v21 + 224) = v56;
        v57 = v77;
        *(v21 + 240) = v76;
        *(v21 + 256) = v57;
        v58 = v73;
        v17 = v20;
        *(v21 + 176) = __tp;
        *(v21 + 192) = v58;
      }

      else
      {
        ++*(a1 + 684);
        v21 = v16;
        v20 = v17;
      }

      break;
    }

    v20 = v17;
    v7 = a6;
LABEL_95:
    obj_cache_unlock_write(a1);
    if (v7)
    {
      *v7 = 1;
    }

    v34 = _apfs_obj_zalloc(v9, *(a1 + 952));
    obj_cache_stats_update_zalloc((a1 + 976), v8, v34, v9);
    v71 = v34;
    obj_cache_stats_update_zalloc((omm + 136), v8, v34, v9);
    if (v10 > 0xCu)
    {
      if (v10 <= 0x18u)
      {
        if (v10 == 13)
        {
          v35 = 0x10B004081236861;
          v36 = 6256;
          goto LABEL_127;
        }

        if (v10 != 17)
        {
          if (v10 != 18)
          {
            goto LABEL_119;
          }

          v35 = 0x10A0040009CC2E3;
          v36 = 384;
          goto LABEL_127;
        }

        v38 = -1969217434;
      }

      else
      {
        if (v10 <= 0x1Cu)
        {
          if (v10 == 25)
          {
            v35 = 0x10A0040906DED57;
            v36 = 416;
            goto LABEL_127;
          }

          if (v10 != 27)
          {
            goto LABEL_119;
          }

          v35 = 0x10B0040200AD5F0;
          goto LABEL_123;
        }

        if (v10 == 29)
        {
          v35 = 0x10A00404C324ACELL;
LABEL_123:
          v36 = 392;
          goto LABEL_127;
        }

        if (v10 != 30)
        {
          goto LABEL_119;
        }

        v38 = -1209887300;
      }

      v35 = v38 | 0x10B004000000000;
      v36 = 400;
      goto LABEL_127;
    }

    if (v10 > 5u)
    {
      if (v10 - 6 < 3)
      {
        goto LABEL_109;
      }

      if (v10 != 11)
      {
        goto LABEL_119;
      }

      v35 = 0x10A0040FDA1D44DLL;
      v36 = 496;
LABEL_127:
      v37 = _apfs_calloc_typed(1uLL, v36, v35);
    }

    else
    {
      if (v10 - 2 >= 2)
      {
        if (v10 == 1)
        {
          v35 = 0x10A0040F77FBBF2;
          v36 = 1192;
        }

        else
        {
          if (v10 == 5)
          {
            v35 = 0x10B00403059A9A9;
            v36 = 1664;
            goto LABEL_127;
          }

LABEL_119:
          v35 = 0x10A00402D31E437;
          v36 = 376;
        }

        goto LABEL_127;
      }

LABEL_109:
      v37 = _apfs_zalloc(4u);
    }

    v21 = v37;
    v39 = v71;
    if (!v71 || !v21)
    {
      v13 = 12;
      if (!v71)
      {
        goto LABEL_145;
      }

      goto LABEL_144;
    }

    *(v21 + 24) = 0;
    v40 = new_rwlock((v21 + 176));
    if (v40)
    {
      v13 = v40;
      v39 = v71;
LABEL_144:
      fs_obj_zfree_oc(v39, v9, v8, a1);
LABEL_145:
      if (v21)
      {
        obj_type_free(v21, v10, v12);
      }

      pthread_mutex_lock(a1);
      return v13;
    }

    pthread_mutex_lock(a1);
    if ((v8 & 0x80000000) != 0)
    {
      v17 = 1;
      obj_cache_ephemeral_adjust(a1, v8, v9, 1);
    }

    else
    {
      v18 = *(a1 + 684);
      v17 = 1;
      if (*(a1 + 680) - 1 < v18)
      {
        v16 = v21;
        continue;
      }

      *(a1 + 684) = v18 + 1;
    }

    break;
  }

  v59 = a7;
  *v21 = a1;
  *(v21 + 36) = v10;
  *(v21 + 44) = v12;
  *(v21 + 48) = v9;
  *(v21 + 56) = v71;
  *(v21 + 88) = 3735928559;
  *(v21 + 104) = 3735928559;
  *(v21 + 160) = -1;
  if ((v8 & 0x80000000) == 0)
  {
    atomic_fetch_add_explicit((a1 + 1056), 1uLL, memory_order_relaxed);
    if (v17)
    {
      atomic_fetch_add_explicit((a1 + 1064), 1uLL, memory_order_relaxed);
      if (v20)
      {
        atomic_fetch_add_explicit((a1 + 1072), 1uLL, memory_order_relaxed);
      }

      v60 = 104;
      if (v63)
      {
        v60 = 112;
      }

      atomic_fetch_add_explicit((a1 + 976 + v60), 1uLL, memory_order_relaxed);
    }

    if (v65)
    {
      atomic_fetch_add_explicit((a1 + 1096), 1uLL, memory_order_relaxed);
    }

    v61 = omm;
    atomic_fetch_add_explicit((omm + 216), 1uLL, memory_order_relaxed);
    if (v17)
    {
      atomic_fetch_add_explicit(v61 + 28, 1uLL, memory_order_relaxed);
      if (v20)
      {
        atomic_fetch_add_explicit(v61 + 29, 1uLL, memory_order_relaxed);
      }

      v62 = 13;
      if (v63)
      {
        v62 = 14;
      }

      atomic_fetch_add_explicit(&v61[v62 + 17], 1uLL, memory_order_relaxed);
      v59 = a7;
    }

    if (v65)
    {
      atomic_fetch_add_explicit(v61 + 32, 1uLL, memory_order_relaxed);
    }
  }

  v13 = 0;
  *v59 = v21;
  return v13;
}

uint64_t obj_init_wakeup(uint64_t result, char a2)
{
  v2 = *(result + 16);
  *(result + 16) = v2 & 0xFFFFFE7FFFFFFFFBLL;
  if ((a2 & 0x10) == 0 && !*(result + 52))
  {
    *(result + 16) = v2 & 0xFFFFFE7FFFFFFFF9;
  }

  if ((v2 & 4) != 0)
  {
    return cv_wakeup((*result + 1328));
  }

  return result;
}

uint64_t obj_descriptor_funcs_for_type(__int16 a1, void *a2)
{
  v2 = a1 - 1;
  if ((a1 - 1) > 0x1Du || ((0x350314F7u >> v2) & 1) == 0)
  {
    return 22;
  }

  result = 0;
  *a2 = off_278BC6818[v2];
  return result;
}

void obj_delete_internal(uint64_t *a1, uint64_t a2, int a3)
{
  v6 = *a1;
  if ((*(a1 + 19) & 8) == 0 && !xid_is_current_tx(*(v6 + 392), a2))
  {
    panic("can not delete an object w/a non-current xid %lld o == %p\n", a2, a1);
  }

  pthread_mutex_lock(v6);
  while (1)
  {
    v7 = a1[2];
    if ((v7 & 0x20000000000) == 0)
    {
      break;
    }

    a1[2] = v7 | 0x80;
    cv_wait_rw((v6 + 1328), v6, 2, 0);
  }

  a1[2] = v7 | 0x10;
  a1[18] = a2;
  if ((v7 & 0x80000000) != 0)
  {
    if (a3)
    {
      a1[2] = v7 & 0xFFFFFDEFFFFFFFE7 | 0x18;
    }

    obj_cache_unlock_write(v6);
  }

  else
  {
    v8 = a1[19];
    if (!v8)
    {
      v8 = a1[16];
    }

    v25 = v8;
    a1[16] = 0;
    a1[19] = 0;
    if (atomic_fetch_and_explicit(a1 + 8, 0xFFFFFFFE, memory_order_relaxed))
    {
      v9 = pthread_rwlock_wrlock((v6 + 128));
      if (v9)
      {
        panic("%s:%d: wrlock == 0 failed %d\n", "/Library/Caches/com.apple.xbs/Sources/apfs_framework/nx/obj.c", 3186, v9);
      }

      v10 = a1[11];
      if (v10 != 3735928559)
      {
        if (*(v6 + 888) == a1)
        {
          *(v6 + 888) = v10;
        }

        v11 = a1[12];
        v12 = (v10 + 96);
        if ((*(a1 + 19) & 0x40) != 0)
        {
          if (!v10)
          {
            v12 = (v6 + 848);
          }

          *v12 = v11;
          *v11 = v10;
          --*(v6 + 912);
        }

        else
        {
          if (!v10)
          {
            v12 = (v6 + 832);
          }

          *v12 = v11;
          *v11 = v10;
          --*(v6 + 908);
        }

        a1[11] = 3735928559;
      }

      v13 = pthread_rwlock_unlock((v6 + 128));
      if (v13)
      {
        panic("%s:%d: unlock == 0 failed %d\n", "/Library/Caches/com.apple.xbs/Sources/apfs_framework/nx/obj.c", 3200, v13);
      }
    }

    v14 = a1[1];
    if (!v14)
    {
      v14 = *(v6 + 392);
    }

    v15 = a1[2];
    v16 = a1[15];
    if (a3)
    {
      a1[2] = v15 & 0xFFFFFFEFFFFFFFF7 | 8;
    }

    v17 = a1[18];
    v18 = *(a1 + 12);
    v19 = a1[14];
    v21 = *(a1 + 9);
    v20 = *(a1 + 10);
    obj_cache_unlock_write(v6);
    if (!(v8 | v15 & 0x40))
    {
      v22 = omap_get(v14, v19, v16, &v25, 0, 0, 0);
      if (v22)
      {
        if (*(v14 + 36) == 13)
        {
          v23 = (v14 + 4040);
        }

        else
        {
          v23 = (*(v14 + 384) + 212);
        }

        log_err("%s:%d: %s oid 0x%llx flags 0x%llx type 0x%x/0x%x error getting mapping to free %d\n", "obj_delete_internal", 3222, v23, v19, v15, v21, v20, v22);
      }

      v8 = v25;
    }

    if (v8)
    {
      if ((v15 & 0x40000000) != 0)
      {
        v24 = *(*(*(v6 + 392) + 376) + 36);
        if (spaceman_free(v14, 64, v8, (v18 + v24 - 1) / v24, v17))
        {
          log_err("%s:%d: %s oid 0x%llx flags 0x%llx type 0x%x/0x%x error freeing space %d\n", "obj_delete_internal");
        }
      }

      else if (omap_delete(v14, v19, v16, v8, v18, 1, v17))
      {
        log_err("%s:%d: %s oid 0x%llx flags 0x%llx type 0x%x/0x%x error deleting mapping %d\n", "obj_delete_internal");
      }
    }
  }
}

void obj_free(uint64_t a1)
{
  v2 = *a1;
  pthread_mutex_lock(*a1);
  *(a1 + 16) = *(a1 + 16) & 0xFFFFFFEFFFFFFFF7 | 8;

  obj_cache_unlock_write(v2);
}

uint64_t obj_delete_and_free_by_oid(uint64_t a1, int a2, int a3, unint64_t a4, unint64_t a5, unint64_t a6)
{
  v12 = *(a1 + 392);
  v28 = 0;
  v29 = 0;
  v27 = 0;
  v26[0] = 0;
  v26[1] = 0;
  v13 = obj_descriptor_and_flags_for_type(a2, &v27, v26);
  if (!v13)
  {
    v25 = 0;
    if (a4)
    {
      v15 = obj_get(a1, 0, a4, &apfs_desc, 0, 0, 0, 0, &v29);
      if (v15)
      {
        v13 = v15;
        log_err("%s:%d: %s unable to get fs object 0x%llx: %d\n", "obj_delete_and_free_by_oid", 3310, (v12[48] + 212), a4, v15);
        return v13;
      }

      v16 = v29;
    }

    else
    {
      v16 = 0;
    }

    if (v16)
    {
      v17 = v16;
    }

    else
    {
      v17 = v12;
    }

    v18 = v27;
    v19 = obj_get(a1, v27, a5, 0, 0, v16, 0, 0, &v28);
    if (v19)
    {
      if ((v18 & 0x80000000) != 0)
      {
        v13 = v19;
      }

      else if (v18 >> 30)
      {
        v22 = spaceman_free(v17, 64, a5, (a3 + *(v12[47] + 36) - 1) / *(v12[47] + 36), a6);
        v13 = v22;
        if (v22)
        {
          if (*(v17 + 18) == 13)
          {
            log_err("%s:%d: %s oid 0x%llx flags 0x%x type 0x%x error freeing space %d\n", "obj_delete_and_free_by_oid", 3332, v17 + 4040, a5, v18, a2, v22);
          }

          else
          {
            log_err("%s:%d: %s oid 0x%llx flags 0x%x type 0x%x error freeing space %d\n", "obj_delete_and_free_by_oid", 3332, (v17[48] + 212), a5, v18, a2, v22);
          }
        }
      }

      else
      {
        v24 = 0;
        v23 = 0;
        v20 = omap_get(v17, a5, 0, &v25, &v24, 0, &v23);
        if (v20)
        {
          v13 = v20;
          log_err("%s:%d: %s oid 0x%llx flags 0x%x type 0x%x error getting mapping to free %d\n");
        }

        else
        {
          v13 = omap_delete(v17, a5, v23, v25, a3, 1, a6);
          if (v13)
          {
            log_err("%s:%d: %s oid 0x%llx flags 0x%x type 0x%x error deleting mapping %d\n");
          }
        }

        v16 = v29;
      }
    }

    else
    {
      v21 = v28;
      obj_delete_internal(v28, a6, 1);
      obj_release(v21);
      v13 = 0;
    }

    if (v16)
    {
      obj_release(v16);
    }
  }

  return v13;
}

uint64_t obj_get(uint64_t a1, unint64_t a2, unint64_t a3, int *a4, uint64_t a5, uint64_t *a6, unint64_t a7, unint64_t a8, uint64_t *a9)
{
  v9 = a2;
  v113 = a2;
  v110 = a7 & ((a2 << 60) >> 63);
  v111 = 0;
  v108 = 0;
  v109 = 16000;
  v105 = 0;
  *a9 = 0;
  if ((~a2 & 0xC0000000) == 0)
  {
    return 22;
  }

  v13 = a7;
  if ((a2 & 0x8000001) == 1)
  {
    is_current_tx = xid_is_current_tx(*(a1 + 392), a8);
    finish = 22;
    if ((~v9 & 0x180) == 0 || !is_current_tx)
    {
      return finish;
    }
  }

  else if ((~a2 & 0x180) == 0)
  {
    return 22;
  }

  if ((~v9 & 0x81) == 0 || (v9 & 0x100) != 0 && (v9 & 0x15) != 0)
  {
    return 22;
  }

  finish = 22;
  if ((v9 & 0x210) == 0x200 || !a3)
  {
    return finish;
  }

  if (*(a1 + 1376))
  {
    pthread_mutex_lock(a1);
    v107 = 2;
    oc_poll_async_prefetch_objects(a1, &v105);
    if (v105 == 1)
    {
      obj_cache_unlock_write(a1);
    }
  }

  if (a4)
  {
    v9 |= *(a4 + 1) << 16;
    v113 = v9;
  }

  v20 = (v9 >> 30) & 2;
  v21 = (v9 >> 30) | (v20 >> 1);
  v22 = (v9 & 0x40000000) != 0 || ((v9 >> 30) & 2) != 0 ? 0 : 4;
  if (((v9 >> 30) & 1) + (((v9 >> 30) & 2) >> 1) + ((v9 & 0x40000000) == 0 && ((v9 >> 30) & 2) == 0) != 1 || (((v9 & 0x200) != 0) & v21) != 0)
  {
    return 22;
  }

  if ((v9 & 0x40000000) != 0 || ((v9 >> 30) & 2) != 0)
  {
    v13 = 0;
    v110 = 0;
  }

  if ((v9 & 0x8000000) != 0)
  {
    if (v20)
    {
      v23 = *(a1 + 408);
      if (v23 <= *(a1 + 400))
      {
        v23 = *(a1 + 400);
      }

      goto LABEL_36;
    }

    return 22;
  }

  if (v9 & 1) != 0 && (*(*(a1 + 392) + 627))
  {
    return 30;
  }

  if ((v9 >> 30))
  {
    goto LABEL_37;
  }

  v23 = *(a1 + 400);
LABEL_36:
  if (v23 <= a3)
  {
    return 22;
  }

LABEL_37:
  v97 = a5;
  v24 = v9 >> 30;
  if (a4)
  {
    v26 = *a4;
    v25 = a4[1];
  }

  else
  {
    v26 = 0;
    v25 = 0;
  }

  v103 = v25;
  if (!((a6 == 0) | v21 & 1))
  {
    apfs_encryption_state_for_object(a6, v25, &v113);
    v24 = v9 >> 30;
    v9 = v113;
  }

  v112 = 0;
  v27 = v24 | v22 | 0x20;
  pthread_mutex_lock(a1);
  v28 = v27;
  finish = 0;
  v107 = 1;
  v100 = v9 & 0xFFFF0000 | v26;
  v104 = v26;
  v29 = 512;
  if (!v13)
  {
    v29 = 288;
  }

  v96 = v29;
  v30 = v103;
  while (1)
  {
    v31 = (v28 & 0xFFFFFFBF | (((v9 >> 8) & 1) << 6)) ^ 0x40;
    v106 = 0;
    v32 = *(*(a1 + 712) + 8 * (*(a1 + 704) & a3));
    if (v32)
    {
      break;
    }

    if ((v28 & 2) != 0)
    {
LABEL_227:
      v32 = 0;
      v94 = 0;
      finish = 2;
      goto LABEL_237;
    }

LABEL_102:
    if (a4)
    {
      v41 = v112;
      if (v112)
      {
        goto LABEL_109;
      }

      v99 = v31;
      v42 = v107;
      if (v107 == 1)
      {
        v42 = 2;
      }

      v107 = v42;
      v44 = a4[2];
      v43 = a4[3];
    }

    else
    {
      if ((v113 & 0x10) == 0)
      {
        v32 = 0;
        v94 = 0;
        goto LABEL_237;
      }

      v41 = v112;
      if (v112)
      {
LABEL_109:
        v45 = v113;
        goto LABEL_121;
      }

      v99 = v31;
      v43 = 0;
      v44 = 0;
      v47 = v107;
      if (v107 == 1)
      {
        v47 = 2;
      }

      v107 = v47;
    }

    v45 = v113;
    v48 = obj_alloc(a1, v43, v100, v44, v113, &v106, &v112);
    if (v48)
    {
      finish = v48;
      v32 = 0;
LABEL_235:
      v94 = 0;
      goto LABEL_236;
    }

    v31 = v99;
    finish = 0;
    if (v106)
    {
      goto LABEL_180;
    }

    v41 = v112;
LABEL_121:
    v112 = 0;
    v49 = v45 & 0xFFFF0000;
    if (a4)
    {
      v50 = a4[1];
      v51 = *a4 | v49;
    }

    else
    {
      v50 = 0;
      v51 = v45 & 0xFFFF0000;
    }

    *(v41 + 9) = v51;
    *(v41 + 10) = v50;
    v41[14] = a3;
    if (!a6 || (v52 = a6[63]) == 0)
    {
      v52 = a6;
    }

    v53 = (*(a1 + 712) + 8 * (*(a1 + 704) & a3));
    v54 = *v53;
    v41[9] = *v53;
    v41[1] = v52;
    v55 = v110;
    if ((v31 & 8) == 0)
    {
      v55 = v13;
    }

    v41[15] = v55;
    if (v31)
    {
      v56 = a3;
    }

    else
    {
      v56 = 0;
    }

    v41[16] = v56;
    v98 = v41 + 16;
    v57 = v41[2];
    v58 = v45 & 0xFC00;
    if ((v31 & 4) != 0)
    {
      v58 = 0;
    }

    if (v54)
    {
      *(v54 + 80) = v41 + 9;
    }

    v59 = v57 | v58 | v49;
    *v53 = v41;
    v41[10] = v53;
    v60 = v59 | 0x10000000003;
    v41[2] = v59 | 0x10000000003;
    if ((v45 & 0x50) != 0)
    {
      v60 = v59 | 0x1000000000BLL;
      v41[2] = v59 | 0x1000000000BLL;
      if ((v45 & 0x40) != 0)
      {
        v60 = v59 | 0x1100000000BLL;
        v41[2] = v59 | 0x1100000000BLL;
      }
    }

    v61 = v60 | (v45 << 14) & 0x400000000000;
    if ((v45 & 0x180) != 0)
    {
      v61 |= 0x8000000000uLL;
    }

    v62 = v61 | (v45 << 34) & 0x80000000000;
    if ((v31 & 4) != 0)
    {
      v62 |= v96;
    }

    if ((v45 & 0x100000380) != 0 || (v31 & 4) != 0)
    {
      v41[2] = v62;
    }

    v101 = v41;
    if ((~atomic_fetch_add_explicit(v41 + 3, 1uLL, memory_order_relaxed) & 0xFFFFFF) == 0)
    {
      panic("Reference count overflowed for object %p!\n", v41);
    }

    if ((v45 & 0x180) != 0)
    {
      v63 = v31;
    }

    else
    {
      v63 = v31 | 0x10;
    }

    obj_cache_unlock_write(a1);
    v107 = 0;
    v95 = v63;
    v99 = v63 & 0xFFFFFF9F;
    if ((v63 & 4) != 0)
    {
      v66 = *(v101 + 8);
      if (!v66)
      {
        v66 = *(a1 + 392);
      }

      finish = omap_get(v66, a3, v13, v98, 0, &v108, &v111);
      v64 = v97;
      if (!finish)
      {
        if ((v45 & 8) == 0 || v111 == v13)
        {
LABEL_152:
          if ((v45 & 0x180) != 0)
          {
            v65 = obj_get_async_read(a1, v45, a4, v64, a6, v101, v111, v108, &v105 + 1);
            finish = v65;
            if (HIBYTE(v105) == 1)
            {
              if (v65)
              {
                v94 = v101;
                obj_free(v101);
                v32 = v101;
              }

              else
              {
                v32 = v101;
                v94 = v101 & ((v45 << 55) >> 63);
              }

LABEL_236:
              LOBYTE(v31) = v99;
              goto LABEL_237;
            }
          }

          else
          {
            finish = obj_read(v101, v111, v108, 0);
          }

          goto LABEL_169;
        }

        finish = 2;
      }
    }

    else
    {
      v64 = v97;
      if (!finish)
      {
        goto LABEL_152;
      }
    }

LABEL_169:
    pthread_mutex_lock(a1);
    v107 = 2;
    v68 = v108;
    v69 = v101;
    if ((v108 & 0xE0) != 0)
    {
      *(v101 + 16) = *(v101 + 16) & 0xFFFFFFFFFFFF1FFFLL | ((v108 >> 5) << 13);
    }

    if ((v68 & 0x700) != 0)
    {
      *(v101 + 16) = *(v101 + 16) & 0xFFFFFFFFFFFFE3FFLL | (((v68 >> 8) & 7) << 10);
    }

    if (finish)
    {
      goto LABEL_229;
    }

    v70 = obj_init(v101, v45, a3, a4, v64, v13, v100, v103);
    if (v70)
    {
      finish = v70;
      v69 = v101;
LABEL_229:
      *(v69 + 52) = finish;
      obj_init_wakeup(v101, v45);
      v94 = v101;
      v32 = 0;
      if ((v95 & 0x10) != 0)
      {
        LOBYTE(v31) = v95 & 0x8F;
      }

      else
      {
        LOBYTE(v31) = v99;
      }

      *(v101 + 16) = *(v101 + 16) & 0xFFFFFFEFFFFFFFF7 | 8;
LABEL_237:
      v83 = v112;
      if (v112)
      {
LABEL_238:
        --*(a1 + 684);
        v84 = v83;
        v85 = v31;
        obj_destroy_internal(v84, 1);
        LOBYTE(v31) = v85;
      }

      goto LABEL_239;
    }

    v31 = v99;
    v33 = v101;
LABEL_178:
    v67 = v31;
    v32 = v33;
    finish = obj_get_finish(v33, v113, v13, (v31 >> 6) & 1, &v109, &v107);
    if (finish != 35)
    {
      v94 = 0;
LABEL_226:
      LOBYTE(v31) = v67;
      goto LABEL_237;
    }

LABEL_179:
    v31 = v67;
LABEL_180:
    v30 = v103;
LABEL_181:
    v9 = v113;
    v28 = v31;
  }

  v33 = 0;
  while (2)
  {
    v34 = *(v32 + 8);
    if (v34 != a6 && (!a6 || v34 != a6[63]))
    {
      goto LABEL_92;
    }

    v35 = *(v32 + 16);
    if (((v35 ^ v9) & 0xC8000000) != 0 || *(v32 + 112) != a3)
    {
      goto LABEL_92;
    }

    if ((v35 & 2) != 0)
    {
      if ((v9 & 0x180) == 0)
      {
        v78 = v107;
        if (v107 == 1)
        {
          v78 = 2;
        }

        v107 = v78;
        *(v32 + 16) = v35 | 4;
        v79 = (v28 & 0xFFFFFFBF | (((v9 >> 8) & 1) << 6)) ^ 0x40;
        obj_initting_wait(v32);
        v30 = v103;
        v31 = v79;
        goto LABEL_181;
      }

      if (*(v32 + 52))
      {
        v94 = 0;
        finish = *(v32 + 52);
        goto LABEL_237;
      }

      if ((~v35 & 0xA) == 0)
      {
        v94 = 0;
        finish = 16;
        goto LABEL_237;
      }

      if ((v9 & 0x100) != 0)
      {
        v94 = 0;
        finish = 0;
        goto LABEL_237;
      }

      v67 = (v28 & 0xFFFFFFBF | (((v9 >> 8) & 1) << 6)) ^ 0x40;
      if ((v35 & 0x8000000000) != 0)
      {
        *(v32 + 16) = v35 | 4;
        cv_wait_rw((a1 + 1328), a1, 2, 0);
        goto LABEL_179;
      }

      if (obj_reference_release_wait(v32, &v109, 0, v107))
      {
        goto LABEL_179;
      }

      v94 = 0;
      finish = 0;
      goto LABEL_226;
    }

    if (v104 && *(v32 + 36) && ((*(v32 + 36) ^ v100) & 0xEFFFFFFF) != 0 || v30 && *(v32 + 40) != v30)
    {
      goto LABEL_92;
    }

    if ((v28 | ((v28 & 2) >> 1)))
    {
      v33 = v32;
      if ((v28 & 2) == 0)
      {
        goto LABEL_94;
      }

LABEL_177:
      if (!v33)
      {
        goto LABEL_227;
      }

      goto LABEL_178;
    }

    if (!v110)
    {
      if (v13)
      {
        v36 = *(v32 + 120);
        if (v36 <= *(v32 + 144))
        {
          v36 = *(v32 + 144);
        }

        goto LABEL_68;
      }

      goto LABEL_71;
    }

    v36 = *(v32 + 120);
    if (v36 <= *(v32 + 144))
    {
      v36 = *(v32 + 144);
    }

    if (!v13)
    {
      if (v36 < v110)
      {
        goto LABEL_92;
      }

LABEL_71:
      v37 = 1;
      goto LABEL_72;
    }

    if (v36 != v110)
    {
      goto LABEL_92;
    }

LABEL_68:
    if (v36 > v13)
    {
      goto LABEL_92;
    }

    v37 = 0;
LABEL_72:
    if (!v33)
    {
      goto LABEL_91;
    }

    v38 = *(v32 + 120);
    if (v38 <= *(v32 + 144))
    {
      v38 = *(v32 + 144);
    }

    v39 = v33[15];
    if (v39 <= v33[18])
    {
      v39 = v33[18];
    }

    if (v38 >= v39)
    {
      if (v38 != v39)
      {
        goto LABEL_85;
      }

      if (v37)
      {
        if ((v35 & 0x200) != 0 && (*(v33 + 17) & 2) == 0)
        {
          goto LABEL_92;
        }

LABEL_85:
        if ((v9 & 0x200) != 0)
        {
          if ((v35 & 0x80000000000) == 0 && (*(v33 + 21) & 8) != 0)
          {
            goto LABEL_92;
          }
        }

        else if ((v35 & 0x80000000000) != 0 && (*(v33 + 21) & 8) == 0)
        {
          goto LABEL_92;
        }

LABEL_91:
        v33 = v32;
        goto LABEL_92;
      }

      if ((v35 & 0x200) != 0 || (*(v33 + 17) & 2) == 0)
      {
        goto LABEL_85;
      }
    }

LABEL_92:
    v32 = *(v32 + 72);
    if (v32)
    {
      continue;
    }

    break;
  }

  if ((v28 & 2) != 0)
  {
    goto LABEL_177;
  }

LABEL_94:
  if (!v33 || (v28 & 4) == 0)
  {
    if (!v33)
    {
      goto LABEL_102;
    }

    if ((v28 & 4) == 0)
    {
      goto LABEL_178;
    }

LABEL_112:
    v40 = v33[2];
    if (v13)
    {
      goto LABEL_113;
    }

LABEL_183:
    if ((v40 & 0x100) != 0)
    {
      goto LABEL_178;
    }

    v46 = 1;
LABEL_185:
    v71 = v107;
    if (v107 == 1)
    {
      v71 = 2;
    }

    v107 = v71;
    add_explicit = atomic_fetch_add_explicit(v33 + 3, 0, memory_order_relaxed);
    if ((add_explicit & 0xFFFFFF) == ((add_explicit >> 24) & 0xFFFFF))
    {
      if (v46)
      {
        v73 = v40 & 0xFFFFFFFFFFFFFCDFLL | 0x120;
LABEL_205:
        v33[2] = v73;
LABEL_209:
        if ((v31 & 8) == 0)
        {
          goto LABEL_178;
        }

        v80 = v33[2];
        if ((v80 & 0x20000000000) == 0)
        {
          v110 = v33[15];
          goto LABEL_102;
        }

        v33[2] = v80 | 0x80;
        v81 = v31;
        cv_wait_rw((a1 + 1328), a1, 2, 0);
        v31 = v81 & 0xFFFFFFF7;
        v30 = v103;
        goto LABEL_181;
      }

      if ((v9 & 0x200) == 0 || (v40 & 0x80000000000) != 0)
      {
        v73 = v40 & 0xFFFFFFFFFFFFFCFFLL | 0x200;
        goto LABEL_205;
      }
    }

    else
    {
      if (v46)
      {
        if ((v40 & 0x200) != 0)
        {
          v99 = (v28 & 0xFFFFFFBF | (((v9 >> 8) & 1) << 6)) ^ 0x40;
          if (!v112)
          {
            v32 = v33;
            v82 = obj_alloc(a1, *(v33 + 11), *(v33 + 9), *(v33 + 12), v9, &v106, &v112);
            if (v82)
            {
              finish = v82;
              goto LABEL_235;
            }

            if (v112 == v32 || (v106 & 1) != 0)
            {
              finish = 0;
              v31 = v99;
              goto LABEL_180;
            }

            v33 = v32;
            v40 = *(v32 + 16);
          }

          v33[2] = v40 & 0xFFFFFFFFFFFFFFDFLL;
          v74 = v33;
          finish = 0;
          if (obj_clone(v33, 0, &v112, &v106))
          {
            v31 = v99 | 8;
            v33 = v74;
          }

          else
          {
            v33 = v112;
            v112 = 0;
            v33[2] |= 0x120uLL;
            atomic_fetch_add_explicit(v33 + 3, 0xFFFFFFFFFFFFFFFFLL, memory_order_relaxed);
            v31 = v99;
          }
        }

        goto LABEL_209;
      }

      if ((v40 & 0x100) == 0 || (v9 & 8) != 0)
      {
        if ((v9 & 0x200) != 0 && (v40 & 0x80000000000) == 0)
        {
          v31 |= 8u;
        }

        goto LABEL_209;
      }
    }

    v31 |= 8u;
    goto LABEL_209;
  }

  v40 = v33[2];
  if ((v40 & 0x40) != 0)
  {
    goto LABEL_112;
  }

  if (!v13)
  {
    if (!(v33[2] & 0x20 | v110))
    {
      goto LABEL_195;
    }

    goto LABEL_183;
  }

  if (v13 <= v33[21] || v110)
  {
LABEL_113:
    if ((v40 & 0x200) != 0)
    {
      goto LABEL_178;
    }

    v46 = 0;
    goto LABEL_185;
  }

LABEL_195:
  v102 = v33;
  v75 = (v28 & 0xFFFFFFBF | (((v9 >> 8) & 1) << 6)) ^ 0x40;
  v76 = v107;
  obj_cache_unlock_by_state(a1, v107);
  v107 = 0;
  v77 = a6;
  if (!a6)
  {
    v77 = *(a1 + 392);
  }

  finish = omap_get(v77, a3, v13, 0, 0, 0, &v110);
  if (!finish)
  {
    obj_cache_lock_by_state(a1, v76);
    v107 = v76;
    v31 = v75;
    goto LABEL_180;
  }

  v83 = v112;
  if (v112)
  {
    pthread_mutex_lock(a1);
    v94 = 0;
    v107 = 2;
    LOBYTE(v31) = v75;
    v32 = v102;
    goto LABEL_238;
  }

  v94 = 0;
  LOBYTE(v31) = v75;
  v32 = v102;
LABEL_239:
  v86 = v31;
  if (v107)
  {
    obj_cache_unlock_by_state(a1, v107);
  }

  if (v94)
  {
    obj_release(v94);
  }

  if (!finish)
  {
    if (v32)
    {
      v87 = v113;
      if ((v113 & 4) != 0)
      {
        if (v113)
        {
          v88 = 2;
        }

        else
        {
          v88 = 1;
        }

        obj_lock(v32, v88);
        v87 = v113;
      }

      if ((v87 & 1) != 0 && (v89 = obj_modify(v32, v87 & 3, a8), v89))
      {
        finish = v89;
        if ((v113 & 4) != 0)
        {
          if (v113)
          {
            v90 = 2;
          }

          else
          {
            v90 = 1;
          }

          obj_unlock(v32, v90);
        }

        obj_release(v32);
      }

      else
      {
        if ((v86 & 2) == 0)
        {
          v91 = 136;
          if ((v86 & 0x20) == 0)
          {
            v91 = 144;
          }

          atomic_fetch_add_explicit((a1 + 1104), 1uLL, memory_order_relaxed);
          atomic_fetch_add_explicit((a1 + v91 + 976), 1uLL, memory_order_relaxed);
          v92 = omm + v91;
          atomic_fetch_add_explicit((omm + 264), 1uLL, memory_order_relaxed);
          atomic_fetch_add_explicit((v92 + 136), 1uLL, memory_order_relaxed);
        }

        finish = 0;
        if ((v113 & 0x100) != 0)
        {
          v93 = 0;
        }

        else
        {
          v93 = v32;
        }

        *a9 = v93;
      }
    }

    else
    {
      return 2;
    }
  }

  return finish;
}