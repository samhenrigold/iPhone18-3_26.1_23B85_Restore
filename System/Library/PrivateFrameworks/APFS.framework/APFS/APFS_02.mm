uint64_t spaceman_extent_check(void *a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  result = nx_superblock_sanity_check_extent(a1[47], *(a2 + 376), a3, a4, 0);
  if (!result)
  {

    return nx_metadata_range_overlap_check(a1, a3, a4, 0);
  }

  return result;
}

uint64_t spaceman_entitled_reserve_active(void *a1, uint64_t a2)
{
  v3 = a2;
  if (!a2 && !spaceman_get(a1, &v3))
  {
    obj_release(v3);
  }

  return 0;
}

uint64_t spaceman_ip_bm_block_address(uint64_t *a1, uint64_t a2, unsigned int a3, void *a4)
{
  v4 = *(a2 + 164);
  if ((v4 & 0x7FFFFFFFu) <= a3)
  {
    return 22;
  }

  v5 = *(a2 + 168);
  if (v4 < 0)
  {
    return nx_metadata_fragmented_block_address_lookup(a1, v5, a3, a4, 0);
  }

  result = 0;
  *a4 = v5 + a3;
  return result;
}

uint64_t spaceman_get(void *a1, uint64_t *a2)
{
  v3 = a1[51];
  *a2 = v3;
  if (v3)
  {
    goto LABEL_2;
  }

  result = obj_get(a1[49], 0x80000000uLL, *(a1[47] + 152), &sm_desc, 0, 0, 0, 0, a2);
  if (!result)
  {
    v3 = *a2;
    a1[51] = *a2;
LABEL_2:
    obj_retain(v3);
    return 0;
  }

  return result;
}

uint64_t spaceman_currently_available_space(void *a1, uint64_t a2, unint64_t *a3, unint64_t *a4, unint64_t *a5, BOOL *a6)
{
  v10 = a2;
  v11 = a1;
  if (obj_type(a1) == 13)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v12)
  {
    v11 = *(v12 + 392);
  }

  v24 = 0;
  v13 = spaceman_get(v11, &v24);
  if (v13)
  {
    if (a3)
    {
      *a3 = 0;
    }

    if (a4)
    {
LABEL_10:
      *a4 = 0;
    }
  }

  else
  {
    v15 = *&v24[5].__opaque[48];
    pthread_mutex_lock(v24 + 9);
    if (v12)
    {
      v16 = v24;
      v17 = *(v12 + 376);
      v19 = *(v17 + 72);
      v18 = *(v17 + 80);
      v20 = *(*&v24[5].__opaque[48] + 96) + *(*&v24[5].__opaque[48] + 48) - *(*&v24[5].__opaque[48] + 184) + v19;
      if (v18 >= v20)
      {
        v21 = *(*&v24[5].__opaque[48] + 96) + *(*&v24[5].__opaque[48] + 48) - *(*&v24[5].__opaque[48] + 184) + v19;
      }

      else
      {
        v21 = v18;
      }

      if (v18)
      {
        v22 = v21;
      }

      else
      {
        v22 = v20;
      }
    }

    else
    {
      v22 = *(v15 + 96) + *(v15 + 48);
      v16 = v24;
    }

    v23 = spaceman_available_space(v16, v12, v10, a6);
    pthread_mutex_unlock(v24 + 9);
    obj_release(v24);
    if (a3)
    {
      *a3 = v22;
    }

    if (a4)
    {
      *a4 = v23;
    }

    a4 = a5;
    if (a5)
    {
      goto LABEL_10;
    }
  }

  return v13;
}

unint64_t spaceman_available_space(void *a1, uint64_t a2, char a3, BOOL *a4)
{
  v7 = a1[47];
  v8 = v7;
  if ((a3 & 1) == 0)
  {
    spaceman_entitled_reserve_active(0, a1);
    v8 = a1[47];
  }

  if (a2)
  {
    v9 = *(a2 + 408);
    v10 = *(a2 + 376);
    v12 = v10[10];
    v11 = v10[11];
    v13 = v10[9];
    v14 = v12 - (v11 + v9);
    if (v12 < v11 + v9)
    {
      v14 = 0;
    }

    if (v13 - v11 >= v14)
    {
      v15 = v14;
    }

    else
    {
      v15 = v13 - v11;
    }

    if (v12 <= v11 + v9)
    {
      v16 = v13 - v11;
    }

    else
    {
      v16 = v15;
    }

    v17 = v16 >= v9;
    v18 = v16 - v9;
    if (!v17)
    {
      v18 = 0;
    }

    if (v13 <= v11)
    {
      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
    v14 = 0;
  }

  v19 = v8[30] + v8[9] + a1[123] + v8[15] + v8[35] + a1[124];
  v21 = v8[23];
  v20 = v8[24];
  v17 = v21 >= v20;
  v22 = v21 - v20;
  if (v17)
  {
    v23 = v22;
  }

  else
  {
    v23 = 0;
  }

  v24 = a1[105] + a1[104];
  v25 = a1[108];
  v17 = v24 >= v25;
  v26 = v24 - v25;
  if (!v17)
  {
    v26 = 0;
  }

  v27 = v26 + v23;
  v17 = v19 >= v27;
  v28 = v19 - v27;
  if (!v17)
  {
    v28 = 0;
  }

  if (!a1[202])
  {
    v41 = v28 + v18;
    if (!a2)
    {
      goto LABEL_43;
    }

    goto LABEL_39;
  }

  v29 = a1[204];
  v17 = v26 >= v29;
  v30 = v26 - v29;
  if (!v17)
  {
    v30 = 0;
  }

  v31 = a1[203];
  v32 = a1[205];
  v17 = v31 >= v32;
  v33 = v31 - v32;
  if (!v17)
  {
    v33 = 0;
  }

  v17 = v33 >= v29;
  v34 = v33 - v29;
  if (!v17)
  {
    v34 = 0;
  }

  v35 = a1[206];
  v36 = a1[207];
  v17 = v35 >= v36;
  v37 = v35 - v36;
  if (!v17)
  {
    v37 = 0;
  }

  v17 = v37 >= v30;
  v38 = v37 - v30;
  if (!v17)
  {
    v38 = 0;
  }

  v39 = v38 + v34;
  v17 = v28 >= v39;
  v40 = v28 - v39;
  if (!v17)
  {
    v40 = 0;
  }

  v41 = v38 + v18 + v40;
  if (a2)
  {
LABEL_39:
    if (v41 < v14)
    {
      v14 = v41;
    }

    if (*(*(a2 + 376) + 80))
    {
      v41 = v14;
    }
  }

LABEL_43:
  v42 = v7[9] - v24 + v7[15];
  if (a4)
  {
    *a4 = v42 < v41;
  }

  if (v42 >= v41)
  {
    return v41;
  }

  else
  {
    return v42;
  }
}

uint64_t spaceman_info(void *a1, _DWORD *a2, unint64_t *a3, void *a4, void *a5, unint64_t *a6, unint64_t *a7)
{
  v13 = a1;
  if (obj_type(a1) == 13)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (v14)
  {
    v13 = v14[49];
  }

  v58 = 0;
  v15 = spaceman_get(v13, &v58);
  if (!v15)
  {
    v16 = *&v58[5].__opaque[48];
    spaceman_entitled_reserve_active(v13, v58);
    pthread_mutex_lock(v58 + 9);
    if (a2)
    {
      *a2 = *(v16 + 32);
    }

    v17 = v58;
    v18 = *&v58[5].__opaque[48];
    if (v14)
    {
      v19 = v14[51];
      v20 = v14[47];
      v22 = v20[10];
      v21 = v20[11];
      v23 = v21 + v19;
      v24 = v20[9];
      v25 = v22 - (v21 + v19);
      if (v22 < v21 + v19)
      {
        v25 = 0;
      }

      if (v24 - v21 >= v25)
      {
        v26 = v25;
      }

      else
      {
        v26 = v24 - v21;
      }

      if (v22 <= v23)
      {
        v27 = v24 - v21;
      }

      else
      {
        v27 = v26;
      }

      v28 = v27 >= v19;
      v29 = v27 - v19;
      if (!v28)
      {
        v29 = 0;
      }

      if (v24 > v21)
      {
        v30 = v29;
      }

      else
      {
        v30 = 0;
      }
    }

    else
    {
      v23 = 0;
      v30 = 0;
      v25 = 0;
    }

    v31 = v18[30] + v18[9] + *&v58[15].__opaque[16] + v18[15] + v18[35] + *&v58[15].__opaque[24];
    v32 = v18[23];
    v33 = v18[24];
    v28 = v32 >= v33;
    v34 = v32 - v33;
    if (!v28)
    {
      v34 = 0;
    }

    v35 = *v58[13].__opaque + v58[13].__sig;
    v36 = *&v58[13].__opaque[24];
    v28 = v35 >= v36;
    v37 = v35 - v36;
    if (!v28)
    {
      v37 = 0;
    }

    v38 = v37 + v34;
    v28 = v31 >= v38;
    v39 = v31 - v38;
    if (!v28)
    {
      v39 = 0;
    }

    if (*&v58[25].__opaque[8])
    {
      v40 = *&v58[25].__opaque[24];
      v28 = v37 >= v40;
      v41 = v37 - v40;
      if (!v28)
      {
        v41 = 0;
      }

      v42 = *&v58[25].__opaque[16];
      v43 = *&v58[25].__opaque[32];
      v28 = v42 >= v43;
      v44 = v42 - v43;
      if (!v28)
      {
        v44 = 0;
      }

      v28 = v44 >= v40;
      v45 = v44 - v40;
      if (!v28)
      {
        v45 = 0;
      }

      v46 = *&v58[25].__opaque[40];
      v47 = *&v58[25].__opaque[48];
      v28 = v46 >= v47;
      v48 = v46 - v47;
      if (!v28)
      {
        v48 = 0;
      }

      v28 = v48 >= v41;
      v49 = v48 - v41;
      if (!v28)
      {
        v49 = 0;
      }

      v50 = v49 + v45;
      v28 = v39 >= v50;
      v51 = v39 - v50;
      if (!v28)
      {
        v51 = 0;
      }

      v52 = v49 + v30 + v51;
      if (v14)
      {
LABEL_44:
        v53 = v14[47];
        v54 = *(v53 + 80);
        if (v52 < v25)
        {
          v25 = v52;
        }

        if (!v54)
        {
          v25 = v52;
        }

        if (a3)
        {
          v55 = v18[6] - v32 + v18[12] + *(v53 + 72);
          if (v54 >= v55)
          {
            v56 = v55;
          }

          else
          {
            v56 = *(v53 + 80);
          }

          if (v54)
          {
            v55 = v56;
          }

          *a3 = v55;
        }

        if (a6)
        {
          *a6 = v25;
        }

        if (a4)
        {
          *a4 = *(v53 + 72);
        }

        if (a5)
        {
          *a5 = *(v53 + 80);
        }

        if (!a7)
        {
          goto LABEL_75;
        }

        goto LABEL_74;
      }
    }

    else
    {
      v52 = v39 + v30;
      if (v14)
      {
        goto LABEL_44;
      }
    }

    if (a3)
    {
      *a3 = *(v16 + 96) + *(v16 + 48);
    }

    if (a4)
    {
      *a4 = *(v16 + 184);
    }

    if (a5)
    {
      *a5 = 0;
    }

    if (a6)
    {
      *a6 = v31 - (v17[13].__sig + *v17[13].__opaque);
    }

    if (!a7)
    {
      goto LABEL_75;
    }

    v23 = *(v16 + 48) - v31 + *(v16 + 96) + v17[13].__sig + *v17[13].__opaque;
LABEL_74:
    *a7 = v23;
LABEL_75:
    pthread_mutex_unlock(v17 + 9);
    obj_release(v58);
  }

  return v15;
}

uint64_t trim_time_tracking_start(uint64_t result, uint64_t a2, int a3, int a4)
{
  if (a2)
  {
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0u;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    result = dev_features(*(result + 384));
    if (result)
    {
      if (!a4)
      {
        return result;
      }
    }

    else if ((a4 & 1) == 0)
    {
      return result;
    }

    __tp.tv_sec = 0;
    __tp.tv_nsec = 0;
    result = clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &__tp);
    tv_sec = __tp.tv_sec;
    tv_nsec = __tp.tv_nsec;
    *a2 = __tp.tv_sec;
    tv_nsec /= 1000;
    *(a2 + 8) = tv_nsec;
    v9 = 1000000 * tv_sec + tv_nsec;
    *(a2 + 16) = v9;
    *(a2 + 24) = v9;
    if (a3)
    {
      v10 = a3;
    }

    else
    {
      v10 = 30;
    }

    *(a2 + 60) = v10;
    *(a2 + 62) = 1;
    *(a2 + 63) = a4 & 1;
  }

  return result;
}

uint64_t spaceman_free_completed(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  v6 = a5;
  v7 = *(a2 + 376);
  v67 = 0;
  v68 = 0;
  v65 = 0;
  v66 = 0;
  v53 = v7;
  v52 = *(v7 + 36);
  v62 = a3;
  v8 = 1540;
  if (!a3)
  {
    v8 = 1542;
  }

  v51 = (a2 + 1542);
  if (a3)
  {
    v9 = (a2 + 1540);
  }

  else
  {
    v9 = (a2 + 1542);
  }

  if (a3)
  {
    v10 = 1560;
  }

  else
  {
    v10 = 1552;
  }

  if (a3)
  {
    v11 = 1568;
  }

  else
  {
    v11 = 1569;
  }

  v12 = *(a2 + v8);
  if (*(a2 + v8))
  {
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = (a2 + 512);
    v58 = (a2 + 448);
    do
    {
      if ((a4 & 2) == 0)
      {
        v13 = 16;
      }

      v17 = *(a2 + v10);
      *(a2 + v11) = 1;
      if (v62)
      {
        pthread_mutex_unlock(v16);
        v18 = v16;
      }

      else
      {
        v18 = v58;
        pthread_mutex_unlock(v58);
      }

      v14 += v17;
      v15 += v12;
      __rqtp = xmmword_23D298EB0;
      nanosleep(&__rqtp, 0);
      pthread_mutex_lock(v18);
      v12 = *v9;
    }

    while (*v9);
    v6 = a5;
    if (v13)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v14 = 0;
    v15 = 0;
  }

  v19 = v62;
  if (!spaceman_fq_tree_get(a1, a2, v62, 0, 0, &v68) && v68)
  {
    LODWORD(__rqtp.tv_sec) = 16;
    v64 = 8;
    v20 = bt_lookup_first(v68, 0, &v65, &__rqtp, &v67, &v64);
    v21 = v65;
    if (v62 && !*(a2 + 1544))
    {
      pthread_mutex_lock((a2 + 384));
    }

    if (v20)
    {
LABEL_29:
      if (*(a2 + 1544))
      {
        spaceman_fq_trim_list_flush(a1, a2, v19, v6, a6);
      }

      else
      {
        dev_unmap_flush(*(a1 + 384));
        if (v19)
        {
          pthread_mutex_unlock((a2 + 384));
        }

        trim_time_tracking_check(a1, v6);
      }

      obj_release(v68);
      return v14;
    }

    v23 = 0;
    v54 = v53 + 40 * v62;
    v59 = 2;
    while (1)
    {
      if ((v23 & 1) == 0 && obj_modify(a2, 0, a6))
      {
        goto LABEL_29;
      }

      if (v64)
      {
        v24 = v67;
      }

      else
      {
        v67 = 1;
        v24 = 1;
      }

      v25 = v65;
      if (v65 <= a6)
      {
        if (v65 > v21)
        {
          *(v54 + 216) = v65;
          if ((a4 & 2) == 0)
          {
            goto LABEL_29;
          }
        }

        if (*(a1 + 632) == 1)
        {
          v26 = *(a1 + 376);
          if (v25 >= *(v26 + 1408))
          {
            if (*(a2 + 928 + 8 * v19) < a6)
            {
              *(a2 + 928 + 8 * v19) = a6;
              log_info("%s:%d: %s sfq %d processing xid %lld blocked by temporary checkpoints %lld\n", "spaceman_free_completed", 6486, (*(a1 + 384) + 212), v19, v25, *(v26 + 1408));
            }

            goto LABEL_29;
          }
        }

        v27 = *(a2 + 920);
        if (v25 > v27)
        {
          if ((a4 & 3) != 0 && v59 && v25 != a6)
          {
            tx_barrier(a1, 208);
            --v59;
            v25 = v65;
            v27 = *(a2 + 920);
          }

          if (v25 > v27)
          {
            goto LABEL_29;
          }
        }

        if (v19)
        {
          if (spaceman_fq_over_threshold(a1, a2, 0, 0))
          {
            goto LABEL_29;
          }

          v28 = spaceman_extent_check(a1, a2, v66, v67);
          if (v28)
          {
            v29 = v28;
            pthread_mutex_lock((a2 + 576));
            spaceman_decrement_free_queue_count(a1, a2, v19, v24);
            pthread_mutex_unlock((a2 + 576));
LABEL_59:
            if (nx_ratelimit_log_allowed(a1))
            {
              log_err("%s:%d: %s sfq %d error validating extent %lld %lld: %d\n", "spaceman_free_completed", 6544, (*(a1 + 384) + 212), v62, v66, v24, v29);
            }

            goto LABEL_80;
          }

          if (v24 >= (4 * v52))
          {
            v24 = (4 * v52);
          }

          pthread_mutex_lock((a2 + 576));
          *(a2 + 984 + 8 * (v62 - 1)) += v24;
          spaceman_decrement_free_queue_count(a1, a2, v19, v24);
          pthread_mutex_unlock((a2 + 576));
          v30 = v66;
          v31 = *(a2 + 1544);
          if (v31)
          {
            v32 = *(a2 + 1540);
            *(a2 + 1540) = v32 + 1;
            v33 = *(a2 + 1560) + v24;
            *(a2 + 1560) = v33;
            v34 = *(*(a2 + 376) + 36);
            v35 = v31 + 16 * v32;
            *(v35 + 256) = v30;
            *(v35 + 264) = v24;
            if (v32 > 0xEE || v33 >= (4 * v34))
            {
              spaceman_fq_trim_list_flush(a1, a2, v19, v6, a6);
            }

            goto LABEL_80;
          }

          dev_unmap(*(a1 + 384));
          spaceman_freed_internal(a1, a2, v30, v24, 1, a6);
        }

        else
        {
          spaceman_decrement_free_queue_count(a1, a2, 0, v24);
          v29 = spaceman_ip_extent_validate(a1, a2, v66, v24, 0);
          if (v29)
          {
            goto LABEL_59;
          }

          v36 = v66;
          v37 = *(a2 + 1544);
          if (v37)
          {
            v38 = *(a2 + 1542);
            *(a2 + 1542) = v38 + 1;
            *(a2 + 1552) += v24;
            v39 = (v37 + 16 * v38);
            *v39 = v36;
            v39[1] = v24;
            if ((v38 + 1) >= 0x10u)
            {
              v40 = v21;
              pthread_mutex_unlock((a2 + 448));
              v41 = *v51;
              trim_time_tracking_check(a1, v6);
              if (v41)
              {
                v42 = 0;
                v43 = 16 * v41;
                do
                {
                  dev_unmap(*(a1 + 384));
                  v42 += 16;
                }

                while (v43 != v42);
                dev_unmap_flush(*(a1 + 384));
                pthread_mutex_lock((a2 + 448));
                v44 = 0;
                do
                {
                  spaceman_ip_freed(a1, a2, *(*(a2 + 1544) + v44), *(*(a2 + 1544) + v44 + 8), a6);
                  v44 += 16;
                }

                while (v43 != v44);
              }

              else
              {
                dev_unmap_flush(*(a1 + 384));
                pthread_mutex_lock((a2 + 448));
              }

              *(a2 + 1552) = 0;
              *(a2 + 1542) = 0;
              v19 = v62;
              v21 = v40;
            }

            goto LABEL_80;
          }

          dev_unmap(*(a1 + 384));
          spaceman_ip_freed(a1, a2, v36, v24, a6);
        }

        trim_time_tracking_check(a1, v6);
      }

      else
      {
        log_err("%s:%d: %s sfq %d entry %lld:%lld %lld - bad xid, current xid %lld\n", "spaceman_free_completed", 6459, (*(a1 + 384) + 212), v19, v65, v66, v24, a6);
        if (v19)
        {
          pthread_mutex_lock((a2 + 576));
          spaceman_decrement_free_queue_count(a1, a2, v19, v24);
          pthread_mutex_unlock((a2 + 576));
        }

        else
        {
          spaceman_decrement_free_queue_count(a1, a2, 0, v24);
        }
      }

LABEL_80:
      if (v6 && *(v6 + 62) == 1)
      {
        v45.i64[0] = vdupq_n_s64(1uLL).u64[0];
        v45.i64[1] = v24;
        *(v6 + 40) = vaddq_s64(*(v6 + 40), v45);
      }

      v46 = bt_remove_first(v68, 0, 0, 0, 0, 0, a6);
      if (v46)
      {
        log_err("%s:%d: %s sfq %d error removing entry %lld %lld from free queue: %d\n", "spaceman_free_completed", 6556, (*(a1 + 384) + 212), v62, v66, v67, v46);
      }

      v47 = v67 - v24;
      if (v67 != v24)
      {
        v66 += v24;
        v67 -= v24;
        v64 = 8 * (v47 != 1);
        v48 = bt_insert(v68, 0, &v65, 16, &v67, v64, a6);
        if (v48)
        {
          log_err("%s:%d: %s sfq %d error inserting shortened entry %lld %lld into free queue: %d\n", "spaceman_free_completed", 6566, (*(a1 + 384) + 212), v62, v66, v67, v48);
        }
      }

      v14 += v24;
      LODWORD(__rqtp.tv_sec) = 16;
      v64 = 8;
      v49 = bt_lookup_first(v68, 0, &v65, &__rqtp, &v67, &v64);
      v23 = 1;
      if (v49)
      {
        goto LABEL_29;
      }
    }
  }

LABEL_31:
  if (v6 && *(v6 + 62) == 1)
  {
    v22 = *(v6 + 48) + v14;
    *(v6 + 40) += v15;
    *(v6 + 48) = v22;
  }

  return v14;
}

uint64_t trim_time_tracking_end(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (*(a2 + 62) != 1)
  {
    return 0;
  }

  v8.tv_sec = 0;
  v8.tv_nsec = 0;
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
  v12 = 0;
  memset(v11, 0, sizeof(v11));
  v9 = 0u;
  v10 = 0u;
  v4 = *(a2 + 16);
  if (!spaceman_get(a1, &v12))
  {
    v5 = *&v12[5].__opaque[48];
    trim_time_tracking_start(a1, &v9, 0, 1);
    pthread_mutex_lock(v12 + 7);
    if (spaceman_fq_over_threshold(a1, v12, 0, 0))
    {
        ;
      }
    }

    while (1)
    {
      v6 = v12;
      if (v4 - v5[27] <= LOWORD(v12[24].__sig))
      {
        break;
      }

      if (!spaceman_free_completed(a1, v12, 0, 0, &v9, v4))
      {
        v6 = v12;
        break;
      }
    }

    pthread_mutex_unlock(v6 + 7);
    pthread_mutex_lock(v12 + 8);
    v7 = v12;
    if (v5[30] > *&v12[23].__opaque[40])
    {
      while (1)
      {
        v7 = v12;
        if (v5[30] <= *&v12[23].__opaque[40] >> 1)
        {
          break;
        }

        if (!spaceman_free_completed(a1, v12, 1, 1, &v9, v4))
        {
          v7 = v12;
          break;
        }
      }
    }

    if (v5[35] > *&v7[23].__opaque[48])
    {
        ;
      }
    }

    if (v5[30] > v5[9])
    {
        ;
      }
    }

    if (v5[35] > v5[15])
    {
        ;
      }
    }

    if (spaceman_fq_over_threshold(a1, v12, 1, 0))
    {
        ;
      }
    }

    if (spaceman_fq_over_threshold(a1, v12, 2, 0))
    {
        ;
      }
    }

      ;
    }

    do
    {
      v8 = v5[37];
    }

    while (v8 && v4 - v8 > LOWORD(v12[24].__sig) && spaceman_free_completed(a1, v12, 2, 0, &v9, v4));
    trim_time_tracking_end(a1, &v9);
    *(a2 + 88) = *(v11 + 8);
    *(a2 + 80) = *&v11[0] - v10;
    pthread_mutex_unlock(v12 + 8);
    obj_release(v12);
  }
}

BOOL spaceman_fq_over_threshold(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v9 = 0;
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
  v14 = 0;
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
  v5 = 0;
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

uint64_t spaceman_fq_tree_get(uint64_t *a1, uint64_t a2, unsigned int a3, unint64_t a4, int a5, uint64_t *a6)
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

uint64_t spaceman_iterate_free_extents_internal(uint64_t a1, unsigned int a2, unint64_t a3, uint64_t (*a4)(), uint64_t a5)
{
  v8 = a1;
  v237[17] = *MEMORY[0x277D85DE8];
  memset(v233, 0, 64);
  v232 = 0;
  v231 = 0;
  memset(v237, 0, 128);
  v218 = 0;
  pthread_mutex_lock((a1 + 864));
  if ((a2 & 0x30) == 0 && *(v8 + 639) == 1)
  {
    pthread_mutex_unlock((v8 + 864));
    return 16;
  }

  v230 = 0;
  v229 = 0;
  v228 = 0;
  v219 = 0u;
  v220 = 0u;
  v221 = 0u;
  v222 = 0u;
  v223 = 0u;
  v224 = 0u;
  v225 = 0u;
  v226 = 0u;
  v227 = 0;
  ++*(v8 + 840);
  pthread_mutex_unlock((v8 + 864));
  v9 = spaceman_get(v8, &v228);
  if (v9)
  {
    goto LABEL_360;
  }

  v10 = *&v228[5].__opaque[48];
  v182 = a2 & 0x30;
  if ((a2 & 0x40) != 0)
  {
    v11 = 4;
  }

  else if ((a2 & 0x20) != 0)
  {
    v11 = 8;
  }

  else if (a4 == spaceman_trim_free_extent_callback)
  {
    v11 = 1;
  }

  else
  {
    v11 = v10[10];
  }

  v12 = _apfs_malloc_typed(16 * v10[10], 0x1000040F7F8B94BuLL);
  v13 = _apfs_malloc_typed(8 * v10[10], 0x100004000313F17uLL);
  v14 = v13;
  v9 = 12;
  if (!v12 || !v13)
  {
    goto LABEL_355;
  }

  if ((a2 & 2) == 0)
  {
    pthread_mutex_lock(v228 + 6);
  }

  __base = v12;
  if (a3)
  {
    if ((a2 & 0x6C) != 0x40)
    {
      v9 = 22;
      goto LABEL_344;
    }

    v213 = 0;
  }

  else
  {
    if ((a2 & 4) != 0)
    {
      v213 = 0;
      v15 = 1;
      goto LABEL_24;
    }

    v213 = (a2 >> 3) & 1;
  }

  v15 = 2;
LABEL_24:
  v168 = v15;
  v9 = 0;
  v171 = 0;
  v178 = 0;
  v16 = 0;
  if ((a2 & 0x20) != 0)
  {
    v17 = &v218;
  }

  else
  {
    v17 = 0;
  }

  v172 = v17;
  v173 = v10 + 12;
  v185 = a2 & 0xFE;
  v175 = v12 + 8;
  v183 = v12 - 16;
  v201 = a2;
  v209 = a4;
  v200 = v14;
  v186 = v8;
  v195 = v10;
  while (1)
  {
    if (a2)
    {
      v227 = 0;
      v225 = 0u;
      v226 = 0u;
      v223 = 0u;
      v224 = 0u;
      v221 = 0u;
      v222 = 0u;
      v219 = 0u;
      v220 = 0u;
      LODWORD(v227) = spaceman_get_number_of_disabled_allocation_zones(v228, v213);
    }

    v218 = a3;
    v174 = spaceman_free_extent_cache_bitmap_scan_begin(*&v228[24].__opaque[8 * v213 + 32], v172);
    v18 = v218;
    v19 = v10[9];
    if ((a2 & 0x40) == 0)
    {
      v18 = v218 / v19 * v19;
      v218 = v18;
    }

    v169 = v18;
    v20 = &v173[12 * v213];
    v176 = -1;
    v21 = v18 / v19 / v10[10];
    v22 = v16;
    v179 = v20;
LABEL_33:
    v177 = v21;
    if (v21 < v20[4])
    {
      break;
    }

    if (a2)
    {
      if (v227)
      {
        qsort(&v219, 8uLL, 0x10uLL, spaceman_candidate_free_chunk_cmp);
        if (v227)
        {
          if (DWORD2(v226))
          {
            v150 = v22;
            v151 = 6;
            v153 = &v226;
            v152 = &v226 + 2;
            while (1)
            {
              LOBYTE(v236) = 0;
              v154 = spaceman_evaluate_chunk_for_disabled_allocation_zones(v228, v213, *v153, &v236);
              if (v154)
              {
                log_err("%s:%d: %s failed to evaluate chunk %llu (average free ext len %u) for disabled allocation zones, error %d\n", "spaceman_iterate_free_extents_internal", 4227, (*(v8 + 384) + 212), *v153, *v152, v154);
              }

              v155 = v227;
              if (v236 == 1)
              {
                v155 = v227 - 1;
                LODWORD(v227) = v227 - 1;
              }

              v9 = 0;
              a4 = v209;
              v22 = v150;
              if (!v155 || v151 == -1)
              {
                break;
              }

              v153 = (&v219 + v151);
              v152 = (v153 | 8);
              --v151;
              if (!*(v153 + 8))
              {
                v9 = 0;
                a4 = v209;
                v22 = v150;
                break;
              }
            }
          }
        }
      }
    }

    if (v174)
    {
      if (v169)
      {
        v156 = 0;
        v157 = v213;
      }

      else
      {
        v157 = v213;
        v156 = v177 == v173[12 * v213 + 4];
      }

      spaceman_free_extent_cache_bitmap_scan_finished(*&v228[24].__opaque[8 * v157 + 32], v218, v156);
    }

    v16 = v22;
    a3 = 0;
    if (++v213 == v168)
    {
      v160 = 0;
      goto LABEL_335;
    }
  }

  v181 = v11;
  v23 = v218;
  v24 = v10[9];
  v25 = v10[10];
  if (!v182)
  {
    pthread_mutex_lock((v8 + 864));
    if (*(v8 + 639) == 1)
    {
      log_info("%s:%d: %s nx_resize detected while processing dev=%d cib=%u out of %u cibs\n", "spaceman_iterate_free_extents_internal", 3921, (*(v8 + 384) + 212), v213, v21, v179[4]);
      pthread_mutex_unlock((v8 + 864));
      v159 = 0;
      v160 = 0;
      v9 = 16;
      v10 = v195;
      a4 = v209;
      goto LABEL_329;
    }

    pthread_mutex_unlock((v8 + 864));
  }

  v214 = v25;
  v216 = v24;
  pthread_mutex_lock(&v228[v213 + 10]);
  v26 = v179[5];
  v184 = v21;
  if (v26)
  {
    v211 = v23;
    v27 = v9;
    v28 = v21 / v195[11];
    if (v28 == v176 && v22)
    {
      obj_lock(v232, 1);
      v28 = v176;
    }

    else
    {
      v30 = *(*(&v228[14].__sig + v213) + 8 * v28);
      if (v232)
      {
        obj_release(v232);
        v232 = 0;
      }

      v229 = v195;
      v230 = __PAIR64__(v28, v213);
      v31 = obj_get(*(v8 + 392), 0x140000004, v30, &sm_cab_desc, &v229, 0, 0, 0, &v232);
      if (v31)
      {
        v167 = v31;
        log_err("%s:%d: %s error getting cab %d @ %lld: %d\n", "spaceman_iterate_free_extents_internal", 3948, (*(v8 + 384) + 212), v28, v30, v31);
        v160 = 0;
        if (v174)
        {
          LOBYTE(v159) = 1;
          v10 = v195;
          a4 = v209;
          v9 = v167;
          goto LABEL_330;
        }

        v10 = v195;
        a4 = v209;
        v9 = v167;
        goto LABEL_333;
      }

      v27 = 0;
      v22 = *(v232 + 56);
      v176 = v28;
    }

    pthread_mutex_unlock(&v228[v213 + 10]);
    v29 = (v22 + 8 * (v21 - v195[11] * v28) + 40);
    v178 = 1;
    v9 = v27;
    v23 = v211;
  }

  else
  {
    v29 = (*(&v228[14].__sig + v213) + 8 * v21);
  }

  if (v231)
  {
    obj_lock(v231, 1);
  }

  else
  {
    v32 = v22;
    v33 = *v29;
    v229 = v195;
    v230 = __PAIR64__(v21, v213);
    v34 = obj_get(*(v8 + 392), 0x140000004, v33, &sm_cib_desc, &v229, 0, 0, 0, &v231);
    if (v34)
    {
      v166 = v34;
      log_err("%s:%d: %s error getting cib %d @ %lld: %d\n", "spaceman_iterate_free_extents_internal", 3975, (*(v8 + 384) + 212), v21, v33, v34);
      v160 = 0;
      v9 = v166;
      LOBYTE(a2) = v201;
      v10 = v195;
      a4 = v209;
      v14 = v200;
      v159 = v26 == 0;
      goto LABEL_329;
    }

    LOBYTE(a2) = v201;
    v14 = v200;
    v22 = v32;
    v9 = 0;
  }

  v35 = *(v231 + 56);
  if (v209 == spaceman_trim_free_extent_callback)
  {
    trim_time_tracking_start(v8, v233, 125, 0);
    if (v26)
    {
      goto LABEL_53;
    }
  }

  else if (v26)
  {
    goto LABEL_53;
  }

  pthread_mutex_unlock(&v228[v213 + 10]);
LABEL_53:
  if (v232)
  {
    obj_unlock(v232, 1);
    v178 = 0;
  }

  v36 = v23 / v216 - v214 * v21;
  v37 = v23 % v216;
  v10 = v195;
  bzero(v14, 8 * v195[10]);
  LODWORD(v38) = *(v35 + 36) - v36;
  v11 = v181;
  if (v181 >= v38)
  {
    v38 = v38;
  }

  else
  {
    v38 = v181;
  }

  __nel = v38;
  v187 = v36;
  if (v38)
  {
    v39 = 0;
    v40 = v195[9];
    v41 = v175;
    do
    {
      *(v41 - 2) = v36;
      *v41 = *(v35 + 40 + 32 * v36 + 24);
      v41 += 2;
      if (v39)
      {
        v42 = 0;
      }

      else
      {
        v42 = v37;
      }

      v218 += v40 - v42;
      ++v39;
      LODWORD(v36) = v36 + 1;
    }

    while (v39 < __nel);
    if ((a2 & 0x40) != 0)
    {
      goto LABEL_66;
    }
  }

  else if ((a2 & 0x40) != 0)
  {
    goto LABEL_66;
  }

  qsort(__base, __nel, 0x10uLL, ipaddr_cmp);
LABEL_66:
  v180 = v35;
  v43 = __nel;
  if (!__nel)
  {
    v203 = 0;
    a4 = v209;
LABEL_230:
    v21 = v177;
    goto LABEL_283;
  }

  v170 = v22;
  v44 = 0;
  v45 = 0;
  v46 = v175;
  v192 = v36;
  do
  {
    v47 = v44;
    v48 = *v46;
    if (*v46)
    {
      v49 = obj_get(*(v8 + 392), 0x140000080, v48, &sm_bm_desc, 0, 0, 0, 0, &v237[v45]);
      v43 = __nel;
      if (v49)
      {
        v50 = v49;
        if (v49 != 45 && v49 != 16)
        {
          log_err("%s:%d: %s error getting cib %d bitmap %d @ %lld: %d\n", "spaceman_iterate_free_extents_internal", 4033, (*(v8 + 384) + 212), v177, *(v46 - 2), v48, v49);
          v159 = 0;
          v160 = 1;
          v9 = v50;
          LOBYTE(a2) = v201;
          goto LABEL_328;
        }

        v237[v45] = 0;
      }

      ++v45;
      LOBYTE(a2) = v201;
      v14 = v200;
      if (v45 == 16)
      {
        break;
      }
    }

    v44 = v47 + 1;
    v46 += 2;
  }

  while (v47 + 1 < v43);
  v52 = 0;
  v203 = 0;
  v193 = v47 + 1;
  v53 = 0;
  v199 = v180 + 40;
  v54 = v195;
  while (1)
  {
    v196 = v52;
    v55 = &__base[16 * v52];
    v56 = *(v55 + 1);
    v57 = v54;
    v191 = v54[10];
    v58 = *v55;
    v59 = &v237[v53];
    v198 = v56;
    if (v56)
    {
      if (*v59)
      {
        v60 = obj_async_wait(*v59);
        if (v60)
        {
          goto LABEL_325;
        }
      }

      else
      {
        v60 = obj_get(*(v8 + 392), 0x140000000, v56, &sm_bm_desc, 0, 0, 0, 0, &v237[v53]);
        if (v60)
        {
LABEL_325:
          v158 = v60;
          log_err("%s:%d: %s error getting cib %d bitmap %d @ %lld: %d\n", "spaceman_iterate_free_extents_internal", 4057, (*(v8 + 384) + 212), v177, *v55, v198, v60);
          if (*v59)
          {
            obj_release(*v59);
            *v59 = 0;
          }

          v159 = 0;
          v160 = 1;
          a4 = v209;
          v10 = v57;
          v9 = v158;
          goto LABEL_329;
        }
      }

      v212 = *(*v59 + 56);
      v61 = *v55;
    }

    else
    {
      v212 = 0;
      v61 = *v55;
    }

    if ((a2 & 0x40) != 0 && v61)
    {
      *&v14[8 * v61] = *&v14[8 * v61 - 8];
      *&v14[8 * *v55 - 8] = 0;
      v61 = *v55;
    }

    v62 = 0;
    v190 = v58;
    v206 = &v14[8 * v61];
    v210 = v199 + 32 * v58;
    v63 = *(v210 + 16);
    v235 = 0;
    v204 = v228;
    v64 = v185;
    if (*&v228[23].__opaque[8 * v213 + 16])
    {
      v64 = a2;
    }

    v215 = v64;
    if ((v64 & 0x40) != 0)
    {
      v62 = *v206;
    }

    v189 = *&v228[23].__opaque[8 * v213 + 16];
    v194 = &v237[v53];
    v197 = v53;
    v65 = *&v63 & 0xFFFFFLL;
    v236 = 0;
    if ((v63 & 0xFFFFFu) <= v37)
    {
      LODWORD(v67) = 0;
      v217 = 0;
      v66 = 0;
      v70 = v212;
LABEL_144:
      LODWORD(v36) = v192;
      v53 = v197;
      if ((v215 & 0x40) != 0)
      {
        goto LABEL_145;
      }

      goto LABEL_146;
    }

    v66 = 0;
    v217 = 0;
    v67 = 0;
    v208 = &v228[24].__opaque[32];
    v68 = 1;
    v69 = v37;
    v70 = v212;
    while (1)
    {
      if (!v70)
      {
        v235 = v65;
        v236 = v69;
        v71 = v65;
        v72 = v69;
        goto LABEL_102;
      }

      if (!bitmap_range_find_first(0, v70, v69, v65 - v69, &v236))
      {
        break;
      }

      if (bitmap_range_find_first(1, v70, v236, v65 - v236, &v235))
      {
        v71 = v235;
      }

      else
      {
        v235 = v65;
        v71 = v65;
      }

      v72 = v236;
LABEL_102:
      v69 = v71;
      v73 = 100 * (v68 / 0x64) - 1;
      v74 = v71 - v72;
      if (v71 - v72 > v67)
      {
        v67 = v71 - v72;
      }

      if ((v215 & 0x40) != 0)
      {
        if (v62 && v72)
        {
          v75 = *(v210 + 8) - v62;
          spaceman_free_extent_cache_insert(*&v208[8 * v213], 0, v75, v62);
          if (v209)
          {
            v76 = (v209)(a5, v75, v62);
            if (BYTE6(v233[7]) == 1)
            {
              v77.i64[0] = vdupq_n_s64(1uLL).u64[0];
              v77.i64[1] = v62;
              *&v233[5] = vaddq_s64(*&v233[5], v77);
            }
          }

          else
          {
            v76 = 0;
          }

          v70 = v212;
          v73 = 100 * (v68 / 0x64) - 1;
          v62 = 0;
          if (v217)
          {
            v80 = 1;
          }

          else
          {
            v80 = v76 == 0;
          }

          if (v80)
          {
            v81 = v217;
          }

          else
          {
            v81 = v76;
          }

          v217 = v81;
          v71 = v235;
        }

        if (v71 != v65)
        {
          v207 = v73;
          v78 = *(v210 + 8) - v62;
          v79 = v62 + v74;
LABEL_127:
          spaceman_free_extent_cache_insert(*&v208[8 * v213], 0, v78 + v72, v79);
          if (v209)
          {
            v82 = (v209)(a5, v78 + v72, v79);
            if (BYTE6(v233[7]) == 1)
            {
              v83 = 1;
              v84.i64[0] = vdupq_n_s64(1uLL).u64[0];
              v84.i64[1] = v79;
              *&v233[5] = vaddq_s64(*&v233[5], v84);
            }

            else
            {
              v83 = 0;
            }
          }

          else
          {
            v82 = 0;
            v83 = BYTE6(v233[7]);
          }

          v70 = v212;
          v62 = 0;
          if (v217)
          {
            v85 = 1;
          }

          else
          {
            v85 = v82 == 0;
          }

          if (v85)
          {
            v86 = v217;
          }

          else
          {
            v86 = v82;
          }

          v217 = v86;
          if ((v83 & 1) != 0 && v207 == v66)
          {
            trim_time_tracking_check(*(v204->__sig + 392), v233);
            v62 = 0;
          }

          goto LABEL_141;
        }

        v62 += v74;
      }

      else if (v72)
      {
        if (v71 != v65)
        {
          v207 = 100 * (v68 / 0x64) - 1;
          v78 = *(v210 + 8) - v62;
          v79 = v74 + v62;
          goto LABEL_127;
        }

        *(v206 + 1) = v74;
      }

      else
      {
        *v206 = v71;
      }

LABEL_141:
      ++v68;
      ++v66;
      if (v69 >= v65)
      {
        goto LABEL_144;
      }
    }

    if ((v215 & 0x40) == 0 || !v62 || v66)
    {
      goto LABEL_144;
    }

    v94 = *(v210 + 8) - v62;
    spaceman_free_extent_cache_insert(*&v208[8 * v213], 0, v94, v62);
    if (v209)
    {
      v95 = (v209)(a5, v94, v62);
      LODWORD(v36) = v192;
      v53 = v197;
      if (BYTE6(v233[7]) == 1)
      {
        v96.i64[0] = vdupq_n_s64(1uLL).u64[0];
        v96.i64[1] = v62;
        *&v233[5] = vaddq_s64(*&v233[5], v96);
      }
    }

    else
    {
      v95 = 0;
      LODWORD(v36) = v192;
      v53 = v197;
    }

    v66 = 0;
    v62 = 0;
    if (v217)
    {
      v124 = 1;
    }

    else
    {
      v124 = v95 == 0;
    }

    if (v124)
    {
      v125 = v217;
    }

    else
    {
      v125 = v95;
    }

    v217 = v125;
LABEL_145:
    *v206 = v62;
LABEL_146:
    v9 = v217;
    if ((v215 & 1) == 0)
    {
      goto LABEL_186;
    }

    v87 = v190 + v191 * v184;
    v88 = *(v189 + 4 * v87);
    v89 = v88 & 0xFF000000 | v67 & 0xFFFFFF;
    *(v189 + 4 * v87) = v89;
    if (v70)
    {
      v90 = v88 & 0xFE000000 | v67 & 0xFFFFFF;
      v91 = v89 | 0x1000000;
      if (*v70)
      {
        v91 = v90;
      }

      *(v189 + 4 * v87) = v91;
      v92 = v189;
      if (v65 < 0x40 || (v70[(v65 >> 6) - 1] & 0x8000000000000000) != 0)
      {
        v93 = v91 & 0xFDFFFFFF;
        goto LABEL_161;
      }
    }

    else
    {
      v91 = v89 | 0x1000000;
      v92 = v189;
    }

    v93 = v91 | 0x2000000;
LABEL_161:
    *(v92 + 4 * v87) = v93;
    if (!v227)
    {
      goto LABEL_186;
    }

    v97 = *(v210 + 20) & 0xFFFFF;
    if (v97 == *(*&v204[5].__opaque[48] + 36))
    {
      v234 = 0;
      v98 = spaceman_evaluate_chunk_for_disabled_allocation_zones(v204, v213, v87, &v234);
      if (v98)
      {
        v99 = *v204->__opaque;
        if (v99)
        {
          v100 = (v99 + 4040);
        }

        else
        {
          v100 = (*(*(v204->__sig + 392) + 384) + 212);
        }

        log_err("%s:%d: %s failed to evaluate free chunk %llu for disabled allocation zone, error %d\n", "spaceman_iterate_process_bitmap_block", 3702, v100, v87, v98);
      }

      if (v234 == 1)
      {
        LODWORD(v227) = v227 - 1;
      }

      goto LABEL_186;
    }

    if (!v66 || v97 < 4)
    {
      goto LABEL_186;
    }

    v101 = v97 / v66;
    v102 = &v219 + HIDWORD(v227);
    v103 = v93 & 0xC000000;
    v104 = v93 & 0xFFFFFC;
    v105 = v101 > *(v102 + 2) && v103 == 0;
    if (!v105 || v104 == 0)
    {
      goto LABEL_186;
    }

    v107 = 0;
    *(v102 + 2) = v101;
    *v102 = v87;
    v108 = -7;
    v109 = DWORD2(v219);
    v110 = &v220 + 2;
    while (2)
    {
      v112 = *v110;
      v110 += 4;
      v111 = v112;
      if (v112 >= v109)
      {
LABEL_179:
        v120 = __CFADD__(v108++, 1);
        if (v120)
        {
          goto LABEL_224;
        }

        continue;
      }

      break;
    }

    if (v111)
    {
      v107 = v108 + 8;
      v109 = v111;
      goto LABEL_179;
    }

    v107 = v108 + 8;
LABEL_224:
    HIDWORD(v227) = v107;
LABEL_186:
    v113 = v203;
    if (v203)
    {
      v114 = 1;
    }

    else
    {
      v114 = v217 == 0;
    }

    if (!v114)
    {
      v113 = v217;
    }

    LOBYTE(a2) = v201;
    if ((v201 & 0x40) != 0)
    {
      if (v113)
      {
        break;
      }
    }

    v203 = v113;
    v8 = v186;
    v54 = v195;
    v14 = v200;
    if (!v198)
    {
      v115 = __nel;
      v123 = v196;
      goto LABEL_213;
    }

    obj_release(*v194);
    *v194 = 0;
    v115 = __nel;
    if (v193 >= __nel)
    {
      goto LABEL_208;
    }

    v116 = &v183[16 * v193];
    v117 = v193;
    v118 = v193 + 1;
    do
    {
      v119 = *(v116 + 3);
      v116 += 16;
      ++v117;
      if (v119)
      {
        v120 = 1;
      }

      else
      {
        v120 = v118 >= __nel;
      }

      ++v118;
    }

    while (!v120);
    v193 = v117;
    if (!v119)
    {
LABEL_208:
      v123 = v196;
      goto LABEL_212;
    }

    v121 = obj_get(*(v186 + 392), 0x140000080, v119, &sm_bm_desc, 0, 0, 0, 0, v194);
    if (v121 == 45 || v121 == 16)
    {
      v9 = 0;
      *v194 = 0;
      goto LABEL_211;
    }

    v9 = v121;
    if (v121)
    {
      log_err("%s:%d: %s error getting cib %d bitmap %d @ %lld: %d\n", "spaceman_iterate_free_extents_internal", 4106, (*(v186 + 384) + 212), v177, *v116, v119, v121);
      v159 = 0;
      v160 = 1;
      a4 = v209;
      v10 = v195;
      goto LABEL_329;
    }

LABEL_211:
    v115 = __nel;
    v54 = v195;
    v123 = v196;
LABEL_212:
    v53 = (v53 + 1) & 0xF;
LABEL_213:
    v37 = 0;
    v52 = v123 + 1;
    if (v52 >= v115)
    {
      v126 = 0;
      v127 = 0;
      v128 = 0;
      while (1)
      {
        v129 = (v126 + v187);
        v130 = v199 + 32 * v129;
        v131 = &v200[8 * v129];
        if ((v201 & 0x40) != 0)
        {
          if (*v131)
          {
            v128 = *(v130 + 8) - *v131 + (*(v130 + 16) & 0xFFFFF);
            v115 = __nel;
            v127 = *v131;
          }

          goto LABEL_270;
        }

        v132 = *v131;
        if (v132)
        {
          break;
        }

        v135 = v9;
LABEL_252:
        v139 = *(v131 + 1);
        LODWORD(v36) = v192;
        if (v139)
        {
          v140 = *(v130 + 8) + (*(v130 + 16) & 0xFFFFF) - v139;
          if (v127)
          {
            if (v127 + v128 == v140)
            {
              v9 = 0;
              v139 += v127;
              v140 = v128;
              goto LABEL_258;
            }

            spaceman_free_extent_cache_insert(*&v228[24].__opaque[8 * v213 + 32], 0, v128, v127);
            if (v209)
            {
              v9 = (v209)(a5, v128, v127);
              if (BYTE6(v233[7]) == 1)
              {
                v142.i64[0] = vdupq_n_s64(1uLL).u64[0];
                v142.i64[1] = v127;
                *&v233[5] = vaddq_s64(*&v233[5], v142);
              }
            }

            else
            {
              v9 = 0;
            }

            v141 = v203;
            v115 = __nel;
          }

          else
          {
            v9 = 0;
LABEL_258:
            v141 = v203;
          }

          if (v141)
          {
            v143 = 1;
          }

          else
          {
            v143 = v9 == 0;
          }

          if (!v143)
          {
            v141 = v9;
          }

          v203 = v141;
          v128 = v140;
          v127 = v139;
          goto LABEL_270;
        }

        v9 = v135;
LABEL_270:
        if (++v126 >= v115)
        {
          a4 = v209;
          v11 = v181;
          if (!v127)
          {
            v10 = v195;
            v22 = v170;
            goto LABEL_230;
          }

          spaceman_free_extent_cache_insert(*&v228[24].__opaque[8 * v213 + 32], 0, v128, v127);
          v21 = v177;
          if (v209)
          {
            v9 = (v209)(a5, v128, v127);
            if (BYTE6(v233[7]) == 1)
            {
              v144.i64[0] = vdupq_n_s64(1uLL).u64[0];
              v144.i64[1] = v127;
              *&v233[5] = vaddq_s64(*&v233[5], v144);
            }
          }

          else
          {
            v9 = 0;
          }

          v10 = v195;
          v22 = v170;
          v145 = v203;
          if (v203)
          {
            v146 = 1;
          }

          else
          {
            v146 = v9 == 0;
          }

          if (!v146)
          {
            v145 = v9;
          }

          v203 = v145;
LABEL_283:
          if (a4 == spaceman_trim_free_extent_callback)
          {
            spaceman_trim_free_extent_flush(v8);
          }

          obj_unlock(v231, 1);
          if (BYTE6(v233[7]) == 1)
          {
            if (trim_time_tracking_end(v8, v233))
            {
              if (v11 <= 1)
              {
                v11 = 1;
              }

              else
              {
                v11 >>= 1;
              }

              v147 = 1;
            }

            else
            {
              v148 = v10[10];
              v149 = 4 * v11;
              if (v148 < 4 * v11)
              {
                v149 = v10[10];
              }

              if (v148 >= v11 + 1)
              {
                v148 = v11 + 1;
              }

              if (v171)
              {
                v11 = v148;
              }

              else
              {
                v11 = v149;
              }

              v147 = v171;
            }

            v171 = v147;
          }

          if (*(v180 + 36) == v36)
          {
            obj_release(v231);
            v231 = 0;
            v21 = (v21 + 1);
          }

          v20 = &v173[12 * v213];
          if (v203)
          {
            v159 = 0;
            v160 = 0;
            v9 = v203;
            goto LABEL_329;
          }

          goto LABEL_33;
        }
      }

      v133 = *(v130 + 8);
      if (v127)
      {
        if (v127 + v128 == v133)
        {
          v134 = 0;
          v132 += v127;
          v133 = v128;
          goto LABEL_240;
        }

        spaceman_free_extent_cache_insert(*&v228[24].__opaque[8 * v213 + 32], 0, v128, v127);
        if (v209)
        {
          v134 = (v209)(a5, v128, v127);
          if (BYTE6(v233[7]) == 1)
          {
            v137.i64[0] = vdupq_n_s64(1uLL).u64[0];
            v137.i64[1] = v127;
            *&v233[5] = vaddq_s64(*&v233[5], v137);
          }
        }

        else
        {
          v134 = 0;
        }

        v136 = v203;
        v115 = __nel;
      }

      else
      {
        v134 = 0;
LABEL_240:
        v136 = v203;
      }

      if (v136)
      {
        v138 = 1;
      }

      else
      {
        v138 = v134 == 0;
      }

      v135 = v134;
      if (!v138)
      {
        v136 = v134;
      }

      v203 = v136;
      v128 = v133;
      v127 = v132;
      goto LABEL_252;
    }
  }

  v159 = 0;
  v160 = 1;
  v8 = v186;
LABEL_328:
  v10 = v195;
  a4 = v209;
  v14 = v200;
LABEL_329:
  if (v9 != 0 && v174)
  {
LABEL_330:
    spaceman_free_extent_cache_bitmap_scan_finished(*&v228[24].__opaque[8 * v213 + 32], v218, 0);
    if (v159)
    {
      v161 = v213;
      goto LABEL_334;
    }

    goto LABEL_335;
  }

  if (!v159)
  {
    goto LABEL_335;
  }

LABEL_333:
  v161 = v213;
LABEL_334:
  pthread_mutex_unlock(&v228[v161 + 10]);
LABEL_335:
  if (v232 && (v178 & 1) != 0)
  {
    obj_unlock(v232, 1);
  }

  v162 = v160 ^ 1;
  if (!v231)
  {
    v162 = 1;
  }

  if ((v162 & 1) == 0)
  {
    trim_time_tracking_end(v8, v233);
    if (a4 == spaceman_trim_free_extent_callback)
    {
      spaceman_trim_free_extent_flush(v8);
    }

    obj_unlock(v231, 1);
  }

LABEL_344:
  if (v232)
  {
    obj_release(v232);
  }

  if (v231)
  {
    obj_release(v231);
  }

  for (i = 0; i != 16; ++i)
  {
    v164 = v237[i];
    if (v164)
    {
      obj_async_wait(v164);
      obj_release(v237[i]);
    }
  }

  if ((a2 & 2) == 0)
  {
    pthread_mutex_unlock(v228 + 6);
  }

  v12 = __base;
LABEL_355:
  if (v14)
  {
    _apfs_free(v14, 8 * v10[10]);
  }

  if (v12)
  {
    _apfs_free(v12, 16 * v10[10]);
  }

  obj_release(v228);
LABEL_360:
  pthread_mutex_lock((v8 + 864));
  --*(v8 + 840);
  pthread_mutex_unlock((v8 + 864));
  return v9;
}

uint64_t spaceman_trim_free_extent_callback(void *a1, unint64_t a2, uint64_t a3)
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
    __tp.tv_sec = 0;
    __tp.tv_nsec = 0;
    clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &__tp);
    tv_sec = __tp.tv_sec;
    v11 = SLODWORD(__tp.tv_nsec) / 1000;
    dev_unmap(a1[48]);
    __tp.tv_sec = 0;
    __tp.tv_nsec = 0;
    clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &__tp);
    a1[119] += 1000000 * (__tp.tv_sec - tv_sec) - v11 + SLODWORD(__tp.tv_nsec) / 1000;
  }

  else if (nx_ratelimit_log_allowed(a1))
  {
    log_err("%s:%d: %s free extent %lld:%lld appears to span container metadata and should not be free: %d\n", "spaceman_trim_free_extent_callback", 4335, (a1[48] + 212), a2, a3, v13);
  }

  return 0;
}

uint64_t ipaddr_cmp(uint64_t a1, uint64_t a2)
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

uint64_t spaceman_trim_free_extent_flush(uint64_t a1)
{
  v5.tv_sec = 0;
  v5.tv_nsec = 0;
  clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &v5);
  tv_sec = v5.tv_sec;
  v3 = SLODWORD(v5.tv_nsec) / 1000;
  dev_unmap_flush(*(a1 + 384));
  v5.tv_sec = 0;
  v5.tv_nsec = 0;
  result = clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &v5);
  *(a1 + 952) += 1000000 * (v5.tv_sec - tv_sec) - v3 + SLODWORD(v5.tv_nsec) / 1000;
  return result;
}

uint64_t spaceman_candidate_free_chunk_cmp(uint64_t a1, uint64_t a2)
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

uint64_t spaceman_scan_free_blocks(uint64_t a1, int a2, unsigned int a3, char a4)
{
  dev_features(*(a1 + 384));
  v7 = 0;
  if (a3)
  {
    if (a2)
    {
      v8 = 2;
    }

    else
    {
      v8 = 0;
    }

    __tp.tv_sec = 0;
    __tp.tv_nsec = 0;
    clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &__tp);
    *(a1 + 944) = 1000000 * __tp.tv_sec + SLODWORD(__tp.tv_nsec) / 1000;
    v7 = spaceman_iterate_free_extents_internal(a1, v8 | a3, 0, 0, a1);
    __tp.tv_sec = 0;
    __tp.tv_nsec = 0;
    clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &__tp);
    log_debug("%s:%d: %s scan took %lld.%06lld s (no trims)\n");
  }

  return v7;
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

uint64_t spaceman_fq_tree_find_overlap(uint64_t *a1, uint64_t a2, unsigned int a3, unint64_t a4, uint64_t a5, _BYTE *a6)
{
  v6 = *(a2 + 376);
  v24 = 0;
  v25 = 0;
  v22 = 0;
  v23 = 0;
  *a6 = 0;
  v7 = v6 + 40 * a3;
  if (!*(v7 + 208))
  {
    return 0;
  }

  v21 = 0;
  v14 = spaceman_fq_tree_get(a1, a2, a3, 0, 0, &v25);
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
        v21 = 0x1000000008;
        v22 = v16;
        v23 = a4;
        v18 = bt_lookup_variant(v25, 0, &v22, &v21 + 1, 16, &v24, &v21, 1, 0, 0);
        if (v18 != 2)
        {
          v15 = v18;
          if (v18)
          {
            break;
          }

          if (!v21)
          {
            v24 = 1;
          }

          if (v16 == v22 && v24 + v23 > a4 && v17 > v23)
          {
            goto LABEL_27;
          }
        }

        v21 = 0x1000000008;
        v22 = v16;
        v23 = a4;
        v19 = bt_lookup_variant(v25, 0, &v22, &v21 + 1, 16, &v24, &v21, 4, 0, 0);
        v15 = v19;
        if (v19 != 2)
        {
          if (v19)
          {
            break;
          }

          if (!v21)
          {
            v24 = 1;
          }

          if (v16 == v22 && v24 + v23 > a4 && v17 > v23)
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
    obj_release(v25);
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

  v24 = 0;
  v25 = 0;
  v15 = (a2 + 1512);
  if (*(a2 + 1512))
  {
    goto LABEL_8;
  }

  v17 = btree_create(a1, 0x88000000uLL, 0, 0, 0, 8u, 16, extent_list_key_cmp, 0, (a2 + 1512));
  if (v17)
  {
    return v17;
  }

  v33 = 0;
  memset(v31, 0, sizeof(v31));
  v32 = 0;
  v28 = 0;
  v29 = 0;
  v17 = nx_metadata_fragmented_extent_list_tree_get(a1, *(*(a2 + 376) + 176), &v33);
  if (v17)
  {
    return v17;
  }

  v30 = 0;
  bt_iterator_init(v31, v33, 0, 0, &v30, 8, 8, &v28, 0x10u);
  v13 = v19;
  if (!bt_iterator_ended(v31))
  {
    while (1)
    {
      v26 = v28;
      v27[0] = v30;
      v27[1] = v29;
      v21 = bt_insert(*v15, 0, &v26, 8, v27, 0x10u, 0);
      if (v21)
      {
        break;
      }

      v20 = bt_iterator_next(v31);
      if (v20)
      {
        v13 = v20;
        v22 = (a1[48] + 212);
        v23 = strerror(v20);
        log_err("%s:%d: %s failed to get next internal pool reverse mapping, error %s(%d)\n", "spaceman_set_up_ip_reverse_mapping_tree", 5174, v22, v23, v13);
        goto LABEL_26;
      }

      if (bt_iterator_ended(v31))
      {
        obj_release(v33);
        goto LABEL_8;
      }
    }

    v13 = v21;
LABEL_26:
    obj_release(v33);
    return v13;
  }

  obj_release(v33);
  if (!v13)
  {
LABEL_8:
    *&v31[0] = a3;
    LODWORD(v28) = 8;
    LODWORD(v27[0]) = 16;
    v13 = bt_lookup_variant(*v15, 0, v31, &v28, 8, &v24, v27, 1, 0, 0);
    if (v13)
    {
      return v13;
    }

    if (a3 - *&v31[0] >= v25)
    {
      return 2;
    }

    v13 = 0;
    v11 = v24 + a3 - *&v31[0];
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

uint64_t spaceman_alloc(void *a1, int a2, uint64_t a3, unint64_t a4, unint64_t *a5, uint64_t *a6)
{
  v150[1] = *MEMORY[0x277D85DE8];
  v148 = 0;
  v146 = 0u;
  v147 = 0u;
  v144 = 0u;
  v145 = 0u;
  v142 = 0u;
  v143 = 0u;
  v140 = 0u;
  v141 = 0u;
  v138 = 0u;
  v139 = 0u;
  v136 = 0u;
  v137 = 0u;
  v134 = 0u;
  v135 = 0u;
  v133 = 0u;
  v150[0] = 0;
  v131 = 0;
  v11 = 0;
  v12 = a1;
  if (obj_type(a1) == 13)
  {
    v12 = a1[49];
    v11 = a1;
  }

  BYTE8(v147) = a6 != 0;
  BYTE9(v147) = 1;
  if (a6)
  {
    v13 = a2 | 0x1000;
  }

  else
  {
    v13 = a2 & 0xFFFFEBFF;
  }

  DWORD2(v146) = v13;
  LODWORD(v147) = 0;
  v14 = v12[47];
  v15 = *(v14 + 1240);
  v16 = a3;
  v139.i64[0] = a3;
  *&v141 = v15;
  v17 = *(v14 + 1248);
  *(&v141 + 1) = v17 + v15;
  if (!v17)
  {
    v141 = 0uLL;
  }

  DWORD1(v147) = 0;
  v18 = v12[128];
  v19 = v18 + v12[127];
  *&v140 = v12[127];
  *(&v140 + 1) = v19;
  if ((*(v12 + 634) & 1) != 0 || !v18)
  {
    v140 = 0uLL;
    if ((v13 & 0x80) == 0)
    {
LABEL_11:
      if ((v13 & 0x200) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_21;
    }
  }

  else if ((v13 & 0x80) == 0)
  {
    goto LABEL_11;
  }

  v13 |= 0x8100u;
  DWORD2(v146) = v13;
  if ((v13 & 0x200) == 0)
  {
LABEL_12:
    if ((v13 & 0x400) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_21:
  v13 |= 0x102u;
  DWORD2(v146) = v13;
  *a5 = v12[129];
  if ((v13 & 0x400) != 0)
  {
LABEL_13:
    v13 |= 0x100u;
    DWORD2(v146) = v13;
  }

LABEL_14:
  if (*(v12 + 637) == 1)
  {
    v13 |= 0x900u;
    DWORD2(v146) = v13;
  }

  if ((v13 & 2) != 0)
  {
    v13 &= ~0x40u;
    DWORD2(v146) = v13;
    v121 = *a5;
    if ((v13 & 0x40) != 0)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v121 = 0;
    if ((v13 & 0x40) != 0)
    {
LABEL_18:
      BYTE11(v147) = 1;
      v20 = *a5;
      goto LABEL_25;
    }
  }

  v20 = 3;
LABEL_25:
  v126 = v20;
  *a5 = 0;
  if ((v13 & 4) != 0)
  {
    if (a3 < 1)
    {
      return 22;
    }
  }

  else
  {
    v21 = 22;
    if (!xid_is_current_tx(v12, a4) || a3 < 1)
    {
      return v21;
    }
  }

  v149 = 0;
  memset(v132, 0, sizeof(v132));
  v21 = spaceman_get(v12, &v149);
  if (v21)
  {
    return v21;
  }

  v22 = v149;
  v120 = v149[47];
  v23 = v149[199];
  if (v23)
  {
    v24 = v139.i64[0];
    v25.i64[0] = vdupq_n_s64(1uLL).u64[0];
    v25.i64[1] = v139.i64[0];
    *v23 = vaddq_s64(*v23, v25);
    if (BYTE11(v147) == 1)
    {
      ++v23[1].i64[0];
      goto LABEL_34;
    }

    if (v24 > 2)
    {
      if (v24 == 4)
      {
        v26 = 7;
      }

      else
      {
        if (v24 != 3)
        {
LABEL_34:
          if (v24 <= 1)
          {
            goto LABEL_49;
          }

          goto LABEL_46;
        }

        v26 = 6;
      }
    }

    else
    {
      if (v24 == 1)
      {
        v27 = 2;
LABEL_48:
        ++v23[v27].i64[0];
        goto LABEL_49;
      }

      if (v24 != 2)
      {
        goto LABEL_34;
      }

      v26 = 5;
    }

    ++v23->i64[v26];
LABEL_46:
    if (BYTE8(v147))
    {
      goto LABEL_49;
    }

    v27 = 4;
    goto LABEL_48;
  }

LABEL_49:
  v28 = DWORD2(v146);
  if ((WORD4(v146) & 0x200) != 0)
  {
    v29 = *(v120 + 48 * DWORD1(v147) + 48);
    *&v140 = *(&v140 + 1);
    *(&v140 + 1) = v29;
  }

  if ((BYTE8(v147) & 1) == 0 && v139.i64[0] >= *(v120 + 96) + *(v120 + 48))
  {
    v21 = 28;
LABEL_281:
    v103 = v149;
    v104 = v149[199];
    if (v104)
    {
      ++*(v104 + 72);
    }

    obj_release(v103);
    return v21;
  }

  if ((BYTE8(v146) & 2) != 0 && v121 >= *(v120 + 48))
  {
    v28 = DWORD2(v146) & 0xFFFFFFFD;
    DWORD2(v146) &= ~2u;
  }

  if ((v28 & 0x1A) == 2)
  {
    v28 |= 8u;
    DWORD2(v146) = v28;
  }

  v21 = spaceman_alloc_flags_to_devs(v22, v28, v150, &v131, (*(v12[47] + 48) >> 1) & 1);
  if (v21)
  {
    goto LABEL_281;
  }

  pthread_mutex_lock(v149 + 6);
  if (BYTE11(v147) & 1) != 0 || (BYTE9(v146))
  {
    BYTE9(v147) = 0;
  }

  v119 = v11;
  v115 = a5;
  if (!v149[187])
  {
    DWORD2(v146) |= 0x100u;
  }

  v30 = 0;
  v118 = (a1 + 505);
  v31 = v120 + 48;
  v116 = 2;
  v117 = 0;
LABEL_65:
  v123 = v131;
  v32 = v117;
  while (2)
  {
    v33 = v16;
    v117 = v32;
    v127 = v30;
    while (1)
    {
      do
      {
        while (1)
        {
          v30 = v127;
          v34 = v33;
          if (v123 > v127)
          {
            goto LABEL_77;
          }

          if (BYTE9(v147) == 1)
          {
            BYTE9(v147) = 0;
            if (!v140)
            {
              v30 = 0;
              goto LABEL_77;
            }
          }

          else if (!v140)
          {
            goto LABEL_279;
          }

          if ((BYTE9(v146) & 2) == 0)
          {
            v35 = obj_type(a1);
            v36 = (a1 + 505);
            if (v35 != 13)
            {
              v36 = (a1[48] + 212);
            }

            log_debug("%s:%d: %s Could not find data to allocate outside the soft block-out range, disable soft block-out range\n", "spaceman_alloc", 7990, v36);
            *(v12 + 634) = 1;
            v12[131] = 0;
          }

          v30 = 0;
          v140 = 0uLL;
LABEL_77:
          v37 = *(v150 + v30);
          HIDWORD(v146) = v37;
          v127 = v30 + 1;
          BYTE12(v147) = 0;
          v39 = v37 == DWORD1(v147) && *(&v140 + 1) != 0;
          BYTE10(v147) = v39;
          v139 = v33;
          if ((v13 & 4) != 0)
          {
            v40 = v33;
            goto LABEL_85;
          }

          v44 = DWORD2(v146);
          v45 = v149;
          if (BYTE8(v146))
          {
            v47 = &v149[v37];
            if ((BYTE8(v146) & 0x40) != 0)
            {
              v49 = v47[106];
              v40 = v33;
              if (v49 >= v33)
              {
                goto LABEL_85;
              }

              obj_type(a1);
              log_err("%s:%d: %s Bogus attempt to perform metadata reserved allocation %lld with insufficient reserve %lld (%lld)\n");
            }

            else
            {
              v48 = v47[104] - v47[106];
              v40 = v33;
              if (v48 >= v33)
              {
                goto LABEL_85;
              }

              obj_type(a1);
              log_err("%s:%d: %s Bogus attempt to perform non-metadata reserved allocation %lld with insufficient reserve %lld (%lld)\n");
            }

LABEL_279:
            v21 = 28;
            goto LABEL_280;
          }

          if ((DWORD2(v146) & 0x30000) == 0)
          {
            spaceman_entitled_reserve_active(v12, v149);
            v45 = v149;
            LODWORD(v37) = HIDWORD(v146);
            v44 = DWORD2(v146);
          }

          v46 = spaceman_check_available_space(v12, v119, v45, v37, v44, v139.i64, a4);
          if (v46 != 7)
          {
            break;
          }

          if (v123 <= v127)
          {
            BYTE9(v147) = 0;
          }
        }

        v21 = v46;
        if (v46)
        {
          goto LABEL_280;
        }

        LODWORD(v37) = HIDWORD(v146);
        v40 = v139.i64[0];
LABEL_85:
        v41 = 0;
        v124 = v149[13 * v37 + 139] & BYTE11(v147);
        if ((v124 & 1) == 0 && (v40 - 5) >= 0xFFFFFFFFFFFFFFFCLL)
        {
          v41 = v40 - 1;
          v42 = &v149[17 * v37 + 153];
          if (LOBYTE(v42[4 * v41 + 3]) == 1 && (BYTE9(v146) & 1) == 0)
          {
            BYTE12(v147) = 1;
            metazone_alloc_index = v42[4 * v41];
LABEL_98:
            *(&v143 + 1) = metazone_alloc_index;
            goto LABEL_113;
          }
        }

        if (((v149[13 * v37 + 139] & BYTE11(v147)) & (v126 < 3)) == 1)
        {
          metazone_alloc_index = spaceman_get_metazone_alloc_index(v149, v37, v126);
          goto LABEL_98;
        }

        if (v37 || (BYTE8(v146) & 2) == 0)
        {
          if ((WORD4(v146) & 0x800) == 0)
          {
            metazone_alloc_index = v149[v37 + 125];
            goto LABEL_98;
          }

          metazone_alloc_index = 0;
          *(&v143 + 1) = 0;
        }

        else
        {
          metazone_alloc_index = v121;
          v139.i64[1] = v121;
          *(&v143 + 1) = v121;
        }

        DWORD2(v146) |= 0x4000u;
LABEL_113:
        if (BYTE12(v147))
        {
          v50 = v149;
          v51 = HIDWORD(v146);
          if ((BYTE9(v146) & 1) != 0 || v139.i64[0] <= (*(v149[HIDWORD(v146) + 187] + 4 * (metazone_alloc_index / *(v120 + 36))) & 0xFFFFFFu))
          {
            v52 = 1;
          }

          else
          {
            v52 = 0;
            BYTE12(v147) = 0;
          }
        }

        else
        {
          v52 = 0;
          v50 = v149;
          v51 = HIDWORD(v146);
        }

        BYTE14(v147) = 0;
        v142 = 0uLL;
        v144 = 0uLL;
        *(&v145 + 1) = 0;
        *&v146 = 0;
        v53 = v50[v51 + 197];
        v54 = BYTE11(v147);
        v122 = v41;
        if (!v53 || (BYTE11(v147) & 1) != 0 || (v52 & 1) != 0)
        {
          goto LABEL_145;
        }

        if ((WORD4(v146) & 0x8400) != 0)
        {
          goto LABEL_146;
        }

        v142 = vextq_s8(v139, v139, 8uLL);
        BYTE14(v147) = 1;
        if (BYTE9(v147))
        {
          v55 = DWORD2(v146) | 0x2000u;
        }

        else
        {
          v55 = DWORD2(v146) & 0xFFFF5BFF;
        }

        DWORD2(v146) = v55;
        v56 = spaceman_free_extent_cache_search(v53, v55, v142.i64, &v142.u64[1]);
      }

      while (v56 == 28);
      v57 = v142.u64[1];
      v58 = v142.i64[0];
      if (v142.i64[1] && !v142.i64[0])
      {
        v142 = 0uLL;
        v57 = 0;
      }

      v51 = HIDWORD(v146);
      if (v116 == HIDWORD(v146))
      {
        v59 = 0;
      }

      else
      {
        v59 = 3;
      }

      if (v56 != 3)
      {
        v59 = v56;
      }

      if (v59 == 3)
      {
        v129 = 0u;
        v130 = 0u;
        v128 = 0u;
        *&v128 = v149[HIDWORD(v146) + 197];
        *(&v128 + 1) = v139.i64[0];
        *&v129 = v57;
        *(&v129 + 1) = spaceman_free_extent_cache_search_better_length(SWORD4(v146), v139.u64[0], v57);
        *&v130 = 0;
        *(&v130 + 1) = DWORD2(v146);
        v83 = v149;
        v84 = &v149[HIDWORD(v146)];
        v85 = v84 + 102;
        v86 = v84[102];
        if ((v86 & 0x10) != 0)
        {
          v87 = v84[102];
          do
          {
            *v85 = v87 | 0x20;
            cv_wait(v83 + 16, v83 + 6, 8, "spaceman_alloc_fxc_scan_wait", 0);
            v83 = v149;
            v88 = &v149[HIDWORD(v146)];
            v85 = v88 + 102;
            v87 = v88[102];
          }

          while ((v87 & 0x10) != 0);
          *v85 = v87 | 0x10;
          if ((v86 & 0x10) == 0 || *(v88[197] + 128) < *(&v129 + 1))
          {
            goto LABEL_245;
          }

          v21 = 0;
        }

        else
        {
          *v85 = v86 | 0x10;
LABEL_245:
          pthread_mutex_unlock(v83 + 6);
          v116 = HIDWORD(v146);
          if (HIDWORD(v146) == 1)
          {
            v89 = 42;
          }

          else
          {
            v89 = 38;
          }

          v90 = spaceman_iterate_free_extents_internal(v12, v89, 0, spaceman_alloc_fxc_scan_free_extent_callback, &v128);
          pthread_mutex_lock(v149 + 6);
          if (v90 == 34 || v90 == 37)
          {
            v92 = 0;
          }

          else
          {
            v92 = v90;
          }

          if (v90 == HIDWORD(v130))
          {
            v21 = v92;
          }

          else
          {
            v21 = v90;
          }
        }

        v16 = a3;
        v142 = 0uLL;
        v93 = v149;
        v94 = HIDWORD(v146);
        v95 = v149[HIDWORD(v146) + 102];
        if ((v95 & 0x20) != 0)
        {
          cv_wakeup(v149 + 16);
          v93 = v149;
          v94 = HIDWORD(v146);
          v95 = v149[HIDWORD(v146) + 102];
        }

        v93[v94 + 102] = v95 & 0xFFFFFFFFFFFFFFCFLL;
        if (v21)
        {
LABEL_280:
          pthread_mutex_unlock(v149 + 6);
          goto LABEL_281;
        }

        goto LABEL_65;
      }

      v34 = v33;
      if (!v59 && v57 && v58)
      {
        *(&v145 + 1) = v58;
        *&v146 = v57;
        if (BYTE10(v147) != 1)
        {
          goto LABEL_143;
        }

        v21 = 0;
        if ((BYTE9(v146) & 2) == 0 && v58 < *(&v140 + 1))
        {
          if ((v57 + v58) < v140)
          {
LABEL_143:
            v21 = 0;
            goto LABEL_207;
          }

          v75 = obj_type(a1);
          v76 = (a1 + 505);
          if (v75 != 13)
          {
            v76 = (a1[48] + 212);
          }

          log_debug("%s:%d: %s Could not find data to allocate outside the soft block-out range, disable soft block-out range\n", "spaceman_alloc", 8208, v76);
          v21 = 0;
          *(v12 + 634) = 1;
          v12[131] = 0;
        }

        goto LABEL_207;
      }

      DWORD2(v146) |= 0x100u;
      v54 = BYTE11(v147);
LABEL_145:
      if ((v54 & 1) == 0)
      {
LABEL_146:
        if ((BYTE12(v147) & 1) == 0 && v149[v51 + 187] && (BYTE9(v146) & 1) == 0)
        {
          *&v133 = *(&v143 + 1);
          *(&v133 + 1) = v139.i64[0];
          LOBYTE(v134) = BYTE9(v147);
          BYTE8(v135) = BYTE8(v147) ^ 1;
          *(&v134 + 1) = 0;
          *&v135 = 0;
          if (BYTE10(v147) == 1)
          {
            *(&v134 + 1) = v140;
            *&v135 = *(&v140 + 1) - v140;
          }

          spaceman_search_bitmap_hints_for_space(v149, v51, &v133, &v136);
          if (v60)
          {
            v61 = v60;
            BYTE9(v147) = 0;
            if (v60 != 28)
            {
              if (obj_type(a1) == 13)
              {
                log_err("%s:%d: %s failed to search bitmap hints: %d\n", "spaceman_alloc", 8249, v118, v61);
              }

              else
              {
                log_err("%s:%d: %s failed to search bitmap hints: %d\n", "spaceman_alloc", 8249, (a1[48] + 212), v61);
              }
            }
          }

          else
          {
            BYTE13(v147) = 1;
            BYTE9(v147) = v137;
            *(&v143 + 1) = v136;
            if (BYTE8(v147) == 1)
            {
              v139.i64[0] = *(&v136 + 1);
            }
          }

          v34 = a3;
          if ((BYTE9(v147) & 1) == 0 && BYTE10(v147) == 1)
          {
            if ((BYTE9(v146) & 2) == 0)
            {
              *(v12 + 634) = 1;
              v12[131] = 0;
            }

            v140 = 0uLL;
          }
        }

        goto LABEL_167;
      }

      do
      {
LABEL_167:
        v62 = HIDWORD(v146);
        if (HIDWORD(v146) == v147 && *(&v143 + 1) >= v141 && *(&v143 + 1) < *(&v141 + 1))
        {
          *(&v143 + 1) = *(&v141 + 1);
          if ((BYTE14(v147) & 1) == 0 && HIDWORD(v146) == DWORD1(v147) && *(&v141 + 1) >= v140 && *(&v141 + 1) < *(&v140 + 1))
          {
            *(&v143 + 1) = *(&v140 + 1);
          }
        }

        if ((BYTE14(v147) & 1) == 0 && HIDWORD(v146) == DWORD1(v147) && *(&v143 + 1) >= v140 && *(&v143 + 1) < *(&v140 + 1))
        {
          *(&v143 + 1) = *(&v140 + 1);
          if (HIDWORD(v146) == v147 && *(&v140 + 1) >= v141 && *(&v140 + 1) < *(&v141 + 1))
          {
            *(&v143 + 1) = *(&v141 + 1);
          }
        }

        v63 = v149[HIDWORD(v146) + 197];
        if (v63)
        {
          if (BYTE14(v147))
          {
            v64 = &v143 + 1;
          }

          else
          {
            v64 = 0;
          }

          HIBYTE(v147) = spaceman_free_extent_cache_bitmap_scan_begin(v63, v64);
          LOBYTE(v148) = 0;
          v62 = HIDWORD(v146);
        }

        else
        {
          HIBYTE(v147) = 0;
        }

        v65 = *(&v143 + 1);
        if (*(&v143 + 1) >= *(v31 + 48 * v62))
        {
          v65 = 0;
          *(&v143 + 1) = 0;
        }

        *&v143 = v65;
        v66 = spaceman_alloc_iterate_chunks(a1, v12, v149, &v136);
      }

      while (v66 == 3);
      v21 = v66;
      if ((v148 & 0x100) != 0)
      {
        if (!HIBYTE(v147))
        {
          goto LABEL_207;
        }

        v67 = BYTE14(v147) == 1 ? *(v149[47] + 48 * HIDWORD(v146) + 48) : 0;
        v69 = v149[HIDWORD(v146) + 197];
        v70 = 1;
      }

      else
      {
        if (!HIBYTE(v147))
        {
          goto LABEL_207;
        }

        if (BYTE14(v147) == 1)
        {
          v67 = v143;
          if (!v66 && v143 > *(&v143 + 1))
          {
            v68 = *(&v144 + 1) || !v146 ? v145 + *(&v144 + 1) + v144 : *(&v145 + 1) + v146;
            if (v143 <= v68)
            {
              v67 = v68;
            }
          }
        }

        else
        {
          v67 = 0;
        }

        v69 = v149[HIDWORD(v146) + 197];
        v70 = 0;
      }

      spaceman_free_extent_cache_bitmap_scan_finished(v69, v67, v70);
      HIBYTE(v147) = 0;
LABEL_207:
      v33 = v34;
      v71 = v30;
      v72 = *(&v144 + 1);
      if (*(&v144 + 1))
      {
        if (v21)
        {
          goto LABEL_275;
        }

        v77 = v144 + v145;
        goto LABEL_226;
      }

      v72 = v146;
      if (v21 || v146)
      {
        break;
      }

      if (BYTE1(v148) != 1)
      {
        v72 = 0;
        v77 = 0;
        goto LABEL_226;
      }

      if ((v13 & 4) == 0)
      {
        pthread_mutex_unlock(v149 + 6);
        pthread_mutex_lock(v149 + 8);
        trim_time_tracking_start(v12, v132, 0, 0);
        v73 = spaceman_free_completed(v12, v149, (HIDWORD(v146) + 1), 1, v132, a4);
        v74 = v127;
        if (v73)
        {
          v74 = v71;
        }

        v127 = v74;
        trim_time_tracking_end(v12, v132);
        pthread_mutex_unlock(v149 + 8);
        pthread_mutex_lock(v149 + 6);
      }
    }

    if (v146)
    {
      v77 = *(&v145 + 1);
    }

    else
    {
      v77 = 0;
    }

    if (v21)
    {
      goto LABEL_275;
    }

LABEL_226:
    v78 = spaceman_extent_check(v12, v149, v77, v72);
    if (v78)
    {
      v100 = v78;
      if (nx_ratelimit_log_allowed(*(*a1 + 392)))
      {
        v101 = obj_type(a1);
        v102 = (a1 + 505);
        if (v101 != 13)
        {
          v102 = (a1[48] + 212);
        }

        log_err("%s:%d: %s found free extent (0x%llx:0x%llx) which should not be free!: %d\n", "spaceman_alloc", 8387, v102, v77, v72, v100);
      }

      v21 = nx_corruption_detected_int(v12);
LABEL_275:
      pthread_mutex_unlock(v149 + 6);
      v96 = v115;
      v97 = a6;
      if (v21)
      {
        goto LABEL_281;
      }

      goto LABEL_306;
    }

    v79 = v77 + v72;
    if (v77 + v72 >= *(v31 + 48 * HIDWORD(v146)))
    {
      v79 = 0;
    }

    *&v143 = v79;
    if ((v13 & 4) == 0 && v72 >= 1)
    {
      if (*(v12 + 627))
      {
        v21 = 30;
        goto LABEL_280;
      }

      v80 = obj_modify(v149, 0, a4);
      if (v80)
      {
        v21 = v80;
        goto LABEL_280;
      }

      v21 = spaceman_modify_bits(v12, v119, v149, v77, v72, a4, 0, SDWORD2(v146));
      spaceman_free_extent_cache_remove(v149[HIDWORD(v146) + 197], v77, v72);
      if (v21)
      {
        v81 = obj_type(a1);
        v82 = (a1 + 505);
        if (v81 != 13)
        {
          v82 = (a1[48] + 212);
        }

        log_err("%s:%d: %s Failed to set bits for allocation %lld:%lld: %d\n", "spaceman_alloc", 8418, v82, v77, v72, v21);
        if (BYTE14(v147) != 1)
        {
          goto LABEL_280;
        }

        spaceman_free_extent_cache_reset(v149[HIDWORD(v146) + 197]);
        v32 = 1;
        v30 = v71;
        v16 = a3;
        if (v117)
        {
          goto LABEL_280;
        }

        continue;
      }
    }

    break;
  }

  v96 = v115;
  *v115 = v77;
  v97 = a6;
  if (a6)
  {
    *a6 = v72;
  }

  v98 = v149;
  v99 = v149[199];
  if (v99)
  {
    v99[10] += v72;
    if (v72 < a3)
    {
      ++v99[11];
    }

    if (BYTE12(v147))
    {
      ++v99[3];
      goto LABEL_286;
    }

LABEL_290:
    if ((WORD4(v146) & 0x200) != 0)
    {
      v108 = v12[127];
      if (HIDWORD(v146) || v143 < v108 || v143 >= v12[128] + v108)
      {
        v12[129] = v108;
      }

      else
      {
        v12[129] = v143;
      }
    }

    else
    {
      v107 = HIDWORD(v146);
      if ((WORD4(v146) & 0x142) == 0 || HIDWORD(v146))
      {
        v109 = v143;
        v98[HIDWORD(v146) + 125] = v143;
        if (BYTE9(v147) == 1 && spaceman_should_avoid_data_allocation_at_block(v98, v107, v109, 5))
        {
          *&v133 = v143;
          *(&v133 + 1) = 1;
          LOBYTE(v134) = 1;
          BYTE8(v135) = 1;
          *(&v134 + 1) = 0;
          *&v135 = 0;
          spaceman_search_bitmap_hints_for_space(v149, HIDWORD(v146), &v133, &v136);
          if (v110)
          {
            if (v110 != 28)
            {
              obj_type(a1);
              log_err("%s:%d: %s failed to move roving pointer for dev %d error %d\n");
            }
          }

          else if (*(&v136 + 1) >= 1)
          {
            v149[HIDWORD(v146) + 125] = v136;
          }
        }
      }

      else if (v124)
      {
        spaceman_update_metazone_alloc_index(v98, 0, v126, v143);
      }
    }
  }

  else
  {
    if ((BYTE12(v147) & 1) == 0)
    {
      goto LABEL_290;
    }

LABEL_286:
    if ((*(v98[HIDWORD(v146) + 187] + 4 * (v98[17 * HIDWORD(v146) + 153 + 4 * v122] / *(v120 + 36))) & 0xFFFFFFu) <= v122)
    {
      new_chunk_for_allocation_zone = spaceman_get_new_chunk_for_allocation_zone(v12, v98, HIDWORD(v146), v122);
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

  pthread_mutex_unlock(v149 + 6);
LABEL_306:
  obj_release(v149);
  if ((BYTE8(v146) & 4) != 0)
  {
    return 0;
  }

  v21 = 0;
  if ((WORD4(v146) & 0x200) != 0)
  {
    return v21;
  }

  v111 = v12[128];
  if (!v111)
  {
    return v21;
  }

  v112 = v12[127];
  if (*v96 >= v112 && *v96 < v112 + v111)
  {
    return 0;
  }

  if (*(v12 + 634) == 1)
  {
    v113 = &v139;
    if (v97)
    {
      v113 = v97;
    }

    v114 = v12[131] + v113->i64[0];
    v12[131] = v114;
    if (v114 >= 0x401)
    {
      if (obj_type(a1) != 13)
      {
        v118 = (a1[48] + 212);
      }

      log_debug("%s:%d: %s Found enough data to allocate outside the soft block-out range, re-enable soft block-out range\n", "spaceman_alloc", 8546, v118);
      v21 = 0;
      *(v12 + 634) = 0;
      return v21;
    }

    return 0;
  }

  if (!v97 || 10000 * *v97 >= v139.i64[0] || *v97 * *(v12[47] + 36) >= 0x40000)
  {
    return 0;
  }

  if (obj_type(a1) != 13)
  {
    v118 = (a1[48] + 212);
  }

  log_debug("%s:%d: %s Space outside soft block-out range seems fragmented (requested %llu, but could alloc only %llu), disable soft block-out range\n", "spaceman_alloc", 8553, v118, v139.i64[0], *v97);
  v21 = 0;
  *(v12 + 634) = 1;
  v12[131] = 0;
  return v21;
}

uint64_t spaceman_alloc_flags_to_devs(uint64_t a1, unsigned int a2, void *a3, char *a4, int a5)
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
      *a3 = 0x100000000;
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

uint64_t spaceman_check_available_space(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, int a5, uint64_t *a6, unint64_t a7)
{
  v54 = *a6;
  if (*a6 < 1)
  {
    return 0;
  }

  v13 = *(a3 + 376);
  memset(v58, 0, sizeof(v58));
  v57 = a3 + 832;
  v14 = v13 + 48 * a4;
  v55 = a4 + 1;
  v52 = v13 + 40 * (a4 + 1);
  v53 = a3 + 984;
  v15 = 1;
  while (1)
  {
    pthread_mutex_lock((a3 + 576));
    if (a2)
    {
      v16 = *(a2 + 408);
      v17 = *(a2 + 376);
      v19 = v17[10];
      v18 = v17[11];
      v20 = v17[9];
      if (v19 >= v18 + v16)
      {
        v21 = v19 - (v18 + v16);
      }

      else
      {
        v21 = 0;
      }

      if (v20 - v18 >= v21)
      {
        v22 = v21;
      }

      else
      {
        v22 = v20 - v18;
      }

      if (v19 <= v18 + v16)
      {
        v23 = v20 - v18;
      }

      else
      {
        v23 = v22;
      }

      v24 = v23 >= v16;
      v25 = v23 - v16;
      if (!v24)
      {
        v25 = 0;
      }

      if (v20 <= v18)
      {
        v25 = 0;
      }
    }

    else
    {
      v25 = 0;
      v21 = 0;
    }

    v26 = *(a3 + 376);
    v27 = v26[30] + v26[9] + *(a3 + 984) + v26[15] + v26[35] + *(a3 + 992);
    v29 = v26[23];
    v28 = v26[24];
    v24 = v29 >= v28;
    v30 = v29 - v28;
    if (!v24)
    {
      v30 = 0;
    }

    v31 = *(a3 + 840) + *(a3 + 832);
    v32 = *(a3 + 864);
    v24 = v31 >= v32;
    v33 = v31 - v32;
    if (!v24)
    {
      v33 = 0;
    }

    v34 = v33 + v30;
    v24 = v27 >= v34;
    v35 = v27 - v34;
    if (!v24)
    {
      v35 = 0;
    }

    if (*(a3 + 1616))
    {
      v36 = *(a3 + 1632);
      v24 = v33 >= v36;
      v37 = v33 - v36;
      if (!v24)
      {
        v37 = 0;
      }

      v38 = *(a3 + 1624);
      v39 = *(a3 + 1640);
      v24 = v38 >= v39;
      v40 = v38 - v39;
      if (!v24)
      {
        v40 = 0;
      }

      v24 = v40 >= v36;
      v41 = v40 - v36;
      if (!v24)
      {
        v41 = 0;
      }

      v42 = *(a3 + 1648);
      v43 = *(a3 + 1656);
      v24 = v42 >= v43;
      v44 = v42 - v43;
      if (!v24)
      {
        v44 = 0;
      }

      v24 = v44 >= v37;
      v45 = v44 - v37;
      if (!v24)
      {
        v45 = 0;
      }

      v24 = v35 >= v45 + v41;
      v46 = v35 - (v45 + v41);
      if (!v24)
      {
        v46 = 0;
      }

      if ((a5 & 0x10000) != 0)
      {
        v45 = v41;
      }

      v47 = v45 + v25 + v46;
      if (!a2)
      {
LABEL_53:
        pthread_mutex_unlock((a3 + 576));
        v49 = *a6;
LABEL_54:
        v21 = v49;
        if (v49 <= v47)
        {
          goto LABEL_57;
        }

        if ((a5 & 0x1000) == 0)
        {
          return 28;
        }

LABEL_56:
        *a6 = v47;
        v21 = v47;
        if (v47 < 1)
        {
          return 28;
        }

        goto LABEL_57;
      }
    }

    else
    {
      v47 = v35 + v25;
      if (!a2)
      {
        goto LABEL_53;
      }
    }

    if (v47 >= v21)
    {
      v48 = v21;
    }

    else
    {
      v48 = v47;
    }

    if (*(*(a2 + 376) + 80))
    {
      v47 = v48;
    }

    pthread_mutex_unlock((a3 + 576));
    v49 = *a6;
    if (!*(*(a2 + 376) + 80) || v49 <= v21)
    {
      goto LABEL_54;
    }

    if ((a5 & 0x1000) == 0)
    {
      return 69;
    }

    *a6 = v21;
    if (v21 < 1)
    {
      return 69;
    }

    if (v21 > v47)
    {
      goto LABEL_56;
    }

LABEL_57:
    v50 = *(v14 + 72) - *(v57 + 8 * a4);
    if (v21 > v50)
    {
      break;
    }

LABEL_65:
    if (v21 <= v50)
    {
      return 0;
    }
  }

  if (v15)
  {
    v50 += *(v52 + 200) + *(v53 + 8 * a4);
    if (v21 <= v50)
    {
      goto LABEL_62;
    }
  }

  if ((a5 & 0x1000) == 0)
  {
    return 7;
  }

  *a6 = v50;
  if (v50 > 0 && v15)
  {
LABEL_62:
    pthread_mutex_unlock((a3 + 384));
    pthread_mutex_lock((a3 + 512));
    trim_time_tracking_start(a1, v58, 0, 0);
    v15 = spaceman_free_completed(a1, a3, v55, 1, v58, a7) != 0;
    trim_time_tracking_end(a1, v58);
    pthread_mutex_unlock((a3 + 512));
    pthread_mutex_lock((a3 + 384));
    v50 = 0;
    if ((a5 & 0x1000) != 0)
    {
      v21 = v54;
      *a6 = v54;
    }

    else
    {
      v21 = *a6;
    }

    goto LABEL_65;
  }

  if (v50 <= 0)
  {
    return 7;
  }

  else
  {
    return 0;
  }
}

uint64_t spaceman_alloc_fxc_scan_free_extent_callback(uint64_t a1, uint64_t a2, unint64_t a3)
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

double spaceman_search_bitmap_hints_for_space(unint64_t a1, unsigned int a2, uint64_t a3, _OWORD *a4)
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
      goto LABEL_23;
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

        v29 = v14;
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
  v29 = *(v12 + 8 * v13) + 4 * v11;
LABEL_23:
  v30 = v54;
  if (v54 < 2)
  {
    goto LABEL_52;
  }

  v31 = *v29;
  LODWORD(v29) = *v29 & 0xFFFFFF;
  if (v54 <= (*&v31 & 0xFFFFFFuLL))
  {
    goto LABEL_52;
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
          goto LABEL_53;
        }

        v34 = *(v55 + 36);
        goto LABEL_32;
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

LABEL_52:
      v35 = a4;
      v33 = v55;
      goto LABEL_53;
    }
  }

  v33 = v55;
  v34 = *(v55 + 36);
  v35 = a4;
  v36 = v49;
  if (!v49)
  {
LABEL_36:
    *&v60[0] = v51 * v34;
    spaceman_iterate_bitmap_hints(a1, a2, 0, v60, v35);
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

LABEL_32:
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
    goto LABEL_36;
  }

LABEL_53:
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
    spaceman_iterate_bitmap_hints(a1, a2, 3uLL, v60, &v57);
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

uint64_t spaceman_alloc_iterate_chunks(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = 0;
  v6 = 0;
  LODWORD(v7) = 0;
  v8 = 0;
  v9 = 0;
  v10 = *(a3 + 376);
  v119 = 0;
  v120 = 0;
  v117 = 0;
  v118 = 0;
  v11 = v10 + 12;
  v98 = a3 + 896;
  v104 = v10 + 12;
  v105 = (a1 + 4040);
  v115 = 0;
  v116 = 0;
  v107 = a3 + 1576;
  v99 = -1;
  v114 = 0;
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
      v16 = v120;
      if (v13 / v14 == v99)
      {
        LODWORD(v17) = *(a4 + 112) / v10[9] / v10[10];
        v15 = v99;
      }

      else
      {
        v19 = *(*(v98 + 8 * v12) + 8 * v15);
        if (v120)
        {
          obj_release(v120);
          v10 = v109;
          v120 = 0;
          LODWORD(v12) = *(a4 + 172);
        }

        v116 = v10;
        v117 = __PAIR64__(v15, v12);
        v20 = v10;
        v21 = obj_get(*(a2 + 392), 0x40000000, v19, &sm_cab_desc, &v116, 0, 0, 0, &v120);
        if (v21)
        {
          v93 = v21;
          v8 = v103;
          break;
        }

        v14 = v20[11];
        v16 = v120;
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
    v116 = v10;
    v117 = __PAIR64__(v13, v12);
    v106 = v22;
    v23 = v10;
    v24 = obj_get(*(a2 + 392), 0x40000000, v22, &sm_cib_desc, &v116, 0, 0, 0, &v119);
    if (v24)
    {
      v93 = v24;
      break;
    }

    v5 = *(v119 + 56);
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
    v101 = *(v119 + 56);
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
      v118 = 0;
      if (v54)
      {
        v58 = obj_get(*(a2 + 392), 0x40000000, v54, &sm_bm_desc, 0, 0, 0, 0, &v118);
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

        if (!v118 || !bitmap_range_find_first(1, *(v118 + 56), 0, v59, (a4 + 128)))
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
              if (v118)
              {
                obj_release(v118);
              }

              v9 = 0;
              v93 = 0;
              v118 = 0;
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
            if (v57 || !spaceman_clip_extent_to_zones(a2, a3, *(a4 + 172), *(a4 + 112) - v9, v59 + v9, *(a4 + 168), *(a4 + 56), &v115, &v114))
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
                *(a4 + 152) = v115;
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

          if (v118)
          {
            obj_release(v118);
          }

          v118 = 0;
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
          if (spaceman_clip_extent_to_zones(a2, a3, *(a4 + 172), *(a4 + 112) - v9, v60, *(a4 + 168), *(a4 + 56), &v115, &v114))
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
              *(a4 + 152) = v115;
              *(a4 + 160) = v61;
LABEL_167:
              if ((*(a4 + 169) & 4) != 0)
              {
                if (v118)
                {
                  obj_release(v118);
                }

                v9 = 0;
                v93 = 0;
                v118 = 0;
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
      if (!v118)
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
            bitmap_range_find_first_clear_range(*(v118 + 56), v38 - v73, v73, v38, (a4 + 128), (a4 + 136));
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
        if (bitmap_range_find_desired_or_first_clear_range(*(v118 + 56), *(a4 + 48), v48, v38, (a4 + 128), (a4 + 136), (*(a4 + 168) >> 10) & 1))
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
          if (spaceman_clip_extent_to_zones(a2, a3, *(a4 + 172), v84 - v48 + v85, v9, *(a4 + 168), *(a4 + 56), &v115, &v114))
          {
            v9 = v114;
            if (v114 > *(a4 + 160))
            {
              v86 = v115;
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

        if (bitmap_range_find_last_set(*(v118 + 56), v88, v87, (a4 + 128)) && (v89 = *(a4 + 128), v89 < v38 - 1))
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

      if (v118)
      {
        obj_release(v118);
      }

      v118 = 0;
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

    obj_release(v119);
    v119 = 0;
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

  if (v120)
  {
    obj_release(v120);
    v120 = 0;
  }

  if (v119)
  {
    obj_release(v119);
    v119 = 0;
  }

  if (v118)
  {
    obj_release(v118);
  }

  return v93;
}

uint64_t spaceman_modify_bits(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, int a7, int a8)
{
  v8 = a6;
  v10 = a4;
  v11 = a3;
  v115 = 0;
  v119 = 0;
  v117 = 0;
  v12 = *(a3 + 376);
  v141 = 0;
  v142 = 0;
  v139 = 0;
  v140 = 0;
  v137 = 0;
  v138 = 0;
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
        if (v142)
        {
          obj_release(v142);
          v142 = 0;
        }

        v138 = v12;
        LODWORD(v139) = 0;
        HIDWORD(v139) = v16;
        v119 = v18;
        v19 = obj_get(a1[49], 1073741829, v18, &sm_cab_desc, &v138, 0, 0, v8, &v142);
        if (v19)
        {
          v107 = v19;
          log_err("%s:%d: %s error getting cab %d @ %lld: %d\n", "spaceman_modify_bits", 5882, (a1[48] + 212), v16, v119, v19);
          v108 = 1;
          goto LABEL_156;
        }

        v115 = *(v142 + 56);
        v118 = v16;
      }

      else
      {
        obj_lock(v142, 2);
      }

      pthread_mutex_unlock((v11 + 640));
      if (obj_xid(v142) == v8)
      {
        v22 = v119;
        v23 = v118;
      }

      else
      {
        v24 = spaceman_ip_block_alloc(a1, v11, v8, &v137);
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

        v22 = v137;
        v23 = v118;
        *(*(v11 + 896) + 8 * v118) = v137;
        obj_dirty(v142, v8, v22);
        v25 = spaceman_ip_block_free(a1, v11, v119, v8);
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
      v26 = v125[10];
      LODWORD(v15) = v15 - v125[11] * v23;
      v138 = v125;
      LODWORD(v139) = 0;
      HIDWORD(v139) = v14 / v26;
      v117 = 1;
      v119 = v22;
    }

    else
    {
      v20 = v12;
      v21 = *(v11 + 896);
      v138 = v20;
      LODWORD(v139) = 0;
      HIDWORD(v139) = v15;
      if (!v21)
      {
        v107 = 22;
        v108 = 1;
        goto LABEL_156;
      }
    }

    v27 = *(v21 + 8 * v15);
    v28 = obj_get(a1[49], 1073741829, v27, &sm_cib_desc, &v138, 0, 0, v8, &v141);
    if (v28)
    {
      v107 = v28;
      if (v118 == -1)
      {
        v106 = 0;
      }

      else
      {
        v106 = v125[11] * v118;
      }

      log_err("%s:%d: %s error getting cib %d @ %lld: %d\n", "spaceman_modify_bits", 5934, (a1[48] + 212), v106 + v15, v27, v28);
      v108 = 1;
      goto LABEL_153;
    }

    v126 = *(v141 + 56);
    if (obj_xid(v141) == v8)
    {
      v123 = v27;
      v29 = v125;
      v30 = v132;
      goto LABEL_29;
    }

    v31 = spaceman_ip_block_alloc(a1, v11, v8, &v137);
    if (v31)
    {
      v107 = v31;
      log_err("%s:%d: %s failed to allocate block from internal pool: %d\n");
      goto LABEL_150;
    }

    v123 = v137;
    *(v21 + 8 * v15) = v137;
    if (v142)
    {
      obj_dirty(v142, v8, v119);
    }

    obj_dirty(v141, v8, v123);
    v32 = spaceman_ip_block_free(a1, v11, v27, v8);
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

    if (v142)
    {
      obj_unlock(v142, 2);
      v117 = 0;
    }

    v133 = v14 % v29[10];
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
        v36 = obj_get(a1[49], 1073741825, v35, &sm_bm_desc, 0, 0, 0, v8, &v140);
        if (v36)
        {
          v105 = v36;
          log_err("%s:%d: %s error getting cib %d bitmap %d @ %lld: %d\n");
          goto LABEL_144;
        }

        v37 = *(v140 + 56);
      }

      else
      {
        v37 = 0;
      }

      v38 = v29[9];
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

      v41 = spaceman_ip_block_alloc(a1, v11, a6, &v137);
      if (v41)
      {
        v104 = v41;
        log_err("%s:%d: %s failed to allocate block from internal pool: %d\n", "spaceman_modify_bits", 6004, (a1[48] + 212), v41);
        v108 = 0;
        v107 = v104;
        goto LABEL_157;
      }

      *v33 = a6;
      v42 = v137;
      *v34 = v137;
      v128 = v42;
      if (v35)
      {
        obj_dirty(v140, a6, v42);
        v43 = spaceman_ip_block_free(a1, v11, v35, a6);
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
        v44 = obj_create(a1[49], 0x40000000, v42, &sm_bm_desc, 0, 0, a6, &v140);
        if (v44)
        {
          v107 = v44;
          log_err("%s:%d: %s failed to create bitmap object %lld: %d\n", "spaceman_modify_bits", 6019, (a1[48] + 212), v128, v44);
          v108 = 0;
          goto LABEL_157;
        }

        v37 = *(v140 + 56);
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
          v143 = 0;
          v52 = calc_overlap_range(v30, v136, v51, v49, &v143);
          v53 = v52;
          if (v52)
          {
            v52 = bitmap_count_bits(v37, 0, v143 - *(v50 + 8), v143 + v52 - *(v50 + 8));
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
        update_bm_hint(a3, v37, v30 / *(v45 + 36));
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
        update_bm_hint(v11, v37, v133 + *(v45 + 40) * *(v126 + 32));
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
      obj_dirty(v141, v8, v123);
      obj_dirty(v140, v8, v128);
      obj_release(v140);
      v140 = 0;
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
    obj_unlock(v141, 2);
    obj_release(v141);
    v141 = 0;
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
  if (v142 && (v117 & 1) != 0)
  {
    obj_unlock(v142, 2);
  }

  if (v141)
  {
    v109 = v108;
  }

  else
  {
    v109 = 1;
  }

  if ((v109 & 1) == 0)
  {
    obj_unlock(v141, 2);
  }

  if (v142)
  {
    obj_release(v142);
  }

  if (v141)
  {
    obj_release(v141);
  }

  if (v140)
  {
    obj_release(v140);
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

uint64_t spaceman_free(const char *a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
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
    v26 = 0;
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
        if (*(v10 + 629) == 1)
        {
          is_allocated_in_stable_state = spaceman_is_allocated_in_stable_state(v10, a3, a4, &v25);
          if (is_allocated_in_stable_state | v25)
          {
            v13 = 0;
            goto LABEL_20;
          }

          pthread_mutex_lock((v26 + 384));
          v13 = spaceman_freed(v10, v26, a3, a4, a5);
          dev_unmap_flush(v10[48]);
          if (!v13)
          {
            if (v11)
            {
              spaceman_free_fs_deduct_block_counts(v11, v26, a4, a5);
            }

            v24 = v26;
            if (*(v26 + 1616))
            {
              spaceman_free_handle_entitled_reserve(v26, v8, a4);
              v24 = v26;
            }

            obj_dirty(v24, a5, 0);
          }

          v23 = (v26 + 384);
        }

        else
        {
          pthread_mutex_lock((v26 + 512));
          v13 = spaceman_fq_tree_insert(v10, v26, 1, a3, a4, a5);
          if (!v13)
          {
            pthread_mutex_lock((v26 + 384));
            if (v11)
            {
              spaceman_free_fs_deduct_block_counts(v11, v26, a4, a5);
            }

            v22 = v26;
            if (*(v26 + 1616))
            {
              spaceman_free_handle_entitled_reserve(v26, v8, a4);
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

uint64_t spaceman_is_allocated_in_stable_state(uint64_t *a1, unint64_t a2, unint64_t a3, int *a4)
{
  v8 = a1[52];
  pthread_mutex_lock(v8 + 8);
  pthread_mutex_lock(v8 + 6);
  v9 = spaceman_check_allocation_status_internal(a1, v8, 1, a2, a3, a4, 0);
  pthread_mutex_unlock(v8 + 6);
  pthread_mutex_unlock(v8 + 8);
  return v9;
}

uint64_t spaceman_freed(uint64_t *a1, uint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5)
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

  return spaceman_freed_internal(a1, a2, a3, a4, 0, a5);
}

void spaceman_free_fs_deduct_block_counts(const char *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v8 = *(a2 + 376);
  pthread_mutex_lock((a2 + 576));
  v9 = *(a1 + 47);
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
    log_err("%s:%d: %s fs %lld alloc count underflow: %lld (%lld)\n", "spaceman_free_fs_deduct_block_counts", 8664, a1 + 4040, v13, *(*(a1 + 47) + 88), a3);
    v12 = 0;
    v9 = *(a1 + 47);
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

    v16 = *(a1 + 52);
    if (v15 >= *(a1 + 51))
    {
      v15 = *(a1 + 51);
    }

    v17 = *(a2 + 864);
    *(a1 + 52) = v15;
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
      log_err("%s:%d: %s spaceman fs reserve alloc count underflow: %lld (%lld)\n", "spaceman_free_fs_deduct_block_counts", 8680, a1 + 4040, *(v8 + 192), v18);
      v20 = 0;
    }

    *(v8 + 192) = v20;
  }

  pthread_mutex_unlock((a2 + 576));

  fs_sb_dirty(a1, a4);
}

uint64_t spaceman_free_handle_entitled_reserve(uint64_t result, int a2, unint64_t a3)
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

uint64_t spaceman_fq_tree_insert(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  v12 = *(a2 + 376);
  v36 = 0;
  v35[0] = 0;
  v32 = 0uLL;
  v33 = 0;
  *(&v31 + 1) = 0;
  v13 = spaceman_fq_tree_get(a1, a2, a3, a6, 1, &v36);
  if (!v13)
  {
    *&v31 = 0;
    *&v34 = a6;
    *(&v34 + 1) = a4;
    v29 = 8;
    v30 = 16;
    v14 = bt_lookup_variant(v36, 0, &v34, &v30, 16, v35, &v29, 1, 0, 0);
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

    if (v29)
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

    v32 = v34;
    v16 = v15 + a5;
    v33 = v15 + a5;
    if (v34)
    {
LABEL_14:
      v34 = v32;
      v29 = 8;
      v30 = 16;
      v17 = bt_lookup_variant(v36, 0, &v34, &v30, 16, v35, &v29, 4, 0, 0);
      if (v17 == 2)
      {
LABEL_31:
        v29 = 8 * (v16 != 1);
        v13 = bt_insert(v36, 0, &v32, 16, &v33, v29, a6);
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
          if (v31)
          {
            v26 = bt_remove(v36, 0, &v31, 0x10u, a6);
            if (v26)
            {
              log_err("%s:%d: %s removal of replaced free extent failed: %d\n", "spaceman_fq_tree_insert", 4932, (a1[48] + 212), v26);
            }
          }

          if (spaceman_fq_tree_over_threshold(a2, a3, v36, 0))
          {
            memset(v28, 0, sizeof(v28));
            trim_time_tracking_start(a1, v28, 0, 0);
              ;
            }

            trim_time_tracking_end(a1, v28);
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
          if (v29)
          {
            v18 = v35[0];
          }

          else
          {
            v18 = 1;
            v35[0] = 1;
          }

          v19 = v16 + *(&v32 + 1);
          if (*(&v34 + 1) <= v16 + *(&v32 + 1))
          {
            if (*(&v34 + 1) < v16 + *(&v32 + 1))
            {
              v20 = v18 + *(&v34 + 1);
              log_err("%s:%d: %s range 0x%llx:%lld overlaps with recently-freed range 0x%llx:%lld\n", "spaceman_fq_tree_insert", 4897, (a1[48] + 212), a4, a5, *(&v34 + 1), v18);
              if (v20 > v19)
              {
                v16 += v20 - v19;
                v33 = v16;
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
              v33 = v16;
            }

            v31 = v34;
          }
        }

        goto LABEL_31;
      }

LABEL_43:
      obj_release(v36);
      return v13;
    }

LABEL_13:
    *&v32 = a6;
    *(&v32 + 1) = a4;
    v16 = a5;
    v33 = a5;
    goto LABEL_14;
  }

  return v13;
}

uint64_t spaceman_check_allocation_status_internal(uint64_t *a1, uint64_t a2, char a3, unint64_t a4, unint64_t a5, int *a6, void *a7)
{
  v7 = a6;
  v8 = a5;
  v9 = a4;
  v11 = a2;
  v60 = 0;
  v61 = 0;
  v59 = 0;
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

  v57 = 0;
  v58 = 0;
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
  v34[1] = *MEMORY[0x277D85DE8];
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

  v32 = 0;
  v34[0] = 0;
  v31 = 0;
  if (a3 < 1)
  {
    return 22;
  }

  v11 = spaceman_get(v9, &v32);
  if (!v11)
  {
    v11 = spaceman_alloc_flags_to_devs(v32, a2, v34, &v31, (*(v9[47] + 48) >> 1) & 1);
    v12 = v32;
    if (!v11)
    {
      pthread_mutex_lock(v32 + 6);
      v13 = v31;
      v14 = a2 & 0x30000;
      v15 = v34;
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

        v17 = spaceman_check_available_space(v9, v10, v32, v16, a2, &v33, a4);
        --v13;
        ++v15;
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

uint64_t spaceman_unreserve(void *a1, unsigned int a2, unint64_t a3)
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

  v29 = 0;
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
            v27 = (a1 + 505);
          }

          else
          {
            v27 = (a1[48] + 212);
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
          v14 = (a1 + 505);
        }

        else
        {
          v14 = (a1[48] + 212);
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
        v17 = (a1 + 505);
      }

      else
      {
        v17 = (a1[48] + 212);
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

uint64_t spaceman_fs_bounds_clear(void *a1, const char *a2, unint64_t a3)
{
  v27 = 0;
  result = spaceman_get(a1, &v27);
  if (!result)
  {
    v6 = *&v27[5].__opaque[48];
    result = obj_modify(v27, 0, a3);
    if (!result)
    {
      pthread_mutex_lock(v27 + 6);
      pthread_mutex_lock(v27 + 9);
      v7 = *(a2 + 47);
      v8 = v7[9];
      v9 = v7[11];
      if (v9)
      {
        v10 = obj_oid(a2);
        log_err("%s:%d: %s file system %lld alloc block count is not zero: %lld/%lld\n", "spaceman_fs_bounds_clear", 9426, a2 + 4040, v10, v9, v8);
        v7 = *(a2 + 47);
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
        log_err("%s:%d: %s file system %lld fs reserve block count %lld larger than global fs reserve block count %lld\n", "spaceman_fs_bounds_clear", 9442, a2 + 4040, v12, v8, *(v6 + 184));
        v11 = *(v6 + 184);
        v8 = v11;
      }

      *(v6 + 184) = v11 - v8;
      v13 = *(v6 + 192);
      if (v13 < v9)
      {
        v14 = obj_oid(a2);
        log_err("%s:%d: %s file system %lld fs reserve alloc count %lld larger than global fs reserve alloc count %lld\n", "spaceman_fs_bounds_clear", 9449, a2 + 4040, v14, v9, *(v6 + 192));
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

      v18 = *(a2 + 47);
      *(v18 + 72) = 0;
      *(v18 + 80) = 0;
      obj_dirty(v15, a3, 0);
      fs_sb_dirty(a2, a3);
      v19 = v27;
      v20 = *(a2 + 47);
      v21 = *(v20 + 72);
      v22 = *(v20 + 88);
      v23 = v21 >= v22;
      v24 = v21 - v22;
      if (!v23)
      {
        v24 = 0;
      }

      v25 = *(a2 + 52);
      if (v24 >= *(a2 + 51))
      {
        v24 = *(a2 + 51);
      }

      v26 = *&v27[13].__opaque[24];
      *(a2 + 52) = v24;
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

  v9 = 0;
  v10 = 0;
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
      v5 = spaceman_check_allocation_status_internal(a1, v10, 2, *(v2 + 1240), *(v2 + 1248), &v11, &v9);
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

BOOL update_bm_hint(_BOOL8 result, _DWORD *a2, uint64_t a3)
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

uint64_t trim_time_tracking_check(uint64_t result, uint64_t a2)
{
  if (a2 && *(a2 + 62) == 1 && (*(a2 + 63) & 1) == 0)
  {
    v3 = result;
    v7.tv_sec = 0;
    v7.tv_nsec = 0;
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

uint64_t spaceman_ip_bm_block_free(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
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

uint64_t spaceman_decrement_free_queue_count(uint64_t result, uint64_t a2, unsigned int a3, unint64_t a4)
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

uint64_t spaceman_ip_extent_validate(uint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t *a5)
{
  v7 = *(*(a2 + 376) + 152);
  v9 = 0;
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

uint64_t spaceman_fq_trim_list_flush(uint64_t result, uint64_t a2, int a3, uint64_t a4, unint64_t a5)
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

  trim_time_tracking_check(v9, a4);
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
        result = spaceman_freed_internal(v9, a2, v19, v20, 1, a5);
      }

      else
      {
        result = spaceman_ip_freed(v9, a2, v19, v20, a5);
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

uint64_t spaceman_ip_freed(uint64_t *a1, void *a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = a2[47];
  v25 = 0;
  result = xid_is_current_tx(a1, a5);
  if (result)
  {
    v26 = 0;
    v23 = 0;
    v24 = 0;
    result = spaceman_ip_extent_validate(a1, a2, a3, a4, &v26);
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
            if (spaceman_ip_bm_block_alloc(a1, a2, a5, &v23, &v22) || spaceman_ip_bm_block_free(a1, a2, v17, a5))
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

uint64_t spaceman_freed_internal(uint64_t *a1, uint64_t a2, unint64_t a3, unint64_t a4, int a5, unint64_t a6)
{
  if (a4)
  {
    spaceman_handle_metazone_freed(a1, a2, a3);
  }

  v12 = spaceman_modify_bits(a1, 0, a2, a3, a4, a6, 1, a5);
  if (!v12)
  {
    spaceman_free_extent_cache_insert(*(a2 + 1576), 0, a3, a4);
  }

  return v12;
}

unint64_t spaceman_iterate_bitmap_hints(unint64_t result, unsigned int a2, unint64_t a3, void *a4, uint64_t a5)
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

uint64_t spaceman_ip_block_free(uint64_t *a1, pthread_mutex_t *a2, unint64_t a3, unint64_t a4)
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
      v8 = spaceman_fq_tree_insert(a1, a2, 0, a3, 1, a4);
    }

    pthread_mutex_unlock(a2 + 7);
  }

  return v8;
}

uint64_t supplemental_tree_destroy(char *a1, int a2, uint64_t a3, unint64_t a4, unint64_t a5, void *a6)
{
  v9 = a3;
  v25 = *MEMORY[0x277D85DE8];
  v11 = fext_tree_key_cmp;
  if (a3 == 5)
  {
    v12 = 0x20000001FLL;
  }

  else
  {
    if (a3 != 6)
    {
      log_err("%s:%d: %s unsupported tree type: %d\n", "supplemental_tree_get_descriptor", 64, a1 + 4040, a3);
      return 45;
    }

    v12 = 32;
    v11 = pfkur_tree_key_cmp;
  }

  v18 = 0;
  if (!a5)
  {
    tree = jfs_get_tree(a1, a3, a4, &v18);
    if (tree)
    {
      return tree;
    }

    goto LABEL_11;
  }

  v19[1] = 0;
  v20 = 0u;
  v24 = 0;
  v22 = 0u;
  v23 = 0u;
  v21 = 0u;
  v19[0] = v11;
  v19[2] = v12;
  if (a2 != 2)
  {
    tree = 22;
    goto LABEL_15;
  }

  tree = btree_get_extended(a1, a2 & 0xFFFF0000, a5, 0, 0, v19, 0, &v18);
  if (tree)
  {
LABEL_15:
    v16 = strerror(tree);
    log_err("%s:%d: %s Failed to get supplemental tree (type %d, oid %llu): %d (%s)\n", "supplemental_tree_destroy", 159, a1 + 4040, v9, a5, tree, v16);
    return tree;
  }

LABEL_11:
  v14 = btree_delete(v18, a4, a6);
  tree = v14;
  if (v14)
  {
    v15 = strerror(v14);
    log_err("%s:%d: %s Failed to delete supplemental tree (type %d): %d (%s)\n", "supplemental_tree_destroy", 167, a1 + 4040, v9, tree, v15);
  }

  obj_release(v18);
  return tree;
}

unint64_t fletcher64_set_cksum(unint64_t *a1, uint32x4_t *a2, unint64_t a3, unint64_t a4, int8x16_t a5, int8x16_t a6)
{
  result = fletcher64(a2, a3, a4, a5, a6);
  v8 = (HIDWORD(result) + result - 0xFFFFFFFF * ((((HIDWORD(result) + result) * 0x200000003uLL) >> 64) >> 1)) ^ 0xFFFFFFFF;
  *a1 = v8 | (~(v8 + result + ((((v8 + result) * 0x200000003uLL) >> 64) >> 1)) << 32);
  return result;
}

unint64_t fletcher64_verify_cksum(void *a1, uint32x4_t *a2, unint64_t a3, unint64_t a4, int8x16_t a5, int8x16_t a6)
{
  v7 = fletcher64(a2, a3, a4, a5, a6);
  v8 = (HIDWORD(v7) + v7 - 0xFFFFFFFF * ((((HIDWORD(v7) + v7) * 0x200000003uLL) >> 64) >> 1)) ^ 0xFFFFFFFF;
  return (v8 | (~(v8 + v7 + ((((v8 + v7) * 0x200000003uLL) >> 64) >> 1)) << 32)) ^ *a1;
}

uint64_t Base85::Decode(Base85 *this, const char *a2, uint64_t a3, unsigned __int8 *a4, uint64_t *a5, unint64_t *a6)
{
  *a5 = 0;
  v6 = 1;
  while (1)
  {
    v7 = a2;
    v8 = this;
    do
    {
      if (!v7)
      {
        return (v7 == 0) & v6;
      }

      v9 = *v8;
      if (v9 < 0)
      {
        return (--v7 == 0) & v6;
      }

      v8 = (v8 + 1);
      v10 = Base85::m_DecodeTable[v9];
      --v7;
    }

    while (v10 == 254);
    if (v10 == 253 || v10 == 255)
    {
      return (v7 == 0) & v6;
    }

    v11 = 0;
    v12 = v10;
    do
    {
      if (v7 == v11)
      {
        return 0;
      }

      v13 = v11[v8];
      if (v13 < 0)
      {
        return 0;
      }

      v14 = Base85::m_DecodeTable[v13];
      ++v11;
    }

    while (v14 == 254);
    v15 = 0;
    if (v14 == 253 || v14 == 255)
    {
      return v15;
    }

    v16 = v14;
    this = &a2[this];
    v17 = &v11[v8];
    a2 = (v7 - v11);
    while (a2)
    {
      v18 = *v17;
      if (v18 < 0)
      {
        return 0;
      }

      v17 = (v17 + 1);
      v19 = Base85::m_DecodeTable[v18];
      --a2;
      if (v19 != 254)
      {
        if (v19 != 255)
        {
          v19 = v19;
          this = v17;
          goto LABEL_21;
        }

        return 0;
      }
    }

    v19 = -3;
LABEL_21:
    while (a2)
    {
      v20 = *this;
      if (v20 < 0)
      {
        return 0;
      }

      this = (this + 1);
      v21 = Base85::m_DecodeTable[v20];
      --a2;
      if (v21 != 254)
      {
        if (v21 != 255)
        {
          v21 = v21;
          goto LABEL_27;
        }

        return 0;
      }
    }

    v21 = -3;
    do
    {
LABEL_27:
      if (!a2)
      {
        v23 = -3;
        goto LABEL_33;
      }

      v22 = *this;
      if (v22 < 0)
      {
        return 0;
      }

      this = (this + 1);
      v23 = Base85::m_DecodeTable[v22];
      --a2;
    }

    while (v23 == 254);
    if (v23 == 255)
    {
      return 0;
    }

    v23 = v23;
LABEL_33:
    if (v19 == -3)
    {
      v24 = -2;
    }

    else
    {
      v24 = -1;
    }

    if (v19 == -3)
    {
      v25 = -1;
    }

    else
    {
      v25 = 0;
    }

    if (v19 == -3)
    {
      v26 = 84;
    }

    else
    {
      v26 = v19;
    }

    if (v21 == -3)
    {
      v27 = v24;
    }

    else
    {
      v27 = v25;
    }

    if (v21 == -3)
    {
      v21 = 84;
    }

    v28 = v23 == -3;
    if (v23 == -3)
    {
      v23 = 84;
    }

    v29 = v27 - v28 + 4;
    v30 = bswap32(v23 + 85 * (v21 + 85 * (v26 + 85 * (v16 + 85 * v12))));
    do
    {
      v31 = *a5;
      if (*a5 >= a4)
      {
        v6 = 0;
      }

      else
      {
        *a5 = v31 + 1;
        *(a3 + v31) = v30;
      }

      v30 >>= 8;
      --v29;
    }

    while (v29);
  }
}

uint64_t nx_checkpoint_find_highest_xid(uint64_t *a1, int *a2, unint64_t *a3)
{
  v6 = _apfs_malloc_typed(*(a1[47] + 36), 0xD3A61ACFuLL);
  if (!v6)
  {
    return 12;
  }

  v7 = v6;
  v19 = 0;
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
      if (nx_checkpoint_desc_block_address(a1, v9, &v19) || dev_read(a1[48]))
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
  v24 = 0;
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
    if (nx_checkpoint_desc_block_address(a1, v13, &v27) || dev_read(*(a1 + 384)))
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
          if (nx_metadata_range_add(a1, 0, 1, 0, 1) || nx_metadata_range_add(a1, *(a4 + 112), *(a4 + 104) & 0x7FFFFFFF, *(a4 + 104) < 0, 0) || nx_metadata_range_add(a1, *(a4 + 120), *(a4 + 108) & 0x7FFFFFFF, *(a4 + 108) < 0, 0))
          {
            log_err("%s:%d: %s xid %lld at index %d failed to load checkpoint metadata ranges (overlap?): %d\n");
          }

          else if (nx_checkpoint_validate_checkpoint_map_blocks(a1, a4))
          {
            log_err("%s:%d: %s xid %lld validation failed for checkpoint at index %d: %d\n");
          }

          else
          {
            if (!nx_checkpoint_load_data(a1, a4, &v26, &v25))
            {
              memcpy(*(a1 + 376), a4, *(a2 + 36));
              *(*(a1 + 392) + 400) = *(*(a1 + 376) + 88);
              if (nx_checkpoint_traverse(a1, 0, 2))
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

              if (spaceman_get(a1, &v24))
              {
                log_err("%s:%d: %s xid %lld failed to get spaceman: %d\n");
              }

              else
              {
                v19 = nx_metadata_range_add(a1, *(v24[47] + 168), *(v24[47] + 164) & 0x7FFFFFFF, *(v24[47] + 164) < 0, 0);
                if (v19)
                {
                  obj_release(v24);
                }

                else
                {
                  v19 = nx_metadata_range_add(a1, *(v24[47] + 176), *(v24[47] + 152), *(v24[47] + 152) < 0, 0);
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

uint64_t nx_checkpoint_validate_checkpoint_map_blocks(uint64_t *a1, unsigned int *a2)
{
  v4 = _apfs_malloc_typed(a2[9], 0x9BA6ADA8uLL);
  if (!v4)
  {
    return 12;
  }

  v5 = v4;
  v12 = 0;
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
      v8 = nx_checkpoint_desc_block_address(a1, (v7 + a2[34]) % (a2[26] & 0x7FFFFFFF), &v12);
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

uint64_t nx_checkpoint_load_data(uint64_t a1, uint64_t a2, unint64_t *a3, void *a4)
{
  v45[0] = 0;
  v6 = *(*(a1 + 376) + 36);
  v42 = 0;
  v7 = _apfs_malloc_typed(v6, 0xB5246107uLL);
  if (v7)
  {
    v8 = v7;
    v43 = 0;
    v44 = 0;
    v40 = 0;
    v41 = 0;
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
        v12 = nx_checkpoint_desc_block_address(a1, v11, &v41);
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
        v18 = nx_checkpoint_data_block_address(a1, v10, &v41, &v40);
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
              v28 = v42[7];
              v29 = v28[32];
              if (v29 <= v28[27])
              {
                v29 = v28[27];
              }

              *a3 = v29;
              v30 = v28[37];
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