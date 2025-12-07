uint64_t ofi_wait_add_fid(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  pthread_mutex_lock((a1 + 104));
  v8 = (a1 + 88);
  while (1)
  {
    v8 = *v8;
    if (v8 == (a1 + 88))
    {
      break;
    }

    if (*(v8 + 3) == a2)
    {
      v9 = 0;
      atomic_fetch_add(v8 + 10, 1u);
      goto LABEL_29;
    }
  }

  v10 = malloc_type_calloc(1uLL, 0x48uLL, 0x10A0040CC3EC32EuLL);
  if (v10)
  {
    v11 = v10;
    v10[2] = a4;
    v10[3] = a2;
    *(v10 + 9) = a3;
    *(v10 + 10) = 1;
    v12 = *(a1 + 64);
    if (v12 != 6 && v12 != 3)
    {
LABEL_28:
      v9 = 0;
      v29 = *(a1 + 96);
      v30 = *v29;
      *v11 = *v29;
      v11[1] = v29;
      *(v30 + 8) = v11;
      *v29 = v11;
      goto LABEL_29;
    }

    v14 = (*(*(a2 + 16) + 24))(a2, 16, v10 + 4);
    v15 = *(v11 + 8);
    if (v15 == 3)
    {
      v20 = malloc_type_calloc(1uLL, 8uLL, 0x100004000313F17uLL);
      if (v20)
      {
        v21 = v20;
        v22 = (*(*(v11[3] + 16) + 24))();
        if (v22)
        {
          v9 = v22;
          if (fi_log_enabled(*(a1 + 56), 0, 3))
          {
            v23 = *__error();
            v24 = *(a1 + 56);
            v25 = fi_strerror(v9);
            fi_log(v24, 0, 3, "ofi_wait_get_fd", 785, "unable to get wait fd %s\n", v25);
            *__error() = v23;
          }

          free(v21);
        }

        else
        {
          v26 = 0;
          v21[2] = *(v11 + 9);
          v27 = v21 + 2;
          v11[7] = 1;
          v11[8] = v21;
          while (1)
          {
            v28 = ofi_wait_fdset_add(a1, *(v27 - 1), *v27, *(v11[3] + 8));
            if (v28)
            {
              break;
            }

            v27 += 4;
            if (++v26 >= v11[7])
            {
              goto LABEL_28;
            }
          }

          v9 = v28;
          if (fi_log_enabled(*(a1 + 56), 0, 3))
          {
            v32 = *__error();
            v33 = *(a1 + 56);
            v34 = fi_strerror(v9);
            fi_log(v33, 0, 3, "ofi_wait_get_fid_fds", 832, "unable to add fd %s\n", v34);
            *__error() = v32;
          }
        }
      }

      else
      {
        v9 = 4294967284;
      }
    }

    else
    {
      if (v15 == 6)
      {
        goto LABEL_28;
      }

      v9 = v14;
      if (fi_log_enabled(*(a1 + 56), 0, 3))
      {
        v16 = *__error();
        v17 = *(a1 + 56);
        v18 = *(v11 + 8);
        v19 = fi_strerror(v9);
        fi_log(v17, 0, 3, "ofi_wait_get_fid_fds", 813, "unsupported wait object %d (ret: %s)\n", v18, v19);
        *__error() = v16;
      }

      if (!v9)
      {
        goto LABEL_28;
      }
    }

    free(v11);
  }

  else
  {
    v9 = 4294967284;
  }

LABEL_29:
  pthread_mutex_unlock((a1 + 104));
  return v9;
}

uint64_t util_wait_fd_close(uint64_t a1)
{
  pthread_mutex_lock((a1 + 104));
  for (i = *(a1 + 248); i != (a1 + 248); i = *(a1 + 248))
  {
    v3 = *i;
    v4 = i[1];
    *v4 = *i;
    *(v3 + 8) = v4;
    ofi_wait_fdset_del(a1, *(i + 4));
    free(i);
  }

  pthread_mutex_unlock((a1 + 104));
  v5 = fi_wait_cleanup(a1);
  if (!v5)
  {
    ofi_wait_fdset_del(a1, *(a1 + 232));
    close(*(a1 + 232));
    close(*(a1 + 236));
    pthread_mutex_destroy((a1 + 168));
    if (*(a1 + 64) == 3)
    {
      close(*(a1 + 264));
    }

    else
    {
      ofi_pollfds_close(*(a1 + 264), v6);
    }

    free(a1);
  }

  return v5;
}

uint64_t util_wait_fd_control(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 16)
  {
    v5 = 0;
    v6 = *(a1 + 64);
    goto LABEL_6;
  }

  if (a2 == 5)
  {
    if (*(a1 + 64) == 3)
    {
      v5 = 0;
      v6 = *(a1 + 264);
LABEL_6:
      *a3 = v6;
      return v5;
    }

    pthread_mutex_lock((a1 + 104));
    v8 = *(a1 + 264);
    v9 = *(v8 + 4);
    if (*(a3 + 8) >= v9)
    {
      memcpy(*(a3 + 16), *(v8 + 8), 8 * v9);
      v5 = 0;
    }

    else
    {
      v5 = 4294967039;
    }

    *a3 = *(a1 + 272);
    *(a3 + 8) = *(*(a1 + 264) + 4);
    pthread_mutex_unlock((a1 + 104));
  }

  else
  {
    if (fi_log_enabled(*(a1 + 56), 2, 1))
    {
      v7 = *__error();
      fi_log(*(a1 + 56), 2, 1, "util_wait_fd_control", 449, "unsupported command\n");
      *__error() = v7;
    }

    return 4294967218;
  }

  return v5;
}

uint64_t util_wait_fd_run(uint64_t a1, int a2)
{
  v2 = a2;
  if (a2 < 0)
  {
    v4 = 0;
  }

  else
  {
    v4 = ofi_gettime_ms() + a2;
  }

  memset(&v11, 0, sizeof(v11));
  do
  {
    v5 = (*(a1 + 80))(a1);
    if (v5)
    {
      if (v5 == -35)
      {
        return 0;
      }

      else
      {
        return v5;
      }
    }

    if ((v2 & 0x80000000) == 0)
    {
      v2 = v4 - ofi_gettime_ms();
      if (v2 < 1)
      {
        return 4294967236;
      }
    }

    if (*(a1 + 64) == 3)
    {
      v6 = *(a1 + 264);
      v12 = 0;
      v13 = 0;
      if (v2 < 0)
      {
        v7 = 0;
      }

      else
      {
        v12 = v2 / 0x3E8uLL;
        v13 = 1000000 * (v2 % 0x3E8u);
        v7 = &v12;
      }

      v8 = kevent(v6, 0, 0, &v11, 1, v7);
      if ((v8 & 0x80000000) != 0)
      {
        v8 = -*__error();
      }
    }

    else
    {
      v8 = ofi_pollfds_wait(*(a1 + 264), &v11, 1, v2);
    }

    if (v8 > 0)
    {
      return 0;
    }
  }

  while ((v8 & 0x80000000) == 0);
  if (fi_log_enabled(*(a1 + 56), 0, 1))
  {
    v9 = *__error();
    fi_log(*(a1 + 56), 0, 1, "util_wait_fd_run", 406, "poll failed\n", *&v11.ident, *&v11.data);
    *__error() = v9;
  }

  return v8;
}

uint64_t util_wait_yield_close(uint64_t a1)
{
  v2 = fi_wait_cleanup(a1);
  if (!v2)
  {
    pthread_mutex_destroy((a1 + 176));
    free(a1);
  }

  return v2;
}

uint64_t util_wait_yield_run(uint64_t a1, int a2)
{
  v2 = a2;
  if (a2 < 0)
  {
    v4 = 0;
  }

  else
  {
    v4 = ofi_gettime_ms() + a2;
  }

  v5 = (a1 + 176);
  pthread_mutex_lock((a1 + 176));
  v6 = *(a1 + 168);
  pthread_mutex_unlock((a1 + 176));
  if (v6)
  {
LABEL_5:
    pthread_mutex_lock((a1 + 176));
    v7 = 0;
    *(a1 + 168) = 0;
LABEL_14:
    pthread_mutex_unlock(v5);
  }

  else
  {
    while (1)
    {
      if ((v2 & 0x80000000) == 0)
      {
        v2 = v4 - ofi_gettime_ms();
        if (v2 < 1)
        {
          return 4294967236;
        }
      }

      pthread_mutex_lock((a1 + 104));
      v8 = (a1 + 88);
      while (1)
      {
        v8 = *v8;
        if (v8 == (a1 + 88))
        {
          break;
        }

        v9 = (v8[2])(v8[3]);
        if (v9)
        {
          v7 = v9;
          v5 = (a1 + 104);
          goto LABEL_14;
        }
      }

      pthread_mutex_unlock((a1 + 104));
      sched_yield();
      pthread_mutex_lock((a1 + 176));
      v10 = *(a1 + 168);
      pthread_mutex_unlock((a1 + 176));
      if (v10)
      {
        goto LABEL_5;
      }
    }
  }

  return v7;
}

uint64_t ofi_fabric_insert(uint64_t a1)
{
  pthread_mutex_lock(&stru_2A1893078);
  v2 = off_2A1893668;
  v3 = *off_2A1893668;
  *(a1 + 40) = *off_2A1893668;
  *(a1 + 48) = v2;
  a1 += 40;
  *(v3 + 8) = a1;
  *v2 = a1;

  return pthread_mutex_unlock(&stru_2A1893078);
}

uint64_t ofi_fabric_remove(uint64_t a1)
{
  pthread_mutex_lock(&stru_2A1893078);
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  *v3 = v2;
  *(v2 + 8) = v3;

  return pthread_mutex_unlock(&stru_2A1893078);
}

uint64_t fid_list_search(void *a1, uint64_t a2)
{
  v4 = a1;
  while (1)
  {
    v4 = *v4;
    if (v4 == a1)
    {
      break;
    }

    if (v4[2] == a2)
    {
      return 4294967259;
    }
  }

  v6 = malloc_type_calloc(1uLL, 0x18uLL, 0x20040960023A9uLL);
  if (!v6)
  {
    return 4294967284;
  }

  v7 = v6;
  result = 0;
  v7[2] = a2;
  v8 = a1[1];
  v9 = *v8;
  *v7 = *v8;
  v7[1] = v8;
  *(v9 + 8) = v7;
  *v8 = v7;
  return result;
}

uint64_t fid_list_insert(void *a1, pthread_mutex_t *a2, uint64_t a3)
{
  if (a2)
  {
    pthread_mutex_lock(a2);
    v6 = fid_list_search(a1, a3);
    pthread_mutex_unlock(a2);
  }

  else
  {
    v6 = fid_list_search(a1, a3);
  }

  if (v6 == -37)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

uint64_t fid_list_insert2(void *a1, uint64_t a2, uint64_t a3)
{
  (*(a2 + 80))(a2 + 8);
  v6 = fid_list_search(a1, a3);
  (*(a2 + 88))(a2 + 8);
  if (v6 == -37)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

void fid_list_remove(void *a1, pthread_mutex_t *a2, uint64_t a3)
{
  if (a2)
  {
    pthread_mutex_lock(a2);
  }

  v6 = a1;
  while (1)
  {
    v6 = *v6;
    if (v6 == a1)
    {
      break;
    }

    if (v6[2] == a3)
    {
      v7 = *v6;
      v8 = v6[1];
      *v8 = *v6;
      v7[1] = v8;
      if (!a2)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  v6 = 0;
  if (!a2)
  {
    goto LABEL_10;
  }

LABEL_9:
  pthread_mutex_unlock(a2);
LABEL_10:
  if (v6)
  {

    free(v6);
  }
}

void fid_list_remove2(void *a1, uint64_t a2, uint64_t a3)
{
  (*(a2 + 80))(a2 + 8);
  v6 = a1;
  while (1)
  {
    v6 = *v6;
    if (v6 == a1)
    {
      break;
    }

    if (v6[2] == a3)
    {
      v7 = *v6;
      v8 = v6[1];
      *v8 = *v6;
      v7[1] = v8;
      (*(a2 + 88))(a2 + 8);

      free(v6);
      return;
    }
  }

  v9 = *(a2 + 88);

  v9(a2 + 8);
}

uint64_t util_getinfo(uint64_t *a1, uint64_t a2, char *a3, char *a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  v12 = a2;
  v14 = *a1;
  if (!a4 && !a3 && (a5 & 0x200000000000000) != 0)
  {
    if (fi_log_enabled(*a1, 2, 0))
    {
      v15 = *__error();
      fi_log(v14, 2, 0, "util_getinfo", 219, "FI_SOURCE set, but no node or service\n");
      *__error() = v15;
    }

    return 4294967274;
  }

  v16 = ofi_prov_check_dup_info(a1, a2, a6, a7);
  if (v16)
  {
    return v16;
  }

  v58 = a3;
  v56 = v14;
  ofi_alter_info(*a7, a6, v12);
  v55 = *a7;
  if (!*a7)
  {
LABEL_58:
    v16 = 0;
    *a7 = v55;
    return v16;
  }

  v57 = (a3 | a4) != 0;
  v17 = *a7;
  while (1)
  {
    v18 = *(v17[13] + 8);
    v19 = *a1;
    pthread_mutex_lock(&stru_2A1893078);
    for (i = fabric_list; i != &fabric_list; i = *i)
    {
      if (v19 == *(i + 12) && !strcmp(*(i + 11), v18))
      {
        if (i)
        {
          **(*a7 + 104) = i - 40;
          pthread_mutex_lock((i + 16));
          v21 = *a7;
          v22 = i + 104;
          while (1)
          {
            v22 = *v22;
            if (v22 == i + 104)
            {
              break;
            }

            if (util_find_domain(v22, v21))
            {
              if (v22)
              {
                **(v21 + 96) = v22 - 40;
              }

              break;
            }
          }

          pthread_mutex_unlock((i + 16));
        }

        break;
      }
    }

    pthread_mutex_unlock(&stru_2A1893078);
    if ((a5 & 0x200000000000000) != 0)
    {
      addr = ofi_get_addr((*a7 + 24), a5, v58, a4, (*a7 + 48), (*a7 + 32));
      if (!addr)
      {
        if (!a6)
        {
          goto LABEL_42;
        }

        v24 = *(a6 + 56) != 0;
        goto LABEL_37;
      }

      v16 = addr;
      if (!fi_log_enabled(v14, 2, 0))
      {
        goto LABEL_67;
      }

      v53 = *__error();
      fi_log(v56, 2, 0, "util_getinfo", 266, "source address not available\n", v55);
      goto LABEL_63;
    }

    if (v57)
    {
      v23 = ofi_get_addr((*a7 + 24), a5, v58, a4, (*a7 + 56), (*a7 + 40));
      if (!v23)
      {
        if (!a6)
        {
          goto LABEL_42;
        }

        v24 = 0;
        goto LABEL_32;
      }

      v16 = v23;
      if (!fi_log_enabled(v14, 2, 0))
      {
        goto LABEL_67;
      }

      v53 = *__error();
      fi_log(v56, 2, 0, "util_getinfo", 279, "cannot resolve dest address\n", v55);
LABEL_63:
      *__error() = v53;
      goto LABEL_67;
    }

    if (!a6)
    {
      goto LABEL_42;
    }

    v24 = *(a6 + 56) != 0;
LABEL_32:
    v26 = *(a6 + 48);
    if (v26)
    {
      v27 = *(a6 + 32);
      v28 = malloc_type_malloc(v27, 0x2A1BF8CCuLL);
      v29 = v28;
      if (v28)
      {
        memcpy(v28, v26, v27);
      }

      *(*a7 + 48) = v29;
      v30 = *a7;
      if (!*(*a7 + 48))
      {
        goto LABEL_66;
      }

      *(v30 + 32) = *(a6 + 32);
      *(v30 + 24) = *(a6 + 24);
    }

LABEL_37:
    if (v24)
    {
      v31 = *(a6 + 56);
      v32 = *(a6 + 40);
      v33 = malloc_type_malloc(v32, 0x2A1BF8CCuLL);
      v34 = v33;
      if (v33)
      {
        memcpy(v33, v31, v32);
      }

      *(*a7 + 56) = v34;
      v35 = *a7;
      if (!*(*a7 + 56))
      {
        goto LABEL_66;
      }

      *(v35 + 40) = *(a6 + 40);
      *(v35 + 24) = *(a6 + 24);
    }

LABEL_42:
    v36 = *a7;
    v37 = *(*a7 + 56);
    if (v37 && !*(v36 + 48) && ofi_get_src_addr(*(v36 + 24), v37, *(v36 + 40), v36 + 48, (v36 + 32)) && fi_log_enabled(v14, 2, 0))
    {
      v52 = *__error();
      fi_log(v14, 2, 0, "util_getinfo", 317, "cannot resolve source address\n");
      *__error() = v52;
    }

    if (!a6)
    {
      goto LABEL_53;
    }

    v38 = *a7;
    v39 = *(a6 + 96);
    if (v39)
    {
      v40 = *(v39 + 152);
      if (v40)
      {
        break;
      }
    }

LABEL_49:
    v46 = *(a6 + 88);
    if (v46)
    {
      v47 = *(v46 + 88);
      if (v47)
      {
        v48 = *(v46 + 80);
        v49 = malloc_type_malloc(v48, 0x2A1BF8CCuLL);
        if (!v49)
        {
          *(*(v38 + 88) + 88) = 0;
          goto LABEL_66;
        }

        v50 = v49;
        memcpy(v49, v47, v48);
        v51 = *(v38 + 88);
        *(v51 + 80) = *(*(a6 + 88) + 80);
        *(v51 + 88) = v50;
      }
    }

LABEL_53:
    v17 = **a7;
    *a7 = v17;
    if (!v17)
    {
      goto LABEL_58;
    }
  }

  v41 = *(v39 + 160);
  v42 = malloc_type_malloc(v41, 0x2A1BF8CCuLL);
  if (v42)
  {
    v43 = v42;
    memcpy(v42, v40, v41);
    v44 = *(v38 + 96);
    v45 = *(*(a6 + 96) + 160);
    *(v44 + 152) = v43;
    *(v44 + 160) = v45;
    goto LABEL_49;
  }

  *(*(v38 + 96) + 152) = 0;
LABEL_66:
  v16 = 4294967284;
LABEL_67:
  fi_freeinfo(*a7);
  return v16;
}

uint64_t ofi_ip_getinfo(uint64_t *a1, uint64_t a2, char *a3, char *a4, uint64_t a5, uint64_t a6, __int128 **a7)
{
  v7 = a7;
  result = util_getinfo(a1, a2, a3, a4, a5, a6, a7);
  if (!result)
  {
    v11 = *v7;
    if (!*v7)
    {
      return 0;
    }

    v27 = 0;
    v28 = 0;
    v12 = v7;
    v26 = v7;
    while (1)
    {
      if (*(v11 + 48))
      {
        v27 = 0;
        v28 = 0;
        v13 = &v27;
        ofi_get_list_of_addr(*a1, "iface", &v27);
        v14 = *(*v7 + 6);
        while (1)
        {
          v13 = *v13;
          if (!v13)
          {
            break;
          }

          if (util_match_addr(v13, v14))
          {
            util_set_netif_names(v11, v13);
            break;
          }
        }

        v15 = &v27;
        goto LABEL_10;
      }

      if (*(v11 + 56))
      {
        goto LABEL_12;
      }

      v29[0] = 0;
      v29[1] = 0;
      ofi_get_list_of_addr(*a1, "iface", v29);
      v16 = v29[0];
      if (!v29[0])
      {
        v15 = v29;
LABEL_10:
        ofi_free_list_of_addr(v15);
        goto LABEL_12;
      }

      v17 = 0;
      v18 = 0;
      while (1)
      {
        v19 = *(v16 + 57);
        if (v19 == 2)
        {
          break;
        }

        if (v19 == 30)
        {
          v19 = 3;
          v20 = 28;
          if (!a6)
          {
            goto LABEL_24;
          }

          goto LABEL_21;
        }

LABEL_22:
        v21 = v18;
LABEL_32:
        v16 = *v16;
        v18 = v21;
        if (!v16)
        {
          goto LABEL_36;
        }
      }

      v20 = 16;
      if (!a6)
      {
        goto LABEL_24;
      }

LABEL_21:
      if (((*(v16 + 304) ^ 0x18000000000000) & *(a6 + 8)) != 0 || !ofi_match_addr_format(v19, *(a6 + 24)))
      {
        goto LABEL_22;
      }

LABEL_24:
      v22 = fi_dupinfo(v11);
      if (v22)
      {
        v21 = v22;
        if (v17)
        {
          *v18 = v22;
        }

        else
        {
          v17 = v22;
          if (fi_log_enabled(*a1, 2, 0))
          {
            v23 = *__error();
            fi_log(*a1, 2, 0, "util_getinfo_ifs", 404, "Chosen addr for using: %s, speed %zu\n", (v16 + 8), *(v16 + 104));
            *__error() = v23;
            v17 = v21;
          }
        }

        *(v21 + 8) = *(v21 + 8) & 0xFFE7FFFFFFFFFFFFLL | *(v16 + 304);
        v24 = malloc_type_malloc(v20, 0x2A1BF8CCuLL);
        v25 = v24;
        if (v24)
        {
          memcpy(v24, (v16 + 56), v20);
          *(v21 + 32) = v20;
          *(v21 + 24) = v19;
        }

        *(v21 + 48) = v25;
        util_set_netif_names(v21, v16);
        goto LABEL_32;
      }

      v21 = v18;
LABEL_36:
      ofi_free_list_of_addr(v29);
      v7 = v26;
      if (v17)
      {
        if (v17 != v11)
        {
          *v21 = **v12;
          *v12 = v17;
          *v11 = 0;
          fi_freeinfo(v11);
          v11 = v21;
        }
      }

LABEL_12:
      v12 = v11;
      v11 = *v11;
      if (!v11)
      {
        return 0;
      }
    }
  }

  return result;
}

BOOL util_match_addr(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 57);
  if (v2 != *(a2 + 1))
  {
    return 0;
  }

  if (v2 == 30 || v2 == 27)
  {
    return *(a1 + 64) == *(a2 + 8) && *(a1 + 72) == *(a2 + 16);
  }

  if (v2 != 2)
  {
    return 0;
  }

  return *(a1 + 60) == *(a2 + 4);
}

void util_set_netif_names(uint64_t a1, uint64_t a2)
{
  v4 = strdup((a2 + 112));
  if (v4)
  {
    v5 = v4;
    free(*(*(a1 + 104) + 8));
    *(*(a1 + 104) + 8) = v5;
  }

  v6 = strdup((a2 + 208));
  if (v6)
  {
    v7 = v6;
    free(*(*(a1 + 96) + 8));
    *(*(a1 + 96) + 8) = v7;
  }
}

uint64_t udpx_cq_open(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = malloc_type_calloc(1uLL, 0x158uLL, 0x10B20407A264080uLL);
  if (!v8)
  {
    return 4294967284;
  }

  v9 = v8;
  v10 = ofi_cq_init(&udpx_prov, a1, a2, v8, ofi_cq_progress, a4);
  if (v10)
  {
    free(v9);
  }

  else
  {
    *a3 = v9;
    v9[2] = &udpx_cq_fi_ops;
  }

  return v10;
}

uint64_t udpx_cq_close(void *a1, uint64_t a2)
{
  v3 = ofi_cq_cleanup(a1, a2);
  if (!v3)
  {
    free(a1);
  }

  return v3;
}

uint64_t udpx_fabric(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = malloc_type_calloc(1uLL, 0xA0uLL, 0x10F004031851044uLL);
  if (!v6)
  {
    return 4294967284;
  }

  v7 = v6;
  result = ofi_fabric_init(&udpx_prov, off_2A18938B8, a1, v6, a3);
  if (!result)
  {
    *a2 = v7;
    v7[2] = &udpx_fabric_fi_ops;
    *(*a2 + 24) = &udpx_fabric_ops;
  }

  return result;
}

uint64_t udpx_fabric_close(void *a1)
{
  v2 = ofi_fabric_close(a1);
  if (!v2)
  {
    free(a1);
  }

  return v2;
}

uint64_t udpx_endpoint(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = malloc_type_calloc(1uLL, 0x1D0uLL, 0x10A2040039844EFuLL);
  if (!v8)
  {
    return 4294967284;
  }

  v9 = v8;
  v10 = ofi_endpoint_init(a1, &udpx_util_prov, a2, v8, a4, udpx_ep_progress);
  if (v10)
  {
LABEL_26:
    free(v9);
    return v10;
  }

  *(v9 + 456) = 0;
  v11 = *(a2[10] + 48);
  v12 = 2 << ~__clz(v11 - 1);
  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = *(a2[10] + 48);
  }

  v14 = malloc_type_calloc(1uLL, 80 * v13 + 32, 0x1000040E0EAB150uLL);
  if (!v14)
  {
    *(v9 + 440) = 0;
    v10 = 4294967284;
LABEL_25:
    ofi_endpoint_close(v9, v15);
    goto LABEL_26;
  }

  v16 = 2 << ~__clz(v13 - 1);
  if (v13 >= 2 && v16 != v13)
  {
    udpx_endpoint_cold_1();
  }

  *v14 = v13;
  v14[1] = v13 - 1;
  v14[2] = 0;
  v14[3] = 0;
  *(v9 + 440) = v14;
  v18 = a2[6];
  if (v18)
  {
    v19 = *(v18 + 1);
  }

  else
  {
    v19 = 2;
  }

  v20 = socket(v19, 2, 17);
  *(v9 + 448) = v20;
  if (v20 < 0)
  {
    v10 = -*__error();
  }

  else
  {
    v21 = a2[6];
    if (!v21)
    {
      goto LABEL_21;
    }

    v10 = udpx_setname(v9, v21, a2[4]);
    if (!v10)
    {
      v20 = *(v9 + 448);
LABEL_21:
      v22 = fi_fd_nonblock(v20);
      if (v22)
      {
        v10 = v22;
        close(*(v9 + 448));
        free(*(v9 + 440));
        goto LABEL_25;
      }

      goto LABEL_28;
    }
  }

  free(*(v9 + 440));
  if (v10)
  {
    goto LABEL_25;
  }

LABEL_28:
  v10 = 0;
  *a3 = v9;
  *(v9 + 16) = &udpx_ep_fi_ops;
  *(*a3 + 24) = &udpx_ep_ops;
  *(*a3 + 32) = &udpx_cm_ops;
  v24 = &udpx_msg_ops;
  if ((*(a2[9] + 16) & 0x20) != 0)
  {
    v24 = &udpx_msg_mcast_ops;
  }

  *(*a3 + 40) = v24;
  return v10;
}

uint64_t udpx_ep_progress(uint64_t a1)
{
  memset(v7, 0, sizeof(v7));
  v8 = 0;
  v9.msg_name = v7;
  memset(&v9.msg_namelen + 1, 0, 36);
  v9.msg_namelen = 28;
  (*(*(a1 + 120) + 248))(*(a1 + 120) + 176);
  v2 = *(a1 + 440);
  v3 = v2[2];
  if (v2[3] != v3)
  {
    v4 = &v2[10 * (v2[1] & v3)];
    v9.msg_iov = (v4 + 5);
    v9.msg_iovlen = *(v4 + 104);
    v5 = recvmsg(*(a1 + 448), &v9, 0);
    if ((v5 & 0x8000000000000000) == 0)
    {
      (*(a1 + 424))(a1, v4[4], 0, v5, 0, v7);
      ++*(*(a1 + 440) + 16);
    }
  }

  return (*(*(a1 + 120) + 256))(*(a1 + 120) + 176);
}

uint64_t udpx_setname(uint64_t a1, const sockaddr *a2, socklen_t a3)
{
  result = bind(*(a1 + 448), a2, a3);
  if (result)
  {
    if (fi_log_enabled(&udpx_prov, 0, 3))
    {
      v5 = *__error();
      v6 = *__error();
      v7 = __error();
      v8 = strerror(*v7);
      fi_log(&udpx_prov, 0, 3, "udpx_setname", 49, "bind %d (%s)\n", v6, v8);
      *__error() = v5;
    }

    return -*__error();
  }

  else
  {
    *(a1 + 452) = 1;
  }

  return result;
}

uint64_t udpx_ep_close(uint64_t a1)
{
  v15 = *MEMORY[0x29EDCA608];
  if (atomic_load((a1 + 456)))
  {
    if (fi_log_enabled(&udpx_prov, 0, 3))
    {
      v2 = *__error();
      fi_log(&udpx_prov, 0, 3, "udpx_ep_close", 556, "EP busy\n");
      *__error() = v2;
    }

    return 4294967280;
  }

  else
  {
    v5 = *(a1 + 120);
    if (v5)
    {
      v6 = *(v5 + 40);
      if (v6)
      {
        v7 = *(v6 + 264);
        changelist.ident = *(a1 + 448);
        *&changelist.filter = 196607;
        memset(&changelist.fflags, 0, 20);
        ident = changelist.ident;
        v11 = 196606;
        v13 = 0;
        v12 = 0;
        v14 = 0;
        if (kevent(v7, &changelist, 2, 0, 0, 0) < 0 && *__error() != 2)
        {
          __error();
        }

        v5 = *(a1 + 120);
      }

      fid_list_remove2((v5 + 56), v5 + 72, a1);
    }

    free(*(a1 + 440));
    close(*(a1 + 448));
    ofi_endpoint_close(a1, v8);
    free(a1);
    return 0;
  }
}

uint64_t udpx_ep_bind(uint64_t a1, atomic_uint *a2, uint64_t a3)
{
  v20 = *MEMORY[0x29EDCA608];
  result = ofi_ep_bind_valid(&udpx_prov, a2, a3);
  if (!result)
  {
    v7 = *a2;
    if (*a2 == 14)
    {
      result = ofi_check_bind_cq_flags(a1, a2, a3);
      if (!result)
      {
        if ((a3 & 0x800) != 0)
        {
          *(a1 + 136) = a2;
          atomic_fetch_add(a2 + 12, 1u);
          v8 = udpx_tx_comp_signal;
          if (!*(a2 + 5))
          {
            v8 = udpx_tx_comp;
          }

          *(a1 + 432) = v8;
        }

        if ((a3 & 0x400) == 0)
        {
          return 0;
        }

        *(a1 + 120) = a2;
        atomic_fetch_add(a2 + 12, 1u);
        v9 = *(a2 + 5);
        if (v9)
        {
          v10 = udpx_rx_src_comp_signal;
          if ((*(*(a2 + 4) + 200) & 0x200000000000000) == 0)
          {
            v10 = udpx_rx_comp_signal;
          }

          *(a1 + 424) = v10;
          v11 = *(v9 + 264);
          changelist.ident = *(a1 + 448);
          *&changelist.filter = 0x1FFFFLL;
          changelist.data = 0;
          changelist.udata = a1;
          ident = changelist.ident;
          v17 = 131070;
          v18 = 0;
          v19 = a1;
          if (kevent(v11, &changelist, 2, 0, 0, 0) < 0)
          {
            v12 = *__error();
            if (v12)
            {
              return -v12;
            }
          }
        }

        else
        {
          v14 = udpx_rx_src_comp;
          if ((*(*(a2 + 4) + 200) & 0x200000000000000) == 0)
          {
            v14 = udpx_rx_comp;
          }

          *(a1 + 424) = v14;
        }

        result = fid_list_insert2(a2 + 7, (a2 + 18), a1);
        if (!result)
        {
          return 0;
        }
      }
    }

    else if (v7 == 13)
    {

      return ofi_ep_bind_eq(a1, a2);
    }

    else if (v7 == 11)
    {

      return ofi_ep_bind_av(a1, a2);
    }

    else
    {
      if (fi_log_enabled(&udpx_prov, 0, 3))
      {
        v13 = *__error();
        fi_log(&udpx_prov, 0, 3, "udpx_ep_bind", 654, "invalid fid class\n");
        *__error() = v13;
      }

      return 4294967274;
    }
  }

  return result;
}

uint64_t udpx_ep_ctrl(uint64_t a1, int a2)
{
  v11 = *MEMORY[0x29EDCA608];
  if (a2 != 6)
  {
    return 4294967218;
  }

  if (ofi_needs_rx(*(a1 + 280)) && !*(a1 + 120) || ofi_needs_tx(*(a1 + 280)) && !*(a1 + 136))
  {
    return 4294967033;
  }

  if (!*(a1 + 88))
  {
    return 4294967029;
  }

  if (!*(a1 + 452))
  {
    v8 = 0;
    memset(&v9, 0, sizeof(v9));
    v9.ai_socktype = 2;
    if (gethostname(v10, 0xFFuLL))
    {
      v4 = "127.0.0.1";
    }

    else
    {
      v4 = v10;
    }

    if (getaddrinfo(v4, 0, &v9, &v8))
    {
      if (fi_log_enabled(&udpx_prov, 0, 3))
      {
        v5 = *__error();
        fi_log(&udpx_prov, 0, 3, "udpx_bind_src_addr", 674, "getaddrinfo failed\n");
        *__error() = v5;
      }
    }

    else
    {
      v6 = v8;
      if (!v8)
      {
        goto LABEL_23;
      }

      while (v6->ai_family != 2)
      {
        v6 = v6->ai_next;
        if (!v6)
        {
          goto LABEL_23;
        }
      }

      if (udpx_setname(a1, v6->ai_addr, v6->ai_addrlen))
      {
LABEL_23:
        if (fi_log_enabled(&udpx_prov, 0, 3))
        {
          v7 = *__error();
          fi_log(&udpx_prov, 0, 3, "udpx_bind_src_addr", 689, "failed to set addr\n");
          *__error() = v7;
        }
      }

      freeaddrinfo(v8);
    }
  }

  return 0;
}

uint64_t udpx_tx_comp_signal(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a1 + 136) + 304);
  v3 = *(v2 + 24);
  v4 = (v2 + 48 * (*(v2 + 8) & v3));
  v4[4] = a2;
  v4[5] = 2048;
  v4[7] = 0;
  v4[8] = 0;
  v4[6] = 0;
  *(v2 + 24) = v3 + 1;
  return (*(*(*(a1 + 136) + 40) + 72))();
}

uint64_t udpx_tx_comp(uint64_t result, uint64_t a2)
{
  v2 = *(*(result + 136) + 304);
  v3 = *(v2 + 24);
  v4 = (v2 + 48 * (*(v2 + 8) & v3));
  v4[4] = a2;
  v4[5] = 2048;
  v4[7] = 0;
  v4[8] = 0;
  v4[6] = 0;
  *(v2 + 24) = v3 + 1;
  return result;
}

uint64_t udpx_rx_src_comp_signal(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 *a6)
{
  fi_addr = ofi_ip_av_get_fi_addr(*(a1 + 88), a6);
  v12 = *(a1 + 120);
  v13 = v12[38];
  v14 = *(v13 + 24);
  v15 = *(v13 + 8) & v14;
  *(v12[39] + 8 * v15) = fi_addr;
  v16 = (v13 + 48 * v15);
  v16[4] = a2;
  v16[5] = a3 | 0x400;
  v16[6] = a4;
  v16[7] = a5;
  v16[8] = 0;
  *(v13 + 24) = v14 + 1;
  v17 = *(v12[5] + 72);

  return v17();
}

uint64_t udpx_rx_comp_signal(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a1 + 120);
  v6 = *(v5 + 304);
  v7 = *(v6 + 24);
  v8 = (v6 + 48 * (*(v6 + 8) & v7));
  v8[4] = a2;
  v8[5] = a3 | 0x400;
  v8[6] = a4;
  v8[7] = a5;
  v8[8] = 0;
  *(v6 + 24) = v7 + 1;
  return (*(*(v5 + 40) + 72))();
}

uint64_t udpx_rx_src_comp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 *a6)
{
  result = ofi_ip_av_get_fi_addr(*(a1 + 88), a6);
  v12 = *(*(a1 + 120) + 304);
  v13 = *(v12 + 24);
  v14 = *(v12 + 8) & v13;
  *(*(*(a1 + 120) + 312) + 8 * v14) = result;
  v15 = (v12 + 48 * v14);
  v15[4] = a2;
  v15[5] = a3 | 0x400;
  v15[6] = a4;
  v15[7] = a5;
  v15[8] = 0;
  *(v12 + 24) = v13 + 1;
  return result;
}

uint64_t udpx_rx_comp(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(*(result + 120) + 304);
  v6 = *(v5 + 24);
  v7 = (v5 + 48 * (*(v5 + 8) & v6));
  v7[4] = a2;
  v7[5] = a3 | 0x400;
  v7[6] = a4;
  v7[7] = a5;
  v7[8] = 0;
  *(v5 + 24) = v6 + 1;
  return result;
}

uint64_t udpx_getname(uint64_t a1, sockaddr *a2, socklen_t *a3)
{
  v4 = *a3;
  if (getsockname(*(a1 + 448), a2, a3))
  {
    return -*__error();
  }

  if (v4 >= *a3)
  {
    return 0;
  }

  return 4294967039;
}

uint64_t udpx_join(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v29 = *MEMORY[0x29EDCA608];
  if (*(a1 + 112))
  {
    if (*(a1 + 452))
    {
      if (*(a2 + 1) == 2)
      {
        v9 = malloc_type_calloc(1uLL, 0x48uLL, 0x10A0040487F77B9uLL);
        if (v9)
        {
          v10 = v9;
          *v9 = 19;
          v9[1] = a5;
          v9[2] = &udpx_mc_ops;
          v9[3] = v9 + 4;
          v11 = *(a2 + 1);
          if (v11 != 2 && v11 != 27 && v11 != 30 && fi_log_enabled(&core_prov, 0, 0))
          {
            v16 = *__error();
            fi_log(&core_prov, 0, 0, "ofi_sizeofaddr", 692, "Unknown address format\n");
            *__error() = v16;
          }

          __memcpy_chk();
          v10[8] = a1;
          atomic_fetch_add((a1 + 456), 1u);
          *a4 = v10;
          v24 = 54;
          v25[0] = 0;
          if (fi_log_enabled(&udpx_prov, 2, 3))
          {
            v17 = *__error();
            v18 = ofi_straddr(__str, &v24, 2, a2);
            fi_log(&udpx_prov, 2, 3, "udpx_join_ip", 122, "Joining %s\n", v18);
            *__error() = v17;
          }

          v26 = 0u;
          v27 = 0u;
          v19 = v10[1];
          v25[1] = v10;
          v25[2] = v19;
          v24 = 24;
          if (ofi_recv_allowed(*(v10[8] + 280)))
          {
            v25[0] = *(a2 + 4);
            if (setsockopt(*(v10[8] + 448), 0, 12, v25, 8u))
            {
              if (fi_log_enabled(&udpx_prov, 0, 3))
              {
                v20 = *__error();
                v21 = __error();
                v22 = strerror(*v21);
                fi_log(&udpx_prov, 0, 3, "udpx_join_ip", 136, "join failed %s\n", v22);
                *__error() = v20;
              }

              DWORD2(v26) = -*__error();
              v24 = 48;
            }
          }

          v23 = (*(*(*(v10[8] + 112) + 24) + 24))();
          return v23 & (v23 >> 63);
        }

        else
        {
          return 4294967284;
        }
      }

      else
      {
        if (fi_log_enabled(&udpx_prov, 0, 3))
        {
          v15 = *__error();
          fi_log(&udpx_prov, 0, 3, "udpx_join", 166, "only ipv4 supported\n");
          *__error() = v15;
        }

        return 4294967218;
      }
    }

    else
    {
      if (fi_log_enabled(&udpx_prov, 0, 3))
      {
        v14 = *__error();
        fi_log(&udpx_prov, 0, 3, "udpx_join", 161, "EP not enabled\n");
        *__error() = v14;
      }

      return 4294967038;
    }
  }

  else
  {
    if (fi_log_enabled(&udpx_prov, 0, 3))
    {
      v12 = *__error();
      fi_log(&udpx_prov, 0, 3, "udpx_join", 156, "no EQ bound to EP\n");
      *__error() = v12;
    }

    return 4294967035;
  }
}

uint64_t udpx_mc_close(uint64_t a1)
{
  v6[0] = *(a1 + 36);
  v6[1] = 0;
  if (setsockopt(*(*(a1 + 64) + 448), 0, 13, v6, 8u))
  {
    if (fi_log_enabled(&udpx_prov, 0, 3))
    {
      v2 = *__error();
      v3 = __error();
      v4 = strerror(*v3);
      fi_log(&udpx_prov, 0, 3, "udpx_mc_close", 81, "leave failed %s\n", v4);
      *__error() = v2;
    }

    return -*__error();
  }

  else
  {
    atomic_fetch_add((*(a1 + 64) + 456), 0xFFFFFFFF);
    free(a1);
    return 0;
  }
}

uint64_t udpx_recv(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  (*(*(a1 + 120) + 248))(*(a1 + 120) + 176, a2, a3, a4, a5);
  v10 = *(a1 + 440);
  v11 = v10[3];
  if (v10[2] - v11 + *v10)
  {
    v12 = 0;
    v13 = &v10[10 * (v10[1] & v11)];
    *(v13 + 52) = 1;
    v13[4] = a6;
    v13[5] = a2;
    v13[6] = a3;
    v10[3] = v11 + 1;
  }

  else
  {
    v12 = -35;
  }

  (*(*(a1 + 120) + 256))(*(a1 + 120) + 176);
  return v12;
}

uint64_t udpx_recvv(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[1] = 0;
  v7[3] = 0;
  v7[0] = a2;
  v7[2] = a4;
  v7[4] = a6;
  v7[5] = 0;
  return udpx_recvmsg(a1, v7);
}

uint64_t udpx_recvmsg(uint64_t a1, void *a2)
{
  (*(*(a1 + 120) + 248))(*(a1 + 120) + 176);
  v4 = *(a1 + 440);
  v5 = v4[3];
  if (v4[2] - v5 + *v4)
  {
    v7 = &v4[10 * (v4[1] & v5)];
    v7[4] = a2[4];
    v8 = v7 + 4;
    *(v8 + 72) = 0;
    if (a2[2])
    {
      v9 = 0;
      do
      {
        *&v8[2 * v9 + 1] = *(*a2 + 16 * v9);
        v10 = *(v8 + 72) + 1;
        *(v8 + 72) = v10;
        v9 = v10;
      }

      while (a2[2] > v10);
      v4 = *(a1 + 440);
      v5 = v4[3];
    }

    v6 = 0;
    *(v8 + 73) = 0;
    v4[3] = v5 + 1;
  }

  else
  {
    v6 = -35;
  }

  (*(*(a1 + 120) + 256))(*(a1 + 120) + 176);
  return v6;
}

uint64_t udpx_send_mc(uint64_t a1, const void *a2, size_t a3, uint64_t a4, const sockaddr *a5, uint64_t a6)
{
  sa_family = a5->sa_family;
  switch(sa_family)
  {
    case 2:
      v12 = 16;
      break;
    case 27:
      v12 = 48;
      break;
    case 30:
      v12 = 28;
      break;
    default:
      if (fi_log_enabled(&core_prov, 0, 0))
      {
        v13 = *__error();
        fi_log(&core_prov, 0, 0, "ofi_sizeofaddr", 692, "Unknown address format\n");
        v14 = __error();
        v12 = 0;
        *v14 = v13;
      }

      else
      {
        v12 = 0;
      }

      break;
  }

  return udpx_sendto(a1, a2, a3, a5, v12, a6);
}

uint64_t udpx_sendv_mc(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[1] = 0;
  v7[4] = a6;
  v7[5] = 0;
  v7[0] = a2;
  v7[2] = a4;
  v7[3] = a5;
  return udpx_sendmsg(a1, v7, 32);
}

uint64_t udpx_sendmsg(uint64_t a1, uint64_t a2, char a3)
{
  memset(&v12, 0, 32);
  v5 = *(a2 + 24);
  if ((a3 & 0x20) != 0)
  {
    v12.msg_name = *(a2 + 24);
    v8 = *(v5 + 1);
    switch(v8)
    {
      case 2:
        v6 = 16;
        break;
      case 27:
        v6 = 48;
        break;
      case 30:
        v6 = 28;
        break;
      default:
        if (fi_log_enabled(&core_prov, 0, 0))
        {
          v10 = *__error();
          fi_log(&core_prov, 0, 0, "ofi_sizeofaddr", 692, "Unknown address format\n", *&v12.msg_name, *&v12.msg_iov);
          v11 = __error();
          v6 = 0;
          *v11 = v10;
        }

        else
        {
          v6 = 0;
        }

        break;
    }
  }

  else
  {
    v12.msg_name = ofi_av_get_addr(*(a1 + 88), v5);
    v6 = *(*(a1 + 88) + 192);
  }

  v12.msg_namelen = v6;
  v12.msg_iov = *a2;
  v12.msg_iovlen = *(a2 + 16);
  v12.msg_control = 0;
  *&v12.msg_controllen = 0;
  (*(*(a1 + 136) + 248))(*(a1 + 136) + 176);
  if (*(*(*(a1 + 136) + 304) + 16) - *(*(*(a1 + 136) + 304) + 24) + **(*(a1 + 136) + 304))
  {
    if (sendmsg(*(a1 + 448), &v12, 0) < 0)
    {
      v7 = -*__error();
    }

    else
    {
      (*(a1 + 432))(a1, *(a2 + 32));
      v7 = 0;
    }
  }

  else
  {
    v7 = -35;
  }

  (*(*(a1 + 136) + 256))(*(a1 + 136) + 176);
  return v7;
}

uint64_t udpx_inject_mc(uint64_t a1, void *a2, size_t a3, sockaddr *a4)
{
  v7 = *(a1 + 448);
  sa_family = a4->sa_family;
  switch(sa_family)
  {
    case 2:
      v9 = 16;
      break;
    case 27:
      v9 = 48;
      break;
    case 30:
      v9 = 28;
      break;
    default:
      if (fi_log_enabled(&core_prov, 0, 0))
      {
        v10 = *__error();
        fi_log(&core_prov, 0, 0, "ofi_sizeofaddr", 692, "Unknown address format\n");
        v11 = __error();
        v9 = 0;
        *v11 = v10;
      }

      else
      {
        v9 = 0;
      }

      break;
  }

  if (a3 >= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFFLL;
  }

  else
  {
    v12 = a3;
  }

  if (sendto(v7, a2, v12, 0, a4, v9) == a3)
  {
    return 0;
  }

  else
  {
    return -*__error();
  }
}

uint64_t udpx_sendto(uint64_t a1, const void *a2, size_t a3, const sockaddr *a4, socklen_t a5, uint64_t a6)
{
  (*(*(a1 + 136) + 248))(*(a1 + 136) + 176);
  if (*(*(*(a1 + 136) + 304) + 16) - *(*(*(a1 + 136) + 304) + 24) + **(*(a1 + 136) + 304))
  {
    if (a3 >= 0x7FFFFFFF)
    {
      v13 = 0x7FFFFFFFLL;
    }

    else
    {
      v13 = a3;
    }

    if (sendto(*(a1 + 448), a2, v13, 0, a4, a5) == a3)
    {
      (*(a1 + 432))(a1, a6);
      v12 = 0;
    }

    else
    {
      v12 = -*__error();
    }
  }

  else
  {
    v12 = -35;
  }

  (*(*(a1 + 136) + 256))(*(a1 + 136) + 176);
  return v12;
}

uint64_t udpx_send(uint64_t a1, const void *a2, size_t a3, uint64_t a4, int a5, uint64_t a6)
{
  addr = ofi_av_get_addr(*(a1 + 88), a5);
  v11 = *(*(a1 + 88) + 192);

  return udpx_sendto(a1, a2, a3, addr, v11, a6);
}

uint64_t udpx_sendv(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[1] = 0;
  v7[4] = a6;
  v7[5] = 0;
  v7[0] = a2;
  v7[2] = a4;
  v7[3] = a5;
  return udpx_sendmsg(a1, v7, 0);
}

uint64_t udpx_inject(uint64_t a1, const void *a2, size_t a3, int a4)
{
  v7 = *(a1 + 448);
  addr = ofi_av_get_addr(*(a1 + 88), a4);
  if (a3 >= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFFLL;
  }

  else
  {
    v9 = a3;
  }

  if (sendto(v7, a2, v9, 0, addr, *(*(a1 + 88) + 192)) == a3)
  {
    return 0;
  }

  else
  {
    return -*__error();
  }
}

uint64_t udpx_domain_open(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = ofi_prov_check_info(&udpx_util_prov, *(a1 + 32), a2);
  if (!v8)
  {
    v10 = malloc_type_calloc(1uLL, 0x118uLL, 0x10F20408DBA5162uLL);
    if (v10)
    {
      v11 = v10;
      v8 = ofi_domain_init(a1, a2, v10, a4, 0);
      if (v8)
      {
        free(v11);
      }

      else
      {
        *a3 = v11;
        v11[2] = &udpx_domain_fi_ops;
        *(*a3 + 24) = &udpx_domain_ops;
        *(*a3 + 32) = &udpx_mr_ops;
      }
    }

    else
    {
      return 4294967284;
    }
  }

  return v8;
}

uint64_t udpx_domain_close(void *a1)
{
  v2 = ofi_domain_close(a1);
  if (!v2)
  {
    free(a1);
  }

  return v2;
}

void ofi_getnodename(int a1, char *a2, int a3)
{
  v18 = 0;
  if (!a2 || a3 <= 0)
  {
    ofi_getnodename_cold_1();
  }

  memset(&v19, 0, sizeof(v19));
  v17 = 0;
  v6 = gethostname(a2, a3);
  v7 = &a2[a3];
  *(v7 - 1) = 0;
  if (!v6)
  {
    memset(&v19, 0, sizeof(v19));
    v8 = a1 ? a1 : 2;
    v19.ai_family = v8;
    if (!getaddrinfo(a2, 0, &v19, &v18))
    {
      freeaddrinfo(v18);
      return;
    }
  }

  if (ofi_getifaddrs(&v17))
  {
    goto LABEL_31;
  }

  v9 = v17;
  if (!v17)
  {
    v16 = 0;
LABEL_30:
    MEMORY[0x29EDAFA80](v16);
LABEL_31:
    strncpy(a2, "127.0.0.1", a3);
    *(v7 - 1) = 0;
    return;
  }

  while (1)
  {
    ifa_addr = v9->ifa_addr;
    if (!ifa_addr || (v9->ifa_flags & 1) == 0)
    {
      goto LABEL_26;
    }

    sa_family = ifa_addr->sa_family;
    if (a1)
    {
      break;
    }

    if (sa_family == 2)
    {
      goto LABEL_22;
    }

    if (sa_family == 30)
    {
      goto LABEL_21;
    }

LABEL_26:
    v9 = v9->ifa_next;
    if (!v9)
    {
      v16 = v17;
      goto LABEL_30;
    }
  }

  if (sa_family != a1)
  {
    goto LABEL_26;
  }

  switch(sa_family)
  {
    case 2:
LABEL_22:
      v14 = 16;
      break;
    case 27:
      v14 = 48;
      break;
    case 30:
LABEL_21:
      v14 = 28;
      break;
    default:
      if (fi_log_enabled(&core_prov, 0, 0))
      {
        v12 = *__error();
        fi_log(&core_prov, 0, 0, "ofi_sizeofaddr", 692, "Unknown address format\n");
        v13 = __error();
        v14 = 0;
        *v13 = v12;
      }

      else
      {
        v14 = 0;
      }

      break;
  }

  v15 = getnameinfo(ifa_addr, v14, a2, a3, 0, 0, 2);
  *(v7 - 1) = 0;
  if (v15)
  {
    goto LABEL_26;
  }

  MEMORY[0x29EDAFA80](v17);
}

uint64_t ofi_get_src_addr(int a1, const sockaddr *a2, size_t a3, uint64_t a4, void *a5)
{
  if ((a1 - 1) > 2)
  {
    return 4294967218;
  }

  v15 = 0;
  v9 = socket(a2->sa_family, 2, 0);
  if (v9 < 0)
  {
    return -*__error();
  }

  v10 = v9;
  v11 = connect(v9, a2, a3);
  if (!v11)
  {
    v13 = malloc_type_calloc(a3, 1uLL, 0xCB2243B2uLL);
    *a4 = v13;
    if (v13)
    {
      v15 = a3;
      if (getsockname(v10, v13, &v15))
      {
        v11 = -*__error();
      }

      else
      {
        *a5 = v15;
        v14 = *(*a4 + 1);
        if (v14 == 30 || v14 == 2)
        {
          v11 = 0;
          *(*a4 + 2) = 0;
        }

        else
        {
          v11 = 4294967218;
        }
      }
    }

    else
    {
      v11 = 4294967284;
    }
  }

  close(v10);
  return v11;
}

char *ofi_get_str_addr(char *result, uint64_t a2, char **a3, void *a4)
{
  if (result)
  {
    v6 = result;
    result = strstr(result, "://");
    if (result)
    {
      *a3 = strdup(v6);
      result = strlen(v6);
      *a4 = result + 1;
    }
  }

  return result;
}

uint64_t ofi_get_addr(int *a1, uint64_t a2, char *a3, char *a4, char **a5, void *a6)
{
  v7 = *a1;
  result = 4294967218;
  if (v7 > 2)
  {
    if (v7 == 3)
    {
      v7 = 30;
      goto LABEL_14;
    }

    if (v7 == 9)
    {
      ofi_get_str_addr(a3, a2, a5, a6);
      return 0;
    }
  }

  else
  {
    if (v7 != 1)
    {
      if (v7 != 2)
      {
        return result;
      }

LABEL_14:
      v10 = v7;
      return fi_get_sockaddr(&v10, a2, a3, a4, a5, a6);
    }

    v10 = 0;
    result = fi_get_sockaddr(&v10, a2, a3, a4, a5, a6);
    if (!result)
    {
      if (v10 == 2)
      {
        v9 = 2;
      }

      else
      {
        v9 = 3;
      }

      *a1 = v9;
    }
  }

  return result;
}

uint64_t fi_get_sockaddr(int *a1, uint64_t a2, char *a3, char *a4, void *a5, void *a6)
{
  memset(&v17, 0, sizeof(v17));
  v17.ai_family = *a1;
  v17.ai_socktype = 1;
  if ((a2 & 0x200000000000000) != 0)
  {
    v17.ai_flags = 1;
  }

  v16 = 0;
  if (getaddrinfo(a3, a4, &v17, &v16))
  {
    return 4294967200;
  }

  ai_addr = v16->ai_addr;
  ai_addrlen = v16->ai_addrlen;
  v12 = malloc_type_malloc(ai_addrlen, 0x2A1BF8CCuLL);
  v13 = v12;
  if (v12)
  {
    memcpy(v12, ai_addr, ai_addrlen);
    v9 = 0;
    v14 = v16;
    *a1 = v16->ai_family;
    *a6 = v14->ai_addrlen;
  }

  else
  {
    v9 = 4294967284;
    v14 = v16;
  }

  *a5 = v13;
  freeaddrinfo(v14);
  return v9;
}

unint64_t ofi_av_get_addr(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 160);
  v3 = v2[11];
  if (a2 / v3 >= v2[5])
  {
    rxm_rndv_handle_rd_done_cold_1();
  }

  v4 = *(*(v2[4] + 8 * (a2 / v3)) + 40) + v2[2] * (a2 % v3);
  if (*(v4 - 48) != v4 - 48)
  {
    rxm_rndv_handle_rd_done_cold_2();
  }

  return v4 + 64;
}

uint64_t ofi_verify_av_insert(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if ((a2 & 0xFBFFF9FFFFFBFFFFLL) != 0)
  {
    if (!fi_log_enabled(*(a1 + 144), 0, 5))
    {
      return 4294967036;
    }

    v4 = *__error();
    fi_log(*(a1 + 144), 0, 5, "ofi_verify_av_insert", 262, "unsupported flags\n");
    v5 = 4294967036;
    goto LABEL_8;
  }

  v5 = 0;
  if (a2 >> 58 && !a3)
  {
    if (!fi_log_enabled(*(a1 + 144), 0, 5))
    {
      return 4294967274;
    }

    v4 = *__error();
    fi_log(*(a1 + 144), 0, 5, "ofi_verify_av_insert", 267, "null context with FI_SYNC_ERR");
    v5 = 4294967274;
LABEL_8:
    *__error() = v4;
  }

  return v5;
}

uint64_t ofi_av_insert_addr_at(uint64_t a1, unsigned __int8 *a2, unint64_t a3)
{
  if (!(*(a1 + 120))(a1 + 56))
  {
    ofi_av_insert_addr_at_cold_4();
  }

  v6 = -17973521;
  v7 = -1640531527;
  ofi_straddr_log_internal("ofi_av_insert_addr_at", 279, *(*(a1 + 32) + 220), *(a1 + 144), 2, 5, "inserting addr", a2);
  v8 = -1640531527;
  v9 = -1640531527;
  v10 = *(a1 + 192);
  LODWORD(v11) = v10;
  v12 = a2;
  v13 = -17973521;
  if (v10 >= 0xC)
  {
    v12 = a2;
    v11 = *(a1 + 192);
    do
    {
      v14 = *(v12 + 1) + v9;
      v15 = *(v12 + 2) + v13;
      v16 = (*v12 + v8 - (v14 + v15)) ^ (v15 >> 13);
      v17 = (v14 - v15 - v16) ^ (v16 << 8);
      v18 = (v15 - v16 - v17) ^ (v17 >> 13);
      v19 = (v16 - v17 - v18) ^ (v18 >> 12);
      v20 = (v17 - v18 - v19) ^ (v19 << 16);
      v21 = (v18 - v19 - v20) ^ (v20 >> 5);
      v8 = (v19 - v20 - v21) ^ (v21 >> 3);
      v9 = (v20 - v21 - v8) ^ (v8 << 10);
      v13 = (v21 - v8 - v9) ^ (v9 >> 15);
      v12 += 12;
      LODWORD(v11) = v11 - 12;
    }

    while (v11 > 0xB);
  }

  v22 = v13 + v10;
  if (v11 <= 5)
  {
    if (v11 <= 2)
    {
      if (v11 == 1)
      {
        goto LABEL_27;
      }

      if (v11 != 2)
      {
        goto LABEL_28;
      }

LABEL_26:
      v8 += v12[1] << 8;
LABEL_27:
      v8 += *v12;
      goto LABEL_28;
    }

    if (v11 == 3)
    {
LABEL_25:
      v8 += v12[2] << 16;
      goto LABEL_26;
    }

    if (v11 == 4)
    {
LABEL_24:
      v8 += v12[3] << 24;
      goto LABEL_25;
    }

LABEL_23:
    v9 += v12[4];
    goto LABEL_24;
  }

  if (v11 <= 8)
  {
    if (v11 == 6)
    {
LABEL_22:
      v9 += v12[5] << 8;
      goto LABEL_23;
    }

    if (v11 == 7)
    {
LABEL_21:
      v9 += v12[6] << 16;
      goto LABEL_22;
    }

LABEL_20:
    v9 += v12[7] << 24;
    goto LABEL_21;
  }

  switch(v11)
  {
    case 9:
LABEL_19:
      v22 += v12[8] << 8;
      goto LABEL_20;
    case 0xA:
LABEL_18:
      v22 += v12[9] << 16;
      goto LABEL_19;
    case 0xB:
      v22 += v12[10] << 24;
      goto LABEL_18;
  }

LABEL_28:
  v23 = *(a1 + 152);
  if (!v23 || (v24 = (v8 - v9 - v22) ^ (v22 >> 13), v25 = (v9 - v22 - v24) ^ (v24 << 8), v26 = (v22 - v24 - v25) ^ (v25 >> 13), v27 = (v24 - v25 - v26) ^ (v26 >> 12), v28 = (v25 - v26 - v27) ^ (v27 << 16), v29 = (v26 - v27 - v28) ^ (v28 >> 5), v30 = (v27 - v28 - v29) ^ (v29 >> 3), v31 = (v29 - v30 - ((v28 - v29 - v30) ^ (v30 << 10))) ^ (((v28 - v29 - v30) ^ (v30 << 10)) >> 15), v32 = *(v23 + 8), (v33 = *(*v32 + 16 * ((*(v32 + 8) - 1) & v31))) == 0))
  {
LABEL_35:
    v36 = *(a1 + 160);
    if ((*(v36 + 128) & 2) == 0)
    {
      ofi_av_insert_addr_at_cold_3();
    }

    v37 = a3 / *(v36 + 88);
    while (v37 >= *(v36 + 40))
    {
      if (ofi_bufpool_grow(v36))
      {
        return 4294967284;
      }
    }

    v39 = *(*(v36 + 32) + 8 * v37);
    v40 = v39[5] + *(v36 + 16) * (a3 % *(v36 + 88));
    if (atomic_fetch_add((*(v40 - 32) + 76), 1u) == -1)
    {
      ofi_av_insert_addr_at_cold_2();
    }

    v41 = *(v40 - 48);
    if (v41 == v40 - 48)
    {
      ofi_av_insert_addr_at_cold_1();
    }

    v42 = *(v40 - 40);
    *v42 = v41;
    *(v41 + 8) = v42;
    *(v40 - 48) = v40 - 48;
    if (v39[2] == v39 + 2)
    {
      v43 = *v39;
      v44 = v39[1];
      *v44 = *v39;
      *(v43 + 8) = v44;
      *v39 = v39;
      v39[1] = v39;
    }

    memcpy((v40 + 64), a2, *(a1 + 192));
    *v40 = 1;
    v45 = *(a1 + 192);
    if (v45 < 0xC)
    {
      v48 = -1640531527;
      v47 = *(a1 + 192);
      v46 = (v40 + 64);
    }

    else
    {
      v46 = (v40 + 64);
      v47 = *(a1 + 192);
      v48 = -1640531527;
      do
      {
        v49 = *(v46 + 1) + v7;
        v50 = *(v46 + 2) + v6;
        v51 = (*v46 + v48 - (v49 + v50)) ^ (v50 >> 13);
        v52 = (v49 - v50 - v51) ^ (v51 << 8);
        v53 = (v50 - v51 - v52) ^ (v52 >> 13);
        v54 = (v51 - v52 - v53) ^ (v53 >> 12);
        v55 = (v52 - v53 - v54) ^ (v54 << 16);
        v56 = (v53 - v54 - v55) ^ (v55 >> 5);
        v48 = (v54 - v55 - v56) ^ (v56 >> 3);
        v7 = (v55 - v56 - v48) ^ (v48 << 10);
        v6 = (v56 - v48 - v7) ^ (v7 >> 15);
        v46 += 12;
        v47 -= 12;
      }

      while (v47 > 0xB);
    }

    v57 = v6 + v45;
    if (v47 <= 5)
    {
      if (v47 <= 2)
      {
        if (v47 == 1)
        {
          goto LABEL_74;
        }

        if (v47 != 2)
        {
LABEL_75:
          v58 = (v48 - v7 - v57) ^ (v57 >> 13);
          v59 = (v7 - v57 - v58) ^ (v58 << 8);
          v60 = (v57 - v58 - v59) ^ (v59 >> 13);
          v61 = (v58 - v59 - v60) ^ (v60 >> 12);
          v62 = (v59 - v60 - v61) ^ (v61 << 16);
          v63 = (v60 - v61 - v62) ^ (v62 >> 5);
          v64 = (v61 - v62 - v63) ^ (v63 >> 3);
          v65 = (v63 - v64 - ((v62 - v63 - v64) ^ (v64 << 10))) ^ (((v62 - v63 - v64) ^ (v64 << 10)) >> 15);
          v66 = (v40 + 8);
          *(v40 + 48) = v40 + 64;
          *(v40 + 56) = v45;
          *(v40 + 60) = v65;
          v67 = *(a1 + 152);
          if (v67)
          {
            v68 = *(v67 + 8);
            *(v40 + 24) = 0;
            v69 = *(v68 + 24);
            v70 = v69 - *(v68 + 32);
            *(v40 + 8) = v68;
            *(v40 + 16) = v70;
            *(v69 + 16) = v40;
            *(v68 + 24) = v66;
          }

          else
          {
            *(v40 + 16) = 0;
            *(v40 + 24) = 0;
            v71 = malloc_type_malloc(0x40uLL, 0x10200405F856B24uLL);
            *(v40 + 8) = v71;
            if (!v71)
            {
              goto LABEL_114;
            }

            v71[2] = 0u;
            v71[3] = 0u;
            *v71 = 0u;
            v71[1] = 0u;
            v72 = *v66;
            v72[1] = 0x500000020;
            v72[3] = v66;
            v72[4] = 8;
            v73 = malloc_type_malloc(0x200uLL, 0x1020040EDED9539uLL);
            v74 = *v66;
            *v74 = v73;
            v74[7].i32[0] = -1609490463;
            if (!v73)
            {
              goto LABEL_114;
            }

            v73[30] = 0u;
            v73[31] = 0u;
            v73[28] = 0u;
            v73[29] = 0u;
            v73[26] = 0u;
            v73[27] = 0u;
            v73[24] = 0u;
            v73[25] = 0u;
            v73[22] = 0u;
            v73[23] = 0u;
            v73[20] = 0u;
            v73[21] = 0u;
            v73[18] = 0u;
            v73[19] = 0u;
            v73[16] = 0u;
            v73[17] = 0u;
            v73[14] = 0u;
            v73[15] = 0u;
            v73[12] = 0u;
            v73[13] = 0u;
            v73[10] = 0u;
            v73[11] = 0u;
            v73[8] = 0u;
            v73[9] = 0u;
            v73[6] = 0u;
            v73[7] = 0u;
            v73[4] = 0u;
            v73[5] = 0u;
            v73[2] = 0u;
            v73[3] = 0u;
            *v73 = 0u;
            v73[1] = 0u;
            *(a1 + 152) = v40;
            v68 = *(v40 + 8);
          }

          ++*(v68 + 16);
          v75 = *(v68 + 8);
          v76 = *v68 + 16 * ((v75 - 1) & v65);
          v77 = *(v76 + 8) + 1;
          *(v76 + 8) = v77;
          v78 = *v76;
          *(v40 + 32) = 0;
          *(v40 + 40) = v78;
          if (v78)
          {
            *(v78 + 24) = v66;
          }

          *v76 = v66;
          if (v77 < 10 * *(v76 + 12) + 10 || *(v68 + 52))
          {
            goto LABEL_106;
          }

          v79 = malloc_type_malloc(32 * v75, 0x1020040EDED9539uLL);
          if (v79)
          {
            v80 = v79;
            bzero(v79, 32 * (*v66)[1].u32[0]);
            v81 = *v66;
            v82 = (*v66)[2].u32[0];
            v83 = (*v66)[1].u32[0];
            v84 = 2 * v83 - 1;
            if ((v84 & v82) != 0)
            {
              v85 = (v82 >> ((*v66)[1].i32[1] + 1)) + 1;
            }

            else
            {
              v85 = v82 >> ((*v66)[1].i32[1] + 1);
            }

            v81[5].i32[0] = v85;
            v81[5].i32[1] = 0;
            v86 = *v81;
            if (v83)
            {
              v87 = 0;
              for (i = 0; i != v83; ++i)
              {
                v89 = v86[2 * i];
                if (v89)
                {
                  do
                  {
                    v90 = *(v89 + 32);
                    v91 = &v80[16 * (*(v89 + 52) & v84)];
                    v92 = *(v91 + 2) + 1;
                    *(v91 + 2) = v92;
                    if (v92 > v85)
                    {
                      v81[5].i32[1] = ++v87;
                      *(v91 + 3) = v92 / v85;
                    }

                    v93 = *v91;
                    *(v89 + 24) = 0;
                    *(v89 + 32) = v93;
                    if (v93)
                    {
                      *(v93 + 24) = v89;
                    }

                    *v91 = v89;
                    v89 = v90;
                  }

                  while (v90);
                }
              }
            }

            free(v86);
            v94 = *v66;
            v95 = (*v66)[1];
            v96.i32[0] = vadd_s32(v95, v95).u32[0];
            v96.i32[1] = vadd_s32(v95, 0x100000001).i32[1];
            v94[1] = v96;
            *v94 = v80;
            if (v94[5].i32[1] <= v94[2].i32[0] >> 1)
            {
              v94[6].i32[0] = 0;
            }

            else
            {
              v97 = v94[6].i32[0] + 1;
              v94[6].i32[0] = v97;
              if (v97 >= 2)
              {
                v94[6].i32[1] = 1;
              }
            }

LABEL_106:
            result = fi_log_enabled(*(a1 + 144), 2, 5);
            if (result)
            {
              v98 = *__error();
              fi_log(*(a1 + 144), 2, 5, "ofi_av_insert_addr_at", 297, "fi_addr: %llu\n", *(v40 - 24));
              v99 = __error();
              result = 0;
              *v99 = v98;
            }

            return result;
          }

LABEL_114:
          exit(-1);
        }

LABEL_73:
        v48 += v46[1] << 8;
LABEL_74:
        v48 += *v46;
        goto LABEL_75;
      }

      if (v47 == 3)
      {
LABEL_72:
        v48 += v46[2] << 16;
        goto LABEL_73;
      }

      if (v47 == 4)
      {
LABEL_71:
        v48 += v46[3] << 24;
        goto LABEL_72;
      }

LABEL_70:
      v7 += v46[4];
      goto LABEL_71;
    }

    if (v47 > 8)
    {
      if (v47 != 9)
      {
        if (v47 != 10)
        {
          if (v47 != 11)
          {
            goto LABEL_75;
          }

          v57 += v46[10] << 24;
        }

        v57 += v46[9] << 16;
      }

      v57 += v46[8] << 8;
    }

    else
    {
      if (v47 == 6)
      {
LABEL_69:
        v7 += v46[5] << 8;
        goto LABEL_70;
      }

      if (v47 == 7)
      {
LABEL_68:
        v7 += v46[6] << 16;
        goto LABEL_69;
      }
    }

    v7 += v46[7] << 24;
    goto LABEL_68;
  }

  v34 = -*(v32 + 32);
  while (1)
  {
    v35 = v33 + v34;
    if (*(v33 + v34 + 60) == v31 && v10 == *(v35 + 56) && !memcmp(*(v35 + 48), a2, v10))
    {
      break;
    }

    v33 = *(v35 + 40);
    if (!v33)
    {
      goto LABEL_35;
    }
  }

  if (*(v35 - 24) == a3)
  {
    return 0;
  }

  ofi_straddr_log_internal("ofi_av_insert_addr_at", 285, *(*(a1 + 32) + 220), *(a1 + 144), 0, 5, "addr already in AV", a2);
  return 4294967259;
}

uint64_t ofi_av_insert_addr(uint64_t a1, unsigned __int8 *a2, void *a3)
{
  if (!(*(a1 + 120))(a1 + 56))
  {
    ofi_av_insert_addr_cold_4();
  }

  v6 = -17973521;
  v7 = -1640531527;
  ofi_straddr_log_internal("ofi_av_insert_addr", 306, *(*(a1 + 32) + 220), *(a1 + 144), 2, 5, "inserting addr", a2);
  v8 = -1640531527;
  v9 = -1640531527;
  v10 = *(a1 + 192);
  LODWORD(v11) = v10;
  v12 = a2;
  v13 = -17973521;
  if (v10 >= 0xC)
  {
    v12 = a2;
    v11 = *(a1 + 192);
    do
    {
      v14 = *(v12 + 1) + v9;
      v15 = *(v12 + 2) + v13;
      v16 = (*v12 + v8 - (v14 + v15)) ^ (v15 >> 13);
      v17 = (v14 - v15 - v16) ^ (v16 << 8);
      v18 = (v15 - v16 - v17) ^ (v17 >> 13);
      v19 = (v16 - v17 - v18) ^ (v18 >> 12);
      v20 = (v17 - v18 - v19) ^ (v19 << 16);
      v21 = (v18 - v19 - v20) ^ (v20 >> 5);
      v8 = (v19 - v20 - v21) ^ (v21 >> 3);
      v9 = (v20 - v21 - v8) ^ (v8 << 10);
      v13 = (v21 - v8 - v9) ^ (v9 >> 15);
      v12 += 12;
      LODWORD(v11) = v11 - 12;
    }

    while (v11 > 0xB);
  }

  v22 = v13 + v10;
  if (v11 <= 5)
  {
    if (v11 <= 2)
    {
      if (v11 == 1)
      {
        goto LABEL_27;
      }

      if (v11 != 2)
      {
        goto LABEL_28;
      }

LABEL_26:
      v8 += v12[1] << 8;
LABEL_27:
      v8 += *v12;
      goto LABEL_28;
    }

    if (v11 == 3)
    {
LABEL_25:
      v8 += v12[2] << 16;
      goto LABEL_26;
    }

    if (v11 == 4)
    {
LABEL_24:
      v8 += v12[3] << 24;
      goto LABEL_25;
    }

LABEL_23:
    v9 += v12[4];
    goto LABEL_24;
  }

  if (v11 <= 8)
  {
    if (v11 == 6)
    {
LABEL_22:
      v9 += v12[5] << 8;
      goto LABEL_23;
    }

    if (v11 == 7)
    {
LABEL_21:
      v9 += v12[6] << 16;
      goto LABEL_22;
    }

LABEL_20:
    v9 += v12[7] << 24;
    goto LABEL_21;
  }

  switch(v11)
  {
    case 9:
LABEL_19:
      v22 += v12[8] << 8;
      goto LABEL_20;
    case 0xA:
LABEL_18:
      v22 += v12[9] << 16;
      goto LABEL_19;
    case 0xB:
      v22 += v12[10] << 24;
      goto LABEL_18;
  }

LABEL_28:
  v23 = *(a1 + 152);
  if (!v23 || (v24 = (v8 - v9 - v22) ^ (v22 >> 13), v25 = (v9 - v22 - v24) ^ (v24 << 8), v26 = (v22 - v24 - v25) ^ (v25 >> 13), v27 = (v24 - v25 - v26) ^ (v26 >> 12), v28 = (v25 - v26 - v27) ^ (v27 << 16), v29 = (v26 - v27 - v28) ^ (v28 >> 5), v30 = (v27 - v28 - v29) ^ (v29 >> 3), v31 = (v29 - v30 - ((v28 - v29 - v30) ^ (v30 << 10))) ^ (((v28 - v29 - v30) ^ (v30 << 10)) >> 15), v32 = *(v23 + 8), (v33 = *(*v32 + 16 * ((*(v32 + 8) - 1) & v31))) == 0))
  {
LABEL_35:
    v36 = *(a1 + 160);
    if ((*(v36 + 128) & 2) == 0)
    {
      util_get_peer_cold_3();
    }

    v37 = *v36;
    if (*v36 == v36)
    {
      if (ofi_bufpool_grow(*(a1 + 160)))
      {
        if (a3)
        {
          *a3 = -1;
        }

        return 4294967284;
      }

      v37 = *v36;
    }

    v38 = v37[2];
    v39 = *v38;
    v40 = v38[1];
    *v40 = *v38;
    v39[1] = v40;
    if (atomic_fetch_add((v38[2] + 76), 1u) == -1)
    {
      util_get_peer_cold_2();
    }

    v41 = v38 + 6;
    if (*v38 == v38)
    {
      util_get_peer_cold_1();
    }

    *v38 = v38;
    if (v37[2] == v37 + 2)
    {
      v42 = *v37;
      v43 = v37[1];
      *v43 = *v37;
      *(v42 + 8) = v43;
      *v37 = v37;
      v37[1] = v37;
    }

    if (a3)
    {
      *a3 = v38[3];
    }

    memcpy(v38 + 14, a2, *(a1 + 192));
    *(v38 + 12) = 1;
    v44 = *(a1 + 192);
    if (v44 < 0xC)
    {
      v47 = -1640531527;
      v46 = *(a1 + 192);
      v45 = (v38 + 14);
    }

    else
    {
      v45 = (v38 + 14);
      v46 = *(a1 + 192);
      v47 = -1640531527;
      do
      {
        v48 = *(v45 + 1) + v7;
        v49 = *(v45 + 2) + v6;
        v50 = (*v45 + v47 - (v48 + v49)) ^ (v49 >> 13);
        v51 = (v48 - v49 - v50) ^ (v50 << 8);
        v52 = (v49 - v50 - v51) ^ (v51 >> 13);
        v53 = (v50 - v51 - v52) ^ (v52 >> 12);
        v54 = (v51 - v52 - v53) ^ (v53 << 16);
        v55 = (v52 - v53 - v54) ^ (v54 >> 5);
        v47 = (v53 - v54 - v55) ^ (v55 >> 3);
        v7 = (v54 - v55 - v47) ^ (v47 << 10);
        v6 = (v55 - v47 - v7) ^ (v7 >> 15);
        v45 += 12;
        v46 -= 12;
      }

      while (v46 > 0xB);
    }

    v56 = v6 + v44;
    if (v46 <= 5)
    {
      if (v46 <= 2)
      {
        if (v46 == 1)
        {
          goto LABEL_74;
        }

        if (v46 != 2)
        {
LABEL_75:
          v58 = (v47 - v7 - v56) ^ (v56 >> 13);
          v59 = (v7 - v56 - v58) ^ (v58 << 8);
          v60 = (v56 - v58 - v59) ^ (v59 >> 13);
          v61 = (v58 - v59 - v60) ^ (v60 >> 12);
          v62 = (v59 - v60 - v61) ^ (v61 << 16);
          v63 = (v60 - v61 - v62) ^ (v62 >> 5);
          v64 = (v61 - v62 - v63) ^ (v63 >> 3);
          v65 = (v63 - v64 - ((v62 - v63 - v64) ^ (v64 << 10))) ^ (((v62 - v63 - v64) ^ (v64 << 10)) >> 15);
          v66 = (v38 + 7);
          v38[12] = (v38 + 14);
          *(v38 + 26) = v44;
          *(v38 + 27) = v65;
          v67 = *(a1 + 152);
          if (v67)
          {
            v68 = *(v67 + 8);
            v38[9] = 0;
            v69 = v68[3];
            v70 = *&v69 - *&v68[4];
            v38[7] = v68;
            v38[8] = v70;
            *(*&v69 + 16) = v41;
            v68[3] = v66;
          }

          else
          {
            v38[8] = 0;
            v38[9] = 0;
            v71 = malloc_type_malloc(0x40uLL, 0x10200405F856B24uLL);
            v38[7] = v71;
            if (!v71)
            {
              goto LABEL_120;
            }

            v71[2] = 0u;
            v71[3] = 0u;
            *v71 = 0u;
            v71[1] = 0u;
            v72 = *v66;
            v72[1] = 0x500000020;
            v72[3] = v66;
            v72[4] = 8;
            v73 = malloc_type_malloc(0x200uLL, 0x1020040EDED9539uLL);
            v74 = *v66;
            *v74 = v73;
            v74[7].i32[0] = -1609490463;
            if (!v73)
            {
              goto LABEL_120;
            }

            v73[30] = 0u;
            v73[31] = 0u;
            v73[28] = 0u;
            v73[29] = 0u;
            v73[26] = 0u;
            v73[27] = 0u;
            v73[24] = 0u;
            v73[25] = 0u;
            v73[22] = 0u;
            v73[23] = 0u;
            v73[20] = 0u;
            v73[21] = 0u;
            v73[18] = 0u;
            v73[19] = 0u;
            v73[16] = 0u;
            v73[17] = 0u;
            v73[14] = 0u;
            v73[15] = 0u;
            v73[12] = 0u;
            v73[13] = 0u;
            v73[10] = 0u;
            v73[11] = 0u;
            v73[8] = 0u;
            v73[9] = 0u;
            v73[6] = 0u;
            v73[7] = 0u;
            v73[4] = 0u;
            v73[5] = 0u;
            v73[2] = 0u;
            v73[3] = 0u;
            *v73 = 0u;
            v73[1] = 0u;
            *(a1 + 152) = v41;
            v68 = *v66;
          }

          ++v68[2].i32[0];
          v75 = v68[1].u32[0];
          v76 = *v68 + 16 * ((v75 - 1) & v65);
          v77 = *(v76 + 8) + 1;
          *(v76 + 8) = v77;
          v78 = *v76;
          v38[10] = 0;
          v38[11] = v78;
          if (v78)
          {
            *(v78 + 24) = v66;
          }

          *v76 = v66;
          if (v77 < 10 * *(v76 + 12) + 10 || v68[6].i32[1])
          {
            goto LABEL_113;
          }

          v79 = malloc_type_malloc(32 * v75, 0x1020040EDED9539uLL);
          if (v79)
          {
            v80 = v79;
            bzero(v79, 32 * (*v66)[1].u32[0]);
            v81 = *v66;
            v82 = (*v66)[2].u32[0];
            v83 = (*v66)[1].u32[0];
            v84 = 2 * v83 - 1;
            if ((v84 & v82) != 0)
            {
              v85 = (v82 >> ((*v66)[1].i32[1] + 1)) + 1;
            }

            else
            {
              v85 = v82 >> ((*v66)[1].i32[1] + 1);
            }

            v81[5].i32[0] = v85;
            v81[5].i32[1] = 0;
            v86 = *v81;
            if (v83)
            {
              v87 = 0;
              for (i = 0; i != v83; ++i)
              {
                v89 = v86[2 * i];
                if (v89)
                {
                  do
                  {
                    v90 = *(v89 + 32);
                    v91 = &v80[16 * (*(v89 + 52) & v84)];
                    v92 = *(v91 + 2) + 1;
                    *(v91 + 2) = v92;
                    if (v92 > v85)
                    {
                      v81[5].i32[1] = ++v87;
                      *(v91 + 3) = v92 / v85;
                    }

                    v93 = *v91;
                    *(v89 + 24) = 0;
                    *(v89 + 32) = v93;
                    if (v93)
                    {
                      *(v93 + 24) = v89;
                    }

                    *v91 = v89;
                    v89 = v90;
                  }

                  while (v90);
                }
              }
            }

            free(v86);
            v94 = *v66;
            v95 = (*v66)[1];
            v96.i32[0] = vadd_s32(v95, v95).u32[0];
            v96.i32[1] = vadd_s32(v95, 0x100000001).i32[1];
            v94[1] = v96;
            *v94 = v80;
            if (v94[5].i32[1] <= v94[2].i32[0] >> 1)
            {
              v94[6].i32[0] = 0;
            }

            else
            {
              v97 = v94[6].i32[0] + 1;
              v94[6].i32[0] = v97;
              if (v97 >= 2)
              {
                v94[6].i32[1] = 1;
              }
            }

LABEL_113:
            result = fi_log_enabled(*(a1 + 144), 2, 5);
            if (result)
            {
              v98 = *__error();
              fi_log(*(a1 + 144), 2, 5, "ofi_av_insert_addr", 328, "fi_addr: %llu\n", v38[3]);
              v99 = __error();
              result = 0;
              *v99 = v98;
            }

            return result;
          }

LABEL_120:
          exit(-1);
        }

LABEL_73:
        v47 += v45[1] << 8;
LABEL_74:
        v47 += *v45;
        goto LABEL_75;
      }

      if (v46 == 3)
      {
LABEL_72:
        v47 += v45[2] << 16;
        goto LABEL_73;
      }

      if (v46 == 4)
      {
LABEL_71:
        v47 += v45[3] << 24;
        goto LABEL_72;
      }

LABEL_70:
      v7 += v45[4];
      goto LABEL_71;
    }

    if (v46 > 8)
    {
      if (v46 != 9)
      {
        if (v46 != 10)
        {
          if (v46 != 11)
          {
            goto LABEL_75;
          }

          v56 += v45[10] << 24;
        }

        v56 += v45[9] << 16;
      }

      v56 += v45[8] << 8;
    }

    else
    {
      if (v46 == 6)
      {
LABEL_69:
        v7 += v45[5] << 8;
        goto LABEL_70;
      }

      if (v46 == 7)
      {
LABEL_68:
        v7 += v45[6] << 16;
        goto LABEL_69;
      }
    }

    v7 += v45[7] << 24;
    goto LABEL_68;
  }

  v34 = -*(v32 + 32);
  while (1)
  {
    v35 = v33 + v34;
    if (*(v33 + v34 + 60) == v31 && v10 == *(v35 + 56) && !memcmp(*(v35 + 48), a2, v10))
    {
      break;
    }

    v33 = *(v35 + 40);
    if (!v33)
    {
      goto LABEL_35;
    }
  }

  if (a3)
  {
    *a3 = *(v35 - 24);
  }

  if (atomic_fetch_add(v35, 1u) >= 1)
  {
    ofi_straddr_log_internal("ofi_av_insert_addr", 312, *(*(a1 + 32) + 220), *(a1 + 144), 0, 5, "addr already in AV", a2);
  }

  return 0;
}

uint64_t ofi_av_remove_addr(uint64_t a1, unint64_t a2)
{
  if (!(*(a1 + 120))(a1 + 56))
  {
    ofi_av_remove_addr_cold_11();
  }

  v4 = *(a1 + 160);
  v5 = v4[11];
  if (a2 / v5 >= v4[5])
  {
    rxm_rndv_handle_rd_done_cold_1();
  }

  v6 = *(*(v4[4] + 8 * (a2 / v5)) + 40) + v4[2] * (a2 % v5);
  v7 = (v6 - 48);
  if (*(v6 - 48) != v6 - 48)
  {
    rxm_rndv_handle_rd_done_cold_2();
  }

  if (atomic_fetch_add(v6, 0xFFFFFFFF) == 1)
  {
    v8 = *(v6 + 16);
    if (v8 || *(v6 + 24))
    {
      v11 = *(a1 + 152);
      v10 = (a1 + 152);
      v9 = v11;
      v12 = *(v11 + 8);
      if (v6 + 8 == *(v12 + 24))
      {
        *(v12 + 24) = v8 + *(v12 + 32);
      }

      v13 = *(v6 + 24);
      if (v8)
      {
        v10 = (v8 + *(v12 + 32) + 16);
      }

      else
      {
        v9 = *(v6 + 24);
      }

      *v10 = v13;
      v14 = *(v9 + 8);
      if (v13)
      {
        *(v13 + *(v14 + 32) + 8) = v8;
      }

      v15 = *v14 + 16 * ((*(v14 + 8) - 1) & *(v6 + 60));
      --*(v15 + 8);
      if (*v15 == v6 + 8)
      {
        *v15 = *(v6 + 40);
      }

      v16 = *(v6 + 32);
      v17 = *(v6 + 40);
      if (v16)
      {
        *(v16 + 32) = v17;
      }

      if (v17)
      {
        *(v17 + 24) = v16;
      }

      --*(v14 + 16);
    }

    else
    {
      free(**(*(a1 + 152) + 8));
      free(*(*(a1 + 152) + 8));
      *(a1 + 152) = 0;
    }

    v18 = *(v6 - 32);
    if (!v18)
    {
      ofi_buf_free_cold_6();
    }

    if (atomic_fetch_add((v18 + 76), 0xFFFFFFFF) <= 0)
    {
      ofi_ibuf_free_cold_7();
    }

    v19 = *(v6 - 32);
    if (!v19)
    {
      ofi_buf_free_cold_6();
    }

    v20 = *(v19 + 64);
    if (!v20)
    {
      ofi_buf_free_cold_5();
    }

    if ((*(v20 + 128) & 2) == 0)
    {
      ofi_ibuf_free_cold_4();
    }

    if (*(v6 - 8) != 0xF1C0DE0F1C0DE64)
    {
      ofi_ibuf_free_cold_1();
    }

    if (**(v6 - 16) != 0xF1C0DE0F1C0DE64)
    {
      ofi_ibuf_free_cold_2();
    }

    if (*v7 != v7)
    {
      ofi_ibuf_free_cold_3();
    }

    v21 = (v19 + 16);
    v22 = (v19 + 16);
    while (1)
    {
      v22 = *v22;
      if (v22 == v21)
      {
        break;
      }

      if (ofi_ibuf_is_lower(v22, v7))
      {
        if (v22)
        {
          goto LABEL_34;
        }

        break;
      }
    }

    v22 = v21;
LABEL_34:
    v23 = v22[1];
    v24 = *v23;
    *(v6 - 48) = *v23;
    *(v6 - 40) = v23;
    *(v24 + 8) = v7;
    *v23 = v7;
    v25 = *(v6 - 32);
    if (*v25 == v25)
    {
      v26 = v25[8];
      v27 = v26;
      while (1)
      {
        v27 = *v27;
        if (v27 == v26)
        {
          break;
        }

        if (ofi_ibufpool_region_is_lower(v27, v25))
        {
          if (v27)
          {
            goto LABEL_40;
          }

          break;
        }
      }

      v27 = v26;
LABEL_40:
      v28 = v27[1];
      v29 = *v28;
      *v25 = *v28;
      v25[1] = v28;
      *(v29 + 8) = v25;
      *v28 = v25;
    }
  }

  return 0;
}

uint64_t ofi_av_lookup_fi_addr_unsafe(uint64_t a1, unsigned __int8 *__s2)
{
  v3 = -17973521;
  v4 = -1640531527;
  v5 = *(a1 + 192);
  if (v5 < 0xC)
  {
    v8 = -1640531527;
    v7 = *(a1 + 192);
    v6 = __s2;
  }

  else
  {
    v6 = __s2;
    v7 = *(a1 + 192);
    v8 = -1640531527;
    do
    {
      v9 = *(v6 + 1) + v4;
      v10 = *(v6 + 2) + v3;
      v11 = (*v6 + v8 - (v9 + v10)) ^ (v10 >> 13);
      v12 = (v9 - v10 - v11) ^ (v11 << 8);
      v13 = (v10 - v11 - v12) ^ (v12 >> 13);
      v14 = (v11 - v12 - v13) ^ (v13 >> 12);
      v15 = (v12 - v13 - v14) ^ (v14 << 16);
      v16 = (v13 - v14 - v15) ^ (v15 >> 5);
      v8 = (v14 - v15 - v16) ^ (v16 >> 3);
      v4 = (v15 - v16 - v8) ^ (v8 << 10);
      v3 = (v16 - v8 - v4) ^ (v4 >> 15);
      v6 += 12;
      LODWORD(v7) = v7 - 12;
    }

    while (v7 > 0xB);
  }

  v17 = v3 + v5;
  if (v7 <= 5)
  {
    if (v7 <= 2)
    {
      if (v7 == 1)
      {
        goto LABEL_28;
      }

      if (v7 != 2)
      {
        goto LABEL_29;
      }

LABEL_27:
      v8 += v6[1] << 8;
LABEL_28:
      v8 += *v6;
      goto LABEL_29;
    }

    if (v7 == 3)
    {
LABEL_26:
      v8 += v6[2] << 16;
      goto LABEL_27;
    }

    if (v7 == 4)
    {
LABEL_25:
      v8 += v6[3] << 24;
      goto LABEL_26;
    }

LABEL_24:
    v4 += v6[4];
    goto LABEL_25;
  }

  if (v7 <= 8)
  {
    if (v7 == 6)
    {
LABEL_23:
      v4 += v6[5] << 8;
      goto LABEL_24;
    }

    if (v7 == 7)
    {
LABEL_22:
      v4 += v6[6] << 16;
      goto LABEL_23;
    }

LABEL_21:
    v4 += v6[7] << 24;
    goto LABEL_22;
  }

  switch(v7)
  {
    case 9:
LABEL_20:
      v17 += v6[8] << 8;
      goto LABEL_21;
    case 0xA:
LABEL_19:
      v17 += v6[9] << 16;
      goto LABEL_20;
    case 0xB:
      v17 += v6[10] << 24;
      goto LABEL_19;
  }

LABEL_29:
  v18 = *(a1 + 152);
  if (!v18)
  {
    return -1;
  }

  v19 = (v8 - v4 - v17) ^ (v17 >> 13);
  v20 = (v4 - v17 - v19) ^ (v19 << 8);
  v21 = (v17 - v19 - v20) ^ (v20 >> 13);
  v22 = (v19 - v20 - v21) ^ (v21 >> 12);
  v23 = (v20 - v21 - v22) ^ (v22 << 16);
  v24 = (v21 - v22 - v23) ^ (v23 >> 5);
  v25 = (v22 - v23 - v24) ^ (v24 >> 3);
  v26 = (v24 - v25 - ((v23 - v24 - v25) ^ (v25 << 10))) ^ (((v23 - v24 - v25) ^ (v25 << 10)) >> 15);
  v27 = *(v18 + 8);
  v28 = *(*v27 + 16 * ((*(v27 + 8) - 1) & v26));
  if (!v28)
  {
    return -1;
  }

  v29 = -*(v27 + 32);
  while (1)
  {
    v30 = v28 + v29;
    if (*(v28 + v29 + 60) == v26 && v5 == *(v30 + 56) && !memcmp(*(v30 + 48), __s2, v5))
    {
      break;
    }

    v28 = *(v30 + 40);
    if (!v28)
    {
      return -1;
    }
  }

  return *(v30 - 24);
}

uint64_t ofi_av_lookup_fi_addr(uint64_t a1, unsigned __int8 *a2)
{
  (*(a1 + 128))(a1 + 56);
  v4 = ofi_av_lookup_fi_addr_unsafe(a1, a2);
  (*(a1 + 136))(a1 + 56);
  return v4;
}

uint64_t ofi_av_close_lightweight(uint64_t a1, uint64_t a2)
{
  if (atomic_load((a1 + 40)))
  {
    if (fi_log_enabled(*(a1 + 144), 0, 5))
    {
      v4 = *__error();
      fi_log(*(a1 + 144), 0, 5, "ofi_av_close_lightweight", 384, "AV is busy\n");
      *__error() = v4;
    }

    return 4294967280;
  }

  else
  {
    ofi_genlock_destroy((a1 + 224), a2);
    atomic_fetch_add((*(a1 + 32) + 176), 0xFFFFFFFF);
    ofi_genlock_destroy((a1 + 48), v6);
    return 0;
  }
}

uint64_t ofi_av_close(uint64_t a1)
{
  (*(a1 + 128))(a1 + 56);
  v2 = *(a1 + 168);
  if (v2)
  {
    v3 = (*(*(v2 + 16) + 8))();
    if (v3)
    {
      v4 = v3;
      (*(a1 + 136))(a1 + 56);
      return v4;
    }

    *(a1 + 168) = 0;
  }

  (*(a1 + 136))(a1 + 56);
  v4 = ofi_av_close_lightweight(a1, v5);
  if (!v4)
  {
    v6 = *(a1 + 152);
    if (v6)
    {
      free(**(v6 + 8));
      free(*(*(a1 + 152) + 8));
      *(a1 + 152) = 0;
    }

    ofi_bufpool_destroy(*(a1 + 160));
    return 0;
  }

  return v4;
}

uint64_t ofi_av_size(uint64_t a1)
{
  v1 = *(a1 + 160);
  result = *(v1 + 24);
  if (!result)
  {
    return *(v1 + 88);
  }

  return result;
}

uint64_t ofi_av_init_lightweight(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v19 = *MEMORY[0x29EDCA608];
  if ((*a2 - 1) > 1)
  {
    if (!fi_log_enabled(*(a1 + 184), 0, 5))
    {
      return 4294967274;
    }

    v11 = *__error();
    fi_log(*(a1 + 184), 0, 5, "util_verify_av_attr", 500, "Invalid AV type\n");
LABEL_13:
    *__error() = v11;
    return 4294967274;
  }

  v7 = *(a1 + 224);
  if (v7)
  {
    v8 = *a2 == v7;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    fi_tostr_r(__s1, 0x14uLL, (a1 + 224), 15);
    fi_tostr_r(v17, 0x14uLL, a2, 15);
    if (fi_log_enabled(*(a1 + 184), 0, 5))
    {
      v13 = *__error();
      fi_log(*(a1 + 184), 0, 5, "util_verify_av_attr", 495, "Invalid AV type. domain->av_type: %s attr->type: %s\n", __s1, v17);
      *__error() = v13;
    }

    return 4294967274;
  }

  if (a2[3])
  {
    if (fi_log_enabled(*(a1 + 184), 0, 5))
    {
      v9 = *__error();
      fi_log(*(a1 + 184), 0, 5, "util_verify_av_attr", 505, "Shared AV is unsupported\n");
      *__error() = v9;
    }

    return 4294967218;
  }

  if ((a2[5] & 0xF7FFF7FFFEFFFEFFLL) != 0)
  {
    if (!fi_log_enabled(*(a1 + 184), 0, 5))
    {
      return 4294967274;
    }

    v11 = *__error();
    fi_log(*(a1 + 184), 0, 5, "util_verify_av_attr", 510, "invalid flags\n");
    goto LABEL_13;
  }

  v14 = 0;
  *(a3 + 40) = 0;
  *a3 = 11;
  *(a3 + 176) = a4;
  *(a3 + 32) = a1;
  *(a3 + 144) = *(a1 + 184);
  if (*(a1 + 264) == 3)
  {
    v14 = 2 * (*(a1 + 272) == 3);
  }

  result = ofi_genlock_init(a3 + 48, v14);
  if (!result)
  {
    v15 = *(a1 + 272) != 3 || (*(a1 + 264) - 3) >= 2;
    v16 = v15 ? 0 : 2;
    result = ofi_genlock_init(a3 + 224, v16);
    if (!result)
    {
      *(a3 + 208) = a3 + 208;
      *(a3 + 216) = a3 + 208;
      atomic_fetch_add((a1 + 176), 1u);
    }
  }

  return result;
}

uint64_t ofi_av_init(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4, uint64_t a5)
{
  result = ofi_av_init_lightweight(a1, a2, a4, a5);
  if (!result)
  {
    v9 = *a3;
    v10 = a3[1];
    v11 = 8 - (*a3 & 7);
    v24 = 6;
    if ((v9 & 7) != 0)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    v20[0] = v9 + v10 + v12 + 64;
    v20[1] = 16;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    if (*(a3 + 4) >= 2u)
    {
      v18 = a4[4];
      if (fi_log_enabled(*(v18 + 184), 0, 5))
      {
        v19 = *__error();
        fi_log(*(v18 + 184), 0, 5, "util_verify_av_util_attr", 430, "invalid internal flags\n");
        *__error() = v19;
      }

      return 4294967274;
    }

    else
    {
      v13 = ofi_universe_size;
      if (a2[1])
      {
        v13 = a2[1];
      }

      v14 = 2 << ~__clz(v13 - 1);
      if (v13 >= 2)
      {
        v15 = v14;
      }

      else
      {
        v15 = v13;
      }

      if (fi_log_enabled(a4[18], 2, 5))
      {
        v16 = *__error();
        fi_log(a4[18], 2, 5, "util_av_init", 468, "AV size %zu\n", v15);
        *__error() = v16;
      }

      v17 = *a3;
      a4[25] = *a3 + v12;
      a4[23] = a2[5] | *(a3 + 4);
      a4[24] = v17;
      a4[19] = 0;
      *(&v21 + 1) = v15;
      return ofi_bufpool_create_attr(v20, a4 + 20);
    }
  }

  return result;
}

uint64_t ofi_ip_av_get_fi_addr(uint64_t a1, unsigned __int8 *a2)
{
  (*(a1 + 128))(a1 + 56);
  v4 = ofi_av_lookup_fi_addr_unsafe(a1, a2);
  (*(a1 + 136))(a1 + 56);
  return v4;
}

uint64_t ofi_ip_av_insertv(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, void *a5, uint64_t a6, _DWORD *a7)
{
  if (!a4)
  {
    return 0;
  }

  v9 = *(a1 + 192);
  if (v9 >= a3)
  {
    v12 = a7;
    v14 = a4;
    if (*(a1 + 184))
    {
      if (v9 != a3)
      {
        ofi_ip_av_insertv_cold_1();
      }
    }

    else
    {
      *(a1 + 192) = a3;
    }

    if ((a6 & 0x400000000000000) != 0)
    {
      bzero(a7, 4 * a4);
    }

    else
    {
      v12 = 0;
    }

    v25 = 0;
    v16 = a2;
    v17 = a5;
    v18 = v12;
    v26 = v12;
    while (1)
    {
      if (a5)
      {
        v19 = v17;
      }

      else
      {
        v19 = 0;
      }

      if (!a2)
      {
        goto LABEL_33;
      }

      v20 = *(v16 + 1);
      if (v20 == 30)
      {
        goto LABEL_22;
      }

      if (v20 != 27)
      {
        break;
      }

      LOWORD(v21) = bswap64(*(v16 + 24));
LABEL_24:
      if (!v21)
      {
        goto LABEL_33;
      }

      if (v20 == 2)
      {
        if (!*(v16 + 4))
        {
          goto LABEL_33;
        }
      }

      else if (*(v16 + 8) == 0)
      {
        goto LABEL_33;
      }

      if (*(v16 + 1) == 2 && *(v16 + 8))
      {
        goto LABEL_33;
      }

      (*(a1 + 128))(a1 + 56);
      inserted = ofi_av_insert_addr(a1, v16, v19);
      (*(a1 + 136))(a1 + 56);
      if (inserted)
      {
        goto LABEL_38;
      }

      ++v25;
LABEL_40:
      ++v18;
      ++v17;
      v16 += a3;
      if (!--v14)
      {
        return v25;
      }
    }

    if (v20 != 2)
    {
      if (fi_log_enabled(&core_prov, 0, 1))
      {
        v22 = *__error();
        fi_log(&core_prov, 0, 1, "ofi_addr_get_port", 809, "Unknown address format\n");
        *__error() = v22;
        v12 = v26;
      }

LABEL_33:
      if (v19)
      {
        *v19 = -1;
      }

      if (fi_log_enabled(*(a1 + 144), 0, 5))
      {
        v23 = *__error();
        fi_log(*(a1 + 144), 0, 5, "ip_av_insert_addr", 600, "invalid address\n");
        *__error() = v23;
        v12 = v26;
      }

      inserted = -49;
LABEL_38:
      if (v12)
      {
        *v18 = -inserted;
      }

      goto LABEL_40;
    }

LABEL_22:
    v21 = bswap32(*(v16 + 2)) >> 16;
    goto LABEL_24;
  }

  if (fi_log_enabled(*(a1 + 144), 0, 5))
  {
    v10 = *__error();
    fi_log(*(a1 + 144), 0, 5, "ofi_ip_av_insertv", 623, "Address too large for AV\n");
    *__error() = v10;
  }

  return -22;
}

uint64_t ofi_ip_av_insert(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, unint64_t a5, _DWORD *a6)
{
  result = ofi_verify_av_insert(a1, a5, a6);
  if (result)
  {
    return result;
  }

  if (!a3)
  {
    goto LABEL_11;
  }

  v13 = *(a2 + 1);
  if (v13 == 2)
  {
    v14 = 16;
    goto LABEL_12;
  }

  if (v13 == 27)
  {
    v14 = 48;
    goto LABEL_12;
  }

  if (v13 != 30)
  {
    if (fi_log_enabled(&core_prov, 0, 0))
    {
      v15 = *__error();
      fi_log(&core_prov, 0, 0, "ofi_sizeofaddr", 692, "Unknown address format\n");
      v16 = __error();
      v14 = 0;
      *v16 = v15;
      goto LABEL_12;
    }

LABEL_11:
    v14 = 0;
    goto LABEL_12;
  }

  v14 = 28;
LABEL_12:

  return ofi_ip_av_insertv(a1, a2, v14, a3, a4, a5, a6);
}

uint64_t ofi_ip_av_sym_getaddr(uint64_t a1, char *__s, uint64_t a3, const char *a4, uint64_t a5, void **a6, size_t *a7)
{
  v75 = *MEMORY[0x29EDCA608];
  v66 = 0;
  v67 = 0;
  v65 = 0;
  if (strlen(__s) > 0x3F || strlen(a4) >= 0x40)
  {
    if (fi_log_enabled(*(a1 + 144), 0, 5))
    {
      v14 = *__error();
      fi_log(*(a1 + 144), 0, 5, "ofi_ip_av_sym_getaddr", 824, "node or service name is too long\n");
      *__error() = v14;
    }

    return 4294967218;
  }

  if (inet_pton(2, __s, &v65) == 1)
  {
    if (fi_log_enabled(*(a1 + 144), 2, 5))
    {
      v17 = *__error();
      fi_log(*(a1 + 144), 2, 5, "ofi_ip_av_sym_getaddr", 830, "insert symmetric IPv4\n");
      *__error() = v17;
    }

    v18 = strtol(a4, 0, 0);
    v19 = v65;
    v15 = a5 * a3;
    *a7 = 16;
    v20 = malloc_type_calloc(a5 * a3, 0x10uLL, 0x4A546E38uLL);
    if (v20)
    {
      if (a3)
      {
        v21 = 0;
        v22 = 0;
        v23 = bswap32(v19);
        do
        {
          if (a5)
          {
            v24 = 0;
            v25 = bswap32(v23 + v22);
            v26 = &v20[16 * v21 + 2];
            v21 += a5;
            do
            {
              *(v26 - 1) = 2;
              *(v26 + 2) = v25;
              *v26 = bswap32(v24 + v18) >> 16;
              v26 += 16;
              ++v24;
            }

            while (a5 != v24);
          }

          ++v22;
        }

        while (v22 != a3);
      }

LABEL_32:
      *a6 = v20;
      return v15;
    }

    return 4294967284;
  }

  v27 = inet_pton(30, __s, &v66);
  v28 = fi_log_enabled(*(a1 + 144), 2, 5);
  if (v27 == 1)
  {
    if (v28)
    {
      v29 = *__error();
      fi_log(*(a1 + 144), 2, 5, "ofi_ip_av_sym_getaddr", 838, "insert symmetric IPv6\n");
      *__error() = v29;
    }

    v30 = strtol(a4, 0, 0);
    v31 = v66;
    v32 = v67;
    v15 = a5 * a3;
    *a7 = 28;
    v20 = malloc_type_calloc(a5 * a3, 0x1CuLL, 0xE091C829uLL);
    if (!v20)
    {
      return 4294967284;
    }

    v73 = 0;
    *__dst = 0;
    *&v72 = v31;
    *(&v72 + 1) = v32;
    if (a3)
    {
      v33 = 0;
      v34 = 0;
      do
      {
        if (a5)
        {
          v35 = 0;
          v36 = &v20[28 * v33 + 8];
          v33 += a5;
          do
          {
            *(v36 - 7) = 30;
            *v36 = v72;
            *(v36 - 3) = bswap32(v35++ + v30) >> 16;
            v36 += 28;
          }

          while (a5 != v35);
        }

        v37 = 15;
        do
        {
          v38 = *(&v72 + v37) + 1;
          *(&v72 + v37) = v38;
          v39 = v37-- != 0;
        }

        while (v39 && v38 == -1);
        ++v34;
      }

      while (v34 != a3);
    }

    goto LABEL_32;
  }

  if (v28)
  {
    v40 = *__error();
    fi_log(*(a1 + 144), 2, 5, "ofi_ip_av_sym_getaddr", 844, "insert symmetric host names\n");
    *__error() = v40;
  }

  v68 = 0;
  memset(&v69, 0, sizeof(v69));
  v69.ai_socktype = 2;
  v41 = *(*(a1 + 32) + 220);
  if (v41 == 2)
  {
    v42 = 16;
  }

  else
  {
    if (v41 != 3)
    {
      if (fi_log_enabled(*(a1 + 144), 2, 5))
      {
        v56 = *__error();
        fi_log(*(a1 + 144), 2, 5, "ip_av_nodesym_getaddr", 759, "Unknown address format!\n");
        *__error() = v56;
      }

      return 4294967274;
    }

    v41 = 30;
    v42 = 28;
  }

  v15 = a5 * a3;
  v69.ai_family = v41;
  *a7 = v42;
  v43 = malloc_type_calloc(a5 * a3, v42, 0x7A3FDF23uLL);
  *a6 = v43;
  if (!v43)
  {
    return 4294967284;
  }

  v44 = v43;
  v64 = a7;
  v60 = a6;
  v45 = strlen(__s);
  v46 = 0;
  do
  {
    v47 = __s[v45 - 1 + v46--] - 48;
  }

  while (v47 < 0xA);
  v48 = v45 + v46;
  v49 = v45 + v46 + 1;
  __memcpy_chk();
  if (a3)
  {
    v62 = atoi(a4);
    v50 = atoi(&__s[v49]);
    v51 = 0;
    v59 = &__dst[v48];
    v58 = 62 - v48;
    v57 = v50;
    v61 = v62;
    while (1)
    {
      v63 = v51;
      if (a3 == 1)
      {
        strncpy(__dst, __s, 0x3FuLL);
        v74 = 0;
      }

      else
      {
        snprintf(v59 + 1, v58, "%zu", v51 + v57);
      }

      if (a5)
      {
        break;
      }

LABEL_57:
      v51 = v63 + 1;
      if (v63 + 1 == a3)
      {
        return v15;
      }
    }

    v52 = v61;
    v53 = a5;
    while (1)
    {
      if (a5 == 1)
      {
        strncpy(__str, a4, 0x3FuLL);
        __str[63] = 0;
      }

      else
      {
        snprintf(__str, 0x3FuLL, "%zu", v52);
      }

      if (fi_log_enabled(*(a1 + 144), 2, 5))
      {
        v54 = *__error();
        fi_log(*(a1 + 144), 2, 5, "ip_av_nodesym_getaddr", 794, "resolving %s:%s for AV insert\n", __s, a4);
        *__error() = v54;
      }

      v55 = getaddrinfo(__s, a4, &v69, &v68);
      if (v55)
      {
        break;
      }

      memcpy(v44, v68->ai_addr, *v64);
      v44 += *v64;
      freeaddrinfo(v68);
      ++v52;
      if (!--v53)
      {
        goto LABEL_57;
      }
    }

    if (v55 < 0)
    {
      v15 = v55;
    }

    else
    {
      v15 = -v55;
    }

    free(*v60);
  }

  return v15;
}

uint64_t ofi_ip_av_insertsym(uint64_t a1, char *a2, uint64_t a3, const char *a4, uint64_t a5, void *a6, unint64_t a7, _DWORD *a8)
{
  result = ofi_verify_av_insert(a1, a7, a8);
  if (!result)
  {
    v19 = 0;
    v20 = 0;
    result = ofi_ip_av_sym_getaddr(a1, a2, a3, a4, a5, &v20, &v19);
    if (result >= 1)
    {
      v17 = v20;
      v18 = ofi_ip_av_insertv(a1, v20, v19, result, a6, a7, a8);
      free(v17);
      return v18;
    }
  }

  return result;
}

uint64_t ofi_ip_av_remove(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    if (fi_log_enabled(*(a1 + 144), 0, 5))
    {
      v5 = *__error();
      fi_log(*(a1 + 144), 0, 5, "ofi_ip_av_remove", 883, "invalid flags\n");
      *__error() = v5;
    }

    return 4294967274;
  }

  else
  {
    v7 = a3;
    if (a3 - 1 >= 0)
    {
      v8 = a2 - 8;
      do
      {
        (*(a1 + 128))(a1 + 56);
        v9 = ofi_av_remove_addr(a1, *(v8 + 8 * v7));
        (*(a1 + 136))(a1 + 56);
        if (v9 && fi_log_enabled(*(a1 + 144), 0, 5))
        {
          v10 = *__error();
          fi_log(*(a1 + 144), 0, 5, "ofi_ip_av_remove", 900, "removal of fi_addr %llu failed\n", *(v8 + 8 * v7));
          *__error() = v10;
        }

        --v7;
      }

      while (v7 > 0);
    }

    return 0;
  }
}

BOOL ofi_ip_av_is_valid(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 160);
  v3 = v2[11];
  if (a2 / v3 >= v2[5])
  {
    ofi_ip_av_is_valid_cold_1();
  }

  v4 = *(*(v2[4] + 8 * (a2 / v3)) + 40) + v2[2] * (a2 % v3);
  return *(v4 - 48) == v4 - 48;
}

uint64_t ofi_ip_av_lookup(uint64_t a1, unint64_t a2, void *a3, size_t *a4)
{
  v7 = *(a1 + 192);
  addr = ofi_av_get_addr(a1, a2);
  if (*a4 >= v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = *a4;
  }

  memcpy(a3, addr, v9);
  *a4 = *(a1 + 192);
  return 0;
}

uint64_t ofi_ip_av_create(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v14[0] = 0;
  v14[1] = 0;
  v15 = 0;
  v8 = *(a1 + 220);
  if (v8 == 3)
  {
    v9 = 28;
    goto LABEL_5;
  }

  if (v8 == 2)
  {
    v9 = 16;
LABEL_5:
    v14[0] = v9;
    goto LABEL_7;
  }

  v14[0] = 28;
  LODWORD(v15) = 1;
LABEL_7:
  if (!*a2)
  {
    *a2 = 1;
  }

  v10 = malloc_type_calloc(1uLL, 0x148uLL, 0x10E20402DAD95FFuLL);
  if (!v10)
  {
    return 4294967284;
  }

  v11 = v10;
  v12 = ofi_av_init(a1, a2, v14, v10, a4);
  if (v12)
  {
    free(v11);
  }

  else
  {
    *a3 = v11;
    v11[2] = &ip_av_fi_ops;
    *(*a3 + 24) = &ip_av_ops;
  }

  return v12;
}

uint64_t ip_av_close(void *a1)
{
  v2 = ofi_av_close(a1);
  if (!v2)
  {
    free(a1);
  }

  return v2;
}

void *fi_dupinfo_1_0(__int128 *a1)
{
  if (a1)
  {
    v3 = malloc_type_calloc(1uLL, 0x78uLL, 0x10A004019A5F1E0uLL);
    v4 = v3;
    if (!v3)
    {
      return v4;
    }

    v5 = a1[1];
    v6 = a1[2];
    v7 = *(a1 + 8);
    *(v3 + 3) = a1[3];
    v8 = *a1;
    *(v3 + 8) = v7;
    *(v3 + 7) = 0;
    v9 = v3 + 56;
    *(v3 + 1) = v5;
    *(v3 + 2) = v6;
    *(v3 + 72) = 0u;
    v10 = v3 + 72;
    *v3 = v8;
    *v3 = 0;
    *(v3 + 6) = 0;
    *(v3 + 88) = 0u;
    *(v3 + 13) = 0;
    v11 = *(a1 + 6);
    if (v11)
    {
      v12 = v3 + 48;
      v13 = *(a1 + 4);
      v14 = malloc_type_malloc(v13, 0x2A1BF8CCuLL);
      if (!v14)
      {
        goto LABEL_35;
      }

      v15 = v14;
      memcpy(v14, v11, v13);
      *v12 = v15;
    }

    v16 = *(a1 + 7);
    if (!v16)
    {
      goto LABEL_9;
    }

    v17 = *(a1 + 5);
    v18 = malloc_type_malloc(v17, 0x2A1BF8CCuLL);
    if (v18)
    {
      v19 = v18;
      memcpy(v18, v16, v17);
      *v9 = v19;
LABEL_9:
      if (!*(a1 + 9) || (v20 = malloc_type_calloc(1uLL, 0x50uLL, 0x1000040D9C97D19uLL), (*v10 = v20) != 0) && (v21 = *(a1 + 9), *v20 = *v21, v22 = *(v21 + 16), v23 = *(v21 + 32), v24 = *(v21 + 48), v20[8] = *(v21 + 64), *(v20 + 2) = v23, *(v20 + 3) = v24, *(v20 + 1) = v22, *v10))
      {
        if (!*(a1 + 10) || (v25 = malloc_type_calloc(1uLL, 0x40uLL, 0x1000040FA0F61DDuLL), (v4[10] = v25) != 0) && (v26 = *(a1 + 10), v27 = *v26, v28 = v26[1], v29 = v26[3], v25[2] = v26[2], v25[3] = v29, *v25 = v27, v25[1] = v28, v4[10]))
        {
          if (!*(a1 + 11) || (v30 = malloc_type_calloc(1uLL, 0x60uLL, 0x10100407B5EC8F1uLL), (v4[11] = v30) != 0) && (v31 = *(a1 + 11), *v30 = *v31, v32 = v31[1], v33 = v31[2], v34 = v31[4], v30[3] = v31[3], v30[4] = v34, v30[1] = v32, v30[2] = v33, v4[11]))
          {
            if (!*(a1 + 12) || (v35 = malloc_type_calloc(1uLL, 0xD0uLL, 0x10300407836402CuLL), (v4[12] = v35) != 0) && (v36 = *(a1 + 12), v37 = *v36, v38 = v36[1], v39 = v36[3], v35[2] = v36[2], v35[3] = v39, *v35 = v37, v35[1] = v38, v40 = v36[4], v41 = v36[5], v42 = v36[6], *(v35 + 14) = *(v36 + 14), v35[5] = v41, v35[6] = v42, v35[4] = v40, (v43 = v4[12]) != 0) && ((v44 = *(*(a1 + 12) + 8)) == 0 || (v45 = strdup(v44), (*(v43 + 8) = v45) != 0)))
            {
              if (!*(a1 + 13))
              {
                return v4;
              }

              v46 = malloc_type_calloc(1uLL, 0x20uLL, 0x1030040A4FB0822uLL);
              v4[13] = v46;
              if (v46)
              {
                v47 = *(a1 + 13);
                v48 = v47[1];
                *v46 = *v47;
                v46[1] = v48;
                v49 = v4[13];
                if (v49)
                {
                  *(v49 + 8) = 0;
                  *(v49 + 16) = 0;
                  v50 = *(a1 + 13);
                  v51 = *(v50 + 8);
                  if (!v51 || (v52 = strdup(v51), (*(v49 + 8) = v52) != 0))
                  {
                    v53 = *(v50 + 16);
                    if (!v53)
                    {
                      return v4;
                    }

                    v54 = strdup(v53);
                    *(v49 + 16) = v54;
                    if (v54)
                    {
                      return v4;
                    }
                  }
                }
              }
            }
          }
        }
      }

      goto LABEL_36;
    }

    v12 = v4 + 7;
LABEL_35:
    *v12 = 0;
LABEL_36:
    fi_freeinfo(v4);
    return 0;
  }

  return ofi_allocinfo_internal();
}

uint64_t fi_getinfo_1_0(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5, void *a6)
{
  if (a5)
  {
    v11 = fi_dupinfo_1_0(a5);
    if (!v11)
    {
      return 4294967284;
    }
  }

  else
  {
    v11 = 0;
  }

  v13 = fi_getinfo(a1, a2, a3, a4, v11, a6);
  fi_freeinfo(v11);
  return v13;
}

uint64_t fi_fabric_1_0(__int128 *a1, uint64_t *a2, uint64_t a3)
{
  if (!a1)
  {
    return 4294967274;
  }

  v3 = a1[1];
  v5 = *a1;
  v6 = v3;
  HIDWORD(v6) = 0x10000;
  return fi_fabric(&v5, a2, a3);
}

void *fi_dupinfo_1_1(__int128 *a1)
{
  if (a1)
  {
    v3 = malloc_type_calloc(1uLL, 0x78uLL, 0x10A004019A5F1E0uLL);
    if (v3)
    {
      v4 = v3;
      v5 = *a1;
      v6 = a1[2];
      v3[1] = a1[1];
      v3[2] = v6;
      *v3 = v5;
      v7 = a1[3];
      v8 = a1[4];
      v9 = a1[6];
      v3[5] = a1[5];
      v3[6] = v9;
      v3[3] = v7;
      v3[4] = v8;
      if (!*(a1 + 9) || (v10 = malloc_type_calloc(1uLL, 0x50uLL, 0x1000040D9C97D19uLL), (*(v4 + 9) = v10) != 0) && (v11 = *(a1 + 9), *v10 = *v11, v12 = *(v11 + 16), v13 = *(v11 + 32), v14 = *(v11 + 48), v10[8] = *(v11 + 64), *(v10 + 2) = v13, *(v10 + 3) = v14, *(v10 + 1) = v12, *(v4 + 9)))
      {
        if (!*(a1 + 10) || (v15 = malloc_type_calloc(1uLL, 0x40uLL, 0x1000040FA0F61DDuLL), (*(v4 + 10) = v15) != 0) && (v16 = *(a1 + 10), v17 = *v16, v18 = v16[1], v19 = v16[3], v15[2] = v16[2], v15[3] = v19, *v15 = v17, v15[1] = v18, *(v4 + 10)))
        {
          if (!*(a1 + 11) || (v20 = malloc_type_calloc(1uLL, 0x60uLL, 0x10100407B5EC8F1uLL), (*(v4 + 11) = v20) != 0) && (v21 = *(a1 + 11), v22 = v21[1], *v20 = *v21, v20[1] = v22, v23 = v21[2], v24 = v21[3], v25 = v21[5], v20[4] = v21[4], v20[5] = v25, v20[2] = v23, v20[3] = v24, *(v4 + 11)))
          {
            if (!*(a1 + 12) || (v26 = malloc_type_calloc(1uLL, 0xD0uLL, 0x10300407836402CuLL), (*(v4 + 12) = v26) != 0) && (v27 = *(a1 + 12), v28 = *v27, v29 = v27[1], v30 = v27[3], v26[2] = v27[2], v26[3] = v30, *v26 = v28, v26[1] = v29, v31 = v27[4], v32 = v27[5], v33 = v27[7], v26[6] = v27[6], v26[7] = v33, v26[4] = v31, v26[5] = v32, v34 = v27[8], v35 = v27[9], v36 = v27[10], *(v26 + 22) = *(v27 + 22), v26[9] = v35, v26[10] = v36, v26[8] = v34, *(v4 + 12)))
            {
              if (!*(a1 + 13) || (v37 = malloc_type_calloc(1uLL, 0x20uLL, 0x1030040A4FB0822uLL), (*(v4 + 13) = v37) != 0) && (v38 = *(a1 + 13), v39 = v38[1], *v37 = *v38, v37[1] = v39, *(v4 + 13)))
              {
                v40 = fi_dupinfo(v4);
                v41 = *(v4 + 13);
                if (v41)
                {
                  free(v41);
                  *(v4 + 13) = 0;
                }

                v42 = *(v4 + 12);
                if (v42)
                {
                  free(v42);
                  *(v4 + 12) = 0;
                }

                v43 = *(v4 + 11);
                if (v43)
                {
                  free(v43);
                  *(v4 + 11) = 0;
                }

                v44 = *(v4 + 10);
                if (v44)
                {
                  free(v44);
                  *(v4 + 10) = 0;
                }

                v45 = *(v4 + 9);
                if (v45)
                {
                  free(v45);
                }

                free(v4);
                return v40;
              }

              v47 = *(v4 + 12);
              if (v47)
              {
                free(v47);
                *(v4 + 12) = 0;
              }
            }

            v48 = *(v4 + 11);
            if (v48)
            {
              free(v48);
              *(v4 + 11) = 0;
            }
          }

          v49 = *(v4 + 10);
          if (v49)
          {
            free(v49);
            *(v4 + 10) = 0;
          }
        }

        v50 = *(v4 + 9);
        if (v50)
        {
          free(v50);
        }
      }

      free(v4);
    }

    return 0;
  }

  return ofi_allocinfo_internal();
}

uint64_t fi_getinfo_1_1(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5, void *a6)
{
  if (a5)
  {
    v11 = fi_dupinfo_1_1(a5);
    if (!v11)
    {
      return 4294967284;
    }
  }

  else
  {
    v11 = 0;
  }

  v13 = fi_getinfo(a1, a2, a3, a4, v11, a6);
  fi_freeinfo(v11);
  return v13;
}

void *fi_dupinfo_1_2(__int128 *a1)
{
  if (a1)
  {
    v3 = malloc_type_calloc(1uLL, 0x78uLL, 0x10A004019A5F1E0uLL);
    if (v3)
    {
      v4 = v3;
      v5 = *a1;
      v6 = a1[1];
      v7 = a1[3];
      v3[2] = a1[2];
      v3[3] = v7;
      *v3 = v5;
      v3[1] = v6;
      v8 = a1[4];
      v9 = a1[5];
      v10 = a1[6];
      *(v3 + 14) = *(a1 + 14);
      v3[5] = v9;
      v3[6] = v10;
      v3[4] = v8;
      if (!*(a1 + 9) || (v11 = malloc_type_calloc(1uLL, 0x50uLL, 0x1000040D9C97D19uLL), (*(v4 + 9) = v11) != 0) && (v12 = *(a1 + 9), *v11 = *v12, v13 = *(v12 + 16), v14 = *(v12 + 32), v15 = *(v12 + 48), v11[8] = *(v12 + 64), *(v11 + 2) = v14, *(v11 + 3) = v15, *(v11 + 1) = v13, *(v4 + 9)))
      {
        if (!*(a1 + 10) || (v16 = malloc_type_calloc(1uLL, 0x40uLL, 0x1000040FA0F61DDuLL), (*(v4 + 10) = v16) != 0) && (v17 = *(a1 + 10), v18 = *v17, v19 = v17[1], v20 = v17[3], v16[2] = v17[2], v16[3] = v20, *v16 = v18, v16[1] = v19, *(v4 + 10)))
        {
          if (!*(a1 + 11) || (v21 = malloc_type_calloc(1uLL, 0x60uLL, 0x10100407B5EC8F1uLL), (*(v4 + 11) = v21) != 0) && (v22 = *(a1 + 11), v23 = v22[1], *v21 = *v22, v21[1] = v23, v24 = v22[2], v25 = v22[3], v26 = v22[5], v21[4] = v22[4], v21[5] = v26, v21[2] = v24, v21[3] = v25, *(v4 + 11)))
          {
            if (!*(a1 + 12) || (v27 = malloc_type_calloc(1uLL, 0xD0uLL, 0x10300407836402CuLL), (*(v4 + 12) = v27) != 0) && (v28 = *(a1 + 12), v29 = *v28, v30 = v28[1], v31 = v28[3], v27[2] = v28[2], v27[3] = v31, *v27 = v29, v27[1] = v30, v32 = v28[4], v33 = v28[5], v34 = v28[7], v27[6] = v28[6], v27[7] = v34, v27[4] = v32, v27[5] = v33, v35 = v28[8], v36 = v28[9], v37 = v28[10], *(v27 + 22) = *(v28 + 22), v27[9] = v36, v27[10] = v37, v27[8] = v35, *(v4 + 12)))
            {
              if (!*(a1 + 13) || (v38 = malloc_type_calloc(1uLL, 0x20uLL, 0x1030040A4FB0822uLL), (*(v4 + 13) = v38) != 0) && (v39 = *(a1 + 13), v40 = v39[1], *v38 = *v39, v38[1] = v40, *(v4 + 13)))
              {
                v41 = fi_dupinfo(v4);
                v42 = *(v4 + 13);
                if (v42)
                {
                  free(v42);
                  *(v4 + 13) = 0;
                }

                v43 = *(v4 + 12);
                if (v43)
                {
                  free(v43);
                  *(v4 + 12) = 0;
                }

                v44 = *(v4 + 11);
                if (v44)
                {
                  free(v44);
                  *(v4 + 11) = 0;
                }

                v45 = *(v4 + 10);
                if (v45)
                {
                  free(v45);
                  *(v4 + 10) = 0;
                }

                v46 = *(v4 + 9);
                if (v46)
                {
                  free(v46);
                }

                free(v4);
                return v41;
              }

              v48 = *(v4 + 12);
              if (v48)
              {
                free(v48);
                *(v4 + 12) = 0;
              }
            }

            v49 = *(v4 + 11);
            if (v49)
            {
              free(v49);
              *(v4 + 11) = 0;
            }
          }

          v50 = *(v4 + 10);
          if (v50)
          {
            free(v50);
            *(v4 + 10) = 0;
          }
        }

        v51 = *(v4 + 9);
        if (v51)
        {
          free(v51);
        }
      }

      free(v4);
    }

    return 0;
  }

  return ofi_allocinfo_internal();
}

uint64_t fi_getinfo_1_2(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5, void *a6)
{
  if (a5)
  {
    v11 = fi_dupinfo_1_2(a5);
    if (!v11)
    {
      return 4294967284;
    }
  }

  else
  {
    v11 = 0;
  }

  v13 = fi_getinfo(a1, a2, a3, a4, v11, a6);
  fi_freeinfo(v11);
  return v13;
}

void *fi_dupinfo_1_3(__int128 *a1)
{
  if (a1)
  {
    v3 = malloc_type_calloc(1uLL, 0x78uLL, 0x10A004019A5F1E0uLL);
    if (v3)
    {
      v4 = v3;
      v5 = *a1;
      v6 = a1[1];
      v7 = a1[3];
      v3[2] = a1[2];
      v3[3] = v7;
      *v3 = v5;
      v3[1] = v6;
      v8 = a1[4];
      v9 = a1[5];
      v10 = a1[6];
      *(v3 + 14) = *(a1 + 14);
      v3[5] = v9;
      v3[6] = v10;
      v3[4] = v8;
      if (!*(a1 + 9) || (v11 = malloc_type_calloc(1uLL, 0x50uLL, 0x1000040D9C97D19uLL), (*(v4 + 9) = v11) != 0) && (v12 = *(a1 + 9), *v11 = *v12, v13 = v12[1], v14 = v12[2], v15 = v12[4], v11[3] = v12[3], v11[4] = v15, v11[1] = v13, v11[2] = v14, *(v4 + 9)))
      {
        if (!*(a1 + 10) || (v16 = malloc_type_calloc(1uLL, 0x40uLL, 0x1000040FA0F61DDuLL), (*(v4 + 10) = v16) != 0) && (v17 = *(a1 + 10), v18 = *v17, v19 = v17[1], v20 = v17[3], v16[2] = v17[2], v16[3] = v20, *v16 = v18, v16[1] = v19, *(v4 + 10)))
        {
          if (!*(a1 + 11) || (v21 = malloc_type_calloc(1uLL, 0x60uLL, 0x10100407B5EC8F1uLL), (*(v4 + 11) = v21) != 0) && (v22 = *(a1 + 11), v23 = v22[1], *v21 = *v22, v21[1] = v23, v24 = v22[2], v25 = v22[3], v26 = v22[5], v21[4] = v22[4], v21[5] = v26, v21[2] = v24, v21[3] = v25, *(v4 + 11)))
          {
            if (!*(a1 + 12) || (v27 = malloc_type_calloc(1uLL, 0xD0uLL, 0x10300407836402CuLL), (*(v4 + 12) = v27) != 0) && (v28 = *(a1 + 12), v29 = *v28, v30 = v28[1], v31 = v28[3], v27[2] = v28[2], v27[3] = v31, *v27 = v29, v27[1] = v30, v32 = v28[4], v33 = v28[5], v34 = v28[7], v27[6] = v28[6], v27[7] = v34, v27[4] = v32, v27[5] = v33, v35 = v28[8], v36 = v28[9], v37 = v28[11], v27[10] = v28[10], v27[11] = v37, v27[8] = v35, v27[9] = v36, *(v4 + 12)))
            {
              if (!*(a1 + 13) || (v38 = malloc_type_calloc(1uLL, 0x20uLL, 0x1030040A4FB0822uLL), (*(v4 + 13) = v38) != 0) && (v39 = *(a1 + 13), v40 = v39[1], *v38 = *v39, v38[1] = v40, *(v4 + 13)))
              {
                v41 = fi_dupinfo(v4);
                v42 = *(v4 + 13);
                if (v42)
                {
                  free(v42);
                  *(v4 + 13) = 0;
                }

                v43 = *(v4 + 12);
                if (v43)
                {
                  free(v43);
                  *(v4 + 12) = 0;
                }

                v44 = *(v4 + 11);
                if (v44)
                {
                  free(v44);
                  *(v4 + 11) = 0;
                }

                v45 = *(v4 + 10);
                if (v45)
                {
                  free(v45);
                  *(v4 + 10) = 0;
                }

                v46 = *(v4 + 9);
                if (v46)
                {
                  free(v46);
                }

                free(v4);
                return v41;
              }

              v48 = *(v4 + 12);
              if (v48)
              {
                free(v48);
                *(v4 + 12) = 0;
              }
            }

            v49 = *(v4 + 11);
            if (v49)
            {
              free(v49);
              *(v4 + 11) = 0;
            }
          }

          v50 = *(v4 + 10);
          if (v50)
          {
            free(v50);
            *(v4 + 10) = 0;
          }
        }

        v51 = *(v4 + 9);
        if (v51)
        {
          free(v51);
        }
      }

      free(v4);
    }

    return 0;
  }

  return ofi_allocinfo_internal();
}

uint64_t fi_getinfo_1_3(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5, void *a6)
{
  if (a5)
  {
    v11 = fi_dupinfo_1_3(a5);
    if (!v11)
    {
      return 4294967284;
    }
  }

  else
  {
    v11 = 0;
  }

  v13 = fi_getinfo(a1, a2, a3, a4, v11, a6);
  fi_freeinfo(v11);
  return v13;
}

void *fi_dupinfo_1_7(__int128 *a1)
{
  if (a1)
  {
    v3 = malloc_type_calloc(1uLL, 0x78uLL, 0x10A004019A5F1E0uLL);
    if (v3)
    {
      v4 = v3;
      v5 = *a1;
      v6 = a1[1];
      v7 = a1[3];
      v3[2] = a1[2];
      v3[3] = v7;
      *v3 = v5;
      v3[1] = v6;
      v8 = a1[4];
      v9 = a1[5];
      v10 = a1[6];
      *(v3 + 14) = *(a1 + 14);
      v3[5] = v9;
      v3[6] = v10;
      v3[4] = v8;
      if (!*(a1 + 9) || (v11 = malloc_type_calloc(1uLL, 0x50uLL, 0x1000040D9C97D19uLL), (*(v4 + 9) = v11) != 0) && (v12 = *(a1 + 9), *v11 = *v12, v13 = v12[1], v14 = v12[2], v15 = v12[4], v11[3] = v12[3], v11[4] = v15, v11[1] = v13, v11[2] = v14, *(v4 + 9)))
      {
        if (!*(a1 + 10) || (v16 = malloc_type_calloc(1uLL, 0x40uLL, 0x1000040FA0F61DDuLL), (*(v4 + 10) = v16) != 0) && (v17 = *(a1 + 10), v18 = *v17, v19 = v17[1], v20 = v17[3], v16[2] = v17[2], v16[3] = v20, *v16 = v18, v16[1] = v19, *(v4 + 10)))
        {
          if (!*(a1 + 11) || (v21 = malloc_type_calloc(1uLL, 0x60uLL, 0x10100407B5EC8F1uLL), (*(v4 + 11) = v21) != 0) && (v22 = *(a1 + 11), v23 = v22[1], *v21 = *v22, v21[1] = v23, v24 = v22[2], v25 = v22[3], v26 = v22[5], v21[4] = v22[4], v21[5] = v26, v21[2] = v24, v21[3] = v25, *(v4 + 11)))
          {
            if (!*(a1 + 12) || (v27 = malloc_type_calloc(1uLL, 0xD0uLL, 0x10300407836402CuLL), (*(v4 + 12) = v27) != 0) && (v28 = *(a1 + 12), *v27 = *v28, v29 = *(v28 + 16), v30 = *(v28 + 32), v31 = *(v28 + 64), v27[3] = *(v28 + 48), v27[4] = v31, v27[1] = v29, v27[2] = v30, v32 = *(v28 + 80), v33 = *(v28 + 96), v34 = *(v28 + 128), v27[7] = *(v28 + 112), v27[8] = v34, v27[5] = v32, v27[6] = v33, v35 = *(v28 + 144), v36 = *(v28 + 160), v37 = *(v28 + 176), *(v27 + 24) = *(v28 + 192), v27[10] = v36, v27[11] = v37, v27[9] = v35, *(v4 + 12)))
            {
              if (!*(a1 + 13) || (v38 = malloc_type_calloc(1uLL, 0x20uLL, 0x1030040A4FB0822uLL), (*(v4 + 13) = v38) != 0) && (v39 = *(a1 + 13), v40 = v39[1], *v38 = *v39, v38[1] = v40, *(v4 + 13)))
              {
                v41 = fi_dupinfo(v4);
                v42 = *(v4 + 13);
                if (v42)
                {
                  free(v42);
                  *(v4 + 13) = 0;
                }

                v43 = *(v4 + 12);
                if (v43)
                {
                  free(v43);
                  *(v4 + 12) = 0;
                }

                v44 = *(v4 + 11);
                if (v44)
                {
                  free(v44);
                  *(v4 + 11) = 0;
                }

                v45 = *(v4 + 10);
                if (v45)
                {
                  free(v45);
                  *(v4 + 10) = 0;
                }

                v46 = *(v4 + 9);
                if (v46)
                {
                  free(v46);
                }

                free(v4);
                return v41;
              }

              v48 = *(v4 + 12);
              if (v48)
              {
                free(v48);
                *(v4 + 12) = 0;
              }
            }

            v49 = *(v4 + 11);
            if (v49)
            {
              free(v49);
              *(v4 + 11) = 0;
            }
          }

          v50 = *(v4 + 10);
          if (v50)
          {
            free(v50);
            *(v4 + 10) = 0;
          }
        }

        v51 = *(v4 + 9);
        if (v51)
        {
          free(v51);
        }
      }

      free(v4);
    }

    return 0;
  }

  return ofi_allocinfo_internal();
}

uint64_t fi_getinfo_1_7(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5, void *a6)
{
  if (a5)
  {
    v11 = fi_dupinfo_1_7(a5);
    if (!v11)
    {
      return 4294967284;
    }
  }

  else
  {
    v11 = 0;
  }

  v13 = fi_getinfo(a1, a2, a3, a4, v11, a6);
  fi_freeinfo(v11);
  return v13;
}

uint64_t ofi_coll_cq_open(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = *(*(a1 + 56) + 136);
  if (!a2 || (*(a2 + 13) & 8) == 0)
  {
    if (fi_log_enabled(v4, 0, 0))
    {
      v6 = *__error();
      fi_log(v4, 0, 0, "ofi_coll_cq_open", 83, "FI_PEER flag required\n");
LABEL_9:
      *__error() = v6;
      return 4294967274;
    }

    return 4294967274;
  }

  if (!a4 || *a4 <= 0xFuLL)
  {
    if (fi_log_enabled(v4, 0, 0))
    {
      v6 = *__error();
      fi_log(v4, 0, 0, "ofi_coll_cq_open", 88, "invalid peer CQ context\n");
      goto LABEL_9;
    }

    return 4294967274;
  }

  v12 = malloc_type_calloc(1uLL, 0x160uLL, 0x10B2040AA59F8AEuLL);
  if (!v12)
  {
    return 4294967284;
  }

  v13 = v12;
  v12[43] = a4[1];
  v8 = ofi_cq_init(v4, a1, a2, v12, ofi_cq_progress, a4);
  if (v8)
  {
    free(v13);
  }

  else
  {
    *a3 = v13;
    v13[2] = &coll_cq_fi_ops;
    *(*a3 + 24) = &coll_cq_ops;
  }

  return v8;
}

uint64_t coll_cq_close(void *a1, uint64_t a2)
{
  v3 = ofi_cq_cleanup(a1, a2);
  if (!v3)
  {
    free(a1);
  }

  return v3;
}

uint64_t hook_av_open(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = malloc_type_calloc(1uLL, 0x30uLL, 0x10A0040B8DA9B7CuLL);
  if (!v7)
  {
    return 4294967284;
  }

  v8 = v7;
  v7[5] = a1;
  *v7 = 11;
  v7[1] = a4;
  v7[2] = &hook_fid_ops;
  v7[3] = &hook_av_ops;
  v9 = (*(*(*(a1 + 40) + 24) + 8))();
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

void xnet_init_infos()
{
  v0 = xnet_max_inject;
  v1 = &xnet_info;
  do
  {
    v1[9][5] = v0;
    v1 = *v1;
  }

  while (v1);
}

void xnet_alter_defaults(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(*(a4 + 72) + 48) = xnet_default_tx_size;
  if (a2)
  {
    if (*(*(a3 + 88) + 72) != -1)
    {
      v4 = *(a2 + 88);
      if (v4)
      {
        if (*(v4 + 72) != -1)
        {
          *(*(a4 + 80) + 48) = xnet_default_rx_size;
        }
      }
    }
  }
}

void xnet_report_success(uint64_t result)
{
  if ((*(result + 168) & 0x108) == 0)
  {
    v2 = *(result + 120);
    if (v2)
    {
      (*(*(v2 + 24) + 24))();
    }

    v3 = *(result + 160);
    if ((v3 & 0x1000000) != 0)
    {
      v4 = *(result + 112);
      if (!v4)
      {
        xnet_report_success_cold_2();
      }

      v5 = *(result + 168);
      if ((v5 & 0x200) != 0)
      {
        *(result + 168) = v5 & 0xFFFFFDFF;

        xnet_complete_saved(result, result + 320);
        return;
      }

      v34 = 0;
      v35 = 0;
      v6 = v3 & 0xFFFFFFFFFEFFFFFFLL;
      v36 = v3 & 0xFFFFFFFFFEFFFFFFLL;
      if ((v3 & 0x400) != 0)
      {
        if (*(result + 201) == 5)
        {
          v8 = 32;
          if ((*(result + 202) & 1) == 0)
          {
            v8 = 24;
          }

          v7 = *(result + v8 + 200);
        }

        else
        {
          v7 = *(result + 208) - *(result + 206);
        }

        if ((v5 & 0x10000) != 0)
        {
          v10 = *(result + 144);
          if (v10)
          {
            --*v10;
            v11 = *(result + 144);
            if (!*v11)
            {
              v36 = v6 | 0x10000;
              free(v11);
            }
          }
        }

        xnet_get_cq_info(result, &v36, &v35, &v34);
      }

      else if ((v3 & 0x20000) != 0)
      {
        if ((v3 & 0x2000) == 0)
        {
          xnet_report_success_cold_1();
        }

        if (*(result + 201) == 5)
        {
          v9 = 32;
          if ((*(result + 202) & 1) == 0)
          {
            v9 = 24;
          }

          v7 = *(result + v9 + 200);
        }

        else
        {
          v7 = *(result + 208) - *(result + 206);
        }

        v12 = *(result + 216);
        v34 = 0;
        v35 = v12;
      }

      else
      {
        v7 = 0;
        v34 = 0;
        v35 = 0;
      }

      v13 = *(result + 184);
      v14 = v35;
      v15 = v36;
      v16 = *(result + 8);
      v17 = v34;
      if (*(v4 + 312))
      {
        v18 = *(result + 152);
        v19 = v4 + 176;
        (*(v4 + 248))(v4 + 176);
        v20 = *(v4 + 304);
        v21 = v20[3];
        if ((*v20 - v21 + v20[2]) >= 2)
        {
          v22 = v20[1] & v21;
          *(*(v4 + 312) + 8 * v22) = v18;
          v23 = &v20[6 * v22];
LABEL_36:
          v23[4] = v13;
          v23[5] = v15;
          v23[6] = v7;
          v23[7] = v16;
          v23[8] = v14;
          v23[9] = v17;
          v20[3] = v21 + 1;
          goto LABEL_40;
        }

        v24 = v4;
        v25 = v13;
        v26 = v15;
        v27 = v7;
        v28 = v16;
        v29 = v14;
        v30 = v17;
        v31 = v18;
      }

      else
      {
        v19 = v4 + 176;
        (*(v4 + 248))(v4 + 176);
        v20 = *(v4 + 304);
        v21 = v20[3];
        if ((*v20 - v21 + v20[2]) >= 2)
        {
          v23 = &v20[6 * (v20[1] & v21)];
          goto LABEL_36;
        }

        v24 = v4;
        v25 = v13;
        v26 = v15;
        v27 = v7;
        v28 = v16;
        v29 = v14;
        v30 = v17;
        v31 = -1;
      }

      ofi_cq_write_overflow(v24, v25, v26, v27, v28, v29, v30, v31);
LABEL_40:
      (*(v4 + 256))(v19);
      v32 = *(v4 + 40);
      if (v32)
      {
        v33 = *(v32 + 72);

        v33();
      }
    }
  }
}

uint64_t xnet_get_cq_info(uint64_t result, void *a2, void *a3, void *a4)
{
  if (*(result + 202))
  {
    *a3 = *(result + 216);
    if ((*(result + 201) | 4) == 5)
    {
      *a2 |= 0x20008uLL;
      v4 = *(result + 224);
    }

    else
    {
      v4 = 0;
      *a2 |= 0x20000uLL;
    }
  }

  else if ((*(result + 201) | 4) == 5)
  {
    *a2 |= 8uLL;
    *a3 = 0;
    v4 = *(result + 216);
  }

  else
  {
    v4 = 0;
    *a3 = 0;
  }

  *a4 = v4;
  return result;
}

int *xnet_report_error(uint64_t a1, unsigned int a2)
{
  v17 = 0;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v12 = 0u;
  v3 = *(a1 + 168);
  if ((v3 & 0x148) != 0)
  {
    v4 = v3 & 0x108;
    result = fi_log_enabled(&xnet_prov, 0, 6);
    if (v4)
    {
      if (result)
      {
        v6 = *__error();
        fi_strerror(a2);
        fi_log(&xnet_prov, 0, 6, "xnet_report_error", 195, "internal/saved transfer failed (%s)\n");
LABEL_10:
        result = __error();
        *result = v6;
      }
    }

    else if (result)
    {
      v6 = *__error();
      fi_strerror(a2);
      fi_log(&xnet_prov, 0, 6, "xnet_report_error", 198, "inject transfer failed (%s)\n");
      goto LABEL_10;
    }
  }

  else
  {
    v8 = *(a1 + 160);
    *(&v12 + 1) = v8 & 0xFFFFFFFFFEFFFFFFLL;
    if ((v8 & 0x400) != 0)
    {
      if ((v3 & 0x10000) != 0)
      {
        v9 = *(a1 + 144);
        if (v9)
        {
          --*v9;
          v10 = *(a1 + 144);
          if (!*v10)
          {
            *(&v12 + 1) = v8 & 0xFFFFFFFFFEFEFFFFLL | 0x10000;
            free(v10);
          }
        }

        else
        {
          *(&v12 + 1) = v8 & 0xFFFFFFFFFEFEFFFFLL | 0x10000;
        }
      }

      xnet_get_cq_info(a1, &v12 + 1, &v14, &v14 + 1);
    }

    else if ((v8 & 0x20000) != 0)
    {
      if ((v8 & 0x2000) == 0)
      {
        xnet_report_error_cold_1();
      }

      *&v14 = *(a1 + 216);
    }

    else
    {
      v14 = 0uLL;
    }

    v11 = *(a1 + 184);
    *&v15 = 0;
    v13 = 0uLL;
    *&v12 = v11;
    DWORD2(v15) = a2;
    HIDWORD(v15) = *__error();
    v16 = 0uLL;
    return ofi_cq_write_error(*(a1 + 112), &v12);
  }

  return result;
}

uint64_t xnet_cq_open(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v8 = malloc_type_calloc(1uLL, 0x158uLL, 0x10B20407A264080uLL);
  if (!v8)
  {
    return 4294967284;
  }

  v9 = v8;
  if (!*a2)
  {
    *a2 = 1024;
  }

  v19 = 0;
  v17 = 0u;
  v18 = 0u;
  if (*(a2 + 5) == 1)
  {
    v10 = a2[1];
    v17 = *a2;
    v18 = v10;
    v19 = *(a2 + 4);
    DWORD1(v18) = 3;
    a2 = &v17;
  }

  v11 = ofi_cq_init(&xnet_prov, a1, a2, v8, xnet_cq_progress, a4);
  if (!v11)
  {
    v12 = v9[5];
    if (!v12 || (v13 = (*(v9[4] + 872))(v9[4] + 824), v14 = ofi_wait_add_fd(v12, v13, 1, xnet_cq_wait_try_func, v9, v9), !v14))
    {
      v11 = 0;
      *a3 = v9;
      v9[2] = &xnet_cq_fi_ops;
      *(*a3 + 24) = &xnet_cq_ops;
      return v11;
    }

    v11 = v14;
    ofi_cq_cleanup(v9, v15);
  }

  free(v9);
  return v11;
}

uint64_t xnet_cntr_incerr(uint64_t a1)
{
  result = *(a1 + 120);
  if (result)
  {
    if ((*(a1 + 168) & 0x108) == 0)
    {
      v3 = *(result + 24);
      if (v3)
      {
        if (*v3 >= 0x31uLL)
        {
          v4 = v3[6];
          if (v4)
          {
            return v4();
          }
        }
      }
    }
  }

  return result;
}

uint64_t xnet_cntr_open(uint64_t a1, __int128 *a2, void *a3, uint64_t a4)
{
  v8 = malloc_type_calloc(1uLL, 0xE8uLL, 0x10A20406BB74701uLL);
  if (!v8)
  {
    return 4294967284;
  }

  v9 = v8;
  v19 = 0uLL;
  v20 = 0;
  v10 = a2 + 4;
  if (*(a2 + 1) == 1)
  {
    v10 = &v19 + 4;
    v19 = *a2;
    v20 = *(a2 + 2);
    v11 = 3;
    if ((*(a1 + 4984) & 1) == 0)
    {
      if (*(a1 + 264) == 3)
      {
        v11 = 0;
      }

      else
      {
        v11 = 3;
      }
    }

    DWORD1(v19) = v11;
    a2 = &v19;
  }

  v12 = ofi_cntr_init(&xnet_prov, a1, a2, v8, xnet_cntr_progress, a4);
  if (!v12)
  {
    if (*v10)
    {
      v13 = v9[4];
      if (*v10 == 3)
      {
        v14 = v9[5];
        v15 = (*(v13 + 872))(v13 + 824);
        started = ofi_wait_add_fd(v14, v15, 1, xnet_cntr_wait_try_func, 0, v9);
      }

      else
      {
        started = xnet_start_progress(v13 + 280);
      }

      v12 = started;
      if (started)
      {
        ofi_cntr_cleanup(v9, v17);
        goto LABEL_9;
      }
    }

    else
    {
      v9[3] = &xnet_cntr_ops;
    }

    v12 = 0;
    *a3 = v9;
    return v12;
  }

LABEL_9:
  free(v9);
  return v12;
}

uint64_t xnet_cq_close(void *a1, uint64_t a2)
{
  v3 = ofi_cq_cleanup(a1, a2);
  if (!v3)
  {
    free(a1);
  }

  return v3;
}

uint64_t xnet_cq_control(uint64_t a1, int a2)
{
  if (a2 != 16 && a2 != 5)
  {
    return 4294967218;
  }

  v2 = *(a1 + 40);
  if (v2)
  {
    return (*(*(v2 + 16) + 24))();
  }

  else
  {
    return 4294967200;
  }
}

unint64_t xnet_cq_readfrom(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  (*(*(*(a1 + 32) + 496) + 80))(*(*(a1 + 32) + 496) + 8);
  v8 = ofi_cq_readfrom(a1, a2, a3, a4);
  (*(*(*(a1 + 32) + 496) + 88))(*(*(a1 + 32) + 496) + 8);
  return v8;
}

uint64_t xnet_cq_readerr(uint64_t a1, _OWORD *a2)
{
  (*(*(*(a1 + 32) + 496) + 80))(*(*(a1 + 32) + 496) + 8);
  v4 = ofi_cq_readerr(a1, a2);
  (*(*(*(a1 + 32) + 496) + 88))(*(*(a1 + 32) + 496) + 8);
  return v4;
}

uint64_t xnet_cntr_wait(void *a1, unint64_t a2, uint64_t a3)
{
  xnet_progress(a1[4] + 280, 0);
  v6 = atomic_load(a1 + 8);
  if ((a3 & 0x80000000) != 0)
  {
    v7 = 0;
  }

  else
  {
    v7 = ofi_gettime_ms() + a3;
  }

  while (1)
  {
    v10 = atomic_load(a1 + 7);
    if (v10 >= a2)
    {
      return 0;
    }

    v8 = atomic_load(a1 + 8);
    if (v6 != v8)
    {
      return 4294967037;
    }

    if ((a3 & 0x80000000) == 0)
    {
      a3 = v7 - ofi_gettime_ms();
      if (a3 < 1)
      {
        break;
      }
    }

    result = xnet_progress_wait(a1[4] + 280, a3);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    xnet_progress(a1[4] + 280, 1);
  }

  return 4294967236;
}

uint64_t xnet_rdm_resolve_domains(void *a1)
{
  v30 = *MEMORY[0x29EDCA608];
  v2 = a1[10];
  (*(v2 + 160))(v2 + 88);
  v3 = a1 + 15;
  v4 = a1 + 15;
  if (xnet_domain_multiplexed(*(a1[15] + 32)) && (v4 = a1 + 17, xnet_domain_multiplexed(*(a1[17] + 32))))
  {
    v5 = 0;
    while (1)
    {
      v6 = a1[v5 + 22];
      if (v6)
      {
        if (!xnet_domain_multiplexed(*(v6 + 32)))
        {
          break;
        }
      }

      if (++v5 == 6)
      {
        goto LABEL_14;
      }
    }
  }

  else
  {
    v6 = *v4;
  }

  v7 = *(v6 + 32);
  if (!v7)
  {
LABEL_14:
    v9 = (*(*(*(v2 + 56) + 24) + 8))();
    if (v9)
    {
      goto LABEL_15;
    }

    v7 = 0;
    v11 = fid_list_insert2((v2 + 5112), v2 + 5016, 0);
    if (v11)
    {
      inserted = v11;
      (*(MEMORY[0x10] + 8))();
      goto LABEL_47;
    }

    v9 = ofi_rbmap_foreach(*(v2 + 240), **(v2 + 240), xnet_reg_subdomain_mr, 0);
    if (v9)
    {
LABEL_15:
      inserted = v9;
      goto LABEL_47;
    }
  }

  if (!(*(v2 + 152))(v2 + 88))
  {
    xnet_rdm_resolve_domains_cold_5();
  }

  v8 = *(*v3 + 32);
  if (v8 == v2)
  {
    atomic_fetch_add((v8 + 176), 0xFFFFFFFF);
    atomic_fetch_add((v7 + 176), 1u);
    *(*v3 + 32) = v7;
  }

  else if (v8 != v7)
  {
    xnet_rdm_resolve_domains_cold_1();
  }

  v12 = *(a1[17] + 32);
  if (v12 == v2)
  {
    atomic_fetch_add((v12 + 176), 0xFFFFFFFF);
    atomic_fetch_add((v7 + 176), 1u);
    *(a1[17] + 32) = v7;
  }

  else if (v12 != v7)
  {
    xnet_rdm_resolve_domains_cold_2();
  }

  for (i = 22; i != 28; ++i)
  {
    v14 = a1[i];
    if (v14)
    {
      v15 = *(v14 + 32);
      if (v15 == v2)
      {
        atomic_fetch_add((v15 + 176), 0xFFFFFFFF);
        atomic_fetch_add((v7 + 176), 1u);
        *(v14 + 32) = v7;
      }

      else if (v15 != v7)
      {
        xnet_rdm_resolve_domains_cold_3();
      }
    }
  }

  v26 = 0;
  v16 = a1[11];
  (*(v16 + 424))(v16 + 352);
  v17 = (v16 + 328);
  while (1)
  {
    v17 = *v17;
    if (v17 == (v16 + 328))
    {
      break;
    }

    v18 = v17[2];
    if (*(v18 + 32) == v7)
    {
      goto LABEL_45;
    }
  }

  v28 = 28;
  memset(v27, 0, sizeof(v27));
  LODWORD(v27[0]) = *(a1[10] + 224);
  *(&v27[0] + 1) = *(*(v16 + 160) + 24);
  if (!(*(v16 + 416))(v16 + 352))
  {
    xnet_rdm_resolve_domains_cold_4();
  }

  v19 = (*(*(v7 + 24) + 8))(v7, v27, &v26, 0);
  if (v19)
  {
    inserted = v19;
LABEL_37:
    (*(v16 + 432))(v16 + 352);
    goto LABEL_47;
  }

  v20 = v26;
  if (*(*(v16 + 160) + 24))
  {
    v21 = 0;
    do
    {
      if (ofi_ip_av_is_valid(v16, v21) && !ofi_ip_av_lookup(v16, v21, v29, &v28))
      {
        (*(v20 + 128))(v20 + 56);
        inserted = ofi_av_insert_addr_at(v20, v29, v21);
        (*(v20 + 136))(v20 + 56);
        if (inserted)
        {
          goto LABEL_37;
        }
      }
    }

    while (*(*(v16 + 160) + 24) > ++v21);
  }

  fid_list_insert((v16 + 328), 0, v20);
  v18 = v26;
LABEL_45:
  (*(a1[11] + 304))(a1[11] + 232);
  v23 = a1[12];
  v22 = a1[13];
  v24 = a1[11];
  *v22 = v23;
  *(v23 + 8) = v22;
  (*(v24 + 312))(v24 + 232);
  atomic_fetch_add((a1[11] + 40), 0xFFFFFFFF);
  a1[11] = 0;
  inserted = ofi_ep_bind_av(a1, v18);
  (*(v16 + 432))(v16 + 352);
  if (!inserted)
  {
    atomic_fetch_add((a1[10] + 176), 0xFFFFFFFF);
    atomic_fetch_add((v7 + 176), 1u);
    a1[10] = v7;
    atomic_fetch_add((*(a1[54] + 80) + 176), 0xFFFFFFFF);
    atomic_fetch_add((v7 + 176), 1u);
    *(a1[54] + 80) = v7;
  }

LABEL_47:
  (*(v2 + 168))(v2 + 88);
  return inserted;
}

uint64_t xnet_reg_subdomain_mr(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = ofi_mr_map_insert(a3 + 232, *(a2 + 32), (*(a2 + 32) + 32), *(*(a2 + 32) + 40), *(*(*(a2 + 32) + 40) + 56));
  if (v4)
  {
    if (fi_log_enabled(&xnet_prov, 0, 8))
    {
      v5 = *__error();
      v6 = fi_strerror(-v4);
      fi_log(&xnet_prov, 0, 8, "xnet_reg_subdomain_mr", 785, "ofi_mr_map_insert%s (%d)\n", v6, v4);
      *__error() = v5;
    }
  }

  else
  {
    atomic_fetch_add((a3 + 176), 1u);
  }

  return v4;
}

uint64_t xnet_rdm_ep(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = malloc_type_calloc(1uLL, 0x31F8uLL, 0x10A204069C403B0uLL);
  if (v8)
  {
    v9 = v8;
    v10 = ofi_endpoint_init(a1, &xnet_util_prov, a2, v8, a4, 0);
    if (v10)
    {
LABEL_20:
      free(v9);
      return v10;
    }

    if (**(a2 + 88) != 3)
    {
      xnet_rdm_ep_cold_1();
    }

    v11 = fi_dupinfo(xnet_srx_info);
    if (!v11)
    {
      v10 = 4294967284;
LABEL_19:
      ofi_endpoint_close(v9, v12);
      goto LABEL_20;
    }

    v13 = v11;
    v14 = *(a2 + 16);
    v11[1] &= *(a2 + 8);
    v11[2] = v14;
    *(v11 + 6) = *(a2 + 24);
    v15 = *(a2 + 32);
    if (v15)
    {
      v16 = *(a2 + 48);
      v17 = malloc_type_malloc(*(a2 + 32), 0x2A1BF8CCuLL);
      if (!v17)
      {
        v13[6] = 0;
        v10 = 4294967284;
LABEL_18:
        fi_freeinfo(v13);
        goto LABEL_19;
      }

      v18 = v17;
      memcpy(v17, v16, v15);
      v13[6] = v18;
      v13[4] = *(a2 + 32);
    }

    v19 = *(a2 + 96);
    v20 = v13[12];
    *(v20 + 136) &= *(v19 + 136);
    *(v20 + 36) = *(v19 + 36);
    v22 = *(a2 + 72);
    v21 = *(a2 + 80);
    v23 = v13[9];
    v24 = v13[10];
    *v23 &= *v22;
    v23[2] = v22[2];
    *v24 &= *v21;
    v24[2] = v21[2];
    v25 = (*(*(v9[10] + 24) + 64))();
    if (v25)
    {
      v10 = v25;
      if (fi_log_enabled(&xnet_prov, 0, 3))
      {
        v26 = *__error();
        fi_log(&xnet_prov, 0, 3, "xnet_init_rdm", 1060, "Unable to open shared receive context\n");
        *__error() = v26;
      }
    }

    else
    {
      v10 = (*(*(*(v9[10] + 56) + 24) + 16))();
      if (!v10)
      {
        v9[53] = 0;
        v9[54] = 0;
        fi_freeinfo(v13);
        *a3 = v9;
        v9[2] = &xnet_rdm_fid_ops;
        *(*a3 + 24) = &xnet_rdm_ep_ops;
        *(*a3 + 32) = &xnet_rdm_cm_ops;
        *(*a3 + 40) = &xnet_rdm_msg_ops;
        *(*a3 + 48) = &xnet_rdm_rma_ops;
        *(*a3 + 56) = &xnet_rdm_tagged_ops;
        *(*a3 + 64) = &xnet_rdm_atomic_ops;
        return v10;
      }

      if (fi_log_enabled(&xnet_prov, 0, 3))
      {
        v27 = *__error();
        fi_log(&xnet_prov, 0, 3, "xnet_init_rdm", 1068, "Unable to open passive ep\n");
        *__error() = v27;
      }

      (*(MEMORY[0x10] + 8))();
    }

    goto LABEL_18;
  }

  return 4294967284;
}

uint64_t xnet_rdm_close(void *a1)
{
  (*(a1[10] + 480))(a1[10] + 408);
  v2 = (*(*(a1[53] + 16) + 8))();
  if (v2)
  {
    v3 = v2;
    if (fi_log_enabled(&xnet_prov, 0, 3))
    {
      v4 = *__error();
      fi_log(&xnet_prov, 0, 3, "xnet_rdm_close", 999, "Unable to close passive endpoint\n");
      *__error() = v4;
    }

    (*(a1[10] + 488))(a1[10] + 408);
  }

  else
  {
    xnet_freeall_conns(a1);
    (*(a1[10] + 488))(a1[10] + 408);
    v3 = (*(*(a1[54] + 16) + 8))();
    if (v3)
    {
      if (fi_log_enabled(&xnet_prov, 0, 3))
      {
        v7 = *__error();
        fi_log(&xnet_prov, 0, 3, "xnet_rdm_close", 1010, "Unable to close msg shared ctx\n");
        *__error() = v7;
      }
    }

    else
    {
      ofi_endpoint_close(a1, v6);
      free(a1);
    }
  }

  return v3;
}

uint64_t xnet_rdm_ctrl(void *a1, int a2)
{
  if (a2 != 6)
  {
    return 4294967218;
  }

  if (!a1[11])
  {
    return 4294967038;
  }

  if (!a1[17] || !a1[15])
  {
    return 4294967033;
  }

  if (!xnet_domain_multiplexed(a1[10]) || (v3 = xnet_rdm_resolve_domains(a1), !v3))
  {
    (*(*(a1[54] + 16) + 16))();
    if (a1[23])
    {
      (*(*(a1[54] + 16) + 16))();
    }

    (*(*(a1[54] + 16) + 16))();
    v4 = a1[10];
    (*(v4 + 480))(v4 + 408);
    v3 = xnet_listen(a1[53], v4 + 280);
    if (v3)
    {
      goto LABEL_10;
    }

    v6 = (*(*(a1[53] + 32) + 16))();
    if (v6)
    {
      v3 = v6;
      if (fi_log_enabled(&xnet_prov, 0, 3))
      {
        v7 = *__error();
        v8 = fi_strerror(-v3);
        fi_log(&xnet_prov, 0, 3, "xnet_enable_rdm", 942, "fi_getname%s (%d)\n", v8, v3);
        *__error() = v7;
      }

      goto LABEL_10;
    }

    v9 = *(a1[53] + 56);
    free(*(v9 + 48));
    *(v9 + 48) = 0;
    *(v9 + 32) = 0;
    v10 = malloc_type_malloc(0x30uLL, 0x2A1BF8CCuLL);
    if (v10)
    {
      v11 = v10;
      memcpy(v10, a1 + 1592, 0x30uLL);
      *(v9 + 48) = v11;
      *(v9 + 32) = 48;
      v12 = v11[1];
      if (v12 != 30)
      {
        if (v12 == 27)
        {
          v3 = 0;
          *(v11 + 24) = xmmword_29ED128C0;
          goto LABEL_10;
        }

        if (v12 != 2)
        {
          sock_get_src_addr_cold_1();
        }
      }

      v3 = 0;
      *(v11 + 1) = 0;
    }

    else
    {
      *(v9 + 48) = 0;
      v3 = 4294967284;
    }

LABEL_10:
    (*(v4 + 488))(v4 + 408);
  }

  return v3;
}

uint64_t xnet_rdm_getopt(uint64_t a1, int a2, int a3, _DWORD *a4, unint64_t *a5)
{
  if (a2)
  {
    return 4294967254;
  }

  if (a3 == 20)
  {
    if (*a5 >= 4)
    {
      result = 0;
      *a4 = xnet_firewall_addr;
    }

    else
    {
      result = 4294967039;
    }

    v7 = 4;
  }

  else
  {
    if (a3)
    {
      return 4294967254;
    }

    if (*a5 >= 8)
    {
      result = 0;
      *a4 = *(*(a1 + 432) + 16560);
    }

    else
    {
      result = 4294967039;
    }

    v7 = 8;
  }

  *a5 = v7;
  return result;
}

uint64_t xnet_rdm_setopt(uint64_t a1, int a2, int a3, void *a4, uint64_t a5)
{
  if (a3 | a2)
  {
    return 4294967254;
  }

  if (a5 != 8)
  {
    return 4294967274;
  }

  *(*(a1 + 432) + 16560) = *a4;
  result = fi_log_enabled(&xnet_prov, 2, 3);
  if (result)
  {
    v7 = *__error();
    fi_log(&xnet_prov, 2, 3, "xnet_rdm_setopt", 687, "FI_OPT_MIN_MULTI_RECV set to %zu\n", *(*(a1 + 432) + 16560));
    v8 = __error();
    result = 0;
    *v8 = v7;
  }

  return result;
}

uint64_t xnet_rdm_send(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v9 = 0;
  (*(*(a1 + 80) + 480))(*(a1 + 80) + 408);
  conn = xnet_get_conn(a1, a5, &v9);
  if (!conn)
  {
    conn = (*(*(*v9 + 40) + 32))();
  }

  (*(*(a1 + 80) + 488))(*(a1 + 80) + 408);
  return conn;
}

uint64_t xnet_rdm_sendv(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v9 = 0;
  (*(*(a1 + 80) + 480))(*(a1 + 80) + 408);
  conn = xnet_get_conn(a1, a5, &v9);
  if (!conn)
  {
    conn = (*(*(*v9 + 40) + 40))();
  }

  (*(*(a1 + 80) + 488))(*(a1 + 80) + 408);
  return conn;
}

uint64_t xnet_rdm_sendmsg(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  (*(*(a1 + 80) + 480))(*(a1 + 80) + 408);
  conn = xnet_get_conn(a1, *(a2 + 24), &v6);
  if (!conn)
  {
    conn = (*(*(*v6 + 40) + 48))();
  }

  (*(*(a1 + 80) + 488))(*(a1 + 80) + 408);
  return conn;
}

uint64_t xnet_rdm_inject(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = 0;
  (*(*(a1 + 80) + 480))(*(a1 + 80) + 408);
  conn = xnet_get_conn(a1, a4, &v8);
  if (!conn)
  {
    conn = (*(*(*v8 + 40) + 56))();
  }

  (*(*(a1 + 80) + 488))(*(a1 + 80) + 408);
  return conn;
}

uint64_t xnet_rdm_senddata(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v10 = 0;
  (*(*(a1 + 80) + 480))(*(a1 + 80) + 408);
  conn = xnet_get_conn(a1, a6, &v10);
  if (!conn)
  {
    conn = (*(*(*v10 + 40) + 64))();
  }

  (*(*(a1 + 80) + 488))(*(a1 + 80) + 408);
  return conn;
}

uint64_t xnet_rdm_injectdata(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v9 = 0;
  (*(*(a1 + 80) + 480))(*(a1 + 80) + 408);
  conn = xnet_get_conn(a1, a5, &v9);
  if (!conn)
  {
    conn = (*(*(*v9 + 40) + 72))();
  }

  (*(*(a1 + 80) + 488))(*(a1 + 80) + 408);
  return conn;
}

uint64_t xnet_rdm_read(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v9 = 0;
  (*(*(a1 + 80) + 480))(*(a1 + 80) + 408);
  conn = xnet_get_conn(a1, a5, &v9);
  if (!conn)
  {
    conn = (*(*(*v9 + 48) + 8))();
  }

  (*(*(a1 + 80) + 488))(*(a1 + 80) + 408);
  return conn;
}

uint64_t xnet_rdm_readv(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v9 = 0;
  (*(*(a1 + 80) + 480))(*(a1 + 80) + 408);
  conn = xnet_get_conn(a1, a5, &v9);
  if (!conn)
  {
    conn = (*(*(*v9 + 48) + 16))();
  }

  (*(*(a1 + 80) + 488))(*(a1 + 80) + 408);
  return conn;
}

uint64_t xnet_rdm_readmsg(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  (*(*(a1 + 80) + 480))(*(a1 + 80) + 408);
  conn = xnet_get_conn(a1, *(a2 + 24), &v6);
  if (!conn)
  {
    conn = (*(*(*v6 + 48) + 24))();
  }

  (*(*(a1 + 80) + 488))(*(a1 + 80) + 408);
  return conn;
}

uint64_t xnet_rdm_write(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v9 = 0;
  (*(*(a1 + 80) + 480))(*(a1 + 80) + 408);
  conn = xnet_get_conn(a1, a5, &v9);
  if (!conn)
  {
    conn = (*(*(*v9 + 48) + 32))();
  }

  (*(*(a1 + 80) + 488))(*(a1 + 80) + 408);
  return conn;
}

uint64_t xnet_rdm_writev(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v9 = 0;
  (*(*(a1 + 80) + 480))(*(a1 + 80) + 408);
  conn = xnet_get_conn(a1, a5, &v9);
  if (!conn)
  {
    conn = (*(*(*v9 + 48) + 40))();
  }

  (*(*(a1 + 80) + 488))(*(a1 + 80) + 408);
  return conn;
}

uint64_t xnet_rdm_writemsg(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  (*(*(a1 + 80) + 480))(*(a1 + 80) + 408);
  conn = xnet_get_conn(a1, *(a2 + 24), &v6);
  if (!conn)
  {
    conn = (*(*(*v6 + 48) + 48))();
  }

  (*(*(a1 + 80) + 488))(*(a1 + 80) + 408);
  return conn;
}

uint64_t xnet_rdm_inject_write(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = 0;
  (*(*(a1 + 80) + 480))(*(a1 + 80) + 408);
  conn = xnet_get_conn(a1, a4, &v8);
  if (!conn)
  {
    conn = (*(*(*v8 + 48) + 56))();
  }

  (*(*(a1 + 80) + 488))(*(a1 + 80) + 408);
  return conn;
}

uint64_t xnet_rdm_writedata(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v10 = 0;
  (*(*(a1 + 80) + 480))(*(a1 + 80) + 408);
  conn = xnet_get_conn(a1, a6, &v10);
  if (!conn)
  {
    conn = (*(*(*v10 + 48) + 64))(*v10);
  }

  (*(*(a1 + 80) + 488))(*(a1 + 80) + 408);
  return conn;
}

uint64_t xnet_rdm_inject_writedata(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v9 = 0;
  (*(*(a1 + 80) + 480))(*(a1 + 80) + 408);
  conn = xnet_get_conn(a1, a5, &v9);
  if (!conn)
  {
    conn = (*(*(*v9 + 48) + 72))();
  }

  (*(*(a1 + 80) + 488))(*(a1 + 80) + 408);
  return conn;
}

uint64_t xnet_rdm_tsend(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v9 = 0;
  (*(*(a1 + 80) + 480))(*(a1 + 80) + 408);
  conn = xnet_get_conn(a1, a5, &v9);
  if (!conn)
  {
    conn = (*(*(*v9 + 56) + 32))();
  }

  (*(*(a1 + 80) + 488))(*(a1 + 80) + 408);
  return conn;
}

uint64_t xnet_rdm_tsendv(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v9 = 0;
  (*(*(a1 + 80) + 480))(*(a1 + 80) + 408);
  conn = xnet_get_conn(a1, a5, &v9);
  if (!conn)
  {
    conn = (*(*(*v9 + 56) + 40))();
  }

  (*(*(a1 + 80) + 488))(*(a1 + 80) + 408);
  return conn;
}

uint64_t xnet_rdm_tsendmsg(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  (*(*(a1 + 80) + 480))(*(a1 + 80) + 408);
  conn = xnet_get_conn(a1, *(a2 + 24), &v6);
  if (!conn)
  {
    conn = (*(*(*v6 + 56) + 48))();
  }

  (*(*(a1 + 80) + 488))(*(a1 + 80) + 408);
  return conn;
}

uint64_t xnet_rdm_tinject(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = 0;
  (*(*(a1 + 80) + 480))(*(a1 + 80) + 408);
  conn = xnet_get_conn(a1, a4, &v8);
  if (!conn)
  {
    conn = (*(*(*v8 + 56) + 56))();
  }

  (*(*(a1 + 80) + 488))(*(a1 + 80) + 408);
  return conn;
}

uint64_t xnet_rdm_tsenddata(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v10 = 0;
  (*(*(a1 + 80) + 480))(*(a1 + 80) + 408);
  conn = xnet_get_conn(a1, a6, &v10);
  if (!conn)
  {
    conn = (*(*(*v10 + 56) + 64))();
  }

  (*(*(a1 + 80) + 488))(*(a1 + 80) + 408);
  return conn;
}

uint64_t xnet_rdm_tinjectdata(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v9 = 0;
  (*(*(a1 + 80) + 480))(*(a1 + 80) + 408);
  conn = xnet_get_conn(a1, a5, &v9);
  if (!conn)
  {
    conn = (*(*(*v9 + 56) + 72))();
  }

  (*(*(a1 + 80) + 488))(*(a1 + 80) + 408);
  return conn;
}

uint64_t xnet_freeall_conns(uint64_t result)
{
  v1 = *(result + 88);
  if (v1)
  {
    v2 = result;
    if (!(*(*(*(result + 80) + 496) + 72))(*(*(result + 80) + 496) + 8))
    {
      xnet_freeall_conns_cold_3();
    }

    result = rxm_av_max_peers(v1);
    v3 = result;
    if (result >= 1)
    {
      v4 = 0;
      do
      {
        if (!(v4 >> 20))
        {
          v5 = *(v2 + 440 + 8 * (v4 >> 10));
          if (v5)
          {
            if (!*(v2 + 8632 + 4 * (v4 >> 10)))
            {
              sock_av_remove_cold_1();
            }

            v6 = *(v5 + 8 * (v4 & 0x3FF));
            if (v6)
            {
              xnet_close_conn(*(v5 + 8 * (v4 & 0x3FF)));
              result = xnet_free_conn(v6);
            }
          }
        }

        ++v4;
      }

      while (v3 != v4);
    }

    v7 = *(v2 + 12728);
    if (v7)
    {
      xnet_close_conn(*(v2 + 12728));
      result = xnet_free_conn(v7);
      if (*(v2 + 12728))
      {
        xnet_freeall_conns_cold_2();
      }
    }
  }

  return result;
}

uint64_t xnet_close_conn(uint64_t a1)
{
  v2 = *(*(*(a1 + 8) + 80) + 496);
  if (!(*(v2 + 72))(v2 + 8))
  {
    xnet_close_conn_cold_1();
  }

  v3 = *(a1 + 28);
  if ((v3 & 4) != 0)
  {
    v4 = *(a1 + 8);
    if (*(v4 + 12728) == a1)
    {
      *(v4 + 12728) = 0;
    }

    *(a1 + 28) = v3 & 0xFFFFFFFB;
  }

  result = *a1;
  if (*a1)
  {
LABEL_7:
    v6 = 0;
    v7 = *(*(a1 + 8) + 80);
    v8 = (v7 + 632);
    v9 = (v7 + 632);
    while (1)
    {
      v9 = *v9;
      if (!v9)
      {
        break;
      }

      v10 = v6;
      v6 = v9;
      if (v9[3] == result)
      {
        v11 = *v9;
        if (v10)
        {
          v8 = v10;
        }

        *v8 = v11;
        if (!v11)
        {
          *(v7 + 640) = v10;
        }

        free(v9);
        result = *a1;
        goto LABEL_7;
      }
    }

    if (*(result + 18912))
    {
      util_put_peer(*(result + 18912));
      result = *a1;
    }

    result = (*(*(result + 16) + 8))();
    *a1 = 0;
  }

  return result;
}

uint64_t xnet_free_conn(uint64_t a1)
{
  v2 = *(*(*(a1 + 8) + 80) + 496);
  if (!(*(v2 + 72))(v2 + 8))
  {
    xnet_free_conn_cold_1();
  }

  if (*(a1 + 28))
  {
    ofi_idm_clear(*(a1 + 8) + 440, *(*(a1 + 16) + 24));
  }

  util_put_peer(*(a1 + 16));
  v3 = *(*(a1 + 8) + 88);

  return rxm_av_free_conn(v3, a1);
}

uint64_t xnet_get_conn(uint64_t a1, unint64_t a2, uint64_t **a3)
{
  if (!(*(*(*(a1 + 80) + 496) + 72))(*(*(a1 + 80) + 496) + 8))
  {
    xnet_get_conn_cold_2();
  }

  v6 = ofi_av_addr_context(*(a1 + 88), a2);
  v7 = xnet_add_conn(a1, *v6);
  *a3 = v7;
  if (!v7)
  {
    return -12;
  }

  v8 = v7;
  v9 = *v7;
  if (*v7)
  {
    goto LABEL_4;
  }

  if (*(*v6 + 176) != 1)
  {
    v12 = *(*(v7[1] + 80) + 496);
    if (!(*(v12 + 72))(v12 + 8))
    {
      xnet_get_conn_cold_1();
    }

    v13 = *(*(v8[1] + 424) + 56);
    *(v13 + 40) = *(v13 + 32);
    free(*(v13 + 56));
    v14 = v8[2];
    v15 = *(v13 + 40);
    v16 = malloc_type_malloc(v15, 0x2A1BF8CCuLL);
    if (v16)
    {
      v17 = v16;
      memcpy(v16, (v14 + 32), v15);
      *(v13 + 56) = v17;
      v18 = xnet_open_conn(v8, v13);
      if (!v18)
      {
        bswap32(getpid());
        v19 = *(v8[1] + 12737);
        if (v19 != 30 && v19 != 27 && v19 != 2 && fi_log_enabled(&core_prov, 0, 1))
        {
          v20 = *__error();
          fi_log(&core_prov, 0, 1, "ofi_addr_get_port", 809, "Unknown address format\n");
          *__error() = v20;
        }

        v21 = (*(*(*v8 + 32) + 32))();
        if (!v21)
        {
          v9 = **a3;
LABEL_4:
          if (*(v9 + 18904) == 4)
          {
            return 0;
          }

          xnet_run_progress(*(a1 + 80) + 280, 0);
          return -35;
        }

        v18 = v21;
        if (fi_log_enabled(&xnet_prov, 0, 3))
        {
          v22 = *__error();
          v23 = fi_strerror(-v18);
          fi_log(&xnet_prov, 0, 3, "xnet_rdm_connect", 251, "fi_connect%s (%d)\n", v23, v18);
          *__error() = v22;
        }

        xnet_close_conn(v8);
      }
    }

    else
    {
      *(v13 + 56) = 0;
      return -12;
    }

    return v18;
  }

  if (fi_log_enabled(&xnet_prov, 0, 3))
  {
    v11 = *__error();
    fi_log(&xnet_prov, 0, 3, "xnet_get_conn", 376, "warn: peer %s is behind firewall\n", *v6 + 80);
    *__error() = v11;
  }

  return -271;
}

void *xnet_add_conn(uint64_t a1, _DWORD *a2)
{
  if (!(*(*(*(a1 + 80) + 496) + 72))(*(*(a1 + 80) + 496) + 8))
  {
    xnet_add_conn_cold_2();
  }

  v4 = a2[6];
  if (v4 >= 0x100000)
  {
    goto LABEL_6;
  }

  v5 = *(a1 + 440 + 8 * (v4 >> 10));
  if (!v5)
  {
    goto LABEL_6;
  }

  if (!*(a1 + 4 * (v4 >> 10) + 8632))
  {
    sock_av_remove_cold_1();
  }

  v6 = *(v5 + 8 * (v4 & 0x3FF));
  if (!v6)
  {
LABEL_6:
    v6 = xnet_alloc_conn(a1, a2);
    if (v6)
    {
      if ((ofi_idm_set(a1 + 440, a2[6], v6) & 0x80000000) != 0)
      {
        xnet_free_conn(v6);
        if (fi_log_enabled(&xnet_prov, 0, 3))
        {
          v7 = *__error();
          v8 = fi_strerror(0xCu);
          fi_log(&xnet_prov, 0, 3, "xnet_add_conn", 348, "ofi_idm_set%s (%d)\n", v8, -12);
          v6 = 0;
          *__error() = v7;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        *(v6 + 7) |= 1u;
      }
    }
  }

  return v6;
}

uint64_t xnet_get_rx_ep(void *a1, unint64_t a2)
{
  if (!(*(*(a1[10] + 496) + 72))(*(a1[10] + 496) + 8))
  {
    xnet_get_rx_ep_cold_2();
  }

  v4 = *(*ofi_av_addr_context(a1[11], a2) + 24);
  if (v4 >= 0x100000)
  {
    return 0;
  }

  v5 = a1[(v4 >> 10) + 55];
  if (!v5)
  {
    return 0;
  }

  if (!*(a1 + (v4 >> 10) + 2158))
  {
    sock_av_remove_cold_1();
  }

  v6 = *(v5 + 8 * (v4 & 0x3FF));
  if (!v6)
  {
    return 0;
  }

  if ((*(v6 + 28) & 2) != 0)
  {
    v6 = a1[1591];
    if (!v6)
    {
      return 0;
    }
  }

  result = *v6;
  if (!*v6 || *(result + 18904) != 4)
  {
    return 0;
  }

  return result;
}

void xnet_handle_event_list(uint64_t a1)
{
  v33 = *MEMORY[0x29EDCA608];
  if (!(*(a1 + 192))(a1 + 128))
  {
    xnet_handle_event_list_cold_5();
  }

  v2 = *(a1 + 352);
  if (v2)
  {
    while (1)
    {
      if (v2 == *(a1 + 360))
      {
        *(a1 + 352) = 0;
        *(a1 + 360) = 0;
      }

      else
      {
        *(a1 + 352) = *v2;
      }

      if (fi_log_enabled(&xnet_prov, 2, 3))
      {
        v3 = *__error();
        v4 = fi_tostr(v2 + 2, 19);
        fi_log(&xnet_prov, 2, 3, "xnet_handle_event_list", 594, "event %s\n", v4);
        *__error() = v3;
      }

      v5 = *(v2 + 4);
      if (v5 != 3)
      {
        break;
      }

      v10 = *(v2[3] + 8);
      xnet_close_conn(v10);
      xnet_free_conn(v10);
LABEL_66:
      free(v2);
      v2 = *(a1 + 352);
      if (!v2)
      {
        return;
      }
    }

    if (v5 == 2)
    {
      v8 = *(v2[3] + 8);
      *(v8 + 24) = bswap32(*(v2 + 11));
      if (*(v2 + 40) == 129)
      {
        *(*v8 + 288) |= 1uLL;
      }

      if (fi_log_enabled(&xnet_prov, 2, 3))
      {
        v9 = *__error();
        fi_log(&xnet_prov, 2, 3, "xnet_process_connected", 579, "peer %s feature supported: %x\n", (*(v8 + 16) + 80), *(v2 + 41));
        *__error() = v9;
      }

      goto LABEL_66;
    }

    if (v5 != 1)
    {
      xnet_handle_event_list_cold_4();
    }

    v31 = 0u;
    v32 = 0u;
    v30 = 0u;
    v6 = v2[3];
    if (*v6 != 9)
    {
      xnet_handle_event_list_cold_1();
    }

    v7 = v6[1];
    if (!(*(*(v7[10] + 496) + 72))(*(v7[10] + 496) + 8))
    {
      xnet_handle_event_list_cold_3();
    }

    __memcpy_chk();
    if (BYTE1(v30) != 30)
    {
      if (BYTE1(v30) == 27)
      {
        *(&v31 + 1) = bswap64(*(v2 + 21) | 0x13F0000);
        *&v32 = -1;
LABEL_23:
        peer = util_get_peer(v7[11], &v30, (*(v2 + 41) & 1) << 42);
        if (!peer)
        {
          if (fi_log_enabled(&xnet_prov, 0, 3))
          {
            v17 = *__error();
            v18 = fi_strerror(0xCu);
            fi_log(&xnet_prov, 0, 3, "xnet_process_connreq", 465, "util_get_peer%s (%d)\n", v18, -12);
            *__error() = v17;
          }

          goto LABEL_64;
        }

        v12 = peer;
        v13 = xnet_add_conn(v7, peer);
        if (!v13)
        {
          goto LABEL_63;
        }

        v14 = v13;
        if (fi_log_enabled(&xnet_prov, 2, 3))
        {
          v15 = *__error();
          fi_log(&xnet_prov, 2, 3, "xnet_process_connreq", 473, "connreq for %p\n", v14);
          *__error() = v15;
        }

        if (!*v14)
        {
          goto LABEL_53;
        }

        v16 = *(*v14 + 18904);
        if (v16 <= 2)
        {
          if (v16 == 1)
          {
            goto LABEL_41;
          }

          if (v16 != 2)
          {
            goto LABEL_52;
          }
        }

        else
        {
          if (v16 == 5)
          {
            if (fi_log_enabled(&xnet_prov, 2, 3))
            {
              v24 = *__error();
              fi_log(&xnet_prov, 2, 3, "xnet_process_connreq", 525, "disconnection exists, replacing %p\n");
              goto LABEL_51;
            }

LABEL_52:
            xnet_close_conn(v14);
LABEL_53:
            v14[6] = bswap32(*(v2 + 11));
            if (!xnet_open_conn(v14, v2[4]))
            {
              if (*(v2 + 41) >= 2u && fi_log_enabled(&xnet_prov, 0, 3))
              {
                v26 = *__error();
                fi_log(&xnet_prov, 0, 3, "xnet_process_connreq", 541, "peer: %s requested unsupported features: %x\n", v12 + 80, *(v2 + 41) & 0xFE);
                *__error() = v26;
              }

              *(v2 + 41) &= 1u;
              *(v2 + 11) = bswap32(getpid());
              if (*(v2 + 40))
              {
                *(v2 + 40) = -127;
                v27 = *v14;
                *(*v14 + 288) |= 1uLL;
              }

              else
              {
                v27 = *v14;
              }

              if (!(*(*(v27 + 32) + 48))())
              {
                goto LABEL_65;
              }

              xnet_close_conn(v14);
            }

            xnet_free_conn(v14);
            goto LABEL_63;
          }

          if (v16 != 4)
          {
            if (v16 != 3)
            {
              goto LABEL_52;
            }

LABEL_41:
            v21 = ofi_addr_cmp(&xnet_prov, &v30, (v7 + 1592));
            if (v21 < 0)
            {
              if (fi_log_enabled(&xnet_prov, 2, 3))
              {
                v25 = *__error();
                fi_log(&xnet_prov, 2, 3, "xnet_process_connreq", 485, "simultaneous, reject peer %p\n", v14);
                *__error() = v25;
              }
            }

            else
            {
              v22 = v21;
              v23 = fi_log_enabled(&xnet_prov, 2, 3);
              if (v22)
              {
                if (v23)
                {
                  v24 = *__error();
                  fi_log(&xnet_prov, 2, 3, "xnet_process_connreq", 490, "simultaneous, accept peer %p\n");
LABEL_51:
                  *__error() = v24;
                  goto LABEL_52;
                }

                goto LABEL_52;
              }

              if (v23)
              {
                v28 = *__error();
                fi_log(&xnet_prov, 2, 3, "xnet_process_connreq", 495, "loopback conn %p\n", v14);
                *__error() = v28;
              }

              v14[7] |= 2u;
              v29 = xnet_alloc_conn(v7, v12);
              if (v29)
              {
                v14 = v29;
                *(v29 + 7) |= 4u;
                v7[1591] = v29;
                goto LABEL_53;
              }
            }

LABEL_63:
            util_put_peer(v12);
LABEL_64:
            (*(*(v7[53] + 32) + 56))();
LABEL_65:
            fi_freeinfo(v2[4]);
            goto LABEL_66;
          }
        }

        v19 = v14[6];
        if (v19 && v19 != bswap32(*(v2 + 11)))
        {
          if (fi_log_enabled(&xnet_prov, 2, 3))
          {
            v24 = *__error();
            fi_log(&xnet_prov, 2, 3, "xnet_process_connreq", 519, "old connection exists, replacing %p\n");
            goto LABEL_51;
          }

          goto LABEL_52;
        }

        if (fi_log_enabled(&xnet_prov, 2, 3))
        {
          v20 = *__error();
          fi_log(&xnet_prov, 2, 3, "xnet_process_connreq", 515, "simultaneous, reject peer\n");
          *__error() = v20;
        }

        goto LABEL_63;
      }

      if (BYTE1(v30) != 2)
      {
        sock_get_src_addr_cold_1();
      }
    }

    WORD1(v30) = *(v2 + 21);
    goto LABEL_23;
  }
}

void *xnet_alloc_conn(uint64_t a1, _DWORD *a2)
{
  if (!(*(*(*(a1 + 80) + 496) + 72))(*(*(a1 + 80) + 496) + 8))
  {
    xnet_alloc_conn_cold_1();
  }

  v4 = rxm_av_alloc_conn(*(a1 + 88));
  v5 = v4;
  if (v4)
  {
    *(v4 + 7) = 0;
    v4[1] = a1;
    v4[2] = a2;
    rxm_ref_peer(a2);
  }

  else if (fi_log_enabled(&xnet_prov, 0, 3))
  {
    v6 = *__error();
    v7 = fi_strerror(0xCu);
    fi_log(&xnet_prov, 0, 3, "xnet_alloc_conn", 319, "rxm_av_alloc_conn%s (%d)\n", v7, -12);
    *__error() = v6;
  }

  return v5;
}

uint64_t xnet_open_conn(void *a1, uint64_t a2)
{
  v4 = *(*(a1[1] + 80) + 496);
  if (!(*(v4 + 72))(v4 + 8))
  {
    xnet_open_conn_cold_2();
  }

  v22 = 0;
  v5 = xnet_endpoint(*(a1[1] + 80), a2, &v22, a1);
  if (v5)
  {
    v6 = v5;
    if (fi_log_enabled(&xnet_prov, 0, 3))
    {
      v7 = *__error();
      v8 = fi_strerror(-v6);
      fi_log(&xnet_prov, 0, 3, "xnet_open_conn", 193, "fi_endpoint%s (%d)\n", v8, v6);
      *__error() = v7;
    }
  }

  else
  {
    v9 = v22;
    *a1 = v22;
    v10 = a1[1];
    if (!(*(*(*(v10 + 80) + 496) + 72))(*(*(v10 + 80) + 496) + 8))
    {
      xnet_open_conn_cold_1();
    }

    v11 = (*(*(v9 + 16) + 16))(v9, *(v10 + 432), 0);
    if (v11 || (v11 = (*(*(v9 + 16) + 16))(v9, *(v10 + 120), 1024), v11) || (v11 = (*(*(v9 + 16) + 16))(v9, *(v10 + 136), 2048), v11) || (v13 = *(v10 + 184)) != 0 && (v11 = (*(*(v9 + 16) + 16))(v9, v13, 1024), v11) || (v14 = *(v10 + 176)) != 0 && (v11 = (*(*(v9 + 16) + 16))(v9, v14, 2048), v11) || (v15 = *(v10 + 192)) != 0 && (v11 = (*(*(v9 + 16) + 16))(v9, v15, 256), v11) || (v16 = *(v10 + 200)) != 0 && (v11 = (*(*(v9 + 16) + 16))(v9, v16, 512), v11) || (v17 = *(v10 + 208)) != 0 && (v11 = (*(*(v9 + 16) + 16))(v9, v17, 4096), v11) || (v18 = *(v10 + 216)) != 0 && (v11 = (*(*(v9 + 16) + 16))(v9, v18, 0x2000), v11))
    {
      v6 = v11;
    }

    else
    {
      *(v9 + 160) = *(v10 + 160);
      *(v9 + 144) = *(v10 + 144);
      *(v9 + 128) = *(v10 + 128);
      v19 = a1[2];
      *(*a1 + 18912) = v19;
      rxm_ref_peer(v19);
      v6 = (*(*(*a1 + 16) + 24))();
      if (!v6)
      {
        return v6;
      }

      if (fi_log_enabled(&xnet_prov, 0, 3))
      {
        v20 = *__error();
        v21 = fi_strerror(-v6);
        fi_log(&xnet_prov, 0, 3, "xnet_open_conn", 206, "fi_enable%s (%d)\n", v21, v6);
        *__error() = v20;
      }
    }

    (*(*(*a1 + 16) + 8))();
    *a1 = 0;
  }

  return v6;
}

uint64_t xnet_rma_read(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11[1] = a3;
  v12 = a4;
  v10[2] = a7;
  v11[0] = a2;
  v10[0] = a6;
  v10[1] = a3;
  v9[0] = v11;
  v9[1] = &v12;
  v9[2] = 1;
  v9[3] = a5;
  v9[4] = v10;
  v9[5] = 1;
  v9[6] = a8;
  v9[7] = 0;
  return xnet_rma_readmsg(a1, v9, *(a1 + 144));
}

uint64_t xnet_rma_readv(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14[0] = a6;
  v8 = 0;
  if (a4)
  {
    v9 = (a2 + 8);
    v10 = a4;
    do
    {
      v11 = *v9;
      v9 += 2;
      v8 += v11;
      --v10;
    }

    while (v10);
  }

  v14[1] = v8;
  v14[2] = a7;
  v13[0] = a2;
  v13[1] = a3;
  v13[2] = a4;
  v13[3] = a5;
  v13[4] = v14;
  v13[5] = 1;
  v13[6] = a8;
  v13[7] = 0;
  return xnet_rma_readmsg(a1, v13, *(a1 + 144));
}

uint64_t xnet_rma_readmsg(uint64_t a1, uint64_t a2, int a3)
{
  v3 = *(a2 + 16);
  if (v3 >= 5)
  {
    xnet_rma_readmsg_cold_14();
  }

  v5 = *(a2 + 40);
  if (v5 >= 5)
  {
    xnet_rma_readmsg_cold_13();
  }

  v8 = 0;
  if (v3)
  {
    v9 = (*a2 + 8);
    do
    {
      v10 = *v9;
      v9 += 2;
      v8 += v10;
      --v3;
    }

    while (v3);
  }

  v11 = 0;
  if (v5)
  {
    v12 = (*(a2 + 32) + 8);
    do
    {
      v13 = *v12;
      v12 += 3;
      v11 += v13;
      --v5;
    }

    while (v5);
  }

  if (v8 != v11)
  {
    xnet_rma_readmsg_cold_1();
  }

  (*(*(a1 + 80) + 384))(*(a1 + 80) + 312);
  if (!(*(*(*(a1 + 80) + 496) + 72))(*(*(a1 + 80) + 496) + 8))
  {
    xnet_rma_readmsg_cold_12();
  }

  v14 = xnet_alloc_xfer(*(a1 + 80) + 280);
  if (!v14)
  {
    goto LABEL_30;
  }

  v15 = v14;
  *(v14 + 200) = 3;
  v16 = v14 + 25;
  *(v14 + 204) = 0;
  v14[14] = *(a1 + 136);
  v17 = xnet_alloc_xfer(*(a1 + 80) + 280);
  if (!v17)
  {
    if (!(*(*(*(a1 + 80) + 496) + 72))(*(*(a1 + 80) + 496) + 8))
    {
      xnet_rma_readmsg_cold_11();
    }

    if ((*(v15 + 168) & 0x80) != 0)
    {
      free(*(v15 + 8));
    }

    if ((*(v15 + 172) & 1) == 0)
    {
      xnet_rma_readmsg_cold_2();
    }

    *(v15 + 172) = 0;
    v22 = *(v15 - 32);
    if (!v22)
    {
      ofi_buf_free_cold_6();
    }

    if (atomic_fetch_add((v22 + 76), 0xFFFFFFFF) <= 0)
    {
      ofi_buf_free_cold_7();
    }

    v23 = *(v15 - 32);
    if (!v23)
    {
      ofi_buf_free_cold_6();
    }

    v24 = *(v23 + 64);
    if (!v24)
    {
      ofi_buf_free_cold_5();
    }

    if ((v24[16] & 2) != 0)
    {
      ofi_buf_free_cold_1();
    }

    if (*(v15 - 8) != 0xF1C0DE0F1C0DE64)
    {
      ofi_buf_free_cold_2();
    }

    if (**(v15 - 16) != 0xF1C0DE0F1C0DE64)
    {
      ofi_buf_free_cold_3();
    }

    v25 = (v15 - 48);
    if (*(v15 - 48) != v15 - 48)
    {
      ofi_buf_free_cold_4();
    }

    v26 = *v24;
    if (!*v24)
    {
      v24[1] = v25;
    }

    *v25 = v26;
    *v24 = v25;
LABEL_30:
    v27 = -35;
    goto LABEL_33;
  }

  v18 = v17;
  *(v15 + 201) = 2;
  *(v15 + 205) = *(a2 + 40);
  memcpy((v15 + 216), *(a2 + 32), 24 * *(a2 + 40));
  v19 = 24 * *(a2 + 40) + 16;
  *(v15 + 208) = v19;
  *(v15 + 206) = v19;
  *(v15 + 24) = v16;
  *(v15 + 32) = v19;
  *(v15 + 16) = 1;
  v20 = *(a2 + 48);
  *(v15 + 168) = 2;
  *(v15 + 184) = v20;
  *(v15 + 192) = v18;
  *(v15 + 120) = *(a1 + 192);
  *(v15 + 112) = *(a1 + 136);
  memcpy(v18 + 3, *a2, 16 * *(a2 + 16));
  v18[2] = *(a2 + 16);
  v18[23] = *(a2 + 48);
  v18[20] = (*(a1 + 160) | a3) & 0x1000000 | 0x104;
  v18[15] = *(a1 + 192);
  v18[14] = *(a1 + 136);
  *(v18 + 42) = 8;
  if (*(a1 + 18832))
  {
    v21 = *(a1 + 18840);
  }

  else
  {
    v21 = (a1 + 18832);
  }

  *v21 = v18;
  *v18 = 0;
  *(a1 + 18840) = v18;
  xnet_tx_queue_insert(a1, v15);
  v27 = 0;
LABEL_33:
  (*(*(a1 + 80) + 392))(*(a1 + 80) + 312);
  return v27;
}

uint64_t xnet_rma_write(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11[1] = a3;
  v12 = a4;
  v10[2] = a7;
  v11[0] = a2;
  v10[0] = a6;
  v10[1] = a3;
  v9[0] = v11;
  v9[1] = &v12;
  v9[2] = 1;
  v9[3] = a5;
  v9[4] = v10;
  v9[5] = 1;
  v9[6] = a8;
  v9[7] = 0;
  return xnet_rma_writemsg(a1, v9, *(a1 + 144));
}

uint64_t xnet_rma_writev(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14[0] = a6;
  v8 = 0;
  if (a4)
  {
    v9 = (a2 + 8);
    v10 = a4;
    do
    {
      v11 = *v9;
      v9 += 2;
      v8 += v11;
      --v10;
    }

    while (v10);
  }

  v14[1] = v8;
  v14[2] = a7;
  v13[0] = a2;
  v13[1] = a3;
  v13[2] = a4;
  v13[3] = a5;
  v13[4] = v14;
  v13[5] = 1;
  v13[6] = a8;
  v13[7] = 0;
  return xnet_rma_writemsg(a1, v13, *(a1 + 144));
}

uint64_t xnet_rma_writemsg(uint64_t a1, uint64_t *a2, int a3)
{
  (*(*(a1 + 80) + 384))(*(a1 + 80) + 312);
  if (!(*(*(*(a1 + 80) + 496) + 72))(*(*(a1 + 80) + 496) + 8))
  {
    xnet_rma_readmsg_cold_12();
  }

  v6 = xnet_alloc_xfer(*(a1 + 80) + 280);
  if (v6)
  {
    v7 = v6;
    *(v6 + 200) = 3;
    v8 = v6 + 25;
    *(v6 + 204) = 0;
    v6[14] = *(a1 + 136);
    v9 = a2[2];
    if (v9 >= 5)
    {
      xnet_rma_writemsg_cold_4();
    }

    v10 = a2[5];
    if (v10 >= 5)
    {
      xnet_rma_writemsg_cold_3();
    }

    v11 = 0;
    if (v9)
    {
      v12 = (*a2 + 8);
      do
      {
        v13 = *v12;
        v12 += 2;
        v11 += v13;
        --v9;
      }

      while (v9);
    }

    v14 = 0;
    if (v10)
    {
      v15 = (a2[4] + 8);
      do
      {
        v16 = *v15;
        v15 += 3;
        v14 += v16;
        --v10;
      }

      while (v10);
    }

    if (v14 != v11)
    {
      xnet_rma_writemsg_cold_1();
    }

    if ((a3 & 0x2000000) != 0 && v11 > xnet_max_inject)
    {
      xnet_rma_writemsg_cold_2();
    }

    *(v6 + 201) = 4;
    if ((a3 & 0x20000) != 0)
    {
      *(v6 + 101) = 1;
      v6[27] = a2[7];
      v17 = 3;
    }

    else
    {
      v17 = 2;
    }

    memcpy(&v8[v17], a2[4], 24 * a2[5]);
    v19 = a2[5];
    *(v7 + 205) = a2[5];
    v20 = v17 * 8 + 24 * v19;
    *(v7 + 206) = v20;
    v21 = v20 + v11;
    *(v7 + 208) = v20 + v11;
    if ((a3 & 0x2000000) != 0)
    {
      ofi_copy_iov_buf(*a2, a2[2], 0, v8 + v20, v11, 0);
      v22 = 1;
    }

    else
    {
      memcpy((v7 + 40), *a2, 16 * a2[2]);
      v22 = a2[2] + 1;
      v21 = v20;
    }

    *(v7 + 16) = v22;
    *(v7 + 24) = v8;
    *(v7 + 32) = v21;
    *(v7 + 160) = (*(a1 + 160) | a3) & 0x1000000 | 0x204;
    *(v7 + 120) = *(a1 + 200);
    if ((a3 & 0x18000000) != 0)
    {
      *(v7 + 202) |= 4u;
      *(v7 + 168) |= 4u;
    }

    if ((a3 & 0x40000000) != 0)
    {
      *(v7 + 202) |= 8u;
      *(v7 + 168) |= 4u;
    }

    *(v7 + 184) = a2[6];
    xnet_tx_queue_insert(a1, v7);
    v18 = 0;
  }

  else
  {
    v18 = -35;
  }

  (*(*(a1 + 80) + 392))(*(a1 + 80) + 312);
  return v18;
}

uint64_t xnet_rma_writedata(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v12[1] = a3;
  v13 = a4;
  v11[2] = a8;
  v12[0] = a2;
  v11[0] = a7;
  v11[1] = a3;
  v10[0] = v12;
  v10[1] = &v13;
  v10[2] = 1;
  v10[3] = a6;
  v10[4] = v11;
  v10[5] = 1;
  v10[6] = a9;
  v10[7] = a5;
  return xnet_rma_writemsg(a1, v10, *(a1 + 144) | 0x20000);
}

uint64_t *xnet_alloc_xfer(uint64_t a1)
{
  if (!(*(*(a1 + 216) + 72))(*(a1 + 216) + 8))
  {
    xnet_alloc_xfer_cold_5();
  }

  v2 = *(a1 + 368);
  if ((v2[16] & 2) != 0)
  {
    sock_pe_acquire_entry_cold_2();
  }

  v3 = *v2;
  if (!*v2)
  {
    if (ofi_bufpool_grow(v2))
    {
      return 0;
    }

    v3 = *v2;
  }

  if (v3 == v2[1])
  {
    *v2 = 0;
    v2[1] = 0;
  }

  else
  {
    *v2 = *v3;
  }

  if (atomic_fetch_add((v3[2] + 76), 1u) == -1)
  {
    sock_pe_acquire_entry_cold_4();
  }

  if (*v3 == v3)
  {
    sock_pe_acquire_entry_cold_3();
  }

  *v3 = v3;
  if (*(v3 + 220) == 1)
  {
    xnet_alloc_xfer_cold_2();
  }

  *(v3 + 220) = 1;
  result = v3 + 6;
  *(v3 + 125) = 0;
  v3[26] = 0;
  *(v3 + 54) = 0;
  v3[29] = 0;
  v3[7] = 0;
  v3[20] = 0;
  v3[21] = 0;
  return result;
}

uint64_t xnet_rma_inject_common(void *a1, const void *a2, size_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  (*(a1[10] + 384))(a1[10] + 312);
  if (!(*(*(a1[10] + 496) + 72))(*(a1[10] + 496) + 8))
  {
    xnet_rma_readmsg_cold_12();
  }

  v14 = xnet_alloc_xfer(a1[10] + 280);
  if (v14)
  {
    v15 = v14;
    *(v14 + 200) = 3;
    v16 = v14 + 25;
    *(v14 + 204) = 0;
    v14[14] = a1[17];
    if (xnet_max_inject < a3)
    {
      xnet_rma_inject_common_cold_1();
    }

    *(v14 + 201) = 4;
    if ((a7 & 0x20000) != 0)
    {
      *(v14 + 101) = 1;
      v14[27] = a4;
      v17 = 3;
    }

    else
    {
      v17 = 2;
    }

    v19 = &v16[v17];
    v19[1] = a3;
    v19[2] = a6;
    *v19 = a5;
    *(v14 + 205) = 1;
    v20 = v17 * 8 + 24;
    *(v14 + 206) = v17 * 8 + 24;
    memcpy(&v16[v17 + 3], a2, a3);
    v15[3] = v16;
    v15[4] = v20 + a3;
    v15[2] = 1;
    v15[26] = v20 + a3;
    v15[20] = 33554944;
    v15[15] = a1[25];
    xnet_tx_queue_insert(a1, v15);
    v18 = 0;
  }

  else
  {
    v18 = -35;
  }

  (*(a1[10] + 392))(a1[10] + 312);
  return v18;
}

void *fi_tcp_ini()
{
  v5 = 0;
  __s = 0;
  v4 = 0;
  fi_param_define(&xnet_prov, "prov_name", 0, "Rename provider for testing");
  fi_param_get(&xnet_prov, "prov_name", &__s);
  if (__s && strlen(__s) - 1 <= 0x3E)
  {
    strncpy(xnet_prov_name, __s, 0x3FuLL);
  }

  fi_param_define(&xnet_prov, "iface", 0, "Specify interface name");
  fi_param_define(&xnet_prov, "port_low_range", 1, "define port low range");
  fi_param_define(&xnet_prov, "port_high_range", 1, "define port high range");
  fi_param_get(&xnet_prov, "port_high_range", &xnet_ports);
  fi_param_get(&xnet_prov, "port_low_range", &xnet_ports + 1);
  v0 = xnet_ports;
  if (xnet_ports >= 0x10000)
  {
    v0 = 0xFFFF;
    LODWORD(xnet_ports) = 0xFFFF;
  }

  if (SHIDWORD(xnet_ports) > v0 || (HIDWORD(xnet_ports) | v0) < 0)
  {
    if (fi_log_enabled(&xnet_prov, 0, 3))
    {
      v1 = *__error();
      fi_log(&xnet_prov, 0, 3, "xnet_init_env", 107, "User provided port range invalid. Ignoring. \n");
      *__error() = v1;
    }

    xnet_ports = 0;
  }

  fi_param_define(&xnet_prov, "tx_size", 3, "define default tx context size (default: %zu)", xnet_default_tx_size);
  fi_param_define(&xnet_prov, "rx_size", 3, "define default rx context size (default: %zu)", xnet_default_rx_size);
  if (!fi_param_get(&xnet_prov, "tx_size", &v5))
  {
    xnet_default_tx_size = v5;
  }

  if (!fi_param_get(&xnet_prov, "rx_size", &v4))
  {
    xnet_default_rx_size = v4;
  }

  fi_param_define(&xnet_prov, "max_inject", 3, "maximum size for inject messages (default: %zu)", xnet_max_inject);
  fi_param_get(&xnet_prov, "max_inject", &xnet_max_inject);
  fi_param_define(&xnet_prov, "max_saved", 1, "maximum number of received messages that do not have a posted application buffer that will be queued by the provider.  A larger value increases memory and processing overhead, negatively impacting performance, but may be required by some applications to prevent hangs. (default: %d)", xnet_max_saved);
  fi_param_get(&xnet_prov, "max_saved", &xnet_max_saved);
  fi_param_define(&xnet_prov, "max_saved_size", 3, "maximum size of any message that will be buffered by the provider which does not have an application posted buffer ready (i.e. an unexpected message) A larger value increases memory and data copying overhead to handle unexpected messages, but may be required by some applications to prevents hangs.");
  fi_param_get(&xnet_prov, "max_saved_size", &xnet_max_saved_size);
  fi_param_define(&xnet_prov, "max_rx_size", 3, "maximum size for message buffers. If set lower than FI_TCP_MAX_INJECT, it will be increased to match (default: %zu)", xnet_buf_size);
  fi_param_get(&xnet_prov, "max_rx_size", &xnet_buf_size);
  v2 = xnet_buf_size;
  if (xnet_max_inject > xnet_buf_size)
  {
    xnet_buf_size = xnet_max_inject;
    v2 = xnet_max_inject;
  }

  if (xnet_max_saved_size < v2)
  {
    xnet_max_saved_size = v2;
  }

  fi_param_define(&xnet_prov, "nodelay", 2, "overrides default TCP_NODELAY socket setting (default %d)", xnet_nodelay);
  fi_param_get(&xnet_prov, "nodelay", &xnet_nodelay);
  fi_param_define(&xnet_prov, "staging_sbuf_size", 1, "size of buffer used to coalesce iovec's or send requests before posting to the kernel, set to 0 to disable");
  fi_param_define(&xnet_prov, "prefetch_rbuf_size", 1, "size of buffer used to prefetch received data from the kernel, set to 0 to disable");
  fi_param_define(&xnet_prov, "zerocopy_size", 3, "lower threshold where zero copy transfers will be used, if supported by the platform, set to -1 to disable (default: %zu)", xnet_zerocopy_size);
  fi_param_get(&xnet_prov, "staging_sbuf_size", &xnet_staging_sbuf_size);
  fi_param_get(&xnet_prov, "prefetch_rbuf_size", &xnet_prefetch_rbuf_size);
  fi_param_get(&xnet_prov, "zerocopy_size", &xnet_zerocopy_size);
  fi_param_define(&xnet_prov, "trace_msg", 2, "Capture and display transport message information when FI_LOG_LEVEL=TRACE is specified");
  fi_param_get(&xnet_prov, "trace_msg", &xnet_trace_msg);
  fi_param_define(&xnet_prov, "disable_auto_progress", 2, "prevent auto-progress thread from starting");
  fi_param_get(&xnet_prov, "disable_auto_progress", &xnet_disable_autoprog);
  fi_param_define(&xnet_prov, "io_uring", 2, "Enable io_uring support if available (default: %d)", xnet_io_uring);
  fi_param_get(&xnet_prov, "io_uring", &xnet_io_uring);
  fi_param_define(&xnet_prov, "firewall_addr", 2, "if this node is behind firewall");
  fi_param_get(&xnet_prov, "firewall_addr", &xnet_firewall_addr);
  xnet_init_infos();
  return &xnet_prov;
}

uint64_t xnet_mplex_av_open(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4)
{
  v17[2] = 0;
  v8 = malloc_type_calloc(1uLL, 0x1B8uLL, 0x10E2040CE1BDAF3uLL);
  if (!v8)
  {
    return 4294967284;
  }

  v9 = v8;
  v10 = ofi_genlock_init((v8 + 43), 0);
  if (!v10)
  {
    v17[1] = 8;
    v11 = *(a1 + 220) - 1;
    if (v11 >= 4)
    {
      if (fi_log_enabled(&core_prov, 0, 0))
      {
        v13 = *__error();
        fi_log(&core_prov, 0, 0, "ofi_sizeof_addr_format", 738, "Unsupported address format\n");
        v14 = __error();
        v12 = 0;
        *v14 = v13;
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = qword_29ED12D20[v11];
    }

    v17[0] = v12;
    if (!*a2)
    {
      *a2 = 2;
    }

    v10 = ofi_av_init(a1, a2, v17, v9, a4);
    if (!v10)
    {
      v9[41] = v9 + 41;
      v9[42] = v9 + 41;
      v9[2] = &xnet_mplex_av_fi_ops;
      v9[3] = &xnet_mplex_av_ops;
      *a3 = v9;
      return v10;
    }

    ofi_genlock_destroy(v9 + 86, v15);
  }

  free(v9);
  return v10;
}

uint64_t xnet_mplex_av_close(uint64_t a1)
{
  v2 = (a1 + 328);
  for (i = *(a1 + 328); i != v2; i = *v2)
  {
    v4 = *i;
    v5 = i[1];
    *v5 = *i;
    *(v4 + 8) = v5;
    (*(*(i[2] + 16) + 8))();
    free(i);
  }

  v6 = ofi_av_close(a1);
  ofi_genlock_destroy((a1 + 344), v7);
  free(a1);
  return v6;
}

uint64_t xnet_mplex_av_insert(uint64_t a1, uint64_t a2, size_t count, void *a4, unint64_t a5, _DWORD *a6)
{
  v12 = malloc_type_calloc(count, 8uLL, 0x100004000313F17uLL);
  if (!v12)
  {
    return 4294967284;
  }

  v13 = v12;
  (*(a1 + 424))(a1 + 352);
  v14 = ofi_ip_av_insert(a1, a2, count, a4, a5, a6);
  if (v14 >= count)
  {
    for (i = *(a1 + 328); i != (a1 + 328); i = *i)
    {
      v14 = (*(*(i[2] + 24) + 8))();
      if (v14 < count)
      {
        break;
      }

      if (a4 && memcmp(a4, v13, 8 * count))
      {
        xnet_mplex_av_insert_cold_1();
      }
    }
  }

  (*(a1 + 432))(a1 + 352);
  free(v13);
  return v14;
}

uint64_t xnet_mplex_av_insertsvc(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  (*(a1 + 424))(a1 + 352);
  v6 = ofi_ip_av_insertsvc(a1);
  if (v6 >= 1)
  {
    for (i = *(a1 + 328); i != (a1 + 328); i = *i)
    {
      v6 = (*(*(i[2] + 24) + 16))();
      if (v6 < 1)
      {
        break;
      }

      if (a4)
      {
        if (*a4)
        {
          xnet_mplex_av_insertsvc_cold_1();
        }
      }
    }
  }

  (*(a1 + 432))(a1 + 352);
  return v6;
}

uint64_t xnet_mplex_av_insertsym(uint64_t a1, char *a2, uint64_t a3, const char *a4, uint64_t a5, void *a6, unint64_t a7, _DWORD *a8)
{
  v16 = a5 * a3;
  v17 = malloc_type_calloc(a5 * a3, 8uLL, 0x100004000313F17uLL);
  if (!v17)
  {
    return 4294967284;
  }

  v18 = v17;
  (*(a1 + 424))(a1 + 352);
  v19 = ofi_ip_av_insertsym(a1, a2, a3, a4, a5, a6, a7, a8);
  v23 = a1;
  if (v16 <= v19)
  {
    v20 = (a1 + 328);
    for (i = *(a1 + 328); i != v20; i = *i)
    {
      v19 = (*(*(i[2] + 24) + 24))();
      if (v16 >= v19)
      {
        break;
      }

      if (a6 && memcmp(a6, v18, 8 * v16))
      {
        xnet_mplex_av_insertsym_cold_1();
      }
    }
  }

  (*(v23 + 432))(v23 + 352);
  free(v18);
  return v19;
}

uint64_t xnet_mplex_av_remove(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  (*(a1 + 424))(a1 + 352);
  v8 = (a1 + 328);
  while (1)
  {
    v8 = *v8;
    if (v8 == (a1 + 328))
    {
      break;
    }

    v9 = (*(*(v8[2] + 24) + 32))();
    if (v9)
    {
      goto LABEL_6;
    }
  }

  v9 = ofi_ip_av_remove(a1, a2, a3, a4);
LABEL_6:
  v10 = v9;
  (*(a1 + 432))(a1 + 352);
  return v10;
}

uint64_t xnet_fabric_close(void *a1)
{
  if (a1[20] != a1 + 20)
  {
    xnet_fabric_close_cold_1();
  }

  v2 = ofi_fabric_close(a1);
  if (!v2)
  {
    free(a1);
  }

  return v2;
}

uint64_t xnet_create_fabric(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = malloc_type_calloc(1uLL, 0xB0uLL, 0x10F004080FC3E71uLL);
  if (!v6)
  {
    return 4294967284;
  }

  v7 = v6;
  v6[20] = v6 + 20;
  v6[21] = v6 + 20;
  v8 = ofi_fabric_init(&xnet_prov, &xnet_fabric_attr, a1, v6, a3);
  if (v8)
  {
    free(v7);
  }

  else
  {
    v7[2] = &xnet_fabric_fi_ops;
    v7[3] = &xnet_fabric_ops;
    *a2 = v7;
  }

  return v8;
}

uint64_t xnet_send_cm_msg(uint64_t a1)
{
  v1 = *(a1 + 18928);
  v2 = (bswap32(v1[1]) >> 16) + 32;
  if (send(*(a1 + 424), v1, v2, 0x80000) == v2)
  {
    return 0;
  }

  if (*__error())
  {
    return -*__error();
  }

  return 4294967291;
}

uint64_t xnet_req_done(uint64_t a1)
{
  if (!(*(*(*(a1 + 80) + 496) + 72))(*(*(a1 + 80) + 496) + 8))
  {
    xnet_req_done_cold_1();
  }

  xnet_disable_keepalive(a1);
  result = xnet_recv_cm_msg(*(a1 + 424), *(a1 + 18928));
  v3 = result;
  if (!result)
  {
    result = xnet_handle_cm_msg(*(a1 + 424), *(a1 + 18928), 1);
    v3 = result;
  }

  if (v3 != -35)
  {
    if (v3)
    {
      v4 = v3 == -61;
      v5 = 2 * v4;
      if (fi_log_enabled(&xnet_prov, 2 * v4, 3))
      {
        v6 = *__error();
        fi_log(&xnet_prov, v5, 3, "xnet_req_done", 192, "Failed to receive connect response\n");
        *__error() = v6;
      }
    }

    else
    {
      result = xnet_req_done_internal(a1);
      v3 = result;
      if (!result)
      {
        return result;
      }
    }

    v7 = *(a1 + 18928);
    v8 = bswap32(*(v7 + 2)) >> 16;

    return xnet_ep_disable(a1, -v3, (v7 + 32), v8);
  }

  return result;
}

uint64_t xnet_recv_cm_msg(int a1, _WORD *a2)
{
  v3 = recv(a1, a2, 0x20uLL, 0);
  result = 0;
  if (v3 != 32)
  {
    if (fi_log_enabled(&xnet_prov, 0, 3))
    {
      v5 = *__error();
      v6 = __error();
      fi_log(&xnet_prov, 0, 3, "xnet_recv_cm_msg", 56, "Failed to read cm header, ret: %zd, sockerr: %d\n", v3, *v6);
      *__error() = v5;
    }

    a2[1] = 0;
    if (v3 < 0)
    {
      return -*__error();
    }

    else
    {
      return 4294967291;
    }
  }

  return result;
}

uint64_t xnet_handle_cm_msg(int a1, uint64_t a2, int a3)
{
  if (*a2 != 3)
  {
    if (fi_log_enabled(&xnet_prov, 0, 3))
    {
      v8 = *__error();
      fi_log(&xnet_prov, 0, 3, "xnet_handle_cm_msg", 72, "cm protocol version mismatch\n");
      goto LABEL_13;
    }

LABEL_14:
    result = 4294967254;
LABEL_18:
    *(a2 + 2) = 0;
    return result;
  }

  v5 = *(a2 + 1);
  if (v5 != a3 && v5 != 6)
  {
    if (fi_log_enabled(&xnet_prov, 0, 3))
    {
      v11 = *__error();
      fi_log(&xnet_prov, 0, 3, "xnet_handle_cm_msg", 80, "unexpected message, expected %d or %d got: %d\n", a3, 6, *(a2 + 1));
      *__error() = v11;
    }

    result = 4294967235;
    goto LABEL_18;
  }

  if (*(a2 + 2))
  {
    v7 = __rev16(*(a2 + 2));
    if (v7 >= 0x101)
    {
      if (fi_log_enabled(&xnet_prov, 0, 3))
      {
        v8 = *__error();
        fi_log(&xnet_prov, 0, 3, "xnet_handle_cm_msg", 90, "cm data size is too large, seg_size: %zu\n");
LABEL_13:
        *__error() = v8;
        goto LABEL_14;
      }

      goto LABEL_14;
    }

    v12 = recv(a1, (a2 + 32), v7, 0);
    if (v12 != v7)
    {
      v14 = v12;
      if (fi_log_enabled(&xnet_prov, 0, 3))
      {
        v15 = *__error();
        v16 = __error();
        fi_log(&xnet_prov, 0, 3, "xnet_handle_cm_msg", 99, "Failed to read cm data, ret: %zd, sockerr: %d\n", v14, *v16);
        *__error() = v15;
      }

      if (v14 < 0)
      {
        result = -*__error();
      }

      else
      {
        result = 4294967291;
      }

      goto LABEL_18;
    }

    v5 = *(a2 + 1);
  }

  if (v5 != 6)
  {
    return 0;
  }

  if (fi_log_enabled(&xnet_prov, 2, 3))
  {
    v13 = *__error();
    fi_log(&xnet_prov, 2, 3, "xnet_handle_cm_msg", 107, "Connection refused from remote\n");
    *__error() = v13;
  }

  return 4294967235;
}

uint64_t xnet_req_done_internal(uint64_t a1)
{
  v30 = *MEMORY[0x29EDCA608];
  v29 = 0u;
  v28 = 0u;
  v27 = 0u;
  v26 = 0u;
  v25 = 0u;
  v24 = 0u;
  v23 = 0u;
  v22 = 0u;
  v21 = 0u;
  v20 = 0u;
  v19 = 0u;
  v18 = 0u;
  v17 = 0u;
  v16 = 0u;
  v15 = 0u;
  v14 = 0u;
  v2 = *(a1 + 18928);
  v3 = *(v2 + 24);
  v4 = v3 == 1;
  if (v3 == 1)
  {
    v5 = xnet_hdr_none;
  }

  else
  {
    v5 = xnet_hdr_bswap;
  }

  v6 = xnet_hdr_bswap_trace;
  if (v4)
  {
    v6 = xnet_hdr_trace;
  }

  if (!xnet_trace_msg)
  {
    v6 = v5;
  }

  *(a1 + 18944) = v6;
  v7 = *(v2 + 2);
  v8 = __rev16(v7);
  v13[0] = a1;
  v13[1] = 0;
  if (v7)
  {
    __memcpy_chk();
  }

  v9 = xnet_eq_write(*(a1 + 112), 2, v13, v8 + 16);
  if ((v9 & 0x80000000) != 0)
  {
    v10 = v9;
    if (fi_log_enabled(&xnet_prov, 0, 3))
    {
      v11 = *__error();
      fi_log(&xnet_prov, 0, 3, "xnet_req_done_internal", 161, "Error writing to EQ\n");
      *__error() = v11;
    }
  }

  else
  {
    if (*(a1 + 9516) != *(a1 + 9512) || *(a1 + 18696))
    {
      xnet_req_done_internal_cold_1();
    }

    *(a1 + 18904) = 4;
    free(*(a1 + 18928));
    *(a1 + 18928) = 0;
    free(*(a1 + 18936));
    v10 = 0;
    *(a1 + 18936) = 0;
  }

  return v10;
}

uint64_t xnet_uring_req_done(uint64_t a1, int a2)
{
  if (!(*(*(*(a1 + 80) + 496) + 72))(*(*(a1 + 80) + 496) + 8))
  {
    xnet_uring_req_done_cold_1();
  }

  v4 = a2;
  if (a2 < 0)
  {
    goto LABEL_9;
  }

  if (a2 != 32)
  {
    v4 = -5;
LABEL_9:
    v6 = a2 == -61;
    v7 = 2 * v6;
    if (fi_log_enabled(&xnet_prov, 2 * v6, 3))
    {
      v8 = *__error();
      fi_log(&xnet_prov, v7, 3, "xnet_uring_req_done", 229, "Failed to receive connect response\n");
      *__error() = v8;
    }

    goto LABEL_11;
  }

  v4 = xnet_handle_cm_msg(*(a1 + 424), *(a1 + 18928), 1);
  if (v4)
  {
    goto LABEL_9;
  }

  *(a1 + 18952) = 1;
  LODWORD(result) = xnet_uring_pollin_add(*(a1 + 80) + 280, *(a1 + 424), 0, a1 + 472);
  if (!result)
  {
    result = xnet_req_done_internal(a1);
    if (!result)
    {
      return result;
    }
  }

  v4 = result;
LABEL_11:
  v9 = *(a1 + 18928);
  v10 = bswap32(*(v9 + 2)) >> 16;

  return xnet_ep_disable(a1, -v4, (v9 + 32), v10);
}

void xnet_handle_conn(uint64_t a1, int a2)
{
  v33 = *MEMORY[0x29EDCA608];
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  memset(v14, 0, sizeof(v14));
  v4 = *(*(*(a1 + 24) + 64) + 216);
  if (!(*(v4 + 72))(v4 + 8))
  {
    xnet_handle_conn_cold_1();
  }

  v13 = 0;
  if (a2)
  {
    if (fi_log_enabled(&xnet_prov, 0, 3))
    {
      v5 = *__error();
      fi_log(&xnet_prov, 0, 3, "xnet_handle_conn", 262, "socket error\n");
      *__error() = v5;
    }

    goto LABEL_13;
  }

  v6 = xnet_recv_cm_msg(*(a1 + 32), &v15);
  if (!v6)
  {
    v6 = xnet_handle_cm_msg(*(a1 + 32), &v15, 0);
  }

  if (v6 != -35)
  {
    if (v6)
    {
      goto LABEL_13;
    }

    *&v14[0] = *(a1 + 24);
    v7 = fi_dupinfo(*(*&v14[0] + 56));
    *(&v14[0] + 1) = v7;
    if (!v7)
    {
      goto LABEL_13;
    }

    v8 = v7;
    v9 = *(*(*(a1 + 24) + 56) + 32);
    v7[5] = v9;
    v13 = v9;
    free(v7[7]);
    v10 = malloc_type_malloc(v9, 0xF4409356uLL);
    v8[7] = v10;
    if (!v10 || getpeername(*(a1 + 32), v10, &v13))
    {
      goto LABEL_12;
    }

    *(a1 + 36) = *(&v16 + 1) == 1;
    v8[8] = a1;
    v11 = __rev16(WORD1(v15));
    if (WORD1(v15))
    {
      __memcpy_chk();
    }

    if ((xnet_eq_write(*(*(a1 + 24) + 48), 1, v14, v11 + 16) & 0x80000000) != 0)
    {
      if (fi_log_enabled(&xnet_prov, 0, 3))
      {
        v12 = *__error();
        fi_log(&xnet_prov, 0, 3, "xnet_handle_conn", 306, "Error writing to EQ\n");
        *__error() = v12;
      }

LABEL_12:
      fi_freeinfo(*(&v14[0] + 1));
LABEL_13:
      close(*(a1 + 32));
      free(a1);
    }
  }
}

uint64_t xnet_connect_done(uint64_t a1)
{
  v2 = *(a1 + 80);
  if (!(*(*(v2 + 496) + 72))(*(v2 + 496) + 8))
  {
    xnet_connect_done_cold_2();
  }

  v8 = 0;
  v9 = 4;
  v3 = getsockopt(*(a1 + 424), 0xFFFF, 4103, &v8, &v9);
  v4 = v8;
  if (v3 < 0 || v8)
  {
    if (v3 < 0)
    {
      v4 = *__error();
    }

    v5 = -v4;
    if (fi_log_ready(&xnet_prov, 0, 3, &xnet_connect_done_showtime))
    {
      v7 = *__error();
      fi_log(&xnet_prov, 0, 3, "xnet_connect_done", 335, "connection failure (sockerr %d)\n", v5);
      *__error() = v7;
    }

    return xnet_ep_disable(a1, -v5, 0, 0);
  }

  v5 = xnet_send_cm_msg(a1);
  if (v5)
  {
    return xnet_ep_disable(a1, -v5, 0, 0);
  }

  *(a1 + 18904) = 3;
  *(a1 + 18952) = 1;
  result = (*(v2 + 848))(v2 + 824, *(a1 + 424), 1, a1);
  if (*(v2 + 4984) == 1)
  {
    v10 = 0;
    pthread_mutex_lock((v2 + 552));
    if (!*(v2 + 624))
    {
      if (send(*(v2 + 620), &v10, 1uLL, 0) != 1)
      {
        sock_conn_stop_listener_thread_cold_1();
      }

      ++*(v2 + 624);
    }

    return pthread_mutex_unlock((v2 + 552));
  }

  return result;
}

void xnet_accept_sock(uint64_t a1)
{
  if (!(*(*(*(a1 + 64) + 216) + 72))(*(*(a1 + 64) + 216) + 8))
  {
    xnet_accept_sock_cold_1();
  }

  v2 = malloc_type_calloc(1uLL, 0x40uLL, 0x10A0040DECFDE4EuLL);
  if (v2)
  {
    v3 = v2;
    *v2 = 18;
    *(v2 + 3) = a1;
    v4 = *(a1 + 64);
    *(v2 + 5) = v4 + 464;
    *(v2 + 6) = v2;
    *(v2 + 56) = 0;
    v5 = (*(v4 + 504))();
    v6 = v5;
    if ((v5 & 0x80000000) != 0)
    {
      v3[8] = -1;
      if (v5 == -513)
      {
        return;
      }

      if (v5 != -35 && fi_log_enabled(&xnet_prov, 0, 3))
      {
        v8 = -v6;
        v9 = *__error();
        fi_log(&xnet_prov, 0, 3, "xnet_accept_sock", 386, "accept error: %d\n", v8);
        *__error() = v9;
      }
    }

    else
    {
      v3[8] = v5;
      if (!xnet_monitor_sock(*(a1 + 64), v5, 1, v3))
      {
        return;
      }

      close(v3[8]);
    }

    free(v3);
  }

  else if (fi_log_enabled(&xnet_prov, 0, 3))
  {
    v7 = *__error();
    fi_log(&xnet_prov, 0, 3, "xnet_accept_sock", 365, "cannot allocate memory\n");
    *__error() = v7;
  }
}

uint64_t xnet_recv(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  (*(*(a1 + 80) + 384))(*(a1 + 80) + 312, a2, a3, a4, a5);
  if (!(*(*(*(a1 + 80) + 496) + 72))(*(*(a1 + 80) + 496) + 8))
  {
    xnet_recv_cold_4();
  }

  v10 = xnet_alloc_xfer(*(a1 + 80) + 280);
  if (!v10)
  {
    goto LABEL_8;
  }

  v11 = v10;
  v10[15] = *(a1 + 184);
  v10[14] = *(a1 + 120);
  v10[1] = a2;
  v10[2] = 1;
  v10[3] = a2;
  v10[4] = a3;
  v10[20] = 1026;
  v10[23] = a6;
  if (!(*(*(*(a1 + 80) + 496) + 72))(*(*(a1 + 80) + 496) + 8))
  {
    xnet_recv_cold_3();
  }

  v12 = *(a1 + 18888);
  if (!v12)
  {
    xnet_free_xfer(*(a1 + 80) + 280, v11);
LABEL_8:
    v14 = -35;
    goto LABEL_16;
  }

  if (*(a1 + 18752))
  {
    v13 = *(a1 + 18760);
  }

  else
  {
    v13 = (a1 + 18752);
  }

  *v13 = v11;
  *v11 = 0;
  *(a1 + 18760) = v11;
  *(a1 + 18888) = v12 - 1;
  if (!(*(*(*(a1 + 80) + 496) + 72))(*(*(a1 + 80) + 496) + 8))
  {
    xnet_recv_cold_2();
  }

  if (*(a1 + 18696) && !*(a1 + 18688))
  {
    if (*(a1 + 18736) == a1 + 18736)
    {
      xnet_recv_cold_1();
    }

    xnet_progress_rx(a1);
  }

  v14 = 0;
LABEL_16:
  (*(*(a1 + 80) + 392))(*(a1 + 80) + 312);
  return v14;
}

uint64_t xnet_recvv(uint64_t a1, uint64_t *a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a4 >= 5)
  {
    xnet_recvv_cold_5();
  }

  (*(*(a1 + 80) + 384))(*(a1 + 80) + 312, a2, a3);
  if (!(*(*(*(a1 + 80) + 496) + 72))(*(*(a1 + 80) + 496) + 8))
  {
    xnet_recv_cold_4();
  }

  v10 = xnet_alloc_xfer(*(a1 + 80) + 280);
  if (!v10)
  {
    goto LABEL_11;
  }

  v11 = v10;
  v10[15] = *(a1 + 184);
  v10[14] = *(a1 + 120);
  v10[2] = a4;
  if (a4)
  {
    v10[1] = *a2;
    memcpy(v10 + 3, a2, 16 * a4);
  }

  v11[20] = 1026;
  v11[23] = a6;
  if (!(*(*(*(a1 + 80) + 496) + 72))(*(*(a1 + 80) + 496) + 8))
  {
    xnet_recv_cold_3();
  }

  v12 = *(a1 + 18888);
  if (!v12)
  {
    xnet_free_xfer(*(a1 + 80) + 280, v11);
LABEL_11:
    v14 = -35;
    goto LABEL_19;
  }

  if (*(a1 + 18752))
  {
    v13 = *(a1 + 18760);
  }

  else
  {
    v13 = (a1 + 18752);
  }

  *v13 = v11;
  *v11 = 0;
  *(a1 + 18760) = v11;
  *(a1 + 18888) = v12 - 1;
  if (!(*(*(*(a1 + 80) + 496) + 72))(*(*(a1 + 80) + 496) + 8))
  {
    xnet_recv_cold_2();
  }

  if (*(a1 + 18696) && !*(a1 + 18688))
  {
    if (*(a1 + 18736) == a1 + 18736)
    {
      xnet_recv_cold_1();
    }

    xnet_progress_rx(a1);
  }

  v14 = 0;
LABEL_19:
  (*(*(a1 + 80) + 392))(*(a1 + 80) + 312);
  return v14;
}

uint64_t xnet_recvmsg(uint64_t a1, uint64_t a2, int a3)
{
  if (*(a2 + 16) >= 5uLL)
  {
    xnet_recvmsg_cold_5();
  }

  (*(*(a1 + 80) + 384))(*(a1 + 80) + 312);
  if (!(*(*(*(a1 + 80) + 496) + 72))(*(*(a1 + 80) + 496) + 8))
  {
    xnet_recv_cold_4();
  }

  v6 = xnet_alloc_xfer(*(a1 + 80) + 280);
  if (!v6)
  {
    goto LABEL_11;
  }

  v7 = v6;
  v6[15] = *(a1 + 184);
  v6[14] = *(a1 + 120);
  v8 = *(a2 + 16);
  v6[2] = v8;
  if (v8)
  {
    v6[1] = **a2;
    memcpy(v6 + 3, *a2, 16 * v8);
  }

  v7[20] = a3 & 0x1000000 | 0x402;
  v7[23] = *(a2 + 32);
  if (!(*(*(*(a1 + 80) + 496) + 72))(*(*(a1 + 80) + 496) + 8))
  {
    xnet_recv_cold_3();
  }

  v9 = *(a1 + 18888);
  if (!v9)
  {
    xnet_free_xfer(*(a1 + 80) + 280, v7);
LABEL_11:
    v11 = -35;
    goto LABEL_19;
  }

  if (*(a1 + 18752))
  {
    v10 = *(a1 + 18760);
  }

  else
  {
    v10 = (a1 + 18752);
  }

  *v10 = v7;
  *v7 = 0;
  *(a1 + 18760) = v7;
  *(a1 + 18888) = v9 - 1;
  if (!(*(*(*(a1 + 80) + 496) + 72))(*(*(a1 + 80) + 496) + 8))
  {
    xnet_recv_cold_2();
  }

  if (*(a1 + 18696) && !*(a1 + 18688))
  {
    if (*(a1 + 18736) == a1 + 18736)
    {
      xnet_recv_cold_1();
    }

    xnet_progress_rx(a1);
  }

  v11 = 0;
LABEL_19:
  (*(*(a1 + 80) + 392))(*(a1 + 80) + 312);
  return v11;
}

uint64_t xnet_send(uint64_t a1, const void *a2, size_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  (*(*(a1 + 80) + 384))(*(a1 + 80) + 312, a2, a3, a4, a5);
  if (!(*(*(*(a1 + 80) + 496) + 72))(*(*(a1 + 80) + 496) + 8))
  {
    xnet_send_cold_2();
  }

  if (!(*(*(*(a1 + 80) + 496) + 72))(*(*(a1 + 80) + 496) + 8))
  {
    xnet_rma_readmsg_cold_12();
  }

  v10 = xnet_alloc_xfer(*(a1 + 80) + 280);
  if (v10)
  {
    v11 = v10;
    *(v10 + 200) = 3;
    *(v10 + 204) = 0;
    v10[14] = *(a1 + 136);
    *(v10 + 201) = 0;
    v10[15] = *(a1 + 176);
    v12 = xnet_max_inject;
    v13 = a3 + 16;
    v10[26] = a3 + 16;
    *(v10 + 206) = 16;
    v10[3] = (v10 + 25);
    if (v12 >= a3)
    {
      memcpy(v10 + 27, a2, a3);
      v14 = 1;
    }

    else
    {
      v10[1] = a2;
      v14 = 2;
      v13 = 16;
      v10[5] = a2;
      v10[6] = a3;
    }

    *(v11 + 32) = v13;
    *(v11 + 16) = v14;
    *(v11 + 184) = a6;
    *(v11 + 160) = *(a1 + 144) & 0x1000000 | 0x802;
    if ((*(a1 + 147) & 0x18) != 0)
    {
      *(v11 + 202) |= 4u;
      *(v11 + 168) |= 4u;
    }

    xnet_tx_queue_insert(a1, v11);
    v15 = 0;
  }

  else
  {
    v15 = -35;
  }

  (*(*(a1 + 80) + 392))(*(a1 + 80) + 312);
  return v15;
}

uint64_t xnet_sendv(uint64_t a1, uint64_t *a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  (*(*(a1 + 80) + 384))(*(a1 + 80) + 312, a2, a3, a4, a5);
  if (!(*(*(*(a1 + 80) + 496) + 72))(*(*(a1 + 80) + 496) + 8))
  {
    xnet_send_cold_2();
  }

  if (!(*(*(*(a1 + 80) + 496) + 72))(*(*(a1 + 80) + 496) + 8))
  {
    xnet_rma_readmsg_cold_12();
  }

  v10 = xnet_alloc_xfer(*(a1 + 80) + 280);
  if (!v10)
  {
    v18 = -35;
    goto LABEL_16;
  }

  v11 = v10;
  *(v10 + 200) = 3;
  v12 = v10 + 25;
  *(v10 + 204) = 0;
  v10[14] = *(a1 + 136);
  *(v10 + 201) = 0;
  v10[15] = *(a1 + 176);
  if (a4 >= 5)
  {
    xnet_sendv_cold_1();
  }

  if (!a4)
  {
    v16 = 16;
    v10[26] = 16;
    *(v10 + 206) = 16;
    v10[3] = v12;
    v17 = xnet_max_inject;
LABEL_12:
    ofi_copy_iov_buf(a2, a4, 0, (v10 + 27), v17, 0);
    *(v11 + 32) = v16;
    *(v11 + 16) = 1;
    goto LABEL_13;
  }

  v13 = 0;
  v14 = 1;
  v15 = a4;
  do
  {
    v13 += a2[v14];
    v14 += 2;
    --v15;
  }

  while (v15);
  v16 = v13 + 16;
  v10[26] = v13 + 16;
  *(v10 + 206) = 16;
  v10[3] = v12;
  v17 = xnet_max_inject;
  if (v13 <= xnet_max_inject)
  {
    goto LABEL_12;
  }

  v10[4] = 16;
  v10[1] = *a2;
  v10[2] = a4 + 1;
  memcpy(v10 + 5, a2, 16 * a4);
LABEL_13:
  *(v11 + 184) = a6;
  *(v11 + 160) = *(a1 + 144) & 0x1000000 | 0x802;
  if ((*(a1 + 147) & 0x18) != 0)
  {
    *(v11 + 202) |= 4u;
    *(v11 + 168) |= 4u;
  }

  xnet_tx_queue_insert(a1, v11);
  v18 = 0;
LABEL_16:
  (*(*(a1 + 80) + 392))(*(a1 + 80) + 312);
  return v18;
}

uint64_t xnet_sendmsg(uint64_t a1, uint64_t a2, int a3)
{
  (*(*(a1 + 80) + 384))(*(a1 + 80) + 312);
  if (!(*(*(*(a1 + 80) + 496) + 72))(*(*(a1 + 80) + 496) + 8))
  {
    xnet_send_cold_2();
  }

  if (!(*(*(*(a1 + 80) + 496) + 72))(*(*(a1 + 80) + 496) + 8))
  {
    xnet_rma_readmsg_cold_12();
  }

  v6 = xnet_alloc_xfer(*(a1 + 80) + 280);
  if (!v6)
  {
    v10 = -35;
    goto LABEL_19;
  }

  v7 = v6;
  *(v6 + 200) = 3;
  v8 = v6 + 25;
  *(v6 + 204) = 0;
  v6[14] = *(a1 + 136);
  *(v6 + 201) = 0;
  v6[15] = *(a1 + 176);
  if ((a3 & 0x20000) != 0)
  {
    *(v6 + 101) = 1;
    v6[27] = *(a2 + 40);
    v9 = 24;
  }

  else
  {
    v9 = 16;
  }

  v11 = *(a2 + 16);
  if (v11 >= 5)
  {
    xnet_sendv_cold_1();
  }

  v12 = *a2;
  if (!v11)
  {
    v6[26] = v9;
    *(v6 + 206) = v9;
    v6[3] = v8;
    v17 = xnet_max_inject;
    v16 = v9;
LABEL_15:
    ofi_copy_iov_buf(v12, v11, 0, &v8[v9 / 8], v17, 0);
    *(v7 + 32) = v16;
    *(v7 + 16) = 1;
    goto LABEL_16;
  }

  v13 = 0;
  v14 = 1;
  v15 = *(a2 + 16);
  do
  {
    v13 += v12[v14];
    v14 += 2;
    --v15;
  }

  while (v15);
  v16 = v13 + v9;
  v6[26] = v13 + v9;
  *(v6 + 206) = v9;
  v6[3] = v8;
  v17 = xnet_max_inject;
  if (v13 <= xnet_max_inject)
  {
    goto LABEL_15;
  }

  v6[4] = v9;
  v6[1] = *v12;
  v6[2] = v11 + 1;
  memcpy(v6 + 5, v12, 16 * v11);
LABEL_16:
  *(v7 + 160) = (*(a1 + 160) | a3) & 0x1000000 | 0x802;
  if ((a3 & 0x18000000) != 0)
  {
    *(v7 + 202) |= 4u;
    *(v7 + 168) |= 4u;
  }

  *(v7 + 184) = *(a2 + 32);
  xnet_tx_queue_insert(a1, v7);
  v10 = 0;
LABEL_19:
  (*(*(a1 + 80) + 392))(*(a1 + 80) + 312);
  return v10;
}

uint64_t xnet_inject(void *a1, const void *a2, size_t a3)
{
  (*(a1[10] + 384))(a1[10] + 312);
  if (!(*(*(a1[10] + 496) + 72))(*(a1[10] + 496) + 8))
  {
    xnet_send_cold_2();
  }

  if (!(*(*(a1[10] + 496) + 72))(*(a1[10] + 496) + 8))
  {
    xnet_rma_readmsg_cold_12();
  }

  v6 = xnet_alloc_xfer(a1[10] + 280);
  if (v6)
  {
    v7 = v6;
    *(v6 + 200) = 3;
    *(v6 + 204) = 0;
    v6[14] = a1[17];
    *(v6 + 201) = 0;
    v6[15] = a1[22];
    if (xnet_max_inject < a3)
    {
      xnet_inject_cold_1();
    }

    v6[26] = a3 + 16;
    *(v6 + 206) = 16;
    v6[3] = (v6 + 25);
    memcpy(v6 + 27, a2, a3);
    *(v7 + 32) = a3 + 16;
    *(v7 + 16) = 1;
    *(v7 + 168) = 64;
    *(v7 + 160) = 33556482;
    xnet_tx_queue_insert(a1, v7);
    v8 = 0;
  }

  else
  {
    v8 = -35;
  }

  (*(a1[10] + 392))(a1[10] + 312);
  return v8;
}

uint64_t xnet_senddata(uint64_t a1, const void *a2, size_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  (*(*(a1 + 80) + 384))(*(a1 + 80) + 312, a2, a3, a4, a5, a6);
  if (!(*(*(*(a1 + 80) + 496) + 72))(*(*(a1 + 80) + 496) + 8))
  {
    xnet_send_cold_2();
  }

  if (!(*(*(*(a1 + 80) + 496) + 72))(*(*(a1 + 80) + 496) + 8))
  {
    xnet_rma_readmsg_cold_12();
  }

  v12 = xnet_alloc_xfer(*(a1 + 80) + 280);
  if (v12)
  {
    v13 = v12;
    *(v12 + 200) = 3;
    *(v12 + 204) = 0;
    v12[14] = *(a1 + 136);
    *(v12 + 201) = 0;
    v12[15] = *(a1 + 176);
    v14 = a3 + 24;
    *(v12 + 101) = 1;
    v15 = xnet_max_inject;
    v12[26] = a3 + 24;
    v12[27] = a5;
    *(v12 + 206) = 24;
    v12[3] = (v12 + 25);
    if (v15 >= a3)
    {
      memcpy(v12 + 28, a2, a3);
      v16 = 1;
    }

    else
    {
      v12[1] = a2;
      v16 = 2;
      v14 = 24;
      v12[5] = a2;
      v12[6] = a3;
    }

    *(v13 + 32) = v14;
    *(v13 + 16) = v16;
    *(v13 + 184) = a7;
    *(v13 + 160) = *(a1 + 144) & 0x1000000 | 0x802;
    if ((*(a1 + 147) & 0x18) != 0)
    {
      *(v13 + 202) = 5;
      *(v13 + 168) |= 4u;
    }

    xnet_tx_queue_insert(a1, v13);
    v17 = 0;
  }

  else
  {
    v17 = -35;
  }

  (*(*(a1 + 80) + 392))(*(a1 + 80) + 312);
  return v17;
}

uint64_t xnet_injectdata(void *a1, const void *a2, size_t a3, uint64_t a4)
{
  (*(a1[10] + 384))(a1[10] + 312);
  if (!(*(*(a1[10] + 496) + 72))(*(a1[10] + 496) + 8))
  {
    xnet_send_cold_2();
  }

  if (!(*(*(a1[10] + 496) + 72))(*(a1[10] + 496) + 8))
  {
    xnet_rma_readmsg_cold_12();
  }

  v8 = xnet_alloc_xfer(a1[10] + 280);
  if (v8)
  {
    v9 = v8;
    *(v8 + 200) = 3;
    *(v8 + 204) = 0;
    v8[14] = a1[17];
    *(v8 + 201) = 0;
    v8[15] = a1[22];
    *(v8 + 101) = 1;
    v8[27] = a4;
    if (xnet_max_inject < a3)
    {
      xnet_inject_cold_1();
    }

    v8[26] = a3 + 24;
    *(v8 + 206) = 24;
    v8[3] = (v8 + 25);
    memcpy(v8 + 28, a2, a3);
    *(v9 + 32) = a3 + 24;
    *(v9 + 16) = 1;
    *(v9 + 168) = 64;
    *(v9 + 160) = 33556482;
    xnet_tx_queue_insert(a1, v9);
    v10 = 0;
  }

  else
  {
    v10 = -35;
  }

  (*(a1[10] + 392))(a1[10] + 312);
  return v10;
}

uint64_t xnet_tsend(uint64_t a1, const void *a2, size_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
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
  if (v12)
  {
    v13 = v12;
    *(v12 + 200) = 3;
    *(v12 + 204) = 0;
    v12[14] = *(a1 + 136);
    if (!*(a1 + 18896))
    {
      xnet_tsend_cold_1();
    }

    *(v12 + 201) = 1;
    v12[15] = *(a1 + 176);
    v14 = xnet_max_inject;
    v15 = a3 + 24;
    v12[26] = a3 + 24;
    v12[27] = a6;
    *(v12 + 206) = 24;
    v12[3] = (v12 + 25);
    if (v14 >= a3)
    {
      memcpy(v12 + 28, a2, a3);
      v16 = 1;
    }

    else
    {
      v12[1] = a2;
      v16 = 2;
      v15 = 24;
      v12[5] = a2;
      v12[6] = a3;
    }

    *(v13 + 32) = v15;
    *(v13 + 16) = v16;
    *(v13 + 184) = a7;
    *(v13 + 160) = *(a1 + 144) & 0x1000000 | 0x808;
    if ((*(a1 + 147) & 0x18) != 0)
    {
      *(v13 + 202) |= 4u;
      *(v13 + 168) |= 4u;
    }

    v18 = xnet_rts_check(a1, v13);
    if (v18)
    {
      v17 = v18;
    }

    else
    {
      xnet_tx_queue_insert(a1, v13);
      v17 = 0;
    }
  }

  else
  {
    v17 = -35;
  }

  (*(*(a1 + 80) + 392))(*(a1 + 80) + 312);
  return v17;
}