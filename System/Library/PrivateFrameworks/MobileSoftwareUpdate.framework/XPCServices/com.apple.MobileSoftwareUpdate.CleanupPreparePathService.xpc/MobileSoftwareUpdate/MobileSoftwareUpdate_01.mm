void *checkpoint_history_add(int *a1, int a2, int a3, int a4, int a5, const char *a6, int a7, int a8, const void *a9)
{
  v17 = calloc(1uLL, 0x78uLL);
  if (!v17)
  {
    return v17;
  }

  v94 = 0;
  asprintf(&v94, "%s", a6);
  if (!v94)
  {
    free(v17);
    return 0;
  }

  *(v17 + 2) = a2;
  v17[2] = time(0);
  gettimeofday((v17 + 3), 0);
  *(v17 + 10) = getpid();
  *(v17 + 11) = getppid();
  *(v17 + 12) = a3;
  *(v17 + 13) = a4;
  *(v17 + 14) = a5;
  v17[8] = v94;
  *(v17 + 18) = a7;
  *(v17 + 19) = a8;
  if (a9)
  {
    v17[10] = a9;
    CFRetain(a9);
    a5 = *(v17 + 14);
  }

  *(v17 + 22) = a5 | (*(v17 + 2) << 16) | 0x11000000;
  *v98 = 0x1500000001;
  v95[0] = 0;
  v95[1] = 0;
  v96 = 16;
  if (sysctl(v98, 2u, v95, &v96, 0, 0))
  {
    v18 = -1;
  }

  else
  {
    v18 = v17[2] - v95[0];
  }

  v19 = *(v17 + 2);
  if (v19 <= 0x21)
  {
    if (((1 << v19) & 0x100000090) != 0)
    {
      checkpoint_nvram_store_by_id_try_int(a1, 0xDu, *(v17 + 14) | 0x11070000, *(v17 + 18), *(v17 + 19));
      v22 = v17[10];
      if (v22)
      {
        Code = CFErrorGetCode(v22);
        Domain = CFErrorGetDomain(v17[10]);
        v25 = checkpoint_cferror_alloc_string(v17[10]);
        checkpoint_nvram_store_by_id_try_int(a1, 0xFu, *(v17 + 22), *(v17 + 18), Code);
        if (Domain)
        {
          bzero(buffer, 0x400uLL);
          CFStringGetCString(Domain, buffer, 1024, 0x8000100u);
          checkpoint_nvram_store_by_id_try(a1, 0x10u, *(v17 + 22), *(v17 + 18), buffer);
        }

        if (v25)
        {
          checkpoint_nvram_store_by_id(a1, 0x11u, *(v17 + 22), v25);
          free(v25);
        }
      }

      goto LABEL_76;
    }

    if (((1 << v19) & 0x200000020) != 0)
    {
      v20 = *(v17 + 18);
      v21 = *(v17 + 14);
      if (v20)
      {
        checkpoint_nvram_store_by_id_try_int(a1, 0xDu, v21 | 0x11070000, v20, 0);
        goto LABEL_76;
      }

      v35 = a1 + 378;
      v36 = 92;
      if (!*(a1 + 104))
      {
        v36 = 44;
      }

      v37 = &v35[v36];
      v38 = *(v37 + 1);
      if (v38)
      {
        v39 = v21 | 0x11030000;
        if (*v38 == v39)
        {
          v40 = 0;
          *v38 = 0;
LABEL_41:
          v41 = &v38[v40 + 1];
          v42 = v40 - 7;
          do
          {
            *(v41 - 1) = *v41;
            ++v41;
            v43 = __CFADD__(v42++, 1);
          }

          while (!v43);
LABEL_44:
          v38[7] = 0;
          *(v37 + 4) = 1;
          goto LABEL_53;
        }

        v44 = v38 + 1;
        v45 = -1;
        while (v45 != 6)
        {
          v46 = *v44;
          v44 += 2;
          ++v45;
          if (v46 == v39)
          {
            *(v44 - 1) = 0;
            if (v45 > 5)
            {
              goto LABEL_44;
            }

            v40 = v45 + 1;
            goto LABEL_41;
          }
        }
      }

      v47 = a1[376];
      if (!v47)
      {
        ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): {%s} tracking information lost on remove [%s]\n", "checkpoint_nvram_remove_lost", "checkpoint_nvram_remove_by_id_int", "not removed");
        v47 = a1[376];
      }

      a1[376] = v47 + 1;
LABEL_53:
      v48 = 24;
      if (!*(a1 + 104))
      {
        v48 = 12;
      }

      if ((0x1001100uLL >> v48))
      {
        v49 = &v35[4 * v48];
        v50 = *(v49 + 1);
        if (v50)
        {
          v51 = *(v17 + 14) | 0x11030000;
          v52 = v50 + 28;
          if (*v50 == v51)
          {
            v53 = 0;
LABEL_66:
            v57 = &v50[4 * v53];
            v58 = v57[1];
            if (v58)
            {
              free(v58);
            }

            *v57 = 0;
            v57[1] = 0;
            if (v53 <= 6)
            {
              v59 = v57 + 2;
              v60 = v53 - 7;
              do
              {
                *(v59 - 1) = *v59;
                ++v59;
                v43 = __CFADD__(v60++, 1);
              }

              while (!v43);
            }

            *v52 = 0;
            v52[1] = 0;
            *(v49 + 4) = 1;
            goto LABEL_76;
          }

          v53 = 0;
          v55 = v50 + 4;
          while (v53 != 7)
          {
            ++v53;
            v56 = *v55;
            v55 += 4;
            if (v56 == v51)
            {
              goto LABEL_66;
            }
          }
        }
      }

      v61 = a1[376];
      if (!v61)
      {
        ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): {%s} tracking information lost on remove [%s]\n", "checkpoint_nvram_remove_lost", "checkpoint_nvram_remove_by_id", "not removed");
        v61 = a1[376];
      }

      a1[376] = v61 + 1;
LABEL_76:
      checkpoint_nvram_store_long(a1, 0x12u, v18);
      checkpoint_nvram_store_long(a1, 0x15u, *(v17 + 14));
      goto LABEL_77;
    }

    if (v19 == 6)
    {
      checkpoint_nvram_store_by_id_try(a1, 0xEu, *(v17 + 22), *(v17 + 18), v17[8]);
      goto LABEL_77;
    }
  }

  if (v19 == 3)
  {
    if (!*(v17 + 18))
    {
      v26 = a1[374] + 1;
      a1[374] = v26;
      v27 = *(v17 + 22);
      v28 = 92;
      if (!*(a1 + 104))
      {
        v28 = 44;
      }

      v29 = &a1[v28];
      v30 = *(v29 + 190);
      if (!v30)
      {
        goto LABEL_59;
      }

      v31 = 0;
      v32 = *(v29 + 190);
      do
      {
        v33 = *v32;
        v32 += 2;
        if (v33)
        {
          v34 = 0;
        }

        else
        {
          v34 = v30;
        }

        if (v31 > 6)
        {
          break;
        }

        ++v31;
        v30 = v32;
      }

      while (!v34);
      if (v34)
      {
        *v34 = v27;
        v34[1] = v26;
        *(v29 + 1516) = 1;
      }

      else
      {
LABEL_59:
        v54 = a1[375];
        if (!v54)
        {
          ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): {%s} tracking information lost on store [%s]\n", "checkpoint_nvram_store_lost", "checkpoint_nvram_store_by_id_int", "dest_store == NULL");
          v54 = a1[375];
          v27 = *(v17 + 22);
        }

        a1[375] = v54 + 1;
      }

      checkpoint_nvram_store_by_id(a1, 0xCu, v27, v17[8]);
    }

    goto LABEL_76;
  }

  if (v19 == 1)
  {
    checkpoint_nvram_store_by_id(a1, 0xAu, *(v17 + 22), v17[8]);
  }

LABEL_77:
  *v17 = 0;
  **(a1 + 27) = v17;
  *(a1 + 27) = v17;
  v62 = a1[56] + 1;
  a1[56] = v62;
  if (v62 >= 0x201)
  {
    v63 = a1 + 52;
    do
    {
      v64 = *v63;
      v65 = **v63;
      *v63 = v65;
      if (!v65)
      {
        *(a1 + 27) = v63;
      }

      a1[56] = v62 - 1;
      v66 = v64[8];
      if (v66)
      {
        free(v66);
        v64[8] = 0;
      }

      v67 = v64[10];
      if (v67)
      {
        CFRelease(v67);
      }

      free(v64);
      v62 = a1[56];
    }

    while (v62 > 0x200);
  }

  memset(buffer, 0, 56);
  v95[0] = 0;
  gmtime_r(v17 + 2, buffer);
  v68 = *(v17 + 2);
  if (v68 > 0x21)
  {
    v69 = "GENERAL";
  }

  else
  {
    v69 = checkpoint_history_type_name[v68];
  }

  asprintf(v95, "[%02u:%02u:%02u.%04u-GMT]{%u>%u} CHECKPOINT %s", buffer[0].tm_hour, buffer[0].tm_min, buffer[0].tm_sec, *(v17 + 8) / 1000, *(v17 + 11), *(v17 + 10), v69);
  v70 = v95[0];
  *&buffer[0].tm_sec = 0;
  if (*(v17 + 19))
  {
    asprintf(buffer, "(FAILURE:%d) ");
  }

  else
  {
    v71 = *(v17 + 2);
    if (v71 <= 0x1C && ((1 << v71) & 0x18000080) != 0)
    {
      asprintf(buffer, "(SUCCESS) ", v92);
    }

    else
    {
      asprintf(buffer, " ", v92);
    }
  }

  v72 = *&buffer[0].tm_sec;
  if (!v70 || !*&buffer[0].tm_sec)
  {
    goto LABEL_158;
  }

  *&buffer[0].tm_sec = 0;
  if (*(v17 + 14))
  {
    v73 = *(v17 + 2);
    if (v73 == 28 || v73 == 1)
    {
      asprintf(buffer, "[0x%04X] %s");
    }

    else if (*(v17 + 12) == 1)
    {
      asprintf(buffer, "%s");
    }

    else
    {
      asprintf(buffer, "%s:[0x%04X] %s");
    }

    v74 = *&buffer[0].tm_sec;
  }

  else
  {
    v74 = 0;
  }

  v95[0] = 0;
  v75 = *(v17 + 2);
  if (v75 == 28)
  {
    *&buffer[0].tm_sec = 0;
    if (!*(v17 + 19))
    {
      asprintf(buffer, "... %s");
      goto LABEL_131;
    }

    v78 = checkpoint_nvram_copy_encode_c_string(a1, 9);
    v79 = checkpoint_nvram_copy_string(a1, (a1 + 272), 0xCu);
    v80 = v79;
    v81 = a1[27];
    if (v81 > 6)
    {
      v82 = "GENERAL";
    }

    else
    {
      v82 = checkpoint_failure_type_name[v81];
    }

    if (v78)
    {
      if (!v79)
      {
        asprintf(buffer, "[%s] %s", v82, v78);
        v84 = v78;
        goto LABEL_130;
      }

      asprintf(buffer, "[%s] %s %s", v82, v79, v78);
      free(v78);
    }

    else
    {
      if (!v79)
      {
        asprintf(buffer, "[%s]");
LABEL_131:
        v77 = *&buffer[0].tm_sec;
        if (v74)
        {
          goto LABEL_115;
        }

LABEL_132:
        if (v77)
        {
          asprintf(v95, "%s:%s %s", v70, v72, v77);
LABEL_135:
          v83 = 1;
          goto LABEL_136;
        }

LABEL_134:
        asprintf(v95, "%s:%s", v70, v72);
        v77 = 0;
        goto LABEL_135;
      }

      asprintf(buffer, "[%s] %s", v82, v79);
    }

    v84 = v80;
LABEL_130:
    free(v84);
    goto LABEL_131;
  }

  if (v75 == 27)
  {
    v76 = checkpoint_nvram_copy_encode_c_string(a1, 13);
    v77 = v76;
    if (*v76 == 123 && v76[1] == 125 && !v76[2])
    {
      free(v76);
      if (!v74)
      {
        goto LABEL_134;
      }

      goto LABEL_117;
    }
  }

  else
  {
    v77 = checkpoint_cferror_alloc_string(v17[10]);
  }

  if (!v74)
  {
    goto LABEL_132;
  }

LABEL_115:
  if (!v77)
  {
LABEL_117:
    asprintf(v95, "%s:%s%s", v70, v72, v74);
    v83 = 0;
    v77 = 0;
    goto LABEL_136;
  }

  asprintf(v95, "%s:%s%s %s", v70, v72, v74, v77);
  v83 = 0;
LABEL_136:
  v85 = v95[0];
  if (v95[0])
  {
    v93 = v83;
    if (*(v17 + 2) == 28)
    {
      if (a1[22] == 2)
      {
        v86 = 1;
      }

      else
      {
        v86 = 3;
      }
    }

    else
    {
      v86 = 1;
    }

    while (1)
    {
      ramrod_log_msg("%s\n", v85);
      if (*(v17 + 2) == 28)
      {
        ramrod_log_msg("\n^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^\n");
      }

      if (v86 < 2)
      {
        break;
      }

      --v86;
      sleep(1u);
    }

    v87 = v95[0];
    v88 = calloc(1uLL, 0x10uLL);
    if (v88)
    {
      v89 = v88;
      v88[1] = v87;
      if (*a1 == 1)
      {
        *v88 = 0;
        **(a1 + 63) = v88;
        *(a1 + 63) = v88;
      }

      else
      {
        pthread_mutex_lock(a1 + 4);
        v90 = *a1;
        *v89 = 0;
        **(a1 + 63) = v89;
        *(a1 + 63) = v89;
        if (v90 != 1)
        {
          pthread_mutex_unlock(a1 + 4);
        }
      }

      *(a1 + 232) = 1;
      v83 = v93;
    }

    else if (v87)
    {
      free(v87);
    }
  }

  if ((v83 & 1) == 0)
  {
    free(v74);
  }

  if (v77)
  {
    free(v77);
  }

LABEL_158:
  if (v70)
  {
    free(v70);
  }

  if (v72)
  {
    free(v72);
  }

  return v17;
}

void checkpoint_nvram_collect(int *a1, unsigned int *a2)
{
  if (*(a2 + 4))
  {
    ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): first available indication when already collected\n", "checkpoint_nvram_collect");
    return;
  }

  v4 = 0;
  v5 = 0;
  v6 = a2 + 2;
  do
  {
    checkpoint_nvram_collect_var(a1, *a2, v5, &v6[v4]);
    v7 = *a1;
    if ((v5 - 39) <= 3 && v7 == 2)
    {
      if (*&v6[2 * v5])
      {
        goto LABEL_13;
      }
    }

    else if (v5 >= 0x2B && v5 != 47 && v7 == 2)
    {
      v8 = *&v6[2 * v5];
      if (v8)
      {
        bzero(v9, 0x400uLL);
        checkpoint_get_nvram_value_string(v8, v9);
        checkpoint_nvram_store_string(a1, v5 - 4, v9);
LABEL_13:
        checkpoint_nvram_delete_var(a1, v5, 0, 0);
      }
    }

    ++v5;
    v4 += 2;
  }

  while (v5 != 48);
  *(a2 + 4) = 1;
}

uint64_t checkpoint_get_outcome_type(uint64_t a1, uint64_t a2)
{
  v2 = checkpoint_nvram_copy_string(a1, a2, 5u);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = 0;
  do
  {
    if (!strcmp(v3, checkpoint_outcome_names[v4]))
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    if (v5)
    {
      break;
    }
  }

  while (v4++ < 0x21);
  free(v3);
  return v5;
}

void checkpoint_nvram_store_anomaly(int *a1, uint64_t a2, char *a3, ...)
{
  va_start(va, a3);
  v4[0] = 0;
  va_copy(&v4[1], va);
  vasprintf(v4, a3, va);
  if (v4[0])
  {
    checkpoint_history_add(a1, 30, 1, 0, 260, v4[0], 0, 0, 0);
    checkpoint_nvram_store_by_id(a1, 8u, a1[30], v4[0]);
    if (v4[0])
    {
      free(v4[0]);
      v4[0] = 0;
    }
  }

  ++a1[30];
}

void checkpoint_outcome_progress(uint64_t result, uint64_t a2)
{
  v2 = *(result + 96);
  v3 = *(&checkpoint_outcome_progress_table + v2);
  if (*(v3 + 4 * a2))
  {
    v4 = a2;
    *(result + 92) = v2;
    v6 = *(v3 + 4 * a2);
    *(result + 96) = v6;
    if (v6 > 0x21)
    {
      v7 = "unknown";
    }

    else
    {
      v7 = checkpoint_outcome_names[v6];
    }

    checkpoint_nvram_store_string(result, 5u, v7);

    checkpoint_log_progress(result, v4);
  }
}

void checkpoint_nvram_delete_var(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  if (a2 < 0x30)
  {
    v5 = &checkpoint_nvram_map[4 * a2];
    if (a3 || (*(v5 + 6) - 5) < 0xFFFFFFFD)
    {
      bzero(buffer, 0x400uLL);
      if (*(a1 + 88) == 1)
      {
        v6 = v5;
      }

      else
      {
        v6 = (v5 + 1);
      }

      v7 = *v6;
      CFStringGetCString(*v6, buffer, 1024, 0x8000100u);
      checkpoint_nvram_delete_var_raw(v7);
    }

    else
    {
      ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): invalid delete of BOOT-CONTROL NVRAM ID %u\n");
    }
  }

  else
  {
    ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): invalid delete of NVRAM ID %u\n");
  }
}

char *checkpoint_get_nvram_value_string(const __CFString *a1, char *a2)
{
  if (a1)
  {
    CFStringGetCString(a1, a2, 1024, 0x8000100u);
  }

  else
  {
    bzero(a2, 0x400uLL);
  }

  return a2;
}

void checkpoint_nvram_store_string(uint64_t result, unsigned int a2, const char *a3)
{
  if (*(result + 104))
  {
    if (a2 > 0x2F)
    {
      ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): invalid variable ID=%d\n", "checkpoint_nvram_adjust_id", a2);
      v5 = 0;
      v6 = result + 1512;
      goto LABEL_7;
    }

    a2 = checkpoint_nvram_map[4 * a2 + 2];
  }

  if (a2 > 0x2F)
  {
    goto LABEL_12;
  }

  v5 = a2;
  v6 = result + 16 * a2 + 1512;
LABEL_7:
  if ((0xFFFC000000FEuLL >> v5))
  {
    v7 = *(v6 + 8);
    if (v7)
    {
      if (*v7)
      {
        free(*v7);
        *v7 = 0;
      }

      checkpoint_nvram_store_set_string(result + 1480, v7, a3);
      *(v6 + 4) = 1;
      return;
    }
  }

LABEL_12:
  v8 = *(result + 1500);
  if (!v8)
  {
    ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): {%s} tracking information lost on store [%s]\n", "checkpoint_nvram_store_lost", "checkpoint_nvram_store_string", "wrong type or internalStore.string == NULL");
    v8 = *(result + 1500);
  }

  *(result + 1500) = v8 + 1;
}

void checkpoint_access_obtain(_DWORD *result)
{
  if (result)
  {
    if (*result != 1)
    {
      v2 = (result + 2);

      pthread_mutex_lock(v2);
    }
  }

  else
  {
    ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): checkpoint context not initialized\n", "checkpoint_access_obtain");
  }
}

void checkpoint_access_yield(_DWORD *result)
{
  if (result)
  {
    if (*result != 1)
    {
      v2 = (result + 2);

      pthread_mutex_unlock(v2);
    }
  }

  else
  {
    ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): checkpoint context not initialized\n", "checkpoint_access_yield");
  }
}

timeval *checkpoint_time_copy_current_time()
{
  v0 = calloc(1uLL, 0x18uLL);
  if (!v0)
  {
    abort();
  }

  v1 = v0;
  v0[1].tv_sec = mach_absolute_time();
  gettimeofday(v1, 0);
  return v1;
}

timeval *checkpoint_closure_context_set_start_time(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    *(a1 + 72) = 1;
    free(v2);
  }

  result = checkpoint_time_copy_current_time();
  *(a1 + 56) = result;
  return result;
}

timeval *checkpoint_closure_context_set_end_time(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    free(v2);
  }

  result = checkpoint_time_copy_current_time();
  *(a1 + 64) = result;
  return result;
}

void checkpoint_closure_context_set_encountered_async_error(_DWORD *result, uint64_t a2, __CFError *a3)
{
  if (a3)
  {
    v4 = a2;
    v6 = checkpoint_chassis_context;
    if (!checkpoint_error_is_cancel_error(a3))
    {
      v7 = *(result + 1);
      if (!v7 || (*(v7 + 36) & 3) == 0 || !checkpoint_tolerated_treat_as_success_minimized(v6, v7))
      {
        checkpoint_access_obtain(v6);
        v8 = (v6 + 48);
        v9 = (v6 + 48);
        while (1)
        {
          v9 = *v9;
          if (!v9)
          {
            break;
          }

          if (*(v9 + 32) == result[19])
          {
            goto LABEL_12;
          }
        }

        v9 = *v8;
        if (!*v8)
        {
          checkpoint_chassis_set_global_async_error(v6, v4, a3, *(result + 1));
          goto LABEL_19;
        }

LABEL_12:
        if (!*(v9 + 144) && !*(v9 + 137))
        {
          checkpoint_engine_set_async_error(v9, v4, a3, *(result + 1));
          for (i = *v8; i != v9; i = *i)
          {
            checkpoint_engine_cancel(i);
          }

          checkpoint_engine_cancel(v9);
        }

LABEL_19:

        checkpoint_access_yield(v6);
      }
    }
  }
}

__CFError *checkpoint_error_is_cancel_error(__CFError *result)
{
  if (result)
  {
    v1 = result;
    if (CFErrorGetCode(result) == 1)
    {
      Domain = CFErrorGetDomain(v1);
      return (CFEqual(Domain, @"CheckpointEngineErrorDomain") != 0);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t checkpoint_tolerated_treat_as_success_minimized(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 984);
  if (v4)
  {
    v5 = CFStringCompare(v4, @"true", 0) == kCFCompareEqualTo;
  }

  else
  {
    v5 = 0;
  }

  should_do_legacy_restored_internal_behaviors = ramrod_should_do_legacy_restored_internal_behaviors();
  v7 = *(a1 + 88);
  v8 = (v7 == 1) & (should_do_legacy_restored_internal_behaviors ^ 1 | v5);
  v9 = v7 != 2 || v5;
  if (v9 != 1 || v8 != 0)
  {
    v11 = *(a2 + 36);
    if ((v11 & 3) != 0)
    {
      if ((v11 & 2) == 0)
      {
        return 1;
      }

      v13 = 0;
      v14 = a2 + 40;
      do
      {
        v15 = *(v14 + v13);
        if (!v15)
        {
          break;
        }

        failed_entry = checkpoint_tolerated_get_failed_entry(*(a1 + 2280), v15);
        if (failed_entry && (!*(a1 + 104) || *(failed_entry + 48) == 1 && *(failed_entry + 14)))
        {
          return 1;
        }

        v13 += 4;
      }

      while (v13 != 40);
    }
  }

  return 0;
}

__n128 checkpoint_engine_set_async_error(uint64_t a1, int a2, __CFError *a3, uint64_t a4)
{
  if (checkpoint_error_is_cancel_error(a3))
  {
    abort();
  }

  v8 = *(a1 + 144);
  if (v8)
  {
    CFRelease(v8);
  }

  *(a1 + 144) = 0;
  free(*(a1 + 160));
  *(a1 + 160) = 0;
  *(a1 + 152) = 0;
  if (a3)
  {
    if (!a4)
    {
      checkpoint_engine_set_async_error_cold_1();
    }

    *(a1 + 152) = a2;
    *(a1 + 144) = CFRetain(a3);
    v10 = calloc(1uLL, 0x60uLL);
    *(a1 + 160) = v10;
    v11 = *(a4 + 16);
    *v10 = *a4;
    v10[1] = v11;
    result = *(a4 + 64);
    v12 = *(a4 + 80);
    v14 = *(a4 + 32);
    v13 = *(a4 + 48);
    v10[4] = result;
    v10[5] = v12;
    v10[2] = v14;
    v10[3] = v13;
  }

  return result;
}

void *checkpoint_engine_cancel(void *result)
{
  if (!*(result + 137))
  {
    v1 = result;
    v2 = result[2];
    if (*v2)
    {
      v3 = v2 + 24;
      do
      {
        result = *(v3 - 2);
        if (result)
        {
          if (!*(v3 - 8))
          {
            result = [result cancel];
          }
        }

        v4 = *v3;
        v3 += 24;
      }

      while (v4);
    }

    *(v1 + 137) = 1;
  }

  return result;
}

__n128 checkpoint_chassis_set_global_async_error(uint64_t a1, int a2, __CFError *a3, uint64_t a4)
{
  if (checkpoint_error_is_cancel_error(a3))
  {
    abort();
  }

  v8 = *(a1 + 168);
  if (v8)
  {
    CFRelease(v8);
  }

  *(a1 + 168) = 0;
  free(*(a1 + 184));
  *(a1 + 184) = 0;
  *(a1 + 176) = 0;
  if (a3)
  {
    if (!a4)
    {
      checkpoint_chassis_set_global_async_error_cold_1();
    }

    CFRetain(a3);
    *(a1 + 176) = a2;
    *(a1 + 168) = a3;
    v10 = calloc(1uLL, 0x60uLL);
    *(a1 + 184) = v10;
    v11 = *(a4 + 16);
    *v10 = *a4;
    v10[1] = v11;
    result = *(a4 + 64);
    v12 = *(a4 + 80);
    v14 = *(a4 + 32);
    v13 = *(a4 + 48);
    v10[4] = result;
    v10[5] = v12;
    v10[2] = v14;
    v10[3] = v13;
  }

  return result;
}

char *checkpoint_cferror_alloc_string(CFErrorRef err)
{
  if (!err)
  {
    return 0;
  }

  v1 = err;
  v2 = 0;
  v3 = 0;
  do
  {
    v4 = CFErrorCopyUserInfo(v1);
    v2 = checkpoint_append_and_free(v2, "[%d]", v3);
    if (!v4)
    {
      break;
    }

    v16 = 0;
    Value = CFDictionaryGetValue(v4, kCFErrorLocalizedRecoverySuggestionKey);
    v6 = checkpoint_cferror_append(v2, "RS", Value, &v16);
    v7 = CFDictionaryGetValue(v4, kCFErrorLocalizedDescriptionKey);
    v8 = checkpoint_cferror_append(v6, "LD", v7, &v16);
    v9 = CFDictionaryGetValue(v4, kCFErrorDescriptionKey);
    v10 = checkpoint_cferror_append(v8, "D", v9, &v16);
    v11 = CFDictionaryGetValue(v4, kCFErrorLocalizedFailureReasonKey);
    v2 = checkpoint_cferror_append(v10, "FR", v11, &v16);
    v1 = CFDictionaryGetValue(v4, kCFErrorUnderlyingErrorKey);
    CFRelease(v4);
    if (!v1)
    {
      break;
    }
  }

  while (v3++ < 0xF);
  v13 = strlen(v2);
  if (v13 >= 0xF3)
  {
    v15 = 0;
    asprintf(&v15, "%s", &v2[v13 - 242]);
    if (v2)
    {
      free(v2);
    }

    return v15;
  }

  return v2;
}

uint64_t checkpoint_closure_context_get_step_desc(uint64_t result)
{
  if (result)
  {
    return *result;
  }

  return result;
}

uint64_t checkpoint_closure_context_should_retry(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 48);
    *(result + 48) = v1 + 1;
    return !*(result + 19) && v1 < *(*result + 28);
  }

  return result;
}

uint64_t checkpoint_closure_context_handle_simulator_actions(uint64_t *a1, uint64_t a2, int *a3, __CFError **a4)
{
  if (!a1)
  {
    ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): closure context is NULL\n", a2);
    return a2;
  }

  if (!checkpoint_chassis_context)
  {
    ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): %s called too early, checkpoint_chassis_context == NULL\n", a2, a3);
    return a2;
  }

  v5 = *a1;
  v6 = checkpoint_chassis_context;

  return checkpoint_simulator_action(v6, v5, a2, a3, a4);
}

uint64_t checkpoint_simulator_action(uint64_t a1, uint64_t a2, unsigned int a3, int *a4, __CFError **a5)
{
  if (a5 && checkpoint_error_is_cancel_error(*a5))
  {
    return 0;
  }

  v11 = a3;
  checkpoint_access_obtain(a1);
  checkpoint_simulator_configure(a1);
  if (!*(a1 + 2300) || !*(a1 + 2312))
  {
    goto LABEL_17;
  }

  v12 = CFStringCreateWithCString(kCFAllocatorDefault, *(a2 + 8), 0x8000100u);
  Count = CFArrayGetCount(*(a1 + 2312));
  if (Count < 1)
  {
    v20 = 0;
    if (!v12)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v14 = Count;
  ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 2312), 0);
  if (CFStringCompare(v12, ValueAtIndex, 0) == kCFCompareEqualTo)
  {
    v20 = 1;
    if (!v12)
    {
      goto LABEL_13;
    }

LABEL_12:
    CFRelease(v12);
    goto LABEL_13;
  }

  v16 = 1;
  do
  {
    v17 = v16;
    if (v14 == v16)
    {
      break;
    }

    v18 = CFArrayGetValueAtIndex(*(a1 + 2312), v16);
    v19 = CFStringCompare(v12, v18, 0);
    v16 = v17 + 1;
  }

  while (v19);
  v20 = v17 < v14;
  if (v12)
  {
    goto LABEL_12;
  }

LABEL_13:
  if (v20)
  {
    v21 = *(a1 + 2308);
    if (!v21)
    {
      if (a3)
      {
        checkpoint_history_add(a1, *(a1 + 2300), 1, 0, *a2, *(a2 + 8), *(a1 + 2304), *a4, *a5);
      }

      checkpoint_access_yield(a1);
      v26 = 0;
      v22 = 0;
      switch(*(a1 + 2300))
      {
        case 9:
          goto LABEL_77;
        case 0xA:
          if (*(a1 + 2299) == a3)
          {
            *a4 = 181;
            ramrod_create_error_cf(a5, @"CheckpointErrorDomain", 181, 0, @"checkpoint simulator error", v23, v24, v25, v35);
          }

          goto LABEL_73;
        case 0xB:
          if (*(a1 + 2299) == a3)
          {
            abort();
          }

          goto LABEL_73;
        case 0xC:
          if (*(a1 + 2299) == a3)
          {
            exit(182);
          }

          goto LABEL_73;
        case 0xD:
          if (*(a1 + 2299) == a3)
          {
            _exit(183);
          }

          goto LABEL_73;
        case 0xE:
          if (*(a1 + 2299) == a3)
          {
            for (i = 0; ; ++i)
            {
              ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): simulator signal executing after dereference of %p [%d]\n", "checkpoint_simulator_action", i, *i);
            }
          }

          goto LABEL_73;
        case 0xF:
          if (*(a1 + 2299) == a3)
          {
              ;
            }
          }

          goto LABEL_73;
        case 0x10:
          if (*(a1 + 2299) == a3)
          {
            memset(&v37, 0, sizeof(v37));
            v36.__sig = 0;
            *v36.__opaque = 0;
            pthread_mutexattr_init(&v36);
            pthread_mutex_init(&v37, &v36);
            pthread_mutex_lock(&v37);
            pthread_mutex_lock(&v37);
          }

          goto LABEL_73;
        case 0x11:
          if (*(a1 + 2299) != a3)
          {
            goto LABEL_73;
          }

          v30 = mach_host_self();
          v31 = 0;
          goto LABEL_72;
        case 0x12:
          goto LABEL_51;
        case 0x13:
          ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): simulator PAUSE not supported\n");
          goto LABEL_73;
        case 0x14:
          ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): simulator RESUME not supported\n");
          goto LABEL_73;
        case 0x15:
          if (*(a1 + 2299) != a3)
          {
            goto LABEL_73;
          }

          __break(1u);
LABEL_51:
          if (*(a1 + 2299) != a3)
          {
            goto LABEL_73;
          }

          v30 = mach_host_self();
          v31 = 4096;
LABEL_72:
          host_reboot(v30, v31);
LABEL_73:
          v22 = 0;
LABEL_74:
          v26 = a3;
LABEL_75:
          if (!a3)
          {
            goto LABEL_77;
          }

          v11 = v26;
          if (!v26)
          {
            goto LABEL_77;
          }

          goto LABEL_18;
        case 0x16:
          v22 = a3 == 0;
          goto LABEL_74;
        case 0x17:
          v22 = 0;
          if (*(a1 + 2299) == a3)
          {
            v26 = 0;
          }

          else
          {
            v26 = a3;
          }

          if (a3 || *(a1 + 2299))
          {
            goto LABEL_75;
          }

          if (*a4)
          {
            ramrod_log_msg("CHECKPOINT_SIMULATOR_NOTICE(%s): checkpoint simulator ignoring error on step %s result: %d\n", "checkpoint_simulator_action", *(a2 + 8), *a4);
            *a4 = 0;
            if (*a5)
            {
              v28 = checkpoint_cferror_alloc_string(*a5);
              if (v28)
              {
                v29 = v28;
                ramrod_log_msg("CHECKPOINT_SIMULATOR_NOTICE(%s): checkpoint simulator ignoring error on step %s error: %s\n", "checkpoint_simulator_action", *(a2 + 8), v28);
                free(v29);
              }

              CFRelease(*a5);
              v26 = 0;
              v22 = 0;
              *a5 = 0;
LABEL_77:
              v33 = *(a1 + 2304);
              if (v33)
              {
                v34 = v33 - 1;
                *(a1 + 2304) = v34;
                if (!v34)
                {
                  *(a1 + 2300) = 0;
                }
              }

              v11 = v26;
              goto LABEL_18;
            }
          }

          else
          {
            ramrod_log_msg("CHECKPOINT_SIMULATOR_NOTICE(%s): checkpoint simulator to ignore error on step %s, but step was successful\n", "checkpoint_simulator_action", *(a2 + 8));
          }

          v26 = 0;
          v22 = 0;
          goto LABEL_77;
        case 0x18:
          if (*(a1 + 2299) == a3)
          {
            checkpoint_simulator_jetsam();
            ramrod_log_msg("CHECKPOINT_SIMULATOR_NOTICE(%s): returned from checkpoint jetsam attempt; continuing engine\n");
          }

          goto LABEL_73;
        case 0x19:
          if (*(a1 + 2299) == a3)
          {
            v27 = fork();
            if (v27 < 1)
            {
              if (!v27)
              {
                checkpoint_simulator_jetsam();
                exit(0);
              }

              __error();
              ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): error %d attempting to fork jetsam child\n");
            }

            else
            {
              LODWORD(v37.__sig) = 0;
              if (waitpid(v27, &v37, 0) < 0)
              {
                __error();
                ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): error %d waiting for jetsam child\n");
              }

              else if ((v37.__sig & 0x7F) == 0x7F)
              {
                ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): unexpected status of jetsam child: %d\n");
              }

              else if ((v37.__sig & 0x7F) != 0)
              {
                ramrod_log_msg("CHECKPOINT_SIMULATOR_NOTICE(%s): jetsam child signalled: %d\n");
              }

              else
              {
                ramrod_log_msg("CHECKPOINT_SIMULATOR_NOTICE(%s): jetsam child exited: %d\n");
              }
            }
          }

          goto LABEL_73;
        default:
          ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): unknown simulator command ignored\n", "checkpoint_simulator_action");
          v22 = 0;
          v26 = 1;
          goto LABEL_75;
      }
    }

    if (!a3)
    {
      *(a1 + 2308) = v21 - 1;
    }
  }

LABEL_17:
  checkpoint_access_yield(a1);
  v22 = 0;
LABEL_18:
  if (a3)
  {
    return v11;
  }

  else
  {
    return v22;
  }
}

uint64_t checkpoint_closure_context_handle_simulator_match_name(uint64_t *a1)
{
  if (!a1)
  {
    ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): closure context is NULL\n");
    return 0;
  }

  if (!checkpoint_chassis_context)
  {
    ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): %s called too early, checkpoint_chassis_context == NULL\n");
    return 0;
  }

  v1 = *a1;
  v2 = checkpoint_chassis_context;

  return checkpoint_simulator_action_match(v2, v1);
}

uint64_t checkpoint_simulator_action_match(uint64_t a1, uint64_t a2)
{
  checkpoint_access_obtain(a1);
  checkpoint_simulator_configure(a1);
  if (*(a1 + 2300))
  {
    Count = CFArrayGetCount(*(a1 + 2312));
    v5 = CFStringCreateWithCString(kCFAllocatorDefault, *(a2 + 8), 0x8000100u);
    if (Count < 1)
    {
LABEL_6:
      v8 = 0;
    }

    else
    {
      v6 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 2312), v6);
        if (CFStringCompare(v5, ValueAtIndex, 0) == kCFCompareEqualTo)
        {
          break;
        }

        if (Count == ++v6)
        {
          goto LABEL_6;
        }
      }

      v8 = 1;
    }

    checkpoint_access_yield(a1);
    if (v5)
    {
      CFRelease(v5);
    }
  }

  else
  {
    checkpoint_access_yield(a1);
    return 0;
  }

  return v8;
}

char *checkpoint_append_and_free_key_v(char *a1, const char *a2, const char *a3, int *a4)
{
  v11 = 0;
  v12 = 0;
  asprintf(&v12, "%s:%s", a2, a3);
  v6 = v12;
  if (!v12)
  {
    return a1;
  }

  if (!a1)
  {
    return v12;
  }

  v7 = strlen(a1);
  v8 = strlen(v12);
  v9 = 1;
  if (*a4 > 0)
  {
    v9 = 2;
  }

  if (v8 + v7 + v9 >= 0x81)
  {
    v11 = a1;
LABEL_13:
    free(v6);
    return v11;
  }

  if (*a4 <= 0)
  {
    asprintf(&v11, "%s%s");
  }

  else
  {
    asprintf(&v11, "%s;%s");
  }

  ++*a4;
  free(a1);
  v6 = v12;
  if (v12)
  {
    goto LABEL_13;
  }

  return v11;
}

char *checkpoint_append_and_free(char *a1, const char *a2, ...)
{
  va_start(va, a2);
  v4 = 0;
  v5[0] = 0;
  va_copy(&v5[1], va);
  vasprintf(v5, a2, va);
  if (!v5[0])
  {
    return a1;
  }

  if (!a1)
  {
    return v5[0];
  }

  asprintf(&v4, "%s%s", a1, v5[0]);
  if (v4)
  {
    free(a1);
  }

  else
  {
    v4 = a1;
  }

  if (v5[0])
  {
    free(v5[0]);
    v5[0] = 0;
  }

  return v4;
}

char *checkpoint_append_and_free_id_v(char *a1, int a2, const char *a3, int *a4)
{
  v8 = 0;
  asprintf(&v8, "0x%08X", a2);
  if (v8)
  {
    a1 = checkpoint_append_and_free_key_v(a1, v8, a3, a4);
    if (v8)
    {
      free(v8);
    }
  }

  return a1;
}

char *checkpoint_append_and_free_try_v(char *a1, int a2, const char *a3, int *a4)
{
  v8 = 0;
  asprintf(&v8, "%d", a2);
  if (v8)
  {
    a1 = checkpoint_append_and_free_key_v(a1, v8, a3, a4);
    if (v8)
    {
      free(v8);
    }
  }

  return a1;
}

void checkpoint_outcome_init(uint64_t a1, int a2)
{
  if (*a1 == 1)
  {
    if (a2)
    {
      if (*(a1 + 104))
      {
        v3 = 17;
        goto LABEL_14;
      }

      v4 = *(a1 + 101) == 0;
      v3 = 5;
    }

    else
    {
      v4 = *(a1 + 88) == 2;
      v3 = 1;
    }
  }

  else if (a2)
  {
    if (*(a1 + 104))
    {
      v3 = 19;
      goto LABEL_14;
    }

    v4 = *(a1 + 101) == 0;
    v3 = 7;
  }

  else
  {
    v4 = *(a1 + 88) == 2;
    v3 = 3;
  }

  if (!v4)
  {
    ++v3;
  }

LABEL_14:
  *(a1 + 96) = v3;
  checkpoint_nvram_store_string(a1, 5u, checkpoint_outcome_names[v3]);

  checkpoint_log_progress(a1, 1);
}

void checkpoint_nvram_collect_var(int *a1, unsigned int a2, unsigned int a3, const __CFString **a4)
{
  cf = 0;
  bzero(buffer, 0x400uLL);
  bzero(v18, 0x400uLL);
  if (a3 < 0x30)
  {
    if (a1[22] == 1)
    {
      v9 = &checkpoint_nvram_map[4 * a3];
    }

    else
    {
      v9 = &checkpoint_nvram_map[4 * a3 + 1];
    }

    CFStringGetCString(*v9, buffer, 1024, 0x8000100u);
    v10 = ramrod_copy_NVRAM_variable();
    if (!v10)
    {
      return;
    }

    v8 = v10;
    v11 = CFGetTypeID(v10);
    if (v11 == CFStringGetTypeID())
    {
      CFStringGetCString(v8, v18, 1024, 0x8000100u);
      *a4 = v8;
      v8 = 0;
      goto LABEL_22;
    }

    if (v11 == CFNumberGetTypeID())
    {
      LODWORD(valuePtr) = 0;
      if (!CFNumberGetValue(v8, kCFNumberIntType, &valuePtr))
      {
        v13 = "CHECKPOINT_INTERNAL_ERROR(%s): number that is not an int %s\n";
        goto LABEL_29;
      }

      v12 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%d", valuePtr);
      if (!v12)
      {
        v13 = "CHECKPOINT_INTERNAL_ERROR(%s): failed to get valid number for %s\n";
LABEL_29:
        ramrod_log_msg(v13, "checkpoint_nvram_collect_var", buffer);
        goto LABEL_3;
      }
    }

    else
    {
      if (v11 != CFDataGetTypeID())
      {
        ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): unsupported nvram variable type for %s\n");
        goto LABEL_3;
      }

      v12 = CFStringCreateFromExternalRepresentation(kCFAllocatorDefault, v8, 0x8000100u);
      if (!v12)
      {
        ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): failed to get string from data %s\n");
        goto LABEL_3;
      }
    }

    v14 = v12;
    CFStringGetCString(v12, v18, 1024, 0x8000100u);
    *a4 = v14;
LABEL_22:
    valuePtr = 0;
    if (a2 > 2)
    {
      v15 = "Unknown";
    }

    else
    {
      v15 = checkpoint_nvram_collection_name[a2];
    }

    asprintf(&valuePtr, "%s NVRAM variable: %s=%s", v15, buffer, v18);
    if (valuePtr)
    {
      checkpoint_history_add(a1, 2, 1, 0, 257, valuePtr, 0, 0, 0);
      free(valuePtr);
    }

    goto LABEL_3;
  }

  ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): invalid variable id=%u\n");
  v8 = 0;
LABEL_3:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v8)
  {
    CFRelease(v8);
  }
}

uint64_t checkpoint_nvram_adjust_id(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 104))
  {
    if (a2 > 0x2F)
    {
      ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): invalid variable ID=%d\n", "checkpoint_nvram_adjust_id", a2);
      return 0;
    }

    else
    {
      return LODWORD(checkpoint_nvram_map[4 * a2 + 2]);
    }
  }

  return a2;
}

uint64_t checkpoint_nvram_check_collection(int *a1, uint64_t a2, unsigned int *a3)
{
  memset(v23, 0, sizeof(v23));
  v4 = *a3;
  v5 = 1;
  v6 = 0;
  if (*a3)
  {
    v7 = 0;
    v20 = a2;
    v8 = a2 + 8;
    v9 = a3 + 2;
    do
    {
      *(v23 + v4) = 1;
      if (*(v8 + 8 * v4))
      {
        if (*(v9 - 3))
        {
          v6 = 1;
        }

        if (*(v9 - 2))
        {
          v7 = 1;
        }

        if (*(v9 - 1))
        {
          v10 = v4 <= 0x2F && (LODWORD(checkpoint_nvram_map[4 * v4 + 3]) - 2) < 3;
          checkpoint_nvram_delete_var(a1, v4, v10, 1);
        }
      }

      else if (*(v9 - 4))
      {
        bzero(buffer, 0x400uLL);
        if (v4 >= 0x30)
        {
          ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): invalid variable ID=%d\n", "checkpoint_get_nvram_name", v4);
          v4 = 0;
        }

        if (a1[22] == 1)
        {
          v11 = &checkpoint_nvram_map[4 * v4];
        }

        else
        {
          v11 = &checkpoint_nvram_map[4 * v4 + 1];
        }

        CFStringGetCString(*v11, buffer, 1024, 0x8000100u);
        checkpoint_nvram_store_anomaly(a1, v12, "[check_collection]%s(does_not_exist)", buffer);
      }

      v13 = *v9;
      v9 += 2;
      v4 = v13;
    }

    while (v13);
    v5 = v7 == 0;
    a2 = v20;
  }

  v14 = 0;
  v15 = a2 + 16;
  v16 = off_10004D7E0;
  do
  {
    if (!*(v23 + v14 + 1) && *(v15 + 8 * v14))
    {
      bzero(buffer, 0x400uLL);
      bzero(v21, 0x400uLL);
      if (a1[22] == 1)
      {
        v17 = v16;
      }

      else
      {
        v17 = (v16 + 1);
      }

      CFStringGetCString(*v17, buffer, 1024, 0x8000100u);
      checkpoint_get_nvram_value_string(*(v15 + 8 * v14), v21);
      checkpoint_nvram_store_anomaly(a1, v18, "[check_collection]%s=%s(exists_when_not_expected)", buffer, v21);
      checkpoint_nvram_delete_var(a1, v14 + 1, 0, 1);
    }

    ++v14;
    v16 += 4;
  }

  while (v14 != 47);
  if (!v5)
  {
    checkpoint_history_add(a1, 2, 1, 0, 262, "Old restore failure indication(s)", 0, 0, 0);
  }

  return v6;
}

void checkpoint_nvram_delete_var_if_matches(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3 && CFStringCompare(v3, @"upgrade", 0) == kCFCompareEqualTo)
  {

    checkpoint_nvram_delete_var(a1, 2u, 1, 0);
  }
}

void checkpoint_reboot_retry_chassis_aware(int *a1, const __CFString *a2)
{
  if (*(a1 + 100))
  {
    *(a1 + 104) = 1;
    *(a1 + 101) = 1;

    ramrod_log_msg("AP nonce will not be touched\n", a2);
  }

  else
  {
    bzero(v5, 0x400uLL);
    checkpoint_get_nvram_value_string(a2, v5);
    checkpoint_nvram_store_anomaly(a1, v4, "[reboot_retry_chassis]outcome=%s(pre_existing_reboot_retry_disabled)", v5);
  }
}

void checkpoint_nvram_delete_var_raw(const __CFString *a1)
{
  bzero(buffer, 0x400uLL);
  CFStringGetCString(a1, buffer, 1024, 0x8000100u);
  ramrod_delete_NVRAM_variable();
}

void checkpoint_log_progress(uint64_t a1, int a2)
{
  v7 = 0;
  v3 = *(a1 + 92);
  if (v3 > 0x21)
  {
    v4 = "unknown";
  }

  else
  {
    v4 = checkpoint_outcome_names[v3];
  }

  v5 = *(a1 + 96);
  if (v5 > 0x21)
  {
    v6 = "unknown";
  }

  else
  {
    v6 = checkpoint_outcome_names[v5];
  }

  asprintf(&v7, "%s (%s) -> (%s)", checkpoint_progress_names[a2], v4, v6);
  if (v7)
  {
    checkpoint_history_add(a1, 29, 1, 0, 260, v7, 0, 0, 0);
    if (v7)
    {
      free(v7);
    }
  }
}

uint64_t checkpoint_nvram_alloc_encode(uint64_t a1, uint64_t a2)
{
  v3 = checkpoint_nvram_adjust_id(a1, a2);
  if (v3 > 0x2F)
  {
    v4 = 0;
  }

  else
  {
    v4 = HIDWORD(checkpoint_nvram_map[4 * v3 + 2]);
  }

  v5 = checkpoint_nvram_encoder[v4];
  v6 = *(a1 + 16 * v3 + 1520);

  return (v5)(a1, v6);
}

void checkpoint_nvram_store_by_id(uint64_t result, unsigned int a2, int a3, const char *a4)
{
  if (*(result + 104))
  {
    if (a2 > 0x2F)
    {
      ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): invalid variable ID=%d\n", "checkpoint_nvram_adjust_id", a2);
      v7 = 0;
      v8 = result + 1512;
      goto LABEL_7;
    }

    a2 = checkpoint_nvram_map[4 * a2 + 2];
  }

  if (a2 > 0x2F)
  {
    goto LABEL_18;
  }

  v7 = a2;
  v8 = result + 16 * a2 + 1512;
LABEL_7:
  if ((0x20420400uLL >> v7))
  {
    v9 = *(v8 + 8);
    if (v9)
    {
      goto LABEL_21;
    }
  }

  if ((0x1001100uLL >> v7))
  {
    v10 = *(v8 + 8);
    if (v10)
    {
      v11 = 0;
      v9 = v10 - 16;
      do
      {
        v13 = *(v9 + 16);
        v9 += 16;
        v12 = v13;
        if (v13)
        {
          v14 = v11 >= 7;
        }

        else
        {
          v14 = 1;
        }

        ++v11;
      }

      while (!v14);
      if (!v12)
      {
LABEL_21:
        *v9 = a3;
        checkpoint_nvram_store_set_string(result + 1480, (v9 + 8), a4);
        *(v8 + 4) = 1;
        return;
      }
    }
  }

LABEL_18:
  v15 = *(result + 1500);
  if (!v15)
  {
    ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): {%s} tracking information lost on store [%s]\n", "checkpoint_nvram_store_lost", "checkpoint_nvram_store_by_id", "dest_store == NULL");
    v15 = *(result + 1500);
  }

  *(result + 1500) = v15 + 1;
}

void checkpoint_nvram_store_long(uint64_t result, unsigned int a2, uint64_t a3)
{
  if (*(result + 104))
  {
    if (a2 > 0x2F)
    {
      ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): invalid variable ID=%d\n", "checkpoint_nvram_adjust_id", a2);
      v5 = 0;
      v6 = result + 1512;
      goto LABEL_7;
    }

    a2 = checkpoint_nvram_map[4 * a2 + 2];
  }

  if (a2 > 0x2F)
  {
    goto LABEL_10;
  }

  v5 = a2;
  v6 = result + 16 * a2 + 1512;
LABEL_7:
  if ((0x3C03C0000uLL >> v5))
  {
    v7 = *(v6 + 8);
    if (v7)
    {
      *v7 = a3;
      *(v6 + 4) = 1;
      return;
    }
  }

LABEL_10:
  v8 = *(result + 1500);
  if (!v8)
  {
    ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): {%s} tracking information lost on store [%s]\n", "checkpoint_nvram_store_lost", "checkpoint_nvram_store_long", "wrong type or internalStore.longVal == NULL");
    v8 = *(result + 1500);
  }

  *(result + 1500) = v8 + 1;
}

void checkpoint_nvram_store_by_id_try_int(uint64_t result, unsigned int a2, int a3, int a4, int a5)
{
  if (*(result + 104))
  {
    if (a2 > 0x2F)
    {
      ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): invalid variable ID=%d\n", "checkpoint_nvram_adjust_id", a2);
      v9 = 0;
      v10 = result + 1512;
      goto LABEL_7;
    }

    a2 = checkpoint_nvram_map[4 * a2 + 2];
  }

  if (a2 > 0x2F)
  {
    goto LABEL_8;
  }

  v9 = a2;
  v10 = result + 16 * a2 + 1512;
LABEL_7:
  if (((0xA00A000uLL >> v9) & 1) != 0 && a4 <= 7)
  {
    v12 = *(v10 + 8);
    if (v12)
    {
      v13 = 0;
      v14 = 0;
      v15 = *(v10 + 8);
      do
      {
        v17 = *v15;
        v15 += 11;
        v16 = v17;
        if (v17)
        {
          v18 = v14;
        }

        else
        {
          v18 = v12;
        }

        v19 = v16 == a3;
        if (v16 == a3)
        {
          v20 = v12;
        }

        else
        {
          v20 = 0;
        }

        if (!v19)
        {
          v14 = v18;
        }

        if (v20)
        {
          v21 = 1;
        }

        else
        {
          v21 = v13 >= 7;
        }

        ++v13;
        v12 = v15;
      }

      while (!v21);
      if (v20)
      {
        v14 = v20;
      }

      if (v14)
      {
        *v14 = a3;
        v14[a4 + 1] = a5;
        *(v14 + a4 + 36) = 1;
        *(v10 + 4) = 1;
        return;
      }
    }
  }

LABEL_8:
  v11 = *(result + 1500);
  if (!v11)
  {
    ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): {%s} tracking information lost on store [%s]\n", "checkpoint_nvram_store_lost", "checkpoint_nvram_store_by_id_try_int", "dest_store == NULL");
    v11 = *(result + 1500);
  }

  *(result + 1500) = v11 + 1;
}

void checkpoint_nvram_store_by_id_try(uint64_t result, unsigned int a2, int a3, int a4, const char *a5)
{
  if (*(result + 104))
  {
    if (a2 > 0x2F)
    {
      ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): invalid variable ID=%d\n", "checkpoint_nvram_adjust_id", a2);
      v9 = 0;
      v10 = result + 1512;
      goto LABEL_7;
    }

    a2 = checkpoint_nvram_map[4 * a2 + 2];
  }

  if (a2 > 0x2F)
  {
    goto LABEL_8;
  }

  v9 = a2;
  v10 = result + 16 * a2 + 1512;
LABEL_7:
  if (((0x14014000uLL >> v9) & 1) != 0 && a4 <= 7)
  {
    v12 = *(v10 + 8);
    if (v12)
    {
      v13 = 0;
      v14 = 0;
      v15 = *(v10 + 8);
      do
      {
        v17 = *v15;
        v15 += 18;
        v16 = v17;
        if (v17)
        {
          v18 = v14;
        }

        else
        {
          v18 = v12;
        }

        v19 = v16 == a3;
        if (v16 == a3)
        {
          v20 = v12;
        }

        else
        {
          v20 = 0;
        }

        if (!v19)
        {
          v14 = v18;
        }

        if (v20)
        {
          v21 = 1;
        }

        else
        {
          v21 = v13 >= 7;
        }

        ++v13;
        v12 = v15;
      }

      while (!v21);
      if (v20)
      {
        v14 = v20;
      }

      if (v14)
      {
        *v14 = a3;
        checkpoint_nvram_store_set_string(result + 1480, &v14[2 * a4 + 2], a5);
        *(v10 + 4) = 1;
        return;
      }
    }
  }

LABEL_8:
  v11 = *(result + 1500);
  if (!v11)
  {
    ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): {%s} tracking information lost on store [%s]\n", "checkpoint_nvram_store_lost", "checkpoint_nvram_store_by_id_try", "dest_store == NULL");
    v11 = *(result + 1500);
  }

  *(result + 1500) = v11 + 1;
}

void checkpoint_nvram_store_set_string(uint64_t a1, char **a2, const char *a3)
{
  if (a2)
  {
    if (*a2)
    {
      free(*a2);
      *a2 = 0;
    }

    if (a3)
    {
      asprintf(a2, "%s", a3);
    }
  }

  else
  {
    v6 = *(a1 + 20);
    if (!v6)
    {
      ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): {%s} tracking information lost on store [%s]\n", "checkpoint_nvram_store_lost", "checkpoint_nvram_store_set_string", "dest == NULL");
      v6 = *(a1 + 20);
    }

    *(a1 + 20) = v6 + 1;
  }
}

char *checkpoint_nvram_copy_encode_c_string(uint64_t a1, uint64_t a2)
{
  result = checkpoint_nvram_alloc_encode(a1, a2);
  v4 = 0;
  if (result)
  {
    v3 = result;
    bzero(buffer, 0x400uLL);
    CFStringGetCString(v3, buffer, 1024, 0x8000100u);
    asprintf(&v4, "%s", buffer);
    CFRelease(v3);
    return v4;
  }

  return result;
}

char *checkpoint_nvram_copy_string(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v6 = 0;
  if (*(a1 + 104))
  {
    if (a3 > 0x2F)
    {
      ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): invalid variable ID=%d\n", "checkpoint_nvram_adjust_id", a3);
      a3 = 0;
    }

    else
    {
      a3 = checkpoint_nvram_map[4 * a3 + 2];
    }
  }

  v4 = *(a2 + 8 * a3 + 8);
  if (!v4)
  {
    return 0;
  }

  bzero(buffer, 0x400uLL);
  CFStringGetCString(v4, buffer, 1024, 0x8000100u);
  asprintf(&v6, "%s", buffer);
  return v6;
}

const __CFDictionary *checkpoint_tolerated_get_failed_entry(const __CFDictionary *a1, uint64_t a2)
{
  v2 = a1;
  valuePtr = a2;
  if (a1)
  {
    v3 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt64Type, &valuePtr);
    if (v3)
    {
      v4 = v3;
      Value = CFDictionaryGetValue(v2, v3);
      if (Value)
      {
        v2 = *(Value + 2);
      }

      else
      {
        v2 = 0;
      }

      CFRelease(v4);
    }

    else
    {
      ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): unable to create step ID number for tolerated failure lookup\n", "checkpoint_tolerated_get_failed_entry");
      return 0;
    }
  }

  return v2;
}

char *checkpoint_cferror_append(char *a1, uint64_t a2, const __CFString *a3, _BYTE *a4)
{
  if (a3)
  {
    bzero(buffer, 0x400uLL);
    CFStringGetCString(a3, buffer, 1024, 0x8000100u);
    if (*a4)
    {
      v7 = checkpoint_append_and_free(a1, "|%s(%s)");
    }

    else
    {
      v7 = checkpoint_append_and_free(a1, "%s(%s)");
    }

    a1 = v7;
    *a4 = 1;
  }

  return a1;
}

void checkpoint_simulator_configure(uint64_t result)
{
  if (!*(result + 2298) && checkpoint_nvram_is_available(result, 0, 0))
  {
    if (!*(result + 1016))
    {
      goto LABEL_23;
    }

    bzero(__s, 0x400uLL);
    bzero(v14, 0x400uLL);
    *(result + 2300) = 0;
    *(result + 2312) = 0;
    __strlcpy_chk();
    v2 = strlen(__s);
    CFStringGetCString(*(result + 1016), &__s[v2], 1024 - v2, 0x8000100u);
    __strlcpy_chk();
    v3 = strlen(v14);
    CFStringGetCString(*(result + 1016), &v14[v3], 1024 - v3, 0x8000100u);
    v4 = 0;
    while (1)
    {
      v5 = checkpoint_history_type_name[v4];
      if (!strncasecmp(__s, v5, 0x400uLL))
      {
        *(result + 2300) = v4;
        goto LABEL_11;
      }

      if (!strncasecmp(v14, v5, 0x400uLL))
      {
        break;
      }

      if (++v4 == 34)
      {
        LODWORD(v4) = *(result + 2300);
        goto LABEL_11;
      }
    }

    *(result + 2300) = v4;
    *(result + 2299) = 1;
LABEL_11:
    if (!v4)
    {
      goto LABEL_23;
    }

    v6 = *(result + 1040);
    if (v6)
    {
      ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(kCFAllocatorDefault, v6, @",");
      *(result + 2312) = ArrayBySeparatingStrings;
      if (ArrayBySeparatingStrings)
      {
        Count = CFArrayGetCount(ArrayBySeparatingStrings);
        if (Count >= 1)
        {
          v9 = Count;
          for (i = 0; i != v9; ++i)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(*(result + 2312), i);
            CFStringGetCStringPtr(ValueAtIndex, 0x8000100u);
          }
        }

        v12 = *(result + 1024);
        if (v12)
        {
          *(result + 2304) = CFStringGetIntValue(v12);
        }

        v13 = *(result + 1032);
        if (v13)
        {
          *(result + 2308) = CFStringGetIntValue(v13);
        }

        goto LABEL_23;
      }
    }

    else
    {
      ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): simulator command without stepName\n", "checkpoint_simulator_configure");
    }

    *(result + 2300) = 0;
LABEL_23:
    *(result + 2298) = 1;
  }
}

void *checkpoint_simulator_jetsam()
{
  v5 = 0;
  v0 = &v5;
  v1 = 0x100000;
  do
  {
    v2 = malloc(v1);
    *v0 = v2;
    if (v2)
    {
      bzero(v2, v1);
      v0 = *v0;
    }

    else
    {
      v1 >>= 1;
    }
  }

  while (v1 > 4095);
  result = v5;
  if (v5)
  {
    do
    {
      v4 = *result;
      free(result);
      result = v4;
    }

    while (v4);
  }

  return result;
}

double ramrod_execute_config_alloc()
{
  v0 = calloc(1uLL, 0x30uLL);
  v0[18] = 0;
  result = NAN;
  *(v0 + 5) = 0x7FFFFFFF000000B4;
  return result;
}

void ramrod_execute_config_free(const void **a1)
{
  _Block_release(*a1);
  _Block_release(a1[1]);
  _Block_release(a1[2]);
  _Block_release(a1[3]);

  free(a1);
}

void ramrod_execute_config_set_output_block(uint64_t a1, void *aBlock)
{
  v3 = _Block_copy(aBlock);
  _Block_release(*(a1 + 16));
  *(a1 + 16) = v3;
}

uint64_t ramrod_execute_command_with_config(const char **a1, void *a2)
{
  v37 = 0;
  ramrod_log_msg("entering ramrod_execute_command_with_config: %s\n", *a1);
  *v43 = -1;
  *v44 = -1;
  ramrod_log_msg("executing %s", *a1);
  v4 = a1[1];
  if (v4)
  {
    v5 = a1 + 2;
    v6 = 1;
    do
    {
      ramrod_log_msg(" %s", v4);
      if (v6 > 8)
      {
        break;
      }

      ++v6;
      v7 = *v5++;
      v4 = v7;
    }

    while (v7);
  }

  ramrod_log_msg("\n");
  if (pipe(v44) == -1)
  {
    v13 = *a1;
    v14 = __error();
    v15 = strerror(*v14);
    ramrod_log_msg("pipe failed while preparing to execute %s: %s\n", v13, v15);
    v16 = 0;
    v17 = -1;
    goto LABEL_43;
  }

  if (pipe(v43) == -1)
  {
    v18 = *a1;
    v19 = __error();
    v20 = strerror(*v19);
    ramrod_log_msg("pipe failed while preparing to execute %s: %s\n", v18, v20);
    v11 = 0xFFFFFFFFLL;
    v12 = -1;
  }

  else
  {
    fcntl(v43[1], 73, 1);
    v39 = 0;
    posix_spawn_file_actions_init(&v39);
    posix_spawn_file_actions_adddup2(&v39, v43[0], 0);
    posix_spawn_file_actions_adddup2(&v39, v44[1], 1);
    posix_spawn_file_actions_adddup2(&v39, 2, 2);
    v38 = 0;
    posix_spawnattr_init(&v38);
    posix_spawnattr_setflags(&v38, 0x4000);
    if (*(a2 + 8))
    {
      posix_spawnattr_set_qos_clamp_np();
    }

    if (*a2)
    {
      (*(*a2 + 16))(*a2, &v39);
    }

    v8 = posix_spawn(&v37, *a1, &v39, &v38, a1, 0);
    if (v8)
    {
      v9 = *a1;
      v10 = strerror(v8);
      ramrod_log_msg("posix_spawn %s failed: %s\n", v9, v10);
      close(v44[0]);
      close(v43[1]);
      v11 = 0xFFFFFFFFLL;
      v12 = -1;
    }

    else
    {
      v11 = v43[1];
      v12 = v44[0];
      v22 = v37;
      if (v37 != -1)
      {
        v23 = realpath_DARWIN_EXTSN(*a1, 0);
        if (v23)
        {
          v24 = v23;
          bzero(v46, 0x400uLL);
          v25 = basename_r(v24, v46);
          if (v25 && ((v26 = v25, v42 = 256, _get_image_exec_options_bootargs) || !sysctlbyname("kern.bootargs", &_get_image_exec_options_bootargs, &v42, 0, 0)) && (bzero(__str, 0x400uLL), v40 = 0, v41 = 0, snprintf(__str, 0x3FFuLL, "\\bramrod_exec-\\Q%s\\E=((0[0-7]+)|(([+-])?[[:digit:]]+)|(0[xX][[:xdigit:]]+))", v26), _find_tagged_regex(&_get_image_exec_options_bootargs, v42, __str, &v41, &v40)))
          {
            ramrod_log_msg("found ramrod_execute_command option in boot-args: ramrod_exec-%s=%.*s\n", v26, v40, v41);
            v27 = strtol(v41, 0, 0);
            free(v24);
            v28 = v27 & 0x1F;
            if ((v27 & 0x1F) != 0)
            {
              v29 = (v27 >> 8);
              ramrod_log_msg("sending signal %d to process %d in %d millisecond(s)...\n", v28, v22, v29);
              usleep(1000 * v29);
              if (kill(v22, v28) == -1)
              {
                v30 = __error();
                ramrod_log_msg("could not send signal %d to process %d: error %d\n", v28, v22, *v30);
              }
            }
          }

          else
          {
            free(v24);
          }
        }

        v36 = a2[3];
        if (v36)
        {
          (*(v36 + 16))(v36, v37);
        }
      }
    }

    posix_spawnattr_destroy(&v38);
    posix_spawn_file_actions_destroy(&v39);
    close(v43[0]);
  }

  close(v44[1]);
  v16 = 0;
  v17 = -1;
  if (v12 != -1 && v11 != -1)
  {
    bzero(v46, 0x400uLL);
    v21 = a2[1];
    if (v21)
    {
      v16 = (*(v21 + 16))(v21, v11) != 0;
    }

    else
    {
      v16 = 0;
    }

    close(v11);
    v31 = read(v12, v46, 0x3FFuLL);
    if (v31 >= 1)
    {
      for (i = v31; i > 0; i = read(v12, v46, 0x3FFuLL))
      {
        v46[i] = 0;
        v33 = a2[2];
        if (v33)
        {
          (*(v33 + 16))(v33, v46);
        }
      }
    }

    ramrod_log_msg("waiting for child to exit\n");
    *__str = 0;
    if (waitpid(v37, __str, 0) == -1)
    {
      v34 = __error();
      strerror(*v34);
      ramrod_log_msg("waitpid failed for %s: %s\n");
    }

    else
    {
      ramrod_log_msg("child exited\n");
      if ((__str[0] & 0x7F) == 0x7F)
      {
        ramrod_log_msg("%s was stopped by signal %d\n");
      }

      else
      {
        if ((__str[0] & 0x7F) == 0)
        {
          ramrod_log_msg("exit status: %d\n", __str[1]);
          v17 = __str[1];
LABEL_42:
          close(v12);
          goto LABEL_43;
        }

        ramrod_log_msg("%s was terminated by signal %d\n");
      }
    }

    v17 = -1;
    goto LABEL_42;
  }

LABEL_43:
  if (v17 == 0 && v16)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return v17;
  }
}

uint64_t _ramrod_execute_command_with_input_data_output_block(const char **a1, uint64_t a2, uint64_t a3, char a4, const void *a5)
{
  v10 = calloc(1uLL, 0x30uLL);
  *(v10 + 18) = 0;
  v10[5] = 0x7FFFFFFF000000B4;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 3221225472;
  aBlock[2] = ___ramrod_execute_command_with_input_data_output_block_block_invoke;
  aBlock[3] = &__block_descriptor_33_e10_i16__0__v8l;
  v18 = a4;
  v11 = _Block_copy(aBlock);
  _Block_release(*v10);
  *v10 = v11;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = ___ramrod_execute_command_with_input_data_output_block_block_invoke_2;
  v16[3] = &__block_descriptor_48_e8_i12__0i8l;
  v16[4] = a2;
  v16[5] = a3;
  v12 = _Block_copy(v16);
  _Block_release(v10[1]);
  v10[1] = v12;
  v13 = _Block_copy(a5);
  _Block_release(v10[2]);
  v10[2] = v13;
  v14 = ramrod_execute_command_with_config(a1, v10);
  ramrod_execute_config_free(v10);
  return v14;
}

uint64_t ramrod_execute_command(const char **a1)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = __ramrod_execute_command_with_callback_block_invoke;
  v2[3] = &__block_descriptor_48_e13_v24__0r_v8Q16l;
  v2[4] = log_output_buf;
  v2[5] = 0;
  return _ramrod_execute_command_with_input_data_output_block(a1, 0, 0, 1, v2);
}

uint64_t wait_for_device(char *a1, char *a2, size_t a3, CFErrorRef *a4)
{
  ramrod_log_msg("entering %s: '%s'\n", "wait_for_device", a1);
  if (!a1)
  {
    wait_for_device_cold_4(a4, v8, v9, v10, v11, v12, v13, v14);
    return 0;
  }

  if (!a2)
  {
    wait_for_device_cold_3(a4, v8, v9, v10, v11, v12, v13, v14);
    return 0;
  }

  embedded_storage_service_query_dict = create_embedded_storage_service_query_dict(a1);
  if (!embedded_storage_service_query_dict)
  {
    wait_for_device_cold_2(a4, v16, v17, v18, v19, v20, v21, v22);
    return 0;
  }

  v23 = wait_for_io_service_matching_dict(embedded_storage_service_query_dict, 0x1Eu);
  if (!v23)
  {
    wait_for_device_cold_1(a4, a1, v24, v25, v26, v27, v28, v29);
    return 0;
  }

  v30 = v23;
  v68 = a4;
  IOObjectRetain(v23);
  v31 = v30;
  do
  {
    iterator.st_dev = 0;
    if (IORegistryEntryGetChildIterator(v31, "IOService", &iterator))
    {
      ramrod_log_msg("Could not create child iterator\n");
LABEL_30:
      st_dev = v31;
LABEL_35:
      IOObjectRelease(st_dev);
      ramrod_create_error_cf(v68, @"RamrodErrorDomain", 4, 0, @"%s: failed to lookup whole node for IO service for %s", v56, v57, v58, "wait_for_device");
      v59 = 0;
      goto LABEL_36;
    }

    v32 = IOIteratorNext(iterator.st_dev);
    v33 = 0;
    if (!v32)
    {
      st_dev = iterator.st_dev;
LABEL_29:
      IOObjectRelease(st_dev);
      ramrod_log_msg("Found %d child nodes (expected 1)\n");
      goto LABEL_30;
    }

    st_dev = 0;
    do
    {
      if (st_dev)
      {
        IOObjectRelease(v32);
      }

      else
      {
        st_dev = v32;
      }

      v32 = IOIteratorNext(iterator.st_dev);
      ++v33;
    }

    while (v32);
    IOObjectRelease(iterator.st_dev);
    if (v33 != 1)
    {
      goto LABEL_29;
    }

    IOObjectRelease(v31);
    v31 = st_dev;
  }

  while (!IOObjectConformsTo(st_dev, "IOMedia"));
  CFProperty = IORegistryEntryCreateCFProperty(st_dev, @"Whole", kCFAllocatorDefault, 0);
  v36 = CFProperty;
  if (!CFProperty)
  {
    ramrod_log_msg("Did not find Whole property on IOMedia class\n");
LABEL_34:
    CFRelease(v36);
    goto LABEL_35;
  }

  v37 = CFGetTypeID(CFProperty);
  if (v37 != CFBooleanGetTypeID())
  {
    ramrod_log_msg("Expected Whole to be BOOLean\n");
    goto LABEL_34;
  }

  if (!CFBooleanGetValue(v36))
  {
    ramrod_log_msg("Expected Whole=true\n");
    goto LABEL_34;
  }

  CFRelease(v36);
  v38 = IORegistryEntryCreateCFProperty(st_dev, @"BSD Name", kCFAllocatorDefault, 0);
  if (v38)
  {
    v42 = v38;
    v43 = CFGetTypeID(v38);
    if (v43 == CFStringGetTypeID())
    {
      strlcpy(a2, "/dev/", a3);
      v47 = strlen(a2);
      if (CFStringGetCString(v42, &a2[v47], a3 - v47, 0x8000100u))
      {
        ramrod_log_msg("Using device path %s for %s\n", a2, a1);
        v51 = -10;
        while (1)
        {
          memset(&iterator, 0, sizeof(iterator));
          if (!stat(a2, &iterator))
          {
            v59 = 1;
            goto LABEL_45;
          }

          if (*__error() != 2)
          {
            break;
          }

          sleep(3u);
          if (__CFADD__(v51++, 1))
          {
            goto LABEL_43;
          }
        }

        v61 = __error();
        v62 = strerror(*v61);
        ramrod_log_msg("stat error while waiting for device '%s': %s\n", a2, v62);
        v63 = *__error();
        v64 = __error();
        strerror(*v64);
        ramrod_create_error_cf(v68, kCFErrorDomainPOSIX, v63, 0, @"%s: stat error while waiting for device '%s': %s", v65, v66, v67, "wait_for_device");
LABEL_43:
        ramrod_create_error_cf(v68, @"RamrodErrorDomain", 4, 0, @"%s: timeout waiting for %s", v52, v53, v54, "wait_for_device");
      }

      else
      {
        ramrod_create_error_cf(v68, @"RamrodErrorDomain", 5, 0, @"%s: failed to create C string from BSD name", v48, v49, v50, "wait_for_device");
      }
    }

    else
    {
      ramrod_create_error_cf(v68, @"RamrodErrorDomain", 3, 0, @"%s: returnbed BSD device name for service %s is wrong type", v44, v45, v46, "wait_for_device");
    }

    v59 = 0;
LABEL_45:
    CFRelease(v42);
  }

  else
  {
    ramrod_create_error_cf(v68, @"RamrodErrorDomain", 4, 0, @"%s: no BSD device name for service %s", v39, v40, v41, "wait_for_device");
    v59 = 0;
  }

  IOObjectRelease(st_dev);
LABEL_36:
  IOObjectRelease(v30);
  return v59;
}

uint64_t ramrod_probe_media_internal(uint64_t a1, CFTypeRef *a2)
{
  cf = 0;
  iterator = 0;
  ramrod_log_msg("entering %s\n", "ramrod_probe_media_internal");
  storage_device_node_path_0 = 0;
  apfs_container_device_node_path_0 = 0;
  apfs_recovery_os_container_device_node_path_0 = 0;
  system_device_node_path_0 = 0;
  data_device_node_path_0 = 0;
  user_device_node_path_0 = 0;
  update_device_node_path_0 = 0;
  baseband_data_partition_device_node_path_0 = 0;
  log_partition_device_node_path = 0;
  xart_partition_node_path = 0;
  hardware_partition_node_path = 0;
  scratch_partition_node_path = 0;
  preboot_partition_device_node_path_0 = 0;
  recovery_os_volume_device_node_path_0 = 0;
  iboot_system_container_device_node_path_0 = 0;
  recovery_preboot_partition_device_node_path = 0;
  isc_preboot_partition_device_node_path = 0;
  isc_recovery_os_volume_device_node_path = 0;
  paired_recovery_os_volume_device_node_path = 0;
  if (additional_encrypted_volume_node_paths)
  {
    CFRelease(additional_encrypted_volume_node_paths);
    additional_encrypted_volume_node_paths = 0;
  }

  if (additional_eds_volume_node_paths)
  {
    CFRelease(additional_eds_volume_node_paths);
    additional_eds_volume_node_paths = 0;
  }

  Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  if (!Mutable)
  {
    ramrod_probe_media_internal_cold_2(&cf, v4, v5, v6, v7, v8, v9, v10);
    v19 = 0;
    goto LABEL_12;
  }

  v19 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  if (!v19)
  {
    ramrod_probe_media_internal_cold_1(&cf, v12, v13, v14, v15, v16, v17, v18);
    goto LABEL_12;
  }

  if (!wait_for_device("EmbeddedDeviceTypeRoot", &storage_device_node_path_0, 0x20uLL, &cf))
  {
    ramrod_log_msg("Unable to find storage device node for service named: %s", "EmbeddedDeviceTypeRoot");
LABEL_12:
    v27 = 0;
    v22 = 0;
    goto LABEL_13;
  }

  v20 = IOBSDNameMatching(kIOMasterPortDefault, 0, byte_100060095);
  MatchingService = IOServiceGetMatchingService(kIOMasterPortDefault, v20);
  v22 = MatchingService;
  if (!MatchingService)
  {
    ramrod_log_msg("unable to find service for %s\n", byte_100060095);
LABEL_19:
    v27 = 0;
    goto LABEL_20;
  }

  IOServiceWaitQuiet(MatchingService, 0);
  v23 = IORegistryEntryCreateIterator(v22, "IOService", 1u, &iterator);
  if (v23)
  {
    ramrod_create_error_cf(&cf, kCFErrorDomainMach, v23, 0, @"%s: unable to create child iterator", v24, v25, v26, "ramrod_probe_media_internal");
    v27 = 0;
LABEL_13:
    v28 = 0;
    goto LABEL_14;
  }

  v95 = a1;
  v31 = IOIteratorNext(iterator);
  if (v31)
  {
    v27 = v31;
    LOBYTE(v32) = 0;
    v96 = 0;
    v33 = 0;
    v83 = 0;
    v84 = 0;
    v85 = 0;
    v86 = 0;
    v87 = 0;
    v88 = 0;
    v89 = 0;
    v90 = 0;
    v91 = 0;
    v92 = 0;
    v93 = 0;
    __s2 = 0;
    do
    {
      if (!IOObjectConformsTo(v27, "IOMedia"))
      {
        if (IOObjectConformsTo(v27, "IOPartitionScheme"))
        {
          if (IOObjectConformsTo(v27, "IOGUIDPartitionScheme"))
          {
            ramrod_log_msg("device partitioning scheme is GPT\n");
            v93 = "Data";
            __s2 = "System";
            v91 = "Update";
            v92 = "User";
            v89 = "Logs";
            v90 = "Baseband Data";
            v87 = "Hardware";
            v88 = "xART";
            v86 = "Scratch";
          }

          else
          {
            if (!IOObjectConformsTo(v27, "AppleAPFSContainer"))
            {
              ramrod_create_error_cf(&cf, kCFErrorDomainMach, -536870201, 0, @"%s: unrecognized partitioning scheme", v61, v62, v63, "ramrod_probe_media_internal");
              goto LABEL_13;
            }

            ramrod_log_msg("device is APFS formatted\n");
            v93 = "Data";
            __s2 = "System";
            v91 = "Update";
            v92 = "User";
            v89 = "Logs";
            v90 = "Baseband Data";
            v87 = "Hardware";
            v88 = "xART";
            v85 = "Preboot";
            v86 = "Scratch";
            v83 = "Recovery";
            v84 = "iSCPreboot";
          }
        }

        goto LABEL_124;
      }

      properties = 0;
      memset(name, 0, sizeof(name));
      v34 = IORegistryEntryGetName(v27, name);
      if (v34)
      {
        v75 = kCFErrorDomainMach;
        v76 = v34;
        v77 = @"%s: unable to get name for media registry entry";
LABEL_169:
        ramrod_create_error_cf(&cf, v75, v76, 0, v77, v35, v36, v37, "ramrod_probe_media_internal");
        goto LABEL_170;
      }

      v38 = IORegistryEntryCreateCFProperties(v27, &properties, kCFAllocatorDefault, 0);
      if (v38)
      {
        v75 = kCFErrorDomainMach;
        v76 = v38;
        v77 = @"%s: unable to get properties for media registry entry";
        goto LABEL_169;
      }

      if (v32)
      {
        v32 = 1;
      }

      else
      {
        *buffer = 0u;
        v101 = 0u;
        Value = CFDictionaryGetValue(properties, @"BSD Name");
        v32 = Value && (v40 = Value, v41 = CFGetTypeID(Value), v41 == CFStringGetTypeID()) && CFStringGetCString(v40, buffer, 32, 0x600u) && (v42 = strlen(byte_100060095), !strncmp(buffer, byte_100060095, v42)) && strcmp("s1s1", &buffer[v42]) == 0;
      }

      v43 = CFDictionaryGetValue(properties, @"Content Hint");
      if (!v43 || (v44 = v43, !CFEqual(v43, @"7C3457EF-0000-11AA-AA11-00306543ECAC")) && !CFEqual(v44, @"52637672-7900-11AA-AA11-00306543ECAC") && !CFEqual(v44, @"69646961-6700-11AA-AA11-00306543ECAC") && !CFEqual(v44, @"EF57347C-0000-11AA-AA11-00306543ECAC"))
      {
        if (__s2 && (!strcmp(name, __s2) || strstr(name, "OS") || strstr(name, "System")))
        {
          if (!v32)
          {
            ramrod_log_msg("found system volume not at %ss1s1: %s\n");
          }

          goto LABEL_84;
        }

        if (v93 && !strcmp(name, v93))
        {
          v50 = &data_device_node_path_0;
          goto LABEL_85;
        }

        if (v92 && !strcmp(name, v92))
        {
          v50 = &user_device_node_path_0;
          goto LABEL_85;
        }

        if (v91 && !strcmp(name, v91))
        {
          v50 = &update_device_node_path_0;
          goto LABEL_85;
        }

        if (v90 && !strcmp(name, v90))
        {
          v50 = &baseband_data_partition_device_node_path_0;
          goto LABEL_85;
        }

        if (v89 && !strcmp(name, v89))
        {
          v50 = &log_partition_device_node_path;
          goto LABEL_85;
        }

        if (v88 && !strcmp(name, v88))
        {
          if (!xart_partition_node_path || !ramrod_should_have_xart_partition())
          {
            v51 = 0;
            theArray = &xart_partition_node_path;
            goto LABEL_87;
          }

          v79 = kCFErrorDomainMach;
LABEL_178:
          v80 = @"%s: encountered second '%s' partition; original was '%s'";
LABEL_179:
          ramrod_create_error_cf(&cf, v79, -536870911, 0, v80, v47, v48, v49, "ramrod_probe_media_internal");
LABEL_173:
          v78 = 0;
LABEL_174:
          v28 = 0;
          if (v95 >= 1 && v78)
          {
            sleep(1u);
            v28 = ramrod_probe_media_internal(v95 - 1, 0);
          }

LABEL_14:
          v29 = cf;
          if (a2 && !v28 && cf)
          {
            v28 = 0;
            *a2 = CFRetain(cf);
            goto LABEL_21;
          }

          goto LABEL_22;
        }

        if (v87 && !strcmp(name, v87))
        {
          v50 = &hardware_partition_node_path;
          goto LABEL_85;
        }

        if (v86 && !strcmp(name, v86))
        {
          v50 = &scratch_partition_node_path;
          goto LABEL_85;
        }

        if (v85 && !strcmp(name, v85))
        {
          if (v96 != 1)
          {
            if (v96 == 2)
            {
              ramrod_log_msg("Captured preboot partition on main OS container %d\n", 2);
              v50 = &preboot_partition_device_node_path_0;
            }

            else
            {
              if (v96 != 3)
              {
                goto LABEL_155;
              }

              ramrod_log_msg("Captured preboot partition on recovery container %d\n", 3);
              v50 = &recovery_preboot_partition_device_node_path;
            }

            goto LABEL_85;
          }

          v71 = 1;
        }

        else
        {
          if (!v84 || strcmp(name, v84))
          {
            if (v83 && !strcmp(name, v83))
            {
              v50 = &recovery_os_volume_device_node_path_0;
            }

            else
            {
              if (!v32 || system_device_node_path_0)
              {
                ramrod_log_msg("unexpected partition '%s' - skipping\n", name);
LABEL_155:
                theArray = 0;
                v51 = 1;
                goto LABEL_87;
              }

              ramrod_log_msg("looking for a system volume, and found unknown volume '%s'. using it as the system volume.\n");
LABEL_84:
              LOBYTE(v32) = 1;
              v50 = &system_device_node_path_0;
            }

LABEL_85:
            if (*v50)
            {
              v79 = kCFErrorDomainMach;
              goto LABEL_178;
            }

            theArray = v50;
            v51 = 0;
LABEL_87:
            while (1)
            {
              v52 = CFDictionaryGetValue(properties, @"Leaf");
              if (v52)
              {
                if (CFBooleanGetValue(v52) == 1)
                {
                  break;
                }
              }

              IOObjectRelease(v27);
              CFRelease(properties);
              v53 = IOIteratorNext(iterator);
              if (!v53)
              {
LABEL_172:
                ramrod_create_error_cf(&cf, kCFErrorDomainMach, -536870911, 0, @"%s: ran out of registry entries without finding a leaf media object", v54, v55, v56, "ramrod_probe_media_internal");
                v27 = 0;
                goto LABEL_173;
              }

              v27 = v53;
              while (!IOObjectConformsTo(v27, "IOMedia"))
              {
                IOObjectRelease(v27);
                v27 = IOIteratorNext(iterator);
                if (!v27)
                {
                  goto LABEL_172;
                }
              }

              v57 = IORegistryEntryCreateCFProperties(v27, &properties, kCFAllocatorDefault, 0);
              if (v57)
              {
                ramrod_create_error_cf(&cf, kCFErrorDomainMach, v57, 0, @"%s: unable to get properties for media registry entry", v58, v59, v60, "ramrod_probe_media_internal");
                goto LABEL_173;
              }
            }

            if (v51)
            {
              if (CFDictionaryGetValue(properties, @"Encrypted") == kCFBooleanTrue)
              {
                v64 = CFDictionaryGetValue(properties, @"BSD Name");
                if (v64)
                {
                  v65 = v64;
                  *buffer = 0;
                  v66 = CFDictionaryGetValue(properties, @"RoleValue");
                  if (v66)
                  {
                    CFNumberGetValue(v66, kCFNumberSInt16Type, buffer);
                  }

                  if (*buffer == 576)
                  {
                    v67 = @"Found additional enterprise volume at %@\n";
                  }

                  else
                  {
                    v67 = @"Found additional encrypted volume at %@\n";
                  }

                  if (*buffer == 576)
                  {
                    v68 = Mutable;
                  }

                  else
                  {
                    v68 = v19;
                  }

                  theArraya = v68;
                  ramrod_log_msg_cf(v67, v65);
                  v69 = CFStringCreateWithFormat(0, 0, @"%s%@", "/dev/", v65);
                  CFArrayAppendValue(theArraya, v69);
                  CFRelease(v69);
                }
              }
            }

            else
            {
              v70 = CFDictionaryGetValue(properties, @"BSD Name");
              if (!v70)
              {
                v79 = kCFErrorDomainMach;
                v80 = @"%s: leaf media object with no bsd name";
                goto LABEL_179;
              }

              *buffer = 0u;
              v101 = 0u;
              CFStringGetCString(v70, buffer, 32, 0x8000100u);
              snprintf(theArray, 0x20uLL, "%s%s", "/dev/", buffer);
            }

            CFRelease(properties);
LABEL_124:
            IOObjectRelease(v27);
            goto LABEL_73;
          }

          v71 = v96;
        }

        ramrod_log_msg("Captured preboot partition on ISC %d\n", v71);
        v50 = &isc_preboot_partition_device_node_path;
        goto LABEL_85;
      }

      v45 = CFDictionaryGetValue(properties, @"BSD Name");
      if (!v45)
      {
        ramrod_log_msg("APFS Container object with no bsd name");
        goto LABEL_173;
      }

      *buffer = 0u;
      v101 = 0u;
      CFStringGetCString(v45, buffer, 32, 0x8000100u);
      if (CFEqual(v44, @"7C3457EF-0000-11AA-AA11-00306543ECAC") == 1)
      {
        if (strstr(name, "RecoveryOSContainer"))
        {
          v96 = 3;
          v33 = &apfs_recovery_os_container_device_node_path_0;
        }

        else
        {
          if (*name ^ 0x737953746F6F4269 | *&name[8] ^ 0x61746E6F436D6574 | *&name[13] ^ 0x72656E6961746ELL)
          {
            v33 = &apfs_container_device_node_path_0;
          }

          else
          {
            v33 = &iboot_system_container_device_node_path_0;
          }

          if (*name ^ 0x737953746F6F4269 | *&name[8] ^ 0x61746E6F436D6574 | *&name[13] ^ 0x72656E6961746ELL)
          {
            v46 = 2;
          }

          else
          {
            v46 = 1;
          }

          v96 = v46;
        }

        snprintf(v33, 0x20uLL, "%s%s", "/dev/", buffer);
        ramrod_log_msg("APFS Container '%s' %s\n", name, v33);
LABEL_70:
        if (!*v33)
        {
          snprintf(v33, 0x20uLL, "%s%s", "/dev/", buffer);
          ramrod_log_msg("APFS Container '%s' %s\n", name, v33);
        }

        goto LABEL_72;
      }

      if (CFEqual(v44, @"EF57347C-0000-11AA-AA11-00306543ECAC") == 1)
      {
        if (v33 && *v33)
        {
          ramrod_log_msg("Found synthesized APFS container. Using %s instead of %s\n", buffer, v33);
          snprintf(v33, 0x20uLL, "%s%s", "/dev/", buffer);
          v33 = 0;
          goto LABEL_72;
        }

        ramrod_log_msg("found synthesized container without original device node\n");
      }

      if (v33)
      {
        goto LABEL_70;
      }

LABEL_72:
      IOObjectRelease(v27);
      CFRelease(properties);
LABEL_73:
      v27 = IOIteratorNext(iterator);
    }

    while (v27);
  }

  if (!IOIteratorIsValid(iterator))
  {
    ramrod_create_error_cf(&cf, kCFErrorDomainMach, -536870165, 0, @"%s: media iterator invalidated", v72, v73, v74, "ramrod_probe_media_internal");
    v27 = 0;
LABEL_170:
    v78 = 1;
    goto LABEL_174;
  }

  if (CFArrayGetCount(v19) >= 1)
  {
    additional_encrypted_volume_node_paths = CFRetain(v19);
  }

  if (CFArrayGetCount(Mutable) < 1)
  {
    goto LABEL_19;
  }

  v27 = 0;
  additional_eds_volume_node_paths = CFRetain(Mutable);
LABEL_20:
  v28 = 1;
LABEL_21:
  v29 = cf;
LABEL_22:
  if (v29)
  {
    CFRelease(v29);
  }

  if (v27)
  {
    IOObjectRelease(v27);
  }

  if (iterator)
  {
    IOObjectRelease(iterator);
  }

  if (v22)
  {
    IOObjectRelease(v22);
  }

  if (v19)
  {
    CFRelease(v19);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v28;
}

uint64_t ramrod_get_gestalt_BOOLean_answer(uint64_t a1)
{
  v1 = MGCopyAnswer();
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = CFGetTypeID(v1);
  if (v3 == CFBooleanGetTypeID())
  {
    Value = CFBooleanGetValue(v2);
  }

  else
  {
    Value = 0;
  }

  CFRelease(v2);
  return Value;
}

uint64_t ramrod_should_have_xart_partition()
{
  v0 = IORegistryEntryFromPath(kIOMasterPortDefault, "IODeviceTree:/arm-io/sep/iop-sep-nub/xART");
  if (v0)
  {
    ramrod_log_msg("IODeviceTree:/arm-io/sep/iop-sep-nub/xART found\n");
    IOObjectRelease(v0);
    v0 = 1;
  }

  v1 = IORegistryEntryFromPath(kIOMasterPortDefault, "IODeviceTree:/chosen/has-xart");
  if (v1)
  {
    v2 = v1;
    ramrod_log_msg("IODeviceTree:/chosen/has-xart found\n");
    IOObjectRelease(v2);
    v0 = 1;
  }

  v3 = IORegistryEntryFromPath(kIOMasterPortDefault, "IODeviceTree:/defaults");
  if (v3)
  {
    v4 = v3;
    CFProperty = IORegistryEntryCreateCFProperty(v3, @"has-xart", kCFAllocatorDefault, 0);
    if (CFProperty)
    {
      v6 = CFProperty;
      v7 = CFGetTypeID(CFProperty);
      if (v7 == CFNumberGetTypeID())
      {
        valuePtr = 0;
        CFNumberGetValue(v6, kCFNumberSInt32Type, &valuePtr);
        if (valuePtr)
        {
          v8 = "IODeviceTree:/defaults/has-xart found\n";
        }

        else
        {
          v8 = "IODeviceTree:/defaults/has-xart found but is zero\n";
        }

        if (valuePtr)
        {
          v0 = 1;
        }

        else
        {
          v0 = v0;
        }

        ramrod_log_msg(v8);
      }

      else
      {
        v9 = CFGetTypeID(v6);
        if (v9 == CFDataGetTypeID())
        {
          *buffer = 0;
          if (CFDataGetLength(v6) == 4)
          {
            v13.location = 0;
            v13.length = 4;
            CFDataGetBytes(v6, v13, buffer);
            if (*buffer)
            {
              ramrod_log_msg("IODeviceTree:/defaults/has-xart found\n");
              v0 = 1;
            }

            else
            {
              ramrod_log_msg("IODeviceTree:/defaults/has-xart found but is zero\n");
            }
          }

          else
          {
            ramrod_log_msg("IODeviceTree:/defaults/has-xart found but is not int sized\n");
          }
        }
      }

      CFRelease(v6);
    }

    IOObjectRelease(v4);
  }

  else
  {
    ramrod_log_msg("Failed to read IODeviceTree:/defaults\n");
  }

  if (v0)
  {
    ramrod_log_msg("We should have an xART partition.\n");
  }

  else
  {
    ramrod_log_msg("We should not have an xART partition.\n");
  }

  return v0;
}

uint64_t ramrod_get_preboot_partition_device_node(char *a1, size_t __size)
{
  if (!preboot_partition_device_node_path_0)
  {
    return 0;
  }

  strlcpy(a1, &preboot_partition_device_node_path_0, __size);
  return 1;
}

uint64_t ramrod_change_filesystem_permissions_opt_err(const char *a1, const char *a2, int a3, CFErrorRef *a4)
{
  v15[0] = "/sbin/mount";
  v15[1] = "-u";
  v7 = "-r";
  if (!a3)
  {
    v7 = "-w";
  }

  v15[2] = v7;
  v15[3] = a1;
  v15[4] = a2;
  v15[5] = 0;
  if (a3)
  {
    v8 = "readonly";
  }

  else
  {
    v8 = "readwrite";
  }

  v9 = ramrod_execute_command(v15);
  v10 = v9;
  if (v9)
  {
    ramrod_log_msg("Failed to change permissions on %s mounted at %s to %s. Error: %d.\n", a1, a2, v8, v9);
    ramrod_create_error_cf(a4, @"RamrodErrorDomain", 7, 0, @"%s: Failed to change permissions on %s mounted at %s to %s. Error: %d.\n", v11, v12, v13, "ramrod_change_filesystem_permissions_opt_err");
  }

  else
  {
    ramrod_log_msg("Changed permissions on %s mounted at %s to %s\n", a1, a2, v8);
  }

  return v10;
}

uint64_t ramrod_mount_filesystem_no_fsck_opt_err(const char *a1, char *a2, int a3, CFErrorRef *a4)
{
  bzero(v22, 0x400uLL);
  v21 = 0u;
  v20 = 0u;
  v19 = 0u;
  v18 = 0u;
  v17 = 0u;
  v16 = 0u;
  v15 = 0u;
  v14[0] = "/sbin/mount_apfs";
  v14[1] = "-R";
  if (a3)
  {
    *&v15 = "-o";
    *(&v15 + 1) = "rdonly";
    v8 = 4;
    if (a2)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v8 = 2;
    if (a2)
    {
      goto LABEL_7;
    }
  }

  ramrod_log_msg("Creating temporary mount point to mount %s\n", a1);
  a2 = v22;
  __strlcpy_chk();
  if (!mkdtemp(v22))
  {
    v9 = __error();
    ramrod_log_msg("unable to create temporary mount directory (%d). Using %s instead\n", *v9, "/mnt5");
    a2 = v22;
    __strlcpy_chk();
  }

LABEL_7:
  v14[v8] = a1;
  v14[v8 | 1u] = a2;
  v14[v8 + 2] = 0;
  mkdir(a2, 0x1C0u);
  if (ramrod_execute_command(v14))
  {
    ramrod_log_msg("mounting %s on %s failed\n", a1, a2);
    ramrod_create_error_cf(a4, @"RamrodErrorDomain", 7, 0, @"%s: mounting %s on %s failed", v10, v11, v12, "ramrod_mount_filesystem_no_fsck_opt_err");
    ramrod_dump_mounted_filesystem_info();
    return 0xFFFFFFFFLL;
  }

  else
  {
    ramrod_log_msg("%s mounted on %s\n", a1, a2);
    return 0;
  }
}

void ramrod_dump_mounted_filesystem_info()
{
  ramrod_log_msg("%s:**********DUMPING MOUNTED FILESYSTEMS********\n", "ramrod_dump_mounted_filesystem_info");
  v3 = 0;
  v0 = getmntinfo(&v3, 2);
  ramrod_log_msg("%s: %d filesystems are mounted\n", "ramrod_dump_mounted_filesystem_info", v0);
  if (v3)
  {
    if (v0 >= 1)
    {
      v1 = v0 + 1;
      v2 = 2168 * v0 - 2080;
      do
      {
        ramrod_log_msg("%s is mounted at %s\n", &v3->f_mntonname[v2 + 936], v3 + v2);
        --v1;
        v2 -= 2168;
      }

      while (v1 > 1);
    }
  }

  else
  {
    ramrod_log_msg("Failed to get info regarding mounted filesystems\n");
  }

  ramrod_log_msg("%s: *********DONE DUMPING MOUNTED FILESYSTEMS********\n", "ramrod_dump_mounted_filesystem_info");
}

uint64_t ramrod_get_mount_path(const char *a1, char *a2, size_t a3)
{
  v11 = 0;
  v6 = getmntinfo_r_np(&v11, 2);
  if (!v6)
  {
    ramrod_log_msg("Failed to get list of all mounted file systems\n");
    goto LABEL_8;
  }

  if (v6 < 1)
  {
LABEL_8:
    v9 = 1;
    goto LABEL_9;
  }

  v7 = v6;
  f_mntfromname = v11->f_mntfromname;
  while (strcmp(a1, f_mntfromname))
  {
    f_mntfromname += 2168;
    if (!--v7)
    {
      goto LABEL_8;
    }
  }

  strlcpy(a2, f_mntfromname - 1024, a3);
  v9 = 0;
LABEL_9:
  if (v11)
  {
    free(v11);
  }

  return v9;
}

uint64_t ramrod_force_unmount_filesystem(char *a1, int a2)
{
  v3 = (a2 != 0) << 19;
  v18 = off_10004E298;
  v19 = unk_10004E2A8;
  v4 = &v19;
  if (a2)
  {
    v5 = &v19;
    v4 = (&v19 + 8);
    *(&v18 + 1) = "-f";
  }

  else
  {
    v5 = (&v18 + 8);
  }

  *v5 = a1;
  *v4 = 0;
  v6 = 3;
  while (1)
  {
    v17 = 0;
    v16 = xmmword_100042F00;
    memset(v14, 0, sizeof(v14));
    v15 = 0;
    if (!getattrlist(a1, &v16, v14, 0x1CuLL, 8u) && (v15 & 1) == 0)
    {
      ramrod_log_msg("Tried to unmount a volume at '%s' that wasn't mounted. Ignoring the error.\n", a1);
      return 0;
    }

    if (!unmount(a1, v3))
    {
      return 0;
    }

    v7 = __error();
    v8 = *v7;
    v9 = v8 == 35 || v8 == 16;
    v10 = *v7;
    if (!v9)
    {
      break;
    }

LABEL_15:
    v11 = strerror(v10);
    ramrod_log_msg("Unmounting '%s' failed with %d: %s.\n", a1, v10, v11);
    ramrod_dump_mounted_filesystem_info();
    ramrod_log_msg("Will retry unmounting '%s' in %u seconds.\n", a1, 3);
    sleep(3u);
    if (!--v6)
    {
      return v8;
    }
  }

  if (v8 == 1)
  {
    if (!ramrod_execute_command(&v18))
    {
      return 0;
    }

    v10 = 1;
    goto LABEL_15;
  }

  v13 = strerror(*v7);
  ramrod_log_msg("Unmounting '%s' failed with %d: %s.\n", a1, v8, v13);
  ramrod_dump_mounted_filesystem_info();
  return v8;
}

BOOL _find_tagged_regex(const char *a1, regoff_t a2, char *a3, void *a4, void *a5)
{
  if (a4)
  {
    *a4 = 0;
  }

  if (a5)
  {
    *a5 = 0;
  }

  memset(&v13, 0, sizeof(v13));
  v9 = regcomp(&v13, a3, 265);
  if (v9)
  {
    v20 = 0uLL;
    v21 = 0uLL;
    v18 = 0uLL;
    v19 = 0uLL;
    v16 = 0uLL;
    v17 = 0uLL;
    __pmatch = 0;
    v15 = 0uLL;
    regerror(v9, &v13, &__pmatch, 0x80uLL);
    ramrod_log_msg("regcomp failed: %s\n", &__pmatch);
    return 0;
  }

  else
  {
    v22 = 0uLL;
    v23 = 0uLL;
    v20 = 0uLL;
    v21 = 0uLL;
    v18 = 0uLL;
    v19 = 0uLL;
    v16 = 0uLL;
    v17 = 0uLL;
    __pmatch.rm_so = 0;
    v15 = 0uLL;
    __pmatch.rm_eo = a2;
    v10 = regexec(&v13, a1, 0xAuLL, &__pmatch, 7);
    v11 = v10 == 0;
    if (!v10)
    {
      if (a4)
      {
        *a4 = &a1[v15];
      }

      if (a5)
      {
        *a5 = *(&v15 + 1) - v15;
      }
    }

    regfree(&v13);
  }

  return v11;
}

uint64_t ramrod_stash_info_to_file(uint64_t a1, uint64_t a2, uint64_t a3, NSMutableDictionary *a4, int a5)
{
  ramrod_log_msg_cf(@"%s: Stashing info to mount:%s dir:%s file:%s\n", "ramrod_stash_info_to_file", a1, a2, a3);
  if (!a1 || !a2 || !a3 || !a4)
  {
    ramrod_log_msg_cf(@"%s: missing parameters\n", "ramrod_stash_info_to_file", v25, v26);
    return 0;
  }

  ramrod_log_msg_cf(@"%s: Dictionary is %@\n", "ramrod_stash_info_to_file", a4);
  v10 = [[NSString stringWithCString:?], "stringByAppendingPathComponent:", [NSString stringWithCString:a2]];
  if (!v10)
  {
    ramrod_log_msg("%s: Failed to allocate path string to save persisted state\n");
    return 0;
  }

  v11 = v10;
  v12 = +[NSFileManager defaultManager];
  v31 = 0;
  if ([(NSFileManager *)v12 fileExistsAtPath:v11 isDirectory:&v31])
  {
    if ((v31 & 1) == 0)
    {
      ramrod_log_msg_cf(@"%s: Directory(%@) doesn't exist but a file exists with the same name at that location. Cannot proceed.\n", "ramrod_stash_info_to_file", v11, v26);
      return 0;
    }
  }

  else
  {
    ramrod_log_msg_cf(@"%s: Creating directory(%@) to save current state\n", "ramrod_stash_info_to_file", v11);
    v30 = 0;
    if (![(NSFileManager *)v12 createDirectoryAtPath:v11 withIntermediateDirectories:1 attributes:0 error:&v30])
    {
      ramrod_log_msg_cf(@"%s: Failed to create directory. Error: %@\n", "ramrod_stash_info_to_file", v30, v26);
      return 0;
    }
  }

  v13 = [(NSString *)v11 stringByAppendingPathComponent:[NSString stringWithCString:a3]];
  if (v13)
  {
    v14 = v13;
    if (a5)
    {
      ramrod_log_msg("%s: Attempting to read the current file so we can modify it\n", "ramrod_stash_info_to_file");
      v15 = [NSMutableDictionary dictionaryWithContentsOfFile:v14];
      if (v15)
      {
        v16 = v15;
        [(NSMutableDictionary *)v15 addEntriesFromDictionary:a4];
        a4 = v16;
      }

      else
      {
        ramrod_log_msg("%s: No existing file\n", "ramrod_stash_info_to_file");
      }
    }

    ramrod_log_msg_cf(@"%s: Saving data to %@\n", "ramrod_stash_info_to_file", v14);
    if (([(NSMutableDictionary *)a4 writeToFile:v14 atomically:1]& 1) != 0)
    {
      ramrod_log_msg("%s: Updating file permissions\n", "ramrod_stash_info_to_file");
      v17 = [(NSString *)v14 UTF8String];
      if (v17)
      {
        v18 = v17;
        if (chmod(v17, 0x1F8u))
        {
          v19 = *__error();
          v20 = __error();
          v28 = strerror(*v20);
          ramrod_log_msg_cf(@"%s: Failed to chmod bootedOsStateFile at %@ errno=%d: (%s)..Deleting the file", "fixup_permissions_for_bootedos_state_file", v14, v19, v28);
        }

        else
        {
          v22 = getpwnam("mobile");
          if (v22)
          {
            if (!chown(v18, v22->pw_uid, v22->pw_gid))
            {
              ramrod_log_msg_cf(@"%s: Successfully fixed up permissions for %@", "fixup_permissions_for_bootedos_state_file", v14);
              return 1;
            }

            v23 = *__error();
            v24 = __error();
            v29 = strerror(*v24);
            ramrod_log_msg_cf(@"%s: Failed to chown bootedOSStateFile at %@ errno=%d: (%s)..Deleting the file", "fixup_permissions_for_bootedos_state_file", v14, v23, v29);
          }

          else
          {
            ramrod_log_msg_cf(@"%s: Failed to get uid/gid for mobile user to chown the bootedOSState file..Deleting the file at %@", "fixup_permissions_for_bootedos_state_file", v14, v26, v27);
          }
        }
      }

      else
      {
        ramrod_log_msg("%s: Failed to get c string representation of the bootedOSStateFile path to fixup permissions..Deleting the file", "fixup_permissions_for_bootedos_state_file");
      }

      ramrod_log_msg("%s: Failed to set permissions on stashed file..Deleting it\n", "ramrod_stash_info_to_file");
      v30 = 0;
      [(NSFileManager *)v12 removeItemAtPath:v14 error:&v30];
      if (v30)
      {
        ramrod_log_msg_cf(@"%s: Failed to delete persisted file at %@. Error: %@", "ramrod_stash_info_to_file", v14, v30);
      }
    }

    else
    {
      ramrod_log_msg("%s: Failed to write env data to file\n");
    }
  }

  else
  {
    ramrod_log_msg("%s: Failed to allocate string for the stashed file path\n");
  }

  return 0;
}

uint64_t ___ramrod_execute_command_with_input_data_output_block_block_invoke(uint64_t a1, posix_spawn_file_actions_t *a2)
{
  if (*(a1 + 32) == 1)
  {
    posix_spawn_file_actions_adddup2(a2, 1, 2);
  }

  return 0;
}

uint64_t ___ramrod_execute_command_with_input_data_output_block_block_invoke_2(uint64_t a1, int __fd)
{
  v2 = *(a1 + 40);
  if (v2 >= 1)
  {
    v4 = *(a1 + 32);
    while (1)
    {
      v5 = write(__fd, v4, v2);
      if (v5 == -1)
      {
        break;
      }

      v4 += v5;
      v6 = v2 <= v5;
      v2 -= v5;
      if (v6)
      {
        return 0;
      }
    }

    v7 = __error();
    v8 = strerror(*v7);
    ramrod_log_msg("write failed for subprocess: %s\n", v8);
  }

  return 0;
}

void ramrod_create_error_internal_va(CFErrorRef *a1, const __CFString *a2, CFIndex a3, const void *a4, const __CFString *a5, va_list a6)
{
  if (a1)
  {
    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (Mutable)
    {
      v13 = Mutable;
      v14 = CFStringCreateWithFormatAndArguments(kCFAllocatorDefault, 0, a5, a6);
      if (v14)
      {
        v15 = v14;
        CFDictionaryAddValue(v13, kCFErrorDescriptionKey, v14);
        CFRelease(v15);
      }

      if (a4)
      {
        CFDictionaryAddValue(v13, kCFErrorUnderlyingErrorKey, a4);
      }

      *a1 = CFErrorCreate(kCFAllocatorDefault, a2, a3, v13);

      CFRelease(v13);
    }
  }
}

id _options_get_BOOL(void *a1, uint64_t a2)
{
  v2 = [a1 objectForKeyedSubscript:a2];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  return [v2 BOOLValue];
}

BOOL _remove_path_if_exists(void *a1, uint64_t a2)
{
  v4 = +[NSFileManager defaultManager];
  if (![(NSFileManager *)v4 fileExistsAtPath:a1])
  {
    return 1;
  }

  ramrod_log_msg("Removing %s\n", [a1 fileSystemRepresentation]);
  result = [(NSFileManager *)v4 removeItemAtPath:a1 error:a2];
  if (result)
  {
    return 1;
  }

  return result;
}

id _get_os_preboot_path(void *a1)
{
  v2 = [a1 objectForKeyedSubscript:@"PrebootDirOverride"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || !v2)
  {
    v2 = [a1 objectForKeyedSubscript:@"PrebootMountpoint"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || !v2)
    {
      ramrod_log_msg("%s: RAMROD_SPLAT_OPT_PREBOOT_MOUNTPOINT is required\n", "_get_os_preboot_path");
      return 0;
    }
  }

  return v2;
}

BOOL _get_splat_preboot_paths(void *a1, void *a2, void *a3, void *a4, CFErrorRef *a5)
{
  if (a1)
  {
    if (_options_get_BOOL(a2, @"SafariDownlevelUpdate"))
    {
      v8 = @"downlevel";
    }

    else
    {
      v8 = @"cryptex1";
    }

    v9 = [a1 stringByAppendingPathComponent:v8];
    v10 = v9;
    if (a3)
    {
      *a3 = [v9 stringByAppendingPathComponent:@"current"];
    }

    if (a4)
    {
      *a4 = [v10 stringByAppendingPathComponent:@"proposed"];
    }
  }

  else
  {
    ramrod_log_msg("%s: %s\n", "_get_splat_preboot_paths", "preboot directory is nil");
    ramrod_create_error_cf(a5, @"RamrodErrorDomain", 2001, 0, @"%s", v12, v13, v14, "preboot directory is nil");
  }

  return a1 != 0;
}

BOOL ramrod_splat_cleanup(void *a1)
{
  ramrod_log_msg("%s: Cleaning up proposed directory in preboot\n", "ramrod_splat_cleanup");
  v4 = 0;
  os_preboot_path = _get_os_preboot_path(a1);
  result = _get_splat_preboot_paths(os_preboot_path, a1, 0, &v4, 0);
  if (result)
  {
    return _remove_path_if_exists(v4, 0);
  }

  return result;
}

uint64_t ramrod_create_directory_with_class(_BYTE *a1, int a2, uid_t a3, gid_t a4, int a5, int a6)
{
  if (!a1 || *a1 != 47)
  {
    return 22;
  }

  bzero(v24, 0x400uLL);
  __strlcpy_chk();
  for (i = v24; ; *i = 47)
  {
    v12 = strchr(i + 1, 47);
    i = v12;
    if (v12)
    {
      *v12 = 0;
    }

    memset(&v23, 0, sizeof(v23));
    if (lstat(v24, &v23))
    {
      if (*__error() != 2)
      {
        v13 = *__error();
        v14 = __error();
        strerror(*v14);
        ramrod_log_msg("lstat %s failed: %s\n");
        return v13;
      }

      if (a6)
      {
        ramrod_log_msg("creating directory (owner=%d group=%d mode=%o, class=%d) %s\n", a3, a4, a2, a5, v24);
      }

      if (mkdir(v24, a2 & 0x1FF))
      {
        v13 = *__error();
        v15 = __error();
        strerror(*v15);
        ramrod_log_msg("mkdir failed: %s\n");
        return v13;
      }

      if (chmod(v24, a2))
      {
        v13 = *__error();
        v16 = __error();
        strerror(*v16);
        ramrod_log_msg("chmod failed: %s\n");
        return v13;
      }

      if (chown(v24, a3, a4))
      {
        v13 = *__error();
        v17 = __error();
        strerror(*v17);
        ramrod_log_msg("chown failed: %s\n");
        return v13;
      }

      if ((a5 & 0x80000000) == 0)
      {
        v22 = 0;
        v21 = xmmword_100042F18;
        v20 = a5;
        if (setattrlist(v24, &v21, &v20, 4uLL, 0))
        {
          break;
        }
      }
    }

    if (!i)
    {
      return 0;
    }
  }

  v13 = *__error();
  v18 = __error();
  strerror(*v18);
  ramrod_log_msg("setattrlist failed: %s\n");
  return v13;
}

void submitRestoreLogFileToLogDir_cold_1()
{
  __error();
  _os_assert_log();
  _os_crash();
  __break(1u);
}

NSString *fetch_string_sysctl()
{
  size = 0;
  if (sysctlbyname("kern.bootsessionuuid", 0, &size, 0, 0))
  {
    return 0;
  }

  if (!size)
  {
    return 0;
  }

  v0 = malloc_type_malloc(size, 0xF2842898uLL);
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  if (sysctlbyname("kern.bootsessionuuid", v0, &size, 0, 0))
  {
    v2 = 0;
  }

  else
  {
    v2 = [NSString stringWithCString:v1 encoding:4];
  }

  free(v1);
  return v2;
}

uint64_t process_update_result_state(BOOL *a1, char *a2)
{
  string_sysctl = fetch_string_sysctl();
  if (string_sysctl)
  {
    v5 = MGCopyAnswer();
    if (v5)
    {
      v6 = [NSMutableDictionary dictionaryWithContentsOfFile:@"/private/var/MobileSoftwareUpdate/last_update_result.plist"];
      v12 = v6 != 0;
      if (!v6)
      {
        v46 = 1;
        logfunction("", 1, @"%s: no update result file, assuming 1st boot after a restore\n", v7, v8, v9, v10, v11, "process_update_result_state");
        v13 = [NSMutableDictionary dictionaryWithCapacity:4];
        [(NSMutableDictionary *)v13 setObject:[NSNumber forKey:"numberWithLong:" numberWithLong:?], @"PreviousUpdateState"];
        [(NSMutableDictionary *)v13 setObject:+[NSDate forKey:"date"], @"PreviousRestoreDate"];
        clear_firmware_specific_data();
        v47 = 0;
        if (!v13)
        {
          string_sysctl = 1;
          goto LABEL_22;
        }

        goto LABEL_21;
      }

      v13 = v6;
      v14 = [(NSMutableDictionary *)v6 objectForKey:@"BootUUID"];
      if (v14)
      {
        if (([v14 isEqualToString:string_sysctl] & 1) == 0)
        {
          logfunction("", 1, @"%s: Boot UUID is different - 1st run after reboot\n", v20, v21, v22, v23, v24, "process_update_result_state");
          v25 = [(NSMutableDictionary *)v13 objectForKey:@"TargetOS"];
          if (v25)
          {
            v26 = [(NSMutableDictionary *)v13 objectForKey:@"SourceOS"];
            v32 = @"<unknown>";
            if (v26)
            {
              v32 = v26;
            }

            logfunction("", 1, @"%s: Update attempted (%@ -> %@)\n", v27, v28, v29, v30, v31, "process_update_result_state", v32, v25);
          }

          v94 = MGGetStringAnswer();
          v33 = [(NSMutableDictionary *)v13 objectForKey:@"TargetBootManifestHash"];
          v34 = [(NSMutableDictionary *)v13 objectForKey:@"OriginalBootManifestHash"];
          v95 = v34 == 0;
          if (v34)
          {
            if ([v34 isEqualToData:v5])
            {
              v95 = 1;
              if (!v33)
              {
                goto LABEL_13;
              }

              goto LABEL_34;
            }

            v49 = @"%s: Boot manifest hash differs - in different OS\n";
          }

          else
          {
            v49 = @"%s: No boot manifest hash in result state file - assuming same OS\n";
          }

          logfunction("", 1, v49, v35, v36, v37, v38, v39, "process_update_result_state");
          if (!v33)
          {
LABEL_13:
            if (v25)
            {
              logfunction("", 1, @"%s: Update was attempted, but no %@ boot manifest hash is present - using target OS version instead\n", v35, v36, v37, v38, v39, "process_update_result_state", @"target");
              if (!v94)
              {
                v87 = v25;
                v45 = @"%s: Couldn't fetch current OS version to compare with target OS version - assuming we are in the target OS (%@)\n";
                goto LABEL_42;
              }

              if ([v25 isEqualToString:v94])
              {
                v87 = v25;
                v45 = @"%s: in target OS [%@]\n";
LABEL_42:
                v89 = 1;
                logfunction("", 1, v45, v40, v41, v42, v43, v44, "process_update_result_state", v87);
                goto LABEL_44;
              }

              logfunction("", 1, @"%s: in different OS than target (target: %@ - current: %@)\n", v40, v41, v42, v43, v44, "process_update_result_state", v25, v94);
              v89 = 0;
LABEL_44:
              v90 = v12;
              v91 = v5;
              v92 = a1;
              v93 = a2;
              v96 = 0u;
              v97 = 0u;
              v98 = 0u;
              v99 = 0u;
              v55 = [&off_100058858 countByEnumeratingWithState:&v96 objects:v100 count:16];
              if (v55)
              {
                v61 = v55;
                v62 = *v97;
                do
                {
                  for (i = 0; i != v61; i = i + 1)
                  {
                    if (*v97 != v62)
                    {
                      objc_enumerationMutation(&off_100058858);
                    }

                    v64 = *(*(&v96 + 1) + 8 * i);
                    v65 = copy_nvram_variable(v64);
                    [(NSMutableDictionary *)v13 removeObjectForKey:v64];
                    if (v65)
                    {
                      v66 = [NSString alloc];
                      BytePtr = CFDataGetBytePtr(v65);
                      v68 = [v66 initWithBytes:BytePtr length:CFDataGetLength(v65) encoding:4];
                      [(NSMutableDictionary *)v13 setObject:v68 forKey:v64];

                      CFRelease(v65);
                    }
                  }

                  v61 = [&off_100058858 countByEnumeratingWithState:&v96 objects:v100 count:16];
                }

                while (v61);
              }

              if (v95)
              {
                logfunction("", 1, @"%s: Failed Backward - in original OS after update was attempted\n", v56, v57, v58, v59, v60, "process_update_result_state");
                [(NSMutableDictionary *)v13 setObject:[NSNumber forKey:"numberWithLong:" numberWithLong:?], @"PreviousUpdateState"];
                a1 = v92;
                a2 = v93;
                v5 = v91;
                v12 = v90;
                v47 = v94;
              }

              else
              {
                v5 = v91;
                v12 = v90;
                v47 = v94;
                if (v89)
                {
                  v69 = [(NSMutableDictionary *)v13 objectForKey:@"ota-result"];
                  a1 = v92;
                  a2 = v93;
                  if (v69)
                  {
                    v75 = v69;
                    if (![v69 isEqualToString:@"success"])
                    {
                      logfunction("", 1, @"%s: Failed Forward - made it to the new OS with a failure indicated in NVRAM [%@]\n", v76, v77, v78, v79, v80, "process_update_result_state", v75);
                      [(NSMutableDictionary *)v13 setObject:[NSNumber forKey:"numberWithLong:" numberWithLong:?], @"PreviousUpdateState"];
                      record_firmware_failures(v13);
                      goto LABEL_63;
                    }

                    logfunction("", 1, @"%s: Successful Update - made it to the new OS with success set in NVRAM\n", v76, v77, v78, v79, v80, "process_update_result_state");
                  }

                  else
                  {
                    logfunction("", 1, @"%s: made it to the new OS, but there is no ota-result set. Assuming success.\n", v70, v71, v72, v73, v74, "process_update_result_state");
                  }

                  [(NSMutableDictionary *)v13 setObject:[NSNumber forKey:"numberWithLong:" numberWithLong:?], @"PreviousUpdateState"];
                  clear_firmware_specific_data();
                }

                else
                {
                  logfunction("", 1, @"%s: OS is different than target OS for update - update must have failed into recovery with a subsequent restore\n", v56, v57, v58, v59, v60, "process_update_result_state");
                  [(NSMutableDictionary *)v13 setObject:[NSNumber forKey:"numberWithLong:" numberWithLong:?], @"PreviousUpdateState"];
                  [(NSMutableDictionary *)v13 setObject:+[NSDate forKey:"date"], @"PreviousRestoreDate"];
                  clear_firmware_specific_data();
                  a1 = v92;
                  a2 = v93;
                }
              }

LABEL_63:
              v46 = !v95;
              _clear_apply_state(v13);
              [(NSMutableDictionary *)v13 setObject:+[NSDate forKey:"date"], @"PreviousUpdateDate"];
              v100[0] = 0;
              if (![string_sysctl writeToFile:@"/var/run/FirstBootAfterUpdate" atomically:1 encoding:4 error:v100] || v100[0])
              {
                logfunction("", 1, @"%s: Failed to write firstBootAfterUpdate cookie file to /var/run (%@)\n", v81, v82, v83, v84, v85, "process_update_result_state", v100[0]);
              }

              else
              {
                logfunction("", 1, @"%s: Successfully wrote firstBootAfterUpdate cookie file to /var/run\n", v81, v82, v83, v84, v85, "process_update_result_state", v88);
              }

              goto LABEL_21;
            }

            goto LABEL_38;
          }

LABEL_34:
          v89 = [v33 isEqualToData:v5];
          if (v89)
          {
            logfunction("", 1, @"%s: in target OS [%@] - target manifest hash matches current boot manifest hash\n", v50, v51, v52, v53, v54, "process_update_result_state", v25);
          }

          else
          {
            logfunction("", 1, @"%s: not in target OS - target manifest hash does not match current boot manifest hash\n", v50, v51, v52, v53, v54, "process_update_result_state", v86);
          }

          if (v25)
          {
            goto LABEL_44;
          }

LABEL_38:
          if (v95)
          {
            v46 = 0;
            v12 = 0;
            v47 = v94;
          }

          else
          {
            v47 = v94;
            v46 = 1;
            logfunction("", 1, @"%s: new OS booted without an update (%@) - tethered restore has been done\n", v35, v36, v37, v38, v39, "process_update_result_state", v94);
            [(NSMutableDictionary *)v13 setObject:[NSNumber forKey:"numberWithLong:" numberWithLong:?], @"PreviousUpdateState"];
            [(NSMutableDictionary *)v13 setObject:+[NSDate forKey:"date"], @"PreviousRestoreDate"];
            clear_firmware_specific_data();
            v12 = 0;
          }

          goto LABEL_21;
        }
      }

      else
      {
        logfunction("", 1, @"%s: No boot UUID in result state file - assuming same boot\n", v15, v16, v17, v18, v19, "process_update_result_state");
      }

      v46 = 0;
      v12 = 0;
      v47 = 0;
LABEL_21:
      [(NSMutableDictionary *)v13 setObject:string_sysctl forKey:@"BootUUID"];
      [(NSMutableDictionary *)v13 setObject:v5 forKey:@"OriginalBootManifestHash"];
      string_sysctl = 1;
      [(NSMutableDictionary *)v13 writeToFile:@"/private/var/MobileSoftwareUpdate/last_update_result.plist" atomically:1];
      goto LABEL_22;
    }

    v47 = 0;
    v12 = 0;
    v46 = 0;
    string_sysctl = 0;
  }

  else
  {
    v5 = 0;
    v47 = 0;
    v12 = 0;
    v46 = 0;
  }

LABEL_22:
  if (a1)
  {
    *a1 = v12;
  }

  if (a2)
  {
    *a2 = v46;
  }

  if (v5)
  {
  }

  if (v47)
  {
    CFRelease(v47);
  }

  return string_sysctl;
}

uint64_t _AMRestorePartitionOpenFileWithURL_cold_2(int a1)
{
  v2 = __error();
  v3 = strerror(*v2);
  return AMSupportLogInternal(3, "_AMRestorePartitionOpenFileWithURL", "open() returned %d, %s", a1, v3);
}

void __os_cleanup_iorelease_cold_1(void *a1, _OWORD *a2)
{
  *a1 = 0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    v5 = 3;
  }

  else
  {
    v5 = 2;
  }

  OUTLINED_FUNCTION_1(v5, v2, v3, v4, &_mh_execute_header);
  _os_crash_msg();
  __break(1u);
}

void __os_cleanup_iorelease_cold_1_0(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_2_0(a1, a2);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1(v2, v3, v4, v5, &_mh_execute_header);
  _os_crash_msg();
  __break(1u);
}

void __os_cleanup_ioclose_cold_1(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_2_0(a1, a2);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1(v2, v3, v4, v5, &_mh_execute_header);
  _os_crash_msg();
  __break(1u);
}

void __os_cleanup_iorelease_cold_1_1(void *a1, _OWORD *a2)
{
  *a1 = 0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1(v2, v3, v4, v5, &_mh_execute_header);
  _os_crash_msg();
  __break(1u);
}