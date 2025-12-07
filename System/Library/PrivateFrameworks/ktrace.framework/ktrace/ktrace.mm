uint64_t ktrace_file_append_live_ktrace(uint64_t a1, unint64_t a2, uint64_t a3, unsigned int a4, uint64_t *a5)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  LODWORD(v6) = a3;
  if (a4 - 2 < 3)
  {

    return ktrace_file_append_live_ktrace_transformed(a1, a2, a3, a4, a5, 0);
  }

  if (a4 > 1)
  {
    v10 = *__error();
    ktrace_log_init();
    if (os_log_type_enabled(ktrace_file_log, OS_LOG_TYPE_ERROR))
    {
      ktrace_file_append_live_ktrace_cold_4();
    }

    *__error() = v10;
    *__error() = 22;
    return *__error();
  }

  if (a2)
  {
    *__error() = 22;
    v9 = *__error();
    ktrace_log_init();
    if (os_log_type_enabled(ktrace_file_log, OS_LOG_TYPE_ERROR))
    {
      ktrace_file_append_live_ktrace_cold_1();
    }

    *__error() = v9;
    return *__error();
  }

  if (*(a1 + 296))
  {
    v23[0] = 0;
    v23[1] = 0;
    v24 = 0;
    result = kdebug_get_bufinfo(v23);
    if (result)
    {
      return result;
    }

    v11 = setup_events_chunk(a1, 0);
    if (v11)
    {
      v12 = v11;
      v13 = SLODWORD(v23[0]) << 6;
      v6 = v6;
      v14 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
      while (1)
      {
        v15 = *(a1 + 196);
        if (v15 == -1)
        {
          v22 = v13;
          if (ktrace_file_ensure_space(a1, v13) || kdebug_wait_and_read_events((*(a1 + 240) + *(a1 + 280)), &v22, v6))
          {
LABEL_27:
            v17 = *(a1 + 196);
            if (v17 == -1)
            {
              v18 = *(a1 + 280);
            }

            else
            {
              v18 = lseek(v17, 0, 2);
              if (v18 == -1)
              {
                v19 = *__error();
                ktrace_log_init();
                v20 = ktrace_file_log;
                if (os_log_type_enabled(ktrace_file_log, OS_LOG_TYPE_ERROR))
                {
                  ktrace_file_append_live_ktrace_cold_3(v19, v20);
                }

                *__error() = v19;
                v18 = -1;
              }
            }

            v12[1] = v18 - v12[2];
            result = finish_events_chunk(a1, v12, 0, 0);
            if (a5 && !result)
            {
              *a5 = v12;
            }

            return result;
          }

          *(a1 + 280) += v22;
        }

        else if (kdebug_write_events(v15, v6))
        {
          goto LABEL_27;
        }

        v16 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
        v6 -= (v16 - v14) / 0xF4240;
        v14 = v16;
        if (v6 <= 0)
        {
          goto LABEL_27;
        }
      }
    }

    return *__error();
  }

  v21 = *__error();
  ktrace_log_init();
  if (os_log_type_enabled(ktrace_file_log, OS_LOG_TYPE_ERROR))
  {
    ktrace_file_append_live_ktrace_cold_2();
  }

  *__error() = v21;
  return 22;
}

uint64_t kdebug_write_events(int a1, unsigned int a2)
{
  v9 = *MEMORY[0x277D85DE8];
  *v6 = 0x1800000001;
  v7 = 17;
  v8 = a1;
  if (a2 <= 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = a2;
  }

  v5 = v2;
  if ((sysctl(v6, 4u, 0, &v5, 0, 0) & 0x80000000) == 0)
  {
    return 0;
  }

  v4 = *__error();
  ktrace_log_init();
  if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
  {
    kdebug_write_events_cold_1();
  }

  *__error() = v4;
  if (*__error())
  {
    return *__error();
  }

  else
  {
    return 22;
  }
}

uint64_t finish_events_chunk(uint64_t a1, void *a2, int a3, int a4)
{
  if (a3)
  {
    v10 = a4;
    v6 = ktrace_chunk_overwrite(a2, 8, &v10, 4uLL);
    if (v6)
    {
      appended = v6;
      *__error() = v6;
      v8 = *__error();
      ktrace_log_init();
      if (os_log_type_enabled(ktrace_file_log, OS_LOG_TYPE_ERROR))
      {
        finish_events_chunk_cold_1();
      }

LABEL_8:
      *__error() = v8;
      return appended;
    }
  }

  appended = ktrace_file_append_finish(a1, a2);
  if (appended)
  {
    *__error() = appended;
    v8 = *__error();
    ktrace_log_init();
    if (os_log_type_enabled(ktrace_file_log, OS_LOG_TYPE_ERROR))
    {
      finish_events_chunk_cold_2();
    }

    goto LABEL_8;
  }

  return appended;
}

uint64_t ktrace_file_append_finish(uint64_t a1, void *a2)
{
  if (a1 == -1)
  {
    return 0;
  }

  v3 = *(a1 + 200);
  if (v3)
  {
    if (*(v3 + 152) != a2)
    {
      ktrace_postprocess_file_internal_cold_4();
    }

    if (!*(a1 + 232))
    {
      ktrace_postprocess_file_internal_cold_4();
    }

    result = ktrace_file_append_finish(v3, a2);
    if (!result)
    {
      result = ktrace_file_append_finish(*(a1 + 200), *(a1 + 232));
      *(a1 + 232) = 0;
    }
  }

  else
  {
    result = ktrace_file_append_finish_internal(a1, (a1 + 24), a2);
    if (!result)
    {
      *(a1 + 299) = 0;
    }
  }

  return result;
}

uint64_t ktrace_file_append_finish_internal(uint64_t a1, void *a2, void *a3)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (!a3)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (a1 == -1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  v6 = *(a1 + 16);
  if (v6 != 4 && *(a1 + 152) != a3)
  {
    return 22;
  }

  v8 = a3[5];
  *(a1 + 152) = v8;
  if (v8)
  {
    v9 = *(v8 + 16);
    v10 = a3[1] + *(v8 + 8) + 16;
    *(v8 + 8) = v10;
    v11 = a3[1] + a3[2] - v9;
    if (v11 > v10)
    {
      *(v8 + 8) = v11;
    }
  }

  if (v6 == 4)
  {
    (*(*(a1 + 272) + 16))(*(a1 + 272), a1 + 80 == a2, a3);
    ktrace_chunk_destroy(a3);
    return 0;
  }

  v12 = *(a3 + 9);
  v23[0] = *(a3 + 8);
  v23[1] = v12;
  v13 = a3[2];
  v24 = a3[1];
  v14 = v13 - 16;
  if (ktrace_file_write(a1, v23, 0x10uLL, v13 - 16) > 0xF)
  {
    v17 = ktrace_chunk_array_append(a2, a3);
    if (!v17)
    {
      if (ktrace_chunk_has_subchunks(a3, v18) && *a3 != -1)
      {
        v7 = 0;
        v21 = a3[2];
        v22 = a3[1] + v21;
        a3[10] = 16;
        a3[11] = v21;
        a3[12] = v22;
        return v7;
      }

      return 0;
    }

    v7 = v17;
    v16 = *__error();
    ktrace_log_init();
    if (os_log_type_enabled(ktrace_file_log, OS_LOG_TYPE_ERROR))
    {
      ktrace_file_append_finish_internal_cold_1();
    }
  }

  else
  {
    v15 = *__error();
    if (v15)
    {
      v7 = v15;
    }

    else
    {
      v7 = 22;
    }

    v16 = *__error();
    ktrace_log_init();
    if (os_log_type_enabled(ktrace_file_log, OS_LOG_TYPE_ERROR))
    {
      ktrace_file_append_finish_internal_cold_2();
    }
  }

  *__error() = v16;
  v19 = *(a1 + 196);
  if (v19 != -1)
  {
    ftruncate(v19, v14);
  }

  free(a3);
  return v7;
}

size_t ktrace_file_write(uint64_t a1, const void *a2, size_t a3, off_t a4)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (!a2)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (*(a1 + 16) == 4)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  v6 = a4;
  if (*(a1 + 196) != -1)
  {
    while (1)
    {
      *__error() = 0;
      v8 = *(a1 + 196);
      if (v6 == -1)
      {
        v9 = write(v8, a2, a3);
        *(a1 + 280) = fd_size(*(a1 + 196), v10);
      }

      else
      {
        v9 = pwrite(v8, a2, a3, v6);
      }

      if (v9 < a3)
      {
        break;
      }

      if (v9 != -1)
      {
        return v9;
      }

      if (*__error() != 4)
      {
        return -1;
      }
    }

    *__error() = 79;
    return -1;
  }

  if (a4 == -1)
  {
    v6 = *(a1 + 280);
  }

  v11 = v6 + a3;
  v12 = ktrace_file_ensure_space(a1, v6 + a3);
  if (v12)
  {
    *__error() = v12;
    return -1;
  }

  memcpy((*(a1 + 240) + v6), a2, a3);
  if (*(a1 + 280) < v11)
  {
    *(a1 + 280) = v11;
  }

  return a3;
}

uint64_t ktrace_chunk_array_append(void *a1, void *a2)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (!a2)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  result = ktrace_chunk_array_append_internal(a1, a2);
  if (!result)
  {
    a1[6] = a1[5];
    a1[1] = a2;
  }

  return result;
}

uint64_t ktrace_chunk_array_append_internal(uint64_t a1, void *a2)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (!a2)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  v4 = *a1;
  if (!v4)
  {
    v4 = malloc_type_malloc(0x38uLL, 0x2004093837F09uLL);
    *a1 = v4;
    if (v4)
    {
      *(a1 + 24) = 7;
      goto LABEL_9;
    }

    return *__error();
  }

  v5 = *(a1 + 24);
  if (v5 == *(a1 + 16))
  {
    v6 = (2 * v5) | 1;
    v4 = malloc_type_realloc(v4, 8 * v6, 0x2004093837F09uLL);
    if (v4)
    {
      *a1 = v4;
      *(a1 + 24) = v6;
      goto LABEL_9;
    }

    return *__error();
  }

LABEL_9:
  v7 = 0;
  v8 = *(a1 + 16);
  a2[3] = v8;
  *(a1 + 40) = a2[1] + a2[2];
  *(a1 + 16) = v8 + 1;
  *(v4 + v8) = a2;
  return v7;
}

uint64_t ktrace_chunk_has_subchunks(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  return *(a1 + 36) >> 15;
}

void __drain_events_block_block_invoke(uint64_t a1)
{
  v61 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  v3 = *v2;
  v4 = atomic_load((v2 + 156));
  v5 = v4 | (v3 == 2);
  if (v4 & 1 | (v3 == 2))
  {
    v6 = 0;
  }

  else
  {
    v6 = *(v2 + 152);
  }

  v7 = atomic_load((v2 + 157));
  if (v7)
  {
    return;
  }

  v8 = *(v2 + 4);
  if (v8 == 2)
  {
    v15 = atomic_load((v2 + 159));
    if (v15)
    {
LABEL_46:
      v10 = 0;
      goto LABEL_60;
    }

    if (v6 && (kdebug_wait(v6) & 0x80000000) != 0)
    {
      goto LABEL_32;
    }

    v53 = 0;
    v54 = 0;
    v52 = 0;
    if (trace_collect(&v54, &v53, &v52))
    {
      v16 = *__error();
      ktrace_log_init();
      if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
      {
        __drain_events_block_block_invoke_cold_1();
      }

      goto LABEL_27;
    }

    if (!v54)
    {
      ktrace_postprocess_file_internal_cold_4();
    }

    if (!v53)
    {
      trace_free(v54);
      if (v5)
      {
        ktrace_log_init();
        v43 = ktrace_log;
        if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_DEBUG))
        {
          __drain_events_block_block_invoke_cold_2(v43, v44, v45, v46, v47, v48, v49, v50);
        }

        v10 = 1;
        goto LABEL_60;
      }

      goto LABEL_46;
    }

    v27 = *(v2 + 232);
    *&buf = MEMORY[0x277D85DD0];
    *(&buf + 1) = 3221225472;
    v56 = __drain_trailing_duration_block_invoke;
    v57 = &__block_descriptor_56_e5_v8__0l;
    v58 = v2;
    v59 = v54;
    v60 = v53;
    v28 = v27;
LABEL_45:
    dispatch_async(v28, &buf);
    goto LABEL_46;
  }

  if (v8 != 1)
  {
    if (v8)
    {
      __drain_events_block_block_invoke_cold_6();
    }

    v9 = atomic_load((v2 + 159));
    if (v9)
    {
      v10 = 3;
      goto LABEL_60;
    }

    if (!*(v2 + 320))
    {
      v17 = *(v2 + 224);
      if ((v17 & 0x20) == 0)
      {
        *(v2 + 224) = v17 | 0x20;
        appended = ktrace_file_append_live_stackshot_internal(-1, *(v2 + 168));
        if (appended)
        {
          _session_read_stackshot_chunk(v2, appended);
        }
      }
    }

    if (v6 && (kdebug_wait(v6) & 0x80000000) != 0)
    {
LABEL_32:
      v10 = 4;
      goto LABEL_60;
    }

    v53 = 0;
    v54 = 0;
    v52 = 0;
    v19 = trace_collect(&v54, &v53, &v52);
    if (v19)
    {
      v20 = v19;
      v16 = *__error();
      ktrace_log_init();
      v21 = ktrace_log;
      if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
      {
        __drain_events_block_block_invoke_cold_4(v20, v16, v21);
      }

LABEL_27:
      *__error() = v16;
      goto LABEL_32;
    }

    if (!v54)
    {
      ktrace_postprocess_file_internal_cold_4();
    }

    if ((*(v2 + 828) & 4) == 0 && (v52 & 8) != 0 && !*v2)
    {
      populate_threadmap(v2, 1);
    }

    if (v53)
    {
      v28 = *(v2 + 232);
      *&buf = MEMORY[0x277D85DD0];
      *(&buf + 1) = 3221225472;
      v56 = __drain_callbacks_block_invoke;
      v57 = &__block_descriptor_56_e5_v8__0l;
      v58 = v2;
      v59 = v53;
      v60 = v54;
      goto LABEL_45;
    }

    trace_free(v54);
    if ((v5 & 1) == 0)
    {
      goto LABEL_46;
    }

    ktrace_log_init();
    v51 = ktrace_log;
    v10 = 1;
    if (!os_log_type_enabled(ktrace_log, OS_LOG_TYPE_INFO))
    {
      goto LABEL_60;
    }

    LOWORD(buf) = 0;
    v31 = "ending after empty trace collection";
    v32 = v51;
    v33 = 2;
LABEL_53:
    _os_log_impl(&dword_22ED7A000, v32, OS_LOG_TYPE_INFO, v31, &buf, v33);
    goto LABEL_60;
  }

  v54 = 0;
  v11 = *(v2 + 680);
  v12 = *(v2 + 648);
  if (v11)
  {
    v13 = ktrace_file_append_live_filtered_ktrace(v12, v6, *(v2 + 656), &v54, v11);
  }

  else
  {
    v13 = ktrace_file_append_live_ktrace(v12, 0, v6, *(v2 + 656), &v54);
  }

  v22 = v13;
  if (v13)
  {
    ktrace_log_init();
    v23 = ktrace_log;
    if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_INFO))
    {
      v24 = strerror(v22);
      LODWORD(buf) = 136315138;
      *(&buf + 4) = v24;
      _os_log_impl(&dword_22ED7A000, v23, OS_LOG_TYPE_INFO, "ending draining to file due to error: %s", &buf, 0xCu);
    }

    goto LABEL_32;
  }

  v25 = v54;
  if (v54)
  {
    v26 = ktrace_chunk_size(v54, v14) < 9;
    v25 = v54;
  }

  else
  {
    v26 = 0;
  }

  if ((v5 & (v25 == 0 || v26) & 1) == 0)
  {
    v34 = *(v2 + 160) + (ktrace_chunk_size(v25, v14) >> 6);
    *(v2 + 160) = v34;
    v35 = *(v2 + 720);
    if (v34 <= v35 || v35 == 0)
    {
      v10 = 0;
    }

    else
    {
      v10 = 2;
    }

    goto LABEL_60;
  }

  ktrace_log_init();
  v29 = ktrace_log;
  v10 = 1;
  if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_INFO))
  {
    v30 = "";
    if (v26)
    {
      v30 = ", undersized chunk";
    }

    LODWORD(buf) = 136315138;
    *(&buf + 4) = v30;
    v31 = "ending draining to file, out of events%s";
    v32 = v29;
    v33 = 12;
    goto LABEL_53;
  }

LABEL_60:
  if (v10 > 2)
  {
    if (v10 == 3)
    {
      return;
    }

    v37 = v2;
    v38 = 3;
    v39 = 1;
    goto LABEL_67;
  }

  if (v10 == 1)
  {
    v37 = v2;
    v38 = 2;
    v39 = 2;
    goto LABEL_67;
  }

  if (v10 == 2)
  {
    v37 = v2;
    v38 = 2;
    v39 = 6;
LABEL_67:
    _session_end_internal(v37, v38, v39);
    _session_drain_finish(v2, v40);
    return;
  }

  v41 = atomic_load((v2 + 157));
  if ((v41 & 1) == 0)
  {
    v42 = atomic_load((v2 + 156));
    if ((v42 & 1) != 0 || v3 == 2 || (buf = 0uLL, LODWORD(v56) = 0, trace_get_bufinfo(&buf)) || !DWORD1(buf))
    {
      dispatch_async(*(*(a1 + 40) + 128), *(*(*(a1 + 32) + 8) + 40));
      return;
    }

    if ((BYTE8(buf) & 8) != 0)
    {
      v39 = 5;
    }

    else
    {
      v39 = 4;
    }

    v37 = v2;
    v38 = 3;
    goto LABEL_67;
  }
}

uint64_t ktrace_chunk_size(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  return *(a1 + 8);
}

uint64_t trace_get_bufinfo(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v6 = 5;
  *v5 = 0x1800000001;
  v4 = 20;
  if ((sysctl(v5, 3u, a1, &v4, 0, 0) & 0x80000000) == 0)
  {
    return 0;
  }

  v2 = *__error();
  ktrace_log_init();
  if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
  {
    trace_get_bufinfo_cold_1();
  }

  *__error() = v2;
  v3 = *__error();
  if (v3 <= 1)
  {
    return 1;
  }

  else
  {
    return v3;
  }
}

uint64_t kdebug_get_bufinfo(void *a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v5 = 5;
  *v4 = 0x1800000001;
  v3 = 20;
  if ((sysctl(v4, 3u, a1, &v3, 0, 0) & 0x80000000) == 0)
  {
    return 0;
  }

  v2 = *__error();
  ktrace_log_init();
  if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
  {
    kdebug_get_bufinfo_cold_1();
  }

  *__error() = v2;
  if (*__error())
  {
    return *__error();
  }

  else
  {
    return 22;
  }
}

uint64_t ktrace_file_align_next(uint64_t a1, unint64_t a2)
{
  if (a2 <= 8)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if ((a2 & 7) != 0)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (*(a1 + 16) == 4)
  {
    return 0;
  }

  v4 = *(a1 + 196);
  if (v4 == -1)
  {
    v5 = *(a1 + 280);
  }

  else
  {
    v5 = lseek(v4, 0, 2);
    if (v5 < 0)
    {
      v6 = *__error();
      ktrace_log_init();
      if (os_log_type_enabled(ktrace_file_log, OS_LOG_TYPE_ERROR))
      {
        ktrace_file_align_next_cold_3();
      }

      *__error() = v6;
      return *__error();
    }
  }

  if (((-16 - v5) & (a2 - 1)) == 0)
  {
    return 0;
  }

  v7 = (-32 - v5) & (a2 - 1);
  if (!v7)
  {
    return 0;
  }

  if (*(a1 + 299))
  {
    v8 = 80;
  }

  else
  {
    v8 = 24;
  }

  appended = ktrace_file_append_start_internal(a1, 0x2000, 0, 0);
  if (appended)
  {
    v10 = appended;
    if ((*(a1 + 296) & 1) == 0)
    {
      ktrace_file_align_next_cold_4(*(a1 + 296));
    }

    v11 = *(a1 + 196);
    if (v11 == -1)
    {
      if (!*(a1 + 240))
      {
        ktrace_postprocess_file_internal_cold_4();
      }

      v14 = ktrace_file_ensure_space(a1, *(a1 + 248) + v7);
      if (v14)
      {
        updated = v14;
        goto LABEL_34;
      }

      bzero((*(a1 + 240) + *(a1 + 280)), v7);
      *(a1 + 280) += v7;
      goto LABEL_31;
    }

    v16 = 0;
    if (lseek(v11, v7 - 1, 2) < 0)
    {
      v12 = *__error();
      ktrace_log_init();
      if (os_log_type_enabled(ktrace_file_log, OS_LOG_TYPE_ERROR))
      {
        ktrace_file_align_next_cold_6();
      }
    }

    else
    {
      if (ktrace_file_write(a1, &v16, 1uLL, -1))
      {
        goto LABEL_31;
      }

      v12 = *__error();
      ktrace_log_init();
      if (os_log_type_enabled(ktrace_file_log, OS_LOG_TYPE_ERROR))
      {
        ktrace_file_align_next_cold_5();
      }
    }

    *__error() = v12;
    updated = *__error();
    if (updated)
    {
      goto LABEL_34;
    }

LABEL_31:
    v10[1] = v7;
    updated = ktrace_file_append_finish_internal(a1, (a1 + v8), v10);
    if (updated)
    {
      return updated;
    }

    if (*(a1 + 299) == 1)
    {
      updated = ktrace_file_update_header_size(a1);
      if (!updated)
      {
        return updated;
      }

LABEL_34:
      ftruncate(*(a1 + 196), v10[2] - 16);
      free(v10);
      return updated;
    }

    return 0;
  }

  return *__error();
}

void *setup_events_chunk(uint64_t a1, int a2)
{
  v14 = 0;
  v12 = 0;
  v13 = 0;
  if (a2)
  {
    v3 = 12;
  }

  else
  {
    v3 = 8;
  }

  if (a2)
  {
    v4 = &v13;
  }

  else
  {
    v4 = &v12;
  }

  if (a2)
  {
    v5 = 7936;
  }

  else
  {
    v6 = ktrace_file_align_next(a1, 0xFF8uLL);
    *__error() = v6;
    if (*__error())
    {
      return 0;
    }

    v5 = 7680;
  }

  appended = ktrace_file_append_start(a1, v5, 0, 0);
  if (!appended)
  {
    v10 = *__error();
    ktrace_log_init();
    if (os_log_type_enabled(ktrace_file_log, OS_LOG_TYPE_ERROR))
    {
      setup_events_chunk_cold_2();
    }

    goto LABEL_18;
  }

  v7 = appended;
  v9 = ktrace_file_append_data(a1, appended, v4, v3);
  if (v9)
  {
    *__error() = v9;
    v10 = *__error();
    ktrace_log_init();
    if (os_log_type_enabled(ktrace_file_log, OS_LOG_TYPE_ERROR))
    {
      setup_events_chunk_cold_1();
    }

LABEL_18:
    v7 = 0;
    *__error() = v10;
  }

  return v7;
}

void *ktrace_file_append_start_internal(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  v4 = a3;
  if ((a3 & 0x8000) != 0)
  {
    *__error() = 22;
    v9 = *__error();
    ktrace_log_init();
    if (os_log_type_enabled(ktrace_file_log, OS_LOG_TYPE_ERROR))
    {
      ktrace_file_append_start_internal_cold_1();
    }

    goto LABEL_8;
  }

  v5 = a4;
  if (a1 != -1 && *(a1 + 16) != 4)
  {
    if (*(a1 + 296) == 1)
    {
      v10 = *(a1 + 196);
      if (v10 == -1)
      {
        v11 = *(a1 + 280);
      }

      else
      {
        v11 = lseek(v10, 0, 2);
        if (v11 == -1)
        {
          v9 = *__error();
          ktrace_log_init();
          if (os_log_type_enabled(ktrace_file_log, OS_LOG_TYPE_ERROR))
          {
            ktrace_file_append_start_internal_cold_2();
          }

LABEL_8:
          v8 = 0;
          *__error() = v9;
          return v8;
        }
      }

      ktrace_chunk_array_read_all(a1, a1 + 80);
      ktrace_chunk_array_read_all(a1, a1 + 24);
      v12 = -v11 & 7;
      if (!v12)
      {
        goto LABEL_24;
      }

      ktrace_log_init();
      v13 = ktrace_file_log;
      v14 = os_log_type_enabled(ktrace_file_log, OS_LOG_TYPE_DEBUG);
      if (v14)
      {
        ktrace_file_append_start_internal_cold_3(v12, v13);
      }

      MEMORY[0x28223BE20](v14);
      v16 = &v20 - v15;
      bzero(&v20 - v15, v12);
      if (ktrace_file_write(a1, v16, v12, -1) >= v12)
      {
LABEL_24:
        v8 = ktrace_chunk_create(a1, a2, v4, v5, 0, v11 + v12 + 16);
        if (!v8)
        {
          return v8;
        }

        v20 = xmmword_22EE3F2A0;
        if (ktrace_file_write(a1, &v20, 0x10uLL, -1) == 16)
        {
          *(a1 + 152) = v8;
          return v8;
        }

        v19 = *__error();
        ktrace_log_init();
        if (os_log_type_enabled(ktrace_file_log, OS_LOG_TYPE_ERROR))
        {
          ktrace_file_append_start_internal_cold_5();
        }

        *__error() = v19;
        v9 = *__error();
        free(v8);
        goto LABEL_8;
      }

      v17 = *__error();
      ktrace_log_init();
      if (os_log_type_enabled(ktrace_file_log, OS_LOG_TYPE_ERROR))
      {
        ktrace_file_append_start_internal_cold_4();
      }

      *__error() = v17;
    }

    return 0;
  }

  v8 = ktrace_chunk_create(-1, a2, a3, a4, 0, 0);
  v8[2] = CFDataCreateMutable(0, 0);
  return v8;
}

uint64_t ktrace_chunk_array_read_all(uint64_t result, uint64_t a2)
{
  if (!result)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (!a2)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (!*(a2 + 8))
  {
    v3 = result;
    v4 = 0;
    do
    {
      result = ktrace_chunk_array_next(v3, a2, &v4);
    }

    while (!result && v4);
  }

  return result;
}

void *ktrace_chunk_create(uint64_t a1, uint64_t a2, __int16 a3, __int16 a4, uint64_t a5, uint64_t a6)
{
  v10 = a2;
  if (a1 != -1)
  {
    if (!a1)
    {
      ktrace_postprocess_file_internal_cold_4();
    }

    if (*(a1 + 16) == 4)
    {
      ktrace_postprocess_file_internal_cold_4();
    }
  }

  v12 = malloc_type_calloc(1uLL, 0x70uLL, 0x10A2040F61CF89BuLL);
  v14 = v12;
  if (v12)
  {
    *(v12 + 8) = v10;
    *(v12 + 18) = a3;
    *(v12 + 19) = a4;
    *v12 = a1;
    v12[1] = a5;
    v12[2] = a6;
    if (ktrace_chunk_has_subchunks(v12, v13))
    {
      v15 = v14[2];
      v16 = v14[1] + v15;
      v14[10] = 16;
      v14[11] = v15;
      v14[12] = v16;
    }
  }

  return v14;
}

off_t fd_size(uint64_t a1, uint64_t a2)
{
  if (a1 == -1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  memset(&v4, 0, sizeof(v4));
  if (!fstat(a1, &v4))
  {
    return v4.st_size;
  }

  v2 = *__error();
  ktrace_log_init();
  if (os_log_type_enabled(ktrace_file_log, OS_LOG_TYPE_ERROR))
  {
    fd_size_cold_1();
  }

  *__error() = v2;
  return -1;
}

void *ktrace_file_append_start(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == -1)
  {
    goto LABEL_12;
  }

  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  v8 = *(a1 + 200);
  if (!v8)
  {
LABEL_12:

    return ktrace_file_append_start_internal(a1, a2, a3, a4);
  }

  else
  {
    v9 = *(a1 + 232);
    if (!v9 || *(v8 + 152) != v9)
    {
      appended = ktrace_file_append_start(v8, 32779, 0, 0);
      *(a1 + 232) = appended;
      if (!appended || !ktrace_file_append_subchunk(*(a1 + 200), appended, 32780, 0, 0, (a1 + 216), 4))
      {
        return 0;
      }

      v8 = *(a1 + 200);
      v9 = *(a1 + 232);
    }

    return ktrace_file_append_start_subchunk(v8, v9, a2, a3, a4);
  }
}

uint64_t ktrace_file_append_data(uint64_t a1, uint64_t a2, UInt8 *bytes, CFIndex length)
{
  while (1)
  {
    if (!a1)
    {
      ktrace_postprocess_file_internal_cold_4();
    }

    if (!a2)
    {
      ktrace_postprocess_file_internal_cold_4();
    }

    if (!bytes)
    {
      ktrace_postprocess_file_internal_cold_4();
    }

    if (!length)
    {
      ktrace_postprocess_file_internal_cold_4();
    }

    if (a1 == -1 || *(a1 + 16) == 4)
    {
      CFDataAppendBytes(*(a2 + 16), bytes, length);
      goto LABEL_11;
    }

    v8 = *(a1 + 200);
    if (!v8)
    {
      break;
    }

    a1 = *(a1 + 200);
    if (*(v8 + 152) != a2)
    {
      ktrace_postprocess_file_internal_cold_4();
    }
  }

  if (*(a1 + 152) == a2)
  {
    v10 = *(a1 + 196);
    if (v10 != -1 && lseek(v10, 0, 2) == -1)
    {
      v9 = *__error();
      v12 = *__error();
      ktrace_log_init();
      if (os_log_type_enabled(ktrace_file_log, OS_LOG_TYPE_ERROR))
      {
        ktrace_file_append_data_cold_2();
      }

      *__error() = v12;
      goto LABEL_23;
    }

    if (ktrace_file_write(a1, bytes, length, -1) < length)
    {
      v9 = *__error();
      v11 = *__error();
      ktrace_log_init();
      if (os_log_type_enabled(ktrace_file_log, OS_LOG_TYPE_ERROR))
      {
        ktrace_file_append_data_cold_3();
      }

      *__error() = v11;
LABEL_23:
      *(a1 + 152) = 0;
      free(a2);
      return v9;
    }

LABEL_11:
    v9 = 0;
    *(a2 + 8) += length;
    return v9;
  }

  return 22;
}

uint64_t ProviderList.didStartTracing(file:)(uint64_t a1)
{
  v47 = a1;
  v46 = sub_22EE3BE64();
  v2 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v45 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = OBJC_IVAR____TtC6ktrace12ProviderList_providers;
  swift_beginAccess();
  result = *(v1 + v4);
  v6 = *(result + 16);
  if (v6)
  {
    v44 = (v2 + 8);

    v7 = (v41 + 64);
    v8 = &__block_descriptor_48_e8_32r40r_e22_v24__0__CSTypeRef_QQ_8lr32l8r40l8;
    *&v9 = 136446210;
    v43 = v9;
    *&v9 = 136315138;
    v42 = v9;
    do
    {
      v13 = *(v7 - 4);
      v14 = *(v7 - 3);
      v15 = *(v7 - 2);
      v16 = *(v7 - 1);
      v17 = *v7;
      v55 = v13;
      v56 = v14;
      v57 = v15;
      v58 = v16;
      v59 = v17;
      if ([v15 v8[353]])
      {
        v52 = v6;
        v18 = qword_27DA965C0;
        swift_unknownObjectRetain_n();

        swift_unknownObjectRetain();

        if (v18 != -1)
        {
          swift_once();
        }

        v19 = sub_22EE3BF14();
        v20 = __swift_project_value_buffer(v19, qword_27DA9C8E8);
        swift_unknownObjectRetain();

        swift_unknownObjectRetain();

        v49 = v20;
        v21 = sub_22EE3BEF4();
        v22 = sub_22EE3C4C4();

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

        v23 = os_log_type_enabled(v21, v22);
        v50 = v17;
        v53 = v13;
        if (v23)
        {
          v24 = v13;
          v25 = swift_slowAlloc();
          v26 = swift_slowAlloc();
          v54 = v26;
          *v25 = v43;

          v27 = sub_22ED7DF24(v24, v14, &v54);

          *(v25 + 4) = v27;
          _os_log_impl(&dword_22ED7A000, v21, v22, "calling provider %{public}s's didStartTracing", v25, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v26);
          MEMORY[0x2318F8320](v26, -1, -1);
          MEMORY[0x2318F8320](v25, -1, -1);
        }

        v51 = v16;
        if (qword_27DA965C8 != -1)
        {
          swift_once();
        }

        v28 = sub_22EE3BE94();
        __swift_project_value_buffer(v28, qword_27DA9C900);
        v29 = v45;
        sub_22EE3BE54();
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v54 = v31;
        *v30 = v42;

        v32 = sub_22ED7DF24(v53, v14, &v54);

        *(v30 + 4) = v32;
        v33 = sub_22EE3BE74();
        LOBYTE(v32) = sub_22EE3C574();
        v34 = sub_22EE3BE44();
        v48 = v14;
        _os_signpost_emit_with_name_impl(&dword_22ED7A000, v33, v32, v34, "04: didStartTracing", "%s", v30, 0xCu);
        v35 = v47;
        [v15 didStartTracingToFile_];
        sub_22ED7DFF0(v35);
        LOBYTE(v35) = sub_22EE3C564();
        v36 = sub_22EE3BE44();
        v37 = v48;
        _os_signpost_emit_with_name_impl(&dword_22ED7A000, v33, v35, v36, "04: didStartTracing", "%s", v30, 0xCu);

        __swift_destroy_boxed_opaque_existential_0(v31);
        MEMORY[0x2318F8320](v31, -1, -1);
        MEMORY[0x2318F8320](v30, -1, -1);
        (*v44)(v29, v46);
        swift_unknownObjectRetain();

        swift_unknownObjectRetain();

        v38 = sub_22EE3BEF4();
        v39 = sub_22EE3C4C4();

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

        if (os_log_type_enabled(v38, v39))
        {
          v10 = swift_slowAlloc();
          v11 = swift_slowAlloc();
          v54 = v11;
          *v10 = v43;

          v12 = sub_22ED7DF24(v53, v37, &v54);

          *(v10 + 4) = v12;
          _os_log_impl(&dword_22ED7A000, v38, v39, "finished time-sensitive didStartTracing from provider %{public}s", v10, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v11);
          MEMORY[0x2318F8320](v11, -1, -1);
          MEMORY[0x2318F8320](v10, -1, -1);

          swift_unknownObjectRelease();

          swift_unknownObjectRelease_n();
          v6 = v52;
          v8 = &__block_descriptor_48_e8_32r40r_e22_v24__0__CSTypeRef_QQ_8lr32l8r40l8;
        }

        else
        {

          swift_unknownObjectRelease();

          swift_unknownObjectRelease_n();
          v6 = v52;
          v8 = &__block_descriptor_48_e8_32r40r_e22_v24__0__CSTypeRef_QQ_8lr32l8r40l8;
        }
      }

      v7 += 5;
      --v6;
    }

    while (v6);
  }

  return result;
}

unint64_t sub_22ED7DF24(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_22ED7E480(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_22ED7E678(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

void *sub_22ED7DFF0(void *result)
{
  if (result)
  {
    v2 = result;
    result = ktrace_file_appending_chunk(result);
    if (result)
    {
      v4 = result;
      LODWORD(v17) = ktrace_chunk_tag(result, v3);
      sub_22EDE36AC();
      v5 = sub_22EE3C2E4();
      v7 = v6;
      if (qword_27DA965C0 != -1)
      {
        swift_once();
      }

      v8 = sub_22EE3BF14();
      __swift_project_value_buffer(v8, qword_27DA9C8E8);
      v9 = *v1;
      v10 = v1[1];
      v17 = v1[4];

      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      sub_22EDE3700(&v17, &v16);

      v11 = sub_22EE3BEF4();
      v12 = sub_22EE3C4B4();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      sub_22EDDBA48(&v17, &qword_27DA94FD8, qword_22EE400D0);

      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v16 = v14;
        *v13 = 136446466;
        *(v13 + 4) = sub_22ED7DF24(v9, v10, &v16);
        *(v13 + 12) = 2082;
        v15 = sub_22ED7DF24(v5, v7, &v16);

        *(v13 + 14) = v15;
        _os_log_impl(&dword_22ED7A000, v11, v12, "\tprovider %{public}s left chunk with tag 0x%{public}s unfinished", v13, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x2318F8320](v14, -1, -1);
        MEMORY[0x2318F8320](v13, -1, -1);
      }

      else
      {
      }

      return ktrace_file_append_finish(v2, v4);
    }
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

void *sub_22ED7E288(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_22ED7E3C0(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_22EE3C8C4();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_22EE3C234();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_22ED7E3C0(v10, 0);
        result = sub_22EE3C844();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

void *sub_22ED7E3C0(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA94EF0, &qword_22EE40540);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

void *sub_22ED7E434(uint64_t a1, unint64_t a2)
{
  v3 = sub_22ED7E288(a1, a2);
  sub_22ED7E58C(&unk_2843A0618);
  return v3;
}

unint64_t sub_22ED7E480(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_22ED7E434(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_22EE3C8C4();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_22ED7E58C(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_22EDDA464(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_22ED7E678(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t _session_start_live(unint64_t a1)
{
  v99 = *MEMORY[0x277D85DE8];
  *v98 = xmmword_22EE3F2E8;
  v96 = 0u;
  v97 = 0u;
  v94 = 0u;
  v95 = 0u;
  v92 = 0u;
  v93 = 0u;
  v90 = 0u;
  v91 = 0u;
  v88 = 0u;
  v89 = 0u;
  v86 = 0u;
  v87 = 0u;
  v84 = 0u;
  v85 = 0u;
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
  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  memset(buf, 0, sizeof(buf));
  v66 = 648;
  if (sysctl(v98, 4u, buf, &v66, 0, 0) < 0)
  {
    _session_start_live_cold_16();
  }

  if ((buf[32] & 4) == 0)
  {
    _session_start_live_cold_15();
  }

  ktrace_log_init();
  v2 = ktrace_log;
  if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_22ED7A000, v2, OS_LOG_TYPE_INFO, "starting to trace live", buf, 2u);
  }

  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if ((*a1 | 2) != 2)
  {
    _session_start_live_cold_13(*a1);
  }

  v64 = 0;
  v65 = 0;
  v68 = 0;
  v98[0] = 4;
  if (sysctlbyname("ktrace.state", &v68, v98, 0, 0))
  {
    goto LABEL_8;
  }

  if (v68 == 1)
  {
    pid = -1;
    v66 = 4;
    if (sysctlbyname("ktrace.owning_pid", &pid, &v66, 0, 0))
    {
LABEL_8:
      v3 = *__error();
      if (v3)
      {
        v4 = v3;
      }

      else
      {
        v4 = 22;
      }

      goto LABEL_11;
    }

    v7 = pid;
    if (pid >= 1 && v7 != getpid())
    {
      memset(&buf[3], 0, 61);
      memset(buf, 63, 3);
      if (proc_name(pid, buf, 0x40u) > 0)
      {
        v4 = 16;
LABEL_11:
        *__error() = v4;
        v5 = *__error();
        ktrace_log_init();
        if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
        {
          _session_start_live_cold_1();
        }

        *__error() = v5;
        return v4;
      }
    }
  }

  v4 = _session_machine_init(a1);
  if (v4)
  {
    return v4;
  }

  v8 = 0;
  atomic_compare_exchange_strong(&live_session, &v8, a1);
  if (v8)
  {
    if (*a1 == 2)
    {
      v10 = atomic_load(&live_session);
      v11 = v10;
      atomic_compare_exchange_strong(&live_session, &v11, a1);
      if (v11 == v10)
      {
        goto LABEL_23;
      }

      v12 = *__error();
      ktrace_log_init();
      if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
      {
        _session_start_live_cold_3();
      }
    }

    else
    {
      v12 = *__error();
      ktrace_log_init();
      if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
      {
        _session_start_live_cold_2();
      }
    }

    *__error() = v12;
    return 22;
  }

LABEL_23:
  if ((*(a1 + 224) & 0x80) != 0)
  {
    v9 = mach_continuous_time();
  }

  else
  {
    v9 = mach_absolute_time();
  }

  *(a1 + 504) = v9;
  if (!*a1)
  {
    *(a1 + 520) = kttimesync_timestamp_from_ns(a1 + 432, *(a1 + 512)) + v9;
    v14 = trace_initialize(*(a1 + 336));
    if (v14)
    {
      v4 = v14;
      v15 = *__error();
      ktrace_log_init();
      if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
      {
        _session_start_live_cold_4();
      }

      *__error() = v15;
      goto LABEL_49;
    }

    v27 = *(a1 + 828);
    v28 = *(a1 + 224);
    v29 = ((4 * v28) | (v27 >> 1)) & 0x202;
    if ((v28 & 0x200) != 0)
    {
      v30 = v29;
    }

    else
    {
      v30 = v29 | 0x400;
    }

    if ((v27 & 2) != 0)
    {
      matched = trace_set_event_match_disable(a1 + 728, a1 + 768);
      if (matched)
      {
        v4 = matched;
        v32 = *__error();
        ktrace_log_init();
        if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
        {
          _session_start_live_cold_5();
        }

        v20 = 0;
        v26 = 0;
        *__error() = v32;
        goto LABEL_140;
      }

      v30 = v30 | 0x800;
    }

    else if (!v30)
    {
      goto LABEL_128;
    }

    v60 = trace_set_flags(v30);
    if (v60)
    {
      v4 = v60;
      v20 = 0;
      goto LABEL_130;
    }

LABEL_128:
    v61 = apply_kernel_typefilter_and_pid_filter(a1);
    v20 = 0;
    if (!v61)
    {
      v18 = 1;
      v13 = 0;
      goto LABEL_51;
    }

    v4 = v61;
LABEL_130:
    v26 = 0;
    goto LABEL_140;
  }

  if (*a1 == 2)
  {
    if (*(a1 + 4) == 1)
    {
      v13 = ktrace_capture_live_stackshot(*(a1 + 168));
      if (!v13)
      {
        v4 = *__error();
LABEL_49:
        atomic_exchange(&live_session, 0);
LABEL_151:
        free(v65);
        return v4;
      }
    }

    else
    {
      v13 = 0;
    }

    v16 = trace_set_enable(0);
    if (v16)
    {
      v4 = v16;
      v17 = *__error();
      ktrace_log_init();
      if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
      {
        _session_start_live_cold_6();
      }

      *__error() = v17;
      if (v13)
      {
        stackshot_config_dealloc();
      }

      goto LABEL_49;
    }
  }

  else
  {
    v13 = 0;
  }

  v18 = 0;
LABEL_51:
  if ((*(a1 + 4) - 1) <= 1)
  {
    current = ktrace_config_create_current();
    if (current)
    {
      v20 = current;
      ktrace_config_enable_configured(current);
      v21 = *(a1 + 696);
      if (v21)
      {
        ktrace_config_set_reason(v20, v21);
      }

      v22 = *(a1 + 704);
      if (v22)
      {
        ktrace_config_set_command(v20, v22);
      }

      v23 = *(a1 + 712);
      if (v23)
      {
        ktrace_config_set_trigger_kind(v20, v23);
      }

      if (*a1 == 2 || *(a1 + 4) == 2)
      {
        ktrace_config_set_context_kind(v20, 2u);
      }

      v24 = *(a1 + 600);
      if (v24)
      {
        *buf = 0;
        if (![v24 shouldStartTracingWithConfiguration:v20 error:{buf, v64}])
        {
          v33 = *__error();
          ktrace_log_init();
          v34 = ktrace_log;
          if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
          {
            _session_start_live_cold_7(buf, v33, v34);
          }

          v26 = 0;
          *__error() = v33;
          v4 = 45;
LABEL_136:
          if (v13)
          {
            stackshot_config_dealloc();
            if ((v18 & 1) == 0)
            {
LABEL_147:
              atomic_exchange(&live_session, 0);
              if (!v26)
              {
                goto LABEL_149;
              }

              goto LABEL_148;
            }
          }

          else if (!v18)
          {
            goto LABEL_147;
          }

          goto LABEL_140;
        }
      }

      v25 = ktrace_config_serialize(v20, &v65, &v64);
      if (v25)
      {
        v4 = v25;
        v26 = 0;
        goto LABEL_136;
      }

      ktrace_config_destroy(v20);
    }
  }

  v26 = *a1 == 0;
  if (!*a1)
  {
    [*(a1 + 600) willStartTracingWithFile:*(a1 + 648)];
    ktrace_log_init();
    v40 = ktrace_log;
    if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_DEBUG))
    {
      _session_start_live_cold_8(v40, v41, v42, v43, v44, v45, v46, v47);
    }

    v48 = trace_set_enable(1);
    if (v48)
    {
      v4 = v48;
      v20 = 0;
      v26 = 1;
      goto LABEL_136;
    }

    v50 = *(a1 + 4);
    if (v50 == 2)
    {
      ktrace_time_ringbuffer_tracing_started(*(a1 + 640));
      v50 = *(a1 + 4);
    }

    if (v50 == 1)
    {
      ktrace_log_init();
      v51 = ktrace_log;
      if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_DEBUG))
      {
        _session_start_live_cold_9(v51, v52, v53, v54, v55, v56, v57, v58);
      }

      v13 = ktrace_capture_live_stackshot(*(a1 + 168));
      if (!v13)
      {
        v4 = *__error();
        v20 = 0;
        if ((v18 & 1) == 0)
        {
          atomic_exchange(&live_session, 0);
          goto LABEL_148;
        }

        v26 = 1;
        goto LABEL_140;
      }
    }

    if (*(a1 + 268))
    {
      global_queue = dispatch_get_global_queue(25, 0);
      dispatch_async(global_queue, &__block_literal_global_3);
    }
  }

  kttimesync_init(a1 + 432, 0, (*(a1 + 224) >> 7) & 1);
  if (*(a1 + 288))
  {
    memset(buf, 0, 24);
    v98[0] = 24;
    if (!sysctlbyname("machdep.remotetime.conversion_params", buf, v98, 0, 0))
    {
      *(a1 + 528) = *buf;
      *(a1 + 544) = *&buf[16];
    }
  }

  v35 = *(a1 + 4);
  if (!v35)
  {
    populate_threadmap(a1, 0);
    v49 = _session_cpus_init(a1);
    if (v49)
    {
      v4 = v49;
      v20 = 0;
      goto LABEL_136;
    }

    v35 = *(a1 + 4);
  }

  if ((v35 - 1) <= 1)
  {
    v36 = *(a1 + 648);
    if (!v36)
    {
      ktrace_postprocess_file_internal_cold_4();
    }

    if (ktrace_file_header_append_live_cpu_map(v36))
    {
      v37 = *(a1 + 664);
      if (v37)
      {
        (*(v37 + 16))(v37, *(a1 + 648));
      }

      if (kttimesync_append((a1 + 432), *(a1 + 648)))
      {
        if (!v65)
        {
LABEL_94:
          if (([*(a1 + 600) containsWithName:{@"Required", v64}] & 1) == 0)
          {
            ktrace_file_append_ioreg(*(a1 + 648));
          }

          if (*(a1 + 4) != 1)
          {
LABEL_100:
            if ((ktrace_file_append_live_thread_map(*(a1 + 648)) || !*__error()) && (!*(a1 + 288) || ktrace_file_append_chunk(*(a1 + 648), 32782, 1, 0, (a1 + 528), 24)))
            {
              goto LABEL_103;
            }

            goto LABEL_135;
          }

          if (!v13)
          {
            ktrace_postprocess_file_internal_cold_4();
          }

          appended = ktrace_file_append_stackshot(*(a1 + 648), v13);
          stackshot_config_dealloc();
          if (appended)
          {
            v13 = 0;
            goto LABEL_100;
          }

          v20 = 0;
          v4 = *__error();
          if ((v18 & 1) == 0)
          {
            goto LABEL_147;
          }

LABEL_140:
          v62 = trace_remove_internal();
          if (!v62)
          {
            goto LABEL_147;
          }

          *__error() = v62;
          v63 = *__error();
          ktrace_log_init();
          if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
          {
            _session_start_live_cold_12();
          }

          *__error() = v63;
          atomic_exchange(&live_session, 0);
          if (!v26)
          {
            goto LABEL_149;
          }

LABEL_148:
          [*(a1 + 600) didEndTracingWithFile:{*(a1 + 648), v64, v65}];
LABEL_149:
          if (v20)
          {
            ktrace_config_destroy(v20);
          }

          goto LABEL_151;
        }

        if (ktrace_file_append_chunk(*(a1 + 648), 32774, 1, 4, v65, v64))
        {
          free(v65);
          v65 = 0;
          goto LABEL_94;
        }
      }
    }

LABEL_135:
    v20 = 0;
    v4 = *__error();
    goto LABEL_136;
  }

LABEL_103:
  if (*(a1 + 592))
  {
    ktrace_client_start_tracing();
  }

  if ((*(a1 + 4) - 1) <= 1)
  {
    [*(a1 + 600) didStartTracingWithFile:*(a1 + 648)];
  }

  v39 = drain_events_block(a1);
  dispatch_async(*(a1 + 128), v39);
  _Block_release(v39);
  if (v13)
  {
    stackshot_config_dealloc();
  }

  return 0;
}

uint64_t sub_22ED7F0E0@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a5@<X8>)
{
  v32 = a5;
  v31 = *(a3 + 8);
  v33 = a2;
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v6 = swift_checkMetadataState();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v30 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v29 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v29 - v13;
  v15 = swift_projectBox();
  swift_beginAccess();
  v16 = *(v7 + 16);
  v29 = v15;
  v34 = v16;
  v35 = v7 + 16;
  v16(v14, v15, v6);
  if (sub_22EE3C774())
  {
    if (sub_22EE3C764() >= 64)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v17 = sub_22EE3C774();
    v18 = sub_22EE3C764();
    if (v17)
    {
      if (v18 <= 64)
      {
        swift_getAssociatedConformanceWitness();
        sub_22EE3CBB4();
        sub_22EE3CB94();
        v19 = sub_22EE3C0D4();
        v20 = *(v7 + 8);
        v21 = v12;
        v20();
        if (v19)
        {
          v22 = sub_22EE3C754();
          (v20)(v14, v6);
          if (!v22)
          {
            return (*(*(v33 - 8) + 56))(v32, 1, 1);
          }
        }

        else
        {
          (v20)(v14, v6);
        }

        goto LABEL_11;
      }

LABEL_12:
      v37 = 0;
      sub_22ED80F1C();
      sub_22EE3C704();
      v28 = sub_22EE3C0E4();
      v20 = *(v7 + 8);
      v21 = v12;
      (v20)(v12, v6);
      (v20)(v14, v6);
      if (v28)
      {
        return (*(*(v33 - 8) + 56))(v32, 1, 1);
      }

LABEL_11:
      v24 = v29;
      swift_beginAccess();
      v34(v21, v24, v6);
      v25 = sub_22EE3C724();
      (v20)(v21, v6);
      v36 = 1;
      sub_22ED80F1C();
      v26 = v30;
      sub_22EE3C784();
      v36 = v25;
      sub_22EE3C744();
      (v20)(v26, v6);
      sub_22EE3C714();
      swift_beginAccess();
      sub_22EE3C734();
      swift_endAccess();
      (v20)(v26, v6);
      v34(v26, v21, v6);
      sub_22EE3C384();
      return (v20)(v21, v6);
    }

    if (v18 >= 64)
    {
      goto LABEL_12;
    }
  }

  v21 = v12;
  v23 = sub_22EE3C754();
  v20 = *(v7 + 8);
  (v20)(v14, v6);
  if (v23)
  {
    goto LABEL_11;
  }

  return (*(*(v33 - 8) + 56))(v32, 1, 1);
}

uint64_t sub_22ED7F678()
{
  v1 = v0;
  v109 = *MEMORY[0x277D85DE8];
  v2 = sub_22EE3BF14();
  v92 = *(v2 - 8);
  v93 = v2;
  MEMORY[0x28223BE20](v2);
  v95 = &v87[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95150, qword_22EE44A90);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v87[-v5];
  v7 = sub_22EE3BCB4();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v91 = &v87[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v87[-v12];
  (*(*v0 + 248))(v11);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_22EDDBA48(v6, &qword_27DA95150, qword_22EE44A90);
    result = sub_22EE3C994();
    __break(1u);
  }

  else
  {
    v14 = *(v8 + 32);
    v100 = v13;
    v14(v13, v6, v7);
    v15 = v0 + OBJC_IVAR____TtC6ktrace9Recording_options;
    v94 = type metadata accessor for RecordingOptions.Options(0);
    v16 = *(v15 + v94[7]);
    v17 = *(v16 + 16);
    v18 = MEMORY[0x277D84F90];
    v98 = v8;
    v99 = v7;
    v96 = v15;
    if (v17)
    {
      *&v102 = MEMORY[0x277D84F90];
      sub_22EE1B668(0, v17, 0);
      v18 = v102;
      v19 = (v16 + 48);
      do
      {
        v20 = *(v19 - 2);
        v21 = *(v19 - 1);
        v22 = *v19;
        sub_22EE1D2C8(v20, v21, *v19);
        sub_22EDEE188(v20, v21, v22, &v104);
        sub_22EE1D2E0(v20, v21, v22);
        *&v102 = v18;
        v24 = *(v18 + 16);
        v23 = *(v18 + 24);
        if (v24 >= v23 >> 1)
        {
          sub_22EE1B668((v23 > 1), v24 + 1, 1);
          v18 = v102;
        }

        v19 += 24;
        *(v18 + 16) = v24 + 1;
        sub_22EE15590(&v104, v18 + 40 * v24 + 32);
        --v17;
      }

      while (v17);
      v8 = v98;
      v7 = v99;
      v15 = v96;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95848, &unk_22EE43BA8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22EE3F500;
    v26 = *(v1 + OBJC_IVAR____TtC6ktrace9Recording_kernelDisableWaiter);
    *(inited + 56) = type metadata accessor for KernelDisableWaiter();
    *(inited + 64) = &off_2843A1570;
    *(inited + 32) = v26;
    *&v104 = v18;

    sub_22EE1C720(inited);
    v27 = v104;
    type metadata accessor for WaitGroup();
    v28 = *(v1 + OBJC_IVAR____TtC6ktrace9Recording_reporter);
    v29 = *(v1 + OBJC_IVAR____TtC6ktrace9Recording_waitQueue);

    v30 = v29;
    v31 = v97;
    v32 = sub_22EDED528(v27, v30, v28);
    if (v31)
    {
      return (*(v8 + 8))(v100, v7);
    }

    v97 = v28;
    v90 = 0;
    v34 = (*(*v1 + 328))(v32);
    v89 = *(v1 + OBJC_IVAR____TtC6ktrace9Recording_recording);
    v35 = *(v89 + 40);
    v36 = v100;
    if (v35)
    {
      v104 = xmmword_22EE43B60;
      LODWORD(v102) = 2;
      *(&v102 + 1) = &v104;
      _Block_copy(v35);
      (v35)[2](v35, &v102);
      _Block_release(v35);
    }

    (*(*v97 + 176))(v34);
    v37 = v91;
    (*(v8 + 16))(v91, v36, v7);
    v38 = sub_22EE3BEF4();
    v39 = sub_22EE3C4C4();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      *&v104 = v41;
      *v40 = 136315138;
      v88 = v39;
      v42 = sub_22EE3BC94();
      v43 = v8;
      v45 = v44;
      v91 = *(v43 + 8);
      (v91)(v37, v7);
      v46 = sub_22ED7DF24(v42, v45, &v104);

      *(v40 + 4) = v46;
      _os_log_impl(&dword_22ED7A000, v38, v88, "writing in-process file to %s)", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v41);
      MEMORY[0x2318F8320](v41, -1, -1);
      v47 = v40;
      v15 = v96;
      MEMORY[0x2318F8320](v47, -1, -1);
    }

    else
    {

      v91 = *(v8 + 8);
      (v91)(v37, v7);
    }

    (*(v92 + 8))(v95, v93);
    v95 = *(v1 + OBJC_IVAR____TtC6ktrace9Recording_session);
    sub_22EE3BC94();
    v48 = v94;
    if (*(v15 + v94[17]))
    {
      v49 = 4;
    }

    else
    {
      v49 = 0;
    }

    v107 = sub_22EE1D2F8;
    v108 = v1;
    *&v104 = MEMORY[0x277D85DD0];
    *(&v104 + 1) = 1107296256;
    v105 = sub_22EE18EE4;
    v106 = &block_descriptor_12;
    v50 = v15;
    v51 = _Block_copy(&v104);

    v52 = sub_22EE3C184();

    started = ktrace_start_writing_file(v95, (v52 + 32), v49, v51, 0);

    _Block_release(v51);
    if (started)
    {
      type metadata accessor for KTraceRecordError(0);
      sub_22EE1B620(&qword_27DA94D80, type metadata accessor for KTraceRecordError, &unk_22EE43AF0);
      swift_allocError();
      *v55 = started;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      v56 = v99;
      v57 = v100;
      return (v91)(v57, v56);
    }

    else
    {
      v58 = *(v50 + v48[8]);
      v59 = *(v58 + 16);
      v60 = MEMORY[0x277D84F90];
      if (v59)
      {
        *&v102 = MEMORY[0x277D84F90];
        sub_22EE1B668(0, v59, 0);
        v60 = v102;
        v61 = (v58 + 48);
        do
        {
          v62 = *(v61 - 2);
          v63 = *(v61 - 1);
          v64 = *v61;
          sub_22EE1D2C8(v62, v63, *v61);
          sub_22EDEE188(v62, v63, v64, &v104);
          sub_22EE1D2E0(v62, v63, v64);
          *&v102 = v60;
          v66 = *(v60 + 16);
          v65 = *(v60 + 24);
          if (v66 >= v65 >> 1)
          {
            sub_22EE1B668((v65 > 1), v66 + 1, 1);
            v60 = v102;
          }

          v61 += 24;
          *(v60 + 16) = v66 + 1;
          v54 = sub_22EE15590(&v104, v60 + 40 * v66 + 32);
          --v59;
        }

        while (v59);
        v67 = v99;
        v68 = v96;
      }

      else
      {
        v68 = v50;
        v67 = v99;
      }

      v69 = (*(*v1 + 320))(v54);
      v70 = v90;
      if (v69)
      {
        sub_22ED8044C(v60);
        if (v70)
        {
          (v91)(v100, v67);
        }

        v90 = 0;
      }

      *&v102 = 0;
      *(&v102 + 1) = 0xE000000000000000;
      sub_22EE3C864();
      v101 = v102;
      v103 = MEMORY[0x277D837D0];
      *&v102 = 0x676E697472617473;
      *(&v102 + 1) = 0xE800000000000000;
      v71 = sub_22ED804E8();
      sub_22ED80590(&v102, *v71);
      __swift_destroy_boxed_opaque_existential_0(&v102);
      v72 = MEMORY[0x2318F58F0](6299706, 0xE300000000000000);
      (*(*v1 + 224))(&v104, v72);
      v74 = *(&v104 + 1);
      v73 = v104;

      sub_22ED80F70(&v104);
      MEMORY[0x2318F58F0](v73, v74);

      MEMORY[0x2318F58F0](0x2065636172742027, 0xEB00000000207461);
      v75 = sub_22EE3BC84();
      MEMORY[0x2318F58F0](v75);

      MEMORY[0x2318F58F0](0x1000000000000014, 0x800000022EE49C20);
      v76 = v101;
      LOBYTE(v74) = sub_22ED80B20();
      v77 = sub_22ED808E4();
      (*(*v97 + 216))(v76, *(&v76 + 1), v74 & 1, v77 & 1);

      v78 = *(v89 + 40);
      if (v78)
      {
        v102 = xmmword_22EE43B60;
        LODWORD(v101) = 3;
        *(&v101 + 1) = &v102;
        _Block_copy(v78);
        (v78)[2](v78, &v101);
        _Block_release(v78);
      }

      v79 = *(v68 + v94[12]);
      v80 = v79 + 40;
      v81 = -*(v79 + 16);
      v82 = -1;
      while (v81 + v82 != -1)
      {
        if (++v82 >= *(v79 + 16))
        {
          __break(1u);
        }

        v83 = v80 + 16;
        v84 = sub_22EE3C184();
        v85 = notify_post((v84 + 32));

        v80 = v83;
        if (v85)
        {
          type metadata accessor for KTraceRecordError(0);
          sub_22EE1B620(&qword_27DA94D80, type metadata accessor for KTraceRecordError, &unk_22EE43AF0);
          swift_allocError();
          *v86 = v85;
          swift_storeEnumTagMultiPayload();
          swift_willThrow();
          v57 = v100;
          v56 = v67;
          return (v91)(v57, v56);
        }
      }

      return (v91)(v100, v67);
    }
  }

  return result;
}

void *drain_events_block(uint64_t a1)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x3052000000;
  v7 = __Block_byref_object_copy__1;
  v8 = __Block_byref_object_dispose__1;
  v9 = 0;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __drain_events_block_block_invoke;
  v3[3] = &unk_27886E8C0;
  v3[4] = &v4;
  v3[5] = a1;
  v1 = _Block_copy(v3);
  v5[5] = v1;
  _Block_object_dispose(&v4, 8);
  return v1;
}

__n128 __Block_byref_object_copy__0(void *a1, uint64_t a2)
{
  a1[5] = 0;
  a1[6] = 0;
  a1[7] = 0;
  result = *(a2 + 40);
  *(a1 + 5) = result;
  a1[7] = *(a2 + 56);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  return result;
}

void *sub_22ED8044C(uint64_t a1)
{
  v3 = *(a1 + 16);
  result = (a1 + 32);
  v5 = v3 + 1;
  do
  {
    if (!--v5)
    {
      break;
    }

    v6 = result + 5;
    v7 = result[3];
    v8 = result[4];
    __swift_project_boxed_opaque_existential_1(result, v7);
    (*(v8 + 8))(v1[3], v1[4], v1[5], v7, v8);
    result = v6;
  }

  while (!v2);
  return result;
}

unint64_t sub_22ED804F4()
{
  result = qword_27DA951C8;
  if (!qword_27DA951C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA951C8);
  }

  return result;
}

uint64_t sub_22ED805A8(char a1, __int16 a2, uint64_t a3)
{
  if (a1 == 8)
  {
    v4 = 0xE200000000000000;
    v5 = 23323;
    if ((a2 & 0x100) != 0)
    {
LABEL_3:

      goto LABEL_8;
    }
  }

  else
  {
    v12 = 91;
    v6 = sub_22EE3CB84();
    MEMORY[0x2318F58F0](v6);

    v4 = 0xE100000000000000;
    MEMORY[0x2318F58F0](109, 0xE100000000000000);
    MEMORY[0x2318F58F0](0x3B353B38335B1BLL, 0xE700000000000000);

    v5 = 59;
    if ((a2 & 0x100) != 0)
    {
      goto LABEL_3;
    }
  }

  MEMORY[0x2318F58F0](v5, v4, a3);

  v7 = sub_22ED807DC();
  v8 = sub_22ED80EC8();
  sub_22ED80940(&type metadata for ANSIAttributes, v7, v8);
  sub_22EE3C914();

  sub_22EE3C9E4();
  if ((v12 & 1) == 0)
  {
    do
    {
      v11 = sub_22EE3CB84();
      v13 = v9;
      MEMORY[0x2318F58F0](109, 0xE100000000000000);
      MEMORY[0x2318F58F0](v11, v13);

      sub_22EE3C9E4();
    }

    while (BYTE1(v11) != 1);
  }

LABEL_8:
  sub_22EE3C924();
  MEMORY[0x2318F58F0](0, 0xE000000000000000);

  return MEMORY[0x2318F58F0](1831885595, 0xE400000000000000);
}

unint64_t sub_22ED807DC()
{
  result = qword_27DA951A0;
  if (!qword_27DA951A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA951A0);
  }

  return result;
}

unint64_t sub_22ED80834()
{
  result = qword_27DA951B8;
  if (!qword_27DA951B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA951B8);
  }

  return result;
}

unint64_t sub_22ED80888()
{
  result = qword_27DA951C0;
  if (!qword_27DA951C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA951C0);
  }

  return result;
}

unint64_t sub_22ED808EC()
{
  result = qword_27DA951D0;
  if (!qword_27DA951D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA951D0);
  }

  return result;
}

uint64_t sub_22ED80940(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  v6 = swift_allocBox();
  sub_22EE3C374();
  v7 = swift_allocObject();
  v7[2] = a1;
  v7[3] = a2;
  v7[4] = a3;
  v7[5] = v6;
  v8 = sub_22EE3C7E4();
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FCFF0](sub_22ED80A6C, v7, a1, v8, WitnessTable);
}

uint64_t sub_22ED80A34()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22ED80A6C@<X0>(uint64_t *a1@<X8>)
{
  v4 = *(v1 + 32);
  v3 = *(v1 + 40);
  v5 = swift_allocObject();
  *(v5 + 16) = *(v1 + 16);
  *(v5 + 32) = v4;
  *(v5 + 40) = v3;

  result = sub_22EE3C7F4();
  *a1 = result;
  return result;
}

uint64_t sub_22ED80B28(uint64_t a1, unint64_t a2, char a3, char a4)
{
  v5 = v4;
  v10 = sub_22EE3BF14();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA94FF8, &unk_22EE40510);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_22EE3F500;
  v26 = 0;
  v27 = 0xE000000000000000;
  if (a4)
  {
    v15 = 13;
  }

  else
  {
    v15 = 0;
  }

  if (a4)
  {
    v16 = 0xE100000000000000;
  }

  else
  {
    v16 = 0xE000000000000000;
  }

  MEMORY[0x2318F58F0](v15, v16);

  v17 = sub_22ED81218(a1, a2);
  MEMORY[0x2318F58F0](v17);

  v18 = v26;
  v19 = v27;
  *(v14 + 56) = MEMORY[0x277D837D0];
  *(v14 + 32) = v18;
  *(v14 + 40) = v19;
  swift_beginAccess();
  sub_22ED82560();
  sub_22EE3CC44();
  swift_endAccess();

  if (a3)
  {
    (*(*v5 + 176))(result);

    v21 = sub_22EE3BEF4();
    v22 = sub_22EE3C4C4();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v26 = v24;
      *v23 = 136446210;
      *(v23 + 4) = sub_22ED7DF24(a1, a2, &v26);
      _os_log_impl(&dword_22ED7A000, v21, v22, "%{public}s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v24);
      MEMORY[0x2318F8320](v24, -1, -1);
      MEMORY[0x2318F8320](v23, -1, -1);
    }

    return (*(v11 + 8))(v13, v10);
  }

  return result;
}

uint64_t sub_22ED80DFC@<X0>(void *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC6ktrace9Recording_plan;
  swift_beginAccess();
  memcpy(__dst, (v1 + v3), 0x141uLL);
  memcpy(a1, (v1 + v3), 0x141uLL);
  return sub_22ED80E90(__dst, v5);
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

unint64_t sub_22ED80EC8()
{
  result = qword_27DA951A8;
  if (!qword_27DA951A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA951A8);
  }

  return result;
}

unint64_t sub_22ED80F1C()
{
  result = qword_27DA957A0;
  if (!qword_27DA957A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA957A0);
  }

  return result;
}

unint64_t sub_22ED80FA0()
{
  result = qword_27DA95220;
  if (!qword_27DA95220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA95220);
  }

  return result;
}

BOOL _session_end_live(uint64_t a1)
{
  v1 = a1;
  atomic_compare_exchange_strong(&live_session, &v1, 0);
  return v1 == a1;
}

uint64_t sub_22ED81010@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC6ktrace8Reporter_logger;
  swift_beginAccess();
  v4 = sub_22EE3BF14();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_22ED8109C(char a1, uint64_t *a2, uint64_t a3, unint64_t a4, char a5)
{
  v14 = sub_22ED8260C();
  v16 = v14;
  v17 = v15;
  if (a5)
  {
    v18 = *(v5 + 7);
    v19 = v13 - v18;
    if (v13 >= v18)
    {
      v6 = *(v5 + 5);
      v7 = *(v5 + 6);
      *(v5 + 5) = v14;
      *(v5 + 6) = v15;
      *(v5 + 7) = v13;
      goto LABEL_7;
    }
  }

  else
  {
    v20 = v13 >= a4;
    v19 = v13 - a4;
    if (v20)
    {
      v6 = *&a2;
      v7 = *&a3;
LABEL_7:
      v5 = (*(*v5 + 224))(v27);
      a2 = v21;
      a3 = *v21;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *a2 = a3;
      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_8;
      }

      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_12:
  *&a3 = COERCE_DOUBLE(sub_22EDF3BD4(0, *(a3 + 16) + 1, 1, a3));
  *a2 = a3;
LABEL_8:
  v24 = *(a3 + 16);
  v23 = *(a3 + 24);
  if (v24 >= v23 >> 1)
  {
    *&a3 = COERCE_DOUBLE(sub_22EDF3BD4((v23 > 1), v24 + 1, 1, a3));
    *a2 = a3;
  }

  *(a3 + 16) = v24 + 1;
  v25 = a3 + 32 * v24;
  *(v25 + 32) = a1;
  *(v25 + 40) = v16 - v6;
  *(v25 + 48) = v17 - v7;
  *(v25 + 56) = v19;
  v5(v27, 0);
  return v19;
}

id sub_22ED81218(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_22EE3BDA4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22EE3BD94();
  sub_22EE3BD34();
  v11 = v10;
  (*(v7 + 8))(v9, v6);
  v17[0] = 43;
  v17[1] = 0xE100000000000000;
  result = [*(v3 + OBJC_IVAR____TtC6ktrace8Reporter_updateFormatter) stringFromTimeInterval_];
  if (result)
  {
    v13 = result;
    v14 = sub_22EE3C124();
    v16 = v15;

    MEMORY[0x2318F58F0](v14, v16);

    MEMORY[0x2318F58F0](8250, 0xE200000000000000);
    MEMORY[0x2318F58F0](a1, a2);
    return v17[0];
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22ED8138C()
{
  result = (*(*v0 + 320))();
  if (result)
  {
    v2 = sub_22ED8250C();

    if (v2)
    {
      v3 = *(v2 + 16);
      if (v3)
      {
        v19 = *(*v0 + 304);
        v15 = *(**(v0 + OBJC_IVAR____TtC6ktrace9Recording_reporter) + 216);
        v4 = (v2 + 48);
        do
        {
          v5 = *(v4 - 2);
          v6 = *(v4 - 1);
          v7 = *v4;
          v4 += 24;
          sub_22ED82DFC(v5, v6, v7);
          sub_22ED82DFC(v5, v6, v7);
          v19(v5, v6, v7);
          v17 = 0;
          v18 = 0xE000000000000000;
          v16[3] = MEMORY[0x277D837D0];
          v16[0] = 0x676E69646E65;
          v16[1] = 0xE600000000000000;
          v8 = sub_22ED804E8();
          sub_22ED80590(v16, *v8);
          __swift_destroy_boxed_opaque_existential_0(v16);
          MEMORY[0x2318F58F0](8250, 0xE200000000000000);
          v9 = sub_22ED82744(v5, v6, v7);
          v11 = v10;
          sub_22ED83014(v5, v6, v7);
          MEMORY[0x2318F58F0](v9, v11);

          v12 = v17;
          v13 = v18;
          v14 = sub_22ED80B20();
          v15(v12, v13, v14 & 1, 1);

          --v3;
        }

        while (v3);
      }

      else
      {
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22ED815C0(uint64_t a1, uint64_t a2)
{
  v94 = a1;
  v102 = *MEMORY[0x277D85DE8];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95150, qword_22EE44A90);
  MEMORY[0x28223BE20](v2 - 8);
  v85[0] = v85 - v3;
  v4 = sub_22EE3BCB4();
  v5 = *(v4 - 8);
  v85[2] = v4;
  v85[3] = v5;
  MEMORY[0x28223BE20](v4);
  v85[1] = v85 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95870, &qword_22EE43D30);
  MEMORY[0x28223BE20](v7 - 8);
  v91 = v85 - v8;
  v9 = type metadata accessor for RecordingOptions(0);
  v92 = *(v9 - 8);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = v85 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = v85 - v13;
  v90 = type metadata accessor for KTraceRecordError(0);
  MEMORY[0x28223BE20](v90);
  v89 = v85 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  nullsub_1();
  v17 = v16;
  *&v98 = v16;
  sub_22EE1D804();
  v18 = sub_22EE3C334();
  v97 = MEMORY[0x277D84F90];
  sub_22EDD2DD4(0, v18 & ~(v18 >> 63), 0);
  v19 = v97;
  v96 = v17;
  sub_22EE3C324();
  if (v18 < 0)
  {
    __break(1u);
LABEL_37:
    swift_once();
    goto LABEL_27;
  }

  v87 = v14;
  v88 = v9;
  v86 = v12;
  if (v18)
  {
    sub_22EE139AC();
    do
    {
      sub_22EE3C664();
      if (!v96)
      {
        __break(1u);
      }

      v20 = sub_22EE3C214();
      v22 = v21;
      v97 = v19;
      v24 = *(v19 + 16);
      v23 = *(v19 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_22EDD2DD4((v23 > 1), v24 + 1, 1);
        v19 = v97;
      }

      *(v19 + 16) = v24 + 1;
      v25 = v19 + 16 * v24;
      *(v25 + 32) = v20;
      *(v25 + 40) = v22;
      --v18;
    }

    while (v18);
  }

  sub_22EE139AC();
  sub_22EE3C664();
  while (v96)
  {
    v26 = sub_22EE3C214();
    v97 = v19;
    v29 = *(v19 + 16);
    v28 = *(v19 + 24);
    if (v29 >= v28 >> 1)
    {
      v31 = v26;
      v32 = v27;
      sub_22EDD2DD4((v28 > 1), v29 + 1, 1);
      v27 = v32;
      v26 = v31;
      v19 = v97;
    }

    *(v19 + 16) = v29 + 1;
    v30 = v19 + 16 * v29;
    *(v30 + 32) = v26;
    *(v30 + 40) = v27;
    sub_22EE3C664();
  }

  v33 = *(v19 + 16);
  v34 = v33 != 0;
  v35 = v94;
  if (*(v94 + 32))
  {
    nullsub_1();
    v93 = sub_22EE102A4(v36);
  }

  else
  {
    v93 = 0;
  }

  type metadata accessor for RecordInfo();
  v18 = sub_22EDF2E6C();
  v95 = xmmword_22EE43B70;
  if (!getenv("TRACE_NO_ANALYTICS"))
  {
    goto LABEL_19;
  }

  if (sub_22EE3C214() == 48 && v37 == 0xE100000000000000)
  {

LABEL_19:
    LODWORD(v12) = 1;
    goto LABEL_21;
  }

  LODWORD(v12) = sub_22EE3CBA4();

LABEL_21:
  has_internal_content = os_variant_has_internal_content();
  v39 = has_internal_content;
  if (v33 > v34)
  {
    v101 = *(v35 + 48);
    v40 = *(v35 + 32);
    v99 = *(v35 + 16);
    v100 = v40;
    v98 = *v35;
    if (*(v19 + 16) == v33 - v34)
    {

      v41 = v19;
    }

    else
    {
      sub_22EE1C850(v19, v19 + 32, v33 != 0, (2 * v33) | 1);
      v41 = v84;
    }

    v42 = v91;
    sub_22EE2C5FC(&v98, v41, v91);
    v66 = (*(v92 + 48))(v42, 1, v88);
    if (v66 == 1)
    {
      sub_22EDDBA48(v42, &qword_27DA95870, &qword_22EE43D30);
      sub_22EE1A850(v18, v39 & v12, &v95);

      v59 = 0;
    }

    else
    {
      LODWORD(v92) = v39;
      v67 = v42;
      v68 = v87;
      sub_22EE1D858(v67, v87, type metadata accessor for RecordingOptions);
      v69 = v86;
      sub_22EE1D8C0(v68, v86, type metadata accessor for RecordingOptions);
      type metadata accessor for Recording(0);
      v70 = swift_allocObject();

      v91 = v70;
      sub_22EE16824(v35, v69, v18);
      LODWORD(v90) = v12;
      v71 = (*v18 + 256);
      v72 = *v71;
      v73 = (*v71)(0, 0, 0, 0, 1);
      (*(*v91 + 376))(v73);
      v74 = v72(1, 0, 0, 0, 1);
      (*(*v91 + 384))(v74);
      v75 = v72(2, 0, 0, 0, 1);
      (*(*v91 + 392))(v75);
      v76 = v72(3, 0, 0, 0, 1);
      v77 = v91;
      (*(*v91 + 400))(v76);
      v78 = (*(*v77 + 408))(v18);
      v80 = v79;
      v82 = v81;
      v83 = v78;

      sub_22EE1B5C0(v87, type metadata accessor for RecordingOptions);
      sub_22EE1D490(v95, *(&v95 + 1));
      *&v95 = v80;
      *(&v95 + 1) = v82;
      if (v83)
      {
        v59 = 0;
      }

      else
      {
        v59 = 75;
      }

      sub_22EE1A850(v18, v92 & v90, &v95);
    }

    goto LABEL_30;
  }

  LODWORD(v92) = has_internal_content;
  v61 = *(v35 + 16);
  v98 = *v35;
  v99 = v61;
  v100 = *(v35 + 32);
  v101 = *(v35 + 48);
  v62 = v89;
  swift_storeEnumTagMultiPayload();
  sub_22EE1B620(&qword_27DA94D80, type metadata accessor for KTraceRecordError, &unk_22EE43AF0);
  v63 = sub_22EE3CBF4();
  v65 = v64;
  sub_22EE1B5C0(v62, type metadata accessor for KTraceRecordError);
  sub_22EE1A5F0(8, v63, v65);

  sub_22EE1B5C0(&v98, type metadata accessor for ktrace_recording);
  v14 = swift_allocError();
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  if (v93)
  {
    v96 = v93;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA94FF8, &unk_22EE40510);
    v43 = swift_allocObject();
    *(v43 + 16) = xmmword_22EE3F500;
    swift_getErrorValue();
    v44 = sub_22EE3CBF4();
    *(v43 + 56) = MEMORY[0x277D837D0];
    *(v43 + 32) = v44;
    *(v43 + 40) = v45;
    sub_22ED82560();
    sub_22EE3CC44();
  }

  v46 = *(*v18 + 376);
  v47 = v14;
  v46(v14);
  if (qword_27DA9B6D0 != -1)
  {
    goto LABEL_37;
  }

LABEL_27:
  v48 = sub_22EE3BF14();
  __swift_project_value_buffer(v48, qword_27DA9C958);
  v49 = v14;
  v50 = sub_22EE3BEF4();
  v51 = sub_22EE3C4B4();

  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v94 = v18;
    v54 = v12;
    v12 = v53;
    v96 = v53;
    *v52 = 136315138;
    swift_getErrorValue();
    v55 = sub_22EE3CBF4();
    v57 = sub_22ED7DF24(v55, v56, &v96);

    *(v52 + 4) = v57;
    _os_log_impl(&dword_22ED7A000, v50, v51, "recording failed: %s", v52, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    v58 = v12;
    LOBYTE(v12) = v54;
    v18 = v94;
    MEMORY[0x2318F8320](v58, -1, -1);
    MEMORY[0x2318F8320](v52, -1, -1);
  }

  sub_22EE1A850(v18, v92 & v12, &v95);

  v59 = 71;
LABEL_30:
  sub_22EE1D490(v95, *(&v95 + 1));
  return v59;
}

uint64_t sub_22ED824C4(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = sub_22EE3C184();
  fputs((v4 + 32), v3);
}

unint64_t sub_22ED82560()
{
  result = qword_27DA95000;
  if (!qword_27DA95000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA95000);
  }

  return result;
}

double sub_22ED8260C()
{
  v3[1] = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  mach_timebase_info(v3);
  v0 = swift_slowAlloc();
  v1 = getpid();
  if (!proc_pid_rusage(v1, 6, v0) && __CFADD__(*(v0 + 16), *(v0 + 24)))
  {
    __break(1u);
  }

  return clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW) / 1000000000.0;
}

char *sub_22ED82744(uint64_t __sig, uint64_t a2, unsigned __int8 a3)
{
  if (a3 > 1u)
  {
    if (a3 != 2)
    {
      if (__sig ^ 1 | a2)
      {
        v12 = 0xD00000000000001FLL;
      }

      else
      {
        v12 = 0xD00000000000001ALL;
      }

      if (__sig | a2)
      {
        return v12;
      }

      else
      {
        return 0xD00000000000001ALL;
      }
    }

    v14[0] = 0;
    v14[1] = 0xE000000000000000;
    sub_22EE3C864();
    MEMORY[0x2318F58F0](0x6E6F697461727564, 0xE900000000000020);
    sub_22EE3C424();
    v9 = 0x657370616C652073;
    v10 = 0xE900000000000064;
LABEL_17:
    MEMORY[0x2318F58F0](v9, v10);
    return v14[0];
  }

  if (a3)
  {
    sub_22EE3C864();

    HIBYTE(v14[1]) = -18;
    MEMORY[0x2318F58F0](__sig, a2);
    v9 = 0x6572207361772027;
    v10 = 0xEE00646576696563;
    goto LABEL_17;
  }

  result = strsignal(__sig);
  if (result)
  {
    sub_22EE3C214();
    sub_22ED80FA0();
    v5 = sub_22EE3C674();

    v14[0] = 0;
    v14[1] = 0xE000000000000000;
    sub_22EE3C864();
    if (*(v5 + 16))
    {

      v6 = sub_22EE3C174();
      v8 = v7;
    }

    else
    {

      v8 = 0xE700000000000000;
      v6 = 0x6E776F6E6B6E75;
    }

    MEMORY[0x2318F58F0](v6, v8);

    MEMORY[0x2318F58F0](0x206C616E67697320, 0xE900000000000028);
    v13 = sub_22EE3CB84();
    MEMORY[0x2318F58F0](v13);

    v9 = 0x7669656365722029;
    v10 = 0xEA00000000006465;
    goto LABEL_17;
  }

  __break(1u);
  return result;
}

uint64_t sub_22ED82A68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v7 = v3[3];
  sub_22EE3C864();

  strcpy(v19, "waking due to ");
  HIBYTE(v19[1]) = -18;
  v8 = sub_22ED82744(a1, a2, v4);
  MEMORY[0x2318F58F0](v8);

  (*(*v7 + 224))(v19[0], v19[1]);

  v9 = *(*v3 + 112);
  sub_22ED82DFC(a1, a2, v4);
  v10 = v9(v19);
  v12 = v11;
  v13 = *v11;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v12 = v13;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v13 = sub_22ED82E64(0, *(v13 + 2) + 1, 1, v13);
    *v12 = v13;
  }

  v16 = *(v13 + 2);
  v15 = *(v13 + 3);
  if (v16 >= v15 >> 1)
  {
    v13 = sub_22ED82E64((v15 > 1), v16 + 1, 1, v13);
    *v12 = v13;
  }

  *(v13 + 2) = v16 + 1;
  v17 = &v13[24 * v16];
  *(v17 + 4) = a1;
  *(v17 + 5) = a2;
  v17[48] = v4;
  return v10(v19, 0);
}

uint64_t sub_22ED82C30(uint64_t a1, unint64_t a2)
{
  v5 = sub_22EE3BF14();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(*v2 + 176))(v7);

  v10 = sub_22EE3BEF4();
  v11 = sub_22EE3C4C4();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v16 = v13;
    *v12 = 136446210;
    *(v12 + 4) = sub_22ED7DF24(a1, a2, &v16);
    _os_log_impl(&dword_22ED7A000, v10, v11, "%{public}s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x2318F8320](v13, -1, -1);
    MEMORY[0x2318F8320](v12, -1, -1);
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_22ED82DFC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }

  return result;
}

char *sub_22ED82E64(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA952B8, &unk_22EE41660);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_22ED82F80(unint64_t *a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DA95540, &qword_22EE41F80);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22ED83014(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }

  return result;
}

uint64_t ProviderList.willEndTracing(file:)(void *a1)
{
  v69 = a1;
  v68 = sub_22EE3BE64();
  v2 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v67 = &v62 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = OBJC_IVAR____TtC6ktrace12ProviderList_providers;
  swift_beginAccess();
  result = *(v1 + v4);
  v6 = *(result + 16);
  if (v6)
  {
    v66 = (v2 + 8);

    v7 = (v63 + 64);
    *&v8 = 136446210;
    v65 = v8;
    *&v8 = 136315138;
    v64 = v8;
    while (1)
    {
      v9 = *(v7 - 4);
      v10 = *(v7 - 3);
      v11 = *(v7 - 2);
      v12 = *(v7 - 1);
      v13 = *v7;
      v78 = v9;
      v79 = v10;
      v80 = v11;
      v81 = v12;
      v82 = v13;
      if ([v11 respondsToSelector_])
      {
        v75 = v6;
        v14 = qword_27DA965C0;
        swift_unknownObjectRetain_n();

        swift_unknownObjectRetain();

        if (v14 != -1)
        {
          swift_once();
        }

        v15 = sub_22EE3BF14();
        v16 = __swift_project_value_buffer(v15, qword_27DA9C8E8);
        swift_unknownObjectRetain();

        swift_unknownObjectRetain();

        v70 = v16;
        v17 = sub_22EE3BEF4();
        v18 = sub_22EE3C4C4();

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

        v19 = os_log_type_enabled(v17, v18);
        v76 = v9;
        if (v19)
        {
          v20 = swift_slowAlloc();
          v21 = swift_slowAlloc();
          v77 = v21;
          *v20 = v65;

          v22 = sub_22ED7DF24(v9, v10, &v77);

          *(v20 + 4) = v22;
          _os_log_impl(&dword_22ED7A000, v17, v18, "calling provider %{public}s's willEndTracing", v20, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v21);
          MEMORY[0x2318F8320](v21, -1, -1);
          MEMORY[0x2318F8320](v20, -1, -1);
        }

        v72 = v13;
        v73 = v12;
        v71 = v11;
        v74 = v7;
        if (qword_27DA965C8 != -1)
        {
          swift_once();
        }

        v23 = sub_22EE3BE94();
        __swift_project_value_buffer(v23, qword_27DA9C900);
        v24 = v67;
        sub_22EE3BE54();
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v77 = v26;
        *v25 = v64;

        v27 = sub_22ED7DF24(v76, v10, &v77);

        *(v25 + 4) = v27;
        v28 = sub_22EE3BE74();
        v29 = sub_22EE3C574();
        v30 = sub_22EE3BE44();
        _os_signpost_emit_with_name_impl(&dword_22ED7A000, v28, v29, v30, "05: willEndTracing", "%s", v25, 0xCu);
        [v71 willEndTracing];
        sub_22ED7DFF0(v69);
        v31 = sub_22EE3C564();
        v32 = sub_22EE3BE44();
        _os_signpost_emit_with_name_impl(&dword_22ED7A000, v28, v31, v32, "05: willEndTracing", "%s", v25, 0xCu);

        __swift_destroy_boxed_opaque_existential_0(v26);
        MEMORY[0x2318F8320](v26, -1, -1);
        MEMORY[0x2318F8320](v25, -1, -1);
        (*v66)(v24, v68);
        swift_unknownObjectRetain();

        swift_unknownObjectRetain();

        v33 = sub_22EE3BEF4();
        v34 = sub_22EE3C4C4();

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

        if (os_log_type_enabled(v33, v34))
        {
          v35 = swift_slowAlloc();
          v36 = swift_slowAlloc();
          v77 = v36;
          *v35 = v65;

          v37 = sub_22ED7DF24(v76, v10, &v77);

          *(v35 + 4) = v37;
          _os_log_impl(&dword_22ED7A000, v33, v34, "finished time-sensitive willEndTracing from provider %{public}s", v35, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v36);
          MEMORY[0x2318F8320](v36, -1, -1);
          MEMORY[0x2318F8320](v35, -1, -1);
        }
      }

      else
      {
        objc_opt_self();
        v38 = swift_dynamicCastObjCClass();
        if (!v38)
        {
          goto LABEL_4;
        }

        v39 = v38;
        swift_unknownObjectRetain_n();

        swift_unknownObjectRetain();

        if (!supportsDeprecatedWillEndTracingToFile(v39))
        {

          swift_unknownObjectRelease();
          swift_unknownObjectRelease_n();

          goto LABEL_4;
        }

        v75 = v6;
        if (qword_27DA965C0 != -1)
        {
          swift_once();
        }

        v40 = sub_22EE3BF14();
        v41 = __swift_project_value_buffer(v40, qword_27DA9C8E8);
        swift_unknownObjectRetain();

        swift_unknownObjectRetain();

        v71 = v41;
        v42 = sub_22EE3BEF4();
        v43 = sub_22EE3C4C4();

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

        v44 = os_log_type_enabled(v42, v43);
        v76 = v9;
        if (v44)
        {
          v45 = swift_slowAlloc();
          v46 = swift_slowAlloc();
          v77 = v46;
          *v45 = v65;

          v47 = sub_22ED7DF24(v9, v10, &v77);

          *(v45 + 4) = v47;
          _os_log_impl(&dword_22ED7A000, v42, v43, "calling provider %{public}s's legacy willEndTracing:", v45, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v46);
          MEMORY[0x2318F8320](v46, -1, -1);
          MEMORY[0x2318F8320](v45, -1, -1);
        }

        v72 = v13;
        v73 = v12;
        v74 = v7;
        if (qword_27DA965C8 != -1)
        {
          swift_once();
        }

        v48 = sub_22EE3BE94();
        __swift_project_value_buffer(v48, qword_27DA9C900);
        v49 = v67;
        sub_22EE3BE54();
        v50 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        v77 = v51;
        *v50 = v64;

        v52 = sub_22ED7DF24(v76, v10, &v77);

        *(v50 + 4) = v52;
        v53 = sub_22EE3BE74();
        v54 = sub_22EE3C574();
        v55 = sub_22EE3BE44();
        _os_signpost_emit_with_name_impl(&dword_22ED7A000, v53, v54, v55, "05: willEndTracing", "%s", v50, 0xCu);
        v56 = v69;
        deprecatedWillEndTracingToFile(v11, v69);
        sub_22ED7DFF0(v56);
        LOBYTE(v56) = sub_22EE3C564();
        v57 = sub_22EE3BE44();
        _os_signpost_emit_with_name_impl(&dword_22ED7A000, v53, v56, v57, "05: willEndTracing", "%s", v50, 0xCu);

        __swift_destroy_boxed_opaque_existential_0(v51);
        MEMORY[0x2318F8320](v51, -1, -1);
        MEMORY[0x2318F8320](v50, -1, -1);
        (*v66)(v49, v68);
        swift_unknownObjectRetain();

        swift_unknownObjectRetain();

        v33 = sub_22EE3BEF4();
        v58 = sub_22EE3C4C4();

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

        if (os_log_type_enabled(v33, v58))
        {
          v59 = swift_slowAlloc();
          v60 = swift_slowAlloc();
          v77 = v60;
          *v59 = v65;

          v61 = sub_22ED7DF24(v76, v10, &v77);

          *(v59 + 4) = v61;
          _os_log_impl(&dword_22ED7A000, v33, v58, "finished time-sensitive willEndTracing from provider %{public}s", v59, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v60);
          MEMORY[0x2318F8320](v60, -1, -1);
          MEMORY[0x2318F8320](v59, -1, -1);
        }
      }

      swift_unknownObjectRelease();

      swift_unknownObjectRelease_n();
      v7 = v74;
      v6 = v75;
LABEL_4:
      v7 += 5;
      if (!--v6)
      {
      }
    }
  }

  return result;
}

uint64_t supportsDeprecatedWillEndTracingToFile(void *a1)
{
  v1 = a1;
  v2 = objc_opt_respondsToSelector();

  return v2 & 1;
}

void ktrace_config_destroy(void **a1)
{
  if (a1)
  {
    free(*a1);
    free(a1[1]);
    free(a1[2]);
    free(a1[3]);
    free(a1[4]);
    free(a1[5]);
    free(a1[6]);
    free(a1[10]);
    free(a1[11]);
    free(a1[12]);
    free(a1[13]);
    free(a1[14]);
    free(a1[15]);
    free(a1[24]);
    free(a1[26]);
    free(a1[25]);

    free(a1);
  }
}

char *kdebug_alloc_filter_description(uint64_t a1)
{
  v2 = malloc_type_malloc(0x200uLL, 0x25283EACuLL);
  if (!v2)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  v3 = v2;
  v4 = 0;
  v5 = 0;
  v6 = 1;
  v7 = 512;
LABEL_3:
  v8 = v5 << 8;
  do
  {
    for (i = 0; i != 256; ++i)
    {
      if (((*(a1 + ((v8 + i) >> 3)) >> (i & 7)) & 1) == 0)
      {
        for (j = 0; j != 256; ++j)
        {
          if ((*(a1 + ((v8 + j) >> 3)) >> (j & 7)))
          {
            if (v4 + 10 > v7)
            {
              v7 *= 2;
              v13 = malloc_type_realloc(v3, v7, 0xFA60500AuLL);
              if (!v13)
              {
                ktrace_postprocess_file_internal_cold_4();
              }

              v3 = v13;
            }

            if (v4)
            {
              v14 = v4 + 1;
              *(v3 + v4) = 44;
            }

            else
            {
              v14 = 0;
            }

            v4 = v14 + snprintf(v3 + v14, 0xAuLL, "S0x%02x%02x", v5, j);
          }
        }

        v6 = 0;
        if (++v5 == 256)
        {
          goto LABEL_31;
        }

        goto LABEL_3;
      }
    }

    if (v4 + 8 > v7)
    {
      v7 *= 2;
      v10 = malloc_type_realloc(v3, v7, 0xCA123CCDuLL);
      if (!v10)
      {
        ktrace_postprocess_file_internal_cold_4();
      }

      v3 = v10;
    }

    if (v4)
    {
      v11 = v4 + 1;
      *(v3 + v4) = 44;
    }

    else
    {
      v11 = 0;
    }

    v4 = v11 + snprintf(v3 + v11, 8uLL, "C0x%02x", v5++);
    v8 += 256;
  }

  while (v5 != 256);
  if ((v6 & 1) == 0)
  {
LABEL_31:
    *(v3 + v4) = 0;
    return v3;
  }

  free(v3);

  return strdup("ALL");
}

CFDataRef ktrace_chunk_copy_cfdata(uint64_t a1, unint64_t a2, void *a3)
{
  if (*a1 == -1)
  {
    CFRetain(*(a1 + 16));
    return *(a1 + 16);
  }

  else
  {
    v5 = ktrace_chunk_map_data(a1, a2, a3);
    if (v5)
    {
      v6 = v5;
      v11.version = 0;
      memset(&v11.retain, 0, 40);
      v11.info = a3;
      v11.deallocate = callback_unmap_chunk;
      v11.preferredSize = 0;
      v7 = CFAllocatorCreate(0, &v11);
      if (!v7)
      {
        ktrace_postprocess_file_internal_cold_4();
      }

      v8 = v7;
      v9 = CFDataCreateWithBytesNoCopy(0, v6, a3, v7);
      CFRelease(v8);
    }

    else
    {
      return 0;
    }
  }

  return v9;
}

const UInt8 *ktrace_chunk_map_data(void *a1, unint64_t a2, unint64_t a3)
{
  v37 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  v4 = *a1;
  if (!*a1)
  {
    *__error() = 45;
    v12 = *__error();
    ktrace_log_init();
    if (os_log_type_enabled(ktrace_file_log, OS_LOG_TYPE_ERROR))
    {
      ktrace_chunk_map_data_cold_10();
    }

    goto LABEL_17;
  }

  if (!a3)
  {
    *__error() = 22;
    v12 = *__error();
    ktrace_log_init();
    if (os_log_type_enabled(ktrace_file_log, OS_LOG_TYPE_ERROR))
    {
      ktrace_chunk_map_data_cold_9();
    }

LABEL_17:
    v13 = __error();
    result = 0;
    *v13 = v12;
    return result;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  v7 = a1[1];
  if (v7 <= a2)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (v7 < a3)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (a3 + a2 > v7)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (v4 != -1)
  {
    v8 = a1[2] + a2;
    v9 = *(v4 + 240);
    if (v9)
    {
      v10 = *(v4 + 280);
      if (v8 >= v10)
      {
        ktrace_postprocess_file_internal_cold_4();
      }

      if (v8 + a3 > v10)
      {
        ktrace_postprocess_file_internal_cold_4();
      }

      return (v9 + v8);
    }

    v15 = getpagesize();
    if (v15 <= 0)
    {
      ktrace_postprocess_file_internal_cold_4();
    }

    v16 = v8 & (v15 - 1);
    v17 = v8 & -v15;
    if (*(v4 + 301))
    {
      v18 = mmap(0, v16 + a3, 1, 1, *(v4 + 196), v17);
LABEL_24:
      if (v18 == -1)
      {
        goto LABEL_37;
      }
    }

    else
    {
      v19 = mmap(0, v16 + a3, 3, 4098, -1, 0);
      if (v19 == -1)
      {
LABEL_37:
        v24 = *__error();
        ktrace_log_init();
        v25 = ktrace_file_log;
        if (os_log_type_enabled(ktrace_file_log, OS_LOG_TYPE_ERROR))
        {
          v27 = 134219008;
          v28 = v16 + a3;
          v29 = 2048;
          v30 = a3;
          v31 = 2048;
          v32 = v17;
          v33 = 2048;
          v34 = a2;
          v35 = 1024;
          v36 = v24;
          _os_log_error_impl(&dword_22ED7A000, v25, OS_LOG_TYPE_ERROR, "failed to map %zu (%zu) bytes chunk data at offset %lld (%lld) (%{errno}d)", &v27, 0x30u);
        }

        v26 = __error();
        result = 0;
        *v26 = v24;
        return result;
      }

      v18 = v19;
      if (v16 + a3)
      {
        v20 = v16 + a3;
        v21 = v19;
        v22 = v17;
        while (1)
        {
          v23 = pread(*(*a1 + 196), v21, v20, v22);
          if (!v23)
          {
            break;
          }

          if (v23 <= 0)
          {
            goto LABEL_36;
          }

          if (v20 < v23)
          {
            ktrace_chunk_map_data_cold_6();
          }

          v21 += v23;
          v22 += v23;
          v20 -= v23;
          if (!v20)
          {
            goto LABEL_24;
          }
        }

        *__error() = 5;
LABEL_36:
        munmap(v18, v16 + a3);
        goto LABEL_37;
      }
    }

    return &v18[v16];
  }

  v14 = a1[2];

  return CFDataGetBytePtr(v14);
}

uint64_t ktrace_chunk_unmap_data_internal(unint64_t a1, uint64_t a2)
{
  v4 = getpagesize();
  if (v4 <= 0)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  result = munmap((-v4 & a1), ((v4 - 1) & a1) + a2);
  if (result)
  {
    ktrace_chunk_unmap_data_internal_cold_2();
  }

  return result;
}

uint64_t ktrace_chunk_unmap_data(uint64_t result, unint64_t a2, uint64_t a3)
{
  if (!result)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (a2 && (*result + 1) >= 2 && !*(*result + 240))
  {

    return ktrace_chunk_unmap_data_internal(a2, a3);
  }

  return result;
}

uint64_t sub_22ED842E4(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_22ED84328(void *a1)
{
  v3 = v1;
  v237 = *MEMORY[0x277D85DE8];
  v5 = sub_22EE3BDA4();
  v190 = *(v5 - 8);
  v191 = v5;
  MEMORY[0x28223BE20](v5);
  v188 = v177 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v189 = sub_22EE3BE24();
  v187 = *(v189 - 8);
  MEMORY[0x28223BE20](v189);
  v185 = v177 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v186 = sub_22EE3BE34();
  v184 = *(v186 - 8);
  MEMORY[0x28223BE20](v186);
  v183 = v177 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA94DD0, &unk_22EE40AE0);
  MEMORY[0x28223BE20](v9 - 8);
  v192 = v177 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95150, qword_22EE44A90);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v182 = v177 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v203 = v177 - v14;
  v15 = sub_22EE3BCB4();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v180 = v177 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v193 = (v177 - v20);
  v21 = MEMORY[0x28223BE20](v19);
  v196 = v177 - v22;
  MEMORY[0x28223BE20](v21);
  v210 = v177 - v23;
  v205 = sub_22EE3BFF4();
  v207 = *(v205 - 8);
  MEMORY[0x28223BE20](v205);
  v199 = (v177 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v204 = sub_22EE3C014();
  v198 = *(v204 - 1);
  MEMORY[0x28223BE20](v204);
  v26 = v177 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  ktrace_end(*&v3[OBJC_IVAR____TtC6ktrace9Recording_session], 0);
  v27 = *(*a1 + 256);
  v201 = (*a1 + 256);
  v202 = a1;
  v200 = v27;
  v27(4, 0, 0, 0, 1);
  v28 = *&v3[OBJC_IVAR____TtC6ktrace9Recording_recording];
  v29 = *(v28 + 40);
  if (v29)
  {
    v219 = xmmword_22EE43B60;
    v217 = 4;
    v218 = &v219;
    _Block_copy(v29);
    (v29)[2](v29, &v217);
    _Block_release(v29);
  }

  v30 = MEMORY[0x277D84F90];
  v211 = MEMORY[0x277D84F90];
  v31 = *(v28 + 48);
  v208 = v16;
  v209 = v3;
  v206 = v15;
  v181 = v28;
  if ((v31 & 1) == 0)
  {
    goto LABEL_8;
  }

  v32 = swift_allocObject();
  *(v32 + 2) = 0;
  v33 = sub_22EE1DA64(0, &qword_27DA952B0, 0x277D85CA0);
  v179 = *&v3[OBJC_IVAR____TtC6ktrace9Recording_waitQueue];
  v194 = v33;
  sub_22EE3C524();
  swift_getObjectType();
  v34 = swift_allocObject();
  *(v34 + 16) = v32;
  *(v34 + 24) = v3;
  v222 = sub_22EE1D4A4;
  v223 = v34;
  *&v219 = MEMORY[0x277D85DD0];
  v2 = 1107296256;
  *(&v219 + 1) = 1107296256;
  v177[1] = &v220;
  v220 = sub_22ED842DC;
  v221 = &block_descriptor_32;
  v35 = _Block_copy(&v219);
  v197 = v32;

  v15 = v26;
  v26 = v3;

  sub_22EE3C004();
  v36 = v199;
  sub_22EDEE074();
  sub_22EE3C534();
  _Block_release(v35);
  v37 = *(v207 + 8);
  v207 += 8;
  v178 = v37;
  (v37)(v36, v205);
  v198 = *(v198 + 8);
  (v198)(v15, v204);

  sub_22EE3C554();
  v38 = swift_unknownObjectRetain();
  MEMORY[0x2318F5AA0](v38);
  if (*((v211 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v211 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_88;
  }

  while (1)
  {
    sub_22EE3C414();
    swift_unknownObjectRelease();
    sub_22EE3C524();
    swift_getObjectType();
    v39 = swift_allocObject();
    *(v39 + 16) = v197;
    *(v39 + 24) = v26;
    v222 = sub_22EE1DF44;
    v223 = v39;
    *&v219 = MEMORY[0x277D85DD0];
    *(&v219 + 1) = v2;
    v220 = sub_22ED842DC;
    v221 = &block_descriptor_39;
    v40 = _Block_copy(&v219);

    sub_22EE3C004();
    sub_22EDEE074();
    sub_22EE3C534();
    _Block_release(v40);
    (v178)(v36, v205);
    (v198)(v15, v204);

    sub_22EE3C554();
    v41 = swift_unknownObjectRetain();
    MEMORY[0x2318F5AA0](v41);
    if (*((v211 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v211 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v26 = *((v211 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_22EE3C3F4();
    }

    sub_22EE3C414();
    swift_unknownObjectRelease();
    v30 = v211;

    v15 = v206;
    v16 = v208;
LABEL_8:
    v42 = sub_22EE3C594();
    if (v30 >> 62)
    {
      v42 = sub_22EE3C9A4();
      v36 = v42;
      if (!v42)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v36 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v36)
      {
        goto LABEL_17;
      }
    }

    if (v36 >= 1)
    {
      break;
    }

    __break(1u);
LABEL_88:
    sub_22EE3C3F4();
  }

  v43 = 0;
  do
  {
    if ((v30 & 0xC000000000000001) != 0)
    {
      MEMORY[0x2318F5F60](v43, v30);
    }

    else
    {
      swift_unknownObjectRetain();
    }

    ++v43;
    swift_getObjectType();
    sub_22EE3C544();
    v42 = swift_unknownObjectRelease();
  }

  while (v36 != v43);
LABEL_17:
  v44 = v209;
  v45 = v203;
  (*(*v209 + 248))(v42);
  if ((*(v16 + 48))(v45, 1, v15) != 1)
  {
    (*(v16 + 32))(v210, v45, v15);
    v46 = swift_allocObject();
    v207 = v46;
    *(v46 + 16) = 0;
    v199 = (v46 + 16);
    v47 = swift_allocObject();
    *(v47 + 16) = 0;
    v198 = v47 + 16;
    v48 = sub_22EE3BC84();
    v50 = v49;
    v51 = sub_22EE3C184();
    v52 = ktrace_file_open((v51 + 32), 1);

    if (!v52)
    {

      type metadata accessor for KTraceRecordError(0);
      sub_22EE1B620(&qword_27DA94D80, type metadata accessor for KTraceRecordError, &unk_22EE43AF0);
      swift_allocError();
      v71 = v70;
      v72 = MEMORY[0x2318F5610]();
      *v71 = v48;
      *(v71 + 8) = v50;
      *(v71 + 16) = v72;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      v73 = v208;
LABEL_71:
      (*(v73 + 8))(v210, v15);

      return v15 & 1;
    }

    v197 = v48;
    v203 = v50;
    v53 = swift_allocObject();
    *(v53 + 16) = v207;
    *(v53 + 24) = v47;
    v222 = sub_22EE1D3FC;
    v223 = v53;
    *&v219 = MEMORY[0x277D85DD0];
    *(&v219 + 1) = 1107296256;
    v220 = sub_22EE18D60;
    v221 = &block_descriptor_24;
    v54 = _Block_copy(&v219);

    v194 = v47;

    ktrace_file_iterate(v52, 0, v54);
    _Block_release(v54);
    v55 = (*v44 + 344);
    v56 = *v55;
    (*v55)(v224);
    sub_22EDF4ECC(v224);
    v57 = v224[1];
    v58 = v202;
    v59 = (v200)(6, 0, 0, 0, 1);
    (v56)(v225, v59);
    sub_22EDF4ECC(v225);
    v60 = (*(*v58 + 304))(v225[9], v225[10], v225[11]);
    v204 = v56;
    v205 = v55;
    (v56)(v226, v60);
    v61 = v227;
    v213 = v227;

    sub_22EDF4ECC(v226);
    v62 = *(v61 + 16);
    sub_22EDDBA48(&v213, &qword_27DA95850, &qword_22EE43BB8);
    (*(*v58 + 328))(v62 != 0);
    v63 = v44 + OBJC_IVAR____TtC6ktrace9Recording_options;
    v200 = type metadata accessor for RecordingOptions.Options(0);
    if (v63[*(v200 + 64)] == 1)
    {
      v64 = *(v44 + OBJC_IVAR____TtC6ktrace9Recording_reporter);
      v65 = sub_22ED80B20();
      v66 = sub_22ED808E4();
      (*(*v64 + 216))(0xD000000000000010, 0x800000022EE49CF0, v65 & 1, v66 & 1);
      v67 = ktrace_file_compress(v52, 2u);
      if (!v67)
      {

        type metadata accessor for KTraceRecordError(0);
        sub_22EE1B620(&qword_27DA94D80, type metadata accessor for KTraceRecordError, &unk_22EE43AF0);
        swift_allocError();
        *v68 = MEMORY[0x2318F5610]();
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        v69 = v52;
LABEL_41:
        ktrace_file_close(v69);
        v15 = v206;
        v73 = v208;
        goto LABEL_71;
      }
    }

    else
    {
      v67 = v52;
    }

    v74 = [objc_allocWithZone(MEMORY[0x277CCAA00]) init];
    v75 = sub_22EE3C0F4();
    *&v219 = 0;
    v76 = [v74 attributesOfItemAtPath:v75 error:&v219];

    v77 = v219;
    if (!v76)
    {
      v97 = v219;

      sub_22EE3BBA4();

      swift_willThrow();
      v69 = v67;
      goto LABEL_41;
    }

    v197 = v57;
    v201 = v67;
    type metadata accessor for FileAttributeKey(0);
    sub_22EE1B620(&qword_27DA94DC0, type metadata accessor for FileAttributeKey, &unk_22EE3FEE8);
    v78 = sub_22EE3C064();
    v79 = v77;

    v80 = v209;
    v204(v228);
    sub_22EDF4ECC(v228);
    if (v229)
    {
      v15 = 0;
    }

    else
    {
      v15 = v228[12];
    }

    v81 = v199;
    swift_beginAccess();
    v82 = *(v78 + 16);
    v179 = *v81;
    if (v82 && (v83 = sub_22EDDA558(*MEMORY[0x277CCA1C0]), (v84 & 1) != 0) && (sub_22ED7E678(*(v78 + 56) + 32 * v83, &v219), swift_dynamicCast()))
    {
      v85 = v215;
    }

    else
    {
      v85 = 0;
    }

    v45 = *v81;
    v204(v230);
    if (v231)
    {
      __break(1u);
    }

    else
    {
      v86 = v230[14];
      sub_22EDF4ECC(v230);
      v87 = v45 >= v86;
      v45 -= v86;
      if (!v87)
      {
LABEL_90:
        __break(1u);
        goto LABEL_91;
      }

      v178 = v63;
      v88 = v198;
      v89 = swift_beginAccess();
      v90 = *v88;
      (v204)(v232, v89);
      if ((v233 & 1) == 0)
      {
        v86 = v232[16];

        sub_22EDF4ECC(v232);
        if (v90 < v86)
        {
LABEL_91:
          __break(1u);
LABEL_92:
          __break(1u);
LABEL_93:
          _Block_copy(v86);
          v176 = v189;
          sub_22EE3C854();
          v189 = v176;
LABEL_84:

          _Block_release(v86);
LABEL_85:
          sub_22EDDBA48(v30, &qword_27DA94DD0, &unk_22EE40AE0);
          v175 = *(v208 + 8);
          v175(v193, v45);
          v175(v196, v45);
          ktrace_file_close(v201);
          v175(v210, v45);

          return v15 & 1;
        }

        sub_22EDF0850(v197, v15, v179, v85, v45, v90 - v86, v212);
        v91 = v202;
        v235[0] = v212[0];
        v235[1] = v212[1];
        v235[2] = v212[2];
        v236 = 0;
        (*(*v202 + 280))(v235);
        sub_22EE3B9E4();
        swift_allocObject();
        sub_22EE3B9D4();
        v215 = v91;
        type metadata accessor for RecordInfo();
        sub_22EE1B620(&qword_27DA95858, type metadata accessor for RecordInfo, &unk_22EE41958);
        v92 = v195;
        v93 = sub_22EE3B9C4();
        if (v92)
        {

          v203 = 0;
          v199 = 0;
          v96 = 0xF000000000000000;
          v15 = v206;
          goto LABEL_52;
        }

        v98 = v93;
        v96 = v94;
        v86 = 0;

        sub_22EDD4020(v98, v96);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95860, &qword_22EE43BC0);
        sub_22EE3BD04();

        v99 = v215;
        v100 = v96 >> 62;
        v15 = v206;
        if ((v96 >> 62) > 1)
        {
          v101 = 0;
          if (v100 != 2)
          {
            goto LABEL_51;
          }

          v103 = *(v98 + 16);
          v102 = *(v98 + 24);
          v101 = v102 - v103;
          if (!__OFSUB__(v102, v103))
          {
            goto LABEL_51;
          }

          __break(1u);
        }

        else if (!v100)
        {
          v101 = BYTE6(v96);
LABEL_51:
          v199 = 0;
          ktrace_file_append_chunk(v201, 32790, 1, 0, v99, v101);
          v203 = v98;
          v95 = sub_22EDD4074(v98, v96);
LABEL_52:
          v104 = (*(*v80 + 272))(v95);
          v105 = [objc_allocWithZone(MEMORY[0x277CCAA00]) init];
          v106 = sub_22EE3BC14();
          if (v104 == 7)
          {
            v215 = 0;
            v107 = [v105 removeItemAtURL:v106 error:&v215];

            v108 = v215;
            if (v107)
            {
              goto LABEL_54;
            }
          }

          else
          {
            v129 = sub_22EE3BC14();
            v215 = 0;
            v130 = [v105 moveItemAtURL:v106 toURL:v129 error:&v215];

            v108 = v215;
            if (v130)
            {
LABEL_54:
              v109 = v108;
              sub_22EE3BC64();
              v110 = [objc_allocWithZone(MEMORY[0x277CCAA00]) init];
              v111 = sub_22EE3BC14();
              v215 = 0;
              v112 = [v110 removeItemAtURL:v111 error:&v215];

              v113 = v215;
              v114 = v209;
              if (!v112)
              {
                v132 = v215;
                sub_22EE3BBA4();

                swift_willThrow();
                sub_22EE1D490(v203, v96);
                v73 = v208;
                (*(v208 + 8))(v196, v15);
LABEL_70:
                ktrace_file_close(v201);
                goto LABEL_71;
              }

              v179 = v96;
              v73 = v208;
              v115 = v182;
              (*(v208 + 56))(v182, 1, 1, v15);
              v116 = *(*v114 + 256);
              v117 = v113;
              v116(v115);
              sub_22EE3BC64();
              v86 = v183;
              sub_22EE3BE14();
              v118 = v187;
              v119 = v185;
              v120 = v189;
              (*(v187 + 104))(v185, *MEMORY[0x277CC99A0], v189);
              v121 = v188;
              sub_22EE3BD94();
              v122 = v192;
              sub_22EE3BE04();
              (*(v190 + 1))(v121, v191);
              (*(v118 + 8))(v119, v120);
              (*(v184 + 8))(v86, v186);
              v123 = (v114 + OBJC_IVAR____TtC6ktrace9Recording_pendingExtension);
              v124 = v193;
              v125 = v199;
              v126 = listFiles(in:pathExtension:olderThan:)(v193, *v123, v123[1], v122);
              if (v125)
              {
                sub_22EE1D490(v203, v179);
                sub_22EDDBA48(v122, &qword_27DA94DD0, &unk_22EE40AE0);
                v128 = *(v73 + 8);
                v15 = v206;
                v128(v124, v206);
LABEL_69:
                v128(v196, v15);
                goto LABEL_70;
              }

              v133 = *(v126 + 2);
              v189 = 0;
              if (v133)
              {
                v190 = v126;
                v134 = v127;
                v135 = [objc_allocWithZone(MEMORY[0x277CCA8E8]) init];
                v136 = [v135 stringFromByteCount_];

                v137 = sub_22EE3C124();
                v139 = v138;

                v140 = *(v209 + OBJC_IVAR____TtC6ktrace9Recording_reporter);
                v215 = 0;
                v216 = 0xE000000000000000;
                sub_22EE3C864();
                MEMORY[0x2318F58F0](0x20646E756F66, 0xE600000000000000);
                v214[0] = v133;
                v141 = sub_22EE3CB84();
                MEMORY[0x2318F58F0](v141);

                MEMORY[0x2318F58F0](0xD000000000000028, 0x800000022EE49CC0);
                MEMORY[0x2318F58F0](v137, v139);

                MEMORY[0x2318F58F0](58, 0xE100000000000000);
                v142 = *(*v140 + 248);
                v86 = v140;
                v142(v215, v216);

                v143 = *(v190 + 2);
                if (v143)
                {
                  v197 = *(v208 + 16);
                  v144 = &v190[(*(v208 + 80) + 32) & ~*(v208 + 80)];
                  v195 = *(v208 + 72);
                  v198 = v208 + 16;
                  v199 = v140;
                  v145 = (v208 + 8);
                  v191 = v142;
                  v146 = v206;
                  v147 = v180;
                  do
                  {
                    v197(v147, v144, v146);
                    v148 = sub_22EE3BC84();
                    v150 = v149;
                    (*v145)(v147, v146);
                    v151 = v148;
                    v86 = v199;
                    v191(v151, v150);

                    v144 = &v195[v144];
                    --v143;
                  }

                  while (v143);
                }
              }

              v152 = v179;
              v45 = *&v178[*(v200 + 52)];
              v153 = v45 + 40;
              v30 = -*(v45 + 16);
              v154 = -1;
              v15 = v206;
              while (v30 + v154 != -1)
              {
                if (++v154 >= *(v45 + 16))
                {
                  __break(1u);
                  goto LABEL_90;
                }

                v155 = v153 + 16;
                v156 = sub_22EE3C184();
                v86 = notify_post((v156 + 32));

                v153 = v155;
                v73 = v208;
                if (v86)
                {
                  type metadata accessor for KTraceRecordError(0);
                  sub_22EE1B620(&qword_27DA94D80, type metadata accessor for KTraceRecordError, &unk_22EE43AF0);
                  swift_allocError();
                  *v157 = v86;
                  swift_storeEnumTagMultiPayload();
                  swift_willThrow();
                  sub_22EE1D490(v203, v152);
                  sub_22EDDBA48(v192, &qword_27DA94DD0, &unk_22EE40AE0);
                  v128 = *(v73 + 8);
                  v128(v193, v15);
                  goto LABEL_69;
                }
              }

              v159 = v209;
              v160 = sub_22EE19C00(v209, v202);
              v162 = v161;
              v164 = v163;
              if (v160)
              {
                v204(v234);
                sub_22EDF4ECC(v234);
                if (v234[8] < 1)
                {
                  v165 = *(v159 + OBJC_IVAR____TtC6ktrace9Recording_reporter);
                  v166 = 0xE800000000000000;
                  LOBYTE(v15) = 1;
                  v167 = 0x6574656C706D6F63;
                  goto LABEL_77;
                }

                v164 = 0xEB0000000074736FLL;
                v162 = 0x6C2073746E657665;
              }

              LOBYTE(v15) = 0;
              v165 = *(v159 + OBJC_IVAR____TtC6ktrace9Recording_reporter);
              v166 = 0xE600000000000000;
              v167 = 0x64656C696166;
LABEL_77:
              v215 = 0;
              v216 = 0xE000000000000000;
              MEMORY[0x2318F58F0](v167, v166);

              MEMORY[0x2318F58F0](8250, 0xE200000000000000);
              v209 = v162;
              MEMORY[0x2318F58F0](v162, v164);
              v168 = v215;
              v169 = v216;
              v170 = sub_22ED80B20();
              v171 = sub_22ED808E4();
              v172 = *(*v165 + 216);
              v172(v168, v169, v170 & 1, v171 & 1);

              LOBYTE(v168) = sub_22ED80B20();
              v173 = sub_22ED808E4();
              v174 = (v172)(0xD000000000000042, 0x800000022EE49C70, v168 & 1, v173 & 1);
              v86 = *(v181 + 40);
              if (!v86)
              {

                _Block_release(0);
                v45 = v206;
                v30 = v192;
                goto LABEL_85;
              }

              MEMORY[0x28223BE20](v174);
              v45 = v206;
              v30 = v192;
              if ((v164 & 0x1000000000000000) != 0)
              {
                goto LABEL_93;
              }

              if ((v164 & 0x2000000000000000) != 0)
              {
                v215 = v209;
                v216 = v164 & 0xFFFFFFFFFFFFFFLL;
                LODWORD(v214[0]) = 6;
                v214[1] = &v215;
                _Block_copy(v86);
                (*(v86 + 16))(v86, v214);
              }

              else
              {
                if ((v209 & 0x1000000000000000) == 0)
                {
                  goto LABEL_93;
                }

                LODWORD(v215) = 6;
                v216 = (v164 & 0xFFFFFFFFFFFFFFFLL) + 32;
                _Block_copy(v86);
                (*(v86 + 16))(v86, &v215);
              }

              goto LABEL_84;
            }
          }

          v131 = v108;
          sub_22EE3BBA4();

          swift_willThrow();
          sub_22EE1D490(v203, v96);
          ktrace_file_close(v201);
          v73 = v208;
          goto LABEL_71;
        }

        if (__OFSUB__(HIDWORD(v98), v98))
        {
          goto LABEL_92;
        }

        v101 = HIDWORD(v98) - v98;
        goto LABEL_51;
      }
    }

    __break(1u);
  }

  sub_22EDDBA48(v45, &qword_27DA95150, qword_22EE44A90);
  result = sub_22EE3C994();
  __break(1u);
  return result;
}

void _session_end_internal(int *a1, char a2, int a3)
{
  v34 = *MEMORY[0x277D85DE8];
  v6 = *a1;
  v7 = a1[1];
  if ((a2 & 2) != 0)
  {
    dispatch_assert_queue_V2(*(a1 + 16));
  }

  os_unfair_lock_lock(a1 + 206);
  v8 = *(a1 + 112);
  if ((v8 & 2) == 0 && (v8 & 1) == 0)
  {
    atomic_store(1u, a1 + 156);
    os_unfair_lock_unlock(a1 + 206);
    ktrace_log_init();
    v9 = ktrace_log;
    if (!os_log_type_enabled(ktrace_log, OS_LOG_TYPE_INFO))
    {
      return;
    }

    *buf = 0;
    v10 = "ending before starting/configuration";
LABEL_10:
    _os_log_impl(&dword_22ED7A000, v9, OS_LOG_TYPE_INFO, v10, buf, 2u);
    return;
  }

  v11 = atomic_load(a1 + 157);
  if (v11)
  {
    os_unfair_lock_unlock(a1 + 206);
    ktrace_log_init();
    v9 = ktrace_log;
    if (!os_log_type_enabled(ktrace_log, OS_LOG_TYPE_INFO))
    {
      return;
    }

    *buf = 0;
    v10 = "ending while already ended immediately";
    goto LABEL_10;
  }

  if ((v6 | 2) == 2)
  {
    v12 = _session_end_live(a1);
    if (a3)
    {
      goto LABEL_14;
    }

LABEL_31:
    ktrace_postprocess_file_internal_cold_4();
  }

  v12 = 0;
  if (!a3)
  {
    goto LABEL_31;
  }

LABEL_14:
  if (a2)
  {
    atomic_store(1u, a1 + 157);
  }

  if ((a2 & 4) != 0)
  {
    atomic_store(1u, a1 + 158);
    atomic_store(1u, a1 + 156);
    os_unfair_lock_unlock(a1 + 206);
    if (!v12)
    {
      v15 = *(a1 + 10);
      if (v15)
      {
        _session_end_internal(v15, 1, 3);
      }

      a1[202] = 7;
      goto LABEL_36;
    }

    goto LABEL_20;
  }

  atomic_store(1u, a1 + 156);
  os_unfair_lock_unlock(a1 + 206);
  if (v12)
  {
LABEL_20:
    if (a1[1] == 2)
    {
      *(a1 + 112) |= 0x20u;
      ktrace_file_append_live_stackshot_internal(*(a1 + 81), *(a1 + 21));
    }

    a1[202] = a3;
    v13 = v7 - 1;
    if (v13 <= 1)
    {
      [*(a1 + 75) willEndTracingWithFile:0];
    }

    trace_set_enable(0);
    if (*(a1 + 74))
    {
      ktrace_client_stop_tracing();
    }

    if (v13 <= 1)
    {
      v14 = *(a1 + 16);
      if (!v14)
      {
        ktrace_postprocess_file_internal_cold_4();
      }

      if ((a2 & 2) != 0)
      {
        [*(a1 + 75) didEndTracingWithFile:*(a1 + 81)];
      }

      else
      {
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = ___session_end_internal_block_invoke;
        block[3] = &__block_descriptor_40_e5_v8__0l;
        block[4] = a1;
        dispatch_async(v14, block);
      }
    }
  }

LABEL_36:
  ktrace_log_init();
  v16 = ktrace_log;
  if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_INFO))
  {
    v18 = "";
    v19 = " immediately";
    if ((a2 & 1) == 0)
    {
      v19 = "";
    }

    v20 = _end_reason_names[a3];
    v21 = " from draining";
    if ((a2 & 2) == 0)
    {
      v21 = "";
    }

    *buf = 136315906;
    v27 = v19;
    v28 = 2080;
    v29 = v21;
    v30 = 2080;
    v31 = v20;
    if (v12)
    {
      v18 = ", was active";
    }

    v32 = 2080;
    v33 = v18;
    _os_log_impl(&dword_22ED7A000, v16, OS_LOG_TYPE_INFO, "ending tracing%s%s due to %s%s", buf, 0x2Au);
  }

  v22 = a1[1];
  if (v22 >= 3)
  {
    if (v22 != 4)
    {
      _session_end_internal_cold_1();
    }

    if (v12)
    {
      _session_teardown(a1, v17);
    }
  }

  else if ((a2 & 1) != 0 || *a1 == 1)
  {
    v23 = *(a1 + 16);
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = ___session_end_internal_block_invoke_13;
    v24[3] = &__block_descriptor_40_e5_v8__0l;
    v24[4] = a1;
    dispatch_async(v23, v24);
  }
}

uint64_t sub_22ED86594(uint64_t a1, uint64_t a2, char a3)
{
  v7 = v3 + OBJC_IVAR____TtC6ktrace9Recording_primaryEndReason;
  swift_beginAccess();
  v8 = *v7;
  v9 = *(v7 + 8);
  *v7 = a1;
  *(v7 + 8) = a2;
  v10 = *(v7 + 16);
  *(v7 + 16) = a3;
  return sub_22ED86600(v8, v9, v10);
}

uint64_t sub_22ED86600(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_22ED83014(a1, a2, a3);
  }

  return a1;
}

uint64_t trace_parse_filter(const char *a1, void *a2)
{
  if (!strcmp(a1, "ALL"))
  {
    memset(a2, 255, 0x2000uLL);
    return 0;
  }

  bzero(a2, 0x2000uLL);
  v4 = strdup(a1);
  if (!v4)
  {
    return 12;
  }

  v5 = v4;
  __stringp = v4;
  v6 = strsep(&__stringp, ",");
  if (!v6)
  {
    goto LABEL_37;
  }

  while (1)
  {
    v13 = v6;
    v7 = *v6;
    if (v7 != 67)
    {
      if (v7 != 83)
      {
        if (*v6)
        {
          *__error() = 22;
          v11 = *__error();
          ktrace_log_init();
          if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
          {
            trace_parse_filter_cold_8();
          }
        }

        else
        {
          *__error() = 22;
          v11 = *__error();
          ktrace_log_init();
          if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
          {
            trace_parse_filter_cold_1();
          }
        }

        goto LABEL_36;
      }

      v8 = strtoul((v6 + 1), &v13, 16);
      if ((v6 + 1) == v13)
      {
        *__error() = 22;
        v11 = *__error();
        ktrace_log_init();
        if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
        {
          trace_parse_filter_cold_4();
        }

        goto LABEL_36;
      }

      if (*v13)
      {
        *__error() = 22;
        v11 = *__error();
        ktrace_log_init();
        if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
        {
          trace_parse_filter_cold_2();
        }

        goto LABEL_36;
      }

      if (v8 >= 0x10000)
      {
        *__error() = 34;
        v11 = *__error();
        ktrace_log_init();
        if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
        {
          trace_parse_filter_cold_3();
        }

        goto LABEL_36;
      }

      *(a2 + (v8 >> 3)) |= 1 << (v8 & 7);
      goto LABEL_15;
    }

    v9 = strtoul((v6 + 1), &v13, 0);
    if ((v6 + 1) == v13)
    {
      break;
    }

    if (*v13)
    {
      *__error() = 22;
      v11 = *__error();
      ktrace_log_init();
      if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
      {
        trace_parse_filter_cold_5();
      }

      goto LABEL_36;
    }

    if (v9 > 0xFF)
    {
      *__error() = 34;
      v11 = *__error();
      ktrace_log_init();
      if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
      {
        trace_parse_filter_cold_6();
      }

      goto LABEL_36;
    }

    for (i = 0; i != 256; ++i)
    {
      *(a2 + (((v9 << 8) + i) >> 3)) |= 1 << (i & 7);
    }

LABEL_15:
    v6 = strsep(&__stringp, ",");
    if (!v6)
    {
      goto LABEL_37;
    }
  }

  *__error() = 22;
  v11 = *__error();
  ktrace_log_init();
  if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
  {
    trace_parse_filter_cold_7();
  }

LABEL_36:
  *__error() = v11;
  v6 = 1;
LABEL_37:
  free(v5);
  return v6;
}

uint64_t ktrace_set_buffer_size(uint64_t result, uint64_t a2)
{
  if (!result)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (*(result + 224))
  {
    ktrace_callback_list_add_cold_2();
  }

  *(result + 336) = a2;
  return result;
}

uint64_t ktrace_events_filter_bitmap(_WORD *a1, const void *a2, const void *a3)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (!a2)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  v6 = malloc_type_malloc(0x2000uLL, 0x55BA61A7uLL);
  if (!v6)
  {
    return 12;
  }

  v7 = v6;
  memcpy(v6, a2, 0x2000uLL);
  v8 = ktrace_events_filter_bitmap_internal(a1, v7, a3);
  if (v8)
  {
    free(v7);
  }

  return v8;
}

uint64_t ktrace_events_filter_bitmap_internal(_WORD *a1, uint64_t a2, const void *a3)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  v5 = ktrace_callback_list_add(a1, (a1 + 12));
  if (!v5)
  {
    return 12;
  }

  v6 = v5;
  *v5 = 1;
  *(v5 + 1) = a2;
  *(v5 + 4) = 0;
  v7 = _Block_copy(a3);
  result = 0;
  *(v6 + 3) = v7;
  return result;
}

_WORD *ktrace_callback_list_add(_WORD *result, uint64_t a2)
{
  if (!result)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (!a2)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (result[112])
  {
    ktrace_callback_list_add_cold_2();
  }

  v3 = *a2;
  v4 = *(a2 + 4);
  v5 = *a2 + 1;
  *a2 = v5;
  if (v3 < v4)
  {
    goto LABEL_10;
  }

  if (v4)
  {
    v4 *= 2;
  }

  else
  {
    v4 = 1;
  }

  v6 = malloc_type_realloc(*(a2 + 8), 32 * v4, 0x109204018D12139uLL);
  if (v6)
  {
    *(a2 + 4) = v4;
    *(a2 + 8) = v6;
    v5 = *a2;
LABEL_10:
    if (v5 > v4)
    {
      ktrace_postprocess_file_internal_cold_4();
    }

    return (*(a2 + 8) + 32 * v5 - 32);
  }

  return v6;
}

uint64_t ktrace_configure(unint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (*a1 == 1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (*a1 == 3)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (*(a1 + 224))
  {
    ktrace_callback_list_add_cold_2();
  }

  v3 = atomic_load(&live_session);
  if (v3 && (*(v3 + 224) & 1) != 0)
  {
    return 22;
  }

  v4 = v3;
  atomic_compare_exchange_strong(&live_session, &v4, a1);
  if (v4 != v3)
  {
    return 22;
  }

  _session_machine_init(a1);
  *(a1 + 224) |= 2u;
  *(a1 + 4) = 4;
  v5 = trace_initialize(*(a1 + 336));
  if (v5 || (ktrace_compute_filter(a1), _session_cpus_init(a1), v5 = apply_kernel_typefilter_and_pid_filter(a1), v5))
  {
    v6 = v5;
  }

  else
  {
    v6 = trace_set_enable(1);
    if (!v6)
    {
      return v6;
    }
  }

  _session_end_internal(a1, 1, 1);
  return v6;
}

uint64_t trace_initialize_bufs(int a1)
{
  v8 = *MEMORY[0x277D85DE8];
  result = trace_remove_internal();
  if (!result)
  {
    *v5 = 0x1800000001;
    v6 = 4;
    v7 = a1;
    if (sysctl(v5, 4u, 0, 0, 0, 0) < 0)
    {
      v3 = *__error();
      ktrace_log_init();
      if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
      {
        trace_initialize_bufs_cold_2();
      }
    }

    else
    {
      v6 = 6;
      if ((sysctl(v5, 3u, 0, 0, 0, 0) & 0x80000000) == 0)
      {
        return 0;
      }

      v3 = *__error();
      ktrace_log_init();
      if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
      {
        trace_initialize_bufs_cold_1();
      }
    }

    *__error() = v3;
    v4 = *__error();
    if (v4 <= 1)
    {
      return 1;
    }

    else
    {
      return v4;
    }
  }

  return result;
}

uint64_t trace_remove_internal()
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = xmmword_22EE3F4E8;
  v3 = 0;
  if ((sysctl(&v2, 3u, 0, 0, 0, 0) & 0x80000000) == 0)
  {
    return 0;
  }

  v1 = *__error();
  if (v1 <= 1)
  {
    return 1;
  }

  else
  {
    return v1;
  }
}

uint64_t trace_set_enable(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  *v4 = 0x1800000001;
  v5 = 3;
  v6 = a1;
  if ((sysctl(v4, 4u, 0, 0, 0, 0) & 0x80000000) == 0)
  {
    return 0;
  }

  v2 = *__error();
  ktrace_log_init();
  if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
  {
    trace_set_enable_cold_1();
  }

  *__error() = v2;
  v3 = *__error();
  if (v3 <= 1)
  {
    return 1;
  }

  else
  {
    return v3;
  }
}

void trace_set_enable_cold_1()
{
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void ktrace_session_free(char *a1)
{
  if ((*a1 | 2) == 2)
  {
    _session_end_live(a1);
  }

  v2 = *(a1 + 7);
  if (v2)
  {
    _Block_release(v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    _Block_release(v3);
  }

  v4 = *(a1 + 76);
  if (v4 && (*(a1 + 112) & 4) != 0)
  {
    ktrace_file_close(v4);
  }

  if (*(a1 + 74) && (*(a1 + 112) & 8) != 0)
  {
    ktrace_client_destroy();
  }

  ktrace_callback_list_reset(a1 + 6);
  ktrace_callback_list_reset(a1 + 10);
  ktrace_callback_list_reset(a1 + 28);
  ktrace_callback_list_reset(a1 + 24);
  kthmap_destroy(*(a1 + 37));
  ktrace_machine_destroy(*(a1 + 43));
  vnode_path_map_destroy(*(a1 + 50));
  thread_cputime_map_destroy(*(a1 + 51));
  clear_events(*(a1 + 30), a1 + 31);
  free(*(a1 + 30));
  v5 = *(a1 + 69);
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = *(a1 + 73);
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = *(a1 + 71);
  if (v7)
  {
    CFRelease(v7);
  }

  kteventnames_destroy((a1 + 360));
  if (*(a1 + 22))
  {
    dispatch_source_cancel_and_wait();
    dispatch_release(*(a1 + 22));
  }

  if (*(a1 + 23))
  {
    dispatch_source_cancel_and_wait();
    dispatch_release(*(a1 + 23));
  }

  if (*(a1 + 25))
  {
    dispatch_source_cancel_and_wait();
    dispatch_release(*(a1 + 25));
  }

  if (*(a1 + 24))
  {
    dispatch_source_cancel_and_wait();
    dispatch_release(*(a1 + 24));
  }

  if (*(a1 + 26))
  {
    dispatch_source_cancel_and_wait();
    dispatch_release(*(a1 + 26));
  }

  if (*(a1 + 27))
  {
    dispatch_source_cancel_and_wait();
    dispatch_release(*(a1 + 27));
  }

  v8 = *(a1 + 83);
  if (v8)
  {
    _Block_release(v8);
  }

  v9 = *(a1 + 84);
  if (v9)
  {
    _Block_release(v9);
  }

  v10 = *(a1 + 11);
  if (v10)
  {
    _Block_release(v10);
  }

  v11 = *(a1 + 9);
  if (v11)
  {
    _Block_release(v11);
  }

  if (*(a1 + 52))
  {
    MEMORY[0x2318F7510]();
  }

  v12 = *(a1 + 78);
  if (v12)
  {
    ktrace_stream_destroy(v12);
  }

  v13 = *(a1 + 77);
  if (v13)
  {
    ktrace_stream_destroy(v13);
  }

  v14 = *(a1 + 38);
  if (v14)
  {
    CFRelease(v14);
  }

  if (!*a1)
  {
    v15 = *(a1 + 40);
    if (v15)
    {
      if (v15[13])
      {
        ktrace_postprocess_file_internal_cold_4();
      }

      ktrace_chunk_destroy(v15);
    }
  }

  v16 = *(a1 + 39);
  if (v16)
  {
    ktrace_symbolicator_destroy(v16);
  }

  v17 = *(a1 + 80);
  if (v17)
  {
    ktrace_time_ringbuffer_destroy(v17);
  }

  v18 = *(a1 + 44);
  if (v18)
  {
    ktrace_cpus_destroy(v18);
  }

  free(*(a1 + 1));
  free(*(a1 + 87));
  free(*(a1 + 88));
  dispatch_release(*(a1 + 102));
  v19 = *(a1 + 86);
  if (v19)
  {
    (*(v19 + 16))();
    _Block_release(*(a1 + 86));
  }

  v20 = *(a1 + 85);
  if (v20)
  {
    _Block_release(v20);
  }

  free(a1);
}

void ktrace_callback_list_reset(int *a1)
{
  if (*a1 >= 1)
  {
    v2 = 0;
    v3 = 0;
    do
    {
      v4 = *(a1 + 1);
      if (*(v4 + v2) == 1)
      {
        free(*(v4 + v2 + 8));
      }

      _Block_release(*(v4 + v2 + 24));
      ++v3;
      v2 += 32;
    }

    while (v3 < *a1);
  }

  free(*(a1 + 1));
  *a1 = 0;
  *(a1 + 1) = 0;
}

void vnode_path_map_destroy(CFDictionaryRef *a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      Count = CFDictionaryGetCount(v2);
      if (Count)
      {
        v4 = Count;
        v5 = malloc_type_malloc(8 * Count, 0x80040B8603338uLL);
        CFDictionaryGetKeysAndValues(*a1, 0, v5);
        if (v4 >= 1)
        {
          v6 = v5;
          do
          {
            v7 = *v6++;
            free(v7);
            --v4;
          }

          while (v4);
        }

        free(v5);
      }

      CFRelease(*a1);
    }

    v8 = a1[1];
    if (v8)
    {
      CFRelease(v8);
    }

    free(a1);
  }
}

uint64_t clear_events(uint64_t result, void *a2)
{
  for (i = 0; i != 1024; ++i)
  {
    v3 = *(result + 8 * i);
    if (v3)
    {
      v4 = *(v3 + 56);
      for (j = *(result + 8 * i); v4; v4 = *(v4 + 56))
      {
        j = v4;
      }

      *(j + 56) = *a2;
      *a2 = v3;
      *(result + 8 * i) = 0;
    }
  }

  return result;
}

void kthmap_destroy(CFTypeRef *a1)
{
  if (a1)
  {
    CFRelease(a1[2]);
    CFRelease(a1[3]);
    CFRelease(a1[4]);
    CFRelease(a1[5]);
    CFRelease(a1[6]);
    CFRelease(a1[7]);
    CFRelease(a1[8]);
    CFRelease(a1[9]);
    CFRelease(a1[10]);
    CFRelease(a1[11]);

    free(a1);
  }
}

void ktrace_machine_destroy(uint64_t a1)
{
  if (a1)
  {
    free(*(a1 + 40));
    free(*(a1 + 48));
    free(*(a1 + 56));
    free(*(a1 + 64));
    free(*(a1 + 72));
    free(*(a1 + 80));
    free(*(a1 + 88));
    free(*(a1 + 96));
    free(*(a1 + 104));
    free(*(a1 + 112));
    free(*(a1 + 120));
    free(*(a1 + 128));
    free(*(a1 + 144));
    free(*(a1 + 136));
    free(*(a1 + 152));
    v2 = *(a1 + 216);
    if (v2)
    {
      CFRelease(v2);
    }

    free(a1);
  }
}

void thread_cputime_map_destroy(const void **a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      CFRelease(v2);
    }

    free(a1);
  }
}

void kteventnames_destroy(uint64_t a1)
{
  CFRelease(*(a1 + 8));
  CFRelease(*a1);
  CFRelease(*(a1 + 16));
  v2 = *(a1 + 24);

  CFRelease(v2);
}

void _session_teardown(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (*(a1 + 4) != 4)
  {
    dispatch_assert_queue_V2(*(a1 + 128));
  }

  v3 = atomic_load((a1 + 159));
  if ((v3 & 1) == 0)
  {
    atomic_store(1u, (a1 + 159));
    v4 = *a1;
    if (*a1 > 1)
    {
      if (v4 == 2)
      {
        trace_set_enable(1);
      }

      else if (v4 != 3)
      {
        goto LABEL_11;
      }
    }

    else if (v4)
    {
      if (v4 != 1)
      {
LABEL_11:
        _session_teardown_cold_3();
      }
    }

    else
    {
      trace_remove_internal();
    }

    v5 = atomic_load((a1 + 158));
    if ((v5 & 1) == 0)
    {
      v6 = *(a1 + 4);
      if ((v6 - 1) <= 1)
      {
        v7 = *(a1 + 648);
        if (!v7)
        {
          ktrace_postprocess_file_internal_cold_4();
        }

        if (v6 == 2)
        {
          ktrace_time_ringbuffer_tracing_stopped(*(a1 + 640), v7);
        }

        v8 = *(a1 + 672);
        if (v8)
        {
          (*(v8 + 16))(v8, *(a1 + 648));
        }

        if ((*(a1 + 828) & 1) == 0)
        {
          v9 = *(a1 + 648);
          if (*(v9 + 16) != 4)
          {
            kteventnames_append(a1 + 360, v9);
            v17 = 0;
            if ((*(a1 + 224) & 0x100) != 0)
            {
              v10 = 1;
            }

            else
            {
              v10 = 3;
            }

            if (*(a1 + 656) >= 2u)
            {
              v11 = v10 | 4;
            }

            else
            {
              v11 = v10;
            }

            ktrace_postprocess_file_internal(a1, *(a1 + 648), 0, v11, &v17);
            if (*(a1 + 592))
            {
              ktrace_client_get_subfile();
            }

            if (v17)
            {
              goto LABEL_37;
            }

            v12 = ktrace_file_latest_timestamp(*(a1 + 648), &v17);
            if (v12)
            {
              *__error() = v12;
              v13 = *__error();
              ktrace_log_init();
              v14 = ktrace_log;
              if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
              {
                _session_teardown_cold_1(v13, v14);
              }

              *__error() = v13;
            }

            if (v17)
            {
LABEL_37:
              ktrace_file_append_chunk(*(a1 + 648), 32775, 0, 1, &v17, 8);
            }
          }
        }

        if (*(a1 + 592))
        {
          ktrace_client_destroy();
        }

        v15 = *(a1 + 648);
        if (v15)
        {
          v16 = ktrace_catalog_open(v15);
          [*(a1 + 600) willFinishWithCatalog:v16 file:*(a1 + 648)];
          if (v16)
          {
            ktrace_catalog_close(v16);
          }
        }

        else
        {
          [*(a1 + 600) willFinishWithCatalog:0 file:0];
        }

        ktrace_file_close(*(a1 + 648));
        *(a1 + 648) = 0;
      }
    }
  }
}

void *ktrace_session_create_with_flags(char a1)
{
  v2 = malloc_type_malloc(0x340uLL, 0x10F00409744CDD0uLL);
  bzero(v2, 0x340uLL);
  v3 = kthmap_create();
  v2[37] = v3;
  if (v3)
  {
    kteventnames_init((v2 + 45));
    v4 = malloc_type_calloc(0x400uLL, 8uLL, 0x2004093837F09uLL);
    v2[30] = v4;
    if (v4)
    {
      memset(&callBacks, 0, sizeof(callBacks));
      v2[69] = CFSetCreateMutable(0, 0, &callBacks);
      v2[73] = CFSetCreateMutable(0, 0, &callBacks);
      v9 = *byte_28439FF40;
      v2[71] = CFSetCreateMutable(0, 0, &v9);
      *(v2 + 112) &= 0xFFFCu;
      v2[38] = 0;
      v2[63] = -1;
      v2[102] = dispatch_group_create();
      *(v2 + 206) = 0;
      *(v2 + 36) = 25;
      *(v2 + 38) = 5000;
      v12 = 0;
      v11 = 4;
      if (sysctlbyname("hw.logicalcpu_max", &v12, &v11, 0, 0) == -1)
      {
        ktrace_postprocess_file_internal_cold_4();
      }

      if (!v12)
      {
        ktrace_postprocess_file_internal_cold_4();
      }

      v2[42] = v12 << 6;
      *v2 = 0;
      *(v2 + 164) = 0;
      *(v2 + 276) = 0;
      *(v2 + 66) = 1;
      *(v2 + 71) = a1 & 1;
      *(v2 + 64) = a1 & 1;
      *(v2 + 392) = v2[49] & 0xFD | (2 * (a1 & 1));
      *(v2 + 112) = v2[28] & 0xFDFF | ((a1 & 1) << 9);
      *(v2 + 65) = a1 & 1;
      *(v2 + 72) = a1 & 1;
      return v2;
    }
  }

  else
  {
    v4 = v2[30];
  }

  free(v4);
  v2[30] = 0;
  free(v2[37]);
  v2[37] = 0;
  v5 = v2[69];
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = v2[73];
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = v2[71];
  if (v7)
  {
    CFRelease(v7);
  }

  free(v2);
  return 0;
}

void *kthmap_create()
{
  v0 = malloc_type_calloc(1uLL, 0x68uLL, 0x1020040FEC3D670uLL);
  v1 = v0;
  if (v0)
  {
    *(v0 + 96) |= 3u;
    valueCallBacks = *byte_2843A0030;
    v23 = *byte_2843A0058;
    v22 = *byte_2843A0080;
    v2 = CFDictionaryCreateMutable(0, 0, &int_key_callbacks, &valueCallBacks);
    v1[2] = v2;
    if (!v2 || (valueCallBacks.release = 0, v3 = CFDictionaryCreateMutable(0, 0, &long_key_callbacks, &valueCallBacks), (v1[3] = v3) == 0) || (v4 = CFDictionaryCreateMutable(0, 0, &long_key_callbacks, &valueCallBacks), (v1[4] = v4) == 0) || (Mutable = CFDictionaryCreateMutable(0, 0, &long_key_callbacks, &str_value_callbacks), (v1[5] = Mutable) == 0) || (v6 = CFDictionaryCreateMutable(0, 0, &long_key_callbacks, &long_value_callbacks), (v1[6] = v6) == 0) || (v7 = CFDictionaryCreateMutable(0, 0, &long_key_callbacks, &int_value_callbacks), (v1[7] = v7) == 0) || (v8 = CFDictionaryCreateMutable(0, 0, &long_key_callbacks, &v22), (v1[8] = v8) == 0) || (v22.release = 0, v9 = CFDictionaryCreateMutable(0, 0, &long_key_callbacks, &v22), (v1[9] = v9) == 0) || (v10 = CFDictionaryCreateMutable(0, 0, &long_key_callbacks, &v23), (v1[10] = v10) == 0) || (v11 = CFSetCreateMutable(0, 0, &long_value_set_callbacks), (v1[11] = v11) == 0))
    {
      v12 = v1[9];
      if (v12)
      {
        CFRelease(v12);
      }

      v13 = v1[8];
      if (v13)
      {
        CFRelease(v13);
      }

      v14 = v1[7];
      if (v14)
      {
        CFRelease(v14);
      }

      v15 = v1[6];
      if (v15)
      {
        CFRelease(v15);
      }

      v16 = v1[5];
      if (v16)
      {
        CFRelease(v16);
      }

      v17 = v1[4];
      if (v17)
      {
        CFRelease(v17);
      }

      v18 = v1[2];
      if (v18)
      {
        CFRelease(v18);
      }

      v19 = v1[3];
      if (v19)
      {
        CFRelease(v19);
      }

      v20 = v1[10];
      if (v20)
      {
        CFRelease(v20);
      }

      free(v1);
      return 0;
    }
  }

  return v1;
}

uint64_t ktrace_session_set_event_names_enabled(uint64_t result, uint64_t a2)
{
  if (!result)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  *(result + 256) = a2;
  if (!a2)
  {
    v3 = result + 360;

    return kteventnames_use_default(v3, a2);
  }

  return result;
}

uint64_t kteventnames_use_default(uint64_t result, uint64_t a2)
{
  if (*(result + 32))
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (a2)
  {
    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  *(result + 32) = *(result + 32) & 0xFD | v2;
  return result;
}

uint64_t ktrace_machine_create_current()
{
  v65 = *MEMORY[0x277D85DE8];
  v52 = xmmword_22EE3F330;
  v0 = malloc_type_calloc(1uLL, 0xE0uLL, 0x10700402D9E20E3uLL);
  v1 = v0;
  if (!v0)
  {
    return v1;
  }

  memset(uu, 0, sizeof(uu));
  v0[2] = -1;
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    v5 = 12;
    goto LABEL_21;
  }

  v3 = Mutable;
  *buf = 0x400000001;
  LODWORD(v53) = 0;
  iterator = 0;
  v59 = 4;
  v4 = sysctl_string(Mutable, @"kern_version", buf, 2u, (v1 + 40));
  if (v4)
  {
    goto LABEL_14;
  }

  v4 = sysctlbyname_string(v3, @"boot_args", "kern.bootargs", (v1 + 48), 0);
  if (v4)
  {
    goto LABEL_14;
  }

  *buf = 0x1800000006;
  v4 = sysctl_uint64(v3, @"hw_memsize", buf, 2, (v1 + 8));
  if (v4)
  {
    goto LABEL_14;
  }

  *buf = 0x700000006;
  v4 = sysctl_uint(v3, @"hw_pagesize", buf, 2, (v1 + 168));
  if (v4)
  {
    goto LABEL_14;
  }

  v4 = sysctlbyname_uint(v3, @"vm_pagesize", "vm.pagesize", (v1 + 172));
  if (v4)
  {
    goto LABEL_14;
  }

  v4 = sysctlbyname_int(v3, @"cpu_type", "hw.cputype", (v1 + 192));
  if (v4)
  {
    goto LABEL_14;
  }

  v4 = sysctlbyname_int(v3, @"cpu_subtype", "hw.cpusubtype", (v1 + 196));
  if (v4)
  {
    goto LABEL_14;
  }

  v4 = sysctlbyname_int(v3, @"cpu_family", "hw.cpufamily", (v1 + 200));
  if (v4)
  {
    goto LABEL_14;
  }

  *buf = 0x200000006;
  v4 = sysctl_string(v3, @"hw_model", buf, 2u, (v1 + 88));
  if (v4)
  {
    goto LABEL_14;
  }

  *buf = 0x1B00000006;
  v4 = sysctl_string(v3, @"hw_product", buf, 2u, (v1 + 96));
  if (v4)
  {
    goto LABEL_14;
  }

  v4 = sysctlbyname_int(v3, @"active_cpus", "hw.activecpu", &v53);
  if (v4)
  {
    goto LABEL_14;
  }

  if ((v53 & 0x80000000) != 0)
  {
    goto LABEL_49;
  }

  *(v1 + 176) = v53;
  v4 = sysctlbyname_int(v3, @"max_cpus", "hw.logicalcpu_max", &v53);
  if (v4)
  {
LABEL_14:
    v5 = v4;
    goto LABEL_15;
  }

  if ((v53 & 0x80000000) != 0)
  {
LABEL_49:
    v5 = 22;
LABEL_15:
    *__error() = v5;
    v6 = *__error();
    ktrace_log_init();
    if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
    {
      ktrace_machine_create_current_cold_9();
    }

    goto LABEL_17;
  }

  *(v1 + 180) = v53;
  v4 = sysctlbyname_string(v3, @"boot_uuid", "kern.bootsessionuuid", (v1 + 120), 0);
  if (v4)
  {
    goto LABEL_14;
  }

  v4 = sysctlbyname_uint64(v3, @"min_kern_vaddr", "vm.vm_min_kernel_address", (v1 + 16));
  if (v4)
  {
    goto LABEL_14;
  }

  v4 = sysctlbyname_uint64(v3, @"max_kern_vaddr", "vm.vm_max_kernel_address", (v1 + 24));
  if (v4)
  {
    goto LABEL_14;
  }

  v8 = sysctlbyname("hw.cputhreadtype", &iterator, &v59, 0, 0) || iterator <= 0;
  v9 = !v8;
  v4 = dict_set_BOOL(v3, @"hyperthreading", v9);
  if (v4)
  {
    goto LABEL_14;
  }

  *(v1 + 207) = v9;
  *v1 |= 2uLL;
  v4 = sysctlbyname_uint32(v3, @"physical_cpus", "hw.physicalcpu_max", (v1 + 188));
  if (v4)
  {
    goto LABEL_14;
  }

  v4 = sysctlbyname_uint32(v3, @"vm_pages", "vm.pages", (v1 + 184));
  if (v4)
  {
    goto LABEL_14;
  }

  v59 = 4;
  v10 = sysctlbyname("kern.thread_groups_supported", &iterator, &v59, 0, 0) || iterator <= 0;
  v11 = !v10;
  v4 = dict_set_BOOL(v3, @"thread_groups", v11);
  if (v4)
  {
    goto LABEL_14;
  }

  *(v1 + 208) = v11;
  *v1 |= 4uLL;
  v12 = _CFCopySupplementalVersionDictionary();
  if (dict_string(v12, *MEMORY[0x277CBEC88], v3, @"os_version", (v1 + 64)))
  {
    v13 = *__error();
    ktrace_log_init();
    if (os_log_type_enabled(ktrace_file_log, OS_LOG_TYPE_ERROR))
    {
      ktrace_machine_create_current_cold_1();
    }
  }

  else if (dict_string(v12, *MEMORY[0x277CBEC78], v3, @"os_name", (v1 + 56)))
  {
    v13 = *__error();
    ktrace_log_init();
    if (os_log_type_enabled(ktrace_file_log, OS_LOG_TYPE_ERROR))
    {
      ktrace_machine_create_current_cold_2();
    }
  }

  else
  {
    if (!dict_string(v12, *MEMORY[0x277CBEC70], v3, @"os_build", (v1 + 80)))
    {
      dict_string(v12, *MEMORY[0x277CBEC80], v3, @"os_version_extra", (v1 + 72));
      if (!v12)
      {
        goto LABEL_58;
      }

      goto LABEL_57;
    }

    v13 = *__error();
    ktrace_log_init();
    if (os_log_type_enabled(ktrace_file_log, OS_LOG_TYPE_ERROR))
    {
      ktrace_machine_create_current_cold_3();
    }
  }

  *__error() = v13;
  if (v12)
  {
LABEL_57:
    CFRelease(v12);
  }

LABEL_58:
  iterator = 0;
  v14 = malloc_type_calloc(*(v1 + 180), 8uLL, 0x100004000313F17uLL);
  if (!v14)
  {
    goto LABEL_113;
  }

  v15 = malloc_type_calloc(*(v1 + 180), 4uLL, 0x100004052888210uLL);
  *(v1 + 136) = v15;
  if (!v15)
  {
    goto LABEL_113;
  }

  v16 = malloc_type_calloc(*(v1 + 180), 4uLL, 0x100004052888210uLL);
  *(v1 + 152) = v16;
  if (!v16)
  {
    goto LABEL_113;
  }

  v17 = IOServiceNameMatching("cpus");
  MatchingService = IOServiceGetMatchingService(0, v17);
  if (!MatchingService || MEMORY[0x2318F6B40](MatchingService, "IODeviceTree", &iterator))
  {
    v19 = *__error();
    ktrace_log_init();
    if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
    {
      ktrace_machine_create_current_cold_5();
    }

    *__error() = v19;
    v20 = 22;
    goto LABEL_116;
  }

  v21 = IOIteratorNext(iterator);
  if (!v21)
  {
    v37 = 1;
    v36 = 1;
LABEL_101:
    *(v1 + 160) = v36;
    v38 = dict_set_uint32(v3, @"max_clusters", v36);
    if (v38)
    {
      goto LABEL_102;
    }

    v39 = malloc_type_calloc(*(v1 + 160), 8uLL, 0x100004000313F17uLL);
    *(v1 + 144) = v39;
    if (v39)
    {
      v40 = *(v1 + 180);
      if (v40)
      {
        v41 = *(v1 + 136);
        v42 = v14;
        do
        {
          v44 = *v41++;
          v43 = v44;
          if (!*&v39[8 * v44])
          {
            *&v39[8 * v43] = *v42;
          }

          ++v42;
          --v40;
        }

        while (v40);
      }

      v38 = dict_set_uint64_arr(v3, @"cluster_flags", v39, *(v1 + 160));
      if (!v38)
      {
        v38 = dict_set_uint32_arr(v3, @"cluster_by_cpu", *(v1 + 136), *(v1 + 180));
        if (!v38)
        {
          *(v1 + 164) = v37;
          v38 = dict_set_uint32(v3, @"max_dies", v37);
          if (!v38)
          {
            v38 = dict_set_uint32_arr(v3, @"die_by_cpu", *(v1 + 152), *(v1 + 180));
          }
        }
      }

LABEL_102:
      v20 = v38;
      goto LABEL_116;
    }

LABEL_113:
    v45 = *__error();
    if (v45)
    {
      v20 = v45;
    }

    else
    {
      v20 = 12;
    }

    goto LABEL_116;
  }

  v22 = 0;
  v23 = 0;
  v24 = *MEMORY[0x277CBECE8];
  while (1)
  {
    v59 = 0;
    if (!IORegistryEntryCreateCFProperties(v21, &v59, v24, 0))
    {
      break;
    }

LABEL_96:
    v21 = IOIteratorNext(iterator);
    if (!v21)
    {
      v36 = v22 + 1;
      v37 = v23 + 1;
      goto LABEL_101;
    }
  }

  if (!v59)
  {
    *__error() = 0;
    v26 = *__error();
    ktrace_log_init();
    v27 = ktrace_log;
    if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      *&buf[4] = v26;
      _os_log_error_impl(&dword_22ED7A000, v27, OS_LOG_TYPE_ERROR, "CPU properties are NULL on IOKit success (%{errno}d)", buf, 8u);
    }

    *__error() = v26;
    goto LABEL_96;
  }

  v58 = 0;
  if (dict_uint32(v59, @"logical-cpu-id", &v58))
  {
    ktrace_log_init();
    v25 = ktrace_log;
    if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_DEBUG))
    {
      ktrace_machine_create_current_cold_4(&v56, v57, v25);
    }

    goto LABEL_95;
  }

  if (v58 >= *(v1 + 180))
  {
LABEL_95:
    CFRelease(v59);
    goto LABEL_96;
  }

  v55 = 0;
  v28 = dict_uint32(v59, @"logical-cluster-id", &v55);
  if (!v28)
  {
    v29 = v55;
    *(*(v1 + 136) + 4 * v58) = v55;
    if (v22 <= v29)
    {
      v22 = v29;
    }

    v54 = 0;
    if (dict_uint32(v59, @"die-id", &v54))
    {
      v30 = 0;
      v54 = 0;
    }

    else
    {
      v30 = v54;
    }

    *(*(v1 + 152) + 4 * v58) = v30;
    if (v23 <= v54)
    {
      v23 = v54;
    }

    *buf = 0;
    v53 = 0;
    v31 = dict_data(v59, @"cluster-type", buf, &v53);
    v32 = v58;
    v14[v58] = 0;
    if (v31)
    {
      goto LABEL_95;
    }

    v33 = *buf;
    if (!v53)
    {
      goto LABEL_94;
    }

    v34 = **buf;
    switch(v34)
    {
      case 'P':
        v35 = 2;
        break;
      case 'M':
        v35 = 4;
        break;
      case 'E':
        v35 = 1;
        break;
      default:
LABEL_94:
        free(v33);
        goto LABEL_95;
    }

    v14[v32] = v35;
    goto LABEL_94;
  }

  *__error() = v28;
  v50 = *__error();
  ktrace_log_init();
  v51 = ktrace_log;
  if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109376;
    *&buf[4] = v58;
    v62 = 1024;
    v63 = v50;
    _os_log_error_impl(&dword_22ED7A000, v51, OS_LOG_TYPE_ERROR, "failed to get logical-cluster-id property for CPU %u (%{errno}d)", buf, 0xEu);
  }

  *__error() = v50;
  v20 = *__error();
LABEL_116:
  if (iterator)
  {
    IOObjectRelease(iterator);
  }

  free(v14);
  if (v20)
  {
    *__error() = v20;
    v6 = *__error();
    ktrace_log_init();
    if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
    {
      ktrace_machine_create_current_cold_6();
    }

    v5 = v20;
    goto LABEL_17;
  }

  has_internal_content = os_variant_has_internal_content();
  v47 = dict_set_BOOL(v3, @"apple_internal", has_internal_content);
  v48 = dict_set_BOOL(v3, @"internal_content", has_internal_content);
  if (v48 | v47)
  {
    v49 = v48 | v47;
    v6 = *__error();
    ktrace_log_init();
    if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
    {
      ktrace_machine_create_current_cold_7();
    }

    v5 = v49;
    goto LABEL_17;
  }

  *(v1 + 205) = has_internal_content;
  *(v1 + 206) = has_internal_content;
  *v1 |= 1uLL;
  if (gethostuuid(uu, &v52))
  {
LABEL_127:
    ktrace_machine_fill_name(v1, v3);
    ktrace_machine_fill_volume_size(v1, v3);
    *(v1 + 212) = 2;
    dict_set_uint32(v3, @"sw_platform", 2);
    *(v1 + 204) = current_system_is_64_bit();
    *(v1 + 216) = v3;
    return v1;
  }

  if (uuid_is_null(uu))
  {
    v6 = *__error();
    ktrace_log_init();
    if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
    {
      ktrace_machine_create_current_cold_8();
    }

    v5 = 22;
LABEL_17:
    *__error() = v6;
  }

  else
  {
    uuid_unparse(uu, buf);
    v5 = dict_set_string(v3, @"device_uuid", buf);
    if (!v5)
    {
      *(v1 + 128) = strdup(buf);
      goto LABEL_127;
    }
  }

  if (*(v1 + 216))
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  CFRelease(v3);
LABEL_21:
  ktrace_machine_destroy(v1);
  v1 = 0;
  *__error() = v5;
  return v1;
}

uint64_t sysctl_string(__CFDictionary *a1, const void *a2, int *a3, u_int a4, void *a5)
{
  v15 = 0;
  if (!a5)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (!a2)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (!a3)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (sysctl(a3, a4, 0, &v15, 0, 0) < 0 && (*__error() == 2 || *__error() == 1))
  {
    return *__error();
  }

  v10 = malloc_type_malloc(++v15, 0x2839B758uLL);
  if (v10)
  {
    v11 = v10;
    if (sysctl(a3, a4, v10, &v15, 0, 0) < 0)
    {
      free(v11);
      return *__error();
    }

    *(v11 + v15) = 0;
    v12 = CFStringCreateWithCString(0, v11, 0x600u);
    if (v12)
    {
      v13 = v12;
      CFDictionarySetValue(a1, a2, v12);
      CFRelease(v13);
      result = 0;
      *a5 = v11;
      return result;
    }

    free(v11);
  }

  return 12;
}

uint64_t sysctlbyname_string(__CFDictionary *a1, const void *a2, char *a3, char **a4, size_t count)
{
  v26 = *MEMORY[0x277D85DE8];
  v19 = count;
  if (!a4)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (!a3)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (count)
  {
LABEL_11:
    v11 = malloc_type_calloc(count, 1uLL, 0x15021E35uLL);
    if (!v11)
    {
      ktrace_postprocess_file_internal_cold_4();
    }

    v12 = v11;
    v18 = v19;
    if (sysctlbyname(a3, v11, &v18, 0, 0) < 0)
    {
      v15 = *__error();
      ktrace_log_init();
      if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
      {
        sysctlbyname_string_cold_3();
      }
    }

    else if (v18 >= v19)
    {
      v15 = *__error();
      ktrace_log_init();
      if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
      {
        sysctlbyname_string_cold_1();
      }
    }

    else
    {
      v12[v18] = 0;
      if (!a1)
      {
LABEL_18:
        result = 0;
        *a4 = v12;
        return result;
      }

      if (!a2)
      {
        ktrace_postprocess_file_internal_cold_4();
      }

      v13 = CFStringCreateWithCString(0, v12, 0x600u);
      if (v13)
      {
        v14 = v13;
        CFDictionarySetValue(a1, a2, v13);
        CFRelease(v14);
        goto LABEL_18;
      }

      v15 = *__error();
      ktrace_log_init();
      v17 = ktrace_log;
      if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v21 = a3;
        v22 = 2080;
        v23 = v12;
        v24 = 1024;
        v25 = v15;
        _os_log_error_impl(&dword_22ED7A000, v17, OS_LOG_TYPE_ERROR, "could not create string from sysctlbyname(%s) result '%s' (%{errno}d)", buf, 0x1Cu);
      }
    }

    *__error() = v15;
    v16 = *__error();
    free(v12);
    if (v16)
    {
      return v16;
    }

    else
    {
      return 22;
    }
  }

  if ((sysctlbyname(a3, 0, &v19, 0, 0) & 0x80000000) == 0 || v19)
  {
    count = ++v19;
    goto LABEL_11;
  }

  v9 = *__error();
  ktrace_log_init();
  if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
  {
    sysctlbyname_string_cold_3();
  }

  *__error() = v9;
  if (*__error())
  {
    return *__error();
  }

  else
  {
    return 22;
  }
}

uint64_t sysctlbyname_number_internal(__CFDictionary *a1, const void *a2, const char *a3, void *a4, size_t a5, CFNumberType a6)
{
  v30 = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (!a4)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  MEMORY[0x28223BE20](a1);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v13, v12);
  v24 = a5;
  v14 = sysctlbyname(a3, v13, &v24, 0, 0);
  if (v14 < 0)
  {
    v18 = v14;
    v19 = *__error();
    ktrace_log_init();
    v20 = ktrace_log;
    if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v26 = a3;
      v27 = 1024;
      *v28 = v18;
      *&v28[4] = 1024;
      *&v28[6] = v19;
      _os_log_error_impl(&dword_22ED7A000, v20, OS_LOG_TYPE_ERROR, "sysctlbyname(%s) returned %d (%{errno}d)", buf, 0x18u);
    }

    *__error() = v19;
    return *__error();
  }

  else
  {
    if (v24 <= a5)
    {
      if (a1)
      {
        if (!a2)
        {
          ktrace_postprocess_file_internal_cold_4();
        }

        v21 = CFNumberCreate(0, a6, v13);
        if (!v21)
        {
          return 12;
        }

        v22 = v21;
        CFDictionarySetValue(a1, a2, v21);
        CFRelease(v22);
      }

      memcpy(a4, v13, a5);
      return 0;
    }

    v15 = *__error();
    ktrace_log_init();
    v16 = ktrace_log;
    if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v26 = a3;
      v27 = 2048;
      *v28 = v24;
      *&v28[8] = 1024;
      v29 = v15;
      _os_log_error_impl(&dword_22ED7A000, v16, OS_LOG_TYPE_ERROR, "sysctlbyname(%s) needs too much space %zu (%{errno}d)", buf, 0x1Cu);
    }

    *__error() = v15;
    return 22;
  }
}

uint64_t dict_set_BOOL(__CFDictionary *a1, const void *a2, int a3)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (!a2)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  v3 = MEMORY[0x277CBED28];
  if (!a3)
  {
    v3 = MEMORY[0x277CBED10];
  }

  CFDictionarySetValue(a1, a2, *v3);
  return 0;
}

uint64_t dict_string(const __CFDictionary *a1, void *key, __CFDictionary *a3, const void *a4, char **a5)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (!key)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (!a5)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  Value = CFDictionaryGetValue(a1, key);
  if (!Value)
  {
    return 22;
  }

  v9 = Value;
  v10 = CFGetTypeID(Value);
  if (v10 != CFStringGetTypeID())
  {
    v16 = *__error();
    ktrace_log_init();
    if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
    {
      dict_string_cold_1();
    }

    *__error() = v16;
    return 22;
  }

  if (a3)
  {
    if (!a4)
    {
      ktrace_postprocess_file_internal_cold_4();
    }

    CFDictionarySetValue(a3, a4, v9);
  }

  Length = CFStringGetLength(v9);
  MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
  v13 = malloc_type_malloc(MaximumSizeForEncoding + 1, 0xC8946FD7uLL);
  if (v13)
  {
    v14 = v13;
    if (CFStringGetCString(v9, v13, MaximumSizeForEncoding + 1, 0x8000100u))
    {
      result = 0;
      *a5 = v14;
      return result;
    }

    free(v14);
    return 22;
  }

  return 12;
}

uint64_t dict_set_string(__CFDictionary *a1, const void *a2, char *cStr)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (!a2)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (cStr)
  {
    Mutable = CFStringCreateWithCString(0, cStr, 0x600u);
  }

  else
  {
    Mutable = CFStringCreateMutable(0, 1);
  }

  v6 = Mutable;
  if (Mutable)
  {
    CFDictionarySetValue(a1, a2, Mutable);
    CFRelease(v6);
    return 0;
  }

  else
  {
    v8 = *__error();
    ktrace_log_init();
    if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
    {
      dict_set_string_cold_1();
    }

    *__error() = v8;
    return 12;
  }
}

uint64_t dict_set_cfstring(__CFDictionary *a1, const void *a2, CFStringRef theString, char **a4)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (!a2)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  Length = CFStringGetLength(theString);
  MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
  v10 = malloc_type_malloc(MaximumSizeForEncoding + 1, 0x807BE517uLL);
  if (v10)
  {
    v11 = v10;
    if (CFStringGetCString(theString, v10, MaximumSizeForEncoding + 1, 0x8000100u))
    {
      if (a4)
      {
        *a4 = v11;
      }

      else
      {
        free(v11);
      }

      CFDictionarySetValue(a1, a2, theString);
      return 0;
    }

    else
    {
      free(v11);
      return 22;
    }
  }

  else
  {
    v12 = *__error();
    ktrace_log_init();
    if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
    {
      dict_set_cfstring_cold_1();
    }

    *__error() = v12;
    return 12;
  }
}

uint64_t ktrace_file_alloc_fd(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  memset(&v7, 0, sizeof(v7));
  if (a1 == -1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  v2 = a2;
  v3 = a1;
  if (fstat(a1, &v7) < 0)
  {
    return 0;
  }

  if ((v7.st_mode & 0xF000) == 0x4000)
  {
    v4 = 0;
    *__error() = 21;
  }

  else
  {
    ktrace_file_alloc();
    v4 = v5;
    if (v5)
    {
      bzero(&v8, 0x878uLL);
      if (!fstatfs(v3, &v8) && (v8.f_flags & 0x1000) != 0)
      {
        *(v4 + 301) = 1;
      }

      *(v4 + 16) = 1;
      *(v4 + 196) = v3;
      *(v4 + 296) = v2;
    }
  }

  return v4;
}

void *ktrace_file_create_fd(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x80000000) != 0)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  v2 = a2;
  v4 = ktrace_file_alloc_fd(a2, 1);
  if (!v4)
  {
    v7 = *__error();
    close(v2);
    goto LABEL_6;
  }

  v5 = v4;
  internal = ktrace_file_create_internal(v4, a1);
  if (internal)
  {
    v7 = internal;
    ktrace_file_close(v5);
LABEL_6:
    v5 = 0;
    *__error() = v7;
  }

  return v5;
}

uint64_t sysctl_number_internal(__CFDictionary *a1, const void *a2, int *a3, u_int a4, void *a5, size_t a6, CFNumberType a7)
{
  v21[1] = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (!a2)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (!a3)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (!a5)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  MEMORY[0x28223BE20](a1);
  v15 = v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v15, v14);
  v21[0] = a6;
  if (sysctl(a3, a4, v15, v21, 0, 0) < 0)
  {
    v18 = *__error();
    ktrace_log_init();
    if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
    {
      sysctl_number_internal_cold_2();
    }

    *__error() = v18;
    return *__error();
  }

  else if (v21[0] <= a6)
  {
    v19 = CFNumberCreate(0, a7, v15);
    if (v19)
    {
      v20 = v19;
      CFDictionarySetValue(a1, a2, v19);
      CFRelease(v20);
      memcpy(a5, v15, a6);
      return 0;
    }

    else
    {
      return 12;
    }
  }

  else
  {
    v16 = *__error();
    ktrace_log_init();
    if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
    {
      sysctl_number_internal_cold_1();
    }

    *__error() = v16;
    return 22;
  }
}

uint64_t dict_number_internal(const __CFDictionary *a1, void *key, void *a3, CFNumberType a4)
{
  v21 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (!key)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (!a3)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  Value = CFDictionaryGetValue(a1, key);
  if (!Value)
  {
    return 22;
  }

  v8 = Value;
  v9 = CFGetTypeID(Value);
  if (v9 == CFNumberGetTypeID())
  {
    if (!CFNumberGetValue(v8, a4, a3))
    {
      v10 = *__error();
      ktrace_log_init();
      v11 = ktrace_log;
      if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
      {
        v15 = 138412802;
        v16 = v8;
        v17 = 2112;
        v18 = key;
        v19 = 1024;
        v20 = v10;
        _os_log_error_impl(&dword_22ED7A000, v11, OS_LOG_TYPE_ERROR, "dictionary number %@ at key '%@' is not the right type (%{errno}d)", &v15, 0x1Cu);
      }

      *__error() = v10;
      return 22;
    }

    return 0;
  }

  if (v9 != CFDataGetTypeID())
  {
    v13 = *__error();
    ktrace_log_init();
    if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
    {
      dict_number_internal_cold_1();
    }

    *__error() = v13;
    return 22;
  }

  if (CFDataGetLength(v8) == 4)
  {
    v22.location = 0;
    v22.length = 4;
    CFDataGetBytes(v8, v22, a3);
    return 0;
  }

  *__error() = 34;
  v14 = *__error();
  ktrace_log_init();
  if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
  {
    dict_number_internal_cold_2();
  }

  *__error() = v14;
  return 34;
}

void OUTLINED_FUNCTION_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 8u);
}

uint64_t OUTLINED_FUNCTION_0_2(int a1)
{

  return _os_assert_log();
}

_BYTE *OUTLINED_FUNCTION_2(_BYTE *result, _BYTE *a2)
{
  *result = 0;
  *a2 = 0;
  return result;
}

CFMutableArrayRef kteventnames_init(uint64_t a1)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 2;
  Mutable = CFDictionaryCreateMutable(0, 0, &str_no_free_key_callbacks, &int_value_callbacks);
  *a1 = Mutable;
  if (!Mutable)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  v3 = CFDictionaryCreateMutable(0, 0, &int_key_callbacks, &str_no_free_value_callbacks);
  *(a1 + 8) = v3;
  if (!v3)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  v4 = CFArrayCreateMutable(0, 0, &free_array_callbacks);
  *(a1 + 16) = v4;
  if (!v4)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  result = CFArrayCreateMutable(0, 0, &free_array_callbacks);
  *(a1 + 24) = result;
  if (!result)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  return result;
}

void ktrace_log_init()
{
  if (ktrace_log_init_ktrace_log_once != -1)
  {
    ktrace_log_init_cold_1();
  }
}

uint64_t dict_data(const __CFDictionary *a1, const void *a2, UInt8 **a3, CFIndex *a4)
{
  Value = CFDictionaryGetValue(a1, a2);
  if (!Value)
  {
    v14 = *__error();
    ktrace_log_init();
    if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
    {
      dict_BOOL_cold_2();
    }

    goto LABEL_11;
  }

  v7 = Value;
  v8 = CFGetTypeID(Value);
  if (v8 != CFDataGetTypeID())
  {
    v14 = *__error();
    ktrace_log_init();
    if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
    {
      dict_data_cold_1();
    }

LABEL_11:
    *__error() = v14;
    return 22;
  }

  Length = CFDataGetLength(v7);
  if (!Length)
  {
    *a3 = 0;
    if (a4)
    {
      result = 0;
      *a4 = 0;
      return result;
    }

    return 0;
  }

  v10 = Length;
  v11 = malloc_type_malloc(Length, 0x76094D75uLL);
  if (v11)
  {
    v12 = v11;
    v15.location = 0;
    v15.length = v10;
    CFDataGetBytes(v7, v15, v11);
    *a3 = v12;
    if (a4)
    {
      result = 0;
      *a4 = v10;
      return result;
    }

    return 0;
  }

  return *__error();
}

uint64_t dict_set_number(__CFDictionary *a1, const void *a2, const void *a3, CFNumberType theType)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (!a2)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (!a3)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  v6 = CFNumberCreate(0, theType, a3);
  if (v6)
  {
    v7 = v6;
    CFDictionarySetValue(a1, a2, v6);
    CFRelease(v7);
    return 0;
  }

  else
  {
    v9 = *__error();
    ktrace_log_init();
    if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
    {
      dict_set_number_cold_1();
    }

    *__error() = v9;
    return 22;
  }
}

uint64_t dict_set_number_arr(__CFDictionary *a1, const void *a2, char *a3, CFIndex capacity, uint64_t a5, CFNumberType a6)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (!a2)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  v9 = capacity;
  v12 = capacity;
  Mutable = CFArrayCreateMutable(0, capacity, MEMORY[0x277CBF128]);
  if (Mutable)
  {
    v14 = Mutable;
    if (a3 && v9)
    {
      v15 = 0;
      while (1)
      {
        v16 = CFNumberCreate(0, a6, a3);
        if (!v16)
        {
          break;
        }

        v17 = v16;
        CFArrayAppendValue(v14, v16);
        CFRelease(v17);
        ++v15;
        a3 += a5;
        if (v12 == v15)
        {
          goto LABEL_9;
        }
      }

      v20 = *__error();
      ktrace_log_init();
      if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
      {
        dict_set_number_arr_cold_1();
      }

      *__error() = v20;
      v18 = 22;
    }

    else
    {
LABEL_9:
      CFDictionarySetValue(a1, a2, v14);
      v18 = 0;
    }

    CFRelease(v14);
  }

  else
  {
    v19 = *__error();
    ktrace_log_init();
    if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
    {
      dict_set_number_arr_cold_2();
    }

    *__error() = v19;
    return 22;
  }

  return v18;
}

void ktrace_machine_fill_name(uint64_t a1, __CFDictionary *a2)
{
  v4 = SecTaskCreateFromSelf(0);
  error = 0;
  v5 = SecTaskCopyValueForEntitlement(v4, @"com.apple.developer.device-information.user-assigned-device-name", &error);
  CFRelease(v4);
  if (v5)
  {
    v6 = CFGetTypeID(v5);
    if (v6 == CFBooleanGetTypeID())
    {
      Value = CFBooleanGetValue(v5);
      CFRelease(v5);
      if (Value)
      {
        v8 = MGCopyAnswer();
        if (v8)
        {
          v9 = v8;
          dict_set_cfstring(a2, @"name", v8, (a1 + 104));
          CFRelease(v9);
        }

        return;
      }
    }

    else
    {
      CFRelease(v5);
    }

    ktrace_log_init();
    v12 = ktrace_log;
    if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_DEBUG))
    {
      ktrace_machine_fill_name_cold_1(v12);
    }
  }

  else
  {
    v10 = *__error();
    ktrace_log_init();
    v11 = ktrace_log;
    if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
    {
      ktrace_machine_fill_name_cold_2(&error, v10, v11);
    }

    *__error() = v10;
  }
}

int *ktrace_machine_fill_volume_size(uint64_t a1, __CFDictionary *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  memset(&v7, 0, 512);
  if (statfs("/", &v7))
  {
    v4 = *__error();
    ktrace_log_init();
    if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
    {
      ktrace_machine_fill_volume_size_cold_1();
    }

LABEL_10:
    result = __error();
    *result = v4;
    return result;
  }

  if (!is_mul_ok(v7.f_bsize, v7.f_blocks))
  {
    v4 = *__error();
    ktrace_log_init();
    if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
    {
      ktrace_machine_fill_volume_size_cold_3();
    }

    goto LABEL_10;
  }

  v5 = v7.f_bsize * v7.f_blocks;
  result = dict_set_uint64(a2, @"root_vol_size", v5);
  if (result)
  {
    v4 = *__error();
    ktrace_log_init();
    if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
    {
      ktrace_machine_fill_volume_size_cold_2();
    }

    goto LABEL_10;
  }

  *(a1 + 32) = v5;
  return result;
}

void _session_process_events(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if (*(a1 + 4))
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  v4 = a4;
  dispatch_assert_queue_V2(*(a1 + 232));
  v8 = *(a1 + 24);
  v9 = *(a1 + 32);
  v55 = *(a1 + 40);
  v10 = *(a1 + 48);
  v53 = *(a1 + 8);
  v11 = tracepoint_timestamp(a2, v4);
  if (!*(a1 + 488))
  {
    *(a1 + 488) = v11;
  }

  v12 = 32;
  if (v4)
  {
    v12 = 64;
  }

  v59 = v12;
  v13 = 5;
  if (v4)
  {
    v13 = 6;
  }

  v52 = a3 >> v13;
  if (a3 >> v13)
  {
    v58 = v9;
    v14 = 0;
    v15 = 0;
    v16 = 28;
    if (v4)
    {
      v16 = 48;
    }

    v56 = v16;
    v54 = v10 + 24;
    v17 = v53;
    v57 = v4;
    do
    {
      if (v15)
      {
        objc_autoreleasePoolPop(v15);
      }

      v15 = objc_autoreleasePoolPush();
      v18 = atomic_load((a1 + 157));
      if (v18)
      {
        break;
      }

      v19 = *(a2 + v56);
      v20 = tracepoint_timestamp(a2, v4);
      *(a1 + 496) = v20;
      v60 = 1 << (BYTE2(v19) & 7);
      if ((v60 & *(v17 + (v19 >> 19))) != 0)
      {
        v21 = v20;
        v22 = v19 & 0xFFFFFFFC;
        if ((v19 & 0xFFFFFFFC) == 0x7020008)
        {
          clear_events(*(a1 + 240), (a1 + 248));
          *(a1 + 488) = v21;
          if (*(a1 + 272))
          {
            thread_cputime_map_dropped_events(a1, *(a1 + 408));
          }

          v23 = *(a1 + 64);
          if (v23)
          {
            (*(v23 + 16))();
          }
        }

        else if (v19 == 25165824)
        {
          if (v4)
          {
            v24 = *(a2 + 8);
            v25 = *(a2 + 16);
            v26 = *(a2 + 24);
            v27 = *(a2 + 32);
          }

          else
          {
            v24 = *(a2 + 8);
            LODWORD(v25) = *(a2 + 12);
            v26 = *(a2 + 16);
            LODWORD(v27) = *(a2 + 20);
          }

          kttimesync_update_kdebug(a1 + 432, *(a2 + v56), v24, v25, v26, v27);
        }

        if (*(a1 + 260) || *(a1 + 280) || *(a1 + 276))
        {
          kthmap_update(*(a1 + 296), a2, v4);
        }

        v28 = *(a1 + 304);
        if (v28 && (BYTE3(v19) == 31 || v22 == 67174404 || v22 == 117571592 || v22 == 117440520))
        {
          ktrace_uuid_map_update(v28, a1, a2, v4);
        }

        if (v22 == 117440524)
        {
          v29 = *(a1 + 88);
          if (v29)
          {
            v30 = v15;
            if (v57)
            {
              v31 = *(a2 + 8);
            }

            else
            {
              v31 = *(a2 + 8);
            }

            v32 = kthmap_process_name_for_tid(*(a1 + 296), v31);
            (*(v29 + 16))(v29, v31, v32);
            v15 = v30;
          }
        }

        v4 = v57;
        if (*(a1 + 268) && (v19 & 0xFFFFFFF8 | 4) == 0x3010094)
        {
          vnode_path_map_update(*(a1 + 400), v19, a2, v57);
        }

        if (*(a1 + 272) && ((v22 - 20971520) <= 0x24 && ((1 << v22) & 0x1000000101) != 0 || v22 == 117440524))
        {
          thread_cputime_map_update(a1, *(a1 + 408), v19, a2, v57);
        }

        _session_handle_stackshot(a1, v21);
        if (*(a1 + 288) && v19 == 25165840)
        {
          ktrace_remotetime_update_params(a1, a2);
        }

        ++*(a1 + 160);
        v17 = v53;
        if (*(a1 + 520) <= v21)
        {
          v51 = v15;
          memset(v63, 0, 96);
          v33 = v58;
          if (v8 >= 1)
          {
            v34 = 0;
            v35 = 0;
            do
            {
              v36 = v33 + 32 * v34;
              if (*v36 == 1)
              {
                if ((v60 & *(*(v36 + 8) + (v19 >> 19))) == 0)
                {
                  goto LABEL_91;
                }
              }

              else if (!*v36 && (v19 < *(v36 + 8) || v19 >= *(v36 + 12)))
              {
                goto LABEL_91;
              }

              v37 = *(v36 + 16);
              if (v37 == 2)
              {
                *&v61[0] = 0;
                if (!*(a1 + 416))
                {
                  v42 = kpdecode_cursor_create();
                  *(a1 + 416) = v42;
                  if (!v42)
                  {
                    ktrace_postprocess_file_internal_cold_4();
                  }

                  v43 = malloc_type_valloc(0x1000uLL, 0x4CFE236EuLL);
                  if (!v43)
                  {
                    ktrace_postprocess_file_internal_cold_4();
                  }

                  v47 = v43;
                  v48 = *(a1 + 608);
                  if (v48)
                  {
                    is_64_bit = ktrace_file_is_64_bit(v48, v44);
                  }

                  else
                  {
                    is_64_bit = 1;
                  }

                  v50 = kttimesync_frequency(a1 + 432, v45, v46);
                  *v47 = 1437204992;
                  *(v47 + 12) = 0;
                  *(v47 + 4) = 0;
                  *(v47 + 5) = is_64_bit;
                  *(v47 + 3) = (v50 * 1000000000.0);
                  *(v47 + 2) = 0u;
                  *(v47 + 3) = 0u;
                  *(v47 + 4) = 0u;
                  *(v47 + 5) = 0u;
                  *(v47 + 6) = 0u;
                  *(v47 + 7) = 0u;
                  *(v47 + 8) = 0u;
                  *(v47 + 9) = 0u;
                  *(v47 + 10) = 0u;
                  *(v47 + 11) = 0u;
                  *(v47 + 12) = 0u;
                  *(v47 + 13) = 0u;
                  *(v47 + 14) = 0u;
                  *(v47 + 15) = 0u;
                  *(v47 + 16) = 0u;
                  *(v47 + 17) = 0u;
                  if (kpdecode_cursor_setchunk())
                  {
                    ktrace_postprocess_file_internal_cold_4();
                  }

                  while (!kpdecode_cursor_next_record())
                  {
                    kpdecode_record_free();
                  }

                  free(v47);
                  v4 = v57;
                  if (*(a1 + 16) == 1)
                  {
                    kpdecode_cursor_set_option();
                  }

                  v33 = v58;
                }

                kpdecode_cursor_clearchunk();
                if (kpdecode_cursor_setchunk())
                {
                  ktrace_postprocess_file_internal_cold_4();
                }

                *&v61[0] = 0;
                while (!kpdecode_cursor_next_record())
                {
                  (*(*(v36 + 24) + 16))();
                }

                goto LABEL_91;
              }

              if (v37 == 1)
              {
                if (v19)
                {
                  insert_start_event(*(a1 + 240), (a1 + 248), a2);
                  goto LABEL_91;
                }

                if ((v19 & 2) == 0)
                {
                  goto LABEL_91;
                }

                memset(v62, 0, sizeof(v62));
                memset(v61, 0, sizeof(v61));
                if (!match_end_event(*(a1 + 240), (a1 + 248), a2, v62) || !process_tracepoint(a1, v62, v61, v4))
                {
                  goto LABEL_91;
                }

                if ((v35 & 1) == 0)
                {
                  process_tracepoint(a1, a2, v63, v4);
                }

                v40 = v54;
                v41 = v55;
                if (v55 >= 1)
                {
                  do
                  {
                    if (*(v40 - 8) == 1)
                    {
                      (*(*v40 + 16))();
                    }

                    v40 += 32;
                    --v41;
                  }

                  while (v41);
                }
              }

              else
              {
                if (v37)
                {
                  _session_process_events_cold_6();
                }

                if ((v35 & 1) == 0 && !process_tracepoint(a1, a2, v63, v4))
                {
                  v35 = 0;
                  goto LABEL_91;
                }

                v38 = v54;
                v39 = v55;
                if (v55 >= 1)
                {
                  do
                  {
                    if (!*(v38 - 8))
                    {
                      (*(*v38 + 16))();
                    }

                    v38 += 32;
                    --v39;
                  }

                  while (v39);
                }
              }

              (*(*(v36 + 24) + 16))();
              v35 = 1;
              v33 = v58;
LABEL_91:
              ++v34;
            }

            while (v34 != v8);
          }

          v17 = v53;
          v15 = v51;
        }
      }

      ++v14;
      a2 += v59;
    }

    while (v14 != v52);
    if (v15)
    {
      objc_autoreleasePoolPop(v15);
    }
  }
}

void _session_convert_walltime(uint64_t a1, unint64_t a2)
{
  kttimesync_wall_from_timestamp(a1 + 432, a2);

  timespec_to_timeval();
}

unint64_t kttimesync_wall_from_timestamp(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 20);
  v4 = *a1 - a2;
  if (*a1 <= a2)
  {
    v6 = a2 - *a1;
    if (v2 != v3)
    {
      v6 = v6 * v2 / v3;
    }

    if (*(a1 + 32) + v6 % 0x3B9ACA00 <= 0x3B9AC9FF)
    {
      return *(a1 + 24) + v6 / 0x3B9ACA00;
    }

    else
    {
      return *(a1 + 24) + v6 / 0x3B9ACA00 + 1;
    }
  }

  else
  {
    if (v2 != v3)
    {
      v4 = v4 * v2 / v3;
    }

    return *(a1 + 24) - v4 / 0x3B9ACA00 + ((*(a1 + 32) + 1000000000 * (v4 / 0x3B9ACA00) - v4) >> 63);
  }
}

uint64_t ktrace_get_pid_for_thread(uint64_t a1, const void *a2)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  v3 = *(a1 + 296);

  return kthmap_pid_for_tid(v3, a2);
}

const void *kthmap_thread_name_for_tid(uint64_t a1, const void *a2)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  v3 = *(a1 + 40);

  return CFDictionaryGetValue(v3, a2);
}

uint64_t ktrace_convert_absolute_to_walltime(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (!a3)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  v5 = *(a1 + 480);
  if ((v5 & 8) != 0)
  {
    a2 = kttimesync_cont_from_abs(a1 + 432, a2);
    v5 = *(a1 + 480);
  }

  if ((v5 & 2) == 0)
  {
    return 45;
  }

  v7 = kttimesync_wall_from_timestamp(a1 + 432, a2);
  result = 0;
  *a3 = v7;
  a3[1] = v8;
  return result;
}

uint64_t kttimesync_cont_from_timestamp(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 48) & 8) == 0)
  {
    a2 += *(a1 + 8);
  }

  return a2;
}

void ktrace_set_command_argv(uint64_t a1, const char **a2)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (!a2)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  v4 = *a2;
  if (*a2)
  {
    v5 = 0;
    v6 = a2 + 1;
    do
    {
      v5 += strlen(v4) + 1;
      v7 = *v6++;
      v4 = v7;
    }

    while (v7);
  }

  else
  {
    v5 = 0;
  }

  v8 = malloc_type_malloc(v5 + 1, 0xBF0D9FDBuLL);
  v9 = *a2;
  if (*a2)
  {
    v10 = 0;
    v11 = a2 + 1;
    while (1)
    {
      v12 = v10 ? " " : "";
      v13 = snprintf(&v8[v10], v5 - v10, "%s%s", v12, v9);
      if ((v13 & 0x80000000) != 0)
      {
        break;
      }

      v10 += v13;
      v14 = *v11++;
      v9 = v14;
      if (!v14)
      {
        goto LABEL_15;
      }
    }

    free(v8);
  }

  else
  {
LABEL_15:
    *(a1 + 704) = v8;
  }
}

uint64_t ktrace_start_writing_fd(uint64_t a1, uint64_t a2, int a3, const void *a4, const void *a5)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (a2 <= 0)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  v6 = *a1;
  if ((v6 | 2) != 2)
  {
    ktrace_start_writing_fd_cold_3(v6);
  }

  fd = ktrace_file_create_fd(0, a2);
  *(a1 + 648) = fd;
  if (fd)
  {
    if (a4)
    {
      *(a1 + 664) = _Block_copy(a4);
    }

    if (a5)
    {
      *(a1 + 672) = _Block_copy(a5);
    }

    *(a1 + 656) = a3;
    if (*(a1 + 4) != 2)
    {
      *(a1 + 4) = 1;
    }

    return ktrace_start(a1, 0);
  }

  else
  {
    v12 = *__error();
    ktrace_log_init();
    v13 = ktrace_log;
    if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
    {
      ktrace_start_writing_fd_cold_2(v12, v13);
    }

    *__error() = v12;
    return *__error();
  }
}

double ktrace_file_alloc()
{
  ktrace_log_init();
  if (ktrace_file_alloc_once != -1)
  {
    ktrace_file_alloc_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    result = 0.0;
    *(Instance + 272) = 0u;
    *(Instance + 288) = 0u;
    *(Instance + 240) = 0u;
    *(Instance + 256) = 0u;
    *(Instance + 208) = 0u;
    *(Instance + 224) = 0u;
    *(Instance + 176) = 0u;
    *(Instance + 192) = 0u;
    *(Instance + 144) = 0u;
    *(Instance + 160) = 0u;
    *(Instance + 112) = 0u;
    *(Instance + 128) = 0u;
    *(Instance + 80) = 0u;
    *(Instance + 96) = 0u;
    *(Instance + 48) = 0u;
    *(Instance + 64) = 0u;
    *(Instance + 16) = 0u;
    *(Instance + 32) = 0u;
    *(Instance + 196) = -1;
  }

  return result;
}

uint64_t __ktrace_file_alloc_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  ktrace_file_typeid = result;
  return result;
}

uint64_t ktrace_file_write_header_system_default(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  v19[0] = 0x155AA0300;
  v19[1] = 40;
  v19[2] = ktrace_current_timebase();
  v18.tv_sec = 0;
  *&v18.tv_usec = 0;
  v17 = 0;
  v19[3] = mach_absolute_time();
  if (!gettimeofday(&v18, &v17))
  {
    v19[4] = v18.tv_sec;
    tv_usec = v18.tv_usec;
    v21 = v17;
    v22 = 1;
    ktrace_file_write_header_internal(a1, v19);
    v3 = v4;
    if (v4)
    {
      return v3;
    }

    *(a1 + 20) = 4;
    current = ktrace_machine_create_current();
    if (!current)
    {
      return 0;
    }

    v6 = current;
    error = 0;
    v7 = CFPropertyListCreateData(0, *(current + 216), kCFPropertyListBinaryFormat_v1_0, 0, &error);
    if (!v7)
    {
      v12 = error;
      v13 = *__error();
      ktrace_log_init();
      v14 = os_log_type_enabled(ktrace_file_log, OS_LOG_TYPE_ERROR);
      if (v12)
      {
        if (v14)
        {
          ktrace_file_write_header_system_default_cold_2();
        }
      }

      else if (v14)
      {
        ktrace_file_write_header_system_default_cold_3();
      }

      *__error() = v13;
      v3 = 22;
      goto LABEL_24;
    }

    v8 = v7;
    Length = CFDataGetLength(v7);
    if (Length)
    {
      v10 = Length;
      v11 = malloc_type_malloc(Length, 0x36725B2BuLL);
      if (v11)
      {
        v24.location = 0;
        v24.length = v10;
        CFDataGetBytes(v8, v24, v11);
        if (ktrace_file_header_append_chunk(a1, 35840, 1, 7, v11, v10))
        {
          v3 = 0;
LABEL_23:
          CFRelease(v8);
          free(v11);
LABEL_24:
          ktrace_machine_destroy(v6);
          return v3;
        }

        v15 = *__error();
        ktrace_log_init();
        if (os_log_type_enabled(ktrace_file_log, OS_LOG_TYPE_ERROR))
        {
          ktrace_file_write_header_system_default_cold_1();
        }

        *__error() = v15;
      }

      v3 = *__error();
      goto LABEL_23;
    }

    v11 = 0;
    v3 = 22;
    goto LABEL_23;
  }

  return *__error();
}

uint64_t ktrace_current_timebase()
{
  if (ktrace_current_timebase_once != -1)
  {
    ktrace_current_timebase_cold_1();
  }

  return ktrace_current_timebase_mtb;
}

uint64_t ktrace_file_create_internal(uint64_t a1, uint64_t a2)
{
  v21 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    v5 = ktrace_file_write_header_system_default(a1, 0);
    if (v5)
    {
      return v5;
    }

    goto LABEL_10;
  }

  *out = 0x155AA0300;
  *&out[8] = 40;
  v16 = *(a2 + 188);
  v17 = *(a2 + 160);
  v18 = *(a2 + 176);
  v19 = *(a2 + 184);
  v20 = *(a2 + 298) == 1;
  ktrace_file_write_header_internal(a1, out);
  v5 = v4;
  if (!v4)
  {
    *(a1 + 20) = 4;
    v11 = 0;
    v12 = &v11;
    v13 = 0x2000000000;
    v14 = 0;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 0x40000000;
    v10[2] = __ktrace_file_write_header_template_block_invoke;
    v10[3] = &unk_27886E1D8;
    v10[4] = &v11;
    v10[5] = a1;
    v6 = ktrace_file_header_iterate(a2, 0, v10);
    v7 = *(v12 + 6);
    if (v7)
    {
      v5 = v7;
    }

    else
    {
      v5 = v6;
    }

    _Block_object_dispose(&v11, 8);
  }

  if (!v5)
  {
LABEL_10:
    memset(out, 0, sizeof(out));
    uuid_generate_random(out);
    if (ktrace_file_header_append_chunk(a1, 35841, 0, 0, out, 16) || (v5 = *__error(), !v5))
    {
      v5 = 0;
      v8 = *(a1 + 288);
      *(a1 + 56) = 16;
      *(a1 + 64) = v8;
      *(a1 + 72) = v8;
    }
  }

  return v5;
}

uint64_t __ktrace_current_timebase_block_invoke()
{
  result = mach_timebase_info(&ktrace_current_timebase_mtb);
  if (result)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  return result;
}

double ktrace_file_write_header_internal(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (!a2)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  *(a1 + 160) = *(a2 + 24);
  *(a1 + 176) = *(a2 + 40);
  *&v3 = *(a2 + 44);
  *(&v3 + 1) = *(a2 + 16);
  *(a1 + 180) = v3;
  *(a1 + 298) = *(a2 + 52) & 1;
  if (*(a1 + 16) == 4)
  {
    appended = ktrace_file_append_chunk(-1, 36863, 0, 0, a2, 56);
    if (!appended)
    {
      ktrace_postprocess_file_internal_cold_4();
    }

    v5 = appended;
    (*(*(a1 + 272) + 16))();
    ktrace_chunk_destroy(v5);
    goto LABEL_10;
  }

  if (ktrace_file_write(a1, a2, 0x38uLL, -1) > 0x37)
  {
LABEL_10:
    *(a1 + 297) = 1;
    *(a1 + 299) = 1;
    *(a1 + 288) = 56;
    *&result = 16;
    *(a1 + 112) = xmmword_22EE3F290;
    *(a1 + 128) = 56;
    return result;
  }

  v6 = *__error();
  ktrace_log_init();
  if (os_log_type_enabled(ktrace_file_log, OS_LOG_TYPE_ERROR))
  {
    ktrace_file_write_header_internal_cold_1();
  }

  *__error() = v6;
  __error();
  return result;
}

uint64_t tracepoint_timestamp(uint64_t a1, int a2)
{
  if (a2)
  {
    return *a1;
  }

  else
  {
    return *a1 & 0xFFFFFFFFFFFFFFLL;
  }
}

void kthmap_update(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    v6 = *(a2 + 40);
    v7 = 48;
  }

  else
  {
    v6 = *(a2 + 24);
    v7 = 28;
  }

  v8 = *(a2 + v7);
  v9 = v8 & 0xFFFFFFFC;
  if ((*(a1 + 96) & 2) != 0)
  {
    if (v9 > 27721739)
    {
      if (v9 > 117440519)
      {
        if (v9 > 117506055)
        {
          if (v9 == 117506056)
          {
            if (a3)
            {
              v34 = 32;
            }

            else
            {
              v34 = 16;
            }

            rename_task_copy(a1, v6, (a2 + 8), v34);
          }

          else if (v9 == 117506064)
          {
            if (a3)
            {
              v30 = 32;
            }

            else
            {
              v30 = 16;
            }

            v31 = (a2 + 8);
            if (v8)
            {
              rename_thread(a1, v6, v31, v30);
            }

            else
            {
              extend_thread_name(a1, v6, v31, v30);
            }
          }
        }

        else if (v9 == 117440520)
        {
          CFSetAddValue(*(a1 + 88), v6);
        }

        else if (v9 == 117506052)
        {
          v42 = v6;
          value = -1;
          CFDictionaryGetValueIfPresent(*(a1 + 56), v6, &value);
          v10 = value;
          if (value != 0xFFFFFFFFLL)
          {
            value = 0;
            CFDictionaryGetValueIfPresent(*(a1 + 16), v10, &value);
            v11 = value;
            if (value)
            {
              if (!*(a2 + 8))
              {
                goto LABEL_114;
              }

              v12 = *(value + 3);
              if (v12)
              {
                free(v12);
              }

              if (a3)
              {
                v13 = 32;
              }

              else
              {
                v13 = 16;
              }

              v11[3] = strndup((a2 + 8), v13);
            }

            CFDictionaryRemoveValue(*(a1 + 56), &v42);
          }
        }

        goto LABEL_114;
      }

      if (v9 != 27721740)
      {
        if (v9 != 27721744)
        {
          if (v9 == 117440516)
          {
            if (a3)
            {
              v14 = *(a2 + 8);
              v15 = *(a2 + 16);
              v16 = *(a2 + 32);
            }

            else
            {
              v14 = *(a2 + 8);
              v15 = *(a2 + 12);
              v16 = *(a2 + 20);
            }

            new_thread(a1, v14, v15, v6);
            if ((v16 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
            {
              v35 = ktrace_thread_map_task_for_thread(a1, v14);
              if (v35)
              {
                v36 = v35;
                if (*v35 == -1)
                {
                  set_task_unique_id(a1, v35, v16);
                }

                if (v36[4] == -1)
                {
                  v36[4] = get_jetsam_coalition_for_tid(a1, v6);
                }

                if (v16 != *v36)
                {
                  ktrace_log_init();
                  v37 = ktrace_log;
                  if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_DEBUG))
                  {
                    kthmap_update_cold_1(v37);
                  }
                }
              }

              else
              {
                v38 = *__error();
                ktrace_log_init();
                if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
                {
                  kthmap_update_cold_2();
                }

                *__error() = v38;
              }
            }
          }

          goto LABEL_114;
        }

        goto LABEL_58;
      }

      goto LABEL_48;
    }

    if (v9 <= 27656211)
    {
      if (v9 == 27656192)
      {
LABEL_51:
        if (a3)
        {
          v19 = *(a2 + 8);
        }

        else
        {
          v19 = *(a2 + 8);
        }

        new_thread_group(a1, v19, "");
        goto LABEL_114;
      }

      if (v9 == 27656200)
      {
LABEL_63:
        if (a3)
        {
          v29 = *(a2 + 16);
          v28 = *(a2 + 24);
        }

        else
        {
          v29 = *(a2 + 12);
          v28 = *(a2 + 16);
        }

        set_thread_thread_group(a1, v28, v29);
        goto LABEL_114;
      }

      if (v9 != 27656204)
      {
        goto LABEL_114;
      }

LABEL_56:
      if (a3)
      {
        v22 = *(a2 + 8);
      }

      else
      {
        v22 = *(a2 + 8);
      }

      if (CFDictionaryGetValue(*(a1 + 64), v22))
      {
        __strlcpy_chk();
      }

      goto LABEL_114;
    }

    if (v9 == 27656212)
    {
LABEL_61:
      if (a3)
      {
        v26 = *(a2 + 8);
        v27 = *(a2 + 16);
      }

      else
      {
        v26 = *(a2 + 8);
        v27 = *(a2 + 12);
      }

      thread_group_set_flags(a1, v26, v27);
      goto LABEL_114;
    }

LABEL_43:
    if (v9 == 27721728)
    {
      if (a3)
      {
        if (*(a2 + 16) != 1)
        {
          goto LABEL_114;
        }

        v20 = *(a2 + 8);
        v21 = *(a2 + 24);
      }

      else
      {
        if (*(a2 + 12) != 1)
        {
          goto LABEL_114;
        }

        v21 = *(a2 + 16);
        v20 = *(a2 + 8);
      }

      new_jetsam_coalition(a1, v20, 0, v21, 0);
      goto LABEL_114;
    }

    if (v9 != 27721736)
    {
      goto LABEL_114;
    }

    if (a3)
    {
      if (!CFDictionaryContainsKey(*(a1 + 80), *(a2 + 8)))
      {
        goto LABEL_114;
      }

      v18 = *(a2 + 8);
      v17 = *(a2 + 16);
    }

    else
    {
      if (!CFDictionaryContainsKey(*(a1 + 80), *(a2 + 8)))
      {
        goto LABEL_114;
      }

      v18 = *(a2 + 8);
      v17 = *(a2 + 12);
    }

    v32 = a1;
LABEL_94:
    set_task_jetsam_coalition(v32, v17, v18);
    goto LABEL_114;
  }

  if (v9 <= 27721727)
  {
    if (v9 <= 27656203)
    {
      if (v9 != 27656192)
      {
        if (v9 != 27656200)
        {
          goto LABEL_114;
        }

        goto LABEL_63;
      }

      goto LABEL_51;
    }

    if (v9 != 27656204)
    {
      if (v9 != 27656212)
      {
        goto LABEL_114;
      }

      goto LABEL_61;
    }

    goto LABEL_56;
  }

  if (v9 <= 27721739)
  {
    goto LABEL_43;
  }

  if (v9 == 27721740)
  {
LABEL_48:
    if (a3)
    {
      if (!CFDictionaryContainsKey(*(a1 + 80), *(a2 + 8)))
      {
        goto LABEL_114;
      }

      v17 = *(a2 + 16);
    }

    else
    {
      if (!CFDictionaryContainsKey(*(a1 + 80), *(a2 + 8)))
      {
        goto LABEL_114;
      }

      v17 = *(a2 + 12);
    }

    v32 = a1;
    v18 = -1;
    goto LABEL_94;
  }

  if (v9 != 27721744)
  {
    goto LABEL_114;
  }

LABEL_58:
  if (a3)
  {
    v23 = (a1 + 80);
    if (!CFDictionaryContainsKey(*(a1 + 80), *(a2 + 8)))
    {
      goto LABEL_114;
    }

    v24 = *(a2 + 8);
    v25 = *(a2 + 24);
  }

  else
  {
    v23 = (a1 + 80);
    if (!CFDictionaryContainsKey(*(a1 + 80), *(a2 + 8)))
    {
      goto LABEL_114;
    }

    v24 = *(a2 + 8);
    v25 = *(a2 + 16);
  }

  v33 = CFDictionaryGetValue(*v23, v24);
  if (v33)
  {
    v33[2] = v25;
  }

LABEL_114:
  if ((*(a1 + 96) & 1) == 0)
  {
    return;
  }

  if (v9 == 27656196)
  {
    if (a3)
    {
      v41 = *(a2 + 8);
    }

    else
    {
      v41 = *(a2 + 8);
    }

    delete_thread_group(a1, v41);
  }

  else if (v9 == 27721732)
  {
    if (a3)
    {
      if (*(a2 + 16) != 1)
      {
        return;
      }

      v40 = *(a2 + 8);
    }

    else
    {
      if (*(a2 + 12) != 1)
      {
        return;
      }

      v40 = *(a2 + 8);
    }

    delete_jetsam_coalition(a1, v40);
  }

  else if (v9 == 117440524 && (*(a1 + 96) & 2) != 0)
  {
    if (a3)
    {
      v39 = *(a2 + 8);
    }

    else
    {
      v39 = *(a2 + 8);
    }

    CFDictionaryRemoveValue(*(a1 + 32), v39);
    CFDictionaryRemoveValue(*(a1 + 40), v39);
    CFDictionaryRemoveValue(*(a1 + 56), v39);
    CFDictionaryRemoveValue(*(a1 + 48), v39);
  }
}