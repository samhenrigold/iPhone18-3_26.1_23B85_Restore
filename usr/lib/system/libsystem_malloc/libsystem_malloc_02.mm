void *_malloc_type_zone_malloc_outlined(malloc_zone_t *a1, size_t a2, unint64_t a3)
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v4 = *(StatusReg + 904);
  if (a3 <= 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = a3;
  }

  *(StatusReg + 904) = v5;
  if (malloc_interposition_compat == 1 && v4 == 0)
  {
    result = j__malloc_zone_malloc(a1, a2);
  }

  else
  {
    result = _malloc_zone_malloc(a1, a2, 0);
  }

  *(StatusReg + 904) = v4;
  return result;
}

uint64_t xzm_ptr_in_use_enumerator(uint64_t task, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t **), uint64_t a6)
{
  v7 = a5;
  if (!a5)
  {
    if (task && !mach_task_is_self(task))
    {
      purgeable_ptr_in_use_enumerator_cold_1();
    }

    v7 = _malloc_default_reader_2;
  }

  v31 = 0;
  v32 = 0;
  v30 = 0;
  result = _xzm_introspect_map_zone_and_main(task, a4, v7, &v32, &v31, &v30);
  if (!result)
  {
    v13 = v30;
    v14 = v31;
    v15 = v30 == a4;
    if (v30 != a4 || (v16 = v31[52]) == 0 || (result = mfm_introspect(task, a2, a3, v16, v7, a6), !result))
    {
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 0x40000000;
      v26[2] = __xzm_ptr_in_use_enumerator_block_invoke;
      v26[3] = &__block_descriptor_tmp;
      v28 = (a3 & 4) != 0;
      v29 = v15;
      v27 = task;
      v26[4] = a6;
      v26[5] = a2;
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 0x40000000;
      v21[2] = __xzm_ptr_in_use_enumerator_block_invoke_3;
      v21[3] = &__block_descriptor_tmp_4;
      v23 = v28;
      v22 = task;
      v21[4] = a6;
      v21[5] = a2;
      v24 = (a3 & 2) != 0;
      v25 = a3 & 1;
      if (v13 == a4)
      {
        v17 = v18;
        v18[0] = MEMORY[0x1E69E9820];
        v18[1] = 0x40000000;
        v18[2] = __xzm_ptr_in_use_enumerator_block_invoke_4;
        v18[3] = &__block_descriptor_tmp_6;
        v20 = (a3 & 2) != 0;
        v19 = task;
        v18[4] = a6;
        v18[5] = a2;
      }

      else
      {
        v17 = 0;
      }

      return _xzm_introspect_enumerate(task, v7, a4, v32, v13, v14, a3 & 1, v26, &__block_literal_global, v21, v17);
    }
  }

  return result;
}

const void *_malloc_zone_malloc_instrumented_or_legacy(uint64_t a1, unint64_t a2, char a3)
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v8 = *(StatusReg + 904);
  if (!v8)
  {
    *(StatusReg + 904) = (v3 >> 2);
  }

  v9 = malloc_tracing_enabled;
  if (malloc_tracing_enabled == 1)
  {
    kdebug_trace();
  }

  if (malloc_check_start)
  {
    internal_check();
  }

  if (malloc_absolute_max_size >= a2)
  {
    v10 = (*(a1 + 24))(a1, a2);
    if (malloc_logger)
    {
      malloc_logger(10, a1, a2, 0, v10, 0);
    }

    if (malloc_simple_stack_logging == 1)
    {
      malloc_report(805, "malloc (%p/%llu): ", v10, a2);
      if (!v9)
      {
LABEL_14:
        if (!v8)
        {
          goto LABEL_19;
        }

        goto LABEL_15;
      }
    }

    else if (!v9)
    {
      goto LABEL_14;
    }

    kdebug_trace();
    if (!v8)
    {
      goto LABEL_19;
    }

LABEL_15:
    if (v10)
    {
      return v10;
    }

    goto LABEL_21;
  }

  v10 = 0;
  if (v8)
  {
    goto LABEL_15;
  }

LABEL_19:
  *(StatusReg + 904) = 0;
  if (v10)
  {
    return v10;
  }

LABEL_21:
  if (a3)
  {
    **(StatusReg + 8) = 12;
  }

  return v10;
}

uint64_t default_zone_malloc()
{
  v0 = lite_zone;
  if (!lite_zone)
  {
    v0 = *malloc_zones;
  }

  return (*(v0 + 24))();
}

uint64_t mfmi_enumerator(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t (*a5)(task_name_t a1, uint64_t a2, uint64_t a3, void *a4), void (*a6)(uint64_t, uint64_t, uint64_t, uint64_t *))
{
  v30 = *MEMORY[0x1E69E9840];
  v27 = 0;
  result = mfmi_read_zone(a1, a4, a5, &v27);
  if (result)
  {
    return result;
  }

  if ((a3 & 4) != 0)
  {
    v28 = a4;
    v29 = 0x10000;
    (a6)(a1, a2, 4, &v28, 1);
    if ((a3 & 2) == 0)
    {
LABEL_4:
      if ((a3 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_8;
    }
  }

  else if ((a3 & 2) == 0)
  {
    goto LABEL_4;
  }

  v28 = a4 + 0x10000;
  v29 = 4128768;
  (a6)(a1, a2, 2, &v28, 1);
  if ((a3 & 1) == 0)
  {
    return 0;
  }

LABEL_8:
  v12 = v27;
  if (!*(v27 + 8))
  {
    return 0;
  }

  v13 = 0;
  v14 = 0;
  do
  {
    v15 = v12 + 224;
    v16 = (v13 + 1) >> 5;
    v17 = *(v12 + 224 + 8 * (v16 & 0x7FFFFFFFFFFFFFELL)) >> (v13 + 1);
    if (v17)
    {
      v18 = __clz(__rbit64(v17));
LABEL_12:
      v19 = v18 + 1;
      goto LABEL_13;
    }

    v22 = (v13 + 1) & 0x3F;
    v23 = v15 + 8 * (v16 & 0x7FFFFFFFFFFFFFELL);
    v24 = *(v23 + 16);
    if (!v24)
    {
      v25 = *(v15 + ((8 * v16) | 8));
      if (v22 < 0x2F)
      {
        v26 = 0;
      }

      else
      {
        v26 = *(v23 + 24);
      }

      v18 = (((2 * v26) << (v22 ^ 0x3Fu)) | (v25 >> v22)) & 0x3FFFF;
      goto LABEL_12;
    }

    v19 = __clz(__rbit64(v24)) - v22 + 65;
LABEL_13:
    if ((*(v15 + ((v13 >> 2) & 0x3FFFFFFFFFFFFFF0)) & (1 << v13) & *(v15 + ((v13 >> 2) & 0x3FFFFFFFFFFFFFF0 | 8))) != 0)
    {
      v20 = v12;
      if (v14 == 32)
      {
        a6(a1, a2, 1, &v28);
        v14 = 0;
        v20 = v27;
      }

      v21 = &v28 + 2 * v14;
      *v21 = v12 + 16 * v13 + 0x10000 + a4 - v20;
      v21[1] = 16 * v19;
      ++v14;
      v12 = v20;
    }

    v13 += v19;
  }

  while (v13 < *(v12 + 8));
  if (v14)
  {
    a6(a1, a2, 1, &v28);
  }

  return 0;
}

void *_malloc_type_zone_calloc_outlined(malloc_zone_t *a1, size_t a2, size_t a3, unint64_t a4)
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v5 = *(StatusReg + 904);
  if (a4 <= 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = a4;
  }

  *(StatusReg + 904) = v6;
  if (malloc_interposition_compat == 1 && v5 == 0)
  {
    result = j__malloc_zone_calloc(a1, a2, a3);
  }

  else
  {
    result = _malloc_zone_calloc(a1, a2, a3, 0);
  }

  *(StatusReg + 904) = v5;
  return result;
}

const void *_malloc_zone_calloc_instrumented_or_legacy(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v10 = *(StatusReg + 904);
  if (!v10)
  {
    *(StatusReg + 904) = (v4 >> 2);
  }

  v11 = malloc_tracing_enabled;
  if (malloc_tracing_enabled == 1)
  {
    kdebug_trace();
  }

  if (malloc_check_start)
  {
    internal_check();
  }

  v12 = (*(a1 + 32))(a1, a2, a3);
  if (malloc_logger)
  {
    malloc_logger(74, a1, a3 * a2, 0, v12, 0);
  }

  if (malloc_simple_stack_logging == 1)
  {
    malloc_report(805, "calloc (%p/%llu*%llu): ", v12, a2, a3);
    if (!v11)
    {
LABEL_11:
      if (v10)
      {
        goto LABEL_12;
      }

      goto LABEL_16;
    }
  }

  else if (!v11)
  {
    goto LABEL_11;
  }

  kdebug_trace();
  if (v10)
  {
LABEL_12:
    if (v12)
    {
      return v12;
    }

    goto LABEL_18;
  }

LABEL_16:
  *(StatusReg + 904) = 0;
  if (v12)
  {
    return v12;
  }

LABEL_18:
  if (a4)
  {
    **(StatusReg + 8) = 12;
  }

  return v12;
}

uint64_t __xzm_ptr_in_use_enumerator_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 52) == 1 && *(a1 + 53) == 1)
  {
    v6[2] = v3;
    v6[3] = v4;
    v6[0] = a2;
    v6[1] = a3;
    (*(a1 + 32))(*(a1 + 48), *(a1 + 40), 4, v6, 1);
  }

  return 0;
}

uint64_t default_zone_calloc()
{
  v0 = lite_zone;
  if (!lite_zone)
  {
    v0 = *malloc_zones;
  }

  return (*(v0 + 32))();
}

void *pgm_malloc_type_malloc_with_options(uint64_t a1, unint64_t a2, unint64_t a3, char a4)
{
  if (*MEMORY[0x1E69E9AC8] < a2)
  {
    goto LABEL_12;
  }

  if (*MEMORY[0x1E69E9AC8] < a3 || *(a1 + 16684) == *(a1 + 212))
  {
    goto LABEL_12;
  }

  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v10 = *(StatusReg + 880);
  if (v10 == -1)
  {
    goto LABEL_12;
  }

  if (v10)
  {
    v12 = v10 - 1;
  }

  else
  {
    v11 = *(a1 + 220);
    if (!v11)
    {
      purgeable_ptr_in_use_enumerator_cold_1();
    }

    v12 = arc4random_uniform(v11);
  }

  *(StatusReg + 880) = v12;
  if (v12)
  {
    goto LABEL_12;
  }

  v15 = 0;
  if (a2 <= 0x10)
  {
    v16 = 16;
  }

  else
  {
    v16 = a2;
  }

  atomic_compare_exchange_strong_explicit((a1 + 16680), &v15, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
  if (v15)
  {
    os_unfair_lock_lock_with_options();
  }

  v17 = allocate(a1, a3, v16);
  v18 = *(StatusReg + 24);
  v19 = v18;
  atomic_compare_exchange_strong_explicit((a1 + 16680), &v19, 0, memory_order_release, memory_order_relaxed);
  if (v19 != v18)
  {
    os_unfair_lock_unlock((a1 + 16680));
  }

  if (!v17)
  {
LABEL_12:
    v13 = *(*(a1 + 200) + 192);

    return v13();
  }

  else
  {
    if (a4)
    {
      bzero(v17, a3);
    }

    return v17;
  }
}

void *_malloc_type_malloc_outlined(size_t __size, unint64_t a2, int a3)
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v4 = *(StatusReg + 904);
  if (a2 <= 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = a2;
  }

  *(StatusReg + 904) = v5;
  if (malloc_interposition_compat != 1 || v4 != 0 || a3 == 0)
  {
    result = _malloc_zone_malloc(default_zone, __size, 1);
  }

  else
  {
    result = j__malloc(__size);
  }

  *(StatusReg + 904) = v4;
  return result;
}

uint64_t _malloc_type_posix_memalign_outlined(void **a1, size_t a2, size_t a3, unint64_t a4)
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v5 = *(StatusReg + 904);
  if (a4 <= 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = a4;
  }

  *(StatusReg + 904) = v6;
  if (malloc_interposition_compat == 1 && v5 == 0)
  {
    result = j__posix_memalign(a1, a2, a3);
  }

  else
  {
    result = _posix_memalign(a1, a2, a3);
  }

  *(StatusReg + 904) = v5;
  return result;
}

uint64_t __xzm_ptr_in_use_enumerator_block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v13 = *(a4 + 32) & 0xF;
  if (*(a1 + 52) == 1 && v13 == 8)
  {
    v18 = a2;
    v19 = 0x4000;
    (*(a1 + 32))(*(a1 + 48), *(a1 + 40), 4, &v18, 1, a6, a7);
  }

  v15 = *(a1 + 53);
  if ((v15 & 1) != 0 || *(a1 + 54) == 1)
  {
    v18 = a6;
    v19 = a5 << 14;
    if (v13 > 6 || ((1 << v13) & 0x64) == 0)
    {
      (*(a1 + 32))(*(a1 + 48), *(a1 + 40), 3, &v18, 1, a6, a7);
    }

    else
    {
      if (v15)
      {
        (*(a1 + 32))(*(a1 + 48), *(a1 + 40), 2, &v18, 1, a6, a7);
      }

      if (*(a1 + 54) == 1)
      {
        (*(a1 + 32))(*(a1 + 48), *(a1 + 40), 1, a8, a9, a6, a7);
      }
    }
  }

  return 0;
}

uint64_t __xzm_ptr_in_use_enumerator_block_invoke_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6)
{
  if (*(a1 + 52) == 1 && (*(a3 + 20) != 1 || (*(a4 + 32) & 0xF) != 8))
  {
    v9[2] = v6;
    v9[3] = v7;
    v9[0] = a6;
    v9[1] = a5 << 14;
    (*(a1 + 32))(*(a1 + 48), *(a1 + 40), 2, v9, 1);
  }

  return 0;
}

void *pgm_realloc(uint64_t a1, const void *a2, unint64_t a3)
{
  if (a2)
  {
    if (*MEMORY[0x1E69E9AC8] < a3 || *(a1 + 16684) == *(a1 + 212))
    {
      goto LABEL_13;
    }

    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v8 = *(StatusReg + 880);
    if (v8 == -1)
    {
      goto LABEL_13;
    }

    if (v8)
    {
      v10 = v8 - 1;
    }

    else
    {
      v9 = *(a1 + 220);
      if (!v9)
      {
        purgeable_ptr_in_use_enumerator_cold_1();
      }

      v10 = arc4random_uniform(v9);
    }

    *(StatusReg + 880) = v10;
    if (v10)
    {
LABEL_13:
      if (*(a1 + 248) > a2 || *(a1 + 256) <= a2)
      {
        v11 = *(*(a1 + 200) + 56);

        return v11();
      }

      v13 = 0;
    }

    else
    {
      v13 = 1;
    }

    v14 = 0;
    v15 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    atomic_compare_exchange_strong_explicit((a1 + 16680), &v14, *(v15 + 24), memory_order_acquire, memory_order_acquire);
    if (v14)
    {
      os_unfair_lock_lock_with_options();
    }

    v16 = reallocate(a1, a2, a3, v13);
    v17 = *(v15 + 24);
    v18 = v17;
    atomic_compare_exchange_strong_explicit((a1 + 16680), &v18, 0, memory_order_release, memory_order_relaxed);
    if (v18 != v17)
    {
      os_unfair_lock_unlock((a1 + 16680));
    }

    return v16;
  }

  else
  {

    return pgm_malloc(a1, a3);
  }
}

uint64_t rack_destroy_regions(uint64_t result, uint64_t a2)
{
  v2 = *(result + 24);
  v3 = *v2;
  if (*v2)
  {
    v5 = result;
    v6 = 0;
    do
    {
      result = *(v2[2] + 8 * v6);
      if ((result + 1) >= 2)
      {
        v7 = *(v5 + 620);
        if ((v7 & 4) != 0)
        {
          v8 = -2;
        }

        else
        {
          v8 = -8;
        }

        result = mvm_deallocate_pages(result, a2, v8 & v7);
        *(*(*(v5 + 24) + 16) + 8 * v6) = -1;
        v2 = *(v5 + 24);
        v3 = *v2;
      }

      ++v6;
    }

    while (v3 > v6);
  }

  return result;
}

void *reallocate(uint64_t a1, const void *a2, unint64_t a3, int a4)
{
  v8 = *(a1 + 248) <= a2 && *(a1 + 256) > a2;
  if (!(v8 | a4))
  {
    purgeable_ptr_in_use_enumerator_cold_1();
  }

  if (!v8)
  {
    v11 = (*(*(a1 + 200) + 16))();
    if (v11)
    {
      goto LABEL_8;
    }

LABEL_13:
    reallocate_cold_2(a2);
  }

  v9 = lookup_slot(a1, a2);
  if ((v9 & 0x8000000000000000) == 0)
  {
    goto LABEL_13;
  }

  v10 = *(a1 + 280) + 8 * v9;
  v11 = *(v10 + 4);
  if (!*(v10 + 4))
  {
    goto LABEL_13;
  }

LABEL_8:
  if (a4 && *(a1 + 16684) != *(a1 + 212))
  {
    v13 = allocate(a1, a3, 0x10uLL);
    if (!v13)
    {
      purgeable_ptr_in_use_enumerator_cold_1();
    }

    v12 = v13;
  }

  else
  {
    v12 = (*(*(a1 + 200) + 24))();
    if (!v12)
    {
      return v12;
    }
  }

  if (v11 >= a3)
  {
    v14 = a3;
  }

  else
  {
    v14 = v11;
  }

  memcpy(v12, a2, v14);
  if (v8)
  {
    deallocate(a1, a2);
  }

  else
  {
    (*(*(a1 + 200) + 48))();
  }

  return v12;
}

uint64_t memtag_assign_tag(uint64_t _X0, uint64_t a2)
{
  __asm { LDG             X8, [X0] }

  _X9 = 1;
  __asm { GMI             X8, X8, X9 }

  v9 = -*MEMORY[0x1E69E9AC8];
  _X10 = _X0 - 16;
  if ((((_X0 - 16) ^ _X0) & v9) == 0)
  {
    __asm
    {
      LDG             X10, [X10]
      GMI             X8, X10, X8
    }
  }

  _X10 = _X0 + a2;
  if ((((_X0 + a2 - 1) ^ (_X0 + a2)) & v9) == 0)
  {
    __asm
    {
      LDG             X10, [X10]
      GMI             X8, X10, X8
    }
  }

  __asm { IRG             X0, X0, X8 }

  return result;
}

unint64_t memtag_init_chunk(uint64_t a1, unint64_t a2, unint64_t a3)
{
  if (a3 > a2)
  {
    return 0;
  }

  _X10 = 0;
  v5 = 0;
  v3 = 0;
  _X12 = 1;
  do
  {
    _X14 = a1 + v5 * a3;
    __asm { GMI             X15, X10, X12 }

    if (_X10)
    {
      _X10 = _X15;
    }

    else
    {
      _X10 = 1;
    }

    __asm { IRG             X10, X14, X10 }

    if (!v5)
    {
      v3 = _X10;
    }

    _X14 = _X10 + a3;
    if ((a3 & 0x1FF) != 0)
    {
      __asm
      {
        STG             X10, [X10]
        STG             X14, [X14,#-0x10]
      }

      if (a3 > 0x20)
      {
        _X15 = (_X10 + 31) & 0xFFFFFFFFFFFFFFE0;
        _X16 = _X14 & 0xFFFFFFFFFFFFFFE0;
        __asm
        {
          ST2G            X15, [X15]
          ST2G            X16, [X16,#-0x20]
        }
      }

      v17 = (_X10 + 63) & 0xFFFFFFFFFFFFFFC0;
      v18 = _X14 & 0xFFFFFFFFFFFFFFC0;
      while (v17 < v18)
      {
        __asm { DC              GVA, X15 }

        v17 += 64;
      }
    }

    else if (a3 >= 1)
    {
      v19 = _X10;
      do
      {
        __asm
        {
          DC              GVA, X15
          DC              GVA, X16
          DC              GVA, X16
          DC              GVA, X16
          DC              GVA, X16
          DC              GVA, X16
          DC              GVA, X16
          DC              GVA, X16
        }

        v19 += 512;
      }

      while (v19 < _X14);
    }

    ++v5;
  }

  while (v5 < a2 / a3);
  return v3;
}

BOOL memtag_handle_mismatch(unint64_t _X0)
{
  v1 = _X0;
  qword_1EAC7F640 = "BUG IN CLIENT OF LIBMALLOC: pointer being freed was not valid";
  qword_1EAC7F670 = _X0;
  __asm { LDG             X0, [X0] }

  v7 = (_X0 ^ v1) & 0xF00000000000000;
  if (v7)
  {
    qword_1EAC7F640 = "BUG IN CLIENT OF LIBMALLOC: ignored previous invalid free due to MTE tag mismatch in soft mode (probable double-free)";
    qword_1EAC7F670 = (v1 >> 52) & 0xF0 | (_X0 >> 56) & 0xF;
    find_zone_and_free(_X0, 0);
  }

  return v7 != 0;
}

uint64_t bitarray_size(unsigned int a1)
{
  if (a1 < 0xA)
  {
    return 64;
  }

  else
  {
    return 8 * (*(levels_num_words + (((954437177 * (a1 - 10)) >> 31) & 0x7FFFFFFC)) + (1 << (a1 - 6)));
  }
}

void *bitarray_create(unsigned int a1)
{
  if (a1 < 0xA)
  {
    v1 = 64;
  }

  else
  {
    v1 = 8 * (*(levels_num_words + (((954437177 * (a1 - 10)) >> 31) & 0x7FFFFFFC)) + (1 << (a1 - 6)));
  }

  return j__calloc(1uLL, v1);
}

uint64_t bitarray_get(uint64_t a1, unsigned int a2, unsigned int a3)
{
  if (a2 > 9)
  {
    a1 += 8 * *(levels_num_words + (((954437177 * (a2 - 10)) >> 31) & 0x7FFFFFFC)) + 8 * ((a3 >> 6) & 0x3FFFFF8);
    v3 = (a3 >> 6) & 7;
  }

  else
  {
    v3 = a3 >> 6;
  }

  return (*(a1 + 8 * v3) >> a3) & 1;
}

uint64_t bitarray_set(uint64_t a1, unsigned int a2, unsigned int a3)
{
  if (a2 > 9)
  {
    v5 = (a2 - 10) / 9uLL;
    v6 = a3 >> 9;
    v7 = a1 + 8 * levels_num_words[v5] + 64 * (a3 >> 9);
    v8 = (a3 >> 6) & 7;
    v9 = *(v7 + 8 * v8);
    v10 = v9 | (1 << a3);
    if (v9 == v10)
    {
      return 0;
    }

    *(v7 + 8 * v8) = v10;
    if (v9)
    {
      return 1;
    }

    if (v5 <= 1)
    {
      if (!v5)
      {
        goto LABEL_14;
      }

      if (v5 == 1)
      {
LABEL_12:
        v13 = (v6 >> 6) & 7;
        v11 = 1;
        v14 = 1 << v6;
        v6 >>= 9;
        v15 = a1 + 64 * v6 + 64;
        v16 = *(v15 + 8 * v13);
        v17 = v14 | v16;
        if (v16 == v17)
        {
          return v11;
        }

        *(v15 + 8 * v13) = v17;
        if (v16)
        {
          return 1;
        }

LABEL_14:
        *(a1 + 8 * ((v6 >> 6) & 7)) |= 1 << v6;
        return 1;
      }

LABEL_23:
      bitarray_set_cold_1((a2 - 10) / 9uLL);
    }

    if (v5 != 2)
    {
      if (v5 != 3)
      {
        goto LABEL_23;
      }

      v18 = a1 + 64 * (a3 >> 18) + 16810048;
      v19 = (a3 >> 15) & 7;
      v20 = *(v18 + 8 * v19);
      v11 = 1;
      v21 = v20 | (1 << v6);
      if (v20 == v21)
      {
        return v11;
      }

      *(v18 + 8 * v19) = v21;
      if (v20)
      {
        return 1;
      }

      v6 = a3 >> 18;
    }

    v22 = (v6 >> 6) & 7;
    v11 = 1;
    v23 = 1 << v6;
    v6 >>= 9;
    v24 = a1 + 64 * v6 + 32832;
    v25 = *(v24 + 8 * v22);
    v26 = v23 | v25;
    if (v25 == v26)
    {
      return v11;
    }

    *(v24 + 8 * v22) = v26;
    if (v25)
    {
      return 1;
    }

    goto LABEL_12;
  }

  v3 = *(a1 + 8 * (a3 >> 6));
  v4 = v3 | (1 << a3);
  if (v3 != v4)
  {
    *(a1 + 8 * (a3 >> 6)) = v4;
    return 1;
  }

  return 0;
}

uint64_t bitarray_zap(uint64_t a1, unsigned int a2, unsigned int a3)
{
  if (a2 <= 9)
  {
    v3 = *(a1 + 8 * (a3 >> 6));
    v4 = v3 & ~(1 << a3);
    if (v3 != v4)
    {
      *(a1 + 8 * (a3 >> 6)) = v4;
      return 1;
    }

    return 0;
  }

  v5 = (a2 - 10) / 9uLL;
  v6 = levels_num_words[v5];
  v7 = (a1 + 8 * v6 + 64 * (a3 >> 9));
  v8 = (a3 >> 6) & 7;
  v9 = v7[v8];
  v10 = v9 & ~(1 << a3);
  if (v9 == v10)
  {
    return 0;
  }

  v7[v8] = v10;
  if (*v7)
  {
    return 1;
  }

  v13 = a3 >> 9;
  v14 = (((a3 >> 3) & 0x1FFFFFC0) + 8 * v6 + a1 + 8);
  v15 = -1;
  do
  {
    if (v15 == 6)
    {
      if (v10)
      {
        return 1;
      }

LABEL_16:
      if (v5 <= 1)
      {
        if (!v5)
        {
          v17 = a3 >> 9;
          goto LABEL_44;
        }

        if (v5 == 1)
        {
LABEL_19:
          v17 = v13 >> 9;
          v18 = (a1 + 64 * (v13 >> 9) + 64);
          v19 = (v13 >> 6) & 7;
          v20 = v18[v19];
          v11 = 1;
          v21 = v20 & ~(1 << v13);
          if (v20 == v21)
          {
            return v11;
          }

          v18[v19] = v21;
          if (v21)
          {
            return 1;
          }

          v22 = *v18;
          if (*v18)
          {
            return 1;
          }

          v23 = ((v13 >> 3) & 0xFFFC0) + a1 + 72;
          while (v22 != 7)
          {
            if (*(v23 + 8 * v22++))
            {
              if ((v22 - 1) < 7)
              {
                return 1;
              }

              break;
            }
          }

LABEL_44:
          *(a1 + 8 * ((v17 >> 6) & 7)) &= ~(1 << v17);
          return 1;
        }

LABEL_45:
        bitarray_set_cold_1((a2 - 10) / 9uLL);
      }

      v25 = a3 >> 9;
      if (v5 != 2)
      {
        if (v5 != 3)
        {
          goto LABEL_45;
        }

        v25 = a3 >> 18;
        v26 = (a1 + 64 * (a3 >> 18) + 16810048);
        v27 = (a3 >> 15) & 7;
        v28 = v26[v27];
        v11 = 1;
        v29 = v28 & ~(1 << (a3 >> 9));
        if (v28 == v29)
        {
          return v11;
        }

        v26[v27] = v29;
        if (v29)
        {
          return 1;
        }

        v30 = *v26;
        if (v30)
        {
          return 1;
        }

        while (v30 != 7)
        {
          if (*(((a3 >> 12) & 0xFFFC0) + a1 + 16810056 + 8 * v30++))
          {
            if ((v30 - 1) < 7)
            {
              return 1;
            }

            break;
          }
        }
      }

      v13 = v25 >> 9;
      v32 = (a1 + 64 * (v25 >> 9) + 32832);
      v33 = (v25 >> 6) & 7;
      v34 = v32[v33];
      v11 = 1;
      v35 = v34 & ~(1 << v25);
      if (v34 == v35)
      {
        return v11;
      }

      v32[v33] = v35;
      if (v35)
      {
        return 1;
      }

      v36 = *v32;
      if (v36)
      {
        return 1;
      }

      v37 = ((v25 >> 3) & 0xFFFC0) + a1 + 32840;
      while (v36 != 7)
      {
        if (*(v37 + 8 * v36++))
        {
          if ((v36 - 1) < 7)
          {
            return 1;
          }

          goto LABEL_19;
        }
      }

      goto LABEL_19;
    }

    v16 = *v14++;
    ++v15;
  }

  while (!v16);
  v11 = 1;
  if (v15 >= 7 && !v10)
  {
    goto LABEL_16;
  }

  return v11;
}

BOOL ZAP_GO_DOWN(void *a1, unsigned int a2)
{
  v2 = a1[a2 >> 6];
  v3 = v2 & ~(1 << a2);
  if (v2 == v3)
  {
    return 0;
  }

  a1[a2 >> 6] = v3;
  if (v3 || *a1)
  {
    return 0;
  }

  v5 = a1 + 1;
  v6 = -1;
  while (v6 != 6)
  {
    v7 = *v5++;
    ++v6;
    if (v7)
    {
      return v6 >= 7;
    }
  }

  return 1;
}

uint64_t bitarray_first_set(uint64_t a1, unsigned int a2)
{
  v2 = 0;
  for (i = 0; ; i -= 64)
  {
    v4 = *(a1 + v2);
    if (v4)
    {
      break;
    }

    v2 += 8;
    if (v2 == 64)
    {
      return 0;
    }
  }

  v6 = __clz(__rbit64(v4)) - i;
  if (a2 < 0xA)
  {
    return (v6 + 1);
  }

  v7 = (a2 - 1) / 9;
  if (v7 <= 2)
  {
    if (v7 == 1)
    {
      goto LABEL_44;
    }

    if (v7 == 2)
    {
      v8 = 0;
      a1 += 64;
      v9 = v6 << 9;
      v10 = (a1 + (v6 << 6));
      while (1)
      {
        v12 = *v10++;
        v11 = v12;
        if (v12)
        {
          break;
        }

        v8 -= 64;
        if (v8 == -512)
        {
          goto LABEL_28;
        }
      }

LABEL_29:
      v25 = __clz(__rbit64(v11)) - v8 + 1;
LABEL_30:
      v26 = v9 + v25;
      goto LABEL_43;
    }

    goto LABEL_50;
  }

  if (v7 == 3)
  {
    v18 = 0;
    v19 = (a1 + (v6 << 6) + 64);
    while (1)
    {
      v21 = *v19++;
      v20 = v21;
      if (v21)
      {
        break;
      }

      v18 -= 64;
      if (v18 == -512)
      {
        v22 = 0;
        goto LABEL_25;
      }
    }

    v22 = __clz(__rbit64(v20)) - v18 + 1;
LABEL_25:
    v8 = 0;
    a1 += 32832;
    v9 = (((v6 << 9) + v22) << 9) - 512;
    v23 = (a1 + 8 * (8 * (v22 + (v6 << 9)) - 8));
    while (1)
    {
      v24 = *v23++;
      v11 = v24;
      if (v24)
      {
        goto LABEL_29;
      }

      v8 -= 64;
      if (v8 == -512)
      {
LABEL_28:
        v25 = 0;
        goto LABEL_30;
      }
    }
  }

  if (v7 != 4)
  {
LABEL_50:
    bitarray_first_set_cold_1((a2 - 1) / 9);
  }

  v13 = 0;
  v14 = (a1 + (v6 << 6) + 64);
  while (1)
  {
    v16 = *v14++;
    v15 = v16;
    if (v16)
    {
      break;
    }

    v13 -= 64;
    if (v13 == -512)
    {
      v17 = 0;
      goto LABEL_32;
    }
  }

  v17 = __clz(__rbit64(v15)) - v13 + 1;
LABEL_32:
  v27 = 0;
  v28 = (a1 + 8 * (8 * (v17 + (v6 << 9)) - 8) + 32832);
  while (1)
  {
    v30 = *v28++;
    v29 = v30;
    if (v30)
    {
      break;
    }

    v27 -= 64;
    if (v27 == -512)
    {
      v31 = 0;
      goto LABEL_37;
    }
  }

  v31 = __clz(__rbit64(v29)) - v27 + 1;
LABEL_37:
  v32 = 0;
  a1 += 16810048;
  v33 = (((((v6 << 9) + v17) << 9) - 512 + v31) << 9) - 512;
  v34 = (a1 + 8 * (8 * (v31 + (v17 << 9) + (v6 << 18)) - 4104));
  while (1)
  {
    v36 = *v34++;
    v35 = v36;
    if (v36)
    {
      break;
    }

    v32 -= 64;
    if (v32 == -512)
    {
      v37 = 0;
      goto LABEL_42;
    }
  }

  v37 = __clz(__rbit64(v35)) - v32 + 1;
LABEL_42:
  v26 = v33 + v37;
LABEL_43:
  LODWORD(v6) = v26 - 1;
LABEL_44:
  v38 = 0;
  v39 = a1 + 8 * (8 << (9 * v7 - 9));
  v40 = v6 << 9;
  v41 = (v39 + 8 * (8 * v6));
  while (1)
  {
    v43 = *v41++;
    v42 = v43;
    if (v43)
    {
      break;
    }

    v38 -= 64;
    if (v38 == -512)
    {
      v44 = 0;
      return (v44 + v40);
    }
  }

  v44 = __clz(__rbit64(v42)) - v38 + 1;
  return (v44 + v40);
}

BOOL bitarray_zap_first_set(uint64_t a1, int a2, unsigned int *a3)
{
  v4 = 0;
  v5 = 0;
  while (1)
  {
    v6 = *(a1 + 8 * v5);
    if (v6)
    {
      break;
    }

    ++v5;
    v4 -= 64;
    if (v5 == 8)
    {
      return v6 != 0;
    }
  }

  v7 = __clz(__rbit64(v6));
  v8 = a2 - 1;
  v9 = v7 - v4;
  if ((a2 - 1) <= 8)
  {
    *a3 = v9;
LABEL_7:
    *(a1 + 8 * v5) &= ~(1 << v7);
    return v6 != 0;
  }

  v10 = v8 / 9;
  if ((v8 / 9) > 2)
  {
    if (v10 == 3)
    {
      v23 = 0;
      v24 = v9 << 9;
      v25 = (a1 + ((v7 - v4) << 6) + 64);
      while (1)
      {
        v27 = *v25++;
        v26 = v27;
        if (v27)
        {
          break;
        }

        v23 -= 64;
        if (v23 == -512)
        {
          v28 = 0;
          goto LABEL_27;
        }
      }

      v28 = __clz(__rbit64(v26)) - v23 + 1;
LABEL_27:
      v11 = 0;
      v29 = (v24 + v28) << 9;
      v12 = a1 + 32832;
      v13 = v29 - 512;
      v30 = (a1 + 32832 + 8 * (8 * (v28 + ((v7 - v4) << 9)) - 8));
      while (1)
      {
        v31 = *v30++;
        v15 = v31;
        if (v31)
        {
          goto LABEL_31;
        }

        v11 -= 64;
        if (v11 == -512)
        {
LABEL_30:
          v32 = 0;
          goto LABEL_32;
        }
      }
    }

    if (v10 == 4)
    {
      v17 = 0;
      v18 = v9 << 9;
      v19 = (a1 + ((v7 - v4) << 6) + 64);
      while (1)
      {
        v21 = *v19++;
        v20 = v21;
        if (v21)
        {
          break;
        }

        v17 -= 64;
        if (v17 == -512)
        {
          v22 = 0;
          goto LABEL_34;
        }
      }

      v22 = __clz(__rbit64(v20)) - v17 + 1;
LABEL_34:
      v34 = 0;
      v35 = ((v18 + v22) << 9) - 512;
      v36 = (a1 + 8 * (8 * (v22 + ((v7 - v4) << 9)) - 8) + 32832);
      while (1)
      {
        v38 = *v36++;
        v37 = v38;
        if (v38)
        {
          break;
        }

        v34 -= 64;
        if (v34 == -512)
        {
          v39 = 0;
          goto LABEL_39;
        }
      }

      v39 = __clz(__rbit64(v37)) - v34 + 1;
LABEL_39:
      v40 = 0;
      v41 = (v35 + v39) << 9;
      v12 = a1 + 16810048;
      v42 = v41 - 512;
      v43 = (a1 + 16810048 + 8 * (8 * (v39 + (v22 << 9) + ((v7 - v4) << 18)) - 4104));
      while (1)
      {
        v45 = *v43++;
        v44 = v45;
        if (v45)
        {
          break;
        }

        v40 -= 64;
        if (v40 == -512)
        {
          v46 = 0;
          goto LABEL_44;
        }
      }

      v46 = __clz(__rbit64(v44)) - v40 + 1;
LABEL_44:
      v33 = v42 + v46;
LABEL_45:
      v9 = v33 - 1;
      goto LABEL_46;
    }

LABEL_80:
    bitarray_first_set_cold_1(v10);
  }

  if (v10 != 1)
  {
    if (v10 == 2)
    {
      v11 = 0;
      v12 = a1 + 64;
      v13 = v9 << 9;
      v14 = (a1 + 64 + ((v7 - v4) << 6));
      while (1)
      {
        v16 = *v14++;
        v15 = v16;
        if (v16)
        {
          break;
        }

        v11 -= 64;
        if (v11 == -512)
        {
          goto LABEL_30;
        }
      }

LABEL_31:
      v32 = __clz(__rbit64(v15)) - v11 + 1;
LABEL_32:
      v33 = v13 + v32;
      goto LABEL_45;
    }

    goto LABEL_80;
  }

  v12 = a1;
LABEL_46:
  v47 = 0;
  v48 = v9 << 9;
  v49 = (v12 + 8 * (8 << (9 * v10 - 9)) + 64 * v9);
  while (1)
  {
    v51 = *v49++;
    v50 = v51;
    if (v51)
    {
      break;
    }

    v47 -= 64;
    if (v47 == -512)
    {
      v52 = 0;
      goto LABEL_51;
    }
  }

  v52 = __clz(__rbit64(v50)) - v47 + 1;
LABEL_51:
  v53 = v48 + v52 - 1;
  *a3 = v53;
  v54 = v53 >> 9;
  v55 = levels_num_words[v10 - 1];
  v56 = (a1 + 8 * v55 + 64 * (v53 >> 9));
  v57 = (v53 >> 6) & 7;
  v58 = v56[v57];
  v59 = v58 & ~(1 << v53);
  if (v58 != v59)
  {
    v56[v57] = v59;
    if (!*v56)
    {
      v60 = (((v53 >> 3) & 0x1FFFFFC0) + 8 * v55 + a1 + 8);
      v61 = -1;
      while (v61 != 6)
      {
        v62 = *v60++;
        ++v61;
        if (v62)
        {
          if (v61 < 7)
          {
            return v6 != 0;
          }

          break;
        }
      }

      if (!v59)
      {
        if (v10 > 2)
        {
          v72 = v53 >> 9;
          if (v10 != 3)
          {
            v72 = v53 >> 18;
            if (!ZAP_GO_DOWN((a1 + 64 * (v53 >> 18) + 16810048), (v53 >> 9) & 0x1FF))
            {
              return v6 != 0;
            }
          }

          v54 = v72 >> 9;
          v73 = (a1 + 64 * (v72 >> 9) + 32832);
          v74 = (v72 >> 6) & 7;
          v75 = v73[v74];
          v76 = v75 & ~(1 << v72);
          if (v75 == v76)
          {
            return v6 != 0;
          }

          v73[v74] = v76;
          if (v76)
          {
            return v6 != 0;
          }

          v77 = *v73;
          if (v77)
          {
            return v6 != 0;
          }

          while (v77 != 7)
          {
            if (*(((v72 >> 3) & 0xFFFC0) + a1 + 32840 + 8 * v77++))
            {
              if ((v77 - 1) < 7)
              {
                return v6 != 0;
              }

              break;
            }
          }
        }

        else if (v10 == 1)
        {
          v64 = v53 >> 9;
          goto LABEL_79;
        }

        v64 = v54 >> 9;
        v65 = (a1 + 64 * (v54 >> 9) + 64);
        v66 = (v54 >> 6) & 7;
        v67 = v65[v66];
        v68 = v67 & ~(1 << v54);
        if (v67 == v68)
        {
          return v6 != 0;
        }

        v65[v66] = v68;
        if (v68)
        {
          return v6 != 0;
        }

        v69 = *v65;
        if (v69)
        {
          return v6 != 0;
        }

        v70 = ((v54 >> 3) & 0xFFFC0) + a1 + 72;
        while (v69 != 7)
        {
          if (*(v70 + 8 * v69++))
          {
            if ((v69 - 1) < 7)
            {
              return v6 != 0;
            }

            break;
          }
        }

LABEL_79:
        v5 = (v64 >> 6) & 7;
        LOBYTE(v7) = v64 & 0x3F;
        goto LABEL_7;
      }
    }
  }

  return v6 != 0;
}

uint64_t bitarray_zap_first_set_multiple(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  if (a2 > 9)
  {
    v8 = 0;
    if (!a3)
    {
      return v8;
    }

    v9 = (a2 - 1) / 9;
    v10 = a1 + 64;
    v81 = a1 + 32832;
    v79 = a1 + 16810048;
    v11 = 8 << (9 * (v9 - 1));
    v75 = a1 + 16810056;
    v76 = a1 + 32840;
    v77 = a1 + 72;
    v78 = (v11 >> 3 << 6) | 8;
    while (1)
    {
      v12 = 0;
      v13 = 0;
      v14 = 0;
      while (1)
      {
        v15 = *(a1 + v13);
        if (v15)
        {
          break;
        }

        v14 -= 64;
        v13 += 8;
        v12 += 64;
        if (v13 == 64)
        {
          return v8;
        }
      }

      v16 = __clz(__rbit64(v15));
      v17 = v16 - v14;
      if (v9 > 2)
      {
        if (v9 == 3)
        {
          v29 = 0;
          v30 = (v10 + ((v16 + v12) << 6));
          while (1)
          {
            v32 = *v30++;
            v31 = v32;
            if (v32)
            {
              break;
            }

            v29 -= 64;
            if (v29 == -512)
            {
              v33 = 0;
              goto LABEL_29;
            }
          }

          v33 = __clz(__rbit64(v31)) - v29 + 1;
LABEL_29:
          v34 = 0;
          v35 = (v81 + 8 * (8 * (v33 + ((v16 + v12) << 9)) - 8));
          while (1)
          {
            v37 = *v35++;
            v36 = v37;
            if (v37)
            {
              break;
            }

            v34 -= 64;
            if (v34 == -512)
            {
              v38 = 0;
              goto LABEL_34;
            }
          }

          v38 = __clz(__rbit64(v36)) - v34 + 1;
LABEL_34:
          v17 = (((v17 << 9) + v33) << 9) - 512 + v38 - 1;
          v18 = v81;
        }

        else
        {
          if (v9 != 4)
          {
LABEL_87:
            bitarray_first_set_cold_1(v9);
          }

          v24 = 0;
          v25 = (v10 + ((v16 + v12) << 6));
          while (1)
          {
            v27 = *v25++;
            v26 = v27;
            if (v27)
            {
              break;
            }

            v24 -= 64;
            if (v24 == -512)
            {
              v28 = 0;
              goto LABEL_38;
            }
          }

          v28 = __clz(__rbit64(v26)) - v24 + 1;
LABEL_38:
          v39 = 0;
          v40 = (v81 + 8 * (8 * (v28 + ((v16 + v12) << 9)) - 8));
          while (1)
          {
            v42 = *v40++;
            v41 = v42;
            if (v42)
            {
              break;
            }

            v39 -= 64;
            if (v39 == -512)
            {
              v43 = 0;
              goto LABEL_43;
            }
          }

          v43 = __clz(__rbit64(v41)) - v39 + 1;
LABEL_43:
          v44 = 0;
          v45 = (v79 + 8 * (8 * (v43 + (v28 << 9) + ((v16 + v12) << 18)) - 4104));
          while (1)
          {
            v47 = *v45++;
            v46 = v47;
            if (v47)
            {
              break;
            }

            v44 -= 64;
            if (v44 == -512)
            {
              v48 = 0;
              goto LABEL_48;
            }
          }

          v48 = __clz(__rbit64(v46)) - v44 + 1;
LABEL_48:
          v17 = (((((v17 << 9) + v28) << 9) - 512 + v43) << 9) - 512 + v48 - 1;
          v18 = v79;
        }
      }

      else
      {
        v18 = a1;
        if (v9 != 1)
        {
          if (v9 != 2)
          {
            goto LABEL_87;
          }

          v19 = 0;
          v20 = (v10 + ((v16 + v12) << 6));
          while (1)
          {
            v22 = *v20++;
            v21 = v22;
            if (v22)
            {
              break;
            }

            v19 -= 64;
            if (v19 == -512)
            {
              v23 = 0;
              goto LABEL_36;
            }
          }

          v23 = __clz(__rbit64(v21)) - v19 + 1;
LABEL_36:
          v17 = (v17 << 9) + v23 - 1;
          v18 = a1 + 64;
        }
      }

      v80 = v11;
      v49 = 8 * v17;
      v50 = (v18 + 8 * v11 + 8 * v49);
      v8 = FFS_and_zap_word(v50, v5 - v8, a4 + 4 * v8, v17 << 9) + v8;
      if (v8 >= v5)
      {
        if (*v50)
        {
          return v8;
        }

        v58 = (v18 + v78 + 8 * v49);
        v59 = -1;
        while (v59 != 6)
        {
          v60 = *v58++;
          ++v59;
          if (v60)
          {
            if (v59 >= 7)
            {
              break;
            }

            goto LABEL_79;
          }
        }
      }

      if (v9 <= 2)
      {
        break;
      }

      if (v9 == 3)
      {
        v61 = v17;
      }

      else
      {
        v61 = v17 >> 9;
        v62 = (v79 + 64 * (v17 >> 9));
        v63 = (v17 >> 6) & 7;
        v64 = v62[v63];
        v65 = v64 & ~(1 << v17);
        if (v64 == v65)
        {
          goto LABEL_79;
        }

        v62[v63] = v65;
        if (v65)
        {
          goto LABEL_79;
        }

        v66 = *v62;
        if (v66)
        {
          goto LABEL_79;
        }

        while (v66 != 7)
        {
          if (*(v75 + ((v17 >> 3) & 0x1FFFFFC0) + 8 * v66++))
          {
            if ((v66 - 1) >= 7)
            {
              break;
            }

            goto LABEL_79;
          }
        }
      }

      v17 = v61 >> 9;
      v68 = (v81 + 64 * (v61 >> 9));
      v69 = (v61 >> 6) & 7;
      v70 = v68[v69];
      v71 = v70 & ~(1 << v61);
      if (v70 != v71)
      {
        v68[v69] = v71;
        if (!v71)
        {
          v72 = *v68;
          if (!v72)
          {
            v73 = v76 + ((v61 >> 3) & 0x1FFFFFC0);
            while (v72 != 7)
            {
              if (*(v73 + 8 * v72++))
              {
                if ((v72 - 1) >= 7)
                {
                  break;
                }

                goto LABEL_79;
              }
            }

LABEL_52:
            v51 = v17 >> 9;
            v52 = (v10 + 64 * (v17 >> 9));
            v53 = (v17 >> 6) & 7;
            v54 = v52[v53];
            v55 = v54 & ~(1 << v17);
            if (v54 == v55)
            {
              goto LABEL_79;
            }

            v52[v53] = v55;
            if (v55)
            {
              goto LABEL_79;
            }

            v56 = *v52;
            if (v56)
            {
              goto LABEL_79;
            }

            while (v56 != 7)
            {
              if (*(v77 + ((v17 >> 3) & 0x1FFFFFC0) + 8 * v56++))
              {
                if ((v56 - 1) >= 7)
                {
                  break;
                }

                goto LABEL_79;
              }
            }

LABEL_74:
            *(a1 + 8 * ((v51 >> 6) & 7)) &= ~(1 << v51);
          }
        }
      }

LABEL_79:
      v11 = v80;
      if (v8 >= v5)
      {
        return v8;
      }
    }

    if (v9 != 1)
    {
      goto LABEL_52;
    }

    v51 = v17;
    goto LABEL_74;
  }

  return FFS_and_zap_word(a1, a3, a4, 0);
}

uint64_t FFS_and_zap_word(uint64_t a1, unsigned int a2, uint64_t a3, int a4)
{
  v4 = 0;
  v5 = 0;
  do
  {
    v6 = *(a1 + 8 * v4);
    if (v6)
    {
      do
      {
        v7 = __clz(__rbit64(v6));
        *(a3 + 4 * v5) = a4 + (v4 << 6) + v7;
        v5 = (v5 + 1);
        v6 &= ~(1 << v7);
      }

      while (v5 < a2 && v6);
      *(a1 + 8 * v4) = v6;
      if (v5 >= a2)
      {
        break;
      }
    }

    ++v4;
  }

  while (v4 != 8);
  return v5;
}

uint64_t xzm_reclaim_sync_and_resize(void *a1)
{
  if (mach_vm_reclaim_ring_capacity())
  {
    xzm_reclaim_sync_and_resize_cold_1();
  }

  mach_vm_reclaim_round_capacity();
  if (mach_vm_reclaim_ring_resize())
  {
    return xzm_reclaim_force_sync(a1);
  }

  else
  {
    return _xzm_reclaim_id_cache_init(a1);
  }
}

uint64_t xzm_reclaim_force_sync(void *a1)
{
  if (mach_vm_reclaim_ring_capacity())
  {
    xzm_reclaim_force_sync_cold_1();
  }

  result = mach_vm_reclaim_ring_flush();
  if (result)
  {
    xzm_reclaim_force_sync_cold_2();
  }

  return result;
}

uint64_t _xzm_segment_group_overwrite_chunk(mach_vm_address_t a1, mach_vm_size_t size, char a3)
{
  address = a1;
  if ((a3 & 4) != 0)
  {
    v3 = 33579008;
  }

  else
  {
    v3 = 33570816;
  }

  result = mach_vm_map(*MEMORY[0x1E69E9A60], &address, size, 0, v3, 0, 0, 0, 3, 7, 1u);
  if (result)
  {
    _xzm_segment_group_overwrite_chunk_cold_1(result);
  }

  return result;
}

_BYTE *malloc_common_strstr(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  if (!*a1)
  {
    return 0;
  }

  v5 = a1;
  while (MEMORY[0x193ACD780](v5, a2, a3))
  {
    if (!*++v5)
    {
      return 0;
    }
  }

  return v5;
}

uint64_t malloc_zone_batch_free_fallback(uint64_t result, uint64_t a2, unsigned int a3)
{
  if (a3)
  {
    v5 = result;
    v6 = a3 - 1;
    for (i = 1; i <= a3; ++i)
    {
      if (*(a2 + 8 * v6))
      {
        result = (*(v5 + 48))(v5);
      }

      --v6;
    }
  }

  return result;
}

mach_vm_address_t create_purgeable_zone(uint64_t a1, uint64_t a2, int a3)
{
  pages = mvm_allocate_pages((*MEMORY[0x1E69E9AC8] + 18943) & -*MEMORY[0x1E69E9AC8], 0, 0x40000000, 1);
  v6 = pages;
  if (pages)
  {
    v7 = a3 | 0x80;
    rack_init(pages + 16512, 1, 0, a3 | 0x80);
    rack_init(v6 + 17280, 2, 0, a3 | 0x80);
    *(v6 + 104) = 11;
    *(v6 + 16) = purgeable_size;
    *(v6 + 24) = purgeable_malloc;
    *(v6 + 32) = purgeable_calloc;
    *(v6 + 40) = purgeable_valloc;
    *(v6 + 48) = purgeable_free;
    *(v6 + 56) = purgeable_realloc;
    *(v6 + 64) = purgeable_destroy;
    *(v6 + 80) = purgeable_batch_malloc;
    *(v6 + 88) = purgeable_batch_free;
    *(v6 + 96) = &purgeable_introspect;
    *(v6 + 112) = purgeable_memalign;
    *(v6 + 120) = purgeable_free_definite_size;
    *(v6 + 128) = purgeable_pressure_relief;
    *(v6 + 136) = purgeable_claimed_address;
    *v6 = 0;
    *(v6 + 8) = 0;
    mprotect(v6, 0xC8uLL, 1);
    *(v6 + 16392) = a3 | 0x80;
    if ((a3 & 7) != 0)
    {
      if ((a3 & 4) == 0)
      {
        malloc_report(6, "purgeable zone does not support guard pages\n");
        v7 = *(v6 + 16392);
      }

      *(v6 + 16392) = v7 & 0xFFFFFFF8;
    }

    *(v6 + 18816) = 0;
    *(v6 + 18864) = a2;
  }

  return v6;
}

mach_vm_address_t purgeable_malloc(uint64_t a1, unint64_t a2)
{
  if (a2 <= 0x3C00)
  {
    a1 = *(a1 + 18864);
  }

  return szone_malloc(a1, a2);
}

mach_vm_address_t purgeable_calloc(uint64_t a1, unint64_t a2, unint64_t a3)
{
  if (a2 == 1 || is_mul_ok(a2, a3) && (a3 *= a2, a3 <= malloc_absolute_max_size))
  {
    if (a3 <= 0x3C00)
    {
      a1 = *(a1 + 18864);
    }

    return szone_calloc(a1, 1uLL, a3);
  }

  else
  {
    **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8) = 12;
    return 0;
  }
}

mach_vm_address_t purgeable_valloc(uint64_t a1, unint64_t a2)
{
  if (a2 <= 0x3C00)
  {
    a1 = *(a1 + 18864);
  }

  return szone_valloc(a1, a2);
}

void purgeable_free(uint64_t a1, const void *a2)
{
  v4 = 0;
  v5 = (a1 + 18816);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  atomic_compare_exchange_strong_explicit((a1 + 18816), &v4, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
  if (v4)
  {
    os_unfair_lock_lock_with_options();
  }

  v7 = large_entry_for_pointer_no_lock(a1, a2);
  v8 = *(StatusReg + 24);
  v9 = v8;
  atomic_compare_exchange_strong_explicit(v5, &v9, 0, memory_order_release, memory_order_relaxed);
  if (v9 != v8)
  {
    os_unfair_lock_unlock(v5);
  }

  if (v7)
  {

    free_large(a1, a2, 0);
  }

  else
  {
    v10 = *(a1 + 18864);

    szone_free(v10, a2);
  }
}

char *purgeable_realloc(uint64_t a1, void *a2, size_t a3)
{
  v4 = a1;
  if (a2)
  {
    if (a3)
    {
      v6 = szone_size_try_large(a1, a2);
      if (!v6)
      {
        v6 = szone_size(*(v4 + 18864), a2);
        if (!v6)
        {
          malloc_zone_error(*(v4 + 16392), 1, "pointer %p being reallocated was not allocated\n", a2);
          return 0;
        }
      }

      v7 = v6;
      if (v6 <= 0x3C00)
      {
        if (a3 <= 0x3C00)
        {
          v8 = *(v4 + 18864);

          return szone_realloc(v8, a2, a3);
        }

        v16 = szone_malloc(v4, a3);
        v13 = v16;
        if (v16)
        {
          memcpy(v16, a2, v7);
          v17 = *(v4 + 18864);
LABEL_28:
          szone_free_definite_size(v17, a2, v7);
        }

        return v13;
      }

      if (a3 > 0x3C00)
      {
        v12 = szone_malloc(v4, a3);
        v13 = v12;
        if (!v12)
        {
          return v13;
        }

        if (v7 >= a3)
        {
          v15 = a3;
        }

        else
        {
          v15 = v7;
        }

        v14 = a2;
      }

      else
      {
        v12 = szone_malloc(*(v4 + 18864), a3);
        v13 = v12;
        if (!v12)
        {
          return v13;
        }

        v14 = a2;
        v15 = a3;
      }

      memcpy(v12, v14, v15);
      v17 = v4;
      goto LABEL_28;
    }

    purgeable_free(a1, a2);
    v10 = *(v4 + 18864);
    v11 = 1;
  }

  else
  {
    if (a3 <= 0x3C00)
    {
      v4 = *(a1 + 18864);
    }

    v10 = v4;
    v11 = a3;
  }

  return szone_malloc(v10, v11);
}

uint64_t purgeable_destroy(uint64_t a1)
{
  v2 = a1 + 0x4000;
  v3 = *(a1 + 18824);
  v9 = 0;
  v10 = 0;
  if (v3)
  {
    v4 = 24 * v3;
    do
    {
      v5 = *(a1 + 18832) + v4;
      v6 = *(v5 - 24);
      if (v6)
      {
        mvm_deallocate_pages(v6, *(v5 - 16), *(v2 + 8));
      }

      v4 -= 24;
    }

    while (v4);
    v7 = *(v2 + 2440);
  }

  else
  {
    v7 = 0;
  }

  large_entries_free_no_lock(a1, *(a1 + 18832), v7, &v9);
  if (v10)
  {
    mvm_deallocate_pages(v9, v10, 0);
  }

  return mvm_deallocate_pages(a1, (*MEMORY[0x1E69E9AC8] + 18943) & -*MEMORY[0x1E69E9AC8], 0);
}

unint64_t purgeable_memalign(uint64_t a1, unint64_t a2, unint64_t a3)
{
  if (a3 <= 0x3C00)
  {
    a1 = *(a1 + 18864);
  }

  return szone_memalign(a1, a2, a3);
}

void purgeable_free_definite_size(uint64_t a1, unint64_t a2, unint64_t a3)
{
  if (a3 <= 0x3C00)
  {
    a1 = *(a1 + 18864);
  }

  szone_free_definite_size(a1, a2, a3);
}

uint64_t purgeable_ptr_in_use_enumerator(uint64_t task, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(task_name_t a1, uint64_t a2, uint64_t a3, uint64_t *a4), uint64_t a6)
{
  v6 = a5;
  if (!a5)
  {
    if (task && !mach_task_is_self(task))
    {
      purgeable_ptr_in_use_enumerator_cold_1();
    }

    v6 = _malloc_default_reader;
  }

  v10 = 0;
  result = v6(task, a4, 18944, &v10);
  if (!result)
  {
    return large_in_use_enumerator(task);
  }

  return result;
}

unint64_t purgeable_good_size(uint64_t a1, unint64_t a2)
{
  if (a2 <= 0x3C00)
  {
    a1 = *(a1 + 18864);
  }

  return szone_good_size(a1, a2);
}

uint64_t purgeable_print_self()
{
  result = *MEMORY[0x1E69E9A60];
  if (result)
  {
    result = mach_task_is_self(result);
    if (!result)
    {
      purgeable_ptr_in_use_enumerator_cold_1();
    }
  }

  return result;
}

atomic_uint *purgeable_force_lock(uint64_t a1)
{
  v1 = 0;
  result = (a1 + 18816);
  atomic_compare_exchange_strong_explicit(result, &v1, *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24), memory_order_acquire, memory_order_acquire);
  if (v1)
  {
    return os_unfair_lock_lock_with_options();
  }

  return result;
}

void purgeable_force_unlock(os_unfair_lock_s *a1)
{
  v1 = a1 + 4704;
  v2 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
  v3 = v2;
  atomic_compare_exchange_strong_explicit(v1, &v3, 0, memory_order_release, memory_order_relaxed);
  if (v3 != v2)
  {
    os_unfair_lock_unlock(v1);
  }
}

uint64_t purgeable_statistics(uint64_t result, uint64_t a2)
{
  *a2 = *(result + 18820);
  v2 = *(result + 18840);
  *(a2 + 16) = v2;
  *(a2 + 24) = v2;
  *(a2 + 8) = v2;
  return result;
}

uint64_t purgeable_locked(os_unfair_lock_s *a1)
{
  v3 = 0;
  v1 = a1 + 4704;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  atomic_compare_exchange_strong_explicit(v1, &v3, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
  if (v3)
  {
    return 1;
  }

  v4 = *(StatusReg + 24);
  v5 = v4;
  atomic_compare_exchange_strong_explicit(v1, &v5, 0, memory_order_release, memory_order_relaxed);
  if (v5 != v4)
  {
    os_unfair_lock_unlock(v1);
    return 0;
  }

  return v3;
}

uint64_t purgeable_print_task(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t *), uint64_t (*a5)(const char *, ...))
{
  v8 = 0;
  result = a4(a1, a3, 18944, &v8);
  if (result)
  {
    return a5("Purgeable zone %p: inUse=%u(%y) flags=%d\n", a3, *(v8 + 18820), *(v8 + 18840), *(v8 + 16392));
  }

  return result;
}

uint64_t sanitizer_diagnose_fault_from_crash_reporter(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  v10 = 0;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  atomic_compare_exchange_strong_explicit(&crash_reporter_lock, &v10, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
  if (v10)
  {
    os_unfair_lock_lock_with_options();
  }

  v11 = a5(a3, a4, 16680);
  v21 = a5(a3, v11[31], 0x1000000);
  v12 = a5(a3, v11[30], 37748744);
  xmmword_1EAC7F860 = 0uLL;
  enumeration_context = a1;
  g_crm_reader = a5;
  num_read_memory = 0;
  szone_introspect(a3);
  if (num_read_memory)
  {
    v13 = 0;
    do
    {
      _free(read_memory[v13++]);
    }

    while (v13 < num_read_memory);
  }

  g_crm_reader = 0;
  bzero(a2, 0x448uLL);
  *a2 = a1;
  if (xmmword_1EAC7F860)
  {
    v14 = *(&xmmword_1EAC7F860 + 1);
    a2[1] = xmmword_1EAC7F860;
    a2[2] = v14;
    v15 = (a5)(a3);
    v16 = *(v15 + 8);
    v17 = *(v15 + 12);
    a2[3] = 0;
    *(a2 + 10) = stacktrace_depo_find(v12, v16, (a2 + 6));
    a2[70] = 0;
    *(a2 + 144) = stacktrace_depo_find(v12, v17, (a2 + 73));
    _free(v15);
  }

  _free(v12);
  _free(v21);
  _free(v11);
  v18 = *(StatusReg + 24);
  v19 = v18;
  atomic_compare_exchange_strong_explicit(&crash_reporter_lock, &v19, 0, memory_order_release, memory_order_relaxed);
  if (v19 != v18)
  {
    os_unfair_lock_unlock(&crash_reporter_lock);
  }

  return 0;
}

uint64_t memory_reader_adapter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (num_read_memory >= 0x400)
  {
    purgeable_ptr_in_use_enumerator_cold_1();
  }

  v5 = g_crm_reader(a1, a2, a3);
  *a4 = v5;
  v6 = num_read_memory++;
  read_memory[v6] = v5;
  if (v5)
  {
    return 0;
  }

  else
  {
    return 5;
  }
}

__n128 pointer_recorder(uint64_t a1, uint64_t a2, uint64_t a3, __n128 *a4, unsigned int a5)
{
  if (a5)
  {
    v5 = a5;
    while (a4->n128_u64[0] > enumeration_context || enumeration_context >= a4->n128_u64[1] + a4->n128_u64[0])
    {
      ++a4;
      if (!--v5)
      {
        return result;
      }
    }

    result = *a4;
    xmmword_1EAC7F860 = *a4;
  }

  return result;
}

uint64_t stacktrace_depo_find(uint64_t a1, int a2, uint64_t a3)
{
  v3 = *(a1 + 8 * (a2 & 0x7FFFF));
  if (v3 != a2 || (v3 & 0xFFFFFF00000000) > 0x40000000000000)
  {
    return 0;
  }

  v6 = -474048815;
  v7 = HIBYTE(v3);
  if (HIBYTE(v3))
  {
    v8 = 0;
    v9 = HIDWORD(v3);
    do
    {
      if (v8 >= 0x40)
      {
        v10 = *(a3 + 8 * v8);
      }

      else
      {
        v10 = *(a1 + 0x400000 + 8 * (v9 & 0x3FFFFF));
        *(a3 + 8 * v8) = v10;
      }

      v6 = (1540483477 * ((1540483477 * ((1540483477 * v10) ^ ((1540483477 * v10) >> 24))) ^ (1540483477 * v6))) ^ (1540483477 * ((1540483477 * HIDWORD(v10)) ^ ((1540483477 * HIDWORD(v10)) >> 24)));
      ++v8;
      ++v9;
    }

    while (v7 != v8);
  }

  if (v7 >= 0x40)
  {
    LODWORD(v7) = 64;
  }

  if (((1540483477 * (v6 ^ (v6 >> 13))) ^ ((1540483477 * (v6 ^ (v6 >> 13))) >> 15)) == a2)
  {
    return v7;
  }

  else
  {
    return 0;
  }
}

uint64_t sanitizer_reset_environment()
{
  unsetenv("MallocSanitizerZone");

  return unsetenv("MallocQuarantineZone");
}

mach_vm_address_t sanitizer_create_zone(uint64_t a1)
{
  v2 = MEMORY[0x1E69E9A60];
  v3 = *MEMORY[0x1E69E9A60];
  address = 0;
  v4 = MEMORY[0x1E69E9AC8];
  if (mach_vm_map(v3, &address, (*MEMORY[0x1E69E9AC8] + 16679) & -*MEMORY[0x1E69E9AC8], 0, 16777217, 0, 0, 0, 3, 3, 1u))
  {
    purgeable_ptr_in_use_enumerator_cold_1();
  }

  v5 = address;
  v6 = *&off_1F018D9D8;
  *(address + 32) = xmmword_1F018D9C8;
  *(v5 + 48) = v6;
  v7 = *&off_1F018DA18;
  *(v5 + 96) = xmmword_1F018DA08;
  *(v5 + 112) = v7;
  v8 = *&off_1F018D9F8;
  *(v5 + 64) = xmmword_1F018D9E8;
  *(v5 + 80) = v8;
  *(v5 + 192) = off_1F018DA68;
  v9 = *off_1F018DA58;
  *(v5 + 160) = xmmword_1F018DA48;
  *(v5 + 176) = v9;
  v10 = unk_1F018DA38;
  *(v5 + 128) = xmmword_1F018DA28;
  *(v5 + 144) = v10;
  v11 = *&off_1F018D9B8;
  *v5 = malloc_zone_template;
  *(v5 + 16) = v11;
  v12 = *(a1 + 96);
  if (!v12 || v12 != &szone_introspect)
  {
    purgeable_ptr_in_use_enumerator_cold_1();
  }

  *(v5 + 200) = a1;
  if (*(a1 + 104) <= 0xCu)
  {
    malloc_report(64, "Unsupported wrapped zone version: %u\n", *(a1 + 104));
  }

  _NSGetEnviron();
  v13 = _simple_getenv();
  if (v13)
  {
    v14 = *v13 == 49;
  }

  else
  {
    v14 = 0;
  }

  *(v5 + 208) = v14;
  _NSGetEnviron();
  v15 = _simple_getenv();
  if (v15)
  {
    v16 = *v15 != 49;
  }

  else
  {
    v16 = 1;
  }

  *(v5 + 209) = v16;
  v17 = env_uint("MallocSanitizerRedzoneSize", 16);
  *(v5 + 216) = v17;
  if ((v17 & 7) != 0)
  {
    purgeable_ptr_in_use_enumerator_cold_1();
  }

  *(v5 + 224) = env_uint("MallocQuarantineMaxItems", 0);
  *(v5 + 232) = env_uint("MallocQuarantineMaxSizeInMB", 256) << 20;
  v18 = MEMORY[0x1E69E9AC0];
  *(v5 + 240) = mvm_allocate_pages(0x2400008uLL, *MEMORY[0x1E69E9AC0], 0, 10);
  pages = mvm_allocate_pages(0x1000000uLL, *v18, 0, 10);
  *(v5 + 16640) = 0;
  *(v5 + 248) = pages;
  if (mach_vm_protect(*v2, v5, (*v4 + 0x3FFFLL) & -*v4, 0, 1))
  {
    purgeable_ptr_in_use_enumerator_cold_1();
  }

  return v5;
}

unint64_t sanitizer_size(uint64_t a1, char *a2)
{
  v4 = (*(*(a1 + 200) + 16))();
  v5 = v4;
  if (v4)
  {
    if (*(a1 + 209) == 1)
    {
      v6 = *&a2[v4 - (v4 & 7) - 8];
      if (*(a1 + 216) > v6 || v4 <= v6)
      {
        purgeable_ptr_in_use_enumerator_cold_1();
      }

      if (*(a1 + 208) == 1)
      {
        malloc_report(6, "size(%p) = 0x%lx - redzone 0x%lx\n", a2, v4, v6);
      }

      v5 -= v6;
    }

    else if (*(a1 + 208) == 1)
    {
      malloc_report(6, "size(%p) = 0x%lx\n", a2, v4);
    }
  }

  return v5;
}

uint64_t sanitizer_valloc(uint64_t a1, unint64_t a2)
{
  v29 = *MEMORY[0x1E69E9840];
  if (a2 <= 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = a2;
  }

  v4 = *(a1 + 216);
  v5 = v3;
  if (*(a1 + 209) == 1)
  {
    v4 = v4 - (v3 & 7) + 8;
    v5 = v4 + v3;
    if (__CFADD__(v4, v3))
    {
      return 0;
    }
  }

  _X22 = (*(*(a1 + 200) + 40))();
  if (_X22)
  {
    v7 = *MEMORY[0x1E69E9AC8] > v3;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    v8 = *(a1 + 248);
    v28 = 0;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    thread_stack_pcs();
    v9 = (1540483477 * ((1540483477 * ((1540483477 * _X22) ^ ((1540483477 * _X22) >> 24))) ^ 0x70D300A5)) ^ (1540483477 * ((1540483477 * HIDWORD(_X22)) ^ ((1540483477 * HIDWORD(_X22)) >> 24)));
    v10 = (v8 + 16 * ((1540483477 * (v9 ^ (v9 >> 13))) & 0xFFFFF ^ ((1540483477 * (v9 ^ (v9 >> 13))) >> 15)));
    v11 = *v10;
    do
    {
      _X3 = v10[1];
      __asm { CASP            X2, X3, X22, X23, [X8] }

      _ZF = _X2 == v11;
      v11 = _X2;
    }

    while (!_ZF);
  }

  if (*(a1 + 208) == 1)
  {
    malloc_report(6, "valloc(0x%lx) = %p\n", v5, _X22);
  }

  if (_X22 && *(a1 + 209) == 1)
  {
    v18 = (*(*(a1 + 200) + 16))();
    if (v18 < v5)
    {
      purgeable_ptr_in_use_enumerator_cold_1();
    }

    poison_alloc(a1, _X22, v3, v4 - v5 + v18);
  }

  return _X22;
}

uint64_t sanitizer_destroy(mach_vm_address_t a1)
{
  mvm_deallocate_pages(*(a1 + 240), 37748744, 0);
  mvm_deallocate_pages(*(a1 + 248), 0x1000000, 0);
  malloc_destroy_zone(*(a1 + 200));
  result = mach_vm_deallocate(*MEMORY[0x1E69E9A60], a1, (*MEMORY[0x1E69E9AC8] + 16679) & -*MEMORY[0x1E69E9AC8]);
  if (result)
  {
    purgeable_ptr_in_use_enumerator_cold_1();
  }

  return result;
}

void sanitizer_free_definite_size(uint64_t a1, const void *a2, uint64_t a3)
{
  v3 = a3;
  if (*(a1 + 208) == 1)
  {
    malloc_report(6, "free_definite_size(%p, 0x%lx)\n", a2, a3);
  }

  if (*(a1 + 209) == 1)
  {
    v3 = (*(*(a1 + 200) + 16))();
    poison_free(a1, a2, v3);
  }

  place_into_quarantine(a1, a2, v3);
}

uint64_t sanitizer_malloc_type_calloc(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4)
{
  v4 = a3;
  v5 = a2;
  v34 = *MEMORY[0x1E69E9840];
  v7 = 1;
  if (a2)
  {
    if (a3)
    {
      v7 = a3;
      if (a2 != 1)
      {
        if (!is_mul_ok(a2, a3))
        {
          goto LABEL_27;
        }

        v7 = a2 * a3;
        if (a2 * a3 > malloc_absolute_max_size)
        {
          goto LABEL_27;
        }
      }
    }
  }

  v8 = *(a1 + 216);
  if (*(a1 + 209) == 1)
  {
    v8 = v8 - (v7 & 7) + 8;
    v4 = v8 + v7;
    if (!__CFADD__(v8, v7))
    {
      v5 = 1;
      goto LABEL_10;
    }

LABEL_27:
    _X22 = 0;
    **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8) = 12;
    return _X22;
  }

LABEL_10:
  v9 = *(a1 + 200);
  if (*(v9 + 104) < 0x10u)
  {
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    *(StatusReg + 904) = a4;
    _X22 = (*(*(a1 + 200) + 32))();
    *(StatusReg + 904) = 0;
  }

  else
  {
    _X22 = (*(v9 + 168))(v9, v5, v4, a4);
  }

  if (*(a1 + 208) == 1)
  {
    malloc_report(6, "calloc(0x%lx, 0x%lx) = %p\n", v5, v4, _X22);
  }

  if (_X22)
  {
    v12 = *MEMORY[0x1E69E9AC8] > v7;
  }

  else
  {
    v12 = 0;
  }

  if (v12)
  {
    v13 = *(a1 + 248);
    v33 = 0;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    thread_stack_pcs();
    v14 = (1540483477 * ((1540483477 * ((1540483477 * _X22) ^ ((1540483477 * _X22) >> 24))) ^ 0x70D300A5)) ^ (1540483477 * ((1540483477 * HIDWORD(_X22)) ^ ((1540483477 * HIDWORD(_X22)) >> 24)));
    v15 = (v13 + 16 * ((1540483477 * (v14 ^ (v14 >> 13))) & 0xFFFFF ^ ((1540483477 * (v14 ^ (v14 >> 13))) >> 15)));
    v16 = *v15;
    do
    {
      _X3 = v15[1];
      __asm { CASP            X2, X3, X22, X23, [X9] }

      _ZF = _X2 == v16;
      v16 = _X2;
    }

    while (!_ZF);
  }

  else if (!_X22)
  {
    return _X22;
  }

  if (*(a1 + 209) == 1)
  {
    v23 = (*(*(a1 + 200) + 16))();
    if (v23 < v4)
    {
      purgeable_ptr_in_use_enumerator_cold_1();
    }

    poison_alloc(a1, _X22, v7, v8 - v4 + v23);
  }

  return _X22;
}

uint64_t sanitizer_malloc_type_realloc(uint64_t a1, char *a2, unint64_t a3, uint64_t a4)
{
  v39 = *MEMORY[0x1E69E9840];
  if (a3 <= 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = a3;
  }

  v7 = *(a1 + 216);
  v8 = v6;
  if (*(a1 + 209) == 1)
  {
    v7 = v7 - (v6 & 7) + 8;
    v8 = v7 + v6;
    if (__CFADD__(v7, v6))
    {
      return 0;
    }
  }

  v10 = *(a1 + 200);
  if (*(v10 + 104) < 0x10u)
  {
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    *(StatusReg + 904) = a4;
    _X24 = (*(*(a1 + 200) + 24))();
    *(StatusReg + 904) = 0;
  }

  else
  {
    _X24 = (*(v10 + 160))(v10, v8, a4);
  }

  if (_X24)
  {
    v12 = *MEMORY[0x1E69E9AC8] > v6;
  }

  else
  {
    v12 = 0;
  }

  if (v12)
  {
    v13 = *(a1 + 248);
    v38 = 0;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    thread_stack_pcs();
    v14 = (1540483477 * ((1540483477 * ((1540483477 * _X24) ^ ((1540483477 * _X24) >> 24))) ^ 0x70D300A5)) ^ (1540483477 * ((1540483477 * HIDWORD(_X24)) ^ ((1540483477 * HIDWORD(_X24)) >> 24)));
    v15 = (v13 + 16 * ((1540483477 * (v14 ^ (v14 >> 13))) & 0xFFFFF ^ ((1540483477 * (v14 ^ (v14 >> 13))) >> 15)));
    v16 = *v15;
    do
    {
      _X3 = v15[1];
      __asm { CASP            X2, X3, X24, X25, [X9] }

      _ZF = _X2 == v16;
      v16 = _X2;
    }

    while (!_ZF);
  }

  if (*(a1 + 208) == 1)
  {
    malloc_report(6, "realloc(%p, 0x%lx) = %p\n", a2, v8, _X24);
  }

  if (!a2)
  {
    if (!_X24)
    {
      return _X24;
    }

    goto LABEL_40;
  }

  v23 = (*(*(a1 + 200) + 16))();
  v24 = v23;
  if (*(a1 + 209) == 1)
  {
    v25 = *&a2[v23 - (v23 & 7) - 8];
    if (*(a1 + 216) > v25 || v23 <= v25)
    {
      purgeable_ptr_in_use_enumerator_cold_1();
    }
  }

  else
  {
    v25 = 0;
  }

  if (*(a1 + 208) == 1)
  {
    malloc_report(6, "realloc(%p, 0x%lx): size(%p) = 0x%lx - redzone 0x%lx)\n", a2, v8, a2, v23, v25);
  }

  if (_X24)
  {
    if (v24 - v25 >= v6)
    {
      v27 = v6;
    }

    else
    {
      v27 = v24 - v25;
    }

    memcpy(_X24, a2, v27);
    if (*(a1 + 209) == 1)
    {
      poison_free(a1, a2, v24);
    }

    place_into_quarantine(a1, a2, v24);
LABEL_40:
    if (*(a1 + 209) == 1)
    {
      v28 = (*(*(a1 + 200) + 16))();
      if (v28 < v8)
      {
        purgeable_ptr_in_use_enumerator_cold_1();
      }

      poison_alloc(a1, _X24, v6, v7 - v8 + v28);
    }
  }

  return _X24;
}

uint64_t sanitizer_malloc_type_memalign(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v34 = *MEMORY[0x1E69E9840];
  if (a3 <= 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = a3;
  }

  v7 = *(a1 + 216);
  v8 = v6;
  if (*(a1 + 209) == 1)
  {
    v8 = v7 + v6;
    if (__CFADD__(v7, v6))
    {
      return 0;
    }
  }

  v10 = *(a1 + 200);
  if (*(v10 + 104) < 0x10u)
  {
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    *(StatusReg + 904) = a4;
    _X22 = (*(*(a1 + 200) + 112))();
    *(StatusReg + 904) = 0;
  }

  else
  {
    _X22 = (*(v10 + 184))(v10, a2, v8, a4);
  }

  if (_X22)
  {
    v12 = *MEMORY[0x1E69E9AC8] > v6;
  }

  else
  {
    v12 = 0;
  }

  if (v12)
  {
    v13 = *(a1 + 248);
    v33 = 0;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    thread_stack_pcs();
    v14 = (1540483477 * ((1540483477 * ((1540483477 * _X22) ^ ((1540483477 * _X22) >> 24))) ^ 0x70D300A5)) ^ (1540483477 * ((1540483477 * HIDWORD(_X22)) ^ ((1540483477 * HIDWORD(_X22)) >> 24)));
    v15 = (v13 + 16 * ((1540483477 * (v14 ^ (v14 >> 13))) & 0xFFFFF ^ ((1540483477 * (v14 ^ (v14 >> 13))) >> 15)));
    v16 = *v15;
    do
    {
      _X3 = v15[1];
      __asm { CASP            X2, X3, X22, X23, [X9] }

      _ZF = _X2 == v16;
      v16 = _X2;
    }

    while (!_ZF);
  }

  if (*(a1 + 208) == 1)
  {
    malloc_report(6, "memalign(0x%lx, 0x%lx)\n", a2, v8);
  }

  if (_X22 && *(a1 + 209) == 1)
  {
    v23 = (*(*(a1 + 200) + 16))();
    if (v23 < v8)
    {
      purgeable_ptr_in_use_enumerator_cold_1();
    }

    poison_alloc(a1, _X22, v6, v7 - v8 + v23);
  }

  return _X22;
}

char *sanitizer_malloc_type_malloc_with_options(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  if ((a4 & 2) == 0 || (v13 = *(a1 + 200), *(v13 + 104) >= 0xFu) && *(v13 + 152))
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
  }

  else
  {
    thread_options = malloc_get_thread_options();
    v11 = thread_options & 0xFFFFFFFFFFFFFF00;
    *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 896) = thread_options | 8;
    v12 = thread_options;
    v10 = 1;
  }

  if (a2)
  {
    v15 = sanitizer_malloc_type_memalign(a1, a2, a3, a5);
    v16 = v15;
    if (v15 && (a4 & 1) != 0)
    {
      bzero(v15, a3);
    }
  }

  else
  {
    v16 = sanitizer_malloc_type_malloc_noalign_with_options(a1, a3, a4, a5);
  }

  if (v10)
  {
    *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 896) = v12 | v11;
  }

  return v16;
}

char *sanitizer_malloc_type_malloc_noalign_with_options(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4)
{
  v38 = *MEMORY[0x1E69E9840];
  if (a2 <= 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = a2;
  }

  v6 = *(a1 + 216);
  v7 = v5;
  if (*(a1 + 209) == 1 && (v6 += -v5 & 7, v7 = v6 + v5, __CFADD__(v6, v5)))
  {
    _X22 = 0;
    **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8) = 12;
  }

  else
  {
    v9 = *(a1 + 200);
    v10 = *(v9 + 104);
    if (v10 < 0x10)
    {
      if (v10 == 15 && *(v9 + 152))
      {
        StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        *(StatusReg + 904) = a4;
        v14 = (*(*(a1 + 200) + 152))();
      }

      else
      {
        if (a3 >= 4)
        {
          sanitizer_malloc_type_malloc_noalign_with_options_cold_1(a3);
        }

        StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        *(StatusReg + 904) = a4;
        v15 = *(a1 + 200);
        if (a3)
        {
          v14 = (*(v15 + 32))(v15, 1, v7, a3);
        }

        else
        {
          v14 = (*(v15 + 24))(v15, v7);
        }
      }

      _X22 = v14;
      *(StatusReg + 904) = 0;
    }

    else
    {
      v11 = *(v9 + 192);
      if (v11)
      {
        v12 = v11();
      }

      else if (a3)
      {
        v12 = (*(v9 + 168))(v9, 1, v7, a4);
      }

      else
      {
        v12 = (*(v9 + 160))(v9, v7, a4, a3);
      }

      _X22 = v12;
    }

    if (_X22)
    {
      v16 = *MEMORY[0x1E69E9AC8] > v5;
    }

    else
    {
      v16 = 0;
    }

    if (v16)
    {
      v17 = *(a1 + 248);
      v37 = 0;
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      thread_stack_pcs();
      v18 = (1540483477 * ((1540483477 * ((1540483477 * _X22) ^ ((1540483477 * _X22) >> 24))) ^ 0x70D300A5)) ^ (1540483477 * ((1540483477 * HIDWORD(_X22)) ^ ((1540483477 * HIDWORD(_X22)) >> 24)));
      v19 = (v17 + 16 * ((1540483477 * (v18 ^ (v18 >> 13))) & 0xFFFFF ^ ((1540483477 * (v18 ^ (v18 >> 13))) >> 15)));
      v20 = *v19;
      do
      {
        _X3 = v19[1];
        __asm { CASP            X2, X3, X22, X23, [X9] }

        _ZF = _X2 == v20;
        v20 = _X2;
      }

      while (!_ZF);
    }

    if (*(a1 + 208) == 1)
    {
      malloc_report(6, "malloc(0x%lx) = %p\n", v7, _X22);
    }

    if (_X22 && *(a1 + 209) == 1)
    {
      v27 = (*(*(a1 + 200) + 16))();
      if (v27 < v7)
      {
        purgeable_ptr_in_use_enumerator_cold_1();
      }

      poison_alloc(a1, _X22, v5, v6 - v7 + v27);
    }
  }

  return _X22;
}

void poison_alloc(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 208) == 1)
  {
    malloc_report(6, "poison_alloc(%p, 0x%lx, 0x%lx)\n", a2, a3, a4);
  }

  if ((*(a1 + 209) & 1) == 0)
  {
    purgeable_ptr_in_use_enumerator_cold_1();
  }

  *&a2[((a4 + a3) & 0xFFFFFFFFFFFFFFF8) - 8] = a4;
  functions = malloc_sanitizer_get_functions();
  if (functions && (v9 = *functions) != 0)
  {

    v9(a2, 0, a3, a4);
  }

  else if (*(a1 + 208) == 1)
  {
    malloc_report(4, "MallocSanitizerZone: Not poisoning allocation %p of size %lu with redzone size %lu due to missing pointers!\n", a2, a3, a4);
  }
}

uint64_t stacktrace_depo_insert(uint64_t a1, uint64_t *a2, unint64_t a3)
{
  if (a3 >= 0x100)
  {
    purgeable_ptr_in_use_enumerator_cold_1();
  }

  v3 = -474048815;
  if (a3)
  {
    v4 = a2;
    v5 = a3;
    do
    {
      v6 = *v4++;
      v3 = (1540483477 * ((1540483477 * ((1540483477 * v6) ^ ((1540483477 * v6) >> 24))) ^ (1540483477 * v3))) ^ (1540483477 * ((1540483477 * HIDWORD(v6)) ^ ((1540483477 * HIDWORD(v6)) >> 24)));
      --v5;
    }

    while (v5);
  }

  v7 = (1540483477 * (v3 ^ (v3 >> 13))) ^ ((1540483477 * (v3 ^ (v3 >> 13))) >> 15);
  v8 = *(a1 + 8 * (v7 & 0x7FFFF));
  if (a3 != HIBYTE(v8) || v7 != v8)
  {
    add_explicit = atomic_fetch_add_explicit((a1 + 37748736), a3, memory_order_relaxed);
    for (*(a1 + 8 * (v7 & 0x7FFFF)) = (a3 << 56) | ((add_explicit & 0x3FFFFF) << 32) | v7; a3; --a3)
    {
      v11 = *a2++;
      *(a1 + 0x400000 + 8 * (add_explicit++ & 0x3FFFFF)) = v11;
    }
  }

  return v7;
}

void poison_free(uint64_t a1, const void *a2, uint64_t a3)
{
  if (*(a1 + 208) == 1)
  {
    malloc_report(6, "poison_free(%p, 0x%lx)\n", a2, a3);
  }

  if (!a2)
  {
    purgeable_ptr_in_use_enumerator_cold_1();
  }

  functions = malloc_sanitizer_get_functions();
  if (functions && (v7 = *(functions + 8)) != 0)
  {

    v7(a2, a3);
  }

  else if (*(a1 + 208) == 1)
  {
    malloc_report(4, "MallocSanitizerZone: Not poisoning deallocation %p of size %lu due to missing pointers!\n", a2, a3);
  }
}

void place_into_quarantine(uint64_t a1, unint64_t a2, unint64_t a3)
{
  if (a2)
  {
    v3 = a3;
    if (!a3)
    {
      v3 = (*(*(a1 + 200) + 16))();
    }

    if (v3 <= *MEMORY[0x1E69E9AC8])
    {
      thread_stack_pcs();
      _X0 = 0;
      _X1 = 0;
      v9 = 0;
      __asm { CASP            X0, X1, X0, X1, [X10] }

      StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      atomic_compare_exchange_strong_explicit((a1 + 16640), &v9, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
      if (v9)
      {
        os_unfair_lock_lock_with_options();
      }

      if (*(a1 + 16664))
      {
        **(a1 + 16656) = **(a1 + 16656) & 0xFFFF000000000000 | a2 & 0xFFFFFFFFFFFFLL;
      }

      else
      {
        *(a1 + 16648) = a2;
      }

      *(a1 + 16656) = a2;
      *a2 = v3 << 48;
      *(*(a1 + 16656) + 8) = 0;
      v16 = *(a1 + 16664) + 1;
      v17 = *(a1 + 16672) + v3;
      v18 = *(a1 + 224);
      v19 = *(a1 + 232);
      v20 = v16 - v18;
      if (v16 < v18)
      {
        v20 = 0;
      }

      if (v18)
      {
        v21 = v20;
      }

      else
      {
        v21 = 0;
      }

      v22 = v17 - v19;
      if (v17 < v19)
      {
        v22 = 0;
      }

      if (v19)
      {
        v23 = v22;
      }

      else
      {
        v23 = 0;
      }

      v24 = *(a1 + 16648);
      if (v21 > 0 || (v25 = 0, v26 = 0, v27 = *(a1 + 16648), v23 >= 1))
      {
        v26 = 0;
        v25 = 0;
        v27 = *(a1 + 16648);
        do
        {
          do
          {
            v28 = *v27;
            v26 += HIWORD(v28);
            v23 -= HIWORD(v28);
            v27 = (v28 & 0xFFFFFFFFFFFFLL);
            ++v25;
          }

          while (v21-- > 1);
        }

        while (v23 > 0);
      }

      *(a1 + 16648) = v27;
      *(a1 + 16664) = v16 - v25;
      *(a1 + 16672) = v17 - v26;
      v30 = *(StatusReg + 24);
      v31 = v30;
      atomic_compare_exchange_strong_explicit((a1 + 16640), &v31, 0, memory_order_release, memory_order_relaxed);
      if (v31 != v30)
      {
        os_unfair_lock_unlock((a1 + 16640));
      }

      for (; v25; --v25)
      {
        v32 = *v24;
        v33 = HIWORD(*v24);
        if (*(a1 + 208) == 1)
        {
          malloc_report(6, "evicting %p from quarantine, size = 0x%lx\n", v24, v33);
        }

        if (*(a1 + 209) == 1)
        {
          unpoison(a1, v24, v33);
        }

        (*(*(a1 + 200) + 120))();
        v24 = (v32 & 0xFFFFFFFFFFFFLL);
      }
    }

    else
    {
      if (*(a1 + 209) == 1)
      {
        unpoison(a1, a2, v3);
      }

      v6 = *(*(a1 + 200) + 48);

      v6();
    }
  }
}

void unpoison(uint64_t a1, const void *a2, uint64_t a3)
{
  if (*(a1 + 208) == 1)
  {
    malloc_report(6, "unpoison(%p, 0x%lx)\n", a2, a3);
  }

  if (!a2)
  {
    purgeable_ptr_in_use_enumerator_cold_1();
  }

  functions = malloc_sanitizer_get_functions();
  if (functions && (v7 = *functions) != 0)
  {

    v7(a2, 0, a3, 0);
  }

  else if (*(a1 + 208) == 1)
  {
    malloc_report(4, "MallocSanitizerZone: Not unpoisoning %p of size %lu due to missing pointers!\n", a2, a3);
  }
}

atomic_uint *sanitizer_force_lock(uint64_t a1)
{
  v1 = 0;
  result = (a1 + 16640);
  atomic_compare_exchange_strong_explicit(result, &v1, *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24), memory_order_acquire, memory_order_acquire);
  if (v1)
  {
    return os_unfair_lock_lock_with_options();
  }

  return result;
}

void sanitizer_force_unlock(os_unfair_lock_s *a1)
{
  v1 = a1 + 4160;
  v2 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
  v3 = v2;
  atomic_compare_exchange_strong_explicit(v1, &v3, 0, memory_order_release, memory_order_relaxed);
  if (v3 != v2)
  {
    os_unfair_lock_unlock(v1);
  }
}

BOOL sanitizer_zone_locked(os_unfair_lock_s *a1)
{
  v1 = 0;
  v2 = a1 + 4160;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  atomic_compare_exchange_strong_explicit(v2, &v1, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
  v4 = v1 == 0;
  if (!v1)
  {
    v5 = *(StatusReg + 24);
    v6 = v5;
    atomic_compare_exchange_strong_explicit(v2, &v6, 0, memory_order_release, memory_order_relaxed);
    if (v6 != v5)
    {
      os_unfair_lock_unlock(v2);
    }
  }

  return !v4;
}

uint64_t large_debug_print(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int (*a4)(uint64_t, uint64_t, uint64_t, uint64_t *), uint64_t (*a5)(const char *))
{
  v17 = 0;
  if (a4(a1, a3, 18944, &v17))
  {
    v8 = "Failed to read szone structure\n";
    return a5(v8);
  }

  result = _simple_salloc();
  if (result)
  {
    v10 = result;
    v16 = 0;
    if (a4(a1, *(v17 + 18832), 24 * *(v17 + 18824), &v16))
    {
      v8 = "Failed to read large entries\n";
      return a5(v8);
    }

    _simple_sprintf(v10, "Large allocator active blocks - total %y:\n", *(v17 + 18840));
    v11 = v17;
    if (*(v17 + 18824))
    {
      v12 = 0;
      v13 = (v16 + 16);
      do
      {
        if (*(v13 - 2))
        {
          _simple_sprintf(v10, "   Slot %5d: %p, size %y", v12, *(v13 - 2), *(v13 - 1));
          if (*v13)
          {
            v14 = ", madvised";
          }

          else
          {
            v14 = "";
          }

          _simple_sprintf(v10, "%s\n", v14);
          v11 = v17;
        }

        v12 = (v12 + 1);
        v13 += 6;
      }

      while (v12 < *(v11 + 18824));
    }

    _simple_sprintf(v10, "Large allocator death row cache not configured\n");
    v15 = _simple_string();
    (a5)("%s\n", v15);
    return _simple_sfree();
  }

  return result;
}

void *large_entry_for_pointer_no_lock(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 18824);
  if (!v2)
  {
    return 0;
  }

  v3 = *(a1 + 18832);
  v4 = (a2 >> *MEMORY[0x1E69E9AC0]) % v2;
  while (1)
  {
    result = (v3 + 24 * v4);
    if (*result == a2)
    {
      break;
    }

    if (*result)
    {
      if (v4 + 1 == v2)
      {
        v4 = 0;
      }

      else
      {
        ++v4;
      }

      if (v4 != ((a2 >> *MEMORY[0x1E69E9AC0]) % v2))
      {
        continue;
      }
    }

    return 0;
  }

  return result;
}

void large_entries_free_no_lock(uint64_t a1, uint64_t a2, unsigned int a3, void *a4)
{
  *a4 = a2;
  v4 = *MEMORY[0x1E69E9AA0];
  if (*MEMORY[0x1E69E9AA0] <= *MEMORY[0x1E69E9AB8])
  {
    v4 = *MEMORY[0x1E69E9AB8];
  }

  a4[1] = (v4 + 24 * a3) & ~v4;
}

uint64_t large_in_use_enumerator(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = v1;
  v23 = *MEMORY[0x1E69E9840];
  v21 = 0;
  v20 = 0uLL;
  v13 = 24 * v4;
  result = v14(v1, v6, v13, &v21);
  if (!result)
  {
    if ((v9 & 4) != 0)
    {
      v16 = *MEMORY[0x1E69E9AA0];
      if (*MEMORY[0x1E69E9AA0] <= *MEMORY[0x1E69E9AB8])
      {
        v16 = *MEMORY[0x1E69E9AB8];
      }

      *&v20 = v7;
      *(&v20 + 1) = (v16 + v13) & ~v16;
      v3(v12, v11, 4, &v20, 1);
    }

    result = 0;
    if ((v9 & 3) != 0 && v5)
    {
      v17 = 0;
      v18 = 24 * v5;
      do
      {
        if (*(v21 + v18 - 24))
        {
          v19 = *(v21 + v18 - 16);
          *&v20 = *(v21 + v18 - 24);
          *(&v20 + 1) = v19;
          v22[v17] = v20;
          if ((v17 + 1) >= 0x100)
          {
            v3(v12, v11, 3, v22, (v17 + 1));
            v17 = 0;
          }

          else
          {
            ++v17;
          }
        }

        v18 -= 24;
      }

      while (v18);
      if (v17)
      {
        (v3)(v12, v11, 3, v22);
      }

      return 0;
    }
  }

  return result;
}

mach_vm_address_t large_malloc(uint64_t a1, unint64_t a2, int a3, int a4)
{
  v7 = (a1 + 0x4000);
  if (malloc_tracing_enabled == 1)
  {
    kdebug_trace();
  }

  if (a2 <= 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = a2;
  }

  v9 = *MEMORY[0x1E69E9AA8];
  v10 = MEMORY[0x1E69E9AC0];
  if (*MEMORY[0x1E69E9AA8] <= *MEMORY[0x1E69E9AC0])
  {
    LOBYTE(v9) = *MEMORY[0x1E69E9AC0];
  }

  v11 = v8 << v9;
  pages = mvm_allocate_pages(v8 << v9, a3, (2 * v7[2]._os_unfair_lock_opaque) & 0x40000000 | v7[2]._os_unfair_lock_opaque, 3);
  if (pages)
  {
    v13 = 0;
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    atomic_compare_exchange_strong_explicit(&v7[608], &v13, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
    if (v13)
    {
      os_unfair_lock_lock_with_options();
    }

    os_unfair_lock_opaque = v7[610]._os_unfair_lock_opaque;
    if (4 * v7[609]._os_unfair_lock_opaque + 4 <= os_unfair_lock_opaque)
    {
      v17 = 0;
    }

    else
    {
      if (os_unfair_lock_opaque)
      {
        v16 = (2 * os_unfair_lock_opaque) | 1;
      }

      else
      {
        v19 = *MEMORY[0x1E69E9AB0];
        if (*MEMORY[0x1E69E9AB0] <= *MEMORY[0x1E69E9AC8])
        {
          v19 = *MEMORY[0x1E69E9AC8];
        }

        v16 = v19 / 0x18 - 1;
      }

      v17 = *(a1 + 18832);
      v20 = v7[2]._os_unfair_lock_opaque;
      if ((v20 & 0x20000000) != 0)
      {
        v21 = 1610612736;
      }

      else
      {
        v21 = v20 & 0x40000000;
      }

      v22 = *MEMORY[0x1E69E9AA0];
      if (*MEMORY[0x1E69E9AA0] <= *MEMORY[0x1E69E9AB8])
      {
        v22 = *MEMORY[0x1E69E9AB8];
      }

      v23 = mvm_allocate_pages((v22 + 24 * v16) & ~v22, 0, v21, 3);
      if (!v23)
      {
        v17 = 0;
        v18 = 0;
        v34 = 0;
LABEL_50:
        v35 = *(StatusReg + 24);
        v36 = v35;
        atomic_compare_exchange_strong_explicit(&v7[608], &v36, 0, memory_order_release, memory_order_relaxed);
        if (v36 != v35)
        {
          os_unfair_lock_unlock(v7 + 608);
        }

        if (!v34)
        {
          return 0;
        }

        if (v18)
        {
          mvm_deallocate_pages(v17, v18, 0);
        }

        return pages;
      }

      v7[610]._os_unfair_lock_opaque = v16;
      *(a1 + 18832) = v23;
      if (os_unfair_lock_opaque)
      {
        v24 = os_unfair_lock_opaque;
        do
        {
          while (1)
          {
            --v24;
            v25 = v17 + 24 * v24;
            v26 = *v25;
            if (*v25)
            {
              break;
            }

LABEL_34:
            if (!v24)
            {
              goto LABEL_37;
            }
          }

          v38 = *(v25 + 8);
          v27 = v7[610]._os_unfair_lock_opaque;
          v28 = (v26 >> *v10) % v27;
          while (1)
          {
            v29 = *(a1 + 18832) + 24 * v28;
            if (!*v29)
            {
              break;
            }

            if (v28 + 1 == v27)
            {
              v28 = 0;
            }

            else
            {
              ++v28;
            }

            if (v28 == ((v26 >> *v10) % v27))
            {
              goto LABEL_34;
            }
          }

          *v29 = v26;
          *(v29 + 8) = v38;
        }

        while (v24);
      }

LABEL_37:
      if (v17)
      {
        v30 = *MEMORY[0x1E69E9AA0];
        if (*MEMORY[0x1E69E9AA0] <= *MEMORY[0x1E69E9AB8])
        {
          v30 = *MEMORY[0x1E69E9AB8];
        }

        v18 = (v30 + 24 * os_unfair_lock_opaque) & ~v30;
LABEL_41:
        v31 = v7[610]._os_unfair_lock_opaque;
        v32 = (pages >> *v10) % v31;
        while (1)
        {
          v33 = (*(a1 + 18832) + 24 * v32);
          if (!*v33)
          {
            break;
          }

          if (v32 + 1 == v31)
          {
            v32 = 0;
          }

          else
          {
            ++v32;
          }

          if (v32 == ((pages >> *v10) % v31))
          {
            goto LABEL_49;
          }
        }

        *v33 = pages;
        v33[1] = v11;
        v33[2] = 0;
LABEL_49:
        ++v7[609]._os_unfair_lock_opaque;
        *(a1 + 18840) += v11;
        v34 = 1;
        goto LABEL_50;
      }
    }

    v18 = 0;
    goto LABEL_41;
  }

  return pages;
}

BOOL free_large(uint64_t a1, const void *a2, char a3)
{
  v6 = 0;
  v7 = (a1 + 0x4000);
  v8 = (a1 + 18816);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  atomic_compare_exchange_strong_explicit((a1 + 18816), &v6, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
  if (v6)
  {
    os_unfair_lock_lock_with_options();
  }

  v10 = large_entry_for_pointer_no_lock(a1, a2);
  v11 = v10;
  if (v10)
  {
    --v7[609];
    v12 = v10[1];
    *(a1 + 18840) -= v12;
    if (malloc_tracing_enabled == 1)
    {
      kdebug_trace();
      v12 = v11[1];
    }

    v13 = *v11;
    v14 = v7[2];
    if ((v14 & 3) != 0)
    {
      mvm_protect(*v11, v12, 3, v14);
      v15 = *MEMORY[0x1E69E9AB0];
      if (*MEMORY[0x1E69E9AB0] <= *MEMORY[0x1E69E9AC8])
      {
        v15 = *MEMORY[0x1E69E9AC8];
      }

      v13 -= v15;
      v12 += 2 * v15;
    }

    *v11 = 0;
    v11[1] = 0;
    *(v11 + 4) = 0;
    v16 = v7[610];
    v17 = 0xAAAAAAAAAAAAAAABLL * ((v11 - *(a1 + 18832)) >> 3);
    v18 = MEMORY[0x1E69E9AC0];
    v19 = v17;
    do
    {
      if (v19 + 1 == v16)
      {
        v19 = 0;
      }

      else
      {
        ++v19;
      }

      v20 = *(a1 + 18832);
      v21 = (v20 + 24 * v19);
      v22 = *v21;
      v31 = *(v21 + 1);
      if (!*v21)
      {
        break;
      }

      *v21 = 0;
      v21[1] = 0;
      *(v21 + 4) = 0;
      v23 = v7[610];
      v24 = (v22 >> *v18) % v23;
      while (1)
      {
        v25 = v20 + 24 * v24;
        if (!*v25)
        {
          break;
        }

        if (v24 + 1 == v23)
        {
          v24 = 0;
        }

        else
        {
          ++v24;
        }

        if (v24 == ((v22 >> *v18) % v23))
        {
          goto LABEL_23;
        }
      }

      *v25 = v22;
      *(v25 + 8) = v31;
LABEL_23:
      ;
    }

    while (v19 != v17);
    v26 = *(StatusReg + 24);
    v27 = v26;
    atomic_compare_exchange_strong_explicit(v8, &v27, 0, memory_order_release, memory_order_relaxed);
    if (v27 != v26)
    {
      os_unfair_lock_unlock(v8);
    }

    if (v13)
    {
      mvm_deallocate_pages(v13, v12, 0);
    }
  }

  else
  {
    if ((a3 & 1) == 0)
    {
      malloc_zone_error(v7[2], 1, "pointer %p being freed was not allocated\n", a2);
    }

    v28 = *(StatusReg + 24);
    v29 = v28;
    atomic_compare_exchange_strong_explicit(v8, &v29, 0, memory_order_release, memory_order_relaxed);
    if (v29 != v28)
    {
      os_unfair_lock_unlock(v8);
    }
  }

  return v11 != 0;
}

char *large_try_shrink_in_place(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v5 = a3 - a4;
  if (a3 != a4)
  {
    v6 = a4;
    v8 = 0;
    v9 = a1 + 0x4000;
    v10 = (a1 + 18816);
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    atomic_compare_exchange_strong_explicit((a1 + 18816), &v8, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
    if (v8)
    {
      os_unfair_lock_lock_with_options();
    }

    v12 = large_entry_for_pointer_no_lock(a1, a2);
    if (v12)
    {
      *v12 = a2;
      v12[1] = v6;
      *(a1 + 18840) -= v5;
      v13 = *(v9 + 8) & 3;
      v14 = *(StatusReg + 24);
      v15 = v14;
      atomic_compare_exchange_strong_explicit((v9 + 2432), &v15, 0, memory_order_release, memory_order_relaxed);
      if (v15 != v14)
      {
        os_unfair_lock_unlock(v10);
      }

      if (v13)
      {
        v16 = MEMORY[0x1E69E9AB0];
        v17 = MEMORY[0x1E69E9AC8];
        if (*MEMORY[0x1E69E9AB0] <= *MEMORY[0x1E69E9AC8])
        {
          v18 = *MEMORY[0x1E69E9AC8];
        }

        else
        {
          v18 = *MEMORY[0x1E69E9AB0];
        }

        if (mprotect(&a2[v6], v18, 0))
        {
          malloc_report(3, "*** can't mvm_protect(0x0) region for new postlude guard page at %p\n", &a2[v6]);
        }

        v19 = *v16;
        if (*v16 <= *v17)
        {
          v19 = *v17;
        }

        v6 += v19;
        v5 -= v19;
      }

      mvm_deallocate_pages(&a2[v6], v5, 0);
    }

    else
    {
      malloc_zone_error(*(v9 + 8), 1, "large entry %p reallocated is not properly in table\n", a2);
      v20 = *(StatusReg + 24);
      v21 = v20;
      atomic_compare_exchange_strong_explicit((v9 + 2432), &v21, 0, memory_order_release, memory_order_relaxed);
      if (v21 != v20)
      {
        os_unfair_lock_unlock(v10);
      }
    }
  }

  return a2;
}

uint64_t large_try_realloc_in_place(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4)
{
  v8 = 0;
  v9 = a1 + 0x4000;
  address = a2 + a3;
  v10 = (a1 + 18816);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  atomic_compare_exchange_strong_explicit((a1 + 18816), &v8, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
  if (v8)
  {
    os_unfair_lock_lock_with_options();
  }

  v12 = large_entry_for_pointer_no_lock(a1, address);
  v13 = *(StatusReg + 24);
  v14 = v13;
  atomic_compare_exchange_strong_explicit(v10, &v14, 0, memory_order_release, memory_order_relaxed);
  if (v14 != v13)
  {
    os_unfair_lock_unlock(v10);
  }

  if (v12)
  {
    return 0;
  }

  v15 = *MEMORY[0x1E69E9AA0];
  if (*MEMORY[0x1E69E9AA0] <= *MEMORY[0x1E69E9AB8])
  {
    v15 = *MEMORY[0x1E69E9AB8];
  }

  v16 = (v15 + a4) & ~v15;
  v17 = v16 - a3;
  if (vm_allocate(*MEMORY[0x1E69E9A60], &address, v17, 100663296))
  {
    return 0;
  }

  v19 = 0;
  atomic_compare_exchange_strong_explicit(v10, &v19, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
  if (v19)
  {
    os_unfair_lock_lock_with_options();
  }

  v20 = large_entry_for_pointer_no_lock(a1, a2);
  if (v20)
  {
    *v20 = a2;
    v20[1] = v16;
    *(a1 + 18840) += v17;
    v21 = *(StatusReg + 24);
    v22 = v21;
    atomic_compare_exchange_strong_explicit(v10, &v22, 0, memory_order_release, memory_order_relaxed);
    v23 = 1;
    result = 1;
    if (v22 != v21)
    {
      goto LABEL_17;
    }
  }

  else
  {
    malloc_zone_error(*(v9 + 8), 1, "large entry %p reallocated is not properly in table\n", a2);
    v23 = 0;
    result = 0;
    v24 = *(StatusReg + 24);
    v25 = v24;
    atomic_compare_exchange_strong_explicit((v9 + 2432), &v25, 0, memory_order_release, memory_order_relaxed);
    if (v25 != v24)
    {
LABEL_17:
      os_unfair_lock_unlock(v10);
      return v23;
    }
  }

  return result;
}

uint64_t large_claimed_address(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v5 = a1 + 0x4000;
  v6 = (a1 + 18816);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  atomic_compare_exchange_strong_explicit((a1 + 18816), &v4, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
  if (v4)
  {
    os_unfair_lock_lock_with_options();
  }

  v8 = *(v5 + 2440);
  if (v8)
  {
    v9 = -*MEMORY[0x1E69E9AC8] & a2;
    v10 = (v9 >> *MEMORY[0x1E69E9AC0]) % v8;
    while (1)
    {
      v11 = (*(a1 + 18832) + 24 * v10);
      if (*v11 == v9 || *v11 <= v9 && v11[1] + *v11 > v9)
      {
        break;
      }

      if (!v10)
      {
        v10 = *(v5 + 2440);
      }

      if (--v10 == ((v9 >> *MEMORY[0x1E69E9AC0]) % v8))
      {
        goto LABEL_11;
      }
    }

    v12 = 1;
  }

  else
  {
LABEL_11:
    v12 = 0;
  }

  v13 = *(StatusReg + 24);
  v14 = v13;
  atomic_compare_exchange_strong_explicit(v6, &v14, 0, memory_order_release, memory_order_relaxed);
  if (v14 != v13)
  {
    os_unfair_lock_unlock(v6);
  }

  return v12;
}

void _szone_free(uint64_t a1, unint64_t a2, int a3)
{
  if (a2)
  {
    if ((a2 & 0xF) != 0)
    {
      if ((a3 & 1) == 0)
      {
        malloc_zone_error(*(a1 + 16392), 1, "Non-aligned pointer %p being freed\n");
        return;
      }
    }

    else
    {
      v5 = *(a1 + 16536);
      v6 = *v5;
      if (*v5)
      {
        v7 = v5[2];
        v8 = (0x9E3779B97F4A7C55 * (a2 >> 20)) >> -*(v5 + 8);
        v9 = v8;
        do
        {
          v10 = *(v7 + 8 * v9);
          if (!v10)
          {
            break;
          }

          if (v10 == (a2 & 0xFFFFFFFFFFF00000))
          {
            if (((a2 + 1032064) & 0xFFF80u) <= 0xFBF70uLL)
            {
              v17 = a1 + 16512;

              free_tiny(v17, a2, v10, 0, 0);
            }

            else
            {
              malloc_zone_error(*(a1 + 16392), 1, "Pointer %p to metadata being freed\n");
            }

            return;
          }

          if (v9 + 1 == v6)
          {
            v9 = 0;
          }

          else
          {
            ++v9;
          }
        }

        while (v9 != v8);
      }

      if ((a2 & 0x1F0) != 0)
      {
        if ((a3 & 1) == 0)
        {
          malloc_zone_error(*(a1 + 16392), 1, "Non-aligned pointer %p being freed (2)\n");
          return;
        }
      }

      else
      {
        v11 = *(a1 + 17304);
        v12 = *v11;
        if (*v11)
        {
          v13 = v11[2];
          v14 = (0x9E3779B97F4A7C55 * ((a2 & 0xFFFFFFFFFF800000) >> 20)) >> -*(v11 + 8);
          v15 = v14;
          do
          {
            v16 = *(v13 + 8 * v15);
            if (!v16)
            {
              break;
            }

            if (v16 == (a2 & 0xFFFFFFFFFF800000))
            {
              if (((a2 + 8355328) & 0x7FFE00u) <= 0x7F7C00uLL)
              {
                v19 = a1 + 17280;

                free_small(v19, a2, v16, 0);
              }

              else
              {
                malloc_zone_error(*(a1 + 16392), 1, "Pointer %p to metadata being freed (2)\n");
              }

              return;
            }

            if (v15 + 1 == v12)
            {
              v15 = 0;
            }

            else
            {
              ++v15;
            }
          }

          while (v15 != v14);
        }

        if (((*MEMORY[0x1E69E9AC8] - 1) & a2) != 0)
        {
          if ((a3 & 1) == 0)
          {
            malloc_zone_error(*(a1 + 16392), 1, "non-page-aligned, non-allocated pointer %p being freed\n");
            return;
          }
        }

        else
        {
          v18 = free_large(a1, a2, a3);
          if (!a3 || v18)
          {
            return;
          }
        }
      }
    }

    find_zone_and_free(a2, 1u);
  }
}

void szone_free_definite_size(uint64_t result, unint64_t a2, unint64_t a3)
{
  if (a2)
  {
    if ((a2 & 0xF) != 0)
    {
      malloc_zone_error(*(result + 16392), 1, "Non-aligned pointer %p being freed\n");
    }

    else if (a3 > 0x3F0)
    {
      if ((a2 & 0x1F0) != 0)
      {
        malloc_zone_error(*(result + 16392), 1, "Non-aligned pointer %p being freed (2)\n");
      }

      else if (a3 > 0x3C00)
      {
        if (((*MEMORY[0x1E69E9AC8] - 1) & a2) != 0)
        {
          malloc_zone_error(*(result + 16392), 1, "non-page-aligned, non-allocated pointer %p being freed\n");
        }

        else
        {

          free_large(result, a2, 0);
        }
      }

      else if (((a2 + 8355328) & 0x7FFE00u) <= 0x7F7C00uLL)
      {
        v4 = result + 17280;

        free_small(v4, a2, a2 & 0xFFFFFFFFFF800000, a3);
      }

      else
      {
        malloc_zone_error(*(result + 16392), 1, "Pointer %p to metadata being freed (2)\n");
      }
    }

    else if (((a2 + 1032064) & 0xFFF80u) <= 0xFBF70uLL)
    {
      v3 = result + 16512;

      free_tiny(v3, a2, a2 & 0xFFFFFFFFFFF00000, a3, 0);
    }

    else
    {
      malloc_zone_error(*(result + 16392), 1, "Pointer %p to metadata being freed\n");
    }
  }
}

mach_vm_address_t szone_malloc_should_clear(os_unfair_lock_s *a1, unint64_t a2, uint64_t a3)
{
  v3 = a3;
  if (a2 <= 0x3F0)
  {
    v6 = (a2 + 15) >> 4;
    if (!a2)
    {
      LOWORD(v6) = 1;
    }

    should_clear = tiny_malloc_should_clear(&a1[4128], v6, a3);
LABEL_13:
    v11 = should_clear;
    if (!a2)
    {
      goto LABEL_21;
    }

    goto LABEL_14;
  }

  if (a2 <= 0x3C00)
  {
    should_clear = small_malloc_should_clear(&a1[4320], ((a2 + 511) >> 9), a3);
    goto LABEL_13;
  }

  v8 = *MEMORY[0x1E69E9AA0];
  if (*MEMORY[0x1E69E9AA0] <= *MEMORY[0x1E69E9AB8])
  {
    v8 = *MEMORY[0x1E69E9AB8];
  }

  v9 = (v8 + a2) & ~v8;
  v10 = *MEMORY[0x1E69E9AA8];
  if (*MEMORY[0x1E69E9AA8] <= *MEMORY[0x1E69E9AC0])
  {
    LOBYTE(v10) = *MEMORY[0x1E69E9AC0];
  }

  if (v9 >> v10)
  {
    should_clear = large_malloc(a1, v9 >> v10, 0, a3);
    goto LABEL_13;
  }

  v11 = 0;
LABEL_14:
  if (!v3 && (a1[4098]._os_unfair_lock_opaque & 0x20) != 0 && v11 != 0)
  {
    szone_size(a1, v11);
    _platform_memset();
    return v11;
  }

LABEL_21:
  if (!v11)
  {
    **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8) = 12;
  }

  return v11;
}

uint64_t szone_size(os_unfair_lock_s *a1, unint64_t a2)
{
  if (!a2 || (a2 & 0xF) != 0)
  {
    return 0;
  }

  result = tiny_size(&a1[4128], a2);
  if (!result)
  {
    if ((a2 & 0x1F0) != 0)
    {
      return 0;
    }

    result = small_size(&a1[4320], a2);
    if (result)
    {
      return result;
    }

    if (((*MEMORY[0x1E69E9AC8] - 1) & a2) != 0)
    {
      return 0;
    }

    return szone_size_try_large(a1, a2);
  }

  return result;
}

mach_vm_address_t szone_calloc(os_unfair_lock_s *a1, unint64_t a2, unint64_t a3)
{
  if (a2 == 1)
  {
    return szone_malloc_should_clear(a1, a3, 1);
  }

  if (is_mul_ok(a2, a3))
  {
    a3 *= a2;
    if (a3 <= malloc_absolute_max_size)
    {
      return szone_malloc_should_clear(a1, a3, 1);
    }
  }

  **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8) = 12;
  return 0;
}

mach_vm_address_t szone_valloc(os_unfair_lock_s *a1, unint64_t a2)
{
  if (a2 <= 0x800000)
  {
    return szone_memalign(a1, *MEMORY[0x1E69E9AC8], a2);
  }

  v3 = *MEMORY[0x1E69E9AA0];
  if (*MEMORY[0x1E69E9AA0] <= *MEMORY[0x1E69E9AB8])
  {
    v3 = *MEMORY[0x1E69E9AB8];
  }

  v4 = (v3 + a2) & ~v3;
  v5 = *MEMORY[0x1E69E9AA8];
  if (*MEMORY[0x1E69E9AA8] <= *MEMORY[0x1E69E9AC0])
  {
    LOBYTE(v5) = *MEMORY[0x1E69E9AC0];
  }

  return large_malloc(a1, v4 >> v5, 0, 0);
}

unint64_t szone_memalign(os_unfair_lock_s *a1, unint64_t a2, unint64_t a3)
{
  if (a3 <= 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = a3;
  }

  v4 = v3 + a2;
  if (__CFADD__(v3, a2))
  {
    return 0;
  }

  if (a2 <= 0x10)
  {
LABEL_8:
    v6 = v3;
    return szone_malloc_should_clear(a1, v6, 0);
  }

  v7 = v4 - 1;
  if ((v4 - 1) <= 0x3F0)
  {
    return tiny_memalign(a1, a2, v3, v7);
  }

  if (a2 <= 0x200 && a3 >= 0x3F1)
  {
    goto LABEL_8;
  }

  v8 = a3 >= 0x3F1;
  if (a3 >= 0x3F1)
  {
    v9 = v3;
  }

  else
  {
    v9 = 1024;
  }

  if (!v8)
  {
    v7 = a2 + 1023;
  }

  if (v7 <= 0x3C00)
  {
    return small_memalign(a1, a2, v9, v7);
  }

  if (v9 >= 0x3C01 && *MEMORY[0x1E69E9AC8] >= a2)
  {
    v6 = v9;
    return szone_malloc_should_clear(a1, v6, 0);
  }

  v10 = 15361;
  if (v9 > 0x3C01)
  {
    v10 = v9;
  }

  v11 = *MEMORY[0x1E69E9AA0];
  if (*MEMORY[0x1E69E9AA0] <= *MEMORY[0x1E69E9AB8])
  {
    v11 = *MEMORY[0x1E69E9AB8];
  }

  v12 = (v11 + v10) & ~v11;
  v13 = *MEMORY[0x1E69E9AA8];
  v14 = *MEMORY[0x1E69E9AC0];
  if (*MEMORY[0x1E69E9AA8] <= *MEMORY[0x1E69E9AC0])
  {
    LOBYTE(v13) = *MEMORY[0x1E69E9AC0];
  }

  v15 = v12 >> v13;
  if (!v15)
  {
    return 0;
  }

  v16 = __clz(__rbit64(a2));
  if (v14 <= v16)
  {
    LOBYTE(v14) = v16;
  }

  return large_malloc(a1, v15, v14, 0);
}

uint64_t szone_size_try_large(os_unfair_lock_s *a1, unint64_t a2)
{
  v4 = 0;
  v5 = a1 + 4704;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  atomic_compare_exchange_strong_explicit(&a1[4704], &v4, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
  if (v4)
  {
    os_unfair_lock_lock_with_options();
  }

  v7 = large_entry_for_pointer_no_lock(a1, a2);
  if (v7)
  {
    v8 = v7[1];
  }

  else
  {
    v8 = 0;
  }

  v9 = *(StatusReg + 24);
  v10 = v9;
  atomic_compare_exchange_strong_explicit(v5, &v10, 0, memory_order_release, memory_order_relaxed);
  if (v10 != v9)
  {
    os_unfair_lock_unlock(v5);
  }

  return v8;
}

char *szone_realloc(os_unfair_lock_s *a1, void *a2, unint64_t a3)
{
  v4 = a1;
  if (!a2)
  {
    v10 = a3;
LABEL_13:

    return szone_malloc_should_clear(a1, v10, 0);
  }

  v5 = a2;
  if (!a3)
  {
    _szone_free(a1, a2, 0);
    a1 = v4;
    v10 = 1;
    goto LABEL_13;
  }

  v6 = szone_size(a1, a2);
  if (!v6)
  {
    malloc_zone_error(v4[4098]._os_unfair_lock_opaque, 1, "pointer %p being reallocated was not allocated\n", v5);
    return 0;
  }

  v7 = v6;
  v8 = szone_good_size(v6, a3);
  if (v8 == v7)
  {
    return v5;
  }

  v9 = v8;
  if (v8 > 0x3F0)
  {
    if (v8 > 0x3C00)
    {
      if (v7 < 0x3C01)
      {
        goto LABEL_33;
      }

      os_unfair_lock_opaque = v4[4098]._os_unfair_lock_opaque;
      if ((os_unfair_lock_opaque & 0x80) != 0)
      {
        goto LABEL_33;
      }

      if (v8 > v7 >> 1)
      {
        if (v8 <= v7)
        {
          goto LABEL_36;
        }

        if (large_try_realloc_in_place(v4, v5, v7, v8))
        {
          if ((v4[4098]._os_unfair_lock_opaque & 0x20) != 0)
          {
            goto LABEL_37;
          }

          return v5;
        }

        goto LABEL_33;
      }

      return large_try_shrink_in_place(v4, v5, v7, v8);
    }

    else
    {
      if ((v7 - 1009) >> 4 > 0x380)
      {
        goto LABEL_33;
      }

      if (v8 > v7 >> 1)
      {
        if (v8 > v7)
        {
          if (!small_try_realloc_in_place(&v4[4320], v5, v7, v8))
          {
            goto LABEL_33;
          }

          goto LABEL_24;
        }

LABEL_35:
        LOBYTE(os_unfair_lock_opaque) = v4[4098]._os_unfair_lock_opaque;
LABEL_36:
        if ((os_unfair_lock_opaque & 0x20) != 0)
        {
LABEL_37:
          _platform_memset();
        }

        return v5;
      }

      return small_try_shrink_in_place(&v4[4320], v5, v7, v8);
    }
  }

  else
  {
    if (v7 > 0x3F0)
    {
      goto LABEL_33;
    }

    if (v8 > v7 >> 1)
    {
      if (v8 > v7)
      {
        if (!tiny_try_realloc_in_place(&v4[4128], v5, v7, v8))
        {
LABEL_33:
          if (v9 > v7 >> 1 && v9 <= v7)
          {
            goto LABEL_35;
          }

          should_clear = szone_malloc_should_clear(v4, a3, 0);
          if (should_clear)
          {
            v14 = should_clear;
            if (v7 >= a3)
            {
              v15 = a3;
            }

            else
            {
              v15 = v7;
            }

            memcpy(should_clear, v5, v15);
            _szone_free(v4, v5, 0);
            return v14;
          }

          return 0;
        }

LABEL_24:
        if ((v4[4098]._os_unfair_lock_opaque & 0x20) != 0)
        {
          goto LABEL_37;
        }

        return v5;
      }

      goto LABEL_35;
    }

    return tiny_try_shrink_in_place(&v4[4128], v5, v7, v8);
  }
}

unint64_t szone_good_size(uint64_t a1, unint64_t a2)
{
  if (a2 > 0x3F0)
  {
    if (a2 > 0x3C00)
    {
      v3 = *MEMORY[0x1E69E9AA0];
      if (*MEMORY[0x1E69E9AA0] <= *MEMORY[0x1E69E9AB8])
      {
        v3 = *MEMORY[0x1E69E9AB8];
      }

      v4 = (v3 + a2) & ~v3;
      if (v4 < a2)
      {
        return -1;
      }

      else
      {
        return v4;
      }
    }

    else
    {
      return (a2 + 511) & 0x7E00;
    }
  }

  else if (a2)
  {
    return (a2 + 15) & 0x7F0;
  }

  else
  {
    return 16;
  }
}

uint64_t szone_batch_malloc(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 > 0x3F0)
  {
    return 0;
  }

  else
  {
    return tiny_batch_malloc(a1, a2, a3, a4);
  }
}

void szone_batch_free(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (a3)
  {
    tiny_batch_free(a1, a2, a3);
    v6 = 8 * a3;
    v7 = a2 - 8;
    do
    {
      v8 = *(v7 + v6);
      if (v8)
      {
        _szone_free(a1, v8, 0);
      }

      v6 -= 8;
    }

    while (v6);
  }
}

uint64_t scalable_zone_info_task(uint64_t a1, unsigned int (*a2)(uint64_t, void, uint64_t, uint64_t *), uint64_t a3, void *a4, unsigned int a5)
{
  v31 = *MEMORY[0x1E69E9840];
  v24 = 0;
  if (a2(a1, *(a3 + 17136), 2560, &v24))
  {
    return 0;
  }

  v10 = *(a3 + 17120);
  if ((v10 & 0x80000000) != 0)
  {
    v13 = 0;
    v12 = 0;
    LODWORD(v11) = 0;
  }

  else
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = v24 - 432;
    v15 = v10 + 1;
    do
    {
      v13 += *(v14 + 8) + *v14;
      v12 += *(v14 + 40);
      v11 += *(v14 + 24);
      v14 += 2560;
      --v15;
    }

    while (v15);
  }

  __src[4] = v12;
  __src[5] = v11;
  if (a2(a1, *(a3 + 17904), 2560, &v24))
  {
    return 0;
  }

  v17 = *(a3 + 17888);
  if ((v17 & 0x80000000) != 0)
  {
    v19 = 0;
    LODWORD(v18) = 0;
  }

  else
  {
    v18 = 0;
    v19 = 0;
    v20 = v24 - 432;
    v21 = v17 + 1;
    do
    {
      v13 += *(v20 + 8) + *v20;
      v19 += *(v20 + 40);
      v18 += *(v20 + 24);
      v20 += 2560;
      --v21;
    }

    while (v21);
  }

  __src[6] = v19;
  __src[7] = v18;
  v22 = *(a3 + 18840);
  v26 = *(a3 + 18820);
  v27 = v22;
  v28 = 0;
  v29 = 0;
  v30 = *(a3 + 16392);
  __src[0] = v26 + v12 + v19;
  __src[1] = v18 + v11 + v22;
  v23 = ((*(a3 + 17288) - *(a3 + 17296)) << 23) + ((*(a3 + 16520) - *(a3 + 16528)) << 20) + v22;
  __src[2] = v23 - v13;
  __src[3] = v23;
  memcpy(a4, __src, 4 * a5);
  return 1;
}

uint64_t szone_pressure_relief(uint64_t a1, uint64_t a2)
{
  if (malloc_tracing_enabled == 1)
  {
    szone_pressure_relief_cold_1();
  }

  return 0;
}

uint64_t scalable_zone_statistics(uint64_t a1, uint64_t a2, int a3)
{
  v3 = 0;
  if (a3 <= 1)
  {
    if (a3)
    {
      if (a3 != 1)
      {
        return v3;
      }

      v4 = *(a1 + 17888);
      if ((v4 & 0x80000000) != 0)
      {
        v7 = 0;
        v6 = 0;
        v5 = 0;
      }

      else
      {
        v5 = 0;
        v6 = 0;
        v7 = 0;
        v8 = *(a1 + 17904) - 432;
        v9 = v4 + 1;
        do
        {
          v7 += *(v8 + 8) + *v8;
          v6 += *(v8 + 40);
          v5 += *(v8 + 24);
          v8 += 2560;
          --v9;
        }

        while (v9);
      }

      *a2 = v6;
      v15 = (*(a1 + 17288) - *(a1 + 17296)) << 23;
    }

    else
    {
      v11 = *(a1 + 17120);
      if ((v11 & 0x80000000) != 0)
      {
        v5 = 0;
        v12 = 0;
        v7 = 0;
      }

      else
      {
        v7 = 0;
        v12 = 0;
        v5 = 0;
        v13 = *(a1 + 17136) - 432;
        v14 = v11 + 1;
        do
        {
          v7 += *(v13 + 8) + *v13;
          v12 += *(v13 + 40);
          v5 += *(v13 + 24);
          v13 += 2560;
          --v14;
        }

        while (v14);
      }

      *a2 = v12;
      v15 = (*(a1 + 16520) - *(a1 + 16528)) << 20;
    }

    *(a2 + 8) = v5;
    *(a2 + 16) = v15 - v7;
    *(a2 + 24) = v15;
    return 1;
  }

  if (a3 == 2)
  {
    *a2 = *(a1 + 18820);
    v10 = *(a1 + 18840);
    *(a2 + 16) = v10;
    *(a2 + 24) = v10;
    *(a2 + 8) = v10;
    return 1;
  }

  if (a3 == 3 || a3 == 4)
  {
    *a2 = 0;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    v3 = 1;
    *(a2 + 8) = 0;
  }

  return v3;
}

uint64_t szone_ptr_in_use_enumerator(uint64_t task, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(task_name_t a1, uint64_t a2, uint64_t a3, uint64_t *a4), uint64_t a6)
{
  v6 = a5;
  if (!a5)
  {
    if (task && !mach_task_is_self(task))
    {
      purgeable_ptr_in_use_enumerator_cold_1();
    }

    v6 = _malloc_default_reader_0;
  }

  v10 = 0;
  result = v6(task, a4, 18944, &v10);
  if (!result)
  {
    result = tiny_in_use_enumerator(task);
    if (!result)
    {
      result = small_in_use_enumerator(task);
      if (!result)
      {
        return large_in_use_enumerator(task);
      }
    }
  }

  return result;
}

uint64_t szone_check(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = szone_check_counter + 1;
  szone_check_counter = v9;
  HIDWORD(v10) = 989560465 * v9;
  LODWORD(v10) = 989560465 * v9;
  if ((v10 >> 4) <= 0x68DB8)
  {
    malloc_report(5, "at szone_check counter=%d\n", v9);
    v9 = szone_check_counter;
  }

  if (v9 < szone_check_start || v9 % szone_check_modulo)
  {
    return 1;
  }

  return szone_check_all(a1, a2, a3, a4, a5, a6, a7, a8);
}

int *szone_force_lock(uint64_t a1)
{
  v2 = (a1 + 0x4000);
  if (*(a1 + 17120) >= 1)
  {
    v3 = 0;
    v4 = 0;
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    do
    {
      v6 = 0;
      v7 = (*(a1 + 17136) + v3);
      atomic_compare_exchange_strong_explicit(v7 + 1, &v6, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
      if (v6)
      {
        os_unfair_lock_lock_with_options();
      }

      v8 = 0;
      atomic_compare_exchange_strong_explicit(v7, &v8, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
      if (v8)
      {
        os_unfair_lock_lock_with_options();
      }

      ++v4;
      v3 += 2560;
    }

    while (v4 < v2[184]);
  }

  v9 = 0;
  v10 = *(a1 + 17136);
  v11 = (v10 - 2560);
  v12 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  atomic_compare_exchange_strong_explicit((v10 - 2556), &v9, *(v12 + 24), memory_order_acquire, memory_order_acquire);
  if (v9)
  {
    os_unfair_lock_lock_with_options();
  }

  v13 = 0;
  atomic_compare_exchange_strong_explicit(v11, &v13, *(v12 + 24), memory_order_acquire, memory_order_acquire);
  if (v13)
  {
    os_unfair_lock_lock_with_options();
  }

  if (v2[376] >= 1)
  {
    v14 = 0;
    v15 = 0;
    do
    {
      v16 = 0;
      v17 = (*(a1 + 17904) + v14);
      atomic_compare_exchange_strong_explicit(v17 + 1, &v16, *(v12 + 24), memory_order_acquire, memory_order_acquire);
      if (v16)
      {
        os_unfair_lock_lock_with_options();
      }

      v18 = 0;
      atomic_compare_exchange_strong_explicit(v17, &v18, *(v12 + 24), memory_order_acquire, memory_order_acquire);
      if (v18)
      {
        os_unfair_lock_lock_with_options();
      }

      ++v15;
      v14 += 2560;
    }

    while (v15 < v2[376]);
  }

  v19 = 0;
  v20 = *(a1 + 17904);
  v21 = (v20 - 2560);
  atomic_compare_exchange_strong_explicit((v20 - 2556), &v19, *(v12 + 24), memory_order_acquire, memory_order_acquire);
  if (v19)
  {
    os_unfair_lock_lock_with_options();
  }

  v22 = 0;
  atomic_compare_exchange_strong_explicit(v21, &v22, *(v12 + 24), memory_order_acquire, memory_order_acquire);
  if (v22)
  {
    os_unfair_lock_lock_with_options();
  }

  v23 = 0;
  result = v2 + 608;
  atomic_compare_exchange_strong_explicit(v2 + 608, &v23, *(v12 + 24), memory_order_acquire, memory_order_acquire);
  if (v23)
  {

    return os_unfair_lock_lock_with_options();
  }

  return result;
}

void szone_force_unlock(uint64_t a1)
{
  v2 = a1 + 0x4000;
  v3 = (a1 + 18816);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v5 = *(StatusReg + 24);
  v6 = v5;
  atomic_compare_exchange_strong_explicit(v3, &v6, 0, memory_order_release, memory_order_relaxed);
  if (v6 != v5)
  {
    os_unfair_lock_unlock(v3);
  }

  if ((*(v2 + 1504) & 0x80000000) == 0)
  {
    v7 = -1;
    v8 = -2560;
    do
    {
      v9 = (*(a1 + 17904) + v8);
      v10 = *(StatusReg + 24);
      v11 = v10;
      atomic_compare_exchange_strong_explicit(v9, &v11, 0, memory_order_release, memory_order_relaxed);
      if (v11 != v10)
      {
        os_unfair_lock_unlock(v9);
      }

      v12 = (*(a1 + 17904) + v8 + 4);
      v13 = *(StatusReg + 24);
      v14 = v13;
      atomic_compare_exchange_strong_explicit(v12, &v14, 0, memory_order_release, memory_order_relaxed);
      if (v14 != v13)
      {
        os_unfair_lock_unlock(v12);
      }

      ++v7;
      v8 += 2560;
    }

    while (v7 < *(v2 + 1504));
  }

  if ((*(v2 + 736) & 0x80000000) == 0)
  {
    v15 = -1;
    v16 = -2560;
    do
    {
      v17 = (*(a1 + 17136) + v16);
      v18 = *(StatusReg + 24);
      v19 = v18;
      atomic_compare_exchange_strong_explicit(v17, &v19, 0, memory_order_release, memory_order_relaxed);
      if (v19 != v18)
      {
        os_unfair_lock_unlock(v17);
      }

      v20 = (*(a1 + 17136) + v16 + 4);
      v21 = *(StatusReg + 24);
      v22 = v21;
      atomic_compare_exchange_strong_explicit(v20, &v22, 0, memory_order_release, memory_order_relaxed);
      if (v22 != v21)
      {
        os_unfair_lock_unlock(v20);
      }

      ++v15;
      v16 += 2560;
    }

    while (v15 < *(v2 + 736));
  }
}

uint64_t szone_locked(uint64_t a1)
{
  v2 = 0;
  v3 = a1 + 0x4000;
  v4 = (a1 + 18816);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  atomic_compare_exchange_strong_explicit(v4, &v2, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
  if (!v2)
  {
    v6 = *(StatusReg + 24);
    v7 = v6;
    atomic_compare_exchange_strong_explicit(v4, &v7, 0, memory_order_release, memory_order_relaxed);
    if (v7 != v6)
    {
      os_unfair_lock_unlock(v4);
    }

    if ((*(v3 + 1504) & 0x80000000) != 0)
    {
LABEL_13:
      if ((*(v3 + 736) & 0x80000000) != 0)
      {
        return 0;
      }

      v18 = -1;
      for (i = -2560; ; i += 2560)
      {
        v20 = 0;
        atomic_compare_exchange_strong_explicit((*(a1 + 17136) + i), &v20, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
        if (v20)
        {
          break;
        }

        v21 = (*(a1 + 17136) + i);
        v22 = *(StatusReg + 24);
        v23 = v22;
        atomic_compare_exchange_strong_explicit(v21, &v23, 0, memory_order_release, memory_order_relaxed);
        if (v23 != v22)
        {
          os_unfair_lock_unlock(v21);
        }

        v24 = 0;
        atomic_compare_exchange_strong_explicit((*(a1 + 17136) + i + 4), &v24, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
        if (v24)
        {
          break;
        }

        v25 = (*(a1 + 17136) + i + 4);
        v26 = *(StatusReg + 24);
        v27 = v26;
        atomic_compare_exchange_strong_explicit(v25, &v27, 0, memory_order_release, memory_order_relaxed);
        if (v27 != v26)
        {
          os_unfair_lock_unlock(v25);
        }

        if (++v18 >= *(v3 + 736))
        {
          return 0;
        }
      }
    }

    else
    {
      v8 = -1;
      v9 = -2560;
      while (1)
      {
        v10 = 0;
        atomic_compare_exchange_strong_explicit((*(a1 + 17904) + v9), &v10, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
        if (v10)
        {
          break;
        }

        v11 = (*(a1 + 17904) + v9);
        v12 = *(StatusReg + 24);
        v13 = v12;
        atomic_compare_exchange_strong_explicit(v11, &v13, 0, memory_order_release, memory_order_relaxed);
        if (v13 != v12)
        {
          os_unfair_lock_unlock(v11);
        }

        v14 = 0;
        atomic_compare_exchange_strong_explicit((*(a1 + 17904) + v9 + 4), &v14, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
        if (v14)
        {
          break;
        }

        v15 = (*(a1 + 17904) + v9 + 4);
        v16 = *(StatusReg + 24);
        v17 = v16;
        atomic_compare_exchange_strong_explicit(v15, &v17, 0, memory_order_release, memory_order_relaxed);
        if (v17 != v16)
        {
          os_unfair_lock_unlock(v15);
        }

        ++v8;
        v9 += 2560;
        if (v8 >= *(v3 + 1504))
        {
          goto LABEL_13;
        }
      }
    }
  }

  return 1;
}

uint64_t szone_reinit_lock(uint64_t result)
{
  *(result + 18816) = 0;
  if ((*(result + 17888) & 0x80000000) == 0)
  {
    v1 = (*(result + 17904) - 2560);
    v2 = -1;
    do
    {
      *v1 = 0;
      ++v2;
      v1 += 320;
    }

    while (v2 < *(result + 17888));
  }

  if ((*(result + 17120) & 0x80000000) == 0)
  {
    v3 = (*(result + 17136) - 2560);
    v4 = -1;
    do
    {
      *v3 = 0;
      ++v4;
      v3 += 320;
    }

    while (v4 < *(result + 17120));
  }

  return result;
}

uint64_t szone_statistics_task(uint64_t task, uint64_t a2, uint64_t (*a3)(task_name_t a1, uint64_t a2, uint64_t a3, uint64_t *a4), uint64_t a4)
{
  v5 = a3;
  if (!a3)
  {
    if (task && !mach_task_is_self(task))
    {
      purgeable_ptr_in_use_enumerator_cold_1();
    }

    v5 = _malloc_default_reader_0;
  }

  v25 = 0;
  result = v5(task, a2, 18944, &v25);
  if (!result)
  {
    v24 = 0;
    result = v5(task, *(v25 + 17136), 2560 * *(v25 + 17120), &v24);
    if (!result)
    {
      v9 = *(v25 + 17120);
      if ((v9 & 0x80000000) != 0)
      {
        v12 = 0;
        v11 = 0;
        v10 = 0;
      }

      else
      {
        v10 = 0;
        v11 = 0;
        v12 = 0;
        v13 = v24 - 432;
        v14 = v9 + 1;
        do
        {
          v12 += *(v13 + 8) + *v13;
          v11 += *(v13 + 40);
          v10 += *(v13 + 24);
          v13 += 2560;
          --v14;
        }

        while (v14);
      }

      result = v5(task, *(v25 + 17904), 2560 * *(v25 + 17888), &v24);
      if (!result)
      {
        v15 = v25;
        v16 = *(v25 + 17888);
        if ((v16 & 0x80000000) == 0)
        {
          v17 = v24 - 432;
          v18 = v16 + 1;
          do
          {
            v12 += *(v17 + 8) + *v17;
            v11 += *(v17 + 40);
            v10 += *(v17 + 24);
            v17 += 2560;
            --v18;
          }

          while (v18);
        }

        result = 0;
        *a4 = *(v25 + 18820) + v11;
        v19 = v15[2065] - v15[2066];
        v20 = v15[2161] - v15[2162];
        v21 = v15[2355];
        v22 = v21 + v10;
        v23 = v21 + (v19 << 20) + (v20 << 23);
        *(a4 + 24) = v23;
        *(a4 + 8) = v22;
        *(a4 + 16) = v23 - v12;
      }
    }
  }

  return result;
}

mach_vm_address_t create_scalable_szone(uint64_t a1, int a2)
{
  pages = mvm_allocate_pages((*MEMORY[0x1E69E9AC8] + 18943) & -*MEMORY[0x1E69E9AC8], 0, 0x40000000, 1);
  if (pages)
  {
    v4 = a2 & 0xBFFFFFFF | ((_dyld_get_image_slide() == 0) << 30);
    v5 = max_magazines;
    if (max_magazines >= 0x40)
    {
      v5 = 64;
    }

    if (v5 <= 1)
    {
      v6 = 1;
    }

    else
    {
      v6 = v5;
    }

    rack_init(pages + 16512, 1, v6, v4);
    rack_init(pages + 17280, 2, v6, v4);
    *(pages + 18856) = malloc_entropy;
    *(pages + 104) = 16;
    *(pages + 16) = szone_size;
    *(pages + 24) = szone_malloc;
    *(pages + 32) = szone_calloc;
    *(pages + 40) = szone_valloc;
    *(pages + 48) = szone_free;
    *(pages + 56) = szone_realloc;
    *(pages + 64) = szone_destroy;
    *(pages + 80) = szone_batch_malloc;
    *(pages + 88) = szone_batch_free;
    *(pages + 96) = &szone_introspect;
    *(pages + 112) = szone_memalign;
    *(pages + 120) = szone_free_definite_size;
    *(pages + 128) = szone_pressure_relief;
    *(pages + 136) = szone_claimed_address;
    *(pages + 144) = szone_try_free_default;
    *(pages + 160) = szone_malloc_type_malloc;
    *(pages + 168) = szone_malloc_type_calloc;
    *(pages + 176) = szone_malloc_type_realloc;
    *(pages + 184) = szone_malloc_type_memalign;
    *pages = 0;
    *(pages + 8) = 0;
    mprotect(pages, 0xC8uLL, 1);
    *(pages + 16392) = v4;
    *(pages + 18816) = 0;
    *(pages + 0x4000) = -1;
  }

  return pages;
}

uint64_t szone_destroy(uint64_t a1)
{
  v2 = a1 + 0x4000;
  v9 = 0;
  v10 = 0;
  v3 = *(a1 + 18824);
  if (v3)
  {
    v4 = 24 * v3;
    do
    {
      v5 = *(a1 + 18832) + v4;
      v6 = *(v5 - 24);
      if (v6)
      {
        mvm_deallocate_pages(v6, *(v5 - 16), *(v2 + 8));
      }

      v4 -= 24;
    }

    while (v4);
    v7 = *(v2 + 2440);
  }

  else
  {
    v7 = 0;
  }

  large_entries_free_no_lock(a1, *(a1 + 18832), v7, &v9);
  if (v10)
  {
    mvm_deallocate_pages(v9, v10, *(v2 + 8));
  }

  rack_destroy_regions(a1 + 16512, 0x100000);
  rack_destroy_regions(a1 + 17280, 0x800000);
  rack_destroy(a1 + 16512);
  rack_destroy(a1 + 17280);
  return mvm_deallocate_pages(a1, (*MEMORY[0x1E69E9AC8] + 18943) & -*MEMORY[0x1E69E9AC8], 0);
}

uint64_t szone_check_all(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (tiny_check(a1 + 16512, szone_check_counter, a3, a4, a5, a6, a7, a8))
  {
    v14 = *(a1 + 17304);
    if (*v14)
    {
      v15 = 0;
      StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      do
      {
        v17 = *(v14[2] + 8 * v15);
        if ((v17 + 1) >= 2)
        {
          v18 = 0;
          v19 = *(a1 + 17904);
          v20 = *(v17 + 24);
          v21 = (v19 + 2560 * v20);
          atomic_compare_exchange_strong_explicit(v21, &v18, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
          if (v18)
          {
            os_unfair_lock_lock_with_options();
          }

          v22 = *(v17 + 24);
          if (v22 != v20)
          {
            do
            {
              v23 = *(StatusReg + 24);
              v24 = v23;
              atomic_compare_exchange_strong_explicit(v21, &v24, 0, memory_order_release, memory_order_relaxed);
              if (v24 != v23)
              {
                os_unfair_lock_unlock(v21);
              }

              v25 = 0;
              v21 = (v19 + 2560 * v22);
              atomic_compare_exchange_strong_explicit(v21, &v25, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
              if (v25)
              {
                os_unfair_lock_lock_with_options();
              }

              v26 = v22 == *(v17 + 24);
              v22 = *(v17 + 24);
            }

            while (!v26);
          }

          small_check_region(a1 + 17280, v17, v15, szone_check_counter);
          v27 = *(StatusReg + 24);
          v28 = v27;
          atomic_compare_exchange_strong_explicit(v21, &v28, 0, memory_order_release, memory_order_relaxed);
          v29 = v28 == v27;
          if (!v30)
          {
            if (!v29)
            {
              os_unfair_lock_unlock(v21);
            }

            goto LABEL_25;
          }

          if (!v29)
          {
            os_unfair_lock_unlock(v21);
          }
        }

        ++v15;
        v14 = *(a1 + 17304);
      }

      while (v15 < *v14);
    }

    v31 = 0;
    while (1)
    {
      small_free_list_check(a1 + 17280, v31, szone_check_counter, v9, v10, v11, v12, v13);
      if (!v32)
      {
        break;
      }

      if (++v31 == 31)
      {
        return 1;
      }
    }
  }

LABEL_25:
  result = 0;
  *(a1 + 16392) &= ~0x80000000;
  return result;
}

uint64_t szone_print(uint64_t a1, uint64_t a2, char *a3, unsigned int (*a4)(uint64_t, uint64_t, uint64_t, uint64_t *), uint64_t (*a5)(const char *))
{
  v28 = *MEMORY[0x1E69E9840];
  v25 = 0;
  v26 = 0;
  if (a4(a1, a3, 18944, &v25))
  {
    v10 = "Failed to read szone structure\n";
    return a5(v10);
  }

  if (!scalable_zone_info_task(a1, a4, v25, v27, 0xDu))
  {
    v10 = "Failed to get scalable zone info\n";
    return a5(v10);
  }

  (a5)("Scalable zone %p: inUse=%u(%u) touched=%u allocated=%u flags=0x%x\n", a3, v27[0], v27[1], v27[2], v27[3], v27[12]);
  (a5)("\ttiny=%u(%u) small=%u(%u) large=%u(%u)\n", v27[4], v27[5], v27[6], v27[7], v27[8], v27[9]);
  if (!mach_task_is_self(a1))
  {
    v10 = "(unable to safely further examine remote process)\n";
    return a5(v10);
  }

  (a5)("%lu tiny regions:\n", *(v25 + 16520));
  v12 = v25;
  if (*(v25 + 16528))
  {
    (a5)("[%lu tiny regions have been vm_deallocate'd]\n", *(v25 + 16528));
    v12 = v25;
  }

  v23 = 0;
  v24 = 0;
  v22 = 0;
  if (a4(a1, *(v12 + 16536), 32, &v24))
  {
    v10 = "Failed to map tiny rack region_generation\n";
    return a5(v10);
  }

  if (a4(a1, v24[2], 8, &v23))
  {
    v10 = "Failed to map tiny rack hashed_regions\n";
    return a5(v10);
  }

  if (a4(a1, *(v25 + 17136), 2560 * *(v25 + 17120), &v22))
  {
    v10 = "Failed to map tiny rack magazines\n";
    return a5(v10);
  }

  v13 = *v24;
  if (*v24)
  {
    v14 = 0;
    v15 = 0;
    do
    {
      if ((*(v23 + 8 * v14) + 1) >= 2)
      {
        if (a4(a1, *(v23 + 8 * v14), 0x100000, &v26))
        {
LABEL_46:
          v10 = "Failed to map region %p\n";
          return a5(v10);
        }

        if (*(v26 + 24) == -1)
        {
          ++v15;
        }

        print_tiny_region(a1);
        v13 = *v24;
      }

      ++v14;
    }

    while (v14 < v13);
  }

  if (*(v22 - 408))
  {
    v16 = "Tiny recirc depot: total bytes: %llu, in-use bytes: %llu, allocations: %llu, regions: %d (min # retained regions: %d)\n";
  }

  else
  {
    v16 = "Tiny recirc depot is empty\n";
  }

  a5(v16);
  if (a2)
  {
    print_tiny_free_list(a1, a4, a5, (a3 + 16512));
  }

  (a5)("%lu small regions:\n", *(v25 + 17288));
  v17 = v25;
  if (*(v25 + 17296))
  {
    (a5)("[%lu small regions have been vm_deallocate'd]\n", *(v25 + 17296));
    v17 = v25;
  }

  if (a4(a1, *(v17 + 17304), 32, &v24))
  {
    v10 = "Failed to map small rack region_generation\n";
    return a5(v10);
  }

  if (a4(a1, v24[2], 8, &v23))
  {
    v10 = "Failed to map small rack hashed_regions\n";
    return a5(v10);
  }

  if (a4(a1, *(v25 + 17904), 2560 * *(v25 + 17888), &v22))
  {
    v10 = "Failed to map small rack magazines\n";
    return a5(v10);
  }

  v18 = *v24;
  if (*v24)
  {
    v19 = 0;
    v20 = 0;
    do
    {
      if ((*(v23 + 8 * v19) + 1) >= 2)
      {
        if (a4(a1, *(v23 + 8 * v19), 0x800000, &v26))
        {
          goto LABEL_46;
        }

        if (*(v26 + 24) == -1)
        {
          ++v20;
        }

        print_small_region(a1);
        v18 = *v24;
      }

      ++v19;
    }

    while (v19 < v18);
  }

  if (*(v22 - 408))
  {
    v21 = "Small recirc depot: total bytes: %llu, in-use bytes: %llu, allocations: %llu, regions: %d (min # retained regions: %d)\n";
  }

  else
  {
    v21 = "Small recirc depot is empty\n";
  }

  a5(v21);
  if (a2)
  {
    print_small_free_list(a1, a4, a5, (a3 + 17280));
  }

  return large_debug_print(a1, a2, a3, a4, a5);
}

unint64_t small_finalize_region(unint64_t result, uint64_t a2)
{
  v3 = *(a2 + 2128);
  if (v3)
  {
    v4 = result;
    v5 = *(a2 + 2144) - v3;
    v6 = v5 + 0x800000;
    v7 = v3 >> 9;
    v8 = ((v5 + 16743936) >> 9) & 0x3FFF;
    v9 = *(((v5 + 0x7FFFFF) & 0xFFFFFFFFFF800000 | (2 * (((v5 + 0x7FFFFF - ((v5 + 0x7FFFFF) & 0xFF800000 | 0x8200)) >> 9) & 0x3FFFLL))) + 0x28) & 0x7FFF;
    if (v8)
    {
      v10 = v8 >= v9;
    }

    else
    {
      v10 = 0;
    }

    if (v10)
    {
      v11 = v6 - (v9 << 9);
      if (*((v11 & 0xFFFFFFFFFF800000 | (2 * (((v11 - (v11 & 0xFF800000 | 0x8200)) >> 9) & 0x3FFF))) + 0x28) < 0)
      {
        small_free_list_find_by_ptr(result, v6 - (v9 << 9), v9);
        small_free_list_remove_ptr(v4, a2, v12, v9);
        LOWORD(v7) = v9 + v7;
        v6 = v11;
      }
    }

    result = small_free_list_add_ptr(v4, a2, v6, v7);
    *(a2 + 2128) = 0;
  }

  *(a2 + 2144) = 0;
  return result;
}

void small_free_list_find_by_ptr(uint64_t a1, unint64_t a2, unsigned int a3)
{
  v3 = a2 & 0xFFFFFFFFFF800000;
  v4 = *((a2 & 0xFFFFFFFFFF800000 | (2 * (((a2 - (a2 & 0xFF800000 | 0x8200)) >> 9) & 0x3FFF))) + 0x28);
  if ((a3 | 0x8000) == v4)
  {
    if (((*MEMORY[0x1E69E9AC8] - 1) & a2) == 0 && a3 << 9 >= *MEMORY[0x1E69E9AB0])
    {
      v6 = 0;
      v7 = v3 + 32678;
      v8 = v3 + 32694;
      do
      {
        v9 = *(v8 + v6);
        if (v9)
        {
          v10 = v9;
          v11 = (v7 & 0xFFFFFFFFFF800000) + ((v9 & 0x7FFF) << 9);
          if (v10 >= 0)
          {
            v11 = 0;
          }

          if (v11 == a2)
          {
            break;
          }
        }

        v6 += 18;
        v7 += 18;
      }

      while (v6 != 594);
    }
  }

  else
  {
    malloc_zone_error(*(a1 + 620), 1, "small_free_list_find_by_ptr: ptr is not free (ptr metadata !SMALL_IS_FREE), ptr=%p msize=%d metadata=0x%x\n", a2, a3, v4);
    __break(1u);
  }
}

void small_free_list_remove_ptr(uint64_t a1, uint64_t a2, unint64_t a3, unsigned int a4)
{
  if (a3)
  {
    v4 = a3 & 0xFFFFFFFFFF800000;
    if ((a3 & 0xFFFFFFFFFF800000 | 0x7FA6) > a3)
    {
      v5 = a3;
    }

    else
    {
      v5 = a3;
      if ((v4 | 0x81F8) > a3)
      {
        v6 = *(a3 + 16);
        v7 = v4 + ((v6 & 0x7FFF) << 9);
        if (v6 < 0)
        {
          v5 = v7;
        }

        else
        {
          v5 = 0;
        }
      }
    }
  }

  else
  {
    v5 = 0;
  }

  v8 = v5 & 0xFFFFFFFFFF800000;
  v9 = ((v5 - (v5 & 0xFF800000 | 0x8200)) >> 9) & 0x3FFF;
  v10 = ((v5 + (a4 << 9) + 8355327) >> 9) & 0x3FFF;
  if (v9 > v10)
  {
    purgeable_ptr_in_use_enumerator_cold_1();
  }

  v11 = v8 | 0x28;
  if ((*(v11 + 2 * v9) & 0x7FFF) != a4)
  {
    purgeable_ptr_in_use_enumerator_cold_1();
  }

  *(v11 + 2 * v9) = 0;
  *(v11 + 2 * v10) = 0;

  small_free_list_remove_ptr_no_clear(a1, a2, a3, a4);
}

unint64_t small_free_list_add_ptr(uint64_t a1, uint64_t a2, unint64_t a3, unsigned int a4)
{
  LODWORD(v4) = a4 - 1;
  if (a4 >= 0x20)
  {
    v4 = 30;
  }

  else
  {
    v4 = v4;
  }

  if (!a4)
  {
    purgeable_ptr_in_use_enumerator_cold_1();
  }

  v5 = *(a2 + 32 + 8 * v4);
  if (((*MEMORY[0x1E69E9AC8] - 1) & a3) == 0 && a4 << 9 >= *MEMORY[0x1E69E9AB0])
  {
    v7 = 0;
    v8 = (a3 & 0xFFFFFFFFFF800000 | 0x7FB6);
    while (*v8)
    {
      v7 -= 18;
      v8 += 9;
      if (v7 == -594)
      {
        goto LABEL_15;
      }
    }

    *v8 = (a3 >> 9) & 0x3FFF | 0x8000;
    a3 = (a3 & 0xFFFFFFFFFF800000) - v7 + 32678;
  }

LABEL_15:
  v9 = a3 & 0xFFFFFFFFFF800000;
  if (a3 < (a3 & 0xFFFFFFFFFF800000 | 0x7FA6) || a3 >= (v9 | 0x81F8))
  {
    v13 = *(a1 + 632) ^ a1;
    *(a3 + 8) = BYTE4(v13) + v13 + ((HIDWORD(v13) + v13) >> 16) + ((WORD2(v13) + v13 + ((HIDWORD(v13) + v13) >> 16)) >> 8);
    *a3 = 0;
    LODWORD(v13) = ((v13 ^ v5) >> 32) + (v13 ^ v5) + ((((v13 ^ v5) >> 32) + (v13 ^ v5)) >> 16);
    *(a3 + 24) = v13 + BYTE1(v13);
    *(a3 + 16) = v5;
    v12 = a3;
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = v5;
    if (a3)
    {
      v10 = *(a3 + 16);
      v11 = v9 + ((v10 & 0x7FFF) << 9);
      if (v10 < 0)
      {
        v12 = v11;
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  v14 = ((v12 - (v12 & 0xFF800000 | 0x8200)) >> 9) & 0x3FFF;
  v15 = ((v12 + (a4 << 9) + 8355327) >> 9) & 0x3FFF;
  if (v14 > v15)
  {
    purgeable_ptr_in_use_enumerator_cold_1();
  }

  v16 = (v12 & 0xFFFFFFFFFF800000) + 40;
  *(v16 + 2 * v14) = a4 | 0x8000;
  *(v16 + 2 * v15) = a4 | 0x8000;
  if (!v5)
  {
    goto LABEL_32;
  }

  v17 = v5 & 0xFFFFFFFFFF800000;
  if (v5 < (v5 & 0xFFFFFFFFFF800000 | 0x7FA6) || v5 >= (v17 | 0x81F8))
  {
    v18 = *(a1 + 632) ^ a1 ^ a3;
    *(v5 + 8) = BYTE4(v18) + v18 + ((HIDWORD(v18) + v18) >> 16) + ((WORD2(v18) + v18 + ((HIDWORD(v18) + v18) >> 16)) >> 8);
  }

  else if ((*(v5 + 16) & 0x8000) == 0 || (*(v5 + 16) & 0x7FFF) << 9 == -v17)
  {
LABEL_32:
    *(a2 + 4 * (v4 >> 5) + 2088) |= 1 << v4;
    goto LABEL_33;
  }

  *v5 = a3;
LABEL_33:
  *(a2 + 32 + 8 * v4) = a3;
  return a3;
}

uint64_t small_free_detach_region(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v6 = a3 + 33280;
  v7 = a3 + 0x800000;
  v8 = (a3 + 33280) & 0xFFFFFFFFFF800000 | 0x28;
  do
  {
    v9 = *(v8 + 2 * (((v6 + 8355328) >> 9) & 0x3FFF));
    v10 = v9 & 0x7FFF;
    if ((v9 & 0x7FFF) == 0)
    {
      break;
    }

    if (v9 < 0)
    {
      small_free_list_find_by_ptr(a1, v6, v9 & 0x7FFF);
      small_free_list_remove_ptr_no_clear(a1, a2, v11, v10);
    }

    else
    {
      v5 = (v5 + 1);
    }

    v6 += v10 << 9;
  }

  while (v6 < v7);
  return v5;
}

void small_free_list_remove_ptr_no_clear(uint64_t result, uint64_t a2, unint64_t a3, unsigned int a4)
{
  if (a4 >= 0x20)
  {
    v4 = 30;
  }

  else
  {
    v4 = a4 - 1;
  }

  if (!a3)
  {
    purgeable_ptr_in_use_enumerator_cold_1();
  }

  v5 = a3 & 0xFFFFFFFFFF800000;
  v7 = (a3 & 0xFFFFFFFFFF800000 | 0x7FA6) > a3 || (a3 & 0xFFFFFFFFFF800000 | 0x81F8) <= a3;
  if (!v7)
  {
    v8 = *a3;
    v11 = *(a3 + 8);
    if (!*a3)
    {
      goto LABEL_36;
    }

    goto LABEL_17;
  }

  v8 = *a3;
  v9 = *(result + 632) ^ result;
  v10 = v9 ^ *a3;
  if (*(a3 + 8) != (BYTE4(v10) + v10 + ((HIDWORD(v10) + v10) >> 16) + ((WORD2(v10) + v10 + ((HIDWORD(v10) + v10) >> 16)) >> 8)))
  {
    v38 = a3;
    v39 = *a3;
LABEL_95:
    free_list_checksum_botch(result, v38, v39);
    __break(1u);
    return;
  }

  v11 = *(a3 + 16);
  v12 = v9 ^ v11;
  if (*(a3 + 24) != (BYTE4(v12) + v12 + ((HIDWORD(v12) + v12) >> 16) + ((WORD2(v12) + v12 + ((HIDWORD(v12) + v12) >> 16)) >> 8)))
  {
    v38 = (a3 + 16);
    v39 = *(a3 + 16);
    goto LABEL_95;
  }

  if (!v8)
  {
    goto LABEL_36;
  }

LABEL_17:
  v13 = v8 < (v8 & 0xFFFFFFFFFF800000 | 0x7FA6) || v8 >= (v8 & 0xFFFFFFFFFF800000 | 0x81F8);
  v14 = v13;
  if (v13)
  {
    v15 = *(v8 + 16);
    v16 = *(result + 632) ^ result ^ v15;
    if (*(v8 + 24) != (BYTE4(v16) + v16 + ((HIDWORD(v16) + v16) >> 16) + ((WORD2(v16) + v16 + ((HIDWORD(v16) + v16) >> 16)) >> 8)))
    {
      v38 = (v8 + 16);
LABEL_94:
      v39 = v15;
      goto LABEL_95;
    }

    if (!v15)
    {
LABEL_35:
      v18 = 0;
      goto LABEL_47;
    }
  }

  else
  {
    if ((*(v8 + 16) & 0x8000) == 0 || (*(v8 + 16) & 0x7FFF) << 9 == -(v8 & 0xFFFFFFFFFF800000))
    {
LABEL_36:
      *(a2 + 8 * v4 + 32) = v11;
      if (v11)
      {
        v21 = v11 & 0xFFFFFFFFFF800000;
        if (v11 < (v11 & 0xFFFFFFFFFF800000 | 0x7FA6))
        {
          goto LABEL_56;
        }

        v22 = v11;
        if (v11 >= (v21 | 0x81F8))
        {
LABEL_41:
          if (v22)
          {
LABEL_56:
            v27 = v11 < v21 + 32678 || v11 >= v21 + 33272;
            v28 = v27;
            if (!v27)
            {
              if ((*(v11 + 16) & 0x8000) == 0 || (*(v11 + 16) & 0x7FFF) << 9 == -v21)
              {
                goto LABEL_84;
              }

              v15 = *v11;
              if (!*v11)
              {
                goto LABEL_74;
              }

              goto LABEL_66;
            }

            v15 = *v11;
            v29 = *(result + 632) ^ result ^ *v11;
            if (*(v11 + 8) == (BYTE4(v29) + v29 + ((HIDWORD(v29) + v29) >> 16) + ((WORD2(v29) + v29 + ((HIDWORD(v29) + v29) >> 16)) >> 8)))
            {
              if (!v15)
              {
LABEL_74:
                v31 = 0;
LABEL_76:
                v34 = a3;
                if (!v7)
                {
                  v35 = *(a3 + 16);
                  v36 = v5 + ((v35 & 0x7FFF) << 9);
                  if (v35 < 0)
                  {
                    v34 = v36;
                  }

                  else
                  {
                    v34 = 0;
                  }
                }

                if (v31 != v34)
                {
                  small_free_list_remove_ptr_no_clear_cold_2(result, a3, v15);
                }

                if (v28)
                {
                  v37 = *(result + 632) ^ result ^ v8;
                  *(v11 + 8) = BYTE4(v37) + v37 + ((HIDWORD(v37) + v37) >> 16) + ((WORD2(v37) + v37 + ((HIDWORD(v37) + v37) >> 16)) >> 8);
                }

                *v11 = v8;
                goto LABEL_84;
              }

LABEL_66:
              v30 = v15 & 0xFFFFFFFFFF800000;
              if (v15 < (v15 & 0xFFFFFFFFFF800000 | 0x7FA6))
              {
                v31 = v15;
              }

              else
              {
                v31 = v15;
                if (v15 < (v30 | 0x81F8))
                {
                  v32 = *(v15 + 16);
                  v33 = v32;
                  v31 = v30 + ((v32 & 0x7FFF) << 9);
                  if (v33 >= 0)
                  {
                    v31 = 0;
                  }
                }
              }

              goto LABEL_76;
            }

            v38 = v11;
            goto LABEL_94;
          }

          goto LABEL_44;
        }

        if ((*(v11 + 16) & 0x8000) != 0)
        {
          v22 = v21 + ((*(v11 + 16) & 0x7FFF) << 9);
          goto LABEL_41;
        }
      }

LABEL_44:
      *(a2 + 4 * (v4 >> 5) + 2088) &= ~(1 << v4);
      if (!v11)
      {
        goto LABEL_84;
      }

      goto LABEL_55;
    }

    v15 = *(v8 + 8);
    if (!v15)
    {
      goto LABEL_35;
    }
  }

  v17 = v15 & 0xFFFFFFFFFF800000;
  if (v15 < (v15 & 0xFFFFFFFFFF800000 | 0x7FA6))
  {
    v18 = v15;
  }

  else
  {
    v18 = v15;
    if (v15 < (v17 | 0x81F8))
    {
      v19 = *(v15 + 16);
      v20 = v19;
      v18 = v17 + ((v19 & 0x7FFF) << 9);
      if (v20 >= 0)
      {
        v18 = 0;
      }
    }
  }

LABEL_47:
  v23 = a3;
  if (!v7)
  {
    v24 = *(a3 + 16);
    v25 = v24;
    v23 = v5 + ((v24 & 0x7FFF) << 9);
    if (v25 >= 0)
    {
      v23 = 0;
    }
  }

  if (v18 != v23)
  {
    small_free_list_remove_ptr_no_clear_cold_1(result, a3, v15);
  }

  if ((v14 & 1) == 0)
  {
    *(v8 + 8) = v11;
    if (!v11)
    {
      goto LABEL_84;
    }

    goto LABEL_55;
  }

  v26 = *(result + 632) ^ result ^ v11;
  *(v8 + 24) = BYTE4(v26) + v26 + ((HIDWORD(v26) + v26) >> 16) + ((WORD2(v26) + v26 + ((HIDWORD(v26) + v26) >> 16)) >> 8);
  *(v8 + 16) = v11;
  if (v11)
  {
LABEL_55:
    v21 = v11 & 0xFFFFFFFFFF800000;
    goto LABEL_56;
  }

LABEL_84:
  if (!v7)
  {
    *a3 = -1;
    *(a3 + 8) = -1;
    *(a3 + 16) = 0;
  }
}

uint64_t small_free_reattach_region(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v6 = a3 + 33280;
  v7 = a3 + 0x800000;
  v8 = (a3 + 33280) & 0xFFFFFFFFFF800000 | 0x28;
  do
  {
    v9 = *(v8 + 2 * (((v6 + 8355328) >> 9) & 0x3FFF));
    v10 = v9 & 0x7FFF;
    if ((v9 & 0x7FFF) == 0)
    {
      break;
    }

    if ((v9 & 0x8000) != 0)
    {
      small_free_list_add_ptr(a1, a2, v6, v9 & 0x7FFF);
    }

    else
    {
      v5 += v9 << 9;
    }

    v6 += v10 << 9;
  }

  while (v6 < v7);
  return v5;
}

unint64_t small_free_scan_madvise_free(uint64_t a1, os_unfair_lock_s *a2, uint64_t a3)
{
  v38[1] = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E69E9AA8];
  result = MEMORY[0x1EEE9AC00]((((2 * ((*MEMORY[0x1E69E9AB0] + 8355327) >> *MEMORY[0x1E69E9AA8])) & 0xFFFFFFFFFFFFFFFCLL) + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = v38 - result;
  LODWORD(v14) = 0;
  v15 = *MEMORY[0x1E69E9AA0];
  v16 = ~*MEMORY[0x1E69E9AA0];
  v17 = v8;
  while (1)
  {
    v18 = *(v12 + 2 * (((v10 + v17 + 1) >> 9) & 0x3FFF));
    if (v18 == 0x8000 && v17 == v8)
    {
      break;
    }

    v20 = v18 & 0x7FFF;
    if ((v18 & 0x7FFF) != 0)
    {
      if ((v18 & 0x8000) != 0)
      {
        result = (v17 + v15 + 10) & v16;
        v21 = v20 << 9;
        v22 = (v17 + (v20 << 9) - 2) & v16;
        v23 = v22 > result;
        v24 = v22 - result;
        if (v23)
        {
          result = (result - a3) >> v9;
          v25 = &v13[4 * v14];
          *v25 = result;
          *(v25 + 1) = v24 >> v9;
          LODWORD(v14) = v14 + 1;
        }
      }

      else
      {
        v21 = v18 << 9;
      }

      v17 += v21;
      if (v17 < v11)
      {
        continue;
      }
    }

    goto LABEL_17;
  }

  v26 = (v8 + v15 + 10) & v16;
  v27 = (v8 + 8388606) & v16;
  v23 = v27 > v26;
  v28 = v27 - v26;
  if (v23)
  {
    v29 = (v26 - v8) >> v9;
    v30 = &v13[4 * v14];
    *v30 = v29;
    *(v30 + 1) = v28 >> v9;
    LODWORD(v14) = v14 + 1;
  }

LABEL_17:
  if (v14 >= 1)
  {
    atomic_fetch_add((a3 + 28), 1u);
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v32 = *(StatusReg + 24);
    v33 = v32;
    atomic_compare_exchange_strong_explicit(a2, &v33, 0, memory_order_release, memory_order_relaxed);
    if (v33 != v32)
    {
      os_unfair_lock_unlock(a2);
    }

    v14 = v14;
    v34 = (v13 + 2);
    do
    {
      v35 = a3 + (*(v34 - 1) << *v6);
      v36 = *v34;
      v34 += 2;
      result = mvm_madvise_free(a1, a3, v35, v35 + (v36 << *v6), 0, *(a1 + 620) & 0x20);
      --v14;
    }

    while (v14);
    v37 = 0;
    atomic_compare_exchange_strong_explicit(a2, &v37, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
    if (v37)
    {
      result = os_unfair_lock_lock_with_options();
    }

    atomic_fetch_add((a3 + 28), 0xFFFFFFFF);
  }

  return result;
}

unint64_t small_memalign(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a4 + 511;
  should_clear = small_malloc_should_clear(a1 + 17280, ((a4 + 511) >> 9), 0);
  v9 = should_clear;
  if (should_clear)
  {
    if (((a2 - 1) & should_clear) != 0)
    {
      v10 = a2 - ((a2 - 1) & should_clear);
    }

    else
    {
      v10 = 0;
    }

    v11 = a3 + 511;
    v12 = (v10 + 511) >> 9;
    v41 = (a3 + 511) >> 9;
    v13 = (v7 >> 9) - v41 - v12;
    v42 = v13;
    if (v12)
    {
      v14 = 0;
      v40 = v10 + should_clear;
      v15 = *(a1 + 17904);
      v16 = *((should_clear & 0xFFFFFFFFFF800000) + 0x18);
      v17 = (v15 + 2560 * v16);
      StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      atomic_compare_exchange_strong_explicit(v17, &v14, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
      if (v14)
      {
        os_unfair_lock_lock_with_options();
      }

      v19 = *((v9 & 0xFFFFFFFFFF800000) + 0x18);
      if (v19 != v16)
      {
        do
        {
          v20 = *(StatusReg + 24);
          v21 = v20;
          atomic_compare_exchange_strong_explicit(v17, &v21, 0, memory_order_release, memory_order_relaxed);
          if (v21 != v20)
          {
            os_unfair_lock_unlock(v17);
          }

          v22 = 0;
          v17 = (v15 + 2560 * v19);
          atomic_compare_exchange_strong_explicit(v17, &v22, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
          if (v22)
          {
            os_unfair_lock_lock_with_options();
          }

          v23 = v19 == *((v9 & 0xFFFFFFFFFF800000) + 0x18);
          v19 = *((v9 & 0xFFFFFFFFFF800000) + 0x18);
        }

        while (!v23);
      }

      *((v9 & 0xFFFFFFFFFF800000) + 2 * (((v9 - (v9 & 0xFF800000) - 33280) >> 9) & 0x3FFF) + 0x28) = v12;
      v13 = v42;
      *((v40 & 0xFFFFFFFFFF800000 | (2 * (((v40 - (v40 & 0xFF800000 | 0x8200)) >> 9) & 0x3FFF))) + 0x28) = v42 + v41;
      ++v17[542]._os_unfair_lock_opaque;
      v24 = *(StatusReg + 24);
      v25 = v24;
      atomic_compare_exchange_strong_explicit(v17, &v25, 0, memory_order_release, memory_order_relaxed);
      if (v25 != v24)
      {
        os_unfair_lock_unlock(v17);
      }

      free_small(a1 + 17280, v9, v9 & 0xFFFFFFFFFF800000, v12 << 9);
      v9 = v40;
      v11 = a3 + 511;
    }

    v26 = v13;
    if (v13)
    {
      v27 = 0;
      v28 = (v11 & 0x1FFFE00) + v9;
      v29 = *(a1 + 17904);
      v30 = *((v9 & 0xFFFFFFFFFF800000) + 0x18);
      v31 = (v29 + 2560 * v30);
      v32 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      atomic_compare_exchange_strong_explicit(v31, &v27, *(v32 + 24), memory_order_acquire, memory_order_acquire);
      if (v27)
      {
        os_unfair_lock_lock_with_options();
      }

      v33 = *((v9 & 0xFFFFFFFFFF800000) + 0x18);
      if (v33 != v30)
      {
        do
        {
          v34 = *(v32 + 24);
          v35 = v34;
          atomic_compare_exchange_strong_explicit(v31, &v35, 0, memory_order_release, memory_order_relaxed);
          if (v35 != v34)
          {
            os_unfair_lock_unlock(v31);
          }

          v36 = 0;
          v31 = (v29 + 2560 * v33);
          atomic_compare_exchange_strong_explicit(v31, &v36, *(v32 + 24), memory_order_acquire, memory_order_acquire);
          if (v36)
          {
            os_unfair_lock_lock_with_options();
          }

          v23 = v33 == *((v9 & 0xFFFFFFFFFF800000) + 0x18);
          v33 = *((v9 & 0xFFFFFFFFFF800000) + 0x18);
        }

        while (!v23);
      }

      *((v9 & 0xFFFFFFFFFF800000) + 2 * (((v9 - (v9 & 0xFF800000) - 33280) >> 9) & 0x3FFF) + 0x28) = v41;
      *((v28 & 0xFFFFFFFFFF800000 | (2 * (((v28 - (v28 & 0xFF800000 | 0x8200)) >> 9) & 0x3FFF))) + 0x28) = v42;
      ++v31[542]._os_unfair_lock_opaque;
      v37 = *(v32 + 24);
      v38 = v37;
      atomic_compare_exchange_strong_explicit(v31, &v38, 0, memory_order_release, memory_order_relaxed);
      if (v38 != v37)
      {
        os_unfair_lock_unlock(v31);
      }

      free_small(a1 + 17280, v28, v28 & 0xFFFFFFFFFF800000, (v26 << 9));
    }
  }

  return v9;
}

mach_vm_address_t small_malloc_should_clear(unint64_t a1, uint64_t a2, int a3)
{
  v4 = a2;
  v6 = rack_get_thread_index(a1) % *(a1 + 608);
  v7 = *(a1 + 624) + 2560 * v6;
  if (malloc_tracing_enabled == 1)
  {
    kdebug_trace();
  }

  v8 = 0;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  atomic_compare_exchange_strong_explicit(v7, &v8, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
  if (v8)
  {
    os_unfair_lock_lock_with_options();
  }

  if (*(v7 + 16) == v4)
  {
    v10 = *(v7 + 8);
    *(v7 + 8) = 0;
    *(v7 + 16) = 0;
    *(v7 + 24) = 0;
LABEL_8:
    v12 = *(StatusReg + 24);
    v13 = v12;
    atomic_compare_exchange_strong_explicit(v7, &v13, 0, memory_order_release, memory_order_relaxed);
    if (v13 != v12)
    {
      os_unfair_lock_unlock(v7);
    }

    if (a3)
    {
      _platform_memset();
    }

    return v10;
  }

  small_malloc_from_free_list(a1, v7, v4);
  v10 = v11;
  if (v11)
  {
    goto LABEL_8;
  }

  v78 = (v7 + 2152);
  v15 = (v7 + 4);
  v77 = vdupq_n_s64(0x7F7E00uLL);
  while (1)
  {
    v16 = 0;
    v17 = *(a1 + 624);
    v18 = (v17 - 2560);
    atomic_compare_exchange_strong_explicit((v17 - 2560), &v16, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
    if (v16)
    {
      os_unfair_lock_lock_with_options();
    }

    v19 = v17 - 2528;
    v20 = (v17 - 2288);
    v21 = v4;
    while (1)
    {
      if ((v21 & 0xFFE0) != 0)
      {
        v22 = 30;
      }

      else
      {
        v22 = v21 - 1;
      }

      v23 = *(v19 + 8 * v22);
      if (!v23 || ((v24 = v23 & 0xFFFFFFFFFF800000, (v23 & 0xFFFFFFFFFF800000 | 0x7FA6) <= v23) ? (v25 = (v23 & 0xFFFFFFFFFF800000 | 0x81F8) > v23) : (v25 = 0), v25 && ((v26 = *(v23 + 16), (v26 & 0x8000) == 0) || (v23 = v24 + ((v26 & 0x7FFF) << 9)) == 0)))
      {
        v27 = v22 >> 5;
        v28 = -1 << v22;
        while (1)
        {
          v29 = v27;
          if (v27)
          {
            break;
          }

          v27 = 1;
          v30 = *(v17 - 472) & v28;
          v28 = -1;
          if (v30)
          {
            goto LABEL_34;
          }
        }

        if (v27 == 1)
        {
          goto LABEL_54;
        }

        v30 = 0;
LABEL_34:
        if ((v31 = __clz(__rbit32(v30)) + 32 * v29, v31 > 0x1D) || (v23 = *(v19 + 8 * v31)) == 0 || ((v32 = v23 & 0xFFFFFFFFFF800000, (v23 & 0xFFFFFFFFFF800000 | 0x7FA6) <= v23) ? (v33 = (v23 & 0xFFFFFFFFFF800000 | 0x81F8) > v23) : (v33 = 0), v33 && ((v34 = *(v23 + 16), (v34 & 0x8000) == 0) || (v23 = v32 + ((v34 & 0x7FFF) << 9)) == 0)))
        {
          v23 = *v20;
          if (!*v20)
          {
            goto LABEL_54;
          }

          v35 = v23 & 0xFFFFFFFFFF800000;
          if ((v23 & 0xFFFFFFFFFF800000 | 0x7FA6) <= v23 && (v23 & 0xFFFFFFFFFF800000 | 0x81F8) > v23)
          {
            v37 = *(v23 + 16);
            if ((v37 & 0x8000) == 0)
            {
              goto LABEL_54;
            }

            v23 = v35 + ((v37 & 0x7FFF) << 9);
            if (!v23)
            {
              goto LABEL_54;
            }
          }
        }
      }

      v38 = v23 & 0xFFFFFFFFFF800000;
      if ((v23 & 0xFFFFFFFFFF800000) == 0)
      {
LABEL_54:
        v39 = *(StatusReg + 24);
        v40 = v39;
        atomic_compare_exchange_strong_explicit(v18, &v40, 0, memory_order_release, memory_order_relaxed);
        if (v40 != v39)
        {
          os_unfair_lock_unlock(v18);
        }

        goto LABEL_56;
      }

      if (!*((v23 & 0xFFFFFFFFFF800000) + 0x1C))
      {
        break;
      }

      if (++v21 >= 0x1Fu)
      {
        goto LABEL_54;
      }
    }

    v51 = *v38;
    v52 = *((v23 & 0xFFFFFFFFFF800000) + 8);
    v76 = v15;
    if (*v38)
    {
      *(v51 + 8) = v52;
    }

    else
    {
      *(v17 - 384) = v52;
    }

    if (!v52)
    {
      v52 = (v17 - 376);
    }

    *v52 = v51;
    *v38 = 0;
    *((v23 & 0xFFFFFFFFFF800000) + 8) = 0;
    --*(v17 - 388);
    v53 = small_free_detach_region(a1, v17 - 2560, v38);
    *(v38 + 24) = v6;
    if (*(v38 + 28))
    {
      purgeable_ptr_in_use_enumerator_cold_1();
    }

    v54 = v53;
    v55 = small_free_reattach_region(a1, v7, v38);
    *(v17 - 408) -= v55;
    *(v17 - 400) -= 8355328;
    *(v17 - 392) -= v54;
    v56.i64[1] = v77.i64[1];
    v56.i64[0] = v55;
    *v78 = vaddq_s64(*v78, v56);
    *(v7 + 2168) += v54;
    v57 = *(v7 + 2184);
    if (v57)
    {
      *(v57 + 8) = v38;
    }

    else
    {
      *(v7 + 2176) = v38;
    }

    v15 = v76;
    *(v7 + 2184) = v38;
    *v38 = v57;
    *(v38 + 8) = 0;
    *(v38 + 32) = 0;
    ++*(v7 + 2172);
    v58 = *(StatusReg + 24);
    v59 = v58;
    atomic_compare_exchange_strong_explicit(v18, &v59, 0, memory_order_release, memory_order_relaxed);
    if (v59 != v58)
    {
      os_unfair_lock_unlock(v18);
    }

    small_malloc_from_free_list(a1, v7, v4);
    if (v60)
    {
      v10 = v60;
      goto LABEL_8;
    }

LABEL_56:
    v41 = 0;
    atomic_compare_exchange_strong_explicit((v7 + 4), &v41, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
    v42 = v41 == 0;
    v43 = *(StatusReg + 24);
    v44 = v43;
    atomic_compare_exchange_strong_explicit(v7, &v44, 0, memory_order_release, memory_order_relaxed);
    v45 = v44 == v43;
    if (v42)
    {
      break;
    }

    if (!v45)
    {
      os_unfair_lock_unlock(v7);
    }

    v46 = 0;
    atomic_compare_exchange_strong_explicit(v15, &v46, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
    if (v46)
    {
      os_unfair_lock_lock_with_options();
    }

    v47 = *(StatusReg + 24);
    v48 = v47;
    atomic_compare_exchange_strong_explicit(v15, &v48, 0, memory_order_release, memory_order_relaxed);
    if (v48 != v47)
    {
      os_unfair_lock_unlock(v15);
    }

    v49 = 0;
    atomic_compare_exchange_strong_explicit(v7, &v49, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
    if (v49)
    {
      os_unfair_lock_lock_with_options();
    }

    small_malloc_from_free_list(a1, v7, v4);
    v10 = v50;
    if (v50)
    {
      goto LABEL_8;
    }
  }

  if (!v45)
  {
    os_unfair_lock_unlock(v7);
  }

  v61 = *(a1 + 620);
  if ((v61 & 4) != 0)
  {
    v62 = -2;
  }

  else
  {
    v62 = -8;
  }

  pages = mvm_allocate_pages(0x800000uLL, 23, v62 & v61, 2);
  v64 = 0;
  atomic_compare_exchange_strong_explicit(v7, &v64, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
  if (v64)
  {
    os_unfair_lock_lock_with_options();
  }

  if (pages)
  {
    *(pages + 33276) = unk_1ED404329;
    if (*(v7 + 2128) || *(v7 + 2136))
    {
      small_finalize_region(a1, v7);
    }

    *(pages + 24) = v6;
    rack_region_insert(a1, pages);
    *(v7 + 2144) = pages;
    *(pages + 16) = v4 << 9;
    v10 = pages + 33280;
    v65 = (pages + 33280) & 0xFFFFFFFFFF800000;
    *(v65 + 40) = v4;
    ++*(v7 + 2168);
    v66 = vdupq_n_s64(0x7F7E00uLL);
    v66.i64[0] = v4 << 9;
    *v78 = vaddq_s64(*v78, v66);
    *((v65 | 0x28) + 2 * v4) = 16319 - v4;
    *(v7 + 2128) = (16319 - v4) << 9;
    *(v7 + 2136) = 0;
    v67 = *(v7 + 2184);
    if (v67)
    {
      *(v67 + 8) = pages;
    }

    else
    {
      *(v7 + 2176) = pages;
    }

    *(v7 + 2184) = pages;
    *pages = v67;
    *(pages + 8) = 0;
    *(pages + 32) = 0;
    ++*(v7 + 2172);
    v72 = *(StatusReg + 24);
    v73 = v72;
    atomic_compare_exchange_strong_explicit(v7, &v73, 0, memory_order_release, memory_order_relaxed);
    if (v73 != v72)
    {
      os_unfair_lock_unlock(v7);
    }

    v74 = *(StatusReg + 24);
    v75 = v74;
    atomic_compare_exchange_strong_explicit(v15, &v75, 0, memory_order_release, memory_order_relaxed);
    if (v75 != v74)
    {
      os_unfair_lock_unlock(v15);
    }
  }

  else
  {
    v68 = *(StatusReg + 24);
    v69 = v68;
    atomic_compare_exchange_strong_explicit(v7, &v69, 0, memory_order_release, memory_order_relaxed);
    if (v69 != v68)
    {
      os_unfair_lock_unlock(v7);
    }

    v70 = *(StatusReg + 24);
    v71 = v70;
    atomic_compare_exchange_strong_explicit(v15, &v71, 0, memory_order_release, memory_order_relaxed);
    if (v71 != v70)
    {
      os_unfair_lock_unlock(v15);
    }

    return 0;
  }

  return v10;
}

void free_small(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *((a2 & 0xFFFFFFFFFF800000) + 0x18);
  if (a4)
  {
    v8 = (a4 + 511) >> 9;
  }

  else
  {
    LODWORD(v8) = *((a2 & 0xFFFFFFFFFF800000) + 2 * (((a2 - (a2 & 0xFF800000) - 33280) >> 9) & 0x3FFF) + 0x28);
    if ((v8 & 0x80000000) != 0)
    {
      goto LABEL_35;
    }
  }

  v9 = 0;
  v10 = *(a1 + 624) + 2560 * v7;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  atomic_compare_exchange_strong_explicit(v10, &v9, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
  if (v9)
  {
    os_unfair_lock_lock_with_options();
  }

  if (v7 == -1)
  {
    v12 = a2;
    goto LABEL_14;
  }

  v12 = *(v10 + 8);
  if (v12 != a2)
  {
    v13 = *(v10 + 16);
    v14 = *(v10 + 24);
    if (v8 && (*(a1 + 620) & 0x20) != 0)
    {
      _platform_memset();
    }

    *(v10 + 8) = a2;
    *(v10 + 16) = v8;
    *(v10 + 24) = a3;
    if (!v12)
    {
      goto LABEL_56;
    }

    LOWORD(v8) = v13;
    a3 = v14;
LABEL_14:
    for (i = *(a3 + 24); v7 != i; i = *(a3 + 24))
    {
      v7 = i;
      v16 = *(StatusReg + 24);
      v17 = v16;
      atomic_compare_exchange_strong_explicit(v10, &v17, 0, memory_order_release, memory_order_relaxed);
      if (v17 != v16)
      {
        os_unfair_lock_unlock(v10);
      }

      v18 = 0;
      v10 = *(a1 + 624) + 2560 * v7;
      atomic_compare_exchange_strong_explicit(v10, &v18, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
      if (v18)
      {
        os_unfair_lock_lock_with_options();
      }
    }

    v61 = v8 << 9;
    if (malloc_tracing_enabled == 1)
    {
      kdebug_trace();
    }

    if (*(a3 + 33276) != unk_1ED404329)
    {
      malloc_zone_error(64, 1, "Region cookie corrupted for region %p (value is %x)[%p]\n", a3, *(a3 + 33276), (a3 + 33276));
      __break(1u);
      return;
    }

    v19 = v12 & 0xFFFFFFFFFF800000 | 0x28;
    v20 = ((v12 + 8355328) >> 9) & 0x3FFF;
    v21 = v12;
    v22 = v8;
    v23 = v21;
    if (v20)
    {
      v24 = *(v19 + 2 * v20 - 2);
      v22 = v8;
      v23 = v21;
      if (v24 < 0)
      {
        v25 = *(v19 + 2 * v20 - 2) & 0x7FFF;
        if ((v24 & 0x7FFF | 0x8000) != *(v19 + 2 * (v20 - (v24 & 0x7FFF))))
        {
          free_small_cold_1();
        }

        small_free_list_find_by_ptr(a1, &v21[-512 * v25], v25);
        small_free_list_remove_ptr(a1, v10, v26, v25);
        v23 = &v21[-512 * v25];
        *(v19 + 2 * v20) = 0;
        v22 = v25 + v8;
      }
    }

    v60 = v21;
    if (&v21[v61] < a3 + 0x800000)
    {
      v27 = *(v19 + 2 * (v8 + v20));
      if (v27 < 0)
      {
        v28 = v27 & 0x7FFF;
        v29 = v23;
        small_free_list_find_by_ptr(a1, &v21[v61], v28);
        small_free_list_remove_ptr(a1, v10, v30, v28);
        v23 = v29;
        v22 += v28;
      }
    }

    v31 = *(a1 + 620);
    if ((v31 & 0x20) != 0)
    {
      v32 = v23;
      if (v22)
      {
        _platform_memset();
      }

      else
      {
        malloc_zone_error(v31, 1, "incorrect size information for %p - block header was damaged\n", v23);
      }

      v23 = v32;
    }

    v35 = small_free_list_add_ptr(a1, v10, v23, v22);
    *(v10 + 2152) -= v61;
    v36 = *(a3 + 16) - v61;
    *(a3 + 16) = v36;
    if (aggressive_madvise_enabled == 1)
    {
      small_madvise_free_range_no_lock(a1, v10, a3, v35, v22, v60, v61);
      v36 = *(a3 + 16);
    }

    if (v7 == -1)
    {
      if ((aggressive_madvise_enabled & 1) == 0)
      {
        small_madvise_free_range_no_lock(a1, v10, a3, v35, v22, v60, v61);
      }

      if (!v36 && *(a3 + 28) <= 0)
      {
        v44 = small_free_try_depot_unmap_no_lock(a1, v10, a3);
        v45 = *(StatusReg + 24);
        v46 = v45;
        atomic_compare_exchange_strong_explicit(v10, &v46, 0, memory_order_release, memory_order_relaxed);
        if (v46 == v45)
        {
          goto LABEL_84;
        }

        v47 = v10;
LABEL_83:
        os_unfair_lock_unlock(v47);
LABEL_84:
        if (v44)
        {
          v58 = *(a1 + 620);
          if ((v58 & 4) != 0)
          {
            v59 = -2;
          }

          else
          {
            v59 = -8;
          }

          mvm_deallocate_pages(v44, 0x800000, v59 & v58);
        }

        return;
      }
    }

    else
    {
      if (v36 <= 0x5F9E7F)
      {
        *(a3 + 32) = 1;
      }

      v37 = *(v10 + 2160);
      v38 = *(v10 + 2152);
      if (v37 - v38 >= 0xBF3D01 && v38 < v37 - (v37 >> 2))
      {
        v39 = *(v10 + 2176);
        if (v39)
        {
          while (*(v39 + 32) != 1 || *(v39 + 28))
          {
            v39 = *(v39 + 8);
            if (!v39)
            {
              goto LABEL_56;
            }
          }

          if (*(v10 + 2144) == (v39 & 0xFFFFFFFFFF800000) && (*(v10 + 2128) || *(v10 + 2136)))
          {
            small_finalize_region(a1, v10);
          }

          v42 = *v39;
          v43 = *(v39 + 8);
          if (*v39)
          {
            *(v42 + 8) = v43;
          }

          else
          {
            *(v10 + 2176) = v43;
          }

          if (!v43)
          {
            v43 = (v10 + 2184);
          }

          *v43 = v42;
          *v39 = 0;
          *(v39 + 8) = 0;
          --*(v10 + 2172);
          v62 = small_free_detach_region(a1, v10, v39 & 0xFFFFFFFFFF800000);
          v48 = 0;
          v49 = *(a1 + 624);
          atomic_compare_exchange_strong_explicit((v49 - 2560), &v48, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
          if (v48)
          {
            os_unfair_lock_lock_with_options();
          }

          *((v39 & 0xFFFFFFFFFF800000) + 0x18) = -1;
          *(v39 + 28) = 0;
          v50 = small_free_reattach_region(a1, v49 - 2560, v39 & 0xFFFFFFFFFF800000);
          *(v10 + 2152) -= v50;
          *(v10 + 2160) -= 8355328;
          v51 = v62;
          *(v10 + 2168) -= v62;
          v52 = *(StatusReg + 24);
          v53 = v52;
          atomic_compare_exchange_strong_explicit(v10, &v53, 0, memory_order_release, memory_order_relaxed);
          if (v53 != v52)
          {
            os_unfair_lock_unlock(v10);
            v51 = v62;
          }

          v54 = vdupq_n_s64(0x7F7E00uLL);
          v54.i64[0] = v50;
          *(v49 - 408) = vaddq_s64(*(v49 - 408), v54);
          *(v49 - 392) += v51;
          v55 = *(v49 - 376);
          if (v55)
          {
            *(v55 + 8) = v39;
          }

          else
          {
            *(v49 - 384) = v39;
          }

          *(v49 - 376) = v39;
          *v39 = v55;
          *(v39 + 8) = 0;
          *(v39 + 32) = 0;
          ++*(v49 - 388);
          if ((aggressive_madvise_enabled & 1) == 0)
          {
            small_free_scan_madvise_free(a1, (v49 - 2560), v39 & 0xFFFFFFFFFF800000);
          }

          v44 = small_free_try_depot_unmap_no_lock(a1, v49 - 2560, v39);
          v56 = *(StatusReg + 24);
          v57 = v56;
          atomic_compare_exchange_strong_explicit((v49 - 2560), &v57, 0, memory_order_release, memory_order_relaxed);
          if (v57 == v56)
          {
            goto LABEL_84;
          }

          v47 = (v49 - 2560);
          goto LABEL_83;
        }
      }
    }

LABEL_56:
    v40 = *(StatusReg + 24);
    v41 = v40;
    atomic_compare_exchange_strong_explicit(v10, &v41, 0, memory_order_release, memory_order_relaxed);
    if (v41 != v40)
    {

      os_unfair_lock_unlock(v10);
    }

    return;
  }

  v33 = *(StatusReg + 24);
  v34 = v33;
  atomic_compare_exchange_strong_explicit(v10, &v34, 0, memory_order_release, memory_order_relaxed);
  if (v34 != v33)
  {
    os_unfair_lock_unlock(v10);
  }

LABEL_35:

  free_small_botch(a1, a2);
}

BOOL small_claimed_address(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 24);
  v3 = *v2;
  if (*v2)
  {
    v4 = v2[2];
    v5 = (0x9E3779B97F4A7C55 * ((a2 & 0xFFFFFFFFFF800000) >> 20)) >> -*(v2 + 8);
    v6 = v5;
    while (1)
    {
      v7 = *(v4 + 8 * v6);
      if (!v7 || v7 == (a2 & 0xFFFFFFFFFF800000))
      {
        break;
      }

      if (v6 + 1 == v3)
      {
        v6 = 0;
      }

      else
      {
        ++v6;
      }

      if (v6 == v5)
      {
        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v7 = 0;
  }

  if (v7)
  {
    v8 = v7 + 33280 > a2;
  }

  else
  {
    v8 = 1;
  }

  return !v8 && v7 + 0x800000 > a2;
}

uint64_t small_try_shrink_in_place(unint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v5 = a4 >> 9;
  v6 = (a3 >> 9) - (a4 >> 9);
  if (v6)
  {
    v7 = 0;
    v8 = (a4 & 0x1FFFE00) + a2;
    v9 = *(a1 + 624);
    v10 = *((a2 & 0xFFFFFFFFFF800000) + 0x18);
    v11 = (v9 + 2560 * v10);
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    atomic_compare_exchange_strong_explicit(v11, &v7, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
    if (v7)
    {
      os_unfair_lock_lock_with_options();
    }

    v13 = *((a2 & 0xFFFFFFFFFF800000) + 0x18);
    if (v13 != v10)
    {
      do
      {
        v14 = *(StatusReg + 24);
        v15 = v14;
        atomic_compare_exchange_strong_explicit(v11, &v15, 0, memory_order_release, memory_order_relaxed);
        if (v15 != v14)
        {
          os_unfair_lock_unlock(v11);
        }

        v16 = 0;
        v11 = (v9 + 2560 * v13);
        atomic_compare_exchange_strong_explicit(v11, &v16, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
        if (v16)
        {
          os_unfair_lock_lock_with_options();
        }

        v17 = v13 == *((a2 & 0xFFFFFFFFFF800000) + 0x18);
        v13 = *((a2 & 0xFFFFFFFFFF800000) + 0x18);
      }

      while (!v17);
    }

    *((a2 & 0xFFFFFFFFFF800000) + 2 * (((a2 - (a2 & 0xFF800000) - 33280) >> 9) & 0x3FFF) + 0x28) = v5;
    *((v8 & 0xFFFFFFFFFF800000 | (2 * (((v8 - (v8 & 0xFF800000 | 0x8200)) >> 9) & 0x3FFF))) + 0x28) = v6;
    ++v11[542]._os_unfair_lock_opaque;
    v18 = *(StatusReg + 24);
    v19 = v18;
    atomic_compare_exchange_strong_explicit(v11, &v19, 0, memory_order_release, memory_order_relaxed);
    if (v19 != v18)
    {
      os_unfair_lock_unlock(v11);
    }

    free_small(a1, v8, v8 & 0xFFFFFFFFFF800000, 0);
  }

  return a2;
}

uint64_t small_try_realloc_in_place(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = (((a2 + 8355328) >> 9) & 0x3FFF) + (a3 >> 9);
  if (v5 > 0x3FBE)
  {
    return 0;
  }

  v45 = ((a2 + 8355328) >> 9) & 0x3FFF;
  v9 = 0;
  v10 = a2 & 0xFFFFFFFFFF800000;
  v11 = *(a1 + 624);
  v12 = *((a2 & 0xFFFFFFFFFF800000) + 0x18);
  v13 = v11 + 2560 * v12;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  atomic_compare_exchange_strong_explicit(v13, &v9, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
  if (v9)
  {
    os_unfair_lock_lock_with_options();
  }

  for (i = *((a2 & 0xFFFFFFFFFF800000) + 0x18); v12 != i; i = *((a2 & 0xFFFFFFFFFF800000) + 0x18))
  {
    v12 = i;
    v16 = *(StatusReg + 24);
    v17 = v16;
    atomic_compare_exchange_strong_explicit(v13, &v17, 0, memory_order_release, memory_order_relaxed);
    if (v17 != v16)
    {
      os_unfair_lock_unlock(v13);
    }

    v18 = 0;
    v13 = v11 + 2560 * v12;
    atomic_compare_exchange_strong_explicit(v13, &v18, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
    if (v18)
    {
      os_unfair_lock_lock_with_options();
    }
  }

  if (v12 == -1)
  {
    goto LABEL_21;
  }

  v19 = v10 | 0x28;
  v20 = (a4 + 511) >> 9;
  v21 = a2 + a3;
  v22 = (a3 >> 9);
  v23 = v20;
  v24 = v20 - v22;
  v25 = *(v13 + 8);
  if (v25 == a2 + a3)
  {
    v26 = *(v13 + 16);
    if (v22 + v26 >= v20)
    {
      if (v26 == v24)
      {
        v34 = 0;
        *(v13 + 16) = 0;
        *(v13 + 24) = 0;
        v35 = v45;
      }

      else
      {
        v39 = v26 - v24;
        *(v13 + 16) = v39;
        v34 = v25 + a4 - a3;
        v35 = v45;
        *(v19 + 2 * (v45 + v20)) = v39;
      }

      *(v13 + 8) = v34;
      *(v19 + 2 * v35) = v20;
      LOWORD(v37) = 0;
      goto LABEL_30;
    }
  }

  if (*(v13 + 2144) == v10)
  {
    v27 = *(v13 + 2128);
    if ((v20 - v22) < (v27 >> 9) && v10 - v27 + 0x800000 == v21)
    {
      *(v19 + 2 * v45) = v20;
      *(v19 + 2 * v5) = 0;
      v36 = v27 - ((v20 - v22) << 9);
      *(v13 + 2128) = v36;
      v5 = (v45 + v20);
      v37 = v36 >> 9;
LABEL_30:
      *(v19 + 2 * v5) = v37;
      *(v13 + 2152) += (v24 << 9);
      v40 = *((a2 & 0xFFFFFFFFFF800000) + 0x10) + (v24 << 9);
      *((a2 & 0xFFFFFFFFFF800000) + 0x10) = v40;
      if (v40 >= 0x5F9E80)
      {
        *((a2 & 0xFFFFFFFFFF800000) + 0x20) = 0;
      }

      v32 = *(StatusReg + 24);
      v33 = v32;
      atomic_compare_exchange_strong_explicit(v13, &v33, 0, memory_order_release, memory_order_relaxed);
      v6 = 1;
      goto LABEL_33;
    }
  }

  v29 = *(v19 + 2 * v5);
  if (v29 < 0)
  {
    v43 = (a4 + 511) >> 9;
    v30 = v29 & 0x7FFF;
    v31 = v22 + v30;
    if (v22 + v30 >= v20)
    {
      v42 = v20 - v22;
      small_free_list_find_by_ptr(a1, v21, v29 & 0x7FFF);
      small_free_list_remove_ptr(a1, v13, v38, v30);
      *(v19 + 2 * v5) = 0;
      v37 = (a4 + 511) >> 9;
      if (v31 != v43)
      {
        small_free_list_add_ptr(a1, v13, a2 + (v23 << 9), (v31 - v43));
      }

      v5 = v45;
      v24 = v42;
      goto LABEL_30;
    }
  }

LABEL_21:
  v6 = 0;
  v32 = *(StatusReg + 24);
  v33 = v32;
  atomic_compare_exchange_strong_explicit(v13, &v33, 0, memory_order_release, memory_order_relaxed);
LABEL_33:
  if (v33 != v32)
  {
    os_unfair_lock_unlock(v13);
  }

  return v6;
}

void small_check_region(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a2 + 33280;
  v5 = a2 + 0x800000;
  v6 = (*(a1 + 624) + 2560 * *(((a2 + 33280) & 0xFFFFFFFFFF800000) + 0x18));
  v7 = a2 + 33280;
  if (v6[268] == a2)
  {
    v7 = v4 + v6[267];
    v5 -= v6[266];
    if (v7 >= v5)
    {
      return;
    }
  }

  v8 = (a2 + 33280) & 0xFFFFFFFFFF800000 | 0x28;
  while (1)
  {
    v9 = *(v8 + 2 * (((v7 + 8355328) >> 9) & 0x3FFF));
    if ((*(v8 + 2 * (((v7 + 8355328) >> 9) & 0x3FFF)) & 0x80000000) == 0)
    {
      if (!*(v8 + 2 * (((v7 + 8355328) >> 9) & 0x3FFF)))
      {
        malloc_zone_check_fail("check: incorrect small region ", "%ld, counter=%d\n*** invariant broken: null msize ptr=%p num_small_regions=%d end=%p\n", a3, a4, 32678, 33272, 16319, 32678, a3, a4, v7, *(a1 + 8), v5);
        return;
      }

      v10 = v7 + (v9 << 9);
      goto LABEL_45;
    }

    v11 = v9 & 0x7FFF;
    if ((v9 & 0x7FFF) == 0)
    {
      malloc_zone_check_fail("check: incorrect small region ", "%ld, counter=%d\n*** invariant broken for free block %p this msize=%d\n", a3, a4, 32678, 33272, 16319, 32678, a3, a4, v7, v9 & 0x7FFF, v31);
      return;
    }

    v12 = v7;
    if (((*MEMORY[0x1E69E9AC8] - 1) & v7) == 0)
    {
      v12 = v7;
      if ((v9 & 0x7FFF) << 9 >= *MEMORY[0x1E69E9AB0])
      {
        v13 = v7 & 0xFFFFFFFFFF800000 | 0x7FA6;
        v14 = v13;
        v15 = 33;
        while ((*(v14 + 16) & 0x8000) == 0 || v7 != (v13 & 0xFFFFFFFFFF800000) + ((*(v14 + 16) & 0x7FFF) << 9))
        {
          v14 += 18;
          v13 += 18;
          if (!--v15)
          {
            v14 = 0;
            break;
          }
        }

        if (v14)
        {
          v12 = v14;
        }

        else
        {
          v12 = v7;
        }
      }
    }

    if (!v12)
    {
      purgeable_ptr_in_use_enumerator_cold_1();
    }

    if ((v12 & 0xFFFFFFFFFF800000 | 0x7FA6) > v12 || (v12 & 0xFFFFFFFFFF800000 | 0x81F8) <= v12)
    {
      break;
    }

    v17 = *v12;
    v16 = *(v12 + 8);
LABEL_24:
    if (v17)
    {
      v21 = v17 & 0xFFFFFFFFFF800000;
      if (v17 < (v17 & 0xFFFFFFFFFF800000 | 0x7FA6) || v17 >= (v21 | 0x81F8))
      {
        if ((*((v17 & 0xFFFFFFFFFF800000) + 2 * (((v17 + 8355328) >> 9) & 0x3FFF) + 0x28) & 0x80000000) == 0)
        {
          goto LABEL_53;
        }
      }

      else
      {
        v22 = *(v17 + 16);
        v23 = v21 + ((v22 & 0x4000) << 9);
        if (v22 >= 0)
        {
          v23 = 0;
        }

        v24 = (v22 + 16319) & 0x3FFF;
        if (v22 >= 0)
        {
          v24 = 16319;
        }

        if ((*(v23 + 2 * v24 + 40) & 0x80000000) == 0)
        {
          if (v22 < 0)
          {
            v17 = v21 + ((v22 & 0x7FFF) << 9);
          }

          else
          {
            v17 = 0;
          }

LABEL_53:
          malloc_zone_check_fail("check: incorrect small region ", "%ld, counter=%d\n*** invariant broken for %p (previous %p is not a free pointer)\n", a3, a4, 32678, 33272, 16319, 32678, a3, a4, v7, v17, v31);
          return;
        }
      }
    }

    if (v16)
    {
      v25 = v16 & 0xFFFFFFFFFF800000;
      if (v16 < (v16 & 0xFFFFFFFFFF800000 | 0x7FA6) || v16 >= (v25 | 0x81F8))
      {
        if ((*((v16 & 0xFFFFFFFFFF800000) + 2 * (((v16 + 8355328) >> 9) & 0x3FFF) + 0x28) & 0x80000000) == 0)
        {
          goto LABEL_57;
        }
      }

      else
      {
        v26 = *(v16 + 16);
        v27 = v25 + ((v26 & 0x4000) << 9);
        if (v26 >= 0)
        {
          v27 = 0;
        }

        v28 = (v26 + 16319) & 0x3FFF;
        if (v26 >= 0)
        {
          v28 = 16319;
        }

        if ((*(v27 + 2 * v28 + 40) & 0x80000000) == 0)
        {
          v29 = v25 + ((v26 & 0x7FFF) << 9);
          if (v26 < 0)
          {
            v16 = v29;
          }

          else
          {
            v16 = 0;
          }

LABEL_57:
          malloc_zone_check_fail("check: incorrect small region ", "%ld, counter=%d\n*** invariant broken for %p (next %p is not a free pointer)\n", a3, a4, 32678, 33272, 16319, 32678, a3, a4, v7, v16, v31);
          return;
        }
      }
    }

    v10 = v7 + (v11 << 9);
    if ((*(((v10 - 2) & 0xFFFFFFFFFF800000 | (2 * (((v10 - 2 - ((v10 - 2) & 0xFF800000 | 0x8200)) >> 9) & 0x3FFFLL))) + 0x28) & 0x7FFF) != v11)
    {
      malloc_zone_check_fail("check: incorrect small region ", "%ld, counter=%d\n*** invariant broken for small free %p followed by %p in region [%p-%p] (end marker incorrect) should be %d; in fact %d\n", a3, a4, 32678, 33272, 16319, 32678, a3, a4, v7, v7 + (v11 << 9), v4);
      return;
    }

LABEL_45:
    v7 = v10;
    if (v10 >= v5)
    {
      return;
    }
  }

  v17 = *v12;
  v18 = *(a1 + 632) ^ a1;
  v19 = v18 ^ *v12;
  if (*(v12 + 8) != (BYTE4(v19) + v19 + ((HIDWORD(v19) + v19) >> 16) + ((WORD2(v19) + v19 + ((HIDWORD(v19) + v19) >> 16)) >> 8)))
  {
    v30 = *v12;
    goto LABEL_61;
  }

  v16 = *(v12 + 16);
  v20 = v18 ^ v16;
  if (*(v12 + 24) == (BYTE4(v20) + v20 + ((HIDWORD(v20) + v20) >> 16) + ((WORD2(v20) + v20 + ((HIDWORD(v20) + v20) >> 16)) >> 8)))
  {
    goto LABEL_24;
  }

  v12 += 16;
  v30 = v16;
LABEL_61:
  free_list_checksum_botch(a1, v12, v30);
  __break(1u);
}

unint64_t small_free_list_get_ptr(unint64_t result)
{
  if (result)
  {
    v1 = result & 0xFFFFFFFFFF800000;
    if ((result & 0xFFFFFFFFFF800000 | 0x7FA6) <= result && (v1 | 0x81F8) > result)
    {
      v2 = *(result + 16);
      v3 = v1 + ((v2 & 0x7FFF) << 9);
      if (v2 < 0)
      {
        return v3;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t small_in_use_enumerator(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = v1;
  v46 = *MEMORY[0x1E69E9840];
  v43 = 0;
  v44 = 0;
  v41 = 0;
  v42 = 0;
  v39 = 0;
  v40 = 0;
  v37 = 0;
  v38 = 0;
  result = v4(v1, *(v6 + 17304), 32, &v37);
  if (!result)
  {
    v14 = *v37;
    result = v5(v12, v37[2], 8 * *v37, &v44);
    if (!result)
    {
      if ((v9 & 1) == 0 || (result = v5(v12, *(v7 + 17904), 2560 * *(v7 + 17888), &v38), !result))
      {
        if (v14)
        {
          v34 = v3;
          v35 = v11;
          v15 = 0;
          v32 = v9;
          v33 = v9 & 6;
          v36 = v14;
          while (1)
          {
            v16 = *(v44 + 8 * v15);
            if ((v16 + 1) >= 2)
            {
              if ((v9 & 4) != 0)
              {
                v42 = *(v44 + 8 * v15);
                v43 = 32678;
                (v3)(v12, v35, 4, &v42, 1);
              }

              v17 = v16 + 33280;
              if (v33)
              {
                v40 = v16 + 33280;
                v41 = 8355328;
                (v3)(v12, v35, 2, &v40, 1);
              }

              if (v9)
              {
                result = v5(v12, v16, 0x800000, &v39);
                if (result)
                {
                  return result;
                }

                v18 = *(v7 + 17888);
                if (v18 < 1)
                {
                  v19 = 0;
                }

                else
                {
                  v19 = 0;
                  v20 = (v38 + 24);
                  do
                  {
                    if (v16 == *v20)
                    {
                      ++v19;
                    }

                    v20 += 320;
                    --v18;
                  }

                  while (v18);
                }

                v21 = (v38 + 2560 * *(v39 + 24));
                if (v16 != v21[268])
                {
                  LODWORD(v22) = 0;
                  v23 = 16319;
LABEL_27:
                  v24 = 0;
                  v25 = v39 + 40;
                  do
                  {
                    v26 = *(v25 + 2 * v22);
                    v27 = v26 & 0x7FFF;
                    if ((v26 & 0x7FFF) == 0)
                    {
                      return 5;
                    }

                    if ((v26 & 0x8000) == 0)
                    {
                      v28 = v17 + (v22 << 9);
                      if (v19 && (v29 = *(v7 + 17888), v29 >= 1))
                      {
                        v30 = (v38 + 8);
                        while (v28 != *v30)
                        {
                          v30 += 320;
                          if (!--v29)
                          {
                            goto LABEL_35;
                          }
                        }

                        --v19;
                      }

                      else
                      {
LABEL_35:
                        v31 = &v45[v24];
                        *v31 = v28;
                        v31[1] = v26 << 9;
                        if (++v24 >= 0x100)
                        {
                          v34(v12, v35, 1, v45);
                          v24 = 0;
                        }
                      }
                    }

                    LODWORD(v22) = v22 + v27;
                  }

                  while (v22 < v23);
                  v3 = v34;
                  v9 = v32;
                  if (v24)
                  {
                    v34(v12, v35, 1, v45);
                  }

                  goto LABEL_9;
                }

                v22 = v21[267] >> 9;
                v23 = 16319 - (v21[266] >> 9);
                if (v23 > v22)
                {
                  goto LABEL_27;
                }
              }
            }

LABEL_9:
            result = 0;
            if (++v15 == v36)
            {
              return result;
            }
          }
        }

        return 0;
      }
    }
  }

  return result;
}

void small_malloc_from_free_list(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v3 = a3;
  if (a3 >= 0x20)
  {
    v6 = 30;
  }

  else
  {
    v6 = a3 - 1;
  }

  v7 = *(a2 + 32 + 8 * v6);
  if (v7)
  {
    v8 = v7 & 0xFFFFFFFFFF800000;
    v9 = (v7 & 0xFFFFFFFFFF800000 | 0x7FA6) <= v7 && (v7 & 0xFFFFFFFFFF800000 | 0x81F8) > v7;
    v10 = *(a2 + 32 + 8 * v6);
    if (!v9)
    {
      goto LABEL_13;
    }

    if ((*(v7 + 16) & 0x8000) != 0)
    {
      v11 = (*(v7 + 16) & 0x7FFF) << 9;
      if (v11 != -v8)
      {
        v10 = v11 + v8;
LABEL_13:
        small_free_list_remove_ptr(a1, a2, v7, v3);
        goto LABEL_14;
      }
    }
  }

  v15 = v6 >> 5;
  v16 = -1 << v6;
  while (1)
  {
    v17 = v15;
    if (v15)
    {
      break;
    }

    v15 = 1;
    v18 = *(a2 + 2088) & v16;
    v16 = -1;
    if (v18)
    {
      goto LABEL_24;
    }
  }

  if (v15 == 1)
  {
    goto LABEL_34;
  }

  v18 = 0;
LABEL_24:
  v19 = *(a2 + 32 + 8 * (__clz(__rbit32(v18)) + 32 * v17));
  if (v19)
  {
    v20 = (v19 & 0xFFFFFFFFFF800000 | 0x7FA6) <= v19 && (v19 & 0xFFFFFFFFFF800000 | 0x81F8) > v19;
    v10 = v19;
    if (!v20 || (*(v19 + 16) & 0x8000) != 0 && (v10 = (v19 & 0xFFFFFFFFFF800000) + ((*(v19 + 16) & 0x7FFF) << 9)) != 0)
    {
      v21 = *((v10 & 0xFFFFFFFFFF800000 | (2 * (((v10 - (v10 & 0xFF800000 | 0x8200)) >> 9) & 0x3FFF))) + 0x28) & 0x7FFF;
      small_free_list_remove_ptr(a1, a2, v19, v21);
      if (v21 <= v3)
      {
        v3 = v21;
      }

      else
      {
        small_free_list_add_ptr(a1, a2, v10 + (v3 << 9), (v21 - v3));
      }

      goto LABEL_14;
    }
  }

LABEL_34:
  v22 = *(a2 + 2128);
  v23 = v3 << 9;
  if (v22 < v23)
  {
    return;
  }

  v10 = *(a2 + 2144) - v22 + 0x800000;
  v24 = v22 - v23;
  *(a2 + 2128) = v24;
  if (v24)
  {
    *((v10 & 0xFFFFFFFFFF800000 | (2 * (((v10 + v23 + 8355328) >> 9) & 0x3FFFLL))) + 0x28) = v24 >> 9;
  }

LABEL_14:
  ++*(a2 + 2168);
  v12 = v3 << 9;
  *(a2 + 2152) += v12;
  v13 = (v10 & 0xFFFFFFFFFF800000 | 0x81FC);
  if (*v13 == unk_1ED404329)
  {
    v14 = *((v10 & 0xFFFFFFFFFF800000) + 0x10) + v12;
    *((v10 & 0xFFFFFFFFFF800000) + 0x10) = v14;
    if (v14 >= 0x5F9E80)
    {
      *((v10 & 0xFFFFFFFFFF800000) + 0x20) = 0;
    }

    *((v10 & 0xFFFFFFFFFF800000) + 2 * (((v10 - (v10 & 0xFF800000) - 33280) >> 9) & 0x3FFF) + 0x28) = v3;
  }

  else
  {
    malloc_zone_error(64, 1, "Region cookie corrupted for region %p (value is %x)[%p]\n", (v10 & 0xFFFFFFFFFF800000), *v13, (v10 & 0xFFFFFFFFFF800000 | 0x81FC));
    __break(1u);
  }
}

unint64_t small_size(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  v3 = *v2;
  if (*v2)
  {
    v4 = a2 & 0xFFFFFFFFFF800000;
    v5 = v2[2];
    v6 = (0x9E3779B97F4A7C55 * ((a2 & 0xFFFFFFFFFF800000) >> 20)) >> -*(v2 + 8);
    v7 = v6;
    while (1)
    {
      v8 = *(v5 + 8 * v7);
      if (!v8)
      {
        return 0;
      }

      if (v8 == v4)
      {
        break;
      }

      if (v7 + 1 == v3)
      {
        v7 = 0;
      }

      else
      {
        ++v7;
      }

      if (v7 == v6)
      {
        return 0;
      }
    }

    v9 = ((a2 - v4 - 33280) >> 9) & 0x3FFF;
    if (v9 <= 0x3FBE)
    {
      v10 = *((a2 & 0xFFFFFFFFFF800000) + 2 * v9 + 0x28);
      if ((v10 & 0x80000000) == 0)
      {
        v11 = *((a2 & 0xFFFFFFFFFF800000) + 0x18);
        if (v11 != -1)
        {
          if (*(*(a1 + 624) + 2560 * v11 + 8) == a2)
          {
            return 0;
          }

          return v10 << 9;
        }

        v13 = *(a1 + 608);
        if (v13 < 1)
        {
          return v10 << 9;
        }

        for (i = (*(a1 + 624) + 8); *i != a2; i += 320)
        {
          if (!--v13)
          {
            return v10 << 9;
          }
        }
      }
    }
  }

  return 0;
}

void print_small_free_list(uint64_t a1, unsigned int (*a2)(uint64_t, uint64_t, uint64_t, uint64_t *), void (*a3)(const char *, ...), uint64_t a4)
{
  v21 = _simple_salloc();
  if (v21)
  {
    v24 = 0;
    v25 = 0;
    if (a2(a1, a4, 768, &v25))
    {
      v8 = "Failed to map small rack\n";
LABEL_6:
      a3(v8);
      return;
    }

    if (a2(a1, *(v25 + 624), 2560 * *(v25 + 608), &v24))
    {
      v8 = "Failed to map small rack magazines\n";
      goto LABEL_6;
    }

    _simple_sappend();
    if ((*(v25 + 608) & 0x80000000) != 0)
    {
LABEL_47:
      v20 = _simple_string();
      a3("%s\n", v20);
      _simple_sfree();
      return;
    }

    v9 = -1;
LABEL_10:
    v23 = v9;
    if (v9 == -1)
    {
      _simple_sprintf(v21, "\tRecirc depot: ");
    }

    else
    {
      _simple_sprintf(v21, "\tMagazine %d: ");
    }

    v10 = 0;
    v11 = v23;
    while (1)
    {
      v12 = *(v24 + 2560 * v11 + 8 * v10 + 32);
      if (v12)
      {
        if ((v12 & 0xFFFFFFFFFF800000 | 0x7FA6) > v12 || (v12 & 0xFFFFFFFFFF800000 | 0x81F8) <= v12)
        {
LABEL_19:
          LODWORD(v14) = 0;
          v15 = "";
          if (v10 == 30)
          {
            v15 = ">=";
          }

          v22 = v15;
          while (1)
          {
            if (v12 >= (v12 & 0xFFFFFFFFFF800000 | 0x7FA6) && v12 < (v12 & 0xFFFFFFFFFF800000 | 0x81F8))
            {
              v27 = 0;
              if (!a2(a1, v12, 18, &v27))
              {
                v12 = *(v27 + 8);
                goto LABEL_36;
              }

              v18 = "Failed to map small oobe pointer\n";
              goto LABEL_33;
            }

            v17 = (v12 + 16);
            v26 = 0;
            v27 = 0;
            if (a2(a1, v12 + 16, 16, &v27))
            {
              break;
            }

            if (a2(a1, a4, 768, &v26))
            {
              v18 = "Failed to map small rack\n";
              goto LABEL_33;
            }

            v12 = *v27;
            v19 = *(v26 + 632) ^ a4 ^ *v27;
            if (*(v27 + 8) != (BYTE4(v19) + v19 + ((HIDWORD(v19) + v19) >> 16) + ((WORD2(v19) + v19 + ((HIDWORD(v19) + v19) >> 16)) >> 8)))
            {
              free_list_checksum_botch(a4, v17, *v27);
              __break(1u);
              return;
            }

LABEL_36:
            v14 = (v14 + 1);
            if (!v12)
            {
              _simple_sprintf(v21, "%s%y[%d]; ", v22, ((v10 << 9) + 512), v14);
              goto LABEL_41;
            }
          }

          v18 = "Unable to map small linkage pointer %p\n";
LABEL_33:
          a3(v18);
          v12 = 0;
          goto LABEL_36;
        }

        v27 = 0;
        if (a2(a1, v12, 18, &v27))
        {
          a3("Failed to map small oobe pointer\n");
        }

        else if (*(v27 + 16) < 0)
        {
          v11 = v23;
          if ((v12 & 0xFFFFFFFFFF800000) + ((*(v27 + 16) & 0x7FFF) << 9))
          {
            goto LABEL_19;
          }

          goto LABEL_42;
        }

LABEL_41:
        v11 = v23;
      }

LABEL_42:
      if (++v10 == 31)
      {
        _simple_sappend();
        v9 = v23 + 1;
        if (v23 + 1 >= *(v25 + 608))
        {
          goto LABEL_47;
        }

        goto LABEL_10;
      }
    }
  }
}

uint64_t print_small_region(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v41 = *MEMORY[0x1E69E9840];
  v12 = (v6 + 33280);
  v39 = 0;
  if (v13(v1, v6 + 33280, 0x800000, &v39))
  {
    return v11("Failed to map small region at %p\n", v12);
  }

  if (v7 == -1)
  {
    result = _simple_salloc();
    if (!result)
    {
      return result;
    }

    _simple_sprintf(result, "Small region [unknown address] was returned to the OS\n");
    v28 = _simple_string();
    v11("%s\n", v28);
    return _simple_sfree();
  }

  v38 = v9;
  v15 = &v12[v5];
  v16 = v7 + 0x800000 - v3;
  v17 = v39;
  _platform_memset();
  v37 = v17;
  if (&v12[v5] >= v16)
  {
    v19 = 0;
    v18 = 0;
  }

  else
  {
    v18 = 0;
    v19 = 0;
    v20 = *MEMORY[0x1E69E9AC8];
    v21 = -*MEMORY[0x1E69E9AC8];
    while (1)
    {
      v22 = *((v15 & 0xFFFFFFFFFF800000 | (2 * (((v15 - (v15 & 0xFF800000 | 0x8200)) >> 9) & 0x3FFF))) + v17 - v12 + 40);
      if ((v22 & 0x7FFF) == 0)
      {
        break;
      }

      v23 = (*((v15 & 0xFFFFFFFFFF800000 | (2 * (((v15 - (v15 & 0xFF800000 | 0x8200)) >> 9) & 0x3FFF))) + v17 - v12 + 40) & 0x7FFFLL) << 9;
      if ((v22 & 0x8000) != 0)
      {
        v24 = (v15 + v20 + 9) & v21;
        v25 = (v15 + v23 - 2) & v21;
        v26 = v25 >= v24;
        v27 = v25 - v24;
        if (!v26)
        {
          v27 = 0;
        }

        v19 += v27;
      }

      else
      {
        if ((v22 & 0x7FFFu) <= 0x3FF)
        {
          ++v40[v22 & 0x7FFF];
        }

        v18 = (v18 + 1);
      }

      v15 += v23;
      if (v15 >= v16)
      {
        goto LABEL_20;
      }
    }

    v11("*** error with %p: msize=%d, free: %x\n", v15, 0, v22 & 0x8000);
  }

LABEL_20:
  result = _simple_salloc();
  if (result)
  {
    v29 = result;
    v30 = *(v17 + 24);
    _simple_sprintf(result, "Small region %p [%p-%p, %y] \t", v7, v12, v7 + 0x800000, 0x800000);
    if (v30 == -1)
    {
      _simple_sprintf(v29, "Recirc depot \t");
    }

    else
    {
      _simple_sprintf(v29, "Magazine=%d \t");
    }

    _simple_sprintf(v29, "Allocations in use=%d \t Bytes in use=%ly (%d%%) \t", v18, *(v37 + 16), (*(v37 + 16) * 100.0) >> 23);
    if (v3 | v5)
    {
      _simple_sprintf(v29, "Untouched=%ly ", v3 + v5);
    }

    if (v30 == -1)
    {
      _simple_sprintf(v29, "Advised MADV_FREE=%ly", v19);
    }

    else
    {
      _simple_sprintf(v29, "Fragments subject to reclamation=%ly", v19);
      if (*(v37 + 16) <= 0x5F9E7Fu)
      {
        _simple_sprintf(v29, "\tEmpty enough to be moved to recirc depot", v36);
      }

      else
      {
        _simple_sprintf(v29, "\tNot empty enough to be moved to recirc depot", v36);
      }
    }

    if (v38 >= 2 && v18)
    {
      _simple_sappend();
      v31 = 0;
      v32 = v40;
      do
      {
        v34 = *v32++;
        v33 = v34;
        if (v34)
        {
          _simple_sprintf(v29, "%y[%d] ", v31, v33);
        }

        v31 += 512;
      }

      while (v31 != 0x80000);
    }

    v35 = _simple_string();
    v11("%s\n", v35);
    return _simple_sfree();
  }

  return result;
}

void small_free_list_check(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((*(a1 + 608) & 0x80000000) != 0)
  {
    return;
  }

  v8 = a3;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v12 = -1;
  v13 = a2;
  while (1)
  {
    v14 = 0;
    v15 = (*(a1 + 624) + 2560 * v12);
    atomic_compare_exchange_strong_explicit(v15, &v14, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
    if (v14)
    {
      os_unfair_lock_lock_with_options();
    }

    v16 = *(*(a1 + 624) + 2560 * v12 + 8 * v13 + 32);
    if (!v16)
    {
      goto LABEL_36;
    }

    v17 = 0;
    v18 = 0;
LABEL_7:
    v19 = (v16 & 0xFFFFFFFFFF800000 | 0x7FA6) <= v16 && (v16 & 0xFFFFFFFFFF800000 | 0x81F8) > v16;
    v20 = !v19;
    v21 = v16;
    if (v19)
    {
      if ((*(v16 + 16) & 0x8000) == 0)
      {
        goto LABEL_36;
      }

      v21 = (v16 & 0xFFFFFFFFFF800000) + ((*(v16 + 16) & 0x7FFF) << 9);
      if (!v21)
      {
        goto LABEL_36;
      }
    }

    v22 = v21 & 0xFFFFFFFFFF800000;
    if ((*((v21 & 0xFFFFFFFFFF800000 | (2 * (((v21 - (v21 & 0xFF800000 | 0x8200)) >> 9) & 0x3FFF))) + 0x28) & 0x80000000) == 0)
    {
      malloc_zone_check_fail("check: small free list incorrect", " (slot=%u), counter=%d\n*** in-use ptr in free list slot=%u count=%d ptr=%p\n", a3, a4, a5, a6, a7, a8, a2, v8, a2, v18, v21);
      goto LABEL_41;
    }

    if ((v21 & 0x1FF) != 0)
    {
      malloc_zone_check_fail("check: small free list incorrect", " (slot=%u), counter=%d\n*** unaligned ptr in free list slot=%u count=%d ptr=%p\n", a3, a4, a5, a6, a7, a8, a2, v8, a2, v18, v21);
LABEL_41:
      v33 = *(StatusReg + 24);
      v34 = v33;
      atomic_compare_exchange_strong_explicit(v15, &v34, 0, memory_order_release, memory_order_relaxed);
      if (v34 != v33)
      {
        os_unfair_lock_unlock(v15);
      }

      return;
    }

    v23 = *(a1 + 24);
    v24 = *v23;
    if (!*v23)
    {
LABEL_40:
      malloc_zone_check_fail("check: small free list incorrect", " (slot=%u), counter=%d\n*** ptr not in szone slot=%d count=%d ptr=%p\n", a3, a4, a5, a6, a7, a8, a2, v8, a2, v18, v21);
      goto LABEL_41;
    }

    v25 = v23[2];
    v26 = (0x9E3779B97F4A7C55 * (v22 >> 20)) >> -*(v23 + 8);
    v27 = v26;
    while (1)
    {
      v28 = *(v25 + 8 * v27);
      if (!v28)
      {
        goto LABEL_40;
      }

      if (v28 == v22)
      {
        break;
      }

      if (v27 + 1 == v24)
      {
        v27 = 0;
      }

      else
      {
        ++v27;
      }

      if (v27 == v26)
      {
        goto LABEL_40;
      }
    }

    if (v20)
    {
      break;
    }

    if (v17 != *v16)
    {
      goto LABEL_46;
    }

    a3 = *(v16 + 8);
LABEL_35:
    v18 = (v18 + 1);
    v17 = v16;
    v16 = a3;
    if (a3)
    {
      goto LABEL_7;
    }

LABEL_36:
    v31 = *(StatusReg + 24);
    v32 = v31;
    atomic_compare_exchange_strong_explicit(v15, &v32, 0, memory_order_release, memory_order_relaxed);
    if (v32 != v31)
    {
      os_unfair_lock_unlock(v15);
    }

    if (++v12 >= *(a1 + 608))
    {
      return;
    }
  }

  a3 = *v16;
  v29 = *(a1 + 632) ^ a1;
  v30 = v29 ^ *v16;
  if (*(v16 + 8) != (BYTE4(v30) + v30 + ((HIDWORD(v30) + v30) >> 16) + ((WORD2(v30) + v30 + ((HIDWORD(v30) + v30) >> 16)) >> 8)))
  {
    goto LABEL_47;
  }

  if (v17 != a3)
  {
LABEL_46:
    malloc_zone_check_fail("check: small free list incorrect", " (slot=%u), counter=%d\n*** previous incorrectly set slot=%u count=%d ptr=%p\n", a3, a4, a5, a6, a7, a8, a2, v8, a2, v18, v21);
    goto LABEL_41;
  }

  a3 = *(v16 + 16);
  if (*(v16 + 24) == (((v29 ^ a3) >> 32) + (v29 ^ a3) + ((((v29 ^ a3) >> 32) + (v29 ^ a3)) >> 16) + ((((v29 ^ a3) >> 32) + (v29 ^ a3) + ((((v29 ^ a3) >> 32) + (v29 ^ a3)) >> 16)) >> 8)))
  {
    goto LABEL_35;
  }

  v16 += 16;
LABEL_47:
  free_list_checksum_botch(a1, v16, a3);
  __break(1u);
}

unint64_t small_madvise_free_range_no_lock(unint64_t result, os_unfair_lock_s *a2, uint64_t a3, unint64_t a4, unsigned int a5, unint64_t a6, uint64_t a7)
{
  v10 = result;
  if (a4)
  {
    v11 = a4 & 0xFFFFFFFFFF800000;
    if ((a4 & 0xFFFFFFFFFF800000 | 0x7FA6) > a4 || (v11 | 0x81F8) <= a4)
    {
      v15 = a4;
    }

    else
    {
      v12 = *(a4 + 16);
      v13 = v12;
      v14 = v11 + ((v12 & 0x7FFF) << 9);
      if (v13 < 0)
      {
        v15 = v14;
      }

      else
      {
        v15 = 0;
      }
    }
  }

  else
  {
    v11 = 0;
    v15 = 0;
  }

  v17 = v11 + 32678 > a4 || v11 + 33272 <= a4;
  v18 = 10;
  if (!v17)
  {
    v18 = 0;
  }

  v19 = *MEMORY[0x1E69E9AA0];
  v20 = (*MEMORY[0x1E69E9AA0] + v18 + v15) & ~*MEMORY[0x1E69E9AA0];
  v21 = (v15 + (a5 << 9)) & ~*MEMORY[0x1E69E9AA0];
  if (v20 < v21)
  {
    v22 = (a6 + a7 + v18 + v19) & ~v19;
    v23 = v20 <= (~v19 & a6) ? ~v19 & a6 : v20;
    v24 = v21 >= v22 ? v22 : (v15 + (a5 << 9)) & ~*MEMORY[0x1E69E9AA0];
    if (v23 < v24)
    {
      v25 = a4;
      if (!v17)
      {
        v26 = *(a4 + 16);
        v27 = v11 + ((v26 & 0x7FFF) << 9);
        if (v26 < 0)
        {
          v25 = v27;
        }

        else
        {
          v25 = 0;
        }
      }

      v28 = ((v25 - (v25 & 0xFF800000 | 0x8200)) >> 9) & 0x3FFF;
      v29 = ((v25 + (a5 << 9) + 8355327) >> 9) & 0x3FFF;
      if (v28 > v29)
      {
        purgeable_ptr_in_use_enumerator_cold_1();
      }

      v30 = (v25 & 0xFFFFFFFFFF800000) + 40;
      *(v30 + 2 * v28) &= ~0x8000u;
      *(v30 + 2 * v29) &= ~0x8000u;
      small_free_list_remove_ptr_no_clear(result, a2, a4, a5);
      atomic_fetch_add((a3 + 28), 1u);
      StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v32 = *(StatusReg + 24);
      v33 = v32;
      atomic_compare_exchange_strong_explicit(a2, &v33, 0, memory_order_release, memory_order_relaxed);
      if (v33 != v32)
      {
        os_unfair_lock_unlock(a2);
      }

      mvm_madvise_free(v10, a3, v23, v24, v10 + 640, *(v10 + 620) & 0x20);
      v34 = 0;
      atomic_compare_exchange_strong_explicit(a2, &v34, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
      if (v34)
      {
        os_unfair_lock_lock_with_options();
      }

      atomic_fetch_add((a3 + 28), 0xFFFFFFFF);

      return small_free_list_add_ptr(v10, a2, v15, a5);
    }
  }

  return result;
}

unint64_t small_free_try_depot_unmap_no_lock(os_unfair_lock_s *a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16))
  {
    return 0;
  }

  if (*(a3 + 28) > 0)
  {
    return 0;
  }

  v5 = *(a2 + 2172);
  if (v5 < recirc_retained_regions)
  {
    return 0;
  }

  v7 = *a3;
  v8 = *(a3 + 8);
  if (*a3)
  {
    *(v7 + 8) = v8;
  }

  else
  {
    *(a2 + 2176) = v8;
  }

  if (!v8)
  {
    v8 = (a2 + 2184);
  }

  *v8 = v7;
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a2 + 2172) = v5 - 1;
  v9 = a3 & 0xFFFFFFFFFF800000;
  v10 = small_free_detach_region(a1, a2, a3 & 0xFFFFFFFFFF800000);
  if (v10)
  {
    malloc_zone_error(a1[155]._os_unfair_lock_opaque, 1, "small_free_try_depot_unmap_no_lock objects_in_use not zero: %d\n", v10);
    return 0;
  }

  if (!rack_region_remove(a1, a3 & 0xFFFFFFFFFF800000, a3))
  {
    return 0;
  }

  *(a2 + 2160) -= 8355328;
  return v9;
}

uint64_t trace_decode(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    v4 = 0;
    v5 = 0;
    v6 = -a2;
    do
    {
      v7 = 0;
      v8 = 0;
      v9 = 0;
      v10 = a1;
      do
      {
        if (v6 + v5 == v8)
        {
          return v4;
        }

        v11 = *(v10 + v5);
        v9 |= (v11 & 0x7F) << v7;
        --v8;
        v7 += 7;
        ++v10;
      }

      while ((v11 & 0x80) == 0);
      if (!v8)
      {
        return v4;
      }

      if (v4)
      {
        v12 = *(a3 - 8 + 8 * v4);
      }

      else
      {
        v12 = 0;
      }

      v5 -= v8;
      *(a3 + 8 * v4++) = v12 + 4 * (-(v9 & 1) ^ (v9 >> 1));
    }

    while (v4 != a4);
  }

  return a4;
}

void *rack_init(uint64_t a1, int a2, int a3, int a4)
{
  *(a1 + 32) = xmmword_18E562C80;
  v8 = a1 + 32;
  *(a1 + 4) = a2;
  *(a1 + 88) = a1 + 32;
  *(a1 + 24) = a1 + 32;
  *(a1 + 48) = a1 + 96;
  *(a1 + 56) = a1 + 64;
  result = _platform_memset();
  v10 = malloc_entropy;
  if (a2 == 2)
  {
    v10 = ~malloc_entropy;
  }

  *(v8 + 600) = v10;
  *(v8 + 588) = a4;
  *(v8 + 576) = a3;
  *(v8 + 592) = 0;
  *(v8 - 24) = 0;
  *(v8 - 16) = 0;
  if (a3)
  {
    result = mvm_allocate_pages((*MEMORY[0x1E69E9AC8] + 2560 * (a3 + 1) - 1) & -*MEMORY[0x1E69E9AC8], 0, 1073741827, 1);
    if (!result)
    {
      rack_init_cold_1();
    }

    v11 = result + 320;
    *(a1 + 624) = result + 320;
    *(a1 + 616) = 0;
    v12 = a3 - 1;
    if (a3 != 1)
    {
      v13 = 0;
      v14 = 1;
      do
      {
        ++v13;
        v14 *= 2;
      }

      while (v14 <= v12);
      *(a1 + 616) = v13;
      v12 = v14 - 1;
    }

    *(a1 + 612) = v12;
    *(a1 + 640) = 0;
    *a1 = 0;
    *result = 0;
    if (*(a1 + 608) >= 1)
    {
      v15 = 0;
      do
      {
        *v11 = 0;
        ++v15;
        v11 += 320;
      }

      while (v15 < *(a1 + 608));
    }
  }

  return result;
}