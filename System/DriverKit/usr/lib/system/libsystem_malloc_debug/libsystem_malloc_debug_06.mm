uint64_t _malloc_default_reader_6(unsigned int a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = 1;
  if (a1)
  {
    v5 = mach_task_is_self() != 0;
  }

  if (!v5)
  {
    __break(1u);
    JUMPOUT(0x9A92CLL);
  }

  *a4 = a2;
  return 0;
}

uint64_t register_msl_dylib()
{
  if (qword_DA370)
  {
    return set_msl_lite_hooks(qword_DA370);
  }

  return result;
}

void *malloc_freezedry()
{
  v2 = j__malloc(0x10uLL);
  *v2 = 6;
  *(v2 + 1) = malloc_num_zones;
  *(v2 + 1) = j__calloc(malloc_num_zones, 0x4A00uLL);
  for (i = 0; i < malloc_num_zones; ++i)
  {
    if (_platform_strcmp())
    {
      _free(*(v2 + 1));
      _free(v2);
      return 0;
    }

    _platform_memmove();
  }

  return v2;
}

uint64_t malloc_jumpstart(uint64_t a1)
{
  if (*a1 == 6)
  {
    for (i = 0; i < *(a1 + 4); ++i)
    {
      v15 = 0;
      if (szone_size)
      {
        v15 = szone_size;
      }

      v14 = 0;
      if (v15)
      {
        v14 = v15;
      }

      *(*(a1 + 8) + 18944 * i + 16) = v14;
      v13 = 0;
      if (frozen_malloc)
      {
        v13 = frozen_malloc;
      }

      v12 = 0;
      if (v13)
      {
        v12 = v13;
      }

      *(*(a1 + 8) + 18944 * i + 24) = v12;
      v11 = 0;
      if (frozen_calloc)
      {
        v11 = frozen_calloc;
      }

      v10 = 0;
      if (v11)
      {
        v10 = v11;
      }

      *(*(a1 + 8) + 18944 * i + 32) = v10;
      v9 = 0;
      if (frozen_valloc)
      {
        v9 = frozen_valloc;
      }

      v8 = 0;
      if (v9)
      {
        v8 = v9;
      }

      *(*(a1 + 8) + 18944 * i + 40) = v8;
      v7 = 0;
      if (frozen_free)
      {
        v7 = frozen_free;
      }

      v6 = 0;
      if (v7)
      {
        v6 = v7;
      }

      *(*(a1 + 8) + 18944 * i + 48) = v6;
      v5 = 0;
      if (frozen_realloc)
      {
        v5 = frozen_realloc;
      }

      v4 = 0;
      if (v5)
      {
        v4 = v5;
      }

      *(*(a1 + 8) + 18944 * i + 56) = v4;
      v3 = 0;
      if (frozen_destroy)
      {
        v3 = frozen_destroy;
      }

      v2 = 0;
      if (v3)
      {
        v2 = v3;
      }

      *(*(a1 + 8) + 18944 * i + 64) = v2;
      *(*(a1 + 8) + 18944 * i + 96) = &szone_introspect;
      malloc_zone_register((*(a1 + 8) + 18944 * i));
    }

    return 0;
  }

  else
  {
    return 1;
  }
}

unint64_t frozen_realloc(uint64_t a1, unint64_t a2, size_t a3)
{
  v5 = szone_size(a1, a2);
  if (a3 <= v5)
  {
    return a2;
  }

  v4 = j__malloc(a3);
  if (v5)
  {
    _platform_memmove();
  }

  return v4;
}

void tiny_print_region_free_list(uint64_t a1, unsigned int a2)
{
  v6 = a1 & 0xFFFFFFFFFFF00000;
  v4 = (a1 & 0xFFFFFFFFFFF00000);
  v5 = *(&loc_3F28 + 4 * a2 + (a1 & 0xFFFFFFFFFFF00000));
  if (*(&loc_3F28 + 4 * a2 + (a1 & 0xFFFFFFFFFFF00000)))
  {
    v3 = (v6 + 16512 + 16 * (*(&loc_3F28 + 4 * a2 + (a1 & 0xFFFFFFFFFFF00000)) - 1));
  }

  else
  {
    v3 = 0;
  }

  v2 = *(&loc_3F28 + 4 * a2 + (a1 & 0xFFFFFFFFFFF00000) + 2);
  if (*(&loc_3F28 + 4 * a2 + (a1 & 0xFFFFFFFFFFF00000) + 2))
  {
    malloc_printf("For region %p, first block: %d (%p), last block: %d (%p)\n", v4, v5, v3, v2, (v6 + 16512 + 16 * (*(&loc_3F28 + 4 * a2 + (a1 & 0xFFFFFFFFFFF00000) + 2) - 1)));
  }

  else
  {
    malloc_printf("For region %p, first block: %d (%p), last block: %d (%p)\n", v4, v5, v3, v2, 0);
  }
}

uint64_t tiny_finalize_region(uint64_t result, uint64_t a2)
{
  v9 = result;
  v8 = a2;
  v7 = 0;
  v6 = 0;
  v5 = 0;
  v4 = 0;
  v3 = 0;
  if (*(a2 + 2128))
  {
    v7 = *(v8 + 2144) + 0x100000 - *(v8 + 2128);
    v4 = *(v8 + 2128) >> 4;
    v5 = (v7 & 0xFFFFFFFFFFF00000) + 40;
    v2 = (v7 - ((v7 & 0xFFFFFFFFFFF00000) + 16512)) >> 4;
    if (v2 != 64503)
    {
      v11 = v5;
      v10 = v2 + 1;
      *(v5 + 8 * ((v2 + 1) >> 5)) &= ~(1 << ((v2 + 1) & 0x1F));
    }

    v6 = tiny_previous_preceding_free(v7, &v3);
    if (v6)
    {
      set_tiny_meta_header_middle(v7);
      tiny_free_list_remove_ptr(v9, v8, v6, v3);
      zero_tiny_free_inline_meta_following(v6, v3);
      v7 = v6;
      v4 += v3;
    }

    result = tiny_free_list_add_ptr(v9, v8, v7, v4);
    *(v8 + 2128) = 0;
  }

  *(v8 + 2144) = 0;
  return result;
}

uint64_t tiny_previous_preceding_free(uint64_t a1, _WORD *a2)
{
  v8 = (a1 & 0xFFFFFFFFFFF00000) + 40;
  v7 = (a1 & 0xFFFFFFFFFFF00000) + 44;
  v6 = (a1 - ((a1 & 0xFFFFFFFFFFF00000) + 16512)) >> 4;
  if (!v6)
  {
    return 0;
  }

  tiny_previous_free_msize = get_tiny_previous_free_msize(a1);
  v5 = tiny_previous_free_msize;
  if (tiny_previous_free_msize > v6)
  {
    return 0;
  }

  v4 = (a1 & 0xFFFFFFFFFFF00000) + 16512 + 16 * (v6 - tiny_previous_free_msize);
  if (((*(v8 + 8 * ((v6 - tiny_previous_free_msize) >> 5)) >> ((v6 - tiny_previous_free_msize) & 0x1F)) & 1) == 0)
  {
    return 0;
  }

  if ((*(v7 + 8 * ((v6 - tiny_previous_free_msize) >> 5)) >> ((v6 - tiny_previous_free_msize) & 0x1F)))
  {
    return 0;
  }

  if (get_tiny_free_size(v4) != tiny_previous_free_msize)
  {
    return 0;
  }

  *a2 = v5;
  return v4;
}

uint64_t set_tiny_meta_header_middle(uint64_t result)
{
  v1 = (result & 0xFFFFFFFFFFF00000) + 16512;
  *&stru_20.segname[8 * (((result - v1) >> 4) >> 5) + (result & 0xFFFFFFFFFFF00000)] &= ~(1 << (((result - v1) >> 4) & 0x1F));
  *&stru_20.segname[8 * (((result - v1) >> 4) >> 5) + 4 + (result & 0xFFFFFFFFFFF00000)] &= ~(1 << (((result - v1) >> 4) & 0x1F));
  return result;
}

void tiny_free_list_remove_ptr(uint64_t a1, uint64_t a2, unint64_t *a3, unsigned __int16 a4)
{
  v5 = tiny_slot_from_msize(a4);
  v11 = a3[1];
  v10 = *a3;
  if (*a3)
  {
    v9 = *(v10 + 8);
    if (v9 != a3)
    {
      malloc_zone_error(*(a1 + 620), 1, "tiny_free_list_remove_ptr: Internal invariant broken (next ptr of prev): ptr=%p, prev_next=%p\n", a3, v9);
      __break(1u);
    }

    *(v10 + 8) = a3[1];
  }

  else
  {
    *(a2 + 32 + 8 * v5) = v11;
    if (!v11)
    {
      *(a2 + 2088 + 4 * (v5 >> 5)) &= ~(1 << (v5 & 0x1F));
    }
  }

  if (v11)
  {
    if (*v11 != a3)
    {
      malloc_zone_error(*(a1 + 620), 1, "tiny_free_list_remove_ptr: Internal invariant broken (prev ptr of next): ptr=%p, next_prev=%p\n", a3, *v11);
      __break(1u);
    }

    *v11 = *a3;
  }

  v4 = (a3 - (a3 & 0xFFFFFFFFFFF00000) - 16512) >> 4;
  if (*(&loc_3F28 + 4 * v5 + (a3 & 0xFFFFFFFFFFF00000)) == v4 + 1 && *(&loc_3F28 + 4 * v5 + (a3 & 0xFFFFFFFFFFF00000) + 2) == v4 + 1)
  {
    *(&loc_3F28 + 4 * v5 + (a3 & 0xFFFFFFFFFFF00000) + 2) = 0;
    *(&loc_3F28 + 4 * v5 + (a3 & 0xFFFFFFFFFFF00000)) = 0;
  }

  else if (*(&loc_3F28 + 4 * v5 + (a3 & 0xFFFFFFFFFFF00000)) == v4 + 1)
  {
    if (!v11)
    {
      __break(1u);
      JUMPOUT(0x9BD18);
    }

    *(&loc_3F28 + 4 * v5 + (a3 & 0xFFFFFFFFFFF00000)) = ((v11 - ((v11 & 0xFFFFFFFFFFF00000) + 16512)) >> 4) + 1;
  }

  else if (*(&loc_3F28 + 4 * v5 + (a3 & 0xFFFFFFFFFFF00000) + 2) == v4 + 1)
  {
    if (!v10)
    {
      __break(1u);
      JUMPOUT(0x9BD70);
    }

    *(&loc_3F28 + 4 * v5 + (a3 & 0xFFFFFFFFFFF00000) + 2) = ((v10 - ((v10 & 0xFFFFFFFFFFF00000) + 16512)) >> 4) + 1;
  }
}

uint64_t zero_tiny_free_inline_meta_following(uint64_t result, unsigned __int16 a2)
{
  if (!malloc_zero_policy && a2 > 1u)
  {
    *(result + 16 * a2 - 2) = 0;
  }

  return result;
}

uint64_t tiny_free_list_add_ptr(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int16 a4)
{
  if (a4 && a4 <= 0x3Fu)
  {
    v5 = a4 - 1;
  }

  else
  {
    v5 = 63;
  }

  v13 = *(a2 + 32 + 8 * v5);
  result = set_tiny_meta_header_free(a3, a4);
  if (!v13)
  {
    *(a2 + 2088 + 4 * (v5 >> 5)) |= 1 << (v5 & 0x1F);
  }

  v12 = a3 & 0xFFFFFFFFFFF00000;
  v11 = *(&loc_3F28 + 4 * v5 + (a3 & 0xFFFFFFFFFFF00000));
  v10 = (a3 - ((a3 & 0xFFFFFFFFFFF00000) + 16512)) >> 4;
  if (v11)
  {
    v9 = (v12 + 16512 + 16 * (v11 - 1));
    v8 = *(&loc_4080 + 16 * v11 + (a3 & 0xFFFFFFFFFFF00000) - 16);
    if (v8)
    {
      *(v8 + 8) = a3;
    }

    else
    {
      *(a2 + 32 + 8 * v5) = a3;
    }

    *a3 = *v9;
    *(a3 + 8) = v9;
    *v9 = a3;
    *(&loc_3F28 + 4 * v5 + (a3 & 0xFFFFFFFFFFF00000)) = v10 + 1;
  }

  else
  {
    v7 = 0;
    if (*(&dword_18 + (a3 & 0xFFFFFFFFFFF00000)) != -1 && *(a2 + 32 + 8 * v5))
    {
      result = tiny_earlier_region_last_free(a2, v12, v5);
      v7 = result;
    }

    if (v7)
    {
      v6 = *(v7 + 8);
      *(v7 + 8) = a3;
    }

    else
    {
      v6 = *(a2 + 32 + 8 * v5);
      *(a2 + 32 + 8 * v5) = a3;
    }

    *a3 = v7;
    if (v6)
    {
      *v6 = a3;
    }

    *(a3 + 8) = v6;
    *(&loc_3F28 + 4 * v5 + (a3 & 0xFFFFFFFFFFF00000) + 2) = v10 + 1;
    *(&loc_3F28 + 4 * v5 + (a3 & 0xFFFFFFFFFFF00000)) = v10 + 1;
  }

  return result;
}

uint64_t tiny_free_detach_region(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12 = a1;
  v11 = a2;
  v10 = a3;
  v9 = (a3 + 16512);
  v8 = (a3 + 16512);
  v7 = a3 + 0x100000;
  v6 = 0;
  while (v8 < v7)
  {
    tiny_meta_header = get_tiny_meta_header(v8, &v6);
    if (v6)
    {
      if (!tiny_meta_header && v8 == v9)
      {
        break;
      }
    }

    if (!tiny_meta_header)
    {
      break;
    }

    if (v6)
    {
      tiny_free_list_remove_ptr(v12, v11, v8, tiny_meta_header);
    }

    v8 += 2 * tiny_meta_header;
  }

  return *(a3 + 20);
}

uint64_t tiny_free_reattach_region(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12 = a1;
  v11 = a2;
  v10 = a3;
  v9 = a3 + 16512;
  v8 = a3 + 16512;
  v7 = a3 + 0x100000;
  v6 = 0;
  v4 = *(a3 + 16);
  while (v8 < v7)
  {
    tiny_meta_header = get_tiny_meta_header(v8, &v6);
    if (v6)
    {
      if (!tiny_meta_header && v8 == v9)
      {
        break;
      }
    }

    if (!tiny_meta_header)
    {
      break;
    }

    if (v6)
    {
      tiny_free_list_add_ptr(v12, v11, v8, tiny_meta_header);
    }

    v8 += 16 * tiny_meta_header;
  }

  return v4;
}

void tiny_free_scan_madvise_free(uint64_t a1, os_unfair_lock_s *a2, uint64_t a3)
{
  v31 = a1;
  v30 = a2;
  v29 = a3;
  v28 = a3 + 16512;
  v27 = a3 + 16512;
  v26 = a3 + 0x100000;
  v25 = 0;
  tiny_meta_header = 0;
  v23 = v8;
  v13 = &v8[-((2 * ((vm_kernel_page_size + 1032063) >> vm_kernel_page_shift >> 1) + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = (vm_kernel_page_size + 1032063) >> vm_kernel_page_shift >> 1;
  v21 = 0;
  while (v27 < v26)
  {
    tiny_meta_header = get_tiny_meta_header(v27, &v25);
    if (v25 && !tiny_meta_header && v27 == v28)
    {
      v20 = (v28 + vm_kernel_page_mask + 18) & ~vm_kernel_page_mask;
      v19 = (v28 + 1048574) & ~vm_kernel_page_mask;
      if (v20 < v19)
      {
        v3 = v13;
        v13[2 * v21] = (v20 - v28) >> vm_kernel_page_shift;
        v3[2 * v21++ + 1] = (v19 - v20) >> vm_kernel_page_shift;
      }

      break;
    }

    if (!tiny_meta_header)
    {
      break;
    }

    if (v25)
    {
      v18 = (v27 + vm_kernel_page_mask + 18) & ~vm_kernel_page_mask;
      v17 = (v27 + 16 * tiny_meta_header - 2) & ~vm_kernel_page_mask;
      if (v18 < v17)
      {
        v4 = v13;
        v13[2 * v21] = (v18 - v29) >> vm_kernel_page_shift;
        v4[2 * v21++ + 1] = (v17 - v18) >> vm_kernel_page_shift;
      }
    }

    v27 += 16 * tiny_meta_header;
  }

  if (v21 >= 1)
  {
    i = 0;
    v32 = v29 + 28;
    v44 = 1;
    v43 = v29 + 28;
    v42 = 1;
    add = atomic_fetch_add((v29 + 28), 1u);
    v33 = v30;
    v36 = v30;
    v50 = v30;
    v51 = 3;
    v52 = 3;
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v49 = *(StatusReg + 24);
    v48 = 0;
    v47 = v49;
    v46 = 0;
    v5 = v49;
    v6 = v49;
    atomic_compare_exchange_strong_explicit(v30, &v6, 0, memory_order_release, memory_order_relaxed);
    v11 = v6;
    v12 = v6 == v5;
    if (v6 != v5)
    {
      v47 = v11;
    }

    v45 = v12;
    if (!v12)
    {
      os_unfair_lock_unlock(v50);
    }

    for (i = 0; i < v21; ++i)
    {
      v15 = (v29 + (v13[2 * i] << vm_kernel_page_shift));
      v14 = v13[2 * i + 1] << vm_kernel_page_shift;
      mvm_madvise_free(v31, v29, v15, &v15[v14], 0, *(v31 + 620) & 0x20);
    }

    v34 = v30;
    v37 = v30;
    v60 = v30;
    v59 = 327680;
    v61 = 3;
    v62 = 3;
    v63 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v58 = *(v63 + 24);
    v57 = 0;
    v56 = v58;
    v55 = v58;
    v7 = 0;
    atomic_compare_exchange_strong_explicit(v30, &v7, v58, memory_order_acquire, memory_order_acquire);
    v9 = v7;
    v10 = v7 == 0;
    if (v7)
    {
      v57 = v9;
    }

    v54 = v10;
    if (!v10)
    {
      os_unfair_lock_lock_with_options();
    }

    v35 = v29 + 28;
    v40 = -1;
    v39 = v29 + 28;
    v38 = -1;
    atomic_fetch_add((v29 + 28), 0xFFFFFFFF);
  }
}

uint64_t tiny_free_no_lock(uint64_t a1, atomic_uint *a2, unsigned int a3, _DWORD *a4, unint64_t *a5, unsigned __int16 a6, int a7)
{
  v26 = a1;
  v25 = a2;
  v24 = a3;
  v23 = a4;
  v22 = a5;
  v21 = a6;
  v20 = a7;
  v19 = a5;
  v18 = 16 * a6;
  v17 = &a5[v18 / 8];
  v16 = 0;
  region_check_cookie(a4, a4 + 4127);
  v14 = tiny_previous_preceding_free(v22, &v16);
  if (v14)
  {
    set_tiny_meta_header_middle(v22);
    tiny_free_list_remove_ptr(v26, v25, v14, v16);
    zero_tiny_free_inline_meta_following(v14, v16);
    v22 = v14;
    v21 += v16;
  }

  if (v17 < v23 + 0x20000 && tiny_meta_header_is_free(v17))
  {
    tiny_free_size = get_tiny_free_size(v17);
    if (tiny_free_size > 0x3Fu)
    {
      v21 += tiny_free_size;
      v13 = v17;
      v36 = v26;
      v35 = v17 + 1;
      v34 = v17[1];
      v33 = v34;
      v39 = v26;
      v38 = v34;
      v37 = v34;
      v32 = v34;
      v12 = v34;
      v31 = v26;
      v30 = v17;
      v29 = *v17;
      v28 = v29;
      v42 = v26;
      v41 = v29;
      v40 = v29;
      v27 = v29;
      if (v29)
      {
        v48 = v26;
        v47 = v22;
        v46 = v22;
        *(v28 + 8) = v22;
      }

      else
      {
        *(v25 + 67) = v22;
      }

      if (v12)
      {
        v45 = v26;
        v44 = v22;
        v43 = v22;
        *v12 = v22;
      }

      *v22 = *v13;
      *(v22 + 8) = *(v13 + 8);
      set_tiny_meta_header_middle(v13);
      zero_tiny_free_inline_meta(v13, tiny_free_size);
      set_tiny_meta_header_free(v22, v21);
      v11 = ((v13 - ((v13 & 0xFFFFFFFFFFF00000) + 16512)) >> 4) + 1;
      v10 = ((v22 - ((v22 & 0xFFFFFFFFFFF00000) + 16512)) >> 4) + 1;
      v9 = v23 + 4105;
      if (*(v23 + 8210) == v11)
      {
        *v9 = v10;
      }

      if (v9[1] == v11)
      {
        v9[1] = v10;
      }

      goto LABEL_22;
    }

    tiny_free_list_remove_ptr(v26, v25, v17, tiny_free_size);
    set_tiny_meta_header_middle(v17);
    zero_tiny_free_inline_meta(v17, tiny_free_size);
    v21 += tiny_free_size;
  }

  if (malloc_zero_policy && (*(v26 + 620) & 0x20) != 0 && (v20 & 2) == 0)
  {
    _platform_memset();
  }

  tiny_free_list_add_ptr(v26, v25, v22, v21);
LABEL_22:
  *(v25 + 269) -= v18;
  v8 = v23;
  v23[4] -= v18;
  if ((v20 & 1) == 0)
  {
    --v8[5];
    --*(v25 + 542);
  }

  if (aggressive_madvise_enabled)
  {
    tiny_madvise_free_range_no_lock(v26, v25, v23, v19, v18, v22, v21);
  }

  return tiny_free_try_recirc_to_depot(v26, v25, v24, v23, v19, v18, v22, v21);
}

uint64_t zero_tiny_free_inline_meta(uint64_t result, unsigned __int16 a2)
{
  if (!malloc_zero_policy)
  {
    *result = 0uLL;
    if (a2 <= 1u)
    {
      if (!a2)
      {
        *(result + 16) = 0;
      }
    }

    else
    {
      *(result + 16) = 0;
      *(result + 16 * a2 - 2) = 0;
    }
  }

  return result;
}

uint64_t set_tiny_meta_header_free(uint64_t result, unsigned __int16 a2)
{
  v2 = 2 * (((result - ((result & 0xFFFFFFFFFFF00000) + 16512)) >> 4) >> 5);
  *&stru_20.segname[4 * v2 + (result & 0xFFFFFFFFFFF00000)] |= 1 << (((result - ((result & 0xFFFFFFFFFFF00000) + 16512)) >> 4) & 0x1F);
  *&stru_20.segname[4 * v2 + 4 + (result & 0xFFFFFFFFFFF00000)] &= ~(1 << (((result - ((result & 0xFFFFFFFFFFF00000) + 16512)) >> 4) & 0x1F));
  if (a2 > 1u)
  {
    *(result + 16 * a2 - 2) = a2;
    *(result + 16) = a2;
  }

  if (!a2)
  {
    *(result + 16) = 0;
  }

  return result;
}

uint64_t tiny_madvise_free_range_no_lock(uint64_t result, atomic_uint *a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t *a6, unsigned __int16 a7)
{
  v17 = result;
  if (((a6 + vm_kernel_page_mask + 18) & ~vm_kernel_page_mask) < ((&a6[2 * a7 - 1] + 6) & ~vm_kernel_page_mask))
  {
    v11 = (((a6 + vm_kernel_page_mask + 18) & ~vm_kernel_page_mask) <= ((a4 - 2) & ~vm_kernel_page_mask) ? (a4 - 2) & ~vm_kernel_page_mask : (a6 + vm_kernel_page_mask + 18) & ~vm_kernel_page_mask);
    v10 = (((&a6[2 * a7 - 1] + 6) & ~vm_kernel_page_mask) >= ((a4 + a5 + 18 + vm_kernel_page_mask) & ~vm_kernel_page_mask) ? (a4 + a5 + 18 + vm_kernel_page_mask) & ~vm_kernel_page_mask : (&a6[2 * a7 - 1] + 6) & ~vm_kernel_page_mask);
    if (v11 < v10)
    {
      tiny_free_list_remove_ptr(result, a2, a6, a7);
      set_tiny_meta_header_in_use(a6, a7);
      atomic_fetch_add((a3 + 28), 1u);
      v7 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
      v8 = v7;
      atomic_compare_exchange_strong_explicit(a2, &v8, 0, memory_order_release, memory_order_relaxed);
      if (v8 != v7)
      {
        os_unfair_lock_unlock(a2);
      }

      mvm_madvise_free(v17, a3, v11, v10, (v17 + 640), *(v17 + 620) & 0x20);
      v9 = 0;
      atomic_compare_exchange_strong_explicit(a2, &v9, *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24), memory_order_acquire, memory_order_acquire);
      if (v9)
      {
        os_unfair_lock_lock_with_options();
      }

      atomic_fetch_add((a3 + 28), 0xFFFFFFFF);
      set_tiny_meta_header_free(a6, a7);
      return tiny_free_list_add_ptr(v17, a2, a6, a7);
    }
  }

  return result;
}

uint64_t tiny_free_try_recirc_to_depot(uint64_t a1, atomic_uint *a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t *a7, unsigned __int16 a8)
{
  v12 = *(a4 + 16);
  if (a3 != -1)
  {
    if (tiny_region_below_recirc_threshold(a4))
    {
      *(a4 + 32) = 1;
    }

    if (tiny_magazine_below_recirc_threshold(a2))
    {
      return tiny_free_do_recirc_to_depot(a1, a2);
    }

    return 1;
  }

  if ((aggressive_madvise_enabled & 1) == 0)
  {
    tiny_madvise_free_range_no_lock(a1, a2, a4, a5, a6, a7, a8);
  }

  if (v12 || *(a4 + 28) > 0)
  {
    return 1;
  }

  v11 = tiny_free_try_depot_unmap_no_lock(a1, a2, a4);
  v8 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
  v9 = v8;
  atomic_compare_exchange_strong_explicit(a2, &v9, 0, memory_order_release, memory_order_relaxed);
  if (v9 != v8)
  {
    os_unfair_lock_unlock(a2);
  }

  if (v11)
  {
    if ((*(a1 + 620) & 4) != 0)
    {
      mvm_deallocate_pages(v11, 0x100000uLL, *(a1 + 620) & 0xFFFE);
    }

    else
    {
      mvm_deallocate_pages(v11, 0x100000uLL, *(a1 + 620) & 0xFFFC);
    }
  }

  return 0;
}

unsigned __int8 *tiny_memalign(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = (a4 + 15) >> 4;
  v17 = tiny_malloc_should_clear(a1 + 16512, v18, 0);
  if (!v17)
  {
    return 0;
  }

  if ((v17 & (a2 - 1)) != 0)
  {
    v9 = a2 - (v17 & (a2 - 1));
  }

  else
  {
    v9 = 0;
  }

  v16 = (a3 + 15) >> 4;
  v15 = (v9 + 15) >> 4;
  v14 = v18 - v16 - v15;
  if (v15)
  {
    v13 = &v17[v9];
    v12 = mag_lock_zine_for_region_trailer_0(*(a1 + 17136), v17 & 0xFFFFFFFFFFF00000, *(&dword_18 + (v17 & 0xFFFFFFFFFFF00000)));
    set_tiny_meta_header_in_use(&v17[v9], v16);
    ++*(v12 + 542);
    if (v14)
    {
      v23 = v16 + ((v13 - ((v13 & 0xFFFFFFFFFFF00000) + 16512)) >> 4);
      *&stru_20.segname[8 * (v23 >> 5) + 4 + (v13 & 0xFFFFFFFFFFF00000)] |= 1 << (v23 & 0x1F);
    }

    v4 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
    v5 = v4;
    atomic_compare_exchange_strong_explicit(v12, &v5, 0, memory_order_release, memory_order_relaxed);
    if (v5 != v4)
    {
      os_unfair_lock_unlock(v12);
    }

    free_tiny(a1 + 16512, v17, (v17 & 0xFFFFFFFFFFF00000), 16 * v15, 1);
    v17 += v9;
  }

  if (v14)
  {
    v11 = &v17[16 * v16];
    v10 = mag_lock_zine_for_region_trailer_0(*(a1 + 17136), v17 & 0xFFFFFFFFFFF00000, *(&dword_18 + (v17 & 0xFFFFFFFFFFF00000)));
    set_tiny_meta_header_in_use(v11, v14);
    ++*(v10 + 542);
    v6 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
    v7 = v6;
    atomic_compare_exchange_strong_explicit(v10, &v7, 0, memory_order_release, memory_order_relaxed);
    if (v7 != v6)
    {
      os_unfair_lock_unlock(v10);
    }

    free_tiny(a1 + 16512, v11, (v11 & 0xFFFFFFFFFFF00000), 16 * v14, 1);
  }

  return v17;
}

unsigned __int8 *tiny_malloc_should_clear(uint64_t a1, unsigned __int16 a2, int a3)
{
  v32 = rack_get_thread_index(a1) % *(a1 + 608);
  v31 = *(a1 + 624) + 2560 * v32;
  if (malloc_tracing_enabled)
  {
    kdebug_trace();
  }

  v3 = 0;
  atomic_compare_exchange_strong_explicit(v31, &v3, *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24), memory_order_acquire, memory_order_acquire);
  if (v3)
  {
    os_unfair_lock_lock_with_options();
  }

  v33 = *(v31 + 8);
  if (*(v31 + 16) == a2)
  {
    *(v31 + 8) = 0;
    *(v31 + 16) = 0;
    *(v31 + 24) = 0;
    v4 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
    v5 = v4;
    atomic_compare_exchange_strong_explicit(v31, &v5, 0, memory_order_release, memory_order_relaxed);
    if (v5 != v4)
    {
      os_unfair_lock_unlock(v31);
    }

LABEL_17:
    tiny_check_zero_or_clear(v33, a2, a3);
    return v33;
  }

  else
  {
    while (1)
    {
      v33 = tiny_malloc_from_free_list(a1, v31, v32, a2);
      if (v33)
      {
        v6 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
        v7 = v6;
        atomic_compare_exchange_strong_explicit(v31, &v7, 0, memory_order_release, memory_order_relaxed);
        if (v7 != v6)
        {
          os_unfair_lock_unlock(v31);
        }

        goto LABEL_17;
      }

      if (tiny_get_region_from_depot(a1, v31, v32, a2))
      {
        v33 = tiny_malloc_from_free_list(a1, v31, v32, a2);
        if (v33)
        {
          v8 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
          v9 = v8;
          atomic_compare_exchange_strong_explicit(v31, &v9, 0, memory_order_release, memory_order_relaxed);
          if (v9 != v8)
          {
            os_unfair_lock_unlock(v31);
          }

          goto LABEL_17;
        }
      }

      v10 = 0;
      atomic_compare_exchange_strong_explicit((v31 + 4), &v10, *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24), memory_order_acquire, memory_order_acquire);
      if (!v10)
      {
        break;
      }

      v23 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
      v24 = v23;
      atomic_compare_exchange_strong_explicit(v31, &v24, 0, memory_order_release, memory_order_relaxed);
      if (v24 != v23)
      {
        os_unfair_lock_unlock(v31);
      }

      v25 = 0;
      atomic_compare_exchange_strong_explicit((v31 + 4), &v25, *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24), memory_order_acquire, memory_order_acquire);
      if (v25)
      {
        os_unfair_lock_lock_with_options();
      }

      v26 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
      v27 = v26;
      atomic_compare_exchange_strong_explicit((v31 + 4), &v27, 0, memory_order_release, memory_order_relaxed);
      if (v27 != v26)
      {
        os_unfair_lock_unlock((v31 + 4));
      }

      v28 = 0;
      atomic_compare_exchange_strong_explicit(v31, &v28, *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24), memory_order_acquire, memory_order_acquire);
      if (v28)
      {
        os_unfair_lock_lock_with_options();
      }
    }

    v11 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
    v12 = v11;
    atomic_compare_exchange_strong_explicit(v31, &v12, 0, memory_order_release, memory_order_relaxed);
    if (v12 != v11)
    {
      os_unfair_lock_unlock(v31);
    }

    if ((*(a1 + 620) & 4) != 0)
    {
      pages = mvm_allocate_pages(0x100000uLL, 0x14u, *(a1 + 620) & 0xFFFFFFFE, 7);
    }

    else
    {
      pages = mvm_allocate_pages(0x100000uLL, 0x14u, *(a1 + 620) & 0xFFFFFFFC, 7);
    }

    v30 = pages;
    v14 = 0;
    atomic_compare_exchange_strong_explicit(v31, &v14, *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24), memory_order_acquire, memory_order_acquire);
    if (v14)
    {
      os_unfair_lock_lock_with_options();
    }

    if (v30)
    {
      region_set_cookie((v30 + 16508));
      v34 = tiny_malloc_from_region_no_lock(a1, v31, v32, a2, v30);
      v19 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
      v20 = v19;
      atomic_compare_exchange_strong_explicit(v31, &v20, 0, memory_order_release, memory_order_relaxed);
      if (v20 != v19)
      {
        os_unfair_lock_unlock(v31);
      }

      v21 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
      v22 = v21;
      atomic_compare_exchange_strong_explicit((v31 + 4), &v22, 0, memory_order_release, memory_order_relaxed);
      if (v22 != v21)
      {
        os_unfair_lock_unlock((v31 + 4));
      }

      return v34;
    }

    else
    {
      v15 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
      v16 = v15;
      atomic_compare_exchange_strong_explicit(v31, &v16, 0, memory_order_release, memory_order_relaxed);
      if (v16 != v15)
      {
        os_unfair_lock_unlock(v31);
      }

      v17 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
      v18 = v17;
      atomic_compare_exchange_strong_explicit((v31 + 4), &v18, 0, memory_order_release, memory_order_relaxed);
      if (v18 != v17)
      {
        os_unfair_lock_unlock((v31 + 4));
      }

      return 0;
    }
  }
}

uint64_t set_tiny_meta_header_in_use(uint64_t result, __int16 a2)
{
  v9 = (result - ((result & 0xFFFFFFFFFFF00000) + 16512)) >> 4;
  v7 = 2 * (v9 >> 5);
  *&stru_20.segname[4 * v7 + (result & 0xFFFFFFFFFFF00000)] |= 1 << (((result - ((result & 0xFFFFFFFFFFF00000) + 16512)) >> 4) & 0x1F);
  *&stru_20.segname[4 * v7 + 4 + (result & 0xFFFFFFFFFFF00000)] |= 1 << (((result - ((result & 0xFFFFFFFFFFF00000) + 16512)) >> 4) & 0x1F);
  v10 = v9 + 1;
  v8 = 2 * (v10 >> 5);
  v6 = v10 & 0x1F;
  v5 = (v10 & 0x1F) + (a2 - 1);
  if (v5 <= 0x3F)
  {
    if (v5 <= 0x1F)
    {
      *&stru_20.segname[4 * v8 + (result & 0xFFFFFFFFFFF00000)] &= (0xFFFFFFFF >> (31 - v6) >> 1) | (-1 << v5);
      *&stru_20.segname[4 * v8 + 4 + (result & 0xFFFFFFFFFFF00000)] &= (0xFFFFFFFF >> (31 - v6) >> 1) | (-1 << v5);
    }

    else
    {
      v3 = -1 << (v5 - 32);
      *&stru_20.segname[4 * v8 + (result & 0xFFFFFFFFFFF00000)] &= 0xFFFFFFFF >> (31 - v6) >> 1;
      *&stru_20.segname[4 * v8 + 4 + (result & 0xFFFFFFFFFFF00000)] &= 0xFFFFFFFF >> (31 - v6) >> 1;
      *&stru_20.segname[4 * v8 + 8 + (result & 0xFFFFFFFFFFF00000)] &= v3;
      *&stru_20.segname[4 * v8 + 12 + (result & 0xFFFFFFFFFFF00000)] &= v3;
    }
  }

  else
  {
    v4 = -1 << (v5 - 64);
    *&stru_20.segname[4 * v8 + (result & 0xFFFFFFFFFFF00000)] &= 0xFFFFFFFF >> (31 - v6) >> 1;
    *&stru_20.segname[4 * v8 + 4 + (result & 0xFFFFFFFFFFF00000)] &= 0xFFFFFFFF >> (31 - v6) >> 1;
    *&stru_20.segname[4 * v8 + 8 + (result & 0xFFFFFFFFFFF00000)] = 0;
    *&stru_20.segname[4 * v8 + 12 + (result & 0xFFFFFFFFFFF00000)] = 0;
    *&stru_20.segname[4 * v8 + 16 + (result & 0xFFFFFFFFFFF00000)] &= v4;
    *&stru_20.segname[4 * v8 + 20 + (result & 0xFFFFFFFFFFF00000)] &= v4;
  }

  v11 = v10 + a2 - 1;
  v2 = (2 * (v11 >> 5));
  *&stru_20.segname[4 * v2 + (result & 0xFFFFFFFFFFF00000)] |= 1 << (v11 & 0x1F);
  return result;
}

void free_tiny(uint64_t a1, unint64_t *a2, _DWORD *a3, uint64_t a4, int a5)
{
  v29 = a1;
  v28 = a2;
  v27 = a3;
  v26 = a4;
  v25 = a5;
  tiny_meta_header = 0;
  v23 = 0;
  v22 = a3[6];
  v21 = *(a1 + 624) + 2560 * v22;
  v20 = 0;
  if (malloc_tracing_enabled)
  {
    kdebug_trace();
  }

  if (v26)
  {
    tiny_meta_header = (v26 + 15) >> 4;
  }

  else
  {
    tiny_meta_header = get_tiny_meta_header(v28, &v23);
    if (v23)
    {
LABEL_6:
      free_tiny_botch(v29, v28);
      return;
    }
  }

  if (!malloc_zero_policy)
  {
    _platform_memset();
  }

  v35 = v21;
  v40 = v21;
  v94 = v21;
  v93 = 327680;
  v95 = 3;
  v96 = 3;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v92 = *(StatusReg + 24);
  v91 = 0;
  v90 = v92;
  v89 = v92;
  v5 = 0;
  atomic_compare_exchange_strong_explicit(v21, &v5, v92, memory_order_acquire, memory_order_acquire);
  if (v5)
  {
    v91 = v5;
  }

  v88 = v5 == 0;
  if (v5)
  {
    os_unfair_lock_lock_with_options();
  }

  if (v22 != -1 && !v25 && tiny_meta_header < 0x10u)
  {
    v19 = *(v21 + 8);
    v18 = *(v21 + 16);
    v17 = *(v21 + 24);
    if (v28 == v19)
    {
      v33 = v21;
      v36 = v21;
      v74 = v21;
      v75 = 3;
      v76 = 3;
      v77 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v73 = *(v77 + 24);
      v72 = 0;
      v71 = v73;
      v70 = 0;
      v6 = v73;
      v7 = v73;
      atomic_compare_exchange_strong_explicit(v21, &v7, 0, memory_order_release, memory_order_relaxed);
      if (v7 != v6)
      {
        v71 = v7;
      }

      v69 = v7 == v6;
      if (v7 != v6)
      {
        os_unfair_lock_unlock(v74);
      }

      goto LABEL_6;
    }

    if (malloc_zero_policy && (*(v29 + 620) & 0x20) != 0 && tiny_meta_header)
    {
      _platform_memset();
    }

    *(v21 + 8) = v28;
    *(v21 + 16) = tiny_meta_header;
    *(v21 + 24) = v27;
    if (!v19)
    {
      v32 = v21;
      v37 = v21;
      v65 = v21;
      v66 = 3;
      v67 = 3;
      v68 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v64 = *(v68 + 24);
      v63 = 0;
      v62 = v64;
      v61 = 0;
      v8 = v64;
      v9 = v64;
      atomic_compare_exchange_strong_explicit(v21, &v9, 0, memory_order_release, memory_order_relaxed);
      if (v9 != v8)
      {
        v62 = v9;
      }

      v60 = v9 == v8;
      if (v9 != v8)
      {
        os_unfair_lock_unlock(v65);
      }

      return;
    }

    tiny_meta_header = v18;
    v28 = v19;
    v27 = v17;
    v20 = 2;
  }

  v16 = v27;
  while (1)
  {
    v15 = v16[6];
    if (v22 == v15)
    {
      break;
    }

    v31 = v21;
    v38 = v21;
    v56 = v21;
    v57 = 3;
    v58 = 3;
    v59 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v55 = *(v59 + 24);
    v54 = 0;
    v53 = v55;
    v52 = 0;
    v10 = v55;
    v11 = v55;
    atomic_compare_exchange_strong_explicit(v21, &v11, 0, memory_order_release, memory_order_relaxed);
    if (v11 != v10)
    {
      v53 = v11;
    }

    v51 = v11 == v10;
    if (v11 != v10)
    {
      os_unfair_lock_unlock(v56);
    }

    v22 = v15;
    v21 = *(v29 + 624) + 2560 * v15;
    v34 = v21;
    v41 = v21;
    v84 = v21;
    v83 = 327680;
    v85 = 3;
    v86 = 3;
    v87 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v82 = *(v87 + 24);
    v81 = 0;
    v80 = v82;
    v79 = v82;
    v12 = 0;
    atomic_compare_exchange_strong_explicit(v21, &v12, v82, memory_order_acquire, memory_order_acquire);
    if (v12)
    {
      v81 = v12;
    }

    v78 = v12 == 0;
    if (v12)
    {
      os_unfair_lock_lock_with_options();
    }
  }

  if (v25)
  {
    v20 |= 1u;
  }

  if (tiny_free_no_lock(v29, v21, v22, v27, v28, tiny_meta_header, v20))
  {
    v30 = v21;
    v39 = v21;
    v47 = v21;
    v48 = 3;
    v49 = 3;
    v50 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v46 = *(v50 + 24);
    v45 = 0;
    v44 = v46;
    v43 = 0;
    v13 = v46;
    v14 = v46;
    atomic_compare_exchange_strong_explicit(v21, &v14, 0, memory_order_release, memory_order_relaxed);
    if (v14 != v13)
    {
      v44 = v14;
    }

    v42 = v14 == v13;
    if (v14 != v13)
    {
      os_unfair_lock_unlock(v47);
    }
  }
}

BOOL tiny_claimed_address(uint64_t a1, unint64_t a2)
{
  v4 = tiny_region_for_ptr_no_lock(a1, a2);
  v3 = 0;
  if (v4)
  {
    v3 = 0;
    if (a2 >= v4 + 16512)
    {
      return a2 < v4 + 0x100000;
    }
  }

  return v3;
}

uint64_t tiny_try_shrink_in_place(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v10 = a4 >> 4;
  v9 = (a3 >> 4) - v10;
  if (v9)
  {
    v8 = a2 + 16 * v10;
    v7 = mag_lock_zine_for_region_trailer_0(*(a1 + 624), a2 & 0xFFFFFFFFFFF00000, *(&dword_18 + (a2 & 0xFFFFFFFFFFF00000)));
    set_tiny_meta_header_in_use(v8, v9);
    ++*(v7 + 542);
    v4 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
    v5 = v4;
    atomic_compare_exchange_strong_explicit(v7, &v5, 0, memory_order_release, memory_order_relaxed);
    if (v5 != v4)
    {
      os_unfair_lock_unlock(v7);
    }

    free_tiny(a1, v8, (v8 & 0xFFFFFFFFFFF00000), 0, 1);
  }

  return a2;
}

uint64_t tiny_try_realloc_in_place(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v19 = a2 & 0xFFFFFFFFFFF00000;
  v24 = a3 >> 4;
  v20 = (a4 + 15) >> 4;
  if (((a2 - ((a2 & 0xFFFFFFFFFFF00000) + 16512)) >> 4) + v24 >= 0xFBF8)
  {
    return 0;
  }

  v23 = (a2 + a3);
  v4 = mag_lock_zine_for_region_trailer_0(*(a1 + 624), v19, *(&dword_18 + (a2 & 0xFFFFFFFFFFF00000)));
  v18 = v4;
  if (*(&dword_18 + (a2 & 0xFFFFFFFFFFF00000)) == -1)
  {
    v5 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
    v6 = v5;
    atomic_compare_exchange_strong_explicit(v4, &v6, 0, memory_order_release, memory_order_relaxed);
    if (v6 != v5)
    {
      os_unfair_lock_unlock(v4);
    }

    return 0;
  }

  v21 = v20 - v24;
  v17 = *(v4 + 1);
  v16 = *(v4 + 8);
  if (v17 == v23 && v24 + v16 >= v20)
  {
    if (v16 == v21)
    {
      *(v4 + 1) = 0;
      *(v4 + 8) = 0;
      *(v4 + 3) = 0;
      --*(v19 + 20);
    }

    else
    {
      *(v4 + 8) -= v21;
      *(v4 + 1) += a4 - a3;
      set_tiny_meta_header_in_use(&v23[2 * v21], v16 - v21);
    }

    set_tiny_meta_header_middle(v23);
    tiny_check_zero_or_clear(v17, v21, 0);
    v21 = 0;
LABEL_36:
    *(v18 + 2152) += 16 * v21;
    v14 = *(dword_10 + (a2 & 0xFFFFFFFFFFF00000)) + 16 * v21;
    *(dword_10 + (a2 & 0xFFFFFFFFFFF00000)) = v14;
    if (v14 >= 0xBCFA0)
    {
      *(&stru_20.cmd + (a2 & 0xFFFFFFFFFFF00000)) = 0;
    }

    v11 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
    v12 = v11;
    atomic_compare_exchange_strong_explicit(v18, &v12, 0, memory_order_release, memory_order_relaxed);
    if (v12 != v11)
    {
      os_unfair_lock_unlock(v18);
    }

    return 1;
  }

  v15 = ((a2 & 0xFFFFFFFFFFF00000) + 0x100000 - *(v4 + 266));
  if (*(v4 + 268) == (a2 & 0xFFFFFFFFFFF00000) && v21 < (*(v4 + 266) >> 4) && v15 == (a2 + a3))
  {
    set_tiny_meta_header_middle(v15);
    if (v21 > 1u)
    {
      set_tiny_meta_header_middle((v15 + 16));
    }

    *(v18 + 2128) -= 16 * v21;
    if (*(v18 + 2128))
    {
      set_tiny_meta_header_in_use_1(a2 + 16 * v20);
    }

    tiny_check_zero_or_clear(v15, v21, 0);
    goto LABEL_36;
  }

  if (tiny_meta_header_is_free(v23))
  {
    tiny_free_size = get_tiny_free_size(v23);
    if (v24 + tiny_free_size >= v20)
    {
      tiny_free_list_remove_ptr(a1, v18, v23, tiny_free_size);
      set_tiny_meta_header_middle(v23);
      if (!malloc_zero_policy)
      {
        _tiny_check_and_zero_inline_meta_from_freelist(a1, v23, tiny_free_size);
      }

      tiny_check_zero_or_clear(v23, v21, 0);
      if (tiny_free_size != v21)
      {
        tiny_free_list_add_ptr(a1, v18, &v23[2 * v21], tiny_free_size - v21);
      }

      set_tiny_meta_header_in_use(a2, v20);
      goto LABEL_36;
    }

    v9 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
    v10 = v9;
    atomic_compare_exchange_strong_explicit(v18, &v10, 0, memory_order_release, memory_order_relaxed);
    if (v10 != v9)
    {
      os_unfair_lock_unlock(v18);
    }

    return 0;
  }

  else
  {
    v7 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
    v8 = v7;
    atomic_compare_exchange_strong_explicit(v18, &v8, 0, memory_order_release, memory_order_relaxed);
    if (v8 != v7)
    {
      os_unfair_lock_unlock(v18);
    }

    return 0;
  }
}

void tiny_check_zero_or_clear(unsigned __int8 *result, unsigned __int16 a2, int a3)
{
  if (malloc_zero_policy)
  {
    if (malloc_zero_policy == 1)
    {
      if (!a3)
      {
        return;
      }
    }

    else if (malloc_zero_policy != 2)
    {
      return;
    }

    _platform_memset();
    return;
  }

  if (zero_on_free_should_sample())
  {
    if (_platform_memcmp_zero_aligned8())
    {
      tiny_zero_corruption_abort(result, a2);
    }
  }
}

uint64_t set_tiny_meta_header_in_use_1(uint64_t result)
{
  v5 = (result & 0xFFFFFFFFFFF00000) + 40;
  v1 = (result & 0xFFFFFFFFFFF00000) + 16512;
  v4 = (result - v1) >> 4;
  v3 = 2 * (v4 >> 5);
  *&stru_20.segname[4 * v3 + (result & 0xFFFFFFFFFFF00000)] |= 1 << (((result - v1) >> 4) & 0x1F);
  *(v5 + 4 * (v3 + 1)) |= 1 << (((result - v1) >> 4) & 0x1F);
  v2 = (2 * (++v4 >> 5));
  *(v5 + 4 * v2) = *&stru_20.segname[4 * v2 + (result & 0xFFFFFFFFFFF00000)] | (1 << (v4 & 0x1F));
  return result;
}

uint64_t tiny_check_region(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v32 = a1;
  v31 = a2;
  v30 = a3;
  v29 = a4;
  v28 = 0;
  v27 = 0;
  v26 = 0;
  v25 = 0;
  v24 = 0;
  tiny_meta_header = 0;
  v22 = 0;
  v21 = 0;
  v20 = 0;
  v19 = 0;
  v18 = *(a2 + 24);
  v17 = (*(a1 + 624) + 2560 * v18);
  if (*(a2 + 28))
  {
    v28 = (v31 + 16512);
    v27 = (v31 + 16512);
    if (v31 == v17[268] && (v27 += v17[267]) != 0 && ((tiny_meta_header = get_tiny_meta_header((v27 - 16), &v24), v24) || tiny_meta_header != 1))
    {
      malloc_zone_check_fail(tiny_check_fail_msg[0], "%ld, counter=%d\n*** invariant broken for leader block %p - %d %d\n", v30, v29, v27 - 16, tiny_meta_header, v24);
      return 0;
    }

    else
    {
      v26 = (v31 + 0x100000);
      if (v31 == v17[268])
      {
        v26 -= v17[266];
      }

      while (v27 < v26)
      {
        tiny_meta_header = get_tiny_meta_header(v27, &v24);
        if (v24 && !tiny_meta_header && v27 == v28)
        {
          return 1;
        }

        if (!tiny_meta_header)
        {
          malloc_zone_check_fail(tiny_check_fail_msg[0], "%ld, counter=%d\n*** invariant broken for tiny block %p this msize=%d - size is too small\n", v30, v29, v27, 0);
          return 0;
        }

        if (v24)
        {
          v25 = 1;
          v22 = v27;
          v43 = v32;
          v42 = v27;
          v41 = *v27;
          v40 = v41;
          v46 = v32;
          v45 = v41;
          v44 = v41;
          v39 = v41;
          v20 = v41;
          v38 = v32;
          v37 = v27 + 8;
          v36 = *(v27 + 1);
          v35 = v36;
          v49 = v32;
          v48 = v36;
          v47 = v36;
          v34 = v36;
          v19 = v36;
          if (v41 && !tiny_meta_header_is_free(v20))
          {
            malloc_zone_check_fail(tiny_check_fail_msg[0], "%ld, counter=%d\n*** invariant broken for %p (previous %p is not a free pointer)\n", v30, v29, v27, v20);
            return 0;
          }

          if (v19 && !tiny_meta_header_is_free(v19))
          {
            malloc_zone_check_fail(tiny_check_fail_msg[0], "%ld, counter=%d\n*** invariant broken for %p (next in free list %p is not a free pointer)\n", v30, v29, v27, v19);
            return 0;
          }

          v21 = &v27[16 * tiny_meta_header];
          if (v21 != v26 && get_tiny_previous_free_msize(v21) != tiny_meta_header)
          {
            v15 = tiny_check_fail_msg[0];
            v7 = v30;
            v8 = v29;
            v9 = v27;
            v10 = v21;
            v11 = v31;
            v12 = (v31 + 16512);
            v13 = v26;
            v14 = tiny_meta_header;
            tiny_previous_free_msize = get_tiny_previous_free_msize(v21);
            v16 = &v6;
            malloc_zone_check_fail(v15, "%ld, counter=%d\n*** invariant broken for tiny free %p followed by %p in region %p [%p-%p] (end marker incorrect) should be %d; in fact %d\n", v7, v8, v9, v21, v11, v12, v13, tiny_meta_header, tiny_previous_free_msize);
            return 0;
          }

          v27 = v21;
        }

        else
        {
          v25 = 0;
          if (tiny_meta_header > 0x3Fu)
          {
            malloc_zone_check_fail(tiny_check_fail_msg[0], "%ld, counter=%d\n*** invariant broken for %p this tiny msize=%d - size is too large\n", v30, v29, v27, tiny_meta_header);
            return 0;
          }

          v27 += 16 * tiny_meta_header;
        }
      }

      if (v27 == v26)
      {
        if (v31 == v17[268] && v17[266] && ((tiny_meta_header = get_tiny_meta_header(v27, &v24), v24) || tiny_meta_header != 1))
        {
          malloc_zone_check_fail(tiny_check_fail_msg[0], "%ld, counter=%d\n*** invariant broken for blocker block %p - %d %d\n", v30, v29, v27, tiny_meta_header, v24);
          return 0;
        }

        else
        {
          return 1;
        }
      }

      else
      {
        malloc_zone_check_fail(tiny_check_fail_msg[0], "%ld, counter=%d\n*** invariant broken for region end %p - %p\n", v30, v29, v27, v26);
        return 0;
      }
    }
  }

  else
  {
    return 1;
  }
}

uint64_t get_tiny_previous_free_msize(uint64_t a1)
{
  if (a1 == (a1 & 0xFFFFFFFFFFF00000) + 16512)
  {
    return 0;
  }

  else if ((*&stru_20.segname[8 * (((a1 - 16 - (((a1 - 16) & 0xFFFFFFFFFFF00000) + 16512)) >> 4) >> 5) + ((a1 - 16) & 0xFFFFFFFFFFF00000)] >> (((a1 - 16 - (((a1 - 16) & 0xFFFFFFFFFFF00000) + 16512)) >> 4) & 0x1F)))
  {
    return 1;
  }

  else
  {
    return _malloc_read_uint16_via_rsp((a1 - 2));
  }
}

uint64_t tiny_in_use_enumerator(unsigned int a1, uint64_t a2, int a3, uint64_t a4, uint64_t (*a5)(void, unint64_t, unint64_t, uint64_t *), void (*a6)(void, uint64_t, uint64_t, uint64_t *, uint64_t))
{
  v41 = a1;
  v40 = a2;
  v39 = a3;
  v38 = a4;
  v37 = a5;
  v36 = a6;
  v35 = 0;
  i = 0;
  v33 = 0;
  v32 = 0;
  v31 = 0;
  v30 = 0;
  v28 = 0;
  v29 = 0;
  v26 = 0;
  v27 = 0;
  v24 = 0;
  v25 = 0;
  v23 = 0;
  v22 = 0;
  v21 = 0;
  v20 = 0;
  v19 = 0;
  v18 = 0;
  v17 = 0;
  v16 = 0;
  v15 = 0;
  v14 = 0;
  v13 = 0;
  v31 = a5(a1, *(a4 + 16536), 32uLL, &v13);
  if (!v31)
  {
    v35 = *v13;
    v31 = v37(v41, v13[2], 8 * v35, &v33);
    if (v31)
    {
      return v31;
    }

    if (v39)
    {
      v31 = v37(v41, *(v38 + 17136), 2560 * *(v38 + 17120), &v14);
      if (v31)
      {
        return v31;
      }
    }

    for (i = 0; ; ++i)
    {
      if (i >= v35)
      {
        return 0;
      }

      v30 = *(v33 + 8 * i);
      if (v30 && v30 != -1)
      {
        v28 = v30 + 16512;
        v29 = 1032064;
        if ((v39 & 4) != 0)
        {
          v26 = v30;
          v27 = 16420;
          v36(v41, v40, 4, &v26, 1);
        }

        if ((v39 & 6) != 0)
        {
          v24 = v28;
          v25 = 1032064;
          v36(v41, v40, 2, &v24, 1);
        }

        if (v39)
        {
          break;
        }
      }

LABEL_51:
      ;
    }

    v31 = v37(v41, v30, 0x100000uLL, &v23);
    if (v31)
    {
      return v31;
    }

    v10 = (v14 + 2560 * *(v23 + 24));
    v9 = 0;
    for (j = 0; j < *(v38 + 17120); ++j)
    {
      if (v30 == *(v14 + 2560 * j + 24))
      {
        ++v9;
      }
    }

    v22 = v23 + 40;
    v21 = v23 + 44;
    v20 = 0;
    v19 = 64504;
    if (v30 == v10[268])
    {
      v20 += v10[267] >> 4;
      v19 -= v10[266] >> 4;
    }

    while (1)
    {
      if (v20 >= v19)
      {
        if (v32)
        {
          v36(v41, v40, 1, v49, v32);
          v32 = 0;
        }

        goto LABEL_51;
      }

      v8 = 16 * v20;
      v48 = v21;
      v47 = v20;
      v18 = ((*(v21 + 8 * (v47 >> 5)) >> (v47 & 0x1F)) & 1) == 0;
      if (v18)
      {
        v16 = v23 + 16512 + v8;
        v46 = v22;
        v45 = v20 + 1;
        if ((*(v22 + 8 * (v45 >> 5)) >> (v45 & 0x1F)))
        {
          v17 = 1;
        }

        else
        {
          v17 = *(v16 + 16);
        }
      }

      else
      {
        v7 = 0;
        if (v9)
        {
          for (k = 0; k < *(v38 + 17120); ++k)
          {
            if (v30 + 16512 + v8 == *(v14 + 2560 * k + 8))
            {
              v7 = 1;
              --v9;
              v17 = *(v14 + 2560 * k + 16);
              break;
            }
          }
        }

        if (v7)
        {
          if (!v17)
          {
            return 5;
          }

          goto LABEL_48;
        }

        v17 = 1;
        v15 = v20 + 1;
        while (1)
        {
          v44 = v22;
          v43 = v15;
          if ((*(v22 + 8 * (v43 >> 5)) >> (v43 & 0x1F)))
          {
            break;
          }

          ++v15;
          ++v17;
        }

        *&v49[v32] = v30 + 16512 + v8;
        *(&v49[v32++] + 1) = 16 * v17;
        if (v32 >= 0x100)
        {
          v36(v41, v40, 1, v49, v32);
          v32 = 0;
        }
      }

      if (!v17)
      {
        return 5;
      }

LABEL_48:
      v20 += v17;
    }
  }

  return v31;
}

uint64_t tiny_malloc_from_free_list(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int16 a4)
{
  v14 = tiny_slot_from_msize(a4);
  v17 = *(a2 + 32 + 8 * v14);
  if (v17)
  {
    v11 = *(v17 + 8);
    if (v11)
    {
      *v11 = *v17;
    }

    else
    {
      *(a2 + 2088 + 4 * (v14 >> 5)) &= ~(1 << (v14 & 0x1F));
    }

    *(a2 + 32 + 8 * v14) = v11;
    tiny_free_size = a4;
    tiny_update_region_free_list_for_remove(v14, v17, v11);
    if (!malloc_zero_policy)
    {
      _tiny_check_and_zero_inline_meta_from_freelist(a1, v17, a4);
    }

    goto LABEL_38;
  }

  v9 = *(a2 + 2088) & ~((1 << v14) - 1);
  if (v9)
  {
    v15 = __clz(__rbit64(v9));
    v10 = (a2 + 536);
    v13 = (a2 + 32 + 8 * v15);
    if (v13 < a2 + 536)
    {
      v17 = *v13;
      if (*v13)
      {
        v22 = *(v17 + 8);
        *v13 = v22;
        if (v22)
        {
          *v22 = *v17;
        }

        else
        {
          *(a2 + 2088 + 4 * (v15 >> 5)) &= ~(1 << (v15 & 0x1F));
        }

        tiny_free_size = get_tiny_free_size(v17);
        if (tiny_free_size < a4)
        {
          malloc_zone_error(256, 1, "Corruption of tiny freelist %p: size too small (%u/%u)\n", v17, tiny_free_size, a4);
        }

        tiny_update_region_free_list_for_remove(v15, v17, v22);
        if (malloc_zero_policy)
        {
          goto LABEL_35;
        }

        goto LABEL_16;
      }
    }

    v17 = *v10;
    if (*v10)
    {
      tiny_free_size = get_tiny_free_size(v17);
      if (tiny_free_size < a4)
      {
        malloc_zone_error(256, 1, "Corruption of tiny freelist %p: size too small (%u/%u)\n", v17, tiny_free_size, a4);
      }

      v12 = *(v17 + 8);
      if (tiny_free_size - a4 > 63)
      {
        v8 = (v17 + 16 * a4);
        v7 = *v17;
        if (!malloc_zero_policy)
        {
          _tiny_check_and_zero_inline_meta_from_freelist(a1, v17, tiny_free_size);
        }

        *v10 = v8;
        if (v12)
        {
          *v12 = v8;
        }

        *v8 = v7;
        set_tiny_meta_header_free(v8, tiny_free_size - a4);
        tiny_free_size = a4;
        tiny_update_region_free_list_for_remove(63, v17, v8);
        goto LABEL_38;
      }

      if (v12)
      {
        *v12 = *v17;
      }

      *v10 = v12;
      tiny_update_region_free_list_for_remove(v15, v17, v12);
      if (malloc_zero_policy)
      {
        goto LABEL_35;
      }

LABEL_16:
      _tiny_check_and_zero_inline_meta_from_freelist(a1, v17, tiny_free_size);
LABEL_35:
      if (!tiny_free_size || tiny_free_size > a4)
      {
        tiny_free_list_add_ptr(a1, a2, v17 + 16 * a4, tiny_free_size - a4);
        tiny_free_size = a4;
      }

      goto LABEL_38;
    }
  }

  if (*(a2 + 2128) < (16 * a4))
  {
    return 0;
  }

  v17 = *(a2 + 2144) + 0x100000 - *(a2 + 2128);
  *(a2 + 2128) -= 16 * a4;
  if (*(a2 + 2128))
  {
    set_tiny_meta_header_in_use_1(v17 + 16 * a4);
  }

  tiny_free_size = a4;
LABEL_38:
  ++*(a2 + 2168);
  *(a2 + 2152) += 16 * tiny_free_size;
  region_check_cookie((v17 & 0xFFFFFFFFFFF00000), ((v17 & 0xFFFFFFFFFFF00000) + 16508));
  v6 = v17 & 0xFFFFFFFFFFF00000;
  v5 = *(dword_10 + (v17 & 0xFFFFFFFFFFF00000)) + 16 * tiny_free_size;
  *(v6 + 16) = v5;
  ++*(v6 + 20);
  if (v5 >= 0xBCFA0)
  {
    *(&stru_20.cmd + (v17 & 0xFFFFFFFFFFF00000)) = 0;
  }

  if (tiny_free_size <= 1u)
  {
    set_tiny_meta_header_in_use_1(v17);
  }

  else
  {
    set_tiny_meta_header_in_use(v17, tiny_free_size);
  }

  return v17;
}

uint64_t tiny_slot_from_msize(unsigned __int16 a1)
{
  if (a1 && a1 <= 0x3Fu)
  {
    return (a1 - 1);
  }

  else
  {
    return 63;
  }
}

uint64_t tiny_update_region_free_list_for_remove(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (((a2 - ((a2 & 0xFFFFFFFFFFF00000) + 16512)) >> 4) != *(&loc_3F28 + 4 * result + (a2 & 0xFFFFFFFFFFF00000)) - 1)
  {
    __break(1u);
    JUMPOUT(0xA1AC0);
  }

  if (a3 && (a3 & 0xFFFFFFFFFFF00000) == (a2 & 0xFFFFFFFFFFF00000))
  {
    v3 = ((a3 - ((a3 & 0xFFFFFFFFFFF00000) + 16512)) >> 4) + 1;
    v4 = ((a2 & 0xFFFFFFFFFFF00000) + 16168 + 4 * result);
    if (*v4 == v4[1])
    {
      *(&loc_3F28 + 4 * result + (a2 & 0xFFFFFFFFFFF00000) + 2) = v3;
    }

    *(&loc_3F28 + 4 * result + (a2 & 0xFFFFFFFFFFF00000)) = v3;
  }

  else
  {
    *(&loc_3F28 + 4 * result + (a2 & 0xFFFFFFFFFFF00000) + 2) = 0;
    *(&loc_3F28 + 4 * result + (a2 & 0xFFFFFFFFFFF00000)) = 0;
  }

  return result;
}

uint64_t tiny_get_region_from_depot(uint64_t a1, uint64_t a2, int a3, unsigned __int16 a4)
{
  v16 = *(a1 + 624) - 2560;
  v4 = 0;
  atomic_compare_exchange_strong_explicit(v16, &v4, *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24), memory_order_acquire, memory_order_acquire);
  if (v4)
  {
    os_unfair_lock_lock_with_options();
  }

  v14 = a4;
  while (1)
  {
    msize_region = tiny_find_msize_region(a1, v16, 0xFFFFFFFFLL, v14);
    if (!msize_region)
    {
      v5 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
      v6 = v5;
      atomic_compare_exchange_strong_explicit(v16, &v6, 0, memory_order_release, memory_order_relaxed);
      if (v6 != v5)
      {
        os_unfair_lock_unlock(v16);
      }

      return 0;
    }

    if (!*(msize_region + 28))
    {
      break;
    }

    if (++v14 > 0x3Fu)
    {
      v7 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
      v8 = v7;
      atomic_compare_exchange_strong_explicit(v16, &v8, 0, memory_order_release, memory_order_relaxed);
      if (v8 != v7)
      {
        os_unfair_lock_unlock(v16);
      }

      return 0;
    }
  }

  if (*msize_region)
  {
    *(*msize_region + 8) = *(msize_region + 8);
  }

  else
  {
    *(v16 + 2176) = *(msize_region + 8);
  }

  if (*(msize_region + 8))
  {
    **(msize_region + 8) = *msize_region;
  }

  else
  {
    *(v16 + 2184) = *msize_region;
  }

  *msize_region = 0;
  *(msize_region + 8) = 0;
  --*(v16 + 2172);
  v13 = tiny_free_detach_region(a1, v16, msize_region);
  *(msize_region + 24) = a3;
  if (*(msize_region + 28))
  {
    __break(1u);
    JUMPOUT(0xA1F44);
  }

  v12 = tiny_free_reattach_region(a1, a2, msize_region);
  *(v16 + 2152) -= v12;
  *(v16 + 2160) -= 1032064;
  *(v16 + 2168) -= v13;
  *(a2 + 2152) += v12;
  *(a2 + 2160) += 1032064;
  *(a2 + 2168) += v13;
  if (*(a2 + 2184))
  {
    *msize_region = *(a2 + 2184);
    *(*(a2 + 2184) + 8) = msize_region;
  }

  else
  {
    *(a2 + 2176) = msize_region;
    *msize_region = 0;
  }

  *(a2 + 2184) = msize_region;
  *(msize_region + 8) = 0;
  *(msize_region + 32) = 0;
  ++*(a2 + 2172);
  v9 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
  v10 = v9;
  atomic_compare_exchange_strong_explicit(v16, &v10, 0, memory_order_release, memory_order_relaxed);
  if (v10 != v9)
  {
    os_unfair_lock_unlock(v16);
  }

  return 1;
}

unint64_t tiny_malloc_from_region_no_lock(atomic_uint *a1, uint64_t a2, int a3, __int16 a4, unint64_t a5)
{
  if (*(a2 + 2128) != 0)
  {
    tiny_finalize_region(a1, a2);
  }

  *(a5 + 16160) = -16777216;
  *(a5 + 16164) = 0;
  *(a5 + 24) = a3;
  rack_region_insert(a1, a5);
  *(a2 + 2144) = a5;
  *(a5 + 16) = 16 * a4;
  *(a5 + 20) = 1;
  set_tiny_meta_header_in_use(a5 + 16512, a4);
  ++*(a2 + 2168);
  *(a2 + 2152) += 16 * a4;
  *(a2 + 2160) += 1032064;
  set_tiny_meta_header_in_use_1(a5 + 16512 + 16 * a4);
  *(a2 + 2128) = 16 * (64504 - a4);
  *(a2 + 2136) = 0;
  if (*(a2 + 2184))
  {
    *a5 = *(a2 + 2184);
    *(*(a2 + 2184) + 8) = a5;
  }

  else
  {
    *(a2 + 2176) = a5;
    *a5 = 0;
  }

  *(a2 + 2184) = a5;
  *(a5 + 8) = 0;
  *(a5 + 32) = 0;
  ++*(a2 + 2172);
  return a5 + 16512;
}

uint64_t tiny_size(uint64_t a1, uint64_t a2)
{
  v8 = a1;
  v7 = a2;
  if (!tiny_region_for_ptr_no_lock(a1, a2))
  {
    return 0;
  }

  if (((v7 - ((v7 & 0xFFFFFFFFFFF00000) + 16512)) >> 4) < 0xFBF8uLL)
  {
    v6 = 0;
    tiny_meta_header = get_tiny_meta_header(v7, &v6);
    if (!v6)
    {
      v3 = *(&dword_18 + (v7 & 0xFFFFFFFFFFF00000));
      if (v3 == -1)
      {
        for (i = 0; i < *(v8 + 608); ++i)
        {
          if (tiny_meta_header < 0x10u && v7 == *(*(v8 + 624) + 2560 * i + 8))
          {
            return 0;
          }
        }
      }

      else if (tiny_meta_header < 0x10u && v7 == *(*(v8 + 624) + 2560 * v3 + 8))
      {
        return 0;
      }

      return 16 * tiny_meta_header;
    }

    return 0;
  }

  else
  {
    malloc_printf("NO ZONE for ptr %p\n", v7);
    return 0;
  }
}

uint64_t tiny_batch_malloc(uint64_t a1, uint64_t a2, uint64_t *a3, unsigned int a4)
{
  v13 = (a2 + 15) >> 4;
  v12 = 0;
  v11 = rack_get_thread_index(a1 + 16512) % *(a1 + 17120);
  v10 = (*(a1 + 17136) + 2560 * v11);
  if (!v13)
  {
    v13 = 1;
  }

  v4 = 0;
  atomic_compare_exchange_strong_explicit(v10, &v4, *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24), memory_order_acquire, memory_order_acquire);
  if (v4)
  {
    os_unfair_lock_lock_with_options();
  }

  while (v12 < a4)
  {
    v9 = tiny_malloc_from_free_list(a1 + 16512, v10, v11, v13);
    if (!v9)
    {
      break;
    }

    v5 = a3++;
    *v5 = v9;
    ++v12;
  }

  v6 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
  v7 = v6;
  atomic_compare_exchange_strong_explicit(v10, &v7, 0, memory_order_release, memory_order_relaxed);
  if (v7 != v6)
  {
    os_unfair_lock_unlock(v10);
  }

  return v12;
}

void tiny_batch_free(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v16 = a1;
  v15 = a2;
  v14 = a3;
  v13 = 0;
  v12 = 0;
  v11 = 0;
  v10 = 0;
  v8 = 0;
  v7 = -1;
  if (a3)
  {
    while (v13 < v14)
    {
      v12 = *(v15 + 8 * v13);
      if (v12)
      {
        if (!v11 || v11 != (v12 & 0xFFFFFFFFFFF00000))
        {
          if (v8)
          {
            v18 = v8;
            v19 = v8;
            v35 = v8;
            v36 = 3;
            v37 = 3;
            StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
            v34 = *(StatusReg + 24);
            v33 = 0;
            v32 = v34;
            v31 = 0;
            v3 = v34;
            v4 = v34;
            atomic_compare_exchange_strong_explicit(v8, &v4, 0, memory_order_release, memory_order_relaxed);
            if (v4 != v3)
            {
              v32 = v4;
            }

            v30 = v4 == v3;
            if (v4 != v3)
            {
              os_unfair_lock_unlock(v35);
            }

            v8 = 0;
          }

          v11 = tiny_region_for_ptr_no_lock(v16 + 16512, v12);
          if (v11)
          {
            v8 = mag_lock_zine_for_region_trailer_0(*(v16 + 17136), v11, v11[6]);
            v7 = v11[6];
          }
        }

        if (!v11)
        {
          break;
        }

        if (((v12 - ((v12 & 0xFFFFFFFFFFF00000) + 16512)) >> 4) >= 0xFBF8uLL)
        {
          break;
        }

        tiny_meta_header = get_tiny_meta_header(v12, &v10);
        if (v10)
        {
          break;
        }

        if (!malloc_zero_policy)
        {
          _platform_memset();
        }

        if (!tiny_free_no_lock(v16 + 16512, v8, v7, v11, v12, tiny_meta_header, 0))
        {
          v8 = 0;
          v11 = 0;
        }

        *(v15 + 8 * v13) = 0;
      }

      ++v13;
    }

    if (v8)
    {
      v17 = v8;
      v20 = v8;
      v26 = v8;
      v27 = 3;
      v28 = 3;
      v29 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v25 = *(v29 + 24);
      v24 = 0;
      v23 = v25;
      v22 = 0;
      v5 = v25;
      v6 = v25;
      atomic_compare_exchange_strong_explicit(v8, &v6, 0, memory_order_release, memory_order_relaxed);
      if (v6 != v5)
      {
        v23 = v6;
      }

      v21 = v6 == v5;
      if (v6 != v5)
      {
        os_unfair_lock_unlock(v26);
      }
    }
  }
}

uint64_t print_tiny_free_list(uint64_t a1, unsigned int (*a2)(void, const void *, uint64_t, uint64_t *), uint64_t (*a3)(const char *), const void *a4)
{
  v20 = a1;
  v19 = a2;
  v18 = a3;
  v17 = a4;
  v16 = 0;
  result = _simple_salloc();
  v15 = result;
  i = 0;
  if (result)
  {
    v13 = 0;
    v12 = 0;
    if (v19(v20, v17, 768, &v13))
    {
      return v18("Failed to map tiny rack\n");
    }

    else
    {
      _simple_sappend();
      if (v19(v20, *(v13 + 624), 2560 * *(v13 + 608), &v12))
      {
        return v18("Failed to map tiny rack magazines\n");
      }

      else
      {
        for (i = -1; i < *(v13 + 608); ++i)
        {
          v11 = 0;
          if (i == -1)
          {
            _simple_sprintf(v15, "\tRecirc depot: ");
          }

          else
          {
            _simple_sprintf(v15, "\tMagazine %d: ", i);
          }

          while (v11 <= 0x3F)
          {
            v16 = *(v12 + 2560 * i + 32 + 8 * v11);
            if (v16)
            {
              v10 = v15;
              v5 = ">=";
              if (v11 != 63)
              {
                v5 = &unk_B18C2;
              }

              v9 = v5;
              v6 = free_list_count(v20, v19, v18, v13, v16);
              _simple_sprintf(v10, "%s%y[%d]; ", v9, 16 * (v11 + 1), v6);
            }

            ++v11;
          }

          _simple_sappend();
        }

        v8 = v18;
        v7 = _simple_string();
        v8("%s\n", v7);
        return _simple_sfree();
      }
    }
  }

  return result;
}

uint64_t free_list_count(unsigned int a1, unsigned int (*a2)(void, const void *, uint64_t, uint64_t *), void (*a3)(const char *, ...), uint64_t a4, const void *a5)
{
  v12 = a5;
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  v7 = 0;
  v6 = 0;
  while (v12)
  {
    ++v7;
    if (v10(v11, v12, 16, &v6))
    {
      v9("** invalid pointer in free list: %p\n", v12);
      return v7;
    }

    v17 = v8;
    v16 = v6 + 8;
    v15 = *(v6 + 8);
    v14 = v15;
    v20 = v8;
    v19 = v15;
    v18 = v15;
    v13 = v15;
    v12 = v15;
  }

  return v7;
}

uint64_t print_tiny_region(unsigned int a1, uint64_t (*a2)(void, void, void, void), uint64_t (*a3)(const char *, ...), int a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v31 = a1;
  v30 = a2;
  v29 = a3;
  v28 = a4;
  v27 = a5;
  v26 = a6;
  v25 = a7;
  v24 = 0;
  v23 = (a5 + 16512);
  v22 = (a5 + 16512 + a6);
  v21 = a5 + 0x100000 - a7;
  v20 = 0;
  v19 = 0;
  v15 = 0;
  if (a2(a1, a5 + 16512, 0x100000, &v20))
  {
    return v29("Failed to map tiny region at %p\n", v23);
  }

  v14 = v20 - v23;
  v13 = v20;
  if (v27 == -1)
  {
    result = _simple_salloc();
    if (result)
    {
      _simple_sprintf(result, "Tiny region [unknown address] was returned to the OS\n");
      v11 = v29;
      v8 = _simple_string();
      v11("%s\n", v8);
      return _simple_sfree();
    }
  }

  else
  {
    _platform_memset();
    while (v22 < v21)
    {
      tiny_meta_header_offset = get_tiny_meta_header_offset(v22, v14, &v19);
      if (v19 && !tiny_meta_header_offset && v22 == v23)
      {
        if ((&v23[vm_page_size + 17] & ~(vm_page_size - 1)) < ((v23 + 1048574) & ~(vm_page_size - 1)))
        {
          v15 += ((v23 + 1048574) & ~(vm_page_size - 1)) - (&v23[vm_page_size + 17] & ~(vm_page_size - 1));
        }

        break;
      }

      if (!tiny_meta_header_offset)
      {
        v29("*** error with %p: msize=%d\n", v22, 0);
        break;
      }

      if (v19)
      {
        if ((&v22[vm_page_size + 17] & ~(vm_page_size - 1)) < (&v22[16 * tiny_meta_header_offset - 2] & ~(vm_page_size - 1)))
        {
          v15 += (&v22[16 * tiny_meta_header_offset - 2] & ~(vm_page_size - 1)) - (&v22[vm_page_size + 17] & ~(vm_page_size - 1));
        }
      }

      else
      {
        if (tiny_meta_header_offset > 0x3Fu)
        {
          v29("*** error at %p msize for in_use is %d\n", v22, tiny_meta_header_offset);
        }

        if (tiny_meta_header_offset < 0x400u)
        {
          ++v32[tiny_meta_header_offset];
        }

        ++v24;
      }

      v22 += 16 * tiny_meta_header_offset;
    }

    result = _simple_salloc();
    v16 = result;
    if (result)
    {
      v12 = *(v13 + 24);
      _simple_sprintf(result, "Tiny region [%p-%p, %y] \t", v23, v27 + 0x100000, 0x100000);
      if (v12 == -1)
      {
        _simple_sprintf(v16, "Recirc depot \t");
      }

      else
      {
        _simple_sprintf(v16, "Magazine=%d \t", v12);
      }

      _simple_sprintf(v16, "Allocations in use=%d \t Bytes in use=%ly (%d%%) \t", v24, *(v13 + 16), (100.0 * *(v13 + 16)) / 0x100000uLL);
      if (v25 || v26)
      {
        _simple_sprintf(v16, "Untouched=%ly ", v25 + v26);
      }

      if (v12 == -1)
      {
        _simple_sprintf(v16, "Advised MADV_FREE=%ly", v15);
      }

      else
      {
        _simple_sprintf(v16, "Fragments subject to reclamation=%ly", v15);
        if (tiny_region_below_recirc_threshold(v13))
        {
          _simple_sprintf(v16, "\tEmpty enough to be moved to recirc depot");
        }

        else
        {
          _simple_sprintf(v16, "\tNot empty enough to be moved to recirc depot");
        }
      }

      if (v28 >= 2 && v24)
      {
        _simple_sappend();
        for (i = 0; i < 0x400; ++i)
        {
          if (v32[i])
          {
            _simple_sprintf(v16, "%y[%d] ", 16 * i, v32[i]);
          }
        }
      }

      v10 = v29;
      v9 = _simple_string();
      v10("%s\n", v9);
      return _simple_sfree();
    }
  }

  return result;
}

uint64_t get_tiny_meta_header_offset(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v11 = (a1 & 0xFFFFFFFFFFF00000) + 40 + a2;
  v10 = (a1 - ((a1 & 0xFFFFFFFFFFF00000) + 16512)) >> 4;
  v9 = 2 * (v10 >> 5);
  v8 = 1 << (v10 & 0x1F);
  *a3 = 0;
  if ((*(v11 + 4 * v9) & v8) != 0)
  {
    if ((*(v11 + 4 * (v9 + 1)) & v8) != 0)
    {
      v7 = (v11 + 8 * (v10 >> 5));
      if ((v10 & 0x1F) != 0)
      {
        v6 = (*v7 >> (v10 & 0x1F)) | (v7[2] << (32 - (v10 & 0x1Fu))) | (v7[4] << (64 - (v10 & 0x1Fu)));
      }

      else
      {
        v6 = (*v7 >> (v10 & 0x1F)) | (v7[2] << (32 - (v10 & 0x1Fu)));
      }

      v3 = __clz(__rbit64(v6 >> 1));
      v4 = 0;
      if (v6 >> 1)
      {
        return (v3 + 1);
      }

      return v4;
    }

    else
    {
      *a3 = 1;
      return get_tiny_free_size_offset(a1, a2);
    }
  }

  else
  {
    return 0;
  }
}

uint64_t tiny_free_list_check(uint64_t a1, unsigned int a2, int a3)
{
  for (i = -1; i < *(a1 + 608); ++i)
  {
    v18 = (*(a1 + 624) + 2560 * i);
    v3 = 0;
    atomic_compare_exchange_strong_explicit(v18, &v3, *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24), memory_order_acquire, memory_order_acquire);
    if (v3)
    {
      os_unfair_lock_lock_with_options();
    }

    v17 = 0;
    v16 = *(*(a1 + 624) + 2560 * i + 32 + 8 * a2);
    v15 = 0;
    while (v16)
    {
      if (!tiny_meta_header_is_free(v16))
      {
        malloc_zone_check_fail(tiny_freelist_fail_msg, " (slot=%u), counter=%d\n*** in-use ptr in free list slot=%u count=%d ptr=%p\n", a2, a3, a2, v17, v16);
        v4 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
        v5 = v4;
        atomic_compare_exchange_strong_explicit(v18, &v5, 0, memory_order_release, memory_order_relaxed);
        if (v5 != v4)
        {
          os_unfair_lock_unlock(v18);
        }

        return 0;
      }

      if ((v16 & 0xF) != 0)
      {
        malloc_zone_check_fail(tiny_freelist_fail_msg, " (slot=%u), counter=%d\n*** unaligned ptr in free list slot=%u count=%d ptr=%p\n", a2, a3, a2, v17, v16);
        v6 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
        v7 = v6;
        atomic_compare_exchange_strong_explicit(v18, &v7, 0, memory_order_release, memory_order_relaxed);
        if (v7 != v6)
        {
          os_unfair_lock_unlock(v18);
        }

        return 0;
      }

      if (!tiny_region_for_ptr_no_lock(a1, v16))
      {
        malloc_zone_check_fail(tiny_freelist_fail_msg, " (slot=%u), counter=%d\n*** ptr not in szone slot=%d  count=%u ptr=%p\n", a2, a3, a2, v17, v16);
        v8 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
        v9 = v8;
        atomic_compare_exchange_strong_explicit(v18, &v9, 0, memory_order_release, memory_order_relaxed);
        if (v9 != v8)
        {
          os_unfair_lock_unlock(v18);
        }

        return 0;
      }

      if (*v16 != v15)
      {
        malloc_zone_check_fail(tiny_freelist_fail_msg, " (slot=%u), counter=%d\n*** previous incorrectly set slot=%u count=%d ptr=%p\n", a2, a3, a2, v17, v16);
        v10 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
        v11 = v10;
        atomic_compare_exchange_strong_explicit(v18, &v11, 0, memory_order_release, memory_order_relaxed);
        if (v11 != v10)
        {
          os_unfair_lock_unlock(v18);
        }

        return 0;
      }

      v15 = v16;
      v16 = *(v16 + 8);
      ++v17;
    }

    v12 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
    v13 = v12;
    atomic_compare_exchange_strong_explicit(v18, &v13, 0, memory_order_release, memory_order_relaxed);
    if (v13 != v12)
    {
      os_unfair_lock_unlock(v18);
    }
  }

  return 1;
}

uint64_t tiny_check(uint64_t a1, unsigned int a2)
{
  for (i = 0; i < **(a1 + 24); ++i)
  {
    v8 = *(*(*(a1 + 24) + 16) + 8 * i);
    if (v8 != -1 && v8)
    {
      v7 = mag_lock_zine_for_region_trailer_0(*(a1 + 624), v8, *(v8 + 24));
      if (!tiny_check_region(a1, v8, i, a2))
      {
        v2 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
        v3 = v2;
        atomic_compare_exchange_strong_explicit(v7, &v3, 0, memory_order_release, memory_order_relaxed);
        if (v3 != v2)
        {
          os_unfair_lock_unlock(v7);
        }

        return 0;
      }

      v4 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
      v5 = v4;
      atomic_compare_exchange_strong_explicit(v7, &v5, 0, memory_order_release, memory_order_relaxed);
      if (v5 != v4)
      {
        os_unfair_lock_unlock(v7);
      }
    }
  }

  for (j = 0; j < 0x3F; ++j)
  {
    if (!tiny_free_list_check(a1, j, a2))
    {
      return 0;
    }
  }

  return 1;
}

unint64_t tiny_earlier_region_last_free(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v10 = 0;
  v9 = 0;
  v8 = 0;
  for (i = *(a1 + 2176); ; i = *(i + 8))
  {
    v6 = 0;
    if (i)
    {
      v6 = 0;
      if (i != a2)
      {
        v3 = v10++;
        v6 = v3 < 5;
      }
    }

    if (!v6)
    {
      break;
    }

    if (*(&loc_3F28 + 4 * a3 + (i & 0xFFFFFFFFFFF00000) + 2))
    {
      v9 = *(&loc_3F28 + 4 * a3 + (i & 0xFFFFFFFFFFF00000) + 2);
      v8 = i;
    }
  }

  if (v9)
  {
    return (v8 & 0xFFFFFFFFFFF00000) + 16512 + 16 * (v9 - 1);
  }

  else
  {
    return 0;
  }
}

uint64_t get_tiny_free_size_offset(uint64_t a1, uint64_t a2)
{
  if (a1 + 16 >= (a1 & 0xFFFFFFFFFFF00000) + 0x100000)
  {
    return 1;
  }

  v3 = a1 + 16;
  if ((*((v3 & 0xFFFFFFFFFFF00000) + 40 + a2 + 8 * (((v3 - ((v3 & 0xFFFFFFFFFFF00000) + 16512)) >> 4) >> 5)) >> (((v3 - ((v3 & 0xFFFFFFFFFFF00000) + 16512)) >> 4) & 0x1F)))
  {
    return 1;
  }

  else
  {
    return *(a1 + a2 + 16);
  }
}

BOOL tiny_magazine_below_recirc_threshold(uint64_t a1)
{
  v4 = *(a1 + 2160);
  v3 = *(a1 + 2152);
  v2 = 0;
  if (v4 - v3 > 0x179F40)
  {
    return v3 < v4 - (v4 >> 2);
  }

  return v2;
}

uint64_t tiny_free_do_recirc_to_depot(uint64_t a1, uint64_t a2)
{
  for (i = *(a2 + 2184); ; i = *i)
  {
    v9 = 0;
    if (i)
    {
      v8 = 1;
      if (*(i + 32))
      {
        v8 = *(i + 28) != 0;
      }

      v9 = v8;
    }

    if (!v9)
    {
      break;
    }
  }

  if (i)
  {
    v14 = i & 0xFFFFFFFFFFF00000;
    if ((i & 0xFFFFFFFFFFF00000) == *(a2 + 2144) && (*(a2 + 2128) || *(a2 + 2136)))
    {
      tiny_finalize_region(a1, a2);
    }

    if (*i)
    {
      *(*i + 8) = *(i + 8);
    }

    else
    {
      *(a2 + 2176) = *(i + 8);
    }

    if (*(i + 8))
    {
      **(i + 8) = *i;
    }

    else
    {
      *(a2 + 2184) = *i;
    }

    *i = 0;
    *(i + 8) = 0;
    --*(a2 + 2172);
    v13 = tiny_free_detach_region(a1, a2, v14);
    v12 = *(a1 + 624) - 2560;
    v2 = 0;
    atomic_compare_exchange_strong_explicit(v12, &v2, *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24), memory_order_acquire, memory_order_acquire);
    if (v2)
    {
      os_unfair_lock_lock_with_options();
    }

    *(&dword_18 + (i & 0xFFFFFFFFFFF00000)) = -1;
    *(i + 28) = 0;
    v11 = tiny_free_reattach_region(a1, v12, v14);
    *(a2 + 2152) -= v11;
    *(a2 + 2160) -= 1032064;
    *(a2 + 2168) -= v13;
    v3 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
    v4 = v3;
    atomic_compare_exchange_strong_explicit(a2, &v4, 0, memory_order_release, memory_order_relaxed);
    if (v4 != v3)
    {
      os_unfair_lock_unlock(a2);
    }

    *(v12 + 2152) += v11;
    *(v12 + 2160) += 1032064;
    *(v12 + 2168) += v13;
    if (*(v12 + 2184))
    {
      *i = *(v12 + 2184);
      *(*(v12 + 2184) + 8) = i;
    }

    else
    {
      *(v12 + 2176) = i;
      *i = 0;
    }

    *(v12 + 2184) = i;
    *(i + 8) = 0;
    *(i + 32) = 0;
    ++*(v12 + 2172);
    if ((aggressive_madvise_enabled & 1) == 0)
    {
      tiny_free_scan_madvise_free(a1, v12, v14);
    }

    v10 = tiny_free_try_depot_unmap_no_lock(a1, v12, i);
    v5 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
    v6 = v5;
    atomic_compare_exchange_strong_explicit(v12, &v6, 0, memory_order_release, memory_order_relaxed);
    if (v6 != v5)
    {
      os_unfair_lock_unlock(v12);
    }

    if (v10)
    {
      if ((*(a1 + 620) & 4) != 0)
      {
        mvm_deallocate_pages(v10, 0x100000uLL, *(a1 + 620) & 0xFFFE);
      }

      else
      {
        mvm_deallocate_pages(v10, 0x100000uLL, *(a1 + 620) & 0xFFFC);
      }
    }

    return 0;
  }

  else
  {
    return 1;
  }
}

const void *tiny_free_try_depot_unmap_no_lock(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16) || *(a3 + 28) > 0 || *(a2 + 2172) < recirc_retained_regions)
  {
    return 0;
  }

  if (*a3)
  {
    *(*a3 + 8) = *(a3 + 8);
  }

  else
  {
    *(a2 + 2176) = *(a3 + 8);
  }

  if (*(a3 + 8))
  {
    **(a3 + 8) = *a3;
  }

  else
  {
    *(a2 + 2184) = *a3;
  }

  *a3 = 0;
  *(a3 + 8) = 0;
  --*(a2 + 2172);
  v5 = (a3 & 0xFFFFFFFFFFF00000);
  v4 = tiny_free_detach_region(a1, a2, a3 & 0xFFFFFFFFFFF00000);
  if (v4)
  {
    malloc_zone_error(*(a1 + 620), 1, "tiny_free_try_depot_unmap_no_lock objects_in_use not zero: %d\n", v4);
    return 0;
  }

  else if (rack_region_remove(a1, v5, a3))
  {
    *(a2 + 2160) -= 1032064;
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t zero_on_free_should_sample()
{
  v2 = 0;
  if (malloc_zero_on_free_sample_period)
  {
    v1 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 888) + 1;
    if (v1 == malloc_zero_on_free_sample_period)
    {
      v2 = 1;
      v1 = 0;
    }

    *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 888) = v1;
  }

  return v2 & 1;
}

void _tiny_check_and_zero_inline_meta_from_freelist(uint64_t a1, unsigned __int16 *a2, unsigned __int16 a3)
{
  *a2 = 0uLL;
  if (a3 <= 1u)
  {
    if (!a3 && a2[8])
    {
      malloc_zone_error(256, 1, "Corruption at %p: unexpected nonzero msize %u\n", a2, a2[8]);
    }
  }

  else
  {
    v5 = a2[8];
    v4 = &a2[8 * a3];
    v3 = *(v4 - 1);
    if (v5 == v3)
    {
      if (v5 != a3)
      {
        malloc_zone_error(256, 1, "Corruption at %p: unexpected msizes %u/%u\n", a2, v5, a3);
      }
    }

    else
    {
      malloc_zone_error(256, 1, "Corruption of free object %p: msizes %u/%u disagree\n", a2, v5, v3);
    }

    a2[8] = 0;
    *(v4 - 1) = 0;
  }
}

unint64_t tiny_find_msize_region(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int16 a4)
{
  v8 = tiny_slot_from_msize(a4);
  v9 = *(a2 + 32 + 8 * v8);
  if (v9)
  {
    return v9 & 0xFFFFFFFFFFF00000;
  }

  v5 = *(a2 + 2088) & ~((1 << v8) - 1);
  if (!v5)
  {
    return 0;
  }

  v6 = (a2 + 536);
  v7 = (a2 + 32 + 8 * __clz(__rbit64(v5)));
  if (v7 < a2 + 536 && *v7)
  {
    return *v7 & 0xFFFFFFFFFFF00000;
  }

  if (*v6)
  {
    return *v6 & 0xFFFFFFFFFFF00000;
  }

  return 0;
}

uint64_t _malloc_default_debug_sleep_time()
{
  if (malloc_error_sleep)
  {
    return 3600;
  }

  else
  {
    return 0;
  }
}

char *malloc_print_configure()
{
  v1 = getenv("MallocDebugReport");
  if (v1)
  {
    if (_platform_strcmp())
    {
      if (_platform_strcmp())
      {
        if (_platform_strcmp())
        {
          debug_mode = 2;
          malloc_printf("Unrecognized value for MallocDebugReport (%s) - using 'stderr'\n", v1);
        }

        else
        {
          debug_mode = 0;
        }
      }

      else
      {
        debug_mode = 1;
      }
    }

    else
    {
      debug_mode = 2;
    }
  }

  else if (isatty(2))
  {
    debug_mode = 2;
  }

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

void malloc_vreport(uint64_t a1, unsigned int a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v20 = a1;
  v15 = 0;
  v14 = _simple_salloc();
  if (v14)
  {
    if ((v20 & 0x20) == 0)
    {
      v12 = (_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) - 224);
      v9 = getprogname();
      v7 = getpid();
      _simple_sprintf(v14, "%s(%d,%p) malloc: ", v9, v7, v12);
    }

    if (a3)
    {
      _simple_sprintf(v14, a3, a4);
    }

    _simple_vsprintf();
    if ((v20 & 0x100) != 0)
    {
      _malloc_append_backtrace(v14);
    }

    if ((v20 & 0x200) == 0 && (debug_mode == 2 || debug_mode == 1 && (v20 & 0x40) != 0))
    {
      _simple_put();
    }

    if (!_malloc_no_asl_log && (v20 & 0x10) == 0)
    {
      _simple_string();
      _simple_asl_log();
    }

    if ((v20 & 0x40) != 0)
    {
      v15 = _simple_string();
    }

    else
    {
      _simple_sfree();
    }
  }

  else
  {
    if ((v20 & 0x200) == 0 && (debug_mode == 2 || debug_mode == 1 && (v20 & 0x40) != 0))
    {
      if ((v20 & 0x20) == 0)
      {
        v13 = (_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) - 224);
        v11 = malloc_debug_file;
        v10 = getprogname();
        v6 = getpid();
        _simple_dprintf(v11, "%s(%d,%p) malloc: ", v10, v6, v13);
      }

      if (a3)
      {
        _simple_dprintf(malloc_debug_file, a3, a4);
      }

      _simple_vdprintf();
    }

    if ((v20 & 0x40) != 0)
    {
      v15 = a5;
    }
  }

  if ((v20 & 0xC0) != 0)
  {
    _malloc_put(v20, "*** set a breakpoint in malloc_error_break to debug\n");
    malloc_error_break();
    if (malloc_error_stop)
    {
      _malloc_put(5, "*** sending SIGSTOP to help debug\n");
      v8 = getpid();
      kill(v8, 17);
    }

    else if (a2)
    {
      _malloc_put(5, "*** sleeping to help debug\n");
      sleep(a2);
    }
  }

  if ((v20 & 0x40) != 0)
  {
    qword_D8128 = v15;
    abort();
  }
}

void _malloc_append_backtrace(uint64_t a1)
{
  bzero(array, 0x190uLL);
  v1 = backtrace(array, 50);
  *size = v1;
  if (v1)
  {
    backtrace_image_offsets(array, image_offsets, v1);
    for (i = 0; i < *size; ++i)
    {
      *uu1 = 0;
      v7 = 0;
      if (i && !uuid_compare(uu1, image_offsets[i].uuid))
      {
        _simple_sappend();
      }

      else
      {
        uuid_copy(uu1, image_offsets[i].uuid);
        memset(__b, 0, sizeof(__b));
        uuid_unparse(image_offsets[i].uuid, __b);
        _simple_sappend();
      }

      _simple_sprintf(a1, "+%u,", image_offsets[i].offset);
    }
  }
}

ssize_t _malloc_put(uint64_t a1, const char *a2)
{
  v14 = a1;
  result = _simple_salloc();
  v12 = result;
  if (result)
  {
    if ((v14 & 0x20) == 0)
    {
      v10 = (_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) - 224);
      v6 = getprogname();
      v5 = getpid();
      _simple_sprintf(v12, "%s(%d,%p) malloc: ", v6, v5, v10);
    }

    _simple_sprintf(v12, "%s", a2);
    if ((v14 & 0x200) == 0 && (debug_mode == 2 || debug_mode == 1 && (v14 & 0x40) != 0))
    {
      _simple_put();
    }

    if ((_malloc_no_asl_log & ((v14 & 0x10) == 0)) != 0)
    {
      _simple_string();
      _simple_asl_log();
    }

    return _simple_sfree();
  }

  else if ((v14 & 0x200) == 0 && (debug_mode == 2 || debug_mode == 1 && (v14 & 0x40) != 0))
  {
    if ((v14 & 0x20) == 0)
    {
      v11 = (_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) - 224);
      v9 = malloc_debug_file;
      v8 = getprogname();
      v3 = getpid();
      _simple_dprintf(v9, "%s(%d,%p) malloc: ", v8, v3, v11);
    }

    __fd = malloc_debug_file;
    v4 = _platform_strlen();
    return write(__fd, a2, v4);
  }

  return result;
}

void malloc_report(unsigned int a1, const char *a2, ...)
{
  va_start(va, a2);
  v2 = _malloc_default_debug_sleep_time();
  malloc_vreport(a1, v2, 0, 0, a2, va);
}

void malloc_zone_error(__int16 a1, char a2, const char *a3, ...)
{
  va_start(va, a3);
  v4 = 144;
  if ((a2 & 1) != 0 && (a1 & 0x100) != 0 || (a1 & 0x40) != 0)
  {
    v4 = 64;
  }

  v3 = _malloc_default_debug_sleep_time();
  malloc_vreport(v4 | 3u, v3, 0, 0, a3, va);
}

void internal_check()
{
  v0 = malloc_check_counter++;
  if (v0 >= malloc_check_start)
  {
    if (malloc_zone_check(0))
    {
      if (!frames)
      {
        vm_allocate(mach_task_self_, &frames, vm_page_size, 1);
      }

      thread_stack_pcs();
    }

    malloc_check_start += malloc_check_each;
  }
}

void tiny_zero_corruption_abort(unsigned __int8 *a1, unsigned __int16 a2)
{
  v36 = a1;
  v35 = 16 * a2;
  v34 = &a1[v35];
  while (!*v36)
  {
    ++v36;
  }

  v33 = v36 - a1;
  if (v36 >= v34)
  {
    v32 = 0;
  }

  else
  {
    v32 = *v36;
  }

  if (v36 + 1 >= v34)
  {
    v31 = 0;
  }

  else
  {
    v31 = v36[1];
  }

  if (v36 + 2 >= v34)
  {
    v30 = 0;
  }

  else
  {
    v30 = v36[2];
  }

  if (v36 + 3 >= v34)
  {
    v29 = 0;
  }

  else
  {
    v29 = v36[3];
  }

  if (v36 + 4 >= v34)
  {
    v28 = 0;
  }

  else
  {
    v28 = v36[4];
  }

  if (v36 + 5 >= v34)
  {
    v27 = 0;
  }

  else
  {
    v27 = v36[5];
  }

  if (v36 + 6 >= v34)
  {
    v26 = 0;
  }

  else
  {
    v26 = v36[6];
  }

  if (v36 + 7 >= v34)
  {
    v25 = 0;
  }

  else
  {
    v25 = v36[7];
  }

  if (v36 + 8 >= v34)
  {
    v24 = 0;
  }

  else
  {
    v24 = v36[8];
  }

  if (v36 + 9 >= v34)
  {
    v23 = 0;
  }

  else
  {
    v23 = v36[9];
  }

  if (v36 + 10 >= v34)
  {
    v22 = 0;
  }

  else
  {
    v22 = v36[10];
  }

  if (v36 + 11 >= v34)
  {
    v21 = 0;
  }

  else
  {
    v21 = v36[11];
  }

  if (v36 + 12 >= v34)
  {
    v20 = 0;
  }

  else
  {
    v20 = v36[12];
  }

  if (v36 + 13 >= v34)
  {
    v19 = 0;
  }

  else
  {
    v19 = v36[13];
  }

  if (v36 + 14 >= v34)
  {
    v18 = 0;
  }

  else
  {
    v18 = v36[14];
  }

  if (v36 + 15 >= v34)
  {
    v17 = 0;
  }

  else
  {
    v17 = v36[15];
  }

  if (v36 + 16 >= v34)
  {
    v16 = 0;
  }

  else
  {
    v16 = v36[16];
  }

  if (v36 + 17 >= v34)
  {
    v15 = 0;
  }

  else
  {
    v15 = v36[17];
  }

  if (v36 + 18 >= v34)
  {
    v14 = 0;
  }

  else
  {
    v14 = v36[18];
  }

  if (v36 + 19 >= v34)
  {
    v13 = 0;
  }

  else
  {
    v13 = v36[19];
  }

  if (v36 + 20 >= v34)
  {
    v12 = 0;
  }

  else
  {
    v12 = v36[20];
  }

  if (v36 + 21 >= v34)
  {
    v11 = 0;
  }

  else
  {
    v11 = v36[21];
  }

  if (v36 + 22 >= v34)
  {
    v10 = 0;
  }

  else
  {
    v10 = v36[22];
  }

  if (v36 + 23 >= v34)
  {
    v9 = 0;
  }

  else
  {
    v9 = v36[23];
  }

  if (v36 + 24 >= v34)
  {
    v8 = 0;
  }

  else
  {
    v8 = v36[24];
  }

  if (v36 + 25 >= v34)
  {
    v7 = 0;
  }

  else
  {
    v7 = v36[25];
  }

  if (v36 + 26 >= v34)
  {
    v6 = 0;
  }

  else
  {
    v6 = v36[26];
  }

  if (v36 + 27 >= v34)
  {
    v5 = 0;
  }

  else
  {
    v5 = v36[27];
  }

  if (v36 + 28 >= v34)
  {
    v4 = 0;
  }

  else
  {
    v4 = v36[28];
  }

  if (v36 + 29 >= v34)
  {
    v3 = 0;
  }

  else
  {
    v3 = v36[29];
  }

  if (v36 + 30 >= v34)
  {
    v2 = 0;
  }

  else
  {
    v2 = v36[30];
  }

  if (v36 + 31 >= v34)
  {
    malloc_zone_error(256, 1, "Corruption detected in block %p of size %u at offset %u, first 32 bytes at that offset are %02X %02X %02X %02X %02X %02X %02X %02X | %02X %02X %02X %02X %02X %02X %02X %02X | %02X %02X %02X %02X %02X %02X %02X %02X | %02X %02X %02X %02X %02X %02X %02X %02X\n", a1, v35, v33, v32, v31, v30, v29, v28, v27, v26, v25, v24, v23, v22, v21, v20, v19, v18, v17, v16, v15, v14, v13, v12, v11, v10, v9, v8, v7, v6, v5, v4, v3, v2, 0);
  }

  else
  {
    malloc_zone_error(256, 1, "Corruption detected in block %p of size %u at offset %u, first 32 bytes at that offset are %02X %02X %02X %02X %02X %02X %02X %02X | %02X %02X %02X %02X %02X %02X %02X %02X | %02X %02X %02X %02X %02X %02X %02X %02X | %02X %02X %02X %02X %02X %02X %02X %02X\n", a1, v35, v33, v32, v31, v30, v29, v28, v27, v26, v25, v24, v23, v22, v21, v20, v19, v18, v17, v16, v15, v14, v13, v12, v11, v10, v9, v8, v7, v6, v5, v4, v3, v2, v36[31]);
  }
}