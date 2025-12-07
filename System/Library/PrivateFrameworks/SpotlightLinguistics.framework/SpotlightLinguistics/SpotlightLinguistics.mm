void SILanguageModelPurge()
{
  if (!atomic_load(languageReservations))
  {
    if (logger(void)::token != -1)
    {
      SILanguageResourcesCreate();
    }

    v1 = logger(void)::log;
    if (os_log_type_enabled(logger(void)::log, OS_LOG_TYPE_DEBUG))
    {
      SILanguageModelPurge_cold_2(v1);
    }

    if (getResourcePools(void)::t != -1)
    {
      SILanguageModelPurge_cold_3();
    }

    SIResourcePools::compactAll(getResourcePools(void)::pools);
    if (sLanguageIdentifierPool)
    {
      SIResourcePools::compactAll(sLanguageIdentifierPool);
    }
  }
}

void SIResourcePools::compactAll(SIResourcePools *this)
{
  std::mutex::lock((this + 24));
  for (i = (this + 184); ; SIResourcePool::compactLocked(i[3]))
  {
    i = *i;
    if (!i)
    {
      break;
    }
  }

  std::mutex::unlock((this + 24));

  std::condition_variable::notify_all((this + 88));
}

uint64_t db_rwlock_unlock_unknown(uint64_t a1)
{
  v2 = pthread_mutex_lock(a1);
  v3 = *(a1 + 184);
  if (v3 == pthread_self() || *(a1 + 184) && exc_pthread_key && ((v9 = pthread_getspecific(exc_pthread_key), v9 == -1) || v9 == *(a1 + 184)))
  {
    *(a1 + 204) = 0;
    v11 = *(a1 + 176);
    *(a1 + 176) = 0;
    *(a1 + 184) = 0;
    v12 = *(a1 + 196) != 0;
    *(a1 + 212) = 0;
    db_rwlock_wakeup(a1, v12, 0, v4, v5, v6, v7, v8);
    pthread_mutex_unlock(a1);
    if (v11)
    {
      pthread_override_qos_class_end_np(v11);
    }
  }

  else
  {
    v10 = *(a1 + 196) - 1;
    *(a1 + 196) = v10;
    if (!v10)
    {
      db_rwlock_wakeup(a1, 0, 0, v4, v5, v6, v7, v8);
    }

    pthread_mutex_unlock(a1);
  }

  return v2;
}

uint64_t db_rwlock_is_locked(uint64_t a1)
{
  if (pthread_mutex_trylock(a1))
  {
    return 1;
  }

  if (*(a1 + 196) || (v3 = *(a1 + 200)) != 0)
  {
    v3 = 1;
  }

  if (*(a1 + 184))
  {
    v2 = 1;
  }

  else
  {
    v2 = v3;
  }

  pthread_mutex_unlock(a1);
  return v2;
}

uint64_t db_read_unlock(uint64_t a1)
{
  v7 = pthread_mutex_lock(a1);
  v8 = *(a1 + 196) - 1;
  *(a1 + 196) = v8;
  if (!v8)
  {
    db_rwlock_wakeup(a1, 0, 0, v2, v3, v4, v5, v6);
  }

  pthread_mutex_unlock(a1);
  return v7;
}

uint64_t db_read_lock(uint64_t a1)
{
  v2 = pthread_mutex_lock(a1);
  v3 = qos_level();
  v4 = *(a1 + 184);
  v5 = pthread_self();
  if (v4 == v5)
  {
    db_read_lock_cold_1(v5, v6, v7, v8, v9, v10, v11, v12);
  }

  if (db_rwlock_reader_excluded(a1, v3, 0))
  {
    db_rwlock_wait(a1, v3, 4);
  }

  else
  {
    ++*(a1 + 196);
  }

  pthread_mutex_unlock(a1);
  return v2;
}

uint64_t qos_level()
{
  HIDWORD(v1) = qos_class_self() - 9;
  LODWORD(v1) = HIDWORD(v1);
  v0 = v1 >> 2;
  if (v0 > 6)
  {
    return 0;
  }

  else
  {
    return dword_26B7FA0E8[v0];
  }
}

void __message_assert(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  v11 = *MEMORY[0x277D85DE8];
  v8[0] = 0;
  va_copy(&v8[1], va);
  vasprintf(v8, "%s:%u: failed assertion '%s' %s ", va);
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v10 = v8[0];
    _os_log_error_impl(&dword_26B7AA000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s", buf, 0xCu);
  }

  free(v8[0]);
}

BOOL db_rwlock_reader_excluded(uint64_t a1, unsigned int a2, char a3)
{
  if (*(a1 + 184) && ((a3 & 1) != 0 || *(a1 + 212) != 1) || *(a1 + 160) && *(a1 + 192) >= a2 && (a3 & 1) == 0 && !*(a1 + 200))
  {
    return 1;
  }

  if (!*(a1 + 196) && *(a1 + 212) != 1)
  {
    return 0;
  }

  v3 = a2 <= 5 ? 5 : a2;
  v4 = v3 - a2 + 1;
  v5 = (a1 + 16 * a2 + 80);
  while (--v4)
  {
    v6 = *v5;
    v5 += 2;
    if (v6)
    {
      return 1;
    }
  }

  return *(a1 + 64 + 16 * a2) && !*(a1 + 200);
}

uint64_t db_rwlock_wait(uint64_t a1, signed int a2, int a3)
{
  v12 = db_rwlock_alloc_waiter(a1);
  LODWORD(v12[1].__sig) = a3;
  if ((a3 & 0xFFFFFFFE) == 2)
  {
    *v12[1].__opaque = pthread_self();
  }

  ++*(a1 + 208);
  db_rwlock_waiter_list_enqueue_inner((a1 + 16 * a2 + 64), v12, v6, v7, v8, v9, v10, v11);
  do
  {
    v13 = *(a1 + 184);
    if (v13)
    {
      if ((*(a1 + 212) & 1) == 0 && *(a1 + 204) < a2)
      {
        *(a1 + 204) = a2;
        v14 = *(a1 + 176);
        v15 = qos_class_self();
        *(a1 + 176) = pthread_override_qos_class_start_np(v13, v15, 0);
        if (v14)
        {
          pthread_override_qos_class_end_np(v14);
        }
      }
    }

    result = pthread_cond_wait(v12, a1);
  }

  while (BYTE4(v12[1].__sig) != 1);
  *&v12[1].__opaque[8] = *(a1 + 168);
  *(a1 + 168) = v12;
  return result;
}

uint64_t db_longread_lock(uint64_t a1)
{
  v2 = pthread_mutex_lock(a1);
  v3 = qos_level();
  if (db_rwlock_reader_excluded(a1, v3, 1))
  {
    db_rwlock_wait(a1, v3, 5);
  }

  else
  {
    *(a1 + 196) = vadd_s32(*(a1 + 196), 0x100000001);
  }

  pthread_mutex_unlock(a1);
  return v2;
}

uint64_t db_longread_unlock(uint64_t a1)
{
  v7 = pthread_mutex_lock(a1);
  v8 = vadd_s32(*(a1 + 196), -1);
  *(a1 + 196) = v8;
  if (!v8.i32[0])
  {
    db_rwlock_wakeup(a1, 0, 0, v2, v3, v4, v5, v6);
  }

  pthread_mutex_unlock(a1);
  return v7;
}

uint64_t db_rwlock_wakeup(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a3;
  v9 = a2;
  v10 = result;
  v11 = result + 64;
  v12 = 6;
  while (1)
  {
    if ((v12 - 1) <= *(v10 + 192))
    {
      result = *(v10 + 160);
      if (result)
      {
        if ((v9 & 1) == 0)
        {
          *(result + 52) = 1;
          *(v10 + 160) = 0;
          *(v10 + 192) = 0;
          *(v10 + 212) = 0;

          return pthread_cond_signal(result);
        }

        return result;
      }
    }

    v13 = (v9 & 1) != 0 ? 1 : *(v10 + 212);
    v24 = 0uLL;
    v14 = (v11 + 16 * (v12 - 1));
    v15 = *v14;
    if (*v14)
    {
      break;
    }

LABEL_38:
    if (v12-- <= 1)
    {
      return result;
    }
  }

  while (1)
  {
    v16 = *(v15 + 48);
    if (v16 < 3)
    {
      break;
    }

    if (v16 != 3)
    {
      if (v16 == 5 && ((v8 & 1) != 0 || *(v10 + 200)))
      {
        goto LABEL_20;
      }

      result = pthread_cond_signal(v15);
      v17 = *v14;
      if (*v14 != v14[1])
      {
        *v14 = *(v17 + 64);
        goto LABEL_25;
      }

      *v14 = 0;
      v14[1] = 0;
      if (v17)
      {
LABEL_25:
        *(v17 + 52) = 1;
        --*(v10 + 208);
      }

      ++*(v10 + 196);
      if (*(v15 + 48) == 5)
      {
        ++*(v10 + 200);
      }

      v13 = 1;
      goto LABEL_34;
    }

    if (*(v10 + 184))
    {
      if (!*(v15 + 56))
      {
        db_rwlock_wakeup_cold_1(result, a2, a3, a4, a5, a6, a7, a8);
      }

      goto LABEL_20;
    }

    result = pthread_cond_signal(v15);
    v19 = *v14;
    if (*v14 != v14[1])
    {
      *v14 = *(v19 + 64);
LABEL_32:
      *(v19 + 52) = 1;
      --*(v10 + 208);
      goto LABEL_33;
    }

    *v14 = 0;
    v14[1] = 0;
    if (v19)
    {
      goto LABEL_32;
    }

LABEL_33:
    *(v10 + 184) = *(v15 + 56);
    v13 = 1;
    *(v10 + 212) = 1;
    v8 = 1;
LABEL_34:
    v9 = 1;
LABEL_35:
    v15 = *v14;
    if (!*v14)
    {
      if (v24)
      {
        *v14 = v24;
      }

      goto LABEL_38;
    }
  }

  if (*(v10 + 200) || *(v10 + 212) == 1)
  {
LABEL_20:
    if (v15 == v14[1])
    {
      v18 = 0;
      v14[1] = 0;
    }

    else
    {
      v18 = *(v15 + 64);
    }

    *v14 = v18;
    result = db_rwlock_waiter_list_enqueue_inner(&v24, v15, a3, a4, a5, a6, a7, a8);
    goto LABEL_35;
  }

  if ((v13 & 1) == 0)
  {
    pthread_cond_signal(v15);
    v21 = *v14;
    if (*v14 != v14[1])
    {
      v22 = *(v21 + 64);
      *v14 = v22;
      goto LABEL_44;
    }

    v22 = 0;
    result = 0;
    *v14 = 0;
    v14[1] = 0;
    if (v21)
    {
LABEL_44:
      *(v21 + 52) = 1;
      --*(v10 + 208);
      result = v22;
    }

    *(v10 + 184) = *(v15 + 56);
    v15 = result;
  }

  if (v24)
  {
    if (v15)
    {
      v23 = v14[1];
      *v14 = v24;
      *(v14[1] + 64) = v15;
      v14[1] = v23;
    }

    else
    {
      *v14 = v24;
    }
  }

  return result;
}

uint64_t _db_write_lock(uint64_t a1)
{
  v2 = qos_level();
  v3 = pthread_mutex_lock(a1);
  if (db_rwlock_writer_excluded(a1, v2))
  {
    db_rwlock_wait(a1, v2, 2);
  }

  else
  {
    *(a1 + 184) = pthread_self();
  }

  pthread_mutex_unlock(a1);
  return v3;
}

uint64_t db_rwlock_writer_excluded(uint64_t a1, int a2)
{
  if (*(a1 + 184) || *(a1 + 196) || (*(a1 + 212) & 1) != 0)
  {
    return 1;
  }

  if (a2 <= 5)
  {
    v3 = a2 - 1;
    for (i = (a1 + 16 * a2 + 64); !*i; i += 2)
    {
      if (++v3 == 5)
      {
        return 0;
      }
    }

    return 1;
  }

  return 0;
}

uint64_t db_write_unlock(uint64_t a1)
{
  v2 = pthread_mutex_lock(a1);
  *(a1 + 204) = 0;
  v3 = *(a1 + 176);
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  v4 = *(a1 + 196) != 0;
  *(a1 + 212) = 0;
  db_rwlock_wakeup(a1, v4, 0, v5, v6, v7, v8, v9);
  pthread_mutex_unlock(a1);
  if (v3)
  {
    pthread_override_qos_class_end_np(v3);
  }

  return v2;
}

uint64_t _db_write_lock_downgraded(uint64_t a1)
{
  v2 = qos_level();
  v3 = pthread_mutex_lock(a1);
  if (db_rwlock_writer_excluded(a1, v2))
  {
    db_rwlock_wait(a1, v2, 3);
  }

  else
  {
    *(a1 + 184) = pthread_self();
    *(a1 + 212) = 1;
  }

  pthread_mutex_unlock(a1);
  return v3;
}

BOOL db_writelock_assertlock(uint64_t a1)
{
  v2 = pthread_mutex_lock(a1);
  v3 = *(a1 + 184);
  if (v3 == pthread_self())
  {
    goto LABEL_7;
  }

  if (!*(a1 + 184) || !exc_pthread_key)
  {
    v5 = 0;
    if (v2)
    {
      return 0;
    }

    goto LABEL_10;
  }

  v4 = pthread_getspecific(exc_pthread_key);
  if (v4 == -1)
  {
LABEL_7:
    v5 = 1;
    if (v2)
    {
      return 0;
    }

LABEL_10:
    pthread_mutex_unlock(a1);
    return v5;
  }

  v5 = v4 == *(a1 + 184);
  if (!v2)
  {
    goto LABEL_10;
  }

  return 0;
}

uint64_t db_downgrade_lock(pthread_mutex_t *a1)
{
  v2 = pthread_mutex_lock(a1);
  a1[3].__opaque[12] = 1;
  db_rwlock_wakeup(a1, 1, 1, v3, v4, v5, v6, v7);
  pthread_mutex_unlock(a1);
  return v2;
}

uint64_t db_writer_yield_lock(uint64_t a1)
{
  v2 = qos_level();
  if (!*(a1 + 208))
  {
    return 0;
  }

  v3 = v2;
  if (pthread_mutex_lock(a1))
  {
    return 0;
  }

  v9 = 16 * v3;
  while (1)
  {
    v10 = *(a1 + v9 + 64);
    if (v10)
    {
      if (*(v10 + 48) == 4)
      {
        break;
      }
    }

    v9 += 16;
    if (v9 == 96)
    {
      pthread_mutex_unlock(a1);
      return 0;
    }
  }

  v11 = 1;
  *(a1 + 212) = 1;
  db_rwlock_wakeup(a1, 1, 1, v4, v5, v6, v7, v8);
  pthread_mutex_unlock(a1);
  db_upgrade_lock(a1);
  return v11;
}

uint64_t db_upgrade_lock(uint64_t a1)
{
  v2 = pthread_mutex_lock(a1);
  v3 = qos_level();
  v4 = v3;
  if (*(a1 + 196))
  {
LABEL_2:
    v5 = db_rwlock_alloc_waiter(a1);
    LODWORD(v5[1].__sig) = 1;
    *v5[1].__opaque = pthread_self();
    *(a1 + 160) = v5;
    *(a1 + 192) = v4;
    if ((v5[1].__sig & 0x100000000) == 0)
    {
      do
      {
        pthread_cond_wait(v5, a1);
      }

      while (BYTE4(v5[1].__sig) != 1);
    }

    *&v5[1].__opaque[8] = *(a1 + 168);
    *(a1 + 168) = v5;
  }

  else
  {
    v6 = 16 * v3;
    while (v6 != 80)
    {
      v7 = *(a1 + 80 + v6);
      v6 += 16;
      if (v7)
      {
        if (*(v7 + 48) >= 4u)
        {
          goto LABEL_2;
        }

        break;
      }
    }

    *(a1 + 212) = 0;
  }

  pthread_mutex_unlock(a1);
  return v2;
}

uint64_t db_convert_to_reader(uint64_t a1)
{
  v2 = pthread_mutex_lock(a1);
  *(a1 + 204) = 0;
  v3 = *(a1 + 176);
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  ++*(a1 + 196);
  db_rwlock_wakeup(a1, 1, 0, v4, v5, v6, v7, v8);
  pthread_mutex_unlock(a1);
  if (v3)
  {
    pthread_override_qos_class_end_np(v3);
  }

  return v2;
}

uint64_t db_rwlock_destroy(pthread_mutex_t *a1)
{
  v2 = 0;
  v3 = a1 + 1;
  do
  {
    v4 = &v3->__sig + 2 * v2;
    while (1)
    {
      v5 = *v4;
      if (*v4 != v4[1])
      {
        *v4 = *(v5 + 64);
        goto LABEL_6;
      }

      *v4 = 0;
      v4[1] = 0;
      if (!v5)
      {
        break;
      }

LABEL_6:
      *(v5 + 52) = 1;
      --*&a1[3].__opaque[8];
      pthread_cond_destroy(v5);
      free(v5);
    }

    ++v2;
  }

  while (v2 != 6);
  while (1)
  {
    v6 = *&a1[2].__opaque[32];
    if (!v6)
    {
      break;
    }

    *&a1[2].__opaque[32] = *(v6 + 64);
    pthread_cond_destroy(v6);
    free(v6);
  }

  v7 = *&a1[2].__opaque[24];
  if (v7)
  {
    pthread_cond_destroy(*&a1[2].__opaque[24]);
    free(v7);
  }

  return pthread_mutex_destroy(a1);
}

uint64_t _db_rwlock_init(uint64_t a1)
{
  *(a1 + 208) = 0;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return pthread_mutex_init(a1, 0);
}

pthread_cond_t *db_rwlock_alloc_waiter(uint64_t a1)
{
  v1 = *(a1 + 168);
  if (v1)
  {
    *(a1 + 168) = *&v1[1].__opaque[8];
  }

  else
  {
    v1 = malloc_type_malloc(0x48uLL, 0x10200407DFAD57DuLL);
    pthread_cond_init(v1, 0);
  }

  LODWORD(v1[1].__sig) = 0;
  BYTE4(v1[1].__sig) = 0;
  *v1[1].__opaque = 0;
  *&v1[1].__opaque[8] = 0;
  return v1;
}

void *db_rwlock_waiter_list_enqueue_inner(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(a2 + 64) = 0;
  v8 = result[1];
  if (v8)
  {
    v9 = (v8 + 64);
  }

  else
  {
    v9 = result;
    if (*result)
    {
      db_rwlock_waiter_list_enqueue_inner_cold_1(result, a2, a3, a4, a5, a6, a7, a8);
    }
  }

  *v9 = a2;
  result[1] = a2;
  return result;
}

void OUTLINED_FUNCTION_0()
{
  MEMORY[0xBAD] = -559038737;

  abort();
}

void _data_map32_clear_seen(uint64_t a1)
{
  os_unfair_lock_lock((a1 + 1436));
  v2 = *(a1 + 1440);
  if (v2)
  {
    v3 = v2[2];
    if (v3)
    {
      CFRelease(v3);
    }

    free(v2);
    *(a1 + 1440) = 0;
  }

  os_unfair_lock_unlock((a1 + 1436));
}

uint64_t _data_map32_wrlock(uint64_t a1)
{
  if (*(a1 + 1453))
  {
    return 0;
  }

  v2 = _db_write_lock(a1);
  v1 = v2;
  if (v2)
  {
    _data_map32_wrlock_cold_1(v2);
  }

  return v1;
}

uint64_t _data_map32_rdlock(uint64_t a1)
{
  if (*(a1 + 1453))
  {
    return 0;
  }

  lock = db_read_lock(a1);
  v1 = lock;
  if (lock)
  {
    _data_map32_rdlock_cold_1(lock);
  }

  return v1;
}

uint64_t _data_map32_unlock(uint64_t a1)
{
  if (*(a1 + 1453))
  {
    return 0;
  }

  v2 = db_rwlock_unlock_unknown(a1);
  v1 = v2;
  if (v2)
  {
    _data_map32_unlock_cold_1(v2);
  }

  return v1;
}

uint64_t data_map32_make_read_only(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 1454);
  if (_data_map32_commit(a1, 0))
  {
    return 0xFFFFFFFFLL;
  }

  result = fd_parent_fd(*(a1 + 1272));
  if (result != -1)
  {
    v4 = result;
    bzero(v25, 0x400uLL);
    v5 = fd_name(*(a1 + 1272), v25, 0x400uLL);
    if (!v5)
    {
      return 0xFFFFFFFFLL;
    }

    v6 = v5;
    v7 = strlen(v5);
    if (v7 < 8)
    {
      return 0xFFFFFFFFLL;
    }

    v8 = &v6[v7 - 7];
    if (strcmp(v8, ".header"))
    {
      return 0xFFFFFFFFLL;
    }

    strcpy(v8, ".map");
    v9 = v2 ? 3 : 0;
    v10 = fd_create_protected(v4, v6, 1538, v9);
    if (!v10)
    {
      return 0xFFFFFFFFLL;
    }

    v11 = v10;
    v12 = (*(a1 + 1376) + 103) & 0x1FFFFFFF8;
    v13 = (*(a1 + 1348) + v12 + 15) & 0x3FFFFFFF8;
    v14 = (*(a1 + 1328) + v13 + 15) & 0x7FFFFFFF8;
    if (fd_truncate(v10, v14) || (v15 = fd_mmap(v11, v14, 3, 1, 0), v15 == -1))
    {
      fd_unlink(v11);
      fd_release(v11);
      return 0xFFFFFFFFLL;
    }

    v16 = v15;
    v17 = *(a1 + 1296);
    v18 = *v17;
    v19 = v17[1];
    v20 = v17[2];
    *(v15 + 48) = *(v17 + 6);
    *(v15 + 16) = v19;
    *(v15 + 32) = v20;
    *v15 = v18;
    *(v15 + 56) = 13;
    *(v15 + 60) = v14;
    *(v15 + 64) = 88;
    *(v15 + 68) = v12;
    *(v15 + 72) = v13;
    memcpy((v15 + 88), *(a1 + 1384), *(a1 + 1376));
    memcpy(&v16[v12], *(a1 + 1352), *(a1 + 1348));
    memcpy(&v16[v13], *(a1 + 1320), *(a1 + 1328));
    fd_msync(v16, v14, 16, 1);
    munmap(v16, v14);
    fd_release(v11);
    free(*(a1 + 1296));
    *(a1 + 1296) = 0;
    fd_unlink(*(a1 + 1272));
    fd_release(*(a1 + 1272));
    *(a1 + 1272) = 0;
    munmap(*(a1 + 1384), *(a1 + 1380));
    *(a1 + 1384) = -1;
    fd_unlink(*(a1 + 1368));
    fd_release(*(a1 + 1368));
    *(a1 + 1368) = 0;
    munmap(*(a1 + 1352), *(a1 + 1344));
    *(a1 + 1352) = -1;
    fd_unlink(*(a1 + 1336));
    fd_release(*(a1 + 1336));
    *(a1 + 1336) = 0;
    munmap(*(a1 + 1320), *(a1 + 1312));
    *(a1 + 1320) = -1;
    fd_unlink(*(a1 + 1304));
    fd_release(*(a1 + 1304));
    *(a1 + 1304) = 0;
    if (*(a1 + 1454))
    {
      v21 = 3;
    }

    else
    {
      v21 = 0;
    }

    *(a1 + 1272) = fd_create_protected(v4, v6, 0, v21);
    data_map32_prepare_mappings();
    v22 = fd_mmap(*(a1 + 1272), v14, 1, 1, 0);
    if (v22 == -1)
    {
      return 0;
    }

    else
    {
      v23 = v22;
      result = 0;
      *(a1 + 1256) = v23;
      *(a1 + 1296) = v23;
      v24 = v23[17];
      *(a1 + 1384) = v23 + v23[16];
      *(a1 + 1352) = v23 + v24;
      *(a1 + 1320) = v23 + v23[18];
    }
  }

  return result;
}

uint64_t _data_map32_commit(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v21 = *MEMORY[0x277D85DE8];
  if (_data_map32_rdlock(a1))
  {
    return 0xFFFFFFFFLL;
  }

  v5 = *(*(a1 + 1296) + 16);
  if (v5 == 1)
  {
    goto LABEL_7;
  }

  if (v5)
  {
    v4 = 0xFFFFFFFFLL;
    goto LABEL_12;
  }

  v6 = _data_map32_sync_data(a1, v2);
  if (!v6)
  {
    v6 = _data_map32_sync_header(a1, v2);
    if (!v6)
    {
LABEL_7:
      v6 = data_map32_shadow(a1);
      if (!v6)
      {
        v6 = data_map32_commit_shadow(a1);
        if (!v6)
        {
          v6 = data_map32_commit_shadow_complete(a1);
        }
      }
    }
  }

  v4 = v6;
LABEL_12:
  memset(v20, 0, sizeof(v20));
  v7 = *__error();
  v8 = _SILogForLogForCategory(7);
  v9 = 2 * (dword_2804230EC < 4);
  if (os_log_type_enabled(v8, v9))
  {
    v10 = fd_name(*(a1 + 1272), v20, 0x100uLL);
    v11 = "syncless commit";
    v12 = *(a1 + 220);
    v14 = 136315650;
    v15 = v10;
    if (v2)
    {
      v11 = "commit";
    }

    v16 = 2080;
    v17 = v11;
    v18 = 1024;
    v19 = v12 - 1;
    _os_log_impl(&dword_26B7AA000, v8, v9, "%s complete %s with count: %d", &v14, 0x1Cu);
  }

  *__error() = v7;
  _data_map32_unlock(a1);
  return v4;
}

_DWORD *data_map32_init(unsigned int a1, uint64_t a2, int a3, int a4)
{
  v10 = 0;
  v5[0] = a1;
  v5[1] = a2;
  v6 = a3;
  v7 = a4;
  v8 = 0u;
  memset(v9, 0, sizeof(v9));
  return data_map32_init_with_ctx(v5);
}

_DWORD *data_map32_init_with_ctx(unsigned int *a1)
{
  v118 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = *(a1 + 1);
  v5 = a1[4];
  v4 = a1[5];
  v6 = malloc_type_calloc(1uLL, 0x5B8uLL, 0x10B004015A60B3CuLL);
  v7 = v6;
  v8 = a1[5] & 0x100;
  v6[54] = 842150450;
  *(v6 + 177) = *(a1 + 3);
  *(v6 + 176) = *(a1 + 4);
  *(v6 + 178) = *(a1 + 7);
  v6[358] = a1[16];
  *(v6 + 1453) = (v4 & 8) != 0;
  if ((v4 & 8) == 0)
  {
    _db_rwlock_init(v6);
  }

  bzero(v117, 0x400uLL);
  *(v7 + 1256) = -1;
  *(v7 + 1296) = 0;
  *(v7 + 1320) = -1;
  *(v7 + 1352) = -1;
  *(v7 + 1384) = -1;
  *(v7 + 1436) = 0;
  *(v7 + 1454) = BYTE1(v8);
  if (!v3 || (v9 = strlen(v3), v2 == -1) || v9 - 241 <= 0xFFFFFFFFFFFFFF0FLL)
  {
    v23 = *__error();
    v24 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      data_map32_init_with_ctx_cold_22();
    }

    goto LABEL_25;
  }

  v99 = v5;
  v10 = v4 & 2;
  v100 = v7 + 1296;
  __strlcpy_chk();
  bzero(__str, 0x400uLL);
  snprintf(__str, 0x400uLL, "tmp.%s.rehash", (v7 + 228));
  memset(&v107, 0, sizeof(v107));
  v98 = fstatat(*a1, __str, &v107, 0);
  if ((v4 & 2) != 0)
  {
    v11 = 0;
  }

  else
  {
    v11 = ((v4 & 1) << 10) | 0x20000202;
  }

  if ((v4 & 3) != 2)
  {
    if (v8)
    {
      v12 = 3;
    }

    else
    {
      v12 = 0;
    }

LABEL_32:
    snprintf(v117, 0x400uLL, "%s.header", v3);
    v26 = fd_create_protected(v2, v117, v11, 3u);
    *(v7 + 1272) = v26;
    *(v7 + 1288) = fd_lseek(v26, 0, 2);
    snprintf(v117, 0x400uLL, "%s.data", v3);
    v27 = fd_create_protected(v2, v117, v11, v12);
    *(v7 + 1304) = v27;
    if ((v4 & 3) == 0)
    {
      memset(&v115, 0, sizeof(v115));
      if (!fd_stat(v27, &v115))
      {
        v28 = v115.st_blocks << 9;
        if (v115.st_blocks << 9 > v115.st_size + 0x400000)
        {
          bzero(&v107, 0x400uLL);
          v97 = *__error();
          log = _SILogForLogForCategory(0);
          if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134218498;
            v102 = v28;
            v103 = 2048;
            st_size = v115.st_size;
            v105 = 2080;
            v106 = v117;
            _os_log_impl(&dword_26B7AA000, log, OS_LOG_TYPE_DEFAULT, "found allocated size %lld for %lld %s", buf, 0x20u);
          }

          *__error() = v97;
          snprintf(&v107, 0x400uLL, "tmp.%s.data.1", v3);
          v29 = fd_create_protected(v2, &v107, 1538, v12);
          if (!fd_copyfile(*(v7 + 1304), v29, 0))
          {
            snprintf(&v107, 0x400uLL, "tmp.%s.data.2", v3);
            if (!fd_rename(*(v7 + 1304), &v107) && !fd_rename(v29, v117))
            {
              fd_unlink(*(v7 + 1304));
              fd_release(*(v7 + 1304));
              *(v7 + 1304) = v29;
              v29 = 0;
            }
          }

          fd_unlink(v29);
          fd_release(v29);
        }
      }

      v27 = *(v7 + 1304);
    }

    *(v7 + 1316) = fd_lseek(v27, 0, 2);
    snprintf(v117, 0x400uLL, "%s.offsets", v3);
    v30 = fd_create_protected(v2, v117, v11, 3u);
    *(v7 + 1336) = v30;
    *(v7 + 1348) = fd_lseek(v30, 0, 2);
    snprintf(v117, 0x400uLL, "%s.buckets", v3);
    v31 = fd_create_protected(v2, v117, 514, 3u);
    *(v7 + 1368) = v31;
    *(v7 + 1376) = fd_lseek(v31, 0, 2);
    if (v4)
    {
      if (fd_truncate(*(v7 + 1272), 56) == -1)
      {
        v23 = *__error();
        v54 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
        {
          data_map32_init_with_ctx_cold_7();
        }

        goto LABEL_25;
      }

      v33 = malloc_type_calloc(1uLL, 0x38uLL, 0x100004021716A34uLL);
      *(v7 + 1296) = v33;
      *(v7 + 1288) = 56;
      *v33 = 0x446174615000;
      v33[2] = 13;
      v33[3] = v99;
      *(v33 + 2) = 0;
      v34 = MEMORY[0x277D85FA0];
      if (fd_truncate(*(v7 + 1304), *MEMORY[0x277D85FA0]) == -1)
      {
        v23 = *__error();
        v56 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
        {
          data_map32_init_with_ctx_cold_6();
        }

        goto LABEL_25;
      }

      v35 = fd_mmap(*(v7 + 1304), 0x100000, v10 ^ 3u, 1, 0);
      *(v7 + 1320) = v35;
      if (v35 == -1)
      {
        v23 = *__error();
        v57 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
        {
          data_map32_init_with_ctx_cold_5();
        }

        goto LABEL_25;
      }

      *(v7 + 1312) = 0x100000;
      v36 = *v34;
      *(v7 + 1316) = *v34;
      if (fd_truncate(*(v7 + 1336), v36 & 0xFFFFFFFFFFFFFFFCLL) == -1)
      {
        v23 = *__error();
        v71 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
        {
          data_map32_init_with_ctx_cold_4();
        }

        goto LABEL_25;
      }

      v37 = fd_mmap(*(v7 + 1336), 0x100000, v10 ^ 3u, 1, 0);
      *(v7 + 1352) = v37;
      if (v37 == -1)
      {
        v23 = *__error();
        v72 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
        {
          data_map32_init_with_ctx_cold_3();
        }

        goto LABEL_25;
      }

      *(v7 + 1344) = 0x100000;
      v38 = *v34;
      *(v7 + 1348) = *v34 & 0xFFFFFFFC;
      *(v7 + 1360) = v38 >> 2;
      v39 = v38 & 0xFFFFFFFC;
      if (fd_truncate(*(v7 + 1368), v38 & 0xFFFFFFFFFFFFFFFCLL) == -1)
      {
        v23 = *__error();
        v82 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v82, OS_LOG_TYPE_ERROR))
        {
          data_map32_init_with_ctx_cold_2();
        }

        goto LABEL_25;
      }

      v40 = fd_mmap(*(v7 + 1368), 0x100000, v10 ^ 3u, 1, 0);
      *(v7 + 1384) = v40;
      if (v40 == -1)
      {
        v23 = *__error();
        v84 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v84, OS_LOG_TYPE_ERROR))
        {
          data_map32_init_with_ctx_cold_1();
        }

        goto LABEL_25;
      }

      *(v7 + 1380) = 0x100000;
      *(v7 + 1376) = v39;
      v41 = *v34 >> 2;
      *(*(v7 + 1296) + 24) = v41;
      *(v7 + 1392) = v41;
      v42 = data_entry_store(*(v7 + 1320), 0, dword_279D02DC8);
      v43 = *(v7 + 1296);
      *(v43 + 20) = v42;
      *(v7 + 1328) = v42;
      **(v7 + 1352) = 0;
      *(v43 + 28) = 1;
      v44 = (v7 + 220);
      v5 = v99;
    }

    else
    {
      if (*(v7 + 1288) <= 0x37u)
      {
        v23 = *__error();
        v32 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          data_map32_init_with_ctx_cold_21();
        }

        goto LABEL_25;
      }

      *v100 = malloc_type_calloc(1uLL, 0x38uLL, 0x100004021716A34uLL);
      v45 = (v4 >> 2) & 1;
      if ((v4 & 0x80) != 0)
      {
        sibling_with_suffix_protected = fd_create_sibling_with_suffix_protected(*(v7 + 1272), ".shadow", 0, 3u);
        if (sibling_with_suffix_protected)
        {
          v47 = sibling_with_suffix_protected;
          if (!fd_copyfile(sibling_with_suffix_protected, *(v7 + 1272), 0))
          {
            v45 = 0;
          }

          fd_release(v47);
        }
      }

      if (fd_pread(*(v7 + 1272), *(v7 + 1296), 0x38uLL, 0) != 56)
      {
        v23 = *__error();
        v55 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
        {
          data_map32_init_with_ctx_cold_8();
        }

        goto LABEL_25;
      }

      v48 = *v100;
      v49 = *(*v100 + 8);
      if (v49 == 1)
      {
        if (fd_truncate(*(v7 + 1272), 56) == -1)
        {
          v23 = *__error();
          v74 = _SILogForLogForCategory(0);
          if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
          {
            data_map32_init_with_ctx_cold_20();
          }

          goto LABEL_25;
        }

        v50 = 0;
        v51 = 0;
        v52 = 0;
        *(v7 + 1288) = 56;
        v48 = *v100;
        v53 = 0;
        *(v48 + 44) = 0;
        *(v48 + 52) = 0;
        *(v48 + 8) = 9;
        *(v48 + 24) = 0;
      }

      else
      {
        v52 = *(v48 + 24);
        v53 = *(v48 + 44);
        v51 = *(v48 + 52);
        v50 = v49 < 9;
      }

      v58 = *(v48 + 28);
      *(v7 + 220) = v58;
      v44 = (v7 + 220);
      v59 = *(v48 + 20);
      *(v7 + 1328) = v59;
      *(v7 + 1360) = *(v7 + 1348) >> 2;
      *(v7 + 1392) = v52;
      *(v7 + 1396) = v53;
      *(v7 + 1404) = v51;
      *(v7 + 1452) = v50;
      if (v45)
      {
        v60 = *(v48 + 32);
        if (v59 < v60)
        {
          goto LABEL_26;
        }

        if (v60 != v59)
        {
          if ((v4 & 2) == 0)
          {
            *(v48 + 20) = v60;
          }

          *(v7 + 1328) = v60;
        }

        v61 = *(v48 + 40);
        if (v58 < v61)
        {
          goto LABEL_26;
        }

        if (v58 != v61)
        {
          if ((v4 & 2) == 0)
          {
            *(v48 + 24) = 0;
            *(v48 + 28) = v61;
            *(v48 + 20) = v60;
          }

          *(v7 + 220) = v61;
          *(v7 + 1392) = 0;
        }
      }

      v62 = MEMORY[0x277D85FA0];
      if (((*MEMORY[0x277D85FA0] + *(v7 + 1316) - 1) & -*MEMORY[0x277D85FA0]) <= 0x100000)
      {
        v63 = 0x100000;
      }

      else
      {
        v63 = (*MEMORY[0x277D85FA0] + *(v7 + 1316) - 1) & -*MEMORY[0x277D85FA0];
      }

      v64 = fd_mmap(*(v7 + 1304), v63, v10 ^ 3u, 1, 0);
      *(v7 + 1320) = v64;
      if (v64 == -1)
      {
        v23 = *__error();
        v73 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
        {
          data_map32_init_with_ctx_cold_19();
        }

        goto LABEL_25;
      }

      *(v7 + 1312) = v63;
      if (((*v62 + *(v7 + 1348) - 1) & -*v62) <= 0x100000)
      {
        v65 = 0x100000;
      }

      else
      {
        v65 = (*v62 + *(v7 + 1348) - 1) & -*v62;
      }

      v66 = fd_mmap(*(v7 + 1336), v65, v10 ^ 3u, 1, 0);
      *(v7 + 1352) = v66;
      if (v66 == -1)
      {
        v23 = *__error();
        v83 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v83, OS_LOG_TYPE_ERROR))
        {
          data_map32_init_with_ctx_cold_18();
        }

        goto LABEL_25;
      }

      *(v7 + 1344) = v65;
      if (((*v62 + *(v7 + 1376) - 1) & -*v62) <= 0x100000)
      {
        v67 = 0x100000;
      }

      else
      {
        v67 = (*v62 + *(v7 + 1376) - 1) & -*v62;
      }

      v68 = fd_mmap(*(v7 + 1368), v67, 3, 1, 0);
      *(v7 + 1384) = v68;
      if (v68 == -1)
      {
        v23 = *__error();
        v86 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
        {
          data_map32_init_with_ctx_cold_17();
        }

        goto LABEL_25;
      }

      *(v7 + 1380) = v67;
      v69 = *(v7 + 1296);
      v5 = v99;
      if (*(v69 + 28))
      {
        goto LABEL_99;
      }

      *(v69 + 28) = 1;
    }

    *v44 = 1;
LABEL_99:
    if ((v4 & 0x10) != 0)
    {
      data_map32_prepare_mappings();
      data_map32_prepare_mappings();
      data_map32_prepare_mappings();
      data_map32_prepare_mappings();
    }

    v22 = 0;
    goto LABEL_102;
  }

  snprintf(v117, 0x400uLL, "%s.map", v3);
  if (v8)
  {
    v12 = 3;
  }

  else
  {
    v12 = 0;
  }

  v13 = fd_create_protected(v2, v117, 0, v12);
  *(v7 + 1272) = v13;
  v14 = fd_lseek(v13, 0, 2);
  *(v7 + 1288) = v14;
  if (v14 == -1 || v14 < 0x4DuLL)
  {
    fd_release(*(v7 + 1272));
    *(v7 + 1288) = 0;
    goto LABEL_32;
  }

  v15 = fd_mmap(*(v7 + 1272), v14, v10 ^ 3u, 1, 0);
  *(v7 + 1256) = v15;
  if (v15 == -1)
  {
    goto LABEL_26;
  }

  v16 = *(v7 + 1288);
  *(v7 + 1264) = v16;
  if (*(v15 + 60) != v16)
  {
    goto LABEL_26;
  }

  *v100 = v15;
  v17 = *(v15 + 64);
  if (v17 >= v16)
  {
    goto LABEL_26;
  }

  v18 = *(v15 + 68);
  if (v18 >= v16)
  {
    goto LABEL_26;
  }

  v19 = *(v15 + 72);
  if (v19 >= v16)
  {
    goto LABEL_26;
  }

  v20 = *(v15 + 28);
  *(v7 + 220) = v20;
  *(v7 + 1384) = v15 + v17;
  *(v7 + 1392) = *(v15 + 24);
  *(v7 + 1352) = v15 + v18;
  *(v7 + 1320) = v15 + v19;
  *(v7 + 1328) = *(v15 + 20);
  v21 = (v19 - v18) >> 2;
  if (*(v7 + 1360) > v20)
  {
    v21 = v20;
  }

  *(v7 + 1360) = v21;
  *(v7 + 1396) = *(v15 + 44);
  *(v7 + 1404) = *(v15 + 52);
  *(v7 + 1452) = *(v15 + 8) < 9u;
  v22 = 1;
LABEL_102:
  if (*(v7 + 1360) < *(v7 + 220))
  {
    v23 = *__error();
    v70 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
    {
      data_map32_init_with_ctx_cold_16();
    }

LABEL_25:
    *__error() = v23;
LABEL_26:
    data_map32_destroy(v7);
    return 0;
  }

  v75 = *v100;
  if (**v100 != 0x446174615000)
  {
    v23 = *__error();
    v85 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
    {
      data_map32_init_with_ctx_cold_9();
    }

    goto LABEL_25;
  }

  v76 = v75[2];
  if ((v76 - 8) >= 6 && v76 != 1)
  {
    v23 = *__error();
    v88 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v88, OS_LOG_TYPE_ERROR))
    {
      data_map32_init_with_ctx_cold_15();
    }

    goto LABEL_25;
  }

  if (v75[3] != v5)
  {
    v23 = *__error();
    v87 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v87, OS_LOG_TYPE_ERROR))
    {
      data_map32_init_with_ctx_cold_10();
    }

    goto LABEL_25;
  }

  *(v7 + 224) = v5;
  if ((v22 & 1) == 0)
  {
    if (*(v7 + 1288) <= 0x37u)
    {
      v23 = *__error();
      v89 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v89, OS_LOG_TYPE_ERROR))
      {
        data_map32_init_with_ctx_cold_14();
      }

      goto LABEL_25;
    }

    if (*(v7 + 1316) < *(v7 + 1328))
    {
      v23 = *__error();
      v90 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v90, OS_LOG_TYPE_ERROR))
      {
        data_map32_init_with_ctx_cold_13();
      }

      goto LABEL_25;
    }

    if (!v98 || (v4 & 0x80) != 0 || !v75[4] || (v91 = *(v7 + 1392), !v91) || (v92 = *(v7 + 1376), v93 = 4 * v91, v93 > v92))
    {
      if ((_data_map32_rehash(v7) & 1) == 0)
      {
        v23 = *__error();
        v95 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v95, OS_LOG_TYPE_ERROR))
        {
          data_map32_init_with_ctx_cold_11();
        }

        goto LABEL_25;
      }

      unlinkat(*a1, __str, 2048);
      v92 = *(v7 + 1376);
      v93 = 4 * *(v7 + 1392);
    }

    if (v93 > v92)
    {
      v23 = *__error();
      v94 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
      {
        data_map32_init_with_ctx_cold_12();
      }

      goto LABEL_25;
    }
  }

  v113 = 0u;
  v114 = 0u;
  v111 = 0u;
  v112 = 0u;
  v109 = 0u;
  v110 = 0u;
  v108 = 0u;
  memset(&v107, 0, sizeof(v107));
  v77 = *__error();
  v78 = _SILogForLogForCategory(7);
  v79 = 2 * (dword_2804230EC < 4);
  if (os_log_type_enabled(v78, v79))
  {
    v80 = fd_name(*(v7 + 1272), &v107, 0x100uLL);
    v81 = *(v7 + 220) - 1;
    v115.st_dev = 136315394;
    *&v115.st_mode = v80;
    WORD2(v115.st_ino) = 1024;
    *(&v115.st_ino + 6) = v81;
    _os_log_impl(&dword_26B7AA000, v78, v79, "Opened map %s with counts: %d", &v115, 0x12u);
  }

  *__error() = v77;
  return v7;
}

uint64_t data_entry_store(uint64_t a1, unsigned int a2, unsigned int *a3)
{
  v4 = *a3;
  v5 = *a3 >> 28;
  if (v5)
  {
    v8 = (a1 + a2);
    *v8 = v4 | 0x80;
    v8[1] = (v4 >> 7) | 0x80;
    v8[2] = (v4 >> 14) | 0x80;
    v8[3] = (v4 >> 21) | 0x80;
    v7 = a2 + 5;
    v8[4] = v5;
  }

  else if (v4 >= 0x200000)
  {
    v9 = (a1 + a2);
    *v9 = v4 | 0x80;
    v9[1] = (v4 >> 7) | 0x80;
    v9[2] = (v4 >> 14) | 0x80;
    v7 = a2 + 4;
    v9[3] = v4 >> 21;
  }

  else
  {
    v6 = (a1 + a2);
    if (v4 >= 0x4000)
    {
      *v6 = v4 | 0x80;
      v6[1] = (v4 >> 7) | 0x80;
      v7 = a2 + 3;
      v6[2] = v4 >> 14;
    }

    else if (v4 >= 0x80)
    {
      *v6 = v4 | 0x80;
      v7 = a2 + 2;
      v6[1] = v4 >> 7;
    }

    else
    {
      v7 = a2 + 1;
      *v6 = v4;
    }
  }

  memcpy((a1 + v7), *(a3 + 1), *a3);
  return *a3 + v7;
}

uint64_t _data_map32_rehash(uint64_t a1)
{
  v91 = *MEMORY[0x277D85DE8];
  *(a1 + 1400) = 0;
  v2 = *(a1 + 220) - *(a1 + 1396);
  v3 = *__error();
  v4 = _SILogForLogForCategory(0);
  v5 = 2 * (gSILogLevels[0] < 4);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(a1 + 220);
    v7 = *(a1 + 1396);
    v8 = *(a1 + 1392);
    *buf = 134219008;
    *&buf[4] = a1;
    *&buf[12] = 1024;
    *&buf[14] = v6;
    *&buf[18] = 1024;
    *&buf[20] = v7;
    *&buf[24] = 1024;
    *&buf[26] = v2;
    *&buf[30] = 1024;
    LODWORD(v66) = v8;
    _os_log_impl(&dword_26B7AA000, v4, v5, "rehash %p max id: %d deletes: %d count: %d hash_size: %d", buf, 0x24u);
  }

  *__error() = v3;
  fd_msync(*(a1 + 1384), 4 * *(a1 + 1392), 4, 1);
  if (fd_truncate(*(a1 + 1368), 0) == -1)
  {
    goto LABEL_33;
  }

  v9 = 2 * v2;
  if (2 * v2 <= (*MEMORY[0x277D85FA0] >> 2))
  {
    v9 = *MEMORY[0x277D85FA0] >> 2;
  }

  *(a1 + 1392) = v9;
  v10 = 4 * v9;
  if (fd_truncate(*(a1 + 1368), v10) == -1)
  {
    goto LABEL_33;
  }

  if ((*(a1 + 1450) & 1) == 0)
  {
    _data_map32_dirty(a1);
    *(a1 + 1450) = 1;
  }

  *(a1 + 1376) = v10;
  v14 = *(a1 + 1380);
  if (v10 <= v14)
  {
    goto LABEL_14;
  }

  v15 = v10 & 0xFFFFFFFC;
  v16 = *(a1 + 1380);
  do
  {
    v17 = v16;
    v16 *= 2;
  }

  while (v17 < v15);
  munmap(*(a1 + 1384), v14);
  *(a1 + 1380) = 0;
  *(a1 + 1384) = -1;
  v18 = fd_mmap(*(a1 + 1368), v17, 3, 1, 0);
  *(a1 + 1384) = v18;
  if (v18 == -1)
  {
LABEL_33:
    v43 = *__error();
    v44 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      _data_map32_rehash_cold_1();
    }

    v45 = __error();
    result = 0;
    *v45 = v43;
    return result;
  }

  *(a1 + 1380) = v17;
LABEL_14:
  v19 = *(a1 + 220);
  if (v19 >= 2)
  {
    for (i = 1; i < v19; ++i)
    {
      v21 = *(a1 + 1352);
      if (!v21)
      {
        goto LABEL_33;
      }

      v22 = *(v21 + 4 * i);
      if (v22 != 1)
      {
        v48 = 0;
        v49 = 0;
        v50 = 0;
        v23 = *(a1 + 1328);
        if (v23 <= v22)
        {
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
          v68 = 0u;
          v69 = 0u;
          v66 = 0u;
          v67 = 0u;
          memset(buf, 0, sizeof(buf));
          v31 = *__error();
          v32 = _SILogForLogForCategory(0);
          if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
          {
            v33 = *(a1 + 1328);
            v34 = fd_name(*(a1 + 1272), buf, 0x100uLL);
            *__s = 136316418;
            *&__s[4] = "_data_map32_get_data_entry";
            *&__s[12] = 1024;
            *&__s[14] = 446;
            *&__s[18] = 2048;
            *&__s[20] = v22;
            *&__s[28] = 2048;
            *&__s[30] = v33;
            *&__s[38] = 2048;
            *&__s[40] = a1;
            LOWORD(v81) = 2080;
            *(&v81 + 2) = v34;
            v35 = "%s:%d: invalid data offset 0x%lx 0x%lx %p %s";
            v36 = __s;
            v37 = v32;
            v38 = 58;
            goto LABEL_37;
          }

LABEL_32:
          *__error() = v31;
          goto LABEL_33;
        }

        data_entry_restore_32(*(a1 + 1320), v22, v23, &v48, &v50, v11, v12, v13);
        if (v50 == 1)
        {
          v90 = 0;
          v88 = 0u;
          v89 = 0u;
          v86 = 0u;
          v87 = 0u;
          v84 = 0u;
          v85 = 0u;
          v82 = 0u;
          v83 = 0u;
          v81 = 0u;
          v39 = 5;
          v40 = v22;
          memset(__s, 0, sizeof(__s));
          do
          {
            if (v40 >= *(a1 + 1328))
            {
              break;
            }

            v41 = strlen(__s);
            sprintf(&__s[v41], "%d ", *(*(a1 + 1320) + v40++));
            --v39;
          }

          while (v39);
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
          v68 = 0u;
          v69 = 0u;
          v66 = 0u;
          v67 = 0u;
          memset(buf, 0, sizeof(buf));
          v31 = *__error();
          v42 = _SILogForLogForCategory(0);
          if (!os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_32;
          }

          v46 = fd_name(*(a1 + 1272), buf, 0x100uLL);
          v47 = *(a1 + 1328);
          *v51 = 136316674;
          v52 = "_data_map32_get_data_entry";
          v53 = 1024;
          v54 = 442;
          v55 = 2080;
          v56 = v46;
          v57 = 2048;
          v58 = v22;
          v59 = 2048;
          v60 = v47;
          v61 = 2048;
          v62 = v48;
          v63 = 2080;
          v64 = __s;
          v35 = "%s:%d: data_entry_restore_32 failure: %s off: 0x%lx end: 0x%lx sz: 0x%lx sz bytes: %s";
          v36 = v51;
          v37 = v42;
          v38 = 68;
LABEL_37:
          _os_log_error_impl(&dword_26B7AA000, v37, OS_LOG_TYPE_ERROR, v35, v36, v38);
          goto LABEL_32;
        }

        v24 = *(a1 + 224);
        if (v48 < v24)
        {
          goto LABEL_33;
        }

        v25 = data_entry_hash(v48, v49, v24, *(a1 + 1452));
        bucket_entry = _data_map32_get_bucket_entry(a1, v25, i, 0, 0, v26, v27, v28);
        if (!bucket_entry || *bucket_entry)
        {
          goto LABEL_33;
        }

        *bucket_entry = i;
        v19 = *(a1 + 220);
      }
    }
  }

  return 1;
}

void data_map32_destroy(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 1256);
    if (v2 + 1 >= 2)
    {
      munmap(v2, v2[15]);
      *(a1 + 1256) = -1;
      fd_release(*(a1 + 1272));
      *(a1 + 1272) = 0;
    }

    else
    {
      v3 = *(a1 + 1296);
      if (v3)
      {
        if (!*(v3 + 16))
        {
          if (*(a1 + 1450) == 1)
          {
            fd_msync(*(a1 + 1384), 4 * *(a1 + 1392), 4, 1);
            fd_unlink(*(a1 + 1368));
            munmap(*(a1 + 1384), *(a1 + 1380));
            *(a1 + 1384) = -1;
          }

          if (*(a1 + 1449) == 1)
          {
            fd_msync(*(a1 + 1320), *(a1 + 1328), 4, 1);
            munmap(*(a1 + 1320), *(a1 + 1312));
            *(a1 + 1320) = -1;
            fd_truncate(*(a1 + 1304), *(*(a1 + 1296) + 20));
          }

          if (*(a1 + 1451) == 1)
          {
            fd_msync(*(a1 + 1352), 4 * *(a1 + 220), 4, 1);
            munmap(*(a1 + 1352), *(a1 + 1344));
            *(a1 + 1352) = -1;
            fd_truncate(*(a1 + 1336), 4 * *(a1 + 220));
          }
        }

        v4 = *(a1 + 1296);
        if (v4)
        {
          free(v4);
          *(a1 + 1296) = 0;
        }
      }

      fd_release(*(a1 + 1272));
      *(a1 + 1272) = 0;
      v5 = *(a1 + 1320);
      if (v5 != -1)
      {
        munmap(v5, *(a1 + 1312));
        *(a1 + 1320) = -1;
        *(a1 + 1312) = 0;
      }

      fd_release(*(a1 + 1304));
      *(a1 + 1304) = 0;
      v6 = *(a1 + 1352);
      if (v6 != -1)
      {
        munmap(v6, *(a1 + 1344));
        *(a1 + 1352) = -1;
        *(a1 + 1344) = 0;
      }

      fd_release(*(a1 + 1336));
      *(a1 + 1336) = 0;
      v7 = *(a1 + 1384);
      if (v7 != -1)
      {
        munmap(v7, *(a1 + 1380));
        *(a1 + 1384) = -1;
        *(a1 + 1380) = 0;
      }

      fd_release(*(a1 + 1368));
      *(a1 + 1368) = 0;
    }

    v8 = *(a1 + 1280);
    if (v8)
    {
      fd_release(v8);
      *(a1 + 1280) = 0;
    }

    v9 = *(a1 + 1440);
    if (v9)
    {
      v10 = v9[2];
      if (v10)
      {
        CFRelease(v10);
      }

      free(v9);
      *(a1 + 1440) = 0;
    }

    if ((*(a1 + 1453) & 1) == 0)
    {
      db_rwlock_destroy(a1);
    }

    free(a1);
  }
}

uint64_t _data_map32_version(uint64_t result)
{
  if (result)
  {
    return *(*(result + 1296) + 8);
  }

  return result;
}

BOOL _data_map32_version_is_current(_BOOL8 result)
{
  if (result)
  {
    return *(*(result + 1296) + 8) > 0xAu;
  }

  return result;
}

uint64_t _data_map32_version_update(uint64_t result)
{
  v2 = *(result + 1296);
  if (*(v2 + 8) <= 0xAu)
  {
    v3 = result;
    *(v2 + 8) = 12;
    fd_pwrite(*(result + 1272), v2, 0x38uLL, 0);
    v4 = *(v3 + 1320);
    v5 = *(v3 + 1328);

    return fd_msync(v4, v5, 16, 1);
  }

  return result;
}

uint64_t _data_map32_sync_data(uint64_t a1, int a2)
{
  v23 = *MEMORY[0x277D85DE8];
  result = *(a1 + 1456);
  if (!result)
  {
    v4 = *(a1 + 1296);
    if (*(v4 + 16))
    {
      return 0;
    }

    else
    {
      if (*(a1 + 1449) == 1)
      {
        if (a2)
        {
          fd_msync(((*(v4 + 32) + *(a1 + 1320)) & -*MEMORY[0x277D85FA0]), (*(a1 + 1328) - *(v4 + 32)), 16, 1);
        }

        *(a1 + 1449) = 0;
      }

      if (*(a1 + 1451) == 1)
      {
        if (a2)
        {
          v6 = *(*(a1 + 1296) + 40);
          fd_msync(((*(a1 + 1352) + 4 * v6) & -*MEMORY[0x277D85FA0]), 4 * (*(a1 + 220) - v6), 16, 1);
        }

        *(a1 + 1451) = 0;
      }

      if (*(a1 + 1450) == 1)
      {
        if (a2)
        {
          fd_msync(*(a1 + 1384), 4 * *(a1 + 1392), 16, 1);
        }

        *(a1 + 1450) = 0;
      }

      v7 = *(a1 + 1328);
      v8 = *(a1 + 1296);
      *(v8 + 28) = *(a1 + 220);
      v9 = *(a1 + 1392);
      *(v8 + 20) = v7;
      *(v8 + 24) = v9;
      *(v8 + 44) = *(a1 + 1396);
      *(v8 + 52) = *(a1 + 1404);
      *(v8 + 16) = 0;
      fd_pwrite(*(a1 + 1272), v8, 0x38uLL, 0);
      memset(v22, 0, sizeof(v22));
      v10 = *__error();
      v11 = _SILogForLogForCategory(7);
      v12 = 2 * (dword_2804230EC < 4);
      if (os_log_type_enabled(v11, v12))
      {
        v13 = fd_name(*(a1 + 1272), v22, 0x100uLL);
        v14 = "update";
        v15 = *(a1 + 220);
        v16 = 136315650;
        v17 = v13;
        if (a2)
        {
          v14 = "sync";
        }

        v18 = 2080;
        v19 = v14;
        v20 = 1024;
        v21 = v15 - 1;
        _os_log_impl(&dword_26B7AA000, v11, v12, "%s complete %s map with count: %d", &v16, 0x1Cu);
      }

      *__error() = v10;
      return *(a1 + 1456);
    }
  }

  return result;
}

uint64_t _data_map32_sync_header(uint64_t a1, int a2)
{
  v21 = *MEMORY[0x277D85DE8];
  result = *(a1 + 1456);
  if (!result)
  {
    v5 = *(a1 + 1296);
    if (*(v5 + 16) == 1)
    {
      return 0;
    }

    else
    {
      *(v5 + 32) = *(v5 + 20);
      *(v5 + 40) = *(v5 + 28);
      v6 = *(a1 + 1328);
      v7 = *(a1 + 220);
      *(v5 + 24) = *(a1 + 1392);
      *(v5 + 28) = v7;
      *(v5 + 16) = 0;
      *(v5 + 20) = v6;
      fd_pwrite(*(a1 + 1272), v5, 0x38uLL, 0);
      if (a2)
      {
        fd_sync(*(a1 + 1272), 0, 1);
      }

      *(*(a1 + 1296) + 16) = 2;
      memset(v20, 0, sizeof(v20));
      v8 = *__error();
      v9 = _SILogForLogForCategory(7);
      v10 = 2 * (dword_2804230EC < 4);
      if (os_log_type_enabled(v9, v10))
      {
        v11 = fd_name(*(a1 + 1272), v20, 0x100uLL);
        v12 = "update";
        v13 = *(a1 + 220);
        v14 = 136315650;
        v15 = v11;
        if (a2)
        {
          v12 = "sync";
        }

        v16 = 2080;
        v17 = v12;
        v18 = 1024;
        v19 = v13 - 1;
        _os_log_impl(&dword_26B7AA000, v9, v10, "%s complete %s header with count: %d", &v14, 0x1Cu);
      }

      *__error() = v8;
      return *(a1 + 1456);
    }
  }

  return result;
}

uint64_t data_map32_flush(uint64_t a1)
{
  if (_data_map32_rdlock(a1))
  {
    return 0xFFFFFFFFLL;
  }

  if (*(*(a1 + 1296) + 16))
  {
    v2 = 0xFFFFFFFFLL;
  }

  else
  {
    v2 = _data_map32_sync_data(a1, 1);
  }

  _data_map32_unlock(a1);
  return v2;
}

uint64_t data_map32_commit_sync(uint64_t a1)
{
  result = *(a1 + 1456);
  if (!result)
  {
    v3 = *(a1 + 1296);
    if (*(v3 + 16) == 1)
    {
      return 0;
    }

    else
    {
      *(v3 + 16) = 2;
      fd_pwrite(*(a1 + 1272), v3, 0x38uLL, 0);
      fd_sync(*(a1 + 1272), 0, 1);
      return *(a1 + 1456);
    }
  }

  return result;
}

uint64_t data_map32_shadow(uint64_t a1)
{
  result = *(a1 + 1456);
  if (!result)
  {
    v3 = *(a1 + 1296);
    if (*(v3 + 16) == 2)
    {
      sibling_with_suffix_protected = *(a1 + 1280);
      if (!sibling_with_suffix_protected)
      {
        sibling_with_suffix_protected = fd_create_sibling_with_suffix_protected(*(a1 + 1272), ".shadow", 514, 3u);
        *(a1 + 1280) = sibling_with_suffix_protected;
        v3 = *(a1 + 1296);
      }

      fd_pwrite(sibling_with_suffix_protected, v3, 0x38uLL, 0);
      return *(a1 + 1456);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t data_map32_commit_shadow(uint64_t a1)
{
  if (!*(a1 + 1456) && *(*(a1 + 1296) + 16) == 2)
  {
    fd_sync(*(a1 + 1280), 0, 1);
  }

  fd_release(*(a1 + 1280));
  *(a1 + 1280) = 0;
  return *(a1 + 1456);
}

uint64_t data_map32_commit_shadow_complete(uint64_t a1)
{
  result = *(a1 + 1456);
  if (!result)
  {
    v3 = *(a1 + 1296);
    if (*(v3 + 16) == 2)
    {
      *(v3 + 32) = *(v3 + 20);
      *(v3 + 40) = *(v3 + 28);
      *(v3 + 16) = 1;
      fd_pwrite(*(a1 + 1272), v3, 0x38uLL, 0);
      fd_sync(*(a1 + 1272), 0, 1);
      return *(a1 + 1456);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t data_map32_clone_files(uint64_t a1, const char *a2, uint64_t a3)
{
  *a3 = 0u;
  *(a3 + 16) = 0u;
  v13 = 0;
  v6 = *(a1 + 1454);
  asprintf(&v13, "%s%s", a2, ".buckets");
  if (v6)
  {
    v7 = 3;
  }

  else
  {
    v7 = 0;
  }

  sibling_protected = fd_create_sibling_protected(*(a1 + 1368), v13, 514, v7);
  *a3 = sibling_protected;
  if (sibling_protected)
  {
    fd_copyfile(*(a1 + 1368), sibling_protected, 1);
  }

  free(v13);
  asprintf(&v13, "%s%s", a2, ".header");
  v9 = fd_create_sibling_protected(*(a1 + 1272), v13, 514, v7);
  *(a3 + 24) = v9;
  if (v9)
  {
    fd_copyfile(*(a1 + 1272), v9, 1);
  }

  free(v13);
  asprintf(&v13, "%s%s", a2, ".offsets");
  v10 = fd_create_sibling_protected(*(a1 + 1336), v13, 514, v7);
  *(a3 + 8) = v10;
  if (v10)
  {
    fd_copyfile(*(a1 + 1336), v10, 1);
  }

  free(v13);
  asprintf(&v13, "%s%s", a2, ".data");
  v11 = fd_create_sibling_protected(*(a1 + 1304), v13, 514, v7);
  *(a3 + 16) = v11;
  if (v11)
  {
    fd_copyfile(*(a1 + 1304), v11, 1);
  }

  free(v13);
  return 0;
}

uint64_t data_map32_delete_files(uint64_t a1, const char *a2, int a3)
{
  v4 = a1;
  v16 = *MEMORY[0x277D85DE8];
  v5 = a3 << 23 >> 31;
  bzero(__str, 0x400uLL);
  snprintf(__str, 0x400uLL, "%s%s", a2, ".buckets");
  v6 = fd_create_protected(v4, __str, 2, v5 & 3);
  if (v6)
  {
    v7 = v6;
    fd_unlink(v6);
    fd_release(v7);
  }

  snprintf(__str, 0x400uLL, "%s%s", a2, ".header");
  v8 = fd_create_protected(v4, __str, 514, v5 & 3);
  if (v8)
  {
    v9 = v8;
    fd_unlink(v8);
    fd_release(v9);
  }

  snprintf(__str, 0x400uLL, "%s%s", a2, ".offsets");
  v10 = fd_create_protected(v4, __str, 514, v5 & 3);
  if (v10)
  {
    v11 = v10;
    fd_unlink(v10);
    fd_release(v11);
  }

  snprintf(__str, 0x400uLL, "%s%s", a2, ".data");
  v12 = fd_create_protected(v4, __str, 514, v5 & 3);
  if (v12)
  {
    v13 = v12;
    fd_unlink(v12);
    fd_release(v13);
  }

  return 0;
}

uint64_t data_map32_validate(uint64_t a1)
{
  v110 = *MEMORY[0x277D85DE8];
  if (_data_map32_rdlock(a1))
  {
    return 0;
  }

  v6 = *(a1 + 1328);
  v5 = 1;
  if (!v6)
  {
    goto LABEL_68;
  }

  v7 = 0;
  v8 = 0;
  v9 = *(a1 + 224);
  while (1)
  {
    v70 = 0;
    v71 = 0;
    if (*(a1 + 220) <= v7)
    {
      v98 = 0u;
      v99 = 0u;
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
      memset(v87, 0, sizeof(v87));
      v11 = *__error();
      v12 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v31 = *(a1 + 220);
        v32 = fd_name(*(a1 + 1272), v87, 0x100uLL);
        *buf = 136316418;
        *&buf[4] = "_data_map32_get_offset_entry";
        *&buf[12] = 1024;
        *&buf[14] = 422;
        *&buf[18] = 1024;
        *&buf[20] = v7;
        *&buf[24] = 1024;
        *&buf[26] = v31;
        *&buf[30] = 2048;
        *&buf[32] = a1;
        *&buf[40] = 2080;
        *&buf[42] = v32;
        _os_log_error_impl(&dword_26B7AA000, v12, OS_LOG_TYPE_ERROR, "%s:%d: invalid data id %d max %u %p %s", buf, 0x32u);
      }

      v10 = 0;
      *__error() = v11;
      v6 = *(a1 + 1328);
    }

    else
    {
      v10 = (*(a1 + 1352) + 4 * v7);
    }

    v72 = 0;
    if (v6 <= v8)
    {
      v98 = 0u;
      v99 = 0u;
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
      memset(v87, 0, sizeof(v87));
      v54 = *__error();
      v55 = _SILogForLogForCategory(0);
      if (!os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_56;
      }

      v56 = *(a1 + 1328);
      v57 = fd_name(*(a1 + 1272), v87, 0x100uLL);
      *buf = 136316418;
      *&buf[4] = "_data_map32_get_data_entry";
      *&buf[12] = 1024;
      *&buf[14] = 446;
      *&buf[18] = 2048;
      *&buf[20] = v8;
      *&buf[28] = 2048;
      *&buf[30] = v56;
      *&buf[38] = 2048;
      *&buf[40] = a1;
      *&buf[48] = 2080;
      *&buf[50] = v57;
      v58 = "%s:%d: invalid data offset 0x%lx 0x%lx %p %s";
      v59 = buf;
      v60 = v55;
      v61 = 58;
      goto LABEL_71;
    }

    data_entry_restore_32(*(a1 + 1320), v8, v6, &v70, &v72, v2, v3, v4);
    if (v72 == 1)
    {
      v107 = 0u;
      v108 = 0u;
      v105 = 0u;
      v106 = 0u;
      v103 = 0u;
      v104 = 0u;
      v101 = 0u;
      v102 = 0u;
      v62 = 5;
      memset(buf, 0, sizeof(buf));
      v63 = v8;
      v109 = 0;
      do
      {
        if (v63 >= *(a1 + 1328))
        {
          break;
        }

        v64 = strlen(buf);
        sprintf(&buf[v64], "%d ", *(*(a1 + 1320) + v63++));
        --v62;
      }

      while (v62);
      v98 = 0u;
      v99 = 0u;
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
      memset(v87, 0, sizeof(v87));
      v54 = *__error();
      v65 = _SILogForLogForCategory(0);
      if (!os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
      {
LABEL_56:
        *__error() = v54;
        v35 = *__error();
        v66 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
        {
          data_map32_validate_cold_4();
        }

        goto LABEL_66;
      }

      v68 = fd_name(*(a1 + 1272), v87, 0x100uLL);
      v69 = *(a1 + 1328);
      *v73 = 136316674;
      v74 = "_data_map32_get_data_entry";
      v75 = 1024;
      v76 = 442;
      v77 = 2080;
      v78 = v68;
      v79 = 2048;
      v80 = v8;
      v81 = 2048;
      v82 = v69;
      v83 = 2048;
      v84 = v70;
      v85 = 2080;
      v86 = buf;
      v58 = "%s:%d: data_entry_restore_32 failure: %s off: 0x%lx end: 0x%lx sz: 0x%lx sz bytes: %s";
      v59 = v73;
      v60 = v65;
      v61 = 68;
LABEL_71:
      _os_log_error_impl(&dword_26B7AA000, v60, OS_LOG_TYPE_ERROR, v58, v59, v61);
      goto LABEL_56;
    }

    if (!v10 || *v10 != v8)
    {
      break;
    }

    if (!v7)
    {
      v14 = v70;
      goto LABEL_21;
    }

    v14 = v70;
    v13 = v71;
    v15 = data_entry_hash(v70, v71, v9, *(a1 + 1452));
    bucket_entry = _data_map32_get_bucket_entry(a1, v15, v7, 0, 0, v16, v17, v18);
    v20 = bucket_entry;
    if (!bucket_entry || v7 != *bucket_entry)
    {
      v42 = *__error();
      v43 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        data_map32_validate_cold_2();
      }

      *__error() = v42;
      v35 = *__error();
      v44 = _SILogForLogForCategory(0);
      v45 = os_log_type_enabled(v44, OS_LOG_TYPE_ERROR);
      if (v20)
      {
        if (v45)
        {
          v46 = *v20;
          *v87 = 136316418;
          *&v87[4] = "_data_map32_validate";
          *&v87[12] = 1024;
          *&v87[14] = 789;
          *&v87[18] = 1024;
          *&v87[20] = v7;
          *&v87[24] = 1024;
          *&v87[26] = v46;
          *&v87[30] = 2048;
          *&v87[32] = v8;
          *&v87[40] = 2080;
          *&v87[42] = v13;
          v47 = "%s:%d: sid: %d hid: %d offset: %ld %s";
          v48 = v44;
          v49 = 50;
          goto LABEL_73;
        }
      }

      else if (v45)
      {
        *v87 = 136316162;
        *&v87[4] = "_data_map32_validate";
        *&v87[12] = 1024;
        *&v87[14] = 791;
        *&v87[18] = 1024;
        *&v87[20] = v7;
        *&v87[24] = 2048;
        *&v87[26] = v8;
        *&v87[34] = 2080;
        *&v87[36] = v13;
        v47 = "%s:%d: hash entry not found for %d offset 0x%lx %s";
        v48 = v44;
        v49 = 44;
LABEL_73:
        _os_log_error_impl(&dword_26B7AA000, v48, OS_LOG_TYPE_ERROR, v47, v87, v49);
      }

      v5 = 0;
      goto LABEL_67;
    }

    v21 = dm_hash(a1, v13, v14);
    v25 = _data_map32_get_bucket_entry(a1, v21, 0, v13, v14, v22, v23, v24);
    v26 = v25;
    if (!v25 || v7 != *v25)
    {
      v50 = *__error();
      v51 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
      {
        data_map32_validate_cold_1();
      }

      *__error() = v50;
      v35 = *__error();
      v36 = _SILogForLogForCategory(0);
      v52 = os_log_type_enabled(v36, OS_LOG_TYPE_ERROR);
      if (v26)
      {
        if (!v52)
        {
          goto LABEL_66;
        }

        v53 = *v26;
        *v87 = 136316418;
        *&v87[4] = "_data_map32_validate";
        *&v87[12] = 1024;
        *&v87[14] = 803;
        *&v87[18] = 1024;
        *&v87[20] = v7;
        *&v87[24] = 1024;
        *&v87[26] = v53;
        *&v87[30] = 2048;
        *&v87[32] = v8;
        *&v87[40] = 2080;
        *&v87[42] = v13;
        v39 = "%s:%d: sid: %d hid: %d offset: %ld %s";
        v40 = v36;
        v41 = 50;
LABEL_65:
        _os_log_error_impl(&dword_26B7AA000, v40, OS_LOG_TYPE_ERROR, v39, v87, v41);
        goto LABEL_66;
      }

      if (!v52)
      {
        goto LABEL_66;
      }

      *v87 = 136316162;
      *&v87[4] = "_data_map32_validate";
      *&v87[12] = 1024;
      *&v87[14] = 805;
      *&v87[18] = 1024;
      *&v87[20] = v7;
      *&v87[24] = 2048;
      *&v87[26] = v8;
      *&v87[34] = 2080;
      *&v87[36] = v13;
      v39 = "%s:%d: hash entry not found for %d offset 0x%lx %s";
LABEL_64:
      v40 = v36;
      v41 = 44;
      goto LABEL_65;
    }

LABEL_21:
    if (v14 < 0x80)
    {
      v27 = 1;
    }

    else
    {
      v27 = 2;
    }

    if (v14 >> 14)
    {
      v28 = 3;
    }

    else
    {
      v28 = v27;
    }

    if (v14 >> 21)
    {
      v29 = 4;
    }

    else
    {
      v29 = v28;
    }

    if (v14 >> 28)
    {
      v30 = 5;
    }

    else
    {
      v30 = v29;
    }

    v8 = v14 + v8 + v30;
    ++v7;
    v6 = *(a1 + 1328);
    if (v8 >= v6)
    {
      v5 = 1;
      goto LABEL_68;
    }
  }

  v33 = *__error();
  v34 = _SILogForLogForCategory(0);
  if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
  {
    data_map32_validate_cold_3();
  }

  *__error() = v33;
  v35 = *__error();
  v36 = _SILogForLogForCategory(0);
  v37 = os_log_type_enabled(v36, OS_LOG_TYPE_ERROR);
  if (!v10)
  {
    if (!v37)
    {
      goto LABEL_66;
    }

    *v87 = 136316162;
    *&v87[4] = "_data_map32_validate";
    *&v87[12] = 1024;
    *&v87[14] = 777;
    *&v87[18] = 1024;
    *&v87[20] = v7;
    *&v87[24] = 2048;
    *&v87[26] = v8;
    *&v87[34] = 2080;
    *&v87[36] = v71;
    v39 = "%s:%d: offset not found for %d offset 0x%lx %s";
    goto LABEL_64;
  }

  if (v37)
  {
    v38 = *v10;
    *v87 = 136316418;
    *&v87[4] = "_data_map32_validate";
    *&v87[12] = 1024;
    *&v87[14] = 775;
    *&v87[18] = 1024;
    *&v87[20] = v7;
    *&v87[24] = 2048;
    *&v87[26] = v8;
    *&v87[34] = 2048;
    *&v87[36] = v38;
    *&v87[44] = 2080;
    *&v87[46] = v71;
    v39 = "%s:%d: sid: %d so: %ld oo:%ld %s";
    v40 = v36;
    v41 = 54;
    goto LABEL_65;
  }

LABEL_66:
  v5 = 1;
LABEL_67:
  *__error() = v35;
LABEL_68:
  _data_map32_unlock(a1);
  return v5;
}

uint64_t data_map32_ids_get(uint64_t a1, unsigned __int16 *a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a5;
  v10 = dm_hash(a1, a2, a3);
  if (_data_map32_rdlock(a1))
  {
    return 0;
  }

  locked_with_hash = data_map32_ids_get_locked_with_hash(a4, a1, v10, v5, a2, a3, v11, v12);
  _data_map32_unlock(a1);
  return locked_with_hash;
}

uint64_t dm_hash(uint64_t a1, unsigned __int16 *a2, unint64_t a3)
{
  if (*(a1 + 1452) == 1)
  {
    return LegacyHash(a2, a3);
  }

  else
  {
    return commonHash(a3, a2);
  }
}

uint64_t data_map32_ids_get_locked_with_hash(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, const void *a5, size_t a6, uint64_t a7, uint64_t a8)
{
  v43 = 0;
  v87 = *MEMORY[0x277D85DE8];
  v9 = *(a2 + 1392);
  v10 = a3 % v9;
  v39 = *(a2 + 224);
  v42 = v39 + a6;
  v11 = a3 % v9;
  do
  {
    v12 = *(a2 + 1384);
    v13 = *(v12 + 4 * v11);
    if (!v13)
    {
      break;
    }

    v14 = v11;
    if (*(a2 + 220) <= v13)
    {
      v75 = 0u;
      v76 = 0u;
      v73 = 0u;
      v74 = 0u;
      v71 = 0u;
      v72 = 0u;
      v69 = 0u;
      v70 = 0u;
      v67 = 0u;
      v68 = 0u;
      v65 = 0u;
      v66 = 0u;
      v63 = 0u;
      v64 = 0u;
      v61 = 0u;
      v62 = 0u;
      v24 = *__error();
      v25 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v32 = *(a2 + 220);
        v33 = fd_name(*(a2 + 1272), &v61, 0x100uLL);
        *__s = 136316418;
        *&__s[4] = "_data_map32_get_offset_entry";
        *&__s[12] = 1024;
        *&__s[14] = 422;
        *&__s[18] = 1024;
        *&__s[20] = v13;
        *&__s[24] = 1024;
        *&__s[26] = v32;
        *&__s[30] = 2048;
        *&__s[32] = a2;
        *&__s[40] = 2080;
        *&__s[42] = v33;
        v29 = v25;
        v30 = "%s:%d: invalid data id %d max %u %p %s";
        v31 = 50;
LABEL_29:
        _os_log_error_impl(&dword_26B7AA000, v29, OS_LOG_TYPE_ERROR, v30, __s, v31);
      }

LABEL_20:
      *__error() = v24;
      goto LABEL_21;
    }

    v15 = *(*(a2 + 1352) + 4 * v13);
    if (v15 != 1)
    {
      v44 = 0;
      v45 = 0;
      v46 = 0;
      v16 = *(a2 + 1328);
      if (v16 > v15)
      {
        data_entry_restore_32(*(a2 + 1320), v15, v16, &v44, &v46, a6, a7, a8);
        v17 = v46;
        if (v46 == 1)
        {
          v86 = 0;
          v84 = 0u;
          v85 = 0u;
          v82 = 0u;
          v83 = 0u;
          v80 = 0u;
          v81 = 0u;
          v78 = 0u;
          v79 = 0u;
          v18 = 5;
          v19 = v15;
          memset(__s, 0, sizeof(__s));
          do
          {
            if (v19 >= *(a2 + 1328))
            {
              break;
            }

            v20 = strlen(__s);
            sprintf(&__s[v20], "%d ", *(*(a2 + 1320) + v19++));
            --v18;
          }

          while (v18);
          v75 = 0u;
          v76 = 0u;
          v73 = 0u;
          v74 = 0u;
          v71 = 0u;
          v72 = 0u;
          v69 = 0u;
          v70 = 0u;
          v67 = 0u;
          v68 = 0u;
          v65 = 0u;
          v66 = 0u;
          v63 = 0u;
          v64 = 0u;
          v61 = 0u;
          v62 = 0u;
          v21 = *__error();
          v22 = _SILogForLogForCategory(0);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            v34 = fd_name(*(a2 + 1272), &v61, 0x100uLL);
            v35 = *(a2 + 1328);
            *buf = 136316674;
            v48 = "_data_map32_get_data_entry";
            v49 = 1024;
            v50 = 442;
            v51 = 2080;
            v52 = v34;
            v53 = 2048;
            v54 = v15;
            v55 = 2048;
            v56 = v35;
            v57 = 2048;
            v58 = v44;
            v59 = 2080;
            v60 = __s;
            _os_log_error_impl(&dword_26B7AA000, v22, OS_LOG_TYPE_ERROR, "%s:%d: data_entry_restore_32 failure: %s off: 0x%lx end: 0x%lx sz: 0x%lx sz bytes: %s", buf, 0x44u);
          }

          *__error() = v21;
          v17 = 1;
        }

        if ((v17 & 1) == 0 && v42 == v44 && !memcmp(a5, (v45 + v39), a6))
        {
          v23 = v43;
          if (v43 < a4)
          {
            *(a1 + 4 * v43) = *(v12 + 4 * v14);
            v23 = v43;
          }

          v43 = v23 + 1;
        }

        goto LABEL_21;
      }

      v75 = 0u;
      v76 = 0u;
      v73 = 0u;
      v74 = 0u;
      v71 = 0u;
      v72 = 0u;
      v69 = 0u;
      v70 = 0u;
      v67 = 0u;
      v68 = 0u;
      v65 = 0u;
      v66 = 0u;
      v63 = 0u;
      v64 = 0u;
      v61 = 0u;
      v62 = 0u;
      v24 = *__error();
      v26 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v27 = *(a2 + 1328);
        v28 = fd_name(*(a2 + 1272), &v61, 0x100uLL);
        *__s = 136316418;
        *&__s[4] = "_data_map32_get_data_entry";
        *&__s[12] = 1024;
        *&__s[14] = 446;
        *&__s[18] = 2048;
        *&__s[20] = v15;
        *&__s[28] = 2048;
        *&__s[30] = v27;
        *&__s[38] = 2048;
        *&__s[40] = a2;
        *&__s[48] = 2080;
        *&__s[50] = v28;
        v29 = v26;
        v30 = "%s:%d: invalid data offset 0x%lx 0x%lx %p %s";
        v31 = 58;
        goto LABEL_29;
      }

      goto LABEL_20;
    }

LABEL_21:
    if (v14 + 1 == v9)
    {
      v11 = 0;
    }

    else
    {
      v11 = v14 + 1;
    }
  }

  while (v11 != v10);
  return v43;
}

uint64_t data_map32_ids_get_locked(uint64_t a1, unsigned __int16 *a2, size_t a3, uint64_t a4, unsigned int a5)
{
  v10 = dm_hash(a1, a2, a3);

  return data_map32_ids_get_locked_with_hash(a4, a1, v10, a5, a2, a3, v11, v12);
}

uint64_t data_map32_id_get_with_key_noextra(uint64_t a1, unsigned __int16 *a2, unint64_t a3)
{
  v85 = *MEMORY[0x277D85DE8];
  v6 = dm_hash(a1, a2, a3);
  if (!_data_map32_rdlock(a1))
  {
    v39 = a2;
    __n = a3;
    v12 = *(a1 + 1392);
    v13 = v6 % v12;
    v38 = *(a1 + 224);
    v41 = v38 + a3;
    v14 = v13;
    while (1)
    {
      v15 = *(a1 + 1384);
      v16 = *(v15 + 4 * v14);
      if (!v16)
      {
        goto LABEL_2;
      }

      v17 = v14;
      if (*(a1 + 220) <= v16)
      {
        break;
      }

      v18 = *(*(a1 + 1352) + 4 * v16);
      if (v18 != 1)
      {
        v42 = 0;
        v43 = 0;
        v44 = 0;
        v19 = *(a1 + 1328);
        if (v19 <= v18)
        {
          v73 = 0u;
          v74 = 0u;
          v71 = 0u;
          v72 = 0u;
          v69 = 0u;
          v70 = 0u;
          v67 = 0u;
          v68 = 0u;
          v65 = 0u;
          v66 = 0u;
          v63 = 0u;
          v64 = 0u;
          v61 = 0u;
          v62 = 0u;
          v59 = 0u;
          v60 = 0u;
          v26 = *__error();
          v28 = _SILogForLogForCategory(0);
          if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            v29 = *(a1 + 1328);
            v30 = fd_name(*(a1 + 1272), &v59, 0x100uLL);
            *__s = 136316418;
            *&__s[4] = "_data_map32_get_data_entry";
            *&__s[12] = 1024;
            *&__s[14] = 446;
            *&__s[18] = 2048;
            *&__s[20] = v18;
            *&__s[28] = 2048;
            *&__s[30] = v29;
            *&__s[38] = 2048;
            *&__s[40] = a1;
            *&__s[48] = 2080;
            *&__s[50] = v30;
            v31 = v28;
            v32 = "%s:%d: invalid data offset 0x%lx 0x%lx %p %s";
            v33 = 58;
            goto LABEL_32;
          }

          goto LABEL_23;
        }

        data_entry_restore_32(*(a1 + 1320), v18, v19, &v42, &v44, v7, v8, v9);
        v20 = v44;
        if (v44 == 1)
        {
          v84 = 0;
          v82 = 0u;
          v83 = 0u;
          v80 = 0u;
          v81 = 0u;
          v78 = 0u;
          v79 = 0u;
          v76 = 0u;
          v77 = 0u;
          v21 = 5;
          v22 = v18;
          memset(__s, 0, sizeof(__s));
          do
          {
            if (v22 >= *(a1 + 1328))
            {
              break;
            }

            v23 = strlen(__s);
            sprintf(&__s[v23], "%d ", *(*(a1 + 1320) + v22++));
            --v21;
          }

          while (v21);
          v73 = 0u;
          v74 = 0u;
          v71 = 0u;
          v72 = 0u;
          v69 = 0u;
          v70 = 0u;
          v67 = 0u;
          v68 = 0u;
          v65 = 0u;
          v66 = 0u;
          v63 = 0u;
          v64 = 0u;
          v61 = 0u;
          v62 = 0u;
          v59 = 0u;
          v60 = 0u;
          v24 = *__error();
          v25 = _SILogForLogForCategory(0);
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            v36 = fd_name(*(a1 + 1272), &v59, 0x100uLL);
            v37 = *(a1 + 1328);
            *buf = 136316674;
            v46 = "_data_map32_get_data_entry";
            v47 = 1024;
            v48 = 442;
            v49 = 2080;
            v50 = v36;
            v51 = 2048;
            v52 = v18;
            v53 = 2048;
            v54 = v37;
            v55 = 2048;
            v56 = v42;
            v57 = 2080;
            v58 = __s;
            _os_log_error_impl(&dword_26B7AA000, v25, OS_LOG_TYPE_ERROR, "%s:%d: data_entry_restore_32 failure: %s off: 0x%lx end: 0x%lx sz: 0x%lx sz bytes: %s", buf, 0x44u);
          }

          *__error() = v24;
          v20 = 1;
        }

        if ((v20 & 1) == 0 && v41 == v42 && !memcmp(v39, (v43 + v38), __n))
        {
          v10 = *(v15 + 4 * v17);
          goto LABEL_3;
        }
      }

LABEL_24:
      if (v17 + 1 == v12)
      {
        v14 = 0;
      }

      else
      {
        v14 = v17 + 1;
      }

      if (v14 == v13)
      {
        goto LABEL_2;
      }
    }

    v73 = 0u;
    v74 = 0u;
    v71 = 0u;
    v72 = 0u;
    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v26 = *__error();
    v27 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v34 = *(a1 + 220);
      v35 = fd_name(*(a1 + 1272), &v59, 0x100uLL);
      *__s = 136316418;
      *&__s[4] = "_data_map32_get_offset_entry";
      *&__s[12] = 1024;
      *&__s[14] = 422;
      *&__s[18] = 1024;
      *&__s[20] = v16;
      *&__s[24] = 1024;
      *&__s[26] = v34;
      *&__s[30] = 2048;
      *&__s[32] = a1;
      *&__s[40] = 2080;
      *&__s[42] = v35;
      v31 = v27;
      v32 = "%s:%d: invalid data id %d max %u %p %s";
      v33 = 50;
LABEL_32:
      _os_log_error_impl(&dword_26B7AA000, v31, OS_LOG_TYPE_ERROR, v32, __s, v33);
    }

LABEL_23:
    *__error() = v26;
    goto LABEL_24;
  }

LABEL_2:
  v10 = 0;
LABEL_3:
  if (*(a1 + 1440))
  {
    data_map32_id_get_with_key_noextra_cold_1(a1, a1 + 1440, v10);
  }

  _data_map32_unlock(a1);
  return v10;
}

void _data_map32_set_seen_id(uint64_t result, uint64_t a2)
{
  if (*(result + 1440))
  {
    _data_map32_set_seen_id_cold_1(result, result + 1440, a2);
  }
}

uint64_t data_map32_id_get_with_key(uint64_t a1, unsigned __int16 *a2, unint64_t a3, const void *a4)
{
  v96 = *MEMORY[0x277D85DE8];
  v8 = dm_hash(a1, a2, a3);
  if (!_data_map32_rdlock(a1))
  {
    __s1 = a2;
    v50 = a3;
    v14 = *(a1 + 1392);
    v15 = v8 % v14;
    __n = *(a1 + 224);
    v52 = __n + a3;
    v16 = v15;
    while (1)
    {
      v17 = *(a1 + 1384);
      v18 = *(v17 + 4 * v16);
      if (!v18)
      {
        goto LABEL_2;
      }

      v19 = v16;
      if (*(a1 + 1440))
      {
        os_unfair_lock_lock((a1 + 1436));
        v48 = *(a1 + 1440);
        if (v48)
        {
          bit_vector_set(v48, v18, v42, v43, v44, v45, v46, v47);
        }

        os_unfair_lock_unlock((a1 + 1436));
        v18 = *(v17 + 4 * v19);
      }

      if (*(a1 + 220) <= v18)
      {
        break;
      }

      v20 = *(a1 + 1352);
      if (v20)
      {
        v21 = *(v20 + 4 * v18);
        if (v21 != 1)
        {
          v53 = 0;
          v54 = 0;
          v55 = 0;
          v22 = *(a1 + 1328);
          if (v22 <= v21)
          {
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
            v30 = *__error();
            v32 = _SILogForLogForCategory(0);
            if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
            {
              v33 = *(a1 + 1328);
              v34 = fd_name(*(a1 + 1272), &v70, 0x100uLL);
              *__s = 136316418;
              *&__s[4] = "_data_map32_get_data_entry";
              *&__s[12] = 1024;
              *&__s[14] = 446;
              *&__s[18] = 2048;
              *&__s[20] = v21;
              *&__s[28] = 2048;
              *&__s[30] = v33;
              *&__s[38] = 2048;
              *&__s[40] = a1;
              *&__s[48] = 2080;
              *&__s[50] = v34;
              v35 = v32;
              v36 = "%s:%d: invalid data offset 0x%lx 0x%lx %p %s";
              v37 = 58;
              goto LABEL_33;
            }

            goto LABEL_24;
          }

          data_entry_restore_32(*(a1 + 1320), v21, v22, &v53, &v55, v9, v10, v11);
          v23 = v55;
          if (v55 == 1)
          {
            v95 = 0;
            v93 = 0u;
            v94 = 0u;
            v91 = 0u;
            v92 = 0u;
            v89 = 0u;
            v90 = 0u;
            v87 = 0u;
            v88 = 0u;
            v24 = 5;
            v25 = v21;
            memset(__s, 0, sizeof(__s));
            do
            {
              if (v25 >= *(a1 + 1328))
              {
                break;
              }

              v26 = strlen(__s);
              sprintf(&__s[v26], "%d ", *(*(a1 + 1320) + v25++));
              --v24;
            }

            while (v24);
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
            v27 = *__error();
            v28 = _SILogForLogForCategory(0);
            if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
            {
              v40 = fd_name(*(a1 + 1272), &v70, 0x100uLL);
              v41 = *(a1 + 1328);
              *buf = 136316674;
              v57 = "_data_map32_get_data_entry";
              v58 = 1024;
              v59 = 442;
              v60 = 2080;
              v61 = v40;
              v62 = 2048;
              v63 = v21;
              v64 = 2048;
              v65 = v41;
              v66 = 2048;
              v67 = v53;
              v68 = 2080;
              v69 = __s;
              _os_log_error_impl(&dword_26B7AA000, v28, OS_LOG_TYPE_ERROR, "%s:%d: data_entry_restore_32 failure: %s off: 0x%lx end: 0x%lx sz: 0x%lx sz bytes: %s", buf, 0x44u);
            }

            *__error() = v27;
            v23 = 1;
          }

          if ((v23 & 1) == 0 && v52 == v53)
          {
            v29 = v54;
            if (!memcmp(__s1, &v54[__n], v50) && !memcmp(v29, a4, __n))
            {
              v12 = *(v17 + 4 * v19);
              goto LABEL_3;
            }
          }
        }
      }

LABEL_25:
      if (v19 + 1 == v14)
      {
        v16 = 0;
      }

      else
      {
        v16 = v19 + 1;
      }

      if (v16 == v15)
      {
        goto LABEL_2;
      }
    }

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
    v30 = *__error();
    v31 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v38 = *(a1 + 220);
      v39 = fd_name(*(a1 + 1272), &v70, 0x100uLL);
      *__s = 136316418;
      *&__s[4] = "_data_map32_get_offset_entry";
      *&__s[12] = 1024;
      *&__s[14] = 422;
      *&__s[18] = 1024;
      *&__s[20] = v18;
      *&__s[24] = 1024;
      *&__s[26] = v38;
      *&__s[30] = 2048;
      *&__s[32] = a1;
      *&__s[40] = 2080;
      *&__s[42] = v39;
      v35 = v31;
      v36 = "%s:%d: invalid data id %d max %u %p %s";
      v37 = 50;
LABEL_33:
      _os_log_error_impl(&dword_26B7AA000, v35, OS_LOG_TYPE_ERROR, v36, __s, v37);
    }

LABEL_24:
    *__error() = v30;
    goto LABEL_25;
  }

LABEL_2:
  v12 = 0;
LABEL_3:
  _data_map32_unlock(a1);
  return v12;
}

uint64_t data_map32_get_extra_with_key(uint64_t a1, unsigned __int16 *a2, size_t a3, _BYTE *a4)
{
  v93 = *MEMORY[0x277D85DE8];
  *a4 = 0;
  v51 = 0;
  v7 = dm_hash(a1, a2, a3);
  if (!_data_map32_rdlock(a1))
  {
    v12 = *(a1 + 1392);
    v13 = v7 % v12;
    v47 = *(a1 + 224);
    v14 = v13;
    while (1)
    {
      v15 = *(a1 + 1384);
      v16 = *(v15 + 4 * v14);
      if (!v16)
      {
        goto LABEL_2;
      }

      v17 = v14;
      if (*(a1 + 1440))
      {
        os_unfair_lock_lock((a1 + 1436));
        v45 = *(a1 + 1440);
        if (v45)
        {
          bit_vector_set(v45, v16, v39, v40, v41, v42, v43, v44);
        }

        os_unfair_lock_unlock((a1 + 1436));
        v16 = *(v15 + 4 * v17);
      }

      if (*(a1 + 220) <= v16)
      {
        break;
      }

      v18 = *(a1 + 1352);
      if (v18)
      {
        v19 = *(v18 + 4 * v16);
        if (v19 != 1)
        {
          v49 = 0;
          v50 = 0;
          v52 = 0;
          v20 = *(a1 + 1328);
          if (v20 <= v19)
          {
            v81 = 0u;
            v82 = 0u;
            v79 = 0u;
            v80 = 0u;
            v77 = 0u;
            v78 = 0u;
            v75 = 0u;
            v76 = 0u;
            v73 = 0u;
            v74 = 0u;
            v71 = 0u;
            v72 = 0u;
            v69 = 0u;
            v70 = 0u;
            v67 = 0u;
            v68 = 0u;
            v27 = *__error();
            v29 = _SILogForLogForCategory(0);
            if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
            {
              v30 = *(a1 + 1328);
              v31 = fd_name(*(a1 + 1272), &v67, 0x100uLL);
              *__s = 136316418;
              *&__s[4] = "_data_map32_get_data_entry";
              *&__s[12] = 1024;
              *&__s[14] = 446;
              *&__s[18] = 2048;
              *&__s[20] = v19;
              *&__s[28] = 2048;
              *&__s[30] = v30;
              *&__s[38] = 2048;
              *&__s[40] = a1;
              *&__s[48] = 2080;
              *&__s[50] = v31;
              v32 = v29;
              v33 = "%s:%d: invalid data offset 0x%lx 0x%lx %p %s";
              v34 = 58;
              goto LABEL_31;
            }

            goto LABEL_22;
          }

          data_entry_restore_32(*(a1 + 1320), v19, v20, &v49, &v52, v8, v9, v10);
          v21 = v52;
          if (v52 == 1)
          {
            v92 = 0;
            v90 = 0u;
            v91 = 0u;
            v88 = 0u;
            v89 = 0u;
            v86 = 0u;
            v87 = 0u;
            v84 = 0u;
            v85 = 0u;
            v22 = 5;
            v23 = v19;
            memset(__s, 0, sizeof(__s));
            do
            {
              if (v23 >= *(a1 + 1328))
              {
                break;
              }

              v24 = strlen(__s);
              sprintf(&__s[v24], "%d ", *(*(a1 + 1320) + v23++));
              --v22;
            }

            while (v22);
            v81 = 0u;
            v82 = 0u;
            v79 = 0u;
            v80 = 0u;
            v77 = 0u;
            v78 = 0u;
            v75 = 0u;
            v76 = 0u;
            v73 = 0u;
            v74 = 0u;
            v71 = 0u;
            v72 = 0u;
            v69 = 0u;
            v70 = 0u;
            v67 = 0u;
            v68 = 0u;
            v25 = *__error();
            v26 = _SILogForLogForCategory(0);
            if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
            {
              v37 = fd_name(*(a1 + 1272), &v67, 0x100uLL);
              v38 = *(a1 + 1328);
              *buf = 136316674;
              v54 = "_data_map32_get_data_entry";
              v55 = 1024;
              v56 = 442;
              v57 = 2080;
              v58 = v37;
              v59 = 2048;
              v60 = v19;
              v61 = 2048;
              v62 = v38;
              v63 = 2048;
              v64 = v49;
              v65 = 2080;
              v66 = __s;
              _os_log_error_impl(&dword_26B7AA000, v26, OS_LOG_TYPE_ERROR, "%s:%d: data_entry_restore_32 failure: %s off: 0x%lx end: 0x%lx sz: 0x%lx sz bytes: %s", buf, 0x44u);
            }

            *__error() = v25;
            v21 = 1;
          }

          if ((v21 & 1) == 0 && v47 + a3 == v49 && !memcmp(a2, (v50 + v47), a3))
          {
            v46 = *(a1 + 224);
            __memcpy_chk();
            HIDWORD(v51) = v46;
            *a4 = 1;
            goto LABEL_2;
          }
        }
      }

LABEL_23:
      if (v17 + 1 == v12)
      {
        v14 = 0;
      }

      else
      {
        v14 = v17 + 1;
      }

      if (v14 == v13)
      {
        goto LABEL_2;
      }
    }

    v81 = 0u;
    v82 = 0u;
    v79 = 0u;
    v80 = 0u;
    v77 = 0u;
    v78 = 0u;
    v75 = 0u;
    v76 = 0u;
    v73 = 0u;
    v74 = 0u;
    v71 = 0u;
    v72 = 0u;
    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    v27 = *__error();
    v28 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v35 = *(a1 + 220);
      v36 = fd_name(*(a1 + 1272), &v67, 0x100uLL);
      *__s = 136316418;
      *&__s[4] = "_data_map32_get_offset_entry";
      *&__s[12] = 1024;
      *&__s[14] = 422;
      *&__s[18] = 1024;
      *&__s[20] = v16;
      *&__s[24] = 1024;
      *&__s[26] = v35;
      *&__s[30] = 2048;
      *&__s[32] = a1;
      *&__s[40] = 2080;
      *&__s[42] = v36;
      v32 = v28;
      v33 = "%s:%d: invalid data id %d max %u %p %s";
      v34 = 50;
LABEL_31:
      _os_log_error_impl(&dword_26B7AA000, v32, OS_LOG_TYPE_ERROR, v33, __s, v34);
    }

LABEL_22:
    *__error() = v27;
    goto LABEL_23;
  }

LABEL_2:
  _data_map32_unlock(a1);
  return v51;
}

uint64_t data_map32_get_data_locked(uint64_t a1, unsigned int a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v83 = *MEMORY[0x277D85DE8];
  if (*(a1 + 220) <= a2)
  {
    v71 = 0u;
    v72 = 0u;
    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v17 = *__error();
    v25 = _SILogForLogForCategory(0);
    if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
LABEL_14:
      v29 = __error();
      result = 0;
      *v29 = v17;
      return result;
    }

    v26 = *(a1 + 220);
    v27 = fd_name(*(a1 + 1272), &v57, 0x100uLL);
    *__s = 136316418;
    *&__s[4] = "_data_map32_get_offset_entry";
    *&__s[12] = 1024;
    *&__s[14] = 422;
    *&__s[18] = 1024;
    *&__s[20] = a2;
    *&__s[24] = 1024;
    *&__s[26] = v26;
    *&__s[30] = 2048;
    *&__s[32] = a1;
    *&__s[40] = 2080;
    *&__s[42] = v27;
    v21 = "%s:%d: invalid data id %d max %u %p %s";
    v22 = __s;
    v23 = v25;
    v24 = 50;
LABEL_20:
    _os_log_error_impl(&dword_26B7AA000, v23, OS_LOG_TYPE_ERROR, v21, v22, v24);
    goto LABEL_14;
  }

  v10 = *(a1 + 1352);
  if (!v10)
  {
    return 0;
  }

  v11 = *(v10 + 4 * a2);
  if (v11 == 1)
  {
    return 0;
  }

  v40 = 0;
  v41 = 0;
  v42 = 0;
  v13 = *(a1 + 1328);
  if (v13 <= v11)
  {
    v71 = 0u;
    v72 = 0u;
    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v17 = *__error();
    v28 = _SILogForLogForCategory(0);
    if (!os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    v31 = *(a1 + 1328);
    v32 = fd_name(*(a1 + 1272), &v57, 0x100uLL);
    *__s = 136316418;
    *&__s[4] = "_data_map32_get_data_entry";
    *&__s[12] = 1024;
    *&__s[14] = 446;
    *&__s[18] = 2048;
    *&__s[20] = v11;
    *&__s[28] = 2048;
    *&__s[30] = v31;
    *&__s[38] = 2048;
    *&__s[40] = a1;
    *&__s[48] = 2080;
    *&__s[50] = v32;
    v21 = "%s:%d: invalid data offset 0x%lx 0x%lx %p %s";
    v22 = __s;
    v23 = v28;
    v24 = 58;
    goto LABEL_20;
  }

  data_entry_restore_32(*(a1 + 1320), v11, v13, &v40, &v42, a6, a7, a8);
  if (v42 == 1)
  {
    v80 = 0u;
    v81 = 0u;
    v78 = 0u;
    v79 = 0u;
    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    v75 = 0u;
    v14 = 5;
    memset(__s, 0, sizeof(__s));
    v15 = v11;
    v82 = 0;
    do
    {
      if (v15 >= *(a1 + 1328))
      {
        break;
      }

      v16 = strlen(__s);
      sprintf(&__s[v16], "%d ", *(*(a1 + 1320) + v15++));
      --v14;
    }

    while (v14);
    v71 = 0u;
    v72 = 0u;
    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v17 = *__error();
    v18 = _SILogForLogForCategory(0);
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    v19 = fd_name(*(a1 + 1272), &v57, 0x100uLL);
    v20 = *(a1 + 1328);
    v43 = 136316674;
    v44 = "_data_map32_get_data_entry";
    v45 = 1024;
    v46 = 442;
    v47 = 2080;
    v48 = v19;
    v49 = 2048;
    v50 = v11;
    v51 = 2048;
    v52 = v20;
    v53 = 2048;
    v54 = v40;
    v55 = 2080;
    v56 = __s;
    v21 = "%s:%d: data_entry_restore_32 failure: %s off: 0x%lx end: 0x%lx sz: 0x%lx sz bytes: %s";
    v22 = &v43;
    v23 = v18;
    v24 = 68;
    goto LABEL_20;
  }

  if (a3)
  {
    *a3 = (v40 - *(a1 + 224));
  }

  if (*(a1 + 1440))
  {
    os_unfair_lock_lock((a1 + 1436));
    v39 = *(a1 + 1440);
    if (v39)
    {
      bit_vector_set(v39, a2, v33, v34, v35, v36, v37, v38);
    }

    os_unfair_lock_unlock((a1 + 1436));
  }

  return v41 + *(a1 + 224);
}

uint64_t data_map32_get_data(uint64_t a1, unsigned int a2, void *a3)
{
  v75 = *MEMORY[0x277D85DE8];
  if (_data_map32_rdlock(a1))
  {
    goto LABEL_18;
  }

  if (*(a1 + 220) <= a2)
  {
    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v17 = *__error();
    v18 = _SILogForLogForCategory(0);
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
LABEL_16:
      *__error() = v17;
LABEL_17:
      _data_map32_unlock(a1);
      goto LABEL_18;
    }

    v19 = *(a1 + 220);
    v20 = fd_name(*(a1 + 1272), &v49, 0x100uLL);
    *__s = 136316418;
    *&__s[4] = "_data_map32_get_offset_entry";
    *&__s[12] = 1024;
    *&__s[14] = 422;
    *&__s[18] = 1024;
    *&__s[20] = a2;
    *&__s[24] = 1024;
    *&__s[26] = v19;
    *&__s[30] = 2048;
    *&__s[32] = a1;
    *&__s[40] = 2080;
    *&__s[42] = v20;
    v21 = "%s:%d: invalid data id %d max %u %p %s";
    v22 = v18;
    v23 = 50;
LABEL_28:
    _os_log_error_impl(&dword_26B7AA000, v22, OS_LOG_TYPE_ERROR, v21, __s, v23);
    goto LABEL_16;
  }

  v9 = *(a1 + 1352);
  if (!v9)
  {
    goto LABEL_17;
  }

  v10 = *(v9 + 4 * a2);
  if (v10 == 1)
  {
    goto LABEL_17;
  }

  v32 = 0;
  v33 = 0;
  v34 = 0;
  v11 = *(a1 + 1328);
  if (v11 <= v10)
  {
    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v17 = *__error();
    v24 = _SILogForLogForCategory(0);
    if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_16;
    }

    v28 = *(a1 + 1328);
    v29 = fd_name(*(a1 + 1272), &v49, 0x100uLL);
    *__s = 136316418;
    *&__s[4] = "_data_map32_get_data_entry";
    *&__s[12] = 1024;
    *&__s[14] = 446;
    *&__s[18] = 2048;
    *&__s[20] = v10;
    *&__s[28] = 2048;
    *&__s[30] = v28;
    *&__s[38] = 2048;
    *&__s[40] = a1;
    *&__s[48] = 2080;
    *&__s[50] = v29;
    v21 = "%s:%d: invalid data offset 0x%lx 0x%lx %p %s";
    v22 = v24;
    v23 = 58;
    goto LABEL_28;
  }

  data_entry_restore_32(*(a1 + 1320), v10, v11, &v32, &v34, v6, v7, v8);
  if (v34 == 1)
  {
    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    v12 = 5;
    memset(__s, 0, sizeof(__s));
    v13 = v10;
    v74 = 0;
    do
    {
      if (v13 >= *(a1 + 1328))
      {
        break;
      }

      v14 = strlen(__s);
      sprintf(&__s[v14], "%d ", *(*(a1 + 1320) + v13++));
      --v12;
    }

    while (v12);
    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v15 = *__error();
    v16 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v30 = fd_name(*(a1 + 1272), &v49, 0x100uLL);
      v31 = *(a1 + 1328);
      *buf = 136316674;
      v36 = "_data_map32_get_data_entry";
      v37 = 1024;
      v38 = 442;
      v39 = 2080;
      v40 = v30;
      v41 = 2048;
      v42 = v10;
      v43 = 2048;
      v44 = v31;
      v45 = 2048;
      v46 = v32;
      v47 = 2080;
      v48 = __s;
      _os_log_error_impl(&dword_26B7AA000, v16, OS_LOG_TYPE_ERROR, "%s:%d: data_entry_restore_32 failure: %s off: 0x%lx end: 0x%lx sz: 0x%lx sz bytes: %s", buf, 0x44u);
    }

    *__error() = v15;
    goto LABEL_17;
  }

  if (a3)
  {
    *a3 = (v32 - *(a1 + 224));
  }

  if (*(a1 + 1440))
  {
    data_map32_get_data_cold_1(a1, a1 + 1440, a2);
  }

  v26 = v33;
  v27 = *(a1 + 224);
  _data_map32_unlock(a1);
  if (v26)
  {
    return v26 + v27;
  }

LABEL_18:
  result = 0;
  if (a3)
  {
    *a3 = 0;
  }

  return result;
}

uint64_t _data_map32_get_data_id(uint64_t a1, unsigned int a2, char *a3, size_t a4, uint64_t a5)
{
  v9 = dm_hash(a1, &a3[a2], a4 - a2);
  if (!_data_map32_rdlock(a1))
  {
    bucket_entry = _data_map32_get_bucket_entry(a1, v9, 0, a3, a4, v10, v11, v12);
    if (!bucket_entry)
    {
      goto LABEL_19;
    }

    v14 = bucket_entry;
    v15 = *bucket_entry;
    if (*bucket_entry)
    {
      if (v15 >= *(a1 + 220))
      {
        a5 = 0;
      }

      else
      {
        a5 = v15;
      }

      goto LABEL_20;
    }

    if (!a5)
    {
LABEL_20:
      _data_map32_unlock(a1);
      return a5;
    }

    v31[1] = a3;
    v31[0] = a4;
    v16 = 4;
    v17 = 3;
    v18 = 1;
    if (a4 >= 0x80)
    {
      v18 = 2;
    }

    if (!(a4 >> 14))
    {
      v17 = v18;
    }

    if (!(a4 >> 21))
    {
      v16 = v17;
    }

    v19 = a4 >> 28 ? 5 : v16;
    a5 = *(a1 + 220);
    _data_map32_unlock(a1);
    if (_data_map32_wrlock(a1))
    {
LABEL_19:
      a5 = 0;
      goto LABEL_20;
    }

    if (a5 != *(a1 + 220))
    {
      v29 = _data_map32_get_bucket_entry(a1, v9, 0, a3, a4, v20, v21, v22);
      if (!v29)
      {
        goto LABEL_19;
      }

      v14 = v29;
      a5 = *v29;
      if (a5 >= *(a1 + 220))
      {
        goto LABEL_19;
      }

      if (a5)
      {
        _data_map32_set_seen_id(a1, a5);
        goto LABEL_20;
      }

      a5 = *(a1 + 220);
    }

    v30 = 0;
    if (_data_map32_grow(a1, (v19 + a4), &v30))
    {
      if ((*(a1 + 1451) & 1) == 0)
      {
        _data_map32_dirty(a1);
        *(a1 + 1451) = 1;
      }

      v24 = *(a1 + 1352);
      v25 = *(a1 + 1328);
      *(v24 + 4 * a5) = v25;
      if ((*(a1 + 1449) & 1) == 0)
      {
        _data_map32_dirty(a1);
        *(a1 + 1449) = 1;
        v25 = *(v24 + 4 * a5);
      }

      *(a1 + 1328) = data_entry_store(*(a1 + 1320), v25, v31);
      ++*(a1 + 220);
      if ((*(a1 + 1450) & 1) == 0)
      {
        _data_map32_dirty(a1);
        *(a1 + 1450) = 1;
      }

      if ((v30 & 4) != 0)
      {
        v14 = _data_map32_get_bucket_entry(a1, v9, a5, 0, 0, v26, v27, v28);
      }

      *v14 = a5;
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  return 0;
}

uint64_t _data_map32_match_address(uint64_t result, unint64_t a2)
{
  if (result)
  {
    v2 = *(result + 1256);
    if (v2 != -1)
    {
      if (v2)
      {
        if (v2 <= a2)
        {
          v3 = *(result + 1264);
          if (v2 + v3 > a2)
          {
            v4 = *(result + 1272);
            v5 = "data ro header";
            v6 = a2;
            v7 = v2;
            v8 = v3;
LABEL_28:
            log_map_access_error(v6, v7, v3, v8, v5, v4);
            return 1;
          }
        }
      }

      return 0;
    }

    v9 = *(result + 1320);
    v10 = v9 + 1 < 2 || v9 > a2;
    if (v10 || (v3 = *(result + 1312), v9 + v3 <= a2))
    {
      v9 = *(result + 1352);
      v11 = v9 + 1 < 2 || v9 > a2;
      if (v11 || (v3 = *(result + 1344), v9 + v3 <= a2))
      {
        v9 = *(result + 1384);
        if (v9 + 1 < 2)
        {
          return 0;
        }

        if (v9 > a2)
        {
          return 0;
        }

        v3 = *(result + 1380);
        if (v9 + v3 <= a2)
        {
          return 0;
        }

        v8 = *(result + 1376);
        v4 = *(result + 1368);
        v5 = "data buckets";
      }

      else
      {
        v8 = *(result + 1348);
        v4 = *(result + 1336);
        v5 = "data offsets";
      }
    }

    else
    {
      v8 = *(result + 1316);
      v4 = *(result + 1304);
      v5 = "data storage";
    }

    v6 = a2;
    v7 = v9;
    goto LABEL_28;
  }

  return result;
}

int *log_map_access_error(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v39 = *MEMORY[0x277D85DE8];
  memset(&v19, 0, sizeof(v19));
  memset(v38, 0, sizeof(v38));
  v12 = fd_parent_fd(a6);
  v13 = fd_name(a6, v38, 0x100uLL);
  if (fstatat(v12, v13, &v19, 32) == -1)
  {
    v14 = *__error();
  }

  else
  {
    v14 = 0;
  }

  v15 = *__error();
  v16 = _SILogForLogForCategory(0);
  v17 = gSILogLevels[0] < 3;
  if (os_log_type_enabled(v16, (gSILogLevels[0] < 3)))
  {
    *buf = 136317186;
    v21 = a5;
    v22 = 2080;
    v23 = v13;
    v24 = 2048;
    v25 = a1;
    v26 = 2048;
    v27 = a2;
    v28 = 2048;
    v29 = a2 + a3;
    v30 = 1024;
    v31 = a4;
    v32 = 1024;
    v33 = v14;
    v34 = 1024;
    st_dev = v19.st_dev;
    v36 = 2048;
    st_ino = v19.st_ino;
    _os_log_impl(&dword_26B7AA000, v16, v17, "*warn* Got exception on %s %s addr:%p start:%p map end:%p file end:%d sres:%d dev:%d ino:%lld", buf, 0x50u);
  }

  result = __error();
  *result = v15;
  return result;
}

uint64_t data_map32_setup_mappings(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a2;
  v9 = *a2 - 3;
  if (*a2 <= 3)
  {
    data_map32_setup_mappings_cold_1(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  v10 = a2[1];
  *v10 = *(a1 + 1320);
  v10[1] = *(a1 + 1312);
  v11 = *(a1 + 1352);
  v10[2] = *(a1 + 1304);
  v10[3] = v11;
  v12 = *(a1 + 1336);
  v10[4] = *(a1 + 1344);
  v10[5] = v12;
  v13 = *(a1 + 1380);
  v10[6] = *(a1 + 1384);
  v10[7] = v13;
  v14 = *(a1 + 1256);
  v10[8] = *(a1 + 1368);
  v10[9] = v14;
  v15 = *(a1 + 1272);
  v10[10] = *(a1 + 1264);
  v10[11] = v15;
  if (v8 != 4)
  {
    v16 = 0;
    v17 = v9 & 0xFFFFFFFFFFFFFFFELL;
    v18 = vdupq_n_s64(v8 - 5);
    v19 = v10 + 15;
    do
    {
      v20 = vmovn_s64(vcgeq_u64(v18, vorrq_s8(vdupq_n_s64(v16), xmmword_26B7FA170)));
      if (v20.i8[0])
      {
        *(v19 - 3) = -1;
      }

      if (v20.i8[4])
      {
        *v19 = -1;
      }

      v16 += 2;
      v19 += 6;
    }

    while (v17 != v16);
    v10[1] = 0;
    v10[2] = 0;
  }

  return 0;
}

uint64_t data_map32_garbage_collect_setup(uint64_t a1)
{
  _data_map32_wrlock(a1);
  LODWORD(v2) = *(a1 + 220);
  os_unfair_lock_lock((a1 + 1436));
  if (*(a1 + 1440))
  {
    os_unfair_lock_unlock((a1 + 1436));
    _data_map32_unlock(a1);
    return 22;
  }

  else
  {
    v4 = malloc_type_malloc(0x18uLL, 0x10200403ED2C137uLL);
    if (!v4)
    {
      data_map32_garbage_collect_setup_cold_2(0, v5, v6, v7, v8, v9, v10, v11);
    }

    v12 = v4;
    v13 = *MEMORY[0x277CBECE8];
    if (v2 <= 0x80)
    {
      v2 = 128;
    }

    else
    {
      v2 = v2;
    }

    *v12 = 0;
    v12[1] = v2;
    Mutable = CFBitVectorCreateMutable(v13, v2);
    v12[2] = Mutable;
    CFBitVectorSetCount(Mutable, v2);
    if (!v12[2])
    {
      data_map32_garbage_collect_setup_cold_1(v15, v16, v17, v18, v19, v20, v21, v22);
    }

    *(a1 + 1440) = v12;
    os_unfair_lock_unlock((a1 + 1436));
    return 0;
  }
}

uint64_t data_map32_garbage_compact_collect_commit(uint64_t a1, void *a2, _BYTE *a3, char a4)
{
  _data_map32_wrlock(a1);
  if ((a4 & 1) == 0 && (*a3 & 1) == 0)
  {
    if (a2[1])
    {
      v8 = *(a1 + 220);
      if (a2[2] != v8 || (v9 = a2[3], v11.length = (v8 - 1), v11.location = 0, v9 != CFBitVectorGetCountOfBit(*(*(a1 + 1440) + 16), v11, 1u)))
      {
        *a3 = 1;
      }
    }
  }

  return 0;
}

uint64_t data_map32_garbage_collect_handle_deletes(uint64_t a1, int64x2_t *a2)
{
  v93 = *MEMORY[0x277D85DE8];
  if (a2->i64[1])
  {
    bzero(v92, 0x400uLL);
    bzero(v91, 0x400uLL);
    munmap(*(a1 + 1320), *(a1 + 1312));
    *(a1 + 1320) = a2[2].i64[1];
    *(a1 + 1312) = vmovn_s64(a2[5]);
    *(a1 + 1328) = a2[6].i64[0];
    a2[2].i64[1] = -1;
    fd_sync(a2[2].i64[0], 0, 1);
    fd_sync(a2[3].i64[0], 1, 1);
    munmap(*(a1 + 1352), *(a1 + 1344));
    *(a1 + 1352) = a2[3].i64[1];
    *(a1 + 1348) = a2[4].i64[1];
    a2[3].i64[1] = -1;
    v89 = 0u;
    v90 = 0u;
    v87 = 0u;
    v88 = 0u;
    v85 = 0u;
    v86 = 0u;
    v83 = 0u;
    v84 = 0u;
    v81 = 0u;
    v82 = 0u;
    v79 = 0u;
    v80 = 0u;
    v77 = 0u;
    v78 = 0u;
    v75 = 0u;
    v76 = 0u;
    v73 = 0u;
    v74 = 0u;
    v71 = 0u;
    v72 = 0u;
    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    __buf[0] = 0x6D6F76650A00;
    __buf[1] = 0x3232323200000003;
    __strlcpy_chk();
    v4 = &a2->i32[2];
    v5 = vld1_dup_f32(v4);
    *(a1 + 1396) = vadd_s32(*(a1 + 1396), v5);
    *(a1 + 1404) = 0;
    _data_map32_dirty(a1);
    _data_map32_sync_data(a1, 1);
    if (!*(a1 + 1456) && *(*(a1 + 1296) + 16) != 1)
    {
      v6 = malloc_type_calloc(1uLL, 0x38uLL, 0x100004021716A34uLL);
      v7 = *(a1 + 1296);
      v8 = *(v7 + 6);
      v9 = v7[2];
      v10 = *v7;
      *(v6 + 1) = v7[1];
      *(v6 + 2) = v9;
      *(v6 + 6) = v8;
      *v6 = v10;
      *(v6 + 4) = *(v6 + 20);
      *(v6 + 10) = *(v6 + 7);
      *(v6 + 5) = *(a1 + 1328);
      *(v6 + 7) = *(a1 + 220);
      *(v6 + 6) = *(a1 + 1392);
      *(v6 + 4) = 2;
      sibling_with_prefix = fd_create_sibling_with_prefix(*(a1 + 1272), "tmp.", 1538);
      fd_pwrite(sibling_with_prefix, v6, 0x38uLL, 0);
      fd_sync(sibling_with_prefix, 1, 1);
      fd_release(sibling_with_prefix);
      v56 = 0u;
      v57 = 0u;
      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      *__str = 0u;
      v43 = 0u;
      v12 = *__error();
      v13 = _SILogForLogForCategory(7);
      v14 = 2 * (dword_2804230EC < 4);
      if (os_log_type_enabled(v13, v14))
      {
        v15 = fd_name(*(a1 + 1272), __str, 0x100uLL);
        v16 = *(a1 + 220) - 1;
        *buf = 136315394;
        v37 = v15;
        v38 = 1024;
        LODWORD(v39) = v16;
        _os_log_impl(&dword_26B7AA000, v13, v14, "%s complete write tmp header with count: %d", buf, 0x12u);
      }

      *__error() = v12;
      free(v6);
    }

    v17 = fd_parent_fd(*(a1 + 1304));
    v18 = si_openat_protected(v17, "tmp.movePlan", 1538, 384, 3);
    pwrite(v18, __buf, 0x210uLL, 0);
    fcntl(v18, 85);
    bzero(__str, 0x400uLL);
    snprintf(__str, 0x400uLL, "tmp.%s.rehash", (a1 + 228));
    v19 = fd_parent_fd(*(a1 + 1304));
    v20 = si_openat_protected(v19, __str, 1538, 384, 3);
    close(v20);
    v21 = fd_name(*(a1 + 1304), v92, 0x400uLL);
    v22 = *__error();
    v23 = _SILogForLogForCategory(0);
    v24 = 2 * (gSILogLevels[0] < 4);
    if (os_log_type_enabled(v23, v24))
    {
      v25 = fd_realpath(a2[2].i64[0], v91);
      *buf = 134218498;
      v37 = a1;
      v38 = 2080;
      v39 = v25;
      v40 = 2080;
      v41 = v21;
      _os_log_impl(&dword_26B7AA000, v23, v24, "rename %p %s to %s", buf, 0x20u);
    }

    *__error() = v22;
    fd_rename(a2[2].i64[0], v21);
    v26 = *(a1 + 1304);
    *(a1 + 1304) = a2[2].i64[0];
    fd_release(v26);
    a2[2].i64[0] = 0;
    v27 = fd_name(*(a1 + 1336), v92, 0x400uLL);
    v28 = *__error();
    v29 = _SILogForLogForCategory(0);
    v30 = 2 * (gSILogLevels[0] < 4);
    if (os_log_type_enabled(v29, v30))
    {
      v31 = fd_realpath(a2[3].i64[0], v91);
      *buf = 134218498;
      v37 = a1;
      v38 = 2080;
      v39 = v31;
      v40 = 2080;
      v41 = v27;
      _os_log_impl(&dword_26B7AA000, v29, v30, "rename %p %s to %s", buf, 0x20u);
    }

    *__error() = v28;
    fd_rename(a2[3].i64[0], v27);
    v32 = *(a1 + 1336);
    *(a1 + 1336) = a2[3].i64[0];
    fd_release(v32);
    a2[3].i64[0] = 0;
    _data_map32_sync_header(a1, 1);
    data_map32_commit_sync(a1);
    data_map32_shadow(a1);
    data_map32_commit_shadow(a1);
    data_map32_commit_shadow_complete(a1);
    v33 = fd_parent_fd(*(a1 + 1304));
    unlinkat(v33, "tmp.movePlan", 2048);
    close(v18);
    if ((*(a1 + 1450) & 1) == 0)
    {
      _data_map32_dirty(a1);
      *(a1 + 1450) = 1;
    }

    _data_map32_rehash(a1);
    _data_map32_sync_data(a1, 1);
    _data_map32_sync_header(a1, 1);
    data_map32_shadow(a1);
    data_map32_commit_shadow(a1);
    data_map32_commit_shadow_complete(a1);
    v34 = fd_parent_fd(*(a1 + 1304));
    unlinkat(v34, __str, 2048);
  }

  return 0;
}

uint64_t _data_map32_dirty(uint64_t result)
{
  v1 = *(result + 1296);
  if (*(v1 + 16))
  {
    v2 = result;
    *(v1 + 16) = 0;
    fd_pwrite(*(result + 1272), v1, 0x38uLL, 0);
    v3 = *(v2 + 1272);

    return fd_sync(v3, 0, 1);
  }

  return result;
}

void data_map32_cleanup_compact_ctx(void *a1)
{
  v2 = a1[5];
  if (v2 != -1)
  {
    munmap(v2, a1[10]);
  }

  v3 = a1[4];
  if (v3)
  {
    fd_unlink(v3);
    fd_release(a1[4]);
  }

  v4 = a1[7];
  if (v4 != -1)
  {
    munmap(v4, a1[8]);
  }

  v5 = a1[6];
  if (v5)
  {
    fd_unlink(v5);
    v6 = a1[6];

    fd_release(v6);
  }
}

uint64_t data_map32_garbage_collect(uint64_t a1, unsigned int a2, char a3, uint64_t a4)
{
  v214 = *MEMORY[0x277D85DE8];
  if (!*(a1 + 1440))
  {
    return 0;
  }

  _data_map32_wrlock(a1);
  v8 = *(a1 + 220);
  v9 = v8 - 1;
  if (v8 - 1 <= a2)
  {
    goto LABEL_8;
  }

  v10 = *(a1 + 1440);
  v215.location = a2;
  v215.length = v8 - a2;
  FirstIndexOfBit = CFBitVectorGetFirstIndexOfBit(*(v10 + 16), v215, 0);
  v15 = FirstIndexOfBit;
  if (FirstIndexOfBit < a2)
  {
    goto LABEL_8;
  }

  if (v9 < FirstIndexOfBit || *(a1 + 220) <= FirstIndexOfBit)
  {
    goto LABEL_8;
  }

  v147 = a4;
  v149 = a3;
  while (1)
  {
    if (*v10 > v15 && CFBitVectorGetBitAtIndex(*(v10 + 16), v15))
    {
      goto LABEL_27;
    }

    if (*(a1 + 220) > v15)
    {
      break;
    }

    v176 = 0u;
    v175 = 0u;
    v174 = 0u;
    v173 = 0u;
    v172 = 0u;
    v171 = 0u;
    v170 = 0u;
    v169 = 0u;
    v168 = 0u;
    v167 = 0u;
    v166 = 0u;
    v165 = 0u;
    v164 = 0u;
    memset(v163, 0, sizeof(v163));
    v28 = *__error();
    v36 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      v39 = *(a1 + 220);
      v40 = fd_name(*(a1 + 1272), v163, 0x100uLL);
      *__s = 136316418;
      *&__s[4] = "_data_map32_get_offset_entry";
      *&__s[12] = 1024;
      *&__s[14] = 422;
      *&__s[18] = 1024;
      *&__s[20] = v15;
      *&__s[24] = 1024;
      *&__s[26] = v39;
      *&__s[30] = 2048;
      *&__s[32] = a1;
      *&__s[40] = 2080;
      *&__s[42] = v40;
      v32 = __s;
      v33 = v36;
      v34 = "%s:%d: invalid data id %d max %u %p %s";
      v35 = 50;
      goto LABEL_32;
    }

LABEL_26:
    *__error() = v28;
LABEL_27:
    if (++v15 > v9)
    {
      goto LABEL_8;
    }
  }

  v19 = *(a1 + 1352);
  if (!v19)
  {
    goto LABEL_27;
  }

  v20 = *(v19 + 4 * v15);
  if (v20 < 2)
  {
    goto LABEL_27;
  }

  *&buf[8] = 0;
  *buf = 0;
  LOBYTE(v177) = 0;
  v21 = *(a1 + 1328);
  if (v21 <= v20)
  {
    v176 = 0u;
    v175 = 0u;
    v174 = 0u;
    v173 = 0u;
    v172 = 0u;
    v171 = 0u;
    v170 = 0u;
    v169 = 0u;
    v168 = 0u;
    v167 = 0u;
    v166 = 0u;
    v165 = 0u;
    v164 = 0u;
    memset(v163, 0, sizeof(v163));
    v28 = *__error();
    v37 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      v145 = *(a1 + 1328);
      v38 = fd_name(*(a1 + 1272), v163, 0x100uLL);
      *__s = 136316418;
      *&__s[4] = "_data_map32_get_data_entry";
      *&__s[12] = 1024;
      *&__s[14] = 446;
      *&__s[18] = 2048;
      *&__s[20] = v20;
      *&__s[28] = 2048;
      *&__s[30] = v145;
      *&__s[38] = 2048;
      *&__s[40] = a1;
      *&__s[48] = 2080;
      *&__s[50] = v38;
      v32 = __s;
      v33 = v37;
      v34 = "%s:%d: invalid data offset 0x%lx 0x%lx %p %s";
      v35 = 58;
LABEL_32:
      _os_log_error_impl(&dword_26B7AA000, v33, OS_LOG_TYPE_ERROR, v34, v32, v35);
      goto LABEL_26;
    }

    goto LABEL_26;
  }

  data_entry_restore_32(*(a1 + 1320), v20, v21, buf, &v177, v12, v13, v14);
  if (v177 == 1)
  {
    v162 = 0;
    v160 = 0u;
    v161 = 0u;
    v158 = 0u;
    v159 = 0u;
    v157 = 0u;
    v155 = 0u;
    v156 = 0u;
    v154 = 0u;
    v25 = v20;
    v26 = 5;
    memset(__s, 0, sizeof(__s));
    do
    {
      if (v25 >= *(a1 + 1328))
      {
        break;
      }

      v27 = strlen(__s);
      sprintf(&__s[v27], "%d ", *(*(a1 + 1320) + v25++));
      --v26;
    }

    while (v26);
    v176 = 0u;
    v175 = 0u;
    v174 = 0u;
    v173 = 0u;
    v172 = 0u;
    v171 = 0u;
    v170 = 0u;
    v169 = 0u;
    v168 = 0u;
    v167 = 0u;
    v166 = 0u;
    v165 = 0u;
    v164 = 0u;
    memset(v163, 0, sizeof(v163));
    v28 = *__error();
    v29 = _SILogForLogForCategory(0);
    if (!os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_26;
    }

    v30 = fd_name(*(a1 + 1272), v163, 0x100uLL);
    v31 = *(a1 + 1328);
    *v191 = 136316674;
    *&v191[4] = "_data_map32_get_data_entry";
    *&v191[12] = 1024;
    *&v191[14] = 442;
    *&v191[18] = 2080;
    *&v191[20] = v30;
    *&v191[28] = 2048;
    *&v191[30] = v20;
    *&v191[38] = 2048;
    *&v191[40] = v31;
    LOWORD(v192[0]) = 2048;
    *(v192 + 2) = *buf;
    HIWORD(v192[2]) = 2080;
    *&v192[3] = __s;
    v32 = v191;
    v33 = v29;
    v34 = "%s:%d: data_entry_restore_32 failure: %s off: 0x%lx end: 0x%lx sz: 0x%lx sz bytes: %s";
    v35 = 68;
    goto LABEL_32;
  }

  if (!v15)
  {
    goto LABEL_8;
  }

  v41 = *(a1 + 220);
  v42 = v41 - 1;
  if ((v149 & 4) != 0 || !v147)
  {
    if (v42 < v15)
    {
      LODWORD(v90) = 0;
LABEL_138:
      if ((v149 & 2) != 0)
      {
        v120 = *__error();
        v121 = _SILogForLogForCategory(0);
        v122 = 2 * (gSILogLevels[0] < 4);
        if (os_log_type_enabled(v121, v122))
        {
          *v163 = 67109376;
          *&v163[4] = v90;
          *&v163[8] = 2048;
          *&v163[10] = a1;
          _os_log_impl(&dword_26B7AA000, v121, v122, "Found %d deleted strings from %p", v163, 0x12u);
        }

        v17 = 0;
        *__error() = v120;
        goto LABEL_9;
      }

LABEL_8:
      v17 = 0;
      goto LABEL_9;
    }

    v90 = 0;
    v148 = *(a1 + 224);
    while (1)
    {
      if (*v10 <= v15 || !CFBitVectorGetBitAtIndex(*(v10 + 16), v15))
      {
        if (*(a1 + 220) <= v15)
        {
          v176 = 0u;
          v175 = 0u;
          v174 = 0u;
          v173 = 0u;
          v172 = 0u;
          v171 = 0u;
          v170 = 0u;
          v169 = 0u;
          v168 = 0u;
          v167 = 0u;
          v166 = 0u;
          v165 = 0u;
          v164 = 0u;
          memset(v163, 0, sizeof(v163));
          v105 = *__error();
          v106 = _SILogForLogForCategory(0);
          if (os_log_type_enabled(v106, OS_LOG_TYPE_ERROR))
          {
            v114 = *(a1 + 220);
            v115 = fd_name(*(a1 + 1272), v163, 0x100uLL);
            *__s = 136316418;
            *&__s[4] = "_data_map32_get_offset_entry";
            *&__s[12] = 1024;
            *&__s[14] = 422;
            *&__s[18] = 1024;
            *&__s[20] = v15;
            *&__s[24] = 1024;
            *&__s[26] = v114;
            *&__s[30] = 2048;
            *&__s[32] = a1;
            *&__s[40] = 2080;
            *&__s[42] = v115;
            _os_log_error_impl(&dword_26B7AA000, v106, OS_LOG_TYPE_ERROR, "%s:%d: invalid data id %d max %u %p %s", __s, 0x32u);
          }

          *__error() = v105;
          goto LABEL_116;
        }

        v91 = *(a1 + 1352);
        if (v91)
        {
          v92 = *(v91 + 4 * v15);
          if (v92 >= 2)
          {
            break;
          }
        }
      }

LABEL_116:
      if (++v15 > v42)
      {
        goto LABEL_138;
      }
    }

    *&buf[8] = 0;
    *buf = 0;
    LOBYTE(v177) = 0;
    v93 = *(a1 + 1328);
    if (v93 <= v92)
    {
      v176 = 0u;
      v175 = 0u;
      v174 = 0u;
      v173 = 0u;
      v172 = 0u;
      v171 = 0u;
      v170 = 0u;
      v169 = 0u;
      v168 = 0u;
      v167 = 0u;
      v166 = 0u;
      v165 = 0u;
      v164 = 0u;
      memset(v163, 0, sizeof(v163));
      v97 = *__error();
      v107 = _SILogForLogForCategory(0);
      if (!os_log_type_enabled(v107, OS_LOG_TYPE_ERROR))
      {
LABEL_114:
        *__error() = v97;
        v108 = v90;
LABEL_115:
        v90 = v108;
        goto LABEL_116;
      }

      v143 = *(a1 + 1328);
      v116 = fd_name(*(a1 + 1272), v163, 0x100uLL);
      *__s = 136316418;
      *&__s[4] = "_data_map32_get_data_entry";
      *&__s[12] = 1024;
      *&__s[14] = 446;
      *&__s[18] = 2048;
      *&__s[20] = v92;
      *&__s[28] = 2048;
      *&__s[30] = v143;
      *&__s[38] = 2048;
      *&__s[40] = a1;
      *&__s[48] = 2080;
      *&__s[50] = v116;
      v101 = __s;
      v102 = v107;
      v103 = "%s:%d: invalid data offset 0x%lx 0x%lx %p %s";
      v104 = 58;
LABEL_133:
      _os_log_error_impl(&dword_26B7AA000, v102, OS_LOG_TYPE_ERROR, v103, v101, v104);
      goto LABEL_114;
    }

    data_entry_restore_32(*(a1 + 1320), v92, v93, buf, &v177, v22, v23, v24);
    if (v177 == 1)
    {
      v162 = 0;
      v160 = 0u;
      v161 = 0u;
      v158 = 0u;
      v159 = 0u;
      v157 = 0u;
      v155 = 0u;
      v156 = 0u;
      v154 = 0u;
      v94 = v92;
      v95 = 5;
      memset(__s, 0, sizeof(__s));
      do
      {
        if (v94 >= *(a1 + 1328))
        {
          break;
        }

        v96 = strlen(__s);
        sprintf(&__s[v96], "%d ", *(*(a1 + 1320) + v94++));
        --v95;
      }

      while (v95);
      v176 = 0u;
      v175 = 0u;
      v174 = 0u;
      v173 = 0u;
      v172 = 0u;
      v171 = 0u;
      v170 = 0u;
      v169 = 0u;
      v168 = 0u;
      v167 = 0u;
      v166 = 0u;
      v165 = 0u;
      v164 = 0u;
      memset(v163, 0, sizeof(v163));
      v97 = *__error();
      v98 = _SILogForLogForCategory(0);
      if (!os_log_type_enabled(v98, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_114;
      }

      v99 = fd_name(*(a1 + 1272), v163, 0x100uLL);
      v100 = *(a1 + 1328);
      *v191 = 136316674;
      *&v191[4] = "_data_map32_get_data_entry";
      *&v191[12] = 1024;
      *&v191[14] = 442;
      *&v191[18] = 2080;
      *&v191[20] = v99;
      *&v191[28] = 2048;
      *&v191[30] = v92;
      *&v191[38] = 2048;
      *&v191[40] = v100;
      LOWORD(v192[0]) = 2048;
      *(v192 + 2) = *buf;
      HIWORD(v192[2]) = 2080;
      *&v192[3] = __s;
      v101 = v191;
      v102 = v98;
      v103 = "%s:%d: data_entry_restore_32 failure: %s off: 0x%lx end: 0x%lx sz: 0x%lx sz bytes: %s";
      v104 = 68;
      goto LABEL_133;
    }

    v109 = v149;
    if ((v149 & 2) == 0)
    {
LABEL_125:
      v108 = v90 + 1;
      if ((v109 & 4) == 0)
      {
        if (!v90)
        {
          if ((*(a1 + 1449) & 1) == 0)
          {
            _data_map32_dirty(a1);
            *(a1 + 1449) = 1;
          }

          if ((*(a1 + 1451) & 1) == 0)
          {
            _data_map32_dirty(a1);
            *(a1 + 1451) = 1;
          }
        }

        *(v91 + 4 * v15) = 1;
        bzero(*&buf[8], (*buf + v148));
      }

      goto LABEL_115;
    }

    if ((v149 & 8) != 0)
    {
      v109 = v149;
      if (gSILogLevels[0] < 5)
      {
        goto LABEL_125;
      }

      v142 = *__error();
      v117 = _SILogForLogForCategory(0);
      if (!os_log_type_enabled(v117, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_137;
      }

      v119 = *&buf[8] + *(a1 + 224);
      *v163 = 67109890;
      *&v163[4] = v15;
      *&v163[8] = 1024;
      *&v163[10] = *buf;
      *&v163[14] = 2080;
      *&v163[16] = v119;
      *&v163[24] = 2048;
      *&v163[26] = a1;
      v111 = v117;
      v112 = "Delete data for id:%d size:%d %s from %p";
      v113 = 34;
    }

    else
    {
      v109 = v149;
      if (gSILogLevels[0] < 5)
      {
        goto LABEL_125;
      }

      v142 = *__error();
      v110 = _SILogForLogForCategory(0);
      if (!os_log_type_enabled(v110, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_137;
      }

      *v163 = 67109632;
      *&v163[4] = v15;
      *&v163[8] = 1024;
      *&v163[10] = *buf;
      *&v163[14] = 2048;
      *&v163[16] = a1;
      v111 = v110;
      v112 = "Delete data for id:%d size:%d from %p";
      v113 = 24;
    }

    _os_log_impl(&dword_26B7AA000, v111, OS_LOG_TYPE_DEFAULT, v112, v163, v113);
LABEL_137:
    *__error() = v142;
    v109 = v149;
    goto LABEL_125;
  }

  bzero(v163, 0x400uLL);
  bzero(__s, 0x400uLL);
  v43 = *(a1 + 1454);
  *v147 = 842150450;
  *(v147 + 8) = 0;
  *(v147 + 16) = v41;
  v216.location = 0;
  v216.length = (v41 - 1);
  *(v147 + 24) = CFBitVectorGetCountOfBit(*(v10 + 16), v216, 1u);
  v44 = fd_name(*(a1 + 1304), v163, 0x400uLL);
  snprintf(__s, 0x400uLL, "tmp.%s", v44);
  if (v43)
  {
    v45 = 3;
  }

  else
  {
    v45 = 0;
  }

  sibling_protected = fd_create_sibling_protected(*(a1 + 1304), __s, 1538, v45);
  if (fd_truncate(sibling_protected, *(a1 + 1316)) == -1)
  {
    v48 = 0;
    v123 = 0;
    v50 = 0;
    v124 = *__error();
    if (v124)
    {
      v17 = v124;
    }

    else
    {
      v17 = 0xFFFFFFFFLL;
    }

LABEL_151:
    v52 = -1;
    v128 = -1;
    goto LABEL_163;
  }

  v47 = *MEMORY[0x277D85FA0];
  v146 = fd_mmap(sibling_protected, *(a1 + 1312), 3, 1, 0);
  if (v146 == -1)
  {
    v125 = *__error();
    if (v125)
    {
      v17 = v125;
    }

    else
    {
      v17 = 0xFFFFFFFFLL;
    }

    v126 = *__error();
    v127 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v127, OS_LOG_TYPE_ERROR))
    {
      data_map32_garbage_collect_cold_3();
    }

    v48 = 0;
    v123 = 0;
    v50 = 0;
    *__error() = v126;
    goto LABEL_151;
  }

  v144 = v47;
  v48 = *(a1 + 1312);
  v49 = fd_name(*(a1 + 1336), v163, 0x400uLL);
  snprintf(__s, 0x400uLL, "tmp.%s", v49);
  v50 = fd_create_sibling_protected(*(a1 + 1336), __s, 1538, v45);
  if (fd_truncate(v50, *(a1 + 1348)) == -1)
  {
    v123 = 0;
    v129 = *__error();
    if (v129)
    {
      v17 = v129;
    }

    else
    {
      v17 = 0xFFFFFFFFLL;
    }

    v52 = -1;
LABEL_162:
    v128 = v146;
    goto LABEL_163;
  }

  v137 = *(a1 + 1348);
  v141 = v50;
  v51 = fd_mmap(v50, *(a1 + 1344), 3, 1, 0);
  if (v51 == -1)
  {
    v130 = *__error();
    v131 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v131, OS_LOG_TYPE_ERROR))
    {
      data_map32_garbage_collect_cold_2();
    }

    *__error() = v130;
    v123 = 0;
    v132 = *__error();
    if (v132)
    {
      v17 = v132;
    }

    else
    {
      v17 = 0xFFFFFFFFLL;
    }

    v52 = -1;
    goto LABEL_162;
  }

  v52 = v51;
  v138 = sibling_protected;
  v139 = v48;
  v136 = *(a1 + 1344);
  v140 = data_entry_store(v146, 0, dword_279D02DC8);
  *v52 = 0;
  if (!v42)
  {
    goto LABEL_177;
  }

  v56 = 1;
  while (2)
  {
    if (*(a1 + 220) <= v56)
    {
      v202 = 0u;
      v203 = 0u;
      v200 = 0u;
      v201 = 0u;
      v198 = 0u;
      v199 = 0u;
      v196 = 0u;
      v197 = 0u;
      v194 = 0u;
      v195 = 0u;
      v193 = 0u;
      memset(v192, 0, sizeof(v192));
      memset(v191, 0, sizeof(v191));
      v63 = *__error();
      v71 = _SILogForLogForCategory(0);
      if (!os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_56;
      }

      v82 = *(a1 + 220);
      v83 = fd_name(*(a1 + 1272), v191, 0x100uLL);
      *buf = 136316418;
      *&buf[4] = "_data_map32_get_offset_entry";
      *&buf[12] = 1024;
      *&buf[14] = 422;
      *&buf[18] = 1024;
      *&buf[20] = v56;
      *&buf[24] = 1024;
      *&buf[26] = v82;
      *&buf[30] = 2048;
      *&buf[32] = a1;
      *&buf[40] = 2080;
      *&buf[42] = v83;
      v67 = buf;
      v68 = v71;
      v69 = "%s:%d: invalid data id %d max %u %p %s";
      v70 = 50;
LABEL_85:
      _os_log_error_impl(&dword_26B7AA000, v68, OS_LOG_TYPE_ERROR, v69, v67, v70);
      goto LABEL_56;
    }

    v57 = *(a1 + 1352);
    if (!v57)
    {
      goto LABEL_57;
    }

    v58 = *(v57 + 4 * v56);
    if (v58 < 2)
    {
      goto LABEL_57;
    }

    v150 = 0;
    v151 = 0;
    v152 = 0;
    v59 = *(a1 + 1328);
    if (v59 <= v58)
    {
      v202 = 0u;
      v203 = 0u;
      v200 = 0u;
      v201 = 0u;
      v198 = 0u;
      v199 = 0u;
      v196 = 0u;
      v197 = 0u;
      v194 = 0u;
      v195 = 0u;
      v193 = 0u;
      memset(v192, 0, sizeof(v192));
      memset(v191, 0, sizeof(v191));
      v63 = *__error();
      v72 = _SILogForLogForCategory(0);
      if (!os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_56;
      }

      v73 = *(a1 + 1328);
      v74 = fd_name(*(a1 + 1272), v191, 0x100uLL);
      *buf = 136316418;
      *&buf[4] = "_data_map32_get_data_entry";
      *&buf[12] = 1024;
      *&buf[14] = 446;
      *&buf[18] = 2048;
      *&buf[20] = v58;
      *&buf[28] = 2048;
      *&buf[30] = v73;
      *&buf[38] = 2048;
      *&buf[40] = a1;
      *&buf[48] = 2080;
      *&buf[50] = v74;
      v67 = buf;
      v68 = v72;
      v69 = "%s:%d: invalid data offset 0x%lx 0x%lx %p %s";
      v70 = 58;
      goto LABEL_85;
    }

    data_entry_restore_32(*(a1 + 1320), v58, v59, &v150, &v152, v53, v54, v55);
    if (v152 == 1)
    {
      v213 = 0;
      v211 = 0u;
      v212 = 0u;
      v209 = 0u;
      v210 = 0u;
      v207 = 0u;
      v208 = 0u;
      v205 = 0u;
      v206 = 0u;
      v60 = v58;
      v61 = 5;
      memset(buf, 0, sizeof(buf));
      do
      {
        if (v60 >= *(a1 + 1328))
        {
          break;
        }

        v62 = strlen(buf);
        sprintf(&buf[v62], "%d ", *(*(a1 + 1320) + v60++));
        --v61;
      }

      while (v61);
      v202 = 0u;
      v203 = 0u;
      v200 = 0u;
      v201 = 0u;
      v198 = 0u;
      v199 = 0u;
      v196 = 0u;
      v197 = 0u;
      v194 = 0u;
      v195 = 0u;
      v193 = 0u;
      memset(v192, 0, sizeof(v192));
      memset(v191, 0, sizeof(v191));
      v63 = *__error();
      v64 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
      {
        v65 = fd_name(*(a1 + 1272), v191, 0x100uLL);
        v66 = *(a1 + 1328);
        v177 = 136316674;
        v178 = "_data_map32_get_data_entry";
        v179 = 1024;
        v180 = 442;
        v181 = 2080;
        v182 = v65;
        v183 = 2048;
        v184 = v58;
        v185 = 2048;
        v186 = v66;
        v187 = 2048;
        v188 = v150;
        v189 = 2080;
        v190 = buf;
        v67 = &v177;
        v68 = v64;
        v69 = "%s:%d: data_entry_restore_32 failure: %s off: 0x%lx end: 0x%lx sz: 0x%lx sz bytes: %s";
        v70 = 68;
        goto LABEL_85;
      }

LABEL_56:
      *__error() = v63;
LABEL_57:
      *(v52 + 4 * v56) = 1;
LABEL_58:
      if (++v56 > v42)
      {
        goto LABEL_177;
      }

      continue;
    }

    break;
  }

  if (v56 >= v15 && (*v10 <= v56 || !CFBitVectorGetBitAtIndex(*(v10 + 16), v56)))
  {
    ++*(v147 + 8);
    if ((v149 & 2) == 0)
    {
      goto LABEL_57;
    }

    if ((v149 & 8) != 0)
    {
      if (gSILogLevels[0] < 5)
      {
        goto LABEL_57;
      }

      v63 = *__error();
      v88 = _SILogForLogForCategory(0);
      if (!os_log_type_enabled(v88, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_56;
      }

      v89 = v151 + *(a1 + 224);
      *v191 = 67109890;
      *&v191[4] = v56;
      *&v191[8] = 1024;
      *&v191[10] = v150;
      *&v191[14] = 2080;
      *&v191[16] = v89;
      *&v191[24] = 2048;
      *&v191[26] = a1;
      v85 = v88;
      v86 = "Deleting id: %d size: %d %s from %p";
      v87 = 34;
    }

    else
    {
      if (gSILogLevels[0] < 5)
      {
        goto LABEL_57;
      }

      v63 = *__error();
      v84 = _SILogForLogForCategory(0);
      if (!os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_56;
      }

      *v191 = 67109632;
      *&v191[4] = v56;
      *&v191[8] = 1024;
      *&v191[10] = v150;
      *&v191[14] = 2048;
      *&v191[16] = a1;
      v85 = v84;
      v86 = "Deleting id: %d size: %d from %p";
      v87 = 24;
    }

    _os_log_impl(&dword_26B7AA000, v85, OS_LOG_TYPE_DEFAULT, v86, v191, v87);
    goto LABEL_56;
  }

  *(v52 + 4 * v56) = v140;
  if (v150 < 0x80)
  {
    v75 = 1;
  }

  else
  {
    v75 = 2;
  }

  if (v150 >> 14)
  {
    v76 = 3;
  }

  else
  {
    v76 = v75;
  }

  if (v150 >> 21)
  {
    v77 = 4;
  }

  else
  {
    v77 = v76;
  }

  if (v150 >> 28)
  {
    v78 = 5;
  }

  else
  {
    v78 = v77;
  }

  v79 = v140 + (v78 + v150) + 8;
  v80 = v144;
  if (v79 >= v144)
  {
    v81 = (v79 + *MEMORY[0x277D85FA0] - 1) & -*MEMORY[0x277D85FA0];
    if (fd_truncate(v138, v81) == -1)
    {
      v133 = *__error();
      if (v133)
      {
        v17 = v133;
      }

      else
      {
        v17 = 0xFFFFFFFFLL;
      }

      goto LABEL_180;
    }

    v80 = v81;
  }

  v144 = v80;
  if (v79 <= v139)
  {
LABEL_83:
    v140 = data_entry_store(v146, v140, &v150);
    goto LABEL_58;
  }

  munmap(v146, v139);
  v146 = fd_mmap(v138, 2 * v139, 3, 1, 0);
  if (v146 != -1)
  {
    v139 = (2 * v139);
    goto LABEL_83;
  }

  v134 = *__error();
  v135 = _SILogForLogForCategory(0);
  if (os_log_type_enabled(v135, OS_LOG_TYPE_ERROR))
  {
    data_map32_garbage_collect_cold_1();
  }

  *__error() = v134;
  v146 = -1;
LABEL_177:
  if (*(v147 + 8))
  {
    fd_msync(v146, v144, 16, 1);
    fd_msync(v52, v137, 16, 1);
    v17 = 0;
    *(v147 + 32) = v138;
    *(v147 + 40) = v146;
    *(v147 + 48) = v141;
    *(v147 + 56) = v52;
    *(v147 + 64) = v136;
    *(v147 + 72) = v137;
    *(v147 + 80) = v139;
    *(v147 + 88) = v144;
    *(v147 + 96) = v140;
    *v147 = 842150450;
    goto LABEL_9;
  }

  v17 = 0;
LABEL_180:
  sibling_protected = v138;
  v48 = v139;
  v50 = v141;
  v128 = v146;
  v123 = v136;
LABEL_163:
  if ((v128 + 1) >= 2)
  {
    munmap(v128, v48);
  }

  if (sibling_protected)
  {
    fd_release(sibling_protected);
    fd_unlink(sibling_protected);
  }

  if (v52 != -1)
  {
    munmap(v52, v123);
  }

  if (v50)
  {
    fd_release(v50);
    fd_unlink(v50);
  }

LABEL_9:
  _data_map32_unlock(a1);
  return v17;
}

void *data_map32_copy_deleted_ids(uint64_t a1)
{
  v42 = *MEMORY[0x277D85DE8];
  if (!a1 || !*(a1 + 1396))
  {
    return 0;
  }

  v2 = *(a1 + 220);
  v3 = malloc_type_malloc(0x18uLL, 0x10200403ED2C137uLL);
  if (!v3)
  {
    data_map32_garbage_collect_setup_cold_2(0, v4, v5, v6, v7, v8, v9, v10);
  }

  v11 = v3;
  v12 = *MEMORY[0x277CBECE8];
  if (v2 <= 0x80)
  {
    v13 = 128;
  }

  else
  {
    v13 = v2;
  }

  *v11 = 0;
  v11[1] = v13;
  Mutable = CFBitVectorCreateMutable(v12, v13);
  v11[2] = Mutable;
  CFBitVectorSetCount(Mutable, v13);
  if (!v11[2])
  {
    data_map32_garbage_collect_setup_cold_1(v15, v16, v17, v18, v19, v20, v21, v22);
  }

  if (v2 >= 2)
  {
    for (i = 1; v2 != i; ++i)
    {
      if (i >= *(a1 + 220))
      {
        memset(v41, 0, sizeof(v41));
        v24 = *__error();
        v25 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          v26 = *(a1 + 220);
          v27 = fd_name(*(a1 + 1272), v41, 0x100uLL);
          *buf = 136316418;
          v30 = "_data_map32_get_offset_entry";
          v31 = 1024;
          v32 = 422;
          v33 = 1024;
          v34 = i;
          v35 = 1024;
          v36 = v26;
          v37 = 2048;
          v38 = a1;
          v39 = 2080;
          v40 = v27;
          _os_log_error_impl(&dword_26B7AA000, v25, OS_LOG_TYPE_ERROR, "%s:%d: invalid data id %d max %u %p %s", buf, 0x32u);
        }

        *__error() = v24;
      }

      else if (*(*(a1 + 1352) + 4 * i) != 1)
      {
        continue;
      }

      bit_vector_set(v11, i, v17, v18, v19, v20, v21, v22);
    }
  }

  return v11;
}

void bit_vector_set(void *a1, CFIndex idx, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = a1 + 1;
  v10 = a1[1];
  if (v10 <= idx)
  {
    bit_vector_set_cold_1(v10, idx, a1, v11, a5, a6, a7, a8);
  }

  if (*a1 <= idx)
  {
    *a1 = idx + 1;
  }

  v12 = a1[2];

  CFBitVectorSetBitAtIndex(v12, idx, 1u);
}

uint64_t data_map32_garbage_collect_complete(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  _rename_prefix_suffix(a1, (a3 + 268), ".offsets");
  _rename_prefix_suffix(v4, (a3 + 268), ".data");

  return _rename_prefix_suffix(v4, (a3 + 268), ".header");
}

uint64_t _rename_prefix_suffix(int a1, const char *a2, const char *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  bzero(v8, 0x400uLL);
  bzero(__str, 0x400uLL);
  snprintf(__str, 0x400uLL, "%s%s%s", "", a2, a3);
  snprintf(v8, 0x400uLL, "%s%s%s", "tmp.", a2, a3);
  return renameat(a1, v8, a1, __str);
}

uint64_t data_map32_defer_block(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 1416);
  if (v2)
  {
    return v2(*(a1 + 1424), a2);
  }

  else
  {
    return (*(a2 + 16))(a2);
  }
}

BOOL data_map32_is_empty(void *a1)
{
  memset(&v4, 0, sizeof(v4));
  if (!fd_stat(a1[171], &v4) && v4.st_size || !fd_stat(a1[159], &v4) && v4.st_size || !fd_stat(a1[167], &v4) && v4.st_size)
  {
    return 0;
  }

  return fd_stat(a1[163], &v4) || v4.st_size == 0;
}

uint64_t data_entry_hash(int a1, uint64_t a2, unsigned int a3, int a4)
{
  if (a4)
  {
    return LegacyHash((a2 + a3), a1 - a3);
  }

  else
  {
    return commonHash(a1 - a3, a2 + a3);
  }
}

uint64_t _data_map32_get_bucket_entry(uint64_t a1, unsigned int a2, unsigned int a3, const void *a4, size_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v93 = *MEMORY[0x277D85DE8];
  if (*(a1 + 220) > a3)
  {
    v10 = 0;
    v11 = *(a1 + 1392);
    v12 = a2 - a2 / *(a1 + 1392) * v11;
    v47 = v11;
    while (1)
    {
      v49 = v10;
      if (v12 < v11)
      {
        break;
      }

      v17 = 0;
      v13 = v12;
LABEL_32:
      if (v17)
      {
        return 0;
      }

      result = 0;
      v10 = 1;
      v11 = v12;
      v12 = 0;
      if (v49 & 1 | (v13 != v47))
      {
        return result;
      }
    }

    v13 = v12;
    while (1)
    {
      v14 = *(a1 + 1384);
      v15 = *(v14 + 4 * v13);
      if (v15)
      {
        v16 = v15 == a3;
      }

      else
      {
        v16 = 1;
      }

      if (v16)
      {
        return v14 + 4 * v13;
      }

      if (a3)
      {
        goto LABEL_10;
      }

      if (*(a1 + 220) <= v15)
      {
        v81 = 0u;
        v82 = 0u;
        v79 = 0u;
        v80 = 0u;
        v77 = 0u;
        v78 = 0u;
        v75 = 0u;
        v76 = 0u;
        v73 = 0u;
        v74 = 0u;
        v71 = 0u;
        v72 = 0u;
        v69 = 0u;
        v70 = 0u;
        v67 = 0u;
        v68 = 0u;
        v38 = *__error();
        v39 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
        {
          v43 = *(a1 + 220);
          v44 = fd_name(*(a1 + 1272), &v67, 0x100uLL);
          *__s = 136316418;
          *&__s[4] = "_data_map32_get_offset_entry";
          *&__s[12] = 1024;
          *&__s[14] = 422;
          *&__s[18] = 1024;
          *&__s[20] = v15;
          *&__s[24] = 1024;
          *&__s[26] = v43;
          *&__s[30] = 2048;
          *&__s[32] = a1;
          *&__s[40] = 2080;
          *&__s[42] = v44;
          _os_log_error_impl(&dword_26B7AA000, v39, OS_LOG_TYPE_ERROR, "%s:%d: invalid data id %d max %u %p %s", __s, 0x32u);
        }

        v40 = __error();
        result = 0;
        *v40 = v38;
        return result;
      }

      v18 = *(a1 + 1352);
      if (!v18)
      {
        return 0;
      }

      v19 = *(v18 + 4 * v15);
      if (v19 == 1)
      {
        return 0;
      }

      v50 = 0;
      __s2 = 0;
      v52 = 0;
      v20 = *(a1 + 1328);
      if (v20 <= v19)
      {
        v81 = 0u;
        v82 = 0u;
        v79 = 0u;
        v80 = 0u;
        v77 = 0u;
        v78 = 0u;
        v75 = 0u;
        v76 = 0u;
        v73 = 0u;
        v74 = 0u;
        v71 = 0u;
        v72 = 0u;
        v69 = 0u;
        v70 = 0u;
        v67 = 0u;
        v68 = 0u;
        v24 = *__error();
        v32 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          v45 = *(a1 + 1328);
          v33 = fd_name(*(a1 + 1272), &v67, 0x100uLL);
          *__s = 136316418;
          *&__s[4] = "_data_map32_get_data_entry";
          *&__s[12] = 1024;
          *&__s[14] = 446;
          *&__s[18] = 2048;
          *&__s[20] = v19;
          *&__s[28] = 2048;
          *&__s[30] = v45;
          *&__s[38] = 2048;
          *&__s[40] = a1;
          *&__s[48] = 2080;
          *&__s[50] = v33;
          v28 = __s;
          v29 = v32;
          v30 = "%s:%d: invalid data offset 0x%lx 0x%lx %p %s";
          v31 = 58;
          goto LABEL_30;
        }
      }

      else
      {
        data_entry_restore_32(*(a1 + 1320), v19, v20, &v50, &v52, a6, a7, a8);
        if (v52 != 1)
        {
          if (v50 == a5 && !memcmp(a4, __s2, a5))
          {
            return v14 + 4 * v13;
          }

LABEL_10:
          v17 = 0;
          goto LABEL_23;
        }

        v92 = 0;
        v90 = 0u;
        v91 = 0u;
        v88 = 0u;
        v89 = 0u;
        v86 = 0u;
        v87 = 0u;
        v84 = 0u;
        v85 = 0u;
        v21 = v19;
        v22 = 5;
        memset(__s, 0, sizeof(__s));
        do
        {
          if (v21 >= *(a1 + 1328))
          {
            break;
          }

          v23 = strlen(__s);
          sprintf(&__s[v23], "%d ", *(*(a1 + 1320) + v21++));
          --v22;
        }

        while (v22);
        v81 = 0u;
        v82 = 0u;
        v79 = 0u;
        v80 = 0u;
        v77 = 0u;
        v78 = 0u;
        v75 = 0u;
        v76 = 0u;
        v73 = 0u;
        v74 = 0u;
        v71 = 0u;
        v72 = 0u;
        v69 = 0u;
        v70 = 0u;
        v67 = 0u;
        v68 = 0u;
        v24 = *__error();
        v25 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          v26 = fd_name(*(a1 + 1272), &v67, 0x100uLL);
          v27 = *(a1 + 1328);
          v53 = 136316674;
          v54 = "_data_map32_get_data_entry";
          v55 = 1024;
          v56 = 442;
          v57 = 2080;
          v58 = v26;
          v59 = 2048;
          v60 = v19;
          v61 = 2048;
          v62 = v27;
          v63 = 2048;
          v64 = v50;
          v65 = 2080;
          v66 = __s;
          v28 = &v53;
          v29 = v25;
          v30 = "%s:%d: data_entry_restore_32 failure: %s off: 0x%lx end: 0x%lx sz: 0x%lx sz bytes: %s";
          v31 = 68;
LABEL_30:
          _os_log_error_impl(&dword_26B7AA000, v29, OS_LOG_TYPE_ERROR, v30, v28, v31);
        }
      }

      *__error() = v24;
      v17 = 1;
LABEL_23:
      ++v13;
      if ((v17 & 1) != 0 || v13 >= v11)
      {
        goto LABEL_32;
      }
    }
  }

  if (!a3)
  {
    return 0;
  }

  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v35 = *__error();
  v36 = _SILogForLogForCategory(0);
  if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
  {
    v41 = *(a1 + 220);
    v42 = fd_name(*(a1 + 1272), &v67, 0x100uLL);
    *__s = 136316418;
    *&__s[4] = "_data_map32_get_bucket_entry";
    *&__s[12] = 1024;
    *&__s[14] = 516;
    *&__s[18] = 1024;
    *&__s[20] = a3;
    *&__s[24] = 1024;
    *&__s[26] = v41;
    *&__s[30] = 2048;
    *&__s[32] = a1;
    *&__s[40] = 2080;
    *&__s[42] = v42;
    _os_log_error_impl(&dword_26B7AA000, v36, OS_LOG_TYPE_ERROR, "%s:%d: invalid data id %d max %u %p %s", __s, 0x32u);
  }

  v37 = __error();
  result = 0;
  *v37 = v35;
  return result;
}

uint64_t LegacyHash(unsigned __int16 *a1, unint64_t a2)
{
  v2 = 0;
  if (a1 && a2 >= 1)
  {
    v3 = a2 & 3;
    if (a2 >= 4)
    {
      v4 = (a2 >> 2) + 1;
      do
      {
        v5 = ((a2 + *a1) << 16) ^ (a1[1] << 11) ^ (a2 + *a1);
        a1 += 2;
        LODWORD(a2) = v5 + (v5 >> 11);
        --v4;
      }

      while (v4 > 1);
    }

    if (v3 > 1)
    {
      if (v3 == 2)
      {
        v7 = (a2 + *a1) ^ ((a2 + *a1) << 11);
        LODWORD(a2) = v7 + (v7 >> 17);
      }

      else
      {
        v8 = (*(a1 + 2) << 18) ^ ((a2 + *a1) << 16) ^ (a2 + *a1);
        LODWORD(a2) = v8 + (v8 >> 11);
      }
    }

    else if (v3)
    {
      v6 = (a2 + *a1) ^ ((a2 + *a1) << 10);
      LODWORD(a2) = v6 + (v6 >> 1);
    }

    v9 = (a2 ^ (8 * a2)) + ((a2 ^ (8 * a2)) >> 5);
    v10 = (v9 ^ (16 * v9)) + ((v9 ^ (16 * v9)) >> 17);
    return (v10 ^ (v10 << 25)) + ((v10 ^ (v10 << 25)) >> 6);
  }

  return v2;
}

uint64_t commonHash(unsigned int a1, uint64_t a2)
{
  v2 = -1759636613;
  if ((a1 & 0x80000000) == 0)
  {
    v3 = a1;
  }

  else
  {
    v3 = a1 + 3;
  }

  v4 = (a2 + (v3 & 0xFFFFFFFC));
  if (a1 + 3 >= 7)
  {
    v7 = -(v3 >> 2);
    v8 = -1789642873;
    v9 = 718793509;
    do
    {
      v8 = 5 * v8 + 2071795100;
      v9 = 5 * v9 + 1808688022;
      HIDWORD(v10) = v8 * *&v4[4 * v7];
      LODWORD(v10) = HIDWORD(v10);
      v11 = (v10 >> 21) * v9;
      HIDWORD(v10) = v2;
      LODWORD(v10) = v2;
      v2 = v11 ^ (5 * (v10 >> 19) + 1390208809);
    }

    while (!__CFADD__(v7++, 1));
    v6 = 5 * v8 + 2071795100;
    v5 = 5 * v9 + 1808688022;
  }

  else
  {
    v5 = 1107688271;
    v6 = 1713515327;
  }

  v13 = 0;
  if ((a1 & 3) > 1)
  {
    if ((a1 & 3) != 2)
    {
      v13 = v4[2] << 16;
    }

    v13 |= v4[1] << 8;
  }

  else if ((a1 & 3) == 0)
  {
    goto LABEL_17;
  }

  HIDWORD(v14) = (v13 ^ *v4) * v6;
  LODWORD(v14) = HIDWORD(v14);
  v15 = (v14 >> 21) * v5;
  HIDWORD(v14) = v2;
  LODWORD(v14) = v2;
  v2 = v15 ^ (5 * (v14 >> 19) + 1390208809);
LABEL_17:
  v16 = -1028477387 * ((-2048144789 * (v2 ^ a1)) ^ ((-2048144789 * (v2 ^ a1)) >> 13));
  return v16 ^ HIWORD(v16);
}

uint64_t data_entry_restore_32(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a2;
  v9 = a2 + 1;
  v10 = *(result + a2);
  if ((*(result + a2) & 0x80000000) == 0)
  {
    v8 = a2 + 1;
    goto LABEL_16;
  }

  if (v9 >= a3)
  {
    goto LABEL_15;
  }

  v11 = a2 + 2;
  v12 = *(result + v9);
  v13 = *(result + v9);
  if ((v12 & 0x80000000) == 0)
  {
    v10 = v10 & 0x7F | (v13 << 7);
    v8 = a2 + 2;
    goto LABEL_16;
  }

  if (v11 >= a3)
  {
    goto LABEL_15;
  }

  v14 = a2 + 3;
  v15 = *(result + v11);
  v16 = *(result + v11);
  if ((v15 & 0x80000000) == 0)
  {
    v8 = a2 + 3;
    v10 = ((v13 & 0x7F) << 7) | (v16 << 14) | v10 & 0x7F;
    goto LABEL_16;
  }

  if (v14 >= a3)
  {
    goto LABEL_15;
  }

  v17 = a2 + 4;
  v18 = *(result + v14);
  v19 = *(result + v14);
  if ((v18 & 0x80000000) == 0)
  {
    v8 = a2 + 4;
    v10 = ((v16 & 0x7F) << 14) | (v19 << 21) | ((v13 & 0x7F) << 7) | v10 & 0x7F;
    goto LABEL_16;
  }

  if (v17 >= a3)
  {
LABEL_15:
    v10 = 0;
    *a5 = 1;
  }

  else
  {
    v20 = *(result + v17);
    if (v20 < 0)
    {
      data_entry_restore_32_cold_1(result, a2, a3, a4, a5, a6, a7, a8);
    }

    v8 = a2 + 5;
    v10 = ((v19 & 0x7F) << 21) | (v20 << 28) | ((v16 & 0x7F) << 14) | ((v13 & 0x7F) << 7) | v10 & 0x7F;
  }

LABEL_16:
  *a4 = v10;
  if (v8 + v10 <= a3)
  {
    *(a4 + 8) = result + v8;
  }

  else
  {
    *a5 = 1;
  }

  return result;
}

void si_analytics_log(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  v8[0] = 0;
  va_copy(&v8[1], va);
  vasprintf(v8, "%s:%u: failed assertion '%s' %s readVInt32_boundschecked: exceeds max size for uint32_t", va);
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    si_analytics_log_cold_1(v8);
  }

  free(v8[0]);
}

uint64_t _data_map32_grow(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  if (*(a1 + 1456))
  {
    return 0;
  }

  v7 = *(a1 + 220);
  if (v7 >= *(a1 + 1360))
  {
    v8 = (*MEMORY[0x277D85FA0] + 4 * (v7 + 1) - 1) & -*MEMORY[0x277D85FA0];
    if (fd_truncate(*(a1 + 1336), v8) == -1)
    {
      goto LABEL_23;
    }

    *(a1 + 1348) = v8;
    v9 = *(a1 + 1344);
    if (v8 > v9)
    {
      v10 = (2 * v9);
      munmap(*(a1 + 1352), v9);
      *(a1 + 1344) = 0;
      v11 = fd_mmap(*(a1 + 1336), v10, 3, 1, 0);
      *(a1 + 1352) = v11;
      if (v11 == -1)
      {
        goto LABEL_23;
      }

      *(a1 + 1344) = v10;
    }

    *(a1 + 1360) = v8 >> 2;
    *a3 |= 2u;
    v7 = *(a1 + 220);
  }

  v12 = v7 - *(a1 + 1396);
  if (v12 >= 2 * *(a1 + 1392) / 3u || v12 < 2 * *(a1 + 1400))
  {
    if (!_data_map32_rehash(a1))
    {
      goto LABEL_23;
    }

    *a3 |= 4u;
  }

  v13 = a2 + *(a1 + 1328) + 8;
  if (v13 < *(a1 + 1316))
  {
    return 1;
  }

  v14 = (v13 + *MEMORY[0x277D85FA0] - 1) & -*MEMORY[0x277D85FA0];
  if (fd_truncate(*(a1 + 1304), v14) != -1)
  {
    *(a1 + 1316) = v14;
    v15 = *(a1 + 1312);
    if (v14 <= v15)
    {
LABEL_21:
      *a3 |= 1u;
      return 1;
    }

    v16 = (2 * v15);
    v17 = *(a1 + 1408);
    if (v17)
    {
      v17(*(a1 + 1424), *(a1 + 1320));
    }

    else
    {
      munmap(*(a1 + 1320), *(a1 + 1312));
    }

    *(a1 + 1312) = 0;
    v18 = fd_mmap(*(a1 + 1304), v16, 3, 1, 0);
    *(a1 + 1320) = v18;
    if (v18 != -1)
    {
      *(a1 + 1312) = v16;
      goto LABEL_21;
    }
  }

LABEL_23:
  result = 0;
  if (!*(a1 + 1456))
  {
    *(a1 + 1456) = 1;
  }

  return result;
}

void OUTLINED_FUNCTION_2(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0x12u);
}

void OUTLINED_FUNCTION_5(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0x18u);
}

void OUTLINED_FUNCTION_9(os_unfair_lock_s *a1)
{
  v2 = a1 + 359;

  os_unfair_lock_lock(v2);
}

char *OUTLINED_FUNCTION_10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  v26 = *(v24 + 1272);

  return fd_name(v26, va, 0x100uLL);
}

uint64_t OUTLINED_FUNCTION_11()
{

  return _SILogForLogForCategory(0);
}

uint64_t si_get_token_info(uint64_t result, int a2, uint64_t a3)
{
  v49 = *MEMORY[0x277D85DE8];
  if (a2 <= 1043)
  {
    v5 = result;
    bzero(&v47, 0x415uLL);
    if (!a2)
    {
      goto LABEL_14;
    }

    v13 = 0;
    do
    {
      *(&v47 + v13) = si_tcmr[*(v5 + v13)];
      ++v13;
    }

    while (a2 != v13);
    *(&v47 + a2) = 0;
    if (a2 >= 2 && v47 - 1 <= 3)
    {
      if (v47 > 2u)
      {
        if (v47 == 3)
        {
          v15 = 32;
        }

        else
        {
          v15 = 64;
        }

        v26 = 1;
      }

      else if (v47 == 1)
      {
        v14 = 1;
        if (v48 == 2)
        {
          v14 = 2;
        }

        v15 = 4 * (v48 == 2);
        if (*(&v47 + (a2 - 1)) == 1 && *(&v47 + (a2 - 2)) == 1)
        {
          v16 = 1;
          goto LABEL_15;
        }

        v26 = v14;
      }

      else
      {
        v15 = 16;
        v26 = 1;
      }

      v29 = v26 + 1;
      v16 = *(&v47 + v26);
      if (*(&v47 + v26) < 0)
      {
        v14 = v26 + 2;
        v30 = *(&v47 + v29);
        v31 = *(&v47 + v29);
        if (v30 < 0)
        {
          v32 = v26 + 3;
          v33 = *(&v47 + v14);
          v34 = v33;
          if (v33 < 0)
          {
            v14 = v26 | 4;
            v36 = *(&v47 + v32);
            v37 = *(&v47 + v32);
            if (v36 < 0)
            {
              v46 = *(&v47 + v14);
              if (v46 < 0)
              {
                si_get_token_info_cold_1(v6, v7, v8, v16, v9, v10, v11, v12);
              }

              v14 = v26 + 5;
              v38 = ((v37 & 0x7F) << 21) | (v46 << 28) | ((v34 & 0x7F) << 14);
            }

            else
            {
              v38 = ((v34 & 0x7F) << 14) | (v37 << 21);
            }

            v35 = v38 & 0xFFFFC000 | ((v31 & 0x7F) << 7) | v16 & 0x7F;
          }

          else
          {
            v35 = ((v31 & 0x7F) << 7) | (v33 << 14) | (v16 & 0x7F);
            v14 = v32;
          }

          v16 = v35;
        }

        else
        {
          v16 = v16 & 0x7F | (v31 << 7);
        }
      }

      else
      {
        v14 = v26 + 1;
      }
    }

    else
    {
LABEL_14:
      v14 = 0;
      v15 = 0;
      v16 = 0;
    }

LABEL_15:
    v17 = (&v47 + v14);
    v18 = &v47 + a2 - 1;
    v19 = *v18;
    if (v19 == 3)
    {
      v20 = v15 | 2;
    }

    else
    {
      v20 = v15;
    }

    if (v19 <= 5)
    {
      if (v18 <= v17)
      {
        if (v19 == 1)
        {
          goto LABEL_29;
        }
      }

      else
      {
        v21 = a2 - v14;
        v22 = 1;
        v23 = &v47 + a2 - 1;
        while (1)
        {
          v24 = *--v23;
          if (v24 > 5)
          {
            break;
          }

          ++v22;
          v18 = v23;
          if (v23 <= v17)
          {
            v18 = &v47 + v14;
            goto LABEL_27;
          }
        }

        v21 = v22;
LABEL_27:
        if (*v18 == 1)
        {
          if (v21 != 1)
          {
            if (v16 || v21 < 3 || v18[2] != 5)
            {
              v28 = v18;
            }

            else
            {
              v27 = v18[1];
              if (v27 > 3)
              {
                if (v27 == 4)
                {
                  v20 = v20 | 0x200;
                }

                else if (v27 == 5)
                {
                  v20 = v20 | 0x400;
                }
              }

              else if (v27 == 2)
              {
                v20 = v20 | 0x80;
              }

              else if (v27 == 3)
              {
                v20 = v20 | 0x100;
              }

              v28 = v18 + 3;
              v21 -= 3;
            }

            if (v21 >= 2)
            {
              v39 = v28[1];
              v40 = v39 - 4;
              if (v16 <= 1)
              {
                v41 = 1;
              }

              else
              {
                v41 = v16;
              }

              v42 = v20 | 8;
              if (v39 != 2)
              {
                v42 = v20;
              }

              v43 = v39 == 1;
              if (v39 == 1)
              {
                v44 = v20;
              }

              else
              {
                v44 = v42;
              }

              if (v43)
              {
                v45 = v41;
              }

              else
              {
                v45 = v16;
              }

              if (v40 >= 2)
              {
                v20 = v44;
              }

              else
              {
                v20 = v20 | 1;
              }

              if (v40 >= 2)
              {
                v16 = v45;
              }

              else
              {
                v16 = v41;
              }
            }

            goto LABEL_30;
          }

LABEL_29:
          v20 = v20 | 1;
LABEL_30:
          v25 = v18 - v17;
          *v18 = 0;
          return (*(a3 + 16))(a3, v17, v25, v16, v20);
        }
      }
    }

    v25 = a2 - v14;
    return (*(a3 + 16))(a3, v17, v25, v16, v20);
  }

  return result;
}

void __message_assert_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  v11 = *MEMORY[0x277D85DE8];
  v8[0] = 0;
  va_copy(&v8[1], va);
  vasprintf(v8, "%s:%u: failed assertion '%s' %s readVInt32: exceeds max size for uint32_t", va);
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v10 = v8[0];
    _os_log_error_impl(&dword_26B7AA000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s", buf, 0xCu);
  }

  free(v8[0]);
}

void *si_calendar_retain()
{
  result = OSAtomicDequeue(&s_si_calendar_head, 0);
  if (!result)
  {
    si_calendar_retain_cold_1(&v1);
    return v1;
  }

  return result;
}

CFTimeZoneRef __si_calendar_retain_block_invoke()
{
  _MergedGlobals = CFTimeZoneCopySystem();
  result = CFTimeZoneCreateWithTimeIntervalFromGMT(*MEMORY[0x277CBECE8], 0.0);
  qword_2804234E8 = result;
  return result;
}

uint64_t si_calendar_get_cfcalendar(uint64_t result, unsigned int a2)
{
  if (result)
  {
    return *(result + 8 * a2 + 8);
  }

  return result;
}

uint64_t si_calendar_get_cftimezone(uint64_t result, unsigned int a2)
{
  if (result)
  {
    return *(result + 8 * a2 + 24);
  }

  return result;
}

uint64_t _expandFunctions(uint64_t a1, char *a2, size_t a3, uint64_t a4, uint64_t a5, CFAbsoluteTime a6)
{
  v125 = *MEMORY[0x277D85DE8];
  v123 = 0.0;
  *a2 = 0;
  if (strncmp(a1, "time.", 5uLL))
  {
LABEL_2:
    *a2 = 36;
    strlcat(a2, a1, a3);
    return 0;
  }

  if (!strncmp((a1 + 5), "absolute(", 9uLL))
  {
    *at = a1 + 14;
    v123 = strtod((a1 + 14), at);
    if (*at == a1 + 14)
    {
      goto LABEL_77;
    }

    goto LABEL_205;
  }

  if (!strncmp((a1 + 5), "iso(", 4uLL))
  {
    v15 = 0;
    v16 = a1 + 9;
    while (*(v16 + v15) && *(v16 + v15) != 41)
    {
      ++v15;
    }

    if ((v15 + 9) < 0xA)
    {
      v18 = (a1 + 9);
    }

    else
    {
      v17 = v15;
      v18 = (a1 + 9);
      while (1)
      {
        v19 = *v18;
        v20 = v19 > 0x20;
        v21 = (1 << v19) & 0x100000600;
        if (v20 || v21 == 0)
        {
          break;
        }

        ++v18;
        if (!--v17)
        {
          goto LABEL_77;
        }
      }
    }

    v27 = v16 + v15;
    if (v27 == v18)
    {
      goto LABEL_77;
    }

    v28 = *v18;
    if (v28 == 39)
    {
      v29 = v18 + 1;
      v30 = v18 + 1;
      if ((v18 + 1) < v27)
      {
        v31 = a1 + v15 + 9;
        v33 = a1 - v18 + v15 + 8;
        v30 = v18 + 1;
        while (*v30 != 39)
        {
          ++v30;
          if (!--v33)
          {
LABEL_51:
            v30 = v31;
            break;
          }
        }
      }
    }

    else
    {
      if (v28 != 34)
      {
        v34 = a1 - v18 + v15 + 9;
        v29 = v18;
        goto LABEL_55;
      }

      v29 = v18 + 1;
      v30 = v18 + 1;
      if ((v18 + 1) < v27)
      {
        v31 = a1 + v15 + 9;
        v32 = a1 - v18 + v15 + 8;
        v30 = v18 + 1;
        while (*v30 != 34)
        {
          ++v30;
          if (!--v32)
          {
            goto LABEL_51;
          }
        }
      }
    }

    if (v27 == v30)
    {
      goto LABEL_77;
    }

    v34 = v30 - v29;
LABEL_55:
    if (!v34)
    {
      goto LABEL_77;
    }

    v35 = &v29[v34];
    if (v34 < 1)
    {
      v45 = 0;
      v43 = v29;
    }

    else
    {
      v36 = *v29;
      v37 = v36 - 48;
      v38 = 10 * v36 - 480;
      if (v37 >= 0xA)
      {
        v38 = 0;
      }

      v39 = v29[1] - 48;
      if (v39 >= 0xA)
      {
        v39 = 0;
      }

      v40 = v38 + v39;
      v41 = v29[2] - 48;
      if (v41 >= 0xA)
      {
        v41 = 0;
      }

      v42 = v41 + 10 * v40;
      v43 = v29 + 4;
      v44 = v29[3] - 48;
      if (v44 >= 0xA)
      {
        v44 = 0;
      }

      v45 = v44 + 10 * v42;
    }

    if (v43 < v35 && *v43 == 45)
    {
      ++v43;
    }

    if (v43 >= v35)
    {
      v62 = 0;
    }

    else
    {
      v57 = *v43;
      v58 = v57 - 48;
      v59 = 10 * v57 + 32;
      if (v58 >= 0xA)
      {
        v59 = 0;
      }

      v60 = v43[1];
      v43 += 2;
      v61 = v60 - 48;
      if (v61 >= 0xA)
      {
        LOBYTE(v61) = 0;
      }

      v62 = (v61 + v59);
    }

    if (v43 < v35 && *v43 == 45)
    {
      ++v43;
    }

    if (v43 >= v35)
    {
      v68 = 0;
    }

    else
    {
      v63 = *v43;
      v64 = v63 - 48;
      v65 = 10 * v63 + 32;
      if (v64 >= 0xA)
      {
        v65 = 0;
      }

      v66 = v43[1];
      v43 += 2;
      v67 = v66 - 48;
      if (v67 >= 0xA)
      {
        LOBYTE(v67) = 0;
      }

      v68 = (v67 + v65);
    }

    v69 = 0.0;
    if (v43 >= v35)
    {
      v70 = 0;
      v78 = 0;
      v79 = 0;
      v73 = 0;
      goto LABEL_200;
    }

    v70 = 0;
    v72 = (v43 + 1);
    v71 = *v43;
    v73 = v71 == 90;
    if ((v71 - 32) > 0x3A || ((1 << (v71 - 32)) & 0x410000000000001) == 0)
    {
      v78 = 0;
      v79 = 0;
      v73 = 0;
      goto LABEL_200;
    }

    if (v72 >= v35)
    {
      v70 = 0;
    }

    else
    {
      v74 = v43[1];
      v75 = v74 - 48;
      v76 = 10 * v74 + 32;
      if (v75 >= 0xA)
      {
        v76 = 0;
      }

      v72 = (v43 + 3);
      v77 = v43[2] - 48;
      if (v77 >= 0xA)
      {
        LOBYTE(v77) = 0;
      }

      v70 = v77 + v76;
    }

    if (v72 < v35)
    {
      v82 = (v72 + 1);
      if (*v72 == 58)
      {
        if (v82 >= v35)
        {
          v78 = 0;
        }

        else
        {
          v83 = *(v72 + 1);
          v84 = v83 - 48;
          v85 = 10 * v83 + 32;
          if (v84 >= 0xA)
          {
            v85 = 0;
          }

          v82 = (v72 + 3);
          v86 = *(v72 + 2) - 48;
          if (v86 >= 0xA)
          {
            LOBYTE(v86) = 0;
          }

          v78 = v86 + v85;
        }

        if (v82 < v35)
        {
          v72 = (v82 + 1);
          if (*v82 == 58)
          {
            v88 = v82[1];
            v89 = v88 - 48;
            v90 = 10 * v88 + 32;
            if (v89 >= 0xA)
            {
              v90 = 0;
            }

            v72 = (v82 + 3);
            v91 = v82[2] - 48;
            if (v91 >= 0xA)
            {
              LOBYTE(v91) = 0;
            }

            v79 = v91 + v90;
            goto LABEL_155;
          }

          goto LABEL_131;
        }
      }

      else
      {
        v78 = 0;
      }

      v79 = 0;
      v72 = v82;
      goto LABEL_155;
    }

    v78 = 0;
LABEL_131:
    v79 = 0;
LABEL_155:
    if (v72 >= v35)
    {
      v96 = 0;
    }

    else if (*v72 == 32)
    {
      v92 = &v29[v34];
      v93 = (v72 + 1);
      v94 = &v92[~v72];
      while (1)
      {
        v95 = v93;
        if (!v94)
        {
          break;
        }

        ++v93;
        --v94;
        if (*v95 != 32)
        {
          v92 = v95;
          break;
        }
      }

      v96 = v95 < v35;
      v72 = v92;
    }

    else
    {
      v96 = 1;
    }

    v97 = v71 == 84 && v96;
    if (v71 == 32 || v97)
    {
      v98 = (v72 + 1);
      v99 = *v72;
      v73 = v99 == 90;
      if (v99 != 90)
      {
        v98 = v72;
      }

      v100 = *v98;
      if (v100 == 45)
      {
        v101 = v98 + 1;
      }

      else
      {
        v101 = v98;
      }

      if (v100 == 43)
      {
        v102 = v98 + 1;
      }

      else
      {
        v102 = v101;
      }

      v103 = v100 != 43 && v100 == 45;
      if (v102 < v35)
      {
        v104 = *v102;
        v105 = v104 - 48;
        v106 = 10 * v104 + 32;
        if (v105 >= 0xA)
        {
          v106 = 0;
        }

        v107 = v102 + 2;
        v108 = v102[1] - 48;
        if (v108 >= 0xA)
        {
          LOBYTE(v108) = 0;
        }

        v109 = v108 + v106;
        if (v107 < v35 && *v107 == 58)
        {
          v110 = v102[3];
          v111 = v110 - 48;
          v112 = 10 * v110 + 32;
          if (v111 >= 0xA)
          {
            v112 = 0;
          }

          v113 = v102[4] - 48;
          if (v113 >= 0xA)
          {
            LOBYTE(v113) = 0;
          }

          v114 = (v113 + v112);
        }

        else
        {
          v114 = 0;
        }

        v115 = !v103;
        if (v103)
        {
          v116 = 3600;
        }

        else
        {
          v116 = -3600;
        }

        if (v115)
        {
          v117 = -60;
        }

        else
        {
          v117 = 60;
        }

        v69 = (v116 * v109 + v114 * v117);
        v73 = 1;
      }
    }

LABEL_200:
    *at = 0;
    if (a4)
    {
      v118 = *(a4 + 8 * v73 + 8);
    }

    else
    {
      v118 = 0;
    }

    if (CFCalendarComposeAbsoluteTime(v118, at, "yMdHms", v45, v62, v68, v70, v78, v79))
    {
      v123 = v69 + *at;
      goto LABEL_205;
    }

LABEL_77:
    if (*a2)
    {
      return 0;
    }

    goto LABEL_2;
  }

  v121 = 0;
  v122 = 0;
  v120 = 0;
  *at = a6;
  pthread_mutex_lock(&_expandFunctions_expand_mutex);
  if (_expandFunctions_once != -1)
  {
    _expandFunctions_cold_1();
  }

  if (!CFCalendarDecomposeAbsoluteTime(_expandFunctions_calendar, a6, "yMdHms", &v121, &v120 + 4, &v120, &v122 + 4, &v122, &v121 + 4))
  {
    goto LABEL_73;
  }

  if (*(a1 + 5) != 110 || *(a1 + 6) != 111 || *(a1 + 7) != 119)
  {
    if (!strncmp((a1 + 5), "today", 5uLL))
    {
      v23 = 0;
      v24 = 0;
      v25 = 0;
      v13 = (a1 + 10);
      v122 = 0;
      HIDWORD(v121) = 0;
      v14 = 100;
      v26 = v120;
      goto LABEL_68;
    }

    if (!strncmp((a1 + 5), "yesterday", 9uLL))
    {
      v23 = 0;
      v24 = 0;
      v25 = 0;
      v13 = (a1 + 14);
      v122 = 0;
      HIDWORD(v121) = 0;
      v26 = (v120 - 1);
    }

    else if (!strncmp((a1 + 5), "two_days_ago", 0xCuLL))
    {
      v23 = 0;
      v24 = 0;
      v25 = 0;
      v13 = (a1 + 17);
      v122 = 0;
      HIDWORD(v121) = 0;
      v26 = (v120 - 2);
    }

    else
    {
      if (strncmp((a1 + 5), "three_days_ago", 0xEuLL))
      {
        if (!strncmp((a1 + 5), "this_week", 9uLL))
        {
          v13 = (a1 + 14);
          v122 = 0;
          HIDWORD(v121) = 0;
          OrdinalityOfUnit = CFCalendarGetOrdinalityOfUnit(_expandFunctions_calendar, 0x10uLL, 0x1000uLL, a6);
          v26 = (v120 - OrdinalityOfUnit + 1);
          LODWORD(v120) = v120 - OrdinalityOfUnit + 1;
          v24 = v122;
          v25 = HIDWORD(v122);
          v14 = 119;
          v23 = HIDWORD(v121);
        }

        else if (!strncmp((a1 + 5), "this_month", 0xAuLL))
        {
          v23 = 0;
          v24 = 0;
          v25 = 0;
          v13 = (a1 + 15);
          v122 = 0;
          HIDWORD(v121) = 0;
          v26 = 1;
          LODWORD(v120) = 1;
          v14 = 77;
        }

        else
        {
          if (strncmp((a1 + 5), "this_year", 9uLL))
          {
            goto LABEL_73;
          }

          v23 = 0;
          v24 = 0;
          v25 = 0;
          v122 = 0;
          v13 = (a1 + 14);
          HIDWORD(v121) = 0;
          v26 = 1;
          v120 = 0x100000001;
          v14 = 89;
        }

LABEL_68:
        if (CFCalendarComposeAbsoluteTime(_expandFunctions_calendar, at, "yMdHms", v121, HIDWORD(v120), v26, v25, v24, v23))
        {
          goto LABEL_69;
        }

LABEL_73:
        pthread_mutex_unlock(&_expandFunctions_expand_mutex);
LABEL_74:
        v49 = *__error();
        v50 = _SILogForLogForCategory(1);
        v51 = dword_2804230D4 < 3;
        if (os_log_type_enabled(v50, (dword_2804230D4 < 3)))
        {
          *at = 136315138;
          *&at[4] = a1;
          _os_log_impl(&dword_26B7AA000, v50, v51, "*warn* failed to parse %s", at, 0xCu);
        }

        *__error() = v49;
        goto LABEL_77;
      }

      v23 = 0;
      v24 = 0;
      v25 = 0;
      v13 = (a1 + 19);
      v122 = 0;
      HIDWORD(v121) = 0;
      v26 = (v120 - 3);
    }

    LODWORD(v120) = v26;
    v14 = 100;
    goto LABEL_68;
  }

  v13 = (a1 + 8);
  v14 = 115;
LABEL_69:
  if (*v13 == 40)
  {
    v47 = v13[1];
    v46 = v13 + 1;
    if (v47 != 41)
    {
      v119 = v46;
      v52 = strtod(v46, &v119);
      if (v119 == v46)
      {
LABEL_144:
        pthread_mutex_unlock(&_expandFunctions_expand_mutex);
        goto LABEL_205;
      }

      v53 = v52;
      v54 = parseTimeUnit(&v119, v14);
      if (v54 <= 103)
      {
        if (v54 == 77)
        {
          HIDWORD(v120) += v53;
          goto LABEL_71;
        }

        if (v54 == 89)
        {
          LODWORD(v121) = v121 + v53;
          goto LABEL_71;
        }

        if (v54 != 100)
        {
          goto LABEL_71;
        }

        v55 = *at;
        v81 = 86400;
      }

      else if (v54 > 114)
      {
        if (v54 != 119)
        {
          if (v54 != 115)
          {
            goto LABEL_71;
          }

          v55 = *at;
          v87 = v53;
          goto LABEL_143;
        }

        v55 = *at;
        v81 = 604800;
      }

      else
      {
        if (v54 != 104)
        {
          if (v54 != 109)
          {
            goto LABEL_71;
          }

          v55 = *at;
          v56 = 60 * v53;
          goto LABEL_142;
        }

        v55 = *at;
        v81 = 3600;
      }

      v56 = v53 * v81;
LABEL_142:
      v87 = v56;
LABEL_143:
      v123 = v55 + v87;
      goto LABEL_144;
    }
  }

LABEL_71:
  v48 = CFCalendarComposeAbsoluteTime(_expandFunctions_calendar, &v123, "yMdHms", v121, HIDWORD(v120), v120, HIDWORD(v122), v122, HIDWORD(v121));
  pthread_mutex_unlock(&_expandFunctions_expand_mutex);
  if (!v48)
  {
    goto LABEL_74;
  }

LABEL_205:
  (*(a5 + 16))(a5, a2, a3, v123);
  if (dword_2804230D4 >= 5)
  {
    _expandFunctions_cold_2(&v123, a2, a1);
  }

  return 0x10000;
}

uint64_t __expandFunctions_block_invoke(int a1, char *__str, size_t __size, double a4)
{
  if (trunc(a4) == a4)
  {
    return snprintf(__str, __size, "%lld");
  }

  else
  {
    return snprintf(__str, __size, "%f");
  }
}

uint64_t expandFunctionsISO8601(uint64_t a1, char *a2, size_t a3, uint64_t a4, CFAbsoluteTime a5)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 0x40000000;
  v6[2] = __expandFunctionsISO8601_block_invoke;
  v6[3] = &__block_descriptor_tmp_9;
  v6[4] = a4;
  return _expandFunctions(a1, a2, a3, a4, v6, a5);
}

uint64_t __expandFunctionsISO8601_block_invoke(uint64_t a1, char *a2, size_t a3, CFAbsoluteTime a4)
{
  v6 = *(a1 + 32);
  if (v6)
  {
    v7 = *(v6 + 16);
  }

  else
  {
    v7 = 0;
  }

  v10 = 0;
  v11 = 0;
  v9 = 0;
  CFCalendarDecomposeAbsoluteTime(v7, a4, "yMdHms", &v10, &v9 + 4, &v9, &v11 + 4, &v11, &v10 + 4);
  return snprintf(a2, a3, "%04i-%02i-%02iT%02i:%02i:%02iZ", v10, HIDWORD(v9), v9, HIDWORD(v11), v11, HIDWORD(v10));
}

CFCalendarRef ___expandFunctions_block_invoke()
{
  result = CFCalendarCreateWithIdentifier(*MEMORY[0x277CBECE8], *MEMORY[0x277CBEE80]);
  _expandFunctions_calendar = result;
  return result;
}

uint64_t parseTimeUnit(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v5 = *a1 + 1;
  result = **a1;
  *a1 = v5;
  if (result <= 103)
  {
    if (result != 77 && result != 89 && result != 100)
    {
      goto LABEL_12;
    }
  }

  else
  {
    if (result <= 114)
    {
      if (result == 104 || result == 109)
      {
        return result;
      }

LABEL_12:
      *a1 = v3;
      return a2;
    }

    if (result != 115 && result != 119)
    {
      goto LABEL_12;
    }
  }

  return result;
}

uint64_t unicode_combinable(unsigned int a1)
{
  if (a1 < 0x300)
  {
    return 0;
  }

  v1 = __CFUniCharCombiningBitmap[a1 >> 8];
  if (!__CFUniCharCombiningBitmap[a1 >> 8])
  {
    return 0;
  }

  if (v1 == 255)
  {
    return 1;
  }

  return (__CFUniCharCombiningBitmap[32 * v1 + 224 + (a1 >> 3)] >> (a1 & 7)) & 1;
}

uint64_t unicode_decomposeable(unsigned int a1)
{
  if (a1 < 0xC0)
  {
    return 0;
  }

  v1 = __CFUniCharDecomposableBitmap[a1 >> 8];
  if (!__CFUniCharDecomposableBitmap[a1 >> 8])
  {
    return 0;
  }

  if (v1 == 255)
  {
    return 1;
  }

  return (__CFUniCharDecomposableBitmap[32 * v1 + 224 + (a1 >> 3)] >> (a1 & 7)) & 1;
}

uint64_t utf8_encodelen(unsigned __int16 *a1, unint64_t a2, int a3, char a4)
{
  if (a2 < 2)
  {
    return 0;
  }

  v4 = 0;
  v5 = a2 >> 1;
  if (a3)
  {
    v6 = a3;
  }

  else
  {
    v6 = 95;
  }

  do
  {
    v8 = *a1++;
    v7 = v8;
    v9 = bswap32(v8) >> 16;
    if (a4)
    {
      v7 = v9;
    }

    v10 = v7;
    if (!v7)
    {
      v7 = 9216;
    }

    if (v10 == 47)
    {
      v7 = v6;
    }

    if (v7 >= 0x80u)
    {
      if (v7 >= 0x800u)
      {
        if (v7 >> 11 == 27)
        {
          v11 = 2;
        }

        else
        {
          v11 = 3;
        }
      }

      else
      {
        v11 = 2;
      }
    }

    else
    {
      v11 = 1;
    }

    v4 += v11;
    --v5;
  }

  while (v5);
  return v4;
}

uint64_t utf8_encodestr(unsigned __int16 *a1, unint64_t a2, _BYTE *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v31[2] = *MEMORY[0x277D85DE8];
  v31[0] = 0;
  v31[1] = 0;
  if (a2 < 2)
  {
    result = 0;
    v8 = a3;
    goto LABEL_40;
  }

  result = 0;
  v10 = 0;
  v11 = 0;
  v12 = &a3[a5 - ((a7 & 2) == 0)];
  v13 = a2 >> 1;
  v8 = a3;
  while (1)
  {
    while (1)
    {
      --v13;
      if (v10 < 1)
      {
        v16 = *a1++;
        v14 = v16;
        v17 = bswap32(v16) >> 16;
        if (a7)
        {
          v14 = v17;
        }

        if ((a7 & 4) != 0)
        {
          v18 = v14;
          if (v14 >= 0xC0u)
          {
            v19 = __CFUniCharDecomposableBitmap[v14 >> 8];
            if (!__CFUniCharDecomposableBitmap[v14 >> 8] || v19 != 255 && ((__CFUniCharDecomposableBitmap[32 * v19 + 224 + (v14 >> 3)] >> (v14 & 7)) & 1) == 0)
            {
              goto LABEL_18;
            }

            v30 = result;
            v20 = a4;
            v21 = a3;
            v22 = a6;
            v23 = a7;
            v24 = unicode_decompose(v14, v31);
            a7 = v23;
            a6 = v22;
            a3 = v21;
            a4 = v20;
            v10 = v24 - 1;
            result = v30;
            v13 += v10;
            v14 = LOWORD(v31[0]);
            v11 = v31 + 1;
          }
        }
      }

      else
      {
        v15 = *v11++;
        v14 = v15;
        --v10;
      }

      if (!v14)
      {
        LOBYTE(v14) = 0;
        LOBYTE(v25) = 2;
        LOBYTE(v26) = -112;
        goto LABEL_23;
      }

      if (v14 == 47)
      {
        v14 = a6;
        if (!a6)
        {
          break;
        }
      }

      v18 = v14;
      if (v14 < 0x80u)
      {
        goto LABEL_35;
      }

LABEL_18:
      if (v14 > 0x7FFu)
      {
        v26 = v14 >> 6;
        v25 = v14 >> 12;
        if (v14 >> 10 == 54 && v13)
        {
          v27 = *a1;
          v28 = bswap32(v27) >> 16;
          if (a7)
          {
            LOWORD(v27) = v28;
          }

          if (v27 >> 10 != 55)
          {
            LOBYTE(v25) = 13;
            goto LABEL_23;
          }

          if (v8 + 3 >= v12)
          {
            goto LABEL_39;
          }

          v29 = (v18 << 10) + v27 - 56613888;
          --v13;
          ++a1;
          *v8 = (v29 >> 18) | 0xF0;
          v8[1] = (v29 >> 12) & 0x3F | 0x80;
          v8[2] = (v29 >> 6) & 0x3F | 0x80;
          v8[3] = v27 & 0x3F | 0x80;
          v8 += 4;
          if (!v13)
          {
            goto LABEL_40;
          }
        }

        else
        {
LABEL_23:
          if (v8 + 2 >= v12)
          {
            goto LABEL_39;
          }

          *v8 = v25 | 0xE0;
          v8[1] = v26 & 0x3F | 0x80;
          v8[2] = v14 & 0x3F | 0x80;
          v8 += 3;
          if (!v13)
          {
            goto LABEL_40;
          }
        }
      }

      else
      {
        if (v8 + 1 >= v12)
        {
          goto LABEL_39;
        }

        *v8 = (v14 >> 6) | 0xC0;
        v8[1] = v14 & 0x3F | 0x80;
        v8 += 2;
        if (!v13)
        {
          goto LABEL_40;
        }
      }
    }

    LOBYTE(v14) = 95;
    result = 22;
LABEL_35:
    if (v8 >= v12)
    {
      break;
    }

    *v8++ = v14;
    if (!v13)
    {
      goto LABEL_40;
    }
  }

LABEL_39:
  result = 63;
LABEL_40:
  *a4 = v8 - a3;
  if ((a7 & 2) == 0)
  {
    *v8 = 0;
  }

  return result;
}

uint64_t unicode_decompose(__int16 a1, _WORD *a2)
{
  v2 = a1 + 21504;
  if ((a1 + 21504) > 0x2BA4u)
  {
    return unicode_recursive_decompose(a1, a2);
  }

  *a2 = ((28533 * (a1 + 21504)) >> 24) | 0x1100;
  a2[1] = v2 % 0x24Cu / 0x1C + 4449;
  if (!(v2 % 0x1Cu))
  {
    return 2;
  }

  a2[2] = (a1 + 21504) % 0x1Cu + 4519;
  return 3;
}

uint64_t utf8_decodestr(unsigned __int8 *a1, unint64_t a2, char *a3, void *a4, uint64_t a5, _DWORD *a6, char a7)
{
  v46[2] = *MEMORY[0x277D85DE8];
  *a6 = 0;
  if (!a2)
  {
    result = 0;
    v11 = a3;
    goto LABEL_64;
  }

  v9 = a2;
  v10 = &a3[a5];
  v11 = a3;
  v12 = a1;
  while (1)
  {
    v14 = *v12++;
    v13 = v14;
    if (!v14)
    {
LABEL_61:
      result = 0;
      goto LABEL_64;
    }

    --v9;
    if ((v13 & 0x80) == 0)
    {
      goto LABEL_50;
    }

    v15 = utf_extrabytes[v13 >> 3];
    if (v9 < v15)
    {
      goto LABEL_62;
    }

    v16 = utf_extrabytes[v13 >> 3];
    v9 -= v15;
    if (v16 != 3)
    {
      break;
    }

    v28 = *v12;
    if ((v28 & 0xC0) != 0x80 || (v29 = a1[2], (v29 & 0xC0) != 0x80) || (v30 = a1[3], (v30 & 0xC0) != 0x80) || (v31 = v30 + (((v28 << 6) + (v13 << 12) + v29) << 6) - 63512704, v31 >> 20))
    {
LABEL_62:
      result = 22;
      goto LABEL_64;
    }

    v32 = (v31 >> 10) | 0xFFFFD800;
    if (a7)
    {
      *v11 = bswap32(v32) >> 16;
      v33 = v11 + 2;
      if (v11 + 2 >= v10)
      {
LABEL_65:
        result = 63;
        v11 = v33;
        goto LABEL_64;
      }

      v34 = __rev16(v31 & 0x3FF | 0xDC00);
    }

    else
    {
      *v11 = v32;
      v33 = v11 + 2;
      if (v11 + 2 >= v10)
      {
        goto LABEL_65;
      }

      v34 = v31 & 0x3FF | 0xDC00;
    }

    v12 = a1 + 4;
    *(v11 + 1) = v34;
    v11 += 4;
LABEL_54:
    a1 = v12;
    if (!v9)
    {
      goto LABEL_61;
    }
  }

  if (v16 == 2)
  {
    v19 = *v12;
    if ((v19 & 0xC0) != 0x80)
    {
      goto LABEL_62;
    }

    v20 = a1[2];
    if ((v20 & 0xC0) != 0x80)
    {
      goto LABEL_62;
    }

    v21 = (v19 << 6) + (v13 << 12) + v20;
    v18 = v21 - 925824;
    if ((v21 - 925824) < 0x800)
    {
      goto LABEL_62;
    }

    v12 = a1 + 3;
    if (v18 >> 11 >= 0x1B)
    {
      result = 22;
      if (v18 < 0xE000 || (v21 & 0x3FFFFE) == 0xF207E)
      {
        goto LABEL_64;
      }
    }
  }

  else
  {
    if (v16 != 1)
    {
      goto LABEL_62;
    }

    v17 = *v12;
    if ((v17 & 0xC0) != 0x80)
    {
      goto LABEL_62;
    }

    v18 = v17 + (v13 << 6) - 12416;
    if (v18 < 0x80)
    {
      goto LABEL_62;
    }

    v12 = a1 + 2;
  }

  if ((a7 & 4) == 0)
  {
    if ((a7 & 8) != 0 && v18 >= 0x300u)
    {
      v23 = __CFUniCharCombiningBitmap[BYTE1(v18)];
      if (__CFUniCharCombiningBitmap[BYTE1(v18)])
      {
        if (v23 == 255 || ((__CFUniCharCombiningBitmap[32 * v23 + 224 + (v18 >> 3)] >> (v18 & 7)) & 1) != 0)
        {
          *a6 = 1;
          if (v11 != a3)
          {
            v24 = *(v11 - 1);
            v25 = bswap32(v24) >> 16;
            if (a7)
            {
              LOWORD(v24) = v25;
            }

            v26 = a4;
            v44 = a6;
            v27 = unicode_combine(v24, v18);
            a6 = v44;
            a4 = v26;
            if (v27)
            {
              v11 -= 2;
              v18 = v27;
            }
          }
        }
      }
    }

LABEL_47:
    if (v18 == 9216)
    {
      LODWORD(v13) = 0;
    }

    else
    {
      LODWORD(v13) = v18;
    }

LABEL_50:
    if (v11 >= v10)
    {
      goto LABEL_63;
    }

    v43 = bswap32(v13) >> 16;
    if (a7)
    {
      LOWORD(v13) = v43;
    }

    *v11 = v13;
    v11 += 2;
    goto LABEL_54;
  }

  if (v18 < 0xC0u)
  {
    goto LABEL_47;
  }

  v35 = __CFUniCharDecomposableBitmap[BYTE1(v18)];
  if (!__CFUniCharDecomposableBitmap[BYTE1(v18)] || v35 != 255 && ((__CFUniCharDecomposableBitmap[32 * v35 + 224 + (v18 >> 3)] >> (v18 & 7)) & 1) == 0)
  {
    goto LABEL_47;
  }

  v45 = a6;
  v46[0] = 0;
  v36 = a4;
  v46[1] = 0;
  v37 = unicode_decompose(v18, v46);
  if (v37 < 1)
  {
    a4 = v36;
    a6 = v45;
    goto LABEL_54;
  }

  v38 = v37;
  v39 = v46;
  a4 = v36;
  a6 = v45;
  while (1)
  {
    v41 = *v39++;
    v40 = v41;
    v42 = bswap32(v41) >> 16;
    if (a7)
    {
      v40 = v42;
    }

    *v11 = v40;
    v11 += 2;
    if (v11 >= v10)
    {
      break;
    }

    if (!--v38)
    {
      goto LABEL_54;
    }
  }

LABEL_63:
  result = 63;
LABEL_64:
  *a4 = v11 - a3;
  return result;
}

uint64_t unicode_combine(unsigned int a1, unsigned int a2)
{
  if (a2 - 4449 > 0x61)
  {
    if ((a2 - 12443) < 0xD265u)
    {
      return 0;
    }
  }

  else
  {
    if (a2 >> 1 <= 0x8BA && (a1 - 4352) <= 0x12u)
    {
      v2 = 28 * a2 + 588 * a1;
      v3 = -18076;
      return (v2 + v3);
    }

    if (a2 >> 3 >= 0x235 && ((a1 + 21504) >> 2) <= 0xAE8u)
    {
      HIDWORD(v8) = -1227133513 * a1 - 1840706560;
      LODWORD(v8) = HIDWORD(v8);
      if ((v8 >> 2) > 0x9249249)
      {
        return 0;
      }

      v2 = a1 + a2;
      v3 = -4519;
      return (v2 + v3);
    }
  }

  v5 = &__CFUniCharPrecompSourceTable;
  v6 = &unk_26B7FA428;
  while (1)
  {
    v7 = &v5[8 * ((v6 - v5) >> 4)];
    if (*v7 <= a2)
    {
      break;
    }

    v6 = v7 - 2;
LABEL_12:
    if (v5 > v6)
    {
      return 0;
    }
  }

  if (*v7 < a2)
  {
    v5 = v7 + 2;
    goto LABEL_12;
  }

  v9 = v7[1];
  if (v9)
  {
    v10 = &__CFUniCharBMPPrecompDestinationTable + 4 * v9;
    if (*v10 <= a1)
    {
      v11 = &v10[4 * HIWORD(v9) - 4];
      if (*v11 >= a1)
      {
        while (1)
        {
          v13 = &v10[4 * ((v11 - v10) >> 3)];
          v14 = *v13;
          if (v14 <= a1)
          {
            if (v14 >= a1)
            {
              return v13[1];
            }

            v10 = (v13 + 2);
          }

          else
          {
            v11 = v13 - 2;
          }

          v4 = 0;
          if (v10 > v11)
          {
            return v4;
          }
        }
      }
    }
  }

  return 0;
}

uint64_t unicode_recursive_decompose(unsigned int a1, _WORD *a2)
{
  v2 = a2;
  if ((a1 + 1201) < 0x571u)
  {
LABEL_8:
    v7 = 0;
    goto LABEL_9;
  }

  v3 = &__CFUniCharDecompositionTable;
  v4 = &unk_26B7FDE50;
  while (1)
  {
    v5 = &v3[2 * ((v4 - v3) >> 3)];
    v6 = *v5;
    if (v6 <= a1)
    {
      break;
    }

    v4 = v5 - 2;
LABEL_7:
    if (v3 > v4)
    {
      goto LABEL_8;
    }
  }

  if (v6 < a1)
  {
    v3 = v5 + 2;
    goto LABEL_7;
  }

  v7 = v5[1];
LABEL_9:
  v8 = (v7 >> 12) & 7;
  v14 = v7 & 0xFFF;
  v9 = &__CFUniCharMultipleDecompositionTable + 2 * (v7 & 0xFFF);
  v10 = &v14;
  if (v8 != 1)
  {
    v10 = (&__CFUniCharMultipleDecompositionTable + 2 * (v7 & 0xFFF));
  }

  if ((v7 & 0x8000) == 0)
  {
    LODWORD(result) = 0;
    goto LABEL_17;
  }

  result = unicode_recursive_decompose(*v10, a2);
  if (result)
  {
    --v8;
    v12 = &v14;
    if (v8)
    {
      v12 = v9;
    }

    v10 = (v12 + 1);
    v2 += result;
LABEL_17:
    for (result = (result + v8); v8; --v8)
    {
      v13 = *v10++;
      *v2++ = v13;
    }
  }

  return result;
}

uint64_t check_and_decompose_string(unsigned __int8 *a1, unint64_t a2, unsigned __int8 **a3, unint64_t *a4)
{
  v28 = 0;
  *a3 = a1;
  *a4 = a2;
  if (!a2)
  {
    return 0;
  }

  v8 = 0;
  v29 = 0;
  v9 = a1;
  while ((*v9 & 0x80000000) == 0)
  {
LABEL_10:
    ++v8;
    ++v9;
    if (v8 >= a2)
    {
      goto LABEL_11;
    }
  }

  v27 = 0;
  v10 = utf8_byte_length_noerror_utf8_len_table[*v9 >> 4];
  if (utf8_decodestr(v9, v10, &v27, &v28, 4, &v29, 0))
  {
    return 22;
  }

  if (v27 < 0xC0u || (v11 = __CFUniCharDecomposableBitmap[v27 >> 8]) == 0 || v11 != 255 && ((__CFUniCharDecomposableBitmap[32 * v11 + 224 + (v27 >> 3)] >> (v27 & 7)) & 1) == 0)
  {
    v8 += v10 - 1;
    v9 += v10 - 1;
    goto LABEL_10;
  }

LABEL_11:
  if (v8 >= a2)
  {
    if (v8 <= a2)
    {
      return 0;
    }

    return 22;
  }

  v12 = (a2 >> 1) & 0x7FFFFFFFFFFFFFFELL;
  v13 = malloc_type_malloc(v12 + 2 * a2 + 2, 0x1000040BDFB0063uLL);
  if (v13)
  {
    v14 = 2 * a2 + v12 + 66;
    do
    {
      v15 = utf8_decodestr(a1, a2, v13, &v28, v14 - 64, &v29, 4);
      if (!v15)
      {
        break;
      }

      if (v15 == 22)
      {
        free(v13);
        return 22;
      }

      free(v13);
      v13 = malloc_type_malloc(v14, 0x1000040BDFB0063uLL);
      v14 += 64;
    }

    while (v13);
  }

  v16 = v28;
  if (v28 >= 2)
  {
    v17 = 0;
    v18 = v28 >> 1;
    v19 = v13;
    do
    {
      v21 = *v19;
      v19 += 2;
      v20 = v21;
      if (!v21)
      {
        v20 = 9216;
      }

      if (v20 >= 0x80)
      {
        if (v20 >= 0x800)
        {
          if ((v20 & 0xF800) == 0xD800)
          {
            v22 = 2;
          }

          else
          {
            v22 = 3;
          }
        }

        else
        {
          v22 = 2;
        }
      }

      else
      {
        v22 = 1;
      }

      v17 += v22;
      --v18;
    }

    while (v18);
  }

  else
  {
    v17 = 0;
  }

  v23 = malloc_type_malloc(v17 + 1, 0xE5333DECuLL);
  v24 = utf8_encodestr(v13, v16, v23, &v28, v17 + 1, 47, 4);
  if (v24)
  {
    v25 = v24;
    free(v13);
    free(v23);
    return v25;
  }

  v23[v17] = 0;
  *a3 = v23;
  *a4 = v17 + 1;
  free(v13);
  return 0;
}

uint64_t map_case(uint64_t a1)
{
  v1 = a1;
  if (a1 > 0x7F)
  {
    if ((a1 + 223) < 0x3Au || a1 < 0x587 || (a1 - 7680) <= 0x6E9u)
    {
      __key = a1;
      v3 = bsearch(&__key, &case_mapping_table, 0x57AuLL, 4uLL, case_cmp);
      if (v3)
      {
        return v3[1];
      }
    }
  }

  else
  {
    if ((a1 - 97) > 0x19)
    {
      v2 = &tolower_map;
    }

    else
    {
      v2 = &toupper_map;
    }

    return v2[a1];
  }

  return v1;
}

void get_canonical_language_identifier_for_string(char *cStr, char *a2, int a3)
{
  *a2 = 0;
  v6 = CFStringCreateWithCStringNoCopy(0, cStr, 0x8000100u, *MEMORY[0x277CBED00]);
  if (v6)
  {
    v7 = v6;
    CanonicalLanguageIdentifierFromString = CFLocaleCreateCanonicalLanguageIdentifierFromString(0, v6);
    if (CanonicalLanguageIdentifierFromString)
    {
      v9 = CanonicalLanguageIdentifierFromString;
      CFStringGetCString(CanonicalLanguageIdentifierFromString, a2, a3, 0x8000100u);
      CFRelease(v9);
    }

    CFRelease(v7);
  }

  if (!*a2)
  {

    strlcpy(a2, cStr, a3);
  }
}

ssize_t file_scanner_read(ssize_t result)
{
  v1 = (result + 16);
  *(result + 4120) = result + 16;
  *(result + 4112) = result + 16;
  if (!*(result + 4128))
  {
    v2 = result;
    result = pread(*result, v1, 0x1000uLL, *(result + 8));
    if (result == -1)
    {
      v3 = *MEMORY[0x277D85DF8];
      v4 = __error();
      v5 = *v4;
      *(v2 + 4128) = *v4;
      return fprintf(v3, "\npread error(%d) offset: 0x%llx \n", v5, *(v2 + 8));
    }

    else
    {
      *(v2 + 8) += result;
      *(v2 + 4112) = v1;
      *(v2 + 4120) = &v1[result];
      if (!result)
      {
        *(v2 + 4128) = -1;
      }
    }
  }

  return result;
}

ssize_t file_scanner_init(ssize_t result, int a2, uint64_t a3)
{
  *result = a2;
  *(result + 8) = a3;
  *(result + 4120) = result + 16;
  *(result + 4112) = result + 16;
  *(result + 4128) = 0;
  return file_scanner_read(result);
}

uint64_t file_scanner_read_vint(ssize_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 4112);
  if ((*(a1 + 4120) - v2) < 11)
  {
    v7 = 0;
    memset(v13, 0, sizeof(v13));
    while (1)
    {
      if (v2 >= *(a1 + 4120))
      {
        file_scanner_read(a1);
        v2 = *(a1 + 4112);
      }

      v8 = v2 + 1;
      *(a1 + 4112) = v2 + 1;
      v9 = *v2;
      *(v13 + v7) = v9;
      if ((v9 & 0x80000000) == 0)
      {
        break;
      }

      ++v7;
      v2 = v8;
      if (v7 == 11)
      {
        return 0;
      }
    }

    result = 0;
    if (v7 != 10)
    {
      v10 = *(a1 + 4128);
      if (!v10)
      {
        result = 0;
        v11 = v13;
        do
        {
          v12 = *v11++;
          result |= (v12 & 0x7F) << v10;
          v10 += 7;
        }

        while (v12 < 0);
      }
    }
  }

  else
  {
    v3 = 0;
    result = 0;
    v5 = v2 + 1;
    do
    {
      v6 = *(v5 - 1);
      *(a1 + 4112) = v5;
      result |= (v6 & 0x7F) << v3;
      v3 += 7;
      ++v5;
    }

    while (v6 < 0);
  }

  return result;
}

uint64_t file_scanner_read_vint32(ssize_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v22 = *MEMORY[0x277D85DE8];
  v9 = *(a1 + 4112);
  if ((*(a1 + 4120) - v9) >= 11)
  {
    result = *v9;
    if (*v9 < 0)
    {
      v15 = v9[1];
      if (v9[1] < 0)
      {
        v16 = v9[2];
        if (v9[2] < 0)
        {
          v18 = v9[3];
          if (v9[3] < 0)
          {
            v19 = v9[4];
            if (v19 < 0)
            {
              file_scanner_read_vint32_cold_1(result, a2, a3, a4, a5, a6, a7, a8);
            }

            v20 = ((v18 & 0x7F) << 21) | (v19 << 28) | ((v16 & 0x7F) << 14) | ((v15 & 0x7F) << 7) | (result & 0x7F);
            v11 = 5;
            result = v20;
            goto LABEL_22;
          }

          v17 = ((v16 & 0x7F) << 14) | (v18 << 21) | ((v15 & 0x7F) << 7) | (result & 0x7F);
          v11 = 4;
        }

        else
        {
          v17 = ((v15 & 0x7F) << 7) | (v16 << 14) | (result & 0x7F);
          v11 = 3;
        }

        result = v17;
      }

      else
      {
        result = result & 0x7F | (v15 << 7);
        v11 = 2;
      }
    }

    else
    {
      v11 = 1;
    }

LABEL_22:
    *(a1 + 4112) = &v9[v11];
    return result;
  }

  v12 = 0;
  memset(v21, 0, sizeof(v21));
  while (1)
  {
    if (v9 >= *(a1 + 4120))
    {
      file_scanner_read(a1);
      v9 = *(a1 + 4112);
    }

    v13 = (v9 + 1);
    *(a1 + 4112) = v9 + 1;
    v14 = *v9;
    *(v21 + v12) = v14;
    if ((v14 & 0x80000000) == 0)
    {
      break;
    }

    ++v12;
    v9 = v13;
    if (v12 == 11)
    {
      return 0;
    }
  }

  result = 0;
  if (v12 != 10 && !*(a1 + 4128))
  {
    result = LOBYTE(v21[0]);
    if (SLOBYTE(v21[0]) < 0)
    {
      if (SBYTE1(v21[0]) < 0)
      {
        if (SBYTE2(v21[0]) < 0)
        {
          if (SBYTE3(v21[0]) < 0)
          {
            if (SBYTE4(v21[0]) < 0)
            {
              file_scanner_read_vint32_cold_1(LOBYTE(v21[0]), a2, a3, a4, a5, a6, a7, a8);
            }

            return ((BYTE3(v21[0]) & 0x7F) << 21) | (SBYTE4(v21[0]) << 28) | ((BYTE2(v21[0]) & 0x7F) << 14) | ((BYTE1(v21[0]) & 0x7F) << 7) | v21[0] & 0x7F;
          }

          else
          {
            return ((BYTE2(v21[0]) & 0x7F) << 14) | (BYTE3(v21[0]) << 21) | ((BYTE1(v21[0]) & 0x7F) << 7) | v21[0] & 0x7F;
          }
        }

        else
        {
          return ((BYTE1(v21[0]) & 0x7F) << 7) | (BYTE2(v21[0]) << 14) | v21[0] & 0x7F;
        }
      }

      else
      {
        return v21[0] & 0x7F | (BYTE1(v21[0]) << 7);
      }
    }
  }

  return result;
}

unint64_t file_scanner_read_vint64_v2(ssize_t a1)
{
  *&v18[31] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 4120);
  v3 = *(a1 + 4112);
  if ((v2 - v3) < 11)
  {
    if (v3 >= v2)
    {
      file_scanner_read(a1);
      v3 = *(a1 + 4112);
    }

    memset(v18, 0, 31);
    v6 = v3 + 1;
    *(a1 + 4112) = v3 + 1;
    v7 = *v3;
    v17 = v7;
    if (v7 < 0)
    {
      if (v7 >= 0xC0u)
      {
        v9 = 4;
        v10 = 5;
        v11 = 6;
        v12 = 7;
        v13 = 8;
        if (v7 == 255)
        {
          v13 = 9;
        }

        if (v7 >= 0xFEu)
        {
          v12 = v13;
        }

        if (v7 >= 0xFCu)
        {
          v11 = v12;
        }

        if (v7 >= 0xF8u)
        {
          v10 = v11;
        }

        if (v7 >= 0xF0u)
        {
          v9 = v10;
        }

        if (v7 >= 0xE0u)
        {
          v8 = v9;
        }

        else
        {
          v8 = 3;
        }
      }

      else
      {
        v8 = 2;
      }

      v14 = v18;
      v15 = v8 - 1;
      do
      {
        if (v6 >= *(a1 + 4120))
        {
          file_scanner_read(a1);
          v6 = *(a1 + 4112);
        }

        *(a1 + 4112) = v6 + 1;
        *v14++ = *v6++;
        --v15;
      }

      while (v15);
    }

    v16 = &v17;
    return fp_restoreVInt64(&v16);
  }

  else
  {
    v4 = (a1 + 4112);

    return fp_restoreVInt64(v4);
  }
}

unint64_t fp_restoreVInt64(char **a1)
{
  v1 = *a1;
  v2 = **a1;
  if (**a1 < 0)
  {
    v4 = **a1;
    if (v4 > 0xBF)
    {
      if (v4 > 0xDF)
      {
        if (v4 > 0xEF)
        {
          if (v4 > 0xF7)
          {
            if (v4 > 0xFB)
            {
              if (v4 > 0xFD)
              {
                if (v4 == 255)
                {
                  v2 = *(v1 + 1);
                  v3 = 9;
                }

                else
                {
                  v2 = (v1[1] << 48) | (v1[2] << 40) | (v1[3] << 32) | (v1[4] << 24) | (v1[5] << 16) | (v1[6] << 8) | v1[7];
                  v3 = 8;
                }
              }

              else
              {
                v2 = ((v2 & 1) << 48) | (v1[1] << 40) | (v1[2] << 32) | (v1[3] << 24) | (v1[4] << 16) | (v1[5] << 8) | v1[6];
                v3 = 7;
              }
            }

            else
            {
              v2 = ((v2 & 3) << 40) | (v1[1] << 32) | (v1[2] << 24) | (v1[3] << 16) | (v1[4] << 8) | v1[5];
              v3 = 6;
            }
          }

          else
          {
            v2 = ((v2 & 7) << 32) | (v1[1] << 24) | (v1[2] << 16) | (v1[3] << 8) | v1[4];
            v3 = 5;
          }
        }

        else
        {
          v2 = ((v2 & 0xF) << 24) | (v1[1] << 16) | (v1[2] << 8) | v1[3];
          v3 = 4;
        }
      }

      else
      {
        v2 = ((v2 & 0x1F) << 16) | (v1[1] << 8) | v1[2];
        v3 = 3;
      }
    }

    else
    {
      v3 = 2;
      v2 = v1[1] | ((v2 & 0x3F) << 8);
    }
  }

  else
  {
    v3 = 1;
  }

  *a1 = &v1[v3];
  return v2;
}

uint64_t file_scanner_read_vint32_v2(ssize_t a1)
{
  *&v15[31] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 4120);
  v3 = *(a1 + 4112);
  if ((v2 - v3) < 11)
  {
    if (v3 >= v2)
    {
      file_scanner_read(a1);
      v3 = *(a1 + 4112);
    }

    memset(v15, 0, 31);
    v6 = v3 + 1;
    *(a1 + 4112) = v3 + 1;
    v7 = *v3;
    v14 = v7;
    if (v7 < 0)
    {
      v8 = 3;
      v9 = 4;
      if (v7 >= 0xF0u)
      {
        v9 = 5;
      }

      if (v7 >= 0xE0u)
      {
        v8 = v9;
      }

      if (v7 >= 0xC0u)
      {
        v10 = v8;
      }

      else
      {
        v10 = 2;
      }

      v11 = v15;
      v12 = v10 - 1;
      do
      {
        if (v6 >= *(a1 + 4120))
        {
          file_scanner_read(a1);
          v6 = *(a1 + 4112);
        }

        *(a1 + 4112) = v6 + 1;
        *v11++ = *v6++;
        --v12;
      }

      while (v12);
    }

    v13 = &v14;
    return fp_restoreVInt32(&v13);
  }

  else
  {
    v4 = (a1 + 4112);

    return fp_restoreVInt32(v4);
  }
}

uint64_t fp_restoreVInt32(char **a1)
{
  v1 = *a1;
  v2 = **a1;
  if (**a1 < 0)
  {
    if (v2 > 0xBF)
    {
      if (v2 > 0xDF)
      {
        if (v2 > 0xEF)
        {
          v2 = *(v1 + 1);
          v3 = 5;
        }

        else
        {
          v2 = ((v2 & 0xF) << 24) | (v1[1] << 16) | (v1[2] << 8) | v1[3];
          v3 = 4;
        }
      }

      else
      {
        v2 = ((v2 & 0x1F) << 16) | (v1[1] << 8) | v1[2];
        v3 = 3;
      }
    }

    else
    {
      v3 = 2;
      v2 = v1[1] | ((v2 & 0x3F) << 8);
    }
  }

  else
  {
    v3 = 1;
  }

  *a1 = &v1[v3];
  return v2;
}

size_t file_scanner_read_bytes(ssize_t a1, char *__dst, size_t __nbyte)
{
  v3 = *(a1 + 4128);
  if (!v3)
  {
    v5 = __nbyte;
    v8 = *(a1 + 4120);
    v9 = *(a1 + 4112);
    v10 = v8 - v9;
    if (v8 != v9)
    {
      if (__nbyte <= v10)
      {
        memcpy(__dst, v9, __nbyte);
        *(a1 + 4112) += v5;
        return v5;
      }

      memcpy(__dst, v9, v8 - v9);
      *(a1 + 4112) += v10;
      v5 -= v10;
    }

    if (pread(*a1, &__dst[v10], v5, *(a1 + 8)) == v5)
    {
      v3 = v5 + v10;
      *(a1 + 8) += v3;
      *(a1 + 4120) = a1 + 16;
      *(a1 + 4112) = a1 + 16;
      *(a1 + 4128) = 0;
      file_scanner_read(a1);
    }

    else
    {
      v11 = *MEMORY[0x277D85DF8];
      v12 = __error();
      v13 = *v12;
      *(a1 + 4128) = *v12;
      fprintf(v11, "\npread error(%d) offset: 0x%llx\n", v13, *(a1 + 8));
      return -1;
    }
  }

  return v3;
}

void IncompleteRomajiKanaResolve(char *__s, uint64_t a2)
{
  v3 = std::string::basic_string[abi:ne200100]<0>(__p, __s);
  incompleteRomajiKanaData(v3);
  v4 = std::__hash_table<std::__hash_value_type<std::string,std::vector<std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::string>>>>::find<std::string>(incompleteRomajiKanaData(void)::data, __p);
  v5 = v4;
  if (v14 < 0)
  {
    operator delete(__p[0]);
    if (!v5)
    {
      return;
    }
  }

  else if (!v4)
  {
    return;
  }

  v10 = 0;
  v11 = 0;
  v12 = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(&v10, v5[5], v5[6], 0xAAAAAAAAAAAAAAABLL * ((v5[6] - v5[5]) >> 3));
  if (v11 != v10)
  {
    v6 = 0;
    v7 = 0;
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v11 - v10) >> 3);
    if (v8 <= 1)
    {
      v9 = 1;
    }

    else
    {
      v9 = 0xAAAAAAAAAAAAAAABLL * ((v11 - v10) >> 3);
    }

    do
    {
      (*(a2 + 16))(a2, v8, v7++);
      v6 += 24;
    }

    while (v9 != v7);
  }

  v15 = &v10;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v15);
}