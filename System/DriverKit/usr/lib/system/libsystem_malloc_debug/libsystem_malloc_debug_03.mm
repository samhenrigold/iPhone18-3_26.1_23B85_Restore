uint64_t nanov2_statistics(unsigned int a1, const void *a2, uint64_t (*a3)(), void (*a4)(const char *, ...), uint64_t a5)
{
  v27 = a1;
  v26 = a2;
  v25 = a3;
  v24 = a4;
  v23 = a5;
  if (a4)
  {
    v8 = v24;
  }

  else
  {
    v8 = nanov2_null_printer;
  }

  v24 = v8;
  v25 = reader_or_in_memory_fallback_4(v25, v27);
  v22 = 0;
  nanov2_configure();
  _platform_memset();
  v21 = 0;
  v22 = (v25)(v27, v26, 29264, &v21);
  if (!v22)
  {
    i = 0;
    *&v19[4] = 0;
    v29 = v21;
    v40 = *(v21 + 28680);
    *v19 = ((v40 << 6) | (v40 >> 6)) & 0xFFF;
    explicit = atomic_load_explicit((v21 + 28728), memory_order_acquire);
    v17 = explicit;
    v15[1] = explicit;
    v18 = explicit;
    for (i = *(v21 + 28720); ; i = v61)
    {
      if (!i)
      {
        return 0;
      }

      v15[0] = 0;
      v22 = (v25)(v27, i, 0x20000000, v15);
      if (v22)
      {
        v24("Failed to map nanov2 region at %p\n", i);
        return v22;
      }

      v14 = v15[0] - i;
      v30 = i;
      *&v19[4] = i;
LABEL_11:
      v34 = v21;
      v33 = i;
      v32 = v18;
      v31 = 0;
      v41 = v18;
      v42 = v18 - 1;
      if (i == ((v18 - 1) & 0xFFFFFFFFE0000000))
      {
        v31 = v32;
      }

      else
      {
        v35 = v33 + 0x20000000;
        v31 = v33 + 0x20000000;
      }

      if (*&v19[4] < v31)
      {
        break;
      }

      v60 = v21;
      v59 = i;
      v58 = v14;
      v57 = v18;
      v64 = v21;
      v63 = i;
      v67 = v21;
      v66 = i;
      v68 = i;
      v71 = v21;
      v70 = i & 0xFFFFFFFFFC000000;
      v62 = i & 0xFFFFFFFFFC000000 ^ *(v21 + 28688);
      v65 = v21;
      v69 = *(v21 + 28680);
      v56 = v62 + 4 * (((v69 << 6) | (v69 >> 6)) & 0xFFF);
      v55 = v56 + v14;
      v52 = *(v56 + v14);
      v53 = v52;
      v51 = v52;
      v54 = v52;
      if (v52)
      {
        v50 = v59 + (v54 << 29);
        if (v50 >= v57)
        {
          v6 = 0;
        }

        else
        {
          v6 = v50;
        }

        v61 = v6;
      }

      else
      {
        v61 = 0;
      }
    }

    v37 = v21;
    v36 = *&v19[4];
    v38 = *&v19[4];
    v44 = v21;
    v43 = *&v19[4] & 0xFFFFFFFFFC000000;
    v13 = (*&v19[4] & 0xFFFFFFFFFC000000 ^ *(v21 + 28688)) + v14;
    for (j = 0; ; ++j)
    {
      if (j >= 0x1000)
      {
        *&v19[4] += 0x4000000;
        goto LABEL_11;
      }

      if (j != *v19)
      {
        break;
      }

LABEL_28:
      ;
    }

    v48 = v21;
    v47 = j;
    v49 = j;
    v46 = ((v49 << 6) | (v49 >> 6)) & 0xFFF;
    v45 = v46 ^ *(v21 + 28680);
    v11 = ptr_offset_to_size_class[v45 >> 6];
    v39 = v11;
    v10 = *(v13 + 4 * j);
    v9 = 0;
    v7 = v10 & 0x7FF;
    if ((v10 & 0x7FF) != 0 && v7 != 2042)
    {
      if (v7 == 2043)
      {
        goto LABEL_25;
      }

      if (v7 == 2044)
      {
        v9 = slots_by_size_class[v11];
        goto LABEL_26;
      }

      if ((v7 - 2045) > 2)
      {
LABEL_25:
        v9 = slots_by_size_class[v11] - ((v10 >> 11) & 0x3FF) - 1;
      }
    }

LABEL_26:
    if (v9)
    {
      *v23 += v9;
      *(v23 + 8) += v9 * 16 * (v11 + 1);
      *(v23 + 24) += 0x4000;
    }

    goto LABEL_28;
  }

  v24("Failed to map nanozonev2_s at %p\n", v26);
  return v22;
}

uint64_t get_zone_type(unsigned int a1, uint64_t (*a2)(void, uint64_t, uint64_t, uint64_t *), uint64_t a3, _DWORD *a4)
{
  v12 = a1;
  v11 = a2;
  v10 = a3;
  v9 = a4;
  if (!a2)
  {
    __break(1u);
    JUMPOUT(0x52B80);
  }

  v8 = 0;
  *v9 = 0;
  v7 = 0;
  v8 = v11(v12, v10, 200, &v7);
  if (v8)
  {
    return v8;
  }

  else if (*(v7 + 104) >= 0xEu)
  {
    v6 = get_introspection_addr(v7) + 128;
    v5 = 0;
    v8 = v11(v12, v6, 4, &v5);
    if (v8)
    {
      return v8;
    }

    else
    {
      *v9 = *v5;
      return 0;
    }
  }

  else
  {
    return 0;
  }
}

uint64_t malloc_get_wrapped_zone(unsigned int a1, uint64_t a2, uint64_t a3, void *a4)
{
  v11 = a1;
  v9 = a3;
  v8 = a4;
  v10 = reader_or_in_memory_fallback_5(a2, a1);
  zone_type = 0;
  *v8 = 0;
  v6 = 0;
  zone_type = get_zone_type(v11, v10, v9, &v6);
  if (zone_type)
  {
    return zone_type;
  }

  else if (v6 == 2 || v6 == 3)
  {
    v5[1] = v9 + 200;
    v5[0] = 0;
    zone_type = (v10)(v11, v9 + 200, 8, v5);
    if (zone_type)
    {
      return zone_type;
    }

    else
    {
      *v8 = *v5[0];
      return 0;
    }
  }

  else
  {
    return 0;
  }
}

uint64_t (*reader_or_in_memory_fallback_5(uint64_t a1, unsigned int a2))()
{
  if (a1)
  {
    return a1;
  }

  v3 = 1;
  if (a2)
  {
    v3 = mach_task_is_self() != 0;
  }

  if (!v3)
  {
    __break(1u);
    JUMPOUT(0x52E08);
  }

  return _malloc_default_reader_5;
}

uint64_t get_wrapped_zone(uint64_t a1)
{
  v2[1] = a1;
  v2[0] = 0;
  if (malloc_get_wrapped_zone(mach_task_self_, 0, a1, v2))
  {
    __break(1u);
    JUMPOUT(0x52E84);
  }

  return v2[0];
}

uint64_t _malloc_default_reader_5(unsigned int a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = 1;
  if (a1)
  {
    v5 = mach_task_is_self() != 0;
  }

  if (!v5)
  {
    __break(1u);
    JUMPOUT(0x52EF4);
  }

  *a4 = a2;
  return 0;
}

uint64_t _nano_common_init_pick_mode(uint64_t a1, uint64_t a2, _BYTE *a3, char a4)
{
  v7 = 0;
  v6 = 0;
  if (malloc_common_value_for_key(a3, "nanov2_mode"))
  {
    if (_platform_strncmp())
    {
      if (_platform_strncmp())
      {
        if (!_platform_strncmp())
        {
          v6 = 2;
        }
      }

      else
      {
        v6 = 1;
      }
    }

    else
    {
      v6 = 0;
    }
  }

  if (v6 == 1)
  {
    return 2;
  }

  else
  {
    if (v6 == 2)
    {
      if (a4)
      {
        v4 = 0;
      }

      else
      {
        v4 = 2;
      }

      v7 = v4;
    }

    else
    {
      v8 = _simple_getenv();
      if (v8 && *v8 == 49)
      {
        v7 = 2;
      }
    }

    v9 = _simple_getenv();
    if (v9)
    {
      if (*v9 == 49)
      {
        return 2;
      }

      else if (*v9 == 48)
      {
        return 0;
      }

      else if ((*v9 == 86 || *v9 == 118) && (v9[1] == 49 || v9[1] == 50))
      {
        return 2;
      }
    }
  }

  return v7;
}

void nano_common_init(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v8 = a1;
  v7 = a2;
  v6 = a3;
  _malloc_engaged_nano = _nano_common_init_pick_mode(a1, a2, a3, malloc_space_efficient_enabled & 1);
  if (_malloc_engaged_nano)
  {
    v5 = malloc_common_value_for_key_copy(v6, "malloc_nano_max_magazines", v9, 0x100uLL);
    if (v5)
    {
      v4 = 0;
      v3 = malloc_common_convert_to_long(v5, &v4);
      if (*v4 || v3 < 0)
      {
        malloc_report(3u, "malloc_nano_max_magazines must be positive - ignored.\n");
      }

      else
      {
        nano_common_max_magazines = v3;
      }
    }
  }

  if (_malloc_engaged_nano == 2)
  {
    nanov2_init(v8, v7, v6);
  }
}

void nano_common_configure()
{
  if (nano_common_max_magazines)
  {
    v0 = nano_common_max_magazines;
  }

  else
  {
    v0 = phys_ncpus;
  }

  v3 = v0;
  __str = getenv("MallocNanoMaxMagazines");
  if (!__str)
  {
    __str = getenv("_MallocNanoMaxMagazines");
  }

  if (__str)
  {
    v1 = strtol(__str, 0, 0);
    if ((v1 & 0x80000000) != 0)
    {
      malloc_report(3u, "MallocNanoMaxMagazines must be positive - ignored.\n");
    }

    else
    {
      v3 = v1;
    }
  }

  if (v3)
  {
    if (v3 > phys_ncpus)
    {
      v3 = phys_ncpus;
      malloc_report(3u, "Nano maximum magazines limited to number of physical CPUs [%d]\n", phys_ncpus);
    }
  }

  else
  {
    v3 = phys_ncpus;
  }

  nano_common_max_magazines = v3;
  if (__str)
  {
    malloc_report(6u, "Nano maximum magazines set to %d\n", nano_common_max_magazines);
  }

  nano_common_cpu_number_override_set();
  if (_malloc_engaged_nano == 2)
  {
    nanov2_configure();
  }
}

void nano_common_cpu_number_override_set()
{
  v0 = 0;
  if (_os_cpu_number_override == -1)
  {
    v0 = nano_common_max_magazines == phys_ncpus;
  }

  if (!v0)
  {
    nano_common_max_magazines_is_ncpu = v0;
  }
}

mach_vm_address_t nano_common_allocate_based_pages(vm_size_t a1, char a2, unsigned int a3, int a4, uint64_t a5)
{
  v13 = a1;
  v12 = a2;
  v11 = a3;
  v10 = a4;
  v9 = a5;
  address = 0;
  size = (a1 + vm_page_size - 1) & ~(vm_page_size - 1);
  if (!size)
  {
    size = vm_page_size;
  }

  if (size < v13)
  {
    return 0;
  }

  address = (v9 + vm_page_size - 1) & ~(vm_page_size - 1);
  if (!address)
  {
    address = vm_page_size;
  }

  v6 = mach_vm_map(mach_task_self_, &address, size, (1 << a2) - 1, (a4 << 24) | 1, 0, 0, 0, 3, 7, 1u);
  if (!v6)
  {
    return address;
  }

  if (v6 != 3)
  {
    malloc_zone_error(v11, 0, "*** can't allocate pages: mach_vm_map(size=%lu) failed (error code=%d)\n", v13, v6);
  }

  return 0;
}

uint64_t _nano_common_map_vm_space(mach_vm_address_t a1, mach_vm_size_t a2, vm_prot_t cur_protection)
{
  v7 = a1;
  v6 = a2;
  v5 = cur_protection;
  address = a1;
  if (mach_vm_map(mach_task_self_, &address, a2, 0, 184549376, 0, 0, 0, cur_protection, 7, 1u))
  {
    return 0;
  }

  else if (address == v7)
  {
    return 1;
  }

  else
  {
    mach_vm_deallocate(mach_task_self_, address, v6);
    return 0;
  }
}

uint64_t nano_common_unprotect_vm_space(mach_vm_address_t a1, mach_vm_size_t a2)
{
  v3 = mach_vm_protect(mach_task_self_, a1, a2, 0, 3);
  if (v3)
  {
    malloc_report(3u, "mach_vm_protect ret: %d\n", v3);
    v4 = 0;
  }

  else
  {
    v4 = 1;
  }

  return v4 & 1;
}

void nano_common_deallocate_pages(const void *a1, mach_vm_size_t a2, __int16 a3)
{
  if (mach_vm_deallocate(mach_task_self_, a1, a2))
  {
    malloc_zone_error(a3, 0, "Can't deallocate_pages at %p\n", a1);
  }
}

uint64_t _xzm_type_choose_ptr_bucket(void *a1, unsigned __int8 a2, unsigned int a3)
{
  if (a2 >= 5u)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion ptr_bucket_count <= XZM_POINTER_BUCKETS_MAX failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:80)";
    __break(1u);
    JUMPOUT(0x53974);
  }

  v5 = 0;
  if (a2 >= 2u)
  {
    v4 = (*a1 * a3 + a1[1]) >> 32;
    if (a2 == 2)
    {
      return v4 & 1;
    }

    else if (a2 == 3)
    {
      return v4 % 3;
    }

    else
    {
      return v4 & 3;
    }
  }

  return v5;
}

uint64_t xzm_malloc_inline(uint64_t a1, unint64_t a2, uint64_t a3, int a4)
{
  v13 = HIWORD(a3);
  if (a2 <= 0x8000)
  {
    if ((*(a1 + 360) & 0x80) != 0)
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion (zone->xzz_flags & MALLOC_PURGEABLE) == 0 failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:3617)";
      __break(1u);
      JUMPOUT(0x53AF4);
    }

    v16 = a3;
    if (*(a1 + 240))
    {
      v8 = *(a1 + 240);
    }

    else
    {
      v8 = a1;
    }

    if (a2)
    {
      if (a2 > 0x80)
      {
        v21 = 63 - __clz(a2 - 1);
        v22 = (((a2 - 1) >> (v21 - 2)) & 3 | (4 * v21)) - 20;
      }

      else
      {
        if ((a2 & 0xF) != 0)
        {
          v7 = (a2 >> 4) + 1;
        }

        else
        {
          v7 = a2 >> 4;
        }

        v22 = v7 - 1;
      }
    }

    else
    {
      v22 = 0;
    }

    v15 = *(v8[55] + v22);
    if (HIWORD(a3) == 256)
    {
      v14 = 0;
    }

    else if (((WORD2(a3) >> 10) & 3) == 1)
    {
      v14 = 1;
    }

    else
    {
      if (!a3)
      {
        v16 = HIDWORD(malloc_entropy[0]);
      }

      v19 = v15 - 2;
      if ((v15 - 2) >= 5u)
      {
        qword_D8128 = "BUG IN LIBMALLOC: malloc assertion ptr_bucket_count <= XZM_POINTER_BUCKETS_MAX failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:80)";
        __break(1u);
        JUMPOUT(0x53D94);
      }

      v18 = 0;
      if (v19 >= 2u)
      {
        v17 = (v8[49] * v16 + v8[50]) >> 32;
        if (v19 == 2)
        {
          v18 = v17 & 1;
        }

        else if (v19 == 3)
        {
          v18 = v17 % 3;
        }

        else
        {
          v18 = v17 & 3;
        }
      }

      v14 = v18 + 2;
    }

    if (v14 >= v15)
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion bucket < bin_bucket_count failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:172)";
      __break(1u);
      JUMPOUT(0x53EC8);
    }

    v9 = _xzm_xzone_malloc(a1, a2, *(v8[56] + v22) + v14, a4);
  }

  else
  {
    v9 = _xzm_malloc_large_huge(a1, a2, 0, a3, a4);
  }

  if (!v9)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion ptr failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:3623)";
    __break(1u);
    JUMPOUT(0x53F24);
  }

  if ((a4 & 1) != 0 && !_xzm_mem_is_zero(v9, a2))
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion _xzm_mem_is_zero(ptr, size) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:3625)";
    __break(1u);
    JUMPOUT(0x53F68);
  }

  v20 = xzm_malloc_zone_size(a1, v9);
  v6 = 0;
  if (*(a1 + 368))
  {
    v6 = 0;
    if (v20 <= *(a1 + 376))
    {
      v5 = 1;
      if (v13 == 256)
      {
        v5 = *(a1 + 369);
      }

      v6 = v5;
    }
  }

  if (!mfm_claimed_address(v9))
  {
    if ((v6 & 1) == 0 || (a4 & 0x40000000) != 0)
    {
      if ((v9 & 0xF0FFFFFFFFFFFFFFLL) != v9)
      {
        qword_D8128 = "BUG IN LIBMALLOC: malloc assertion memtag_strip_address(ptr) == ptr failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:3642)";
        __break(1u);
        JUMPOUT(0x54140);
      }
    }

    else if ((v9 & 0xF0FFFFFFFFFFFFFFLL) == v9)
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion memtag_strip_address(ptr) != ptr failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:3640)";
      __break(1u);
      JUMPOUT(0x540DCLL);
    }
  }

  return v9;
}

uint64_t _xzm_malloc_large_huge(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, int a5)
{
  v51 = a4;
  v50 = a1;
  v49 = a2;
  v48 = a3;
  v47 = a5;
  v46 = a5 & 1;
  v45 = 0;
  v54 = a1;
  if (*(a1 + 240))
  {
    v32 = *(a1 + 240);
  }

  else
  {
    v32 = v54;
  }

  v44 = v32;
  if ((v49 & 0x3FFF) != 0)
  {
    v31 = (v49 & 0xFFFFFFFFFFFFC000) + 0x4000;
  }

  else
  {
    v31 = v49;
  }

  v43 = v31;
  v42 = 0;
  if (v31 <= 0x200000 && v48 <= 0x100000)
  {
    v42 = 7;
  }

  else
  {
    v42 = 8;
  }

  v41 = v43 >> 14;
  v57 = ((v43 >> 14) & 0x3FFFF00000000) != 0;
  if (((v43 >> 14) & 0x3FFFF00000000) == 0)
  {
    v40 = 1;
    v39 = 0;
    v53 = v51;
    v52 = HIWORD(v51);
    if (HIWORD(v51) == 256 || v42 == 8 || *(v44 + 411) == 2)
    {
      v38 = (*(v44 + 409) & 0x10) != 0;
      v37 = v50 + 368;
      if ((*(v50 + 369) & 1) != 0 && *(v37 + 8) <= 0x8000uLL)
      {
        v38 = 1;
      }

      v39 = v38;
    }

    else
    {
      v39 = 2;
    }

    if (v39 >= *(v44 + 411))
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion sg_id < main->xzmz_segment_group_ids_count failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:358)";
      __break(1u);
      JUMPOUT(0x5439CLL);
    }

    v66 = v50;
    v65 = v39;
    v64 = 0;
    v63 = v42 == 8;
    v68 = v50;
    if (*(v50 + 240))
    {
      v30 = *(v50 + 240);
    }

    else
    {
      v30 = v68;
    }

    v62 = v30;
    v61 = _malloc_cpu_cluster_number();
    if (v61 >= ncpuclusters)
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion clusterid < ncpuclusters failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:245)";
      __break(1u);
      JUMPOUT(0x5445CLL);
    }

    if (v65 >= *(v62 + 411))
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion sgid < main->xzmz_segment_group_ids_count failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:251)";
      __break(1u);
      JUMPOUT(0x5449CLL);
    }

    if (v65 > 2u && v64 >= *(v62 + 415))
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion front < main->xzmz_allocation_front_count failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:255)";
      __break(1u);
      JUMPOUT(0x54520);
    }

    v60 = v65 + v64;
    if (*(v62 + 412) < *(v62 + 413))
    {
      v59 = 0;
      v58 = 0;
      if ((*(v62 + 409) & 0x10) == 0)
      {
        qword_D8128 = "BUG IN LIBMALLOC: malloc assertion main->xzmz_defer_large failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:266)";
        __break(1u);
        JUMPOUT(0x54594);
      }

      v58 = v63;
      if (v63)
      {
        v59 = 1;
      }

      else
      {
        v59 = *(v62 + 412) * v61 + v60;
      }

      if (v59 >= *(v62 + 413))
      {
        qword_D8128 = "BUG IN LIBMALLOC: malloc assertion sg_index < main->xzmz_segment_group_count failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:275)";
        __break(1u);
        JUMPOUT(0x5461CLL);
      }

      v67 = (*(v62 + 472) + 528 * v59);
    }

    else
    {
      v67 = (*(v62 + 472) + 528 * v60);
    }

    v36 = v67;
    v35 = (*(v50 + 360) & 0x80) != 0;
    v34 = xzm_segment_group_alloc_chunk(v67, v42, 0, v41, 0, v48, v46 & 1, v35);
    if (v34)
    {
      LOBYTE(v29) = 1;
      if (v46)
      {
        v29 = (*(v34 + 32) >> 4) & 1;
      }

      if ((v29 & 1) == 0)
      {
        qword_D8128 = "BUG IN LIBMALLOC: malloc assertion !clear || chunk->xzc_bits.xzcb_is_pristine failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:369)";
        __break(1u);
        JUMPOUT(0x54730);
      }

      *(v34 + 34) = *(v50 + 208);
      v55 = v50 + 344;
      v130 = v50 + 344;
      v129 = 327680;
      v131 = 3;
      v132 = 3;
      StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v128 = *(StatusReg + 24);
      v127 = 0;
      v126 = v128;
      v125 = v128;
      v5 = 0;
      atomic_compare_exchange_strong_explicit((v50 + 344), &v5, v128, memory_order_acquire, memory_order_acquire);
      if (v5)
      {
        v127 = v5;
      }

      v124 = v5 == 0;
      if (v5)
      {
        os_unfair_lock_lock_with_options();
      }

      v6 = *(v50 + 352);
      *(v34 + 16) = v6;
      if (v6)
      {
        *(*(v50 + 352) + 24) = v34 + 16;
      }

      *(v50 + 352) = v34;
      *(v34 + 24) = v50 + 352;
      v56 = v50 + 344;
      v139 = (v50 + 344);
      v140 = 3;
      v141 = 3;
      v142 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v138 = *(v142 + 24);
      v137 = 0;
      v136 = v138;
      v135 = 0;
      v7 = v138;
      v8 = v138;
      atomic_compare_exchange_strong_explicit((v50 + 344), &v8, 0, memory_order_release, memory_order_relaxed);
      if (v8 != v7)
      {
        v136 = v8;
      }

      v134 = v8 == v138;
      if (v8 != v138)
      {
        os_unfair_lock_unlock(v139);
      }

      v33 = 0;
      v72 = v50;
      v71 = v34;
      v70 = &v33;
      if (&v33)
      {
        v28 = *(v71 + 32) & 0xF;
        switch(v28)
        {
          case 2:
            *v70 = 0x4000;
            break;
          case 5:
            *v70 = 0x10000;
            break;
          case 6:
            *v70 = 0x20000;
            break;
          default:
            if ((v28 - 7) >= 2)
            {
              v69 = *(v71 + 32) & 0xF;
              qword_D8128 = "BUG IN LIBMALLOC: asking for start of chunk with invalid kind";
              qword_D8158 = v69;
              __break(1u);
              JUMPOUT(0x54A58);
            }

            *v70 = *(v71 + 40) << 14;
            break;
        }
      }

      v92 = v72;
      v91 = v71;
      v95 = v72;
      v94 = v71;
      v93 = v71 & 0xFFFFFFFFFFFFC000;
      v27 = 1;
      if ((v71 & 0xFFFFFFFFFFFFC000) != 0)
      {
        v26 = 0;
        if (v94 >= v93 + 2136)
        {
          v26 = v94 < v93 + 48 * *(v93 + 16) + 2136;
        }

        v27 = v26;
      }

      if ((v27 & 1) == 0)
      {
        qword_D8128 = "BUG IN LIBMALLOC: malloc assertion !segment || (slice >= segment->xzs_slices && slice < (segment->xzs_slices + segment->xzs_slice_entry_count)) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:262)";
        __break(1u);
        JUMPOUT(0x54B3CLL);
      }

      v97 = v93;
      v96 = v91;
      v102 = v93;
      v101 = v91;
      if (v91 < v93 + 2136)
      {
        qword_D8128 = "BUG IN LIBMALLOC: malloc assertion (uintptr_t)slice >= (uintptr_t)segment->xzs_slices failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:279)";
        __break(1u);
        JUMPOUT(0x54BA4);
      }

      v100 = 0xAAAAAAAAAAAAAAABLL * ((v101 - v102 - 2136) >> 4);
      if (v100 >= *(v102 + 16))
      {
        qword_D8128 = "BUG IN LIBMALLOC: malloc assertion index < (ptrdiff_t)segment->xzs_slice_entry_count failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:281)";
        __break(1u);
        JUMPOUT(0x54C08);
      }

      v99 = v93;
      v98 = v100;
      v45 = *(v93 + 72) + (v100 << 14);
      v77 = v36;
      v76 = v33;
      v75 = *(v36 + 3);
      v83 = *v36;
      if (v83 < 2u)
      {
        v84 = 1;
      }

      else
      {
        if (v83 - 2 >= 2)
        {
          v82 = v83;
          qword_D8128 = "BUG IN LIBMALLOC: unknown segment group id";
          qword_D8158 = v83;
          __break(1u);
          JUMPOUT(0x54CD4);
        }

        v84 = 0;
      }

      v74 = v84;
      v106 = v77;
      v105 = 16;
      v104 = 32769;
      v25 = *v77;
      if (*v77)
      {
        if ((v25 - 1) < 2)
        {
          v107 = 32769;
          goto LABEL_88;
        }

        if (v25 != 3)
        {
          v103 = *v106;
          qword_D8128 = "BUG IN LIBMALLOC: unknown segment group id";
          qword_D8158 = v103;
          __break(1u);
          JUMPOUT(0x54D90);
        }
      }

      v107 = 16;
LABEL_88:
      v73 = v107;
      v24 = 0;
      if (v76 >= v107)
      {
        v81 = v75;
        v80 = v76;
        v79 = v74 & 1;
        v78 = v75 + 368;
        v23 = 0;
        if (*(v75 + 368))
        {
          v23 = 0;
          if (v80 <= *(v78 + 8))
          {
            v22 = 1;
            if (v79)
            {
              v22 = *(v78 + 1);
            }

            v23 = v22;
          }
        }

        v24 = v23;
      }

      if (v24)
      {
        if ((v47 & 0x40000000) != 0)
        {
          v87 = v45;
          v86 = v33;
          v108 = v45;
          v110 = v45;
          v109 = v45 & 0xF0FFFFFFFFFFFFFFLL;
          v85 = v45 & 0xF0FFFFFFFFFFFFFFLL;
          v114 = v45 & 0xF0FFFFFFFFFFFFFFLL;
          v113 = v33;
          if ((v33 & 0xF) != 0)
          {
            __break(1u);
            JUMPOUT(0x54F00);
          }

          if ((v114 & 0xF) != 0)
          {
            __break(1u);
            JUMPOUT(0x54F18);
          }

          v112 = v114;
          v111 = v114 + v113;
          _X9 = v114;
          __asm { STG             X9, [X9] }

          _X9 = v114 + v113;
          __asm { STG             X9, [X9,#-0x10] }

          if (v113 >= 0x21)
          {
            v112 = (v114 + 31) & 0xFFFFFFFFFFFFFFE0;
            v111 = (v114 + v113) & 0xFFFFFFFFFFFFFFE0;
            _X9 = v112;
            __asm { ST2G            X9, [X9] }

            _X8 = v111;
            __asm { ST2G            X8, [X8,#-0x20] }
          }

          v112 = (v114 + 63) & 0xFFFFFFFFFFFFFFC0;
          v111 = (v114 + v113) & 0xFFFFFFFFFFFFFFC0;
          while (v112 < v111)
          {
            __asm { DC              GVA, X8 }

            v112 += 64;
          }

          v45 = v85;
        }

        else
        {
          v90 = v45;
          v89 = v33;
          v88 = memtag_assign_tag(v45, v33);
          v116 = v88;
          v115 = v89;
          if ((v89 & 0x1FF) != 0)
          {
            v120 = v116;
            v119 = v115;
            if ((v115 & 0xF) != 0)
            {
              __break(1u);
              JUMPOUT(0x55074);
            }

            if ((v120 & 0xF) != 0)
            {
              __break(1u);
              JUMPOUT(0x5508CLL);
            }

            v118 = v120;
            v117 = v120 + v119;
            _X9 = v120;
            __asm { STG             X9, [X9] }

            _X9 = v120 + v119;
            __asm { STG             X9, [X9,#-0x10] }

            if (v119 >= 0x21)
            {
              v118 = (v120 + 31) & 0xFFFFFFFFFFFFFFE0;
              v117 = (v120 + v119) & 0xFFFFFFFFFFFFFFE0;
              _X9 = v118;
              __asm { ST2G            X9, [X9] }

              _X8 = v117;
              __asm { ST2G            X8, [X8,#-0x20] }
            }

            v118 = (v120 + 63) & 0xFFFFFFFFFFFFFFC0;
            v117 = (v120 + v119) & 0xFFFFFFFFFFFFFFC0;
            while (v118 < v117)
            {
              __asm { DC              GVA, X8 }

              v118 += 64;
            }
          }

          else
          {
            v123 = v116;
            v122 = v115;
            if ((v116 & 0x1FF) != 0)
            {
              __break(1u);
              JUMPOUT(0x55194);
            }

            if ((v122 & 0x1FF) != 0)
            {
              __break(1u);
              JUMPOUT(0x551ACLL);
            }

            v121 = v123 + v122;
            while (v123 < v121)
            {
              __asm
              {
                DC              GVA, X8
                DC              GVA, X8
                DC              GVA, X8
                DC              GVA, X8
                DC              GVA, X8
                DC              GVA, X8
                DC              GVA, X8
                DC              GVA, X8
              }

              v123 += 512;
            }
          }

          v45 = v88;
        }
      }
    }
  }

  if (!v45)
  {
    malloc_set_errno_fast(1, 12);
  }

  return v45;
}

_OWORD *_xzm_xzone_malloc(uint64_t a1, unint64_t a2, unsigned __int8 a3, int a4)
{
  v16 = *(a1 + 216) + 96 * a3;
  if ((*(a1 + 249) & 1) == 0 || a2 > 0x100 || (a4 & 0x40000000) != 0)
  {
    if (a4 & 2) != 0 || *(a1 + 240) || (a4 & 0x40000000) != 0 && (*(a1 + 368))
    {
      goto LABEL_49;
    }

    v27 = *(v16 + 40);
    do
    {
      if (!v27)
      {
        v28 = 0;
        goto LABEL_45;
      }

      v26 = v27;
      v12 = v27;
      v13 = v27;
      atomic_compare_exchange_strong_explicit((v16 + 40), &v13, v27 - 1, memory_order_relaxed, memory_order_relaxed);
      if (v13 != v12)
      {
        v26 = v13;
      }

      v27 = v26;
    }

    while (v13 != v12);
    v28 = 1;
LABEL_45:
    if (v28 != 1)
    {
LABEL_49:
      if (a2 > 0x1000)
      {
        if (*(a1 + 250))
        {
          return _xzm_xzone_malloc_small_freelist(a1, v16, a4);
        }

        else
        {
          if (a2 > 0x8000)
          {
            qword_D8128 = "BUG IN LIBMALLOC: malloc assertion size <= XZM_SMALL_BLOCK_SIZE_MAX failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:3602)";
            __break(1u);
            JUMPOUT(0x55AACLL);
          }

          return _xzm_xzone_malloc_small(a1, v16, a4);
        }
      }

      else
      {
        return _xzm_xzone_malloc_tiny(a1, v16, a4);
      }
    }

    else
    {
      v17 = mfm_alloc(*(v16 + 48));
      if (!v17)
      {
        qword_D8128 = "BUG IN LIBMALLOC: malloc assertion ptr failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:3592)";
        __break(1u);
        JUMPOUT(0x55A18);
      }

      return v17;
    }
  }

  else
  {
    v24 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 912);
    if (!v24)
    {
      return _xzm_thread_cache_create_and_malloc(a1, a3, v16, a4);
    }

    if (a3 >= *(a1 + 212))
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion xz_idx < zone->xzz_thread_cache_xzone_count failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:3450)";
      __break(1u);
      JUMPOUT(0x553CCLL);
    }

    v23 = v24 + 24 * a3 + 40;
    if (*(v24 + 24 * a3 + 56) > 0x3FFu)
    {
      if (*(v24 + 24 * a3 + 56) == 1024 && *(v24 + 24 * a3 + 58))
      {
        v19 = (*(v24 + 24 * a3 + 48) + (*(v16 + 68) - *(v24 + 24 * a3 + 58)) * *(v16 + 48));
        if (*(a1 + 368))
        {
          _X8 = *(v24 + 24 * a3 + 48) + (*(v16 + 68) - *(v24 + 24 * a3 + 58)) * *(v16 + 48);
          __asm { LDG             X8, [X8] }

          v19 = _X8;
        }

        *v19 = 0uLL;
        --*(v24 + 24 * a3 + 58);
        if (malloc_tracing_enabled)
        {
          kdebug_trace();
        }

        return v19;
      }

      else if (*(v24 + 24 * a3 + 56) == -1)
      {
        if (++*(v24 + 24 * a3 + 60) == *(a1 + 252))
        {
          return _xzm_xzone_thread_cache_record_and_malloc_outlined(a1, v16, a4, v23);
        }

        else
        {
          return _xzm_xzone_malloc_tiny_or_early(a1, v16, a4);
        }
      }

      else
      {
        v15 = 1;
        if (*(v24 + 24 * a3 + 56) != 1024)
        {
          v15 = *(v24 + 24 * a3 + 56) == -2;
        }

        if (!v15)
        {
          qword_D8128 = "BUG IN LIBMALLOC: malloc assertion cache->xztc_head == XZM_FREE_NULL || cache->xztc_head == XZM_XZONE_CACHE_EMPTY failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:3551)";
          __break(1u);
          JUMPOUT(0x55858);
        }

        return _xzm_xzone_thread_cache_fill_and_malloc(a1, v16, v23);
      }
    }

    else
    {
      v22 = *(v24 + 24 * a3 + 48) + 16 * *(v24 + 24 * a3 + 56);
      if (*(a1 + 368))
      {
        _X8 = *(v24 + 24 * a3 + 48) + 16 * *(v24 + 24 * a3 + 56);
        __asm { LDG             X8, [X8] }

        v22 = _X8;
      }

      v21 = *v22;
      if (*(v22 + 8) == (*(v22 + 8) & 0x7FFLL | (((*(v22 + 8) >> 11) & 0x1FFFLL) << 11) & 0xFFFFFF))
      {
        *v22 = 0uLL;
        LOWORD(v20) = WORD4(v21) & 0x7FF;
        HIWORD(v20) = *(v24 + 24 * a3 + 58) - 1;
        *(v24 + 24 * a3 + 56) = v20;
        *(v24 + 24 * a3 + 60) = (DWORD2(v21) >> 11) & 0x1FFF;
        if (malloc_tracing_enabled)
        {
          kdebug_trace();
        }

        return v22;
      }

      else
      {
        return _xzm_xzone_thread_cache_malloc_corrupt(v22);
      }
    }
  }
}

uint64_t xzm_malloc_zone_size(uint64_t a1, uint64_t a2)
{
  v24 = a1;
  v23 = a2;
  v22 = 0;
  v21 = 0;
  v20 = 0;
  v33 = a1;
  v31 = 0;
  v30 = &v21;
  v29 = &v20;
  v28 = a2;
  v36 = a2;
  v35 = a2 & 0xF0FFFFFFFFFFFFFFLL;
  v32 = a2 & 0xF0FFFFFFFFFFFFFFLL;
  v37 = a1;
  if (*(a1 + 240))
  {
    v18 = *(a1 + 240);
  }

  else
  {
    v18 = v37;
  }

  v27 = v18;
  v41 = v32;
  v40 = v18;
  v39 = 0;
  v46 = v32;
  v45 = &v39;
  v44 = v32;
  if (v32 >> 36)
  {
    *v45 = 0;
    v47 = 0x4000;
  }

  else
  {
    v43 = v44 >> 22;
    *v45 = 0;
    if (v43 >= 0x4000)
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion segindex < XZM_SEGMENT_TABLE_ENTRIES failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:169)";
      __break(1u);
      JUMPOUT(0x55C84);
    }

    v47 = v43;
  }

  v38 = v47;
  if (v47 < 0x4000)
  {
    v42 = *(v40 + 488) + 4 * v38;
  }

  else
  {
    v42 = 0;
  }

  v26 = v42;
  if (!v42)
  {
    v34 = 0;
    goto LABEL_116;
  }

  v65 = *v26;
  v64 = v33;
  v63 = v28;
  v62 = v32;
  v61 = v31;
  v60 = v30;
  v59 = v29;
  v89 = v65;
  v58 = (v65 & 0x7FFFFFFF) << 14;
  if (v58)
  {
    v97 = v58;
    v96 = v62;
    v101 = v58;
    v100 = v62;
    v111 = v58;
    v110 = v62;
    v115 = v58;
    v114 = v62;
    v118 = v58;
    v120 = v58;
    v119 = 0;
    v113 = v62 - *(v58 + 72);
    v128 = v58;
    v129 = v58;
    v127 = *(v58 + 12);
    if (v127 << 14)
    {
      v126 = v115;
      v130 = v115;
      v125 = *(v115 + 12);
      v124 = v115;
      v131 = v115;
      v123 = *(v115 + 12);
      v17 = (v125 << 14) - (v123 << 14) + 0x400000;
    }

    else
    {
      v122 = v115;
      v132 = v115;
      v121 = *(v115 + 12);
      v17 = v121 << 14;
    }

    v112 = v17;
    v16 = 0;
    if ((v113 & 0x8000000000000000) == 0)
    {
      v16 = v113 < v112;
    }

    if (!v16)
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion diff >= 0 && diff < (ptrdiff_t)rounded_size failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:460)";
      __break(1u);
      JUMPOUT(0x55EE4);
    }

    v109 = v113;
    v117 = v111;
    v116 = v113;
    v99 = v113 >> 14;
    if (v99 >= *(v101 + 16))
    {
      v102 = 0;
    }

    else
    {
      v102 = v101 + 48 * v99 + 2136;
    }

    v95 = v102;
    if (!v102)
    {
      v98 = 0;
LABEL_54:
      v57 = v98;
      if (!v98)
      {
        v66 = 0;
        goto LABEL_115;
      }

      if (*(v57 + 34) != *(v64 + 208))
      {
        v66 = 0;
        goto LABEL_115;
      }

      v56 = v62;
      v73 = v64;
      v72 = v57;
      v71 = 0;
      v75 = v64;
      v74 = v57;
      v78 = v64;
      v77 = v57;
      v76 = v57 & 0xFFFFFFFFFFFFC000;
      v13 = 1;
      if ((v57 & 0xFFFFFFFFFFFFC000) != 0)
      {
        v12 = 0;
        if (v77 >= v76 + 2136)
        {
          v12 = v77 < v76 + 48 * *(v76 + 16) + 2136;
        }

        v13 = v12;
      }

      if ((v13 & 1) == 0)
      {
        qword_D8128 = "BUG IN LIBMALLOC: malloc assertion !segment || (slice >= segment->xzs_slices && slice < (segment->xzs_slices + segment->xzs_slice_entry_count)) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:262)";
        __break(1u);
        JUMPOUT(0x5640CLL);
      }

      v80 = v76;
      v79 = v74;
      v85 = v76;
      v84 = v74;
      if (v74 < v76 + 2136)
      {
        qword_D8128 = "BUG IN LIBMALLOC: malloc assertion (uintptr_t)slice >= (uintptr_t)segment->xzs_slices failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:279)";
        __break(1u);
        JUMPOUT(0x56470);
      }

      v83 = 0xAAAAAAAAAAAAAAABLL * ((v84 - v85 - 2136) >> 4);
      if (v83 >= *(v85 + 16))
      {
        qword_D8128 = "BUG IN LIBMALLOC: malloc assertion index < (ptrdiff_t)segment->xzs_slice_entry_count failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:281)";
        __break(1u);
        JUMPOUT(0x564D0);
      }

      v82 = v76;
      v81 = v83;
      v55 = *(v76 + 72) + (v83 << 14);
      v54 = v56 - v55;
      v53 = *(v57 + 32) & 0xF;
      v52 = 0;
      v51 = 0;
      v69 = v53;
      if (v53 == 2 || v53 == 6 || v53 == 5)
      {
        v52 = *(v64 + 216) + 96 * *(v57 + 33);
        v51 = *(v52 + 48);
        if (!XZM_FAST_ALIGNED(v54, v51, *(v52 + 64)))
        {
          v66 = 0;
          goto LABEL_115;
        }
      }

      else
      {
        v51 = *(v57 + 40) << 14;
        v50 = v54 % v51;
        if (v54 % v51)
        {
          v66 = 0;
          goto LABEL_115;
        }
      }

      v49 = v54 / v51;
      v67 = *(v57 + 32) & 0xF;
      v68 = v67 == 2 || v67 == 6 || v67 == 5;
      v11 = 1;
      if (v68)
      {
        v11 = v49 < *(v52 + 68);
      }

      if (!v11)
      {
        qword_D8128 = "BUG IN LIBMALLOC: malloc assertion !_xzm_slice_kind_uses_xzones(chunk->xzc_bits.xzcb_kind) || block_index < xz->xz_chunk_capacity failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:4502)";
        __break(1u);
        JUMPOUT(0x566ECLL);
      }

      v86 = v64;
      v48 = *(v64 + 368) & 1;
      if (v48)
      {
        v87 = v56;
        v88 = v56;
        _X8 = v56;
        __asm { LDG             X8, [X8] }

        v56 = _X8;
        v93 = v63;
        v92 = _X8;
        v91 = v63;
        v90 = _X8;
        if ((HIBYTE(v63) & 0xF) != (HIBYTE(_X8) & 0xF))
        {
          v66 = 0;
          goto LABEL_115;
        }
      }

      v148 = v64;
      v147 = v57;
      v146 = v53;
      v145 = v54;
      v144 = v51;
      v143 = v56;
      if ((*(v57 + 32) & 0xF) != v53)
      {
        qword_D8128 = "BUG IN LIBMALLOC: malloc assertion chunk->xzc_bits.xzcb_kind == kind failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:4379)";
        __break(1u);
        JUMPOUT(0x567F4);
      }

      switch(v146)
      {
        case 2:
          goto LABEL_94;
        case 5:
          v133 = v145 / v144;
          v156 = v147;
          v155 = v145 / v144;
          if ((*(v147 + 32) & 0xF) != 5)
          {
            qword_D8128 = "BUG IN LIBMALLOC: malloc assertion chunk->xzc_bits.xzcb_kind == XZM_SLICE_KIND_SMALL_CHUNK failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:973)";
            __break(1u);
            JUMPOUT(0x56990);
          }

          v149 = (*v156 >> v155) & 1;
          break;
        case 6:
LABEL_94:
          v142 = 0;
          if (*(v147 + 12))
          {
            __asm { MSR             TCO, #1 }

            v140 = *v143;
            v141 = v140;
            v139 = v140;
            v142 = v140;
            __asm { MSR             TCO, #0 }
          }

          else
          {
            v137 = *v143;
            v138 = v137;
            v136 = v137;
            v142 = v137;
          }

          v135 = *(v148 + 320) ^ v143;
          if (v146 == 6)
          {
            v151 = v135;
            v150 = v135 & 0xF0FFFFFFFFFFFFFFLL;
            v135 &= 0xF0FFFFFFFFFFFFFFLL;
          }

          if (v142 == v135)
          {
            is_free_slow = _xzm_xzone_freelist_chunk_block_is_free_slow(v148, v147, v143);
            v149 = is_free_slow & 1;
          }

          else
          {
            v149 = 0;
          }

          break;
        default:
          v149 = 0;
          break;
      }

      if (v149 == 1)
      {
        v66 = 0;
      }

      else
      {
        if (v61)
        {
          *v61 = v52;
        }

        if (v60)
        {
          *v60 = v56;
        }

        if (v59)
        {
          *v59 = v51;
        }

        v66 = v57;
      }

      goto LABEL_115;
    }

    v104 = v95;
    if ((*(v95 + 32) & 0xF) == 4)
    {
      v103 = v104 - *(v104 + 36);
      if (v103 < (v104 & 0xFFFFFFFFFFFFC000 | 0x858))
      {
        qword_D8128 = "BUG IN LIBMALLOC: malloc assertion out_slice >= ((xzm_segment_t)((uintptr_t)slice & ~(XZM_METAPOOL_SEGMENT_BLOCK_SIZE - 1)))->xzs_slices failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:609)";
        __break(1u);
        JUMPOUT(0x55FF4);
      }

      v107 = v103;
      v106 = v104;
      v15 = *(v103 + 32) & 0xF;
      if ((v15 - 1) < 2)
      {
        v108 = v107 == v106;
      }

      else if (v15 == 3 || (v15 - 5) < 5)
      {
        if (v106 < v107)
        {
          qword_D8128 = "BUG IN LIBMALLOC: malloc assertion slice >= span failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:587)";
          __break(1u);
          JUMPOUT(0x56098);
        }

        v108 = v106 < v107 + 48 * *(v107 + 40);
      }

      else
      {
        v108 = 0;
      }

      if (v108)
      {
        v105 = v103;
      }

      else
      {
        v105 = v104;
      }
    }

    else
    {
      v105 = v104;
    }

    v94 = v105;
    v153 = *(v105 + 32) & 0xF;
    if (v153 >= 2u)
    {
      if (v153 == 2)
      {
LABEL_49:
        v154 = 1;
        goto LABEL_50;
      }

      if (v153 - 3 >= 2)
      {
        if (v153 - 5 >= 4)
        {
          v152 = v153;
          qword_D8128 = "BUG IN LIBMALLOC: bad chunk kind";
          qword_D8158 = v153;
          __break(1u);
          JUMPOUT(0x561B4);
        }

        goto LABEL_49;
      }
    }

    v154 = 0;
LABEL_50:
    if (v154 == 1)
    {
      v14 = v94;
    }

    else
    {
      v14 = 0;
    }

    v98 = v14;
    goto LABEL_54;
  }

  v66 = 0;
LABEL_115:
  v34 = v66;
LABEL_116:
  v19 = v34;
  if (v22)
  {
    *v22 = v34;
  }

  if (!v19)
  {
    return _xzm_ptr_size_outlined(v24, v23);
  }

  if (v21 == v23)
  {
    return v20;
  }

  return v20 - (v23 - v21);
}

uint64_t xzm_malloc(uint64_t a1, unint64_t a2, uint64_t a3, int a4)
{
  v13 = HIWORD(a3);
  if (a2 <= 0x8000)
  {
    if ((*(a1 + 360) & 0x80) != 0)
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion (zone->xzz_flags & MALLOC_PURGEABLE) == 0 failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:3617)";
      __break(1u);
      JUMPOUT(0x56B9CLL);
    }

    v16 = a3;
    if (*(a1 + 240))
    {
      v8 = *(a1 + 240);
    }

    else
    {
      v8 = a1;
    }

    if (a2)
    {
      if (a2 > 0x80)
      {
        v21 = 63 - __clz(a2 - 1);
        v22 = (((a2 - 1) >> (v21 - 2)) & 3 | (4 * v21)) - 20;
      }

      else
      {
        if ((a2 & 0xF) != 0)
        {
          v7 = (a2 >> 4) + 1;
        }

        else
        {
          v7 = a2 >> 4;
        }

        v22 = v7 - 1;
      }
    }

    else
    {
      v22 = 0;
    }

    v15 = *(v8[55] + v22);
    if (HIWORD(a3) == 256)
    {
      v14 = 0;
    }

    else if (((WORD2(a3) >> 10) & 3) == 1)
    {
      v14 = 1;
    }

    else
    {
      if (!a3)
      {
        v16 = HIDWORD(malloc_entropy[0]);
      }

      v19 = v15 - 2;
      if ((v15 - 2) >= 5u)
      {
        qword_D8128 = "BUG IN LIBMALLOC: malloc assertion ptr_bucket_count <= XZM_POINTER_BUCKETS_MAX failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:80)";
        __break(1u);
        JUMPOUT(0x56E3CLL);
      }

      v18 = 0;
      if (v19 >= 2u)
      {
        v17 = (v8[49] * v16 + v8[50]) >> 32;
        if (v19 == 2)
        {
          v18 = v17 & 1;
        }

        else if (v19 == 3)
        {
          v18 = v17 % 3;
        }

        else
        {
          v18 = v17 & 3;
        }
      }

      v14 = v18 + 2;
    }

    if (v14 >= v15)
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion bucket < bin_bucket_count failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:172)";
      __break(1u);
      JUMPOUT(0x56F70);
    }

    v9 = _xzm_xzone_malloc(a1, a2, *(v8[56] + v22) + v14, a4);
  }

  else
  {
    v9 = _xzm_malloc_large_huge(a1, a2, 0, a3, a4);
  }

  if (!v9)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion ptr failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:3623)";
    __break(1u);
    JUMPOUT(0x56FCCLL);
  }

  if ((a4 & 1) != 0 && !_xzm_mem_is_zero(v9, a2))
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion _xzm_mem_is_zero(ptr, size) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:3625)";
    __break(1u);
    JUMPOUT(0x57010);
  }

  v20 = xzm_malloc_zone_size(a1, v9);
  v6 = 0;
  if (*(a1 + 368))
  {
    v6 = 0;
    if (v20 <= *(a1 + 376))
    {
      v5 = 1;
      if (v13 == 256)
      {
        v5 = *(a1 + 369);
      }

      v6 = v5;
    }
  }

  if (!mfm_claimed_address(v9))
  {
    if ((v6 & 1) == 0 || (a4 & 0x40000000) != 0)
    {
      if ((v9 & 0xF0FFFFFFFFFFFFFFLL) != v9)
      {
        qword_D8128 = "BUG IN LIBMALLOC: malloc assertion memtag_strip_address(ptr) == ptr failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:3642)";
        __break(1u);
        JUMPOUT(0x571E8);
      }
    }

    else if ((v9 & 0xF0FFFFFFFFFFFFFFLL) == v9)
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion memtag_strip_address(ptr) != ptr failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:3640)";
      __break(1u);
      JUMPOUT(0x57184);
    }
  }

  return v9;
}

unint64_t _xzm_memalign(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, int a5)
{
  if (((a2 - 1) & a2) != 0)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion powerof2(alignment) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:3692)";
    __break(1u);
    JUMPOUT(0x572A8);
  }

  v9 = a5 | 2;
  if (a3 <= 0x8000 && a2 <= 0x4000)
  {
    if (a3 > a2)
    {
      if (a3 > 2 * a2)
      {
        if (a3 >= 4 * a2)
        {
          v8 = xzm_malloc(a1, a3, a4, v9);
        }

        else
        {
          if (a3 % (4 * a2))
          {
            v7 = a3 / (4 * a2) * 4 * a2 + 4 * a2;
          }

          else
          {
            v7 = a3;
          }

          if (v7 > 0x8000)
          {
            qword_D8128 = "BUG IN LIBMALLOC: malloc assertion roundup(size, 4 * alignment) <= XZM_SMALL_BLOCK_SIZE_MAX failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:3709)";
            __break(1u);
            JUMPOUT(0x57460);
          }

          if (a3 % (4 * a2))
          {
            v5 = xzm_malloc(a1, a3 / (4 * a2) * 4 * a2 + 4 * a2, a4, v9);
          }

          else
          {
            v5 = xzm_malloc(a1, a3, a4, v9);
          }

          v8 = v5;
        }
      }

      else
      {
        if (2 * a2 > 0x8000)
        {
          qword_D8128 = "BUG IN LIBMALLOC: malloc assertion 2 * alignment <= XZM_SMALL_BLOCK_SIZE_MAX failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:3705)";
          __break(1u);
          JUMPOUT(0x573ACLL);
        }

        v8 = xzm_malloc(a1, 2 * a2, a4, v9);
      }
    }

    else
    {
      v8 = xzm_malloc(a1, a2, a4, v9);
    }
  }

  else
  {
    v8 = _xzm_malloc_large_huge(a1, a3, a2, a4, v9);
  }

  if (!v8)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion ptr failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:3716)";
    __break(1u);
    JUMPOUT(0x5755CLL);
  }

  if (v8 % a2)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion (uintptr_t)ptr % alignment == 0 failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:3717)";
    __break(1u);
    JUMPOUT(0x5759CLL);
  }

  return v8;
}

const void *xzm_realloc(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    return xzm_malloc(a1, a3, a4, 0);
  }

  if (!a3)
  {
    _xzm_free(a1, a2, 0);
    return xzm_malloc(a1, 0, a4, 0);
  }

  v38 = a4;
  v37 = a1;
  v36 = a2;
  v35 = a3;
  v34 = 0;
  v49 = a1;
  v48 = a2;
  v47 = &v34;
  v46 = 0;
  v45 = 0;
  v58 = a1;
  v56 = 0;
  v55 = &v46;
  v54 = &v45;
  v53 = a2;
  v61 = a2;
  v60 = a2 & 0xF0FFFFFFFFFFFFFFLL;
  v57 = a2 & 0xF0FFFFFFFFFFFFFFLL;
  v62 = a1;
  if (*(a1 + 240))
  {
    v23 = *(v37 + 240);
  }

  else
  {
    v23 = v62;
  }

  v52 = v23;
  v66 = v57;
  v65 = v23;
  v64 = 0;
  v71 = v57;
  v70 = &v64;
  v69 = v57;
  if (v57 >> 36)
  {
    *v70 = 0;
    v72 = 0x4000;
  }

  else
  {
    v68 = v69 >> 22;
    *v70 = 0;
    if (v68 >= 0x4000)
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion segindex < XZM_SEGMENT_TABLE_ENTRIES failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:169)";
      __break(1u);
      JUMPOUT(0x57818);
    }

    v72 = v68;
  }

  v63 = v72;
  if (v72 < 0x4000)
  {
    v67 = *(v65 + 488) + 4 * v63;
  }

  else
  {
    v67 = 0;
  }

  v51 = v67;
  if (v67)
  {
    v90 = *v51;
    v89 = v58;
    v88 = v53;
    v87 = v57;
    v86 = v56;
    v85 = v55;
    v84 = v54;
    v114 = v90;
    v83 = (v90 & 0x7FFFFFFF) << 14;
    if (!v83)
    {
      v91 = 0;
LABEL_119:
      v59 = v91;
      goto LABEL_120;
    }

    v122 = v83;
    v121 = v87;
    v126 = v83;
    v125 = v87;
    v136 = v83;
    v135 = v87;
    v140 = v83;
    v139 = v87;
    v143 = v83;
    v145 = v83;
    v144 = 0;
    v138 = v87 - *(v83 + 72);
    v153 = v83;
    v154 = v83;
    v152 = *(v83 + 12);
    if (v152 << 14)
    {
      v151 = v140;
      v155 = v140;
      v150 = *(v140 + 12);
      v149 = v140;
      v156 = v140;
      v148 = *(v140 + 12);
      v22 = (v150 << 14) - (v148 << 14) + 0x400000;
    }

    else
    {
      v147 = v140;
      v157 = v140;
      v146 = *(v140 + 12);
      v22 = v146 << 14;
    }

    v137 = v22;
    v21 = 0;
    if ((v138 & 0x8000000000000000) == 0)
    {
      v21 = v138 < v137;
    }

    if (!v21)
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion diff >= 0 && diff < (ptrdiff_t)rounded_size failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:460)";
      __break(1u);
      JUMPOUT(0x57A78);
    }

    v134 = v138;
    v142 = v136;
    v141 = v138;
    v124 = v138 >> 14;
    if (v124 >= *(v126 + 16))
    {
      v127 = 0;
    }

    else
    {
      v127 = v126 + 48 * v124 + 2136;
    }

    v120 = v127;
    if (!v127)
    {
      v123 = 0;
LABEL_58:
      v82 = v123;
      if (!v123)
      {
        v91 = 0;
        goto LABEL_119;
      }

      if (*(v82 + 34) != *(v89 + 208))
      {
        v91 = 0;
        goto LABEL_119;
      }

      v81 = v87;
      v98 = v89;
      v97 = v82;
      v96 = 0;
      v100 = v89;
      v99 = v82;
      v103 = v89;
      v102 = v82;
      v101 = v82 & 0xFFFFFFFFFFFFC000;
      v18 = 1;
      if ((v82 & 0xFFFFFFFFFFFFC000) != 0)
      {
        v17 = 0;
        if (v102 >= v101 + 2136)
        {
          v17 = v102 < v101 + 48 * *(v101 + 16) + 2136;
        }

        v18 = v17;
      }

      if ((v18 & 1) == 0)
      {
        qword_D8128 = "BUG IN LIBMALLOC: malloc assertion !segment || (slice >= segment->xzs_slices && slice < (segment->xzs_slices + segment->xzs_slice_entry_count)) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:262)";
        __break(1u);
        JUMPOUT(0x57FA0);
      }

      v105 = v101;
      v104 = v99;
      v110 = v101;
      v109 = v99;
      if (v99 < v101 + 2136)
      {
        qword_D8128 = "BUG IN LIBMALLOC: malloc assertion (uintptr_t)slice >= (uintptr_t)segment->xzs_slices failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:279)";
        __break(1u);
        JUMPOUT(0x58004);
      }

      v108 = 0xAAAAAAAAAAAAAAABLL * ((v109 - v110 - 2136) >> 4);
      if (v108 >= *(v110 + 16))
      {
        qword_D8128 = "BUG IN LIBMALLOC: malloc assertion index < (ptrdiff_t)segment->xzs_slice_entry_count failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:281)";
        __break(1u);
        JUMPOUT(0x58064);
      }

      v107 = v101;
      v106 = v108;
      v80 = *(v101 + 72) + (v108 << 14);
      v79 = v81 - v80;
      v78 = *(v82 + 32) & 0xF;
      v77 = 0;
      v76 = 0;
      v94 = v78;
      if (v78 == 2 || v78 == 6 || v78 == 5)
      {
        v77 = *(v89 + 216) + 96 * *(v82 + 33);
        v76 = *(v77 + 48);
        if (!XZM_FAST_ALIGNED(v79, v76, *(v77 + 64)))
        {
          v91 = 0;
          goto LABEL_119;
        }
      }

      else
      {
        v76 = *(v82 + 40) << 14;
        v75 = v79 % v76;
        if (v79 % v76)
        {
          v91 = 0;
          goto LABEL_119;
        }
      }

      v74 = v79 / v76;
      v92 = *(v82 + 32) & 0xF;
      v93 = v92 == 2 || v92 == 6 || v92 == 5;
      v16 = 1;
      if (v93)
      {
        v16 = v74 < *(v77 + 68);
      }

      if (!v16)
      {
        qword_D8128 = "BUG IN LIBMALLOC: malloc assertion !_xzm_slice_kind_uses_xzones(chunk->xzc_bits.xzcb_kind) || block_index < xz->xz_chunk_capacity failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:4502)";
        __break(1u);
        JUMPOUT(0x58280);
      }

      v111 = v89;
      v73 = *(v89 + 368) & 1;
      if (v73)
      {
        v112 = v81;
        v113 = v81;
        _X8 = v81;
        __asm { LDG             X8, [X8] }

        v81 = _X8;
        v118 = v88;
        v117 = _X8;
        v116 = v88;
        v115 = _X8;
        if ((HIBYTE(v88) & 0xF) != (HIBYTE(_X8) & 0xF))
        {
          v91 = 0;
          goto LABEL_119;
        }
      }

      v173 = v89;
      v172 = v82;
      v171 = v78;
      v170 = v79;
      v169 = v76;
      v168 = v81;
      if ((*(v82 + 32) & 0xF) != v78)
      {
        qword_D8128 = "BUG IN LIBMALLOC: malloc assertion chunk->xzc_bits.xzcb_kind == kind failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:4379)";
        __break(1u);
        JUMPOUT(0x58388);
      }

      switch(v171)
      {
        case 2:
          goto LABEL_98;
        case 5:
          v158 = v170 / v169;
          v181 = v172;
          v180 = v170 / v169;
          if ((*(v172 + 32) & 0xF) != 5)
          {
            qword_D8128 = "BUG IN LIBMALLOC: malloc assertion chunk->xzc_bits.xzcb_kind == XZM_SLICE_KIND_SMALL_CHUNK failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:973)";
            __break(1u);
            JUMPOUT(0x58524);
          }

          v174 = (*v181 >> v180) & 1;
          break;
        case 6:
LABEL_98:
          v167 = 0;
          if (*(v172 + 12))
          {
            __asm { MSR             TCO, #1 }

            v165 = *v168;
            v166 = v165;
            v164 = v165;
            v167 = v165;
            __asm { MSR             TCO, #0 }
          }

          else
          {
            v162 = *v168;
            v163 = v162;
            v161 = v162;
            v167 = v162;
          }

          v160 = *(v173 + 320) ^ v168;
          if (v171 == 6)
          {
            v176 = v160;
            v175 = v160 & 0xF0FFFFFFFFFFFFFFLL;
            v160 &= 0xF0FFFFFFFFFFFFFFLL;
          }

          if (v167 == v160)
          {
            is_free_slow = _xzm_xzone_freelist_chunk_block_is_free_slow(v173, v172, v168);
            v174 = is_free_slow & 1;
          }

          else
          {
            v174 = 0;
          }

          break;
        default:
          v174 = 0;
          break;
      }

      if (v174 == 1)
      {
        v91 = 0;
      }

      else
      {
        if (v86)
        {
          *v86 = v77;
        }

        if (v85)
        {
          *v85 = v81;
        }

        if (v84)
        {
          *v84 = v76;
        }

        v91 = v82;
      }

      goto LABEL_119;
    }

    v129 = v120;
    if ((*(v120 + 32) & 0xF) == 4)
    {
      v128 = v129 - *(v129 + 36);
      if (v128 < (v129 & 0xFFFFFFFFFFFFC000 | 0x858))
      {
        qword_D8128 = "BUG IN LIBMALLOC: malloc assertion out_slice >= ((xzm_segment_t)((uintptr_t)slice & ~(XZM_METAPOOL_SEGMENT_BLOCK_SIZE - 1)))->xzs_slices failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:609)";
        __break(1u);
        JUMPOUT(0x57B88);
      }

      v132 = v128;
      v131 = v129;
      v20 = *(v128 + 32) & 0xF;
      if ((v20 - 1) < 2)
      {
        v133 = v132 == v131;
      }

      else if (v20 == 3 || (v20 - 5) < 5)
      {
        if (v131 < v132)
        {
          qword_D8128 = "BUG IN LIBMALLOC: malloc assertion slice >= span failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:587)";
          __break(1u);
          JUMPOUT(0x57C2CLL);
        }

        v133 = v131 < v132 + 48 * *(v132 + 40);
      }

      else
      {
        v133 = 0;
      }

      if (v133)
      {
        v130 = v128;
      }

      else
      {
        v130 = v129;
      }
    }

    else
    {
      v130 = v129;
    }

    v119 = v130;
    v178 = *(v130 + 32) & 0xF;
    if (v178 >= 2u)
    {
      if (v178 == 2)
      {
LABEL_53:
        v179 = 1;
        goto LABEL_54;
      }

      if (v178 - 3 >= 2)
      {
        if (v178 - 5 >= 4)
        {
          v177 = v178;
          qword_D8128 = "BUG IN LIBMALLOC: bad chunk kind";
          qword_D8158 = v178;
          __break(1u);
          JUMPOUT(0x57D48);
        }

        goto LABEL_53;
      }
    }

    v179 = 0;
LABEL_54:
    if (v179 == 1)
    {
      v19 = v119;
    }

    else
    {
      v19 = 0;
    }

    v123 = v19;
    goto LABEL_58;
  }

  v59 = 0;
LABEL_120:
  v44 = v59;
  if (v47)
  {
    *v47 = v44;
  }

  if (v44)
  {
    if (v46 == v48)
    {
      v50 = v45;
    }

    else
    {
      v43 = v48 - v46;
      v50 = v45 - (v48 - v46);
    }
  }

  else
  {
    v50 = _xzm_ptr_size_outlined(v49, v48);
  }

  v33 = v50;
  v32 = v36;
  if (!v50)
  {
    malloc_report_pointer_was_not_allocated(0x50u, v36);
  }

  if (v34 && *(v34 + 34) != *(v37 + 208))
  {
    qword_D8128 = "BUG IN CLIENT OF LIBMALLOC: pointer zone mismatch, client may be passing the wrong malloc zone";
    qword_D8158 = v36;
    __break(1u);
    JUMPOUT(0x586ECLL);
  }

  if (!v34 || v33 <= 0x8000 || v35 <= 0x8000)
  {
    goto LABEL_158;
  }

  if ((v35 & 0x3FFF) != 0)
  {
    v15 = (v35 & 0xFFFFFFFFFFFFC000) + 0x4000;
  }

  else
  {
    v15 = v35;
  }

  v31 = v15 >> 14;
  v42 = v37;
  v41 = v34;
  v40 = v34 & 0xFFFFFFFFFFFFC000;
  v14 = 1;
  if ((v34 & 0xFFFFFFFFFFFFC000) != 0)
  {
    v13 = 0;
    if (v41 >= v40 + 2136)
    {
      v13 = v41 < v40 + 48 * *(v40 + 16) + 2136;
    }

    v14 = v13;
  }

  if ((v14 & 1) == 0)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion !segment || (slice >= segment->xzs_slices && slice < (segment->xzs_slices + segment->xzs_slice_entry_count)) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:262)";
    __break(1u);
    JUMPOUT(0x58818);
  }

  if (!v40)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion segment != NULL failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:4826)";
    __break(1u);
    JUMPOUT(0x58850);
  }

  v30 = 0;
  if (v33 <= 0x200000 || v35 <= 0x200000 || (*(v37 + 360) & 0x80) != 0)
  {
    if (v33 <= 0x200000 && !*(v40 + 20) && v35 <= 0x200000 && (*(v37 + 360) & 0x80) == 0)
    {
      v30 = xzm_segment_group_try_realloc_large_chunk(*v40, v40, v34, v31);
    }
  }

  else
  {
    v30 = xzm_segment_group_try_realloc_huge_chunk(*v40, v37, v40, v34, v31);
  }

  if (v30)
  {
    v39 = v32;
  }

  else
  {
LABEL_158:
    if (v35 > v33 || v35 < v33 >> 1)
    {
      v29 = xzm_malloc(v37, v35, v38, 0);
      if (v29)
      {
        _platform_memmove();
        v39 = v29;
      }

      else
      {
        v39 = 0;
      }
    }

    else
    {
      v39 = v32;
    }
  }

  v24 = v39;
  if (v39 && v39 != a2)
  {
    _xzm_free(a1, a2, 0);
  }

  return v24;
}

void _xzm_free(uint64_t result, unint64_t a2, char a3)
{
  if (!a2)
  {
    return;
  }

  v25 = a2 & 0xF0FFFFFFFFFFFFFFLL;
  if (*(result + 240))
  {
    v14 = *(result + 240);
  }

  else
  {
    v14 = result;
  }

  v29 = a2 & 0xF0FFFFFFFFFFFFFFLL;
  v28 = v14;
  v27 = 0;
  v106 = a2 & 0xF0FFFFFFFFFFFFFFLL;
  v105 = &v27;
  v104 = a2 & 0xF0FFFFFFFFFFFFFFLL;
  if (v25 >> 36)
  {
    *v105 = 0;
    v107 = 0x4000;
  }

  else
  {
    v103 = v104 >> 22;
    *v105 = 0;
    if (v103 >= 0x4000)
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion segindex < XZM_SEGMENT_TABLE_ENTRIES failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:169)";
      __break(1u);
      JUMPOUT(0x58B7CLL);
    }

    v107 = v103;
  }

  if (v107 < 0x4000)
  {
    v30 = (*(v28 + 488) + 4 * v107);
  }

  else
  {
    v30 = 0;
  }

  if (!v30)
  {
    goto LABEL_93;
  }

  v22 = *v30;
  if (*v30 >= 0)
  {
    goto LABEL_92;
  }

  v31 = *v30;
  v21 = ((v22 & 0x7FFFFFFF) << 14) + 48 * ((a2 & 0x3FFFFF) >> 14) + 2136;
  if ((aSystemDriverki_0[0x4000 * (v22 & 0x7FFFFFFF) + 8 + 48 * ((a2 & 0x3FFFFF) >> 14)] & 0xF) != 2)
  {
    goto LABEL_92;
  }

  if (*&aSystemDriverki_0[0x4000 * (v22 & 0x7FFFFFFF) + 10 + 48 * ((a2 & 0x3FFFFF) >> 14)] != *(result + 208))
  {
    goto LABEL_93;
  }

  v20 = aSystemDriverki_0[0x4000 * (v22 & 0x7FFFFFFF) + 9 + 48 * ((a2 & 0x3FFFFF) >> 14)];
  _xzm_debug_validate_chunk_metadata(*(result + 216) + 96 * v20, v21);
  v19 = *(&stru_858.dylib.name.offset + 0x2000 * (v22 & 0x7FFFFFFF) + 24 * ((a2 & 0x3FFFFF) >> 14));
  if ((a2 & 0x3FFF) % v19)
  {
    goto LABEL_93;
  }

  v18 = a2;
  v17 = *(&stru_858.dylib.timestamp + 4096 * (v22 & 0x7FFFFFFF) + 12 * ((a2 & 0x3FFFFF) >> 14)) & 1;
  if (v17)
  {
    _X8 = v25;
    __asm { LDG             X8, [X8] }

    v18 = _X8;
    v35 = a2;
    v34 = _X8;
    v33 = a2;
    v32 = _X8;
    if ((HIBYTE(a2) & 0xF) != (HIBYTE(_X8) & 0xF))
    {
LABEL_93:
      _xzm_free_not_found(result, a2, a3 & 1);
      return;
    }
  }

  v16 = *(result + 320) ^ a2;
  if (*v18 == v16)
  {
LABEL_92:
    _xzm_free_outlined(result, a2, a3 & 1, v22);
    return;
  }

  if (v19 >= 0x11 && v19 <= 0x400)
  {
    _platform_bzero();
  }

  if (v17)
  {
    v18 = _xzm_xzone_block_memtag_retag(result, v18, v19);
    if ((HIBYTE(v18) & 0xFu) >= 0x10)
    {
      __break(1u);
      JUMPOUT(0x58EB4);
    }

    v16 = v16 & 0xF0FFFFFFFFFFFFFFLL | ((HIBYTE(v18) & 0xF) << 56);
  }

  *v18 = v16;
  if (v19 <= 0x100 && (*(result + 249) & 1) != 0)
  {
    v15 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 912);
    if (v15)
    {
      if (*(v15 + 24 * v20 + 56) <= 0x400u && *(v15 + 24 * v20 + 40) == v21)
      {
        v50 = result;
        v49 = v15 + 24 * v20 + 40;
        v48 = v18;
        v47 = (a2 & 0x3FFF) >> 4;
        v46 = *(v15 + 24 * v20 + 62) & 0xFFF;
        v46 |= 0x1000u;
        v45 = 0;
        v45 = *(v15 + 24 * v20 + 56) & 0x7FF;
        v45 = v45 & 0xFFFFFFFFFF0007FFLL | ((*(v15 + 24 * v20 + 60) & 0x1FFF) << 11);
        v45 = v45 & 0xFFFFFFE000FFFFFFLL | ((v46 & 0x1FFF) << 24);
        v45 &= 0x1FFFFFFFFFuLL;
        v45 &= 0xFFFFFFE000FFFFFFLL;
        v44 = v45;
        v43 = v45;
        v18[1] = v45;
        v42 = v44;
        v41 = *(v49 + 16);
        v40 = v47;
        HIWORD(v40) = *(v49 + 18) + 1;
        v39 = v40;
        v38 = v40;
        *(v49 + 16) = v40;
        v37 = v39;
        *(v49 + 20) = v46;
        ++*(v49 + 22);
        v36 = *(v49 + 16);
        if (malloc_tracing_enabled)
        {
          kdebug_trace();
        }

        return;
      }
    }
  }

  v9 = *(&stru_858.dylib.name.offset + 0x2000 * (v22 & 0x7FFFFFFF) + 24 * ((a2 & 0x3FFFFF) >> 14) + 1);
  v96 = result;
  v95 = v20;
  v94 = (((v22 & 0x7FFFFFFF) << 14) + 48 * ((a2 & 0x3FFFFF) >> 14) + 2136);
  v93 = v18;
  v92 = (a2 & 0x3FFF) >> 4;
  v91 = v19;
  v90 = v9;
  v89 = 0;
  v88 = 0;
  v87 = 0;
  v86 = 0;
  v85 = 1;
  v84 = 0;
  v83 = 0;
  v82 = 0;
  v81 = 0;
  v79 = *(&stru_858.cmd + 2048 * (v22 & 0x7FFFFFFF) + 6 * ((a2 & 0x3FFFFF) >> 14));
  v80 = v79;
  v78 = v79;
  v81 = v79;
  v77 = 0;
  v76 = 0;
  while (1)
  {
    while ((v81 & 0x40000000) != 0)
    {
      _xzm_walk_lock_wait(v96);
      v74 = *v94;
      v75 = v74;
      v73 = v74;
      v81 = v74;
    }

    v77 = v81 & 0xFFFFFFFFFFFLL | (((v81 >> 44) + 1) << 44);
    if (v76)
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion !push_to_partial failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:2353)";
      __break(1u);
      JUMPOUT(0x59280);
    }

    if (((v81 >> 11) & 0x7FF) + 1 == v90)
    {
      if ((v84 & 1) == 0)
      {
        v89 = (*(v96 + 27) + 96 * v95);
        if (((v81 >> 22) & 0x3F) != 0 && (~(v81 >> 22) & 0x3F) != 0)
        {
          v72 = _xzm_chunk_list_get(v96, v89, 0, *(v96 + 29));
          v112 = v72;
          v111 = 0;
          v109 = *v72;
          v110 = v109;
          v108 = v109;
          v111 = v109;
          v71 = (v109 & 0x7FFFFFFFFFFFLL) == 0;
          if ((v109 & 0x7FFFFFFFFFFFLL) == 0)
          {
            v87 = mach_absolute_time();
            v102 = v96;
            v101 = v89;
            v100 = ((v81 >> 22) & 0x3F) - 1;
            v99 = v89[80];
            v98 = v100 * v96[210];
            if (v98 + v99 >= v96[211] * v96[210])
            {
              qword_D8128 = "BUG IN LIBMALLOC: malloc assertion alloc_base_idx + xz_idx < zone->xzz_slot_count * zone->xzz_xzone_count failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:1246)";
              __break(1u);
              JUMPOUT(0x59400);
            }

            v82 = *(v102 + 28) + 32 * (v98 + v99);
            v69 = *(v82 + 24);
            v70 = v69;
            v68 = v69;
            v86 = v69;
            if (v87 - v69 < *(v96 + 39))
            {
              v85 = 0;
            }
          }
        }

        v84 = 1;
      }

      if ((v85 & 1) != 0 && (~(v81 >> 22) & 0x3F) != 0)
      {
        v77 |= 0x7FFuLL;
        v77 &= 0xFFFFFFFFFFC007FFLL;
        v77 &= 0xFFFFFFFFF03FFFFFLL;
        goto LABEL_68;
      }
    }

    else if (((v81 >> 11) & 0x7FF) == 0)
    {
      if ((v81 & 0x7FF) != 0x400)
      {
        _xzm_free_abort(v93);
      }

      if (((v81 >> 22) & 0x3F) != 0)
      {
        if ((v81 & 0x10000000) != 0)
        {
          qword_D8128 = "BUG IN LIBMALLOC: malloc assertion !old_meta.xca_on_partial_list failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:2408)";
          __break(1u);
          JUMPOUT(0x595D8);
        }
      }

      else
      {
        v13 = 0;
        if ((v81 & 0x10000000) == 0)
        {
          v13 = ((v81 >> 29) & 1) == 0;
        }

        if (!v13)
        {
          qword_D8128 = "BUG IN LIBMALLOC: malloc assertion !old_meta.xca_on_partial_list && !old_meta.xca_on_empty_list failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:2402)";
          __break(1u);
          JUMPOUT(0x59568);
        }

        v77 |= 0x10000000uLL;
        v76 = 1;
        v89 = (*(v96 + 27) + 96 * v95);
      }
    }

    v67 = (v81 >> 44) & 0xFFF;
    v66 = v66 & 0xFFFFFFFFFFFFF800 | v81 & 0x7FF;
    v66 = v66 & 0xFFFFFFFFFF0007FFLL | (((v81 >> 31) & 0x1FFF) << 11);
    v66 = v66 & 0xFFFFFFE000FFFFFFLL | (((v81 >> 44) & 0xFFF) << 24);
    v66 &= 0x1FFFFFFFFFuLL;
    v88 = v66 & 0xFFFFFFE000FFFFFFLL;
    v65 = v66 & 0xFFFFFFE000FFFFFFLL;
    v64 = v66 & 0xFFFFFFE000FFFFFFLL;
    v93[1] = v66 & 0xFFFFFFE000FFFFFFLL;
    v63 = v65;
    v77 = v77 & 0xFFFFFFFFFFFFF800 | v92 & 0x7FF;
    v77 = v77 & 0xFFFFFFFFFFC007FFLL | ((((v77 >> 11) + 1) & 0x7FF) << 11);
    v77 = v77 & 0xFFFFF0007FFFFFFFLL | ((v67 & 0x1FFF) << 31);
LABEL_68:
    v61 = v81;
    v60 = 0;
    v58 = v77;
    v57 = v77;
    v59 = v77;
    v10 = v81;
    v11 = v81;
    atomic_compare_exchange_strong_explicit(v94, &v11, v77, memory_order_release, memory_order_relaxed);
    if (v11 != v10)
    {
      v61 = v11;
    }

    v56 = v11 == v10;
    v60 = v11 == v10;
    v81 = v61;
    v55 = v60;
    v62 = v11 == v10;
    if (v11 == v10)
    {
      break;
    }

    v76 = 0;
    ++v83;
  }

  if (malloc_tracing_enabled)
  {
    kdebug_trace();
  }

  if (v87)
  {
    if (!v82)
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion xas failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:2456)";
      __break(1u);
      JUMPOUT(0x597F8);
    }

    v54 = v87;
    v53 = v87;
    *(v82 + 24) = v87;
    v52 = v54;
  }

  if ((~v77 & 0x7FF) != 0)
  {
    if (v76)
    {
      if (!v89)
      {
        qword_D8128 = "BUG IN LIBMALLOC: malloc assertion xz failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:2486)";
        __break(1u);
        JUMPOUT(0x59928);
      }

      _xzm_chunk_list_slot_push(v96, v89, *(v96 + 29), v94);
    }
  }

  else
  {
    v97 = v96;
    if (*(v96 + 30))
    {
      v12 = *(v96 + 30);
    }

    else
    {
      v12 = v97;
    }

    v51 = v12;
    if (!v89)
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion xz failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:2462)";
      __break(1u);
      JUMPOUT(0x598A4);
    }

    if (v51[424])
    {
      _xzm_chunk_batch_list_push(v96, v89, v94, v51[424]);
    }

    else
    {
      _xzm_xzone_madvise_freelist_chunk(v96, v89, v94);
    }
  }
}

unint64_t xzm_good_size(uint64_t a1, unint64_t a2)
{
  if (a2 > 0x8000)
  {
    if ((a2 & 0x3FFF) != 0)
    {
      v6 = (a2 & 0xFFFFFFFFFFFFC000) + 0x4000;
    }

    else
    {
      v6 = a2;
    }

    if (v6 <= a2)
    {
      return a2;
    }

    if ((a2 & 0x3FFF) != 0)
    {
      return (a2 & 0xFFFFFFFFFFFFC000) + 0x4000;
    }

    else
    {
      return a2;
    }
  }

  else
  {
    if (*(a1 + 240))
    {
      v8 = *(a1 + 240);
    }

    else
    {
      v8 = a1;
    }

    if (a2)
    {
      if (a2 > 0x80)
      {
        v2 = __clz(a2 - 1);
        v10 = (((a2 - 1) >> (61 - v2)) & 3 | (4 * (63 - v2))) - 20;
      }

      else
      {
        if ((a2 & 0xF) != 0)
        {
          v7 = (a2 >> 4) + 1;
        }

        else
        {
          v7 = a2 >> 4;
        }

        v10 = v7 - 1;
      }
    }

    else
    {
      v10 = 0;
    }

    return *(*(v8 + 432) + 8 * v10);
  }
}

void _xzm_foreach_lock(uint64_t result, int a2)
{
  if (!a2)
  {
    _xzm_do_lock_action((result + 348), 0);
    _xzm_do_lock_action((result + 344), 0);
    _xzm_allocation_slots_do_lock_action(result, 0);
  }

  for (i = 1; i < *(result + 210); ++i)
  {
    v12 = *(result + 216) + 96 * i;
    if (*(v12 + 48) > 0x1000uLL)
    {
      if (*(result + 250))
      {
        v11 = 6;
      }

      else
      {
        v11 = 5;
      }
    }

    else
    {
      v11 = 2;
    }

    if (v11 == 2 || v11 == 6)
    {
      _xzm_freelist_xzone_do_lock_action(result, v12, a2);
    }

    else if (v11 == 5)
    {
      if (a2)
      {
        v8 = *(v12 + 24);
        while (v8)
        {
          _xzm_do_lock_action((v8 + 8), a2);
          v16 = v8 & 0xFFFFFFFFFFFFC000;
          v7 = 1;
          if ((v8 & 0xFFFFFFFFFFFFC000) != 0)
          {
            v6 = 0;
            if (v8 >= v16 + 2136)
            {
              v6 = v8 < (v8 & 0xFFFFFFFFFFFFC000) + 48 * *(dword_10 + (v8 & 0xFFFFFFFFFFFFC000)) + 2136;
            }

            v7 = v6;
          }

          if ((v7 & 1) == 0)
          {
            qword_D8128 = "BUG IN LIBMALLOC: malloc assertion !segment || (slice >= segment->xzs_slices && slice < (segment->xzs_slices + segment->xzs_slice_entry_count)) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:262)";
            __break(1u);
            JUMPOUT(0x59E58);
          }

          if (v8 < v16 + 2136)
          {
            qword_D8128 = "BUG IN LIBMALLOC: malloc assertion (uintptr_t)slice >= (uintptr_t)segment->xzs_slices failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:279)";
            __break(1u);
            JUMPOUT(0x59EB4);
          }

          if ((0xAAAAAAAAAAAAAAABLL * ((v8 - (v8 & 0xFFFFFFFFFFFFC000) - 2136) >> 4)) >= *(dword_10 + (v8 & 0xFFFFFFFFFFFFC000)))
          {
            qword_D8128 = "BUG IN LIBMALLOC: malloc assertion index < (ptrdiff_t)segment->xzs_slice_entry_count failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:281)";
            __break(1u);
            JUMPOUT(0x59F14);
          }

          v8 = *(&stru_20.maxprot + (v8 & 0xFFFFFFFFFFFFC000) + 0xFFFFFFFD55555558 * ((v8 - v16 - 2136) >> 4));
          if (v8 == -1)
          {
            v17 = 0;
          }

          else
          {
            v18 = v8 & 0xFFFFFFFFFFFFC000;
            v5 = 1;
            if ((v8 & 0xFFFFFFFFFFFFC000) != 0)
            {
              v4 = 0;
              if (v8 >= v18 + 2136)
              {
                v4 = v8 < (v8 & 0xFFFFFFFFFFFFC000) + 48 * *(dword_10 + (v8 & 0xFFFFFFFFFFFFC000)) + 2136;
              }

              v5 = v4;
            }

            if ((v5 & 1) == 0)
            {
              qword_D8128 = "BUG IN LIBMALLOC: malloc assertion !segment || (slice >= segment->xzs_slices && slice < (segment->xzs_slices + segment->xzs_slice_entry_count)) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:262)";
              __break(1u);
              JUMPOUT(0x5A028);
            }

            v3 = 1;
            if (v8)
            {
              v2 = 0;
              if (v8 >= v18 + 2136)
              {
                v2 = v8 < (v8 & 0xFFFFFFFFFFFFC000) + 48 * *(dword_10 + (v8 & 0xFFFFFFFFFFFFC000)) + 2136;
              }

              v3 = v2;
            }

            v17 = v3;
          }

          if (!v17)
          {
            qword_D8128 = "BUG IN LIBMALLOC: malloc assertion _xzm_slice_meta_is_batch_pointer(zone, chunk) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:5687)";
            __break(1u);
            JUMPOUT(0x5A0E8);
          }
        }

        for (j = *v12; j; j = *(j + 16))
        {
          _xzm_do_lock_action((j + 8), a2);
        }

        for (k = *(v12 + 8); k; k = *(k + 16))
        {
          _xzm_do_lock_action((k + 8), a2);
        }

        _xzm_do_lock_action((v12 + 36), a2);
      }

      else
      {
        _xzm_small_xzone_lock_all(result, v12);
      }
    }
  }

  if (a2)
  {
    _xzm_allocation_slots_do_lock_action(result, a2);
    _xzm_do_lock_action((result + 344), a2);
    _xzm_do_lock_action((result + 348), a2);
  }
}

void xzm_force_lock_global_state(uint64_t a1)
{
  v2 = 0;
  if (*(a1 + 104) >= 0xEu)
  {
    v1 = 0;
    if (*(a1 + 96))
    {
      v1 = *(a1 + 96);
    }

    v2 = *(v1 + 128) == 1;
  }

  if (!v2)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion _xzm_malloc_zone_is_xzm(main_zone) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:5788)";
    __break(1u);
    JUMPOUT(0x5A338);
  }

  if (*(a1 + 240))
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion _xzm_malloc_zone_is_main((xzm_malloc_zone_t)main_zone) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:5789)";
    __break(1u);
    JUMPOUT(0x5A374);
  }

  _xzm_global_state_lock(a1, 0);
}

void _xzm_global_state_lock(uint64_t a1, int a2)
{
  for (i = 1; i < *(a1 + 210); ++i)
  {
    _xzm_do_lock_action((*(a1 + 456) + 16 * i + 8), a2);
  }

  for (j = 0; j < *(a1 + 413); ++j)
  {
    v4 = *(a1 + 472) + 528 * j;
    _xzm_do_lock_action((v4 + 8), a2);
    _xzm_do_lock_action((v4 + 4), a2);
    if (*v4 == 1)
    {
      _xzm_do_lock_action((v4 + 520), a2);
    }
  }

  for (k = 0; k < *(a1 + 410); ++k)
  {
    _xzm_do_lock_action((*(a1 + 464) + 80 * k + 16), a2);
  }

  _xzm_do_lock_action((a1 + 512), a2);
  for (m = 0; m < *(a1 + 414); ++m)
  {
    _xzm_do_lock_action((*(a1 + 480) + (m << 6)), a2);
  }

  _xzm_do_lock_action((a1 + 528), a2);
  _xzm_do_lock_action((a1 + 552), a2);
  if (*(a1 + 568))
  {
    _xzm_do_lock_action((*(a1 + 568) + 12), a2);
  }
}

void xzm_force_unlock_global_state(uint64_t a1)
{
  v2 = 0;
  if (*(a1 + 104) >= 0xEu)
  {
    v1 = 0;
    if (*(a1 + 96))
    {
      v1 = *(a1 + 96);
    }

    v2 = *(v1 + 128) == 1;
  }

  if (!v2)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion _xzm_malloc_zone_is_xzm(main_zone) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:5797)";
    __break(1u);
    JUMPOUT(0x5A680);
  }

  if (*(a1 + 240))
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion _xzm_malloc_zone_is_main((xzm_malloc_zone_t)main_zone) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:5798)";
    __break(1u);
    JUMPOUT(0x5A6BCLL);
  }

  _xzm_global_state_lock(a1, 1);
}

void xzm_force_reinit_lock_global_state(uint64_t a1)
{
  v2 = 0;
  if (*(a1 + 104) >= 0xEu)
  {
    v1 = 0;
    if (*(a1 + 96))
    {
      v1 = *(a1 + 96);
    }

    v2 = *(v1 + 128) == 1;
  }

  if (!v2)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion _xzm_malloc_zone_is_xzm(main_zone) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:5806)";
    __break(1u);
    JUMPOUT(0x5A7A4);
  }

  if (*(a1 + 240))
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion _xzm_malloc_zone_is_main((xzm_malloc_zone_t)main_zone) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:5807)";
    __break(1u);
    JUMPOUT(0x5A7E0);
  }

  _xzm_global_state_lock(a1, 2);
}

uint64_t xzm_ptr_lookup_4test(uint64_t a1, uint64_t a2, _BYTE *a3, _BYTE *a4, _BYTE *a5)
{
  v31 = a1;
  v30 = a2;
  v29 = a3;
  v28 = a4;
  v27 = a5;
  v26 = 0;
  v40 = a1;
  v38 = &v26;
  v37 = 0;
  v36 = 0;
  v35 = a2;
  v43 = a2;
  v42 = a2 & 0xF0FFFFFFFFFFFFFFLL;
  v39 = a2 & 0xF0FFFFFFFFFFFFFFLL;
  v44 = a1;
  if (*(a1 + 240))
  {
    v23 = *(a1 + 240);
  }

  else
  {
    v23 = v44;
  }

  v34 = v23;
  v53 = v39;
  v52 = v23;
  v51 = 0;
  v58 = v39;
  v57 = &v51;
  v56 = v39;
  if (v39 >> 36)
  {
    *v57 = 0;
    v59 = 0x4000;
  }

  else
  {
    v55 = v56 >> 22;
    *v57 = 0;
    if (v55 >= 0x4000)
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion segindex < XZM_SEGMENT_TABLE_ENTRIES failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:169)";
      __break(1u);
      JUMPOUT(0x5A964);
    }

    v59 = v55;
  }

  v50 = v59;
  if (v59 < 0x4000)
  {
    v54 = *(v52 + 488) + 4 * v50;
  }

  else
  {
    v54 = 0;
  }

  v33 = v54;
  if (!v54)
  {
    v41 = 0;
    goto LABEL_116;
  }

  v77 = *v33;
  v76 = v40;
  v75 = v35;
  v74 = v39;
  v73 = v38;
  v72 = v37;
  v71 = v36;
  v101 = v77;
  v70 = (v77 & 0x7FFFFFFF) << 14;
  if (v70)
  {
    v109 = v70;
    v108 = v74;
    v113 = v70;
    v112 = v74;
    v123 = v70;
    v122 = v74;
    v127 = v70;
    v126 = v74;
    v130 = v70;
    v132 = v70;
    v131 = 0;
    v125 = v74 - *(v70 + 72);
    v140 = v70;
    v141 = v70;
    v139 = *(v70 + 12);
    if (v139 << 14)
    {
      v138 = v127;
      v142 = v127;
      v137 = *(v127 + 12);
      v136 = v127;
      v143 = v127;
      v135 = *(v127 + 12);
      v22 = (v137 << 14) - (v135 << 14) + 0x400000;
    }

    else
    {
      v134 = v127;
      v144 = v127;
      v133 = *(v127 + 12);
      v22 = v133 << 14;
    }

    v124 = v22;
    v21 = 0;
    if ((v125 & 0x8000000000000000) == 0)
    {
      v21 = v125 < v124;
    }

    if (!v21)
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion diff >= 0 && diff < (ptrdiff_t)rounded_size failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:460)";
      __break(1u);
      JUMPOUT(0x5ABC4);
    }

    v121 = v125;
    v129 = v123;
    v128 = v125;
    v111 = v125 >> 14;
    if (v111 >= *(v113 + 16))
    {
      v114 = 0;
    }

    else
    {
      v114 = v113 + 48 * v111 + 2136;
    }

    v107 = v114;
    if (!v114)
    {
      v110 = 0;
LABEL_54:
      v69 = v110;
      if (!v110)
      {
        v78 = 0;
        goto LABEL_115;
      }

      if (*(v69 + 34) != *(v76 + 208))
      {
        v78 = 0;
        goto LABEL_115;
      }

      v68 = v74;
      v85 = v76;
      v84 = v69;
      v83 = 0;
      v87 = v76;
      v86 = v69;
      v90 = v76;
      v89 = v69;
      v88 = v69 & 0xFFFFFFFFFFFFC000;
      v18 = 1;
      if ((v69 & 0xFFFFFFFFFFFFC000) != 0)
      {
        v17 = 0;
        if (v89 >= v88 + 2136)
        {
          v17 = v89 < v88 + 48 * *(v88 + 16) + 2136;
        }

        v18 = v17;
      }

      if ((v18 & 1) == 0)
      {
        qword_D8128 = "BUG IN LIBMALLOC: malloc assertion !segment || (slice >= segment->xzs_slices && slice < (segment->xzs_slices + segment->xzs_slice_entry_count)) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:262)";
        __break(1u);
        JUMPOUT(0x5B0ECLL);
      }

      v92 = v88;
      v91 = v86;
      v97 = v88;
      v96 = v86;
      if (v86 < v88 + 2136)
      {
        qword_D8128 = "BUG IN LIBMALLOC: malloc assertion (uintptr_t)slice >= (uintptr_t)segment->xzs_slices failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:279)";
        __break(1u);
        JUMPOUT(0x5B150);
      }

      v95 = 0xAAAAAAAAAAAAAAABLL * ((v96 - v97 - 2136) >> 4);
      if (v95 >= *(v97 + 16))
      {
        qword_D8128 = "BUG IN LIBMALLOC: malloc assertion index < (ptrdiff_t)segment->xzs_slice_entry_count failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:281)";
        __break(1u);
        JUMPOUT(0x5B1B0);
      }

      v94 = v88;
      v93 = v95;
      v67 = *(v88 + 72) + (v95 << 14);
      v66 = v68 - v67;
      v65 = *(v69 + 32) & 0xF;
      v64 = 0;
      v63 = 0;
      v81 = v65;
      if (v65 == 2 || v65 == 6 || v65 == 5)
      {
        v64 = *(v76 + 216) + 96 * *(v69 + 33);
        v63 = *(v64 + 48);
        if (!XZM_FAST_ALIGNED(v66, v63, *(v64 + 64)))
        {
          v78 = 0;
          goto LABEL_115;
        }
      }

      else
      {
        v63 = *(v69 + 40) << 14;
        v62 = v66 % v63;
        if (v66 % v63)
        {
          v78 = 0;
          goto LABEL_115;
        }
      }

      v61 = v66 / v63;
      v79 = *(v69 + 32) & 0xF;
      v80 = v79 == 2 || v79 == 6 || v79 == 5;
      v16 = 1;
      if (v80)
      {
        v16 = v61 < *(v64 + 68);
      }

      if (!v16)
      {
        qword_D8128 = "BUG IN LIBMALLOC: malloc assertion !_xzm_slice_kind_uses_xzones(chunk->xzc_bits.xzcb_kind) || block_index < xz->xz_chunk_capacity failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:4502)";
        __break(1u);
        JUMPOUT(0x5B3CCLL);
      }

      v98 = v76;
      v60 = *(v76 + 368) & 1;
      if (v60)
      {
        v99 = v68;
        v100 = v68;
        _X8 = v68;
        __asm { LDG             X8, [X8] }

        v68 = _X8;
        v105 = v75;
        v104 = _X8;
        v103 = v75;
        v102 = _X8;
        if ((HIBYTE(v75) & 0xF) != (HIBYTE(_X8) & 0xF))
        {
          v78 = 0;
          goto LABEL_115;
        }
      }

      v160 = v76;
      v159 = v69;
      v158 = v65;
      v157 = v66;
      v156 = v63;
      v155 = v68;
      if ((*(v69 + 32) & 0xF) != v65)
      {
        qword_D8128 = "BUG IN LIBMALLOC: malloc assertion chunk->xzc_bits.xzcb_kind == kind failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:4379)";
        __break(1u);
        JUMPOUT(0x5B4D4);
      }

      switch(v158)
      {
        case 2:
          goto LABEL_94;
        case 5:
          v145 = v157 / v156;
          v168 = v159;
          v167 = v157 / v156;
          if ((*(v159 + 32) & 0xF) != 5)
          {
            qword_D8128 = "BUG IN LIBMALLOC: malloc assertion chunk->xzc_bits.xzcb_kind == XZM_SLICE_KIND_SMALL_CHUNK failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:973)";
            __break(1u);
            JUMPOUT(0x5B670);
          }

          v161 = (*v168 >> v167) & 1;
          break;
        case 6:
LABEL_94:
          v154 = 0;
          if (*(v159 + 12))
          {
            __asm { MSR             TCO, #1 }

            v152 = *v155;
            v153 = v152;
            v151 = v152;
            v154 = v152;
            __asm { MSR             TCO, #0 }
          }

          else
          {
            v149 = *v155;
            v150 = v149;
            v148 = v149;
            v154 = v149;
          }

          v147 = *(v160 + 320) ^ v155;
          if (v158 == 6)
          {
            v163 = v147;
            v162 = v147 & 0xF0FFFFFFFFFFFFFFLL;
            v147 &= 0xF0FFFFFFFFFFFFFFLL;
          }

          if (v154 == v147)
          {
            is_free_slow = _xzm_xzone_freelist_chunk_block_is_free_slow(v160, v159, v155);
            v161 = is_free_slow & 1;
          }

          else
          {
            v161 = 0;
          }

          break;
        default:
          v161 = 0;
          break;
      }

      if (v161 == 1)
      {
        v78 = 0;
      }

      else
      {
        if (v73)
        {
          *v73 = v64;
        }

        if (v72)
        {
          *v72 = v68;
        }

        if (v71)
        {
          *v71 = v63;
        }

        v78 = v69;
      }

      goto LABEL_115;
    }

    v116 = v107;
    if ((*(v107 + 32) & 0xF) == 4)
    {
      v115 = v116 - *(v116 + 36);
      if (v115 < (v116 & 0xFFFFFFFFFFFFC000 | 0x858))
      {
        qword_D8128 = "BUG IN LIBMALLOC: malloc assertion out_slice >= ((xzm_segment_t)((uintptr_t)slice & ~(XZM_METAPOOL_SEGMENT_BLOCK_SIZE - 1)))->xzs_slices failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:609)";
        __break(1u);
        JUMPOUT(0x5ACD4);
      }

      v119 = v115;
      v118 = v116;
      v20 = *(v115 + 32) & 0xF;
      if ((v20 - 1) < 2)
      {
        v120 = v119 == v118;
      }

      else if (v20 == 3 || (v20 - 5) < 5)
      {
        if (v118 < v119)
        {
          qword_D8128 = "BUG IN LIBMALLOC: malloc assertion slice >= span failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:587)";
          __break(1u);
          JUMPOUT(0x5AD78);
        }

        v120 = v118 < v119 + 48 * *(v119 + 40);
      }

      else
      {
        v120 = 0;
      }

      if (v120)
      {
        v117 = v115;
      }

      else
      {
        v117 = v116;
      }
    }

    else
    {
      v117 = v116;
    }

    v106 = v117;
    v165 = *(v117 + 32) & 0xF;
    if (v165 >= 2u)
    {
      if (v165 == 2)
      {
LABEL_49:
        v166 = 1;
        goto LABEL_50;
      }

      if (v165 - 3 >= 2)
      {
        if (v165 - 5 >= 4)
        {
          v164 = v165;
          qword_D8128 = "BUG IN LIBMALLOC: bad chunk kind";
          qword_D8158 = v165;
          __break(1u);
          JUMPOUT(0x5AE94);
        }

        goto LABEL_49;
      }
    }

    v166 = 0;
LABEL_50:
    if (v166 == 1)
    {
      v19 = v106;
    }

    else
    {
      v19 = 0;
    }

    v110 = v19;
    goto LABEL_54;
  }

  v78 = 0;
LABEL_115:
  v41 = v78;
LABEL_116:
  v25 = v41;
  if (v41)
  {
    v24 = *(v41 + 32) & 0xF;
    *v29 = v24;
    v47 = v31;
    v46 = v25;
    v45 = v25 & 0xFFFFFFFFFFFFC000;
    v15 = 1;
    if ((v25 & 0xFFFFFFFFFFFFC000) != 0)
    {
      v14 = 0;
      if (v46 >= v45 + 2136)
      {
        v14 = v46 < v45 + 48 * *(v45 + 16) + 2136;
      }

      v15 = v14;
    }

    if ((v15 & 1) == 0)
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion !segment || (slice >= segment->xzs_slices && slice < (segment->xzs_slices + segment->xzs_slice_entry_count)) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:262)";
      __break(1u);
      JUMPOUT(0x5B828);
    }

    *v28 = **v45;
    v48 = v24;
    if (v24 == 2 || v24 == 6 || v24 == 5)
    {
      if (!v26)
      {
        qword_D8128 = "BUG IN LIBMALLOC: malloc assertion xz failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:6061)";
        __break(1u);
        JUMPOUT(0x5B8D0);
      }

      *v27 = *(v26 + 84);
    }

    return 1;
  }

  else
  {
    return 0;
  }
}

uint64_t xzm_type_choose_ptr_bucket_4test(void *a1, unsigned __int8 a2, unsigned int a3)
{
  if (a2 >= 5u)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion ptr_bucket_count <= XZM_POINTER_BUCKETS_MAX failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:80)";
    __break(1u);
    JUMPOUT(0x5B960);
  }

  v5 = 0;
  if (a2 >= 2u)
  {
    v4 = (*a1 * a3 + a1[1]) >> 32;
    if (a2 == 2)
    {
      return v4 & 1;
    }

    else if (a2 == 3)
    {
      return v4 % 3;
    }

    else
    {
      return v4 & 3;
    }
  }

  return v5;
}

uint64_t xzm_main_malloc_zone_create(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v435 = &v551;
  v437 = &v521;
  v436 = v452;
  v536 = a1;
  v535 = a2;
  v534 = a3;
  v533 = a4;
  v532 = 0;
  v531 = 0;
  v530[1] = 0;
  v530[0] = 0;
  v538 = a3;
  v537 = "executable_boothash";
  if (_simple_getenv())
  {
    v6 = _platform_strlen();
    v7 = v437;
    *(v437 + 29) = v6;
    if (*(v7 + 29) <= 0x1FuLL)
    {
      v8 = v437;
      *(v437 + 28) = *(v437 + 29);
      v9 = *(v8 + 28);
      v326 = v4;
      v327 = v5;
      qword_D8128 = "BUG IN LIBMALLOC: invalid executable_boothash length";
      qword_D8158 = v9;
      __break(1u);
      JUMPOUT(0x5BB98);
    }

    v10 = v437;
    *(v437 + 27) = 16;
    *(v10 + 26) = 0;
    *(v10 + 25) = 2;
    *(v10 + 24) = 0;
    while (*(v437 + 24) <= 1uLL)
    {
      v433 = 16;
      v434 = v552;
      _platform_memmove();
      v552[16] = 0;
      v11 = strtoull(v552, 0, 16);
      v12 = v437;
      *(v437 + 26) = v11;
      if (!*(v12 + 26) && *__error() == 22 || *(v437 + 26) == -1 && *__error() == 34)
      {
        v326 = v4;
        v327 = v5;
        qword_D8128 = "BUG IN LIBMALLOC: invalid executable_boothash string";
        __break(1u);
        JUMPOUT(0x5BC84);
      }

      v530[(*(v437 + 24))++] = *(v437 + 26);
    }
  }

  else
  {
    if (v532)
    {
      v326 = v4;
      v327 = v5;
      qword_D8128 = "BUG IN LIBMALLOC: couldn't find executable_boothash";
      __break(1u);
      JUMPOUT(0x5BB28);
    }

    arc4random_buf(v530, 0x10uLL);
  }

  v13 = ccsha256_di();
  v14 = v437;
  *(v437 + 23) = v13;
  v15 = (*(*(v14 + 23) + 8) + *(*(v14 + 23) + 16) + 19) >> 3;
  *(v14 + 22) = &v328;
  v432 = &v328 - ((8 * v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v14 + 21) = v15;
  ccdigest_init();
  v16 = v435;
  strcpy(v435 + 10, "oc front random");
  *v16 = *"xzone malloc front random";
  ccdigest_update();
  ccdigest_update();
  ccdigest_final(*(v437 + 23), v432, v553);
  cc_clear();
  *(v437 + 20) = 0;
  v528 = (v536 & 0x20) != 0;
  v17 = v437;
  v527 = 2;
  *(v437 + 18) = 0;
  v18 = malloc_common_value_for_key_copy(*(v17 + 34), "xzone_ptr_buckets", v550, 0x100uLL);
  v19 = v437;
  *(v437 + 17) = v18;
  if (*(v19 + 17))
  {
    v20 = v437;
    *(v437 + 16) = 0;
    v21 = malloc_common_convert_to_long(*(v20 + 17), v526);
    v22 = v437;
    *(v437 + 15) = v21;
    if (**(v22 + 16) || *(v437 + 15) < 1 || *(v437 + 15) > 4)
    {
      malloc_report(3u, "Invalid xzone_ptr_buckets value %ld - ignored.\n", *(v437 + 15));
    }

    else
    {
      *(v437 + 18) = *(v437 + 15);
    }
  }

  v525 = 1;
  if (v532)
  {
    v525 = 0;
    v527 = 1;
  }

  if (v525)
  {
    v23 = v437;
    *(v437 + 55) = *(v437 + 36);
    *(v23 + 54) = "MallocMaxMagazines";
    v24 = _simple_getenv();
    v25 = v437;
    *(v437 + 17) = v24;
    if (*(v25 + 17))
    {
      v26 = strtol(*(v437 + 17), 0, 10);
      v27 = v437;
      *(v437 + 13) = v26;
      if (*(v27 + 13) == 1)
      {
        v527 = 0;
      }

      else if (*(v437 + 13) == 2 || *(v437 + 13) == 0xFFFFLL)
      {
        v527 = 1;
      }

      if (*(v437 + 13) == 1 || *(v437 + 13) == 2 || *(v437 + 13) == 0xFFFFLL)
      {
        *(v437 + 18) = 1;
      }
    }
  }

  v28 = v437;
  *(v437 + 145) = *(v437 + 36);
  *(v28 + 144) = "MallocXzonePtrBucketCount";
  if (malloc_internal_security_policy)
  {
    v431 = _simple_getenv();
  }

  else
  {
    v431 = 0;
  }

  v29 = v437;
  *(v437 + 17) = v431;
  if (*(v29 + 17))
  {
    v30 = strtol(*(v437 + 17), 0, 10);
    v31 = v437;
    *(v437 + 12) = v30;
    if ((*(v31 + 12) & 0x8000000000000000) == 0 && *(v437 + 12) <= 4)
    {
      *(v437 + 18) = *(v437 + 12);
    }
  }

  v430 = *(v437 + 18);
  if (v430)
  {
    v429 = v430;
  }

  else
  {
    v429 = 3;
  }

  v32 = v437;
  *(v437 + 11) = v429;
  *(v32 + 10) = 2;
  v524 = 1;
  *(v32 + 53) = *(v32 + 36);
  *(v32 + 52) = "MallocXzoneEarlyAlloc";
  v33 = _simple_getenv();
  v34 = v437;
  *(v437 + 17) = v33;
  if (*(v34 + 17))
  {
    v35 = strtol(*(v437 + 17), 0, 10);
    v36 = v437;
    *(v437 + 8) = v35;
    if (*(v36 + 8) && *(v437 + 8) != 1)
    {
      malloc_report(3u, "MallocXzoneEarlyAlloc must be 0 or 1.\n");
    }

    else
    {
      v524 = *(v437 + 8) != 0;
    }
  }

  if (v524)
  {
    mfm_initialize();
  }

  v37 = v437;
  *(v437 + 7) = *(v437 + 10) + *(v437 + 11);
  *(v37 + 5) = 40;
  *(v37 + 6) = *(v37 + 5);
  *(v37 + 4) = *(v37 + 6) * *(v37 + 7) + 1;
  if (*(v37 + 4) >= 0x100uLL)
  {
    v326 = v4;
    v327 = v5;
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion xzone_count <= UINT8_MAX failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:6773)";
    __break(1u);
    JUMPOUT(0x5C1F4);
  }

  v523 = 0;
  if (*(v437 + 20))
  {
    v523 = (*(*(v437 + 20) + 1) & 1) != 0;
  }

  v38 = v437;
  *(v437 + 143) = *(v437 + 36);
  *(v38 + 142) = "MallocXzoneMadviseWorkaround";
  if (malloc_internal_security_policy)
  {
    v428 = _simple_getenv();
  }

  else
  {
    v428 = 0;
  }

  v39 = v437;
  *(v437 + 17) = v428;
  if (*(v39 + 17))
  {
    v40 = strtol(*(v437 + 17), 0, 10);
    v41 = v437;
    *(v437 + 2) = v40;
    if (!*(v41 + 2) || *(v437 + 2) == 1)
    {
      v523 = *(v437 + 2) != 0;
    }
  }

  v42 = v436;
  *(v436 + 208) = 0;
  *(v42 + 207) = 0;
  if (malloc_has_sec_transition)
  {
    v521 = 1;
    v522 = 0;
    *(v436 + 208) = 0x8000;
    if ((malloc_sec_transition_policy & 2) != 0)
    {
      v522 = 1;
    }
  }

  v43 = v437;
  *(v436 + 206) = 0x8000;
  *(v43 + 51) = *(v43 + 36);
  *(v43 + 50) = "MallocTagAll";
  v44 = _simple_getenv();
  v45 = v437;
  *(v437 + 17) = v44;
  if (*(v45 + 17))
  {
    v46 = strtol(*(v437 + 17), 0, 10);
    v47 = v436;
    *(v436 + 205) = v46;
    if (*(v47 + 205) == 1)
    {
      v522 = 1;
      *(v436 + 208) = *(v436 + 206);
      if ((malloc_has_sec_transition & 1) == 0)
      {
        malloc_report(0x40u, "Malloc MTE debug mode (MallocTagAll=1) requires the process to be started with MTE enabled.\n");
      }
    }
  }

  v48 = v437;
  *(v437 + 141) = *(v437 + 36);
  *(v48 + 140) = "MallocTagAllInternal";
  if (malloc_internal_security_policy)
  {
    v427 = _simple_getenv();
  }

  else
  {
    v427 = 0;
  }

  v49 = v437;
  *(v437 + 17) = v427;
  if (*(v49 + 17))
  {
    v50 = strtol(*(v437 + 17), 0, 10);
    v51 = v436;
    *(v436 + 204) = v50;
    if (*(v51 + 204) == 1)
    {
      v522 = 1;
      *(v436 + 208) = *(v436 + 206);
    }
  }

  v52 = v437;
  *(v437 + 139) = *(v437 + 36);
  *(v52 + 138) = "MallocXzoneMemtagEnable";
  if (malloc_internal_security_policy)
  {
    v426 = _simple_getenv();
  }

  else
  {
    v426 = 0;
  }

  v53 = v437;
  *(v437 + 17) = v426;
  if (*(v53 + 17))
  {
    v54 = strtol(*(v437 + 17), 0, 10);
    v55 = v436;
    *(v436 + 203) = v54;
    if (!*(v55 + 203) || *(v436 + 203) == 1)
    {
      v521 = *(v436 + 203) != 0;
    }
  }

  v56 = v437;
  *(v437 + 137) = *(v437 + 36);
  *(v56 + 136) = "MallocXzoneMemtagTagData";
  if (malloc_internal_security_policy)
  {
    v425 = _simple_getenv();
  }

  else
  {
    v425 = 0;
  }

  v57 = v437;
  *(v437 + 17) = v425;
  if (*(v57 + 17))
  {
    v58 = strtol(*(v437 + 17), 0, 10);
    v59 = v436;
    *(v436 + 202) = v58;
    if (!*(v59 + 202) || *(v436 + 202) == 1)
    {
      v522 = *(v436 + 202) != 0;
    }
  }

  v60 = v437;
  *(v437 + 135) = *(v437 + 36);
  *(v60 + 134) = "MallocXzoneMemtagMaxBlockSize";
  if (malloc_internal_security_policy)
  {
    v424 = _simple_getenv();
  }

  else
  {
    v424 = 0;
  }

  v61 = v437;
  *(v437 + 17) = v424;
  if (*(v61 + 17))
  {
    v62 = strtoull(*(v437 + 17), 0, 10);
    v63 = v436;
    *(v436 + 201) = v62;
    if (*(v63 + 201) <= 0x8000uLL && (v520 & 0xF) == 0)
    {
      *(v436 + 208) = *(v436 + 201);
    }
  }

  v519 = 1;
  if (*(v437 + 20))
  {
    v519 = (*(*(v437 + 20) + 2) & 1) == 0;
  }

  v64 = v437;
  *(v437 + 133) = *(v437 + 36);
  *(v64 + 132) = "MallocXzoneHasRanges";
  if (malloc_internal_security_policy)
  {
    v423 = _simple_getenv();
  }

  else
  {
    v423 = 0;
  }

  v65 = v437;
  *(v437 + 17) = v423;
  if (*(v65 + 17))
  {
    v66 = strtol(*(v437 + 17), 0, 10);
    v67 = v436;
    *(v436 + 199) = v66;
    if (!*(v67 + 199) || *(v436 + 199) == 1)
    {
      v519 = *(v436 + 199) != 0;
    }
  }

  v518 = 0;
  v517 = _malloc_engaged_nano == 2;
  v516 = 0;
  if (v532)
  {
    v517 = 0;
  }

  if (v517)
  {
    v527 = 2;
  }

  v68 = v437;
  *(v437 + 49) = *(v437 + 36);
  *(v68 + 48) = "MallocXzoneThreadCaching";
  v69 = _simple_getenv();
  v70 = v437;
  *(v437 + 17) = v69;
  if (*(v70 + 17))
  {
    v71 = strtol(*(v437 + 17), 0, 10);
    v72 = v436;
    *(v436 + 197) = v71;
    if (*(v72 + 197) && *(v436 + 197) != 1)
    {
      malloc_report(3u, "MallocXzoneThreadCaching must be one of 0,1 - got %ld\n", *(v436 + 197));
    }

    else
    {
      v518 = *(v436 + 197) == 1;
    }
  }

  if (*(v437 + 20) && **(v437 + 20) != 3)
  {
    v527 = **(v437 + 20);
  }

  v73 = malloc_common_value_for_key_copy(*(v437 + 34), "malloc_xzone_slot_config", v550, 0x100uLL);
  v74 = v437;
  *(v437 + 17) = v73;
  if (*(v74 + 17))
  {
    v75 = strtol(*(v437 + 17), 0, 10);
    v76 = v436;
    *(v436 + 196) = v75;
    if ((*(v76 + 196) & 0x8000000000000000) == 0 && *(v436 + 196) <= 2)
    {
      v527 = *(v436 + 196);
    }
  }

  v77 = v437;
  *(v437 + 131) = *(v437 + 36);
  *(v77 + 130) = "MallocXzoneSlotConfig";
  if (malloc_internal_security_policy)
  {
    v422 = _simple_getenv();
  }

  else
  {
    v422 = 0;
  }

  v78 = v437;
  *(v437 + 17) = v422;
  if (*(v78 + 17))
  {
    v79 = strtol(*(v437 + 17), 0, 10);
    v80 = v436;
    *(v436 + 195) = v79;
    if ((*(v80 + 195) & 0x8000000000000000) == 0 && *(v436 + 195) <= 2)
    {
      v527 = *(v436 + 195);
    }
  }

  v81 = v437;
  v515 = 0;
  v514 = 128;
  v513 = 1;
  *(v437 + 129) = *(v437 + 36);
  *(v81 + 128) = "MallocXzoneInitialSlotConfig";
  if (malloc_internal_security_policy)
  {
    v421 = _simple_getenv();
  }

  else
  {
    v421 = 0;
  }

  v82 = v437;
  *(v437 + 17) = v421;
  if (*(v82 + 17))
  {
    v83 = strtol(*(v437 + 17), 0, 10);
    v84 = v436;
    *(v436 + 192) = v83;
    if ((*(v84 + 192) & 0x8000000000000000) == 0 && *(v436 + 192) <= 2)
    {
      v515 = *(v436 + 192);
    }
  }

  v85 = v437;
  *(v437 + 127) = *(v437 + 36);
  *(v85 + 126) = "MallocXzoneInitialSlotThreshold";
  if (malloc_internal_security_policy)
  {
    v420 = _simple_getenv();
  }

  else
  {
    v420 = 0;
  }

  v86 = v437;
  *(v437 + 17) = v420;
  if (*(v86 + 17))
  {
    v87 = strtol(*(v437 + 17), 0, 10);
    v88 = v436;
    *(v436 + 191) = v87;
    if ((*(v88 + 191) & 0x8000000000000000) == 0 && *(v436 + 191) <= 4294967294)
    {
      v514 = *(v436 + 191);
    }
  }

  v89 = v437;
  *(v437 + 125) = *(v437 + 36);
  *(v89 + 124) = "MallocXzoneInitialChunkThreshold";
  if (malloc_internal_security_policy)
  {
    v419 = _simple_getenv();
  }

  else
  {
    v419 = 0;
  }

  v90 = v437;
  *(v437 + 17) = v419;
  if (*(v90 + 17))
  {
    v91 = strtol(*(v437 + 17), 0, 10);
    v92 = v436;
    *(v436 + 190) = v91;
    if (v92[190] >= 1 && *(v436 + 190) <= 254)
    {
      v513 = *(v436 + 190);
    }
  }

  v93 = v437;
  v512 = 32;
  v511 = 128;
  v510 = 64;
  v509 = 256;
  *(v437 + 123) = *(v437 + 36);
  *(v93 + 122) = "MallocXzoneListUpgradeThreshold";
  if (malloc_internal_security_policy)
  {
    v418 = _simple_getenv();
  }

  else
  {
    v418 = 0;
  }

  v94 = v437;
  *(v437 + 17) = v418;
  if (*(v94 + 17))
  {
    v95 = strtol(*(v437 + 17), 0, 10);
    v96 = v436;
    *(v436 + 187) = v95;
    if ((*(v96 + 187) & 0x8000000000000000) == 0 && *(v436 + 187) <= 4294967294)
    {
      v512 = *(v436 + 187);
      v511 = *(v436 + 187);
    }
  }

  v97 = v437;
  *(v437 + 121) = *(v437 + 36);
  *(v97 + 120) = "MallocXzoneListUpgradeThresholdSingle";
  if (malloc_internal_security_policy)
  {
    v417 = _simple_getenv();
  }

  else
  {
    v417 = 0;
  }

  v98 = v437;
  *(v437 + 17) = v417;
  if (*(v98 + 17))
  {
    v99 = strtol(*(v437 + 17), 0, 10);
    v100 = v436;
    *(v436 + 186) = v99;
    if ((*(v100 + 186) & 0x8000000000000000) == 0 && *(v436 + 186) <= 4294967294)
    {
      v512 = *(v436 + 186);
    }
  }

  v101 = v437;
  *(v437 + 119) = *(v437 + 36);
  *(v101 + 118) = "MallocXzoneListUpgradeThresholdCluster";
  if (malloc_internal_security_policy)
  {
    v416 = _simple_getenv();
  }

  else
  {
    v416 = 0;
  }

  v102 = v437;
  *(v437 + 17) = v416;
  if (*(v102 + 17))
  {
    v103 = strtol(*(v437 + 17), 0, 10);
    v104 = v436;
    *(v436 + 185) = v103;
    if ((*(v104 + 185) & 0x8000000000000000) == 0 && *(v436 + 185) <= 4294967294)
    {
      v511 = *(v436 + 185);
    }
  }

  v105 = v437;
  *(v437 + 117) = *(v437 + 36);
  *(v105 + 116) = "MallocXzoneSlotUpgradeThreshold";
  if (malloc_internal_security_policy)
  {
    v415 = _simple_getenv();
  }

  else
  {
    v415 = 0;
  }

  v106 = v437;
  *(v437 + 17) = v415;
  if (*(v106 + 17))
  {
    v107 = strtol(*(v437 + 17), 0, 10);
    v108 = v436;
    *(v436 + 184) = v107;
    if ((*(v108 + 184) & 0x8000000000000000) == 0 && *(v436 + 184) <= 4294967294)
    {
      v510 = *(v436 + 184);
      v509 = *(v436 + 184);
    }
  }

  v109 = v437;
  *(v437 + 115) = *(v437 + 36);
  *(v109 + 114) = "MallocXzoneSlotUpgradeThresholdSingle";
  if (malloc_internal_security_policy)
  {
    v414 = _simple_getenv();
  }

  else
  {
    v414 = 0;
  }

  v110 = v437;
  *(v437 + 17) = v414;
  if (*(v110 + 17))
  {
    v111 = strtol(*(v437 + 17), 0, 10);
    v112 = v436;
    *(v436 + 183) = v111;
    if ((*(v112 + 183) & 0x8000000000000000) == 0 && *(v436 + 183) <= 4294967294)
    {
      v510 = *(v436 + 183);
    }
  }

  v113 = v437;
  *(v437 + 113) = *(v437 + 36);
  *(v113 + 112) = "MallocXzoneSlotUpgradeThresholdCluster";
  if (malloc_internal_security_policy)
  {
    v413 = _simple_getenv();
  }

  else
  {
    v413 = 0;
  }

  v114 = v437;
  *(v437 + 17) = v413;
  if (*(v114 + 17))
  {
    v115 = strtol(*(v437 + 17), 0, 10);
    v116 = v436;
    *(v436 + 182) = v115;
    if ((*(v116 + 182) & 0x8000000000000000) == 0 && *(v436 + 182) <= 4294967294)
    {
      v509 = *(v436 + 182);
    }
  }

  v117 = v437;
  v508 = 512;
  v507 = 1024;
  *(v437 + 111) = *(v437 + 36);
  *(v117 + 110) = "MallocXzoneListUpgradePeriod";
  if (malloc_internal_security_policy)
  {
    v412 = _simple_getenv();
  }

  else
  {
    v412 = 0;
  }

  v118 = v437;
  *(v437 + 17) = v412;
  if (*(v118 + 17))
  {
    v119 = strtol(*(v437 + 17), 0, 10);
    v120 = v436;
    *(v436 + 180) = v119;
    if ((*(v120 + 180) & 0x8000000000000000) == 0 && *(v436 + 180) <= 4294967294)
    {
      v508 = *(v436 + 180);
    }
  }

  v121 = v437;
  *(v437 + 109) = *(v437 + 36);
  *(v121 + 108) = "MallocXzoneSlotUpgradePeriod";
  if (malloc_internal_security_policy)
  {
    v411 = _simple_getenv();
  }

  else
  {
    v411 = 0;
  }

  v122 = v437;
  *(v437 + 17) = v411;
  if (*(v122 + 17))
  {
    v123 = strtol(*(v437 + 17), 0, 10);
    v124 = v436;
    *(v436 + 179) = v123;
    if ((*(v124 + 179) & 0x8000000000000000) == 0 && *(v436 + 179) <= 4294967294)
    {
      v507 = *(v436 + 179);
    }
  }

  v506 = 0;
  v410 = v527;
  if (!v527)
  {
    v506 = 1;
    goto LABEL_213;
  }

  if (v410 == 1)
  {
    if (ncpuclusters >= 2)
    {
      v506 = ncpuclusters;
      goto LABEL_213;
    }
  }

  else if (v410 != 2)
  {
    v326 = v4;
    v327 = v5;
    qword_D8128 = "BUG IN LIBMALLOC: Invalid xzone slot config";
    __break(1u);
    JUMPOUT(0x5D388);
  }

  v527 = 2;
  v506 = logical_ncpus;
LABEL_213:
  if (v515 > v527)
  {
    v515 = v527;
  }

  v125 = v436;
  *(v436 + 177) = 1000000;
  *(v125 + 176) = 0;
  v504 = mach_timebase_info(&v505);
  if (v504)
  {
    v126 = v436;
    *(v436 + 174) = v504;
    v127 = *(v126 + 174);
    v326 = v4;
    v327 = v5;
    qword_D8128 = "BUG IN LIBMALLOC: mach_timebase_info failed";
    qword_D8158 = v127;
    __break(1u);
    JUMPOUT(0x5D410);
  }

  v128 = v437;
  v129 = v436;
  *(v436 + 173) = 0;
  *(v129 + 172) = 0;
  *(v129 + 171) = 1000000;
  *(v128 + 107) = *(v128 + 36);
  *(v128 + 106) = "MallocXzoneTinyThrashThreshold";
  if (malloc_internal_security_policy)
  {
    v409 = _simple_getenv();
  }

  else
  {
    v409 = 0;
  }

  v130 = v437;
  *(v437 + 17) = v409;
  if (*(v130 + 17))
  {
    v131 = strtol(*(v437 + 17), 0, 10);
    v132 = v436;
    *(v436 + 170) = v131;
    if ((*(v132 + 170) & 0x8000000000000000) == 0 && *(v436 + 170) <= 4294967294)
    {
      *(v436 + 171) = 1000000 * *(v436 + 170);
    }
  }

  v133 = v436;
  *(v436 + 169) = *(v436 + 171) * v505.denom / v505.numer;
  v133[168] = 0;
  v133[167] = 1000000;
  v133[172] = 0x4000;
  if (v517)
  {
    *(v436 + 168) = *(v436 + 167);
  }

  if (v521)
  {
    *(v436 + 168) = *(v436 + 167);
  }

  v134 = v437;
  *(v437 + 105) = *(v437 + 36);
  *(v134 + 104) = "MallocXzoneSmallThrashThreshold";
  if (malloc_internal_security_policy)
  {
    v408 = _simple_getenv();
  }

  else
  {
    v408 = 0;
  }

  v135 = v437;
  *(v437 + 17) = v408;
  if (*(v135 + 17))
  {
    v136 = strtol(*(v437 + 17), 0, 10);
    v137 = v436;
    *(v436 + 166) = v136;
    if ((*(v137 + 166) & 0x8000000000000000) == 0 && *(v436 + 166) <= 4294967294)
    {
      *(v436 + 168) = 1000000 * *(v436 + 166);
    }
  }

  v138 = v437;
  *(v436 + 173) = *(v436 + 168) * v505.denom / v505.numer;
  *(v138 + 103) = *(v138 + 36);
  *(v138 + 102) = "MallocXzoneSmallThrashLimitSize";
  if (malloc_internal_security_policy)
  {
    v407 = _simple_getenv();
  }

  else
  {
    v407 = 0;
  }

  v139 = v437;
  *(v437 + 17) = v407;
  if (*(v139 + 17))
  {
    v140 = strtol(*(v437 + 17), 0, 10);
    v141 = v436;
    *(v436 + 165) = v140;
    if ((*(v141 + 165) & 0x8000000000000000) == 0 && *(v436 + 165) <= 0x8000uLL)
    {
      *(v436 + 172) = *(v436 + 165);
    }
  }

  v142 = v437;
  v503 = 0x4000;
  v502 = 256;
  *(v436 + 163) = 0;
  *(v142 + 47) = *(v142 + 36);
  *(v142 + 46) = "MallocXzoneThreadCacheActivationPeriod";
  v143 = _simple_getenv();
  v144 = v437;
  *(v437 + 17) = v143;
  if (*(v144 + 17))
  {
    v145 = strtol(*(v437 + 17), 0, 10);
    v146 = v436;
    *(v436 + 162) = v145;
    if ((*(v146 + 162) & 0x8000000000000000) == 0 && *(v436 + 162) <= 4294967294)
    {
      v503 = *(v436 + 162);
    }
  }

  v147 = v437;
  *(v437 + 45) = *(v437 + 36);
  *(v147 + 44) = "MallocXzoneThreadCacheActivationContentions";
  v148 = _simple_getenv();
  v149 = v437;
  *(v437 + 17) = v148;
  if (*(v149 + 17))
  {
    v150 = strtol(*(v437 + 17), 0, 10);
    v151 = v436;
    *(v436 + 161) = v150;
    if ((*(v151 + 161) & 0x8000000000000000) == 0 && *(v436 + 161) <= 4294967294)
    {
      v502 = *(v436 + 161);
    }
  }

  v152 = v437;
  *(v436 + 160) = 1000000000;
  *(v152 + 43) = *(v152 + 36);
  *(v152 + 42) = "MallocXzoneThreadCacheActivationTime";
  v153 = _simple_getenv();
  v154 = v437;
  *(v437 + 17) = v153;
  if (*(v154 + 17))
  {
    v155 = strtol(*(v437 + 17), 0, 10);
    v156 = v436;
    *(v436 + 159) = v155;
    if ((*(v156 + 159) & 0x8000000000000000) == 0 && *(v436 + 159) != -1)
    {
      *(v436 + 160) = 1000000 * *(v436 + 159);
    }
  }

  v157 = v437;
  *(v436 + 163) = *(v436 + 160) * v505.denom / v505.numer;
  v500 = 512;
  v499 = 0x400000;
  v498 = 0;
  v501 = -1;
  v497 = 0;
  v496 = 0;
  v495 = 0;
  *(v157 + 101) = *(v157 + 36);
  *(v157 + 100) = "MallocDeferredReclaim";
  if (malloc_internal_security_policy)
  {
    v406 = _simple_getenv();
  }

  else
  {
    v406 = 0;
  }

  v158 = v437;
  *(v437 + 17) = v406;
  if (*(v158 + 17))
  {
    v159 = strtol(*(v437 + 17), 0, 10);
    v160 = v436;
    *(v436 + 155) = v159;
    if (*(v160 + 155) && *(v436 + 155) != 1)
    {
      malloc_report(3u, "MallocDeferredReclaim must be one of 0,1 - got %ld\n", *(v436 + 155));
    }

    else
    {
      v497 = *(v436 + 155) == 1;
      v496 = *(v436 + 155) == 1;
      v495 = *(v436 + 155) == 1;
      v498 = 16 * (*(v436 + 155) == 1);
    }
  }

  v161 = v437;
  *(v437 + 99) = *(v437 + 36);
  *(v161 + 98) = "MallocDeferredReclaimBufferCount";
  if (malloc_internal_security_policy)
  {
    v405 = _simple_getenv();
  }

  else
  {
    v405 = 0;
  }

  v162 = v437;
  *(v437 + 17) = v405;
  if (*(v162 + 17))
  {
    v163 = strtol(*(v437 + 17), 0, 10);
    v164 = v436;
    *(v436 + 154) = v163;
    if ((*(v164 + 154) & 0x8000000000000000) == 0 && *(v436 + 154) <= 0xFFFFFFFFLL)
    {
      v500 = *(v436 + 154);
    }
  }

  v165 = v437;
  *(v437 + 97) = *(v437 + 36);
  *(v165 + 96) = "MallocDeferredReclaimBufferMaxCount";
  if (malloc_internal_security_policy)
  {
    v404 = _simple_getenv();
  }

  else
  {
    v404 = 0;
  }

  v166 = v437;
  *(v437 + 17) = v404;
  if (*(v166 + 17))
  {
    v167 = strtol(*(v437 + 17), 0, 10);
    v168 = v436;
    *(v436 + 153) = v167;
    if ((*(v168 + 153) & 0x8000000000000000) == 0 && *(v436 + 153) <= 0xFFFFFFFFLL)
    {
      v499 = *(v436 + 153);
    }
  }

  v500 = mach_vm_reclaim_round_capacity();
  v169 = mach_vm_reclaim_round_capacity();
  v170 = v437;
  v499 = v169;
  *(v437 + 41) = *(v437 + 36);
  *(v170 + 40) = "MallocLargeCache";
  v171 = _simple_getenv();
  v172 = v437;
  *(v437 + 17) = v171;
  if (*(v172 + 17))
  {
    v173 = strtol(*(v437 + 17), 0, 10);
    v174 = v436;
    *(v436 + 152) = v173;
    if (*(v174 + 152) && *(v436 + 152) != 1)
    {
      malloc_report(3u, "MallocLargeCache must be 0 or 1.\n");
    }

    else
    {
      v498 = 16 * (*(v436 + 152) == 1);
      v495 = *(v436 + 152) == 1;
      v497 = *(v436 + 152) == 1;
      v496 = *(v436 + 152) == 1;
    }
  }

  if (!v517)
  {
    v495 = 0;
    v498 = 0;
  }

  v175 = v437;
  *(v437 + 95) = *(v437 + 36);
  *(v175 + 94) = "MallocXzoneHugeCacheSize";
  if (malloc_internal_security_policy)
  {
    v403 = _simple_getenv();
  }

  else
  {
    v403 = 0;
  }

  v176 = v437;
  *(v437 + 17) = v403;
  if (*(v176 + 17))
  {
    v177 = strtol(*(v437 + 17), 0, 10);
    v178 = v436;
    *(v436 + 151) = v177;
    if ((*(v178 + 151) & 0x8000000000000000) != 0 || *(v436 + 151) >= 0x10000)
    {
      malloc_report(3u, "xzm: unsupported value for MallocXzoneHugeCacheSize (%ld)", *(v436 + 151));
    }

    else
    {
      v498 = *(v436 + 151);
    }
  }

  v179 = v437;
  *(v437 + 93) = *(v437 + 36);
  *(v179 + 92) = "MallocXzoneHugeCacheMaxEntryBytes";
  if (malloc_internal_security_policy)
  {
    v402 = _simple_getenv();
  }

  else
  {
    v402 = 0;
  }

  v180 = v437;
  *(v437 + 17) = v402;
  if (*(v180 + 17))
  {
    v181 = strtol(*(v437 + 17), 0, 10);
    v182 = v436;
    *(v436 + 150) = v181;
    if ((*(v182 + 150) & 0x8000000000000000) != 0 || *(v436 + 150) > 0xFFFFFFFFLL)
    {
      malloc_report(3u, "xzm: unsupported value for MallocXzoneHugeCacheMaxEntryBytes (%ld)", *(v436 + 150));
    }

    else
    {
      v501 = *(v436 + 150);
    }
  }

  v183 = v437;
  *(v437 + 91) = *(v437 + 36);
  *(v183 + 90) = "MallocXzoneDeferTiny";
  if (malloc_internal_security_policy)
  {
    v401 = _simple_getenv();
  }

  else
  {
    v401 = 0;
  }

  v184 = v437;
  *(v437 + 17) = v401;
  if (*(v184 + 17))
  {
    v185 = strtol(*(v437 + 17), 0, 10);
    v186 = v436;
    *(v436 + 149) = v185;
    if (*(v186 + 149) && *(v436 + 149) != 1)
    {
      malloc_report(3u, "MallocXzoneDeferTiny must be one of 0,1 - got %ld\n", *(v436 + 149));
    }

    else
    {
      v497 = *(v436 + 149) == 1;
    }
  }

  v187 = v437;
  *(v437 + 89) = *(v437 + 36);
  *(v187 + 88) = "MallocXzoneDeferSmall";
  if (malloc_internal_security_policy)
  {
    v400 = _simple_getenv();
  }

  else
  {
    v400 = 0;
  }

  v188 = v437;
  *(v437 + 17) = v400;
  if (*(v188 + 17))
  {
    v189 = strtol(*(v437 + 17), 0, 10);
    v190 = v436;
    *(v436 + 148) = v189;
    if (*(v190 + 148) && *(v436 + 148) != 1)
    {
      malloc_report(3u, "MallocXzoneDeferSmall must be one of 0,1 - got %ld\n", *(v436 + 148));
    }

    else
    {
      v496 = *(v436 + 148) == 1;
    }
  }

  v191 = v437;
  *(v437 + 87) = *(v437 + 36);
  *(v191 + 86) = "MallocXzoneDeferLarge";
  if (malloc_internal_security_policy)
  {
    v399 = _simple_getenv();
  }

  else
  {
    v399 = 0;
  }

  v192 = v437;
  *(v437 + 17) = v399;
  if (*(v192 + 17))
  {
    v193 = strtol(*(v437 + 17), 0, 10);
    v194 = v436;
    *(v436 + 147) = v193;
    if (*(v194 + 147) && *(v436 + 147) != 1)
    {
      malloc_report(3u, "MallocXzoneDeferLarge must be one of 0,1 - got %ld\n", *(v436 + 147));
    }

    else
    {
      v495 = *(v436 + 147) == 1;
    }
  }

  if (v532 & 1) != 0 && (v531 & 1) == 0 || (malloc_space_efficient_enabled)
  {
    v497 = 0;
    v496 = 0;
    v495 = 0;
    v498 = 0;
  }

  if (v498 && !v495)
  {
    malloc_report(3u, "Huge cache requires deferred reclamation for large.\n");
    v495 = 1;
  }

  if ((v497 || v496) && !v495)
  {
    malloc_report(3u, "Deferred reclamation cannot be used for xzones without large\n");
    v495 = 1;
  }

  v398 = 0;
  v494 = 0;
  v492 = 0;
  v491 = 0;
  v490 = 0;
  v489 = 0;
  v488 = 0;
  v487 = 0;
  v493 = (v532 & 1) != 0;
  if ((v532 & 1) != 0 && (v531 & 1) == 0)
  {
    v487 = 0;
  }

  v195 = v437;
  *(v437 + 85) = *(v437 + 36);
  *(v195 + 84) = "MallocXzoneGuarded";
  if (malloc_internal_security_policy)
  {
    v397 = _simple_getenv();
  }

  else
  {
    v397 = 0;
  }

  v196 = v437;
  *(v437 + 17) = v397;
  if (*(v196 + 17))
  {
    v197 = strtol(*(v437 + 17), 0, 10);
    v198 = v436;
    *(v436 + 145) = v197;
    if (!*(v198 + 145) || *(v436 + 145) == 1)
    {
      v493 = *(v436 + 145) != 0;
    }
  }

  v199 = malloc_common_value_for_key_copy(*(v437 + 34), "xzone_guard_pages", v550, 0x100uLL);
  v200 = v437;
  *(v437 + 17) = v199;
  if (*(v200 + 17))
  {
    v201 = strtol(*(v437 + 17), 0, 10);
    v202 = v436;
    *(v436 + 144) = v201;
    if (*(v202 + 144) && *(v436 + 144) != 1)
    {
      malloc_report(3u, "%s must be 0 or 1.\n", "xzone_guard_pages");
    }

    else
    {
      v493 = *(v436 + 144) != 0;
    }
  }

  if (v493)
  {
    v203 = v437;
    v492 = 1;
    *(v437 + 83) = *(v437 + 36);
    *(v203 + 82) = "MallocXzoneGuardedData";
    if (malloc_internal_security_policy)
    {
      v396 = _simple_getenv();
    }

    else
    {
      v396 = 0;
    }

    v204 = v437;
    *(v437 + 17) = v396;
    if (*(v204 + 17))
    {
      v205 = strtol(*(v437 + 17), 0, 10);
      v206 = v436;
      *(v436 + 143) = v205;
      if (!*(v206 + 143) || *(v436 + 143) == 1)
      {
        v492 = *(v436 + 143) != 0;
      }
    }

    v207 = v437;
    v491 = 8;
    *(v437 + 81) = *(v437 + 36);
    *(v207 + 80) = "MallocXzoneGuardTinyRun";
    if (malloc_internal_security_policy)
    {
      v395 = _simple_getenv();
    }

    else
    {
      v395 = 0;
    }

    v208 = v437;
    *(v437 + 17) = v395;
    if (*(v208 + 17))
    {
      v209 = strtol(*(v437 + 17), 0, 10);
      v210 = v436;
      *(v436 + 142) = v209;
      if (v210[142] >= 1)
      {
        v491 = *(v436 + 142);
      }
    }

    v211 = v437;
    v490 = 64;
    *(v437 + 79) = *(v437 + 36);
    *(v211 + 78) = "MallocXzoneGuardTinyDensity";
    if (malloc_internal_security_policy)
    {
      v394 = _simple_getenv();
    }

    else
    {
      v394 = 0;
    }

    v212 = v437;
    *(v437 + 17) = v394;
    if (*(v212 + 17))
    {
      v213 = strtol(*(v437 + 17), 0, 10);
      v214 = v436;
      *(v436 + 141) = v213;
      if (v214[141] >= 1)
      {
        v490 = *(v436 + 141);
      }
    }

    v215 = v437;
    v489 = 3;
    *(v437 + 77) = *(v437 + 36);
    *(v215 + 76) = "MallocXzoneGuardSmallRun";
    if (malloc_internal_security_policy)
    {
      v393 = _simple_getenv();
    }

    else
    {
      v393 = 0;
    }

    v216 = v437;
    *(v437 + 17) = v393;
    if (*(v216 + 17))
    {
      v217 = strtol(*(v437 + 17), 0, 10);
      v218 = v436;
      *(v436 + 140) = v217;
      if (v218[140] >= 1)
      {
        v489 = *(v436 + 140);
      }
    }

    v219 = v437;
    v488 = 32;
    *(v437 + 75) = *(v437 + 36);
    *(v219 + 74) = "MallocXzoneGuardSmallDensity";
    if (malloc_internal_security_policy)
    {
      v392 = _simple_getenv();
    }

    else
    {
      v392 = 0;
    }

    v220 = v437;
    *(v437 + 17) = v392;
    if (*(v220 + 17))
    {
      v221 = strtol(*(v437 + 17), 0, 10);
      v222 = v436;
      *(v436 + 139) = v221;
      if (v222[139] >= 1)
      {
        v488 = *(v436 + 139);
      }
    }
  }

  v223 = v437;
  *(v437 + 73) = *(v437 + 36);
  *(v223 + 72) = "MallocXzoneBatchSize";
  if (malloc_internal_security_policy)
  {
    v391 = _simple_getenv();
  }

  else
  {
    v391 = 0;
  }

  v224 = v437;
  *(v437 + 17) = v391;
  if (*(v224 + 17))
  {
    v225 = strtol(*(v437 + 17), 0, 10);
    v226 = v436;
    *(v436 + 138) = v225;
    if ((*(v226 + 138) & 0x8000000000000000) == 0 && *(v436 + 138) <= 63)
    {
      v487 = *(v436 + 138);
    }
  }

  v227 = v437;
  *(v437 + 71) = *(v437 + 36);
  *(v227 + 70) = "MallocSmallFreelist";
  if (malloc_internal_security_policy)
  {
    v390 = _simple_getenv();
  }

  else
  {
    v390 = 0;
  }

  v228 = v437;
  *(v437 + 17) = v390;
  if (*(v228 + 17))
  {
    v229 = strtol(*(v437 + 17), 0, 10);
    v230 = v436;
    *(v436 + 137) = v229;
    if (!*(v230 + 137) || *(v436 + 137) == 1)
    {
      v494 = *(v436 + 137) != 0;
    }
  }

  v231 = v437;
  v486 = 0;
  *(v436 + 135) = 4;
  *(v231 + 69) = *(v231 + 36);
  *(v231 + 68) = "MallocXzoneDataOnly";
  if (malloc_internal_security_policy)
  {
    v389 = _simple_getenv();
  }

  else
  {
    v389 = 0;
  }

  v232 = v437;
  *(v437 + 17) = v389;
  if (*(v232 + 17))
  {
    v233 = strtol(*(v437 + 17), 0, 10);
    v234 = v436;
    *(v436 + 134) = v233;
    if (*(v234 + 134) == 1)
    {
      *(v436 + 135) = 2;
    }

    else if (*(v436 + 134))
    {
      malloc_report(3u, "MallocXzoneDataOnly must be 0 or 1.\n");
    }
  }

  v235 = v437;
  *(v437 + 67) = *(v437 + 36);
  *(v235 + 66) = "MallocXzonePerClusterSegmentGroups";
  if (malloc_internal_security_policy)
  {
    v388 = _simple_getenv();
  }

  else
  {
    v388 = 0;
  }

  v236 = v437;
  *(v437 + 17) = v388;
  if (*(v236 + 17))
  {
    v237 = strtol(*(v437 + 17), 0, 10);
    v238 = v436;
    *(v436 + 133) = v237;
    if (*(v238 + 133) && *(v436 + 133) != 1)
    {
      malloc_report(3u, "MallocXzonePerClusterSegmentGroups must be 0 or 1.\n");
    }

    else
    {
      v486 = *(v436 + 133) != 0;
    }
  }

  v239 = v437;
  *(v436 + 132) = 2;
  *(v239 + 65) = *(v239 + 36);
  *(v239 + 64) = "MallocXzoneAllocationFronts";
  if (malloc_internal_security_policy)
  {
    v387 = _simple_getenv();
  }

  else
  {
    v387 = 0;
  }

  v240 = v437;
  *(v437 + 17) = v387;
  if (*(v240 + 17))
  {
    v241 = strtol(*(v437 + 17), 0, 10);
    v242 = v436;
    *(v436 + 131) = v241;
    if (*(v242 + 131) == 1 || *(v436 + 131) == 2)
    {
      *(v436 + 132) = *(v436 + 131);
    }

    else
    {
      malloc_report(3u, "Unsupported MallocXzoneAllocationFronts\n");
    }
  }

  v243 = v437;
  v484 = 0;
  v483 = 0;
  *(v437 + 63) = *(v437 + 36);
  *(v243 + 62) = "MallocXzoneListConfig";
  if (malloc_internal_security_policy)
  {
    v386 = _simple_getenv();
  }

  else
  {
    v386 = 0;
  }

  v244 = v437;
  *(v437 + 17) = v386;
  if (*(v244 + 17))
  {
    v245 = strtol(*(v437 + 17), 0, 10);
    v246 = v436;
    *(v436 + 129) = v245;
    if ((*(v246 + 129) & 0x8000000000000000) == 0 && *(v436 + 129) <= 2)
    {
      v483 = *(v436 + 129);
    }
  }

  v247 = v437;
  *(v437 + 61) = *(v437 + 36);
  *(v247 + 60) = "MallocXzoneMaxListConfig";
  if (malloc_internal_security_policy)
  {
    v385 = _simple_getenv();
  }

  else
  {
    v385 = 0;
  }

  v248 = v437;
  *(v437 + 17) = v385;
  if (*(v248 + 17))
  {
    v249 = strtol(*(v437 + 17), 0, 10);
    v250 = v436;
    *(v436 + 128) = v249;
    if ((*(v250 + 128) & 0x8000000000000000) == 0 && *(v436 + 128) <= 2 && *(v436 + 128) < v527)
    {
      v484 = *(v436 + 128);
    }
  }

  v251 = v437;
  v482 = 1;
  *(v437 + 59) = *(v437 + 36);
  *(v251 + 58) = "MallocXzoneSegmentDeallocate";
  if (malloc_internal_security_policy)
  {
    v384 = _simple_getenv();
  }

  else
  {
    v384 = 0;
  }

  v252 = v437;
  *(v437 + 17) = v384;
  if (*(v252 + 17))
  {
    v253 = strtol(*(v437 + 17), 0, 10);
    v254 = v436;
    *(v436 + 126) = v253;
    if (!*(v254 + 126) || *(v436 + 126) == 1)
    {
      v482 = *(v436 + 126) != 0;
    }
  }

  if ((v532 & 1) != 0 && (v531 & 1) == 0)
  {
    v486 = 0;
  }

  *(v436 + 125) = *(v436 + 132) + 2;
  if (v486)
  {
    v383 = ncpuclusters;
  }

  else
  {
    v383 = 1;
  }

  v255 = v436;
  *(v436 + 124) = v383;
  *(v255 + 123) = *(v255 + 135);
  if (*(v255 + 135) >= 3uLL && *(v436 + 132) >= 2uLL)
  {
    *(v436 + 123) = *(v436 + 132) + *(v436 + 123) - 1;
  }

  v256 = v436;
  v257 = v437;
  *(v436 + 122) = *(v436 + 123) * *(v436 + 124);
  v256[121] = 5;
  v256[120] = 576;
  v256[119] = v256[120];
  v256[120] += 96 * *(v257 + 4);
  v256[118] = v256[120];
  v256[117] = *(v257 + 4) * v506;
  v256[120] += 32 * v256[117];
  v256[116] = v256[120];
  v256[120] += 16 * v256[117];
  v256[115] = v256[120];
  v256[120] += 8 * *(v257 + 6);
  v256[114] = v256[120];
  v256[120] += *(v257 + 6);
  v256[113] = v256[120];
  v256[120] += *(v257 + 6);
  v256[112] = v256[120];
  v256[120] += 16 * *(v257 + 4);
  v256[111] = v256[120];
  v256[120] += 80 * v256[125];
  v256[110] = v256[120];
  v256[120] += 528 * v256[122];
  v256[109] = v256[120];
  v256[120] += v256[121] << 6;
  v256[108] = v256[120];
  v256[120] += 0x10000;
  v256[107] = v256[120];
  v481 = 1;
  v256[105] = 0;
  v480 = 1;
  plat = mvm_allocate_plat(0, v256[107], 0, v481, 0x2000, 1, v256[105]);
  v259 = v436;
  *(v436 + 104) = plat;
  if (!*(v259 + 104))
  {
    v326 = v4;
    v327 = v5;
    qword_D8128 = "BUG IN LIBMALLOC: Failed to allocate xzm zone";
    __break(1u);
    JUMPOUT(0x5F068);
  }

  v260 = v436;
  *(v436 + 103) = *(v436 + 104);
  v260[102] = v260[103] + v260[119];
  v260[101] = v260[103] + v260[118];
  v260[100] = v260[103] + v260[116];
  v479 = 1;
  v381 = v260[103];
  v380 = 576;
  v379 = v460;
  bzero(v460, 0x240uLL);
  v261 = v379;
  v262 = v436;
  v263 = v437;
  *(v436 + 75) = *(v436 + 107);
  *(v261 + 392) = *(v263 + 248);
  v461 = v461 & 0xFD | (2 * v523);
  v461 = v461 & 0xFB | (4 * v496);
  v461 = v461 & 0xF7 | (8 * v497);
  v461 = v461 & 0xEF | (16 * v495);
  v461 = v461 & 0xDF | (32 * v482);
  v462 = v262[125];
  v463 = v262[135];
  v464 = v262[123];
  v465 = v262[122];
  v466 = v262[121];
  v467 = v262[132];
  v264 = mfm_zone_address();
  v265 = v379;
  v266 = v380;
  v267 = v436;
  v268 = v437;
  v269 = v264;
  v270 = v381;
  *(v436 + 79) = v269;
  v468 = v487;
  v469 = *(v268 + 6);
  v470 = *(v268 + 11);
  v471 = v513;
  v267[81] = v267[103] + v267[115];
  v267[82] = v267[103] + v267[114];
  v267[83] = v267[103] + v267[113];
  v267[84] = v267[103] + v267[112];
  v267[85] = v267[103] + v267[111];
  v267[86] = v267[103] + v267[110];
  v267[87] = v267[103] + v267[109];
  v267[88] = v267[103] + v267[108];
  v472 = v479;
  v473 = v493;
  v474 = v492;
  v475 = v491;
  v476 = v490;
  v477 = v489;
  v478 = v488;
  memcpy(v270, v265, v266);
  v271 = *(v436 + 103);
  v272 = *(v436 + 107);
  v273 = *(v437 + 4);
  v274 = *(v436 + 102);
  v275 = *(v436 + 101);
  v276 = *(v436 + 169);
  v277 = *(v436 + 173);
  v278 = *(v436 + 172);
  v279 = *(v436 + 100);
  v382 = &v325;
  _xzm_initialize_const_zone_data(v271, v272, v479, v273, v506, v274, v275, 0, v515, v514, v527, v512, v511, v508, v510, v509, v507, v276, v277, v278, v536, v494, v484, v279);
  *(*(v436 + 103) + 368) = *v437;
  if ((v497 || v496 || v495 || v498) && !xzm_reclaim_init(*(v436 + 103), v500, v499))
  {
    v280 = v436;
    v498 = 0;
    v497 = 0;
    *(*(v436 + 103) + 409) &= ~8u;
    v496 = 0;
    *(*(v280 + 103) + 409) &= ~4u;
    v495 = 0;
    *(*(v280 + 103) + 409) &= ~0x10u;
  }

  v281 = v436;
  *(*(v436 + 103) + 249) = v518;
  *(*(v281 + 103) + 252) = v503;
  *(*(v281 + 103) + 256) = v502;
  *(*(v281 + 103) + 264) = *(v281 + 163);
  if (v518)
  {
    inited = pthread_key_init_np();
    if (inited)
    {
      v282 = v436;
      *(v436 + 25) = inited;
      v283 = *(v282 + 25);
      v326 = v277;
      v327 = v278;
      qword_D8128 = "BUG IN LIBMALLOC: pthread_key_init_np failed";
      qword_D8158 = v283;
      __break(1u);
      JUMPOUT(0x5F4BCLL);
    }
  }

  for (*(v436 + 24) = 0; *(v436 + 24) < *(v437 + 6); ++*(v436 + 24))
  {
    *(*(*(v436 + 103) + 432) + 8 * *(v436 + 24)) = _xzm_bin_sizes[*(v436 + 24)];
  }

  for (*(v436 + 23) = 0; *(v436 + 23) < *(v437 + 6); ++*(v436 + 23))
  {
    *(*(*(v436 + 103) + 440) + *(v436 + 23)) = *(v437 + 7);
  }

  for (*(v436 + 22) = 0; *(v436 + 22) < *(v437 + 4); ++*(v436 + 22))
  {
    v284 = v437;
    v285 = v436;
    *(v436 + 21) = *(*(v436 + 103) + 456) + 16 * *(v436 + 22);
    *(v284 + 155) = *(v285 + 21) + 8;
    v286 = *(v284 + 155);
    v543 = 0;
    *v286 = 0;
  }

  v287 = v436;
  *(v436 + 20) = 0;
  *(v287 + 19) = 0;
  while (*(v436 + 19) <= 2uLL)
  {
    v457 = *(v436 + 19);
    if (v457 == 2)
    {
      v378 = *(v436 + 132);
    }

    else
    {
      v378 = 1;
    }

    v288 = v436;
    *(v436 + 17) = v378;
    *(v288 + 16) = 0;
    while (*(v436 + 16) < *(v436 + 17))
    {
      v289 = v436;
      v290 = v437;
      *(v436 + 15) = *(*(v436 + 103) + 464) + 80 * *(v436 + 20);
      **(v289 + 15) = v457;
      *(*(v289 + 15) + 1) = *(v289 + 16);
      *(*(v289 + 15) + 8) = *(v289 + 103);
      *(v290 + 153) = *(v289 + 15) + 16;
      v291 = *(v290 + 153);
      v542 = 0;
      *v291 = 0;
      ++*(v289 + 20);
      ++*(v436 + 16);
    }

    ++*(v436 + 19);
  }

  if (v519)
  {
    xzm_main_malloc_zone_init_range_groups(*(v436 + 103));
  }

  if ((*(*(v436 + 103) + 409) & 1) == 0)
  {
    v292 = v436;
    *(v436 + 132) = 1;
    *(*(v292 + 103) + 415) = 1;
  }

  for (*(v436 + 14) = 0; *(v436 + 14) < *(v436 + 122); ++*(v436 + 14))
  {
    v293 = v436;
    *(v436 + 13) = *(*(v436 + 103) + 472) + 528 * *(v436 + 14);
    v293[12] = v293[14] % v293[123];
    if (v293[12] > 2uLL)
    {
      v377 = 3;
    }

    else
    {
      v377 = v456;
    }

    v294 = v436;
    v295 = v437;
    **(v436 + 13) = v377;
    *(v295 + 151) = *(v294 + 13) + 4;
    v296 = *(v295 + 151);
    v541 = 0;
    *v296 = 0;
    *(v295 + 149) = *(v294 + 13) + 8;
    v297 = *(v295 + 149);
    v540 = 0;
    *v297 = 0;
    v544 = **(v294 + 13);
    v376 = v544;
    if (v544 < 2u)
    {
      v545 = 1;
    }

    else
    {
      if ((v376 - 2) >= 2)
      {
        v298 = v437;
        *(v437 + 156) = v544;
        v299 = *(v298 + 156);
        v326 = v277;
        v327 = v278;
        qword_D8128 = "BUG IN LIBMALLOC: unknown segment group id";
        qword_D8158 = v299;
        __break(1u);
        JUMPOUT(0x5F8E4);
      }

      v545 = 0;
    }

    if (v545 == 1)
    {
      *(*(v436 + 13) + 16) = *(*(v436 + 103) + 464);
    }

    else if (**(v436 + 13) == 2)
    {
      if (!*(*(v436 + 13) + 16))
      {
        v300 = _xzm_random_front_index(v553, *(v436 + 132), 0);
        v301 = v436;
        v455 = v300;
        *(v436 + 10) = v300 + 2;
        *(v301[13] + 16) = *(v301[103] + 464) + 80 * v301[10];
      }
    }

    else
    {
      if (**(v436 + 13) != 3)
      {
        v326 = v277;
        v327 = v278;
        qword_D8128 = "BUG IN LIBMALLOC: malloc assertion sg->xzsg_id == XZM_SEGMENT_GROUP_POINTER_XZONES failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:7879)";
        __break(1u);
        JUMPOUT(0x5F9C8);
      }

      v302 = v436;
      *(v436 + 9) = *(v436 + 12) - 3;
      v302[8] = v302[9] + 2;
      if (v302[8] >= *(v302[103] + 410))
      {
        v326 = v277;
        v327 = v278;
        qword_D8128 = "BUG IN LIBMALLOC: malloc assertion rg_idx < main->xzmz_range_group_count failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:7883)";
        __break(1u);
        JUMPOUT(0x5FA20);
      }

      *(*(v436 + 13) + 16) = *(*(v436 + 103) + 464) + 80 * *(v436 + 8);
    }

    v303 = v436;
    *(*(v436 + 13) + 1) = *(*(*(v436 + 13) + 16) + 1);
    *(v303[13] + 24) = v303[103];
    if (v303[14] == 1)
    {
      v304 = v436;
      v305 = *(v436 + 13);
      *(v436 + 3) = 0u;
      memset(v452, 0, sizeof(v452));
      v453 = v498;
      v454 = v501 >> 14;
      v305[32] = *(v304 + 3);
      v305[31] = 0u;
      v305[30] = 0u;
      v305[29] = 0u;
      v306 = v436;
      *(*(v436 + 13) + 464) = 0;
      *(*(v306 + 13) + 472) = *(v306 + 13) + 464;
      v307 = v436;
      *(*(v436 + 13) + 504) = *(*(v436 + 13) + 488);
      *(*(v307 + 13) + 496) = *(*(v307 + 13) + 480);
      *(*(v307 + 13) + 488) = 7901;
      *(*(v307 + 13) + 480) = "/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c";
      v308 = v437;
      *(v437 + 147) = *(v436 + 13) + 520;
      v309 = *(v308 + 147);
      v539 = 0;
      *v309 = 0;
    }

    for (i = 0; i <= 0x1A; ++i)
    {
      *(*(v436 + 13) + 16 * i + 40) = _xzm_span_queue_slice_counts[i];
    }
  }

  v450 = (*(*(v436 + 103) + 480) + 256);
  v372 = 16;
  v449 = 16;
  v371 = 0x4000;
  v448 = 0x4000;
  v374 = 1;
  v373 = 0;
  xzm_metapool_init(v450, 4u, 1u, 0x4000u, 0x10u, 0x10u, 0);
  v447 = *(*(v436 + 103) + 480);
  v375 = 0;
  xzm_metapool_init(v447, 0, v374, 0x80000u, v371, v371, v450);
  v446 = (*(*(v436 + 103) + 480) + 64);
  xzm_metapool_init(v446, v374, v374, 0x40000u, 0x10000u, 0x10000u, v450);
  v445 = (*(*(v436 + 103) + 480) + 128);
  xzm_metapool_init(v445, 2u, v374, v371, v372, v372, v373);
  v310 = v375;
  v444 = (*(*(v436 + 103) + 480) + 192);
  v443 = v374 | (12 * *(v437 + 7));
  *(*(v436 + 103) + 212) = v443;
  v442 = 24 * v443 + 40;
  xzm_metapool_init(v444, 3u, 0xBu, 0x8000u, v310, 24 * v443 + 40, v450);
  v441 = *(*(v436 + 103) + 411) == 2;
  _xzm_initialize_xzone_data(*(v436 + 103), v483, (*(v436 + 103) + 532), v553, v441);
  v311 = v437;
  *(v437 + 39) = *(v437 + 36);
  *(v311 + 38) = "MallocReportConfig";
  v312 = _simple_getenv();
  v313 = v437;
  *(v437 + 17) = v312;
  if (*(v313 + 17))
  {
    v440 = 0;
    v439 = 4;
    v438 = sysctlbyname("vm.reclaim.enabled", &v440, &v439, 0, 0);
    v358 = v441;
    v359 = v485;
    v360 = v493;
    v361 = (v536 >> 5) & 1;
    v362 = v487;
    v363 = v497;
    v364 = v496;
    v365 = v495;
    v366 = v498;
    v367 = v501;
    v368 = v500;
    v369 = v499;
    v370 = 1;
    if (!v438)
    {
      v370 = v440 == 0;
    }

    v314 = "DISABLED";
    if (!v370)
    {
      v314 = "ENABLED";
    }

    v356 = v314;
    v357 = v494;
    if (malloc_internal_security_policy)
    {
      v355 = *(*(*(v436 + 103) + 464) + 24);
    }

    else
    {
      v355 = 0;
    }

    v353 = v355;
    v354 = *(*(*(v436 + 103) + 464) + 32);
    if (malloc_internal_security_policy)
    {
      v352 = *(*(*(v436 + 103) + 464) + 184);
    }

    else
    {
      v352 = 0;
    }

    v350 = v352;
    v351 = *(*(*(v436 + 103) + 464) + 192);
    if ((malloc_internal_security_policy & 1) != 0 && *(*(v436 + 103) + 415) > 1u)
    {
      v349 = *(*(*(v436 + 103) + 464) + 264);
    }

    else
    {
      v349 = 0;
    }

    v348 = v349;
    if (*(*(v436 + 103) + 415) <= 1u)
    {
      v347 = 0;
    }

    else
    {
      v347 = *(*(*(v436 + 103) + 464) + 272);
    }

    v340 = v347;
    v315 = "enabled";
    if (!*(*(v436 + 103) + 416))
    {
      v315 = "disabled";
    }

    v341 = v315;
    v342 = v482;
    v343 = v521;
    v344 = v522;
    v345 = *(v437 + 1);
    v549 = v515;
    v346 = v515;
    if (v515)
    {
      if (v346 == 1)
      {
        *(v437 + 164) = "CLUSTER";
      }

      else
      {
        if (v346 != 2)
        {
          v326 = v277;
          v327 = v278;
          qword_D8128 = "BUG IN LIBMALLOC: unexpected slot config";
          __break(1u);
          JUMPOUT(0x600D4);
        }

        *(v437 + 164) = "CPU";
      }
    }

    else
    {
      *(v437 + 164) = "SINGLE";
    }

    v338 = *(v437 + 164);
    v548 = v527;
    v339 = v527;
    if (v527)
    {
      if (v339 == 1)
      {
        *(v437 + 162) = "CLUSTER";
      }

      else
      {
        if (v339 != 2)
        {
          v326 = v277;
          v327 = v278;
          qword_D8128 = "BUG IN LIBMALLOC: unexpected slot config";
          __break(1u);
          JUMPOUT(0x601A0);
        }

        *(v437 + 162) = "CPU";
      }
    }

    else
    {
      *(v437 + 162) = "SINGLE";
    }

    v334 = *(v437 + 162);
    v335 = v513;
    v336 = v514;
    v547 = v483;
    v337 = v483;
    if (v483)
    {
      if (v337 == 1)
      {
        *(v437 + 160) = "CLUSTER";
      }

      else
      {
        if (v337 != 2)
        {
          v326 = v277;
          v327 = v278;
          qword_D8128 = "BUG IN LIBMALLOC: unexpected slot config";
          __break(1u);
          JUMPOUT(0x6027CLL);
        }

        *(v437 + 160) = "CPU";
      }
    }

    else
    {
      *(v437 + 160) = "SINGLE";
    }

    v332 = *(v437 + 160);
    v546 = v484;
    v333 = v484;
    if (v484)
    {
      if (v333 == 1)
      {
        *(v437 + 158) = "CLUSTER";
      }

      else
      {
        if (v333 != 2)
        {
          v326 = v277;
          v327 = v278;
          qword_D8128 = "BUG IN LIBMALLOC: unexpected slot config";
          __break(1u);
          JUMPOUT(0x60348);
        }

        *(v437 + 158) = "CPU";
      }
    }

    else
    {
      *(v437 + 158) = "SINGLE";
    }

    v316 = *(v437 + 158);
    v317 = *(v436 + 171) / 0xF4240uLL;
    v318 = *(v436 + 168) / 0xF4240uLL;
    v319 = *(v436 + 172);
    if (v518)
    {
      v320 = "enabled";
    }

    else
    {
      v320 = "disabled";
    }

    v321 = *(v436 + 160) / 0xF4240uLL;
    v322 = *(v437 + 11);
    v331 = &v324;
    malloc_report(6u, "XZM Config:\n\tData Only: %d\n\tAllocation Fronts: %d\n\tGuards Enabled: %d\n\tScribble: %d\n\tTiny/Small Batch Max: %d\n\tDefer Tiny: %d\n\tDefer Small: %d\n\tDefer Large: %d\n\tHuge Cache Size: %d\n\tHuge Cache Max Entry Bytes: %u\n\tReclaim Buffer Count: %u/%u (%s)\n\tSmall Freelist: %u\n\tData Range: 0x%llx/%lu\n\tPointer Range 1: 0x%llx/%lu\n\tPointer Range 2: 0x%llx/%lu\n\tEarly Allocator: %s\n\tSegment Deallocate: %u\n\tMTE (enabled/data/max size): %d/%d/%llu\n\tInitial Slot Config: %s/%s (Chunk, Size Thresholds: %u, %u)\n\tInitial List Config: %s/%s\n\tList Upgrade Thresholds: %d/%d, %d/%d\n\tSlot Upgrade Thresholds: %d/%d, %d/%d\n\tTiny Thrash Threshold: %llu ms\n\tSmall Thrash Threshold: %llu ms, %llu bytes\n\tThread Caching: %s (%u allocs, %u contentions, %llu ms)\n\tPointer Bucket Count: %lu\n", v358, v359, v360, v361, v362, v363, v364, v365, v366, v367, v368, v369, v356, v357, v353, v354, v350, v351, v348, v340, v341, v342, v343, v344, v345, v338, v334, v335, v336, v332, v316, v512, v508, v511, v508, v510, v507, v509, v507, v317, v318, v319, v320, v503, v502, v321, v322);
  }

  v329 = *(v436 + 103);
  v330 = *(v437 + 22);
  return v329;
}

uint64_t (*_xzm_initialize_const_zone_data(void *a1, uint64_t a2, __int16 a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, char a9, unsigned int a10, char a11, unsigned int a12, unsigned int a13, int a14, unsigned int a15, int a16, int a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, char a23, uint64_t a24))()
{
  v104 = a1;
  v103 = a2;
  v102 = a3;
  v101 = a4;
  v100 = a5;
  v99 = a6;
  v98 = a7;
  v97 = a8;
  v96 = a22;
  if (a1 + a2 < a7 + 32 * a4 * a5)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion (uintptr_t)zone + size >= (uintptr_t)slots + sizeof(struct xzm_xzone_allocation_slot_s) * xzone_count * slot_count failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:6226)";
    __break(1u);
    JUMPOUT(0x606F4);
  }

  if (v98 < v99 + 96 * v101)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion (uintptr_t)slots >= (uintptr_t)xzones + sizeof(struct xzm_xzone_s) * xzone_count failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:6228)";
    __break(1u);
    JUMPOUT(0x60740);
  }

  __dst = v104;
  __src[0] = 0;
  __src[1] = 0;
  v93 = 0;
  if (xzm_malloc_zone_size)
  {
    v93 = xzm_malloc_zone_size;
  }

  v91 = 0;
  if (v93)
  {
    v91 = v93;
  }

  __src[2] = v91;
  v90 = 0;
  if (xzm_malloc_zone_malloc)
  {
    v90 = xzm_malloc_zone_malloc;
  }

  v89 = 0;
  if (v90)
  {
    v89 = v90;
  }

  __src[3] = v89;
  v88 = 0;
  if (xzm_malloc_zone_calloc)
  {
    v88 = xzm_malloc_zone_calloc;
  }

  v87 = 0;
  if (v88)
  {
    v87 = v88;
  }

  __src[4] = v87;
  v86 = 0;
  if (xzm_malloc_zone_valloc)
  {
    v86 = xzm_malloc_zone_valloc;
  }

  v85 = 0;
  if (v86)
  {
    v85 = v86;
  }

  __src[5] = v85;
  v84 = 0;
  if (xzm_malloc_zone_free)
  {
    v84 = xzm_malloc_zone_free;
  }

  v83 = 0;
  if (v84)
  {
    v83 = v84;
  }

  __src[6] = v83;
  v82 = 0;
  if (xzm_malloc_zone_realloc)
  {
    v82 = xzm_malloc_zone_realloc;
  }

  v81 = 0;
  if (v82)
  {
    v81 = v82;
  }

  __src[7] = v81;
  v80 = 0;
  if (xzm_malloc_zone_destroy)
  {
    v80 = xzm_malloc_zone_destroy;
  }

  v79 = 0;
  if (v80)
  {
    v79 = v80;
  }

  __src[8] = v79;
  __src[9] = 0;
  __src[10] = malloc_zone_batch_malloc_fallback;
  __src[11] = malloc_zone_batch_free_fallback;
  __src[12] = xzm_malloc_zone_introspect;
  LODWORD(__src[13]) = 16;
  v78 = 0;
  if (xzm_malloc_zone_memalign)
  {
    v78 = xzm_malloc_zone_memalign;
  }

  v77 = 0;
  if (v78)
  {
    v77 = v78;
  }

  __src[14] = v77;
  v76 = 0;
  if (xzm_malloc_zone_free_definite_size)
  {
    v76 = xzm_malloc_zone_free_definite_size;
  }

  v75 = 0;
  if (v76)
  {
    v75 = v76;
  }

  __src[15] = v75;
  v74 = 0;
  if (malloc_zone_pressure_relief_fallback)
  {
    v74 = malloc_zone_pressure_relief_fallback;
  }

  v73 = 0;
  if (v74)
  {
    v73 = v74;
  }

  __src[16] = v73;
  v72 = 0;
  if (xzm_malloc_zone_claimed_address)
  {
    v72 = xzm_malloc_zone_claimed_address;
  }

  v71 = 0;
  if (v72)
  {
    v71 = v72;
  }

  __src[17] = v71;
  v70 = 0;
  if (xzm_malloc_zone_try_free_default)
  {
    v70 = xzm_malloc_zone_try_free_default;
  }

  v69 = 0;
  if (v70)
  {
    v69 = v70;
  }

  __src[18] = v69;
  v68 = 0;
  if (xzm_malloc_zone_malloc_with_options)
  {
    v68 = xzm_malloc_zone_malloc_with_options;
  }

  v67 = 0;
  if (v68)
  {
    v67 = v68;
  }

  __src[19] = v67;
  v66 = 0;
  if (xzm_malloc_zone_malloc_type_malloc)
  {
    v66 = xzm_malloc_zone_malloc_type_malloc;
  }

  v65 = 0;
  if (v66)
  {
    v65 = v66;
  }

  __src[20] = v65;
  v64 = 0;
  if (xzm_malloc_zone_malloc_type_calloc)
  {
    v64 = xzm_malloc_zone_malloc_type_calloc;
  }

  v63 = 0;
  if (v64)
  {
    v63 = v64;
  }

  __src[21] = v63;
  v62 = 0;
  if (xzm_malloc_zone_malloc_type_realloc)
  {
    v62 = xzm_malloc_zone_malloc_type_realloc;
  }

  v61 = 0;
  if (v62)
  {
    v61 = v62;
  }

  __src[22] = v61;
  v60 = 0;
  if (xzm_malloc_zone_malloc_type_memalign)
  {
    v60 = xzm_malloc_zone_malloc_type_memalign;
  }

  v59 = 0;
  if (v60)
  {
    v59 = v60;
  }

  __src[23] = v59;
  v58 = 0;
  if (xzm_malloc_zone_malloc_type_malloc_with_options)
  {
    v58 = xzm_malloc_zone_malloc_type_malloc_with_options;
  }

  v57 = 0;
  if (v58)
  {
    v57 = v58;
  }

  __src[24] = v57;
  __src[25] = v103;
  LOWORD(__src[26]) = v102;
  BYTE2(__src[26]) = v101;
  *(&__src[26] + 3) = v100;
  __src[27] = v99;
  __src[28] = v98;
  __src[29] = a24;
  __src[30] = v97;
  LOWORD(__src[31]) = __src[31] & 0xC0 | a23 & 3 | (4 * (a9 & 3)) & 0xCF | (16 * (a11 & 3));
  BYTE2(__src[31]) = v96 & 1;
  HIDWORD(__src[31]) = 0;
  LODWORD(__src[32]) = 0;
  __src[33] = 0;
  __src[34] = __PAIR64__(a13, a12);
  v56 = &__src[35];
  do
  {
    *v56 = 0;
  }

  while (++v56 - (&__src[35] + 4));
  HIDWORD(__src[35]) = a14;
  __src[36] = __PAIR64__(a15, a10);
  LODWORD(__src[37]) = a16;
  v55 = &__src[37] + 1;
  do
  {
    *v55 = 0;
  }

  while (++v55 - &__src[38]);
  LODWORD(__src[38]) = a17;
  __src[39] = a18;
  __src[40] = 0;
  __src[41] = a19;
  __src[42] = a20;
  __src[43] = 0;
  __src[44] = 0;
  __src[45] = a21;
  __src[47] = 0;
  __src[46] = 0;
  result = memcpy(__dst, __src, 0x180uLL);
  v94 = 0;
  if ((a21 & 0x20) != 0 || (a21 & 0x80) != 0)
  {
    v94 = 1;
  }

  if (v94)
  {
    v54 = 0;
    if (xzm_malloc_zone_malloc_slow)
    {
      v54 = xzm_malloc_zone_malloc_slow;
    }

    v53 = 0;
    if (v54)
    {
      v53 = v54;
    }

    v104[3] = v53;
    v52 = 0;
    if (xzm_malloc_zone_calloc_slow)
    {
      v52 = xzm_malloc_zone_calloc_slow;
    }

    v51 = 0;
    if (v52)
    {
      v51 = v52;
    }

    v104[4] = v51;
    v50 = 0;
    if (xzm_malloc_zone_valloc_slow)
    {
      v50 = xzm_malloc_zone_valloc_slow;
    }

    v49 = 0;
    if (v50)
    {
      v49 = v50;
    }

    v104[5] = v49;
    v48 = 0;
    if (xzm_malloc_zone_free_slow)
    {
      v48 = xzm_malloc_zone_free_slow;
    }

    v47 = 0;
    if (v48)
    {
      v47 = v48;
    }

    v104[6] = v47;
    v46 = 0;
    if (xzm_malloc_zone_realloc_slow)
    {
      v46 = xzm_malloc_zone_realloc_slow;
    }

    v45 = 0;
    if (v46)
    {
      v45 = v46;
    }

    v104[7] = v45;
    v44 = 0;
    if (xzm_malloc_zone_memalign_slow)
    {
      v44 = xzm_malloc_zone_memalign_slow;
    }

    v43 = 0;
    if (v44)
    {
      v43 = v44;
    }

    v104[14] = v43;
    v42 = 0;
    if (xzm_malloc_zone_free_definite_size_slow)
    {
      v42 = xzm_malloc_zone_free_definite_size_slow;
    }

    v41 = 0;
    if (v42)
    {
      v41 = v42;
    }

    v104[15] = v41;
    v40 = 0;
    if (xzm_malloc_zone_try_free_default_slow)
    {
      v40 = xzm_malloc_zone_try_free_default_slow;
    }

    v39 = 0;
    if (v40)
    {
      v39 = v40;
    }

    v104[18] = v39;
    v38 = 0;
    if (xzm_malloc_zone_malloc_with_options_slow)
    {
      v38 = xzm_malloc_zone_malloc_with_options_slow;
    }

    v37 = 0;
    if (v38)
    {
      v37 = v38;
    }

    v104[19] = v37;
    v36 = 0;
    if (xzm_malloc_zone_malloc_type_malloc_slow)
    {
      v36 = xzm_malloc_zone_malloc_type_malloc_slow;
    }

    v35 = 0;
    if (v36)
    {
      v35 = v36;
    }

    v104[20] = v35;
    v34 = 0;
    if (xzm_malloc_zone_malloc_type_calloc_slow)
    {
      v34 = xzm_malloc_zone_malloc_type_calloc_slow;
    }

    v33 = 0;
    if (v34)
    {
      v33 = v34;
    }

    v104[21] = v33;
    v32 = 0;
    if (xzm_malloc_zone_malloc_type_realloc_slow)
    {
      v32 = xzm_malloc_zone_malloc_type_realloc_slow;
    }

    v31 = 0;
    if (v32)
    {
      v31 = v32;
    }

    v104[22] = v31;
    v30 = 0;
    if (xzm_malloc_zone_malloc_type_memalign_slow)
    {
      v30 = xzm_malloc_zone_malloc_type_memalign_slow;
    }

    v29 = 0;
    if (v30)
    {
      v29 = v30;
    }

    v104[23] = v29;
    result = xzm_malloc_zone_malloc_type_malloc_with_options_slow;
    v28 = 0;
    if (xzm_malloc_zone_malloc_type_malloc_with_options_slow)
    {
      v28 = xzm_malloc_zone_malloc_type_malloc_with_options_slow;
    }

    v27 = 0;
    if (v28)
    {
      v27 = v28;
    }

    v104[24] = v27;
  }

  return result;
}

void _xzm_xzone_thread_cache_destructor(void *a1)
{
  v5 = a1[2];
  a1[4] = atomic_fetch_add_explicit((v5 + 544), 1uLL, memory_order_relaxed) + 1;
  for (i = 1; i < *(v5 + 212); ++i)
  {
    if (LOWORD(a1[3 * i + 7]) <= 0x400u)
    {
      _xzm_xzone_thread_cache_detach(v5, *(v5 + 216) + 96 * i, &a1[3 * i + 5]);
    }
  }

  v1 = 0;
  atomic_compare_exchange_strong_explicit((v5 + 552), &v1, *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24), memory_order_acquire, memory_order_acquire);
  if (v1)
  {
    os_unfair_lock_lock_with_options();
  }

  if (*a1)
  {
    *(*a1 + 8) = a1[1];
  }

  *a1[1] = *a1;
  *a1 = -1;
  a1[1] = -1;
  v2 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
  v3 = v2;
  atomic_compare_exchange_strong_explicit((v5 + 552), &v3, 0, memory_order_release, memory_order_relaxed);
  if (v3 != v2)
  {
    os_unfair_lock_unlock((v5 + 552));
  }

  xzm_metapool_free(*(v5 + 480) + 192, a1);
}

uint64_t _xzm_random_front_index(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a2 == 1)
  {
    return 0;
  }

  else
  {
    if (a2 != 2)
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion allocation_front_count == 2 failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:6114)";
      __break(1u);
      JUMPOUT(0x62850);
    }

    if (a3 >> 3 >= 0x20uLL)
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion byte < XZM_FRONT_RANDOM_SIZE failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:6119)";
      __break(1u);
      JUMPOUT(0x628A4);
    }

    return (*(a1 + (a3 >> 3)) >> (a3 & 7)) & 1;
  }
}

void _xzm_initialize_xzone_data(uint64_t a1, char a2, _BYTE *a3, uint64_t a4, char a5)
{
  v38 = a1;
  v37 = a2;
  v36 = a3;
  v35 = a4;
  v34 = a5;
  v45 = a1;
  if (*(a1 + 240))
  {
    v11 = *(a1 + 240);
  }

  else
  {
    v11 = v45;
  }

  v33 = v11;
  v46 = v38;
  v32 = *(v38 + 240) == 0;
  if (!v32 || (v10 = 1, !v35))
  {
    v9 = 0;
    if (!v32)
    {
      v9 = v35 == 0;
    }

    v10 = v9;
  }

  if ((v10 & 1) == 0)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion (is_main && front_random) || (!is_main && !front_random) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:6344)";
    __break(1u);
    JUMPOUT(0x629E0);
  }

  __buf = 0;
  arc4random_buf(&__buf, 8uLL);
  if (!__buf)
  {
    __buf = 0xDEADDEADDEADDEADLL;
  }

  if (*(v38 + 368))
  {
    v44 = __buf;
    v43 = __buf & 0xF0FFFFFFFFFFFFFFLL;
    __buf &= 0xF0FFFFFFFFFFFFFFLL;
  }

  *(v38 + 320) = __buf;
  v30 = 1;
  v29 = 0;
LABEL_16:
  if (v29 < 0x28)
  {
    if (v32)
    {
      *(*(v33 + 448) + v29) = v30;
    }

    v28 = *(*(v33 + 440) + v29);
    for (i = 0; ; ++i)
    {
      if (i >= v28)
      {
        ++v29;
        goto LABEL_16;
      }

      v26 = *(v38 + 216) + 96 * v30;
      v25 = *(*(v33 + 432) + 8 * v29);
      if (v25 > 0x1000)
      {
        if (*(v38 + 250))
        {
          v24 = 0x20000;
        }

        else
        {
          v24 = 0x10000;
        }
      }

      else
      {
        v24 = 0x4000;
      }

      v23 = 0;
      if (v32 && *(v33 + 416))
      {
        if (v25 > 0x100)
        {
          if (v25 > 0x200)
          {
            if (v25 > 0x800)
            {
              v23 = v25 <= 0x2000;
            }

            else
            {
              v23 = 0x2000 / v25;
            }
          }

          else
          {
            v23 = 0x1000 / v25;
          }
        }

        else
        {
          v23 = 0x800 / v25;
        }
      }

      if (i && (v34 & 1) == 0)
      {
        v22 = 3;
        v21 = 1;
      }

      else
      {
        v22 = 0;
        v21 = 0;
      }

      if (v25 > 0x1000 && (*(v33 + 409) & 4) != 0)
      {
        v21 = 1;
      }

      if (v32)
      {
        if (v22 == 3)
        {
          v20 = _xzm_random_front_index(v35, *(v33 + 415), v30);
        }

        else
        {
          if (v22)
          {
            qword_D8128 = "BUG IN LIBMALLOC: malloc assertion sgid == XZM_SEGMENT_GROUP_DATA failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:6427)";
            __break(1u);
            JUMPOUT(0x62D2CLL);
          }

          v20 = 0;
        }
      }

      else
      {
        v20 = *(*(v33 + 216) + 96 * v30 + 43);
      }

      v19 = 0;
      v18 = 0;
      if (*v36)
      {
        if (v36[1])
        {
          v21 = 1;
        }

        if (v21)
        {
          if (v25 > 0x1000)
          {
            v19 = v36[4];
            v18 = v36[5];
          }

          else
          {
            v19 = v36[2];
            v18 = v36[3];
          }
        }
      }

      *&v14 = 0;
      WORD4(v14) = v23;
      BYTE10(v14) = v22;
      BYTE11(v14) = v20;
      *&v15 = v25;
      *(&v15 + 1) = 0xFFFFFFFF / v25 + 1;
      LODWORD(v16) = 0xFFFFFFFF / v25 + 1;
      HIDWORD(v16) = v24 / v25;
      LOBYTE(v17) = v30;
      WORD1(v17) = *(v38 + 208);
      WORD2(v17) = i;
      BYTE6(v17) = 0;
      BYTE7(v17) = BYTE7(v17) & 0xFC | v21 & 1;
      BYTE8(v17) = v19;
      BYTE9(v17) = v18;
      *(v26 + 16) = 0u;
      *v26 = 0u;
      *(v26 + 80) = v17;
      *(v26 + 64) = v16;
      *(v26 + 48) = v15;
      *(v26 + 32) = v14;
      v8 = *(v38 + 211);
      v55 = (*(v38 + 248) >> 4) & 3;
      if (v55)
      {
        if (v55 == 1)
        {
          v56 = ncpuclusters;
          goto LABEL_62;
        }

        if (v55 == 2)
        {
          v56 = logical_ncpus;
          goto LABEL_62;
        }
      }

      v56 = 1;
LABEL_62:
      if (v8 != v56)
      {
        qword_D8128 = "BUG IN LIBMALLOC: malloc assertion zone->xzz_slot_count == _xzm_get_limit_allocation_index(zone->xzz_max_slot_config) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:6478)";
        __break(1u);
        JUMPOUT(0x62FB4);
      }

      v53 = *(v38 + 248) & 3;
      switch(v53)
      {
        case 0:
LABEL_69:
          v54 = 1;
          break;
        case 1:
          v54 = ncpuclusters;
          break;
        case 2:
          v54 = logical_ncpus;
          break;
        default:
          goto LABEL_69;
      }

      v13 = v54;
      for (j = 0; j < *(v38 + 211); ++j)
      {
        v61 = v38;
        v60 = v26;
        v59 = j;
        v58 = *(v26 + 80);
        v57 = j * *(v38 + 210);
        if (v57 + v58 >= *(v38 + 211) * *(v38 + 210))
        {
          qword_D8128 = "BUG IN LIBMALLOC: malloc assertion alloc_base_idx + xz_idx < zone->xzz_slot_count * zone->xzz_xzone_count failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:1246)";
          __break(1u);
          JUMPOUT(0x630E8);
        }

        *(*(v61 + 224) + 32 * (v57 + v58) + 23) = *(v26 + 86);
        if (j < v13)
        {
          v5 = *(v38 + 232);
          v52 = v38;
          v51 = v26;
          v50 = v5;
          v49 = j;
          v48 = *(v26 + 80);
          v47 = j * *(v38 + 210);
          if (v47 + v48 >= *(v38 + 211) * *(v38 + 210))
          {
            qword_D8128 = "BUG IN LIBMALLOC: malloc assertion alloc_base_idx + xz_idx < zone->xzz_slot_count * zone->xzz_xzone_count failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:233)";
            __break(1u);
            JUMPOUT(0x631C0);
          }

          *(v50 + 16 * (v47 + v48) + 15) = *(v26 + 85);
        }
      }

      v42 = v38;
      v41 = v25;
      v40 = i == 0;
      v39 = v38 + 368;
      v7 = 0;
      if (*(v38 + 368))
      {
        v7 = 0;
        if (v41 <= *(v39 + 8))
        {
          v6 = 1;
          if (v40)
          {
            v6 = *(v39 + 1);
          }

          v7 = v6;
        }
      }

      *(v26 + 87) = *(v26 + 87) & 0xFD | (2 * (v7 & 1));
      if ((*(v38 + 368) & 1) != 0 && (*(v26 + 87) & 2) == 0)
      {
        *(v26 + 40) = 0;
      }

      ++v30;
    }
  }
}

uint64_t xzm_malloc_zone_create(unsigned int a1, uint64_t a2)
{
  v23 = &v45;
  v44 = a1;
  v43 = a2;
  v42 = 384;
  v41 = 384;
  v40 = *(a2 + 210);
  v39 = *(a2 + 211);
  v38 = 96 * v40 + 384;
  v37 = v40 * v39;
  v36 = v38 + 32 * v37;
  v42 = v36 + 16 * v37;
  v46 = a2 + 528;
  v53 = a2 + 528;
  v52 = 327680;
  v54 = 3;
  v55 = 3;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v51 = *(StatusReg + 24);
  v50 = 0;
  v49 = v51;
  v48 = v51;
  v2 = 0;
  atomic_compare_exchange_strong_explicit((a2 + 528), &v2, v51, memory_order_acquire, memory_order_acquire);
  v24 = v2;
  v25 = v2 == 0;
  if (v2)
  {
    *(v23 + 9) = v24;
  }

  v47 = v25;
  if (!v25)
  {
    os_unfair_lock_lock_with_options();
  }

  v35 = 0;
  v34 = *(v43 + 520);
  if (v34)
  {
    *(v43 + 520) = *(*(v43 + 520) + 8);
    v35 = *v34;
    v33 = *(v43 + 480) + 128;
    xzm_metapool_free(v33, v34);
  }

  else if (*(v43 + 516) == -1)
  {
    v35 = 0;
  }

  else
  {
    v35 = ++*(v43 + 516);
  }

  v3 = v23;
  *(v23 + 2) = v43 + 528;
  *(v3 + 13) = *(v3 + 2);
  *(v3 + 14) = 3;
  *(v3 + 15) = *(v3 + 14);
  *(v3 + 16) = 0;
  *(v3 + 16) = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  *(v3 + 25) = *(*(v3 + 16) + 8 * *(v3 + 15));
  *(v3 + 24) = 0;
  *(v3 + 23) = 0;
  *(v3 + 23) = *(v3 + 25);
  v4 = *(v3 + 13);
  *(v3 + 22) = *(v3 + 24);
  v5 = *(v3 + 23);
  v6 = *(v3 + 22);
  LODWORD(v3) = v5;
  atomic_compare_exchange_strong_explicit(v4, &v3, v6, memory_order_release, memory_order_relaxed);
  v21 = v3;
  v22 = v3 == v5;
  if (v3 != v5)
  {
    *(v23 + 23) = v21;
  }

  v57 = v22;
  if (!v22)
  {
    os_unfair_lock_unlock(*(v23 + 13));
  }

  if (v35)
  {
    v32 = 1;
    v30 = 0;
    v31 = 1;
    plat = mvm_allocate_plat(0, v42, 0, 1, 0x2000, 1, 0);
    if (plat)
    {
      v28 = plat;
      v27 = plat + v36;
      v19 = v43;
      v7 = *(v43 + 248);
      v8 = *(v43 + 288);
      v9 = *(v43 + 272);
      v10 = *(v43 + 276);
      v11 = *(v43 + 284);
      v12 = *(v43 + 292);
      v13 = *(v43 + 296);
      v14 = *(v43 + 304);
      v15 = *(v43 + 312);
      v16 = *(v43 + 250);
      v20 = &v18;
      _xzm_initialize_const_zone_data(plat, v42, v35, v40, v39, &plat[v41 / 8], plat + v38, v43, (v7 >> 2) & 3, v8, (v7 >> 4) & 3, v9, v10, v11, v12, v13, v14, v15, 0, 0, v44, v16 & 1, v7 & 3, plat + v36);
      *(v28 + 23) = *(v43 + 368);
      if (!v28)
      {
        qword_D8128 = "BUG IN LIBMALLOC: malloc assertion new_zone != NULL failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:8163)";
        __break(1u);
        JUMPOUT(0x637B0);
      }

      v26 = *(v43 + 411) == 2;
      _xzm_initialize_xzone_data(v28, 0, (v43 + 532), 0, v26);
      v28[44] = 0;
      *v23 = v28;
    }

    else
    {
      *v23 = 0;
    }
  }

  else
  {
    *v23 = 0;
  }

  return *v23;
}

_OWORD *_xzm_xzone_malloc_tiny(unsigned __int8 *a1, uint64_t a2, int a3)
{
  v52 = a1;
  v51 = a2;
  v50 = a3;
  v49 = 0;
  v48 = a3 & 1;
  v47 = 0;
  v192 = a1;
  v191 = a2;
  v190 = &v47;
  v189 = 1;
  v188 = a2 + 86;
  v185 = *(a2 + 86);
  v186 = v185;
  v184 = v185;
  v187 = v185;
  if (v185 > ((a1[248] >> 4) & 3))
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion slot_config <= zone->xzz_max_slot_config failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:185)";
    __break(1u);
    JUMPOUT(0x6394CLL);
  }

  if (v190)
  {
    *v190 = v187;
  }

  if (!v187)
  {
    goto LABEL_10;
  }

  if (v187 == 1)
  {
    v193 = _malloc_cpu_cluster_number();
    goto LABEL_11;
  }

  if (v187 != 2)
  {
LABEL_10:
    v193 = 0;
    goto LABEL_11;
  }

  v193 = _malloc_cpu_number();
LABEL_11:
  v46 = v193;
  v198 = v52;
  v197 = v51;
  v196 = v193;
  v195 = *(v51 + 80);
  v194 = v193 * v52[210];
  if (v194 + v195 >= v198[211] * v198[210])
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion alloc_base_idx + xz_idx < zone->xzz_slot_count * zone->xzz_xzone_count failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:1246)";
    __break(1u);
    JUMPOUT(0x63A68);
  }

  v45 = (*(v198 + 28) + 32 * (v194 + v195));
  v44 = 0;
  v43 = v45;
  v42 = 0;
  v40 = *v45;
  v41 = v40;
  v39 = v40;
  v42 = v40;
  v38 = 0;
  v34 = 0;
  if ((v40 & 1) == 0)
  {
    v34 = 0;
    if (((v42 >> 2) & 0x7FFFFFFFFFFFLL) != 0)
    {
      LOBYTE(v33) = 0;
      if ((*(v51 + 87) & 2) != 0)
      {
        v33 = (HIBYTE(v50) >> 6) & 1;
      }

      v34 = v33 ^ 1;
    }
  }

  v37 = v34 & 1;
  if ((v34 & 1) == 0)
  {
    return _xzm_xzone_malloc_freelist_outlined(v52, v51, v46, v45, v38, v50);
  }

  v36 = ((v42 >> 2) & 0x7FFFFFFFFFFFLL);
  v35[1] = 0;
  v35[0] = 0;
  v146 = v52;
  v145 = v51;
  v144 = v46;
  v143 = 0;
  v142 = v36;
  v141 = v49 & 1;
  v140 = 0;
  v139 = v35;
  v138 = &v44;
  v137 = 0;
  v136 = *(&dword_C + v36) & 1;
  v135 = 0;
  v3 = 1024;
  if ((v49 & 1) == 0)
  {
    v3 = 16;
  }

  v134 = v3;
  v152 = v146;
  v151 = v142;
  v150 = 0;
  v157 = v146;
  v156 = v142;
  v160 = v146;
  v159 = v142;
  v158 = v142 & 0xFFFFFFFFFFFFC000;
  v32 = 1;
  if ((v142 & 0xFFFFFFFFFFFFC000) != 0)
  {
    v31 = 0;
    if (v159 >= v158 + 2136)
    {
      v31 = v159 < v158 + 48 * *(v158 + 16) + 2136;
    }

    v32 = v31;
  }

  if ((v32 & 1) == 0)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion !segment || (slice >= segment->xzs_slices && slice < (segment->xzs_slices + segment->xzs_slice_entry_count)) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:262)";
    __break(1u);
    JUMPOUT(0x63DE0);
  }

  v162 = v158;
  v161 = v156;
  v167 = v158;
  v166 = v156;
  if (v156 < v158 + 2136)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion (uintptr_t)slice >= (uintptr_t)segment->xzs_slices failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:279)";
    __break(1u);
    JUMPOUT(0x63E48);
  }

  v165 = 0xAAAAAAAAAAAAAAABLL * ((v166 - v167 - 2136) >> 4);
  if (v165 >= *(v167 + 16))
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion index < (ptrdiff_t)segment->xzs_slice_entry_count failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:281)";
    __break(1u);
    JUMPOUT(0x63EACLL);
  }

  v164 = v158;
  v163 = v165;
  v133 = *(v158 + 72) + (v165 << 14);
  if (v141)
  {
    if ((*(v142 + 32) & 0xF) != 6)
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion chunk->xzc_bits.xzcb_kind == XZM_SLICE_KIND_SMALL_FREELIST_CHUNK failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:742)";
      __break(1u);
      JUMPOUT(0x63F20);
    }
  }

  else if ((*(v142 + 32) & 0xF) != 2)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion chunk->xzc_bits.xzcb_kind == XZM_SLICE_KIND_TINY_CHUNK failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:744)";
    __break(1u);
    JUMPOUT(0x63F64);
  }

  v132 = 0;
  v131 = 0;
  v130 = 0uLL;
  v129 = 0;
  v128 = 0;
  v126 = *v142;
  v127 = v126;
  v125 = v126;
  v128 = v126;
  do
  {
    while (1)
    {
      while (1)
      {
        while ((v128 & 0x40000000) != 0)
        {
          if ((v140 & 1) == 0)
          {
            v147 = 0;
            goto LABEL_148;
          }

          _xzm_walk_lock_wait(v146);
          v4[68] = *v142;
          v4[69] = v4[68];
          v4[67] = v4[69];
          v4[73] = v4[67];
        }

        v124 = v128;
        if ((v135 & 1) == 0)
        {
          break;
        }

        if (((v128 >> 22) & 0x3F) != 0)
        {
          qword_D8128 = "BUG IN LIBMALLOC: malloc assertion old_meta.xca_alloc_idx == XZM_SLOT_INDEX_EMPTY failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:791)";
          __break(1u);
          JUMPOUT(0x64138);
        }

        if ((v128 & 0x10000000) == 0)
        {
          qword_D8128 = "BUG IN LIBMALLOC: malloc assertion old_meta.xca_on_partial_list failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:792)";
          __break(1u);
          JUMPOUT(0x6416CLL);
        }

        if ((v128 & 0x20000000) != 0)
        {
          qword_D8128 = "BUG IN LIBMALLOC: malloc assertion !old_meta.xca_on_empty_list failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:793)";
          __break(1u);
          JUMPOUT(0x641A0);
        }

        v124 &= ~0x10000000uLL;
        if (((v128 >> 11) & 0x7FF) != 0)
        {
          v124 = v124 & 0xFFFFFFFFF03FFFFFLL | (((v144 + 1) & 0x3FLL) << 22);
          goto LABEL_85;
        }

        if ((v128 & 0x7FF) == 0x7FE)
        {
          v124 |= 0x20000000uLL;
          *v137 = 1;
        }

        else if ((~v128 & 0x7FF) != 0)
        {
          qword_D8128 = "BUG IN LIBMALLOC: malloc assertion old_meta.xca_alloc_head == XZM_FREE_MADVISING failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:811)";
          __break(1u);
          JUMPOUT(0x64230);
        }

        if (v143)
        {
          v143[8] = -2;
        }

        v122 = v128;
        v121 = 0;
        v119 = v124;
        v118 = v124;
        v120 = v124;
        v5 = v128;
        v6 = v128;
        atomic_compare_exchange_strong_explicit(v142, &v6, v124, memory_order_relaxed, memory_order_relaxed);
        if (v6 != v5)
        {
          v122 = v6;
        }

        v117 = v6 == v5;
        v121 = v6 == v5;
        v128 = v122;
        v116 = v121;
        v123 = v6 == v5;
        if (v6 == v5)
        {
          if (malloc_tracing_enabled)
          {
            kdebug_trace();
          }

          v147 = 0;
          goto LABEL_148;
        }

        if (*v137)
        {
          qword_D8128 = "BUG IN LIBMALLOC: malloc assertion !(*install_empty_out) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:828)";
          __break(1u);
          JUMPOUT(0x64348);
        }
      }

      if (((v128 >> 22) & 0x3F) != v144 + 1)
      {
        if (v143)
        {
          qword_D8128 = "BUG IN LIBMALLOC: malloc assertion !cache failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:869)";
          __break(1u);
          JUMPOUT(0x64448);
        }

        v147 = 0;
        goto LABEL_148;
      }

      if (((v128 >> 11) & 0x7FF) == 0)
      {
        break;
      }

LABEL_85:
      v131 = 0;
      if (v143)
      {
        v124 = v124 & 0xFFFFFFFFFFFFF800 | 0x400;
        v124 &= 0xFFFFFFFFFFC007FFLL;
        v143[9] = ((v128 >> 11) & 0x7FF) - 1;
        if ((v128 & 0x7FF) > 0x3FF)
        {
          if ((v128 & 0x7FF) != 0x400)
          {
            qword_D8128 = "BUG IN LIBMALLOC: malloc assertion old_meta.xca_alloc_head == XZM_FREE_NULL failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:948)";
            __break(1u);
            JUMPOUT(0x647C4);
          }

          if (((v128 >> 11) & 0x7FF) == 0)
          {
            qword_D8128 = "BUG IN LIBMALLOC: malloc assertion old_meta.xca_free_count failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:949)";
            __break(1u);
            JUMPOUT(0x647FCLL);
          }

          v107 = *(v145 + 68);
          v106 = v107 - ((v128 >> 11) & 0x7FF);
          v132 = v133 + v106 * *(v145 + 48);
          v143[8] = 1024;
        }

        else
        {
          v132 = v133 + (v128 & 0x7FF) * v134;
          if (v136)
          {
            __asm { MSR             TCO, #1 }

            v130 = *v132;
            __asm { MSR             TCO, #0 }
          }

          else
          {
            v130 = *v132;
          }

          v143[8] = WORD4(v130) & 0x7FF;
          v143[10] = (DWORD2(v130) >> 11) & 0x1FFF;
          v131 = 1;
        }
      }

      else
      {
        v124 = v124 & 0xFFFFFFFFFFC007FFLL | ((((v124 >> 11) - 1) & 0x7FFLL) << 11);
        if ((v128 & 0x7FF) > 0x3FF)
        {
          if (((v128 >> 11) & 0x7FF) == 0)
          {
            qword_D8128 = "BUG IN LIBMALLOC: malloc assertion old_meta.xca_free_count failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:985)";
            __break(1u);
            JUMPOUT(0x64954);
          }

          if ((v128 & 0x7FF) != 0x400)
          {
            qword_D8128 = "BUG IN LIBMALLOC: malloc assertion old_meta.xca_alloc_head == XZM_FREE_NULL failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:986)";
            __break(1u);
            JUMPOUT(0x6498CLL);
          }

          v105 = *(v145 + 68);
          v132 = v133 + (v105 - ((v128 >> 11) & 0x7FF)) * *(v145 + 48);
        }

        else
        {
          v132 = v133 + (v128 & 0x7FF) * v134;
          if (v136)
          {
            __asm { MSR             TCO, #1 }

            v130 = *v132;
            __asm { MSR             TCO, #0 }
          }

          else
          {
            v130 = *v132;
          }

          v124 = v124 & 0xFFFFFFFFFFFFF800 | WORD4(v130) & 0x7FF;
          v124 = v124 & 0xFFFFF0007FFFFFFFLL | (((*(&v130 + 1) >> 11) & 0x1FFFLL) << 31);
          v131 = 1;
        }
      }

      v103 = v128;
      v102 = 0;
      v100 = v124;
      v99 = v124;
      v101 = v124;
      v17 = v128;
      v18 = v128;
      atomic_compare_exchange_strong_explicit(v142, &v18, v124, memory_order_relaxed, memory_order_relaxed);
      if (v18 != v17)
      {
        v103 = v18;
      }

      v98 = v18 == v17;
      v102 = v18 == v17;
      v128 = v103;
      v97 = v102;
      v104 = v18 == v17;
      if (v18 == v17)
      {
        if (malloc_tracing_enabled)
        {
          kdebug_trace();
        }

        if (v136)
        {
          if (v141)
          {
            v19 = *(v145 + 48);
            v155 = v132;
            v154 = v19;
            v153 = memtag_assign_tag(v132, v19);
            v169 = v153;
            v168 = v154;
            if ((v154 & 0x1FF) != 0)
            {
              v173 = v169;
              v172 = v168;
              if ((v168 & 0xF) != 0)
              {
                __break(1u);
                JUMPOUT(0x64BB4);
              }

              if ((v173 & 0xF) != 0)
              {
                __break(1u);
                JUMPOUT(0x64BCCLL);
              }

              v171 = v173;
              v170 = v173 + v172;
              _X9 = v173;
              __asm { STG             X9, [X9] }

              _X9 = v173 + v172;
              __asm { STG             X9, [X9,#-0x10] }

              if (v172 >= 0x21)
              {
                v171 = (v173 + 31) & 0xFFFFFFFFFFFFFFE0;
                v170 = (v173 + v172) & 0xFFFFFFFFFFFFFFE0;
                _X9 = v171;
                __asm { ST2G            X9, [X9] }

                _X8 = v170;
                __asm { ST2G            X8, [X8,#-0x20] }
              }

              v171 = (v173 + 63) & 0xFFFFFFFFFFFFFFC0;
              v170 = (v173 + v172) & 0xFFFFFFFFFFFFFFC0;
              while (v171 < v170)
              {
                __asm { DC              GVA, X8 }

                v171 += 64;
              }
            }

            else
            {
              v176 = v169;
              v175 = v168;
              if ((v169 & 0x1FF) != 0)
              {
                __break(1u);
                JUMPOUT(0x64CD4);
              }

              if ((v175 & 0x1FF) != 0)
              {
                __break(1u);
                JUMPOUT(0x64CECLL);
              }

              v174 = v176 + v175;
              while (v176 < v174)
              {
                __asm
                {
                  DC              GVA, X8
                  DC              GVA, X8
                  DC              GVA, X8
                  DC              GVA, X8
                  DC              GVA, X8
                  DC              GVA, X8
                  DC              GVA, X8
                  DC              GVA, X8
                }

                v176 += 512;
              }
            }

            v132 = v153;
          }

          else if (v131)
          {
            v180 = v130;
            v179 = v130;
            v96 = BYTE7(v130) & 0xF;
            if ((BYTE7(v130) & 0xF) == 0)
            {
              qword_D8128 = "BUG IN LIBMALLOC: malloc assertion tag != 0 failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:1029)";
              __break(1u);
              JUMPOUT(0x64E0CLL);
            }

            v183 = v132;
            v182 = v96;
            if (v96 >= 0x10u)
            {
              __break(1u);
              JUMPOUT(0x64E38);
            }

            v181 = v183 & 0xF0FFFFFFFFFFFFFFLL | ((v182 & 0xF) << 56);
            v132 = v181;
          }

          else
          {
            v177 = v132;
            v178 = v132;
            _X8 = v132;
            __asm { LDG             X8, [X8] }

            v132 = _X8;
          }
        }

        if (v131)
        {
          v95 = v132 ^ *(v146 + 40);
          if (v141)
          {
            v149 = v95;
            v148 = v95 & 0xF0FFFFFFFFFFFFFFLL;
            v95 &= 0xF0FFFFFFFFFFFFFFLL;
          }

          if (v95 == v130)
          {
            v94 = WORD4(v130) & 0x7FF | (((*(&v130 + 1) >> 11) & 0x1FFFLL) << 11) & 0xFFFFFF;
            if (*(&v130 + 1) != v94)
            {
              *v139 = 1;
            }
          }

          else
          {
            *v139 = 1;
          }
        }

        v147 = v132;
        goto LABEL_148;
      }

      *v138 = 1;
      ++v129;
    }

    v124 &= 0xFFFFFFFFF03FFFFFLL;
    if ((v128 & 0x7FF) != 0x400)
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion old_meta.xca_alloc_head == XZM_FREE_NULL failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:881)";
      __break(1u);
      JUMPOUT(0x644B0);
    }

    if ((v128 & 0x10000000) != 0)
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion !old_meta.xca_on_partial_list failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:887)";
      __break(1u);
      JUMPOUT(0x644E4);
    }

    if ((v128 & 0x20000000) != 0)
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion !old_meta.xca_on_empty_list failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:888)";
      __break(1u);
      JUMPOUT(0x64518);
    }

    if (v143)
    {
      v143[8] = -2;
    }

    v114 = v128;
    v113 = 0;
    v111 = v124;
    v110 = v124;
    v112 = v124;
    v7 = v128;
    v8 = v128;
    atomic_compare_exchange_strong_explicit(v142, &v8, v124, memory_order_relaxed, memory_order_relaxed);
    if (v8 != v7)
    {
      v114 = v8;
    }

    v109 = v8 == v7;
    v113 = v8 == v7;
    v128 = v114;
    v108 = v113;
    v115 = v8 == v7;
  }

  while (v8 != v7);
  if (malloc_tracing_enabled)
  {
    kdebug_trace();
  }

  v147 = 0;
LABEL_148:
  v38 = v147;
  if (!v147 || (v35[0] & 1) != 0)
  {
    return _xzm_xzone_malloc_freelist_outlined(v52, v51, v46, v45, v38, v50);
  }

  v90 = v52;
  v89 = v51;
  v88 = (v45 + 2);
  v87 = v47;
  v86 = 1;
  v85 = v44 & 1;
  if ((v52[249] & 1) != 0 && *(v89 + 6) <= 0x100uLL)
  {
    if (v85)
    {
      v91 = 114;
      v92 = 114;
      StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v84 = *(StatusReg + 912);
      if (v84)
      {
        v83 = v89[80];
        v82 = v84 + 24 * v83 + 40;
        v202 = v90;
        v201 = v89;
        v200 = v82;
        if (*(v84 + 24 * v83 + 56) == -1)
        {
          ++*(v200 + 18);
          v199 = *(v202 + 64);
          if (*(v200 + 18) == v199)
          {
            *(v200 + 16) = -2;
            *(v200 + 22) = *(v200 + 8) & 0xFFF;
          }
        }
      }
    }
  }

  else
  {
    v81 = 0;
    v79 = *v88;
    v80 = v79;
    v78 = v79;
    v81 = v79;
    v77 = (v90[248] >> 4) & 3;
    if (HIBYTE(v79) != v77 && ((v85 & 1) != 0 || (v81 & 0xFFFFFF00000000) != 0))
    {
      v76 = 1;
      if (v85)
      {
        v76 |= 0x100000000uLL;
      }

      v75 = 0;
      v73 = v76;
      v72 = v76;
      v74 = v76;
      v68 = v76;
      v67 = v76;
      v69 = v76;
      add_explicit = atomic_fetch_add_explicit(v88, v76, memory_order_relaxed);
      v70 = add_explicit;
      v65 = add_explicit;
      v71 = add_explicit + v74;
      v75 = add_explicit + v74;
      v64 = (add_explicit + v74) >> 56;
      if (v64 != v77)
      {
        if (v86)
        {
          v30 = *(v90 + 76);
        }

        else
        {
          v30 = *(v90 + 71);
        }

        v63 = v30;
        if (v86)
        {
          v29 = v90 + 292;
        }

        else
        {
          v29 = v90 + 272;
        }

        v62 = v29;
        if ((HIDWORD(v75) & 0xFFFFFFu) < *&v29[4 * v64])
        {
          if (v75 >= v63 && v75 <= v63)
          {
            v60 = v75;
            LODWORD(v59) = 0;
            HIDWORD(v59) = HIBYTE(v59) << 24;
            HIBYTE(v59) = v64;
            v75 = v59;
            v58 = 0;
            v57 = v88;
            v81 = *v88;
            do
            {
              if (v81 < v60 || HIBYTE(v81) > HIBYTE(v60))
              {
                break;
              }

              v56 = v75;
              v26 = v81;
              v27 = v81;
              atomic_compare_exchange_strong_explicit(v57, &v27, v75, memory_order_relaxed, memory_order_relaxed);
              if (v27 != v26)
              {
                v81 = v27;
              }

              v55 = v27 == v26;
              v58 = v27 == v26;
            }

            while (v27 != v26);
            v54 = v58;
          }
        }

        else if ((HIDWORD(v75) & 0xFFFFFFu) <= *&v62[4 * v64])
        {
          v203 = HIBYTE(v75);
          if (HIBYTE(v75))
          {
            if (HIBYTE(v75) != 1)
            {
              if (HIBYTE(v75) != 2)
              {
                qword_D8128 = "BUG IN LIBMALLOC: Invalid xzone slot config";
                __break(1u);
                JUMPOUT(0x654A0);
              }

              qword_D8128 = "BUG IN LIBMALLOC: Can't upgrade from XZM_SLOT_CPU";
              __break(1u);
              JUMPOUT(0x65474);
            }

            v204 = 2;
          }

          else if (ncpuclusters < 2)
          {
            v204 = 2;
          }

          else
          {
            v204 = 1;
          }

          v61 = v204;
          if (HIBYTE(v75) >= v204)
          {
            qword_D8128 = "BUG IN LIBMALLOC: malloc assertion new_counters.xsc_slot_config < next_slot_config failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:1444)";
            __break(1u);
            JUMPOUT(0x654E8);
          }

          _xzm_xzone_upgrade_freelist_slot_config(v90, v89, v88, v75, v61, v86 & 1);
        }
      }
    }
  }

  *v38 = 0uLL;
  if ((v48 & 1) != 0 && *(v51 + 48) >= 0x401uLL)
  {
    return _platform_memset();
  }

  else
  {
    return v38;
  }
}

_OWORD *_xzm_xzone_malloc_small_freelist(unsigned __int8 *a1, uint64_t a2, int a3)
{
  v52 = a1;
  v51 = a2;
  v50 = a3;
  v49 = 1;
  v48 = a3 & 1;
  v47 = 0;
  v192 = a1;
  v191 = a2;
  v190 = &v47;
  v189 = 1;
  v188 = a2 + 86;
  v185 = *(a2 + 86);
  v186 = v185;
  v184 = v185;
  v187 = v185;
  if (v185 > ((a1[248] >> 4) & 3))
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion slot_config <= zone->xzz_max_slot_config failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:185)";
    __break(1u);
    JUMPOUT(0x65828);
  }

  if (v190)
  {
    *v190 = v187;
  }

  if (!v187)
  {
    goto LABEL_10;
  }

  if (v187 == 1)
  {
    v193 = _malloc_cpu_cluster_number();
    goto LABEL_11;
  }

  if (v187 != 2)
  {
LABEL_10:
    v193 = 0;
    goto LABEL_11;
  }

  v193 = _malloc_cpu_number();
LABEL_11:
  v46 = v193;
  v198 = v52;
  v197 = v51;
  v196 = v193;
  v195 = *(v51 + 80);
  v194 = v193 * v52[210];
  if (v194 + v195 >= v198[211] * v198[210])
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion alloc_base_idx + xz_idx < zone->xzz_slot_count * zone->xzz_xzone_count failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:1246)";
    __break(1u);
    JUMPOUT(0x65944);
  }

  v45 = (*(v198 + 28) + 32 * (v194 + v195));
  v44 = 0;
  v43 = v45;
  v42 = 0;
  v40 = *v45;
  v41 = v40;
  v39 = v40;
  v42 = v40;
  v38 = 0;
  v34 = 0;
  if ((v40 & 1) == 0)
  {
    v34 = 0;
    if (((v42 >> 2) & 0x7FFFFFFFFFFFLL) != 0)
    {
      LOBYTE(v33) = 0;
      if ((*(v51 + 87) & 2) != 0)
      {
        v33 = (HIBYTE(v50) >> 6) & 1;
      }

      v34 = v33 ^ 1;
    }
  }

  v37 = v34 & 1;
  if ((v34 & 1) == 0)
  {
    return _xzm_xzone_malloc_freelist_outlined(v52, v51, v46, v45, v38, v50);
  }

  v36 = ((v42 >> 2) & 0x7FFFFFFFFFFFLL);
  v35[1] = 0;
  v35[0] = 0;
  v146 = v52;
  v145 = v51;
  v144 = v46;
  v143 = 0;
  v142 = v36;
  v141 = v49 & 1;
  v140 = 0;
  v139 = v35;
  v138 = &v44;
  v137 = 0;
  v136 = *(&dword_C + v36) & 1;
  v135 = 0;
  v3 = 1024;
  if ((v49 & 1) == 0)
  {
    v3 = 16;
  }

  v134 = v3;
  v152 = v146;
  v151 = v142;
  v150 = 0;
  v157 = v146;
  v156 = v142;
  v160 = v146;
  v159 = v142;
  v158 = v142 & 0xFFFFFFFFFFFFC000;
  v32 = 1;
  if ((v142 & 0xFFFFFFFFFFFFC000) != 0)
  {
    v31 = 0;
    if (v159 >= v158 + 2136)
    {
      v31 = v159 < v158 + 48 * *(v158 + 16) + 2136;
    }

    v32 = v31;
  }

  if ((v32 & 1) == 0)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion !segment || (slice >= segment->xzs_slices && slice < (segment->xzs_slices + segment->xzs_slice_entry_count)) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:262)";
    __break(1u);
    JUMPOUT(0x65CBCLL);
  }

  v162 = v158;
  v161 = v156;
  v167 = v158;
  v166 = v156;
  if (v156 < v158 + 2136)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion (uintptr_t)slice >= (uintptr_t)segment->xzs_slices failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:279)";
    __break(1u);
    JUMPOUT(0x65D24);
  }

  v165 = 0xAAAAAAAAAAAAAAABLL * ((v166 - v167 - 2136) >> 4);
  if (v165 >= *(v167 + 16))
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion index < (ptrdiff_t)segment->xzs_slice_entry_count failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:281)";
    __break(1u);
    JUMPOUT(0x65D88);
  }

  v164 = v158;
  v163 = v165;
  v133 = *(v158 + 72) + (v165 << 14);
  if (v141)
  {
    if ((*(v142 + 32) & 0xF) != 6)
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion chunk->xzc_bits.xzcb_kind == XZM_SLICE_KIND_SMALL_FREELIST_CHUNK failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:742)";
      __break(1u);
      JUMPOUT(0x65DFCLL);
    }
  }

  else if ((*(v142 + 32) & 0xF) != 2)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion chunk->xzc_bits.xzcb_kind == XZM_SLICE_KIND_TINY_CHUNK failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:744)";
    __break(1u);
    JUMPOUT(0x65E40);
  }

  v132 = 0;
  v131 = 0;
  v130 = 0uLL;
  v129 = 0;
  v128 = 0;
  v126 = *v142;
  v127 = v126;
  v125 = v126;
  v128 = v126;
  do
  {
    while (1)
    {
      while (1)
      {
        while ((v128 & 0x40000000) != 0)
        {
          if ((v140 & 1) == 0)
          {
            v147 = 0;
            goto LABEL_148;
          }

          _xzm_walk_lock_wait(v146);
          v4[68] = *v142;
          v4[69] = v4[68];
          v4[67] = v4[69];
          v4[73] = v4[67];
        }

        v124 = v128;
        if ((v135 & 1) == 0)
        {
          break;
        }

        if (((v128 >> 22) & 0x3F) != 0)
        {
          qword_D8128 = "BUG IN LIBMALLOC: malloc assertion old_meta.xca_alloc_idx == XZM_SLOT_INDEX_EMPTY failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:791)";
          __break(1u);
          JUMPOUT(0x66014);
        }

        if ((v128 & 0x10000000) == 0)
        {
          qword_D8128 = "BUG IN LIBMALLOC: malloc assertion old_meta.xca_on_partial_list failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:792)";
          __break(1u);
          JUMPOUT(0x66048);
        }

        if ((v128 & 0x20000000) != 0)
        {
          qword_D8128 = "BUG IN LIBMALLOC: malloc assertion !old_meta.xca_on_empty_list failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:793)";
          __break(1u);
          JUMPOUT(0x6607CLL);
        }

        v124 &= ~0x10000000uLL;
        if (((v128 >> 11) & 0x7FF) != 0)
        {
          v124 = v124 & 0xFFFFFFFFF03FFFFFLL | (((v144 + 1) & 0x3FLL) << 22);
          goto LABEL_85;
        }

        if ((v128 & 0x7FF) == 0x7FE)
        {
          v124 |= 0x20000000uLL;
          *v137 = 1;
        }

        else if ((~v128 & 0x7FF) != 0)
        {
          qword_D8128 = "BUG IN LIBMALLOC: malloc assertion old_meta.xca_alloc_head == XZM_FREE_MADVISING failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:811)";
          __break(1u);
          JUMPOUT(0x6610CLL);
        }

        if (v143)
        {
          v143[8] = -2;
        }

        v122 = v128;
        v121 = 0;
        v119 = v124;
        v118 = v124;
        v120 = v124;
        v5 = v128;
        v6 = v128;
        atomic_compare_exchange_strong_explicit(v142, &v6, v124, memory_order_relaxed, memory_order_relaxed);
        if (v6 != v5)
        {
          v122 = v6;
        }

        v117 = v6 == v5;
        v121 = v6 == v5;
        v128 = v122;
        v116 = v121;
        v123 = v6 == v5;
        if (v6 == v5)
        {
          if (malloc_tracing_enabled)
          {
            kdebug_trace();
          }

          v147 = 0;
          goto LABEL_148;
        }

        if (*v137)
        {
          qword_D8128 = "BUG IN LIBMALLOC: malloc assertion !(*install_empty_out) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:828)";
          __break(1u);
          JUMPOUT(0x66224);
        }
      }

      if (((v128 >> 22) & 0x3F) != v144 + 1)
      {
        if (v143)
        {
          qword_D8128 = "BUG IN LIBMALLOC: malloc assertion !cache failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:869)";
          __break(1u);
          JUMPOUT(0x66324);
        }

        v147 = 0;
        goto LABEL_148;
      }

      if (((v128 >> 11) & 0x7FF) == 0)
      {
        break;
      }

LABEL_85:
      v131 = 0;
      if (v143)
      {
        v124 = v124 & 0xFFFFFFFFFFFFF800 | 0x400;
        v124 &= 0xFFFFFFFFFFC007FFLL;
        v143[9] = ((v128 >> 11) & 0x7FF) - 1;
        if ((v128 & 0x7FF) > 0x3FF)
        {
          if ((v128 & 0x7FF) != 0x400)
          {
            qword_D8128 = "BUG IN LIBMALLOC: malloc assertion old_meta.xca_alloc_head == XZM_FREE_NULL failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:948)";
            __break(1u);
            JUMPOUT(0x666A0);
          }

          if (((v128 >> 11) & 0x7FF) == 0)
          {
            qword_D8128 = "BUG IN LIBMALLOC: malloc assertion old_meta.xca_free_count failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:949)";
            __break(1u);
            JUMPOUT(0x666D8);
          }

          v107 = *(v145 + 68);
          v106 = v107 - ((v128 >> 11) & 0x7FF);
          v132 = v133 + v106 * *(v145 + 48);
          v143[8] = 1024;
        }

        else
        {
          v132 = v133 + (v128 & 0x7FF) * v134;
          if (v136)
          {
            __asm { MSR             TCO, #1 }

            v130 = *v132;
            __asm { MSR             TCO, #0 }
          }

          else
          {
            v130 = *v132;
          }

          v143[8] = WORD4(v130) & 0x7FF;
          v143[10] = (DWORD2(v130) >> 11) & 0x1FFF;
          v131 = 1;
        }
      }

      else
      {
        v124 = v124 & 0xFFFFFFFFFFC007FFLL | ((((v124 >> 11) - 1) & 0x7FFLL) << 11);
        if ((v128 & 0x7FF) > 0x3FF)
        {
          if (((v128 >> 11) & 0x7FF) == 0)
          {
            qword_D8128 = "BUG IN LIBMALLOC: malloc assertion old_meta.xca_free_count failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:985)";
            __break(1u);
            JUMPOUT(0x66830);
          }

          if ((v128 & 0x7FF) != 0x400)
          {
            qword_D8128 = "BUG IN LIBMALLOC: malloc assertion old_meta.xca_alloc_head == XZM_FREE_NULL failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:986)";
            __break(1u);
            JUMPOUT(0x66868);
          }

          v105 = *(v145 + 68);
          v132 = v133 + (v105 - ((v128 >> 11) & 0x7FF)) * *(v145 + 48);
        }

        else
        {
          v132 = v133 + (v128 & 0x7FF) * v134;
          if (v136)
          {
            __asm { MSR             TCO, #1 }

            v130 = *v132;
            __asm { MSR             TCO, #0 }
          }

          else
          {
            v130 = *v132;
          }

          v124 = v124 & 0xFFFFFFFFFFFFF800 | WORD4(v130) & 0x7FF;
          v124 = v124 & 0xFFFFF0007FFFFFFFLL | (((*(&v130 + 1) >> 11) & 0x1FFFLL) << 31);
          v131 = 1;
        }
      }

      v103 = v128;
      v102 = 0;
      v100 = v124;
      v99 = v124;
      v101 = v124;
      v17 = v128;
      v18 = v128;
      atomic_compare_exchange_strong_explicit(v142, &v18, v124, memory_order_relaxed, memory_order_relaxed);
      if (v18 != v17)
      {
        v103 = v18;
      }

      v98 = v18 == v17;
      v102 = v18 == v17;
      v128 = v103;
      v97 = v102;
      v104 = v18 == v17;
      if (v18 == v17)
      {
        if (malloc_tracing_enabled)
        {
          kdebug_trace();
        }

        if (v136)
        {
          if (v141)
          {
            v19 = *(v145 + 48);
            v155 = v132;
            v154 = v19;
            v153 = memtag_assign_tag(v132, v19);
            v169 = v153;
            v168 = v154;
            if ((v154 & 0x1FF) != 0)
            {
              v173 = v169;
              v172 = v168;
              if ((v168 & 0xF) != 0)
              {
                __break(1u);
                JUMPOUT(0x66A90);
              }

              if ((v173 & 0xF) != 0)
              {
                __break(1u);
                JUMPOUT(0x66AA8);
              }

              v171 = v173;
              v170 = v173 + v172;
              _X9 = v173;
              __asm { STG             X9, [X9] }

              _X9 = v173 + v172;
              __asm { STG             X9, [X9,#-0x10] }

              if (v172 >= 0x21)
              {
                v171 = (v173 + 31) & 0xFFFFFFFFFFFFFFE0;
                v170 = (v173 + v172) & 0xFFFFFFFFFFFFFFE0;
                _X9 = v171;
                __asm { ST2G            X9, [X9] }

                _X8 = v170;
                __asm { ST2G            X8, [X8,#-0x20] }
              }

              v171 = (v173 + 63) & 0xFFFFFFFFFFFFFFC0;
              v170 = (v173 + v172) & 0xFFFFFFFFFFFFFFC0;
              while (v171 < v170)
              {
                __asm { DC              GVA, X8 }

                v171 += 64;
              }
            }

            else
            {
              v176 = v169;
              v175 = v168;
              if ((v169 & 0x1FF) != 0)
              {
                __break(1u);
                JUMPOUT(0x66BB0);
              }

              if ((v175 & 0x1FF) != 0)
              {
                __break(1u);
                JUMPOUT(0x66BC8);
              }

              v174 = v176 + v175;
              while (v176 < v174)
              {
                __asm
                {
                  DC              GVA, X8
                  DC              GVA, X8
                  DC              GVA, X8
                  DC              GVA, X8
                  DC              GVA, X8
                  DC              GVA, X8
                  DC              GVA, X8
                  DC              GVA, X8
                }

                v176 += 512;
              }
            }

            v132 = v153;
          }

          else if (v131)
          {
            v180 = v130;
            v179 = v130;
            v96 = BYTE7(v130) & 0xF;
            if ((BYTE7(v130) & 0xF) == 0)
            {
              qword_D8128 = "BUG IN LIBMALLOC: malloc assertion tag != 0 failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:1029)";
              __break(1u);
              JUMPOUT(0x66CE8);
            }

            v183 = v132;
            v182 = v96;
            if (v96 >= 0x10u)
            {
              __break(1u);
              JUMPOUT(0x66D14);
            }

            v181 = v183 & 0xF0FFFFFFFFFFFFFFLL | ((v182 & 0xF) << 56);
            v132 = v181;
          }

          else
          {
            v177 = v132;
            v178 = v132;
            _X8 = v132;
            __asm { LDG             X8, [X8] }

            v132 = _X8;
          }
        }

        if (v131)
        {
          v95 = v132 ^ *(v146 + 40);
          if (v141)
          {
            v149 = v95;
            v148 = v95 & 0xF0FFFFFFFFFFFFFFLL;
            v95 &= 0xF0FFFFFFFFFFFFFFLL;
          }

          if (v95 == v130)
          {
            v94 = WORD4(v130) & 0x7FF | (((*(&v130 + 1) >> 11) & 0x1FFFLL) << 11) & 0xFFFFFF;
            if (*(&v130 + 1) != v94)
            {
              *v139 = 1;
            }
          }

          else
          {
            *v139 = 1;
          }
        }

        v147 = v132;
        goto LABEL_148;
      }

      *v138 = 1;
      ++v129;
    }

    v124 &= 0xFFFFFFFFF03FFFFFLL;
    if ((v128 & 0x7FF) != 0x400)
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion old_meta.xca_alloc_head == XZM_FREE_NULL failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:881)";
      __break(1u);
      JUMPOUT(0x6638CLL);
    }

    if ((v128 & 0x10000000) != 0)
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion !old_meta.xca_on_partial_list failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:887)";
      __break(1u);
      JUMPOUT(0x663C0);
    }

    if ((v128 & 0x20000000) != 0)
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion !old_meta.xca_on_empty_list failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:888)";
      __break(1u);
      JUMPOUT(0x663F4);
    }

    if (v143)
    {
      v143[8] = -2;
    }

    v114 = v128;
    v113 = 0;
    v111 = v124;
    v110 = v124;
    v112 = v124;
    v7 = v128;
    v8 = v128;
    atomic_compare_exchange_strong_explicit(v142, &v8, v124, memory_order_relaxed, memory_order_relaxed);
    if (v8 != v7)
    {
      v114 = v8;
    }

    v109 = v8 == v7;
    v113 = v8 == v7;
    v128 = v114;
    v108 = v113;
    v115 = v8 == v7;
  }

  while (v8 != v7);
  if (malloc_tracing_enabled)
  {
    kdebug_trace();
  }

  v147 = 0;
LABEL_148:
  v38 = v147;
  if (!v147 || (v35[0] & 1) != 0)
  {
    return _xzm_xzone_malloc_freelist_outlined(v52, v51, v46, v45, v38, v50);
  }

  v90 = v52;
  v89 = v51;
  v88 = (v45 + 2);
  v87 = v47;
  v86 = 1;
  v85 = v44 & 1;
  if ((v52[249] & 1) != 0 && *(v89 + 6) <= 0x100uLL)
  {
    if (v85)
    {
      v91 = 114;
      v92 = 114;
      StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v84 = *(StatusReg + 912);
      if (v84)
      {
        v83 = v89[80];
        v82 = v84 + 24 * v83 + 40;
        v202 = v90;
        v201 = v89;
        v200 = v82;
        if (*(v84 + 24 * v83 + 56) == -1)
        {
          ++*(v200 + 18);
          v199 = *(v202 + 64);
          if (*(v200 + 18) == v199)
          {
            *(v200 + 16) = -2;
            *(v200 + 22) = *(v200 + 8) & 0xFFF;
          }
        }
      }
    }
  }

  else
  {
    v81 = 0;
    v79 = *v88;
    v80 = v79;
    v78 = v79;
    v81 = v79;
    v77 = (v90[248] >> 4) & 3;
    if (HIBYTE(v79) != v77 && ((v85 & 1) != 0 || (v81 & 0xFFFFFF00000000) != 0))
    {
      v76 = 1;
      if (v85)
      {
        v76 |= 0x100000000uLL;
      }

      v75 = 0;
      v73 = v76;
      v72 = v76;
      v74 = v76;
      v68 = v76;
      v67 = v76;
      v69 = v76;
      add_explicit = atomic_fetch_add_explicit(v88, v76, memory_order_relaxed);
      v70 = add_explicit;
      v65 = add_explicit;
      v71 = add_explicit + v74;
      v75 = add_explicit + v74;
      v64 = (add_explicit + v74) >> 56;
      if (v64 != v77)
      {
        if (v86)
        {
          v30 = *(v90 + 76);
        }

        else
        {
          v30 = *(v90 + 71);
        }

        v63 = v30;
        if (v86)
        {
          v29 = v90 + 292;
        }

        else
        {
          v29 = v90 + 272;
        }

        v62 = v29;
        if ((HIDWORD(v75) & 0xFFFFFFu) < *&v29[4 * v64])
        {
          if (v75 >= v63 && v75 <= v63)
          {
            v60 = v75;
            LODWORD(v59) = 0;
            HIDWORD(v59) = HIBYTE(v59) << 24;
            HIBYTE(v59) = v64;
            v75 = v59;
            v58 = 0;
            v57 = v88;
            v81 = *v88;
            do
            {
              if (v81 < v60 || HIBYTE(v81) > HIBYTE(v60))
              {
                break;
              }

              v56 = v75;
              v26 = v81;
              v27 = v81;
              atomic_compare_exchange_strong_explicit(v57, &v27, v75, memory_order_relaxed, memory_order_relaxed);
              if (v27 != v26)
              {
                v81 = v27;
              }

              v55 = v27 == v26;
              v58 = v27 == v26;
            }

            while (v27 != v26);
            v54 = v58;
          }
        }

        else if ((HIDWORD(v75) & 0xFFFFFFu) <= *&v62[4 * v64])
        {
          v203 = HIBYTE(v75);
          if (HIBYTE(v75))
          {
            if (HIBYTE(v75) != 1)
            {
              if (HIBYTE(v75) != 2)
              {
                qword_D8128 = "BUG IN LIBMALLOC: Invalid xzone slot config";
                __break(1u);
                JUMPOUT(0x6737CLL);
              }

              qword_D8128 = "BUG IN LIBMALLOC: Can't upgrade from XZM_SLOT_CPU";
              __break(1u);
              JUMPOUT(0x67350);
            }

            v204 = 2;
          }

          else if (ncpuclusters < 2)
          {
            v204 = 2;
          }

          else
          {
            v204 = 1;
          }

          v61 = v204;
          if (HIBYTE(v75) >= v204)
          {
            qword_D8128 = "BUG IN LIBMALLOC: malloc assertion new_counters.xsc_slot_config < next_slot_config failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:1444)";
            __break(1u);
            JUMPOUT(0x673C4);
          }

          _xzm_xzone_upgrade_freelist_slot_config(v90, v89, v88, v75, v61, v86 & 1);
        }
      }
    }
  }

  *v38 = 0uLL;
  if ((v48 & 1) != 0 && *(v51 + 48) >= 0x401uLL)
  {
    return _platform_memset();
  }

  else
  {
    return v38;
  }
}

unint64_t _xzm_xzone_malloc_small(uint64_t a1, uint64_t a2, int a3)
{
  v54 = a1;
  v53 = a2;
  v52 = a3;
  v51 = a3 & 1;
  v50 = 0;
  v49 = 0;
  v48 = 0;
  v92 = a1;
  v91 = a2;
  v90 = &v48;
  v89 = 1;
  v88 = a2 + 86;
  v85 = *(a2 + 86);
  v86 = v85;
  v84 = v85;
  v87 = v85;
  if (v85 > ((*(a1 + 248) >> 4) & 3))
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion slot_config <= zone->xzz_max_slot_config failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:185)";
    __break(1u);
    JUMPOUT(0x676ECLL);
  }

  if (v90)
  {
    *v90 = v87;
  }

  if (v87)
  {
    if (v87 == 1)
    {
      v93 = _malloc_cpu_cluster_number();
      goto LABEL_11;
    }

    if (v87 == 2)
    {
      v93 = _malloc_cpu_number();
      goto LABEL_11;
    }
  }

  v93 = 0;
LABEL_11:
  v47 = v93;
  v118 = v54;
  v117 = v53;
  v116 = v93;
  v115 = *(v53 + 80);
  v114 = v93 * *(v54 + 210);
  if (v114 + v115 >= *(v118 + 211) * *(v118 + 210))
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion alloc_base_idx + xz_idx < zone->xzz_slot_count * zone->xzz_xzone_count failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:1246)";
    __break(1u);
    JUMPOUT(0x67804);
  }

  v46 = *(v118 + 224) + 32 * (v114 + v115);
  if (v48 >= ((*(v54 + 248) >> 4) & 3))
  {
    v58 = v46 + 8;
    v166 = v46 + 8;
    v165 = 327680;
    v167 = 3;
    v168 = 3;
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v164 = *(StatusReg + 24);
    v163 = 0;
    v162 = v164;
    v161 = v164;
    v5 = 0;
    atomic_compare_exchange_strong_explicit((v46 + 8), &v5, v164, memory_order_acquire, memory_order_acquire);
    if (v5)
    {
      v163 = v5;
    }

    v160 = v5 == 0;
    if (v5)
    {
      os_unfair_lock_lock_with_options();
    }

    ++*(v46 + 16);
  }

  else
  {
    v119 = v46 + 8;
    v145 = v46 + 8;
    v147 = 3;
    v148 = 3;
    v149 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v144 = *(v149 + 24);
    v143 = 0;
    v142 = v144;
    v141 = v144;
    v3 = 0;
    atomic_compare_exchange_strong_explicit((v46 + 8), &v3, v144, memory_order_acquire, memory_order_acquire);
    if (v3)
    {
      v143 = v3;
    }

    v140 = v3 == 0;
    v146 = v3 == 0;
    if (v3)
    {
      v59 = v46 + 8;
      v156 = v46 + 8;
      v155 = 327680;
      v157 = 3;
      v158 = 3;
      v159 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v154 = *(v159 + 24);
      v153 = 0;
      v152 = v154;
      v151 = v154;
      v4 = 0;
      atomic_compare_exchange_strong_explicit((v46 + 8), &v4, v154, memory_order_acquire, memory_order_acquire);
      if (v4)
      {
        v153 = v4;
      }

      v150 = v4 == 0;
      if (v4)
      {
        os_unfair_lock_lock_with_options();
      }

      if (++*(v46 + 20) > *(v54 + 4 * v48 + 292))
      {
        _xzm_xzone_upgrade_small_slot_config(v54, v53, v46, v48);
      }
    }

    if (!(++*(v46 + 16) % *(v54 + 304)))
    {
      *(v46 + 20) = 0;
    }
  }

  chunk_from_isolation = *v46;
  if (!*v46)
  {
    goto LABEL_42;
  }

  v138 = v54;
  v137 = v53;
  v136 = chunk_from_isolation;
  v44 = *(chunk_from_isolation + 32) & 0xF;
  if (v44 != 2)
  {
    if (v44 == 5)
    {
      v139 = *(v136 + 4) == *(v137 + 68);
      goto LABEL_41;
    }

    if (v44 != 6)
    {
      v135 = *(v136 + 32) & 0xF;
      qword_D8128 = "BUG IN LIBMALLOC: bad chunk kind";
      qword_D8158 = v135;
      __break(1u);
      JUMPOUT(0x67CD8);
    }
  }

  v43 = 0;
  if (((*v136 >> 11) & 0x7FF) == 0)
  {
    v43 = 0;
    if ((~*v136 & 0x7FF) != 0)
    {
      v43 = (*v136 & 0x7FF) != 2046;
    }
  }

  v139 = v43;
LABEL_41:
  if (!v139)
  {
    goto LABEL_147;
  }

LABEL_42:
  v57 = v53 + 36;
  v176 = v53 + 36;
  v175 = 327680;
  v177 = 3;
  v178 = 3;
  v179 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v174 = *(v179 + 24);
  v173 = 0;
  v172 = v174;
  v171 = v174;
  v6 = 0;
  atomic_compare_exchange_strong_explicit((v53 + 36), &v6, v174, memory_order_acquire, memory_order_acquire);
  if (v6)
  {
    v173 = v6;
  }

  v170 = v6 == 0;
  if (v6)
  {
    os_unfair_lock_lock_with_options();
  }

  if (chunk_from_isolation)
  {
    v7 = *(v53 + 8);
    *(chunk_from_isolation + 16) = v7;
    if (v7)
    {
      *(*(v53 + 8) + 24) = chunk_from_isolation + 16;
    }

    *(v53 + 8) = chunk_from_isolation;
    *(chunk_from_isolation + 24) = v53 + 8;
    atomic_store(0, (chunk_from_isolation + 12));
  }

  while (1)
  {
    chunk_from_isolation = *v53;
    if (!*v53)
    {
      break;
    }

    v56 = chunk_from_isolation + 8;
    v186 = chunk_from_isolation + 8;
    v185 = 327680;
    v187 = 3;
    v188 = 3;
    v189 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v184 = *(v189 + 24);
    v183 = 0;
    v182 = v184;
    v181 = v184;
    v8 = 0;
    atomic_compare_exchange_strong_explicit((chunk_from_isolation + 8), &v8, v184, memory_order_acquire, memory_order_acquire);
    if (v8)
    {
      v183 = v8;
    }

    v180 = v8 == 0;
    if (v8)
    {
      os_unfair_lock_lock_with_options();
    }

    if ((*(chunk_from_isolation + 32) & 0x20) == 0)
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion chunk->xzc_bits.xzcb_on_partial_list failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:3114)";
      __break(1u);
      JUMPOUT(0x67F70);
    }

    if (*(chunk_from_isolation + 16))
    {
      *(*(chunk_from_isolation + 16) + 24) = *(chunk_from_isolation + 24);
    }

    **(chunk_from_isolation + 24) = *(chunk_from_isolation + 16);
    *(chunk_from_isolation + 16) = -1;
    *(chunk_from_isolation + 24) = -1;
    *(chunk_from_isolation + 32) &= ~0x20u;
    if (*(chunk_from_isolation + 4))
    {
      v133 = v54;
      v132 = v53;
      v131 = chunk_from_isolation;
      v42 = *(chunk_from_isolation + 32) & 0xF;
      switch(v42)
      {
        case 2:
          goto LABEL_65;
        case 5:
          v134 = *(v131 + 4) == *(v132 + 68);
          break;
        case 6:
LABEL_65:
          v41 = 0;
          if (((*v131 >> 11) & 0x7FF) == 0)
          {
            v41 = 0;
            if ((~*v131 & 0x7FF) != 0)
            {
              v41 = (*v131 & 0x7FF) != 2046;
            }
          }

          v134 = v41;
          break;
        default:
          v130 = *(v131 + 32) & 0xF;
          qword_D8128 = "BUG IN LIBMALLOC: bad chunk kind";
          qword_D8158 = v130;
          __break(1u);
          JUMPOUT(0x68128);
      }

      if (v134)
      {
        qword_D8128 = "BUG IN LIBMALLOC: malloc assertion !_xzm_chunk_is_full(zone, xz, chunk) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:3118)";
        __break(1u);
        JUMPOUT(0x68158);
      }

      *v46 = chunk_from_isolation;
      *(chunk_from_isolation + 12) = v47 + 1;
      v63 = chunk_from_isolation + 8;
      v195 = (chunk_from_isolation + 8);
      v196 = 3;
      v197 = 3;
      v198 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v194 = *(v198 + 24);
      v193 = 0;
      v192 = v194;
      v191 = 0;
      v9 = v194;
      v10 = v194;
      atomic_compare_exchange_strong_explicit((chunk_from_isolation + 8), &v10, 0, memory_order_release, memory_order_relaxed);
      if (v10 != v9)
      {
        v192 = v10;
      }

      v190 = v10 == v9;
      if (v10 != v9)
      {
        os_unfair_lock_unlock(v195);
      }

      break;
    }

    v62 = chunk_from_isolation + 8;
    v204 = (chunk_from_isolation + 8);
    v205 = 3;
    v206 = 3;
    v207 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v203 = *(v207 + 24);
    v202 = 0;
    v201 = v203;
    v200 = 0;
    v11 = v203;
    v12 = v203;
    atomic_compare_exchange_strong_explicit((chunk_from_isolation + 8), &v12, 0, memory_order_release, memory_order_relaxed);
    if (v12 != v11)
    {
      v201 = v12;
    }

    v199 = v12 == v11;
    if (v12 != v11)
    {
      os_unfair_lock_unlock(v204);
    }
  }

  if (!chunk_from_isolation && *(v53 + 32))
  {
    chunk_from_isolation = *(v53 + 24);
    if (!chunk_from_isolation)
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion chunk failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:3140)";
      __break(1u);
      JUMPOUT(0x68388);
    }

    v77 = v54;
    v76 = chunk_from_isolation;
    v80 = v54;
    v79 = chunk_from_isolation;
    v78 = chunk_from_isolation & 0xFFFFFFFFFFFFC000;
    v40 = 1;
    if ((chunk_from_isolation & 0xFFFFFFFFFFFFC000) != 0)
    {
      v39 = 0;
      if (v79 >= v78 + 2136)
      {
        v39 = v79 < v78 + 48 * *(v78 + 16) + 2136;
      }

      v40 = v39;
    }

    if ((v40 & 1) == 0)
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion !segment || (slice >= segment->xzs_slices && slice < (segment->xzs_slices + segment->xzs_slice_entry_count)) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:262)";
      __break(1u);
      JUMPOUT(0x68468);
    }

    v75 = v78;
    v83 = v78;
    v82 = v76;
    if (v76 < v78 + 2136)
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion (uintptr_t)slice >= (uintptr_t)segment->xzs_slices failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:279)";
      __break(1u);
      JUMPOUT(0x684C8);
    }

    v81 = 0xAAAAAAAAAAAAAAABLL * ((v82 - v83 - 2136) >> 4);
    if (v81 >= *(v83 + 16))
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion index < (ptrdiff_t)segment->xzs_slice_entry_count failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:281)";
      __break(1u);
      JUMPOUT(0x6852CLL);
    }

    v74 = (v78 + 88 + 8 * v81);
    *(v53 + 24) = *v74;
    v13 = *(v53 + 24);
    v97 = v54;
    v96 = v13;
    if (v13 == -1)
    {
      v98 = 0;
    }

    else
    {
      v95 = v96;
      v101 = v97;
      v100 = v96;
      v99 = v96 & 0xFFFFFFFFFFFFC000;
      v38 = 1;
      if ((v96 & 0xFFFFFFFFFFFFC000) != 0)
      {
        v37 = 0;
        if (v100 >= v99 + 2136)
        {
          v37 = v100 < v99 + 48 * *(v99 + 16) + 2136;
        }

        v38 = v37;
      }

      if ((v38 & 1) == 0)
      {
        qword_D8128 = "BUG IN LIBMALLOC: malloc assertion !segment || (slice >= segment->xzs_slices && slice < (segment->xzs_slices + segment->xzs_slice_entry_count)) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:262)";
        __break(1u);
        JUMPOUT(0x68658);
      }

      v94 = v99;
      v36 = 1;
      if (v96)
      {
        v35 = 0;
        if (v95 >= v94 + 2136)
        {
          v35 = v95 < v94 + 48 * *(v94 + 16) + 2136;
        }

        v36 = v35;
      }

      v98 = v36 & 1;
    }

    if (!v98)
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion _xzm_slice_meta_is_batch_pointer(zone, xz->xz_chunkq_batch) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:3144)";
      __break(1u);
      JUMPOUT(0x68724);
    }

    v104 = v54;
    v103 = chunk_from_isolation;
    v107 = v54;
    v106 = chunk_from_isolation;
    v105 = chunk_from_isolation & 0xFFFFFFFFFFFFC000;
    v34 = 1;
    if ((chunk_from_isolation & 0xFFFFFFFFFFFFC000) != 0)
    {
      v33 = 0;
      if (v106 >= v105 + 2136)
      {
        v33 = v106 < v105 + 48 * *(v105 + 16) + 2136;
      }

      v34 = v33;
    }

    if ((v34 & 1) == 0)
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion !segment || (slice >= segment->xzs_slices && slice < (segment->xzs_slices + segment->xzs_slice_entry_count)) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:262)";
      __break(1u);
      JUMPOUT(0x68804);
    }

    v102 = v105;
    v110 = v105;
    v109 = v103;
    v113 = v105;
    v112 = v103;
    if (v103 < v105 + 2136)
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion (uintptr_t)slice >= (uintptr_t)segment->xzs_slices failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:279)";
      __break(1u);
      JUMPOUT(0x68874);
    }

    v111 = 0xAAAAAAAAAAAAAAABLL * ((v112 - v113 - 2136) >> 4);
    if (v111 >= *(v113 + 16))
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion index < (ptrdiff_t)segment->xzs_slice_entry_count failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:281)";
      __break(1u);
      JUMPOUT(0x688D8);
    }

    v108 = (v105 + 88 + 8 * v111);
    *v108 = -1;
    --*(v53 + 32);
    *v46 = chunk_from_isolation;
    *(chunk_from_isolation + 12) = v47 + 1;
  }

  v61 = v53 + 36;
  v213 = (v53 + 36);
  v214 = 3;
  v215 = 3;
  v216 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v212 = *(v216 + 24);
  v211 = 0;
  v210 = v212;
  v209 = 0;
  v14 = v212;
  v15 = v212;
  atomic_compare_exchange_strong_explicit((v53 + 36), &v15, 0, memory_order_release, memory_order_relaxed);
  if (v15 != v14)
  {
    v210 = v15;
  }

  v208 = v15 == v14;
  if (v15 != v14)
  {
    os_unfair_lock_unlock(v213);
  }

  if (!chunk_from_isolation && (*(v53 + 87) & 1) != 0)
  {
    v55 = v54;
    v32 = *(v54 + 240) ? *(v54 + 240) : v55;
    chunk_from_isolation = _xzm_xzone_allocate_chunk_from_isolation(v32, v53);
    if (chunk_from_isolation)
    {
      *v46 = chunk_from_isolation;
      *(chunk_from_isolation + 12) = v47 + 1;
    }
  }

  if (!chunk_from_isolation)
  {
    chunk_from_isolation = _xzm_xzone_small_chunk_alloc(v54, v53);
    if (!chunk_from_isolation)
    {
      *v46 = 0;
      goto LABEL_162;
    }

    v128 = v54;
    v127 = v53;
    v126 = chunk_from_isolation;
    v31 = *(chunk_from_isolation + 32) & 0xF;
    if (v31 != 2)
    {
      if (v31 == 5)
      {
        v129 = *(v126 + 4) == *(v127 + 68);
LABEL_143:
        if (v129)
        {
          qword_D8128 = "BUG IN LIBMALLOC: malloc assertion !_xzm_chunk_is_full(zone, xz, chunk) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:3173)";
          __break(1u);
          JUMPOUT(0x68C54);
        }

        *v46 = chunk_from_isolation;
        *(chunk_from_isolation + 12) = v47 + 1;
        goto LABEL_147;
      }

      if (v31 != 6)
      {
        v125 = *(v126 + 32) & 0xF;
        qword_D8128 = "BUG IN LIBMALLOC: bad chunk kind";
        qword_D8158 = v125;
        __break(1u);
        JUMPOUT(0x68C24);
      }
    }

    v30 = 0;
    if (((*v126 >> 11) & 0x7FF) == 0)
    {
      v30 = 0;
      if ((~*v126 & 0x7FF) != 0)
      {
        v30 = (*v126 & 0x7FF) != 2046;
      }
    }

    v129 = v30;
    goto LABEL_143;
  }

LABEL_147:
  if (*v46 != chunk_from_isolation)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion xas->xas_chunk == chunk failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:3186)";
    __break(1u);
    JUMPOUT(0x68CE0);
  }

  v123 = v54;
  v122 = v53;
  v121 = chunk_from_isolation;
  v29 = *(chunk_from_isolation + 32) & 0xF;
  if (v29 == 2)
  {
    goto LABEL_154;
  }

  if (v29 != 5)
  {
    if (v29 != 6)
    {
      v120 = *(v121 + 32) & 0xF;
      qword_D8128 = "BUG IN LIBMALLOC: bad chunk kind";
      qword_D8158 = v120;
      __break(1u);
      JUMPOUT(0x68E14);
    }

LABEL_154:
    v28 = 0;
    if (((*v121 >> 11) & 0x7FF) == 0)
    {
      v28 = 0;
      if ((~*v121 & 0x7FF) != 0)
      {
        v28 = (*v121 & 0x7FF) != 2046;
      }
    }

    v124 = v28;
    goto LABEL_158;
  }

  v124 = *(v121 + 4) == *(v122 + 68);
LABEL_158:
  if (v124)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion !_xzm_chunk_is_full(zone, xz, chunk) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:3187)";
    __break(1u);
    JUMPOUT(0x68E44);
  }

  v50 = _xzm_xzone_alloc_from_chunk(v54, v53, chunk_from_isolation, &v49);
  if (!v50)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion ptr failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:3190)";
    __break(1u);
    JUMPOUT(0x68E8CLL);
  }

LABEL_162:
  v60 = v46 + 8;
  v222 = (v46 + 8);
  v223 = 3;
  v224 = 3;
  v225 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v221 = *(v225 + 24);
  v220 = 0;
  v219 = v221;
  v218 = 0;
  v16 = v221;
  v17 = v221;
  atomic_compare_exchange_strong_explicit((v46 + 8), &v17, 0, memory_order_release, memory_order_relaxed);
  if (v17 != v16)
  {
    v219 = v17;
  }

  v217 = v17 == v16;
  if (v17 != v16)
  {
    os_unfair_lock_unlock(v222);
  }

  if (v50)
  {
    if ((*(v53 + 87) & 2) != 0)
    {
      if ((v52 & 0x40000000) != 0)
      {
        v18 = *(v53 + 48);
        v66 = v50;
        v65 = v18;
        v67 = v50;
        v69 = v50;
        v68 = v50 & 0xF0FFFFFFFFFFFFFFLL;
        v64 = v50 & 0xF0FFFFFFFFFFFFFFLL;
        v73 = v50 & 0xF0FFFFFFFFFFFFFFLL;
        v72 = v18;
        if ((v18 & 0xF) != 0)
        {
          __break(1u);
          JUMPOUT(0x69010);
        }

        if ((v73 & 0xF) != 0)
        {
          __break(1u);
          JUMPOUT(0x69028);
        }

        v71 = v73;
        v70 = v73 + v72;
        _X9 = v73;
        __asm { STG             X9, [X9] }

        _X9 = v73 + v72;
        __asm { STG             X9, [X9,#-0x10] }

        if (v72 >= 0x21)
        {
          v71 = (v73 + 31) & 0xFFFFFFFFFFFFFFE0;
          v70 = (v73 + v72) & 0xFFFFFFFFFFFFFFE0;
          _X9 = v71;
          __asm { ST2G            X9, [X9] }

          _X8 = v70;
          __asm { ST2G            X8, [X8,#-0x20] }
        }

        v71 = (v73 + 63) & 0xFFFFFFFFFFFFFFC0;
        v70 = (v73 + v72) & 0xFFFFFFFFFFFFFFC0;
        while (v71 < v70)
        {
          __asm { DC              GVA, X8 }

          v71 += 64;
        }

        v50 = v64;
      }

      else
      {
        v50 = _xzm_xzone_block_memtag_retag(v54, v50, *(v53 + 48));
      }
    }

    if ((v49 & 1) == 0 && (v51 & 1) != 0 && *(v53 + 48) >= 0x401uLL)
    {
      _platform_bzero();
    }
  }

  else
  {
    malloc_set_errno_fast(1, 12);
  }

  return v50;
}