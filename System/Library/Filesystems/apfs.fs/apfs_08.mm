uint64_t sub_100067BC8(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (*(a2 + 62) != 1)
  {
    return 0;
  }

  v8.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v8.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &v8);
  tv_sec = v8.tv_sec;
  tv_nsec = v8.tv_nsec;
  *a2 = v8.tv_sec;
  tv_nsec /= 1000;
  *(a2 + 8) = tv_nsec;
  *(a2 + 32) = 1000000 * tv_sec + tv_nsec;
  *(a2 + 62) = 0;
  v6 = *(a2 + 56);
  if (!v6)
  {
    return 0;
  }

  atomic_fetch_add_explicit((*(a1 + 384) + 152), -v6, memory_order_relaxed);
  return 1;
}

void spaceman_manage_free_queues(uint64_t *a1, uint64_t a2)
{
  v13 = 0xAAAAAAAAAAAAAAAALL;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *v12 = v4;
  *&v12[16] = v4;
  v10 = v4;
  v11 = v4;
  v5 = *(a2 + 16);
  if (!spaceman_get(a1, &v13))
  {
    v6 = *&v13[5].__opaque[48];
    sub_1000672B8(a1, &v10, 0, 1);
    pthread_mutex_lock(v13 + 7);
    if (spaceman_fq_over_threshold(a1, v13, 0, 0))
    {
        ;
      }
    }

    while (1)
    {
      v7 = v13;
      if (v5 - v6[27] <= LOWORD(v13[24].__sig))
      {
        break;
      }

      if (!sub_1000673B0(a1, v13, 0, 0, &v10, v5))
      {
        v7 = v13;
        break;
      }
    }

    pthread_mutex_unlock(v7 + 7);
    pthread_mutex_lock(v13 + 8);
    v8 = v13;
    if (v6[30] > *&v13[23].__opaque[40])
    {
      while (1)
      {
        v8 = v13;
        if (v6[30] <= *&v13[23].__opaque[40] >> 1)
        {
          break;
        }

        if (!sub_1000673B0(a1, v13, 1, 1, &v10, v5))
        {
          v8 = v13;
          break;
        }
      }
    }

    if (v6[35] > *&v8[23].__opaque[48])
    {
        ;
      }
    }

    if (v6[30] > v6[9])
    {
        ;
      }
    }

    if (v6[35] > v6[15])
    {
        ;
      }
    }

    if (spaceman_fq_over_threshold(a1, v13, 1, 0))
    {
        ;
      }
    }

    if (spaceman_fq_over_threshold(a1, v13, 2, 0))
    {
        ;
      }
    }

      ;
    }

    do
    {
      v9 = v6[37];
    }

    while (v9 && v5 - v9 > LOWORD(v13[24].__sig) && sub_1000673B0(a1, v13, 2, 0, &v10, v5));
    sub_100067BC8(a1, &v10);
    *(a2 + 88) = *&v12[8];
    *(a2 + 80) = *v12 - v11;
    pthread_mutex_unlock(v13 + 8);
    obj_release(v13);
  }
}

BOOL spaceman_fq_over_threshold(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v9 = 0xAAAAAAAAAAAAAAAALL;
  v7 = 0;
  if (!spaceman_fq_tree_get(a1, a2, a3, 0, 0, &v9) && v9)
  {
    v7 = spaceman_fq_tree_over_threshold(a2, v5, v9, v4);
    obj_release(v9);
  }

  return v7;
}

BOOL spaceman_tx_start_closing(uint64_t *a1)
{
  v14 = 0xAAAAAAAAAAAAAAAALL;
  if (spaceman_get(a1, &v14))
  {
    return 0;
  }

  v3 = *&v14[5].__opaque[48];
  pthread_mutex_lock(v14 + 9);
  v4 = v3[9];
  v5 = *&v14[23].__opaque[40] >> (v4 - v14[13].__sig < v3[6] >> 5);
  v6 = v3[30];
  v7 = v3[15];
  v8 = *&v14[23].__opaque[48] >> (v7 - *v14[13].__opaque < v3[12] >> 5);
  v9 = v3[35];
  pthread_mutex_unlock(v14 + 9);
  v12 = v9 > v7 || v9 > v8 || v6 > v4 || v6 > v5;
  if (v12 || spaceman_fq_over_threshold(a1, v14, 0, 0))
  {
    v2 = 1;
  }

  else
  {
    v2 = 1;
    if (!spaceman_fq_over_threshold(a1, v14, 1, 0))
    {
      v2 = spaceman_fq_over_threshold(a1, v14, 2, 0);
    }
  }

  obj_release(v14);
  return v2;
}

uint64_t spaceman_tx_complete(void *a1, uint64_t a2)
{
  v5 = 0xAAAAAAAAAAAAAAAALL;
  result = spaceman_get(a1, &v5);
  if (!result)
  {
    v4 = v5;
    *(v5 + 920) = a2;
    return obj_release(v4);
  }

  return result;
}

uint64_t spaceman_checkpoint_traverse(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 + 376);
  v25 = 0;
  v23 = 0;
  v24 = 0;
  v9 = spaceman_fq_tree_get(a1, a3, 0, 0, 0, &v24);
  if (v9)
  {
    goto LABEL_49;
  }

  v9 = spaceman_fq_tree_get(a1, a3, 1u, 0, 0, &v25);
  if (v9)
  {
    goto LABEL_49;
  }

  v9 = spaceman_fq_tree_get(a1, a3, 2u, 0, 0, &v23);
  if (v9)
  {
    goto LABEL_49;
  }

  if (a4 == 1)
  {
    v15 = obj_checkpoint_start(a3);
    v11 = v15;
    if (v15 || (v12 = v24) == 0)
    {
      if (v15 || (v13 = v25) == 0)
      {
        if (!v15)
        {
          v14 = v23;
          if (v23)
          {
            goto LABEL_42;
          }
        }

        goto LABEL_50;
      }

      goto LABEL_32;
    }

    v16 = *(v24[49] + 32);
    if (v16 <= v8[112])
    {
      v17 = 0;
    }

    else if (*(a3 + 976))
    {
      v17 = 1;
    }

    else
    {
      log_err("%s:%d: %s IP free queue tree is too large: %lld nodes (limit %d) xid %lld\n", "spaceman_checkpoint_traverse", 3419, (a1[48] + 212), v16, v8[112], *(a2 + 16));
      v17 = 1;
      v12 = v24;
    }

    *(a3 + 976) = v17;
    goto LABEL_28;
  }

  if (a4 == 2)
  {
    v10 = obj_checkpoint_known(a3);
    v11 = v10;
    if (v10 || (v12 = v24) == 0)
    {
      if (v10 || (v13 = v25) == 0)
      {
        if (v10)
        {
          goto LABEL_50;
        }

        v14 = v23;
        if (!v23)
        {
          goto LABEL_50;
        }

        goto LABEL_48;
      }

      goto LABEL_38;
    }

    goto LABEL_28;
  }

  v12 = v24;
  if (v24)
  {
LABEL_28:
    v11 = btree_checkpoint_traverse(a1, a2, v12, a4);
    goto LABEL_29;
  }

  v11 = 0;
LABEL_29:
  if (!v11)
  {
    v13 = v25;
    if (v25)
    {
      if (a4 != 1)
      {
LABEL_38:
        v11 = btree_checkpoint_traverse(a1, a2, v13, a4);
        goto LABEL_39;
      }

LABEL_32:
      v18 = *(v13[49] + 32);
      if (v18 <= v8[132])
      {
        v19 = 0;
      }

      else if (*(a3 + 977))
      {
        v19 = 1;
      }

      else
      {
        log_err("%s:%d: %s main free queue tree is too large: %lld nodes (limit %d) xid %lld\n", "spaceman_checkpoint_traverse", 3434, (a1[48] + 212), v18, v8[132], *(a2 + 16));
        v19 = 1;
        v13 = v25;
      }

      *(a3 + 977) = v19;
      goto LABEL_38;
    }
  }

LABEL_39:
  if (!v11)
  {
    v14 = v23;
    if (v23)
    {
      if (a4 != 1)
      {
LABEL_48:
        v9 = btree_checkpoint_traverse(a1, a2, v14, a4);
LABEL_49:
        v11 = v9;
        goto LABEL_50;
      }

LABEL_42:
      v20 = *(v14[49] + 32);
      if (v20 <= v8[152])
      {
        v21 = 0;
      }

      else if (*(a3 + 978))
      {
        v21 = 1;
      }

      else
      {
        log_err("%s:%d: %s tier2 free queue tree is too large: %lld nodes (limit %d) xid %lld\n", "spaceman_checkpoint_traverse", 3449, (a1[48] + 212), v20, v8[152], *(a2 + 16));
        v21 = 1;
        v14 = v23;
      }

      *(a3 + 978) = v21;
      goto LABEL_48;
    }
  }

LABEL_50:
  if (v24)
  {
    obj_release(v24);
  }

  if (v25)
  {
    obj_release(v25);
  }

  if (v23)
  {
    obj_release(v23);
  }

  return v11;
}

uint64_t spaceman_fq_tree_get(uint64_t *a1, uint64_t a2, unsigned int a3, uint64_t a4, int a5, uint64_t *a6)
{
  if (a3 > 2)
  {
    return 22;
  }

  v10 = *(a2 + 376);
  v11 = a2 + 952;
  v12 = *(a2 + 952 + 8 * a3);
  *a6 = v12;
  if (v12)
  {
    goto LABEL_4;
  }

  v13 = a3;
  v14 = v10 + 40 * a3;
  v17 = *(v14 + 208);
  v16 = (v14 + 208);
  v15 = v17;
  if (v17)
  {
    result = btree_get(a1, 0x80000000uLL, v15, 0, 0, 0, 9, spaceman_free_queue_key_cmp, 0, a6);
    if (!result)
    {
LABEL_8:
      v12 = *a6;
      *(v11 + 8 * v13) = *a6;
LABEL_4:
      obj_retain(v12);
      return 0;
    }

    return result;
  }

  if (!a5)
  {
    result = 0;
    goto LABEL_14;
  }

  result = obj_modify(a2, 0, a4);
  if (result)
  {
LABEL_14:
    *a6 = 0;
    return result;
  }

  result = btree_create(a1, 0x80000000uLL, 6, 9, 0, 0x10u, 8, spaceman_free_queue_key_cmp, a4, a6);
  if (!result)
  {
    *v16 = obj_oid(*a6);
    obj_dirty(a2, a4, 0);
    goto LABEL_8;
  }

  return result;
}

uint64_t spaceman_iterate_free_extents_internal(uint64_t a1, unsigned int a2, unint64_t a3, uint64_t (*a4)(uint64_t *a1, unint64_t a2, int64_t a3), uint64_t a5)
{
  v8 = a1;
  memset(v234, 0, 64);
  v233 = 0;
  v232 = 0;
  memset(v238, 0, 128);
  v231 = 0xAAAAAAAAAAAAAAAALL;
  v230 = 0xAAAAAAAAAAAAAAAALL;
  v219 = 0;
  pthread_mutex_lock((a1 + 864));
  if ((a2 & 0x30) == 0 && *(v8 + 639) == 1)
  {
    pthread_mutex_unlock((v8 + 864));
    return 16;
  }

  v229 = 0xAAAAAAAAAAAAAAAALL;
  *&v10 = 0xAAAAAAAAAAAAAAAALL;
  *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v220 = v10;
  v221 = v10;
  v222 = v10;
  v223 = v10;
  v224 = v10;
  v225 = v10;
  v226 = v10;
  v227 = v10;
  v228 = 0xAAAAAAAAAAAAAAAALL;
  ++*(v8 + 840);
  pthread_mutex_unlock((v8 + 864));
  v9 = spaceman_get(v8, &v229);
  if (v9)
  {
    goto LABEL_360;
  }

  v11 = *&v229[5].__opaque[48];
  v183 = a2 & 0x30;
  if ((a2 & 0x40) != 0)
  {
    v12 = 4;
  }

  else if ((a2 & 0x20) != 0)
  {
    v12 = 8;
  }

  else if (a4 == sub_100069D44)
  {
    v12 = 1;
  }

  else
  {
    v12 = v11[10];
  }

  v13 = _apfs_malloc_typed(16 * v11[10], 0x1000040F7F8B94BuLL);
  v14 = _apfs_malloc_typed(8 * v11[10], 0x100004000313F17uLL);
  v15 = v14;
  v9 = 12;
  if (!v13 || !v14)
  {
    goto LABEL_355;
  }

  if ((a2 & 2) == 0)
  {
    pthread_mutex_lock(v229 + 6);
  }

  __base = v13;
  if (a3)
  {
    if ((a2 & 0x6C) != 0x40)
    {
      v9 = 22;
      goto LABEL_344;
    }

    v214 = 0;
  }

  else
  {
    if ((a2 & 4) != 0)
    {
      v214 = 0;
      v16 = 1;
      goto LABEL_24;
    }

    v214 = (a2 >> 3) & 1;
  }

  v16 = 2;
LABEL_24:
  v169 = v16;
  v9 = 0;
  v172 = 0;
  v179 = 0;
  v17 = 0;
  if ((a2 & 0x20) != 0)
  {
    v18 = &v219;
  }

  else
  {
    v18 = 0;
  }

  v173 = v18;
  v174 = v11 + 12;
  v186 = a2 & 0xFE;
  v176 = v13 + 8;
  v184 = v13 - 16;
  v202 = a2;
  v210 = a4;
  v201 = v15;
  v187 = v8;
  v196 = v11;
  while (1)
  {
    if (a2)
    {
      v228 = 0;
      v226 = 0u;
      v227 = 0u;
      v224 = 0u;
      v225 = 0u;
      v222 = 0u;
      v223 = 0u;
      v220 = 0u;
      v221 = 0u;
      LODWORD(v228) = spaceman_get_number_of_disabled_allocation_zones(v229, v214);
    }

    v219 = a3;
    v175 = spaceman_free_extent_cache_bitmap_scan_begin(*&v229[24].__opaque[8 * v214 + 32], v173);
    v19 = v219;
    v20 = v11[9];
    if ((a2 & 0x40) == 0)
    {
      v19 = v219 / v20 * v20;
      v219 = v19;
    }

    v170 = v19;
    v21 = &v174[12 * v214];
    v177 = -1;
    v22 = v19 / v20 / v11[10];
    v23 = v17;
    v180 = v21;
LABEL_33:
    v178 = v22;
    if (v22 < v21[4])
    {
      break;
    }

    if (a2)
    {
      if (v228)
      {
        qsort(&v220, 8uLL, 0x10uLL, sub_100069FB8);
        if (v228)
        {
          if (DWORD2(v227))
          {
            v151 = v23;
            v152 = 6;
            v154 = &v227;
            v153 = &v227 + 2;
            while (1)
            {
              LOBYTE(v237) = 0;
              v155 = spaceman_evaluate_chunk_for_disabled_allocation_zones(v229, v214, *v154, &v237);
              if (v155)
              {
                log_err("%s:%d: %s failed to evaluate chunk %llu (average free ext len %u) for disabled allocation zones, error %d\n", "spaceman_iterate_free_extents_internal", 4227, (*(v8 + 384) + 212), *v154, *v153, v155);
              }

              v156 = v228;
              if (v237 == 1)
              {
                v156 = v228 - 1;
                LODWORD(v228) = v228 - 1;
              }

              v9 = 0;
              a4 = v210;
              v23 = v151;
              if (!v156 || v152 == -1)
              {
                break;
              }

              v154 = (&v220 + v152);
              v153 = (v154 | 8);
              --v152;
              if (!*(v154 + 8))
              {
                v9 = 0;
                a4 = v210;
                v23 = v151;
                break;
              }
            }
          }
        }
      }
    }

    if (v175)
    {
      if (v170)
      {
        v157 = 0;
        v158 = v214;
      }

      else
      {
        v158 = v214;
        v157 = v178 == v174[12 * v214 + 4];
      }

      spaceman_free_extent_cache_bitmap_scan_finished(*&v229[24].__opaque[8 * v158 + 32], v219, v157);
    }

    v17 = v23;
    a3 = 0;
    if (++v214 == v169)
    {
      v161 = 0;
      goto LABEL_335;
    }
  }

  v182 = v12;
  v24 = v219;
  v25 = v11[9];
  v26 = v11[10];
  if (!v183)
  {
    pthread_mutex_lock((v8 + 864));
    if (*(v8 + 639) == 1)
    {
      log_info("%s:%d: %s nx_resize detected while processing dev=%d cib=%u out of %u cibs\n", "spaceman_iterate_free_extents_internal", 3921, (*(v8 + 384) + 212), v214, v22, v180[4]);
      pthread_mutex_unlock((v8 + 864));
      v160 = 0;
      v161 = 0;
      v9 = 16;
      v11 = v196;
      a4 = v210;
      goto LABEL_329;
    }

    pthread_mutex_unlock((v8 + 864));
  }

  v215 = v26;
  v217 = v25;
  pthread_mutex_lock(&v229[v214 + 10]);
  v27 = v180[5];
  v185 = v22;
  if (v27)
  {
    v212 = v24;
    v28 = v9;
    v29 = v22 / v196[11];
    if (v29 == v177 && v23)
    {
      obj_lock(v233, 1);
      v29 = v177;
    }

    else
    {
      v31 = *(*(&v229[14].__sig + v214) + 8 * v29);
      if (v233)
      {
        obj_release(v233);
        v233 = 0;
      }

      v230 = v196;
      v231 = __PAIR64__(v29, v214);
      v32 = obj_get(*(v8 + 392), 0x140000004, v31, &sm_cab_desc, &v230, 0, 0, 0, &v233);
      if (v32)
      {
        v168 = v32;
        log_err("%s:%d: %s error getting cab %d @ %lld: %d\n", "spaceman_iterate_free_extents_internal", 3948, (*(v8 + 384) + 212), v29, v31, v32);
        v161 = 0;
        if (v175)
        {
          LOBYTE(v160) = 1;
          v11 = v196;
          a4 = v210;
          v9 = v168;
          goto LABEL_330;
        }

        v11 = v196;
        a4 = v210;
        v9 = v168;
        goto LABEL_333;
      }

      v28 = 0;
      v23 = *(v233 + 56);
      v177 = v29;
    }

    pthread_mutex_unlock(&v229[v214 + 10]);
    v30 = (v23 + 8 * (v22 - v196[11] * v29) + 40);
    v179 = 1;
    v9 = v28;
    v24 = v212;
  }

  else
  {
    v30 = (*(&v229[14].__sig + v214) + 8 * v22);
  }

  if (v232)
  {
    obj_lock(v232, 1);
  }

  else
  {
    v33 = v23;
    v34 = *v30;
    v230 = v196;
    v231 = __PAIR64__(v22, v214);
    v35 = obj_get(*(v8 + 392), 0x140000004, v34, &sm_cib_desc, &v230, 0, 0, 0, &v232);
    if (v35)
    {
      v167 = v35;
      log_err("%s:%d: %s error getting cib %d @ %lld: %d\n", "spaceman_iterate_free_extents_internal", 3975, (*(v8 + 384) + 212), v22, v34, v35);
      v161 = 0;
      v9 = v167;
      LOBYTE(a2) = v202;
      v11 = v196;
      a4 = v210;
      v15 = v201;
      v160 = v27 == 0;
      goto LABEL_329;
    }

    LOBYTE(a2) = v202;
    v15 = v201;
    v23 = v33;
    v9 = 0;
  }

  v36 = *(v232 + 56);
  if (v210 == sub_100069D44)
  {
    sub_1000672B8(v8, v234, 125, 0);
    if (v27)
    {
      goto LABEL_53;
    }
  }

  else if (v27)
  {
    goto LABEL_53;
  }

  pthread_mutex_unlock(&v229[v214 + 10]);
LABEL_53:
  if (v233)
  {
    obj_unlock(v233, 1);
    v179 = 0;
  }

  v37 = v24 / v217 - v215 * v22;
  v38 = v24 % v217;
  v11 = v196;
  bzero(v15, 8 * v196[10]);
  LODWORD(v39) = *(v36 + 36) - v37;
  v12 = v182;
  if (v182 >= v39)
  {
    v39 = v39;
  }

  else
  {
    v39 = v182;
  }

  __nel = v39;
  v188 = v37;
  if (v39)
  {
    v40 = 0;
    v41 = v196[9];
    v42 = v176;
    do
    {
      *(v42 - 2) = v37;
      *v42 = *(v36 + 40 + 32 * v37 + 24);
      v42 += 2;
      if (v40)
      {
        v43 = 0;
      }

      else
      {
        v43 = v38;
      }

      v219 += v41 - v43;
      ++v40;
      LODWORD(v37) = v37 + 1;
    }

    while (v40 < __nel);
    if ((a2 & 0x40) != 0)
    {
      goto LABEL_66;
    }
  }

  else if ((a2 & 0x40) != 0)
  {
    goto LABEL_66;
  }

  qsort(__base, __nel, 0x10uLL, sub_100069EE0);
LABEL_66:
  v181 = v36;
  v44 = __nel;
  if (!__nel)
  {
    v204 = 0;
    a4 = v210;
LABEL_230:
    v22 = v178;
    goto LABEL_283;
  }

  v171 = v23;
  v45 = 0;
  v46 = 0;
  v47 = v176;
  v193 = v37;
  do
  {
    v48 = v45;
    v49 = *v47;
    if (*v47)
    {
      v50 = obj_get(*(v8 + 392), 0x140000080, v49, &sm_bm_desc, 0, 0, 0, 0, &v238[v46]);
      v44 = __nel;
      if (v50)
      {
        v51 = v50;
        if (v50 != 45 && v50 != 16)
        {
          log_err("%s:%d: %s error getting cib %d bitmap %d @ %lld: %d\n", "spaceman_iterate_free_extents_internal", 4033, (*(v8 + 384) + 212), v178, *(v47 - 2), v49, v50);
          v160 = 0;
          v161 = 1;
          v9 = v51;
          LOBYTE(a2) = v202;
          goto LABEL_328;
        }

        v238[v46] = 0;
      }

      ++v46;
      LOBYTE(a2) = v202;
      v15 = v201;
      if (v46 == 16)
      {
        break;
      }
    }

    v45 = v48 + 1;
    v47 += 2;
  }

  while (v48 + 1 < v44);
  v53 = 0;
  v204 = 0;
  v194 = v48 + 1;
  v54 = 0;
  v200 = v181 + 40;
  v55 = v196;
  while (1)
  {
    v197 = v53;
    v56 = &__base[16 * v53];
    v57 = *(v56 + 1);
    v58 = v55;
    v192 = v55[10];
    v59 = *v56;
    v60 = &v238[v54];
    v199 = v57;
    if (v57)
    {
      if (*v60)
      {
        v61 = obj_async_wait(*v60);
        if (v61)
        {
          goto LABEL_325;
        }
      }

      else
      {
        v61 = obj_get(*(v8 + 392), 0x140000000, v57, &sm_bm_desc, 0, 0, 0, 0, &v238[v54]);
        if (v61)
        {
LABEL_325:
          v159 = v61;
          log_err("%s:%d: %s error getting cib %d bitmap %d @ %lld: %d\n", "spaceman_iterate_free_extents_internal", 4057, (*(v8 + 384) + 212), v178, *v56, v199, v61);
          if (*v60)
          {
            obj_release(*v60);
            *v60 = 0;
          }

          v160 = 0;
          v161 = 1;
          a4 = v210;
          v11 = v58;
          v9 = v159;
          goto LABEL_329;
        }
      }

      v213 = *(*v60 + 56);
      v62 = *v56;
    }

    else
    {
      v213 = 0;
      v62 = *v56;
    }

    if ((a2 & 0x40) != 0 && v62)
    {
      *&v15[8 * v62] = *&v15[8 * v62 - 8];
      *&v15[8 * *v56 - 8] = 0;
      v62 = *v56;
    }

    v63 = 0;
    v191 = v59;
    v207 = &v15[8 * v62];
    v211 = v200 + 32 * v59;
    v64 = *(v211 + 16);
    v236 = 0;
    v205 = v229;
    v65 = v186;
    if (*&v229[23].__opaque[8 * v214 + 16])
    {
      v65 = a2;
    }

    v216 = v65;
    if ((v65 & 0x40) != 0)
    {
      v63 = *v207;
    }

    v190 = *&v229[23].__opaque[8 * v214 + 16];
    v195 = &v238[v54];
    v198 = v54;
    v66 = *&v64 & 0xFFFFFLL;
    v237 = 0xAAAAAAAAAAAAAAAALL;
    if ((v64 & 0xFFFFFu) <= v38)
    {
      LODWORD(v68) = 0;
      v218 = 0;
      v67 = 0;
      v71 = v213;
LABEL_144:
      LODWORD(v37) = v193;
      v54 = v198;
      if ((v216 & 0x40) != 0)
      {
        goto LABEL_145;
      }

      goto LABEL_146;
    }

    v67 = 0;
    v218 = 0;
    v68 = 0;
    v209 = &v229[24].__opaque[32];
    v69 = 1;
    v70 = v38;
    v71 = v213;
    while (1)
    {
      if (!v71)
      {
        v236 = v66;
        v237 = v70;
        v72 = v66;
        v73 = v70;
        goto LABEL_102;
      }

      if (!bitmap_range_find_first(0, v71, v70, v66 - v70, &v237))
      {
        break;
      }

      if (bitmap_range_find_first(1, v71, v237, v66 - v237, &v236))
      {
        v72 = v236;
      }

      else
      {
        v236 = v66;
        v72 = v66;
      }

      v73 = v237;
LABEL_102:
      v70 = v72;
      v74 = 100 * (v69 / 0x64) - 1;
      v75 = v72 - v73;
      if (v72 - v73 > v68)
      {
        v68 = v72 - v73;
      }

      if ((v216 & 0x40) != 0)
      {
        if (v63 && v73)
        {
          v76 = *(v211 + 8) - v63;
          spaceman_free_extent_cache_insert(*&v209[8 * v214], 0, v76, v63);
          if (v210)
          {
            v77 = (v210)(a5, v76, v63);
            if (BYTE6(v234[7]) == 1)
            {
              v78.i64[0] = vdupq_n_s64(1uLL).u64[0];
              v78.i64[1] = v63;
              *&v234[5] = vaddq_s64(*&v234[5], v78);
            }
          }

          else
          {
            v77 = 0;
          }

          v71 = v213;
          v74 = 100 * (v69 / 0x64) - 1;
          v63 = 0;
          if (v218)
          {
            v81 = 1;
          }

          else
          {
            v81 = v77 == 0;
          }

          if (v81)
          {
            v82 = v218;
          }

          else
          {
            v82 = v77;
          }

          v218 = v82;
          v72 = v236;
        }

        if (v72 != v66)
        {
          v208 = v74;
          v79 = *(v211 + 8) - v63;
          v80 = v63 + v75;
LABEL_127:
          spaceman_free_extent_cache_insert(*&v209[8 * v214], 0, v79 + v73, v80);
          if (v210)
          {
            v83 = (v210)(a5, v79 + v73, v80);
            if (BYTE6(v234[7]) == 1)
            {
              v84 = 1;
              v85.i64[0] = vdupq_n_s64(1uLL).u64[0];
              v85.i64[1] = v80;
              *&v234[5] = vaddq_s64(*&v234[5], v85);
            }

            else
            {
              v84 = 0;
            }
          }

          else
          {
            v83 = 0;
            v84 = BYTE6(v234[7]);
          }

          v71 = v213;
          v63 = 0;
          if (v218)
          {
            v86 = 1;
          }

          else
          {
            v86 = v83 == 0;
          }

          if (v86)
          {
            v87 = v218;
          }

          else
          {
            v87 = v83;
          }

          v218 = v87;
          if ((v84 & 1) != 0 && v208 == v67)
          {
            sub_10006FF40(*(v205->__sig + 392), v234);
            v63 = 0;
          }

          goto LABEL_141;
        }

        v63 += v75;
      }

      else if (v73)
      {
        if (v72 != v66)
        {
          v208 = 100 * (v69 / 0x64) - 1;
          v79 = *(v211 + 8) - v63;
          v80 = v75 + v63;
          goto LABEL_127;
        }

        *(v207 + 1) = v75;
      }

      else
      {
        *v207 = v72;
      }

LABEL_141:
      ++v69;
      ++v67;
      if (v70 >= v66)
      {
        goto LABEL_144;
      }
    }

    if ((v216 & 0x40) == 0 || !v63 || v67)
    {
      goto LABEL_144;
    }

    v95 = *(v211 + 8) - v63;
    spaceman_free_extent_cache_insert(*&v209[8 * v214], 0, v95, v63);
    if (v210)
    {
      v96 = (v210)(a5, v95, v63);
      LODWORD(v37) = v193;
      v54 = v198;
      if (BYTE6(v234[7]) == 1)
      {
        v97.i64[0] = vdupq_n_s64(1uLL).u64[0];
        v97.i64[1] = v63;
        *&v234[5] = vaddq_s64(*&v234[5], v97);
      }
    }

    else
    {
      v96 = 0;
      LODWORD(v37) = v193;
      v54 = v198;
    }

    v67 = 0;
    v63 = 0;
    if (v218)
    {
      v125 = 1;
    }

    else
    {
      v125 = v96 == 0;
    }

    if (v125)
    {
      v126 = v218;
    }

    else
    {
      v126 = v96;
    }

    v218 = v126;
LABEL_145:
    *v207 = v63;
LABEL_146:
    v9 = v218;
    if ((v216 & 1) == 0)
    {
      goto LABEL_186;
    }

    v88 = v191 + v192 * v185;
    v89 = *(v190 + 4 * v88);
    v90 = v89 & 0xFF000000 | v68 & 0xFFFFFF;
    *(v190 + 4 * v88) = v90;
    if (v71)
    {
      v91 = v89 & 0xFE000000 | v68 & 0xFFFFFF;
      v92 = v90 | 0x1000000;
      if (*v71)
      {
        v92 = v91;
      }

      *(v190 + 4 * v88) = v92;
      v93 = v190;
      if (v66 < 0x40 || (v71[(v66 >> 6) - 1] & 0x8000000000000000) != 0)
      {
        v94 = v92 & 0xFDFFFFFF;
        goto LABEL_161;
      }
    }

    else
    {
      v92 = v90 | 0x1000000;
      v93 = v190;
    }

    v94 = v92 | 0x2000000;
LABEL_161:
    *(v93 + 4 * v88) = v94;
    if (!v228)
    {
      goto LABEL_186;
    }

    v98 = *(v211 + 20) & 0xFFFFF;
    if (v98 == *(*&v205[5].__opaque[48] + 36))
    {
      v235 = 0;
      v99 = spaceman_evaluate_chunk_for_disabled_allocation_zones(v205, v214, v88, &v235);
      if (v99)
      {
        v100 = *v205->__opaque;
        if (v100)
        {
          v101 = (v100 + 4040);
        }

        else
        {
          v101 = (*(*(v205->__sig + 392) + 384) + 212);
        }

        log_err("%s:%d: %s failed to evaluate free chunk %llu for disabled allocation zone, error %d\n", "spaceman_iterate_process_bitmap_block", 3702, v101, v88, v99);
      }

      if (v235 == 1)
      {
        LODWORD(v228) = v228 - 1;
      }

      goto LABEL_186;
    }

    if (!v67 || v98 < 4)
    {
      goto LABEL_186;
    }

    v102 = v98 / v67;
    v103 = &v220 + HIDWORD(v228);
    v104 = v94 & 0xC000000;
    v105 = v94 & 0xFFFFFC;
    v106 = v102 > *(v103 + 2) && v104 == 0;
    if (!v106 || v105 == 0)
    {
      goto LABEL_186;
    }

    v108 = 0;
    *(v103 + 2) = v102;
    *v103 = v88;
    v109 = -7;
    v110 = DWORD2(v220);
    v111 = &v221 + 2;
    while (2)
    {
      v113 = *v111;
      v111 += 4;
      v112 = v113;
      if (v113 >= v110)
      {
LABEL_179:
        v121 = __CFADD__(v109++, 1);
        if (v121)
        {
          goto LABEL_224;
        }

        continue;
      }

      break;
    }

    if (v112)
    {
      v108 = v109 + 8;
      v110 = v112;
      goto LABEL_179;
    }

    v108 = v109 + 8;
LABEL_224:
    HIDWORD(v228) = v108;
LABEL_186:
    v114 = v204;
    if (v204)
    {
      v115 = 1;
    }

    else
    {
      v115 = v218 == 0;
    }

    if (!v115)
    {
      v114 = v218;
    }

    LOBYTE(a2) = v202;
    if ((v202 & 0x40) != 0)
    {
      if (v114)
      {
        break;
      }
    }

    v204 = v114;
    v8 = v187;
    v55 = v196;
    v15 = v201;
    if (!v199)
    {
      v116 = __nel;
      v124 = v197;
      goto LABEL_213;
    }

    obj_release(*v195);
    *v195 = 0;
    v116 = __nel;
    if (v194 >= __nel)
    {
      goto LABEL_208;
    }

    v117 = &v184[16 * v194];
    v118 = v194;
    v119 = v194 + 1;
    do
    {
      v120 = *(v117 + 3);
      v117 += 16;
      ++v118;
      if (v120)
      {
        v121 = 1;
      }

      else
      {
        v121 = v119 >= __nel;
      }

      ++v119;
    }

    while (!v121);
    v194 = v118;
    if (!v120)
    {
LABEL_208:
      v124 = v197;
      goto LABEL_212;
    }

    v122 = obj_get(*(v187 + 392), 0x140000080, v120, &sm_bm_desc, 0, 0, 0, 0, v195);
    if (v122 == 45 || v122 == 16)
    {
      v9 = 0;
      *v195 = 0;
      goto LABEL_211;
    }

    v9 = v122;
    if (v122)
    {
      log_err("%s:%d: %s error getting cib %d bitmap %d @ %lld: %d\n", "spaceman_iterate_free_extents_internal", 4106, (*(v187 + 384) + 212), v178, *v117, v120, v122);
      v160 = 0;
      v161 = 1;
      a4 = v210;
      v11 = v196;
      goto LABEL_329;
    }

LABEL_211:
    v116 = __nel;
    v55 = v196;
    v124 = v197;
LABEL_212:
    v54 = (v54 + 1) & 0xF;
LABEL_213:
    v38 = 0;
    v53 = v124 + 1;
    if (v53 >= v116)
    {
      v127 = 0;
      v128 = 0;
      v129 = 0;
      while (1)
      {
        v130 = (v127 + v188);
        v131 = v200 + 32 * v130;
        v132 = &v201[8 * v130];
        if ((v202 & 0x40) != 0)
        {
          if (*v132)
          {
            v129 = *(v131 + 8) - *v132 + (*(v131 + 16) & 0xFFFFF);
            v116 = __nel;
            v128 = *v132;
          }

          goto LABEL_270;
        }

        v133 = *v132;
        if (v133)
        {
          break;
        }

        v136 = v9;
LABEL_252:
        v140 = *(v132 + 1);
        LODWORD(v37) = v193;
        if (v140)
        {
          v141 = *(v131 + 8) + (*(v131 + 16) & 0xFFFFF) - v140;
          if (v128)
          {
            if (v128 + v129 == v141)
            {
              v9 = 0;
              v140 += v128;
              v141 = v129;
              goto LABEL_258;
            }

            spaceman_free_extent_cache_insert(*&v229[24].__opaque[8 * v214 + 32], 0, v129, v128);
            if (v210)
            {
              v9 = (v210)(a5, v129, v128);
              if (BYTE6(v234[7]) == 1)
              {
                v143.i64[0] = vdupq_n_s64(1uLL).u64[0];
                v143.i64[1] = v128;
                *&v234[5] = vaddq_s64(*&v234[5], v143);
              }
            }

            else
            {
              v9 = 0;
            }

            v142 = v204;
            v116 = __nel;
          }

          else
          {
            v9 = 0;
LABEL_258:
            v142 = v204;
          }

          if (v142)
          {
            v144 = 1;
          }

          else
          {
            v144 = v9 == 0;
          }

          if (!v144)
          {
            v142 = v9;
          }

          v204 = v142;
          v129 = v141;
          v128 = v140;
          goto LABEL_270;
        }

        v9 = v136;
LABEL_270:
        if (++v127 >= v116)
        {
          a4 = v210;
          v12 = v182;
          if (!v128)
          {
            v11 = v196;
            v23 = v171;
            goto LABEL_230;
          }

          spaceman_free_extent_cache_insert(*&v229[24].__opaque[8 * v214 + 32], 0, v129, v128);
          v22 = v178;
          if (v210)
          {
            v9 = (v210)(a5, v129, v128);
            if (BYTE6(v234[7]) == 1)
            {
              v145.i64[0] = vdupq_n_s64(1uLL).u64[0];
              v145.i64[1] = v128;
              *&v234[5] = vaddq_s64(*&v234[5], v145);
            }
          }

          else
          {
            v9 = 0;
          }

          v11 = v196;
          v23 = v171;
          v146 = v204;
          if (v204)
          {
            v147 = 1;
          }

          else
          {
            v147 = v9 == 0;
          }

          if (!v147)
          {
            v146 = v9;
          }

          v204 = v146;
LABEL_283:
          if (a4 == sub_100069D44)
          {
            sub_100069EF8(v8);
          }

          obj_unlock(v232, 1);
          if (BYTE6(v234[7]) == 1)
          {
            if (sub_100067BC8(v8, v234))
            {
              if (v12 <= 1)
              {
                v12 = 1;
              }

              else
              {
                v12 >>= 1;
              }

              v148 = 1;
            }

            else
            {
              v149 = v11[10];
              v150 = 4 * v12;
              if (v149 < 4 * v12)
              {
                v150 = v11[10];
              }

              if (v149 >= v12 + 1)
              {
                v149 = v12 + 1;
              }

              if (v172)
              {
                v12 = v149;
              }

              else
              {
                v12 = v150;
              }

              v148 = v172;
            }

            v172 = v148;
          }

          if (*(v181 + 36) == v37)
          {
            obj_release(v232);
            v232 = 0;
            v22 = (v22 + 1);
          }

          v21 = &v174[12 * v214];
          if (v204)
          {
            v160 = 0;
            v161 = 0;
            v9 = v204;
            goto LABEL_329;
          }

          goto LABEL_33;
        }
      }

      v134 = *(v131 + 8);
      if (v128)
      {
        if (v128 + v129 == v134)
        {
          v135 = 0;
          v133 += v128;
          v134 = v129;
          goto LABEL_240;
        }

        spaceman_free_extent_cache_insert(*&v229[24].__opaque[8 * v214 + 32], 0, v129, v128);
        if (v210)
        {
          v135 = (v210)(a5, v129, v128);
          if (BYTE6(v234[7]) == 1)
          {
            v138.i64[0] = vdupq_n_s64(1uLL).u64[0];
            v138.i64[1] = v128;
            *&v234[5] = vaddq_s64(*&v234[5], v138);
          }
        }

        else
        {
          v135 = 0;
        }

        v137 = v204;
        v116 = __nel;
      }

      else
      {
        v135 = 0;
LABEL_240:
        v137 = v204;
      }

      if (v137)
      {
        v139 = 1;
      }

      else
      {
        v139 = v135 == 0;
      }

      v136 = v135;
      if (!v139)
      {
        v137 = v135;
      }

      v204 = v137;
      v129 = v134;
      v128 = v133;
      goto LABEL_252;
    }
  }

  v160 = 0;
  v161 = 1;
  v8 = v187;
LABEL_328:
  v11 = v196;
  a4 = v210;
  v15 = v201;
LABEL_329:
  if (v9 != 0 && v175)
  {
LABEL_330:
    spaceman_free_extent_cache_bitmap_scan_finished(*&v229[24].__opaque[8 * v214 + 32], v219, 0);
    if (v160)
    {
      v162 = v214;
      goto LABEL_334;
    }

    goto LABEL_335;
  }

  if (!v160)
  {
    goto LABEL_335;
  }

LABEL_333:
  v162 = v214;
LABEL_334:
  pthread_mutex_unlock(&v229[v162 + 10]);
LABEL_335:
  if (v233 && (v179 & 1) != 0)
  {
    obj_unlock(v233, 1);
  }

  v163 = v161 ^ 1;
  if (!v232)
  {
    v163 = 1;
  }

  if ((v163 & 1) == 0)
  {
    sub_100067BC8(v8, v234);
    if (a4 == sub_100069D44)
    {
      sub_100069EF8(v8);
    }

    obj_unlock(v232, 1);
  }

LABEL_344:
  if (v233)
  {
    obj_release(v233);
  }

  if (v232)
  {
    obj_release(v232);
  }

  for (i = 0; i != 16; ++i)
  {
    v165 = v238[i];
    if (v165)
    {
      obj_async_wait(v165);
      obj_release(v238[i]);
    }
  }

  if ((a2 & 2) == 0)
  {
    pthread_mutex_unlock(v229 + 6);
  }

  v13 = __base;
LABEL_355:
  if (v15)
  {
    _apfs_free(v15, 8 * v11[10]);
  }

  if (v13)
  {
    _apfs_free(v13, 16 * v11[10]);
  }

  obj_release(v229);
LABEL_360:
  pthread_mutex_lock((v8 + 864));
  --*(v8 + 840);
  pthread_mutex_unlock((v8 + 864));
  return v9;
}

uint64_t sub_100069D44(uint64_t *a1, unint64_t a2, int64_t a3)
{
  v14 = 0;
  if (spaceman_get(a1, &v14) || (v13 = spaceman_extent_check(a1, v14, a2, a3), obj_release(v14), !v13))
  {
    a1[120] += a3;
    if (a3 < 2)
    {
      v8 = 0;
    }

    else
    {
      v6 = 0;
      v7 = a3;
      do
      {
        v8 = v6 + 1;
        if (v7 < 4)
        {
          break;
        }

        v7 >>= 2;
      }

      while (v6++ < 4);
    }

    ++a1[v8 + 121];
    __tp.tv_sec = 0xAAAAAAAAAAAAAAAALL;
    __tp.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
    clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &__tp);
    tv_sec = __tp.tv_sec;
    v11 = SLODWORD(__tp.tv_nsec) / 1000;
    dev_unmap(a1[48]);
    __tp.tv_sec = 0xAAAAAAAAAAAAAAAALL;
    __tp.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
    clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &__tp);
    a1[119] += 1000000 * (__tp.tv_sec - tv_sec) - v11 + SLODWORD(__tp.tv_nsec) / 1000;
  }

  else if (nx_ratelimit_log_allowed(a1))
  {
    log_err("%s:%d: %s free extent %lld:%lld appears to span container metadata and should not be free: %d\n", "spaceman_trim_free_extent_callback", 4335, (a1[48] + 212), a2, a3, v13);
  }

  return 0;
}

uint64_t sub_100069EE0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  v4 = v2 < v3;
  v5 = v2 > v3;
  if (v4)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return v5;
  }
}

uint64_t sub_100069EF8(uint64_t a1)
{
  v5.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v5.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &v5);
  tv_sec = v5.tv_sec;
  v3 = SLODWORD(v5.tv_nsec) / 1000;
  dev_unmap_flush(*(a1 + 384));
  v5.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v5.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  result = clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &v5);
  *(a1 + 952) += 1000000 * (v5.tv_sec - tv_sec) - v3 + SLODWORD(v5.tv_nsec) / 1000;
  return result;
}

uint64_t sub_100069FB8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  v4 = v2 >= v3;
  v5 = v2 != v3;
  if (v4)
  {
    return v5;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t spaceman_scan_free_blocks(uint64_t a1, int a2, unsigned int a3)
{
  dev_features(*(a1 + 384));
  v6 = 0;
  if (a3)
  {
    if (a2)
    {
      v7 = 2;
    }

    else
    {
      v7 = 0;
    }

    __tp.tv_sec = 0xAAAAAAAAAAAAAAAALL;
    __tp.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
    clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &__tp);
    *(a1 + 944) = 1000000 * __tp.tv_sec + SLODWORD(__tp.tv_nsec) / 1000;
    v6 = spaceman_iterate_free_extents_internal(a1, v7 | a3, 0, 0, a1);
    __tp.tv_sec = 0xAAAAAAAAAAAAAAAALL;
    __tp.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
    clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &__tp);
    log_debug("%s:%d: %s scan took %lld.%06lld s (no trims)\n");
  }

  return v6;
}

uint64_t spaceman_free_queue_key_cmp(uint64_t a1, void *a2, int a3, void *a4, int a5, int *a6)
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
        v10 = v8 < v9;
        v7 = v8 > v9;
        if (v10)
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

uint64_t spaceman_free_queue_key_val_snprintf(char *a1, int a2, uint64_t a3, int a4, char *a5, int a6, uint64_t a7, int a8)
{
  if (a4 == 16)
  {
    result = snprintf(a1, a2, "%lld:%lld");
  }

  else
  {
    result = snprintf(a1, a2, "<BAD-KEY-LEN>");
  }

  if (a5)
  {
    if (a8)
    {
      if (a8 == 8)
      {
        return snprintf(a5, a6, "%lld");
      }

      else
      {

        return snprintf(a5, a6, "<BAD-VAL-LEN>");
      }
    }

    else
    {
      return snprintf(a5, a6, "%d");
    }
  }

  return result;
}

uint64_t spaceman_fq_tree_find_overlap(uint64_t *a1, uint64_t a2, unsigned int a3, unint64_t a4, uint64_t a5, _BYTE *a6)
{
  v6 = *(a2 + 376);
  memset(v23, 170, sizeof(v23));
  *a6 = 0;
  v7 = v6 + 40 * a3;
  if (!*(v7 + 208))
  {
    return 0;
  }

  v21 = -1431655766;
  v22 = -1431655766;
  v14 = spaceman_fq_tree_get(a1, a2, a3, 0, 0, &v23[3]);
  if (v14)
  {
    v15 = v14;
    log_err("%s:%d: %s can't get spaceman %d free queue tree %lld: %d\n", "spaceman_fq_tree_find_overlap", 4969, (a1[48] + 212), a3, *(v7 + 208), v14);
  }

  else
  {
    v16 = *(v7 + 216);
    if (v16 > obj_xid(a2))
    {
LABEL_23:
      v15 = 0;
    }

    else
    {
      v17 = a5 + a4;
      do
      {
        v21 = 8;
        v22 = 16;
        v23[0] = v16;
        v23[1] = a4;
        v18 = bt_lookup_variant(v23[3], 0, v23, &v22, 16, &v23[2], &v21, 1, 0, 0);
        if (v18 != 2)
        {
          v15 = v18;
          if (v18)
          {
            break;
          }

          if (!v21)
          {
            v23[2] = 1;
          }

          if (v16 == v23[0] && v23[2] + v23[1] > a4 && v17 > v23[1])
          {
            goto LABEL_27;
          }
        }

        v21 = 8;
        v22 = 16;
        v23[0] = v16;
        v23[1] = a4;
        v19 = bt_lookup_variant(v23[3], 0, v23, &v22, 16, &v23[2], &v21, 4, 0, 0);
        v15 = v19;
        if (v19 != 2)
        {
          if (v19)
          {
            break;
          }

          if (!v21)
          {
            v23[2] = 1;
          }

          if (v16 == v23[0] && v23[2] + v23[1] > a4 && v17 > v23[1])
          {
LABEL_27:
            v15 = 0;
            *a6 = 1;
            goto LABEL_24;
          }
        }

        ++v16;
      }

      while (v16 <= obj_xid(a2));
      if ((v15 | 2) == 2)
      {
        goto LABEL_23;
      }

      log_err("%s:%d: %s error searching spaceman free queue tree: %d\n", "spaceman_fq_tree_find_overlap", 5023, (a1[48] + 212), v15);
    }

LABEL_24:
    obj_release(v23[3]);
  }

  return v15;
}

BOOL spaceman_fq_tree_over_threshold(uint64_t a1, unsigned int a2, uint64_t a3, int a4)
{
  v4 = *(a3 + 56);
  v5 = *(*(a1 + 376) + 40 * a2 + 224);
  if (a4)
  {
    v6 = *(*(a3 + 392) + 32);
    if (v5 >= 2)
    {
      return v6 > v5 >> 1;
    }

    if (v6 <= 1)
    {
      v9 = v4[25] + v4[23] + v4[27];
      v10 = v9 >= obj_size_phys(a3) >> 1;
      return !v10;
    }

    return 1;
  }

  if (v5 >= 2)
  {
    return *(*(a3 + 392) + 32) > (3 * v5) >> 2;
  }

  if (*(*(a3 + 392) + 32) > 1uLL)
  {
    return 1;
  }

  v11 = v4[25] + v4[23] + v4[27];
  v10 = v11 >= obj_size_phys(a3) >> 2;
  return !v10;
}

uint64_t spaceman_ip_block_index(uint64_t *a1, uint64_t a2, unint64_t a3, uint64_t *a4)
{
  v6 = *(a2 + 376);
  v25 = 0xAAAAAAAAAAAAAAAALL;
  v26 = 0xAAAAAAAAAAAAAAAALL;
  v7 = *(v6 + 152);
  if ((v7 & 0x8000000000000000) == 0)
  {
    v8 = *(v6 + 176);
    v9 = v8 + v7;
    v10 = __OFSUB__(a3, v8);
    v11 = a3 - v8;
    if (v11 < 0 != v10 || v9 <= a3)
    {
      return 22;
    }

    v13 = 0;
LABEL_12:
    *a4 = v11;
    return v13;
  }

  v15 = (a2 + 1512);
  if (*(a2 + 1512))
  {
    goto LABEL_8;
  }

  v29 = 0xAAAAAAAAAAAAAAAALL;
  v30 = 0xAAAAAAAAAAAAAAAALL;
  v17 = btree_create(a1, 0x88000000uLL, 0, 0, 0, 8u, 16, extent_list_key_cmp, 0, (a2 + 1512));
  if (v17)
  {
    return v17;
  }

  v34 = 0xAAAAAAAAAAAAAAAALL;
  *&v18 = 0xAAAAAAAAAAAAAAAALL;
  *(&v18 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v32[0] = v18;
  v32[1] = v18;
  v32[2] = v18;
  v32[3] = v18;
  v33 = 0xAAAAAAAAAAAAAAAALL;
  v17 = nx_metadata_fragmented_extent_list_tree_get(a1, *(*(a2 + 376) + 176), &v34);
  if (v17)
  {
    return v17;
  }

  v31 = 0;
  bt_iterator_init(v32, v34, 0, 0, &v31, 8, 8, &v29, 0x10u);
  v13 = v20;
  if (!bt_iterator_ended(v32))
  {
    while (1)
    {
      v27 = v29;
      v28[0] = v31;
      v28[1] = v30;
      v22 = bt_insert(*v15, 0, &v27, 8, v28, 0x10u, 0);
      if (v22)
      {
        break;
      }

      v21 = bt_iterator_next(v32);
      if (v21)
      {
        v13 = v21;
        v23 = (a1[48] + 212);
        v24 = strerror(v21);
        log_err("%s:%d: %s failed to get next internal pool reverse mapping, error %s(%d)\n", "spaceman_set_up_ip_reverse_mapping_tree", 5174, v23, v24, v13);
        goto LABEL_26;
      }

      if (bt_iterator_ended(v32))
      {
        obj_release(v34);
        goto LABEL_8;
      }
    }

    v13 = v22;
LABEL_26:
    obj_release(v34);
    return v13;
  }

  obj_release(v34);
  if (!v13)
  {
LABEL_8:
    *&v32[0] = a3;
    LODWORD(v29) = 8;
    LODWORD(v28[0]) = 16;
    v13 = bt_lookup_variant(*v15, 0, v32, &v29, 8, &v25, v28, 1, 0, 0);
    if (v13)
    {
      return v13;
    }

    if (a3 - *&v32[0] >= v26)
    {
      return 2;
    }

    v13 = 0;
    v11 = v25 + a3 - *&v32[0];
    goto LABEL_12;
  }

  return v13;
}

void *spaceman_free_queue_trim_list_init(uint64_t a1, uint64_t a2)
{
  *(a2 + 1538) = 256;
  *(a2 + 1542) = 0;
  result = _apfs_calloc_typed(0x100uLL, 0x10uLL, 0x1000040451B5BE8uLL);
  *(a2 + 1544) = result;
  if (!result)
  {
    *(a2 + 1538) = 0;
  }

  return result;
}

uint64_t spaceman_alloc(char *a1, int a2, uint64_t a3, unint64_t a4, unint64_t *a5, int64_t *a6)
{
  v153 = 0;
  v151 = 0u;
  v152 = 0u;
  v149 = 0u;
  v150 = 0u;
  v147 = 0u;
  v148 = 0u;
  v145 = 0u;
  v146 = 0u;
  v143 = 0u;
  v144 = 0u;
  v141 = 0u;
  v142 = 0u;
  *&v11 = 0xAAAAAAAAAAAAAAAALL;
  *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v139 = v11;
  v140 = v11;
  v138 = v11;
  v155 = 0;
  v136 = 0;
  v12 = 0;
  v13 = a1;
  if (obj_type(a1) == 13)
  {
    v13 = *(a1 + 49);
    v12 = a1;
  }

  BYTE8(v152) = a6 != 0;
  BYTE9(v152) = 1;
  if (a6)
  {
    v14 = a2 | 0x1000;
  }

  else
  {
    v14 = a2 & 0xFFFFEBFF;
  }

  DWORD2(v151) = v14;
  LODWORD(v152) = 0;
  v15 = *(v13 + 47);
  v16 = *(v15 + 1240);
  v17 = a3;
  v144.i64[0] = a3;
  *&v146 = v16;
  v18 = *(v15 + 1248);
  *(&v146 + 1) = v18 + v16;
  if (!v18)
  {
    v146 = 0uLL;
  }

  DWORD1(v152) = 0;
  v19 = *(v13 + 128);
  v20 = v19 + *(v13 + 127);
  *&v145 = *(v13 + 127);
  *(&v145 + 1) = v20;
  if ((v13[634] & 1) != 0 || !v19)
  {
    v145 = 0uLL;
    if ((v14 & 0x80) == 0)
    {
LABEL_11:
      if ((v14 & 0x200) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_21;
    }
  }

  else if ((v14 & 0x80) == 0)
  {
    goto LABEL_11;
  }

  v14 |= 0x8100u;
  DWORD2(v151) = v14;
  if ((v14 & 0x200) == 0)
  {
LABEL_12:
    if ((v14 & 0x400) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_21:
  v14 |= 0x102u;
  DWORD2(v151) = v14;
  *a5 = *(v13 + 129);
  if ((v14 & 0x400) != 0)
  {
LABEL_13:
    v14 |= 0x100u;
    DWORD2(v151) = v14;
  }

LABEL_14:
  if (v13[637] == 1)
  {
    v14 |= 0x900u;
    DWORD2(v151) = v14;
  }

  if ((v14 & 2) != 0)
  {
    v14 &= ~0x40u;
    DWORD2(v151) = v14;
    v126 = *a5;
    if ((v14 & 0x40) != 0)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v126 = 0;
    if ((v14 & 0x40) != 0)
    {
LABEL_18:
      BYTE11(v152) = 1;
      v21 = *a5;
      goto LABEL_25;
    }
  }

  v21 = 3;
LABEL_25:
  v131 = v21;
  *a5 = 0;
  if ((v14 & 4) != 0)
  {
    if (a3 < 1)
    {
      return 22;
    }
  }

  else
  {
    v22 = 22;
    if (!xid_is_current_tx(v13, a4) || a3 < 1)
    {
      return v22;
    }
  }

  v154 = 0xAAAAAAAAAAAAAAAALL;
  *&v23 = 0xAAAAAAAAAAAAAAAALL;
  *(&v23 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v137[0] = v23;
  v137[1] = v23;
  v137[2] = v23;
  v137[3] = v23;
  v22 = spaceman_get(v13, &v154);
  if (v22)
  {
    return v22;
  }

  v24 = v154;
  v125 = v154[47];
  v25 = v154[199];
  if (v25)
  {
    v26 = v144.i64[0];
    v27.i64[0] = vdupq_n_s64(1uLL).u64[0];
    v27.i64[1] = v144.i64[0];
    *v25 = vaddq_s64(*v25, v27);
    if (BYTE11(v152) == 1)
    {
      ++v25[1].i64[0];
      goto LABEL_34;
    }

    if (v26 > 2)
    {
      if (v26 == 4)
      {
        v28 = 7;
      }

      else
      {
        if (v26 != 3)
        {
LABEL_34:
          if (v26 <= 1)
          {
            goto LABEL_49;
          }

          goto LABEL_46;
        }

        v28 = 6;
      }
    }

    else
    {
      if (v26 == 1)
      {
        v29 = 2;
LABEL_48:
        ++v25[v29].i64[0];
        goto LABEL_49;
      }

      if (v26 != 2)
      {
        goto LABEL_34;
      }

      v28 = 5;
    }

    ++v25->i64[v28];
LABEL_46:
    if (BYTE8(v152))
    {
      goto LABEL_49;
    }

    v29 = 4;
    goto LABEL_48;
  }

LABEL_49:
  v30 = DWORD2(v151);
  if ((WORD4(v151) & 0x200) != 0)
  {
    v31 = *(v125 + 48 * DWORD1(v152) + 48);
    *&v145 = *(&v145 + 1);
    *(&v145 + 1) = v31;
  }

  if ((BYTE8(v152) & 1) == 0 && v144.i64[0] >= *(v125 + 96) + *(v125 + 48))
  {
    v22 = 28;
LABEL_281:
    v108 = v154;
    v109 = v154[199];
    if (v109)
    {
      ++*(v109 + 72);
    }

    obj_release(v108);
    return v22;
  }

  if ((BYTE8(v151) & 2) != 0 && v126 >= *(v125 + 48))
  {
    v30 = DWORD2(v151) & 0xFFFFFFFD;
    DWORD2(v151) &= ~2u;
  }

  if ((v30 & 0x1A) == 2)
  {
    v30 |= 8u;
    DWORD2(v151) = v30;
  }

  v22 = sub_10006BF20(v24, v30, &v155, &v136, (*(*(v13 + 47) + 48) >> 1) & 1);
  if (v22)
  {
    goto LABEL_281;
  }

  pthread_mutex_lock(v154 + 6);
  if (BYTE11(v152) & 1) != 0 || (BYTE9(v151))
  {
    BYTE9(v152) = 0;
  }

  v124 = v12;
  v120 = a5;
  if (!v154[187])
  {
    DWORD2(v151) |= 0x100u;
  }

  v32 = 0;
  v123 = a1 + 4040;
  v33 = v125 + 48;
  v121 = 2;
  v122 = 0;
LABEL_65:
  v128 = v136;
  v34 = v122;
  while (2)
  {
    v35 = v17;
    v122 = v34;
    v132 = v32;
    while (1)
    {
      do
      {
        while (1)
        {
          v32 = v132;
          v36 = v35;
          if (v128 > v132)
          {
            goto LABEL_77;
          }

          if (BYTE9(v152) == 1)
          {
            BYTE9(v152) = 0;
            if (!v145)
            {
              v32 = 0;
              goto LABEL_77;
            }
          }

          else if (!v145)
          {
            goto LABEL_279;
          }

          if ((BYTE9(v151) & 2) == 0)
          {
            v37 = obj_type(a1);
            v38 = a1 + 4040;
            if (v37 != 13)
            {
              v38 = (*(a1 + 48) + 212);
            }

            log_debug("%s:%d: %s Could not find data to allocate outside the soft block-out range, disable soft block-out range\n", "spaceman_alloc", 7990, v38);
            v13[634] = 1;
            *(v13 + 131) = 0;
          }

          v32 = 0;
          v145 = 0uLL;
LABEL_77:
          v39 = *(&v155 + v32);
          HIDWORD(v151) = v39;
          v132 = v32 + 1;
          BYTE12(v152) = 0;
          v41 = v39 == DWORD1(v152) && *(&v145 + 1) != 0;
          BYTE10(v152) = v41;
          v144 = v35;
          if ((v14 & 4) != 0)
          {
            v42 = v35;
            goto LABEL_85;
          }

          v46 = DWORD2(v151);
          v47 = v154;
          if (BYTE8(v151))
          {
            v49 = &v154[v39];
            if ((BYTE8(v151) & 0x40) != 0)
            {
              v51 = v49[106];
              v42 = v35;
              if (v51 >= v35)
              {
                goto LABEL_85;
              }

              obj_type(a1);
              log_err("%s:%d: %s Bogus attempt to perform metadata reserved allocation %lld with insufficient reserve %lld (%lld)\n");
            }

            else
            {
              v50 = v49[104] - v49[106];
              v42 = v35;
              if (v50 >= v35)
              {
                goto LABEL_85;
              }

              obj_type(a1);
              log_err("%s:%d: %s Bogus attempt to perform non-metadata reserved allocation %lld with insufficient reserve %lld (%lld)\n");
            }

LABEL_279:
            v22 = 28;
            goto LABEL_280;
          }

          if ((DWORD2(v151) & 0x30000) == 0)
          {
            spaceman_entitled_reserve_active(v13, v154);
            v47 = v154;
            LODWORD(v39) = HIDWORD(v151);
            v46 = DWORD2(v151);
          }

          v48 = sub_10006BFF8(v13, v124, v47, v39, v46, v144.i64, a4);
          if (v48 != 7)
          {
            break;
          }

          if (v128 <= v132)
          {
            BYTE9(v152) = 0;
          }
        }

        v22 = v48;
        if (v48)
        {
          goto LABEL_280;
        }

        LODWORD(v39) = HIDWORD(v151);
        v42 = v144.i64[0];
LABEL_85:
        v43 = 0;
        v129 = v154[13 * v39 + 139] & BYTE11(v152);
        if ((v129 & 1) == 0 && (v42 - 5) >= 0xFFFFFFFFFFFFFFFCLL)
        {
          v43 = v42 - 1;
          v44 = &v154[17 * v39 + 153];
          if (LOBYTE(v44[4 * v43 + 3]) == 1 && (BYTE9(v151) & 1) == 0)
          {
            BYTE12(v152) = 1;
            metazone_alloc_index = v44[4 * v43];
LABEL_98:
            *(&v148 + 1) = metazone_alloc_index;
            goto LABEL_113;
          }
        }

        if (((v154[13 * v39 + 139] & BYTE11(v152)) & (v131 < 3)) == 1)
        {
          metazone_alloc_index = spaceman_get_metazone_alloc_index(v154, v39, v131);
          goto LABEL_98;
        }

        if (v39 || (BYTE8(v151) & 2) == 0)
        {
          if ((WORD4(v151) & 0x800) == 0)
          {
            metazone_alloc_index = v154[v39 + 125];
            goto LABEL_98;
          }

          metazone_alloc_index = 0;
          *(&v148 + 1) = 0;
        }

        else
        {
          metazone_alloc_index = v126;
          v144.i64[1] = v126;
          *(&v148 + 1) = v126;
        }

        DWORD2(v151) |= 0x4000u;
LABEL_113:
        if (BYTE12(v152))
        {
          v52 = v154;
          v53 = HIDWORD(v151);
          if ((BYTE9(v151) & 1) != 0 || v144.i64[0] <= (*(v154[HIDWORD(v151) + 187] + 4 * (metazone_alloc_index / *(v125 + 36))) & 0xFFFFFFu))
          {
            v54 = 1;
          }

          else
          {
            v54 = 0;
            BYTE12(v152) = 0;
          }
        }

        else
        {
          v54 = 0;
          v52 = v154;
          v53 = HIDWORD(v151);
        }

        BYTE14(v152) = 0;
        v147 = 0uLL;
        v149 = 0uLL;
        *(&v150 + 1) = 0;
        *&v151 = 0;
        v55 = v52[v53 + 197];
        v56 = BYTE11(v152);
        v127 = v43;
        if (!v55 || (BYTE11(v152) & 1) != 0 || (v54 & 1) != 0)
        {
          goto LABEL_145;
        }

        if ((WORD4(v151) & 0x8400) != 0)
        {
          goto LABEL_146;
        }

        v147 = vextq_s8(v144, v144, 8uLL);
        BYTE14(v152) = 1;
        if (BYTE9(v152))
        {
          v57 = DWORD2(v151) | 0x2000u;
        }

        else
        {
          v57 = DWORD2(v151) & 0xFFFF5BFF;
        }

        DWORD2(v151) = v57;
        v58 = spaceman_free_extent_cache_search(v55, v57, v147.i64, &v147.u64[1]);
      }

      while (v58 == 28);
      v59 = v147.u64[1];
      v60 = v147.i64[0];
      if (v147.i64[1] && !v147.i64[0])
      {
        v147 = 0uLL;
        v59 = 0;
      }

      v53 = HIDWORD(v151);
      if (v121 == HIDWORD(v151))
      {
        v61 = 0;
      }

      else
      {
        v61 = 3;
      }

      if (v58 != 3)
      {
        v61 = v58;
      }

      if (v61 == 3)
      {
        *&v87 = 0xAAAAAAAAAAAAAAAALL;
        *(&v87 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v134 = v87;
        v135 = v87;
        v133 = v87;
        *&v133 = v154[HIDWORD(v151) + 197];
        *(&v133 + 1) = v144.i64[0];
        *&v134 = v59;
        *(&v134 + 1) = spaceman_free_extent_cache_search_better_length(SWORD4(v151), v144.u64[0], v59);
        *&v135 = 0;
        *(&v135 + 1) = DWORD2(v151);
        v88 = v154;
        v89 = &v154[HIDWORD(v151)];
        v90 = v89 + 102;
        v91 = v89[102];
        if ((v91 & 0x10) != 0)
        {
          v92 = v89[102];
          do
          {
            *v90 = v92 | 0x20;
            cv_wait(v88 + 16, v88 + 6, 8, "spaceman_alloc_fxc_scan_wait", 0);
            v88 = v154;
            v93 = &v154[HIDWORD(v151)];
            v90 = v93 + 102;
            v92 = v93[102];
          }

          while ((v92 & 0x10) != 0);
          *v90 = v92 | 0x10;
          if ((v91 & 0x10) == 0 || *(v93[197] + 128) < *(&v134 + 1))
          {
            goto LABEL_245;
          }

          v22 = 0;
        }

        else
        {
          *v90 = v91 | 0x10;
LABEL_245:
          pthread_mutex_unlock(v88 + 6);
          v121 = HIDWORD(v151);
          if (HIDWORD(v151) == 1)
          {
            v94 = 42;
          }

          else
          {
            v94 = 38;
          }

          v95 = spaceman_iterate_free_extents_internal(v13, v94, 0, sub_10006C34C, &v133);
          pthread_mutex_lock(v154 + 6);
          if (v95 == 34 || v95 == 37)
          {
            v97 = 0;
          }

          else
          {
            v97 = v95;
          }

          if (v95 == HIDWORD(v135))
          {
            v22 = v97;
          }

          else
          {
            v22 = v95;
          }
        }

        v17 = a3;
        v147 = 0uLL;
        v98 = v154;
        v99 = HIDWORD(v151);
        v100 = v154[HIDWORD(v151) + 102];
        if ((v100 & 0x20) != 0)
        {
          cv_wakeup(v154 + 16);
          v98 = v154;
          v99 = HIDWORD(v151);
          v100 = v154[HIDWORD(v151) + 102];
        }

        v98[v99 + 102] = v100 & 0xFFFFFFFFFFFFFFCFLL;
        if (v22)
        {
LABEL_280:
          pthread_mutex_unlock(v154 + 6);
          goto LABEL_281;
        }

        goto LABEL_65;
      }

      v36 = v35;
      if (!v61 && v59 && v60)
      {
        *(&v150 + 1) = v60;
        *&v151 = v59;
        if (BYTE10(v152) != 1)
        {
          goto LABEL_143;
        }

        v22 = 0;
        if ((BYTE9(v151) & 2) == 0 && v60 < *(&v145 + 1))
        {
          if ((v59 + v60) < v145)
          {
LABEL_143:
            v22 = 0;
            goto LABEL_207;
          }

          v77 = obj_type(a1);
          v78 = a1 + 4040;
          if (v77 != 13)
          {
            v78 = (*(a1 + 48) + 212);
          }

          log_debug("%s:%d: %s Could not find data to allocate outside the soft block-out range, disable soft block-out range\n", "spaceman_alloc", 8208, v78);
          v22 = 0;
          v13[634] = 1;
          *(v13 + 131) = 0;
        }

        goto LABEL_207;
      }

      DWORD2(v151) |= 0x100u;
      v56 = BYTE11(v152);
LABEL_145:
      if ((v56 & 1) == 0)
      {
LABEL_146:
        if ((BYTE12(v152) & 1) == 0 && v154[v53 + 187] && (BYTE9(v151) & 1) == 0)
        {
          *&v138 = *(&v148 + 1);
          *(&v138 + 1) = v144.i64[0];
          LOBYTE(v139) = BYTE9(v152);
          BYTE8(v140) = BYTE8(v152) ^ 1;
          *(&v139 + 1) = 0;
          *&v140 = 0;
          if (BYTE10(v152) == 1)
          {
            *(&v139 + 1) = v145;
            *&v140 = *(&v145 + 1) - v145;
          }

          sub_10006C3C4(v154, v53, &v138, &v141);
          if (v62)
          {
            v63 = v62;
            BYTE9(v152) = 0;
            if (v62 != 28)
            {
              if (obj_type(a1) == 13)
              {
                log_err("%s:%d: %s failed to search bitmap hints: %d\n", "spaceman_alloc", 8249, v123, v63);
              }

              else
              {
                log_err("%s:%d: %s failed to search bitmap hints: %d\n", "spaceman_alloc", 8249, (*(a1 + 48) + 212), v63);
              }
            }
          }

          else
          {
            BYTE13(v152) = 1;
            BYTE9(v152) = v142;
            *(&v148 + 1) = v141;
            if (BYTE8(v152) == 1)
            {
              v144.i64[0] = *(&v141 + 1);
            }
          }

          v36 = a3;
          if ((BYTE9(v152) & 1) == 0 && BYTE10(v152) == 1)
          {
            if ((BYTE9(v151) & 2) == 0)
            {
              v13[634] = 1;
              *(v13 + 131) = 0;
            }

            v145 = 0uLL;
          }
        }

        goto LABEL_167;
      }

      do
      {
LABEL_167:
        v64 = HIDWORD(v151);
        if (HIDWORD(v151) == v152 && *(&v148 + 1) >= v146 && *(&v148 + 1) < *(&v146 + 1))
        {
          *(&v148 + 1) = *(&v146 + 1);
          if ((BYTE14(v152) & 1) == 0 && HIDWORD(v151) == DWORD1(v152) && *(&v146 + 1) >= v145 && *(&v146 + 1) < *(&v145 + 1))
          {
            *(&v148 + 1) = *(&v145 + 1);
          }
        }

        if ((BYTE14(v152) & 1) == 0 && HIDWORD(v151) == DWORD1(v152) && *(&v148 + 1) >= v145 && *(&v148 + 1) < *(&v145 + 1))
        {
          *(&v148 + 1) = *(&v145 + 1);
          if (HIDWORD(v151) == v152 && *(&v145 + 1) >= v146 && *(&v145 + 1) < *(&v146 + 1))
          {
            *(&v148 + 1) = *(&v146 + 1);
          }
        }

        v65 = v154[HIDWORD(v151) + 197];
        if (v65)
        {
          if (BYTE14(v152))
          {
            v66 = &v148 + 1;
          }

          else
          {
            v66 = 0;
          }

          HIBYTE(v152) = spaceman_free_extent_cache_bitmap_scan_begin(v65, v66);
          LOBYTE(v153) = 0;
          v64 = HIDWORD(v151);
        }

        else
        {
          HIBYTE(v152) = 0;
        }

        v67 = *(&v148 + 1);
        if (*(&v148 + 1) >= *(v33 + 48 * v64))
        {
          v67 = 0;
          *(&v148 + 1) = 0;
        }

        *&v148 = v67;
        v68 = sub_10006C7C8(a1, v13, v154, &v141);
      }

      while (v68 == 3);
      v22 = v68;
      if ((v153 & 0x100) != 0)
      {
        if (!HIBYTE(v152))
        {
          goto LABEL_207;
        }

        v69 = BYTE14(v152) == 1 ? *(v154[47] + 48 * HIDWORD(v151) + 48) : 0;
        v71 = v154[HIDWORD(v151) + 197];
        v72 = 1;
      }

      else
      {
        if (!HIBYTE(v152))
        {
          goto LABEL_207;
        }

        if (BYTE14(v152) == 1)
        {
          v69 = v148;
          if (!v68 && v148 > *(&v148 + 1))
          {
            v70 = *(&v149 + 1) || !v151 ? v150 + *(&v149 + 1) + v149 : *(&v150 + 1) + v151;
            if (v148 <= v70)
            {
              v69 = v70;
            }
          }
        }

        else
        {
          v69 = 0;
        }

        v71 = v154[HIDWORD(v151) + 197];
        v72 = 0;
      }

      spaceman_free_extent_cache_bitmap_scan_finished(v71, v69, v72);
      HIBYTE(v152) = 0;
LABEL_207:
      v35 = v36;
      v73 = v32;
      v74 = *(&v149 + 1);
      if (*(&v149 + 1))
      {
        if (v22)
        {
          goto LABEL_275;
        }

        v79 = v149 + v150;
        goto LABEL_226;
      }

      v74 = v151;
      if (v22 || v151)
      {
        break;
      }

      if (BYTE1(v153) != 1)
      {
        v74 = 0;
        v79 = 0;
        goto LABEL_226;
      }

      if ((v14 & 4) == 0)
      {
        pthread_mutex_unlock(v154 + 6);
        pthread_mutex_lock(v154 + 8);
        sub_1000672B8(v13, v137, 0, 0);
        v75 = sub_1000673B0(v13, v154, (HIDWORD(v151) + 1), 1, v137, a4);
        v76 = v132;
        if (v75)
        {
          v76 = v73;
        }

        v132 = v76;
        sub_100067BC8(v13, v137);
        pthread_mutex_unlock(v154 + 8);
        pthread_mutex_lock(v154 + 6);
      }
    }

    if (v151)
    {
      v79 = *(&v150 + 1);
    }

    else
    {
      v79 = 0;
    }

    if (v22)
    {
      goto LABEL_275;
    }

LABEL_226:
    v80 = spaceman_extent_check(v13, v154, v79, v74);
    if (v80)
    {
      v105 = v80;
      if (nx_ratelimit_log_allowed(*(*a1 + 392)))
      {
        v106 = obj_type(a1);
        v107 = a1 + 4040;
        if (v106 != 13)
        {
          v107 = (*(a1 + 48) + 212);
        }

        log_err("%s:%d: %s found free extent (0x%llx:0x%llx) which should not be free!: %d\n", "spaceman_alloc", 8387, v107, v79, v74, v105);
      }

      v22 = nx_corruption_detected_int(v13);
LABEL_275:
      pthread_mutex_unlock(v154 + 6);
      v101 = v120;
      v102 = a6;
      if (v22)
      {
        goto LABEL_281;
      }

      goto LABEL_306;
    }

    v81 = v79 + v74;
    if (v79 + v74 >= *(v33 + 48 * HIDWORD(v151)))
    {
      v81 = 0;
    }

    *&v148 = v81;
    if ((v14 & 4) == 0 && v74 >= 1)
    {
      if (v13[627])
      {
        v22 = 30;
        goto LABEL_280;
      }

      v82 = obj_modify(v154, 0, a4);
      if (v82)
      {
        v22 = v82;
        goto LABEL_280;
      }

      v22 = sub_10006D808(v13, v124, v154, v79, v74, a4, 0, SDWORD2(v151));
      spaceman_free_extent_cache_remove(v154[HIDWORD(v151) + 197], v79, v74);
      if (v22)
      {
        v83 = obj_type(a1);
        v84 = a1 + 4040;
        if (v83 != 13)
        {
          v84 = (*(a1 + 48) + 212);
        }

        log_err("%s:%d: %s Failed to set bits for allocation %lld:%lld: %d\n", "spaceman_alloc", 8418, v84, v79, v74, v22);
        if (BYTE14(v152) != 1)
        {
          goto LABEL_280;
        }

        spaceman_free_extent_cache_reset(v154[HIDWORD(v151) + 197], v85, v86);
        v34 = 1;
        v32 = v73;
        v17 = a3;
        if (v122)
        {
          goto LABEL_280;
        }

        continue;
      }
    }

    break;
  }

  v101 = v120;
  *v120 = v79;
  v102 = a6;
  if (a6)
  {
    *a6 = v74;
  }

  v103 = v154;
  v104 = v154[199];
  if (v104)
  {
    v104[10] += v74;
    if (v74 < a3)
    {
      ++v104[11];
    }

    if (BYTE12(v152))
    {
      ++v104[3];
      goto LABEL_286;
    }

LABEL_290:
    if ((WORD4(v151) & 0x200) != 0)
    {
      v113 = *(v13 + 127);
      if (HIDWORD(v151) || v148 < v113 || v148 >= *(v13 + 128) + v113)
      {
        *(v13 + 129) = v113;
      }

      else
      {
        *(v13 + 129) = v148;
      }
    }

    else
    {
      v112 = HIDWORD(v151);
      if ((WORD4(v151) & 0x142) == 0 || HIDWORD(v151))
      {
        v114 = v148;
        v103[HIDWORD(v151) + 125] = v148;
        if (BYTE9(v152) == 1 && spaceman_should_avoid_data_allocation_at_block(v103, v112, v114, 5))
        {
          *&v138 = v148;
          *(&v138 + 1) = 1;
          LOBYTE(v139) = 1;
          BYTE8(v140) = 1;
          *(&v139 + 1) = 0;
          *&v140 = 0;
          sub_10006C3C4(v154, HIDWORD(v151), &v138, &v141);
          if (v115)
          {
            if (v115 != 28)
            {
              obj_type(a1);
              log_err("%s:%d: %s failed to move roving pointer for dev %d error %d\n");
            }
          }

          else if (*(&v141 + 1) >= 1)
          {
            v154[HIDWORD(v151) + 125] = v141;
          }
        }
      }

      else if (v129)
      {
        spaceman_update_metazone_alloc_index(v103, 0, v131, v148);
      }
    }
  }

  else
  {
    if ((BYTE12(v152) & 1) == 0)
    {
      goto LABEL_290;
    }

LABEL_286:
    if ((*(v103[HIDWORD(v151) + 187] + 4 * (v103[17 * HIDWORD(v151) + 153 + 4 * v127] / *(v125 + 36))) & 0xFFFFFFu) <= v127)
    {
      new_chunk_for_allocation_zone = spaceman_get_new_chunk_for_allocation_zone(v13, v103, HIDWORD(v151), v127);
      if (new_chunk_for_allocation_zone)
      {
        if (new_chunk_for_allocation_zone != 28)
        {
          obj_type(a1);
          log_err("%s:%d: %s failed to update chunk for alloc zone %d: %d\n");
        }
      }
    }
  }

  pthread_mutex_unlock(v154 + 6);
LABEL_306:
  obj_release(v154);
  if ((BYTE8(v151) & 4) != 0)
  {
    return 0;
  }

  v22 = 0;
  if ((WORD4(v151) & 0x200) != 0)
  {
    return v22;
  }

  v116 = *(v13 + 128);
  if (!v116)
  {
    return v22;
  }

  v117 = *(v13 + 127);
  if (*v101 >= v117 && *v101 < v117 + v116)
  {
    return 0;
  }

  if (v13[634] == 1)
  {
    v118 = &v144;
    if (v102)
    {
      v118 = v102;
    }

    v119 = *(v13 + 131) + v118->i64[0];
    *(v13 + 131) = v119;
    if (v119 >= 0x401)
    {
      if (obj_type(a1) != 13)
      {
        v123 = (*(a1 + 48) + 212);
      }

      log_debug("%s:%d: %s Found enough data to allocate outside the soft block-out range, re-enable soft block-out range\n", "spaceman_alloc", 8546, v123);
      v22 = 0;
      v13[634] = 0;
      return v22;
    }

    return 0;
  }

  if (!v102 || 10000 * *v102 >= v144.i64[0] || *v102 * *(*(v13 + 47) + 36) >= 0x40000)
  {
    return 0;
  }

  if (obj_type(a1) != 13)
  {
    v123 = (*(a1 + 48) + 212);
  }

  log_debug("%s:%d: %s Space outside soft block-out range seems fragmented (requested %llu, but could alloc only %llu), disable soft block-out range\n", "spaceman_alloc", 8553, v123, v144.i64[0], *v102);
  v22 = 0;
  v13[634] = 1;
  *(v13 + 131) = 0;
  return v22;
}

uint64_t sub_10006BF20(uint64_t a1, unsigned int a2, const mach_header_64 **a3, char *a4, int a5)
{
  if ((~a2 & 0x38) == 0)
  {
    panic("Absurd combination of allocation flags for spaceman %llx", a1);
  }

  if (*(*(a1 + 376) + 96))
  {
    v5 = a2 & 0x20;
    v6 = (a2 >> 3) & 3;
    if (v6 > 1)
    {
      if (v6 != 2)
      {
        goto LABEL_6;
      }
    }

    else if (v6)
    {
LABEL_6:
      *a3 = &_mh_execute_header;
      goto LABEL_11;
    }

    *a3 = 1;
    v5 |= a5;
LABEL_11:
    if (v5)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }

    goto LABEL_14;
  }

  if ((a2 & 0x10) == 0)
  {
    *a3 = 0;
    v7 = 1;
LABEL_14:
    result = 0;
    *a4 = v7;
    return result;
  }

  return 22;
}

uint64_t sub_10006BFF8(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, int a5, uint64_t *a6, unint64_t a7)
{
  v55 = *a6;
  if (*a6 < 1)
  {
    return 0;
  }

  v13 = *(a3 + 376);
  *&v14 = 0xAAAAAAAAAAAAAAAALL;
  *(&v14 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v59[2] = v14;
  v59[3] = v14;
  v59[0] = v14;
  v59[1] = v14;
  v58 = a3 + 832;
  v15 = v13 + 48 * a4;
  v56 = a4 + 1;
  v53 = v13 + 40 * (a4 + 1);
  v54 = a3 + 984;
  v16 = 1;
  while (1)
  {
    pthread_mutex_lock((a3 + 576));
    if (a2)
    {
      v17 = *(a2 + 408);
      v18 = *(a2 + 376);
      v20 = v18[10];
      v19 = v18[11];
      v21 = v18[9];
      if (v20 >= v19 + v17)
      {
        v22 = v20 - (v19 + v17);
      }

      else
      {
        v22 = 0;
      }

      if (v21 - v19 >= v22)
      {
        v23 = v22;
      }

      else
      {
        v23 = v21 - v19;
      }

      if (v20 <= v19 + v17)
      {
        v24 = v21 - v19;
      }

      else
      {
        v24 = v23;
      }

      v25 = v24 >= v17;
      v26 = v24 - v17;
      if (!v25)
      {
        v26 = 0;
      }

      if (v21 <= v19)
      {
        v26 = 0;
      }
    }

    else
    {
      v26 = 0;
      v22 = 0;
    }

    v27 = *(a3 + 376);
    v28 = v27[30] + v27[9] + *(a3 + 984) + v27[15] + v27[35] + *(a3 + 992);
    v30 = v27[23];
    v29 = v27[24];
    v25 = v30 >= v29;
    v31 = v30 - v29;
    if (!v25)
    {
      v31 = 0;
    }

    v32 = *(a3 + 840) + *(a3 + 832);
    v33 = *(a3 + 864);
    v25 = v32 >= v33;
    v34 = v32 - v33;
    if (!v25)
    {
      v34 = 0;
    }

    v35 = v34 + v31;
    v25 = v28 >= v35;
    v36 = v28 - v35;
    if (!v25)
    {
      v36 = 0;
    }

    if (*(a3 + 1616))
    {
      v37 = *(a3 + 1632);
      v25 = v34 >= v37;
      v38 = v34 - v37;
      if (!v25)
      {
        v38 = 0;
      }

      v39 = *(a3 + 1624);
      v40 = *(a3 + 1640);
      v25 = v39 >= v40;
      v41 = v39 - v40;
      if (!v25)
      {
        v41 = 0;
      }

      v25 = v41 >= v37;
      v42 = v41 - v37;
      if (!v25)
      {
        v42 = 0;
      }

      v43 = *(a3 + 1648);
      v44 = *(a3 + 1656);
      v25 = v43 >= v44;
      v45 = v43 - v44;
      if (!v25)
      {
        v45 = 0;
      }

      v25 = v45 >= v38;
      v46 = v45 - v38;
      if (!v25)
      {
        v46 = 0;
      }

      v25 = v36 >= v46 + v42;
      v47 = v36 - (v46 + v42);
      if (!v25)
      {
        v47 = 0;
      }

      if ((a5 & 0x10000) != 0)
      {
        v46 = v42;
      }

      v48 = v46 + v26 + v47;
      if (!a2)
      {
LABEL_53:
        pthread_mutex_unlock((a3 + 576));
        v50 = *a6;
LABEL_54:
        v22 = v50;
        if (v50 <= v48)
        {
          goto LABEL_57;
        }

        if ((a5 & 0x1000) == 0)
        {
          return 28;
        }

LABEL_56:
        *a6 = v48;
        v22 = v48;
        if (v48 < 1)
        {
          return 28;
        }

        goto LABEL_57;
      }
    }

    else
    {
      v48 = v36 + v26;
      if (!a2)
      {
        goto LABEL_53;
      }
    }

    if (v48 >= v22)
    {
      v49 = v22;
    }

    else
    {
      v49 = v48;
    }

    if (*(*(a2 + 376) + 80))
    {
      v48 = v49;
    }

    pthread_mutex_unlock((a3 + 576));
    v50 = *a6;
    if (!*(*(a2 + 376) + 80) || v50 <= v22)
    {
      goto LABEL_54;
    }

    if ((a5 & 0x1000) == 0)
    {
      return 69;
    }

    *a6 = v22;
    if (v22 < 1)
    {
      return 69;
    }

    if (v22 > v48)
    {
      goto LABEL_56;
    }

LABEL_57:
    v51 = *(v15 + 72) - *(v58 + 8 * a4);
    if (v22 > v51)
    {
      break;
    }

LABEL_65:
    if (v22 <= v51)
    {
      return 0;
    }
  }

  if (v16)
  {
    v51 += *(v53 + 200) + *(v54 + 8 * a4);
    if (v22 <= v51)
    {
      goto LABEL_62;
    }
  }

  if ((a5 & 0x1000) == 0)
  {
    return 7;
  }

  *a6 = v51;
  if (v51 > 0 && v16)
  {
LABEL_62:
    pthread_mutex_unlock((a3 + 384));
    pthread_mutex_lock((a3 + 512));
    sub_1000672B8(a1, v59, 0, 0);
    v16 = sub_1000673B0(a1, a3, v56, 1, v59, a7) != 0;
    sub_100067BC8(a1, v59);
    pthread_mutex_unlock((a3 + 512));
    pthread_mutex_lock((a3 + 384));
    v51 = 0;
    if ((a5 & 0x1000) != 0)
    {
      v22 = v55;
      *a6 = v55;
    }

    else
    {
      v22 = *a6;
    }

    goto LABEL_65;
  }

  if (v51 <= 0)
  {
    return 7;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10006C34C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  result = *(a1 + 44);
  if (!result)
  {
    v5 = *(a1 + 32);
    if (!v5)
    {
      *(a1 + 32) = a2;
      v5 = a2;
    }

    if (*(a1 + 24) <= a3)
    {
      result = 37;
    }

    else
    {
      v6 = *(*(*(*a1 + 8) + 376) + 36);
      result = spaceman_free_extent_cache_scan_should_pause(*a1, (a2 - v5 / v6 * v6) / v6);
      if (!result)
      {
        return result;
      }

      result = 34;
    }

    *(a1 + 44) = result;
  }

  return result;
}

double sub_10006C3C4(unint64_t a1, unsigned int a2, uint64_t a3, _OWORD *a4)
{
  v56 = 0;
  v6 = *(a3 + 16);
  v7 = *(a3 + 32);
  v60[0] = *a3;
  v60[1] = v6;
  v8 = *(a1 + 376);
  v9 = *(a3 + 16);
  v49 = *(a3 + 40);
  v10 = *a3 / *(v8 + 36);
  v11 = v10;
  v60[2] = v7;
  v12 = a1 + 1496;
  v13 = a2;
  v14 = *(a1 + 1496 + 8 * a2) + 4 * v10;
  v54 = *(a3 + 8);
  *&v15 = 0;
  a4[1] = 0u;
  a4[2] = 0u;
  *a4 = 0u;
  v55 = v8;
  v16 = v8 + 48 * a2;
  v50 = v14;
  v51 = v10;
  do
  {
    if (!v9)
    {
      v28 = 1;
      v29 = v50;
      goto LABEL_24;
    }

    v17 = *(a1 + 376);
    if ((*(v14 + 3) & 0xC) == 0)
    {
      v18 = v17 + 48 * v13;
      v19 = *(v18 + 56);
      if (v19 <= v11)
      {
        goto LABEL_18;
      }

      v20 = *(a3 + 32);
      if (!v20)
      {
        goto LABEL_18;
      }

      v21 = *(v17 + 36);
      v22 = v21;
      if (v19 - 1 == v11)
      {
        v22 = *(v18 + 48) % v21;
      }

      if (!calc_overlap_range(v11 * v21, v22, *(a3 + 24), v20, 0))
      {
LABEL_18:
        if (v11 == v10)
        {
          v28 = 1;
        }

        else
        {
          v28 = 0;
          *&v60[0] = v11 * *(v55 + 36);
        }

        v51 = v11;
        goto LABEL_23;
      }

      v17 = *(a1 + 376);
    }

    v23 = v17 + 48 * v13;
    v24 = *(v23 + 56);
    if (v24 > v11)
    {
      v25 = *(a3 + 32);
      if (v25)
      {
        v26 = *(v17 + 36);
        v27 = v26;
        if (v24 - 1 == v11)
        {
          v27 = *(v23 + 48) % v26;
        }

        v56 |= calc_overlap_range(v11 * v26, v27, *(a3 + 24), v25, 0) != 0;
      }
    }

    v11 = (v11 + 1) % *(v16 + 56);
    v14 = *(v12 + 8 * v13) + 4 * v11;
  }

  while (v11 != v10);
  if ((v56 & 1) == 0)
  {
    return *&v15;
  }

  v28 = 1;
LABEL_23:
  v29 = v14;
LABEL_24:
  v30 = v54;
  if (v54 < 2)
  {
    goto LABEL_53;
  }

  v31 = *v29;
  LODWORD(v29) = *v29 & 0xFFFFFF;
  if (v54 <= (*&v31 & 0xFFFFFFuLL))
  {
    goto LABEL_53;
  }

  if (v51 < *(v16 + 56) - 1 && (v31 & 0x2000000) != 0 && *(v12 + 8 * v13) + 4 * v51 != -4)
  {
    v32 = *(*(v12 + 8 * v13) + 4 * v51 + 4);
    if ((v32 & 0x1000000) != 0 && ((v32 & 0xC000000) == 0 || (v9 & 1) == 0))
    {
      v40 = v32 & 0xFFFFFF;
      v36 = v49;
      if (v49)
      {
        v35 = a4;
        v33 = v55;
        if (v54 <= v40 + v29)
        {
          goto LABEL_54;
        }

        v34 = *(v55 + 36);
        goto LABEL_33;
      }

      if (v29 <= v40)
      {
        v29 = v40;
      }

      else
      {
        v29 = v29;
      }

      if (v54 >= v29)
      {
        v30 = v29;
      }

LABEL_53:
      v35 = a4;
      v33 = v55;
      goto LABEL_54;
    }
  }

  v33 = v55;
  v34 = *(v55 + 36);
  v35 = a4;
  v36 = v49;
  if (!v49)
  {
LABEL_37:
    *&v60[0] = v51 * v34;
    sub_100070644(a1, a2, 0, v60, v35);
    v38 = *(v35 + 1);
    if (v38 < v54)
    {
      v39 = v36;
    }

    else
    {
      v39 = 0;
    }

    if (!v38 || v39)
    {
      v15 = *(v35 + 24);
      *v35 = v15;
      *(v35 + 2) = *(v35 + 5);
      *(v35 + 3) = 0;
      *(v35 + 4) = 0;
      *(v35 + 5) = 0;
    }

    return *&v15;
  }

LABEL_33:
  if (v34 >= 0xFFFFFF)
  {
    v37 = 0xFFFFFFLL;
  }

  else
  {
    v37 = v34;
  }

  if (v54 <= v37)
  {
    goto LABEL_37;
  }

LABEL_54:
  v41 = *&v60[0];
  *v35 = *&v60[0];
  *(v35 + 1) = v30;
  *(v35 + 16) = v9;
  if (v28)
  {
    v42 = *(a1 + 376);
    v43 = v42 + 48 * v13;
    v44 = *(v43 + 56);
    if (v44 > v10)
    {
      v45 = *(a3 + 32);
      if (v45)
      {
        v46 = *(v42 + 36);
        v47 = v10 * v46;
        if (v44 - 1 == v10)
        {
          v46 = *(v43 + 48) % v46;
        }

        if (calc_overlap_range(v47, v46, *(a3 + 24), v45, 0))
        {
          *(v35 + 16) = 0;
        }
      }
    }
  }

  if (v41 % *(v33 + 36))
  {
    v58 = 0u;
    v59 = 0u;
    v57 = 0u;
    sub_100070644(a1, a2, 3uLL, v60, &v57);
    if (*(&v57 + 1) >= v30)
    {
      *&v15 = v57;
      *(v35 + 24) = v57;
      *(v35 + 5) = v58;
    }

    else
    {
      v15 = *v35;
      *(v35 + 24) = *v35;
      *(v35 + 5) = *(v35 + 2);
      *(v35 + 3) = v41 / *(v33 + 36) * *(v33 + 36);
    }
  }

  return *&v15;
}

uint64_t sub_10006C7C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = 0;
  v6 = 0;
  LODWORD(v7) = 0;
  v8 = 0;
  v9 = 0;
  v10 = *(a3 + 376);
  v117 = 0;
  v118 = 0;
  v11 = v10 + 12;
  v98 = a3 + 896;
  v116 = 0;
  memset(v115, 170, sizeof(v115));
  v104 = v10 + 12;
  v105 = (a1 + 4040);
  v107 = a3 + 1576;
  v99 = -1;
  v114 = 0xAAAAAAAAAAAAAAAALL;
  v12 = *(a4 + 172);
  v109 = v10;
  do
  {
    v13 = *(a4 + 112) / v10[9] / v10[10];
    v103 = v8;
    if (v11[12 * v12 + 5])
    {
      v14 = v10[11];
      v15 = v13 / v14;
      v16 = v118;
      if (v13 / v14 == v99)
      {
        LODWORD(v17) = *(a4 + 112) / v10[9] / v10[10];
        v15 = v99;
      }

      else
      {
        v19 = *(*(v98 + 8 * v12) + 8 * v15);
        if (v118)
        {
          obj_release(v118);
          v10 = v109;
          v118 = 0;
          LODWORD(v12) = *(a4 + 172);
        }

        v115[1] = v10;
        v115[2] = __PAIR64__(v15, v12);
        v20 = v10;
        v21 = obj_get(*(a2 + 392), 0x40000000, v19, &sm_cab_desc, &v115[1], 0, 0, 0, &v118);
        if (v21)
        {
          v93 = v21;
          v8 = v103;
          break;
        }

        v14 = v20[11];
        v16 = v118;
        LODWORD(v12) = *(a4 + 172);
        v99 = v15;
        v17 = *(a4 + 112) / v20[9] / v20[10];
        v10 = v20;
      }

      v18 = (*(v16 + 56) + 8 * (v13 - v14 * v15) + 40);
      LODWORD(v13) = v17;
      v8 = v103;
    }

    else
    {
      v18 = (*(v98 + 8 * v12) + 8 * v13);
    }

    v22 = *v18;
    v115[1] = v10;
    v115[2] = __PAIR64__(v13, v12);
    v106 = v22;
    v23 = v10;
    v24 = obj_get(*(a2 + 392), 0x40000000, v22, &sm_cib_desc, &v115[1], 0, 0, 0, &v117);
    if (v24)
    {
      v93 = v24;
      break;
    }

    v5 = *(v117 + 56);
    v25 = *(v5 + 32);
    v27 = v23[9];
    v26 = v23[10];
    v28 = v26 * v25;
    v29 = v23;
    if (v8 == v11[12 * *(a4 + 172) + 4])
    {
      v30 = *(a4 + 120) / v27 - v28 + 1;
    }

    else
    {
      v30 = *(v5 + 36);
    }

    v7 = *(a4 + 112) / v27 - v26 * v25;
    if (v30 <= v7)
    {
      v93 = 0;
      goto LABEL_276;
    }

    v110 = v5 + 40;
    v101 = *(v117 + 56);
    v7 = v7;
    v111 = v26 * v25;
    while (1)
    {
      if (v6 >= 3 && *(a4 + 189) == 1)
      {
        v31 = *(a4 + 32);
        if (v31 >= 1 && *(a4 + 48) <= (2 * v29[9]))
        {
          *(a4 + 189) = 0;
          *(a4 + 120) = *(a4 + 24);
          if (*(a4 + 184) == 1)
          {
            *(a4 + 48) = v31;
          }

          v94 = *(a4 + 40);
          *(a4 + 185) = v94;
          if ((v94 & 1) == 0 && *(a4 + 186) == 1)
          {
            if ((*(a4 + 169) & 2) == 0)
            {
              *(a2 + 634) = 1;
              *(a2 + 1048) = 0;
            }

            *(a4 + 64) = 0;
            *(a4 + 72) = 0;
          }

          v93 = 3;
          goto LABEL_276;
        }
      }

      v32 = v110 + 32 * v7;
      v33 = *(v32 + 8);
      v34 = v28 + v7;
      v35 = v29[9];
      if (v33 != (v28 + v7) * v35)
      {
        v39 = obj_type(a1);
        v40 = v105;
        if (v39 != 13)
        {
          v40 = (*(a1 + 384) + 212);
        }

        log_err("%s:%d: %s skip bad chunk info ci @ block %lld (cib %lld) ci_index 0x%x ci_addr 0x%llx (expect 0x%llx)\n", "spaceman_alloc_iterate_chunks", 7327, v40, v106, *(v5 + 8), v7, *(v32 + 8), v34 * v109[9]);
        v29 = v109;
        if (v29[9] + v29[9] * v34 >= *&v11[12 * *(a4 + 172)])
        {
          v9 = 0;
        }

        else
        {
          v9 = v109[9] + v109[9] * v34;
        }

        v28 = v111;
LABEL_105:
        *(a4 + 112) = v9;
        goto LABEL_106;
      }

      v36 = *(a4 + 172);
      if (v8 == v11[12 * v36 + 4] && (v37 = *(a4 + 120), v37 / v35 - v28 == v7))
      {
        v38 = v37 - v33;
      }

      else
      {
        v38 = *(v32 + 16) & 0xFFFFFLL;
      }

      v41 = *(a4 + 176);
      if (v36 == v41)
      {
        v42 = *(a4 + 80);
        v43 = v42 - v33;
        if (v42 - v33 >= v38)
        {
          v43 = v38;
        }

        if (v42 > v33 && v42 < v38 + v33)
        {
          v38 = v43;
        }
      }

      v45 = *(a4 + 180);
      v112 = v6;
      should_avoid_data_allocation_at_block = 0;
      if (v36 == v45)
      {
        v52 = *(a4 + 64);
        if (v52 > v33 && v52 < v38 + v33)
        {
          if (*(a4 + 190))
          {
            should_avoid_data_allocation_at_block = 1;
          }

          else
          {
            should_avoid_data_allocation_at_block = 0;
            if (v52 - v33 < v38)
            {
              v38 = v52 - v33;
            }
          }
        }
      }

      v47 = *(a4 + 112);
      v48 = v47 - v33;
      if (v36 == v41)
      {
        v49 = *(a4 + 88);
        if (v49 > v33 && v49 < v38 + v33)
        {
          if (v49 - v33 > v48)
          {
            v48 = v49 - v33;
          }

          v47 = v48 + v33;
          *(a4 + 112) = v48 + v33;
          if (v48 > 0)
          {
            v9 = 0;
          }
        }
      }

      if (v36 == v45)
      {
        v53 = *(a4 + 72);
        if (v53 > v33 && v53 < v38 + v33)
        {
          if (*(a4 + 190))
          {
            should_avoid_data_allocation_at_block = 1;
          }

          else
          {
            if (v53 - v33 > v48)
            {
              v48 = v53 - v33;
            }

            v47 = v48 + v33;
            *(a4 + 112) = v48 + v33;
            if (v48 > 0)
            {
              v9 = 0;
            }
          }
        }
      }

      if ((*(a4 + 184) & 1) == 0)
      {
        v50 = *(v32 + 20) & 0xFFFFF;
        if (!v9 || v50 < (*(v32 + 16) & 0xFFFFFu) && *(a4 + 48) - v9 > v50)
        {
          if (v50)
          {
            if (v7 >= v30 - 1 || (v51 = *(v32 + 52) & 0xFFFFF, *(a4 + 48) <= (v51 + v50)))
            {
              v9 = 0;
            }

            else
            {
              v9 = 0;
              if (v51 < (*(v32 + 48) & 0xFFFFFu))
              {
                should_avoid_data_allocation_at_block = 1;
              }
            }
          }

          else
          {
            v9 = 0;
            should_avoid_data_allocation_at_block = 2;
          }
        }
      }

      if (v36 == v41 && *(a4 + 80) <= v48 + v33 && *(a4 + 88) >= v38 + v33)
      {
        should_avoid_data_allocation_at_block = 2;
        if (!*(a4 + 184))
        {
          goto LABEL_88;
        }
      }

      else
      {
        if (v36 != v45 || should_avoid_data_allocation_at_block)
        {
          goto LABEL_85;
        }

        if (*(a4 + 64) <= v48 + v33)
        {
          should_avoid_data_allocation_at_block = *(a4 + 72) >= v38 + v33;
LABEL_85:
          if (!*(a4 + 184))
          {
            goto LABEL_88;
          }

          goto LABEL_86;
        }

        should_avoid_data_allocation_at_block = 0;
        if (!*(a4 + 184))
        {
          goto LABEL_88;
        }
      }

LABEL_86:
      if ((*(v32 + 20) & 0xFFFFF) == 0)
      {
        should_avoid_data_allocation_at_block = 2;
      }

LABEL_88:
      v54 = *(v32 + 24);
      if (!v54 && ((*(v32 + 16) ^ *(v32 + 20)) & 0xFFFFF) != 0)
      {
        LOBYTE(v55) = *(a4 + 190);
LABEL_96:
        v56 = v47 + v38 - v48;
        *(a4 + 112) = v56;
        v11 = v104;
        v28 = v111;
        v6 = v112;
        if (v36 == v41 && v56 >= *(a4 + 80) && v56 < *(a4 + 88) || (v55 & 1) == 0 && v36 == *(a4 + 180) && v56 >= *(a4 + 64) && v56 < *(a4 + 72))
        {
          v56 = *(v32 + 8) + (*(v32 + 16) & 0xFFFFF);
          *(a4 + 112) = v56;
        }

        v9 = 0;
        if (v56 < *&v104[12 * v36])
        {
          goto LABEL_107;
        }

        goto LABEL_105;
      }

      if (!should_avoid_data_allocation_at_block)
      {
        if (*(a4 + 185) != 1)
        {
          v57 = 1;
          goto LABEL_111;
        }

        should_avoid_data_allocation_at_block = spaceman_should_avoid_data_allocation_at_block(a3, v36, v33, *(a4 + 48));
        v29 = v109;
      }

      v55 = *(a4 + 190);
      if (should_avoid_data_allocation_at_block > v55)
      {
        v47 = *(a4 + 112);
        v36 = *(a4 + 172);
        v41 = *(a4 + 176);
        goto LABEL_96;
      }

      v54 = *(v32 + 24);
      v57 = should_avoid_data_allocation_at_block == 0;
LABEL_111:
      v113 = (v112 + 1);
      v116 = 0;
      if (v54)
      {
        v58 = obj_get(*(a2 + 392), 0x40000000, v54, &sm_bm_desc, 0, 0, 0, 0, &v116);
        if (v58)
        {
          v93 = v58;
          goto LABEL_274;
        }
      }

      if (v9)
      {
        v59 = v38;
        if (v57)
        {
          if (*(a4 + 48) - v9 >= v38)
          {
            v59 = v38;
          }

          else
          {
            v59 = *(a4 + 48) - v9;
          }
        }

        if (!v116 || !bitmap_range_find_first(1, *(v116 + 56), 0, v59, (a4 + 128)))
        {
          v6 = v113;
          if (v57)
          {
            v63 = *(a4 + 48);
            if (v63 == v59 + v9)
            {
              *(a4 + 152) = *(a4 + 112) - v9;
              *(a4 + 160) = v63;
              v11 = v104;
              if (v116)
              {
                obj_release(v116);
              }

              v9 = 0;
              v93 = 0;
              v116 = 0;
              v5 = v101;
              v8 = v103;
              goto LABEL_276;
            }
          }

          v11 = v104;
          if (*(a4 + 190) == 1)
          {
            v64 = *(a4 + 191);
          }

          else
          {
            v64 = 0;
          }

          v65 = v59 + v9;
          spaceman_free_extent_cache_insert(*(v107 + 8 * *(a4 + 172)), v64 & 1, *(a4 + 112) - v9, v59 + v9);
          if (*(a4 + 184) == 1 && v65 > *(a4 + 160))
          {
            if (v57 || !spaceman_clip_extent_to_zones(a2, a3, *(a4 + 172), *(a4 + 112) - v9, v59 + v9, *(a4 + 168), *(a4 + 56), v115, &v114))
            {
              *(a4 + 152) = *(a4 + 112) - v9;
              v66 = *(a4 + 48);
              if (v65 < v66)
              {
                v66 = v59 + v9;
              }

LABEL_145:
              *(a4 + 160) = v66;
            }

            else
            {
              v66 = v114;
              if (v114 >= *(a4 + 48))
              {
                v66 = *(a4 + 48);
              }

              v114 = v66;
              if (v66 > *(a4 + 160))
              {
                *(a4 + 152) = v115[0];
                goto LABEL_145;
              }
            }
          }

          v67 = *(a4 + 112) + v59;
          *(a4 + 112) = v67;
          v68 = *(a4 + 172);
          v5 = v101;
          v8 = v103;
          if (v68 == *(a4 + 176) && v67 >= *(a4 + 80) && v67 < *(a4 + 88) || (*(a4 + 190) & 1) == 0 && v68 == *(a4 + 180) && v67 >= *(a4 + 64) && v67 < *(a4 + 72))
          {
            v65 = 0;
            v67 = *(v32 + 8) + (*(v32 + 16) & 0xFFFFF);
            *(a4 + 112) = v67;
          }

          v9 = v65;
          if (v67 >= *&v104[12 * v68])
          {
            v9 = 0;
            *(a4 + 112) = 0;
          }

          if (v116)
          {
            obj_release(v116);
          }

          v116 = 0;
          if (v9)
          {
            goto LABEL_262;
          }

          v28 = v111;
          v29 = v109;
          if ((*(a4 + 169) & 4) != 0 && *(a4 + 160))
          {
            v9 = 0;
            v93 = 0;
            goto LABEL_276;
          }

          goto LABEL_106;
        }

        v5 = v101;
        if (*(a4 + 184) != 1)
        {
          goto LABEL_168;
        }

        v60 = *(a4 + 128) + v9;
        if (v60 <= *(a4 + 160))
        {
          goto LABEL_168;
        }

        if (!v57)
        {
          if (spaceman_clip_extent_to_zones(a2, a3, *(a4 + 172), *(a4 + 112) - v9, v60, *(a4 + 168), *(a4 + 56), v115, &v114))
          {
            v61 = *(a4 + 48);
            if (v114 < v61)
            {
              v61 = v114;
            }

            v114 = v61;
            v62 = *(a4 + 160);
            if (v61 > v62)
            {
              *(a4 + 152) = v115[0];
              *(a4 + 160) = v61;
LABEL_167:
              if ((*(a4 + 169) & 4) != 0)
              {
                if (v116)
                {
                  obj_release(v116);
                }

                v9 = 0;
                v93 = 0;
                v116 = 0;
LABEL_274:
                v8 = v103;
                goto LABEL_275;
              }

LABEL_168:
              if (*(a4 + 190) == 1)
              {
                v69 = *(a4 + 191);
              }

              else
              {
                v69 = 0;
              }

              spaceman_free_extent_cache_insert(*(v107 + 8 * *(a4 + 172)), v69 & 1, *(a4 + 112) - v9, *(a4 + 128) + v9);
              v70 = *(a4 + 128);
              *(a4 + 112) += v70 - v48;
              v48 = v70;
              goto LABEL_172;
            }

LABEL_166:
            if (v62)
            {
              goto LABEL_167;
            }

            goto LABEL_168;
          }

          v60 = *(a4 + 128) + v9;
        }

        v62 = *(a4 + 48);
        if (v60 < v62)
        {
          v62 = v60;
        }

        *(a4 + 152) = *(a4 + 112) - v9;
        *(a4 + 160) = v62;
        goto LABEL_166;
      }

LABEL_172:
      if (!v116)
      {
        break;
      }

      if (*(v107 + 8 * *(a4 + 172)))
      {
        if (v38 > v48)
        {
          v71 = 0;
          v72 = 0;
          v73 = v48;
          while (1)
          {
            bitmap_range_find_first_clear_range(*(v116 + 56), v38 - v73, v73, v38, (a4 + 128), (a4 + 136));
            v74 = *(a4 + 136);
            if (!v74)
            {
              goto LABEL_212;
            }

            if (v74 <= v71)
            {
              break;
            }

            if ((*(a4 + 169) & 4) != 0)
            {
              if (v71)
              {
                break;
              }

              v75 = *(a4 + 48);
            }

            else
            {
              v75 = *(a4 + 48);
              if (v71 >= v75)
              {
                break;
              }
            }

            v72 = *(a4 + 128);
            if (v75 >= v74)
            {
              v71 = *(a4 + 136);
            }

            else
            {
              v71 = v75;
            }

            if (!v57)
            {
              goto LABEL_192;
            }

LABEL_183:
            v76 = *(a4 + 48);
            if (v71 >= v76 && ((*(a4 + 187) & 1) != 0 || (*(a4 + 188) & 1) != 0))
            {
              *(a4 + 128) = v72;
              *(a4 + 136) = v71;
              goto LABEL_214;
            }

LABEL_192:
            if (*(a4 + 190) == 1)
            {
              v77 = *(a4 + 191);
            }

            else
            {
              v77 = 0;
            }

            spaceman_free_extent_cache_insert(*(v107 + 8 * *(a4 + 172)), v77 & 1, *(a4 + 112) - v48 + *(a4 + 128), v74);
            v73 = *(a4 + 136) + *(a4 + 128);
            if (v73 >= v38)
            {
              goto LABEL_212;
            }
          }

          if (!v57)
          {
            goto LABEL_192;
          }

          goto LABEL_183;
        }

        v72 = 0;
        v71 = 0;
LABEL_212:
        *(a4 + 128) = v72;
        *(a4 + 136) = v71;
        if (v57)
        {
          v76 = *(a4 + 48);
LABEL_214:
          if (v71 >= v76)
          {
            v9 = 0;
            v93 = 0;
            *(a4 + 112) += v38 - v48;
            v5 = v101;
            goto LABEL_274;
          }

          v82 = 0;
          v5 = v101;
        }

        else
        {
          v82 = 0;
          v5 = v101;
        }
      }

      else
      {
        if (bitmap_range_find_desired_or_first_clear_range(*(v116 + 56), *(a4 + 48), v48, v38, (a4 + 128), (a4 + 136), (*(a4 + 168) >> 10) & 1))
        {
          v9 = 0;
          v93 = 0;
          goto LABEL_274;
        }

        v82 = 0;
      }

LABEL_219:
      if (*(a4 + 184) != 1)
      {
        goto LABEL_228;
      }

      v9 = *(a4 + 136);
      if (v9 > *(a4 + 160))
      {
        v84 = *(a4 + 112);
        v85 = *(a4 + 128);
        if (!v57)
        {
          if (spaceman_clip_extent_to_zones(a2, a3, *(a4 + 172), v84 - v48 + v85, v9, *(a4 + 168), *(a4 + 56), v115, &v114))
          {
            v9 = v114;
            if (v114 > *(a4 + 160))
            {
              v86 = v115[0];
              goto LABEL_227;
            }

            goto LABEL_228;
          }

          v84 = *(a4 + 112);
          v85 = *(a4 + 128);
          v9 = *(a4 + 136);
        }

        v86 = v84 - v48 + v85;
LABEL_227:
        *(a4 + 152) = v86;
        *(a4 + 160) = v9;
LABEL_228:
        v9 = *(a4 + 136);
      }

      v8 = v103;
      if (v9 && *(a4 + 128) + v9 == v38)
      {
        goto LABEL_243;
      }

      if ((*(a4 + 169) & 4) != 0 && *(a4 + 160))
      {
        v9 = 0;
        v93 = 0;
        *(a4 + 112) += v38 - v48;
LABEL_275:
        v11 = v104;
        v6 = v113;
        goto LABEL_276;
      }

      v9 = v82;
      if (!v82)
      {
        v87 = *(a4 + 48);
        v88 = v38 - v87;
        if (v38 < v87)
        {
          v88 = 0;
          v87 = v38;
        }

        if (bitmap_range_find_last_set(*(v116 + 56), v88, v87, (a4 + 128)) && (v89 = *(a4 + 128), v89 < v38 - 1))
        {
          if (*(a4 + 190) == 1)
          {
            v90 = *(a4 + 191);
          }

          else
          {
            v90 = 0;
          }

          v9 = v38 + ~v89;
          spaceman_free_extent_cache_insert(*(v107 + 8 * *(a4 + 172)), v90 & 1, v89 - v48 + *(a4 + 112) + 1, v9);
        }

        else
        {
          v9 = 0;
        }
      }

LABEL_243:
      *(a4 + 136) = 0;
      v91 = *(a4 + 112) + v38 - v48;
      *(a4 + 112) = v91;
      v92 = *(a4 + 172);
      v11 = v104;
      v6 = v113;
      if (v92 == *(a4 + 176) && v91 >= *(a4 + 80) && v91 < *(a4 + 88) || (*(a4 + 190) & 1) == 0 && v92 == *(a4 + 180) && v91 >= *(a4 + 64) && v91 < *(a4 + 72))
      {
        v9 = 0;
        v91 = *(v32 + 8) + (*(v32 + 16) & 0xFFFFF);
        *(a4 + 112) = v91;
      }

      if (v91 >= *&v104[12 * v92])
      {
        v9 = 0;
        *(a4 + 112) = 0;
      }

      if (v116)
      {
        obj_release(v116);
      }

      v116 = 0;
      if (!v113)
      {
        goto LABEL_262;
      }

      v28 = v111;
      v29 = v109;
      if ((*(a4 + 190) & 1) == 0 || v9)
      {
        goto LABEL_107;
      }

      if (*(a4 + 160) || *(a4 + 104))
      {
        if (!spaceman_free_extent_cache_scan_should_pause(*(v107 + 8 * *(a4 + 172)), v113))
        {
          v9 = 0;
LABEL_262:
          v28 = v111;
          v29 = v109;
          goto LABEL_107;
        }

        v96 = *(a4 + 104);
        if (v96 > *(a4 + 160))
        {
          *(a4 + 152) = *(a4 + 96);
          *(a4 + 160) = v96;
        }

        v9 = 0;
        v93 = 0;
        *(a4 + 192) = 1;
LABEL_276:
        if (*(a4 + 136))
        {
          goto LABEL_302;
        }

        goto LABEL_277;
      }

LABEL_106:
      v9 = 0;
LABEL_107:
      if (++v7 >= v30)
      {
        v93 = 0;
        LODWORD(v7) = v30;
        goto LABEL_276;
      }
    }

    v78 = *(a4 + 48);
    v79 = v78 <= v38 - v48;
    if (v78 >= v38 - v48)
    {
      v80 = v38 - v48;
    }

    else
    {
      v80 = *(a4 + 48);
    }

    *(a4 + 128) = v48;
    *(a4 + 136) = v80;
    v81 = v78 <= v38 - v48 && v57;
    if (v79)
    {
      v82 = v38 - v48;
    }

    else
    {
      v82 = 0;
    }

    if (!v81)
    {
      if (*(a4 + 190) == 1)
      {
        v83 = *(a4 + 191);
      }

      else
      {
        v83 = 0;
      }

      spaceman_free_extent_cache_insert(*(v107 + 8 * *(a4 + 172)), v83 & 1, *(a4 + 112), v80);
      goto LABEL_219;
    }

    v9 = 0;
    v93 = 0;
    v8 = v103;
    v11 = v104;
    v6 = v113;
    if (v80)
    {
      break;
    }

LABEL_277:
    v95 = *(a4 + 160);
    if (v95 == *(a4 + 48))
    {
      break;
    }

    if (v9 || !v95)
    {
      if (v93)
      {
        break;
      }
    }

    else if (*(a4 + 168) & 0x400 | v93)
    {
      break;
    }

    if (*(a4 + 192))
    {
      break;
    }

    obj_release(v117);
    v117 = 0;
    ++v8;
    v12 = *(a4 + 172);
    v10 = v109;
  }

  while (v8 <= v11[12 * v12 + 4]);
LABEL_302:
  *(a4 + 193) = v8 == v11[12 * *(a4 + 172) + 4] + 1;
  if (*(a4 + 136))
  {
    *(a4 + 144) = *(v5 + 32 * v7 + 48);
  }

  if (v118)
  {
    obj_release(v118);
    v118 = 0;
  }

  if (v117)
  {
    obj_release(v117);
    v117 = 0;
  }

  if (v116)
  {
    obj_release(v116);
  }

  return v93;
}

uint64_t sub_10006D808(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, int a7, int a8)
{
  v8 = a6;
  v10 = a4;
  v11 = a3;
  v115 = 0;
  v119 = 0;
  v117 = 0;
  v12 = *(a3 + 376);
  v139 = 0;
  v140 = 0;
  v138 = 0;
  memset(v137, 170, sizeof(v137));
  if (a2)
  {
    v13 = a2;
  }

  else
  {
    v13 = a1;
  }

  v114 = v13;
  v112 = (v13 + 505);
  v113 = (a2 + 505);
  v116 = a8 & 0x10001;
  v118 = -1;
  v132 = a4;
  v125 = v12;
  while (1)
  {
    pthread_mutex_lock((v11 + 640));
    v14 = v10 / v12[9];
    v15 = v14 / v12[10];
    v135 = v12[17];
    if (v135)
    {
      v16 = v15 / v12[11];
      if (v16 != v118 || v115 == 0)
      {
        v18 = *(*(v11 + 896) + 8 * v16);
        if (v140)
        {
          obj_release(v140);
          v140 = 0;
        }

        v137[1] = v12;
        LODWORD(v137[2]) = 0;
        HIDWORD(v137[2]) = v16;
        v119 = v18;
        v19 = obj_get(a1[49], 1073741829, v18, &sm_cab_desc, &v137[1], 0, 0, v8, &v140);
        if (v19)
        {
          v107 = v19;
          log_err("%s:%d: %s error getting cab %d @ %lld: %d\n", "spaceman_modify_bits", 5882, (a1[48] + 212), v16, v119, v19);
          v108 = 1;
          goto LABEL_156;
        }

        v115 = *(v140 + 56);
        v118 = v16;
      }

      else
      {
        obj_lock(v140, 2);
      }

      pthread_mutex_unlock((v11 + 640));
      if (obj_xid(v140) == v8)
      {
        v22 = v119;
        v23 = v118;
      }

      else
      {
        v24 = sub_1000664BC(a1, v11, v8, v137);
        if (v24)
        {
          v107 = v24;
          if (nx_ratelimit_log_allowed(a1))
          {
            log_err("%s:%d: %s failed to allocate block from internal pool: %d\n", "spaceman_modify_bits", 5901, (a1[48] + 212), v107);
          }

          v108 = 1;
          v117 = 1;
          goto LABEL_157;
        }

        v22 = v137[0];
        v23 = v118;
        *(*(v11 + 896) + 8 * v118) = v137[0];
        obj_dirty(v140, v8, v22);
        v25 = sub_1000708C0(a1, v11, v119, v8);
        if (v25)
        {
          v107 = v25;
          log_err("%s:%d: %s failed to free internal pool block %lld: %d\n", "spaceman_modify_bits", 5908, (a1[48] + 212), v119, v25);
          v108 = 1;
          v117 = 1;
          goto LABEL_157;
        }
      }

      v21 = v115 + 40;
      v26 = *(v125 + 40);
      LODWORD(v15) = v15 - *(v125 + 44) * v23;
      v137[1] = v125;
      LODWORD(v137[2]) = 0;
      HIDWORD(v137[2]) = v14 / v26;
      v117 = 1;
      v119 = v22;
    }

    else
    {
      v20 = v12;
      v21 = *(v11 + 896);
      v137[1] = v20;
      LODWORD(v137[2]) = 0;
      HIDWORD(v137[2]) = v15;
      if (!v21)
      {
        v107 = 22;
        v108 = 1;
        goto LABEL_156;
      }
    }

    v27 = *(v21 + 8 * v15);
    v28 = obj_get(a1[49], 1073741829, v27, &sm_cib_desc, &v137[1], 0, 0, v8, &v139);
    if (v28)
    {
      v107 = v28;
      if (v118 == -1)
      {
        v106 = 0;
      }

      else
      {
        v106 = *(v125 + 44) * v118;
      }

      log_err("%s:%d: %s error getting cib %d @ %lld: %d\n", "spaceman_modify_bits", 5934, (a1[48] + 212), v106 + v15, v27, v28);
      v108 = 1;
      goto LABEL_153;
    }

    v126 = *(v139 + 56);
    if (obj_xid(v139) == v8)
    {
      v123 = v27;
      v29 = v125;
      v30 = v132;
      goto LABEL_29;
    }

    v31 = sub_1000664BC(a1, v11, v8, v137);
    if (v31)
    {
      v107 = v31;
      log_err("%s:%d: %s failed to allocate block from internal pool: %d\n");
      goto LABEL_150;
    }

    v123 = v137[0];
    *(v21 + 8 * v15) = v137[0];
    if (v140)
    {
      obj_dirty(v140, v8, v119);
    }

    obj_dirty(v139, v8, v123);
    v32 = sub_1000708C0(a1, v11, v27, v8);
    v29 = v125;
    v30 = v132;
    if (v32)
    {
      break;
    }

LABEL_29:
    if (!v135)
    {
      pthread_mutex_unlock((v11 + 640));
    }

    if (v140)
    {
      obj_unlock(v140, 2);
      v117 = 0;
    }

    v133 = v14 % *(v29 + 40);
    v127 = v126 + 40;
    v33 = v126 + 40 + 32 * v133;
    v34 = (v33 + 24);
    v35 = *(v33 + 24);
    if (a7 == 1)
    {
LABEL_34:
      if (v35)
      {
        goto LABEL_35;
      }

      if (((*(v33 + 16) ^ *(v33 + 20)) & 0xFFFFF) != 0)
      {
        v107 = nx_corruption_detected_int(a1);
        v108 = 0;
      }

      else
      {
        v108 = 0;
        v107 = 22;
      }

      goto LABEL_157;
    }

    while (1)
    {
LABEL_35:
      if (v35)
      {
        v36 = obj_get(a1[49], 1073741825, v35, &sm_bm_desc, 0, 0, 0, v8, &v138);
        if (v36)
        {
          v105 = v36;
          log_err("%s:%d: %s error getting cib %d bitmap %d @ %lld: %d\n");
          goto LABEL_144;
        }

        v37 = *(v138 + 56);
      }

      else
      {
        v37 = 0;
      }

      v38 = *(v29 + 36);
      v39 = v10 % v38;
      v40 = v38 - v10 % v38;
      if (a5 < v40)
      {
        v40 = a5;
      }

      v136 = v40;
      v129 = a5;
      if (v35 && *v33 == a6)
      {
        v128 = v35;
        goto LABEL_50;
      }

      v41 = sub_1000664BC(a1, v11, a6, v137);
      if (v41)
      {
        v104 = v41;
        log_err("%s:%d: %s failed to allocate block from internal pool: %d\n", "spaceman_modify_bits", 6004, (a1[48] + 212), v41);
        v108 = 0;
        v107 = v104;
        goto LABEL_157;
      }

      *v33 = a6;
      v42 = v137[0];
      *v34 = v137[0];
      v128 = v42;
      if (v35)
      {
        obj_dirty(v138, a6, v42);
        v43 = sub_1000708C0(a1, v11, v35, a6);
        if (v43)
        {
          v105 = v43;
          log_err("%s:%d: %s failed to free internal pool block %lld: %d\n");
LABEL_144:
          v108 = 0;
          v107 = v105;
          goto LABEL_157;
        }
      }

      else
      {
        v44 = obj_create(a1[49], 0x40000000, v42, &sm_bm_desc, 0, 0, a6, &v138);
        if (v44)
        {
          v107 = v44;
          log_err("%s:%d: %s failed to create bitmap object %lld: %d\n", "spaceman_modify_bits", 6019, (a1[48] + 212), v128, v44);
          v108 = 0;
          goto LABEL_157;
        }

        v37 = *(v138 + 56);
      }

LABEL_50:
      v45 = *(v11 + 376);
      if (a7 == 1)
      {
        v46 = bitmap_count_bits(v37, 0, v39, v136 + v39);
        v47 = v46;
        if (v46)
        {
          log_err("%s:%d: %s freeing 0x%llx:%lld, but %lld bits are already clear.  Double free?\n", "spaceman_clear_bits_in_bm", 5603, (a1[48] + 212), v30, a5, v46);
        }

        v48 = a1[47];
        v49 = *(v48 + 1248);
        v50 = v127 + 32 * v133;
        if (v49)
        {
          v51 = *(v48 + 1240);
          v141 = 0xAAAAAAAAAAAAAAAALL;
          v52 = calc_overlap_range(v30, v136, v51, v49, &v141);
          v53 = v52;
          if (v52)
          {
            v52 = bitmap_count_bits(v37, 0, v141 - *(v50 + 8), v141 + v52 - *(v50 + 8));
          }

          v54 = v10;
          v55 = v47 - v52;
        }

        else
        {
          v54 = v10;
          v53 = 0;
          v55 = v47;
        }

        bitmap_clear_range(v37, v39, v136);
        sub_10006FE58(a3, v37, v30 / *(v45 + 36));
        *(v50 + 20) += v136 - v47;
        pthread_mutex_lock((a3 + 576));
        *(v45 + 72) += v136 - v53 - v55;
        a5 = v129;
        v8 = a6;
        v59 = v133;
        v10 = v54;
        v11 = a3;
        if (a8)
        {
          v76 = *(a3 + 984);
          v64 = v76 >= v136;
          v77 = v76 - v136;
          if (!v64)
          {
            v77 = 0;
          }

          *(a3 + 984) = v77;
        }

LABEL_128:
        pthread_mutex_unlock((v11 + 576));
        v79 = 0;
        v107 = 0;
        v78 = 1;
        goto LABEL_129;
      }

      v56 = (*(v33 + 16) & 0xFFFFF) - v39;
      if (v56 >= v136)
      {
        v57 = v136;
      }

      else
      {
        v57 = (*(v33 + 16) & 0xFFFFF) - v39;
      }

      if (bitmap_range_is_clear(v37, v39, v57, v56))
      {
        bitmap_set_range(v37, v39, v57, v58);
        v59 = v133;
        sub_10006FE58(v11, v37, v133 + *(v45 + 40) * *(v126 + 32));
        pthread_mutex_lock((v11 + 576));
        v60 = *(v45 + 72);
        if (*(v11 + 1616))
        {
          v61 = *(v45 + 240) + v60 + *(v11 + 984) + *(v45 + 120) + *(v45 + 280) + *(v11 + 992);
          v62 = *(v45 + 184);
          v63 = *(v45 + 192);
          v64 = v62 >= v63;
          v65 = v62 - v63;
          if (!v64)
          {
            v65 = 0;
          }

          v64 = v61 >= v65;
          v66 = v61 - v65;
          if (!v64)
          {
            v66 = 0;
          }

          v67 = *(v11 + 1624);
          v68 = *(v11 + 1640);
          v64 = v67 >= v68;
          v69 = v67 - v68;
          if (v64)
          {
            v70 = v69;
          }

          else
          {
            v70 = 0;
          }

          v71 = *(v11 + 1648);
          v72 = *(v11 + 1656);
          v64 = v71 >= v72;
          v73 = v71 - v72;
          if (!v64)
          {
            v73 = 0;
          }

          v74 = v73 + v70;
          v64 = v66 >= v74;
          v75 = v66 - v74;
          if (!v64)
          {
            v75 = 0;
          }

          v120 = v75;
        }

        else
        {
          v70 = 0;
          v120 = 0;
        }

        v80 = a2;
        *(v33 + 20) -= v57;
        *(v45 + 72) = v60 - v57;
        v8 = a6;
        if (a8)
        {
          v82 = *(v11 + 848);
          if (*(v11 + 832) < v82)
          {
            panic("%s, Reserved space < reserved metadata: %llu < %llu\n", "Main", *(v11 + 832), v82);
          }

          if ((a8 & 0x40) != 0)
          {
            if (v82 < v57)
            {
              panic("reserved metadata space underflow: %lld (%lld)\n", *(v11 + 848), v57);
            }

            *(v11 + 848) = v82 - v57;
            *(v11 + 832) -= v57;
            v80 = a2;
          }

          else
          {
            v83 = *(v11 + 832);
            if (v83 - v82 >= v57)
            {
              v82 = v83 - v57;
            }

            else if (obj_type(v114) == 13)
            {
              log_err("%s:%d: %s reserved space underflow: %lld (+meta:%llu) < %lld\n", "spaceman_set_bits_in_bm", 5755, v112, *(v11 + 832) - v82, v82, v57);
            }

            else
            {
              log_err("%s:%d: %s reserved space underflow: %lld (+meta:%llu) < %lld\n", "spaceman_set_bits_in_bm", 5755, (*(v114 + 384) + 212), *(v11 + 832) - v82, v82, v57);
            }

            v80 = a2;
            *(v11 + 832) = v82;
          }

          v59 = v133;
          if (v80)
          {
            v84 = v80[51];
            v64 = v84 >= v57;
            v85 = v84 - v57;
            if (!v64)
            {
              v86 = obj_type(v80);
              v87 = v113;
              if (v86 != 13)
              {
                v87 = (a2[48] + 212);
              }

              log_err("%s:%d: %s fs reserved space underflow: %lld (%lld)\n", "spaceman_set_bits_in_bm", 5770, v87, a2[51], v57);
              v80 = a2;
              v85 = 0;
            }

            v80[51] = v85;
            goto LABEL_102;
          }

          v81 = 0;
        }

        else
        {
          if (!a2)
          {
            v81 = 0;
LABEL_119:
            if (*(v11 + 1616))
            {
              v98 = v57 - v81;
              if ((a8 & 0x10000) != 0)
              {
                v101 = *(v11 + 1640);
                if (v98 <= v70)
                {
                  v102 = v101 + v98;
                }

                else
                {
                  v102 = v101 + v70;
                }

                *(v11 + 1640) = v102;
              }

              else
              {
                v99 = v98 > v120;
                v100 = v98 - v120;
                if (v99)
                {
                  *(v11 + 1656) += v100;
                }
              }
            }

            goto LABEL_128;
          }

LABEL_102:
          v88 = v80[47];
          v89 = *(v88 + 72);
          v90 = *(v88 + 88);
          v91 = v89 - v90;
          if (v89 < v90)
          {
            v91 = 0;
          }

          if (v57 >= v91)
          {
            v81 = v91;
          }

          else
          {
            v81 = v57;
          }

          v92 = v90 + v57;
          *(v88 + 88) = v92;
          *(v45 + 192) += v81;
          if (v89)
          {
            v64 = v89 >= v92;
            v93 = v89 - v92;
            if (!v64)
            {
              v93 = 0;
            }

            v94 = v80[52];
            if (v93 >= v80[51])
            {
              v93 = v80[51];
            }

            v95 = *(v11 + 864);
            v80[52] = v93;
            *(v11 + 864) = v93 - v94 + v95;
          }

          fs_sb_dirty(v80, a6);
        }

        if (v116 == 65537)
        {
          v96 = *(v11 + 1632);
          v64 = v96 >= v57;
          v97 = v96 - v57;
          if (!v64)
          {
            v97 = 0;
          }

          *(v11 + 1632) = v97;
        }

        goto LABEL_119;
      }

      v78 = 0;
      v107 = 22;
      v79 = 1;
      v8 = a6;
      v59 = v133;
LABEL_129:
      obj_dirty(v11, v8, 0);
      obj_dirty(v139, v8, v123);
      obj_dirty(v138, v8, v128);
      obj_release(v138);
      v138 = 0;
      v30 += v136;
      v10 += v136;
      a5 -= v136;
      if (!v78 || a5 < 1 || v59 >= (*(v126 + 36) - 1))
      {
        break;
      }

      v133 = v59 + 1;
      v33 = v127 + 32 * (v59 + 1);
      v34 = (v33 + 24);
      v35 = *(v33 + 24);
      v29 = v125;
      if (a7 == 1)
      {
        goto LABEL_34;
      }
    }

    v132 = v30;
    obj_unlock(v139, 2);
    obj_release(v139);
    v139 = 0;
    if (a5 < 1)
    {
      v103 = 1;
    }

    else
    {
      v103 = v79;
    }

    v12 = v125;
    if (v103)
    {
      v108 = 1;
      goto LABEL_157;
    }
  }

  v107 = v32;
  log_err("%s:%d: %s failed to free internal pool block %lld: %d\n");
LABEL_150:
  v108 = 0;
LABEL_153:
  if (!v135)
  {
LABEL_156:
    pthread_mutex_unlock((v11 + 640));
  }

LABEL_157:
  if (v140 && (v117 & 1) != 0)
  {
    obj_unlock(v140, 2);
  }

  if (v139)
  {
    v109 = v108;
  }

  else
  {
    v109 = 1;
  }

  if ((v109 & 1) == 0)
  {
    obj_unlock(v139, 2);
  }

  if (v140)
  {
    obj_release(v140);
  }

  if (v139)
  {
    obj_release(v139);
  }

  if (v138)
  {
    obj_release(v138);
  }

  if (a7 == 1)
  {
    if (v107)
    {
      if (a5)
      {
        v110 = *(v11 + 984);
        if (v110)
        {
          *(v11 + 984) = v110 - a5;
        }
      }
    }
  }

  return v107;
}

uint64_t spaceman_free(char *a1, uint64_t a2, unint64_t a3, int64_t a4, unint64_t a5)
{
  v8 = a2;
  v25 = 0;
  if (obj_type(a1) == 13)
  {
    v10 = *(a1 + 49);
    v11 = a1;
  }

  else
  {
    v11 = 0;
    v10 = a1;
  }

  is_current_tx = xid_is_current_tx(v10, a5);
  v13 = 22;
  if (a4 >= 1 && is_current_tx)
  {
    v26 = 0xAAAAAAAAAAAAAAAALL;
    v13 = spaceman_get(v10, &v26);
    if (!v13)
    {
      v14 = v26;
      v15 = *(v26 + 1592);
      if (v15)
      {
        v16.i64[0] = vdupq_n_s64(1uLL).u64[0];
        v16.i64[1] = a4;
        v15[6] = vaddq_s64(v15[6], v16);
      }

      v17 = spaceman_extent_check(v10, v14, a3, a4);
      if (v17)
      {
        v18 = v17;
        if (nx_ratelimit_log_allowed(*(*a1 + 392)))
        {
          if (obj_type(a1) == 13)
          {
            v19 = a1 + 4040;
          }

          else
          {
            v19 = (*(a1 + 48) + 212);
          }

          log_err("%s:%d: %s attempt to free extent (0x%llx:0x%llx) which should not be freed: %d\n", "spaceman_free", 8742, v19, a3, a4, v18);
        }

        v13 = 22;
        goto LABEL_20;
      }

      v13 = obj_modify(v26, 0, a5);
      if (!v13)
      {
        if (v10[629] == 1)
        {
          v20 = sub_10006E898(v10, a3, a4, &v25);
          if (v20 | v25)
          {
            v13 = 0;
            goto LABEL_20;
          }

          pthread_mutex_lock((v26 + 384));
          v13 = sub_10006E920(v10, v26, a3, a4, a5);
          dev_unmap_flush(*(v10 + 48));
          if (!v13)
          {
            if (v11)
            {
              sub_10006EA1C(v11, v26, a4, a5);
            }

            v24 = v26;
            if (*(v26 + 1616))
            {
              sub_10006EB64(v26, v8, a4);
              v24 = v26;
            }

            obj_dirty(v24, a5, 0);
          }

          v23 = (v26 + 384);
        }

        else
        {
          pthread_mutex_lock((v26 + 512));
          v13 = sub_10006EC6C(v10, v26, 1, a3, a4, a5);
          if (!v13)
          {
            pthread_mutex_lock((v26 + 384));
            if (v11)
            {
              sub_10006EA1C(v11, v26, a4, a5);
            }

            v22 = v26;
            if (*(v26 + 1616))
            {
              sub_10006EB64(v26, v8, a4);
              v22 = v26;
            }

            obj_dirty(v22, a5, 0);
            pthread_mutex_unlock((v26 + 384));
          }

          v23 = (v26 + 512);
        }

        pthread_mutex_unlock(v23);
      }

LABEL_20:
      obj_release(v26);
    }
  }

  return v13;
}

uint64_t sub_10006E898(uint64_t *a1, unint64_t a2, unint64_t a3, _BOOL4 *a4)
{
  v8 = a1[52];
  pthread_mutex_lock(v8 + 8);
  pthread_mutex_lock(v8 + 6);
  v9 = sub_10006F044(a1, v8, 1, a2, a3, a4, 0);
  pthread_mutex_unlock(v8 + 6);
  pthread_mutex_unlock(v8 + 8);
  return v9;
}

uint64_t sub_10006E920(uint64_t *a1, uint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5)
{
  if (!xid_is_current_tx(a1, a5))
  {
    return 22;
  }

  v10 = spaceman_extent_check(a1, a2, a3, a4);
  if (v10)
  {
    v11 = v10;
    if (nx_ratelimit_log_allowed(a1))
    {
      log_err("%s:%d: %s attempt to free extent (0x%llx:0x%llx) which should not be free: %d\n", "spaceman_freed", 6134, (a1[48] + 212), a3, a4, v11);
    }

    return 22;
  }

  dev_unmap(a1[48]);

  return sub_1000705A8(a1, a2, a3, a4, 0, a5);
}

void sub_10006EA1C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v8 = *(a2 + 376);
  pthread_mutex_lock((a2 + 576));
  v9 = *(a1 + 376);
  v10 = *(v9 + 88);
  v11 = v10 >= a3;
  v12 = v10 - a3;
  if (v11)
  {
    *(v9 + 88) = v12;
  }

  else
  {
    v13 = obj_oid(a1);
    log_err("%s:%d: %s fs %lld alloc count underflow: %lld (%lld)\n", "spaceman_free_fs_deduct_block_counts", 8664, (a1 + 4040), v13, *(*(a1 + 376) + 88), a3);
    v12 = 0;
    v9 = *(a1 + 376);
    *(v9 + 88) = 0;
  }

  v14 = *(v9 + 72);
  if (v14)
  {
    v15 = v14 - v12;
    if (v14 < v12)
    {
      v15 = 0;
    }

    v16 = *(a1 + 416);
    if (v15 >= *(a1 + 408))
    {
      v15 = *(a1 + 408);
    }

    v17 = *(a2 + 864);
    *(a1 + 416) = v15;
    *(a2 + 864) = v15 - v16 + v17;
  }

  v11 = v14 >= v12;
  v18 = v14 - v12;
  if (v18 != 0 && v11)
  {
    if (v18 >= a3)
    {
      v18 = a3;
    }

    v19 = *(v8 + 192);
    v20 = v19 - v18;
    if (v19 < v18)
    {
      log_err("%s:%d: %s spaceman fs reserve alloc count underflow: %lld (%lld)\n", "spaceman_free_fs_deduct_block_counts", 8680, (a1 + 4040), *(v8 + 192), v18);
      v20 = 0;
    }

    *(v8 + 192) = v20;
  }

  pthread_mutex_unlock((a2 + 576));

  fs_sb_dirty(a1, a4);
}

uint64_t sub_10006EB64(uint64_t result, int a2, unint64_t a3)
{
  if (!*(result + 1616))
  {
    return result;
  }

  v5 = result;
  if ((a2 & 0x30000) == 0)
  {
    spaceman_entitled_reserve_active(0, result);
  }

  pthread_mutex_lock((v5 + 576));
  if ((a2 & 0x40) == 0)
  {
    goto LABEL_11;
  }

  if ((a2 & 0x10000) != 0)
  {
    v6 = (v5 + 1640);
    v7 = *(v5 + 1640);
  }

  else
  {
    v6 = (v5 + 1656);
    v7 = *(v5 + 1656);
  }

  if (v7 < a3)
  {
    a3 -= v7;
    *v6 = 0;
LABEL_11:
    if (a3)
    {
      v8 = *(v5 + 1624);
      v9 = *(v5 + 1616);
      v10 = v9 - v8;
      if (v9 > v8)
      {
        v11 = v8 + a3;
        v12 = a3 >= v10;
        v13 = a3 - v10;
        if (v13 == 0 || !v12)
        {
          v9 = v11;
        }

        if (v12)
        {
          a3 = v13;
        }

        else
        {
          a3 = 0;
        }

        *(v5 + 1624) = v9;
      }

      if ((a2 & 0x40) == 0 && a3)
      {
        if ((a2 & 0x10000) != 0)
        {
          v16 = *(v5 + 1640);
          v12 = v16 >= a3;
          v17 = v16 - a3;
          if (v12)
          {
            *(v5 + 1640) = v17;
          }

          else
          {
            *(v5 + 1640) = 0;
          }
        }

        else
        {
          v14 = *(v5 + 1656);
          v12 = v14 >= a3;
          v15 = v14 - a3;
          if (v12)
          {
            *(v5 + 1656) = v15;
          }

          else
          {
            *(v5 + 1656) = 0;
          }
        }
      }
    }

    goto LABEL_25;
  }

  *v6 = v7 - a3;
LABEL_25:

  return pthread_mutex_unlock((v5 + 576));
}

uint64_t sub_10006EC6C(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  v12 = *(a2 + 376);
  v36 = 0xAAAAAAAAAAAAAAAALL;
  v35[0] = 0xAAAAAAAAAAAAAAAALL;
  *(&v32 + 1) = 0xAAAAAAAAAAAAAAAALL;
  memset(v33, 170, 24);
  v13 = spaceman_fq_tree_get(a1, a2, a3, a6, 1, &v36);
  if (!v13)
  {
    *&v32 = 0;
    *&v34 = a6;
    *(&v34 + 1) = a4;
    v30 = 8;
    v31 = 16;
    v14 = bt_lookup_variant(v36, 0, &v34, &v31, 16, v35, &v30, 1, 0, 0);
    if (v14 == 2)
    {
      goto LABEL_13;
    }

    v13 = v14;
    if (v14)
    {
      goto LABEL_43;
    }

    if (v34 != a6)
    {
      goto LABEL_13;
    }

    if (v30)
    {
      v15 = v35[0];
    }

    else
    {
      v15 = 1;
      v35[0] = 1;
    }

    if (v15 + *(&v34 + 1) <= a4)
    {
      if (v15 + *(&v34 + 1) != a4)
      {
        goto LABEL_13;
      }
    }

    else
    {
      log_err("%s:%d: %s range 0x%llx:%lld overlaps with recently-freed range 0x%llx:%lld\n", "spaceman_fq_tree_insert", 4855, (a1[48] + 212), a4, a5, *(&v34 + 1), v15);
      v15 = v35[0];
      a5 += a4 - (v35[0] + *(&v34 + 1));
      if (a5 < 1)
      {
        v13 = 22;
        goto LABEL_43;
      }

      a4 = v35[0] + *(&v34 + 1);
    }

    v33[0] = v34;
    v16 = v15 + a5;
    *&v33[1] = v15 + a5;
    if (v34)
    {
LABEL_14:
      v34 = v33[0];
      v30 = 8;
      v31 = 16;
      v17 = bt_lookup_variant(v36, 0, &v34, &v31, 16, v35, &v30, 4, 0, 0);
      if (v17 == 2)
      {
LABEL_31:
        v30 = 8 * (v16 != 1);
        v13 = bt_insert(v36, 0, v33, 16, &v33[1], v30, a6);
        if (!v13)
        {
          pthread_mutex_lock((a2 + 576));
          v22 = v12 + 40 * a3;
          v25 = *(v22 + 200);
          v23 = (v22 + 200);
          v24 = v25;
          if (!v25)
          {
            v23[2] = a6;
          }

          *v23 = v24 + a5;
          pthread_mutex_unlock((a2 + 576));
          obj_dirty(a2, a6, 0);
          if (v32)
          {
            v26 = bt_remove(v36, 0, &v32, 0x10u, a6);
            if (v26)
            {
              log_err("%s:%d: %s removal of replaced free extent failed: %d\n", "spaceman_fq_tree_insert", 4932, (a1[48] + 212), v26);
            }
          }

          if (spaceman_fq_tree_over_threshold(a2, a3, v36, 0))
          {
            *&v27 = 0xAAAAAAAAAAAAAAAALL;
            *(&v27 + 1) = 0xAAAAAAAAAAAAAAAALL;
            v29[2] = v27;
            v29[3] = v27;
            v29[0] = v27;
            v29[1] = v27;
            sub_1000672B8(a1, v29, 0, 0);
              ;
            }

            sub_100067BC8(a1, v29);
          }

          v13 = 0;
        }

        goto LABEL_43;
      }

      v13 = v17;
      if (!v17)
      {
        if (v34 == a6)
        {
          if (v30)
          {
            v18 = v35[0];
          }

          else
          {
            v18 = 1;
            v35[0] = 1;
          }

          v19 = v16 + *(&v33[0] + 1);
          if (*(&v34 + 1) <= v16 + *(&v33[0] + 1))
          {
            if (*(&v34 + 1) < v16 + *(&v33[0] + 1))
            {
              v20 = v18 + *(&v34 + 1);
              log_err("%s:%d: %s range 0x%llx:%lld overlaps with recently-freed range 0x%llx:%lld\n", "spaceman_fq_tree_insert", 4897, (a1[48] + 212), a4, a5, *(&v34 + 1), v18);
              if (v20 > v19)
              {
                v16 += v20 - v19;
                *&v33[1] = v16;
              }

              if (v20 >= v19)
              {
                v21 = v19;
              }

              else
              {
                v21 = v20;
              }

              a5 = a5 - v21 + *(&v34 + 1);
            }

            else
            {
              v16 += v18;
              *&v33[1] = v16;
            }

            v32 = v34;
          }
        }

        goto LABEL_31;
      }

LABEL_43:
      obj_release(v36);
      return v13;
    }

LABEL_13:
    *&v33[0] = a6;
    *(&v33[0] + 1) = a4;
    v16 = a5;
    *&v33[1] = a5;
    goto LABEL_14;
  }

  return v13;
}

uint64_t sub_10006F044(uint64_t *a1, uint64_t a2, char a3, unint64_t a4, unint64_t a5, _BOOL4 *a6, void *a7)
{
  v7 = a6;
  v8 = a5;
  v9 = a4;
  v11 = a2;
  v60 = 0;
  v61 = 0;
  v58 = 0xAAAAAAAAAAAAAAAALL;
  v59 = 0;
  v57 = 0xAAAAAAAAAAAAAAAALL;
  if ((a3 & 2) != 0)
  {
    *a7 = 0;
  }

  v12 = *(a2 + 376);
  v13 = *(v12 + 48);
  if (v13 <= a5 || v13 - a5 < a4)
  {
    log_err("%s:%d: %s block range %lld:%lld out of %s bounds %lld\n", "spaceman_check_allocation_status_internal", 8850, (a1[48] + 212), a4, a5, "main", *(v12 + 48));
    return 22;
  }

  if (a5 <= 0)
  {
    is_set = 0;
    overlap = 0;
    if ((a3 & 3) == 0)
    {
LABEL_58:
      if (!overlap && is_set)
      {
        v56 = 0;
        overlap = spaceman_fq_tree_find_overlap(a1, v11, 1u, v9, v8, &v56);
        if (((overlap == 0) & v56) != 0)
        {
          is_set = 0;
        }
      }
    }

LABEL_62:
    if (overlap)
    {
      log_debug("%s:%d: %s %lld:%lld error: %d\n", "spaceman_check_allocation_status_internal", 8981, (a1[48] + 212), v9, v8, overlap);
    }

    goto LABEL_64;
  }

  is_set = 0;
  v17 = 0;
  v18 = a5 + a4;
  v53 = a3 & 3;
  v19 = -1;
  while (1)
  {
    v20 = *(v12 + 40);
    v21 = v9 / *(v12 + 36);
    v52 = v21;
    v22 = v21 / v20;
    if (*(v12 + 68))
    {
      v23 = *(v12 + 44);
      v24 = v22 / v23;
      v25 = v21 / v20;
      if (v22 / v23 == v19)
      {
LABEL_16:
        LODWORD(v28) = v22 - v23 * v19;
        LODWORD(v22) = v25;
        goto LABEL_18;
      }

      v26 = *(*(v11 + 896) + 8 * v24);
      if (v61)
      {
        obj_release(v61);
        v61 = 0;
      }

      v57 = v12;
      LODWORD(v58) = 0;
      HIDWORD(v58) = v24;
      v27 = obj_get(a1[49], 0x40000000, v26, &sm_cab_desc, &v57, 0, 0, 0, &v61);
      if (!v27)
      {
        v17 = *(v61 + 56) + 40;
        v23 = *(v12 + 44);
        v19 = v24;
        v25 = v52 / *(v12 + 40);
        goto LABEL_16;
      }

      v44 = v27;
      log_err("%s:%d: %s error getting cab %d @ %lld: %d\n", "spaceman_check_allocation_status_internal", 8877, (a1[48] + 212), v24, v26, v27);
      overlap = v44;
LABEL_57:
      v9 = a4;
      v7 = a6;
      v8 = a5;
      if (!v53)
      {
        goto LABEL_58;
      }

      goto LABEL_62;
    }

    v17 = *(v11 + 896);
    v28 = v21 / v20;
LABEL_18:
    v57 = v12;
    LODWORD(v58) = 0;
    HIDWORD(v58) = v22;
    if (!v17)
    {
      overlap = 22;
      goto LABEL_57;
    }

    v50 = v19;
    v51 = v17;
    v29 = *(v17 + 8 * v28);
    v30 = obj_get(a1[49], 0x40000000, v29, &sm_cib_desc, &v57, 0, 0, 0, &v60);
    if (v30)
    {
      overlap = v30;
      log_err("%s:%d: %s error getting cib %d @ %lld: %d\n", "spaceman_check_allocation_status_internal", 8902, (a1[48] + 212), v52 / *(v12 + 40), v29, v30);
      goto LABEL_57;
    }

    if (v9 < v18)
    {
      break;
    }

    overlap = 0;
LABEL_46:
    obj_release(v60);
    v60 = 0;
    if (!overlap)
    {
      v17 = v51;
      v19 = v50;
      if (v9 < v18)
      {
        continue;
      }
    }

    goto LABEL_57;
  }

  v31 = v52 % *(v12 + 40);
  v32 = *(v60 + 56);
  while (1)
  {
    if (v31 >= *(v32 + 36))
    {
LABEL_42:
      overlap = 0;
LABEL_45:
      v11 = a2;
      goto LABEL_46;
    }

    v33 = v32 + 40 + 32 * v31;
    v34 = *(v33 + 24);
    if (!v34)
    {
      break;
    }

    v35 = obj_get(a1[49], 0x40000000, v34, &sm_bm_desc, 0, 0, 0, 0, &v59);
    if (v35)
    {
      overlap = v35;
      log_err("%s:%d: %s error getting cib %d bitmap %d @ %lld: %d\n", "spaceman_check_allocation_status_internal", 8929, (a1[48] + 212), v52 / *(v12 + 40), v31, v34, v35);
      goto LABEL_45;
    }

    v36 = *(v59 + 56);
    v37 = *(v12 + 36);
    v38 = v9 % v37;
    v39 = v37 - v9 % v37;
    if (v18 - v9 >= v39)
    {
      v40 = v39;
    }

    else
    {
      v40 = v18 - v9;
    }

    if (a3)
    {
      is_clear = bitmap_range_is_clear(v36, v38, v40, v39);
      v43 = a3 & 2 | is_clear;
      is_set = is_clear == 0;
      obj_release(v59);
      v59 = 0;
      if (!v43)
      {
        overlap = 0;
        is_set = 1;
        goto LABEL_53;
      }
    }

    else if ((a3 & 2) != 0)
    {
      *a7 += bitmap_count_bits(v36, 0, v38, v40 + v38);
      obj_release(v59);
      v59 = 0;
    }

    else
    {
      is_set = bitmap_range_is_set(v36, v38, v40);
      obj_release(v59);
      v59 = 0;
      if (!is_set)
      {
        goto LABEL_52;
      }
    }

LABEL_41:
    v9 += v40;
    ++v31;
    if (v9 >= v18)
    {
      goto LABEL_42;
    }
  }

  if (v53)
  {
    v41 = (*(v33 + 20) & 0xFFFFF) + v9 / *(v12 + 36) * *(v12 + 36) - v9;
    if (v18 - v9 >= v41)
    {
      v40 = v41;
    }

    else
    {
      v40 = v18 - v9;
    }

    is_set = 0;
    if (a7)
    {
      *a7 += v40;
    }

    goto LABEL_41;
  }

  is_set = 0;
LABEL_52:
  overlap = 0;
LABEL_53:
  v7 = a6;
LABEL_64:
  if (v61)
  {
    obj_release(v61);
  }

  if (v60)
  {
    obj_release(v60);
  }

  if (v59)
  {
    obj_release(v59);
  }

  *v7 = is_set;
  return overlap;
}

uint64_t spaceman_reserve(void *a1, unsigned int a2, uint64_t a3, unint64_t a4, unsigned int *a5)
{
  v9 = a1;
  v33 = a3;
  if (obj_type(a1) == 13)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    v9 = v10[49];
  }

  v32 = 0xAAAAAAAAAAAAAAAALL;
  v34 = 0;
  v31 = 0;
  if (a3 < 1)
  {
    return 22;
  }

  v11 = spaceman_get(v9, &v32);
  if (!v11)
  {
    v11 = sub_10006BF20(v32, a2, &v34, &v31, (*(v9[47] + 48) >> 1) & 1);
    v12 = v32;
    if (!v11)
    {
      pthread_mutex_lock(v32 + 6);
      v13 = v31;
      v14 = a2 & 0x30000;
      v15 = &v34;
      do
      {
        if (!v13)
        {
          pthread_mutex_unlock(v32 + 6);
          v11 = 28;
          goto LABEL_34;
        }

        v16 = *v15;
        if (!v14)
        {
          spaceman_entitled_reserve_active(0, v32);
        }

        v17 = sub_10006BFF8(v9, v10, v32, v16, a2, &v33, a4);
        --v13;
        v15 = (v15 + 4);
      }

      while (v17 == 7);
      v11 = v17;
      if (v17)
      {
        pthread_mutex_unlock(v32 + 6);
      }

      else
      {
        pthread_mutex_lock(v32 + 9);
        v18 = v32;
        v19 = v33;
        v20 = &v32->__sig + v16;
        v20[104] += v33;
        if ((a2 & 0x40) != 0)
        {
          v20[106] += v19;
        }

        if (v10)
        {
          v21 = v10[51] + v19;
          v10[51] = v21;
          v22 = v10[47];
          v23 = *(v22 + 72);
          if (v23)
          {
            v24 = *(v22 + 88);
            v25 = v23 >= v24;
            v26 = v23 - v24;
            if (!v25)
            {
              v26 = 0;
            }

            if (v26 < v21)
            {
              v21 = v26;
            }

            v27 = *&v18[13].__opaque[24] - v10[52];
            v10[52] = v21;
            *&v18[13].__opaque[24] = v27 + v21;
          }
        }

        if (v16 == 1)
        {
          v28 = 16;
        }

        else
        {
          v28 = 8;
        }

        v29 = v28 | a2 & 0x40;
        *a5 = v29;
        if (*&v18[25].__opaque[8])
        {
          *a5 = v29 | v14;
          if ((a2 & 0x10000) != 0)
          {
            *&v18[25].__opaque[24] += v19;
          }
        }

        pthread_mutex_unlock(v18 + 9);
        pthread_mutex_unlock(v32 + 6);
        v11 = 0;
      }

LABEL_34:
      v12 = v32;
    }

    obj_release(v12);
  }

  return v11;
}

uint64_t spaceman_unreserve(uint64_t a1, unsigned int a2, unint64_t a3)
{
  if (obj_type(a1) == 13)
  {
    v6 = a1;
  }

  else
  {
    v6 = 0;
  }

  v7 = a1;
  if (v6)
  {
    v7 = v6[49];
  }

  v29 = 0xAAAAAAAAAAAAAAAALL;
  v8 = spaceman_get(v7, &v29);
  if (!v8)
  {
    v9 = (a2 >> 4) & 1;
    pthread_mutex_lock((v29 + 384));
    pthread_mutex_lock((v29 + 576));
    if (*(v29 + 832 + 8 * v9) < *(v29 + 848 + 8 * v9))
    {
      v10 = "T2";
      if (!v9)
      {
        v10 = "Main";
      }

      panic("%s, Reserved space < reserved metadata: %llu < %llu\n", v10, *(v29 + 832), *(v29 + 848));
    }

    v11 = v29;
    v12 = *(v29 + 848 + 8 * v9);
    if ((a2 & 0x40) != 0)
    {
      if (v12 < a3)
      {
        panic("reserved metadata space underflow: %lld (%lld)\n", *(v29 + 848 + 8 * v9), a3);
      }

      *(v29 + 848 + 8 * v9) = v12 - a3;
      *(v11 + 8 * v9 + 832) -= a3;
      if (!v6)
      {
LABEL_35:
        v20 = v29;
        if ((a2 & 0x10000) == 0)
        {
LABEL_42:
          pthread_mutex_unlock((v20 + 576));
          pthread_mutex_unlock((v29 + 384));
          obj_release(v29);
          return v8;
        }

LABEL_36:
        v25 = *(v20 + 1632);
        v22 = v25 >= a3;
        v26 = v25 - a3;
        if (v22)
        {
          *(v20 + 1632) = v26;
        }

        else
        {
          if (obj_type(a1) == 13)
          {
            v27 = (a1 + 4040);
          }

          else
          {
            v27 = (*(a1 + 384) + 212);
          }

          log_err("%s:%d: %s entitled reserve: reserved space underflow: %lld (%lld)\n", "spaceman_unreserve", 9216, v27, *(v29 + 1632), a3);
          v20 = v29;
          *(v29 + 1632) = 0;
        }

        goto LABEL_42;
      }
    }

    else
    {
      v13 = *(v29 + 832 + 8 * v9);
      if (v13 - v12 >= a3)
      {
        *(v29 + 832 + 8 * v9) = v13 - a3;
        if (!v6)
        {
          goto LABEL_35;
        }
      }

      else
      {
        if (obj_type(a1) == 13)
        {
          v14 = (a1 + 4040);
        }

        else
        {
          v14 = (*(a1 + 384) + 212);
        }

        log_err("%s:%d: %s reserved space underflow: %lld (+meta:%llu) < %lld\n", "spaceman_unreserve", 9191, v14, *(v29 + 8 * v9 + 832) - v12, v12, a3);
        *(v29 + 8 * v9 + 832) = v12;
        if (!v6)
        {
          goto LABEL_35;
        }
      }
    }

    v15 = v6[51];
    v16 = v15 - a3;
    if (v15 < a3)
    {
      if (obj_type(a1) == 13)
      {
        v17 = (a1 + 4040);
      }

      else
      {
        v17 = (*(a1 + 384) + 212);
      }

      log_err("%s:%d: %s fs reserved space underflow: %lld (%lld)\n", "spaceman_unreserve", 9200, v17, v6[51], a3);
      v16 = 0;
    }

    v6[51] = v16;
    v18 = v6[47];
    v19 = *(v18 + 72);
    v20 = v29;
    if (v19)
    {
      v21 = *(v18 + 88);
      v22 = v19 >= v21;
      v23 = v19 - v21;
      if (!v22)
      {
        v23 = 0;
      }

      if (v23 < v16)
      {
        v16 = v23;
      }

      v24 = *(v29 + 864) - v6[52];
      v6[52] = v16;
      *(v20 + 864) = v24 + v16;
    }

    if ((a2 & 0x10000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_36;
  }

  return v8;
}

uint64_t spaceman_fs_bounds_clear(void *a1, uint64_t a2, unint64_t a3)
{
  v27 = 0xAAAAAAAAAAAAAAAALL;
  result = spaceman_get(a1, &v27);
  if (!result)
  {
    v6 = *&v27[5].__opaque[48];
    result = obj_modify(v27, 0, a3);
    if (!result)
    {
      pthread_mutex_lock(v27 + 6);
      pthread_mutex_lock(v27 + 9);
      v7 = *(a2 + 376);
      v8 = v7[9];
      v9 = v7[11];
      if (v9)
      {
        v10 = obj_oid(a2);
        log_err("%s:%d: %s file system %lld alloc block count is not zero: %lld/%lld\n", "spaceman_fs_bounds_clear", 9426, (a2 + 4040), v10, v9, v8);
        v7 = *(a2 + 376);
        if (v7[9])
        {
          goto LABEL_8;
        }
      }

      else if (v8)
      {
        goto LABEL_8;
      }

      if (!v7[10])
      {
        v19 = v27;
LABEL_25:
        pthread_mutex_unlock(v19 + 9);
        pthread_mutex_unlock(v27 + 6);
        obj_release(v27);
        return 0;
      }

LABEL_8:
      if (v9 >= v8)
      {
        v9 = v8;
      }

      v11 = *(v6 + 184);
      if (v11 < v8)
      {
        v12 = obj_oid(a2);
        log_err("%s:%d: %s file system %lld fs reserve block count %lld larger than global fs reserve block count %lld\n", "spaceman_fs_bounds_clear", 9442, (a2 + 4040), v12, v8, *(v6 + 184));
        v11 = *(v6 + 184);
        v8 = v11;
      }

      *(v6 + 184) = v11 - v8;
      v13 = *(v6 + 192);
      if (v13 < v9)
      {
        v14 = obj_oid(a2);
        log_err("%s:%d: %s file system %lld fs reserve alloc count %lld larger than global fs reserve alloc count %lld\n", "spaceman_fs_bounds_clear", 9449, (a2 + 4040), v14, v9, *(v6 + 192));
        v13 = *(v6 + 192);
        v9 = v13;
      }

      *(v6 + 192) = v13 - v9;
      v15 = v27;
      v16 = *&v27[25].__opaque[8];
      if (v16)
      {
        if (v8 > v9)
        {
          v17 = *&v27[25].__opaque[16];
          if (v17 < v16)
          {
            if (v8 - v9 + v17 < v16)
            {
              v16 = v8 - v9 + v17;
            }

            *&v27[25].__opaque[16] = v16;
          }
        }
      }

      v18 = *(a2 + 376);
      *(v18 + 72) = 0;
      *(v18 + 80) = 0;
      obj_dirty(v15, a3, 0);
      fs_sb_dirty(a2, a3);
      v19 = v27;
      v20 = *(a2 + 376);
      v21 = *(v20 + 72);
      v22 = *(v20 + 88);
      v23 = v21 >= v22;
      v24 = v21 - v22;
      if (!v23)
      {
        v24 = 0;
      }

      v25 = *(a2 + 416);
      if (v24 >= *(a2 + 408))
      {
        v24 = *(a2 + 408);
      }

      v26 = *&v27[13].__opaque[24];
      *(a2 + 416) = v24;
      *&v19[13].__opaque[24] = v24 - v25 + v26;
      goto LABEL_25;
    }
  }

  return result;
}

uint64_t spaceman_unset_block_out_range(uint64_t *a1, unint64_t a2)
{
  v2 = a1[47];
  if (!*(v2 + 1248))
  {
    return 0;
  }

  v9 = 0xAAAAAAAAAAAAAAAALL;
  v10 = 0xAAAAAAAAAAAAAAAALL;
  v5 = spaceman_get(a1, &v10);
  if (!v5)
  {
    v6 = *(v10 + 376);
    v5 = obj_modify(v10, 0, a2);
    v7 = v10;
    if (!v5)
    {
      pthread_mutex_lock((v10 + 512));
      pthread_mutex_lock((v10 + 384));
      v5 = sub_10006F044(a1, v10, 2, *(v2 + 1240), *(v2 + 1248), &v11, &v9);
      pthread_mutex_lock((v10 + 576));
      *(v6 + 72) += v9;
      pthread_mutex_unlock((v10 + 576));
      *(a1[47] + 1240) = 0u;
      pthread_mutex_unlock((v10 + 384));
      pthread_mutex_unlock((v10 + 512));
      obj_dirty(v10, a2, 0);
      v7 = v10;
    }

    obj_release(v7);
  }

  return v5;
}

BOOL sub_10006FE58(_BOOL8 result, _DWORD *a2, uint64_t a3)
{
  v3 = *(result + 376);
  v4 = *(result + 1496);
  v10 = 0;
  v11 = 0;
  if (v4)
  {
    v7 = *(result + 1592);
    if (v7)
    {
      ++*(v7 + 112);
    }

    if (*(v3 + 56) - 1 == a3)
    {
      v8 = *(v3 + 48) % *(v3 + 36);
    }

    else
    {
      v8 = *(v3 + 36);
    }

    *(v4 + 4 * a3) = (*(v4 + 4 * a3) & 0xFEFFFFFF | ((*a2 & 1) << 24)) ^ 0x1000000;
    result = bitmap_range_find_clear_range(a2, 0xFFFFFFLL, 0, v8, &v11, &v10);
    if (v8 < 0x40 || (*&a2[2 * (v8 >> 6) - 2] & 0x8000000000000000) != 0)
    {
      v9 = *(v4 + 4 * a3) & 0xFDFFFFFF;
    }

    else
    {
      v9 = *(v4 + 4 * a3) | 0x2000000;
    }

    *(v4 + 4 * a3) = v9 & 0xFF000000 | v10 & 0xFFFFFF;
  }

  return result;
}

uint64_t sub_10006FF40(uint64_t result, uint64_t a2)
{
  if (a2 && *(a2 + 62) == 1 && (*(a2 + 63) & 1) == 0)
  {
    v3 = result;
    v7.tv_sec = 0xAAAAAAAAAAAAAAAALL;
    v7.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
    result = clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &v7);
    tv_sec = v7.tv_sec;
    tv_nsec = v7.tv_nsec;
    *a2 = v7.tv_sec;
    tv_nsec /= 1000;
    *(a2 + 8) = tv_nsec;
    v6 = 1000000 * tv_sec + tv_nsec;
    *(a2 + 32) = v6;
    if (v6 - *(a2 + 24) >= 1000 * *(a2 + 60))
    {
      atomic_fetch_add_explicit((*(v3 + 384) + 152), 1uLL, memory_order_relaxed);
      ++*(a2 + 56);
      *(a2 + 24) = *(a2 + 32);
    }
  }

  return result;
}

uint64_t sub_100070018(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v5 = *(a2 + 376);
  v6 = *(v5 + 164) & 0x7FFFFFFF;
  if (v6 <= a3)
  {
    return 22;
  }

  v7 = *(v5 + 322);
  if (v7 == 0xFFFF)
  {
    v8 = *(a2 + 888);
    goto LABEL_7;
  }

  if (v6 > v7)
  {
    v8 = *(a2 + 888);
    *(v8 + 2 * *(v5 + 322)) = a3;
LABEL_7:
    *(v8 + 2 * a3) = -1;
    *(v5 + 322) = a3;
    if (*(v5 + 320) == -1)
    {
      *(v5 + 320) = a3;
    }

    obj_dirty(a2, a4, 0);
    return 0;
  }

  return nx_corruption_detected_int(a1);
}

uint64_t sub_1000700C0(uint64_t result, uint64_t a2, unsigned int a3, unint64_t a4)
{
  v4 = *(a2 + 376) + 40 * a3;
  v6 = *(v4 + 200);
  v5 = (v4 + 200);
  v7 = v6 - a4;
  if (v6 >= a4)
  {
    *v5 = v7;
  }

  else
  {
    v11 = result;
    result = nx_ratelimit_log_allowed(result);
    if (result)
    {
      result = log_err("%s:%d: %s sfq %d count underflow %lld - %lld\n", "spaceman_decrement_free_queue_count", 6155, (*(v11 + 384) + 212), a3, *(*(a2 + 376) + 40 * a3 + 200), a4);
    }

    *(*(a2 + 376) + 40 * a3 + 200) = 0;
  }

  return result;
}

uint64_t sub_100070180(uint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t *a5)
{
  v7 = *(*(a2 + 376) + 152);
  v9 = 0xAAAAAAAAAAAAAAAALL;
  result = spaceman_ip_block_index(a1, a2, a3, &v9);
  if (result == 2)
  {
    return 22;
  }

  if (result)
  {
    return result;
  }

  if ((v7 & 0x7FFFFFFFFFFFFFFFLL) <= a4 || v9 > (v7 & 0x7FFFFFFFFFFFFFFFuLL) - a4)
  {
    return 22;
  }

  result = 0;
  if (a5)
  {
    *a5 = v9;
  }

  return result;
}

uint64_t sub_100070204(uint64_t result, uint64_t a2, int a3, uint64_t a4, unint64_t a5)
{
  v9 = result;
  if (a3)
  {
    if (!*(a2 + 1540))
    {
      return result;
    }

    pthread_mutex_unlock((a2 + 512));
    v10 = *(a2 + 1540) + 16;
    v11 = 16;
  }

  else
  {
    if (!*(a2 + 1542))
    {
      return result;
    }

    pthread_mutex_unlock((a2 + 448));
    v11 = 0;
    v10 = *(a2 + 1542);
  }

  sub_10006FF40(v9, a4);
  v12 = v10;
  if (v11 < v10)
  {
    v13 = 16 * v11;
    v14 = v10 - v11;
    do
    {
      dev_unmap(v9[48]);
      v13 += 16;
      --v14;
    }

    while (v14);
  }

  dev_unmap_flush(v9[48]);
  if (a3)
  {
    pthread_mutex_lock((a2 + 512));
    v15 = 384;
  }

  else
  {
    v15 = 448;
  }

  result = pthread_mutex_lock((a2 + v15));
  if (v11 < v10)
  {
    v16 = 16 * v11;
    v17 = v12 - v11;
    do
    {
      v18 = (*(a2 + 1544) + v16);
      v19 = *v18;
      v20 = v18[1];
      if (a3)
      {
        result = sub_1000705A8(v9, a2, v19, v20, 1, a5);
      }

      else
      {
        result = sub_100070368(v9, a2, v19, v20, a5);
      }

      v16 += 16;
      --v17;
    }

    while (v17);
  }

  if (a3)
  {
    result = pthread_mutex_unlock((a2 + 384));
    *(a2 + 1560) = 0;
    *(a2 + 1540) = 0;
  }

  else
  {
    *(a2 + 1552) = 0;
    *(a2 + 1542) = 0;
  }

  return result;
}

const char *sub_100070368(uint64_t *a1, void *a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = a2[47];
  v25 = 0;
  result = xid_is_current_tx(a1, a5);
  if (result)
  {
    v26 = 0xAAAAAAAAAAAAAAAALL;
    v23 = 0xAAAAAAAAAAAAAAAALL;
    v24 = 0xAAAAAAAAAAAAAAAALL;
    result = sub_100070180(a1, a2, a3, a4, &v26);
    if (result)
    {
      if (result == 22)
      {
        return log_err("%s:%d: %s attempt to free block(s) outside of internal pool: 0x%llx:0x%llx\n");
      }

      else
      {
        return log_err("%s:%d: %s Error mapping freed IP block range 0x%llx:0x%llx to index: %d\n");
      }
    }

    else
    {
      v12 = 8 * *(v10 + 32);
      if (v12)
      {
        v13 = a4 < 1;
      }

      else
      {
        v13 = 1;
      }

      if (!v13)
      {
        v14 = v12;
        v15 = v26;
        v21 = v10;
        do
        {
          v16 = v15 / v14;
          v17 = *(a2[110] + 2 * (v15 / v14));
          result = spaceman_ip_bm_block_address(a1, v10, v17, &v24);
          if (result)
          {
            break;
          }

          result = obj_get(a1[49], 1073741825, v24, &sm_bm_desc, 0, 0, 0, a5, &v25);
          if (result)
          {
            break;
          }

          v18 = *(v25 + 56);
          v19 = v26 % v14;
          if (a4 >= (v14 - v26 % v14))
          {
            v20 = v14 - v26 % v14;
          }

          else
          {
            v20 = a4;
          }

          if (*(a2[109] + 8 * v16) != a5)
          {
            v23 = 0;
            v22 = 0;
            if (sub_1000663B8(a1, a2, a5, &v23, &v22) || sub_100070018(a1, a2, v17, a5))
            {
              return obj_release(v25);
            }

            v24 = v23;
            *(a2[110] + 2 * v16) = v22;
            *(a2[109] + 8 * v16) = a5;
          }

          bitmap_clear_range(v18, v19, v20);
          obj_dirty(v25, a5, v24);
          result = obj_release(v25);
          v15 = v26 + v20;
          v26 += v20;
          v13 = a4 <= v20;
          a4 -= v20;
          v10 = v21;
        }

        while (!v13);
      }
    }
  }

  return result;
}

uint64_t sub_1000705A8(uint64_t *a1, uint64_t a2, unint64_t a3, unint64_t a4, int a5, unint64_t a6)
{
  if (a4)
  {
    spaceman_handle_metazone_freed(a1, a2, a3);
  }

  v12 = sub_10006D808(a1, 0, a2, a3, a4, a6, 1, a5);
  if (!v12)
  {
    spaceman_free_extent_cache_insert(*(a2 + 1576), 0, a3, a4);
  }

  return v12;
}

unint64_t sub_100070644(unint64_t result, unsigned int a2, unint64_t a3, void *a4, uint64_t a5)
{
  v5 = a5;
  v6 = a4;
  v7 = result;
  v8 = *(result + 376);
  v9 = a2;
  v10 = *(v8 + 48 * a2 + 56);
  v11 = a4[1];
  v12 = *(v8 + 36);
  v13 = *a4 / v12;
  v14 = result + 1496;
  v15 = *(*(result + 1496 + 8 * a2) + 4 * v13) & 0xFFFFFF;
  if (a3)
  {
    v16 = a3;
  }

  else
  {
    v16 = *(v8 + 48 * a2 + 56);
  }

  if (v10 < v16)
  {
    v16 = *(v8 + 48 * a2 + 56);
  }

  if (v12 >= 0xFFFFFF)
  {
    v17 = 0xFFFFFF;
  }

  else
  {
    v17 = *(v8 + 36);
  }

  if (v15 == v17 || v16 < 2)
  {
    v19 = *a4 / v12;
    LODWORD(v20) = *(*(result + 1496 + 8 * a2) + 4 * v13) & 0xFFFFFF;
    goto LABEL_37;
  }

  v21 = v16 - 1;
  v22 = v13 + 1;
  v23 = *(*(result + 1496 + 8 * a2) + 4 * v13) & 0xFFFFFF;
  v24 = *a4 / v12;
  do
  {
    v19 = v22 % v10;
    v25 = *(v14 + 8 * v9);
    v26 = *(v25 + 4 * (v22 % v10));
    LODWORD(v20) = v26 & 0xFFFFFF;
    if ((v26 & 0xFFFFFFu) > v15)
    {
      v13 = v22 % v10;
      v15 = v26 & 0xFFFFFF;
    }

    if (v20 > v23)
    {
      if (*(v6 + 16) == 1)
      {
        if ((v26 & 0xC000000) != 0)
        {
          goto LABEL_34;
        }

        v27 = *(v7 + 376);
        v28 = v27 + 48 * v9;
        v29 = *(v28 + 56);
        if (v29 > v19)
        {
          v30 = v6[4];
          if (v30)
          {
            v46 = v24;
            v47 = v7;
            v49 = v11;
            v50 = v8;
            v31 = *(v27 + 36);
            v32 = v31;
            if (v29 - 1 == v19)
            {
              v32 = *(v28 + 48) % v31;
            }

            v48 = v6;
            result = calc_overlap_range(v19 * v31, v32, v6[3], v30, 0);
            v6 = v48;
            v11 = v49;
            v8 = v50;
            v24 = v46;
            v7 = v47;
            if (result)
            {
              goto LABEL_34;
            }

            LODWORD(v20) = *(v25 + 4 * v19) & 0xFFFFFF;
          }
        }
      }

      LODWORD(v12) = *(v8 + 36);
      if (v12 >= 0xFFFFFF)
      {
        v33 = 0xFFFFFF;
      }

      else
      {
        v33 = *(v8 + 36);
      }

      if (v11 <= v20 || v20 == v33)
      {
        goto LABEL_36;
      }

      v24 = v22 % v10;
      v23 = v20;
    }

LABEL_34:
    ++v22;
    --v21;
  }

  while (v21);
  LODWORD(v12) = *(v8 + 36);
  v19 = v24;
  LODWORD(v20) = v23;
LABEL_36:
  v12 = v12;
  v5 = a5;
LABEL_37:
  v35 = v19 * v12;
  if (v11 >= v20)
  {
    v20 = v20;
  }

  else
  {
    v20 = v11;
  }

  *v5 = v35;
  *(v5 + 8) = v20;
  if (*(v6 + 16) == 1)
  {
    v36 = *(v7 + 376);
    v37 = v36 + 48 * v9;
    v38 = *(v37 + 56);
    if (v38 > v19 && (v39 = v6[4]) != 0)
    {
      v40 = *(v36 + 36);
      v41 = v19 * v40;
      v42 = v11;
      v43 = v8;
      if (v38 - 1 == v19)
      {
        v40 = *(v37 + 48) % v40;
      }

      result = calc_overlap_range(v41, v40, v6[3], v39, 0);
      v44 = result == 0;
      v8 = v43;
      v11 = v42;
    }

    else
    {
      v44 = 1;
    }
  }

  else
  {
    v44 = 0;
  }

  *(v5 + 16) = v44;
  if (v19 != v13)
  {
    v45 = v15;
    if (v11 < v15)
    {
      v45 = v11;
    }

    *(v5 + 24) = v13 * *(v8 + 36);
    *(v5 + 32) = v45;
    *(v5 + 40) = 0;
  }

  return result;
}

uint64_t sub_1000708C0(uint64_t *a1, pthread_mutex_t *a2, unint64_t a3, unint64_t a4)
{
  v8 = 22;
  if (xid_is_current_tx(a1, a4))
  {
    pthread_mutex_lock(a2 + 7);
    v9 = spaceman_ip_block_index(a1, a2, a3, &v11);
    if (v9 == 2)
    {
      v8 = 22;
    }

    else
    {
      v8 = v9;
    }

    if (!v8)
    {
      v8 = sub_10006EC6C(a1, a2, 0, a3, 1, a4);
    }

    pthread_mutex_unlock(a2 + 7);
  }

  return v8;
}

uint64_t spaceman_metazone_init(uint64_t a1, unint64_t a2)
{
  v26 = 0;
  if (*(a1 + 637) == 1)
  {
    log_debug("%s:%d: %s Skipping metazone_init() as backing store is sparse\n", "spaceman_metazone_init", 72, (*(a1 + 384) + 212));
    return 0;
  }

  memset(v27, 170, sizeof(v27));
  v2 = spaceman_get(a1, &v26);
  if (v2)
  {
    return v2;
  }

  v4 = v26;
  if (!v26)
  {
    return 19;
  }

  if (!*(v26 + 376))
  {
    v2 = 19;
    goto LABEL_32;
  }

  if (*(v26 + 1112) & 1) != 0 || (*(v26 + 1216))
  {
    v2 = 0;
LABEL_32:
    obj_release(v4);
    return v2;
  }

  v5 = 0;
  v6 = 1;
  do
  {
    v7 = v6;
    v8 = v26;
    v9 = v26 + 104 * v5;
    *(v9 + 1112) = 0;
    *(v9 + 1016) = 0u;
    *(v9 + 1032) = 0u;
    *(v9 + 1048) = 0u;
    *(v9 + 1064) = 0u;
    *(v9 + 1080) = 0u;
    *(v9 + 1096) = 0u;
    v10 = *(v8 + 376);
    v11 = *(v10 + 32);
    v12 = *(v10 + 48 * v5 + 48);
    if (is_mul_ok(v12, v11))
    {
      v13 = v12 * v11;
    }

    else
    {
      v13 = 0x40000000000;
    }

    if (!spaceman_metazone_get_size(a2, v11, v12, v13, &v27[2], &v27[1]))
    {
      v14 = v8 + 104 * v5;
      v15 = v27[1] + v27[2] / v11;
      spaceman_metazone_get_partitions(v11, v27[2], v27[1], v15, v27, 0);
      v16 = v27[1];
      *(v14 + 1016) = v27[1];
      *(v14 + 1032) = v16;
      v17 = v27[0];
      *(v14 + 1024) = v27[0];
      *(v14 + 1042) = 1;
      *(v14 + 1048) = v17;
      *(v14 + 1064) = v27[0];
      *(v14 + 1056) = v15;
      *(v14 + 1074) = 1;
      *(v14 + 1113) = 1;
      v18 = v26;
      v19 = *(v26 + 1000 + 8 * v5);
      if (v19 < v15 && v19 >= v27[1])
      {
        if (v15 == v12)
        {
          v21 = 0;
        }

        else
        {
          v21 = v15;
        }

        *(v26 + 1000 + 8 * v5) = v21;
      }

      if (*(v18 + 8 * v5 + 1496))
      {
        v22 = *(*(v18 + 376) + 36);
        v23 = v27[1] / v22;
        v24 = (v15 - 1) / v22;
        if (v23 <= v24)
        {
          do
          {
            *(*(v26 + 8 * v5 + 1496) + 4 * v23++) |= 0x4000000u;
          }

          while (v23 <= v24);
          v18 = v26;
        }
      }

      *(v18 + 104 * v5 + 1112) = 1;
    }

    v6 = 0;
    v5 = 1;
  }

  while ((v7 & 1) != 0);
  v2 = 0;
  v4 = v26;
  if (v26)
  {
    goto LABEL_32;
  }

  return v2;
}

void spaceman_handle_metazone_freed(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (*(a2 + 1112) == 1 && *(a2 + 1113) == 1)
  {
    if (*(a2 + 1016) <= a3 && *(a2 + 1024) > a3)
    {
      if (*(a2 + 1032) <= a3)
      {
        return;
      }

      v3 = (a2 + 1032);
      goto LABEL_15;
    }

    if (*(a2 + 1048) <= a3 && *(a2 + 1056) > a3)
    {
      if (*(a2 + 1064) <= a3)
      {
        return;
      }

      v3 = (a2 + 1064);
      goto LABEL_15;
    }

    if (*(a2 + 1080) <= a3 && *(a2 + 1088) > a3 && *(a2 + 1096) > a3)
    {
      v3 = (a2 + 1096);
LABEL_15:
      *v3 = a3;
    }
  }
}

uint64_t spaceman_update_metazone_alloc_index(uint64_t result, unsigned int a2, int a3, unint64_t a4)
{
  v4 = result + 104 * a2 + 1016;
  if (a3)
  {
    if (a3 == 2)
    {
      v5 = (result + 104 * a2 + 1080);
      v6 = 88;
      v7 = 80;
      v8 = 72;
    }

    else
    {
      if (a3 != 1)
      {
        return result;
      }

      v5 = (result + 104 * a2 + 1048);
      v6 = 56;
      v7 = 48;
      v8 = 40;
    }
  }

  else
  {
    v6 = 24;
    v7 = 16;
    v8 = 8;
    v5 = (result + 104 * a2 + 1016);
  }

  v9 = *v5;
  if (v9 <= a4 && *(v4 + v8) > a4)
  {
    *(v4 + v7) = a4;
LABEL_18:
    *(v4 + v6) = 0;
    return result;
  }

  if (*(v4 + v7) == v9)
  {
    *(v4 + v7) = a4;
    v10 = 1;
  }

  else
  {
    if (*(v4 + v6) < 0)
    {
      *(v4 + v7) = v9;
      goto LABEL_18;
    }

    v11 = *(v4 + v6);
    if (!v11)
    {
      *(v4 + v7) = v9;
      return result;
    }

    *(v4 + v7) = a4;
    v10 = v11 + 1;
  }

  *(v4 + v6) = v10;
  return result;
}

uint64_t spaceman_get_metazone_alloc_index(void *a1, unsigned int a2, int a3)
{
  if (a3 == 2)
  {
    v3 = &a1[13 * a2 + 137];
    if (BYTE2(a1[13 * a2 + 138]) != 1)
    {
      v3 = &a1[13 * a2 + 133];
    }
  }

  else if (a3 == 1)
  {
    v3 = &a1[13 * a2 + 133];
  }

  else if (a3)
  {
    v5 = a2;
    v6 = a1[1];
    if (v6)
    {
      v7 = (v6 + 4040);
    }

    else
    {
      v7 = (*(*(*a1 + 392) + 384) + 212);
    }

    log_err("%s:%d: %s tried to get metazone alloc index for unknown type: %d\n", "spaceman_get_metazone_alloc_index", 348, v7, a3);
    v3 = &a1[v5 + 125];
  }

  else
  {
    v3 = &a1[13 * a2 + 129];
  }

  return *v3;
}

uint64_t spaceman_allocation_init(void *a1)
{
  v18 = 0;
  v2 = spaceman_get(a1, &v18);
  if (v2)
  {
    goto LABEL_17;
  }

  pthread_mutex_lock(v18 + 6);
  v3 = v18;
  v4 = *&v18[5].__opaque[48];
  if ((*(v4 + 144) & 1) == 0 || !*(v4 + 336))
  {
    v5 = *(v4 + 116);
    if (!v5)
    {
      v5 = *(v4 + 112);
    }

    v6 = (*(v4 + 128) + 8 * v5);
    v7 = *(v4 + 32);
    if (v6 + 2184 <= (v6 + v7 - 1) / v7 * v7)
    {
      memmove((v4 + 2520), (v4 + 336), v6 - 336);
      v10 = vadd_s32(*(v4 + 324), vdup_n_s32(0x888u));
      *(v4 + 324) = v10;
      v11 = (*(v4 + 332) + 2184);
      *(v4 + 332) = v11;
      v12 = (*(v4 + 80) + 2184);
      *(v4 + 80) = v12;
      v13 = (*(v4 + 128) + 2184);
      *&v3[13].__opaque[32] = v4 + v10.u32[0];
      *(v4 + 128) = v13;
      *&v3[13].__opaque[40] = v4 + v10.u32[1];
      *&v3[13].__opaque[48] = v4 + v11;
      v3[14].__sig = v4 + v12;
      *v3[14].__opaque = v4 + v13;
      *(v4 + 336) = 0x9D800000001;
      bzero((v4 + 344), 0x880uLL);
      *(v4 + 144) |= 1u;
    }

    else
    {
      v8 = *v18->__opaque;
      if (v8)
      {
        v9 = (v8 + 4040);
      }

      else
      {
        v9 = (*(*(v18->__sig + 392) + 384) + 212);
      }

      log_debug("%s:%d: %s refusing to upgrade spaceman! new_smp_size %u old_smp_size %u block_size %u\n", "spaceman_upgrade_sm_version_0_to_1", 398, v9, v6 + 2184, v6, v7);
      log_warn("%s:%d: %s failed to upgrade spaceman from version 0 to 1: %d\n", "spaceman_allocation_init", 456, (a1[48] + 212), 27);
    }
  }

  spaceman_free_queue_trim_list_init(a1, v18);
  v2 = spaceman_metazone_init(a1, 0);
  if (v2)
  {
LABEL_17:
    v16 = v2;
  }

  else
  {
    spaceman_sanitize_datazone(v18);
    v14 = 1;
    while (1)
    {
      v15 = spaceman_datazone_init(a1, v14);
      if (v15)
      {
        break;
      }

      if (++v14 == 5)
      {
        v2 = spaceman_free_extent_cache_setup(a1, v18);
        goto LABEL_17;
      }
    }

    v16 = v15;
    log_err("%s:%d: %s failed to initialize data zone for allocations of size %llu, error %d\n", "spaceman_allocation_init", 491, (a1[48] + 212), v14, v15);
  }

  if (v18)
  {
    pthread_mutex_unlock(v18 + 6);
    obj_release(v18);
  }

  return v16;
}

const char *spaceman_sanitize_datazone(const char *result)
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 47);
    if (*(v2 + 144))
    {
      if (*(v2 + 336))
      {
        v3 = 0;
        v4 = v2 + 344;
        v25 = v2 + 368;
        v26 = v2 + 48;
        v5 = 1;
        do
        {
          v27 = v5;
          v6 = *(v26 + 48 * v3);
          if (v6)
          {
            v7 = 0;
            v8 = (v25 + 1088 * v3);
            do
            {
              v9 = v4 + 1088 * v3 + 136 * v7;
              if (*v9 >= v6 || ((v10 = *(v9 + 8), v10 <= v6) ? (v11 = *v9 > v10) : (v11 = 1), v11))
              {
                v12 = *(v1 + 1);
                if (v12)
                {
                  v13 = (v12 + 4040);
                }

                else
                {
                  v13 = (*(*(*v1 + 392) + 384) + 212);
                }

                result = log_warn("%s:%d: %s Persistent allocation zone at slot %llu has invalid current boundaries\n", "spaceman_sanitize_datazone", 676, v13, v7);
                v14 = 1;
              }

              else
              {
                v14 = 0;
              }

              v15 = 0;
              v16 = v8;
              while (1)
              {
                v17 = *(v16 - 1);
                if (v17 >= v6)
                {
                  break;
                }

                if (*v16 > v6 || v17 > *v16)
                {
                  break;
                }

                ++v15;
                v16 += 2;
                if (v15 == 7)
                {
                  if (*(v9 + 130) <= 6u)
                  {
                    if ((v14 & 1) == 0)
                    {
                      goto LABEL_39;
                    }

                    goto LABEL_35;
                  }

LABEL_31:
                  v21 = *(v1 + 1);
                  if (v21)
                  {
                    v22 = (v21 + 4040);
                  }

                  else
                  {
                    v22 = (*(*(*v1 + 392) + 384) + 212);
                  }

                  log_warn("%s:%d: %s Persistent allocation zone at slot %llu has invalid previous boundary index\n", "spaceman_sanitize_datazone", 695, v22, v7);
                  goto LABEL_35;
                }
              }

              v19 = *(v1 + 1);
              if (v19)
              {
                v20 = (v19 + 4040);
              }

              else
              {
                v20 = (*(*(*v1 + 392) + 384) + 212);
              }

              log_warn("%s:%d: %s Persistent allocation zone at slot %llu has invalid previous boundary %llu\n", "spaceman_sanitize_datazone", 686, v20, v7, v15);
              if (*(v9 + 130) >= 7u)
              {
                goto LABEL_31;
              }

LABEL_35:
              v23 = *(v1 + 1);
              if (v23)
              {
                v24 = (v23 + 4040);
              }

              else
              {
                v24 = (*(*(*v1 + 392) + 384) + 212);
              }

              result = log_warn("%s:%d: %s Clearing persistent allocation zone at slot %llu\n", "spaceman_sanitize_datazone", 701, v24, v7);
              *(v9 + 128) = 0;
              *(v9 + 96) = 0u;
              *(v9 + 112) = 0u;
              *(v9 + 64) = 0u;
              *(v9 + 80) = 0u;
              *(v9 + 32) = 0u;
              *(v9 + 48) = 0u;
              *v9 = 0u;
              *(v9 + 16) = 0u;
LABEL_39:
              ++v7;
              v8 += 17;
            }

            while (v7 != 8);
          }

          v5 = 0;
          v3 = 1;
        }

        while ((v27 & 1) != 0);
      }
    }
  }

  return result;
}

uint64_t spaceman_datazone_init(void *a1, uint64_t a2)
{
  v12 = 0;
  v4 = spaceman_get(a1, &v12);
  if (v4)
  {
    return v4;
  }

  if (!v12)
  {
    return 19;
  }

  v6 = v12[47];
  if (!v6)
  {
    v4 = 19;
    goto LABEL_15;
  }

  if ((a2 - 5) < 0xFFFFFFFFFFFFFFFCLL)
  {
    v4 = 22;
    goto LABEL_15;
  }

  v7 = &v12[4 * a2 - 4];
  if (v7[156])
  {
    goto LABEL_14;
  }

  v8 = *(v6 + 56);
  if (*(v12 + 1112) != 1 || v8 < 8)
  {
    goto LABEL_14;
  }

  v10 = v7 + 153;
  *(v12 + 1352) = 1;
  *(v7 + 153) = 0u;
  *(v7 + 155) = 0u;
  v11 = spaceman_initialize_allocation_zone_from_disk(v12, 0, a2);
  if (v11)
  {
    v4 = v11;
    log_err("%s:%d: %s failed to initialize allocation zone for allocations of %llu blocks from disk: error %d\n", "spaceman_datazone_init", 600, (a1[48] + 212), a2, v11);
  }

  else
  {
    if (*(v10 + 25))
    {
LABEL_14:
      v4 = 0;
      goto LABEL_15;
    }

    log_debug("%s:%d: %s allocation zone on dev %d for allocations of %llu blocks starting at paddr %llu\n", "spaceman_datazone_init", 611, (a1[48] + 212), 0, a2, *v10);
    v4 = 0;
    *(v10 + 24) = 1;
  }

LABEL_15:
  if (v12)
  {
    obj_release(v12);
  }

  return v4;
}

uint64_t spaceman_initialize_allocation_zone_from_disk(void *a1, unsigned int a2, uint64_t a3)
{
  v3 = 22;
  if (a1 && (a3 - 5) >= 0xFFFFFFFFFFFFFFFCLL)
  {
    v6 = a3 - 1;
    v7 = &a1[17 * a2 + 149 + 4 * a3];
    v8 = a1[47];
    if ((*(v8 + 144) & 1) != 0 && *(v8 + 336))
    {
      v9 = v8 + 344;
      v10 = a3;
      v11 = -1;
      LOBYTE(v12) = 1;
      v13 = 8;
      v14 = v6;
      do
      {
        v15 = v14 & 7;
        v16 = *(v8 + 344 + 1088 * a2 + 136 * v15 + 128);
        if (v16 == v10)
        {
          v19 = (v9 + 1088 * a2 + 136 * v15);
          v7[2] = v19;
          v20 = sub_10007160C(a1, a2, v6, *v19 / *(v8 + 36));
          v3 = v20;
          if (v20)
          {
            v21 = a1[1];
            if (v21)
            {
              v22 = (v21 + 4040);
            }

            else
            {
              v22 = (*(*(*a1 + 392) + 384) + 212);
            }

            log_err("%s:%d: %s failed to update allocation zone boundaries: error %d\n", "spaceman_initialize_allocation_zone_from_disk", 965, v22, v20);
          }

          return v3;
        }

        v17 = v11 == -1 && v16 == 0;
        v12 = (v16 != 0) & v12;
        if (v17)
        {
          v11 = v15;
        }

        v14 = v15 + 1;
        --v13;
      }

      while (v13);
      if (v12)
      {
        goto LABEL_14;
      }

      v3 = 0;
      v7[2] = v9 + 1088 * a2 + 136 * v11;
      *(v7 + 25) = 1;
    }

    else
    {
LABEL_14:
      v3 = 0;
      *(v7 + 25) = 257;
    }
  }

  return v3;
}

void spaceman_datazone_destroy(uint64_t a1)
{
  if (a1)
  {
    v1 = 0;
    v2 = a1 + 1224;
    v3 = a1 + 1250;
    v4 = 1;
    do
    {
      v5 = v4;
      if (*(v2 + 136 * v1 + 128) == 1)
      {
        v6 = (v3 + 136 * v1);
        v7 = 4;
        do
        {
          if (*(v6 - 2) == 1 && *v6 == 1)
          {
            v8 = *(v6 - 10);
            if (v8)
            {
              *(v6 - 2) = 0;
              _apfs_free(v8, 136);
              *(v6 - 10) = 0;
            }
          }

          v6 += 32;
          --v7;
        }

        while (v7);
      }

      v4 = 0;
      v1 = 1;
    }

    while ((v5 & 1) != 0);
  }
}

uint64_t sub_10007160C(uint64_t a1, unsigned int a2, uint64_t a3, unint64_t a4)
{
  if (!a1)
  {
    return 22;
  }

  v6 = *(a1 + 376);
  v7 = v6 + 48 * a2;
  v8 = *(v7 + 56);
  if (v8 <= a4)
  {
    return 22;
  }

  v9 = a3;
  v10 = a2;
  v11 = a1 + 136 * a2 + 32 * a3;
  v12 = v11 + 1224;
  v13 = *(v11 + 1240);
  v14 = *(v6 + 36);
  v15 = *(v7 + 48);
  v16 = *(v11 + 1224);
  v17 = *(v11 + 1250) == 1 && v13 == 0;
  if (v17)
  {
    v13 = _apfs_calloc_typed(1uLL, 0x88uLL, 0x1000040B5CA6940uLL);
    *(v12 + 16) = v13;
    if (!v13)
    {
      return 12;
    }
  }

  if (*(v12 + 24) == 1)
  {
    v18 = v13[65];
    v19 = (v13 + 8);
    v20 = 7;
    v21 = v18;
    while (1)
    {
      v22 = v21 % 7;
      v23 = &v19[16 * (v21 % 7)];
      if (*(v23 + 1))
      {
        if (*v23 / *(*(a1 + 376) + 36) == a4)
        {
          break;
        }
      }

      ++v21;
      if (!--v20)
      {
        goto LABEL_19;
      }
    }

    if (v22 == v18)
    {
LABEL_19:
      *&v19[16 * v18] = *v12;
      v13[65] = v18 + 1 - 7 * ((((v18 + 1 - ((9363 * (v18 + 1)) >> 16)) >> 1) + ((9363 * (v18 + 1)) >> 16)) >> 2);
      goto LABEL_20;
    }

    do
    {
      if (v22 == 6)
      {
        v28 = 0;
      }

      else
      {
        v28 = v22 + 1;
      }

      *&v19[16 * v22] = *&v19[16 * v28];
      v22 = v28;
    }

    while (v28 != v18);
    v29 = v18 - 1;
    v17 = v18 == 0;
    v30 = 6;
    if (!v17)
    {
      v30 = v29;
    }

    *&v19[16 * v30] = *v12;
  }

LABEL_20:
  v25 = v14 * a4;
  v26 = v14 + v14 * a4;
  if (v8 - 1 == a4)
  {
    v26 = v15;
  }

  *v13 = v25;
  *(v13 + 1) = v26;
  *v12 = v25;
  *(v12 + 8) = v26;
  v13[64] = v9 + 1;
  *(v12 + 25) = 0;
  v27 = a1 + 8 * v10;
  if (*(v12 + 24) == 1)
  {
    *(*(v27 + 1496) + 4 * (v16 / v14)) &= ~0x8000000u;
  }

  result = 0;
  *(*(v27 + 1496) + 4 * a4) |= 0x8000000u;
  return result;
}

uint64_t spaceman_get_number_of_disabled_allocation_zones(uint64_t result, unsigned int a2)
{
  if (result)
  {
    if (*(result + 136 * a2 + 1352) == 1)
    {
      v2 = (result + 136 * a2 + 1249);
      v3 = 4;
      result = 4;
      do
      {
        if ((*(v2 - 1) & 1) != 0 || (*v2 & 1) == 0)
        {
          result = (result - 1);
        }

        v2 += 32;
        --v3;
      }

      while (v3);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t spaceman_evaluate_chunk_for_disabled_allocation_zones(void *a1, unsigned int a2, unint64_t a3, _BYTE *a4)
{
  if (!a1 || LOBYTE(a1[17 * a2 + 169]) != 1 || *(a1[47] + 48 * a2 + 56) <= a3)
  {
    return 22;
  }

  v8 = 0;
  for (i = &a1[17 * a2 + 156] + 1; ; i += 32)
  {
    if ((*(i - 1) & 1) == 0 && *i == 1)
    {
      v10 = *(a1[a2 + 187] + 4 * a3);
      v11 = v10 & 0xC000000;
      v12 = *&v10 & 0xFFFFFFLL;
      if (!v11 && v8 < v12)
      {
        break;
      }
    }

    if (++v8 == 4)
    {
      return 0;
    }
  }

  v16 = sub_10007160C(a1, a2, v8, a3);
  v17 = a1[1];
  if (v16)
  {
    v14 = v16;
    if (v17)
    {
      v18 = (v17 + 4040);
    }

    else
    {
      v18 = (*(*(*a1 + 392) + 384) + 212);
    }

    log_err("%s:%d: %s failed to assign chunk %llu to allocation zone %llu\n", "spaceman_evaluate_chunk_for_disabled_allocation_zones", 1135, v18, a3, v8);
  }

  else
  {
    if (v17)
    {
      v19 = (v17 + 4040);
    }

    else
    {
      v19 = (*(*(*a1 + 392) + 384) + 212);
    }

    log_debug("%s:%d: %s allocation zone on dev %d for allocations of %llu blocks starting at paddr %llu\n", "spaceman_evaluate_chunk_for_disabled_allocation_zones", 1140, v19, a2, v8 + 1, *(i - 25));
    v14 = 0;
    *(i - 1) = 1;
    *a4 = 1;
  }

  return v14;
}

uint64_t spaceman_get_new_chunk_for_allocation_zone(uint64_t a1, uint64_t a2, unsigned int a3, unint64_t a4)
{
  v4 = 22;
  if (a1)
  {
    v5 = a2;
    if (a2)
    {
      v6 = a3;
      if (a3 <= 1 && a4 <= 3)
      {
        v8 = *(a2 + 376);
        memset(v74, 170, 32);
        v72 = 0;
        v73 = 0;
        v9 = a3;
        v10 = a2 + 136 * a3 + 32 * a4;
        v11 = *(v10 + 1224);
        v12 = v8[9];
        v13 = *(v10 + 1240);
        v14 = v8 + 12;
        v15 = *&v8[12 * a3 + 14];
        if (!v13)
        {
          goto LABEL_14;
        }

        v16 = *(v13 + 130);
        v17 = v13 + 16;
        v18 = 7;
        while (1)
        {
          v19 = (v17 + 16 * v16);
          v20 = v19[1];
          if (v20)
          {
            if (v20 <= *&v14[12 * a3])
            {
              v21 = *v19 / v12;
              v22 = *(*(v5 + 1496 + 8 * a3) + 4 * v21);
              v23 = v22 & 0xC000000;
              v24 = *&v22 & 0xFFFFFFLL;
              if (!v23 && v24 > a4)
              {
                break;
              }
            }
          }

          v16 = (v16 + 1 - 7 * ((613566757 * (v16 + 1)) >> 32));
          if (!--v18)
          {
            goto LABEL_14;
          }
        }

        if (v21 < v15)
        {
          v32 = 0;
LABEL_55:
          v57 = sub_10007160C(v5, v6, a4, v21);
          if (v57)
          {
            v4 = v57;
            log_err("%s:%d: %s failed to update allocate zone %llu: error %d\n");
          }

          else
          {
            v59 = *(v5 + 1592);
            if (v59)
            {
              ++*(v59 + (v9 << 6) + 8 * a4 + 120);
            }

            if (*(v5 + 1600))
            {
              v60 = (*(v5 + 1608) + 16 * *(v5 + 1604));
              v4 = 0;
              *v60 = get_timestamp();
              v60[1] = (16 * (v21 & 0xFFFFFFFFFFLL)) | (2 * a4) | (v32 << 44) | v9;
              v61 = *(v5 + 1604);
              if ((v61 + 1) < *(v5 + 1600))
              {
                v62 = v61 + 1;
              }

              else
              {
                v62 = 0;
              }

              *(v5 + 1604) = v62;
            }

            else
            {
              v4 = 0;
            }
          }
        }

        else
        {
LABEL_14:
          v26 = v11 / v12;
          v27 = v8[10];
          v28 = v15 - 1;
          v30 = v26 + 1 == v27 || v26 == v28;
          v31 = &v14[12 * a3];
          LODWORD(v14) = v31[4];
          if (v14 > v30)
          {
            v70 = 0;
            v32 = 0;
            v67 = v31;
            v68 = (v26 / v27);
            v64 = v26;
            v65 = v5 + 896;
            v63 = v5;
            v33 = v5 + 1496;
            v69 = -1;
            v21 = -1;
            do
            {
              v34 = (v68 + v30) % v14;
              if (v31[5])
              {
                v35 = v8[11];
                v36 = v34 / v35;
                v37 = v69;
                v38 = v70;
                if (v34 / v35 != v69 || v70 == 0)
                {
                  v40 = *(*(v65 + 8 * v9) + 8 * v36);
                  if (v73)
                  {
                    obj_release(v73);
                    v73 = 0;
                  }

                  v74[2] = v8;
                  v74[3] = __PAIR64__(v36, a3);
                  v41 = obj_get(*(a1 + 392), 0x40000000, v40, &sm_cab_desc, &v74[2], 0, 0, 0, &v73);
                  if (v41)
                  {
                    v4 = v41;
                    log_err("%s:%d: %s error getting cab %d: %d\n", "spaceman_get_new_chunk_for_allocation_zone", 1248, (*(a1 + 384) + 212), v36, v41);
                    goto LABEL_58;
                  }

                  v38 = *(v73 + 56);
                  v35 = v8[11];
                  v37 = v36;
                }

                v69 = v37;
                v70 = v38;
                v42 = (v38 + 8 * (v34 - v35 * v37) + 40);
                v6 = a3;
              }

              else
              {
                v42 = (*(v65 + 8 * v9) + 8 * v34);
              }

              v43 = *v42;
              v74[0] = v8;
              v74[1] = __PAIR64__(v34, v6);
              v44 = obj_get(*(a1 + 392), 0x40000000, v43, &sm_cib_desc, v74, 0, 0, 0, &v72);
              if (v44)
              {
                v4 = v44;
                log_err("%s:%d: %s error getting cib %d: %d\n");
                goto LABEL_58;
              }

              if (v30)
              {
                LODWORD(v45) = 0;
              }

              else
              {
                LODWORD(v45) = v64 % v8[10] + 1;
              }

              v31 = v67;
              v46 = *(v72 + 56);
              v47 = *(v46 + 36);
              v48 = v47 >= v45;
              v49 = v47 - v45;
              if (v49 != 0 && v48)
              {
                v50 = v34 * v8[10];
                v45 = v45;
                v51 = (v46 + 32 * v45 + 60);
                v52 = v21;
                do
                {
                  v53 = *v51;
                  v51 += 8;
                  v54 = v53 & 0xFFFFF;
                  if (v32 < v54)
                  {
                    v21 = v50 + v45;
                    v55 = *(*(v33 + 8 * v9) + 4 * (v50 + v45));
                    if ((v55 & 0xC000000) == 0 && (*&v55 & 0xFFFFFFuLL) > a4)
                    {
                      v32 = v54;
                      v52 = v50 + v45;
                      if (v54 == v8[9])
                      {
                        break;
                      }
                    }
                  }

                  ++v45;
                  v21 = v52;
                  --v49;
                }

                while (v49);
              }

              if (v32 == v8[9])
              {
                break;
              }

              obj_release(v72);
              v72 = 0;
              ++v30;
              v14 = v67[4];
            }

            while (v30 < v14);
            v5 = v63;
            if (v21 != -1)
            {
              goto LABEL_55;
            }
          }

          v4 = 28;
        }

LABEL_58:
        if (v73)
        {
          obj_release(v73);
        }

        if (v72)
        {
          obj_release(v72);
        }
      }
    }
  }

  return v4;
}

BOOL spaceman_should_avoid_data_allocation_at_block(uint64_t a1, unsigned int a2, unint64_t a3, uint64_t a4)
{
  if (!a4)
  {
    return 0;
  }

  v4 = *(a1 + 8 * a2 + 1496);
  if (!v4)
  {
    return 0;
  }

  v5 = a1 + 104 * a2;
  if (*(v5 + 1112) == 1)
  {
    v6 = v5 + 1016;
    v7 = 40;
    if (*(v6 + 90))
    {
      v7 = 72;
    }

    if (*v6 <= a3 && *(v6 + v7) > a3)
    {
      return 1;
    }
  }

  if ((*(v4 + 4 * (a3 / *(*(a1 + 376) + 36))) & 0x8000000) == 0)
  {
    return 0;
  }

  if (a4 <= 4 && (v9 = a1 + 136 * a2 + 32 * a4, *(v9 + 1216) == 1) && (v10 = (v9 + 1192), *v10 <= a3))
  {
    return v10[1] <= a3;
  }

  else
  {
    return 1;
  }
}

BOOL spaceman_clip_extent(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, __int16 a5, unint64_t a6, unint64_t *a7, unint64_t *a8)
{
  v19 = 0;
  v14 = calc_overlap_range(a1, a2, a3, a4, &v19);
  if (v14)
  {
    v15 = a2 - v14;
    if (a2 == v14)
    {
      v16 = 0;
LABEL_17:
      *a8 = v16;
      return v14 != 0;
    }

    v16 = v19 - a1;
    if (v19 == a1)
    {
      v17 = v14 + a1;
LABEL_6:
      *a7 = v17;
LABEL_7:
      v16 = v15;
      goto LABEL_17;
    }

    v15 = a2 - (v16 + v14);
    if ((a5 & 0x4000) != 0)
    {
      if (a6 > v19 && a2 != v16 + v14 && (v19 + v14 <= a6 || a6 - v19 > v19 + v14 - a6))
      {
        *a7 = v19 + v14;
        goto LABEL_7;
      }
    }

    else if (v15 > v16)
    {
      v17 = v19 + v14;
      goto LABEL_6;
    }

    *a7 = a1;
    goto LABEL_17;
  }

  return v14 != 0;
}

uint64_t spaceman_clip_extent_to_zones(uint64_t a1, uint64_t a2, unsigned int a3, unint64_t a4, uint64_t a5, __int16 a6, unint64_t a7, unint64_t *a8, unint64_t *a9)
{
  v12 = a5;
  v13 = a4;
  v15 = a2;
  v16 = *(a1 + 1024);
  if (v16)
  {
    v17 = 0;
    if (!a3 && (*(a1 + 634) & 1) == 0)
    {
      v18 = *(a1 + 1016);
      if ((a6 & 0x200) != 0)
      {
        if (v18 && spaceman_clip_extent(a4, a5, 0, v18, a6, a7, a8, a9))
        {
          v13 = *a8;
          v12 = *a9;
          v17 = 1;
        }

        else
        {
          v17 = 0;
        }

        v18 += v16;
        v16 = *(*(a2 + 376) + 48) - v18;
      }

      else
      {
        v17 = 0;
      }

      v19 = spaceman_clip_extent(v13, v12, v18, v16, a6, a7, a8, a9);
      v15 = a2;
      if (v19)
      {
        v13 = *a8;
        v12 = *a9;
        v17 = 1;
      }
    }
  }

  else
  {
    v17 = 0;
  }

  if ((a6 & 0x2000) != 0)
  {
    v20 = v15 + 104 * a3;
    if (*(v20 + 1112) == 1)
    {
      v21 = v20 + 1016;
      v22 = 40;
      if (*(v21 + 90))
      {
        v22 = 72;
      }

      if (spaceman_clip_extent(v13, v12, *v21, *(v21 + v22) - *v21, a6, a7, a8, a9))
      {
        v13 = *a8;
        v12 = *a9;
        v17 = 1;
      }
    }

    if (*(v15 + 136 * a3 + 1352) == 1)
    {
      v23 = (v15 + 136 * a3 + 1248);
      v24 = 4;
      do
      {
        if (*v23 == 1 && spaceman_clip_extent(v13, v12, *(v23 - 3), *(v23 - 2) - *(v23 - 3), a6, a7, a8, a9))
        {
          v13 = *a8;
          v12 = *a9;
          v17 = 1;
        }

        v23 += 32;
        --v24;
      }

      while (v24);
    }
  }

  return v17 & 1;
}

uint64_t get_timestamp()
{
  v1.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v1.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  clock_gettime(_CLOCK_REALTIME, &v1);
  return timespec_to_apfs_timestamp(&v1.tv_sec);
}

uint64_t timespec_to_apfs_timestamp(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = v2 / 1000000000;
  v4 = v2 % 1000000000;
  if (*a1 < 0 && v2 >= 1)
  {
    v5 = v3 + 1;
    v4 -= 1000000000;
  }

  else
  {
    v6 = v2 >= 0;
    if (v2 < 0)
    {
      v5 = v3 - 1;
    }

    else
    {
      v5 = v2 / 1000000000;
    }

    if (v6)
    {
      v7 = v4;
    }

    else
    {
      v7 = v4 + 1000000000;
    }

    if (v1 >= 1)
    {
      v4 = v7;
    }

    else
    {
      v5 = v3;
    }
  }

  v8 = v1 + v5;
  if (__OFADD__(v1, v5) || (v9 = 1000000000 * v8, (v8 * 1000000000) >> 64 != (1000000000 * v8) >> 63) || (result = v4 + v9, __OFADD__(v4, v9)))
  {
    if (v1 > 0)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      return 0x8000000000000000;
    }
  }

  return result;
}

uint64_t (*tree_key_compare_function_for_type(unsigned __int16 a1))()
{
  v1 = spaceman_free_queue_key_cmp;
  if (a1 <= 0x1Eu)
  {
    if (a1 <= 0xDu)
    {
      switch(a1)
      {
        case 9u:
          return v1;
        case 0xAu:
          return extent_list_key_cmp;
        case 0xBu:
          return omap_key_cmp;
      }

      return 0;
    }

    if (a1 - 14 >= 3)
    {
      if (a1 == 19)
      {
        return omap_snapshot_key_cmp;
      }

      return 0;
    }

    return apfs_key_compare;
  }

  if (a1 <= 0x21u)
  {
    switch(a1)
    {
      case 0x1Fu:
        return fext_tree_key_cmp;
      case 0x20u:
        return pfkur_tree_key_cmp;
      case 0x21u:
        return evict_mapping_key_compare;
    }

    return 0;
  }

  if (a1 > 0x23u)
  {
    if (a1 != 36)
    {
      if (a1 == 255)
      {
        return test_key_compare_function;
      }

      return 0;
    }

    return apfs_key_compare;
  }

  if (a1 == 34)
  {
    return doc_id_tree_key_cmp;
  }

  else
  {
    return graft_blockmap_lut_tree_key_compare;
  }
}

uint64_t tx_mgr_init(uint64_t a1, uint64_t a2, pthread_mutex_t **a3)
{
  v6 = *(*(a1 + 376) + 36);
  v7 = _apfs_calloc_typed(1uLL, 0x130uLL, 0x10A0040BC325467uLL);
  if (v7)
  {
    v8 = v7;
    v7[1].__sig = a2;
    *v7[1].__opaque = 0;
    *&v7[1].__opaque[40] = 0;
    *&v7[1].__opaque[8] = 0;
    *&v7[1].__opaque[12] = (v6 - 40) / 0x28uLL;
    *&v7[1].__opaque[48] = v7 + 112;
    v7[2].__sig = 0;
    *v7[2].__opaque = v7 + 2;
    inited = new_lock(v7);
    if (!inited)
    {
      v11 = new_cv((v8 + 256));
      if (v11)
      {
        v10 = v11;
        free_lock(v8);
        goto LABEL_7;
      }

      if ((*(a1 + 627) & 1) != 0 || (inited = tx_mgr_init_tx(v8, v6), !inited))
      {
        v10 = 0;
        v13 = *(a1 + 376);
        v14 = *(v13 + 104) & 0x7FFFFFFF7FFFFFFFLL;
        *(v8 + 88) = v14;
        *(v8 + 96) = *(v13 + 128);
        *(v8 + 104) = v14;
        *a3 = v8;
        return v10;
      }
    }

    v10 = inited;
LABEL_7:
    _apfs_free(v8, 304);
    return v10;
  }

  return 12;
}

uint64_t tx_mgr_init_tx(uint64_t a1, unsigned int a2)
{
  v3 = a2;
  v4 = (a1 + 120);
  v5 = 4;
  while (1)
  {
    v6 = _apfs_calloc_typed(1uLL, 0x78uLL, 0x10A004067E43129uLL);
    if (!v6)
    {
      break;
    }

    v7 = v6;
    v6[7] = _apfs_malloc_typed(v3, 0x256D25E1uLL);
    v7[8] = _apfs_malloc_typed(v3, 0x60A3118CuLL);
    v8 = *v4;
    *v7 = 0;
    v7[1] = v8;
    *v8 = v7;
    *v4 = v7;
    if (!v7[7] || !v7[8])
    {
      break;
    }

    if (!--v5)
    {
      return 0;
    }
  }

  while (1)
  {
    v15 = *(a1 + 112);
    if (!v15)
    {
      break;
    }

    v10 = *v15;
    v11 = v15[1];
    v12 = (*v15 + 8);
    if (!*v15)
    {
      v12 = v4;
    }

    *v12 = v11;
    *v11 = v10;
    v13 = v15[7];
    if (v13)
    {
      _apfs_free(v13, v3);
    }

    v14 = v15[8];
    if (v14)
    {
      _apfs_free(v14, v3);
    }

    _apfs_free(v15, 120);
  }

  return 12;
}

void tx_mgr_free_tx(uint64_t a1, void *a2, unsigned int a3)
{
  v6 = a2[18];
  if (v6)
  {
    log_err("%s:%d: %s Trash unfinished tx xid=0x%llx\n", "tx_mgr_free_tx", 187, (*(a1 + 384) + 212), *(v6 + 16));
    v7 = a2[18];
    v8 = a2[15];
    *v7 = 0;
    v7[1] = v8;
    *v8 = v7;
    a2[15] = v7;
    a2[18] = 0;
  }

  v9 = a2[16];
  if (v9)
  {
    log_err("%s:%d: %s Trash unfinished pending tx, xid range = 0x%llx - 0x%llx\n", "tx_mgr_free_tx", 195, (*(a1 + 384) + 212), *(v9 + 16), *(**(a2[17] + 8) + 16));
    v10 = a2[16];
    if (v10)
    {
      *a2[15] = v10;
      *(a2[16] + 8) = a2[15];
      a2[15] = a2[17];
      a2[16] = 0;
      a2[17] = a2 + 16;
    }
  }

  v11 = a2[14];
  if (v11)
  {
    v12 = a2 + 15;
    do
    {
      v14 = *v11;
      v13 = v11[1];
      v15 = (*v11 + 8);
      if (!*v11)
      {
        v15 = v12;
      }

      *v15 = v13;
      *v13 = v14;
      v16 = v11[7];
      if (v16)
      {
        _apfs_free(v16, a3);
      }

      v17 = v11[8];
      if (v17)
      {
        _apfs_free(v17, a3);
      }

      _apfs_free(v11, 120);
      v11 = v14;
    }

    while (v14);
  }
}

void tx_mgr_destroy(uint64_t a1, uint64_t a2, unsigned int a3)
{
  tx_mgr_free_tx(a1, a2, a3);
  free_lock(a2);
  free_cv((a2 + 256));

  _apfs_free(a2, 304);
}

BOOL xid_is_current_tx(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 624) == 1)
  {
    v2 = (*(a1 + 376) + 96);
    return *v2 == a2;
  }

  v3 = *(a1 + 400);
  if (v3)
  {
    v4 = *(v3 + 144);
    if (v4)
    {
      v2 = (v4 + 16);
      return *v2 == a2;
    }
  }

  return 0;
}

uint64_t tx_checkpoint_space_check(uint64_t a1, uint64_t a2, int a3)
{
  v6 = 0;
  v7 = *(a1 + 400);
  while (1)
  {
    v8 = *(v7 + 96);
    v9 = *(v7 + 104);
    v10 = v9;
    if (v8 > v9)
    {
      v10 = *(v7 + 88) + v9;
    }

    v11 = *(v7 + 100);
    v12 = *(v7 + 108);
    v13 = v12;
    if (v11 > v12)
    {
      v13 = *(v7 + 92) + v12;
    }

    v14 = v10 - v8;
    v15 = v13 - v11;
    v16 = *(a2 + 48) + a3;
    if (v16 <= v15 && !(v6 & 1 | (*(a2 + 40) + 1 > v14)))
    {
      return 0;
    }

    if ((v6 & 1) != 0 || !*(v7 + 128))
    {
      break;
    }

    sub_1000729E8(a1, 80, 0);
    v6 = 1;
  }

  if (!*(v7 + 82))
  {
    log_err("%s:%d: %s checkpoint area out of space: stable: %d %d - next %d %d available %d %d tx[%lld] %d %d\n", "tx_checkpoint_space_check", 493, (*(a1 + 384) + 212), v9, v12, v8, v11, v14, v15, *(a2 + 16), *(a2 + 40) + 1, v16);
  }

  *(v7 + 82) = 1;
  return 28;
}

uint64_t sub_1000729E8(uint64_t a1, char a2, int a3)
{
  v5 = *(a1 + 400);
  if ((a2 & 0x40) != 0)
  {
    v6 = *(v5 + 128);
    if (!v6 || (*(v6 + 24) & 0x40) == 0)
    {
      return 0;
    }
  }

  if (a3)
  {
    pthread_mutex_unlock(*(a1 + 400));
  }

  v7 = dev_barrier(*(a1 + 384));
  if (a3)
  {
    pthread_mutex_lock(v5);
  }

  if (v7 == 25 || v7 == 0)
  {
    v9 = *(v5 + 128);
    if (v9)
    {
      do
      {
        v10 = *v9;
        v11 = *(v9 + 6);
        if ((v11 & 0x40) != 0)
        {
          *(v9 + 6) = v11 & 0xFFFFFFBF;
          v21.tv_sec = 0xAAAAAAAAAAAAAAAALL;
          v21.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
          clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &v21);
          v12 = 1000000 * v21.tv_sec + SLODWORD(v21.tv_nsec) / 1000;
          v13 = v12 - v9[9];
          v9[9] = v12;
          v9[13] += v13;
          v14 = v9[2];
          if (*(a1 + 632) != 1 || v14 < *(*(a1 + 376) + 1408))
          {
            v15 = *(v9 + 11);
            *(v5 + 104) = *(v9 + 9);
            *(v5 + 108) = v15;
          }

          spaceman_tx_complete(a1, v14);
          v16 = *v9;
          v17 = v9[1];
          v18 = (*v9 + 8);
          if (!*v9)
          {
            v18 = (v5 + 136);
          }

          *v18 = v17;
          *v17 = v16;
          v19 = *(v5 + 120);
          *v9 = 0;
          v9[1] = v19;
          *v19 = v9;
          *(v5 + 120) = v9;
          cv_wakeup((v5 + 256));
        }

        v9 = v10;
      }

      while (v10);
    }

    return 0;
  }

  return v7;
}

uint64_t tx_checkpoint_write_prepare(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (*(*(a1 + 376) + 36) + *(a3 + 48) - 1) / *(*(a1 + 376) + 36);
  v6 = *(a2 + 64);
  if (*(v6 + 36) == *(*(a1 + 400) + 84))
  {
    ++*(a2 + 40);
    *(v6 + 36) = 0;
  }

  v7 = tx_checkpoint_space_check(a1, a2, v5);
  if (!v7)
  {
    if ((*(a3 + 19) & 0x20) == 0)
    {
      v10 = *(a3 + 56);
      v8.i64[0] = *(a3 + 36);
      v10[3] = v8.i64[0];
      v11 = *(a2 + 16);
      v10[1] = *(a3 + 112);
      v10[2] = v11;
      obj_checksum_set(a3, v8, v9);
    }

    *(a3 + 120) = *(a2 + 16);
    *(a3 + 144) = 0;
    ++*(*(a2 + 64) + 36);
    *(a2 + 48) += v5;
  }

  return v7;
}

uint64_t tx_checkpoint_write(uint64_t *a1, uint64_t a2, uint64_t a3, int8x16_t a4, int8x16_t a5)
{
  v8 = a1[50];
  v40 = 0xAAAAAAAAAAAAAAAALL;
  v38 = 0xAAAAAAAAAAAAAAAALL;
  v9 = *(a1[47] + 36);
  v10 = *(a3 + 48);
  v11 = *(a2 + 64);
  if (*(v11 + 36) == v8[21])
  {
    obj_checksum_set_phys(a1, v11, *(a1[47] + 36), a4, a5);
    v12 = dev_write(a1[48]);
    if (v12)
    {
      v13 = v12;
      if (!v8[19])
      {
        log_err("%s:%d: %s failed to write checkpoint map block %lld: %d\n");
      }

      return v13;
    }

    v14 = (*(a2 + 40) + v8[24]) % v8[22];
    v40 = -1;
    v15 = nx_checkpoint_desc_block_address(a1, v14, &v40);
    if (v15)
    {
      v13 = v15;
      if (!v8[19])
      {
        log_err("%s:%d: %s error getting next checkpoint map block address %d: %d\n");
      }

      return v13;
    }

    bzero(*(a2 + 64), v9);
    v16 = *(a2 + 64);
    *(v16 + 24) = 1073741836;
    v17 = *(a2 + 16);
    *(v16 + 8) = v40;
    *(v16 + 16) = v17;
    ++*(a2 + 40);
  }

  v18 = (*(a2 + 48) + v8[25]) % v8[23];
  v39 = -1;
  v19 = nx_checkpoint_data_block_address(a1, v18, &v39, &v38);
  if (v19)
  {
    v13 = v19;
    if (!v8[19])
    {
      log_err("%s:%d: %s error getting next checkpoint data block address %d: %d\n");
    }
  }

  else
  {
    v20 = (v9 + v10 - 1) / v9;
    pthread_mutex_lock((a1[49] + 328));
    for (i = (a3 + 32); (atomic_fetch_or_explicit(i, 8u, memory_order_relaxed) & 8) != 0; i = (a3 + 32))
    {
      pthread_mutex_unlock((a1[49] + 328));
      pthread_mutex_lock((a1[49] + 328));
    }

    v36 = *(a3 + 64);
    *(a3 + 128) = v39;
    v37 = v20;
    if (v20 < 1)
    {
LABEL_27:
      if (v36 == *(a3 + 56))
      {
        v26 = 0;
      }

      else
      {
        v26 = v36;
      }

      *(a3 + 64) = 0;
      v27 = a1[49];
      v28 = *(*(v27 + 872) + 104);
      *(v27 + 872) = v28;
      if (!v28)
      {
        *(v27 + 880) = v27 + 872;
      }

      *(a3 + 104) = 3735928559;
      atomic_fetch_and_explicit((a3 + 32), 0xFFFFFFF7, memory_order_relaxed);
      pthread_mutex_unlock((a1[49] + 328));
      v29 = *(a2 + 64);
      v30 = *(v29 + 36);
      v31 = v29 + 40 * v30;
      *(v31 + 40) = *(a3 + 36);
      *(v31 + 48) = *(a3 + 48);
      v32 = *(a3 + 8);
      if (v32)
      {
        v32 = obj_oid(v32);
        v29 = *(a2 + 64);
        v30 = *(v29 + 36);
      }

      v33 = (v29 + 40 * v30);
      v34 = *(a3 + 112);
      v33[7] = v32;
      v33[8] = v34;
      v33[9] = *(a3 + 128);
      *(v29 + 36) = v30 + 1;
      *(a2 + 48) += v37;
      if (v26)
      {
        fs_obj_zfree_oc(v26, *(a3 + 48), *(a3 + 16), a1[49]);
      }

      return 0;
    }

    else
    {
      v22 = v36;
      v23 = v37;
      while (1)
      {
        v24 = v38 >= v23 ? v23 : v38;
        v25 = dev_write(a1[48]);
        if (v25)
        {
          break;
        }

        v23 -= v24;
        if (!v23)
        {
          goto LABEL_27;
        }

        v18 = v18 + v24 >= (*(a1[47] + 108) & 0x7FFFFFFFu) ? 0 : (v18 + v24);
        v25 = nx_checkpoint_data_block_address(a1, v18, &v39, &v38);
        if (v25)
        {
          break;
        }

        v22 += v24 * v9;
        if (v23 <= 0)
        {
          goto LABEL_27;
        }
      }

      v13 = v25;
      atomic_fetch_and_explicit((a3 + 32), 0xFFFFFFF7, memory_order_relaxed);
      pthread_mutex_unlock((a1[49] + 328));
      if (!v8[19])
      {
        log_err("%s:%d: %s failed to write checkpoint data block %lld: %d\n");
      }
    }
  }

  return v13;
}

uint64_t tx_barrier(uint64_t a1, char a2)
{
  v4 = *(a1 + 400);
  if (a2 < 0 && (v5 = *(v4 + 144)) != 0 && (*(v5 + 24) & 8) != 0)
  {
    v6 = 0;
    if ((a2 & 0x40) == 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    pthread_mutex_lock(*(a1 + 400));
    v6 = 1;
    if ((a2 & 0x40) == 0)
    {
      goto LABEL_11;
    }
  }

  v7 = *(v4 + 128);
  if (!v7 || (*(v7 + 24) & 0x40) == 0)
  {
    if (v6)
    {
      pthread_mutex_unlock(v4);
    }

    return 0;
  }

LABEL_11:
  v8 = sub_1000729E8(a1, a2, 0);
  if (v6)
  {
    pthread_mutex_unlock(v4);
  }

  return v8;
}

const char *tx_unmount(uint64_t a1)
{
  v2 = *(a1 + 400);
  pthread_mutex_lock(v2);
  *(v2 + 72) |= 1u;
  pthread_mutex_unlock(v2);
  while (1)
  {
    result = tx_finish(a1, 8);
    if (result != 16)
    {
      break;
    }

    log_debug("%s:%d: %s waiting for transaction to finish\n", "tx_unmount", 1863, (*(a1 + 384) + 212));
    sleep(1u);
  }

  if (result)
  {
    result = log_err("%s:%d: %s tx_finish() failed, %d\n", "tx_unmount", 1878, (*(a1 + 384) + 212), result);
    if (*(a1 + 629))
    {
      return result;
    }

    pthread_mutex_lock(v2);
  }

  else
  {
    if (*(a1 + 629))
    {
      return result;
    }

    pthread_mutex_lock(v2);
    if ((*(v2 + 72) & 2) != 0)
    {
      v4 = sub_1000729E8(a1, 16, 0);
      if (v4)
      {
        log_err("%s:%d: %s First sync/barrier failed: %d\n", "tx_unmount", 1892, (*(a1 + 384) + 212), v4);
      }

      if ((*(a1 + 628) & 1) == 0)
      {
        v7 = *(a1 + 376);
        if (*(v7 + 140))
        {
          if (*(v7 + 148))
          {
            *(v7 + 1264) |= 2uLL;
          }
        }
      }

      obj_checksum_set(a1, v5, v6);
      v8 = dev_write(*(a1 + 384));
      if (v8)
      {
        log_err("%s:%d: %s failed to write superblock to block 0: %d\n", "tx_unmount", 1903, (*(a1 + 384) + 212), v8);
      }

      v9 = sub_1000729E8(a1, 16, 0);
      if (v9)
      {
        log_err("%s:%d: %s Final sync/barrier failed: %d\n", "tx_unmount", 1909, (*(a1 + 384) + 212), v9);
      }
    }
  }

  return pthread_mutex_unlock(v2);
}

uint64_t tx_finish(uint64_t a1, __int16 a2)
{
  if (*(a1 + 627))
  {
    return 30;
  }

  v5 = *(a1 + 400);
  pthread_mutex_lock(v5);
  v6 = *(v5 + 72);
  if ((a2 & 8) != 0 || (v6 & 1) == 0)
  {
    while (1)
    {
      v7 = *(v5 + 144);
      if ((v6 & 0x40) == 0)
      {
        break;
      }

      if (v7)
      {
        *(v7 + 24) |= 0x100000u;
      }

      if ((a2 & 0x100) != 0)
      {
        *(v5 + 72) = v6 & 0xFFFFFFF3;
        cv_wakeup((v5 + 256));
        v7 = *(v5 + 144);
      }

      if (v7)
      {
        v2 = *(v7 + 52);
        if (v2)
        {
          goto LABEL_67;
        }
      }

      cv_wait((v5 + 256), v5, 8, "nx_tx_finish_wait_for_dirty_data", 0);
      v8 = *(v5 + 144);
      if (v8)
      {
        v9 = *(v8 + 52);
        if (v9 | a2 & 0x100)
        {
          if (v9)
          {
            v2 = v9;
          }

          else
          {
            v2 = 35;
          }

          goto LABEL_67;
        }
      }

      else if ((a2 & 0x100) != 0)
      {
        v2 = 35;
LABEL_67:
        pthread_mutex_unlock(v5);
        return v2;
      }

      v6 = *(v5 + 72);
      if (a2 & 8) == 0 && (v6)
      {
        goto LABEL_18;
      }
    }

    if (!v7)
    {
      v7 = **(*(v5 + 136) + 8);
      if (!v7 || (*(v7 + 24) & 0x30) == 0)
      {
        if ((a2 & 0x11) != 0)
        {
          v2 = sub_1000729E8(a1, a2 & 0x10, 0);
        }

        else
        {
          v2 = 0;
        }

        goto LABEL_67;
      }
    }

    if ((a2 & 2) == 0 && (v6 & 0xC) == 8)
    {
      pthread_mutex_unlock(v5);
      return 16;
    }

    v10 = *(v7 + 16);
    if ((a2 & 8) == 0)
    {
      ++*(v5 + 176);
    }

    v11 = *(v7 + 24);
    v12 = ((a2 & 0x30) << 14) & 0xFFFDFFFF | ((a2 & 1) << 17) | v11 & 0xFFEFFFFF;
    if (v11 & 0x100000 | a2 & 0x10 | a2 & 1 | a2 & 0x20)
    {
      *(v7 + 24) = v12;
    }

    if (v11)
    {
      if ((v11 & 2) != 0)
      {
        panic("bad transition tx flags 0x%x to 0x%x (expected 0x%x)\n", v12, 2, 1);
      }

      *(v7 + 24) = ((a2 & 0x30) << 14) & 0xFFFDFFFC | ((a2 & 1) << 17) | v11 & 0xFFEFFFFC | 2;
      __tp.tv_sec = 0xAAAAAAAAAAAAAAAALL;
      __tp.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
      clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &__tp);
      *(v7 + 72) = 1000000 * __tp.tv_sec + SLODWORD(__tp.tv_nsec) / 1000;
    }

    if (*(v7 + 28))
    {
      v2 = (16 * (a2 & 1)) ^ 0x10u;
    }

    else
    {
      if ((*(v7 + 24) & 2) != 0)
      {
        v13 = sub_100073C4C(v7, 2, 4);
        v14 = v13;
        if (v13 > 0xF4240)
        {
          log_warn("%s:%d: %s tx xid %lld took %lld us to close\n", "tx_finish", 2126, (*(a1 + 384) + 212), *(v7 + 16), v13);
        }

        *(v5 + 248) = (*(v5 + 248) + v14) >> 1;
      }

      v2 = sub_100073D38(a1);
      if (!v2)
      {
        v15 = *(v5 + 72);
        if ((v15 & 0x40) != 0)
        {
          *(v5 + 72) = v15 & 0xFFFFFFF3;
          if ((a2 & 0x100) != 0)
          {
LABEL_69:
            pthread_mutex_unlock(v5);
            return 35;
          }

          cv_wakeup((v5 + 256));
        }

        v2 = 0;
      }
    }

    if ((a2 & 9) != 0)
    {
      if (a2)
      {
        v16 = 126;
      }

      else
      {
        v16 = 62;
      }

      do
      {
        if (*(v7 + 16) != v10 || (*(v7 + 24) & v16) == 0)
        {
          break;
        }

        if (!v2)
        {
          cv_wait((v5 + 256), v5, 8, "nx_tx_finish_wait", 0);
        }

        v17 = *(v5 + 72);
        if (a2 & 8) == 0 && (v17)
        {
          goto LABEL_18;
        }

        if ((a2 & 0x100) != 0 && (v17 & 4) == 0)
        {
          goto LABEL_69;
        }
      }

      while (!*(v5 + 76));
      v18 = **(*(v5 + 136) + 8);
      if (!v18 || (v2 = *(v18 + 52), !v2))
      {
        v2 = *(v7 + 52);
      }
    }

    goto LABEL_67;
  }

LABEL_18:
  pthread_mutex_unlock(v5);
  return 1;
}

uint64_t sub_10007369C(uint64_t a1, uint64_t *a2, char a3)
{
  if (*(a1 + 627))
  {
    return 30;
  }

  v7 = *(a1 + 400);
  pthread_mutex_lock(v7);
  if (*(v7 + 72))
  {
LABEL_37:
    pthread_mutex_unlock(v7);
    return 1;
  }

  v8 = *a2;
  if (*a2 != -1)
  {
    if (v8)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

  v11 = *(v7 + 144);
  if (v11)
  {
    v12 = (*(v7 + 72) & 0xC) == 8;
  }

  else
  {
    v12 = 1;
  }

  if (v12 || (*(v11 + 24) & 0x1C) != 0)
  {
    *a2 = 0;
LABEL_15:
    __tp.tv_sec = 0xAAAAAAAAAAAAAAAALL;
    __tp.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
    clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &__tp);
    v15 = 0;
    tv_sec = __tp.tv_sec;
    v32 = SLODWORD(__tp.tv_nsec) / 1000;
    while (1)
    {
      v9 = *(v7 + 144);
      if (v9 && (*(v9 + 24) & 0x1E) != 0)
      {
        if (*(v7 + 80) > 9u)
        {
          goto LABEL_69;
        }

        v16 = "nx_tx_wait";
        if ((a3 & 2) != 0)
        {
LABEL_20:
          v17 = *(v9 + 24);
          v15 = "nx_tx_wait_closing";
          if ((v17 & 2) == 0)
          {
            if ((v17 & 4) != 0)
            {
              v18 = **(*(v7 + 136) + 8);
              if (!v18 || (v15 = "nx_tx_wait_closed_prev_flushing", (*(v18 + 24) & 0x30) == 0))
              {
                v15 = "nx_tx_wait_closed";
              }
            }

            else if ((v17 & 0x18) != 0)
            {
              v15 = "nx_tx_wait_flush";
            }

            else
            {
              v15 = v16;
            }
          }

          goto LABEL_36;
        }
      }

      else
      {
        if ((a3 & 2) != 0 || (*(v7 + 72) & 8) == 0)
        {
          v3 = 0;
          v34 = 0;
          if (!v9)
          {
            goto LABEL_42;
          }

LABEL_40:
          if (*(v9 + 24))
          {
            if (!v3)
            {
              ++*(v9 + 28);
              *a2 = *(v9 + 16);
              if (v15)
              {
                v10 = v34;
                if (v34)
                {
                  if (strcmp(v15, "nx_tx_wait_frozen"))
                  {
                    __tp.tv_sec = 0xAAAAAAAAAAAAAAAALL;
                    __tp.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
                    clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &__tp);
                    v26 = 1000000 * (__tp.tv_sec - tv_sec) - v32 + SLODWORD(__tp.tv_nsec) / 1000;
                    *(v7 + 168) += v26;
                    if (v26 > 0xF4240 && nx_ratelimit_log_allowed(a1))
                    {
                      log_warn("%s:%d: %s waited %lld us to open tx xid %lld (%s)\n", "tx_enter_internal", 2385, (*(a1 + 384) + 212), v26, *(v9 + 16), v15);
                    }

                    ++*(v7 + 160);
                  }

                  v10 = 1;
                }
              }

              else
              {
                v10 = v34;
              }

LABEL_84:
              ++*(v9 + 32);
              pthread_mutex_unlock(v7);
              if (v10)
              {
                spaceman_manage_free_queues(a1, v9);
              }

              return 0;
            }

LABEL_82:
            pthread_mutex_unlock(v7);
            return v3;
          }

          while (1)
          {
            v24 = *(v9 + 24);
            if ((v24 & 1) == 0)
            {
              break;
            }

            do
            {
              log_debug("%s:%d: %s waiting for available tx to open: xid %lld\n", "tx_enter_internal", 2370, (*(a1 + 384) + 212), *(v7 + 64));
              cv_wait((v7 + 256), v7, 8, "nx_tx_wait_open", 0);
LABEL_58:
              v9 = *(v7 + 144);
              if (v9)
              {
                goto LABEL_40;
              }

LABEL_42:
              v19 = *(v7 + 112);
            }

            while (!v19);
            *(v7 + 144) = v19;
            v21 = *v19;
            v20 = v19[1];
            v22 = (v21 + 8);
            if (!v21)
            {
              v22 = (v7 + 120);
            }

            *v22 = v20;
            *v20 = v21;
            v23 = *(v7 + 64);
            *(v7 + 64) = v23 + 1;
            v9 = *(v7 + 144);
            *(v9 + 16) = v23;
            *(v9 + 24) = 0;
            *(v9 + 32) = 0;
            *(v9 + 52) = 0;
          }

          if (*(a1 + 626) == 1)
          {
            obj_checksum_set(a1, v13, v14);
            v25 = dev_write(*(a1 + 384));
            if (v25)
            {
              v3 = v25;
              log_err("%s:%d: %s Error: tx[%lld] failed to unclean superblock: %d\n", "tx_enter_internal", 2348, (*(a1 + 384) + 212), *(*(v7 + 144) + 16), v25);
              v9 = *(v7 + 144);
LABEL_52:
              log_err("%s:%d: %s Error: tx[%lld] failed to start: %d\n", "tx_enter_internal", 2352, (*(a1 + 384) + 212), *(v9 + 16), v3);
              goto LABEL_58;
            }

            *(a1 + 626) = 0;
            v9 = *(v7 + 144);
            v24 = *(v9 + 24);
            if (v24)
            {
              panic("bad transition tx flags 0x%x to 0x%x (expected 0x%x)\n", v24, 1, 0);
            }
          }

          else if (v3)
          {
            goto LABEL_52;
          }

          *(v9 + 24) = v24 | 1;
          __tp.tv_sec = 0xAAAAAAAAAAAAAAAALL;
          __tp.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
          clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &__tp);
          *(v9 + 72) = 1000000 * __tp.tv_sec + SLODWORD(__tp.tv_nsec) / 1000;
          if ((a3 & 2) != 0)
          {
            *(*(v7 + 144) + 24) |= 0x10000u;
          }

          cv_wakeup((v7 + 256));
          v3 = 0;
          v34 = 1;
          goto LABEL_58;
        }

        if (*(v7 + 80) >= 0xAu)
        {
LABEL_69:
          v27 = **(*(v7 + 136) + 8);
          if (v27)
          {
            if (*(v27 + 24) & 0x30)
            {
              v29 = 0;
            }

            else
            {
              v27 = *(v7 + 144);
              v29 = v9 == 0;
            }

            if (!v29)
            {
              v9 = v27;
              goto LABEL_78;
            }
          }

          else if (v9)
          {
LABEL_78:
            v30 = *(v9 + 52);
            if (v30)
            {
              v3 = v30;
            }

            else
            {
              v3 = 5;
            }

            goto LABEL_82;
          }

          v3 = 5;
          goto LABEL_82;
        }
      }

      if ((*(v7 + 72) & 8) != 0)
      {
        v16 = "nx_tx_wait_frozen";
      }

      else
      {
        v16 = "nx_tx_wait";
      }

      if (v9)
      {
        goto LABEL_20;
      }

      v15 = v16;
LABEL_36:
      cv_wait((v7 + 256), v7, 8, v15, 0);
      if (*(v7 + 72))
      {
        goto LABEL_37;
      }
    }
  }

  v8 = *(v11 + 16);
  *a2 = v8;
  if (!v8)
  {
    goto LABEL_15;
  }

LABEL_6:
  v9 = *(v7 + 144);
  if (v9 && v8 == *(v9 + 16))
  {
    v10 = 0;
    ++*(v9 + 28);
    goto LABEL_84;
  }

  pthread_mutex_unlock(v7);
  return 22;
}

__darwin_time_t sub_100073C4C(uint64_t a1, int a2, int a3)
{
  if (a2)
  {
    v4 = *(a1 + 24);
    if ((v4 & a2) == 0)
    {
      panic("can't transition from tx flags 0x%x to 0x%x (expected 0x%x)\n", v4, a3, a2);
    }
  }

  if (a3)
  {
    v5 = *(a1 + 24);
    if ((v5 & a3) != 0)
    {
      panic("bad transition tx flags 0x%x to 0x%x (expected 0x%x)\n", v5, a3, a2);
    }
  }

  *(a1 + 24) = *(a1 + 24) & ~a2 | a3;
  __tp.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  __tp.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &__tp);
  v6 = 1000000 * __tp.tv_sec + SLODWORD(__tp.tv_nsec) / 1000;
  result = v6 - *(a1 + 72);
  *(a1 + 72) = v6;
  return result;
}

uint64_t sub_100073D38(uint64_t a1)
{
  v2 = *(a1 + 400);
  for (i = *(v2 + 72); (i & 0x10) != 0; i = *(v2 + 72))
  {
    *(v2 + 72) = i | 0x20;
    cv_wait((v2 + 256), v2, 8, "nx_tx_flush_busy", 0);
  }

  *(v2 + 72) = i | 0x10;
  v4 = **(*(v2 + 136) + 8);
  if (!v4 || (v5 = *(v4 + 24), (v5 & 0x10) == 0))
  {
    v4 = *(v2 + 144);
    if (!v4)
    {
      goto LABEL_9;
    }

    v5 = *(v4 + 24);
  }

  if ((v5 & 0x14) == 0 || (v6 = sub_10007417C(a1, v4), !v6))
  {
LABEL_9:
    v7 = *(v2 + 144);
    if (v7 && (*(v7 + 24) & 4) != 0)
    {
      v6 = sub_10007417C(a1, v7);
    }

    else
    {
      v6 = 0;
    }
  }

  v8 = *(v2 + 72);
  *(v2 + 72) = v8 & 0xFFFFFFCF;
  if ((v8 & 0x20) != 0)
  {
    cv_wakeup((v2 + 256));
  }

  return v6;
}

uint64_t tx_leave(uint64_t a1, uint64_t a2, int a3)
{
  if ((*(a1 + 627) & 1) == 0)
  {
    v7 = *(a1 + 400);
    pthread_mutex_lock(v7);
    v8 = *(v7 + 144);
    if ((*(v8 + 24) & 1) == 0)
    {
      goto LABEL_21;
    }

    if ((a3 & 4) != 0)
    {
      v9 = 0;
      ++*(v7 + 176);
    }

    else
    {
      v9 = *(v8 + 32) <= 0x186A0u && !obj_cache_tx_start_closing(*(a1 + 392)) && !spaceman_tx_start_closing(a1);
    }

    if ((*(v7 + 72) & 0x40) != 0)
    {
      if (!v9)
      {
        *(v8 + 24) |= 0x100000u;
      }
    }

    else
    {
      v10 = *(v8 + 24);
      if ((v10 & 0x100000) != 0)
      {
        v10 &= ~0x100000u;
        *(v8 + 24) = v10;
      }

      else if (v9)
      {
        goto LABEL_21;
      }

      if ((v10 & 1) == 0)
      {
        panic("can't transition from tx flags 0x%x to 0x%x (expected 0x%x)\n", v10, 2, 1);
      }

      if ((v10 & 2) != 0)
      {
        panic("bad transition tx flags 0x%x to 0x%x (expected 0x%x)\n", v10, 2, 1);
      }

      *(v8 + 24) = v10 & 0xFFFFFFFC | 2;
      __tp.tv_sec = 0xAAAAAAAAAAAAAAAALL;
      __tp.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
      clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &__tp);
      *(v8 + 72) = 1000000 * __tp.tv_sec + SLODWORD(__tp.tv_nsec) / 1000;
    }

LABEL_21:
    if ((~a3 & 5) != 0)
    {
      if ((a3 & 0x10) == 0)
      {
        goto LABEL_23;
      }
    }

    else
    {
      *(v8 + 24) |= 0x20000u;
      if ((a3 & 0x10) == 0)
      {
LABEL_23:
        if ((a3 & 0x20) == 0)
        {
LABEL_25:
          v11 = *(v8 + 28) - 1;
          *(v8 + 28) = v11;
          if (!v11 && (v12 = *(v8 + 24), (v12 & 2) != 0))
          {
            if ((v12 & 4) != 0)
            {
              panic("bad transition tx flags 0x%x to 0x%x (expected 0x%x)\n", v12, 4, 2);
            }

            *(v8 + 24) = v12 & 0xFFFFFFF9 | 4;
            __tp.tv_sec = 0xAAAAAAAAAAAAAAAALL;
            __tp.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
            clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &__tp);
            v15 = 1000000 * __tp.tv_sec + SLODWORD(__tp.tv_nsec) / 1000;
            v16 = v15 - *(v8 + 72);
            *(v8 + 72) = v15;
            if (v16 > 0xF4240)
            {
              log_warn("%s:%d: %s tx xid %lld took %lld us to close\n", "tx_leave", 2516, (*(a1 + 384) + 212), *(v8 + 16), v16);
            }

            *(v7 + 248) = (*(v7 + 248) + v16) >> 1;
            v3 = sub_100073D38(a1);
            if ((a3 & 1) == 0)
            {
              goto LABEL_37;
            }
          }

          else
          {
            v3 = 0;
            if ((a3 & 1) == 0)
            {
LABEL_37:
              pthread_mutex_unlock(v7);
              return v3;
            }
          }

          if ((a3 & 4) != 0)
          {
            v13 = 127;
          }

          else
          {
            v13 = 63;
          }

          do
          {
            if (*(v8 + 16) != a2 || (*(v8 + 24) & v13) == 0)
            {
              break;
            }

            if (!v3)
            {
              cv_wait((v7 + 256), v7, 8, "nx_tx_finish_wait", 0);
            }
          }

          while (!*(v7 + 76));
          v3 = *(v8 + 52);
          goto LABEL_37;
        }

LABEL_24:
        *(v8 + 24) |= 0x80000u;
        goto LABEL_25;
      }
    }

    *(v8 + 24) |= 0x40000u;
    if ((a3 & 0x20) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  return 30;
}

uint64_t sub_10007417C(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 392);
  v4 = *(a1 + 400);
  v91 = 0xAAAAAAAAAAAAAAAALL;
  *(a1 + 660) = -1;
  v6 = **(*(v4 + 136) + 8);
  if (v6 && (*(v6 + 24) & 0x10) != 0)
  {
    if (v6 != a2)
    {
      panic("not handling the flushing tx!\n");
    }
  }

  else
  {
    if (*(v4 + 144) != a2)
    {
      panic("not handling the current tx!\n");
    }

    if ((*(a2 + 24) & 0x14) == 0)
    {
      panic("current tx not closed/flushing?!\n");
    }
  }

  v7 = *(a2 + 24);
  if ((v7 & 0x10) == 0)
  {
    if ((v7 & 4) == 0)
    {
      panic("can't transition from tx flags 0x%x to 0x%x (expected 0x%x)\n", v7, 8, 4);
    }

    if ((v7 & 8) != 0)
    {
      panic("bad transition tx flags 0x%x to 0x%x (expected 0x%x)\n", v7, 8, 4);
    }

    *(a2 + 24) = v7 & 0xFFFFFFF3 | 8;
    __tp.tv_sec = 0xAAAAAAAAAAAAAAAALL;
    __tp.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
    clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &__tp);
    v8 = 1000000 * __tp.tv_sec + SLODWORD(__tp.tv_nsec) / 1000;
    v9 = v8 - *(a2 + 72);
    *(a2 + 72) = v8;
    if (v9 > 0xF4240)
    {
      log_warn("%s:%d: %s tx xid %lld was closed for %lld us waiting to prepare to flush\n", "tx_flush", 850, (*(a1 + 384) + 212), *(a2 + 16), v9);
    }

    if (*(a1 + 629))
    {
      v10 = 0;
    }

    else
    {
      v10 = 2;
    }

    v11 = obj_cache_flush_prepare(v5, 0, v10, *(a2 + 16));
    if (v11)
    {
      v12 = v11;
      if (!*(v4 + 76))
      {
        log_err("%s:%d: %s xid %lld error preparing to flush object cache: %d\n", "tx_flush", 856, (*(a1 + 384) + 212), *(a2 + 16), v11);
      }

      v13 = 858;
      goto LABEL_23;
    }

    if (*(a1 + 629) == 1)
    {
      v20 = *(a2 + 24);
      if ((v20 & 8) == 0)
      {
        panic("can't transition from tx flags 0x%x to 0x%x (expected 0x%x)\n", v20, 16, 8);
      }

      if ((v20 & 0x10) != 0)
      {
        panic("bad transition tx flags 0x%x to 0x%x (expected 0x%x)\n", v20, 16, 8);
      }

      *(a2 + 24) = v20 & 0xFFFFFFE7 | 0x10;
      __tp.tv_sec = 0xAAAAAAAAAAAAAAAALL;
      __tp.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
      clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &__tp);
      v21 = 1000000 * __tp.tv_sec + SLODWORD(__tp.tv_nsec) / 1000;
      v22 = v21 - *(a2 + 72);
      *(a2 + 72) = v21;
      if (v22 > 0xF4240)
      {
        log_warn("%s:%d: %s tx xid %lld took %lld us to prepare to flush\n", "tx_flush", 868, (*(a1 + 384) + 212), *(a2 + 16), v22);
      }
    }

    else
    {
      *(a2 + 36) = *(v4 + 96);
      *(a2 + 44) = *(v4 + 100);
      *(a2 + 48) = 0;
      *(a2 + 40) = 0;
      v91 = -1;
      v35 = nx_checkpoint_desc_block_address(a1, *(*(a1 + 376) + 128), &v91);
      if (v35)
      {
        v12 = v35;
        if (!*(v4 + 76))
        {
          log_err("%s:%d: %s xid %lld error getting first checkpoint map block address %d: %d\n", "tx_flush", 888, (*(a1 + 384) + 212), *(a2 + 16), *(*(a1 + 376) + 128), v35);
        }

        v13 = 890;
        goto LABEL_23;
      }

      bzero(*(a2 + 64), *(*(a1 + 376) + 36));
      v50 = *(a2 + 64);
      *(v50 + 24) = 1073741836;
      *(v50 + 8) = v91;
      *(v50 + 16) = *(a2 + 16);
      ++*(a2 + 40);
      v12 = nx_checkpoint_traverse(a1, a2, 1);
      if (v12)
      {
        goto LABEL_24;
      }

      for (i = *(v5 + 744); i; i = *(i + 88))
      {
        if (i != a1)
        {
          v52 = tx_checkpoint_write_prepare(a1, a2, i);
          if (v52)
          {
            v12 = v52;
            if (!*(v4 + 76))
            {
              log_err("%s:%d: %s xid %lld error preparing ephemeral object (oid 0x%llx type 0x%x/0x%x): %d\n", "tx_flush", 916, (*(a1 + 384) + 212), *(a2 + 16), *(i + 112), *(i + 36), *(i + 40), v52);
            }

            v13 = 918;
LABEL_23:
            *(v4 + 76) = v13;
            ++*(v4 + 80);
LABEL_24:
            obj_cache_flush_unprepare(v5);
            v14 = *(v5 + 872);
            if (v14)
            {
              v15 = (v5 + 872);
              do
              {
                v16 = v14[13];
                *v15 = v16;
                if (!v16)
                {
                  *(v5 + 880) = v15;
                }

                v14[13] = 3735928559;
                v14[8] = 0;
                obj_checkpoint_done(v14);
                obj_release(v14);
                v14 = *v15;
              }

              while (*v15);
            }

            for (j = *(v5 + 744); j; j = *(j + 88))
            {
              if ((*(j + 32) & 4) != 0)
              {
                obj_checkpoint_done(j);
              }
            }

            v18 = *(v4 + 72);
            if ((v18 & 0x40) != 0)
            {
              *(v4 + 72) = v18 & 0xFFFFFFBF;
            }

            v19 = *(a2 + 24);
            if ((v19 & 8) == 0)
            {
              panic("can't transition from tx flags 0x%x to 0x%x (expected 0x%x)\n", v19, 1, 8);
            }

            if (v19)
            {
              panic("bad transition tx flags 0x%x to 0x%x (expected 0x%x)\n", v19, 1, 8);
            }

            *(a2 + 24) = v19 & 0xFFFFFFF6 | 1;
            __tp.tv_sec = 0xAAAAAAAAAAAAAAAALL;
            __tp.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
            clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &__tp);
            *(a2 + 72) = 1000000 * __tp.tv_sec + SLODWORD(__tp.tv_nsec) / 1000;
            goto LABEL_66;
          }

          obj_retain_ephemeral_no_ref(i);
          if ((*(i + 32) & 4) == 0 && (*(i + 20) & 0x20) == 0)
          {
            log_warn("%s:%d: %s Unknown NEW persistent ephemeral object found: oid 0x%llx type 0x%x/0x%x\n", "tx_flush", 925, (*(a1 + 384) + 212), *(i + 112), *(i + 36), *(i + 40));
          }

          *(i + 64) = *(i + 56);
          *(i + 104) = 0;
          **(v5 + 880) = i;
          *(v5 + 880) = i + 104;
        }
      }

      v53 = *(v4 + 96);
      *(a2 + 112) = -1;
      v54 = (*(a2 + 40) + v53) % *(v4 + 88);
      v55 = nx_checkpoint_desc_block_address(a1, v54, (a2 + 112));
      if (v55)
      {
        v12 = v55;
        if (!*(v4 + 76))
        {
          log_err("%s:%d: %s xid %lld error getting next checkpoint superblock address %d: %d\n", "tx_flush", 937, (*(a1 + 384) + 212), *(a2 + 16), v54, v55);
        }

        v13 = 939;
        goto LABEL_23;
      }

      ++*(a2 + 40);
      v65 = *(v5 + 928) - 1;
      if (*(a2 + 48) != v65)
      {
        log_err("%s:%d: %s xid %lld checkpoint data block count is not value tracked by cache: %d != %d\n", "tx_flush", 989, (*(a1 + 384) + 212), *(a2 + 16), *(a2 + 48), v65);
      }

      v66 = *(a1 + 376);
      *(v66 + 88) = *(v5 + 400);
      *(v66 + 96) = *(v4 + 64);
      memcpy(*(a2 + 56), v66, *(v66 + 36));
      v69 = *(a2 + 16);
      v70 = *(a2 + 56);
      *(v70 + 16) = v69;
      v71 = *(v4 + 96);
      *(v70 + 136) = v71;
      v72 = *(v4 + 100);
      *(v70 + 144) = v72;
      v73 = *(a2 + 40);
      *(v70 + 140) = v73;
      v74 = *(a2 + 48);
      *(v70 + 148) = v74;
      v75 = v73 + v71;
      v77 = *(v4 + 88);
      v76 = *(v4 + 92);
      v78 = v75 % v77;
      v79 = (v74 + v72) % v76;
      if (!*(v4 + 76))
      {
        if (v73 > v77 >> 2)
        {
          log_err("%s:%d: %s xid %lld checkpoint descriptor count is larger than expected: %d > %d\n", "tx_flush", 1014, (*(a1 + 384) + 212), v69, v73, v77 >> 2);
          v74 = *(a2 + 48);
          v76 = *(v4 + 92);
        }

        if (v74 > v76 >> 2)
        {
          log_err("%s:%d: %s xid %lld checkpoint data block count is larger than expected: %d > %d\n", "tx_flush", 1018, (*(a1 + 384) + 212), *(a2 + 16), v74, v76 >> 2);
          v74 = *(a2 + 48);
        }

        v80 = *(v5 + 928) - 1;
        if (v74 != v80)
        {
          log_err("%s:%d: %s xid %lld checkpoint data block count is not value tracked by cache: %d != %d\n", "tx_flush", 1022, (*(a1 + 384) + 212), *(a2 + 16), v74, v80);
        }
      }

      v81 = *(a2 + 56);
      *(v81 + 128) = v78;
      *(v81 + 132) = v79;
      obj_checksum_set_phys(a1, v81, *(*(a1 + 376) + 36), v67, v68);
      *(a2 + 48) = 0;
      *(a2 + 40) = 1;
      *(*(a2 + 64) + 36) = 0;
      v82 = *(a2 + 24);
      if ((v82 & 8) == 0)
      {
        panic("can't transition from tx flags 0x%x to 0x%x (expected 0x%x)\n", v82, 16, 8);
      }

      if ((v82 & 0x10) != 0)
      {
        panic("bad transition tx flags 0x%x to 0x%x (expected 0x%x)\n", v82, 16, 8);
      }

      *(a2 + 24) = v82 & 0xFFFFFFE7 | 0x10;
      __tp.tv_sec = 0xAAAAAAAAAAAAAAAALL;
      __tp.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
      clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &__tp);
      v83 = 1000000 * __tp.tv_sec + SLODWORD(__tp.tv_nsec) / 1000;
      v22 = v83 - *(a2 + 72);
      *(a2 + 72) = v83;
      if (v22 > 0xF4240)
      {
        log_warn("%s:%d: %s tx xid %lld took %lld us to prepare to flush\n", "tx_flush", 1045, (*(a1 + 384) + 212), *(a2 + 16), v22);
      }
    }

    *(v4 + 232) = (*(v4 + 232) + v22) >> 1;
  }

  if (*(a1 + 629) == 1)
  {
    v23 = *(a2 + 24);
    if ((v23 & 0x10) == 0)
    {
      panic("can't transition from tx flags 0x%x to 0x%x (expected 0x%x)\n", v23, 1, 16);
    }

    if (v23)
    {
      panic("bad transition tx flags 0x%x to 0x%x (expected 0x%x)\n", v23, 1, 16);
    }

    *(a2 + 24) = v23 & 0xFFFFFFEE | 1;
    __tp.tv_sec = 0xAAAAAAAAAAAAAAAALL;
    __tp.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
    clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &__tp);
    *(a2 + 72) = 1000000 * __tp.tv_sec + SLODWORD(__tp.tv_nsec) / 1000;
    *(a2 + 32) = 0;
    *(a2 + 52) = 0;
  }

  else if (*(v4 + 144) == a2)
  {
    *a2 = 0;
    v24 = *(v4 + 136);
    *(a2 + 8) = v24;
    *v24 = a2;
    *(v4 + 136) = a2;
    *(v4 + 144) = 0;
  }

  pthread_mutex_unlock(v4);
  cv_wakeup((v4 + 256));
  if (*(a1 + 629))
  {
    v25 = 0;
  }

  else
  {
    v25 = 2;
  }

  v26 = obj_cache_flush_write(v5, v25);
  if (*(a1 + 629) == 1)
  {
    pthread_mutex_lock(v4);
    obj_cache_flush_unprepare(v5);
    sub_1000729E8(a1, 0, 0);
    cv_wakeup((v4 + 256));
    v12 = 0;
    *(a2 + 52) = 0;
    return v12;
  }

  v12 = v26;
  if (v26)
  {
    pthread_mutex_lock(v4);
    if (!*(v4 + 76))
    {
      log_err("%s:%d: %s xid %lld error flushing objects from the cache: %d\n", "tx_flush", 1117, (*(a1 + 384) + 212), *(a2 + 16), v12);
    }

    v29 = 1119;
    goto LABEL_65;
  }

  while (1)
  {
    v32 = *(v5 + 872);
    if (!v32)
    {
      v33 = *(a2 + 64);
      if (*(v33 + 8))
      {
        *(v33 + 32) |= 1u;
        obj_checksum_set_phys(a1, v33, *(*(a1 + 376) + 36), v27, v28);
        v34 = dev_write(*(a1 + 384));
        if (v34)
        {
          v12 = v34;
          pthread_mutex_lock(v4);
          if (!*(v4 + 76))
          {
            log_err("%s:%d: %s xid %lld failed to write last checkpoint map block %lld: %d\n", "tx_flush", 1154, (*(a1 + 384) + 212), *(a2 + 16), *(*(a2 + 64) + 8), v12);
          }

          v29 = 1156;
          goto LABEL_65;
        }
      }

      ++*(a2 + 40);
      pthread_mutex_lock(v4);
      v36 = *(a2 + 40);
      v37 = *(a2 + 56);
      v38 = *(a2 + 48);
      v39 = v37[37];
      if (v36 != v37[35] || v38 != v39)
      {
        panic("flush phase checkpoint lengths (%d %d) don't match prepare phase (%d %d)\n", v36, v38, v37[35], v39);
      }

      v41 = *(a1 + 376);
      v41[34] = v37[34];
      v41[35] = v36;
      v41[36] = v37[36];
      v41[37] = v38;
      v42 = *(a2 + 24);
      if ((v42 & 0x10) == 0)
      {
        panic("can't transition from tx flags 0x%x to 0x%x (expected 0x%x)\n", v42, 32, 16);
      }

      if ((v42 & 0x20) != 0)
      {
        panic("bad transition tx flags 0x%x to 0x%x (expected 0x%x)\n", v42, 32, 16);
      }

      *(a2 + 24) = v42 & 0xFFFFFFCF | 0x20;
      __tp.tv_sec = 0xAAAAAAAAAAAAAAAALL;
      __tp.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
      clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &__tp);
      v43 = 1000000 * __tp.tv_sec + SLODWORD(__tp.tv_nsec) / 1000;
      v44 = v43 - *(a2 + 72);
      *(a2 + 72) = v43;
      if (v44 > 0xF4240)
      {
        log_warn("%s:%d: %s tx xid %lld took %lld us to flush\n", "tx_flush", 1185, (*(a1 + 384) + 212), *(a2 + 16), v44);
      }

      *(a2 + 104) = v44;
      cv_wakeup((v4 + 256));
      v45 = sub_1000729E8(a1, 0, 1);
      if (v45)
      {
        v12 = v45;
        if (!*(v4 + 76))
        {
          log_err("%s:%d: %s xid %lld sync/barrier failed: %d\n", "tx_flush", 1194, (*(a1 + 384) + 212), *(a2 + 16), v45);
        }

        *(v4 + 76) = 1196;
        ++*(v4 + 80);
        --*(a2 + 40);
        v46 = *(a2 + 24);
        if ((v46 & 0x20) == 0)
        {
          panic("can't transition from tx flags 0x%x to 0x%x (expected 0x%x)\n", v46, 16, 32);
        }

        if ((v46 & 0x10) != 0)
        {
          panic("bad transition tx flags 0x%x to 0x%x (expected 0x%x)\n", v46, 16, 32);
        }

        *(a2 + 24) = v46 & 0xFFFFFFCF | 0x10;
        __tp.tv_sec = 0xAAAAAAAAAAAAAAAALL;
        __tp.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
        clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &__tp);
        v47 = 1000000 * __tp.tv_sec + SLODWORD(__tp.tv_nsec) / 1000;
        v48 = v47 - *(a2 + 72);
        *(a2 + 72) = v47;
        v49 = v48 + *(a2 + 104);
        goto LABEL_123;
      }

      pthread_mutex_unlock(v4);
      if (*(a1 + 632) == 1)
      {
        *(a2 + 24) |= 0x80000u;
        bzero(*(a2 + 64), *(*(a1 + 376) + 36));
      }

      v56 = dev_write(*(a1 + 384));
      if (v56)
      {
        v12 = v56;
        pthread_mutex_lock(v4);
        if (!*(v4 + 76))
        {
          log_err("%s:%d: %s xid %lld failed to write checkpoint superblock %lld: %d\n", "tx_flush", 1223, (*(a1 + 384) + 212), *(a2 + 16), *(a2 + 112), v12);
        }

        v57 = 1225;
      }

      else
      {
        if ((*(a2 + 26) & 8) == 0 || (v60 = dev_write(*(a1 + 384)), !v60))
        {
          if (*(a1 + 628) == 1 && (*(a1 + 632) & 1) == 0)
          {
            *(a1 + 660) = (*(*(a1 + 376) + 136) + *(*(a1 + 376) + 140) - 1) % *(v4 + 88);
          }

          pthread_mutex_lock(v4);
          v61 = sub_100073C4C(a2, 32, 64);
          v62 = v61;
          if (v61 > 0xF4240)
          {
            log_warn("%s:%d: %s tx xid %lld took %lld us to sync and write superblock\n", "tx_flush", 1280, (*(a1 + 384) + 212), *(a2 + 16), v61);
          }

          *(a2 + 104) += v62;
          v63 = *(a2 + 24);
          if ((v63 & 0x20000) == 0)
          {
            goto LABEL_159;
          }

          ++*(v4 + 184);
          if ((v63 & 0x40000) != 0)
          {
            ++*(v4 + 192);
          }

          v64 = sub_1000729E8(a1, (v63 >> 14) & 0x10, 0);
          if (!v64)
          {
LABEL_159:
            *(a2 + 52) = 0;
            *(v4 + 72) |= 2u;
            *(v4 + 76) = 0;
            v84 = *(a2 + 56);
            v85 = *(v84 + 128);
            v86 = *(a1 + 376);
            *(v86 + 128) = v85;
            *(v4 + 96) = v85;
            v87 = *(v84 + 132);
            *(v86 + 132) = v87;
            *(v4 + 100) = v87;
            *(v86 + 16) = *(v84 + 16);
            v88 = *(v4 + 152);
            *(v4 + 152) = v88 + 1;
            if (v88)
            {
              *(v4 + 200) = (*(v4 + 200) + *(a2 + 32)) >> 1;
              *(v4 + 208) = vshrq_n_u64(vaddq_s64(*(a2 + 80), *(v4 + 208)), 1uLL);
              *(v4 + 224) = (*(a2 + 96) + *(v4 + 224)) >> 1;
              *(v4 + 240) = (*(a2 + 104) + *(v4 + 240)) >> 1;
              if (__ROR8__(0xCCCCCCCCCCCCCCCDLL * (v88 + 1), 2) <= 0xCCCCCCCCCCCCCCCuLL && nx_ratelimit_log_allowed(a1))
              {
                v89 = *(v4 + 160);
                if (v89 <= 1)
                {
                  v90 = 1;
                }

                else
                {
                  v90 = *(v4 + 160);
                }

                log_debug("%s:%d: %s xid %llu tx stats: # %llu owait %llu %lluus finish %llu bar2 %lld f %lld enter %llu fq %llu %llu %lluus close %lluus prep %lluus flush %lluus\n", "tx_flush", 1344, (*(a1 + 384) + 212), *(a2 + 16), *(v4 + 152), v89, *(v4 + 168) / v90, *(v4 + 176), *(v4 + 184), *(v4 + 192), *(v4 + 200), *(v4 + 216), *(v4 + 224), *(v4 + 208), *(v4 + 248), *(v4 + 232), *(v4 + 240));
              }
            }

            else
            {
              *(v4 + 200) = *(a2 + 32);
              *(v4 + 208) = *(a2 + 80);
              *(v4 + 224) = *(a2 + 96);
              *(v4 + 240) = *(a2 + 104);
            }

            cv_wakeup((v4 + 256));
            return 0;
          }

          v12 = v64;
          if (!*(v4 + 76))
          {
            log_err("%s:%d: %s xid %lld second sync/barrier failed: %d\n", "tx_flush", 1292, (*(a1 + 384) + 212), *(a2 + 16), v64);
          }

          *(v4 + 76) = 1294;
          ++*(v4 + 80);
          --*(a2 + 40);
          v58 = a2;
          v59 = 64;
          goto LABEL_122;
        }

        v12 = v60;
        if (!*(v4 + 76))
        {
          log_err("%s:%d: %s xid %lld failed to write block 0 superblock: %d\n", "tx_flush", 1245, (*(a1 + 384) + 212), *(a2 + 16), v60);
        }

        pthread_mutex_lock(v4);
        v57 = 1249;
      }

      *(v4 + 76) = v57;
      ++*(v4 + 80);
      --*(a2 + 40);
      v58 = a2;
      v59 = 32;
LABEL_122:
      v49 = *(a2 + 104) + sub_100073C4C(v58, v59, 16);
LABEL_123:
      *(a2 + 104) = v49;
      goto LABEL_66;
    }

    v31 = tx_checkpoint_write(a1, a2, *(v5 + 872), v27, v28);
    if (v31)
    {
      break;
    }

    obj_checkpoint_done(v32);
    obj_release(v32);
  }

  v12 = v31;
  pthread_mutex_lock(v4);
  if (!*(v4 + 76))
  {
    log_err("%s:%d: %s xid %lld failed to write checkpoint data @ 0x%llx: %d\n", "tx_flush", 1133, (*(a1 + 384) + 212), *(a2 + 16), v32[16], v12);
  }

  v29 = 1135;
LABEL_65:
  *(v4 + 76) = v29;
  ++*(v4 + 80);
LABEL_66:
  cv_wakeup((v4 + 256));
  *(a2 + 52) = v12;
  return v12;
}

uint64_t file_type_to_dirent_type(unsigned int a1)
{
  if (a1 >> 12 == 7)
  {
    return 0;
  }

  else
  {
    return word_10009DF10[(a1 >> 12) ^ 8];
  }
}

void *apfs_hashinit(unsigned int a1, unsigned int *a2)
{
  if (a1 < 1)
  {
    return 0;
  }

  v3 = 1;
  do
  {
    v4 = v3;
    v3 *= 2;
  }

  while (v4 <= a1);
  v5 = v4 >> 1;
  v6 = _apfs_malloc_typed(8 * (v4 >> 1), 0x2004093837F09uLL);
  v7 = v6;
  if (v6)
  {
    v8 = v5 - 1;
    bzero(v6, 8 * v8 + 8);
    *a2 = v8;
  }

  return v7;
}

unint64_t calc_overlap_range(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t *a5)
{
  v5 = a2 + a1;
  v6 = a4 + a3;
  if (a2 + a1 > a3)
  {
    v7 = v6 >= a1;
    v8 = v6 == a1;
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  v9 = !v8 && v7 && v5 >= a1;
  if (!v9 || v6 < a3)
  {
    return 0;
  }

  if (a1 <= a3)
  {
    v11 = a3;
  }

  else
  {
    v11 = a1;
  }

  if (v5 >= v6)
  {
    v5 = a4 + a3;
  }

  if (a5)
  {
    *a5 = v11;
  }

  return v5 - v11;
}

uint64_t apfs_do_update_last_modified_by(void *a1, const char *a2, uint64_t a3)
{
  v6 = apfs_source_version();
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *__str = v7;
  v12 = v7;
  snprintf(__str, 0x20uLL, "%s (%s)", a2, v6);
  v8 = 0;
  v9 = (a1 + 40);
  do
  {
    if (!strncmp(v9, __str, 0x20uLL))
    {
      break;
    }

    ++v8;
    v9 += 48;
  }

  while (v8 != 7);
  memmove(a1 + 46, a1 + 40, 48 * v8);
  __strlcpy_chk();
  result = get_timestamp();
  a1[44] = result;
  a1[45] = a3;
  return result;
}

uint64_t xf_field_compare(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = v2 >= v3;
  v5 = v2 > v3;
  if (v4)
  {
    return v5;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t xf_offset_type_compare(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = v2 >= v3;
  v5 = v2 > v3;
  if (v4)
  {
    return v5;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t xf_init(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  if (a2)
  {
    v2 = a2;
    *(a1 + 2) = 4;
    v4 = _apfs_malloc_typed(0x10uLL, 0x100004052888210uLL);
    *(a1 + 8) = v4;
    if (!v4)
    {
      *(a1 + 2) = 0;
    }

    *(a1 + 6) = (v2 + 7) & 0xFFF8;
    v5 = _apfs_malloc_typed((v2 + 7) & 0xFFF8, 0xD97FBADFuLL);
    *(a1 + 16) = v5;
    if (!v5)
    {
      *(a1 + 6) = 0;
    }
  }

  return 0;
}

uint64_t xf_init_with_blob(unsigned __int16 *a1, unsigned __int16 *a2, unint64_t a3)
{
  *a1 = 0;
  *(a1 + 1) = 0;
  *(a1 + 2) = 0;
  if (a3 < 4)
  {
    return 28;
  }

  v6 = *a2;
  *a1 = v6;
  v7 = a2[1];
  a1[2] = v7;
  a1[1] = v6;
  if (v7 + 4 * v6 + 4 > a3)
  {
    goto LABEL_10;
  }

  if (v6)
  {
    v8 = 0;
    v9 = a2 + 3;
    v10 = v6;
    while (v7 > v8)
    {
      v11 = *v9;
      if ((v7 - v8) < v11)
      {
        break;
      }

      v8 += (v11 + 7) & 0x1FFF8;
      v9 += 2;
      if (!--v10)
      {
        goto LABEL_9;
      }
    }

    goto LABEL_10;
  }

LABEL_9:
  v12 = (v7 + 7) & 0xFFF8;
  a1[3] = v12;
  if (v12 < v7)
  {
LABEL_10:
    result = 22;
LABEL_11:
    *a1 = 0;
    *(a1 + 1) = 0;
    *(a1 + 2) = 0;
    return result;
  }

  v13 = 2 * v6;
  *(a1 + 1) = _apfs_malloc_typed(4 * v6, 0x100004052888210uLL);
  v14 = _apfs_malloc_typed(a1[3], 0x8CB4D706uLL);
  *(a1 + 2) = v14;
  v15 = *(a1 + 1);
  v16 = *a1;
  if (!v15 || !v14)
  {
    _apfs_free(v15, 4 * v16);
    _apfs_free(*(a1 + 2), a1[3]);
    result = 12;
    goto LABEL_11;
  }

  v17 = a2 + 2;
  memcpy(v15, v17, 4 * v16);
  memcpy(*(a1 + 2), &v17[v13], a1[2]);
  bzero((*(a1 + 2) + a1[2]), a1[3] - a1[2]);
  return 0;
}

uint64_t xf_get_from_blob(unsigned __int16 *a1, unint64_t a2, int a3, _DWORD *a4, void *a5, _DWORD *a6)
{
  if (a2 < 4)
  {
    return 28;
  }

  v7 = *a1;
  v8 = a1[1];
  if (v8 + 4 * v7 + 4 > a2)
  {
    return 22;
  }

  if (*a1)
  {
    v9 = 0;
    v10 = &a1[2 * v7 + 2];
    for (i = a1 + 3; ; i += 2)
    {
      v12 = *i;
      if (v9 + v12 > v8)
      {
        break;
      }

      if (*(i - 2) == a3)
      {
        if (a4)
        {
          *a4 = *(i - 1);
        }

        if (a6)
        {
          *a6 = v12;
        }

        result = 0;
        *a5 = v10 + v9;
        return result;
      }

      v9 += (v12 + 7) & 0x1FFF8;
      if (!--v7)
      {
        return 2;
      }
    }

    return 22;
  }

  return 2;
}

uint64_t xf_set_in_blob(unsigned __int16 *a1, unint64_t a2, int a3, const void *a4, int a5)
{
  v9 = -1431655766;
  __dst = 0;
  result = xf_get_from_blob(a1, a2, a3, 0, &__dst, &v9);
  if (!result)
  {
    if (v9 == a5)
    {
      memcpy(__dst, a4, a5);
      return 0;
    }

    else
    {
      return 34;
    }
  }

  return result;
}

uint64_t xf_deep_copy(uint64_t a1, unsigned __int16 *a2)
{
  if (*(a2 + 2))
  {
    v4 = _apfs_malloc_typed(a2[3], 0x3B1F33ADuLL);
    if (!v4)
    {
      return 12;
    }

    v5 = v4;
    memcpy(v4, *(a2 + 2), a2[3]);
  }

  else
  {
    v5 = 0;
  }

  if (!*(a2 + 1))
  {
    v7 = 0;
    goto LABEL_9;
  }

  v6 = _apfs_malloc_typed(4 * a2[1], 0x100004052888210uLL);
  if (v6)
  {
    v7 = v6;
    memcpy(v6, *(a2 + 1), 4 * *a2);
LABEL_9:
    result = 0;
    *a1 = *a2;
    *(a1 + 8) = v7;
    *(a1 + 16) = v5;
    return result;
  }

  _apfs_free(v5, a2[3]);
  return 12;
}

uint64_t xf_release(uint64_t a1)
{
  _apfs_free(*(a1 + 8), 4 * *(a1 + 2));
  _apfs_free(*(a1 + 16), *(a1 + 6));
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  return 0;
}

uint64_t xf_serialize(unsigned __int16 *a1, _WORD *a2, unint64_t a3)
{
  v3 = *a1;
  if (a1[2] + 4 * v3 + 4 > a3)
  {
    return 28;
  }

  *a2 = v3;
  a2[1] = a1[2];
  v6 = a2 + 2;
  memcpy(a2 + 2, *(a1 + 1), 4 * *a1);
  memcpy(&v6[2 * *a1], *(a1 + 2), a1[2]);
  return 0;
}

uint64_t xf_set(unsigned __int16 *a1, int a2, char a3, void *__src, size_t __n)
{
  v8 = a2;
  v10 = *a1;
  if (*a1)
  {
    v11 = 0;
    v12 = 0;
    v13 = *a1;
    v14 = v10 - 1;
    v15 = (*(a1 + 1) + 2);
    v16 = 2;
    while (*(v15 - 2) != a2)
    {
      v17 = *v15;
      v15 += 2;
      v12 += (v17 + 7) & 0x1FFF8;
      ++v11;
      v16 += 4;
      if (v10 == v11)
      {
        goto LABEL_14;
      }
    }

    v18 = *(a1 + 2);
    *(v15 - 1) = a3;
    if (v18)
    {
      v19 = (v18 + v12);
      v20 = *v15;
      if (v20 == __n)
      {
        goto LABEL_22;
      }

      v21 = (v20 + 7) & 0x1FFF8;
      v22 = (__n + 7) & 0xFFFFFFFFFFFFFFF8;
      v23 = v22 - v21;
      if (v22 < v21)
      {
        if (v14 > v11)
        {
          memmove((v18 + v12 + v22), (v18 + v12 + v21), a1[3] - (v12 + v21));
        }

        v24 = a1[2] - (v21 - v22);
LABEL_32:
        a1[2] = v24;
LABEL_33:
        *(*(a1 + 1) + v16) = __n;
        if (!v19)
        {
          return 22;
        }

        goto LABEL_22;
      }

      if (v22 <= v21)
      {
        goto LABEL_33;
      }

      v33 = v12;
      v34 = a1[2];
      if (v23 + v34 <= a1[3])
      {
LABEL_29:
        if (v14 > v11)
        {
          memmove(&v19[v22], &v19[v21], v34 - (v21 + v33));
          LOWORD(v34) = a1[2];
        }

        v24 = v34 + v23;
        goto LABEL_32;
      }

      if (!sub_100075CAC(a1, __n))
      {
        v19 = (*(a1 + 2) + v33);
        LODWORD(v34) = a1[2];
        v14 = *a1 - 1;
        goto LABEL_29;
      }

      return 28;
    }

    v13 = v11;
  }

  else
  {
    v13 = 0;
  }

LABEL_14:
  v25 = a1[1];
  if (v10 >= v25)
  {
    v26 = v25 + 4;
    v27 = _apfs_realloc_typed(*(a1 + 1), 4 * v25, (4 * (v25 + 4)), 0x100004052888210uLL);
    if (!v27)
    {
      return 28;
    }

    *(a1 + 1) = v27;
    a1[1] = v26;
  }

  v28 = a1[2];
  v29 = (__n + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v29 + v28 > a1[3])
  {
    if (sub_100075CAC(a1, __n))
    {
      return 28;
    }

    v28 = a1[2];
  }

  v31 = *(a1 + 2);
  v32 = *(a1 + 1) + 4 * v13;
  *v32 = v8;
  *(v32 + 1) = a3;
  *(v32 + 2) = __n;
  ++*a1;
  v19 = (v31 + v28);
  a1[2] = v28 + v29;
  if (!(v31 + v28))
  {
    return 22;
  }

LABEL_22:
  memcpy(v19, __src, __n);
  if ((__n & 7) != 0)
  {
    bzero(&v19[__n], 8 - (__n & 7));
  }

  return 0;
}

uint64_t sub_100075CAC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 6);
  v4 = ((a2 + 7) & 0xFFFFFFFFFFFFFFF8) + v3;
  v5 = _apfs_realloc_typed(*(a1 + 16), v3, v4, 0x669DD06FuLL);
  if (!v5)
  {
    return 28;
  }

  v6 = v5;
  result = 0;
  *(a1 + 16) = v6;
  *(a1 + 6) = v4;
  return result;
}

uint64_t xf_get(unsigned __int16 *a1, int a2, _DWORD *a3, char *__dst, size_t __n)
{
  if (!*a1)
  {
    return 2;
  }

  v9 = 0;
  v10 = 0;
  v11 = (*(a1 + 1) + 2);
  while (*(v11 - 2) != a2)
  {
    v12 = *v11;
    v11 += 2;
    v10 += (v12 + 7) & 0x1FFF8;
    v9 += 4;
    if (4 * *a1 == v9)
    {
      return 2;
    }
  }

  v14 = (*(a1 + 2) + v10);
  v15 = *v11;
  if (v15 >= __n)
  {
    memcpy(__dst, v14, __n);
  }

  else
  {
    memcpy(__dst, v14, v15);
    v16 = *(*(a1 + 1) + v9 + 2);
    bzero(&__dst[v16], __n - v16);
  }

  result = 0;
  if (a3)
  {
    *a3 = *(*(a1 + 1) + v9 + 1);
  }

  return result;
}

uint64_t xf_get_ptr_and_size(unsigned __int16 *a1, int a2, _DWORD *a3, void *a4, _DWORD *a5)
{
  if (!*a1)
  {
    return 2;
  }

  v5 = 0;
  v6 = 0;
  v7 = *(a1 + 1);
  while (*(v7 + v5) != a2)
  {
    v6 += (*(v7 + v5 + 2) + 7) & 0x1FFF8;
    v5 += 4;
    if (4 * *a1 == v5)
    {
      return 2;
    }
  }

  *a4 = *(a1 + 2) + v6;
  if (a3)
  {
    *a3 = *(*(a1 + 1) + v5 + 1);
  }

  v8 = 0;
  if (a5)
  {
    *a5 = *(*(a1 + 1) + v5 + 2);
  }

  return v8;
}

uint64_t xf_remove(unsigned __int16 *a1, int a2)
{
  if (!*a1)
  {
    return 2;
  }

  v3 = 0;
  v4 = *(a1 + 1);
  v5 = 1;
  for (i = 2; *(v4 + i - 2) != a2; i += 4)
  {
    v3 += (*(v4 + i) + 7) & 0x1FFF8;
    if (++v5 - *a1 == 1)
    {
      return 2;
    }
  }

  v8 = (*(v4 + i) + 7) & 0x1FFF8;
  memmove((*(a1 + 2) + v3), (*(a1 + 2) + v3 + v8), (a1[3] - v3 - v8));
  a1[2] -= v8;
  memmove((*(a1 + 1) + i - 2), (*(a1 + 1) + i + 2), 4 * (*a1 - v5));
  result = 0;
  --*a1;
  return result;
}

uint64_t xf_sort(unsigned __int16 *a1)
{
  v1 = *a1;
  if (v1 < 2)
  {
    return 0;
  }

  if (*(a1 + 2))
  {
    v4 = _apfs_calloc_typed(1uLL, a1[3], 0xA7548EA4uLL);
    if (!v4)
    {
      return 12;
    }

    v5 = v4;
    v1 = *a1;
  }

  else
  {
    v5 = 0;
  }

  if (*(a1 + 1))
  {
    v6 = _apfs_malloc_typed(8 * v1, 0x10000404A09149AuLL);
    if (v6)
    {
      v7 = v6;
      v1 = *a1;
      v8 = *(a1 + 1);
      if (!*a1)
      {
        goto LABEL_14;
      }

LABEL_12:
      v9 = 0;
      v10 = v7 + 1;
      v11 = v8 + 1;
      v12 = v1;
      do
      {
        v13 = *(v11 - 2);
        v14 = *v11;
        v11 += 2;
        *(v10 - 4) = v13;
        *v10 = v9;
        v10 += 2;
        v9 += (v14 + 7) & 0x1FFF8;
        --v12;
      }

      while (v12);
      goto LABEL_14;
    }

    _apfs_free(v5, a1[3]);
    return 12;
  }

  v8 = 0;
  v7 = 0;
  if (v1)
  {
    goto LABEL_12;
  }

LABEL_14:
  qsort(v8, v1, 4uLL, xf_field_compare);
  qsort(v7, *a1, 8uLL, xf_offset_type_compare);
  if (*a1)
  {
    v15 = 0;
    v16 = 0;
    v17 = *(a1 + 1);
    v18 = 1;
    do
    {
      memcpy(&v5[v16], (*(a1 + 2) + v7[v18]), *(v17 + 2 * v18));
      v17 = *(a1 + 1);
      v16 += (*(v17 + 2 * v18) + 7) & 0x1FFF8;
      ++v15;
      v18 += 2;
    }

    while (v15 < *a1);
  }

  _apfs_free(*(a1 + 2), a1[3]);
  _apfs_free(v7, 8 * *a1);
  result = 0;
  *(a1 + 2) = v5;
  return result;
}

void sub_1000763B0(uint64_t *a1, int a2, void *a3, const char *a4)
{
  nx_unmount(*a1);
  sub_1000008B4(&qword_1000A4C00, 80, a2);
  errc(65, a2, "unable to mount APFS volume @ %s [%ld]", a4, *a3);
}

void sub_10007640C(uint64_t a1, void *a2, const char *a3)
{
  nx_unmount(a1);
  sub_1000008B4(&qword_1000A4C00, 79, 64);
  errx(64, "invalid filesystem index (%ld) for %s", *a2, a3);
}

uint64_t DERImg4Decode(void *a1, unint64_t a2)
{
  result = 6;
  if (a1)
  {
    if (a2)
    {
      v6 = 0;
      v7 = 0;
      v8 = 0;
      result = DERDecodeItem(a1, &v6);
      if (!result)
      {
        if (v6 == 0x2000000000000010)
        {
          v5 = a1[1];
          if (__CFADD__(*a1, v5))
          {
            return 7;
          }

          else
          {
            result = 7;
            if (!__CFADD__(v7, v8) && *a1 + v5 == v7 + v8)
            {
              result = DERParseSequenceContentToObject(&v7, 4u, &DERImg4ItemSpecs, a2, 0x40uLL, 0);
              if (!result)
              {
                return 2 * (DERImg4DecodeTagCompare(a2, 0x494D4734u) != 0);
              }
            }
          }
        }

        else
        {
          return 2;
        }
      }
    }
  }

  return result;
}

uint64_t DERImg4DecodePayloadCompression(uint64_t a1, uint64_t a2)
{
  v11 = 2;
  result = 6;
  if (a1)
  {
    if (a2)
    {
      sub_10000E698();
      result = DERParseSequenceContentToObject(v5, v6, v7, v8, v9, v10);
      if (!result)
      {
        result = DERParseInteger(a2, &v11);
        if (!result)
        {
          if (v11 <= 1)
          {
            return 0;
          }

          else
          {
            return 6;
          }
        }
      }
    }
  }

  return result;
}

uint64_t DERImg4DecodePayloadWithProperties(uint64_t a1, void *a2)
{
  result = 6;
  if (a1)
  {
    if (a2)
    {
      result = DERParseSequenceToObject(a1, 7u, &DERImg4PayloadWithPropertiesItemSpecs, a2, 0xA0uLL, 0);
      if (!result)
      {
        if (DERImg4DecodeTagCompare(a2, 0x494D3450u))
        {
          return 2;
        }

        else if (!a2[10] || (sub_10000E6AC(), result = DERImg4DecodePayloadCompression(v7, v8), !result))
        {
          v6 = a2[12];
          v5 = a2 + 12;
          if (!v6)
          {
            return 0;
          }

          sub_10000E6AC();
          result = DERImg4DecodePayloadProperties(v5, v9);
          if (!result)
          {
            return 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t DERImg4DecodePayloadProperties(uint64_t result, _OWORD *a2)
{
  if (result)
  {
    if (!a2)
    {
      return 6;
    }

    *a2 = 0u;
    a2[1] = 0u;
    if (*result && *(result + 8))
    {
      sub_10000E698();
      result = DERParseSequenceToObject(v3, v4, v5, v6, v7, v8);
      if (result)
      {
        return result;
      }

      if (DERImg4DecodeTagCompare(a2, 0x50415950u))
      {
        return 2;
      }
    }

    return 0;
  }

  return result;
}

uint64_t DERImg4DecodePayload(uint64_t a1, _OWORD *a2)
{
  result = 6;
  if (a1 && a2)
  {
    bzero(v11, 0xA0uLL);
    result = DERImg4DecodePayloadWithProperties(a1, v11);
    if (result)
    {
      result = DERParseSequenceToObject(a1, 6u, &DERImg4PayloadItemSpecs, a2, 0x90uLL, 0);
      if (!result)
      {
        if (DERImg4DecodeTagCompare(a2, 0x494D3450u))
        {
          return 2;
        }

        else
        {
          v6 = *(a2 + 10);
          v5 = a2 + 5;
          if (!v6)
          {
            return 0;
          }

          sub_10000E6AC();
          result = DERImg4DecodePayloadCompression(v5, v10);
          if (!result)
          {
            return 0;
          }
        }
      }
    }

    else
    {
      v7 = v11[1];
      *a2 = v11[0];
      a2[1] = v7;
      v8 = v11[3];
      a2[2] = v11[2];
      a2[3] = v8;
      v9 = v11[5];
      a2[4] = v11[4];
      a2[5] = v9;
    }
  }

  return result;
}

uint64_t DERImg4DecodeRestoreInfo(uint64_t result, _OWORD *a2)
{
  if (result)
  {
    if (!a2)
    {
      return 6;
    }

    *a2 = 0u;
    a2[1] = 0u;
    if (*result && *(result + 8))
    {
      sub_10000E698();
      result = DERParseSequenceToObject(v3, v4, v5, v6, v7, v8);
      if (result)
      {
        return result;
      }

      if (DERImg4DecodeTagCompare(a2, 0x494D3452u))
      {
        return 2;
      }
    }

    return 0;
  }

  return result;
}