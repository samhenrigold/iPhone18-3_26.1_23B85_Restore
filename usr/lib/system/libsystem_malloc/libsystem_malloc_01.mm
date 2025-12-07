BOOL _malloc_allow_internal_security_policy(uint64_t a1)
{
  if (!MEMORY[0xFFFFF4084])
  {
    return 0;
  }

  if (_os_feature_enabled_simple_impl())
  {
    return 1;
  }

  v2 = _simple_getenv();
  if (!v2)
  {
    return 0;
  }

  v3 = 0;
  v4 = 0;
  while (1)
  {
    v5 = *(v2 + v3);
    if (!*(v2 + v3))
    {
      break;
    }

    v4 = (v5 & 0xF) + 10 * v4;
    ++v3;
    if ((v5 - 58) < 0xFFFFFFF6)
    {
      return 0;
    }
  }

  result = v4 != 0;
  if (!v3 || v4 >= 2)
  {
    return 0;
  }

  return result;
}

_BYTE *malloc_common_value_for_key_copy(unsigned __int8 *a1, char *a2, _BYTE *a3, unint64_t a4)
{
  v6 = malloc_common_value_for_key(a1, a2);
  if (!v6)
  {
    return 0;
  }

  v7 = a3;
  if (a4 >= 2)
  {
    v7 = a3;
    do
    {
      v8 = *v6;
      if (v8 <= 0x20 && ((1 << v8) & 0x100000601) != 0)
      {
        break;
      }

      ++v6;
      *v7++ = v8;
      --a4;
    }

    while (a4 > 1);
  }

  *v7 = 0;
  return a3;
}

unsigned __int8 *malloc_common_value_for_key(unsigned __int8 *a1, char *__s)
{
  v4 = strlen(__s);
  v5 = *a1;
  while (v5)
  {
    if (MEMORY[0x193ACD780](a1, __s, v4))
    {
      v6 = *++a1;
      v5 = v6;
    }

    else
    {
      if (v4)
      {
        a1 += v4;
      }

      v5 = *a1;
      if (v5 == 61)
      {
        return a1 + 1;
      }
    }
  }

  return 0;
}

uint64_t _xzm_ptr_size_outlined(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 240) || !mfm_claimed_address(a2))
  {
    return 0;
  }

  return mfm_alloc_size(a2);
}

void *pgm_malloc_type_calloc(uint64_t a1, unint64_t a2, unint64_t a3)
{
  if (!is_mul_ok(a2, a3))
  {
    goto LABEL_12;
  }

  if (*MEMORY[0x1E69E9AC8] < a2 * a3 || *(a1 + 16684) == *(a1 + 212))
  {
    goto LABEL_12;
  }

  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v8 = *(StatusReg + 880);
  if (v8 == -1)
  {
    goto LABEL_12;
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
    goto LABEL_12;
  }

  v13 = 0;
  atomic_compare_exchange_strong_explicit((a1 + 16680), &v13, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
  if (v13)
  {
    os_unfair_lock_lock_with_options();
  }

  v14 = allocate(a1, a2 * a3, 0x10uLL);
  v15 = *(StatusReg + 24);
  v16 = v15;
  atomic_compare_exchange_strong_explicit((a1 + 16680), &v16, 0, memory_order_release, memory_order_relaxed);
  if (v16 != v15)
  {
    os_unfair_lock_unlock((a1 + 16680));
  }

  if (!v14)
  {
LABEL_12:
    v11 = *(*(a1 + 200) + 168);

    return v11();
  }

  else
  {
    bzero(v14, a2 * a3);
    return v14;
  }
}

uint64_t mvm_aslr_init()
{
  result = _dyld_get_image_slide();
  if (result)
  {
    if (!entropic_address)
    {
      v1 = 0x16FD00000 - ((qword_1ED404330 & 0x7F) << 25);
      address = 0;
      v2 = MEMORY[0x1E69E9A60];
      v3 = MEMORY[0x1E69E9AC8];
      result = mach_vm_allocate(*MEMORY[0x1E69E9A60], &address, *MEMORY[0x1E69E9AC8], 117440513);
      if (!result)
      {
        v4 = address;
        if (address > 0x16FE00000)
        {
          v5 = 0;
          v1 = (address & 0xFFFFFFFFFE000000) + 0x200000000;
          atomic_compare_exchange_strong_explicit(&entropic_base, &v5, address, memory_order_relaxed, memory_order_relaxed);
        }

        result = mach_vm_deallocate(*v2, v4, *v3);
      }

      v6 = 0;
      v7 = 0;
      atomic_compare_exchange_strong_explicit(&entropic_limit, &v6, v1, memory_order_relaxed, memory_order_relaxed);
      atomic_compare_exchange_strong_explicit(&entropic_address, &v7, v1 - 0x10000000, memory_order_relaxed, memory_order_relaxed);
    }
  }

  else
  {
    malloc_entropy = 0;
    qword_1ED404330 = 0;
  }

  return result;
}

void *__cdecl malloc_type_zone_memalign(malloc_zone_t *zone, size_t alignment, size_t size, malloc_type_id_t type_id)
{
  if (malloc_logger || (malloc_slowpath & 1) != 0 || malloc_absolute_max_size < size)
  {
    return _malloc_type_zone_memalign_outlined(zone, alignment, size, type_id);
  }

  if (default_zone == zone)
  {
    zone = *malloc_zones;
  }

  if (alignment < 8)
  {
    return _malloc_type_zone_memalign_outlined(zone, alignment, size, type_id);
  }

  if (zone->version < 0x10)
  {
    return _malloc_type_zone_memalign_outlined(zone, alignment, size, type_id);
  }

  v4 = vcnt_s8(alignment);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    return _malloc_type_zone_memalign_outlined(zone, alignment, size, type_id);
  }

  else
  {
    return (zone[1].calloc)();
  }
}

uint64_t _xzm_xzone_freelist_chunk_block_is_free_slow(uint64_t result, uint64_t a2, int a3)
{
  LODWORD(v4) = 0;
  v5 = *(result + 216) + 96 * *(a2 + 33);
  v6 = *(v5 + 48);
  v7 = ((0xAAAAAAAAAAAAC000 * (((a2 & 0x3FFF) - 2104) >> 4)) & 0x3FFFFFFFC000) + *((a2 & 0xFFFFFFFFFFFFC000) + 0x28);
  if (v6 <= 0x1000)
  {
    v8 = 4;
  }

  else
  {
    v8 = 10;
  }

  v9 = v6 >> v8;
  v10 = (a3 - v7);
  v11 = (v6 >> v8) * (*(v5 + 68) - 1);
  if (*(result + 249) != 1 || v6 > 0x100)
  {
    goto LABEL_11;
  }

  if ((~*a2 & 0xFC00000) != 0 || (v12 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 912)) == 0 || (v13 = v12 + 24 * *(v5 + 80), v14 = *(v13 + 56), v14 > 0x400) || *(v13 + 40) != a2)
  {
    LODWORD(v4) = 0;
    goto LABEL_11;
  }

  if (v14 == 1024)
  {
    v23 = 0;
    v33 = *(v13 + 58);
LABEL_53:
    v4 = 1;
    if ((v23 - v33 + *(v5 + 68)) * v9 <= v10)
    {
      return v4;
    }

LABEL_11:
    v15 = 0;
    v16 = (result + 344);
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    atomic_compare_exchange_strong_explicit((result + 344), &v15, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
    if (v15)
    {
      result = os_unfair_lock_lock_with_options();
    }

    v18 = *a2;
    do
    {
      v19 = v18;
      if ((~v18 & 0x7FE) == 0)
      {
        v4 = 1;
        goto LABEL_38;
      }

      v20 = v18 | 0x40000000;
      atomic_compare_exchange_strong_explicit(a2, &v18, v18 | 0x40000000, memory_order_relaxed, memory_order_relaxed);
    }

    while (v18 != v19);
    v21 = v19 & 0x7FF;
    v22 = (v19 >> 11) & 0x7FF;
    if (v21 == 1024)
    {
      v23 = 0;
LABEL_31:
      if (!v4)
      {
        v4 = (v23 - v22 + *(v5 + 68)) * v9 <= v10;
        goto LABEL_37;
      }
    }

    else
    {
      v23 = 0;
      while (1)
      {
        v24 = v21 % v9 || v21 > v11;
        if (v24 || v23 >= v22)
        {
          break;
        }

        if (v21 == v10)
        {
          v4 = 1;
          goto LABEL_37;
        }

        _X12 = v7 + (v21 << v8);
        if (*(a2 + 12) == 1)
        {
          __asm { LDG             X12, [X12] }
        }

        v21 = *(_X12 + 8) & 0x7FFLL;
        ++v23;
        if (v21 == 1024)
        {
          goto LABEL_31;
        }
      }

      if (!v4)
      {
        goto LABEL_59;
      }
    }

    if (v23 == v22)
    {
      v4 = 0;
LABEL_37:
      v23 = v19 & 0xFFFFFFFFBFFFFFFFLL;
      v30 = v19 | 0x40000000;
      atomic_compare_exchange_strong_explicit(a2, &v30, v23, memory_order_relaxed, memory_order_relaxed);
      if (v30 == v20)
      {
LABEL_38:
        v31 = *(StatusReg + 24);
        v32 = v31;
        atomic_compare_exchange_strong_explicit(v16, &v32, 0, memory_order_release, memory_order_relaxed);
        if (v32 != v31)
        {
          os_unfair_lock_unlock(v16);
        }

        return v4;
      }

      qword_1EAC7F640 = "BUG IN LIBMALLOC: malloc assertion success failed (/Library/Caches/com.apple.xbs/Sources/libmalloc/src/xzone/xzone_malloc.c:4189)";
      __break(1u);
    }

    qword_1EAC7F640 = "BUG IN CLIENT OF LIBMALLOC: corrupt tiny remote freelist, client likely has a buffer overflow or use-after-free bug";
    qword_1EAC7F670 = v23;
    __break(1u);
    goto LABEL_58;
  }

  v23 = 0;
  while (!(v14 % v9) && v14 <= v11)
  {
    v33 = *(v13 + 58);
    if (v23 >= v33)
    {
      break;
    }

    if (v14 == v10)
    {
      return 1;
    }

    _X11 = v7 + (v14 << v8);
    if (*(a2 + 12) == 1)
    {
      __asm { LDG             X11, [X11] }
    }

    v14 = *(_X11 + 8) & 0x7FFLL;
    ++v23;
    if (v14 == 1024)
    {
      goto LABEL_53;
    }
  }

LABEL_58:
  qword_1EAC7F640 = "BUG IN CLIENT OF LIBMALLOC: corrupt tiny local freelist, client likely has a buffer overflow or use-after-free bug";
  qword_1EAC7F670 = v23;
  __break(1u);
LABEL_59:
  qword_1EAC7F640 = "BUG IN CLIENT OF LIBMALLOC: corrupt tiny freelist, client likely has a buffer overflow or use-after-free bug";
  qword_1EAC7F670 = v23;
  __break(1u);
  return result;
}

void _malloc_detect_interposition()
{
  v0 = malloc < &dword_18E52A000 || malloc >= 0x18E56DCB8;
  if (v0 || (calloc >= &dword_18E52A000 ? (v1 = calloc >= 0x18E56DCB8) : (v1 = 1), v1))
  {
    v2 = 1;
  }

  else
  {
    v2 = 1;
    if (free >= &dword_18E52A000 && free < 0x18E56DCB8 && realloc >= &dword_18E52A000 && realloc < 0x18E56DCB8 && valloc >= &dword_18E52A000 && valloc < 0x18E56DCB8 && aligned_alloc >= &dword_18E52A000 && aligned_alloc < 0x18E56DCB8 && posix_memalign >= &dword_18E52A000 && posix_memalign < 0x18E56DCB8 && malloc_zone_malloc >= &dword_18E52A000 && malloc_zone_malloc < 0x18E56DCB8 && malloc_zone_calloc >= &dword_18E52A000 && malloc_zone_calloc < 0x18E56DCB8 && malloc_zone_free >= &dword_18E52A000 && malloc_zone_free < 0x18E56DCB8 && malloc_zone_realloc >= &dword_18E52A000 && malloc_zone_realloc < 0x18E56DCB8 && malloc_zone_valloc >= &dword_18E52A000 && malloc_zone_valloc < 0x18E56DCB8)
    {
      v2 = malloc_zone_memalign < &dword_18E52A000 || malloc_zone_memalign >= 0x18E56DCB8;
    }
  }

  v3 = malloc_type_malloc < &dword_18E52A000 || malloc_type_malloc >= 0x18E56DCB8;
  if (v3 || (malloc_type_calloc >= &dword_18E52A000 ? (v4 = malloc_type_calloc >= 0x18E56DCB8) : (v4 = 1), v4))
  {
    v5 = 0;
  }

  else
  {
    v5 = 0;
    if (malloc_type_free >= &dword_18E52A000 && malloc_type_free < 0x18E56DCB8)
    {
      v5 = 0;
      if (malloc_type_realloc >= &dword_18E52A000 && malloc_type_realloc < 0x18E56DCB8)
      {
        v5 = 0;
        if (malloc_type_valloc >= &dword_18E52A000 && malloc_type_valloc < 0x18E56DCB8)
        {
          v5 = 0;
          if (malloc_type_aligned_alloc >= &dword_18E52A000 && malloc_type_aligned_alloc < 0x18E56DCB8)
          {
            v5 = 0;
            if (malloc_type_posix_memalign >= &dword_18E52A000 && malloc_type_posix_memalign < 0x18E56DCB8)
            {
              v5 = 0;
              if (malloc_type_zone_malloc >= &dword_18E52A000 && malloc_type_zone_malloc < 0x18E56DCB8)
              {
                v5 = 0;
                if (malloc_type_zone_calloc >= &dword_18E52A000 && malloc_type_zone_calloc < 0x18E56DCB8)
                {
                  v5 = 0;
                  if (malloc_type_zone_free >= &dword_18E52A000 && malloc_type_zone_free < 0x18E56DCB8)
                  {
                    v5 = 0;
                    if (malloc_type_zone_realloc >= &dword_18E52A000 && malloc_type_zone_realloc < 0x18E56DCB8)
                    {
                      v5 = 0;
                      if (malloc_type_zone_valloc >= &dword_18E52A000 && malloc_type_zone_valloc < 0x18E56DCB8)
                      {
                        v5 = malloc_type_zone_memalign >= &dword_18E52A000 && malloc_type_zone_memalign < 0x18E56DCB8;
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  if (malloc_interposition_compat != (v2 && v5))
  {
    malloc_interposition_compat = v2 && v5;
  }
}

void pgm_free(void *a1, unint64_t a2)
{
  if (a1[31] <= a2 && a1[32] > a2)
  {
    pgm_free_cold_1(a1, a2);
  }

  else
  {
    v3 = *(a1[25] + 48);

    v3();
  }
}

uint64_t mfm_alloc_size(uint64_t a1)
{
  v1 = a1 & 0xF0FFFFFFFFFFFFFFLL;
  v2 = mfm_arena + 0x10000;
  if (mfm_arena)
  {
    v3 = v2 > v1;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    return 0;
  }

  v5 = a1;
  result = 0;
  if ((v5 & 0xF) == 0 && mfm_arena + 0x400000 > v1)
  {
    v6 = (v1 - v2) >> 4;
    v7 = mfm_arena + 224;
    if ((*(mfm_arena + 224 + ((v6 >> 2) & 0x3FFFFFFFFFFFFFF0)) & (1 << v6) & *(mfm_arena + 224 + ((v6 >> 2) & 0x3FFFFFFFFFFFFFF0 | 8))) != 0)
    {
      v8 = v6 + 1;
      v9 = v8 >> 5;
      v10 = (v8 >> 5) & 0x7FFFFFFFFFFFFFELL;
      v11 = *(v7 + 8 * v10) >> v8;
      if (v11)
      {
        v12 = __clz(__rbit64(v11));
      }

      else
      {
        v14 = v8 & 0x3F;
        v15 = v7 + 8 * v10;
        v16 = *(v15 + 16);
        if (v16)
        {
          v13 = __clz(__rbit64(v16)) - v14 + 65;
          return 16 * v13;
        }

        v17 = *(v7 + ((8 * v9) | 8));
        if (v14 < 0x2F)
        {
          v18 = 0;
        }

        else
        {
          v18 = *(v15 + 24);
        }

        v12 = (((2 * v18) << (v14 ^ 0x3Fu)) | (v17 >> v14)) & 0x3FFFF;
      }

      v13 = v12 + 1;
      return 16 * v13;
    }

    return 0;
  }

  return result;
}

char *malloc_print_configure()
{
  v0 = getenv("MallocDebugReport");
  if (v0)
  {
    v1 = v0;
    if (MEMORY[0x193ACD740](v0, "stderr"))
    {
      if (MEMORY[0x193ACD740](v1, "crash"))
      {
        if (MEMORY[0x193ACD740](v1, "none"))
        {
          debug_mode = 2;
          malloc_printf("Unrecognized value for MallocDebugReport (%s) - using 'stderr'\n", v1);
        }

        else
        {
          debug_mode = 0;
        }

        goto LABEL_11;
      }

      v2 = 0x1EAC7F000uLL;
      v3 = 1;
    }

    else
    {
      v2 = 0x1EAC7F000;
      v3 = 2;
    }

    *(v2 + 2056) = v3;
    goto LABEL_11;
  }

  if (isatty(2))
  {
    debug_mode = 2;
  }

LABEL_11:
  if (getenv("MallocErrorStop"))
  {
    malloc_error_stop = 1;
  }

  result = getenv("MallocErrorSleep");
  if (result)
  {
    malloc_error_sleep = 1;
  }

  return result;
}

uint64_t malloc_common_convert_to_long(unsigned __int8 *a1, unsigned __int8 **a2)
{
  v3 = 0;
  do
  {
    v4 = a1;
    result = v3;
    v6 = *a1;
    if (!v6)
    {
      break;
    }

    v7 = v6 - 58;
    v3 = (v6 & 0xF) + 10 * v3;
    a1 = v4 + 1;
  }

  while (v7 > 0xFFFFFFF5);
  *a2 = v4;
  return result;
}

uint64_t xzm_segment_group_try_realloc_large_chunk(os_unfair_lock_s *a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v7 = *(a3 + 40);
  if (v7 >= a4)
  {
    if (v7 > a4)
    {
      v17 = 0;
      v18 = a1 + 1;
      StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      atomic_compare_exchange_strong_explicit(&a1[1], &v17, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
      if (v17)
      {
        os_unfair_lock_lock_with_options();
      }

      v20 = *(a3 + 40) - a4;
      *(a3 + 40) = a4;
      v21 = a3 + 48 * (a4 - 1);
      *(v21 + 32) = *(v21 + 32) & 0xF0 | 4;
      *(v21 + 36) = 48 * (a4 - 1);
      if (v20 >= 2)
      {
        v22 = 7;
      }

      else
      {
        v22 = 2;
      }

      _xzm_segment_group_segment_span_mark_allocated(a3 & 0xFFFFFFFFFFFFC000, v22, -1431655765 * ((a3 + 48 * a4 - (a3 & 0xFFFFFFFFFFFFC000) - 2104) >> 4), v20);
      v23 = *(StatusReg + 24);
      v24 = v23;
      atomic_compare_exchange_strong_explicit(v18, &v24, 0, memory_order_release, memory_order_relaxed);
      if (v24 != v23)
      {
        os_unfair_lock_unlock(a1 + 1);
      }

      xzm_segment_group_free_chunk(a1, a3 + 48 * a4, 0, 0);
    }

    return 1;
  }

  v9 = 0;
  v10 = a1 + 1;
  v11 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  atomic_compare_exchange_strong_explicit(&a1[1], &v9, *(v11 + 24), memory_order_acquire, memory_order_acquire);
  if (v9)
  {
    os_unfair_lock_lock_with_options();
  }

  v12 = *(a3 + 40);
  v13 = a4 - v12;
  v14 = a3 + 48 * v12;
  v15 = *(v14 + 32);
  if ((v15 & 0xF) == 1)
  {
    v16 = 1;
  }

  else
  {
    v16 = *(v14 + 40);
  }

  v26 = v15 & 0xD;
  if (v14 < a2 + 2104 + 48 * *(a2 + 16) && v26 == 1 && v16 >= v13)
  {
    os_unfair_lock_opaque_low = LOBYTE(a1->_os_unfair_lock_opaque);
    if (os_unfair_lock_opaque_low >= 4)
    {
      xzm_segment_group_alloc_chunk_cold_1(os_unfair_lock_opaque_low);
    }

    v32 = 0x4101004u >> (8 * os_unfair_lock_opaque_low);
    v33 = *(*&a1[6]._os_unfair_lock_opaque + 409);
    v34 = v32 & v33;
    if (v32 & v33) == 0 || (v35 = a3 + 48 * v12, v36 = a4 - v12, v60 = a4 - v12, v61 = *(a3 + 40), v37 = v32 & v33, v38 = _xzm_segment_group_span_mark_smaller(a1, v35, 0, v36, v16 - v13), v34 = v37, v13 = v60, v12 = v61, (v38))
    {
      v40 = *(v14 + 16);
      v39 = *(v14 + 24);
      if (v40)
      {
        *(v40 + 24) = v39;
        v40 = *(v14 + 16);
      }

      *v39 = v40;
      if (v16 != v13)
      {
        v41 = v13;
        _xzm_segment_group_segment_span_free(a1, a2, v13 - 1431655765 * ((v14 - (a2 + 2104)) >> 4), *(v14 + 40) - v13, v34 == 0, (*(v14 + 32) >> 4) & 1);
        v13 = v41;
      }

      if (a4 != v12)
      {
        v42 = a3 + 48 * v12 + 32;
        v43 = 48 * v12;
        v44 = v13;
        do
        {
          *v42 = *v42 & 0xF0 | 4;
          *(v42 + 4) = v43;
          v42 += 48;
          v43 += 48;
          --v44;
        }

        while (v44);
      }

      *(a3 + 40) = a4;
      v45 = *(v11 + 24);
      v46 = v45;
      atomic_compare_exchange_strong_explicit(v10, &v46, 0, memory_order_release, memory_order_relaxed);
      if (v46 != v45)
      {
        v47 = v13;
        os_unfair_lock_unlock(a1 + 1);
        LODWORD(v13) = v47;
      }

      v48 = LOBYTE(a1->_os_unfair_lock_opaque);
      if (v48 >= 4)
      {
        xzm_segment_group_alloc_chunk_cold_1(v48);
      }

      v49 = *&a1[6]._os_unfair_lock_opaque;
      if (*(v49 + 368) != 1)
      {
        return 1;
      }

      v50 = 16;
      if (((v48 - 1) & 0xFE) == 0)
      {
        v50 = 32769;
      }

      v51 = *(v49 + 376);
      if (v51 < v50 || ((0xCu >> (v48 & 0xF)) & 1) != 0)
      {
        if (v51 < v50)
        {
          return 1;
        }
      }

      else if ((*(v49 + 369) & 1) == 0)
      {
        return 1;
      }

      v52 = *(a3 + 32) & 0xF;
      if (v52 > 6)
      {
        if (v52 - 7 >= 2)
        {
          goto LABEL_63;
        }

        v53 = *(a3 + 40) << 14;
      }

      else
      {
        switch(v52)
        {
          case 2u:
            v53 = 0x4000;
            break;
          case 5u:
            v53 = 0x10000;
            break;
          case 6u:
            v53 = 0x20000;
            break;
          default:
LABEL_63:
            xzm_chunk_mark_free_cold_1(v52);
        }
      }

      _X10 = ((0xAAAAAAAAAAAAC000 * (((a3 & 0x3FFF) - 2104) >> 4)) & 0x3FFFFFFFC000) + *((a3 & 0xFFFFFFFFFFFFC000) + 0x28);
      __asm { LDG             X10, [X10] }

      if (a4 != v12)
      {
        v58 = _X10 + v53;
        v59 = _X10 + v53 - (v13 << 14);
        result = 1;
        do
        {
          __asm
          {
            DC              GVA, X9
            DC              GVA, X10
            DC              GVA, X10
            DC              GVA, X10
            DC              GVA, X10
            DC              GVA, X10
            DC              GVA, X10
            DC              GVA, X10
          }

          v59 += 512;
        }

        while (v59 < v58);
        return result;
      }

      return 1;
    }
  }

  v29 = *(v11 + 24);
  v30 = v29;
  atomic_compare_exchange_strong_explicit(v10, &v30, 0, memory_order_release, memory_order_relaxed);
  if (v30 != v29)
  {
    os_unfair_lock_unlock(a1 + 1);
  }

  return 0;
}

uint64_t sanitizer_should_enable()
{
  _NSGetEnviron();
  v0 = _simple_getenv();
  if (v0 && *v0 == 49)
  {
    return 1;
  }

  _NSGetEnviron();
  result = _simple_getenv();
  if (result)
  {
    return *result == 49;
  }

  return result;
}

void nano_common_init(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  _malloc_engaged_nano = _nano_common_init_pick_mode(a1, a2, a3, malloc_space_efficient_enabled);
  if (_malloc_engaged_nano)
  {
    v6 = malloc_common_value_for_key_copy(a3, "malloc_nano_max_magazines", v9, 0x100uLL);
    if (v6)
    {
      v8 = 0;
      v7 = malloc_common_convert_to_long(v6, &v8);
      if (*v8 || v7 < 0)
      {
        malloc_report(3, "malloc_nano_max_magazines must be positive - ignored.\n");
      }

      else
      {
        nano_common_max_magazines = v7;
      }
    }

    if (_malloc_engaged_nano == 2)
    {
      nanov2_init(a1, a2, a3);
    }
  }
}

uint64_t pgm_malloc_type_malloc(uint64_t a1, unint64_t a2)
{
  v4 = (a1 + 0x4000);
  if (*MEMORY[0x1E69E9AC8] >= a2 && *(a1 + 16684) != *(a1 + 212))
  {
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v7 = *(StatusReg + 880);
    if (v7 != -1)
    {
      if (v7)
      {
        v9 = v7 - 1;
      }

      else
      {
        v8 = *(a1 + 220);
        if (!v8)
        {
          purgeable_ptr_in_use_enumerator_cold_1();
        }

        v9 = arc4random_uniform(v8);
      }

      *(StatusReg + 880) = v9;
      if (!v9)
      {
        v12 = 0;
        v13 = v4 + 74;
        atomic_compare_exchange_strong_explicit(v13, &v12, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
        if (v12)
        {
          os_unfair_lock_lock_with_options();
        }

        v14 = allocate(a1, a2, 0x10uLL);
        v15 = *(StatusReg + 24);
        v16 = v15;
        atomic_compare_exchange_strong_explicit(v13, &v16, 0, memory_order_release, memory_order_relaxed);
        if (v16 != v15)
        {
          os_unfair_lock_unlock(v13);
        }

        if (v14)
        {
          return v14;
        }
      }
    }
  }

  v10 = *(*(a1 + 200) + 160);

  return v10();
}

uint64_t _nano_common_init_pick_mode(uint64_t a1, uint64_t a2, unsigned __int8 *a3, int a4)
{
  v5 = malloc_common_value_for_key(a3, "nanov2_mode");
  if (!v5)
  {
    goto LABEL_5;
  }

  v6 = v5;
  if (!MEMORY[0x193ACD780](v5, "enabled", 7))
  {
    goto LABEL_5;
  }

  if (!MEMORY[0x193ACD780](v6, "forced", 6))
  {
    return 2;
  }

  if (!MEMORY[0x193ACD780](v6, "conditional", 11))
  {
    if (a4)
    {
      v8 = 0;
    }

    else
    {
      v8 = 2;
    }
  }

  else
  {
LABEL_5:
    v7 = _simple_getenv();
    if (v7)
    {
      v8 = 2 * (*v7 == 49);
    }

    else
    {
      v8 = 0;
    }
  }

  v9 = _simple_getenv();
  if (v9)
  {
    v10 = *v9;
    if (v10 > 0x55)
    {
      if (v10 == 86 || v10 == 118)
      {
        if (v9[1] - 49 >= 2)
        {
          return v8;
        }

        else
        {
          return 2;
        }
      }
    }

    else
    {
      if (v10 == 48)
      {
        return 0;
      }

      if (v10 == 49)
      {
        return 2;
      }
    }
  }

  return v8;
}

void xzm_malloc_zone_malloc(void *a1, unint64_t a2)
{
  v4 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 904);
  v5 = (malloc_get_thread_options() << 27) & 0x40000000;

  xzm_malloc_inline(a1, a2, v4, v5, v6);
}

void nanov2_init(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  __src[8] = *MEMORY[0x1E69E9840];
  v4 = "MallocNanoMadvisePolicy";
  v5 = _simple_getenv();
  if (v5 || (v4 = "nanov2_madvise_policy", (v5 = malloc_common_value_for_key(a3, "nanov2_madvise_policy")) != 0))
  {
    v6 = v5;
    if (MEMORY[0x193ACD780](v5, "immediate", 9))
    {
      if (!MEMORY[0x193ACD780](v6, "warning", 7))
      {
        v7 = 1;
        goto LABEL_10;
      }

      if (!MEMORY[0x193ACD780](v6, "critical", 8))
      {
        v7 = 2;
        goto LABEL_10;
      }

      malloc_report(3, "%s value (%s) invalid - ignored.\n", v4, v6);
    }
  }

  v7 = 0;
LABEL_10:
  nanov2_madvise_policy = v7;
  v8 = "MallocNanoSingleArena";
  v9 = _simple_getenv();
  if (v9 || (v8 = "nanov2_single_arena", (v9 = malloc_common_value_for_key_copy(a3, "nanov2_single_arena", v46, 0x100uLL)) != 0))
  {
    v10 = v9;
    v11 = 0;
    __src[0] = 0;
    v12 = v9;
    while (*v12)
    {
      v13 = malloc_common_convert_to_long(v12, __src);
      if (__src[0] == v12 || ((v14 = *__src[0], v14 != 58) ? (v15 = v14 == 0) : (v15 = 1), !v15 || v13 - 16 > 0xF0 || (v13 & 0xF) != 0))
      {
        malloc_report(3, "%s value (%s) invalid - ignored.\n", v8, v10);
        goto LABEL_25;
      }

      v11 |= 1 << ((v13 >> 4) - 1);
      v12 = __src[0] + 1;
      if (!*__src[0])
      {
        break;
      }
    }
  }

  else
  {
LABEL_25:
    LOWORD(v11) = 0;
  }

  word_1ED404108 = v11;
  v16 = _simple_getenv();
  if (v16)
  {
    v17 = v16;
    v18 = "MallocNanoScanPolicy";
  }

  else
  {
    v18 = "nanov2_scan_policy";
    v19 = malloc_common_value_for_key_copy(a3, "nanov2_scan_policy", v46, 0x100uLL);
    if (!v19)
    {
LABEL_69:
      v25 = 10;
      v24 = 80;
      v23 = 20;
      v35 = 1;
      goto LABEL_77;
    }

    v17 = v19;
  }

  if (!MEMORY[0x193ACD740](v17, nanov2_set_block_scan_policy_first_fit_key))
  {
    v35 = 0;
    v25 = 10;
    v24 = 80;
    v23 = 20;
    goto LABEL_77;
  }

  __src[0] = 0;
  if (!*v17)
  {
    goto LABEL_69;
  }

  v43 = v18;
  v44 = a3;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v23 = 20;
  v24 = 80;
  v25 = 10;
  v26 = v17;
  while (1)
  {
    if (MEMORY[0x193ACD780](v26, nanov2_set_block_scan_policy_min_key, 3) | v20)
    {
      if (MEMORY[0x193ACD780](v26, nanov2_set_block_scan_policy_max_key, 3) | v21)
      {
        if (MEMORY[0x193ACD780](v26, nanov2_set_block_scan_policy_lim_key, 3) | v22)
        {
          LOBYTE(v27) = 1;
        }

        else
        {
          v26 += 3;
          v32 = malloc_common_convert_to_long(v26, __src);
          v27 = v26 == __src[0] || v32 < 0;
          if (!v27)
          {
            v25 = v32;
            v26 = __src[0];
          }

          v22 = 1;
        }
      }

      else
      {
        v26 += 3;
        v30 = malloc_common_convert_to_long(v26, __src);
        v27 = v26 == __src[0] || v30 > 0x64;
        if (!v27)
        {
          v24 = v30;
          v26 = __src[0];
        }

        v21 = 1;
      }
    }

    else
    {
      v26 += 3;
      v28 = malloc_common_convert_to_long(v26, __src);
      v27 = v26 == __src[0] || v28 > 0x64;
      if (!v27)
      {
        v23 = v28;
        v26 = __src[0];
      }

      v20 = 1;
    }

    if (*v26 != 58)
    {
      break;
    }

    if (v27)
    {
      goto LABEL_75;
    }

    if (!*++v26)
    {
      if (v23 <= v24)
      {
        goto LABEL_76;
      }

LABEL_75:
      malloc_report(3, "%s value (%s) invalid - ignored.\n", v43, v17);
      a3 = v44;
      goto LABEL_78;
    }
  }

  if (*v26)
  {
    goto LABEL_75;
  }

  if (v23 > v24)
  {
    LOBYTE(v27) = 1;
  }

  if (v27)
  {
    goto LABEL_75;
  }

LABEL_76:
  v35 = 1;
  a3 = v44;
LABEL_77:
  nanov2_policy_config = v35;
  unk_1ED4040FC = v23;
  dword_1ED404100 = v24;
  unk_1ED404104 = v25;
LABEL_78:
  v36 = _simple_getenv();
  if (v36 || (v36 = malloc_common_value_for_key_copy(a3, "nanov2_size_class_blocks", v46, 0x100uLL)) != 0)
  {
    v37 = 0;
    v38 = 0;
    v45 = 0;
    v39 = v36;
    do
    {
      v40 = malloc_common_convert_to_long(v39, &v45);
      v41 = v45;
      if (v45 == v39 || (v37 != 60 ? (v42 = 44) : (v42 = 0), v42 != *v45 || v40 > 64))
      {
        malloc_report(3, "%s value invalid: [%s] - ignored.\n");
        return;
      }

      *(__src + v37) = v40;
      v38 += v40;
      v39 = (v41 + 1);
      v37 += 4;
    }

    while (v37 != 64);
    if (v38 == 64)
    {
      memcpy(block_units_by_size_class, __src, 0x40uLL);
    }

    else
    {
      malloc_report(3, "%s value invalid - values must sum to %d, not %d - ignored.\n");
    }
  }
}

uint64_t malloc_zone_batch_malloc_fallback(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  if (!a4)
  {
    return 0;
  }

  v7 = 0;
  v8 = a4;
  while (1)
  {
    v9 = (*(a1 + 24))(a1, a2);
    if (!v9)
    {
      break;
    }

    *(a3 + 8 * v7++) = v9;
    if (v8 == v7)
    {
      return v8;
    }
  }

  return v7;
}

uint64_t default_zone_free_definite_size()
{
  v0 = lite_zone;
  if (!lite_zone)
  {
    v0 = *malloc_zones;
  }

  return (*(v0 + 120))();
}

uint64_t xzm_main_malloc_zone_create(unsigned int a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4)
{
  v329 = a4;
  v335 = a2;
  v346 = *MEMORY[0x1E69E9840];
  LODWORD(v319) = malloc_process_identity;
  LODWORD(v333) = malloc_process_identity - 1;
  v5 = (malloc_process_identity - 1) < 0x22;
  v341 = 0uLL;
  v6 = _simple_getenv();
  if (v6)
  {
    v7 = v6;
    v8 = strlen(v6);
    if (v8 <= 0x1F)
    {
      xzm_main_malloc_zone_create_cold_2(v8);
    }

    v9 = 0;
    v10 = &v341;
    v11 = 1;
    do
    {
      v12 = v11;
      memcpy(v343, &v7[v9], 0x10uLL);
      v343[16] = 0;
      v13 = strtoull(v343, 0, 16);
      v14 = v13;
      if (v13 == -1)
      {
        if (*__error() == 34)
        {
          goto LABEL_498;
        }
      }

      else if (!v13 && *__error() == 22)
      {
LABEL_498:
        xzm_main_malloc_zone_create_cold_1();
      }

      v11 = 0;
      *v10 = v14;
      v10 = &v341 + 1;
      v9 = 16;
    }

    while ((v12 & 1) != 0);
  }

  else
  {
    if (v333 <= 0x21)
    {
      xzm_main_malloc_zone_create_cold_8();
    }

    arc4random_buf(&v341, 0x10uLL);
  }

  v15 = ccsha256_di();
  MEMORY[0x1EEE9AC00](v15);
  v17 = v277 - v16;
  ccdigest_init();
  strcpy(v344, "xzone malloc front random");
  ccdigest_update();
  ccdigest_update();
  (*(v15 + 56))(v15, v17, v345);
  cc_clear();
  if (malloc_process_identity)
  {
    v18 = _xzm_process_configs[malloc_process_identity];
  }

  else
  {
    v18 = 0;
  }

  v19 = malloc_common_value_for_key_copy(v329, "xzone_ptr_buckets", v343, 0x100uLL);
  if (!v19)
  {
    goto LABEL_20;
  }

  v340 = 0;
  v20 = malloc_common_convert_to_long(v19, &v340);
  v21 = v20;
  if (*v340.numer || (v20 - 1) >= 4)
  {
    malloc_report(3, "Invalid xzone_ptr_buckets value %ld - ignored.\n", v20);
LABEL_20:
    v21 = 0;
  }

  v277[1] = v277;
  v306 = v5;
  if (v333 >= 0x22)
  {
    v23 = _simple_getenv();
    if (!v23)
    {
      v21 = 2;
      v22 = 2;
      goto LABEL_34;
    }

    v24 = strtol(v23, 0, 10);
    if (v24 == 1)
    {
      v22 = 0;
    }

    else
    {
      v22 = 1;
      if (v24 != 2 && v24 != 0xFFFF)
      {
        v22 = 2;
      }

      if ((v24 - 1) >= 2 && v24 != 0xFFFF)
      {
        v21 = 2;
        goto LABEL_34;
      }
    }

    v21 = 1;
    goto LABEL_34;
  }

  v22 = 1;
LABEL_34:
  if (malloc_internal_security_policy == 1)
  {
    v25 = _simple_getenv();
    if (v25)
    {
      v26 = strtol(v25, 0, 10);
      if (v26 < 5)
      {
        v21 = v26;
      }
    }
  }

  v27 = 3;
  if (v21)
  {
    v27 = v21;
  }

  v328 = v27;
  v28 = _simple_getenv();
  if (!v28)
  {
LABEL_46:
    mfm_initialize();
    if (v18)
    {
      goto LABEL_44;
    }

LABEL_47:
    v30 = 0;
    goto LABEL_48;
  }

  v29 = strtol(v28, 0, 10);
  if (v29 > 1)
  {
    malloc_report(3, "MallocXzoneEarlyAlloc must be 0 or 1.\n");
    goto LABEL_46;
  }

  if (v29)
  {
    goto LABEL_46;
  }

  if (!v18)
  {
    goto LABEL_47;
  }

LABEL_44:
  v30 = v18[1];
LABEL_48:
  if (malloc_internal_security_policy == 1)
  {
    v31 = _simple_getenv();
    if (v31)
    {
      v32 = strtol(v31, 0, 10);
      if (v32 < 2)
      {
        v30 = v32 != 0;
      }
    }
  }

  LODWORD(v298) = v30;
  v339 = 0;
  v338 = 0;
  if (malloc_has_sec_transition)
  {
    v33 = 0x8000;
  }

  else
  {
    v33 = 0;
  }

  v330 = malloc_has_sec_transition;
  v326 = malloc_has_sec_transition & (malloc_sec_transition_policy >> 1);
  v34 = _simple_getenv();
  if (v34 && strtol(v34, 0, 10) == 1)
  {
    if ((malloc_has_sec_transition & 1) == 0)
    {
      malloc_report(64, "Malloc MTE debug mode (MallocTagAll=1) requires the process to be started with MTE enabled.\n");
    }

    v326 = 1;
    v33 = 0x8000;
  }

  if (malloc_internal_security_policy == 1)
  {
    v35 = _simple_getenv();
    if (v35)
    {
      v36 = strtol(v35, 0, 10);
      if (v36 == 1)
      {
        v33 = 0x8000;
      }

      v37 = v326;
      if (v36 == 1)
      {
        v37 = 1;
      }

      v326 = v37;
    }
  }

  if (malloc_internal_security_policy == 1)
  {
    v38 = _simple_getenv();
    if (v38)
    {
      v39 = strtol(v38, 0, 10);
      v40 = v330;
      if (v39 < 2)
      {
        v40 = v39;
      }

      v330 = v40;
    }
  }

  if (malloc_internal_security_policy == 1)
  {
    v41 = _simple_getenv();
    if (v41)
    {
      v42 = strtol(v41, 0, 10);
      v43 = v326;
      if (v42 < 2)
      {
        v43 = v42;
      }

      v326 = v43;
    }
  }

  if (malloc_internal_security_policy == 1)
  {
    v44 = _simple_getenv();
    if (v44)
    {
      v45 = strtoull(v44, 0, 10);
      if ((v45 & 0xF) == 0 && v45 < 0x8001)
      {
        v33 = v45;
      }
    }
  }

  if (v18)
  {
    v47 = v18[2] ^ 1;
  }

  else
  {
    v47 = 1;
  }

  v299 = a1;
  v316 = v33;
  if (malloc_internal_security_policy == 1)
  {
    v48 = _simple_getenv();
    if (v48)
    {
      v49 = strtol(v48, 0, 10);
      if (v49 < 2)
      {
        v47 = v49 != 0;
      }
    }
  }

  v50 = malloc_process_identity == 34 || v333 > 0x21;
  v51 = _malloc_engaged_nano == 2 && v50;
  LODWORD(v332) = v333 > 0x21;
  if (v51)
  {
    v318 = _os_feature_enabled_simple_impl();
    v22 = 2;
  }

  else
  {
    v318 = 0;
  }

  v52 = _simple_getenv();
  if (v52)
  {
    v53 = strtol(v52, 0, 10);
    if (v53 > 1)
    {
      malloc_report(3, "MallocXzoneThreadCaching must be one of 0,1 - got %ld\n", v53);
      if (!v18)
      {
        goto LABEL_107;
      }

      goto LABEL_104;
    }

    v318 = v53 == 1;
  }

  if (!v18)
  {
    goto LABEL_107;
  }

LABEL_104:
  if (*v18 == 3)
  {
    v22 = v22;
  }

  else
  {
    v22 = *v18;
  }

LABEL_107:
  v54 = malloc_common_value_for_key_copy(v329, "malloc_xzone_slot_config", v343, 0x100uLL);
  if (v54)
  {
    v55 = strtol(v54, 0, 10);
    if (v55 >= 3)
    {
      v22 = v22;
    }

    else
    {
      v22 = v55;
    }
  }

  if (malloc_internal_security_policy == 1)
  {
    v56 = _simple_getenv();
    if (v56)
    {
      v57 = strtol(v56, 0, 10);
      if (v57 >= 3)
      {
        v22 = v22;
      }

      else
      {
        v22 = v57;
      }
    }
  }

  v279 = v47;
  if (malloc_internal_security_policy == 1 && (v58 = _simple_getenv()) != 0)
  {
    v59 = strtol(v58, 0, 10);
    if (v59 >= 3)
    {
      v60 = 0;
    }

    else
    {
      v60 = v59;
    }
  }

  else
  {
    v60 = 0;
  }

  if (malloc_internal_security_policy == 1)
  {
    v61 = _simple_getenv();
    v62 = 128;
    if (v61)
    {
      v63 = strtol(v61, 0, 10);
      if (v63 >= 0xFFFFFFFF)
      {
        v62 = 128;
      }

      else
      {
        v62 = v63;
      }
    }
  }

  else
  {
    v62 = 128;
  }

  if (malloc_internal_security_policy == 1 && (v64 = _simple_getenv()) != 0)
  {
    v65 = strtol(v64, 0, 10);
    if ((v65 - 1) >= 0xFE)
    {
      v66 = 1;
    }

    else
    {
      v66 = v65;
    }
  }

  else
  {
    v66 = 1;
  }

  v327 = v66;
  if (malloc_internal_security_policy == 1)
  {
    v67 = _simple_getenv();
    if (v67)
    {
      v68 = strtol(v67, 0, 10);
      if (v68 >= 0xFFFFFFFF)
      {
        v69 = 128;
      }

      else
      {
        v69 = v68;
      }

      if (v68 >= 0xFFFFFFFF)
      {
        v70 = 32;
      }

      else
      {
        v70 = v68;
      }

      v323 = v69;
      v324 = v70;
    }

    else
    {
      v323 = 128;
      v324 = 32;
    }
  }

  else
  {
    v324 = 32;
    v323 = 128;
  }

  if (malloc_internal_security_policy == 1)
  {
    v71 = _simple_getenv();
    if (v71)
    {
      v72 = strtol(v71, 0, 10);
      if (v72 >= 0xFFFFFFFF)
      {
        v73 = v324;
      }

      else
      {
        v73 = v72;
      }

      v324 = v73;
    }
  }

  if (malloc_internal_security_policy == 1)
  {
    v74 = _simple_getenv();
    if (v74)
    {
      v75 = strtol(v74, 0, 10);
      if (v75 >= 0xFFFFFFFF)
      {
        v76 = v323;
      }

      else
      {
        v76 = v75;
      }

      v323 = v76;
    }
  }

  if (malloc_internal_security_policy == 1)
  {
    v77 = _simple_getenv();
    v78 = 256;
    if (v77)
    {
      v79 = strtol(v77, 0, 10);
      if (v79 >= 0xFFFFFFFF)
      {
        v78 = 256;
      }

      else
      {
        v78 = v79;
      }

      if (v79 >= 0xFFFFFFFF)
      {
        v80 = 64;
      }

      else
      {
        v80 = v79;
      }

      v322 = v80;
    }

    else
    {
      v322 = 64;
    }
  }

  else
  {
    v322 = 64;
    v78 = 256;
  }

  if (malloc_internal_security_policy == 1)
  {
    v81 = _simple_getenv();
    if (v81)
    {
      v82 = strtol(v81, 0, 10);
      if (v82 >= 0xFFFFFFFF)
      {
        v83 = v322;
      }

      else
      {
        v83 = v82;
      }

      v322 = v83;
    }
  }

  if (malloc_internal_security_policy == 1)
  {
    v84 = _simple_getenv();
    if (v84)
    {
      v85 = strtol(v84, 0, 10);
      if (v85 >= 0xFFFFFFFF)
      {
        v78 = v78;
      }

      else
      {
        v78 = v85;
      }
    }
  }

  if (malloc_internal_security_policy == 1 && (v86 = _simple_getenv()) != 0)
  {
    v87 = strtol(v86, 0, 10);
    if (v87 >= 0xFFFFFFFF)
    {
      v88 = 512;
    }

    else
    {
      v88 = v87;
    }

    v314 = v88;
  }

  else
  {
    v314 = 512;
  }

  if (malloc_internal_security_policy == 1 && (v89 = _simple_getenv()) != 0)
  {
    v90 = strtol(v89, 0, 10);
    if (v90 >= 0xFFFFFFFF)
    {
      v91 = 1024;
    }

    else
    {
      v91 = v90;
    }

    v315 = v91;
  }

  else
  {
    v315 = 1024;
  }

  if (v22)
  {
    if (v22 == 2)
    {
      goto LABEL_200;
    }

    if (v22 != 1)
    {
      xzm_main_malloc_zone_create_cold_7();
    }

    v92 = ncpuclusters;
    if (ncpuclusters <= 1)
    {
LABEL_200:
      v92 = logical_ncpus;
      v22 = 2;
    }

    else
    {
      v22 = 1;
    }
  }

  else
  {
    v92 = 1;
  }

  if (v60 >= v22)
  {
    v93 = v22;
  }

  else
  {
    v93 = v60;
  }

  v313 = v93;
  v340 = 0;
  v94 = mach_timebase_info(&v340);
  if (v94)
  {
    xzm_main_malloc_zone_create_cold_3(v94);
  }

  v325 = 1000000;
  if (malloc_internal_security_policy == 1)
  {
    v95 = _simple_getenv();
    v325 = 1000000;
    if (v95)
    {
      v96 = strtol(v95, 0, 10);
      v97 = 1000000 * v96;
      if (v96 >= 0xFFFFFFFF)
      {
        v97 = 1000000;
      }

      v325 = v97;
    }
  }

  if ((v51 | v330))
  {
    v98 = 1000000;
  }

  else
  {
    v98 = 0;
  }

  v321 = v98;
  denom = v340.denom;
  numer = v340.numer;
  if (malloc_internal_security_policy == 1)
  {
    v99 = _simple_getenv();
    if (v99)
    {
      v100 = strtol(v99, 0, 10);
      v101 = v321;
      if (v100 < 0xFFFFFFFF)
      {
        v101 = 1000000 * v100;
      }

      v321 = v101;
    }
  }

  v290 = v340.denom;
  v291 = v340.numer;
  LODWORD(v297) = v92;
  if (malloc_internal_security_policy == 1 && (v102 = _simple_getenv()) != 0)
  {
    v103 = strtol(v102, 0, 10);
    v104 = 0x4000;
    if (v103 <= 0x8000)
    {
      v104 = v103;
    }
  }

  else
  {
    v104 = 0x4000;
  }

  v310 = v104;
  v105 = _simple_getenv();
  v106 = 0x4000;
  v311 = v78;
  if (v105)
  {
    v107 = strtol(v105, 0, 10);
    if (v107 >= 0xFFFFFFFF)
    {
      v106 = 0x4000;
    }

    else
    {
      v106 = v107;
    }
  }

  v108 = _simple_getenv();
  if (v108)
  {
    v109 = strtol(v108, 0, 10);
    if (v109 >= 0xFFFFFFFF)
    {
      v110 = 256;
    }

    else
    {
      v110 = v109;
    }

    v308 = v110;
  }

  else
  {
    v308 = 256;
  }

  v111 = 1000000000;
  v112 = _simple_getenv();
  if (v112)
  {
    v113 = strtol(v112, 0, 10);
    if (v113 >= 0)
    {
      v111 = 1000000 * v113;
    }
  }

  v288 = v340.denom;
  v289 = v340.numer;
  v317 = v22;
  if (malloc_internal_security_policy != 1)
  {
    goto LABEL_243;
  }

  v114 = _simple_getenv();
  if (!v114)
  {
    goto LABEL_243;
  }

  v115 = strtol(v114, 0, 10);
  if (v115 > 1)
  {
    malloc_report(3, "MallocDeferredReclaim must be one of 0,1 - got %ld\n", v115);
LABEL_243:
    v116 = 0;
    v117 = 0;
    goto LABEL_244;
  }

  v116 = v115 == 1;
  v117 = 16 * v116;
LABEL_244:
  if (malloc_internal_security_policy == 1)
  {
    v118 = _simple_getenv();
    if (v118)
    {
      strtol(v118, 0, 10);
    }
  }

  v312 = v62;
  if (malloc_internal_security_policy == 1)
  {
    v119 = _simple_getenv();
    if (v119)
    {
      strtol(v119, 0, 10);
    }
  }

  v301 = mach_vm_reclaim_round_capacity();
  v300 = mach_vm_reclaim_round_capacity();
  v120 = _simple_getenv();
  if (v120)
  {
    v121 = strtol(v120, 0, 10);
    if (v121 > 1)
    {
      malloc_report(3, "MallocLargeCache must be 0 or 1.\n");
    }

    else
    {
      v116 = v121 == 1;
      v117 = 16 * v116;
    }
  }

  if (v51)
  {
    v122 = v117;
  }

  else
  {
    v122 = 0;
  }

  v320 = v122;
  if (malloc_internal_security_policy == 1)
  {
    v123 = _simple_getenv();
    if (v123)
    {
      v124 = strtol(v123, 0, 10);
      if (v124 >> 16)
      {
        malloc_report(3, "xzm: unsupported value for MallocXzoneHugeCacheSize (%ld)", v124);
      }

      else
      {
        v320 = v124;
      }
    }
  }

  v125 = v51 & v116;
  if (malloc_internal_security_policy != 1)
  {
    v302 = 0xFFFFFFFFLL;
    goto LABEL_269;
  }

  v126 = _simple_getenv();
  if (!v126)
  {
LABEL_268:
    v302 = 0xFFFFFFFFLL;
    goto LABEL_269;
  }

  v127 = strtol(v126, 0, 10);
  if (HIDWORD(v127))
  {
    malloc_report(3, "xzm: unsupported value for MallocXzoneHugeCacheMaxEntryBytes (%ld)", v127);
    goto LABEL_268;
  }

  v302 = v127;
LABEL_269:
  v128 = v125;
  if (malloc_internal_security_policy == 1)
  {
    v129 = _simple_getenv();
    v128 = v125;
    if (v129)
    {
      v130 = strtol(v129, 0, 10);
      if (v130 > 1)
      {
        malloc_report(3, "MallocXzoneDeferTiny must be one of 0,1 - got %ld\n", v130);
        v128 = v125;
      }

      else
      {
        v128 = v130 == 1;
      }
    }
  }

  v334 = v125;
  if (malloc_internal_security_policy == 1)
  {
    v131 = _simple_getenv();
    v334 = v125;
    if (v131)
    {
      v132 = strtol(v131, 0, 10);
      if (v132 > 1)
      {
        malloc_report(3, "MallocXzoneDeferSmall must be one of 0,1 - got %ld\n", v132);
        v133 = v125;
      }

      else
      {
        v133 = v132 == 1;
      }

      v334 = v133;
    }
  }

  if (malloc_internal_security_policy == 1)
  {
    v134 = _simple_getenv();
    if (v134)
    {
      v135 = strtol(v134, 0, 10);
      if (v135 > 1)
      {
        malloc_report(3, "MallocXzoneDeferLarge must be one of 0,1 - got %ld\n", v135);
      }

      else
      {
        v125 = v135 == 1;
      }
    }
  }

  v136 = v332;
  if (v319 == 34)
  {
    v136 = 1;
  }

  if (v136 == 1)
  {
    v137 = v328;
    if (malloc_space_efficient_enabled)
    {
      v138 = 0;
      v320 = 0;
      v128 = 0;
      v139 = 0;
      v125 = 0;
    }

    else
    {
      v138 = v320 != 0;
      if (v320)
      {
        v142 = v125;
      }

      else
      {
        v142 = 1;
      }

      if ((v142 & 1) == 0)
      {
        v296 = v320 != 0;
        malloc_report(3, "Huge cache requires deferred reclamation for large.\n");
        v140 = v128 | v334;
        goto LABEL_300;
      }

      v139 = v334;
    }
  }

  else
  {
    v138 = 0;
    v320 = 0;
    v128 = 0;
    v139 = 0;
    v125 = 0;
    v137 = v328;
  }

  v140 = v128 | v139;
  v334 = v139;
  v296 = v138;
  if ((v125 & 1) == 0 && v140)
  {
    v141 = v128 | v139;
    malloc_report(3, "Deferred reclamation cannot be used for xzones without large\n");
    v140 = v141;
LABEL_300:
    v125 = 1;
  }

  v332 = v128;
  v287 = v140;
  if (malloc_internal_security_policy == 1)
  {
    v143 = _simple_getenv();
    if (v143)
    {
      v144 = v333 < 0x22;
      v145 = strtol(v143, 0, 10);
      v146 = v145 != 0;
      if (v145 >= 2)
      {
        v146 = v144;
      }

      v306 = v146;
    }
  }

  v147 = malloc_common_value_for_key_copy(v329, "xzone_guard_pages", v343, 0x100uLL);
  if (v147)
  {
    v148 = strtol(v147, 0, 10);
    if (v148 <= 1)
    {
      if (v148)
      {
        goto LABEL_309;
      }

LABEL_313:
      v329 = 0;
      v151 = 0;
      v152 = 0;
      v294 = 0;
      v295 = 0;
      v153 = 0;
      goto LABEL_343;
    }

    malloc_report(3, "%s must be 0 or 1.\n", "xzone_guard_pages");
    if (!v306)
    {
      goto LABEL_313;
    }
  }

  else if (!v306)
  {
    goto LABEL_313;
  }

LABEL_309:
  v150 = malloc_internal_security_policy != 1 || (v149 = _simple_getenv()) == 0 || strtol(v149, 0, 10) != 0;
  v295 = v150;
  if (malloc_internal_security_policy == 1)
  {
    v154 = _simple_getenv();
    v153 = 8;
    if (v154)
    {
      v155 = strtol(v154, 0, 10);
      if (v155 <= 0)
      {
        v153 = 8;
      }

      else
      {
        v153 = v155;
      }
    }
  }

  else
  {
    v153 = 8;
  }

  if (malloc_internal_security_policy == 1 && (v156 = _simple_getenv()) != 0)
  {
    v157 = strtol(v156, 0, 10);
    if (v157 <= 0)
    {
      v158 = 64;
    }

    else
    {
      v158 = v157;
    }

    v294 = v158;
  }

  else
  {
    v294 = 64;
  }

  if (malloc_internal_security_policy == 1)
  {
    v159 = _simple_getenv();
    v152 = 3;
    if (v159)
    {
      v160 = strtol(v159, 0, 10);
      if (v160 <= 0)
      {
        v152 = 3;
      }

      else
      {
        v152 = v160;
      }
    }
  }

  else
  {
    v152 = 3;
  }

  if (malloc_internal_security_policy == 1)
  {
    v161 = _simple_getenv();
    v151 = 32;
    if (v161)
    {
      v162 = strtol(v161, 0, 10);
      if (v162 <= 0)
      {
        v151 = 32;
      }

      else
      {
        v151 = v162;
      }
    }
  }

  else
  {
    v151 = 32;
  }

  v329 = 1;
LABEL_343:
  v284 = v151;
  if (malloc_internal_security_policy == 1 && (v163 = _simple_getenv()) != 0)
  {
    v164 = strtol(v163, 0, 10);
    if (v164 >= 0x40)
    {
      v165 = 0;
    }

    else
    {
      v165 = v164;
    }

    v306 = v165;
  }

  else
  {
    v306 = 0;
  }

  if (malloc_internal_security_policy == 1 && (v166 = _simple_getenv()) != 0)
  {
    v167 = strtol(v166, 0, 10);
    v168 = 2;
    if (v167 < 2)
    {
      v168 = v167;
    }

    v305 = v168;
  }

  else
  {
    v305 = 0;
  }

  v286 = v153;
  if (malloc_internal_security_policy != 1)
  {
    goto LABEL_362;
  }

  v169 = _simple_getenv();
  if (!v169)
  {
    goto LABEL_362;
  }

  v170 = strtol(v169, 0, 10);
  if (!v170)
  {
    goto LABEL_362;
  }

  if (v170 != 1)
  {
    malloc_report(3, "MallocXzoneDataOnly must be 0 or 1.\n");
LABEL_362:
    v171 = 1;
    v172 = 4;
    goto LABEL_363;
  }

  v171 = 0;
  v172 = 2;
LABEL_363:
  v331 = v125;
  if (malloc_internal_security_policy != 1)
  {
    goto LABEL_368;
  }

  v173 = _simple_getenv();
  if (!v173)
  {
    goto LABEL_368;
  }

  v174 = strtol(v173, 0, 10);
  if (v174 > 1)
  {
    malloc_report(3, "MallocXzonePerClusterSegmentGroups must be 0 or 1.\n");
LABEL_368:
    v175 = 0;
    goto LABEL_369;
  }

  v175 = v174;
LABEL_369:
  v307 = v111;
  if (malloc_internal_security_policy != 1)
  {
    goto LABEL_373;
  }

  v176 = _simple_getenv();
  if (!v176)
  {
    goto LABEL_373;
  }

  v177 = strtol(v176, 0, 10);
  if (v177 - 1 >= 2)
  {
    malloc_report(3, "Unsupported MallocXzoneAllocationFronts\n");
LABEL_373:
    v177 = 2;
  }

  if (malloc_internal_security_policy == 1 && (v178 = _simple_getenv()) != 0)
  {
    v179 = strtol(v178, 0, 10);
    if (v179 >= 3)
    {
      v180 = 0;
    }

    else
    {
      v180 = v179;
    }
  }

  else
  {
    v180 = 0;
  }

  v277[0] = v180;
  if (malloc_internal_security_policy == 1 && (v181 = _simple_getenv()) != 0)
  {
    v182 = strtol(v181, 0, 10);
    if (v182 >= v317 || v182 >= 3)
    {
      v184 = 0;
    }

    else
    {
      v184 = v182;
    }

    v303 = v184;
  }

  else
  {
    v303 = 0;
  }

  v185 = 40 * v137 + 81;
  v309 = v106;
  v285 = v152;
  v187 = malloc_internal_security_policy != 1 || (v186 = _simple_getenv()) == 0 || strtol(v186, 0, 10) != 0;
  v304 = v187;
  v280 = v172;
  v188 = (v319 == 34) & v175;
  if (v333 >= 0x22)
  {
    v188 = v175;
  }

  if (v188)
  {
    v189 = ncpuclusters;
  }

  else
  {
    v189 = 1;
  }

  v190 = v177 - 1;
  if ((v171 & (v177 > 1)) == 0)
  {
    v190 = 0;
  }

  v191 = v190 + v172;
  v278 = v189;
  v319 = v297;
  v192 = v185 * v297;
  v297 = 96 * v185 + 576;
  v193 = v297 + 32 * v192;
  v194 = v193 + 16 * v192;
  v195 = v194 + 400 + 16 * v185;
  v283 = v185;
  v196 = v195 + 80 * (v177 + 2);
  v333 = v189 * v191;
  v197 = v196 + 496 * v189 * v191;
  v281 = v177 + 2;
  v282 = v197 + 65856;
  plat = mvm_allocate_plat(0, v197 + 65856, 0, 1, 0x2000, 1);
  if (!plat)
  {
    xzm_main_malloc_zone_create_cold_6();
  }

  v199 = plat;
  numer = v325 * denom / numer;
  v200 = v321 * v290 / v291;
  v291 = plat + v193;
  denom = v200;
  v342 = v341;
  if (v298)
  {
    v201 = 2;
  }

  else
  {
    v201 = 0;
  }

  if (v334)
  {
    v202 = 4;
  }

  else
  {
    v202 = 0;
  }

  v203 = v202 | v201;
  if (v332)
  {
    v204 = 8;
  }

  else
  {
    v204 = 0;
  }

  if (v331)
  {
    v205 = 16;
  }

  else
  {
    v205 = 0;
  }

  v206 = v203 | v204 | v205;
  if (v304)
  {
    v207 = 32;
  }

  else
  {
    v207 = 0;
  }

  v208 = v206 | v207;
  v298 = v307 * v288 / v289;
  v209 = mfm_zone_address();
  v210 = v194 + v199;
  *v199 = 0u;
  *(v199 + 16) = 0u;
  v211 = v194 + v199 + 320;
  v212 = v194 + v199 + 360;
  v213 = v194 + 400 + v199;
  *(v199 + 32) = 0u;
  *(v199 + 48) = 0u;
  *(v199 + 64) = 0u;
  *(v199 + 80) = 0u;
  *(v199 + 96) = 0u;
  *(v199 + 112) = 0u;
  *(v199 + 128) = 0u;
  *(v199 + 144) = 0u;
  *(v199 + 160) = 0u;
  *(v199 + 176) = 0u;
  *(v199 + 192) = 0u;
  *(v199 + 208) = 0u;
  *(v199 + 224) = 0u;
  *(v199 + 240) = 0u;
  *(v199 + 256) = 0u;
  *(v199 + 272) = 0u;
  *(v199 + 288) = 0u;
  *(v199 + 304) = 0u;
  *(v199 + 320) = 0u;
  *(v199 + 336) = 0u;
  *(v199 + 352) = 0u;
  v214 = v282;
  *(v199 + 384) = v282;
  *(v199 + 392) = v342;
  *(v199 + 408) = 0;
  *(v199 + 409) = v208;
  v215 = v280;
  *(v199 + 410) = v281;
  *(v199 + 411) = v215;
  *(v199 + 412) = v191;
  *(v199 + 413) = v333;
  *(v199 + 414) = 5;
  *(v199 + 415) = v177;
  *(v199 + 416) = v209;
  *(v199 + 424) = v306;
  *(v199 + 425) = 40;
  v216 = v328;
  *(v199 + 426) = v328;
  v217 = v327;
  *(v199 + 427) = v327;
  *(v199 + 428) = 0;
  *(v199 + 432) = v210;
  *(v199 + 440) = v211;
  *(v199 + 448) = v212;
  *(v199 + 456) = v213;
  *(v199 + 464) = v195 + v199;
  *(v199 + 472) = v196 + v199;
  *(v199 + 480) = v197 + v199;
  *(v199 + 488) = v199 + 320 + v197;
  *(v199 + 496) = 0;
  *(v199 + 504) = 0;
  *(v199 + 512) = 0;
  *(v199 + 516) = 1;
  *(v199 + 524) = 0;
  *(v199 + 518) = 0;
  *(v199 + 532) = v329;
  *(v199 + 533) = v295;
  *(v199 + 534) = v286;
  *(v199 + 535) = v294;
  LOBYTE(v210) = v284;
  *(v199 + 536) = v285;
  *(v199 + 537) = v210;
  *(v199 + 568) = 0;
  v218 = v299;
  *(v199 + 538) = 0u;
  *(v199 + 554) = 0u;
  _xzm_initialize_const_zone_data(v199, v214, 1, v283, v319, v199 + 576, v199 + v297, 0, v313, v312, v317, v324, v323, v314, v322, v311, v315, numer, denom, v310, v218, v305 & 1, v303, v291);
  *(v199 + 368) = v330;
  v219 = v326;
  *(v199 + 369) = v326;
  *(v199 + 370) = v338;
  *(v199 + 374) = v339;
  *(v199 + 376) = v316;
  if (((v287 || v296) | v331) == 1)
  {
    v220 = xzm_reclaim_init(v199, v301, v300);
    v221 = v308;
    v222 = v320;
    v223 = v332;
    if (!v220)
    {
      v331 = 0;
      v334 = 0;
      v223 = 0;
      v222 = 0;
      *(v199 + 409) &= 0xE3u;
    }
  }

  else
  {
    v331 = 0;
    v221 = v308;
    v222 = v320;
    v223 = v332;
  }

  v224 = v318;
  *(v199 + 249) = v318;
  *(v199 + 252) = v309;
  *(v199 + 256) = v221;
  *(v199 + 264) = v298;
  if (v224)
  {
    inited = pthread_key_init_np();
    if (inited)
    {
      xzm_main_malloc_zone_create_cold_4(inited);
    }
  }

  v332 = v223;
  v226 = v216 + 2;
  memcpy(*(v199 + 432), &_xzm_bin_sizes, 0x140uLL);
  for (i = 0; i != 40; ++i)
  {
    *(*(v199 + 440) + i) = v226;
  }

  v228 = vdupq_n_s64(40 * v216 + 80);
  v229 = 40 * v216 + 84;
  v230 = xmmword_18E562DF0;
  v231 = xmmword_18E562E00;
  v232 = (*(v199 + 456) + 40);
  v233 = vdupq_n_s64(4uLL);
  do
  {
    v234 = vmovn_s64(vcgeq_u64(v228, v231));
    if (vuzp1_s16(v234, *v228.i8).u8[0])
    {
      *(v232 - 8) = 0;
    }

    if (vuzp1_s16(v234, *&v228).i8[2])
    {
      *(v232 - 4) = 0;
    }

    if (vuzp1_s16(*&v228, vmovn_s64(vcgeq_u64(v228, *&v230))).i32[1])
    {
      *v232 = 0;
      v232[4] = 0;
    }

    v230 = vaddq_s64(v230, v233);
    v231 = vaddq_s64(v231, v233);
    v232 += 16;
    v229 -= 4;
  }

  while (v229);
  v235 = 0;
  do
  {
    if (v229 == 2)
    {
      v236 = v177;
    }

    else
    {
      v236 = 1;
    }

    if (v236)
    {
      v237 = 0;
      v238 = *(v199 + 464) + 80 * v235;
      do
      {
        *v238 = v229;
        *(v238 + 1) = v237;
        *(v238 + 8) = v199;
        *(v238 + 16) = 0;
        ++v237;
        v238 += 80;
      }

      while (v236 != v237);
      v235 += v237;
    }

    ++v229;
  }

  while (v229 != 3);
  if (v279)
  {
    xzm_main_malloc_zone_init_range_groups(v199);
  }

  if ((*(v199 + 409) & 1) == 0)
  {
    v177 = 1;
    *(v199 + 415) = 1;
  }

  v239 = v333;
  if (v278)
  {
    v240 = 0;
    v241 = v302 >> 14;
    if (v333 <= 1)
    {
      v239 = 1;
    }

    v242 = 40;
    while (1)
    {
      v243 = *(v199 + 472);
      v244 = v243 + 496 * v240;
      v245 = v240 % v191;
      if (v240 % v191 >= 3)
      {
        LOBYTE(v246) = 3;
      }

      else
      {
        v246 = v240 % v191;
      }

      *v244 = v246;
      *(v244 + 4) = 0;
      *(v244 + 8) = 0;
      if (v245 >= 2)
      {
        break;
      }

      v247 = *(v199 + 464);
      *(v244 + 16) = v247;
      *(v244 + 1) = *(v247 + 1);
      *(v244 + 24) = v199;
      if (v240 != 1)
      {
        goto LABEL_467;
      }

      v248 = v244 + 464;
      *(v244 + 480) = v222;
      *(v244 + 482) = 0;
      *(v244 + 484) = v241;
      *(v244 + 488) = 0;
      v249 = 472;
      *(v244 + 464) = 0;
LABEL_466:
      *(v244 + v249) = v248;
LABEL_467:
      v252 = 0;
      v253 = (v243 + v242);
      do
      {
        *v253 = _xzm_span_queue_slice_counts[v252];
        v253 += 4;
        ++v252;
      }

      while (v252 != 27);
      ++v240;
      v242 += 496;
      if (v240 == v239)
      {
        goto LABEL_470;
      }
    }

    if (v245 == 2)
    {
      v251 = *(v244 + 16);
      if (v251)
      {
LABEL_465:
        *(v244 + 1) = *(v251 + 1);
        v249 = 24;
        v248 = v199;
        goto LABEL_466;
      }

      if (v177 == 1)
      {
        v250 = 2;
      }

      else
      {
        if (v177 != 2)
        {
          xzm_main_malloc_zone_create_cold_5();
        }

        v250 = v345[0] & 1 | 2;
      }

      v251 = *(v199 + 464) + 80 * v250;
    }

    else
    {
      v251 = *(v199 + 464) + 80 * v245 - 80;
    }

    *(v244 + 16) = v251;
    goto LABEL_465;
  }

LABEL_470:
  v327 = v217;
  v254 = v222;
  v255 = *(v199 + 480);
  xzm_metapool_init(v255 + 256, 4, 1, 0x4000u, 16, 0x10u, 0);
  xzm_metapool_init(*(v199 + 480), 0, 1, 0x80000u, 0x4000, 0x4000u, v255 + 256);
  xzm_metapool_init(*(v199 + 480) + 64, 1, 1, 0x40000u, 0x10000, 0x10000u, v255 + 256);
  xzm_metapool_init(*(v199 + 480) + 128, 2, 1, 0x4000u, 16, 0x10u, 0);
  v256 = *(v199 + 480);
  v257 = (12 * v226) | 1;
  *(v199 + 212) = v257;
  xzm_metapool_init(v256 + 192, 3, 11, 0x8000u, 0, 24 * v257 + 40, v255 + 256);
  v258 = *(v199 + 411);
  _xzm_initialize_xzone_data(v199, (v199 + 532), v345, v258 == 2);
  if (_simple_getenv())
  {
    v259 = v258 == 2;
    v337 = 0;
    v336 = 4;
    v260 = sysctlbyname("vm.reclaim.enabled", &v337, &v336, 0, 0);
    if (v337)
    {
      v261 = v260 == 0;
    }

    else
    {
      v261 = 0;
    }

    v262 = "ENABLED";
    if (!v261)
    {
      v262 = "DISABLED";
    }

    v263 = *(v199 + 464);
    if (malloc_internal_security_policy == 1)
    {
      v264 = v263[3];
      v265 = v263[4];
      v266 = v263[23];
      v267 = v263[24];
      if (*(v199 + 415) < 2u)
      {
        v268 = 0;
        v269 = 0;
LABEL_483:
        v271 = "enabled";
        if (*(v199 + 416))
        {
          v272 = "enabled";
        }

        else
        {
          v272 = "disabled";
        }

        if (LOBYTE(v277[0]) > 2u)
        {
          v273 = "UNKNOWN";
        }

        else
        {
          v273 = off_1E7260FC8[LOBYTE(v277[0])];
        }

        v274 = (v218 >> 5) & 1;
        if (v303 > 2u)
        {
          v275 = "UNKNOWN";
        }

        else
        {
          v275 = off_1E7260FC8[v303];
        }

        if (!v318)
        {
          v271 = "disabled";
        }

        malloc_report(6, "XZM Config:\n\tData Only: %d\n\tAllocation Fronts: %d\n\tGuards Enabled: %d\n\tScribble: %d\n\tTiny/Small Batch Max: %d\n\tDefer Tiny: %d\n\tDefer Small: %d\n\tDefer Large: %d\n\tHuge Cache Size: %d\n\tHuge Cache Max Entry Bytes: %u\n\tReclaim Buffer Count: %u/%u (%s)\n\tSmall Freelist: %u\n\tData Range: 0x%llx/%lu\n\tPointer Range 1: 0x%llx/%lu\n\tPointer Range 2: 0x%llx/%lu\n\tEarly Allocator: %s\n\tSegment Deallocate: %u\n\tMTE (enabled/data/max size): %d/%d/%llu\n\tInitial Slot Config: %s/%s (Chunk, Size Thresholds: %u, %u)\n\tInitial List Config: %s/%s\n\tList Upgrade Thresholds: %d/%d, %d/%d\n\tSlot Upgrade Thresholds: %d/%d, %d/%d\n\tTiny Thrash Threshold: %llu ms\n\tSmall Thrash Threshold: %llu ms, %llu bytes\n\tThread Caching: %s (%u allocs, %u contentions, %llu ms)\n\tPointer Bucket Count: %lu\n", v259, v177, v329, v274, v306, v332, v334, v331, v254, v302, v301, v300, v262, v305 & 1, v264, v265, v266, v267, v268, v269, v272, v304, v330 & 1, v219 & 1, v316, off_1E7260FC8[v313], off_1E7260FC8[v317], v327, v312, v273, v275, v324, v314, v323, v314, v322, v315, v311, v315, v325 / 0xF4240, v321 / 0xF4240, v310, v271, v309, v308, v307 / 0xF4240, v328);
        return v199;
      }

      v270 = v263[33];
    }

    else
    {
      v270 = 0;
      v264 = 0;
      v266 = 0;
      v268 = 0;
      v269 = 0;
      v265 = v263[4];
      v267 = v263[24];
      if (*(v199 + 415) < 2u)
      {
        goto LABEL_483;
      }
    }

    v269 = v263[34];
    v268 = v270;
    goto LABEL_483;
  }

  return v199;
}

uint64_t default_zone_batch_malloc()
{
  v0 = lite_zone;
  if (!lite_zone)
  {
    v0 = *malloc_zones;
  }

  return (*(v0 + 80))();
}

void pgm_free_definite_size(void *a1, unint64_t a2)
{
  if (a1[31] <= a2 && a1[32] > a2)
  {
    pgm_free_cold_1(a1, a2);
  }

  else
  {
    v3 = *(a1[25] + 120);

    v3();
  }
}

uint64_t mfm_initialize()
{
  v0 = malloc_has_sec_transition & malloc_sec_transition_early_malloc_support;
  mfm_memtag_enabled = malloc_has_sec_transition & malloc_sec_transition_early_malloc_support;
  pages_plat = mvm_allocate_pages_plat(0x400000uLL, 0, 1073741827, 1);
  if (!pages_plat)
  {
    mfm_initialize_cold_2();
  }

  v2 = pages_plat;
  if (v0)
  {
    v3 = 117465088;
  }

  else
  {
    v3 = 117456896;
  }

  address = pages_plat;
  result = mach_vm_map(*MEMORY[0x1E69E9A60], &address, 0x400000uLL, 0, v3, 0, 0, 0, 3, 7, 1u);
  if (result)
  {
    mfm_initialize_cold_1(result);
  }

  *v2 = 0;
  *(v2 + 216) = 0x8000000000000000;
  v5 = (v2 + 40);
  v6 = v2 + 32;
  v7 = -176;
  do
  {
    v8 = (v7 + 208) >> 4;
    *(v5 - 1) = v8;
    *v5 = v8;
    v5 += 2;
    v6 += 16;
    v7 += 16;
  }

  while (v7);
  *(v2 + 224) |= 1uLL;
  atomic_store(v2, &mfm_arena);
  return result;
}

unsigned int malloc_zone_batch_malloc(malloc_zone_t *zone, size_t size, void **results, unsigned int num_requested)
{
  batch_malloc = zone->batch_malloc;
  if (!batch_malloc)
  {
    return 0;
  }

  v5 = *&num_requested;
  v6 = results;
  if (malloc_check_start)
  {
    internal_check();
    result = (zone->batch_malloc)(zone, size, v6, v5);
  }

  else
  {
    result = (batch_malloc)(zone, size, results, *&num_requested);
  }

  if (malloc_logger && result)
  {
    v12 = result;
    v10 = result;
    do
    {
      v11 = *v6++;
      malloc_logger(10, zone, size, 0, v11, 0);
      --v10;
    }

    while (v10);
    return v12;
  }

  return result;
}

void *pgm_malloc_type_realloc(uint64_t a1, const void *a2, unint64_t a3)
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
        v11 = *(*(a1 + 200) + 176);

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

    return pgm_malloc_type_malloc(a1, a3);
  }
}

mach_vm_address_t mvm_allocate_pages_plat(mach_vm_size_t a1, int a2, uint64_t a3, int a4)
{
  v4 = a3;
  v5 = *MEMORY[0x1E69E9AC8];
  if (((a1 + *MEMORY[0x1E69E9AC8] - 1) & -*MEMORY[0x1E69E9AC8]) != 0)
  {
    v6 = (a1 + *MEMORY[0x1E69E9AC8] - 1) & -*MEMORY[0x1E69E9AC8];
  }

  else
  {
    v6 = *MEMORY[0x1E69E9AC8];
  }

  if ((a3 & 3) != 0)
  {
    if ((a3 & 1) != 0 && *MEMORY[0x1E69E9AC0] < a2)
    {
      if (*MEMORY[0x1E69E9AB0] > v5)
      {
        v5 = *MEMORY[0x1E69E9AB0];
      }

      v6 += (1 << a2) + v5;
    }

    else
    {
      if (*MEMORY[0x1E69E9AB0] > v5)
      {
        v5 = *MEMORY[0x1E69E9AB0];
      }

      v6 += v5 << ((a3 & 3) == 3);
    }
  }

  if ((a3 & 0x80) != 0)
  {
    v7 = 3;
  }

  else
  {
    v7 = 1;
  }

  if (v6 < a1)
  {
    return 0;
  }

  v27 = a3 & 3;
  v8 = -1 << a2;
  v9 = v7 | (a4 << 24);
  v10 = (4 * a3) & 0x2000;
  v11 = MEMORY[0x1E69E9A60];
  if ((a3 & 0x40000000) != 0)
  {
    goto LABEL_19;
  }

LABEL_18:
  for (i = entropic_address; ; i = *MEMORY[0x1E69E9AC8])
  {
    address = i;
    v13 = mach_vm_map(*v11, &address, v6, ~v8, v9 | v10, 0, 0, 0, 3, 7, 1u);
    if ((v4 & 0x40000000) == 0 && v13 == 3)
    {
      address = *MEMORY[0x1E69E9AC8];
      v13 = mach_vm_map(*v11, &address, v6, ~v8, v9 | v10, 0, 0, 0, 3, 7, 1u);
    }

    if (v13)
    {
      if (v13 != 3)
      {
        malloc_zone_error(v4, 0, "can't allocate region\n:*** mach_vm_map(size=%lu, flags: %x) failed (error code=%d)\n");
      }

      return 0;
    }

    v14 = address;
    if ((v4 & 0x40000000) != 0)
    {
      break;
    }

    if (address + v6 <= entropic_limit || (v15 = entropic_address, !(entropic_address >> 28)) || entropic_address - 0x10000000 < entropic_base)
    {
      if (address < entropic_address)
      {
        v17 = entropic_address;
        if (entropic_address >> 28)
        {
          if (entropic_address - 0x10000000 >= entropic_base)
          {
            atomic_compare_exchange_strong_explicit(&entropic_address, &v18, v17 - 0x10000000, memory_order_relaxed, memory_order_relaxed);
          }
        }
      }

      break;
    }

    mach_vm_deallocate(*v11, address, v6);
    atomic_compare_exchange_strong_explicit(&entropic_address, &v16, v15 - 0x10000000, memory_order_relaxed, memory_order_relaxed);
    if ((v4 & 0x40000000) == 0)
    {
      goto LABEL_18;
    }

LABEL_19:
    ;
  }

  if (!v27)
  {
    return v14;
  }

  if ((v4 & 1) != 0 && *MEMORY[0x1E69E9AC0] < a2)
  {
    if (*MEMORY[0x1E69E9AB0] <= *MEMORY[0x1E69E9AC8])
    {
      v19 = *MEMORY[0x1E69E9AC8];
    }

    else
    {
      v19 = *MEMORY[0x1E69E9AB0];
    }

    v20 = 1 << a2;
    v21 = (v19 + v14 + v20 - 1) & -v20;
    if (mach_vm_deallocate(*v11, v14, v21 - (v19 + v14)))
    {
      malloc_zone_error(v4, 0, "can't unmap excess guard region\n*** mach_vm_deallocate(addr=%p, size=%lu) failed (code=%d)\n");
      return 0;
    }

    if (v20 == v21 - v14)
    {
      v14 = (v19 + v14 + v20 - 1) & -v20;
    }

    else
    {
      v24 = mach_vm_deallocate(*v11, v6 - (v20 - v21), v20 - (v21 - v14));
      v14 = (v19 + v14 + v20 - 1) & -v20;
      if (v24)
      {
        malloc_zone_error(v4, 0, "can't unmap excess trailing guard region\n*** mach_vm_deallocate(addr=%p, size=%lu) failed (code=%d)\n");
        return 0;
      }
    }
  }

  else if (v4)
  {
    v23 = *MEMORY[0x1E69E9AB0];
    if (*MEMORY[0x1E69E9AB0] <= *MEMORY[0x1E69E9AC8])
    {
      v23 = *MEMORY[0x1E69E9AC8];
    }

    v14 += v23;
  }

  mvm_protect_plat(v14, a1, 0, v4);
  return v14;
}

void mvm_protect_plat(uint64_t result, uint64_t a2, int a3, char a4)
{
  v8 = MEMORY[0x1E69E9AB0];
  v9 = MEMORY[0x1E69E9AC8];
  if ((a4 & 9) == 1)
  {
    v10 = *MEMORY[0x1E69E9AB0] <= *MEMORY[0x1E69E9AC8] ? *MEMORY[0x1E69E9AC8] : *MEMORY[0x1E69E9AB0];
    if (mprotect((result - v10), v10, a3))
    {
      v11 = *v8;
      if (*v8 <= *v9)
      {
        v11 = *v9;
      }

      malloc_report(3, "*** can't mvm_protect(%u) region for prelude guard page at %p\n", a3, (result - v11));
    }
  }

  if ((a4 & 0x12) == 2)
  {
    v12 = (result + a2);
    if (*v8 <= *v9)
    {
      v13 = *v9;
    }

    else
    {
      v13 = *v8;
    }

    if (mprotect(((v12 + *v9 - 1) & -*v9), v13, a3))
    {
      malloc_report(3, "*** can't mvm_protect(%u) region for postlude guard page at %p\n", a3, v12);
    }
  }
}

void _xzm_xzone_free_freelist(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = *(a2 + 48);
  if (v8 <= 0x400)
  {
    bzero(a4, *(a2 + 48));
  }

  if (v8 > 0x1000 || (*(a2 + 87) & 2) == 0)
  {
    v11 = *(a1 + 320) ^ a4;
    if (v8 > 0x1000)
    {
      v11 &= 0xF0FFFFFFFFFFFFFFLL;
    }

    v10 = a4;
  }

  else
  {
    v10 = _xzm_xzone_block_memtag_retag(a4, v8, a3);
    v11 = *(a1 + 320) ^ v10;
  }

  *v10 = v11;
  if (*(a2 + 48) <= 0x1000uLL)
  {
    v12 = (a4 >> 4) & 0x3FF;
  }

  else
  {
    v12 = ((v10 + 1431650304 * ((a3 - (a3 & 0xFFFFC000 | 0x838)) >> 4) - *((a3 & 0xFFFFFFFFFFFFC000) + 0x28)) >> 10) & 0x7FF;
  }

  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = *(a2 + 80);
  v18 = *(a2 + 68);
  v19 = 1;
  v20 = *a3;
  if ((*a3 & 0x40000000) != 0)
  {
    goto LABEL_37;
  }

  while (1)
  {
    v21 = (v20 & 0xFFFFFFFFBFFFFFFFLL) + 0x100000000000;
    v22 = (v20 >> 11) & 0x7FF;
    if (v22 + 1 == v18)
    {
      if ((v14 & 1) == 0)
      {
        v16 = *(a1 + 216) + 96 * v17;
        v23 = (v20 >> 22) & 0x3F;
        if (v23)
        {
          if (v23 != 63)
          {
            v24 = *(a1 + 232);
            v25 = *(v16 + 85);
            if (v25 == 1)
            {
              v26 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 2)) >> 12;
            }

            else
            {
              LOBYTE(v26) = v25 == 2 ? _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 2)) : 0;
            }

            if ((*(v24 + 16 * v26 * *(a1 + 210) + 16 * *(v16 + 80)) & 0x7FFFFFFFFFFFLL) == 0)
            {
              v36 = a1;
              v28 = v16;
              v29 = v17;
              v15 = mach_absolute_time();
              v17 = v29;
              v16 = v28;
              a1 = v36;
              v13 = *(v36 + 224) + 32 * *(v36 + 210) * (v23 - 1) + 32 * *(v16 + 80);
              v19 &= v15 - *(v13 + 24) >= *(v36 + 312);
            }
          }
        }
      }

      v27 = 0;
      v14 = 1;
      if (~v20 & 0xFC00000) != 0 && (v19)
      {
        v27 = 0;
        v30 = v21 & 0xFFFFFFFFB0000000 | 0x7FF;
        v14 = 1;
        v19 = 1;
        goto LABEL_35;
      }
    }

    else
    {
      if (v22)
      {
        goto LABEL_25;
      }

      if ((v20 & 0x7FF) != 0x400)
      {
        _xzm_free_abort(v10);
      }

      if ((v20 & 0xFC00000) != 0)
      {
LABEL_25:
        v27 = 0;
      }

      else
      {
        v21 |= 0x10000000uLL;
        v16 = *(a1 + 216) + 96 * v17;
        v27 = 1;
      }
    }

    *(v10 + 8) = v20 & 0x7FF | (((v20 >> 31) & 0x1FFF) << 11) & 0xFFFFFFE000FFFFFFLL | (((v20 >> 44) & 0xFFF) << 24) & 0xFFFFFFE000FFFFFFLL;
    v30 = v12 & 0xFFFFF8007FFFFFFFLL | (((v20 >> 44) & 0xFFF) << 31) | v21 & 0xFFFFF0007FC00000 | (v21 + 2048) & 0x3FF800;
LABEL_35:
    v31 = v20;
    atomic_compare_exchange_strong_explicit(a3, &v31, v30, memory_order_release, memory_order_relaxed);
    if (v31 == v20)
    {
      break;
    }

    v20 = v31;
    if ((v31 & 0x40000000) != 0)
    {
      do
      {
LABEL_37:
        _xzm_walk_lock_wait(a1);
        v17 = v32;
        v20 = *a3;
      }

      while ((*a3 & 0x40000000) != 0);
    }
  }

  if (v15)
  {
    *(v13 + 24) = v15;
  }

  if ((~v30 & 0x7FF) != 0)
  {
    if (v27)
    {
      v35 = *(a1 + 232);

      _xzm_chunk_list_slot_push(a1, v16, v35, a3);
    }
  }

  else
  {
    v33 = *(a1 + 240);
    if (!v33)
    {
      v33 = a1;
    }

    v34 = *(v33 + 424);
    if (*(v33 + 424))
    {

      _xzm_chunk_batch_list_push(a1, v16, a3, v34);
    }

    else
    {

      _xzm_xzone_madvise_freelist_chunk(a1, v16, a3);
    }
  }
}

const void *_malloc_zone_valloc(uint64_t a1, unint64_t a2, char a3)
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
    v10 = (*(a1 + 40))(a1, a2);
    if (malloc_logger)
    {
      malloc_logger(10, a1, a2, 0, v10, 0);
    }

    if (malloc_simple_stack_logging == 1)
    {
      malloc_report(805, "valloc (%p/%llu): ", v10, a2);
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

uint64_t _xzm_initialize_const_zone_data(uint64_t result, uint64_t a2, __int16 a3, char a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, int a10, char a11, int a12, unsigned int a13, int a14, int a15, unsigned int a16, int a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, char a23, uint64_t a24)
{
  *result = 0;
  *(result + 8) = 0;
  *(result + 16) = xzm_malloc_zone_size;
  *(result + 24) = xzm_malloc_zone_malloc;
  *(result + 32) = xzm_malloc_zone_calloc;
  *(result + 40) = xzm_malloc_zone_valloc;
  *(result + 48) = xzm_malloc_zone_free;
  *(result + 56) = xzm_malloc_zone_realloc;
  *(result + 64) = xzm_malloc_zone_destroy;
  *(result + 72) = 0;
  *(result + 80) = malloc_zone_batch_malloc_fallback;
  *(result + 88) = malloc_zone_batch_free_fallback;
  *(result + 96) = &xzm_malloc_zone_introspect;
  *(result + 104) = 16;
  *(result + 112) = xzm_malloc_zone_memalign;
  *(result + 120) = xzm_malloc_zone_free_definite_size;
  *(result + 128) = malloc_zone_pressure_relief_fallback;
  *(result + 136) = xzm_malloc_zone_claimed_address;
  *(result + 144) = xzm_malloc_zone_try_free_default;
  *(result + 152) = xzm_malloc_zone_malloc_with_options;
  *(result + 160) = xzm_malloc_zone_malloc_type_malloc;
  *(result + 168) = xzm_malloc_zone_malloc_type_calloc;
  *(result + 176) = xzm_malloc_zone_malloc_type_realloc;
  *(result + 184) = xzm_malloc_zone_malloc_type_memalign;
  *(result + 192) = xzm_malloc_zone_malloc_type_malloc_with_options;
  *(result + 200) = a2;
  *(result + 208) = a3;
  *(result + 210) = a4;
  *(result + 211) = a5;
  *(result + 212) = 0;
  *(result + 216) = a6;
  *(result + 224) = a7;
  *(result + 232) = a24;
  *(result + 240) = a8;
  *(result + 248) = (4 * (a9 & 3)) & 0xCC | (16 * (a11 & 3)) | a23 & 3;
  *(result + 250) = a22;
  *(result + 252) = 0;
  *(result + 256) = 0;
  *(result + 264) = 0;
  *(result + 272) = a12;
  *(result + 276) = a13;
  *(result + 284) = a14;
  *(result + 288) = a10;
  *(result + 292) = a15;
  *(result + 296) = a16;
  *(result + 304) = a17;
  *(result + 312) = a18;
  *(result + 320) = 0;
  *(result + 328) = a19;
  *(result + 336) = a20;
  *(result + 344) = 0;
  *(result + 352) = 0;
  *(result + 368) = 0;
  *(result + 376) = 0;
  *(result + 360) = a21;
  if ((a21 & 0xA0) != 0)
  {
    *(result + 24) = xzm_malloc_zone_malloc_slow;
    *(result + 32) = xzm_malloc_zone_calloc_slow;
    *(result + 40) = xzm_malloc_zone_valloc_slow;
    *(result + 48) = xzm_malloc_zone_free_slow;
    *(result + 56) = xzm_malloc_zone_realloc_slow;
    *(result + 112) = xzm_malloc_zone_memalign_slow;
    *(result + 120) = xzm_malloc_zone_free_definite_size_slow;
    *(result + 144) = xzm_malloc_zone_try_free_default_slow;
    *(result + 152) = xzm_malloc_zone_malloc_with_options_slow;
    *(result + 160) = xzm_malloc_zone_malloc_type_malloc_slow;
    *(result + 168) = xzm_malloc_zone_malloc_type_calloc_slow;
    *(result + 176) = xzm_malloc_zone_malloc_type_realloc_slow;
    *(result + 184) = xzm_malloc_zone_malloc_type_memalign_slow;
    *(result + 192) = xzm_malloc_zone_malloc_type_malloc_with_options_slow;
  }

  return result;
}

void *__cdecl malloc_type_valloc(size_t size, malloc_type_id_t type_id)
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v3 = *(StatusReg + 904);
  if (type_id <= 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = type_id;
  }

  *(StatusReg + 904) = v4;
  if (malloc_interposition_compat == 1 && v3 == 0)
  {
    result = j__valloc(size);
  }

  else
  {
    result = _malloc_zone_valloc(default_zone, size, 1);
  }

  *(StatusReg + 904) = v3;
  return result;
}

uint64_t default_zone_valloc()
{
  v0 = lite_zone;
  if (!lite_zone)
  {
    v0 = *malloc_zones;
  }

  return (*(v0 + 40))();
}

uint64_t _xzm_reclaim_id_cache_init(void *a1)
{
  result = mach_vm_reclaim_ring_capacity();
  if (result)
  {
    _xzm_reclaim_id_cache_init_cold_1();
  }

  if (!a1[4])
  {
    v3 = (*MEMORY[0x1E69E9AC8] - 1) & -*MEMORY[0x1E69E9AC8];
    pages = mvm_allocate_pages(v3, 0, 64, 1);
    result = a1[4];
    if (result)
    {
      result = mvm_deallocate_pages(result, 8 * a1[3], 64);
    }

    a1[3] = v3 >> 3;
    a1[4] = pages;
  }

  a1[2] = 0;
  return result;
}

void xzm_main_malloc_zone_init_range_groups(uint64_t a1)
{
  v55 = *MEMORY[0x1E69E9840];
  v50 = 255;
  if (sysctlbyname("vm.malloc_ranges", __str, &v50, 0, 0) == -1)
  {
    v25 = *__error();
    if (v25 != 2)
    {
      if (v25 != 1)
      {
        xzm_main_malloc_zone_init_range_groups_cold_24();
      }

      malloc_report(3, "sysctlbyname(vm.malloc_ranges) denied\n");
    }

    return;
  }

  __str[v50] = 0;
  __endptr = __str;
  v2 = strtoull(__str, &__endptr, 16);
  ++__endptr;
  v3 = strtoull(__endptr, &__endptr, 16);
  ++__endptr;
  v4 = strtoull(__endptr, &__endptr, 16);
  ++__endptr;
  v5 = strtoull(__endptr, &__endptr, 16);
  if (*(a1 + 415) != 2)
  {
    xzm_main_malloc_zone_init_range_groups_cold_1(*(a1 + 415));
  }

  if (!v2)
  {
    xzm_main_malloc_zone_init_range_groups_cold_23();
  }

  if (v3 < v2)
  {
    xzm_main_malloc_zone_init_range_groups_cold_22();
  }

  if (v4 < v3)
  {
    xzm_main_malloc_zone_init_range_groups_cold_21();
  }

  if (v5 < v4)
  {
    xzm_main_malloc_zone_init_range_groups_cold_20();
  }

  v6 = (v2 + 0x1FFFFFF) & 0xFFFFFFFFFE000000;
  v7 = v3 & 0xFFFFFFFFFE000000;
  if ((v3 & 0xFFFFFFFFFE000000) < v6)
  {
    v6 = v3 & 0xFFFFFFFFFE000000;
  }

  v8 = (v4 + 0x1FFFFFF) & 0xFFFFFFFFFE000000;
  if (v7 > v8)
  {
    xzm_main_malloc_zone_init_range_groups_cold_19();
  }

  v9 = v5 & 0xFFFFFFFFFE000000;
  if ((v5 & 0xFFFFFFFFFE000000) <= v8)
  {
    v9 = (v4 + 0x1FFFFFF) & 0xFFFFFFFFFE000000;
  }

  v10 = v9 - v6;
  v11 = v7 - v6;
  v12 = 0x100000000;
  if (v7 - v6 >= 0x100000000)
  {
    v11 = 0x100000000;
  }

  v13 = v9 - v8;
  if (v13 < 0x100000000)
  {
    v12 = v13;
  }

  v14 = v11 - v7 + v8 + v12;
  v22 = v10 > v14;
  v15 = v10 - v14;
  if (!v22)
  {
    xzm_main_malloc_zone_init_range_groups_cold_2();
  }

  if (!(v15 >> 34))
  {
    xzm_main_malloc_zone_init_range_groups_cold_18();
  }

  if ((v15 & 0x1FFFFFF) != 0)
  {
    xzm_main_malloc_zone_init_range_groups_cold_3();
  }

  v45 = v4 - v3;
  v16 = v7 - v11;
  v17 = v12 + v8;
  v18 = v6 + ((qword_1ED404330 % (((v15 - 0x400000000) >> 25) + 1)) << 25);
  if (v18 >= v16)
  {
    v19 = v14;
  }

  else
  {
    v19 = 0;
  }

  v20 = v19 + v18;
  v21 = v19 + v18 + 0x400000000;
  v22 = v19 + v18 < v16 && v21 > v16;
  v23 = !v22;
  v46 = v23;
  v47 = v17;
  if (v22)
  {
    v53[1] = v17;
    v54 = v17 - v16 + 0x400000000 + v20;
    v44 = v54;
    v24 = 2;
    v21 = v16;
  }

  else
  {
    v24 = 1;
  }

  v26 = 0;
  *__str = v20;
  v53[0] = v21;
  v27 = MEMORY[0x1E69E9A60];
  do
  {
    v50 = 0x202000000000000;
    v48 = *&__str[v26];
    v51 = v48;
    v28 = mach_vm_range_create(*v27, MACH_VM_RANGE_FLAVOR_V1, &v50, 0x18u);
    if (v28)
    {
      if (v28 != 46)
      {
        if (v28 != 53)
        {
          xzm_main_malloc_zone_init_range_groups_cold_17(v28);
        }

        malloc_report(3, "mach_vm_range_create() denied\n");
      }

      return;
    }

    __endptr = v48;
    v29 = mach_vm_map(*v27, &__endptr, *(&v48 + 1) - v48, 0, 0x4000, 0, 0, 0, 0, 0, 1u);
    if (v29)
    {
      xzm_main_malloc_zone_init_range_groups_cold_4(v29);
    }

    v26 += 16;
  }

  while (16 * v24 != v26);
  *(a1 + 409) |= 1u;
  if (*(a1 + 415) != 2)
  {
    xzm_main_malloc_zone_init_range_groups_cold_5();
  }

  v30 = v47;
  if (v20 >= v21)
  {
    xzm_main_malloc_zone_init_range_groups_cold_6();
  }

  v31 = *(a1 + 464);
  if ((v46 & 1) == 0)
  {
    if (v47 <= v21)
    {
      xzm_main_malloc_zone_init_range_groups_cold_7();
    }

    if (v47 >= v44)
    {
      xzm_main_malloc_zone_init_range_groups_cold_8();
    }
  }

  v32 = 0;
  v33 = v53;
  do
  {
    v32 = *v33 + v32 - *(v33 - 1);
    v33 += 2;
    --v24;
  }

  while (v24);
  if ((v32 & 0x3FFFFFE) != 0)
  {
    v34 = ((v32 >> 1) & 0x7FFFFFFFFE000000) + 0x2000000;
  }

  else
  {
    v34 = v32 >> 1;
  }

  v35 = v34 + v20;
  if (v34 + v20 >= v21)
  {
    if (v46)
    {
      xzm_main_malloc_zone_init_range_groups_cold_9();
    }

    v43 = v20 - v21 + v34 + v47;
    if ((v43 & 0x1FFFFFF) == 0)
    {
      v36 = v43 | 0x1000000;
      goto LABEL_62;
    }

LABEL_81:
    xzm_main_malloc_zone_init_range_groups_cold_10();
  }

  if ((v35 & 0x1FFFFFF) != 0)
  {
    goto LABEL_81;
  }

  v36 = v35 | 0x1000000;
  if (v46)
  {
    v37 = v36 - v20;
    if (v36 <= v20)
    {
      xzm_main_malloc_zone_init_range_groups_cold_15();
    }

    v38 = v21 - v36;
    v40 = v45;
    v39 = v3;
    if (v21 <= v36)
    {
      xzm_main_malloc_zone_init_range_groups_cold_16();
    }

    v21 = 0;
    v41 = 0;
    v30 = 0;
    v42 = 0;
    goto LABEL_70;
  }

LABEL_62:
  if (v36 <= v21)
  {
    if (v36 >= v21)
    {
      xzm_main_malloc_zone_init_range_groups_cold_11();
    }

    v37 = v36 - v20;
    if (v36 <= v20)
    {
      xzm_main_malloc_zone_init_range_groups_cold_12();
    }

    v42 = 0;
    v38 = v21 + v44 - (v36 + v47);
    v41 = v47 - v21;
    v30 = 0;
  }

  else
  {
    if (v36 <= v47)
    {
      xzm_main_malloc_zone_init_range_groups_cold_13();
    }

    v38 = v44 - v36;
    if (v44 <= v36)
    {
      xzm_main_malloc_zone_init_range_groups_cold_14();
    }

    v41 = 0;
    v37 = v21 + v36 - (v20 + v47);
    v42 = v47 - v21;
    v21 = 0;
  }

  v40 = v45;
  v39 = v3;
LABEL_70:
  *(v31 + 184) = v36;
  *(v31 + 192) = v38;
  *(v31 + 216) = v36;
  *(v31 + 224) = v38;
  *(v31 + 200) = v21;
  *(v31 + 208) = v41;
  *(v31 + 232) = 0;
  *(v31 + 264) = v36;
  *(v31 + 272) = v37;
  *(v31 + 296) = v36;
  *(v31 + 304) = v37;
  *(v31 + 280) = v30;
  *(v31 + 288) = v42;
  *(v31 + 312) = 1;
  *(v31 + 24) = v39;
  *(v31 + 32) = v40;
}

uint64_t pgm_size(void *a1, unint64_t a2)
{
  if (a1[31] <= a2 && a1[32] > a2)
  {
    v6[1] = v2;
    v6[2] = v3;
    pgm_size_cold_1(a1, a2, v6);
    return v6[0];
  }

  else
  {
    v4 = *(a1[25] + 16);

    return v4();
  }
}

uint64_t xzm_metapool_init(uint64_t result, char a2, char a3, unsigned int a4, int a5, unsigned int a6, uint64_t a7)
{
  *result = 0;
  *(result + 4) = a2;
  *(result + 5) = a3;
  *(result + 8) = a4;
  *(result + 12) = a4 / a6 * a6;
  *(result + 16) = a5;
  *(result + 20) = a6;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 24) = 0;
  *(result + 48) = 0;
  *(result + 56) = a7;
  return result;
}

BOOL xzm_reclaim_init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = mach_vm_reclaim_round_capacity();
  mach_vm_reclaim_round_capacity();
  dword_1EAC7F81C = 0;
  qword_1EAC7F828 = 0;
  unk_1EAC7F830 = 0;
  v5 = mach_vm_reclaim_ring_allocate();
  v6 = v5;
  if (v5)
  {
    v7 = mach_error_string(v5);
    malloc_report(3, "xzm: failed to initialize deferred reclamation buffer [%d] %s\n", v6 & 0x3FFF, v7);
  }

  else
  {
    dword_1EAC7F818 = v4;
    *(a1 + 568) = &xzm_reclaim_buffer;
    _xzm_reclaim_id_cache_init(&xzm_reclaim_buffer);
  }

  return v6 == 0;
}

uint64_t _xzm_initialize_xzone_data(uint64_t a1, _BYTE *a2, uint64_t a3, int a4)
{
  __buf = 0;
  v7 = *(a1 + 240);
  if (v7)
  {
    v8 = *(a1 + 240);
  }

  else
  {
    v8 = a1;
  }

  arc4random_buf(&__buf, 8uLL);
  v10 = __buf;
  if (!__buf)
  {
    v10 = 0xDEADDEADDEADDEADLL;
    __buf = 0xDEADDEADDEADDEADLL;
  }

  if (*(a1 + 368) == 1)
  {
    v10 &= 0xF0FFFFFFFFFFFFFFLL;
    __buf = v10;
  }

  v11 = 0;
  *(a1 + 320) = v10;
  v12 = 1;
  result = 0x10000;
  do
  {
    if (!v7)
    {
      *(*(a1 + 448) + v11) = v12;
    }

    v14 = *(v8 + 440);
    v15 = *(v14 + v11);
    if (*(v14 + v11))
    {
      v16 = 0;
      while (1)
      {
        v17 = *(*(v8 + 432) + 8 * v11);
        if (v17 > 0x1000)
        {
          v18 = *(a1 + 250) ? 0x20000 : 0x10000;
        }

        else
        {
          v18 = 0x4000;
        }

        if (v7 || !*(a1 + 416))
        {
          break;
        }

        if (v17 >= 0x101)
        {
          if (v17 >= 0x201)
          {
            if (v17 >= 0x801)
            {
              LOWORD(v19) = v17 <= 0x2000;
LABEL_20:
              v20 = v16 == 0;
              if (v16)
              {
                v21 = a4;
              }

              else
              {
                v21 = 1;
              }

              v22 = v21 ^ 1;
              if (v21)
              {
                v23 = 0;
              }

              else
              {
                v23 = 3;
              }

              if (v17 > 0x1000)
              {
                v22 |= (*(v8 + 409) & 4) >> 2;
              }

              if (v7)
              {
                LOBYTE(v24) = *(*(v7 + 216) + 96 * v12 + 43);
                goto LABEL_48;
              }

              if (v21)
              {
                v23 = 0;
                LOBYTE(v24) = 0;
                goto LABEL_48;
              }

              goto LABEL_42;
            }

            v25 = 0x2000;
          }

          else
          {
            v25 = 4096;
          }
        }

        else
        {
          v25 = 2048;
        }

        v22 = 0;
        v20 = v16 == 0;
        v19 = v25 / *(*(v8 + 432) + 8 * v11);
        if (!v16 || (a4 & 1) != 0)
        {
          v23 = 0;
          LOBYTE(v24) = 0;
          goto LABEL_48;
        }

        v22 = 1;
LABEL_42:
        v26 = *(a1 + 415);
        if (v26 == 1)
        {
          v20 = 0;
          LOBYTE(v24) = 0;
        }

        else
        {
          if (v26 != 2)
          {
            xzm_main_malloc_zone_create_cold_5();
          }

          v20 = 0;
          v24 = (*(a3 + (v12 >> 3)) >> (v12 & 7)) & 1;
        }

        v23 = 3;
LABEL_48:
        if (*a2 == 1)
        {
          if ((a2[1] | v22))
          {
            v27 = 4;
            if (v17 > 0x1000)
            {
              v28 = 5;
            }

            else
            {
              v27 = 2;
              v28 = 3;
            }

            v29 = a2[v27];
            v30 = a2[v28];
            v22 = 1;
          }

          else
          {
            v30 = 0;
            v29 = 0;
            v22 = 0;
          }
        }

        else
        {
          v30 = 0;
          v29 = 0;
        }

        v31 = *(a1 + 216) + 96 * v12;
        v32 = *(a1 + 208);
        v9 = v9 & 0xFFFFFFFC | v22;
        *(v31 + 32) = 0;
        *v31 = 0uLL;
        *(v31 + 16) = 0uLL;
        *(v31 + 40) = v19;
        *(v31 + 42) = v23;
        *(v31 + 43) = v24;
        *(v31 + 48) = v17;
        *(v31 + 56) = 0xFFFFFFFF / v17 + 1;
        *(v31 + 64) = 0xFFFFFFFF / v17 + 1;
        *(v31 + 68) = v18 / v17;
        *(v31 + 72) = 0;
        *(v31 + 80) = v12;
        *(v31 + 82) = v32;
        *(v31 + 84) = v16;
        *(v31 + 85) = 0;
        *(v31 + 87) = v9;
        *(v31 + 88) = v29;
        *(v31 + 89) = v30;
        v33 = *(a1 + 248) & 3;
        if (v33 == 1)
        {
          v34 = ncpuclusters;
        }

        else if (v33 == 2)
        {
          v34 = logical_ncpus;
        }

        else
        {
          v34 = 1;
        }

        if (*(a1 + 211))
        {
          v35 = 0;
          do
          {
            *(*(a1 + 224) + 32 * v35 * *(a1 + 210) + 32 * *(v31 + 80) + 23) = *(v31 + 86);
            if (v35 < v34)
            {
              *(*(a1 + 232) + 16 * v35 * *(a1 + 210) + 16 * *(v31 + 80) + 15) = *(v31 + 85);
            }

            ++v35;
          }

          while (v35 < *(a1 + 211));
        }

        if ((*(a1 + 368) & 1) == 0)
        {
          v39 = *(v31 + 87);
LABEL_74:
          *(v31 + 87) = v39 & 0xFD;
          if (*(a1 + 368))
          {
            *(v31 + 40) = 0;
          }

          goto LABEL_78;
        }

        v36 = *(a1 + 376);
        v37 = v36 >= v17;
        if (v36 >= v17 && v20)
        {
          v39 = *(v31 + 87);
          if ((*(a1 + 369) & 1) == 0)
          {
            goto LABEL_74;
          }
        }

        else
        {
          v39 = *(v31 + 87);
          if (!v37)
          {
            goto LABEL_74;
          }
        }

        *(v31 + 87) = v39 | 2;
LABEL_78:
        ++v12;
        if (++v16 == v15)
        {
          goto LABEL_81;
        }
      }

      LOWORD(v19) = 0;
      goto LABEL_20;
    }

LABEL_81:
    ++v11;
  }

  while (v11 != 40);
  return result;
}

void malloc_set_zone_name(malloc_zone_t *zone, const char *name)
{
  if (zone->version >= 0xE && zone->introspect->zone_type == 1)
  {
    v4 = 0;
  }

  else
  {
    mprotect(zone, 0xC8uLL, 3);
    v4 = 1;
  }

  zone_name = zone->zone_name;
  if (zone_name)
  {
    if (!malloc_num_zones)
    {
LABEL_24:
      zone->zone_name = 0;
      goto LABEL_25;
    }

    if (lite_zone && (*(lite_zone + 16))())
    {
      goto LABEL_9;
    }

    if (initial_num_zones)
    {
      v7 = 0;
      while (1)
      {
        v6 = *(malloc_zones + v7);
        if (v6[2](v6, zone_name))
        {
          break;
        }

        if (++v7 >= initial_num_zones)
        {
          goto LABEL_15;
        }
      }

      if (!v7 && (has_injected_zone0 & 1) == 0)
      {
LABEL_9:
        v6 = default_zone;
        if (!default_zone)
        {
          goto LABEL_24;
        }
      }
    }

    else
    {
LABEL_15:
      v8 = pFRZCounterLive;
      atomic_fetch_add(pFRZCounterLive, 1u);
      v9 = malloc_num_zones;
      v10 = initial_num_zones;
      if (initial_num_zones >= malloc_num_zones)
      {
LABEL_18:
        v6 = 0;
      }

      else
      {
        while (1)
        {
          v6 = *(malloc_zones + v10);
          if (v6[2](v6, zone_name))
          {
            break;
          }

          if (v9 == ++v10)
          {
            goto LABEL_18;
          }
        }
      }

      atomic_fetch_add(v8, 0xFFFFFFFF);
      if (!v6)
      {
        goto LABEL_24;
      }
    }

    malloc_zone_free(v6, zone->zone_name);
    goto LABEL_24;
  }

LABEL_25:
  if (!name)
  {
    goto LABEL_37;
  }

  v11 = strlen(name);
  v12 = name;
  if ((_dyld_is_memory_immutable() & 1) == 0)
  {
    v13 = _malloc_zone_malloc(zone, v11 + 1, 0);
    if (!v13)
    {
      goto LABEL_30;
    }

    v12 = v13;
    _platform_strcpy();
  }

  zone->zone_name = v12;
LABEL_30:
  wrapped_zone = get_wrapped_zone(zone);
  if (wrapped_zone)
  {
    if (zone->version <= 0xD)
    {
      purgeable_ptr_in_use_enumerator_cold_1();
    }

    v15 = wrapped_zone;
    if (zone->introspect->zone_type == 2)
    {
      v16 = "PGM";
    }

    else
    {
      v16 = "Sanitizer";
    }

    v17 = strlen(name);
    v18 = strlen(v16);
    v19 = strlen("Wrapped");
    v20 = _malloc_zone_malloc(v15, v17 + v19 + v18 + 3, 0);
    if (v20)
    {
      v21 = v20;
      _platform_strcpy();
      *&v21[strlen(v21)] = 45;
      v22 = strcat(v21, v16);
      *&v21[strlen(v22)] = 45;
      *&v21[strlen(v21)] = 0x64657070617257;
      malloc_set_zone_name(v15, v21);
      malloc_zone_free(v15, v21);
    }
  }

LABEL_37:
  if (v4)
  {

    mprotect(zone, 0xC8uLL, 1);
  }
}

uint64_t get_wrapped_zone(uint64_t a1)
{
  v2 = 0;
  if (malloc_get_wrapped_zone(*MEMORY[0x1E69E9A60], 0, a1, &v2))
  {
    purgeable_ptr_in_use_enumerator_cold_1();
  }

  return v2;
}

uint64_t malloc_get_wrapped_zone(uint64_t task, uint64_t (*a2)(), uint64_t a3, void *a4)
{
  v6 = a2;
  if (!a2)
  {
    if (task && !mach_task_is_self(task))
    {
      purgeable_ptr_in_use_enumerator_cold_1();
    }

    v6 = _malloc_default_reader_5;
  }

  *a4 = 0;
  v10 = 0;
  result = get_zone_type(task, v6, a3, &v10);
  if (!result)
  {
    if ((v10 - 4) >= 0xFFFFFFFE)
    {
      v9 = 0;
      result = (v6)(task, a3 + 200, 8, &v9);
      if (!result)
      {
        *a4 = *v9;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t get_zone_type(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, _DWORD **), uint64_t a3, _DWORD *a4)
{
  if (!a2)
  {
    purgeable_ptr_in_use_enumerator_cold_1();
  }

  *a4 = 0;
  v10 = 0;
  result = a2(a1, a3, 200, &v10);
  if (!result)
  {
    if (*(v10 + 104) >= 0xEu)
    {
      v8 = *(v10 + 96);
      v9 = 0;
      result = a2(a1, v8 + 128, 4, &v9);
      if (!result)
      {
        *a4 = *v9;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t _malloc_default_reader(task_name_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a1 && !mach_task_is_self(a1))
  {
    purgeable_ptr_in_use_enumerator_cold_1();
  }

  *a4 = a2;
  return 0;
}

uint64_t _malloc_default_reader_0(task_name_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a1 && !mach_task_is_self(a1))
  {
    purgeable_ptr_in_use_enumerator_cold_1();
  }

  *a4 = a2;
  return 0;
}

uint64_t _malloc_default_reader_1(task_name_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a1 && !mach_task_is_self(a1))
  {
    purgeable_ptr_in_use_enumerator_cold_1();
  }

  *a4 = a2;
  return 0;
}

uint64_t _malloc_default_reader_2(task_name_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a1 && !mach_task_is_self(a1))
  {
    purgeable_ptr_in_use_enumerator_cold_1();
  }

  *a4 = a2;
  return 0;
}

uint64_t _malloc_default_reader_3(task_name_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a1 && !mach_task_is_self(a1))
  {
    purgeable_ptr_in_use_enumerator_cold_1();
  }

  *a4 = a2;
  return 0;
}

uint64_t _malloc_default_reader_4(task_name_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a1 && !mach_task_is_self(a1))
  {
    purgeable_ptr_in_use_enumerator_cold_1();
  }

  *a4 = a2;
  return 0;
}

uint64_t _malloc_default_reader_5(task_name_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a1 && !mach_task_is_self(a1))
  {
    purgeable_ptr_in_use_enumerator_cold_1();
  }

  *a4 = a2;
  return 0;
}

uint64_t _malloc_default_reader_6(task_name_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a1 && !mach_task_is_self(a1))
  {
    purgeable_ptr_in_use_enumerator_cold_1();
  }

  *a4 = a2;
  return 0;
}

void malloc_zone_register_while_locked(const void *a1, char a2)
{
  if (malloc_num_zones)
  {
    v4 = 0;
    do
    {
      if (*(malloc_zones + v4) == a1)
      {
        malloc_report(3, "Attempted to register zone more than once: %p\n", a1);
        return;
      }

      ++v4;
    }

    while (malloc_num_zones != v4);
    v5 = malloc_num_zones_allocated;
    if (malloc_num_zones != malloc_num_zones_allocated)
    {
      goto LABEL_11;
    }

    v6 = 8 * malloc_num_zones;
    if (malloc_num_zones >= 0x20000)
    {
      v7 = malloc_num_zones + 0x20000;
    }

    else
    {
      if (malloc_num_zones < 0)
      {
        purgeable_ptr_in_use_enumerator_cold_1();
      }

      v7 = (2 * malloc_num_zones);
    }
  }

  else
  {
    v5 = malloc_num_zones_allocated;
    if (malloc_num_zones_allocated)
    {
LABEL_11:
      v8 = 8 * v5;
      mprotect(malloc_zones, v8, 3);
LABEL_18:
      if (a2)
      {
        memcpy(malloc_zones + 8, malloc_zones, 8 * malloc_num_zones);
        *malloc_zones = a1;
        atomic_fetch_add(&malloc_num_zones, 1u);
        mprotect(malloc_zones, v8, 1);
        if (*malloc_zones != a1)
        {
          has_injected_zone0 = 1;

          malloc_slowpath_update();
        }
      }

      else
      {
        *(malloc_zones + malloc_num_zones) = a1;
        atomic_fetch_add(&malloc_num_zones, 1u);
        v11 = malloc_zones;

        mprotect(v11, v8, 1);
      }

      return;
    }

    v6 = 0;
    v7 = *MEMORY[0x1E69E9AC8] >> 3;
  }

  v8 = (*MEMORY[0x1E69E9AC8] + 8 * v7 - 1) & -*MEMORY[0x1E69E9AC8];
  plat = mvm_allocate_plat(0, v8, 0, 1, 0x2000, 1);
  if (plat)
  {
    v10 = plat;
    if (malloc_zones)
    {
      memcpy(plat, malloc_zones, v6);
    }

    malloc_zones = v10;
    malloc_num_zones_allocated = v7;
    if (v7 >> 31)
    {
      purgeable_ptr_in_use_enumerator_cold_1();
    }

    goto LABEL_18;
  }

  malloc_report(3, "malloc_zone_register allocation failed\n");
}

void malloc_slowpath_update()
{
  v0 = 1;
  if ((has_injected_zone0 & 1) == 0)
  {
    v1 = malloc_num_zones && malloc_check_start == 0;
    if (v1 && lite_zone == 0)
    {
      if ((malloc_tracing_enabled & 1) != 0 || (malloc_simple_stack_logging & 1) != 0 || (malloc_debug_flags & 0x20) != 0)
      {
        v0 = 1;
      }

      else
      {
        v0 = malloc_interposition_compat;
      }
    }
  }

  v3 = v0 & 1;
  if (malloc_slowpath != v3)
  {
    malloc_slowpath = v3;
  }
}

uint64_t _xzm_random_clear_n_bits(uint64_t a1, uint32_t __upper_bound, int a3)
{
  if (a3)
  {
    v4 = a3;
    do
    {
      v6 = arc4random_uniform(__upper_bound);
      v7 = a1;
      if (v6)
      {
        v7 = a1;
        do
        {
          v7 &= v7 - 1;
          --v6;
        }

        while (v6);
      }

      a1 = v7 & -v7 ^ a1;
      --__upper_bound;
      --v4;
    }

    while (v4);
  }

  return a1;
}

uint64_t _xzm_segment_group_segment_create_guard(uint64_t a1, unsigned int a2)
{
  v2 = a1 + 2104 + 48 * a2;
  if (v2 + 48 < a1 + 2104 + 48 * *(a1 + 16) && (*(v2 + 80) & 0xF) == 9)
  {
    v3 = *(v2 + 88) + 1;
    if (!a2)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v3 = 1;
    if (!a2)
    {
      goto LABEL_9;
    }
  }

  v4 = v2 - 48;
  if ((*(v2 - 16) & 0xF) == 4)
  {
    v10 = v4 - *(v2 - 12);
    v11 = *(v10 + 32) & 0xF;
    if (v11 <= 9)
    {
      v12 = 1 << v11;
      if ((v12 & 0x3E8) != 0)
      {
        if (v10 + 48 * *(v10 + 40) <= v4)
        {
          goto LABEL_7;
        }

LABEL_25:
        v4 -= *(v2 - 12);
        goto LABEL_7;
      }

      if ((v12 & 6) != 0 && v4 == v10)
      {
        goto LABEL_25;
      }
    }
  }

LABEL_7:
  if ((*(v4 + 32) & 0xF) == 9)
  {
    v5 = *(v4 + 40);
    a2 -= v5;
    v3 += v5;
    v2 = v4;
  }

LABEL_9:
  if (v3 < 2)
  {
    ++*(a1 + 8);
    v6 = v3;
  }

  else
  {
    v6 = v3;
    v7 = v2 + 80;
    v8 = 48;
    do
    {
      *(v7 + 4) = v8;
      *v7 = *v7 & 0xF0 | 4;
      v7 += 48;
      v8 += 48;
    }

    while (48 * v3 != v8);
  }

  *(v2 + 40) = v3;
  result = mprotect((*(a1 + 40) + (a2 << 14)), v6 << 14, 0);
  if (result)
  {
    _xzm_segment_group_segment_create_guard_cold_1();
  }

  *(v2 + 32) = *(v2 + 32) & 0xF0 | 9;
  return result;
}

uint64_t _xzm_segment_group_span_mark_smaller(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, int a5)
{
  v5 = 0;
  v6 = *(*(a1 + 24) + 568);
  v7 = a2 & 0xFFFFFFFFFFFFC000 | 0x38;
  v8 = -1431655765 * (((a2 & 0x3FFF) - 2104) >> 4);
  v9 = *(v7 + 8 * v8);
  v10 = *((a2 & 0xFFFFFFFFFFFFC000) + 0x28) + (v8 << 14);
  v23 = *(a2 + 32);
  v11 = (a5 << 14);
  v12 = a2 + 48 * a3 + 48 * a4;
  v13 = (v12 & 0xFFFFFFFFFFFFC000) + 0xFFFFFFFD55555558 * (((v12 & 0x3FFF) - 2104) >> 4) + 56;
  if (!v11)
  {
    v13 = 0;
  }

  v22 = v13;
  v14 = a4 << 14;
  v15 = a3 << 14;
  v25 = 0;
  v24 = 0;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  atomic_compare_exchange_strong_explicit((v6 + 12), &v5, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
  if (v5)
  {
    os_unfair_lock_lock_with_options();
  }

  if (v9 != -1)
  {
    _xzm_reclaim_mark_used_locked(v6, *(v7 + 8 * v8), v10, v14 + v15 + v11, 1, &v25 + 1);
    if (!mach_vm_reclaim_is_reusable())
    {
      v18 = 0;
      goto LABEL_18;
    }

    *(v7 + 8 * v8) = -1;
  }

  if (v15 && (v23 & 0x10) == 0)
  {
    *(v7 + 8 * v8) = xzm_reclaim_mark_free_locked(v6, v10, v15, 1, &v25);
  }

  if (v11)
  {
    if ((v23 & 0x10) != 0)
    {
      v17 = -1;
    }

    else
    {
      v17 = xzm_reclaim_mark_free_locked(v6, v10 + v15 + v14, v11, 1, &v24);
    }

    *v22 = v17;
  }

  v18 = 1;
LABEL_18:
  v19 = *(StatusReg + 24);
  v20 = v19;
  atomic_compare_exchange_strong_explicit((v6 + 12), &v20, 0, memory_order_release, memory_order_relaxed);
  if (v20 != v19)
  {
    os_unfair_lock_unlock((v6 + 12));
  }

  if ((v25 & 0x100) != 0 || (v25 & 1) != 0 || v24 == 1)
  {
    mach_vm_reclaim_update_kernel_accounting();
  }

  return v18;
}

void _xzm_fork_lock_wait(os_unfair_lock_s *a1)
{
  v1 = 0;
  v2 = a1 + 87;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  atomic_compare_exchange_strong_explicit(&a1[87], &v1, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
  if (v1)
  {
    os_unfair_lock_lock_with_options();
  }

  v4 = *(StatusReg + 24);
  v5 = v4;
  atomic_compare_exchange_strong_explicit(v2, &v5, 0, memory_order_release, memory_order_relaxed);
  if (v5 != v4)
  {

    os_unfair_lock_unlock(v2);
  }
}

mach_vm_address_t _xzm_range_group_alloc_anywhere_segment(mach_vm_address_t a1, mach_vm_size_t size, unint64_t a3, uint64_t a4, int a5)
{
  address = a1;
  v6 = ((a5 & 1) << 24) | 0x2000001;
  if ((a5 & 2) != 0)
  {
    v6 = ((a5 & 1) << 24) + 33554435;
  }

  v7 = v6 | (a5 << 11) & 0x2000;
  v8 = 0x400000;
  if (a3 > 0x400000)
  {
    v8 = a3;
  }

  v9 = mach_vm_map(*MEMORY[0x1E69E9A60], &address, size, v8 - 1, v7, 0, 0, 0, 3, 7, 1u);
  if (!v9)
  {
    return address;
  }

  v10 = 0;
  if (v9 != 3)
  {
    malloc_zone_error(0, 0, "Failed to allocate segment (size=%lu, flags=%x, kr=%d)\n", size, v7, v9);
    return 0;
  }

  return v10;
}

mach_vm_address_t xzm_malloc_zone_create(unsigned int a1, uint64_t a2)
{
  v4 = 0;
  v5 = *(a2 + 210);
  v6 = *(a2 + 211);
  v7 = (a2 + 528);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  atomic_compare_exchange_strong_explicit((a2 + 528), &v4, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
  if (v4)
  {
    os_unfair_lock_lock_with_options();
  }

  v9 = *(a2 + 520);
  if (v9)
  {
    *(a2 + 520) = *(v9 + 8);
    v10 = *v9;
    xzm_metapool_free((*(a2 + 480) + 128), v9);
  }

  else
  {
    v11 = *(a2 + 516);
    if (v11 == 0xFFFF)
    {
      v10 = 0;
    }

    else
    {
      v10 = v11 + 1;
      *(a2 + 516) = v11 + 1;
    }
  }

  v12 = *(StatusReg + 24);
  v13 = v12;
  atomic_compare_exchange_strong_explicit(v7, &v13, 0, memory_order_release, memory_order_relaxed);
  if (v13 != v12)
  {
    os_unfair_lock_unlock(v7);
  }

  if (!v10)
  {
    return 0;
  }

  v14 = 96 * v5 + 384;
  v15 = v6 * v5;
  v16 = v14 + 32 * v15;
  v17 = v16 + 16 * v15;
  plat = mvm_allocate_plat(0, v17, 0, 1, 0x2000, 1);
  if (plat)
  {
    _xzm_initialize_const_zone_data(plat, v17, v10, v5, v6, plat + 384, v14 + plat, a2, (*(a2 + 248) >> 2) & 3, *(a2 + 288), (*(a2 + 248) >> 4) & 3, *(a2 + 272), HIDWORD(*(a2 + 272)), *(a2 + 284), *(a2 + 292), *(a2 + 296), *(a2 + 304), *(a2 + 312), 0, 0, a1, *(a2 + 250), *(a2 + 248) & 3, plat + v16);
    *(plat + 368) = *(a2 + 368);
    _xzm_initialize_xzone_data(plat, (a2 + 532), 0, *(a2 + 411) == 2);
    *(plat + 352) = 0;
  }

  return plat;
}

malloc_zone_t *__cdecl malloc_create_zone(vm_size_t start_size, unsigned int flags)
{
  if (malloc_absolute_max_size < start_size)
  {
    return 0;
  }

  if (!initial_xzone_zone || xzm_create_mzones != 1 || (scalable_zone = xzm_malloc_zone_create(malloc_debug_flags | flags, initial_xzone_zone)) == 0)
  {
    scalable_zone = create_scalable_zone(start_size, malloc_debug_flags | flags);
  }

  if ((flags & 0x400) != 0 || (has_injected_zone0 & 1) != 0 || (malloc_sanitizer_enabled & 1) != 0 || !pgm_should_enable())
  {
    malloc_zone_register(scalable_zone);
  }

  else
  {
    zone = pgm_create_zone(scalable_zone);
    v6 = 0;
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    atomic_compare_exchange_strong_explicit(&_malloc_lock, &v6, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
    if (v6)
    {
      os_unfair_lock_lock_with_options();
    }

    malloc_zone_register_while_locked(zone, 0);
    malloc_zone_register_while_locked(scalable_zone, 0);
    v8 = *(StatusReg + 24);
    v9 = v8;
    atomic_compare_exchange_strong_explicit(&_malloc_lock, &v9, 0, memory_order_release, memory_order_relaxed);
    if (v9 != v8)
    {
      os_unfair_lock_unlock(&_malloc_lock);
    }

    return zone;
  }

  return scalable_zone;
}

void malloc_zone_register(malloc_zone_t *zone)
{
  v2 = 0;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  atomic_compare_exchange_strong_explicit(&_malloc_lock, &v2, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
  if (v2)
  {
    os_unfair_lock_lock_with_options();
  }

  malloc_zone_register_while_locked(zone, 0);
  v4 = *(StatusReg + 24);
  v5 = v4;
  atomic_compare_exchange_strong_explicit(&_malloc_lock, &v5, 0, memory_order_release, memory_order_relaxed);
  if (v5 != v4)
  {

    os_unfair_lock_unlock(&_malloc_lock);
  }
}

uint64_t _xzm_segment_group_span_mark_free(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a1 + 24) + 568);
  if ((*(a2 + 32) & 0xF) == 1)
  {
    v3 = 0x4000;
  }

  else
  {
    v3 = (*(a2 + 40) << 14);
  }

  v4 = -1431655765 * (((a2 & 0x3FFF) - 2104) >> 4);
  v5 = (a2 & 0xFFFFFFFFFFFFC000) + 8 * v4;
  result = _xzm_reclaim_mark_free(v2, *((a2 & 0xFFFFFFFFFFFFC000) + 0x28) + (v4 << 14), v3, 1);
  *(v5 + 56) = result;
  return result;
}

uint64_t pgm_malloc_type_memalign(uint64_t a1, unint64_t a2, unint64_t a3)
{
  if (*MEMORY[0x1E69E9AC8] >= a2 && *MEMORY[0x1E69E9AC8] >= a3 && *(a1 + 16684) != *(a1 + 212))
  {
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v8 = *(StatusReg + 880);
    if (v8 != -1)
    {
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
      if (!v10)
      {
        v13 = 0;
        if (a2 <= 0x10)
        {
          v14 = 16;
        }

        else
        {
          v14 = a2;
        }

        atomic_compare_exchange_strong_explicit((a1 + 16680), &v13, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
        if (v13)
        {
          os_unfair_lock_lock_with_options();
        }

        v15 = allocate(a1, a3, v14);
        v16 = *(StatusReg + 24);
        v17 = v16;
        atomic_compare_exchange_strong_explicit((a1 + 16680), &v17, 0, memory_order_release, memory_order_relaxed);
        if (v17 != v16)
        {
          os_unfair_lock_unlock((a1 + 16680));
        }

        if (v15)
        {
          return v15;
        }
      }
    }
  }

  v11 = *(*(a1 + 200) + 184);

  return v11();
}

uint64_t _xzm_reclaim_mark_free(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v8 = 0;
  v15 = 0;
  v9 = (a1 + 12);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  atomic_compare_exchange_strong_explicit((a1 + 12), &v8, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
  if (v8)
  {
    os_unfair_lock_lock_with_options();
  }

  v11 = xzm_reclaim_mark_free_locked(a1, a2, v5, v4, &v15);
  v12 = *(StatusReg + 24);
  v13 = v12;
  atomic_compare_exchange_strong_explicit(v9, &v13, 0, memory_order_release, memory_order_relaxed);
  if (v13 != v12)
  {
    os_unfair_lock_unlock(v9);
  }

  if (v15 == 1)
  {
    mach_vm_reclaim_update_kernel_accounting();
  }

  return v11;
}

uint64_t xzm_reclaim_mark_free_locked(void *a1, uint64_t a2, unsigned int a3, int a4, uint64_t a5)
{
  do
  {
    v6 = a1[2];
    if (!v6)
    {
      while (!mach_vm_reclaim_try_enter())
      {
        xzm_reclaim_sync_and_resize(a1);
      }

      xzm_reclaim_mark_free_locked_cold_2();
    }

    v7 = a1[4];
    v8 = v6 - 1;
    a1[2] = v8;
    v10 = *(v7 + 8 * v8);
    if (mach_vm_reclaim_try_enter())
    {
      xzm_reclaim_mark_free_locked_cold_1();
    }

    result = v10;
  }

  while (v10 == -1);
  return result;
}

uint64_t _xzm_segment_group_span_mark_used(uint64_t a1, uint64_t a2)
{
  v3 = a2 & 0xFFFFFFFFFFFFC000;
  v4 = a2 & 0xFFFFFFFFFFFFC000 | 0x38;
  v5 = -1431655765 * (((a2 & 0x3FFF) - 2104) >> 4);
  v6 = *(v4 + 8 * v5);
  if (v6 == -1)
  {
    return 1;
  }

  v7 = *(*(a1 + 24) + 568);
  if ((*(a2 + 32) & 0xF) == 1)
  {
    v8 = 0x4000;
  }

  else
  {
    v8 = (*(a2 + 40) << 14);
  }

  _xzm_reclaim_mark_used(v7, v6, *(v3 + 40) + (v5 << 14), v8, 1);
  result = mach_vm_reclaim_is_reusable();
  if (result)
  {
    *(v4 + 8 * v5) = -1;
    return 1;
  }

  return result;
}

void _xzm_segment_group_segment_deallocate(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    v5 = *(a2 + 40);
    v6 = v5 + (*(a2 + 12) << 14);
    if (v5 < v6)
    {
      v7 = *(a1 + 24);
      do
      {
        v8 = v5 >> 22;
        if (v5 >> 36)
        {
          v8 = 0x4000;
        }

        if (v8 >> 14)
        {
          v9 = 0;
        }

        else
        {
          v9 = (*(v7 + 488) + 4 * v8);
        }

        *v9 = 0;
        v5 += 0x400000;
      }

      while (v5 < v6);
    }
  }

  mvm_deallocate_plat(*(a2 + 40), *(a2 + 12) << 14, 0);
  v10 = *(*(a1 + 24) + 480);

  xzm_metapool_free(v10, a2);
}

void mvm_deallocate_plat(mach_vm_address_t address, mach_vm_size_t size, uint64_t a3)
{
  v3 = a3;
  v6 = mach_vm_deallocate(*MEMORY[0x1E69E9A60], address, size);
  if (v6)
  {
    malloc_zone_error(v3, 0, "Failed to deallocate at address %p of size 0x%lx: %d\n", address, size, v6);
  }
}

uint64_t _xzm_reclaim_mark_used(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a5;
  v10 = 0;
  v17 = 0;
  v11 = (a1 + 12);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  atomic_compare_exchange_strong_explicit((a1 + 12), &v10, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
  if (v10)
  {
    os_unfair_lock_lock_with_options();
  }

  v13 = _xzm_reclaim_mark_used_locked(a1, a2, a3, a4, v5, &v17);
  v14 = *(StatusReg + 24);
  v15 = v14;
  atomic_compare_exchange_strong_explicit(v11, &v15, 0, memory_order_release, memory_order_relaxed);
  if (v15 != v14)
  {
    os_unfair_lock_unlock(v11);
  }

  if (v17 == 1)
  {
    mach_vm_reclaim_update_kernel_accounting();
  }

  return v13;
}

uint64_t _xzm_reclaim_mark_used_locked(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  if (mach_vm_reclaim_try_cancel())
  {
    _xzm_reclaim_mark_used_locked_cold_1();
  }

  return 0;
}

uint64_t main_image_has_section(uint64_t a1, uint64_t a2)
{
  image_header = _dyld_get_image_header(0);
  if (!image_header->ncmds)
  {
    return 0;
  }

  v5 = image_header;
  v6 = 0;
  p_cputype = &image_header[1].cputype;
  while (*p_cputype != 25 || MEMORY[0x193ACD780](p_cputype + 2, a1, 16) && v5->filetype != 1 || !p_cputype[16])
  {
LABEL_11:
    p_cputype = (p_cputype + p_cputype[1]);
    if (++v6 >= v5->ncmds)
    {
      return 0;
    }
  }

  v8 = 0;
  v9 = p_cputype + 22;
  while (MEMORY[0x193ACD780](v9 - 4, a2, 16) || MEMORY[0x193ACD780](v9, a1, 16))
  {
    ++v8;
    v9 += 20;
    if (v8 >= p_cputype[16])
    {
      goto LABEL_11;
    }
  }

  return 1;
}

mach_vm_address_t pgm_create_zone(uint64_t a1)
{
  if (*(a1 + 104) <= 0xFu)
  {
    purgeable_ptr_in_use_enumerator_cold_1();
  }

  my_vm_map_common(0, 16720, 3, 1, 1);
  v3 = v2;
  v4 = *&off_1F018DC98;
  *(v2 + 32) = xmmword_1F018DC88;
  *(v2 + 48) = v4;
  v5 = *&off_1F018DCD8;
  *(v2 + 96) = xmmword_1F018DCC8;
  *(v2 + 112) = v5;
  v6 = *&off_1F018DCB8;
  *(v2 + 64) = xmmword_1F018DCA8;
  *(v2 + 80) = v6;
  v7 = off_1F018DD28[0];
  v8 = *off_1F018DD18;
  *(v2 + 160) = xmmword_1F018DD08;
  *(v2 + 176) = v8;
  v9 = unk_1F018DCF8;
  *(v2 + 128) = xmmword_1F018DCE8;
  *(v2 + 144) = v9;
  v10 = *&off_1F018DC78;
  *v2 = malloc_zone_template_0;
  *(v2 + 16) = v10;
  *(v2 + 192) = v7;
  *(v2 + 200) = a1;
  if (!*(a1 + 112))
  {
    *(v2 + 112) = 0;
  }

  if (!*(a1 + 184))
  {
    *(v2 + 184) = 0;
  }

  if (!*(a1 + 120))
  {
    *(v2 + 120) = 0;
  }

  if (!*(a1 + 136))
  {
    *(v2 + 136) = 0;
  }

  if (!*(a1 + 152))
  {
    *(v2 + 152) = 0;
  }

  if (!*(a1 + 192))
  {
    *(v2 + 192) = 0;
  }

  v11 = env_uint_0("MallocProbGuardMemoryBudgetInKB", 2048);
  v12 = v11 << 10;
  v13 = MEMORY[0x1E69E9AC8];
  v14 = (*MEMORY[0x1E69E9AC8] + 16719) & -*MEMORY[0x1E69E9AC8];
  v15 = v12 >= v14;
  v16 = v12 - v14;
  if (!v15 || (v17 = v16 / (*MEMORY[0x1E69E9AC8] + 1600.0 + 80.0 + 768.0), !v17))
  {
    pgm_create_zone_cold_4();
  }

  v18 = env_uint_0("MallocProbGuardAllocations", v17);
  *(v3 + 212) = v18;
  *(v3 + 208) = env_uint_0("MallocProbGuardSlots", (10 * v18));
  *(v3 + 216) = env_uint_0("MallocProbGuardMetadata", (3 * *(v3 + 212)));
  v19 = arc4random_uniform(0x1194u);
  v20 = env_uint_0("MallocProbGuardSampleRate", v19 + 500);
  v21 = 2 * v20;
  if (v20 == 1)
  {
    v21 = 1;
  }

  *(v3 + 220) = v21;
  *(v3 + 224) = env_uint_0("MallocProbGuardLeftAlignPercentage", 10);
  v22 = getenv("MallocProbGuardDebug");
  if (v22)
  {
    v23 = *v22 == 49;
  }

  else
  {
    v23 = 0;
  }

  *(v3 + 228) = v23;
  *(v3 + 232) = env_uint_0("MallocProbGuardDebugLogThrottleInMillis", 1000);
  if (*(v3 + 228) == 1)
  {
    malloc_report(6, "ProbGuard configuration: %u kB budget, 1/%u sample rate, %u/%u/%u allocations/metadata/slots\n", v11, v20, *(v3 + 212), *(v3 + 216), *(v3 + 208));
  }

  v24 = *(v3 + 212);
  if (!v24 || (v25 = *(v3 + 216), v24 > v25 >> 1) || (v26 = *(v3 + 208), v25 > v26) || !*(v3 + 220) || *(v3 + 224) >= 0x65u)
  {
    pgm_create_zone_cold_3();
  }

  v27 = *v13 * ((2 * v26) | 1);
  *(v3 + 240) = v27;
  *(v3 + 264) = v27 + 0x4000000;
  my_vm_map_common(0, v27 + 0x4000000, 0, 1, 1);
  *(v3 + 272) = v28;
  v29 = v28 + 0x2000000;
  v30 = *(v3 + 240);
  *(v3 + 248) = v28 + 0x2000000;
  *(v3 + 256) = v30 + v28 + 0x2000000;
  my_vm_map_common(v28 + 0x2000000, v30, 0, 0x4000, 13);
  if (v31 != v29)
  {
    purgeable_ptr_in_use_enumerator_cold_1();
  }

  *(v3 + 280) = (*(*(v3 + 200) + 32))();
  v32 = (*(*(v3 + 200) + 32))();
  *(v3 + 288) = v32;
  if (!*(v3 + 280) || !v32)
  {
    purgeable_ptr_in_use_enumerator_cold_1();
  }

  *(v3 + 16680) = 0;
  my_vm_protect(v3, 0x4000, 1);
  return v3;
}

void my_vm_map_common(mach_vm_address_t a1, uint64_t a2, vm_prot_t cur_protection, int a4, int a5)
{
  address = a1;
  if (mach_vm_map(*MEMORY[0x1E69E9A60], &address, (a2 + *MEMORY[0x1E69E9AC8] - 1) & -*MEMORY[0x1E69E9AC8], 0, a4 | (a5 << 24), 0, 0, 0, cur_protection, 3, 1u))
  {
    purgeable_ptr_in_use_enumerator_cold_1();
  }
}

unint64_t env_uint(uint64_t a1, uint64_t a2)
{
  _NSGetEnviron();
  v3 = _simple_getenv();
  if (v3)
  {
    return strtoul(v3, 0, 0);
  }

  return a2;
}

unint64_t env_uint_0(const char *a1, uint64_t a2)
{
  v3 = getenv(a1);
  if (v3)
  {
    return strtoul(v3, 0, 0);
  }

  return a2;
}

void xzm_malloc_zone_calloc(void *a1, unint64_t a2, unint64_t a3)
{
  v6 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 904);
  v7 = (malloc_get_thread_options() << 27) & 0x40000000;

  _xzm_malloc_zone_malloc_type_calloc_entry(a1, a2, a3, v6, v7, v8);
}

void _xzm_foreach_lock(uint64_t result, uint64_t a2)
{
  if (!a2)
  {
    v4 = 0;
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    atomic_compare_exchange_strong_explicit((result + 348), &v4, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
    if (v4)
    {
      os_unfair_lock_lock_with_options();
    }

    v6 = 0;
    atomic_compare_exchange_strong_explicit((result + 344), &v6, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
    if (v6)
    {
      os_unfair_lock_lock_with_options();
    }

    _xzm_allocation_slots_do_lock_action(result, 0);
  }

  if (*(result + 210) >= 2u)
  {
    v7 = 1;
    v8 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    do
    {
      v9 = *(result + 216) + 96 * v7;
      if (*(v9 + 48) <= 0x1000uLL || *(result + 250) == 1)
      {
        if (!a2)
        {
          if (*(result + 211))
          {
            v10 = 0;
            do
            {
              atomic_fetch_or_explicit((*(result + 232) + 16 * v10 * *(result + 210) + 16 * *(v9 + 80)), 0x8000000000000000, memory_order_relaxed);
              ++v10;
            }

            while (v10 < *(result + 211));
          }

          atomic_fetch_or_explicit(v9, 0x8000000000000000, memory_order_relaxed);
          atomic_fetch_or_explicit((v9 + 8), 0x8000000000000000, memory_order_relaxed);
          atomic_fetch_or_explicit((v9 + 24), 0x8000000000000000, memory_order_relaxed);
          atomic_fetch_or_explicit((v9 + 16), 0x8000000000000000, memory_order_relaxed);
        }

        for (i = (*(v9 + 16) & 0x7FFFFFFFFFFFLL); i; i = i[3])
        {
          v12 = *i;
          if (a2)
          {
            if ((~v12 & 0x7FE) != 0)
            {
              v13 = *i;
              atomic_compare_exchange_strong_explicit(i, &v13, v12 & 0xFFFFFFFFBFFFFFFFLL, memory_order_relaxed, memory_order_relaxed);
              if (v13 != v12)
              {
                _xzm_foreach_lock_cold_1();
              }
            }
          }

          else
          {
            do
            {
              if ((~v12 & 0x7FE) == 0)
              {
                break;
              }

              v14 = v12;
              atomic_compare_exchange_strong_explicit(i, &v14, v12 | 0x40000000, memory_order_relaxed, memory_order_relaxed);
              v34 = v14 == v12;
              v12 = v14;
            }

            while (!v34);
          }
        }

        if (a2)
        {
          atomic_fetch_and_explicit((v9 + 16), 0x7FFFFFFFFFFFFFFFuLL, memory_order_relaxed);
          atomic_fetch_and_explicit(v9, 0x7FFFFFFFFFFFFFFFuLL, memory_order_relaxed);
          atomic_fetch_and_explicit((v9 + 24), 0x7FFFFFFFFFFFFFFFuLL, memory_order_relaxed);
          atomic_fetch_and_explicit((v9 + 8), 0x7FFFFFFFFFFFFFFFuLL, memory_order_relaxed);
          if (*(result + 211))
          {
            v15 = 0;
            do
            {
              atomic_fetch_and_explicit((*(result + 232) + 16 * v15 * *(result + 210) + 16 * *(v9 + 80)), 0x7FFFFFFFFFFFFFFFuLL, memory_order_relaxed);
              ++v15;
            }

            while (v15 < *(result + 211));
          }
        }
      }

      else if (a2)
      {
        for (j = *(v9 + 24); j; j = *((j & 0xFFFFFFFFFFFFC000) + 0xFFFFFFFD55555558 * (((j & 0x3FFF) - 2104) >> 4) + 0x38))
        {
          _xzm_do_lock_action(j + 2, a2);
        }

        for (k = *v9; k; k = *(k + 16))
        {
          _xzm_do_lock_action((k + 8), a2);
        }

        for (m = *(v9 + 8); m; m = *(m + 16))
        {
          _xzm_do_lock_action((m + 8), a2);
        }

        _xzm_do_lock_action((v9 + 36), a2);
      }

      else
      {
        v19 = (v9 + 36);
        while (1)
        {
          v20 = 0;
          atomic_compare_exchange_strong_explicit(v19, &v20, *(v8 + 24), memory_order_acquire, memory_order_acquire);
          if (v20)
          {
            os_unfair_lock_lock_with_options();
          }

          for (n = *(v9 + 24); n; n = *((n & 0xFFFFFFFFFFFFC000) + 0xFFFFFFFD55555558 * (((n & 0x3FFF) - 2104) >> 4) + 0x38))
          {
            v22 = 0;
            atomic_compare_exchange_strong_explicit((n + 8), &v22, *(v8 + 24), memory_order_acquire, memory_order_acquire);
            if (v22)
            {
              os_unfair_lock_lock_with_options();
            }
          }

          for (ii = *v9; ii; ii = *(ii + 16))
          {
            v24 = 0;
            atomic_compare_exchange_strong_explicit((ii + 8), &v24, *(v8 + 24), memory_order_acquire, memory_order_acquire);
            if (v24)
            {
              os_unfair_lock_lock_with_options();
            }
          }

          v25 = *(v9 + 8);
          if (!v25)
          {
            break;
          }

          while (1)
          {
            v26 = 0;
            atomic_compare_exchange_strong_explicit((v25 + 8), &v26, *(v8 + 24), memory_order_acquire, memory_order_acquire);
            if (v26)
            {
              break;
            }

            v25 = *(v25 + 16);
            if (!v25)
            {
              goto LABEL_38;
            }
          }

          for (jj = *(v9 + 24); jj; jj = *((jj & 0xFFFFFFFFFFFFC000) + 0xFFFFFFFD55555558 * (((jj & 0x3FFF) - 2104) >> 4) + 0x38))
          {
            v28 = *(v8 + 24);
            v29 = v28;
            atomic_compare_exchange_strong_explicit(&jj[2], &v29, 0, memory_order_release, memory_order_relaxed);
            if (v29 != v28)
            {
              os_unfair_lock_unlock(jj + 2);
            }
          }

          for (kk = *v9; kk; kk = *(kk + 16))
          {
            v31 = *(v8 + 24);
            v32 = v31;
            atomic_compare_exchange_strong_explicit((kk + 8), &v32, 0, memory_order_release, memory_order_relaxed);
            if (v32 != v31)
            {
              os_unfair_lock_unlock((kk + 8));
            }
          }

          for (mm = *(v9 + 8); ; mm = *(mm + 16))
          {
            v34 = !mm || mm == v25;
            if (v34)
            {
              break;
            }

            v35 = *(v8 + 24);
            v36 = v35;
            atomic_compare_exchange_strong_explicit((mm + 8), &v36, 0, memory_order_release, memory_order_relaxed);
            if (v36 != v35)
            {
              os_unfair_lock_unlock((mm + 8));
            }
          }

          v37 = *(v8 + 24);
          v38 = v37;
          atomic_compare_exchange_strong_explicit(v19, &v38, 0, memory_order_release, memory_order_relaxed);
          if (v38 != v37)
          {
            os_unfair_lock_unlock((v9 + 36));
          }

          MEMORY[0x193ACDCE0](0, 1, 1);
        }
      }

LABEL_38:
      ++v7;
    }

    while (v7 < *(result + 210));
  }

  if (a2)
  {
    _xzm_allocation_slots_do_lock_action(result, a2);
    _xzm_do_lock_action((result + 344), a2);

    _xzm_do_lock_action((result + 348), a2);
  }
}

void xzm_statistics_self(unint64_t a1, _OWORD *a2)
{
  if (!*(a1 + 240))
  {
    mfm_lock();
  }

  xzm_force_lock(a1);
  xzm_statistics(*MEMORY[0x1E69E9A60], a1, _malloc_default_reader_2, a2);
  xzm_force_unlock(a1);
  if (!*(a1 + 240))
  {

    mfm_unlock();
  }
}

uint64_t my_vm_protect(mach_vm_address_t address, uint64_t a2, vm_prot_t new_protection)
{
  result = mach_vm_protect(*MEMORY[0x1E69E9A60], address, (a2 + *MEMORY[0x1E69E9AC8] - 1) & -*MEMORY[0x1E69E9AC8], 0, new_protection);
  if (result)
  {
    purgeable_ptr_in_use_enumerator_cold_1();
  }

  return result;
}

void malloc_zone_statistics(malloc_zone_t *zone, malloc_statistics_t *stats)
{
  if (zone)
  {
    statistics = zone->introspect->statistics;

    statistics();
  }

  else
  {
    _platform_memset();
    if (malloc_num_zones)
    {
      v4 = 0;
      do
      {
        v5 = v4 + 1;
        v6 = 0u;
        v7 = 0;
        (*(*(*(malloc_zones + v4) + 96) + 56))();
        stats->blocks_in_use = stats->blocks_in_use;
        *&stats->size_in_use = vaddq_s64(*&stats->size_in_use, *(&v6 + 8));
        stats->size_allocated = stats->size_allocated;
        v4 = v5;
      }

      while (v5 < malloc_num_zones);
    }
  }
}

unint64_t _xzm_xzone_block_memtag_retag(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = memtag_assign_tag(a1, a2);
  _X8 = result + a2;
  if ((a2 & 0x1FF) != 0)
  {
    __asm
    {
      STG             X0, [X0]
      STG             X8, [X8,#-0x10]
    }

    if (a2 > 0x20)
    {
      _X9 = (result + 31) & 0xFFFFFFFFFFFFFFE0;
      _X10 = _X8 & 0xFFFFFFFFFFFFFFE0;
      __asm
      {
        ST2G            X9, [X9]
        ST2G            X10, [X10,#-0x20]
      }
    }

    v12 = (result + 63) & 0xFFFFFFFFFFFFFFC0;
    v13 = _X8 & 0xFFFFFFFFFFFFFFC0;
    while (v12 < v13)
    {
      __asm { DC              GVA, X9 }

      v12 += 64;
    }
  }

  else if (a2 >= 1)
  {
    v14 = result;
    do
    {
      __asm
      {
        DC              GVA, X9
        DC              GVA, X10
        DC              GVA, X10
        DC              GVA, X10
        DC              GVA, X10
        DC              GVA, X10
        DC              GVA, X10
        DC              GVA, X10
      }

      v14 += 512;
    }

    while (v14 < _X8);
  }

  return result;
}

void _xzm_allocation_slots_do_lock_action(uint64_t result, uint64_t a2)
{
  v2 = *(result + 210);
  if (v2 >= 2)
  {
    v3 = a2;
    for (i = 1; i < v2; ++i)
    {
      v6 = *(*(result + 216) + 96 * i + 48);
      if (v6 > 0x1000)
      {
        v7 = *(result + 250);
      }

      else
      {
        v7 = 0;
      }

      if (*(result + 211))
      {
        v8 = 0;
        v9 = (v6 <= 0x1000) | v7;
        do
        {
          v10 = *(result + 224) + 32 * v8 * *(result + 210) + 32 * i;
          if (v9)
          {
            v11 = *v10;
            if (v3)
            {
              if (atomic_exchange_explicit(v10, v11 & 0xFFFFFFFFFFFFFFFDLL, memory_order_release) != v11)
              {
                _xzm_allocation_slots_do_lock_action_cold_1();
              }
            }

            else
            {
              do
              {
                while ((v11 & 1) != 0)
                {
                  if ((v11 & 2) == 0)
                  {
                    v12 = v11;
                    atomic_compare_exchange_strong_explicit(v10, &v12, v11 | 2, memory_order_relaxed, memory_order_relaxed);
                    v13 = v12 == v11;
                    v11 = v12;
                    if (!v13)
                    {
                      continue;
                    }
                  }

                  v14 = __ulock_wait();
                  if ((v14 & 0x80000000) != 0)
                  {
                    _xzm_allocation_slots_do_lock_action_cold_2(v14);
                  }

                  v11 = *v10;
                }

                v15 = v11;
                atomic_compare_exchange_strong_explicit(v10, &v15, v11 | 2, memory_order_relaxed, memory_order_relaxed);
                v13 = v15 == v11;
                v11 = v15;
              }

              while (!v13);
            }
          }

          else
          {
            _xzm_do_lock_action((v10 + 8), v3);
          }

          ++v8;
        }

        while (v8 < *(result + 211));
        v2 = *(result + 210);
      }
    }
  }
}

uint64_t mfm_lock()
{
  result = mfm_arena;
  if (mfm_arena)
  {
    v1 = 0;
    atomic_compare_exchange_strong_explicit(mfm_arena, &v1, *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24), memory_order_acquire, memory_order_acquire);
    if (v1)
    {
      return os_unfair_lock_lock_with_options();
    }
  }

  return result;
}

void _xzm_do_lock_action(os_unfair_lock_t lock, int a2)
{
  if (a2 == 2)
  {
    lock->_os_unfair_lock_opaque = 0;
  }

  else if (a2 == 1)
  {
    v2 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
    v3 = v2;
    atomic_compare_exchange_strong_explicit(lock, &v3, 0, memory_order_release, memory_order_relaxed);
    if (v3 != v2)
    {
      os_unfair_lock_unlock(lock);
    }
  }

  else
  {
    v4 = 0;
    atomic_compare_exchange_strong_explicit(lock, &v4, *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24), memory_order_acquire, memory_order_acquire);
    if (v4)
    {
      os_unfair_lock_lock_with_options();
    }
  }
}

uint64_t _xzm_segment_group_cache_mark_free(uint64_t a1, uint64_t a2)
{
  result = _xzm_reclaim_mark_free(*(*(a1 + 24) + 568), *(a2 + 40), *(a2 + 12) << 14, 0);
  *(a2 + 48) = result;
  v5 = *(a1 + 464);
  *(a2 + 24) = v5;
  if (v5)
  {
    v6 = (v5 + 32);
  }

  else
  {
    v6 = (a1 + 472);
  }

  *v6 = a2 + 24;
  *(a1 + 464) = a2;
  *(a2 + 32) = a1 + 464;
  ++*(a1 + 482);
  return result;
}

uint64_t xzm_statistics(uint64_t task, unint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t **), _OWORD *a4)
{
  v5 = a3;
  *a4 = 0u;
  a4[1] = 0u;
  if (!a3)
  {
    if (task && !mach_task_is_self(task))
    {
      purgeable_ptr_in_use_enumerator_cold_1();
    }

    v5 = _malloc_default_reader_2;
  }

  v16 = 0;
  v17 = 0;
  v15 = 0;
  result = _xzm_introspect_map_zone_and_main(task, a2, v5, &v17, &v16, &v15);
  if (!result)
  {
    v9 = v15;
    v10 = v16;
    if (v15 == a2)
    {
      v11 = v16[52];
      if (v11)
      {
        off_1F018DB70(task, v11, v5, a4);
        *(a4 + 2) = 0;
      }
    }

    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 0x40000000;
    v14[2] = __xzm_statistics_block_invoke_3;
    v14[3] = &__block_descriptor_tmp_245;
    v14[4] = a4;
    if (v9 == a2)
    {
      v12 = v13;
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 0x40000000;
      v13[2] = __xzm_statistics_block_invoke_4;
      v13[3] = &__block_descriptor_tmp_246;
      v13[4] = a4;
    }

    else
    {
      v12 = 0;
    }

    return _xzm_introspect_enumerate(task, v5, a2, v17, v9, v10, 0, &__block_literal_global_241, &__block_literal_global_244, v14, v12);
  }

  return result;
}

uint64_t _xzm_introspect_map_zone_and_main(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t **), uint64_t **a4, uint64_t **a5, uint64_t *a6)
{
  v10 = a2;
  v18 = 0;
  result = a3(a1, a2, 384, &v18);
  if (!result)
  {
    v13 = v18[25];
    if (v13 < 0x180)
    {
      return 5;
    }

    result = a3(a1, v10, v18[25], &v18);
    if (!result)
    {
      v17 = 0;
      v14 = v18;
      v15 = v18[30];
      if (v15)
      {
        result = a3(a1, v18[30], 576, &v17);
        if (result)
        {
          return result;
        }

        v16 = v17[48];
        if (v16 < 0x240)
        {
          return 5;
        }

        result = a3(a1, v15, v17[48], &v17);
        if (result)
        {
          return result;
        }

        v14 = v17;
        if (v16 < v17[48])
        {
          return 5;
        }

        v10 = v15;
      }

      else
      {
        v17 = v18;
        if (v18[48] != v13)
        {
          return 5;
        }
      }

      if (!v18)
      {
        _xzm_introspect_map_zone_and_main_cold_2();
      }

      if (!v10)
      {
        _xzm_introspect_map_zone_and_main_cold_1();
      }

      result = 0;
      *a4 = v18;
      *a5 = v14;
      *a6 = v10;
    }
  }

  return result;
}

uint64_t mfmi_read_zone(uint64_t task, uint64_t a2, uint64_t (*a3)(task_name_t a1, uint64_t a2, uint64_t a3, void *a4), void *a4)
{
  v5 = a3;
  if (!a3)
  {
    if (task && !mach_task_is_self(task))
    {
      purgeable_ptr_in_use_enumerator_cold_1();
    }

    v5 = _malloc_default_reader_1;
  }

  return v5(task, a2, 0x400000, a4);
}

void mfmi_statistics_task(uint64_t a1, uint64_t a2, uint64_t (*a3)(task_name_t a1, uint64_t a2, uint64_t a3, void *a4), void *a4)
{
  v9 = 0;
  v5 = mfmi_read_zone(a1, a2, a3, &v9);
  bzero(a4, 0x20uLL);
  if (!v5)
  {
    v6 = v9;
    v7 = *(v9 + 16);
    *a4 = *(v9 + 24);
    a4[3] = 0x400000;
    v8 = ((((v7 >> 2) & 0x1FFFFFFFFFFFFFF8) + *MEMORY[0x1E69E9AC8] + 223) & -*MEMORY[0x1E69E9AC8]) + a4[2] + ((*MEMORY[0x1E69E9AC8] + 16 * v7 - 1) & -*MEMORY[0x1E69E9AC8]);
    a4[1] = 16 * *(v6 + 4);
    a4[2] = v8;
  }
}

malloc_zone_t *malloc_default_purgeable_zone(void)
{
  if (malloc_default_purgeable_zone_pred != -1)
  {
    malloc_default_purgeable_zone_cold_1();
  }

  return default_purgeable_zone;
}

uint64_t _xzm_introspect_enumerate(uint64_t a1, uint64_t (*a2)(void), unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, char a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v16 = a3 == a5;
  v17 = (a6 + 384);
  v18 = (a4 + 200);
  if (a3 == a5)
  {
    v18 = (a6 + 384);
  }

  v19 = *v18;
  if (a3 != a5)
  {
    goto LABEL_17;
  }

  v20 = *(a6 + 480);
  v21 = v20 - a3;
  if (v20 < a3)
  {
    return 5;
  }

  v22 = *(a6 + 414);
  result = 5;
  if (__CFADD__(v21, v22 << 6))
  {
    return result;
  }

  if ((v21 + (v22 << 6)) > *(a6 + 384))
  {
    return result;
  }

  v24 = v21 + a6;
  if (!v24)
  {
    return result;
  }

  if (!*(a6 + 414))
  {
LABEL_17:
    v30 = *(a6 + 488);
    v31 = v30 >= a5;
    v32 = v30 - a5;
    if (v31)
    {
      result = 5;
      if (v32 < 0xFFFFFFFFFFFF0000 && v32 + 0x10000 <= *v17)
      {
        v33 = v32 + a6;
        if (v32 + a6)
        {
          v34 = 0;
          v35 = 0;
          v57[0] = MEMORY[0x1E69E9820];
          v57[1] = 0x40000000;
          v58 = ___xzm_introspect_enumerate_block_invoke;
          v59 = &unk_1E7260C18;
          v56 = a1;
          v67 = a1;
          v64 = a4;
          v65 = a3;
          v66 = v19;
          v68 = a7;
          v60 = a9;
          v61 = a10;
          v69 = v16;
          v36 = a2;
          v62 = a11;
          v63 = a2;
          while (1)
          {
            v37 = (*(v33 + v34) & 0x7FFFFFFF) << 14;
            if (v37 && v35 != v37)
            {
              result = v58(v57, v37);
              v35 = v37;
              if (result)
              {
                break;
              }
            }

            v34 += 4;
            if (v34 == 0x10000)
            {
              v39 = *(a6 + 496);
              if (v39 >> 62)
              {
                return 5;
              }

              v40 = *(a6 + 504);
              result = 0;
              v31 = v40 >= a5;
              v41 = v40 - a5;
              if (v31 && !__CFADD__(v41, 4 * v39))
              {
                v42 = v56;
                if (v41 + 4 * v39 <= *v17)
                {
                  result = 0;
                  v43 = v41 + a6;
                  if (v41 + a6)
                  {
                    if (v39)
                    {
                      v44 = v36;
                      v45 = 0;
                      while (1)
                      {
                        v46 = *(v43 + 4 * v45);
                        if (v46)
                        {
                          break;
                        }

LABEL_48:
                        result = 0;
                        if (++v45 >= v39)
                        {
                          return result;
                        }
                      }

                      v70 = 0;
                      result = v44(v42, v46 << 16, 0x10000, &v70);
                      if (!result)
                      {
                        v47 = 0;
                        v48 = v70;
                        while (1)
                        {
                          v49 = (*(v48 + v47) & 0x7FFFFFFF) << 14;
                          if (v49 && v35 != v49)
                          {
                            result = v58(v57, v49);
                            v35 = v49;
                            if (result)
                            {
                              break;
                            }
                          }

                          v47 += 4;
                          if (v47 == 0x10000)
                          {
                            v39 = *(a6 + 496);
                            v44 = v36;
                            v42 = v56;
                            goto LABEL_48;
                          }
                        }
                      }
                    }
                  }
                }
              }

              return result;
            }
          }
        }
      }

      return result;
    }

    return 5;
  }

  v26 = 0;
  v53 = a3 == a5;
  v54 = a7;
  v51 = v24;
  v52 = v19;
  while (1)
  {
    v27 = a1;
    v28 = a2;
    v29 = v24 + (v26 << 6);
    if (*(v29 + 24))
    {
      break;
    }

LABEL_16:
    ++v26;
    a2 = v28;
    a1 = v27;
    if (v26 >= v22)
    {
      goto LABEL_17;
    }
  }

  v55 = v26;
  while (1)
  {
    v70 = 0;
    result = v28(v27);
    if (result)
    {
      return result;
    }

    result = (*(a8 + 16))(a8, v70[1], *(v29 + 8), *(v29 + 4));
    if (result)
    {
      return result;
    }

    if (!*v70)
    {
      LODWORD(v22) = *(a6 + 414);
      v16 = v53;
      a7 = v54;
      v24 = v51;
      v19 = v52;
      v26 = v55;
      goto LABEL_16;
    }
  }
}

BOOL xzm_malloc_zone_claimed_address(uint64_t a1, uint64_t a2)
{
  if (mfm_claimed_address(a2))
  {
    return 1;
  }

  v5 = 0x4000;
  if (!((a2 & 0xF0FFFFFFFFFFFFFFLL) >> 36))
  {
    v5 = (a2 & 0xF0FFFFFFFFFFFFFFLL) >> 22;
  }

  if (v5 >> 14)
  {
    return 0;
  }

  v6 = *(a1 + 240);
  if (!v6)
  {
    v6 = a1;
  }

  v7 = *(v6 + 488);
  return v7 && (*(v7 + 4 * v5) & 0x7FFFFFFF) != 0;
}

uint64_t default_zone_malloc_claimed_address(uint64_t a1, uint64_t a2)
{
  v2 = lite_zone;
  if (!lite_zone)
  {
    v2 = *malloc_zones;
  }

  return malloc_zone_claimed_address(v2, a2);
}

uint64_t xzm_malloc_zone_malloc_type_malloc_slow(void *a1, unint64_t a2, unint64_t a3)
{
  v6 = malloc_get_thread_options() << 27;
  if (a2 <= 0x8000 && (a1[45] & 0x80) != 0)
  {
    if (a1[30])
    {
      v8 = a1[30];
    }

    else
    {
      v8 = a1;
    }

    if (*(v8 + 240))
    {
      v9 = *(v8 + 240);
    }

    else
    {
      v9 = v8;
    }

    v10 = __clz(a2 - 1);
    v11 = (((a2 - 1) >> (61 - v10)) & 3) - 4 * v10 + 488;
    if (a2 <= 0x80)
    {
      v11 = (__PAIR128__(a2 >> 4, a2 & 0xF) - 1) >> 64;
    }

    if (!a2)
    {
      LOBYTE(v11) = 0;
    }

    v12 = v11;
    v13 = *(v9[56] + v11);
    if (HIWORD(a3) == 256)
    {
      v14 = 0;
    }

    else if ((a3 & 0xC0000000000) == 0x40000000000)
    {
      v14 = 1;
    }

    else
    {
      v22 = *(v9[55] + v12);
      if ((v22 & 0xFE) == 2)
      {
        LOBYTE(v23) = 0;
      }

      else
      {
        v26 = dword_1ED40432C;
        if (a3)
        {
          v26 = a3;
        }

        v23 = v9[50] + v26 * v9[49];
        if (v22 == 6)
        {
          v23 = HIDWORD(v23) & 3;
        }

        else if (v22 == 5)
        {
          LODWORD(v23) = HIDWORD(v23) % 3;
        }

        else
        {
          v23 = HIDWORD(v23) & 1;
        }
      }

      v14 = v23 + 2;
    }

    v28 = (v14 + v13);
    v29 = v6 & 0x40000000;
LABEL_52:
    _xzm_xzone_malloc(v8, a2, v28, v29, v7);
    goto LABEL_53;
  }

  if (a2 <= 0x8000)
  {
    if (a1[30])
    {
      v16 = a1[30];
    }

    else
    {
      v16 = a1;
    }

    v17 = __clz(a2 - 1);
    v18 = (((a2 - 1) >> (61 - v17)) & 3) - 4 * v17 + 488;
    if (a2 <= 0x80)
    {
      v18 = (__PAIR128__(a2 >> 4, a2 & 0xF) - 1) >> 64;
    }

    if (!a2)
    {
      LOBYTE(v18) = 0;
    }

    v19 = v18;
    v20 = *(v16[56] + v18);
    if (HIWORD(a3) == 256)
    {
      v21 = 0;
    }

    else if ((a3 & 0xC0000000000) == 0x40000000000)
    {
      v21 = 1;
    }

    else
    {
      v24 = *(v16[55] + v19);
      if ((v24 & 0xFE) == 2)
      {
        LOBYTE(v25) = 0;
      }

      else
      {
        v27 = dword_1ED40432C;
        if (a3)
        {
          v27 = a3;
        }

        v25 = v16[50] + v27 * v16[49];
        if (v24 == 6)
        {
          v25 = HIDWORD(v25) & 3;
        }

        else if (v24 == 5)
        {
          LODWORD(v25) = HIDWORD(v25) % 3;
        }

        else
        {
          v25 = HIDWORD(v25) & 1;
        }
      }

      v21 = v25 + 2;
    }

    v28 = (v21 + v20);
    v29 = v6 & 0x40000000;
    v8 = a1;
    goto LABEL_52;
  }

  v15 = _xzm_malloc_large_huge(a1, a2, 0, a3, v6 & 0x40000000);
LABEL_53:
  v30 = v15;
  if (v15 && (a1[45] & 0x20) != 0)
  {
    _platform_memset();
  }

  return v30;
}

uint64_t ___xzm_introspect_enumerate_block_invoke(uint64_t a1, uint64_t a2)
{
  v18 = 0;
  result = (*(a1 + 56))(*(a1 + 88), a2, 14392, &v18);
  if (!result)
  {
    v17 = 0;
    result = (*(a1 + 56))(*(a1 + 88), *(v18 + 40), *(v18 + 12) << 14, &v17);
    if (!result)
    {
      result = (*(*(a1 + 32) + 16))();
      if (!result)
      {
        v6[0] = MEMORY[0x1E69E9820];
        v6[1] = 0x40000000;
        v6[2] = ___xzm_introspect_enumerate_block_invoke_2;
        v6[3] = &unk_1E7260BF0;
        v8 = v18;
        v9 = v17;
        v5 = *(a1 + 56);
        v10 = *(a1 + 64);
        v11 = *(a1 + 72);
        v15 = *(a1 + 92);
        v14 = *(a1 + 88);
        v12 = v5;
        v13 = a2;
        v16 = *(a1 + 93);
        v7 = *(a1 + 40);
        return xzm_segment_group_segment_foreach_span(v18, v6);
      }
    }
  }

  return result;
}

uint64_t (**find_registered_purgeable_zone(uint64_t a1))(void *, uint64_t)
{
  result = 0;
  if (!a1 || !malloc_num_zones)
  {
    return result;
  }

  if (lite_zone)
  {
    v3 = (*(lite_zone + 16))();
    if (v3)
    {
      goto LABEL_5;
    }
  }

  if (initial_num_zones)
  {
    v5 = 0;
    while (1)
    {
      v4 = *(malloc_zones + v5);
      v3 = v4[2](v4, a1);
      if (v3)
      {
        break;
      }

      if (++v5 >= initial_num_zones)
      {
        goto LABEL_11;
      }
    }

    if (!v5 && (has_injected_zone0 & 1) == 0)
    {
LABEL_5:
      v4 = default_zone;
      if (!default_zone)
      {
        return 0;
      }
    }
  }

  else
  {
LABEL_11:
    v6 = pFRZCounterLive;
    atomic_fetch_add(pFRZCounterLive, 1u);
    v7 = malloc_num_zones;
    v8 = initial_num_zones;
    if (initial_num_zones >= malloc_num_zones)
    {
LABEL_14:
      v4 = 0;
      v3 = 0;
    }

    else
    {
      while (1)
      {
        v4 = *(malloc_zones + v8);
        v3 = v4[2](v4, a1);
        if (v3)
        {
          break;
        }

        if (v7 == ++v8)
        {
          goto LABEL_14;
        }
      }
    }

    atomic_fetch_add(v6, 0xFFFFFFFF);
    if (!v4)
    {
      return 0;
    }
  }

  if (v3 < *MEMORY[0x1E69E9AC8])
  {
    return 0;
  }

  if (v3 % *MEMORY[0x1E69E9AC8])
  {
    return 0;
  }

  else
  {
    return v4;
  }
}

uint64_t malloc_zone_claimed_address(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (malloc_check_start)
  {
    internal_check();
  }

  if (*(a1 + 104) < 0xAu)
  {
    return 1;
  }

  v4 = *(a1 + 136);
  if (!v4)
  {
    return 1;
  }

  return v4(a1, a2);
}

void malloc_make_purgeable(void *ptr)
{
  if (find_registered_purgeable_zone(ptr))
  {
    v2 = 1;
    MEMORY[0x193ACDD50](*MEMORY[0x1E69E9A60], ptr, 0, &v2);
  }
}

uint64_t xzm_segment_group_segment_foreach_span(uint64_t a1, uint64_t a2)
{
  v3 = a1 + 2104;
  if (*(a1 + 20) != 1)
  {
    v7 = *(a1 + 16);
    if (!v7)
    {
      return 0;
    }

    v8 = v3 + 48 * v7;
    while (1)
    {
      v9 = *(v3 + 32) & 0xF;
      if ((v9 - 5) < 5)
      {
        break;
      }

      if (v9 == 2)
      {
        v10 = 1;
        goto LABEL_9;
      }

      v11 = 0;
      do
      {
        v12 = v3 + v11 + 48;
        v13 = *(v3 + v11 + 80) & 0xF;
        v14 = v13 > 8 || ((1 << v13) & 0x1E4) == 0;
        v11 += 48;
      }

      while (v14 && v13 != 9 && v12 < v8);
      result = (*(a2 + 16))(a2, v3, -1431655765 * (v11 >> 4));
      if (result)
      {
        return result;
      }

      v3 += v11;
LABEL_11:
      if (v3 >= v8)
      {
        return 0;
      }
    }

    v10 = *(v3 + 40);
LABEL_9:
    result = (*(a2 + 16))(a2, v3, v10);
    if (result)
    {
      return result;
    }

    v3 += 48 * v10;
    goto LABEL_11;
  }

  v4 = *(a1 + 2144);
  v5 = *(a2 + 16);

  return v5(a2, v3, v4);
}

uint64_t ___xzm_introspect_enumerate_block_invoke_2(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v4 = v3;
  v5 = v2;
  v82[2048] = *MEMORY[0x1E69E9840];
  v6 = *(v1 + 48);
  v7 = 0xAAAAAAAAAAAAC000 * ((v2 - v6 - 2104) >> 4);
  v8 = (v7 & 0x3FFFFFFFC000) + *(v6 + 40);
  v9 = *(v2 + 32) & 0xF;
  _ZF = v9 - 5 < 4 || v9 == 2;
  if (_ZF && (v11 = *(v1 + 64), *(v2 + 34) == *(v11 + 208)))
  {
    v12 = 0;
    if (v9 <= 6 && ((1 << v9) & 0x64) != 0)
    {
      v13 = *(v1 + 72);
      v14 = *(v11 + 216) + 96 * *(v2 + 33);
      if (v13 > v14)
      {
        return 5;
      }

      v17 = v14 - v13;
      _CF = __CFADD__(v14 - v13, 96);
      v19 = v14 - v13 + 96;
      v20 = _CF;
      v15 = 5;
      v12 = v17 + v11;
      if (!(v17 + v11) || (v20 & 1) != 0 || v19 > *(v1 + 80))
      {
        return v15;
      }
    }

    if (*(v1 + 108) == 1)
    {
      v21 = *(v1 + 96);
      v22 = *(v1 + 32);
      if (v9 > 6 || ((1 << v9) & 0x64) == 0)
      {
        v82[0] = (v7 & 0x3FFFFFFFC000) + *(v6 + 40);
        v82[1] = v3 << 14;
        return (*(v22 + 16))(v22, v21, v6, v5, v3, v8, 0, v82, 1);
      }

      v23 = *(v12 + 68);
      v15 = 5;
      if (v23 > 0x400)
      {
        return v15;
      }

      v24 = *(v12 + 48);
      v25 = v24;
      if ((v3 << 14) / v24 != v23)
      {
        return v15;
      }

      if (v9 == 5)
      {
        v70 = *(v1 + 32);
        v26 = *(v1 + 96);
        bzero(v82, 0x4000uLL);
        if (v23)
        {
          v27 = 0;
          v28 = 0;
          v29 = 0;
          v30 = *v5;
          v31 = v26;
          v32 = v70;
          do
          {
            if (((v30 >> v28) & 1) == 0)
            {
              v33 = &v82[2 * v29];
              *v33 = v8 + v27;
              v33[1] = v24;
              ++v29;
            }

            ++v28;
            v27 += v24;
          }

          while (v23 != v28);
LABEL_68:
          v29 = v29;
          return (*(v32 + 16))(v32, v31, v6, v5, v4, v8, v12, v82, v29);
        }

        v29 = 0;
        v31 = v26;
        v32 = v70;
        return (*(v32 + 16))(v32, v31, v6, v5, v4, v8, v12, v82, v29);
      }

      v38 = *v5;
      if ((~*v5 & 0x7FELL) == 0)
      {
        return (*(v22 + 16))(v22, v21, v6, v5, v3, v8, v12, 0, 0);
      }

      v68 = *(v1 + 96);
      v69 = v7 + *(v1 + 56);
      v71 = *(v1 + 32);
      v67 = *(v1 + 104);
      v66 = *(v1 + 88);
      bzero(v82, 0x4000uLL);
      v39 = 0;
      if (v24 <= 0x1000uLL)
      {
        v40 = 4;
      }

      else
      {
        v40 = 10;
      }

      v41 = v24 >> v40;
      v42 = (v38 >> 11) & 0x7FF;
      v43 = v38 & 0x7FF;
      if (v43 <= 0x3FF && v42)
      {
        v39 = 0;
        v44 = malloc_has_sec_transition;
        do
        {
          if (v43 % v41)
          {
            break;
          }

          v45 = &v82[2 * (v43 / v41)];
          if (*v45)
          {
            break;
          }

          *v45 = 1;
          _X14 = (v43 << v40) + v69;
          if (v44)
          {
            __asm { LDG             X14, [X14] }
          }

          if (++v39 >= v42)
          {
            break;
          }

          v43 = *(_X14 + 8) & 0x7FFLL;
        }

        while (v43 < 0x400);
      }

      if ((v38 & 0xFC00000) != 0xFC00000)
      {
        v31 = v68;
        v32 = v71;
        if (v23 >= v42 && v39 < v42)
        {
          v23 = v23 - v42 + v39;
        }

        goto LABEL_63;
      }

      v15 = 5;
      if (v39 != v42)
      {
        return v15;
      }

      if (*(v11 + 240))
      {
        return v15;
      }

      v49 = *(v12 + 80);
      if (v49 >= *(v11 + 212))
      {
        return v15;
      }

      v65 = v40;
      v78 = 0;
      v79 = &v78;
      v80 = 0x2000000000;
      v81 = 0;
      v74 = 0;
      v75 = &v74;
      v76 = 0x2000000000;
      v77 = 0;
      v72[0] = MEMORY[0x1E69E9820];
      v72[1] = 0x40000000;
      v72[2] = ___xzm_introspect_freelist_chunk_blocks_block_invoke;
      v72[3] = &unk_1E7260C40;
      v73 = v49;
      v72[5] = &v74;
      v72[6] = v8;
      v72[4] = &v78;
      v50 = _xzm_introspect_enumerate_thread_caches(v67, v66, v11, v72);
      if ((v50 & 0xFFFFFEFF) != 0)
      {
        v15 = v50;
      }

      else if (v79[3])
      {
        v56 = 0;
        v57 = v75[3];
        v58 = *(v57 + 18);
        if (*(v57 + 18))
        {
          v59 = *(v57 + 16);
          if (v59 <= 0x3FF)
          {
            v56 = 0;
            v60 = malloc_has_sec_transition;
            do
            {
              if (v59 % v41)
              {
                break;
              }

              v61 = &v82[2 * (v59 / v41)];
              if (*v61)
              {
                break;
              }

              *v61 = 1;
              _X13 = (v59 << v65) + v69;
              if (v60)
              {
                __asm { LDG             X13, [X13] }
              }

              if (++v56 >= v58)
              {
                break;
              }

              v59 = *(_X13 + 8) & 0x7FFLL;
            }

            while (v59 < 0x400);
          }
        }

        _CF = v56 >= v58;
        v63 = v56 - v58;
        if (_CF || v58 > v23)
        {
          v63 = 0;
        }

        v23 += v63;
        v15 = 5;
        v51 = 1;
LABEL_87:
        _Block_object_dispose(&v74, 8);
        _Block_object_dispose(&v78, 8);
        v31 = v68;
        v32 = v71;
        if ((v51 & 1) == 0)
        {
          return v15;
        }

LABEL_63:
        v29 = 0;
        if (v23)
        {
          v52 = v82;
          v53 = v8;
          do
          {
            v54 = *v52;
            v52 += 16;
            if ((v54 & 1) == 0)
            {
              v55 = &v82[2 * v29];
              *v55 = v53;
              v55[1] = v25;
              ++v29;
            }

            v53 += v25;
            --v23;
          }

          while (v23);
          goto LABEL_68;
        }

        return (*(v32 + 16))(v32, v31, v6, v5, v4, v8, v12, v82, v29);
      }

      v51 = 0;
      goto LABEL_87;
    }

    return (*(*(v1 + 32) + 16))(*(v1 + 32), *(v1 + 96), v6, v2, v3, v8, v12, 0, 0);
  }

  else
  {
    if (*(v1 + 109) != 1 || *(v2 + 34))
    {
      return 0;
    }

    v34 = *(v1 + 96);
    v35 = *(*(v1 + 40) + 16);
    v36 = *(v1 + 40);

    return v35(v36, v34, v6, v5, v3, v8);
  }
}

uint64_t __xzm_statistics_block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7)
{
  v7 = a5 << 14;
  v8 = *(a4 + 32) & 0xF;
  if (v8 != 6)
  {
    if (v8 == 5)
    {
      v10 = *(a4 + 4);
LABEL_8:
      v9 = *(a1 + 32);
      *v9 += v10;
      v11 = *(v9 + 8) + *(a7 + 48) * v10;
LABEL_10:
      *(v9 + 8) = v11;
      goto LABEL_11;
    }

    if (v8 != 2)
    {
      v9 = *(a1 + 32);
      ++*v9;
      v11 = *(v9 + 8) + v7;
      goto LABEL_10;
    }
  }

  if ((~*a4 & 0x7FE) != 0)
  {
    v10 = *(a7 + 68) - ((*a4 >> 11) & 0x7FFu);
    goto LABEL_8;
  }

  v9 = *(a1 + 32);
LABEL_11:
  *(v9 + 24) += v7;
  return 0;
}

void malloc_report(uint64_t a1, const char *a2, ...)
{
  va_start(va, a2);
  if (malloc_error_sleep)
  {
    v3 = 3600;
  }

  else
  {
    v3 = 0;
  }

  malloc_vreport(a1, v3, 0, 0, a2, va);
}

void malloc_vreport(uint64_t a1, unsigned int a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v54 = *MEMORY[0x1E69E9840];
  v11 = _simple_salloc();
  if (v11)
  {
    v12 = v11;
    if ((a1 & 0x20) == 0)
    {
      v13 = (_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) - 224);
      v14 = getprogname();
      v15 = getpid();
      _simple_sprintf(v12, "%s(%d,%p) malloc: ", v14, v15, v13);
    }

    if (a3)
    {
      _simple_sprintf(v12, a3, a4);
    }

    _simple_vsprintf();
    if ((a1 & 0x100) != 0)
    {
      v53 = 0u;
      v52 = 0u;
      v51 = 0u;
      v50 = 0u;
      v49 = 0u;
      v48 = 0u;
      v47 = 0u;
      v46 = 0u;
      v45 = 0u;
      v44 = 0u;
      v43 = 0u;
      v42 = 0u;
      v41 = 0u;
      v40 = 0u;
      v39 = 0u;
      v38 = 0u;
      v37 = 0u;
      v36 = 0u;
      v35 = 0u;
      v34 = 0u;
      v33 = 0u;
      v32 = 0u;
      v31 = 0u;
      v30 = 0u;
      *array = 0u;
      v16 = backtrace(array, 50);
      if (v16)
      {
        v17 = v16;
        backtrace_image_offsets(array, &image_offsets, v16);
        if (v17 >= 1)
        {
          v18 = 0;
          p_image_offsets = &image_offsets;
          do
          {
            *uu1 = 0;
            v27 = 0;
            if (!v18 || uuid_compare(uu1, p_image_offsets->uuid))
            {
              uuid_copy(uu1, p_image_offsets->uuid);
              memset(out, 0, 37);
              uuid_unparse(p_image_offsets->uuid, out);
            }

            _simple_sappend();
            _simple_sprintf(v12, "+%u,", p_image_offsets->offset);
            ++v18;
            ++p_image_offsets;
          }

          while (v17 != v18);
        }
      }
    }

    if ((a1 & 0x200) == 0 && (debug_mode == 2 || debug_mode == 1 && (a1 & 0x40) != 0))
    {
      _simple_put();
    }

    if (!(_malloc_no_asl_log | a1 & 0x10))
    {
      _simple_string();
      _simple_asl_log();
    }

    if ((a1 & 0x40) != 0)
    {
      v20 = _simple_string();
    }

    else
    {
      _simple_sfree();
      v20 = 0;
    }
  }

  else
  {
    if ((a1 & 0x200) == 0 && (debug_mode == 2 || debug_mode == 1 && (a1 & 0x40) != 0))
    {
      if ((a1 & 0x20) == 0)
      {
        v21 = (_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) - 224);
        v22 = getprogname();
        v23 = getpid();
        _simple_dprintf(2, "%s(%d,%p) malloc: ", v22, v23, v21);
      }

      if (a3)
      {
        _simple_dprintf(2, a3, a4);
      }

      _simple_vdprintf();
    }

    if ((a1 & 0x40) != 0)
    {
      v20 = a5;
    }

    else
    {
      v20 = 0;
    }
  }

  if ((a1 & 0xC0) != 0)
  {
    _malloc_put(a1, "*** set a breakpoint in malloc_error_break to debug\n");
    malloc_error_break();
    if (malloc_error_stop == 1)
    {
      _malloc_put(5, "*** sending SIGSTOP to help debug\n");
      v24 = getpid();
      kill(v24, 17);
    }

    else if (a2)
    {
      _malloc_put(5, "*** sleeping to help debug\n");
      sleep(a2);
    }
  }

  if ((a1 & 0x40) != 0)
  {
    qword_1EAC7F640 = v20;
    abort();
  }
}

void mfm_unlock()
{
  v0 = mfm_arena;
  if (mfm_arena)
  {
    v1 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
    v2 = v1;
    atomic_compare_exchange_strong_explicit(v0, &v2, 0, memory_order_release, memory_order_relaxed);
    if (v2 != v1)
    {
      os_unfair_lock_unlock(v0);
    }
  }
}

void *reallocarray_DARWIN_EXTSN(void *a1, unint64_t a2, unint64_t a3)
{
  if (is_mul_ok(a2, a3))
  {
    return j__realloc(a1, a2 * a3);
  }

  **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8) = 12;
  return 0;
}

size_t malloc_zone_pressure_relief(malloc_zone_t *zone, size_t goal)
{
  if (!zone)
  {
    v6 = 0;
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    atomic_compare_exchange_strong_explicit(&_malloc_lock, &v6, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
    if (v6)
    {
      os_unfair_lock_lock_with_options();
    }

    v8 = malloc_num_zones;
    if (malloc_num_zones)
    {
      v5 = 0;
      v9 = 0;
      do
      {
        v10 = v9;
        v11 = v9 + 1;
        while (1)
        {
          v12 = *(malloc_zones + v10);
          if (*(v12 + 104) > 7u)
          {
            v13 = *(v12 + 128);
            if (v13)
            {
              break;
            }
          }

          ++v10;
          ++v11;
          if (v10 >= v8)
          {
            goto LABEL_22;
          }
        }

        if (goal && goal <= v5)
        {
          break;
        }

        v9 = v10 + 1;
        v5 += v13();
        v8 = malloc_num_zones;
      }

      while (malloc_num_zones > v11);
    }

    else
    {
      v5 = 0;
    }

LABEL_22:
    v14 = *(StatusReg + 24);
    v15 = v14;
    atomic_compare_exchange_strong_explicit(&_malloc_lock, &v15, 0, memory_order_release, memory_order_relaxed);
    if (v15 != v14)
    {
      os_unfair_lock_unlock(&_malloc_lock);
    }

    return v5;
  }

  if (zone->version < 8)
  {
    return 0;
  }

  pressure_relief = zone->pressure_relief;
  if (!pressure_relief)
  {
    return 0;
  }

  return pressure_relief();
}

uint64_t _xzm_reclaim_is_reusable(void *a1, uint64_t a2)
{
  if (mach_vm_reclaim_query_state())
  {
    _xzm_reclaim_is_reusable_cold_1();
  }

  return mach_vm_reclaim_is_reusable();
}

uint64_t _xzm_segment_group_cache_mark_used(uint64_t a1, uint64_t a2)
{
  _xzm_reclaim_mark_used(*(*(a1 + 24) + 568), *(a2 + 48), *(a2 + 40), *(a2 + 12) << 14, 0);
  is_reusable = mach_vm_reclaim_is_reusable();
  if (is_reusable)
  {
    *(a2 + 48) = -1;
    --*(a1 + 482);
    v5 = *(a2 + 24);
    v6 = *(a2 + 32);
    v7 = (a1 + 472);
    if (v5)
    {
      v7 = (v5 + 32);
    }

    *v7 = v6;
    *v6 = v5;
  }

  else
  {
    --*(a1 + 482);
    v8 = *(a2 + 24);
    v9 = *(a2 + 32);
    v10 = (a1 + 472);
    if (v8)
    {
      v10 = (v8 + 32);
    }

    *v10 = v9;
    *v9 = v8;
    xzm_metapool_free(*(*(a1 + 24) + 480), a2);
  }

  return is_reusable;
}

int malloc_make_nonpurgeable(void *ptr)
{
  registered_purgeable_zone = find_registered_purgeable_zone(ptr);
  if (registered_purgeable_zone)
  {
    v4 = 0;
    MEMORY[0x193ACDD50](*MEMORY[0x1E69E9A60], ptr, 0, &v4);
    if (v4 == 2)
    {
      LODWORD(registered_purgeable_zone) = 14;
    }

    else
    {
      LODWORD(registered_purgeable_zone) = 0;
    }
  }

  return registered_purgeable_zone;
}

void _malloc_create_purgeable_zone()
{
  if (initial_xzone_zone && purgeable_zone_use_xzm == 1)
  {
    purgeable_zone = xzm_malloc_zone_create(malloc_debug_flags | 0x80u, initial_xzone_zone);
  }

  else
  {
    v1 = initial_scalable_zone;
    if (!initial_scalable_zone)
    {
      initial_scalable_zone = create_scalable_zone(0, malloc_debug_flags);
      malloc_set_zone_name(initial_scalable_zone, "DefaultScalableMallocZone");
      malloc_zone_register(initial_scalable_zone);
      v1 = initial_scalable_zone;
    }

    purgeable_zone = create_purgeable_zone(0, v1, malloc_debug_flags);
  }

  default_purgeable_zone = purgeable_zone;
  malloc_zone_register(purgeable_zone);
  v2 = default_purgeable_zone;

  malloc_set_zone_name(v2, "DefaultPurgeableMallocZone");
}

uint64_t xzm_segment_group_try_realloc_huge_chunk(unsigned __int8 *a1, uint64_t a2, unint64_t a3, uint64_t a4, unsigned int a5)
{
  v8 = *(a4 + 40);
  if (a5 <= v8)
  {
    if (v8 <= a5)
    {
      return 1;
    }

    v12 = *(a3 + 12);
    if (v12 == a5)
    {
      return 1;
    }

    v13 = *(a3 + 40);
    v14 = v13 + (v12 << 14);
    v15 = v13 + (a5 << 14);
    if (v15 >= v14)
    {
      return 1;
    }

    v16 = (v15 + 0x3FFFFF) & 0xFFFFFFFFFFC00000;
    v17 = *(*(a1 + 3) + 480);
    v18 = xzm_metapool_alloc(v17);
    v19 = v14 - v16;
    if (v14 > v16)
    {
      v20 = *(a3 + 40) + (*(a3 + 12) << 14);
      if (v20 > v16)
      {
        v21 = *(a1 + 3);
        v22 = (v15 + 0x3FFFFF) & 0xFFFFFFFFFFC00000;
        do
        {
          v23 = v22 >> 22;
          if (v22 >> 36)
          {
            v23 = 0x4000;
          }

          if (v23 >> 14)
          {
            v24 = 0;
          }

          else
          {
            v24 = (*(v21 + 488) + 4 * v23);
          }

          *v24 = 0;
          v22 += 0x400000;
        }

        while (v22 < v20);
      }
    }

    v25 = 0;
    v55 = a5 << 14;
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    atomic_compare_exchange_strong_explicit(a1 + 122, &v25, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
    if (v25)
    {
      os_unfair_lock_lock_with_options();
      v19 = v14 - v16;
    }

    v27 = v14 - v15;
    if (v14 <= v16 || v19 <= 0x200000 || *(a1 + 241) >= *(a1 + 240))
    {
      v46 = *(StatusReg + 24);
      v47 = v46;
      atomic_compare_exchange_strong_explicit(a1 + 122, &v47, 0, memory_order_release, memory_order_relaxed);
      if (v47 != v46)
      {
        os_unfair_lock_unlock(a1 + 122);
      }

      xzm_metapool_free(v17, v18);
      v31 = v55;
    }

    else
    {
      v28 = v19;
      _xzm_segment_group_init_segment(a1, v18, (v15 + 0x3FFFFF) & 0xFFFFFFFFFFC00000, v19, 1, 0);
      _xzm_segment_group_cache_mark_free(a1, v18);
      v29 = *(StatusReg + 24);
      v30 = v29;
      atomic_compare_exchange_strong_explicit(a1 + 122, &v30, 0, memory_order_release, memory_order_relaxed);
      if (v30 != v29)
      {
        os_unfair_lock_unlock(a1 + 122);
      }

      v31 = v55;
      if (v15 >= v16)
      {
        goto LABEL_58;
      }

      v27 -= v28;
    }

    mvm_deallocate_plat(v15, v27, 0);
LABEL_58:
    v40 = 1;
    _xzm_segment_group_init_segment(a1, a3, *(a3 + 40), v31, 1, 0);
    return v40;
  }

  v10 = *(a4 + 32) & 0xF;
  if (v10 > 6)
  {
    if (v10 - 7 >= 2)
    {
      goto LABEL_65;
    }

    v11 = v8 << 14;
  }

  else
  {
    switch(v10)
    {
      case 2u:
        v11 = 0x4000;
        break;
      case 5u:
        v11 = 0x10000;
        break;
      case 6u:
        v11 = 0x20000;
        break;
      default:
LABEL_65:
        xzm_chunk_mark_free_cold_1(v10);
    }
  }

  _X27 = ((0xAAAAAAAAAAAAC000 * (((a4 & 0x3FFF) - 2104) >> 4)) & 0x3FFFFFFFC000) + *((a4 & 0xFFFFFFFFFFFFC000) + 0x28);
  v33 = a5 - v8;
  v34 = (_X27 + v11 + 0x3FFFFF) & 0xFFFFFFFFFFC00000;
  v35 = _X27 + v11 + (v33 << 14);
  if (v34 < v35)
  {
    v36 = (_X27 + v11 + 0x3FFFFF) & 0xFFFFFFFFFFC00000;
    do
    {
      v37 = v36 >> 22;
      if (v36 >> 36)
      {
        v37 = 0x4000;
      }

      if (!(v37 >> 14))
      {
        v38 = *(*(a1 + 3) + 488);
        if (v38)
        {
          if ((*(v38 + 4 * v37) & 0x7FFFFFFF) != 0)
          {
            return 0;
          }
        }
      }

      v36 += 0x400000;
    }

    while (v36 < v35);
  }

  v39 = v33 << 14;
  if (!mvm_allocate_plat(_X27 + v11, v39, 0, 0, 0, 6))
  {
    return 0;
  }

  v40 = 1;
  _xzm_segment_group_init_segment(a1, a3, *(a3 + 40), a5 << 14, 1, 0);
  if (_X27 + (a5 << 14) > v34)
  {
    if (*(a2 + 240))
    {
      v41 = *(a2 + 240);
    }

    else
    {
      v41 = a2;
    }

    _xzm_segment_table_allocated_at(v41, (_X27 + v11 + 0x3FFFFF) & 0xFFFFFFFFFFC00000, a3, 0);
    v42 = *a1;
    if (v42 >= 4)
    {
      xzm_segment_group_alloc_chunk_cold_1(v42);
    }

    v43 = *(a1 + 3);
    if (*(v43 + 368) == 1)
    {
      v44 = 16;
      if (((v42 - 1) & 0xFE) == 0)
      {
        v44 = 32769;
      }

      v45 = *(v43 + 376);
      if (v45 < v44 || ((0xCu >> (v42 & 0xF)) & 1) != 0)
      {
        if (v45 < v44)
        {
          return v40;
        }
      }

      else if ((*(v43 + 369) & 1) == 0)
      {
        return v40;
      }

      __asm { LDG             X27, [X27] }

      v53 = _X27 + v11;
      do
      {
        __asm
        {
          DC              GVA, X8
          DC              GVA, X10
          DC              GVA, X10
          DC              GVA, X10
          DC              GVA, X10
          DC              GVA, X10
          DC              GVA, X10
          DC              GVA, X10
        }

        v53 += 512;
      }

      while (v53 < _X27 + v11 + v39);
      return 1;
    }
  }

  return v40;
}

void xzm_malloc_zone_free_slow(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return;
  }

  _X21 = a2 & 0xF0FFFFFFFFFFFFFFLL;
  if ((a2 & 0xF0FFFFFFFFFFFFFFLL) >> 36)
  {
    v5 = 0x4000;
  }

  else
  {
    v5 = (a2 & 0xF0FFFFFFFFFFFFFFLL) >> 22;
  }

  if (v5 >> 14)
  {
    goto LABEL_30;
  }

  v6 = *(a1 + 240);
  if (!v6)
  {
    v6 = a1;
  }

  v7 = *(v6 + 488);
  if (!v7)
  {
    goto LABEL_30;
  }

  v8 = (*(v7 + 4 * v5) & 0x7FFFFFFF) << 14;
  if (!v8)
  {
    goto LABEL_30;
  }

  v9 = a2 - *(v8 + 40);
  if (*(v8 + 16) <= (v9 >> 14))
  {
    goto LABEL_30;
  }

  v10 = v9 >> 14;
  v11 = v8 + 48 * v10 + 2104;
  if ((*(v8 + 48 * v10 + 2136) & 0xF) == 4)
  {
    v41 = v8 + 48 * v10 + 2104 - *(v8 + 48 * v10 + 2140);
    v42 = *(v41 + 32) & 0xF;
    if (v42 <= 9)
    {
      v43 = 1 << v42;
      if ((v43 & 0x3E8) != 0)
      {
        if (v41 + 48 * *(v41 + 40) <= v11)
        {
          goto LABEL_12;
        }

LABEL_101:
        v11 -= *(v11 + 36);
        goto LABEL_12;
      }

      if ((v43 & 6) != 0 && v11 == v41)
      {
        goto LABEL_101;
      }
    }
  }

LABEL_12:
  v12 = *(v11 + 32) & 0xF;
  if (v12 > 8)
  {
    _xzm_segment_group_segment_span_free_coalesce_cold_4(v12);
  }

  if (((1 << v12) & 0x1E4) == 0 || *(v11 + 34) != *(a1 + 208))
  {
    goto LABEL_30;
  }

  v13 = _X21 - (((0xAAAAAAAAAAAAC000 * (((v11 & 0x3FFF) - 2104) >> 4)) & 0x3FFFFFFFC000) + *((v11 & 0xFFFFFFFFFFFFC000) + 0x28));
  if (v12 > 6 || ((1 << v12) & 0x64) == 0)
  {
    v16 = *(v11 + 40) << 14;
    if (v13 % v16)
    {
      goto LABEL_30;
    }
  }

  else
  {
    v15 = *(a1 + 216) + 96 * *(v11 + 33);
    if ((*(v15 + 64) * v13) >= *(v15 + 64))
    {
      goto LABEL_30;
    }

    v16 = *(v15 + 48);
  }

  _X22 = _X21;
  if (*(a1 + 368) == 1)
  {
    __asm { LDG             X22, [X21] }

    if (((_X22 ^ a2) & 0xF00000000000000) != 0)
    {
      goto LABEL_30;
    }
  }

  if (v12 != 6)
  {
    if (v12 != 5)
    {
      if (v12 != 2)
      {
        goto LABEL_66;
      }

      goto LABEL_26;
    }

    if (((*v11 >> (v13 / v16)) & 1) == 0)
    {
      goto LABEL_66;
    }

LABEL_30:
    v16 = _xzm_ptr_size_outlined(a1, a2);
    goto LABEL_31;
  }

LABEL_26:
  if (*(v11 + 12) == 1)
  {
    __asm { MSR             TCO, #1 }

    v22 = *_X22;
    __asm { MSR             TCO, #0 }
  }

  else
  {
    v22 = *_X22;
  }

  v38 = *(a1 + 320) ^ _X22;
  if (v12 == 6)
  {
    v38 &= 0xF0FFFFFFFFFFFFFFLL;
  }

  if (v22 == v38)
  {
    v52 = v16;
    is_free_slow = _xzm_xzone_freelist_chunk_block_is_free_slow(a1, v11, _X22);
    v16 = v52;
    if (is_free_slow)
    {
      goto LABEL_30;
    }
  }

LABEL_66:
  if (_X22 != a2)
  {
    v16 = v16 - a2 + _X22;
  }

LABEL_31:
  if (v16)
  {
    v24 = 0;
    goto LABEL_71;
  }

  if ((*(a1 + 360) & 0x80) == 0)
  {
LABEL_112:
    xzm_malloc_zone_free_slow_cold_3(a2);
  }

  if (*(a1 + 240))
  {
    v24 = *(a1 + 240);
  }

  else
  {
    v24 = a1;
  }

  if (v5 >> 14)
  {
    goto LABEL_69;
  }

  v25 = *(v24 + 240);
  if (!v25)
  {
    v25 = v24;
  }

  v26 = *(v25 + 488);
  if (!v26)
  {
    goto LABEL_69;
  }

  v27 = (*(v26 + 4 * v5) & 0x7FFFFFFF) << 14;
  if (!v27)
  {
    goto LABEL_69;
  }

  v28 = a2 - *(v27 + 40);
  if (*(v27 + 16) <= (v28 >> 14))
  {
    goto LABEL_69;
  }

  v29 = v28 >> 14;
  v30 = v27 + 48 * v29 + 2104;
  if ((*(v27 + 48 * v29 + 2136) & 0xF) == 4)
  {
    v44 = v27 + 48 * v29 + 2104 - *(v27 + 48 * v29 + 2140);
    v45 = *(v44 + 32) & 0xF;
    if (v45 <= 9)
    {
      v46 = 1 << v45;
      if ((v46 & 0x3E8) != 0)
      {
        if (v44 + 48 * *(v44 + 40) <= v30)
        {
          goto LABEL_44;
        }

LABEL_109:
        v30 -= *(v30 + 36);
        goto LABEL_44;
      }

      if ((v46 & 6) != 0 && v30 == v44)
      {
        goto LABEL_109;
      }
    }
  }

LABEL_44:
  v31 = *(v30 + 32) & 0xF;
  if (v31 > 8)
  {
    _xzm_segment_group_segment_span_free_coalesce_cold_4(v31);
  }

  if (((1 << v31) & 0x1E4) == 0 || *(v30 + 34) != *(v24 + 208))
  {
    goto LABEL_69;
  }

  v32 = _X21 - *((v30 & 0xFFFFFFFFFFFFC000) + 0x28) - ((0xAAAAAAAAAAAAC000 * (((v30 & 0x3FFF) - 2104) >> 4)) & 0x3FFFFFFFC000);
  if (v31 > 6 || ((1 << v31) & 0x64) == 0)
  {
    v16 = *(v30 + 40) << 14;
    if (v32 % v16)
    {
      goto LABEL_69;
    }
  }

  else
  {
    v34 = *(v24 + 216) + 96 * *(v30 + 33);
    if ((*(v34 + 64) * v32) >= *(v34 + 64))
    {
      goto LABEL_69;
    }

    v16 = *(v34 + 48);
  }

  if (*(v24 + 368) == 1)
  {
    __asm { LDG             X21, [X21] }

    if (((_X21 ^ a2) & 0xF00000000000000) != 0)
    {
      goto LABEL_69;
    }
  }

  if (v31 != 6)
  {
    if (v31 != 5)
    {
      if (v31 != 2)
      {
        goto LABEL_86;
      }

      goto LABEL_58;
    }

    if (((*v30 >> (v32 / v16)) & 1) == 0)
    {
      goto LABEL_86;
    }

LABEL_69:
    v16 = _xzm_ptr_size_outlined(v24, a2);
    goto LABEL_70;
  }

LABEL_58:
  if (*(v30 + 12) == 1)
  {
    __asm { MSR             TCO, #1 }

    v36 = *_X21;
    __asm { MSR             TCO, #0 }
  }

  else
  {
    v36 = *_X21;
  }

  v40 = *(v24 + 320) ^ _X21;
  if (v31 == 6)
  {
    v40 &= 0xF0FFFFFFFFFFFFFFLL;
  }

  if (v36 == v40)
  {
    v50 = v16;
    v51 = _xzm_xzone_freelist_chunk_block_is_free_slow(v24, v30, _X21);
    v16 = v50;
    if (v51)
    {
      goto LABEL_69;
    }
  }

LABEL_86:
  if (_X21 != a2)
  {
    v16 = v16 - a2 + _X21;
  }

LABEL_70:
  if (!v16)
  {
    goto LABEL_112;
  }

LABEL_71:
  if (v16 >= 0x401 && (*(a1 + 360) & 0x20) != 0)
  {
    _platform_memset();
  }

  if (v24)
  {
    v39 = v24;
  }

  else
  {
    v39 = a1;
  }

  _xzm_free(v39, a2, 0);
}

__n128 pgm_statistics(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16684);
  v3 = *MEMORY[0x1E69E9AC8] * v2;
  *a2 = v2;
  result = *(a1 + 16696);
  *(a2 + 8) = result;
  *(a2 + 24) = v3;
  return result;
}

uint64_t allocate(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v3 = MEMORY[0x1E69E9AC8];
  v4 = *MEMORY[0x1E69E9AC8];
  if (*MEMORY[0x1E69E9AC8] < a2)
  {
    purgeable_ptr_in_use_enumerator_cold_1();
  }

  if (a3 < 0x10 || v4 < a3)
  {
    purgeable_ptr_in_use_enumerator_cold_1();
  }

  if ((a3 ^ (a3 - 1)) <= a3 - 1)
  {
    purgeable_ptr_in_use_enumerator_cold_1();
  }

  v7 = a1 + 0x4000;
  if (*(a1 + 16684) == *(a1 + 212))
  {
    return 0;
  }

  if (a2)
  {
    v9 = (a2 + 15) & 0xFFFFFFFFFFFFFFF0;
  }

  else
  {
    v9 = 16;
  }

  v10 = *(a1 + 16692);
  v11 = *(a1 + 280);
  v12 = *(v11 + 8 * v10) & 3;
  v13 = *(a1 + 208);
  while (v12 == 1)
  {
    LODWORD(v10) = (v10 + 1) % v13;
    v12 = *(v11 + 8 * v10) & 3;
  }

  *(a1 + 16692) = (v10 + 1) % v13;
  LODWORD(v14) = *(a1 + 16688);
  if (v14 >= *(a1 + 216))
  {
    v14 = *(v11 + 8 * v10) >> 2;
    if (*(*(a1 + 288) + (v14 << 8)) != v10)
    {
      do
      {
        v15 = *(a1 + 216);
        if (!v15)
        {
          purgeable_ptr_in_use_enumerator_cold_1();
        }

        v16 = arc4random_uniform(v15);
      }

      while ((*(*(a1 + 280) + 8 * *(*(a1 + 288) + (v16 << 8))) & 3) != 2);
      v4 = *v3;
      LODWORD(v14) = v16;
    }
  }

  else
  {
    *(a1 + 16688) = v14 + 1;
  }

  if (v4 < v9)
  {
    purgeable_ptr_in_use_enumerator_cold_1();
  }

  if (v4 < a3)
  {
    purgeable_ptr_in_use_enumerator_cold_1();
  }

  if ((v4 ^ (v4 - 1)) <= v4 - 1)
  {
    purgeable_ptr_in_use_enumerator_cold_1();
  }

  v17 = *(a1 + 224);
  if (v17 >= 0x65)
  {
    purgeable_ptr_in_use_enumerator_cold_1();
  }

  v18 = arc4random_uniform(0x64u);
  if (*(a1 + 208) <= v10)
  {
    purgeable_ptr_in_use_enumerator_cold_1();
  }

  if (v18 >= v17)
  {
    v19 = (v4 - v9) & -a3;
  }

  else
  {
    v19 = 0;
  }

  v20 = *(a1 + 248) + *v3 * ((2 * v10) | 1u);
  my_vm_protect(v20, *v3, 3);
  v21 = *(a1 + 280) + 8 * v10;
  *v21 = (4 * v14) | 1;
  *(v21 + 4) = v9;
  *(v21 + 6) = v19;
  v22 = *(a1 + 288) + (v14 << 8);
  *v22 = v10;
  *(v22 + 4) = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) - 8);
  *(v22 + 12) = mach_absolute_time();
  *(v22 + 30) = 0;
  *(v22 + 22) = 0;
  *(v22 + 38) = 0;
  *(v22 + 20) = trace_collect(v22 + 40, 216);
  ++*(v7 + 300);
  v23 = *(a1 + 16696) + v9;
  *(a1 + 16696) = v23;
  if (v23 <= *(a1 + 16704))
  {
    v23 = *(a1 + 16704);
  }

  *(a1 + 16704) = v23;
  v8 = v20 + v19;
  debug_zone(a1, "allocated", v8);
  return v8;
}

uint64_t trace_collect(uint64_t a1, uint64_t a2)
{
  v15[65] = *MEMORY[0x1E69E9840];
  v4 = backtrace(v15, 65);
  if (v4 < 2)
  {
    return 0;
  }

  v6 = 0;
  v7 = 0;
  v8 = v4 - 1;
  while (2)
  {
    if (v6)
    {
      v9 = v15[v6];
    }

    else
    {
      v9 = 0;
    }

    v10 = v15[v6 + 1] - v9;
    v11 = 2 * (v10 / 4);
    if (v10 < -3)
    {
      v11 = ~v11;
    }

    v12 = (a1 + v7);
    result = v7;
    do
    {
      if (a2 == result)
      {
        return v7;
      }

      v13 = v11;
      *v12++ = v11 & 0x7F;
      ++result;
      v14 = v11 > 0x7F;
      v11 >>= 7;
    }

    while (v14);
    *(v12 - 1) = v13 | 0x80;
    ++v6;
    v7 = result;
    if (v6 != v8)
    {
      continue;
    }

    break;
  }

  return result;
}

uint64_t debug_zone(uint64_t result, const char *a2, uint64_t a3)
{
  if (*(result + 228) == 1)
  {
    v5 = result;
    v6 = mach_absolute_time();
    v7 = v6 - *(v5 + 16712);
    info = 0;
    mach_timebase_info(&info);
    if (*(v5 + 232) <= v7 * info.numer / info.denom / 0xF4240)
    {
      *(v5 + 16712) = v6;
      malloc_report(6, "ProbGuard: %9s 0x%llx, fill state: %3u/%u\n", a2, a3, *(v5 + 16684), *(v5 + 212));
    }

    result = pgm_check(v5);
    if (!result)
    {
      debug_zone_cold_1(a3);
    }
  }

  return result;
}

void pgm_size_cold_1(uint64_t a1, unint64_t a2, void *a3)
{
  OUTLINED_FUNCTION_0_0();
  v8 = (v6 + v7);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  atomic_compare_exchange_strong_explicit((v6 + v7), &v10, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
  if (v10)
  {
    os_unfair_lock_lock_with_options();
  }

  v11 = lookup_slot(v3, a2);
  if ((v11 & 0x8000000000000000) != 0)
  {
    v12 = *(*(v3 + 280) + 8 * v11 + 4);
  }

  else
  {
    v12 = 0;
  }

  v13 = *(StatusReg + 24);
  v14 = v13;
  atomic_compare_exchange_strong_explicit(v8, &v14, 0, memory_order_release, memory_order_relaxed);
  if (v14 != v13)
  {
    os_unfair_lock_unlock(v8);
  }

  *a3 = v12;
}

void pgm_free_cold_1(uint64_t a1, unint64_t a2)
{
  OUTLINED_FUNCTION_0_0();
  v6 = (v4 + v5);
  atomic_compare_exchange_strong_explicit((v4 + v5), &v7, *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24), memory_order_acquire, memory_order_acquire);
  if (v7)
  {
    os_unfair_lock_lock_with_options();
  }

  deallocate(v2, a2);
  OUTLINED_FUNCTION_1();
  if (!v8)
  {

    os_unfair_lock_unlock(v6);
  }
}

unint64_t lookup_slot(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 248);
  v3 = a2 - v2;
  if (a2 < v2 || (v4 = *(a1 + 256), v4 <= a2))
  {
    purgeable_ptr_in_use_enumerator_cold_1();
  }

  v5 = *MEMORY[0x1E69E9AC8];
  if (v2 % *MEMORY[0x1E69E9AC8])
  {
    purgeable_ptr_in_use_enumerator_cold_1();
  }

  if (v5 + v2 <= a2)
  {
    if (v4 - v5 <= a2)
    {
      v6 = *(a1 + 208) - 1;
    }

    else
    {
      v6 = ((v3 / v5) - 1) >> 1;
      if (((v3 / v5) & 1) == 0 && a2 % v5 >= v5 >> 1)
      {
        ++v6;
      }
    }
  }

  else
  {
    v6 = 0;
  }

  v8 = v6;
  v9 = *(a1 + 280) + 8 * v6;
  if ((v3 / v5))
  {
    v12 = *(v9 + 6);
    v13 = (a2 % v5);
    if (v13 == v12)
    {
      v11 = 0;
      v10 = 1;
    }

    else
    {
      v10 = 0;
      v14 = v13 < (*(v9 + 4) + v12) && v13 > v12;
      v11 = 0x200000000;
      if (v14)
      {
        v11 = 0x100000000;
      }
    }
  }

  else
  {
    v10 = 0;
    v11 = 0x300000000;
  }

  v15 = (v10 & ((*v9 & 3) == 1)) == 0;
  v16 = 0x8000000000000000;
  if (v15)
  {
    v16 = 0;
  }

  return v11 | v8 | v16;
}

uint64_t deallocate(uint64_t a1, unint64_t a2)
{
  v4 = lookup_slot(a1, a2);
  if ((v4 & 0x8000000000000000) == 0)
  {
    deallocate_cold_3(a2);
  }

  v5 = v4;
  v6 = *(a1 + 280);
  v7 = 8 * v4;
  v8 = *(v6 + v7);
  *(v6 + v7) = v8 & 0xFFFFFFFC | 2;
  v9 = *(a1 + 288) + ((v8 << 6) & 0x3FFFFFFF00);
  *(v9 + 22) = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) - 8);
  *(v9 + 30) = mach_absolute_time();
  if (*(v9 + 20) >= 0x6Cu)
  {
    v10 = 108;
  }

  else
  {
    v10 = *(v9 + 20);
  }

  *(v9 + 20) = v10;
  v11 = trace_collect(v9 + v10 + 40, 216 - v10);
  v12 = *(a1 + 16684);
  *(v9 + 38) = v11;
  *(a1 + 16684) = v12 - 1;
  *(a1 + 16696) -= *(*(a1 + 280) + v7 + 4);
  if (*(a1 + 208) <= v5)
  {
    purgeable_ptr_in_use_enumerator_cold_1();
  }

  v13 = MEMORY[0x1E69E9AC8];
  v14 = (*(a1 + 248) + *MEMORY[0x1E69E9AC8] * ((2 * (v5 & 0x7FFFFFFF)) | 1));
  if (madvise(v14, *MEMORY[0x1E69E9AC8], 7))
  {
    purgeable_ptr_in_use_enumerator_cold_1();
  }

  my_vm_protect(v14, *v13, 0);

  return debug_zone(a1, "freed", a2);
}

void _xzm_xzone_thread_cache_destructor(char *a1)
{
  v2 = *(a1 + 2);
  *(a1 + 4) = atomic_fetch_add_explicit((v2 + 544), 1uLL, memory_order_relaxed) + 1;
  if (*(v2 + 212) >= 2u)
  {
    v3 = 1;
    do
    {
      v4 = &a1[24 * v3 + 40];
      if (*(v4 + 8) <= 0x400u)
      {
        v5 = *(v2 + 216) + 96 * v3;
        v6 = *v4;
        v7 = *(v5 + 68);
        v8 = *(v4 + 9);
        v9 = **v4;
        v10 = *(v4 + 8) < 0x400u;
        do
        {
          v11 = v9;
          if ((v9 & 0x40000000) != 0)
          {
            do
            {
              _xzm_walk_lock_wait(v2);
              v11 = *v6;
            }

            while ((*v6 & 0x40000000) != 0);
          }

          v12 = ((v11 >> 11) & 0x7FF) + v8;
          if (v7 == (((v11 >> 11) & 0x7FF) + v8))
          {
            v13 = 0;
            v14 = v11 & 0xFFFFFFFFB0000000 | 0x7FF;
          }

          else if (((v11 >> 11) & 0x7FF) + v8)
          {
            v14 = v11 & 0xFFFFFFFFA00007FFLL | ((v12 & 0x7FF) << 11) | 0x10000000;
            v15 = v11 & 0x7FF;
            if (v15 == 1024)
            {
              v14 = v11 & 0xFFFFF00020000000 | ((v12 & 0x7FF) << 11) & 0xFFFFF000303FF800 | 0x10000000 | *(v4 + 8) & 0x7FF | ((*(v4 + 10) & 0x1FFF) << 31);
            }

            else if (v10)
            {
              v16 = *(*v4 + 8) >> 4;
              v17 = v11 >> 31;
              v18 = (v11 >> 11) & 0x7FF;
              for (i = 1; ; ++i)
              {
                _X30 = *(v4 + 1) + 16 * v15;
                if (*(*v4 + 12))
                {
                  __asm { LDG             X30, [X30] }
                }

                if (*_X30 != (*(v2 + 320) ^ _X30))
                {
                  _xzm_xzone_thread_cache_destructor_cold_1(*_X30);
                }

                v24 = *(_X30 + 8);
                if (v24 != (v24 & 0xFFFFFF | ((v17 & 0x1FFF) << 24) & 0xFFFFFFE000FFFFFFLL))
                {
                  _xzm_xzone_thread_cache_destructor_cold_2(*(_X30 + 8));
                }

                v15 = *(_X30 + 8) & 0x7FFLL;
                if (v15 == 1024)
                {
                  break;
                }

                if (v15 != (v15 / v16) * v16 || v15 > (*(*v4 + 10) - 1) * v16 || i >= v18)
                {
                  _xzm_xzone_thread_cache_destructor_cold_3(i);
                }

                v17 = v24 >> 11;
              }

              if (v18 != i)
              {
                _xzm_xzone_thread_cache_destructor_cold_4(i);
              }

              v10 = 0;
              *(_X30 + 8) = *(v4 + 8) & 0x7FF | ((*(v4 + 10) & 0x1FFF) << 11) & 0xFFFFFFE000FFFFFFLL | ((v17 & 0x1FFF) << 24) & 0xFFFFFFE000FFFFFFLL;
            }

            else
            {
              v10 = 0;
            }

            v13 = 1;
          }

          else
          {
            v13 = 0;
            v14 = v11 & 0xFFFFFFFFB03FFFFFLL;
          }

          v9 = v11;
          atomic_compare_exchange_strong_explicit(v6, &v9, v14, memory_order_release, memory_order_relaxed);
        }

        while (v9 != v11);
        if ((~v14 & 0x7FF) != 0)
        {
          if (v13)
          {
            _xzm_chunk_list_slot_push(v2, v5, *(v2 + 232), v6);
          }
        }

        else
        {
          _xzm_xzone_madvise_freelist_chunk(v2, v5, v6);
        }
      }

      ++v3;
    }

    while (v3 < *(v2 + 212));
  }

  v27 = 0;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  atomic_compare_exchange_strong_explicit((v2 + 552), &v27, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
  if (v27)
  {
    os_unfair_lock_lock_with_options();
  }

  v29 = *a1;
  v30 = *(a1 + 1);
  if (*a1)
  {
    *(v29 + 8) = v30;
  }

  *v30 = v29;
  v31 = *(StatusReg + 24);
  v32 = v31;
  atomic_compare_exchange_strong_explicit((v2 + 552), &v32, 0, memory_order_release, memory_order_relaxed);
  if (v32 != v31)
  {
    os_unfair_lock_unlock((v2 + 552));
  }

  v33 = (*(v2 + 480) + 192);

  xzm_metapool_free(v33, a1);
}

uint64_t _posix_memalign(uint64_t *a1, unint64_t a2, unint64_t a3)
{
  v6 = _malloc_zone_memalign(default_zone, a2, a3, 0, (v3 >> 2));
  if (v6)
  {
    v7 = v6;
    result = 0;
    *a1 = v7;
  }

  else if ((a2 & (a2 - 1)) == 0 && a2 > 7)
  {
    return 12;
  }

  else
  {
    return 22;
  }

  return result;
}

const void *_malloc_zone_memalign(uint64_t a1, unint64_t a2, unint64_t a3, char a4, uint64_t a5)
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v10 = *(StatusReg + 904);
  if (!v10)
  {
    *(StatusReg + 904) = a5;
  }

  v11 = malloc_tracing_enabled;
  if (malloc_tracing_enabled == 1)
  {
    kdebug_trace();
  }

  if (*(a1 + 104) < 5u)
  {
    goto LABEL_9;
  }

  if (malloc_check_start)
  {
    internal_check();
  }

  if (malloc_absolute_max_size < a3)
  {
    goto LABEL_9;
  }

  v12 = 0;
  v13 = 22;
  if (a2 >= 8)
  {
    v15 = vcnt_s8(a2);
    v15.i16[0] = vaddlv_u8(v15);
    if (v15.u32[0] <= 1uLL)
    {
      if (((a2 - 1) & a3) == 0 || (a4 & 2) == 0)
      {
        v16 = *(a1 + 112);
        if (v16)
        {
          v12 = v16(a1, a2, a3);
          if (malloc_logger)
          {
            malloc_logger(10, a1, a3, 0, v12, 0);
          }

          if (malloc_simple_stack_logging == 1)
          {
            malloc_report(805, "memalign (%p/%llu,%llu): ", v12, a2, a3);
            if (!v11)
            {
              goto LABEL_10;
            }
          }

          else if (!v11)
          {
            goto LABEL_10;
          }

          kdebug_trace();
          goto LABEL_10;
        }

LABEL_9:
        v12 = 0;
LABEL_10:
        v13 = 12;
        goto LABEL_11;
      }

      v12 = 0;
      v13 = 22;
    }
  }

LABEL_11:
  if (!v10)
  {
    *(StatusReg + 904) = 0;
  }

  if (!v12 && (a4 & 1) != 0)
  {
    **(StatusReg + 8) = v13;
  }

  return v12;
}

void xzm_malloc_zone_memalign(void *a1, unint64_t a2, unint64_t a3)
{
  v6 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 904);
  v7 = (malloc_get_thread_options() << 27) & 0x40000000;

  _xzm_memalign(a1, a2, a3, v6, v7, v8);
}

uint64_t default_zone_memalign()
{
  v0 = lite_zone;
  if (!lite_zone)
  {
    v0 = *malloc_zones;
  }

  return (*(v0 + 112))();
}

uint64_t xzm_chunk_mark_free(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 240);
  if (!v2)
  {
    v2 = a1;
  }

  v3 = *(v2 + 568);
  v4 = *(a2 + 32) & 0xF;
  if (v4 > 6)
  {
    if (v4 - 7 < 2)
    {
      v5 = *(a2 + 40) << 14;
      goto LABEL_12;
    }

LABEL_13:
    xzm_chunk_mark_free_cold_1(*(a2 + 32) & 0xF);
  }

  if (v4 == 2)
  {
    v5 = 0x4000;
    goto LABEL_12;
  }

  if (v4 == 5)
  {
    v5 = 0x10000;
    goto LABEL_12;
  }

  if (v4 != 6)
  {
    goto LABEL_13;
  }

  v5 = 0x20000;
LABEL_12:
  v6 = -1431655765 * (((a2 & 0x3FFF) - 2104) >> 4);
  v7 = (a2 & 0xFFFFFFFFFFFFC000) + 8 * v6;
  result = _xzm_reclaim_mark_free(v3, *((a2 & 0xFFFFFFFFFFFFC000) + 0x28) + (v6 << 14), v5, 1);
  *(v7 + 56) = result;
  return result;
}

uint64_t malloc_get_all_zones(uint64_t a1, uint64_t (*a2)(task_name_t a1, uint64_t a2, uint64_t a3, unsigned int **a4), unsigned int **a3, _DWORD *a4)
{
  v6 = a2;
  if (!a2)
  {
    if (a1 && !mach_task_is_self(a1))
    {
      purgeable_ptr_in_use_enumerator_cold_1();
    }

    v6 = _malloc_default_reader_6;
  }

  v14 = 0;
  v15[0] = 0;
  v8 = (v6)(a1, &malloc_zones, 8, v15);
  if (v8)
  {
    v9 = v8;
    malloc_report(3, "*** malloc_get_all_zones: error reading zones_address at %p\n");
  }

  else
  {
    v10 = *v15[0];
    v15[1] = *v15[0];
    v11 = (v6)(a1, &malloc_num_zones, 4, &v14);
    if (v11)
    {
      v9 = v11;
      malloc_report(3, "*** malloc_get_all_zones: error reading num_zones at %p\n");
    }

    else
    {
      v12 = *v14;
      *a4 = v12;
      v9 = (v6)(a1, v10, 8 * v12, a3);
      if (v9)
      {
        malloc_report(3, "*** malloc_get_all_zones: error reading zones at %p\n");
      }
    }
  }

  return v9;
}