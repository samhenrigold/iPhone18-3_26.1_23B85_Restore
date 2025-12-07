__n128 pointer_recorder(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  for (i = 0; i < a5; ++i)
  {
    if (*(a4 + 16 * i) <= enumeration_context && enumeration_context < *(a4 + 16 * i) + *(a4 + 16 * i + 8))
    {
      result = *(a4 + 16 * i);
      *&qword_D82A0 = result;
      return result;
    }
  }

  return result;
}

unint64_t stacktrace_depo_find(uint64_t a1, int a2, uint64_t a3, unint64_t a4)
{
  v16 = a1;
  v15 = a2;
  v14 = a3;
  v13 = a4;
  v11 = 0x80000;
  v12 = a2 & 0x7FFFF;
  v10 = 0;
  v10 = *(a1 + 8 * (a2 & 0x7FFFF));
  if (v10 != a2)
  {
    return 0;
  }

  v9 = 0x400000;
  if ((HIDWORD(v10) & 0xFFFFFFu) > 0x400000uLL)
  {
    return 0;
  }

  v8 = murmur2_init();
  for (i = 0; i < SHIBYTE(HIDWORD(v10)); ++i)
  {
    if (i < v13)
    {
      *(v14 + 8 * i) = *(v16 + 0x400000 + 8 * (((HIDWORD(v10) & 0xFFFFFF) + i) & 0x3FFFFF));
    }

    murmur2_add_uintptr(&v8, *(v14 + 8 * i));
  }

  v6 = v15;
  if (v6 != murmur2_finalize(&v8))
  {
    return 0;
  }

  if (v13 >= HIBYTE(HIDWORD(v10)))
  {
    return HIBYTE(HIDWORD(v10));
  }

  else
  {
    return v13;
  }
}

BOOL sanitizer_should_enable()
{
  v1 = 1;
  if (!env_BOOL("MallocSanitizerZone"))
  {
    return env_BOOL("MallocQuarantineZone");
  }

  return v1;
}

mach_vm_address_t sanitizer_create_zone(uint64_t a1)
{
  v3 = sanitizer_vm_map(16680, 3, 1);
  memcpy(v3, &malloc_zone_template, 0xC8uLL);
  v2 = 0;
  if (*(a1 + 96))
  {
    v2 = *(a1 + 96);
  }

  if (v2 != &szone_introspect)
  {
    __break(1u);
    JUMPOUT(0x18688);
  }

  *(v3 + 200) = a1;
  if (*(a1 + 104) < 0xDu)
  {
    malloc_report(0x40u, "Unsupported wrapped zone version: %u\n", *(a1 + 104));
  }

  *(v3 + 208) = env_BOOL("MallocSanitizerZoneDebug");
  *(v3 + 209) = !env_BOOL("MallocSanitizerNoPoisoning");
  *(v3 + 216) = env_uint("MallocSanitizerRedzoneSize", 0x10u);
  if (*(v3 + 216) % 8uLL)
  {
    __break(1u);
    JUMPOUT(0x1874CLL);
  }

  *(v3 + 224) = env_uint("MallocQuarantineMaxItems", 0);
  *(v3 + 232) = env_uint("MallocQuarantineMaxSizeInMB", 0x100u) << 20;
  *(v3 + 240) = stacktrace_depo_create();
  *(v3 + 248) = pointer_map_create();
  init_lock(v3);
  sanitizer_vm_protect(v3, 0x4000, 1);
  return v3;
}

mach_vm_address_t sanitizer_vm_map(uint64_t a1, vm_prot_t cur_protection, int a3)
{
  v8 = a1;
  v7 = cur_protection;
  v6 = a3;
  v5 = mach_task_self_;
  address = 0;
  if (mach_vm_map(mach_task_self_, &address, (a1 + vm_page_size - 1) & ~(vm_page_size - 1), 0, (a3 << 24) | 1, 0, 0, 0, cur_protection, 3, 1u))
  {
    __break(1u);
    JUMPOUT(0x188B8);
  }

  return address;
}

uint64_t env_uint(uint64_t a1, unsigned int a2)
{
  __str = env_var(a1);
  if (__str)
  {
    return strtoul(__str, 0, 0);
  }

  else
  {
    return a2;
  }
}

uint64_t sanitizer_vm_protect(mach_vm_address_t a1, uint64_t a2, vm_prot_t a3)
{
  result = mach_vm_protect(mach_task_self_, a1, (a2 + vm_page_size - 1) & ~(vm_page_size - 1), 0, a3);
  if (result)
  {
    __break(1u);
    JUMPOUT(0x189FCLL);
  }

  return result;
}

_DWORD *murmur2_add_uintptr(_DWORD *a1, unint64_t a2)
{
  v3 = HIDWORD(a2);
  murmur2_add_uint32(a1, a2);
  return murmur2_add_uint32(a1, v3);
}

_DWORD *murmur2_add_uint32(_DWORD *result, int a2)
{
  *result *= 1540483477;
  *result ^= 1540483477 * ((1540483477 * a2) ^ ((1540483477 * a2) >> 24));
  return result;
}

unint64_t sanitizer_size(uint64_t a1, const void *a2)
{
  v4 = (*(*(a1 + 200) + 16))(*(a1 + 200), a2);
  if (!v4)
  {
    return 0;
  }

  if (*(a1 + 209))
  {
    redzone_size = get_redzone_size(a1, a2, v4);
    if (*(a1 + 208))
    {
      malloc_report(6u, "size(%p) = 0x%lx - redzone 0x%lx\n", a2, v4, redzone_size);
    }

    if (v4 <= redzone_size)
    {
      __break(1u);
      JUMPOUT(0x18C24);
    }

    v4 -= redzone_size;
  }

  else if (*(a1 + 208))
  {
    malloc_report(6u, "size(%p) = 0x%lx\n", a2, v4);
  }

  return v4;
}

const void *sanitizer_valloc(uint64_t a1, unint64_t a2)
{
  v13 = a1;
  v12 = a2;
  if (!a2)
  {
    v12 = 1;
  }

  v11 = *(v13 + 216);
  v10 = v12;
  if (*(v13 + 209))
  {
    v11 = v11 - (v10 & 7) + 8;
    v12 = v10 + v11;
    if (v10 + v11 < v10)
    {
      return 0;
    }
  }

  v9 = (*(*(v13 + 200) + 40))();
  v2 = *(v13 + 248);
  v19 = *(v13 + 240);
  v18 = v2;
  v17 = v9;
  v16 = v10;
  if (v9 && v16 < vm_page_size)
  {
    v4[2] = v4;
    v27 = v19;
    v26 = 1;
    v6 = 17;
    v25 = v4;
    v7 = &v4[-18];
    v5 = &v4[-18];
    v24 = 17;
    bzero(&v4[-18], 0x88uLL);
    v23 = 0;
    v22 = v6;
    thread_stack_pcs();
    if (v23 > v26)
    {
      v20 = v23 - v26;
      v28 = stacktrace_depo_insert(v27, &v5[v26], v20);
    }

    else
    {
      v28 = 0;
    }

    v21 = 1;
    v15 = v28;
    pointer_map_insert(v18, v17, v28);
  }

  if (*(v13 + 208))
  {
    malloc_report(6u, "valloc(0x%lx) = %p\n", v12, v9);
  }

  if (v9 && (*(v13 + 209) & 1) != 0)
  {
    v8 = (*(*(v13 + 200) + 16))();
    if (v8 < v12)
    {
      __break(1u);
      JUMPOUT(0x19038);
    }

    v11 += v8 - v12;
    poison_alloc(v13, v9, v10, v11);
  }

  return v9;
}

void sanitizer_free(uint64_t result, const void *a2)
{
  if (a2)
  {
    v2 = 0;
    if (*(result + 209))
    {
      v2 = (*(*(result + 200) + 16))(*(result + 200), a2);
      poison_free(result, a2, v2);
    }

    if (*(result + 208))
    {
      malloc_report(6u, "free(%p)\n", a2);
    }

    place_into_quarantine(result, a2, v2);
  }
}

uint64_t sanitizer_destroy(mach_vm_address_t a1)
{
  stacktrace_depo_destroy(*(a1 + 240));
  pointer_map_destroy(*(a1 + 248));
  malloc_destroy_zone(*(a1 + 200));
  return sanitizer_vm_deallocate(a1, 16680);
}

void sanitizer_free_definite_size(uint64_t a1, const void *a2, uint64_t a3)
{
  v3 = a3;
  if (*(a1 + 208))
  {
    malloc_report(6u, "free_definite_size(%p, 0x%lx)\n", a2, a3);
  }

  if (*(a1 + 209))
  {
    v3 = (*(*(a1 + 200) + 16))(*(a1 + 200), a2);
    poison_free(a1, a2, v3);
  }

  place_into_quarantine(a1, a2, v3);
}

const void *sanitizer_malloc_type_calloc(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v21 = a1;
  v20 = a2;
  v19 = a3;
  v18 = a4;
  v17 = 0;
  if (a3 && v20)
  {
    v53 = v20;
    v52 = v19;
    v51 = 0;
    v50 = &v17;
    v49 = v19;
    if (v20 == 1 || (v49 = v53 * v52, !(v55 = !is_mul_ok(v53, v52))) && v49 <= malloc_absolute_max_size)
    {
      *v50 = v49;
      v54 = 0;
    }

    else
    {
      malloc_set_errno_fast(1, 12);
      v54 = -1;
    }

    if (v54)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v17 = 1;
  }

  v16 = *(v21 + 216);
  if (*(v21 + 209))
  {
    v16 = v16 - (v17 & 7) + 8;
    v20 = 1;
    v19 = v17 + v16;
    if (v17 + v16 < v17)
    {
LABEL_10:
      malloc_set_errno_fast(1, 12);
      return 0;
    }
  }

  v15 = 0;
  if (*(*(v21 + 200) + 104) >= 0x10u)
  {
    v15 = (*(*(v21 + 200) + 168))();
  }

  else
  {
    v14 = v18;
    v24 = v18;
    v10 = 113;
    v31 = 113;
    v30 = v18;
    v38 = 113;
    v37 = v18;
    v11 = 0;
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    *(StatusReg + 904) = v18;
    v15 = (*(*(v21 + 200) + 32))();
    v13 = 0;
    v23 = 0;
    v33 = v10;
    v32 = 0;
    v35 = v10;
    v34 = 0;
    v36 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    *(v36 + 8 * v10) = 0;
  }

  if (*(v21 + 208))
  {
    malloc_report(6u, "calloc(0x%lx, 0x%lx) = %p\n", v20, v19, v15);
  }

  v4 = *(v21 + 248);
  v29 = *(v21 + 240);
  v28 = v4;
  v27 = v15;
  v26 = v17;
  if (v15 && v26 < vm_page_size)
  {
    v6[2] = v6;
    v47 = v29;
    v46 = 1;
    v8 = 17;
    v45 = v6;
    v9 = &v6[-18];
    v7 = &v6[-18];
    v44 = 17;
    bzero(&v6[-18], 0x88uLL);
    v43 = 0;
    v42 = v8;
    thread_stack_pcs();
    if (v43 > v46)
    {
      v40 = v43 - v46;
      v48 = stacktrace_depo_insert(v47, &v7[v46], v40);
    }

    else
    {
      v48 = 0;
    }

    v41 = 1;
    v25 = v48;
    pointer_map_insert(v28, v27, v48);
  }

  if (v15 && (*(v21 + 209) & 1) != 0)
  {
    v12 = (*(*(v21 + 200) + 16))();
    if (v12 < v19)
    {
      __break(1u);
      JUMPOUT(0x199B0);
    }

    v16 += v12 - v19;
    poison_alloc(v21, v15, v17, v16);
  }

  return v15;
}

const void *sanitizer_malloc_type_realloc(uint64_t a1, const void *a2, unint64_t a3, uint64_t a4)
{
  v29 = a1;
  v28 = a2;
  v27 = a3;
  v26 = a4;
  if (!a3)
  {
    v27 = 1;
  }

  v25 = *(v29 + 216);
  v24 = v27;
  if (*(v29 + 209))
  {
    v25 = v25 - (v27 & 7) + 8;
    v27 = v24 + v25;
    if (v24 + v25 < v24)
    {
      return 0;
    }
  }

  v23 = 0;
  if (*(*(v29 + 200) + 104) >= 0x10u)
  {
    v23 = (*(*(v29 + 200) + 160))();
  }

  else
  {
    v22 = v26;
    v32 = v26;
    v14 = 113;
    v39 = 113;
    v38 = v26;
    v46 = 113;
    v45 = v26;
    v15 = 0;
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    *(StatusReg + 904) = v26;
    v23 = (*(*(v29 + 200) + 24))();
    v21 = 0;
    v31 = 0;
    v41 = v14;
    v40 = 0;
    v43 = v14;
    v42 = 0;
    v44 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    *(v44 + 8 * v14) = 0;
  }

  v4 = *(v29 + 248);
  v37 = *(v29 + 240);
  v36 = v4;
  v35 = v23;
  v34 = v24;
  if (v23 && v34 < vm_page_size)
  {
    v10 = &v6;
    v55 = v37;
    v54 = 1;
    v12 = 17;
    v53 = &v6;
    v13 = &v6 - 18;
    v11 = &v6 - 18;
    v52 = 17;
    bzero(&v6 - 18, 0x88uLL);
    v51 = 0;
    v50 = v12;
    thread_stack_pcs();
    if (v51 > v54)
    {
      v48 = v51 - v54;
      v56 = stacktrace_depo_insert(v55, &v11[v54], v48);
    }

    else
    {
      v56 = 0;
    }

    v49 = 1;
    v33 = v56;
    pointer_map_insert(v36, v35, v56);
  }

  if (*(v29 + 208))
  {
    malloc_report(6u, "realloc(%p, 0x%lx) = %p\n", v28, v27, v23);
  }

  if (v28)
  {
    redzone_size = 0;
    v19 = (*(*(v29 + 200) + 16))();
    v18 = v28;
    if (*(v29 + 209))
    {
      redzone_size = get_redzone_size(v29, v18, v19);
      if (v19 <= redzone_size)
      {
        __break(1u);
        JUMPOUT(0x19E24);
      }
    }

    if (*(v29 + 208))
    {
      malloc_report(6u, "realloc(%p, 0x%lx): size(%p) = 0x%lx - redzone 0x%lx)\n", v28, v27, v18, v19, redzone_size);
    }

    if (!v23)
    {
      return 0;
    }

    v17 = v19 - redzone_size;
    v8 = v23;
    v9 = v18;
    if (v19 - redzone_size >= v24)
    {
      v7 = v24;
    }

    else
    {
      v7 = v17;
    }

    _platform_memmove();
    if (*(v29 + 209))
    {
      poison_free(v29, v18, v19);
    }

    place_into_quarantine(v29, v28, v19);
  }

  if (v23 && (*(v29 + 209) & 1) != 0)
  {
    v16 = (*(*(v29 + 200) + 16))();
    if (v16 < v27)
    {
      __break(1u);
      JUMPOUT(0x19F80);
    }

    v25 += v16 - v27;
    poison_alloc(v29, v23, v24, v25);
  }

  return v23;
}

const void *sanitizer_malloc_type_memalign(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v21 = a1;
  v20 = a2;
  v19 = a3;
  v18 = a4;
  if (!a3)
  {
    v19 = 1;
  }

  v17 = *(v21 + 216);
  v16 = v19;
  if (*(v21 + 209))
  {
    v19 = v16 + v17;
    if (v16 + v17 < v16)
    {
      return 0;
    }
  }

  v15 = 0;
  if (*(*(v21 + 200) + 104) >= 0x10u)
  {
    v15 = (*(*(v21 + 200) + 184))();
  }

  else
  {
    v14 = v18;
    v24 = v18;
    v10 = 113;
    v31 = 113;
    v30 = v18;
    v38 = 113;
    v37 = v18;
    v11 = 0;
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    *(StatusReg + 904) = v18;
    v15 = (*(*(v21 + 200) + 112))();
    v13 = 0;
    v23 = 0;
    v33 = v10;
    v32 = 0;
    v35 = v10;
    v34 = 0;
    v36 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    *(v36 + 8 * v10) = 0;
  }

  v4 = *(v21 + 248);
  v29 = *(v21 + 240);
  v28 = v4;
  v27 = v15;
  v26 = v16;
  if (v15 && v26 < vm_page_size)
  {
    v6[2] = v6;
    v47 = v29;
    v46 = 1;
    v8 = 17;
    v45 = v6;
    v9 = &v6[-18];
    v7 = &v6[-18];
    v44 = 17;
    bzero(&v6[-18], 0x88uLL);
    v43 = 0;
    v42 = v8;
    thread_stack_pcs();
    if (v43 > v46)
    {
      v40 = v43 - v46;
      v48 = stacktrace_depo_insert(v47, &v7[v46], v40);
    }

    else
    {
      v48 = 0;
    }

    v41 = 1;
    v25 = v48;
    pointer_map_insert(v28, v27, v48);
  }

  if (*(v21 + 208))
  {
    malloc_report(6u, "memalign(0x%lx, 0x%lx)\n", v20, v19);
  }

  if (v15 && (*(v21 + 209) & 1) != 0)
  {
    v12 = (*(*(v21 + 200) + 16))();
    if (v12 < v19)
    {
      __break(1u);
      JUMPOUT(0x1A3B8);
    }

    v17 += v12 - v19;
    poison_alloc(v21, v15, v16, v17);
  }

  return v15;
}

const void *sanitizer_malloc_type_malloc_with_options(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = 0;
  if ((a4 & 2) != 0)
  {
    v7 = 1;
    if (*(*(a1 + 200) + 104) >= 0xFu)
    {
      v6 = 0;
      if (*(*(a1 + 200) + 152))
      {
        v6 = *(*(a1 + 200) + 152);
      }

      v7 = v6 == 0;
    }

    v8 = v7;
  }

  thread_options = 0;
  if (v8)
  {
    thread_options = malloc_get_thread_options();
    v10 = thread_options;
    LOBYTE(v10) = thread_options & 0xF7 | 8;
    _malloc_set_thread_options(v10);
  }

  if (a2)
  {
    v9 = sanitizer_malloc_type_memalign(a1, a2, a3, a5);
    if (v9 && (a4 & 1) != 0)
    {
      _platform_bzero();
    }
  }

  else
  {
    v9 = sanitizer_malloc_type_malloc_noalign_with_options(a1, a3, a4, a5);
  }

  if (v8)
  {
    _malloc_set_thread_options(thread_options);
  }

  return v9;
}

unint64_t get_redzone_size(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if ((*(a1 + 209) & 1) == 0)
  {
    __break(1u);
    JUMPOUT(0x1A61CLL);
  }

  uint64_via_rsp = _malloc_read_uint64_via_rsp(a2 + a3 - (a3 % 8 + 8));
  v4 = 0;
  if (uint64_via_rsp >= *(a1 + 216))
  {
    v4 = uint64_via_rsp < a3;
  }

  if (!v4)
  {
    __break(1u);
    JUMPOUT(0x1A6A8);
  }

  return uint64_via_rsp;
}

const void *sanitizer_malloc_type_malloc_noalign_with_options(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = a1;
  v27 = a2;
  v26 = a3;
  v25 = a4;
  if (!a2)
  {
    v27 = 1;
  }

  v24 = *(v28 + 216);
  v23 = v27;
  if ((*(v28 + 209) & 1) != 0 && (v22 = 7, v24 += (8 - v23) & 7, v27 = v23 + v24, v23 + v24 < v23))
  {
    malloc_set_errno_fast(1, 12);
    return 0;
  }

  else
  {
    v21 = 0;
    v20 = v25;
    if (*(*(v28 + 200) + 104) < 0x10u)
    {
      if (*(*(v28 + 200) + 104) < 0xFu)
      {
        goto LABEL_19;
      }

      v12 = *(*(v28 + 200) + 152);
      v13 = 0;
      if (v12)
      {
        v13 = v12;
      }

      if (v13)
      {
        v33 = v20;
        v10 = 113;
        v40 = 113;
        v39 = v20;
        v57 = 113;
        v56 = v20;
        v11 = 0;
        StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        *(StatusReg + 904) = v20;
        v21 = (*(*(v28 + 200) + 152))();
        v19 = 0;
        v32 = 0;
        v42 = v10;
        v41 = 0;
        v54 = v10;
        v53 = 0;
        v55 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        *(v55 + 8 * v10) = 0;
      }

      else
      {
LABEL_19:
        v18 = 3;
        if ((v26 & 0xFFFFFFFFFFFFFFFCLL) != 0)
        {
          malloc_zone_error(64, 1, "sanitizer_malloc_with_options: unsupported options 0x%llx\n", v26);
          __break(1u);
          JUMPOUT(0x1AA5CLL);
        }

        v31 = v20;
        v44 = 113;
        v43 = v20;
        v51 = 113;
        v50 = v20;
        v52 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        *(v52 + 904) = v20;
        if (v26)
        {
          v21 = (*(*(v28 + 200) + 32))();
        }

        else
        {
          v21 = (*(*(v28 + 200) + 24))();
        }

        v17 = 0;
        v30 = 0;
        v46 = 113;
        v45 = 0;
        v48 = 113;
        v47 = 0;
        v49 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        *(v49 + 904) = 0;
      }
    }

    else
    {
      v14 = *(*(v28 + 200) + 192);
      v15 = 0;
      if (v14)
      {
        v15 = v14;
      }

      if (v15)
      {
        v21 = (*(*(v28 + 200) + 192))();
      }

      else if (v26)
      {
        v21 = (*(*(v28 + 200) + 168))();
      }

      else
      {
        v21 = (*(*(v28 + 200) + 160))();
      }
    }

    v4 = *(v28 + 248);
    v38 = *(v28 + 240);
    v37 = v4;
    v36 = v21;
    v35 = v23;
    if (v21 && v35 < vm_page_size)
    {
      v6[1] = v6;
      v66 = v38;
      v65 = 1;
      v8 = 17;
      v64 = v6;
      v9 = &v6[-18];
      v7 = &v6[-18];
      v63 = 17;
      bzero(&v6[-18], 0x88uLL);
      v62 = 0;
      v61 = v8;
      thread_stack_pcs();
      if (v62 > v65)
      {
        v59 = v62 - v65;
        v67 = stacktrace_depo_insert(v66, &v7[v65], v59);
      }

      else
      {
        v67 = 0;
      }

      v60 = 1;
      v34 = v67;
      pointer_map_insert(v37, v36, v67);
    }

    if (*(v28 + 208))
    {
      malloc_report(6u, "malloc(0x%lx) = %p\n", v27, v21);
    }

    if (v21 && (*(v28 + 209) & 1) != 0)
    {
      v16 = (*(*(v28 + 200) + 16))();
      if (v16 < v27)
      {
        __break(1u);
        JUMPOUT(0x1AD54);
      }

      v24 += v16 - v27;
      poison_alloc(v28, v21, v23, v24);
    }

    return v21;
  }
}

void poison_alloc(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 208))
  {
    malloc_report(6u, "poison_alloc(%p, 0x%lx, 0x%lx)\n", a2, a3, a4);
  }

  if (!a2)
  {
    __break(1u);
    JUMPOUT(0x1AE48);
  }

  set_redzone_size(a1, a2, a3, a4);
  functions = malloc_sanitizer_get_functions();
  if (functions && *functions)
  {
    (*functions)(a2, 0, a3, a4);
  }

  else if (*(a1 + 208))
  {
    malloc_report(4u, "MallocSanitizerZone: Not poisoning allocation %p of size %lu with redzone size %lu due to missing pointers!\n", a2, a3, a4);
  }
}

__n128 pointer_map_insert(uint64_t a1, unint64_t a2, uint64_t a3)
{
  *&v14 = a2;
  *(&v14 + 1) = a3;
  v12 = (a1 + 16 * (murmur2_hash_pointer(a2) & 0xFFFFF));
  v13 = *v12;
  do
  {
    _X1 = v12[1];
    _X2 = v14;
    __asm { CASP            X0, X1, X2, X3, [X8] }

    v10 = _X0 == v13;
    v13 = _X0;
  }

  while (!v10);
  return v14;
}

uint64_t stacktrace_depo_insert(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 >= 0x100)
  {
    __break(1u);
    JUMPOUT(0x1B044);
  }

  v8 = murmur2_hash_backtrace(a2, a3);
  v6 = *(a1 + 8 * (v8 & 0x7FFFF));
  if (HIBYTE(HIDWORD(v6)) == a3 && v6 == v8)
  {
    return v8;
  }

  else
  {
    v5 = atomic_fetch_add_explicit((a1 + 37748736), a3, memory_order_relaxed) & 0x3FFFFF;
    LODWORD(v7) = v8;
    HIDWORD(v7) = v5 & 0xFFFFFF | (a3 << 24);
    *(a1 + 8 * (v8 & 0x7FFFF)) = v7;
    for (i = 0; i < a3; ++i)
    {
      *(a1 + 0x400000 + 8 * ((v5 + i) & 0x3FFFFF)) = *(a2 + 8 * i);
    }

    return v8;
  }
}

uint64_t murmur2_hash_backtrace(uint64_t a1, unint64_t a2)
{
  v6 = a1;
  v5 = a2;
  v4 = murmur2_init();
  for (i = 0; i < v5; ++i)
  {
    murmur2_add_uintptr(&v4, *(v6 + 8 * i));
  }

  return murmur2_finalize(&v4);
}

uint64_t murmur2_hash_pointer(unint64_t a1)
{
  v3 = a1;
  v2 = murmur2_init();
  murmur2_add_uintptr(&v2, v3);
  return murmur2_finalize(&v2);
}

void *set_redzone_size(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((*(a1 + 209) & 1) == 0)
  {
    __break(1u);
    JUMPOUT(0x1B33CLL);
  }

  return _malloc_write_uint64_via_rsp((a2 + a3 + a4 - ((a3 + a4) % 8uLL + 8)), a4);
}

void poison_free(uint64_t a1, const void *a2, uint64_t a3)
{
  if (*(a1 + 208))
  {
    malloc_report(6u, "poison_free(%p, 0x%lx)\n", a2, a3);
  }

  if (!a2)
  {
    __break(1u);
    JUMPOUT(0x1B430);
  }

  functions = malloc_sanitizer_get_functions();
  if (functions && *(functions + 8))
  {
    (*(functions + 8))(a2, a3);
  }

  else if (*(a1 + 208))
  {
    malloc_report(4u, "MallocSanitizerZone: Not poisoning deallocation %p of size %lu due to missing pointers!\n", a2, a3);
  }
}

void place_into_quarantine(uint64_t result, unint64_t a2, vm_size_t a3)
{
  v37 = result;
  v36 = a2;
  v35 = a3;
  if (a2)
  {
    if (!v35)
    {
      v35 = (*(*(v37 + 200) + 16))();
    }

    v34 = v36;
    if (v35 > vm_page_size)
    {
      if (*(v37 + 209))
      {
        unpoison(v37, v34, v35);
      }

      (*(*(v37 + 200) + 48))();
    }

    else
    {
      v3 = *(v37 + 240);
      v10 = v6;
      v45 = v3;
      v44 = 2;
      v12 = 18;
      v43 = v6;
      v13 = &v6[-144];
      v11 = &v6[-144];
      v42 = 18;
      bzero(&v6[-144], 0x90uLL);
      v41 = 0;
      v40 = v12;
      thread_stack_pcs();
      if (v41 > v44)
      {
        v38 = v41 - v44;
        v46 = stacktrace_depo_insert(v45, &v11[8 * v44], v38);
      }

      else
      {
        v46 = 0;
      }

      v39 = 1;
      v33 = v46;
      v32 = 0;
      pointer_map_find(*(v37 + 248), v34, &v32);
      v31 = v32;
      v30 = v32 | (v33 << 32);
      lock(v37);
      if (*(v37 + 16664))
      {
        v29 = 0;
        uint64_via_rsp = _malloc_read_uint64_via_rsp(*(v37 + 16656));
        v29 = v34 & 0xFFFFFFFFFFFFLL | (HIWORD(uint64_via_rsp) << 48);
        _malloc_write_uint64_via_rsp(*(v37 + 16656), v29);
        *(v37 + 16656) = v34;
      }

      else
      {
        v4 = v34;
        *(v37 + 16648) = v34;
        *(v37 + 16656) = v4;
      }

      v28 = 0;
      HIWORD(v28) = v35;
      _malloc_write_uint64_via_rsp(*(v37 + 16656), v28);
      _malloc_write_uint64_via_rsp((*(v37 + 16656) + 8), v30);
      ++*(v37 + 16664);
      *(v37 + 16672) += v35;
      if (*(v37 + 224) && *(v37 + 16664) > *(v37 + 224))
      {
        v9 = *(v37 + 16664) - *(v37 + 224);
      }

      else
      {
        v9 = 0;
      }

      v27 = v9;
      if (*(v37 + 232) && *(v37 + 16672) > *(v37 + 232))
      {
        v8 = *(v37 + 16672) - *(v37 + 232);
      }

      else
      {
        v8 = 0;
      }

      v26 = v8;
      v25 = *(v37 + 16648);
      v24 = 0;
      v23 = 0;
      for (i = *(v37 + 16648); ; i = (v21 & 0xFFFFFFFFFFFFLL))
      {
        v7 = 1;
        if (v27 <= 0)
        {
          v7 = v26 > 0;
        }

        if (!v7)
        {
          break;
        }

        v21 = 0;
        v21 = _malloc_read_uint64_via_rsp(i);
        v20 = v21 & 0xFFFFFFFFFFFFLL;
        v19 = HIWORD(v21);
        ++v24;
        v23 += HIWORD(v21);
        --v27;
        v26 -= HIWORD(v21);
      }

      *(v37 + 16648) = i;
      *(v37 + 16664) -= v24;
      *(v37 + 16672) -= v23;
      unlock(v37);
      i = v25;
      for (j = 0; j < v24; ++j)
      {
        v17 = 0;
        v17 = _malloc_read_uint64_via_rsp(i);
        v16 = (v17 & 0xFFFFFFFFFFFFLL);
        v15 = HIWORD(v17);
        if (*(v37 + 208))
        {
          malloc_report(6u, "evicting %p from quarantine, size = 0x%lx\n", i, v15);
        }

        v14 = i;
        if (*(v37 + 209))
        {
          unpoison(v37, v14, v15);
        }

        (*(*(v37 + 200) + 120))();
        i = v16;
      }
    }
  }
}

void unpoison(uint64_t a1, const void *a2, uint64_t a3)
{
  if (*(a1 + 208))
  {
    malloc_report(6u, "unpoison(%p, 0x%lx)\n", a2, a3);
  }

  if (!a2)
  {
    __break(1u);
    JUMPOUT(0x1BAE8);
  }

  functions = malloc_sanitizer_get_functions();
  if (functions && *functions)
  {
    (*functions)(a2, 0, a3);
  }

  else if (*(a1 + 208))
  {
    malloc_report(4u, "MallocSanitizerZone: Not unpoisoning %p of size %lu due to missing pointers!\n", a2, a3);
  }
}

uint64_t pointer_map_find(uint64_t a1, unint64_t a2, void *a3)
{
  murmur2_hash_pointer(a2);
  _X3 = 0;
  __asm { CASP            X0, X1, X2, X3, [X8] }

  if (_X0 == a2)
  {
    *a3 = 0;
    v12 = 1;
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

uint64_t lock(uint64_t result)
{
  v1 = 0;
  atomic_compare_exchange_strong_explicit((result + 16640), &v1, *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24), memory_order_acquire, memory_order_acquire);
  if (v1)
  {
    return os_unfair_lock_lock_with_options();
  }

  return result;
}

void unlock(uint64_t a1)
{
  v1 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
  v2 = v1;
  atomic_compare_exchange_strong_explicit((a1 + 16640), &v2, 0, memory_order_release, memory_order_relaxed);
  if (v2 != v1)
  {
    os_unfair_lock_unlock((a1 + 16640));
  }
}

uint64_t sanitizer_vm_deallocate(mach_vm_address_t a1, uint64_t a2)
{
  result = mach_vm_deallocate(mach_task_self_, a1, (a2 + vm_page_size - 1) & ~(vm_page_size - 1));
  if (result)
  {
    __break(1u);
    JUMPOUT(0x1BF34);
  }

  return result;
}

uint64_t sanitizer_good_size(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  if (*(*(a1 + 200) + 96))
  {
    v3 = *(*(a1 + 200) + 96);
  }

  return (*(v3 + 8))(*(a1 + 200), a2);
}

BOOL sanitizer_zone_locked(uint64_t a1)
{
  v2 = trylock(a1);
  if (v2)
  {
    unlock(a1);
  }

  return !v2;
}

BOOL trylock(uint64_t a1)
{
  v1 = 0;
  atomic_compare_exchange_strong_explicit((a1 + 16640), &v1, *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24), memory_order_acquire, memory_order_acquire);
  return v1 == 0;
}

uint64_t large_debug_print(unsigned int a1, int a2, uint64_t a3, unsigned int (*a4)(void, void, uint64_t, uint64_t *), void (*a5)(const char *, ...))
{
  v18 = a1;
  v17 = a2;
  v16 = a3;
  v15 = a4;
  v14 = a5;
  v13 = 0;
  if (a4(a1, a3, 18944, &v13))
  {
    return (v14)("Failed to read szone structure\n");
  }

  v12 = 0;
  v11 = 0;
  result = _simple_salloc();
  v10 = result;
  if (result)
  {
    v9 = 0;
    if (v15(v18, *(v13 + 18832), 24 * *(v13 + 18824), &v9))
    {
      return (v14)("Failed to read large entries\n");
    }

    else
    {
      _simple_sprintf(v10, "Large allocator active blocks - total %y:\n", *(v13 + 18840));
      v12 = 0;
      v11 = v9;
      while (v12 < *(v13 + 18824))
      {
        if (*v11)
        {
          _simple_sprintf(v10, "   Slot %5d: %p, size %y", v12, *v11, *(v11 + 8));
          v6 = ", madvised";
          if (!*(v11 + 16))
          {
            v6 = &unk_B18C2;
          }

          _simple_sprintf(v10, "%s\n", v6);
        }

        ++v12;
        v11 += 24;
      }

      _simple_sprintf(v10, "Large allocator death row cache not configured\n");
      v8 = v14;
      v7 = _simple_string();
      v8("%s\n", v7);
      return _simple_sfree();
    }
  }

  return result;
}

uint64_t large_entry_for_pointer_no_lock(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 18824);
  if (!v5)
  {
    return 0;
  }

  v4 = (a2 >> vm_page_shift) % v5;
  do
  {
    v3 = (*(a1 + 18832) + 24 * v4);
    if (*v3 == a2)
    {
      return *(a1 + 18832) + 24 * v4;
    }

    if (!*v3)
    {
      break;
    }

    if (++v4 == v5)
    {
      v4 = 0;
    }
  }

  while (v4 != (a2 >> vm_page_shift) % v5);
  return 0;
}

void large_entries_free_no_lock(uint64_t a1, uint64_t a2, unsigned int a3, void *a4)
{
  *a4 = a2;
  if (vm_kernel_page_mask <= vm_page_mask)
  {
    v5 = vm_page_mask;
  }

  else
  {
    v5 = vm_kernel_page_mask;
  }

  if (vm_kernel_page_mask <= vm_page_mask)
  {
    v4 = vm_page_mask;
  }

  else
  {
    v4 = vm_kernel_page_mask;
  }

  a4[1] = (24 * a3 + v5) & ~v4;
}

uint64_t large_in_use_enumerator(unsigned int a1, uint64_t a2, int a3, uint64_t a4, unsigned int a5, uint64_t (*a6)(void, void, void, void), void (*a7)(void, uint64_t, uint64_t, __int128 *, uint64_t))
{
  v24 = a1;
  v23 = a2;
  v22 = a3;
  v21 = a4;
  v20 = a5;
  v19 = a6;
  v18 = a7;
  v17 = 0;
  v16 = 0;
  v15 = 0;
  v13 = 0uLL;
  v14 = a6(a1, a4, 24 * a5, &v15);
  if (v14)
  {
    return v14;
  }

  else
  {
    v17 = v20;
    if ((v22 & 4) != 0)
    {
      *&v13 = v21;
      if (vm_kernel_page_mask <= vm_page_mask)
      {
        v11 = vm_page_mask;
      }

      else
      {
        v11 = vm_kernel_page_mask;
      }

      if (vm_kernel_page_mask <= vm_page_mask)
      {
        v10 = vm_page_mask;
      }

      else
      {
        v10 = vm_kernel_page_mask;
      }

      *(&v13 + 1) = (24 * v20 + v11) & ~v10;
      v18(v24, v23, 4, &v13, 1);
    }

    if ((v22 & 3) != 0)
    {
      while (v17--)
      {
        v12 = *(v15 + 24 * v17);
        if (v12)
        {
          v13 = *(v15 + 24 * v17);
          v8 = v16++;
          v26[v8] = v12;
          if (v16 >= 0x100)
          {
            v18(v24, v23, 3, v26, v16);
            v16 = 0;
          }
        }
      }
    }

    if (v16)
    {
      v18(v24, v23, 3, v26, v16);
    }

    return 0;
  }
}

char *large_malloc(uint64_t a1, uint64_t a2, unsigned __int8 a3, int a4)
{
  v18 = a1;
  v17 = a2;
  v16 = a3;
  v15 = a4;
  v14 = 0;
  v12 = 0;
  v13 = 0;
  if (malloc_tracing_enabled)
  {
    kdebug_trace();
  }

  if (!v17)
  {
    v17 = 1;
  }

  if (vm_kernel_page_shift <= vm_page_shift)
  {
    v10 = vm_page_shift;
  }

  else
  {
    v10 = vm_kernel_page_shift;
  }

  v13 = 0;
  v12 = 0;
  v9 = v17 << v10;
  if ((*(v18 + 16392) & 0x20000000) != 0)
  {
    pages = mvm_allocate_pages(v9, v16, *(v18 + 16392) | 0x40000000u, 3);
  }

  else
  {
    pages = mvm_allocate_pages(v9, v16, *(v18 + 16392), 3);
  }

  v14 = pages;
  if (!pages)
  {
    return 0;
  }

  v20 = v18;
  v22 = v18 + 18816;
  v29 = v18 + 18816;
  v28 = 327680;
  v30 = 3;
  v31 = 3;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v27 = *(StatusReg + 24);
  v26 = 0;
  v25 = v27;
  v24 = v27;
  v5 = 0;
  atomic_compare_exchange_strong_explicit((v18 + 18816), &v5, v27, memory_order_acquire, memory_order_acquire);
  if (v5)
  {
    v26 = v5;
  }

  v23 = v5 == 0;
  if (v5)
  {
    os_unfair_lock_lock_with_options();
  }

  inserted = large_entry_grow_and_insert_no_lock(v18, v14, v17 << v10, &v12);
  v21 = v18;
  v33 = v18 + 18816;
  v39 = (v18 + 18816);
  v40 = 3;
  v41 = 3;
  v42 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v38 = *(v42 + 24);
  v37 = 0;
  v36 = v38;
  v35 = 0;
  v6 = v38;
  v7 = v38;
  atomic_compare_exchange_strong_explicit((v18 + 18816), &v7, 0, memory_order_release, memory_order_relaxed);
  if (v7 != v6)
  {
    v36 = v7;
  }

  v34 = v7 == v6;
  if (v7 != v6)
  {
    os_unfair_lock_unlock(v39);
  }

  if ((inserted & 1) == 0)
  {
    return 0;
  }

  if (v13)
  {
    mvm_deallocate_pages(v12, v13, 0);
  }

  return v14;
}

uint64_t large_entry_grow_and_insert_no_lock(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v14 = a1;
  v13 = a2;
  v12 = a3;
  v11 = a4;
  v10 = *(a1 + 18824) < (4 * (*(a1 + 18820) + 1));
  if (!v10 || (v9 = large_entries_grow_no_lock(v14, v11)) != 0)
  {
    v8 = 0;
    *&v7 = v13;
    *(&v7 + 1) = v12;
    v5 = v7;
    v6 = 0;
    large_entry_insert_no_lock(v14, &v5);
    ++*(v14 + 18820);
    *(v14 + 18840) += v12;
    v15 = 1;
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t free_large(uint64_t a1, const void *a2, char a3)
{
  v3 = 0;
  atomic_compare_exchange_strong_explicit((a1 + 18816), &v3, *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24), memory_order_acquire, memory_order_acquire);
  if (v3)
  {
    os_unfair_lock_lock_with_options();
  }

  v12 = large_entry_for_pointer_no_lock(a1, a2);
  if (v12)
  {
    --*(a1 + 18820);
    *(a1 + 18840) -= v12[1];
    v10 = large_entry_free_no_lock(a1, v12);
    v11 = v4;
    v7 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
    v8 = v7;
    atomic_compare_exchange_strong_explicit((a1 + 18816), &v8, 0, memory_order_release, memory_order_relaxed);
    if (v8 != v7)
    {
      os_unfair_lock_unlock((a1 + 18816));
    }

    if (v10)
    {
      mvm_deallocate_pages(v10, v11, 0);
    }

    v16 = 1;
  }

  else
  {
    if ((a3 & 1) == 0)
    {
      malloc_zone_error(*(a1 + 16392), 1, "pointer %p being freed was not allocated\n", a2);
    }

    v5 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
    v6 = v5;
    atomic_compare_exchange_strong_explicit((a1 + 18816), &v6, 0, memory_order_release, memory_order_relaxed);
    if (v6 != v5)
    {
      os_unfair_lock_unlock((a1 + 18816));
    }

    v16 = 0;
  }

  return v16 & 1;
}

uint64_t large_entry_free_no_lock(uint64_t a1, uint64_t *a2)
{
  if (malloc_tracing_enabled)
  {
    kdebug_trace();
  }

  v6 = *a2;
  if ((*(a1 + 16392) & 3) != 0)
  {
    mvm_protect(v6, a2[1], 3, *(a1 + 16392));
    if (vm_kernel_page_size <= vm_page_size)
    {
      v3 = vm_page_size;
    }

    else
    {
      v3 = vm_kernel_page_size;
    }

    v6 -= v3;
  }

  *a2 = 0;
  a2[1] = 0;
  *(a2 + 4) = 0;
  large_entries_rehash_after_entry_no_lock(a1, a2);
  return v6;
}

char *large_try_shrink_in_place(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v17 = a4;
  v16 = a3 - a4;
  if (a3 == a4)
  {
    return a2;
  }

  v4 = 0;
  atomic_compare_exchange_strong_explicit((a1 + 18816), &v4, *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24), memory_order_acquire, memory_order_acquire);
  if (v4)
  {
    os_unfair_lock_lock_with_options();
  }

  v15 = large_entry_for_pointer_no_lock(a1, a2);
  if (v15)
  {
    *v15 = a2;
    v15[1] = v17;
    *(a1 + 18840) -= v16;
    v14 = *(a1 + 16392) & 3;
    v7 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
    v8 = v7;
    atomic_compare_exchange_strong_explicit((a1 + 18816), &v8, 0, memory_order_release, memory_order_relaxed);
    if (v8 != v7)
    {
      os_unfair_lock_unlock((a1 + 18816));
    }

    if (v14)
    {
      v13 = &a2[v17];
      if (vm_kernel_page_size <= vm_page_size)
      {
        v9 = mprotect(v13, vm_page_size, 0);
      }

      else
      {
        v9 = mprotect(v13, vm_kernel_page_size, 0);
      }

      if (v9)
      {
        malloc_report(3u, "*** can't mvm_protect(0x0) region for new postlude guard page at %p\n", &a2[v17]);
      }

      if (vm_kernel_page_size <= vm_page_size)
      {
        v12 = vm_page_size;
      }

      else
      {
        v12 = vm_kernel_page_size;
      }

      v17 += v12;
      if (vm_kernel_page_size <= vm_page_size)
      {
        v11 = vm_page_size;
      }

      else
      {
        v11 = vm_kernel_page_size;
      }

      v16 -= v11;
    }

    mvm_deallocate_pages(&a2[v17], v16, 0);
    return a2;
  }

  malloc_zone_error(*(a1 + 16392), 1, "large entry %p reallocated is not properly in table\n", a2);
  v5 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
  v6 = v5;
  atomic_compare_exchange_strong_explicit((a1 + 18816), &v6, 0, memory_order_release, memory_order_relaxed);
  if (v6 != v5)
  {
    os_unfair_lock_unlock((a1 + 18816));
  }

  return a2;
}

uint64_t large_try_realloc_in_place(uint64_t a1, const void *a2, uint64_t a3, vm_size_t a4)
{
  v21 = a1;
  v20 = a2;
  v19 = a3;
  v18 = a4;
  address = a2 + a3;
  v24 = a1;
  v28 = a1 + 18816;
  v43 = a1 + 18816;
  v42 = 327680;
  v44 = 3;
  v47 = 3;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v41 = *(StatusReg + 24);
  v40 = 0;
  v39 = v41;
  v38 = v41;
  v4 = 0;
  atomic_compare_exchange_strong_explicit((a1 + 18816), &v4, v41, memory_order_acquire, memory_order_acquire);
  if (v4)
  {
    v40 = v4;
  }

  v37 = v4 == 0;
  if (v4)
  {
    os_unfair_lock_lock_with_options();
  }

  v15 = large_entry_for_pointer_no_lock(v21, address);
  v27 = v21;
  v50 = v21 + 18816;
  v76 = (v21 + 18816);
  v77 = 3;
  v78 = 3;
  v79 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v75 = *(v79 + 24);
  v74 = 0;
  v73 = v75;
  v72 = 0;
  v5 = v75;
  v6 = v75;
  atomic_compare_exchange_strong_explicit((v21 + 18816), &v6, 0, memory_order_release, memory_order_relaxed);
  if (v6 != v5)
  {
    v73 = v6;
  }

  v71 = v6 == v75;
  if (v6 != v75)
  {
    os_unfair_lock_unlock(v76);
  }

  if (v15)
  {
    return 0;
  }

  else
  {
    if (vm_kernel_page_mask <= vm_page_mask)
    {
      v14 = vm_page_mask;
    }

    else
    {
      v14 = vm_kernel_page_mask;
    }

    if (vm_kernel_page_mask <= vm_page_mask)
    {
      v13 = vm_page_mask;
    }

    else
    {
      v13 = vm_kernel_page_mask;
    }

    v18 = (v18 + v14) & ~v13;
    if (vm_allocate(mach_task_self_, &address, v18 - v19, 100663296))
    {
      return 0;
    }

    else
    {
      v23 = v21;
      v29 = v21 + 18816;
      v36 = v21 + 18816;
      v35 = 327680;
      v45 = 3;
      v46 = 3;
      v49 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v34 = *(v49 + 24);
      v33 = 0;
      v32 = v34;
      v31 = v34;
      v7 = 0;
      atomic_compare_exchange_strong_explicit((v21 + 18816), &v7, v34, memory_order_acquire, memory_order_acquire);
      if (v7)
      {
        v33 = v7;
      }

      v30 = v7 == 0;
      if (v7)
      {
        os_unfair_lock_lock_with_options();
      }

      v16 = large_entry_for_pointer_no_lock(v21, v20);
      if (v16)
      {
        *v16 = v20;
        v16[1] = v18;
        *(v21 + 18840) += v18 - v19;
        v25 = v21;
        v52 = v21 + 18816;
        v58 = (v21 + 18816);
        v59 = 3;
        v60 = 3;
        v61 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v57 = *(v61 + 24);
        v56 = 0;
        v55 = v57;
        v54 = 0;
        v10 = v57;
        v11 = v57;
        atomic_compare_exchange_strong_explicit((v21 + 18816), &v11, 0, memory_order_release, memory_order_relaxed);
        if (v11 != v10)
        {
          v55 = v11;
        }

        v53 = v11 == v10;
        if (v11 != v10)
        {
          os_unfair_lock_unlock(v58);
        }

        return 1;
      }

      else
      {
        malloc_zone_error(*(v21 + 16392), 1, "large entry %p reallocated is not properly in table\n", v20);
        v26 = v21;
        v51 = v21 + 18816;
        v67 = (v21 + 18816);
        v68 = 3;
        v69 = 3;
        v70 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v66 = *(v70 + 24);
        v65 = 0;
        v64 = v66;
        v63 = 0;
        v8 = v66;
        v9 = v66;
        atomic_compare_exchange_strong_explicit((v21 + 18816), &v9, 0, memory_order_release, memory_order_relaxed);
        if (v9 != v8)
        {
          v64 = v9;
        }

        v62 = v9 == v8;
        if (v9 != v8)
        {
          os_unfair_lock_unlock(v67);
        }

        return 0;
      }
    }
  }
}

BOOL large_claimed_address(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  atomic_compare_exchange_strong_explicit((a1 + 18816), &v2, *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24), memory_order_acquire, memory_order_acquire);
  if (v2)
  {
    os_unfair_lock_lock_with_options();
  }

  v6 = large_entry_containing_pointer_no_lock(a1, a2 & ~(vm_page_size - 1)) != 0;
  v3 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
  v4 = v3;
  atomic_compare_exchange_strong_explicit((a1 + 18816), &v4, 0, memory_order_release, memory_order_relaxed);
  if (v4 != v3)
  {
    os_unfair_lock_unlock((a1 + 18816));
  }

  return v6;
}

uint64_t large_entry_containing_pointer_no_lock(uint64_t a1, unint64_t a2)
{
  v6 = *(a1 + 18824);
  if (!v6)
  {
    return 0;
  }

  v5 = (a2 >> vm_page_shift) % v6;
  do
  {
    v4 = (*(a1 + 18832) + 24 * v5);
    if (*v4 == a2)
    {
      return *(a1 + 18832) + 24 * v5;
    }

    if (a2 >= *v4 && a2 < *v4 + v4[1])
    {
      return *(a1 + 18832) + 24 * v5;
    }

    if (v5)
    {
      v3 = v5 - 1;
    }

    else
    {
      v3 = v6 - 1;
    }

    v5 = v3;
  }

  while (v3 != (a2 >> vm_page_shift) % v6);
  return 0;
}

char *large_entries_grow_no_lock(uint64_t a1, void *a2)
{
  v17 = a1;
  v16 = a2;
  v15 = *(a1 + 18824);
  v14 = *(a1 + 18832);
  if (v15)
  {
    v6 = 2 * v15 + 1;
  }

  else
  {
    if (vm_kernel_page_size <= vm_page_size)
    {
      v5 = vm_page_size;
    }

    else
    {
      v5 = vm_kernel_page_size;
    }

    v6 = v5 / 0x18 - 1;
  }

  v13 = v6;
  v12 = large_entries_alloc_no_lock(v17, v6);
  v11 = v15;
  v9 = 0uLL;
  v10 = 0;
  if (!v12)
  {
    return 0;
  }

  *(v17 + 18824) = v13;
  *(v17 + 18832) = v12;
  while (v11--)
  {
    v3 = (v14 + 24 * v11);
    v9 = *v3;
    v10 = *(v3 + 2);
    if (v9)
    {
      v7 = v9;
      v8 = v10;
      large_entry_insert_no_lock(v17, &v7);
    }
  }

  if (v14)
  {
    large_entries_free_no_lock(v17, v14, v15, v16);
  }

  else
  {
    *v16 = 0;
    v16[1] = 0;
  }

  return v12;
}

uint64_t large_entry_insert_no_lock(uint64_t result, void *a2)
{
  v4 = *(result + 18824);
  v3 = (*a2 >> vm_page_shift) % v4;
  while (1)
  {
    v2 = (*(result + 18832) + 24 * v3);
    if (!*v2)
    {
      break;
    }

    if (++v3 == v4)
    {
      v3 = 0;
    }

    if (v3 == (*a2 >> vm_page_shift) % v4)
    {
      return result;
    }
  }

  *v2 = *a2;
  v2[2] = a2[2];
  return result;
}

char *large_entries_alloc_no_lock(uint64_t a1, unsigned int a2)
{
  if ((*(a1 + 16392) & 0x20000000) != 0)
  {
    v5 = *(a1 + 16392) & 0x20000000 | 0x40000000;
  }

  else
  {
    v5 = *(a1 + 16392) & 0x60000000;
  }

  if (vm_kernel_page_mask <= vm_page_mask)
  {
    v4 = vm_page_mask;
  }

  else
  {
    v4 = vm_kernel_page_mask;
  }

  if (vm_kernel_page_mask <= vm_page_mask)
  {
    v3 = vm_page_mask;
  }

  else
  {
    v3 = vm_kernel_page_mask;
  }

  return mvm_allocate_pages((24 * a2 + v4) & ~v3, 0, v5, 3);
}

uint64_t large_entries_rehash_after_entry_no_lock(uint64_t result, uint64_t a2)
{
  v11 = result;
  v10 = a2;
  v9 = *(result + 18824);
  v8 = (a2 - *(result + 18832)) / 24;
  v7 = v8;
  v5 = 0uLL;
  v6 = 0;
  do
  {
    if (++v7 == v9)
    {
      v7 = 0;
    }

    v2 = *(v11 + 18832) + 24 * v7;
    v5 = *v2;
    v6 = *(v2 + 16);
    if (!v5)
    {
      break;
    }

    *(*(v11 + 18832) + 24 * v7) = 0;
    *(*(v11 + 18832) + 24 * v7 + 8) = 0;
    *(*(v11 + 18832) + 24 * v7 + 16) = 0;
    v3 = v5;
    v4 = v6;
    result = large_entry_insert_no_lock(v11, &v3);
  }

  while (v7 != v8);
  return result;
}

void _szone_free(uint64_t result, unint64_t a2, char a3)
{
  if (a2)
  {
    if ((a2 & 0xF) != 0)
    {
      if ((a3 & 1) == 0)
      {
        malloc_zone_error(*(result + 16392), 1, "Non-aligned pointer %p being freed\n", a2);
        return;
      }

      goto LABEL_25;
    }

    v5 = tiny_region_for_ptr_no_lock(result + 16512, a2);
    if (v5)
    {
      if (((a2 - ((a2 & 0xFFFFFFFFFFF00000) + 16512)) >> 4) < 0xFBF8uLL)
      {
        free_tiny(result + 16512, a2, v5, 0, 0);
      }

      else
      {
        malloc_zone_error(*(result + 16392), 1, "Pointer %p to metadata being freed\n", a2);
      }
    }

    else
    {
      if ((a2 & 0x1FF) != 0)
      {
        if ((a3 & 1) == 0)
        {
          malloc_zone_error(*(result + 16392), 1, "Non-aligned pointer %p being freed (2)\n", a2);
          return;
        }

        goto LABEL_25;
      }

      v4 = small_region_for_ptr_no_lock(result + 17280, a2);
      if (v4)
      {
        if ((((a2 - ((a2 & 0xFFFFFFFFFF800000) + 33280)) >> 9) & 0x3FFF) >= 0x3FBF)
        {
          malloc_zone_error(*(result + 16392), 1, "Pointer %p to metadata being freed (2)\n", a2);
        }

        else
        {
          free_small(result + 17280, a2, v4, 0);
        }
      }

      else
      {
        if ((a2 & (vm_page_size - 1)) != 0)
        {
          if ((a3 & 1) == 0)
          {
            malloc_zone_error(*(result + 16392), 1, "non-page-aligned, non-allocated pointer %p being freed\n", a2);
            return;
          }

          goto LABEL_25;
        }

        v3 = free_large(result, a2, a3 & 1);
        if ((a3 & 1) != 0 && (v3 & 1) == 0)
        {
LABEL_25:
          find_zone_and_free(a2, 1);
        }
      }
    }
  }
}

void szone_free_definite_size(uint64_t result, unint64_t a2, unint64_t a3)
{
  if (a2)
  {
    if ((a2 & 0xF) != 0)
    {
      malloc_zone_error(*(result + 16392), 1, "Non-aligned pointer %p being freed\n", a2);
    }

    else if (a3 > 0x3F0)
    {
      if ((a2 & 0x1FF) != 0)
      {
        malloc_zone_error(*(result + 16392), 1, "Non-aligned pointer %p being freed (2)\n", a2);
      }

      else if (a3 > 0x3C00)
      {
        if ((a2 & (vm_page_size - 1)) != 0)
        {
          malloc_zone_error(*(result + 16392), 1, "non-page-aligned, non-allocated pointer %p being freed\n", a2);
        }

        else
        {
          free_large(result, a2, 0);
        }
      }

      else if ((((a2 - ((a2 & 0xFFFFFFFFFF800000) + 33280)) >> 9) & 0x3FFF) >= 0x3FBF)
      {
        malloc_zone_error(*(result + 16392), 1, "Pointer %p to metadata being freed (2)\n", a2);
      }

      else
      {
        free_small(result + 17280, a2, (a2 & 0xFFFFFFFFFF800000), a3);
      }
    }

    else if (((a2 - ((a2 & 0xFFFFFFFFFFF00000) + 16512)) >> 4) < 0xFBF8uLL)
    {
      free_tiny(result + 16512, a2, (a2 & 0xFFFFFFFFFFF00000), a3, 0);
    }

    else
    {
      malloc_zone_error(*(result + 16392), 1, "Pointer %p to metadata being freed\n", a2);
    }
  }
}

unint64_t szone_malloc_should_clear(uint64_t a1, unint64_t a2, int a3)
{
  if (a2 > 0x3F0)
  {
    if (a2 > 0x3C00)
    {
      if (vm_kernel_page_mask <= vm_page_mask)
      {
        v7 = vm_page_mask;
      }

      else
      {
        v7 = vm_kernel_page_mask;
      }

      if (vm_kernel_page_mask <= vm_page_mask)
      {
        v6 = vm_page_mask;
      }

      else
      {
        v6 = vm_kernel_page_mask;
      }

      v5 = (a2 + v7) & ~v6;
      if (vm_kernel_page_shift <= vm_page_shift)
      {
        v4 = vm_page_shift;
      }

      else
      {
        v4 = vm_kernel_page_shift;
      }

      if (v5 >> v4)
      {
        should_clear = large_malloc(a1, v5 >> v4, 0, a3);
      }

      else
      {
        should_clear = 0;
      }
    }

    else
    {
      v9 = (a2 + 511) >> 9;
      if (!v9)
      {
        v9 = 1;
      }

      should_clear = small_malloc_should_clear(a1 + 17280, v9, a3);
    }
  }

  else
  {
    v8 = (a2 + 15) >> 4;
    if (!v8)
    {
      v8 = 1;
    }

    should_clear = tiny_malloc_should_clear(a1 + 16512, v8, a3);
  }

  if ((*(a1 + 16392) & 0x20) != 0 && should_clear && !a3 && a2)
  {
    szone_size(a1, should_clear);
    _platform_memset();
  }

  if (!should_clear)
  {
    malloc_set_errno_fast(1, 12);
  }

  return should_clear;
}

uint64_t szone_size(uint64_t a1, unint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 & 0xF) != 0)
  {
    return 0;
  }

  v3 = tiny_size(a1 + 16512, a2);
  if (v3)
  {
    return v3;
  }

  if ((a2 & 0x1FF) != 0)
  {
    return 0;
  }

  v4 = small_size(a1 + 17280, a2);
  if (v4)
  {
    return v4;
  }

  if ((a2 & (vm_page_size - 1)) != 0)
  {
    return 0;
  }

  return szone_size_try_large(a1, a2);
}

unint64_t szone_calloc(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v5 = a1;
  v4[2] = a2;
  v4[1] = a3;
  v4[0] = 0;
  v11 = a2;
  v10 = a3;
  v9 = 0;
  v8 = v4;
  v7 = a3;
  if (a2 == 1 || (v7 = v11 * v10, v13 = (v11 * v10) >> 64 != 0, is_mul_ok(v11, v10)) && v7 <= malloc_absolute_max_size)
  {
    *v8 = v7;
    v12 = 0;
  }

  else
  {
    malloc_set_errno_fast(1, 12);
    v12 = -1;
  }

  if (v12)
  {
    return 0;
  }

  else
  {
    return szone_malloc_should_clear(v5, v4[0], 1);
  }
}

char *szone_valloc(uint64_t a1, unint64_t a2)
{
  if (a2 <= 0x800000)
  {
    return szone_memalign(a1, vm_page_size, a2);
  }

  if (vm_kernel_page_mask <= vm_page_mask)
  {
    v5 = vm_page_mask;
  }

  else
  {
    v5 = vm_kernel_page_mask;
  }

  if (vm_kernel_page_mask <= vm_page_mask)
  {
    v4 = vm_page_mask;
  }

  else
  {
    v4 = vm_kernel_page_mask;
  }

  if (vm_kernel_page_shift <= vm_page_shift)
  {
    v3 = vm_page_shift;
  }

  else
  {
    v3 = vm_kernel_page_shift;
  }

  return large_malloc(a1, ((a2 + v5) & ~v4) >> v3, 0, 0);
}

char *szone_memalign(uint64_t a1, vm_size_t a2, unint64_t a3)
{
  v12 = a3;
  if (!a3)
  {
    v12 = 1;
  }

  if (v12 + a2 < v12)
  {
    return 0;
  }

  v11 = v12 + a2 - 1;
  if (a2 <= 0x10)
  {
    return szone_malloc(a1, v12);
  }

  if (v11 <= 0x3F0)
  {
    return tiny_memalign(a1, a2, v12, v11);
  }

  if (v12 > 0x3F0 && a2 <= 0x200)
  {
    return szone_malloc(a1, v12);
  }

  if (v12 <= 0x3F0)
  {
    v12 = 1024;
    v11 = a2 + 1023;
  }

  if (v11 <= 0x3C00)
  {
    return small_memalign(a1, a2, v12, v11);
  }

  if (v12 > 0x3C00 && a2 <= vm_page_size)
  {
    return szone_malloc(a1, v12);
  }

  if (v12 >= 0x3C01)
  {
    v9 = v12;
  }

  else
  {
    v9 = 15361;
  }

  if (vm_kernel_page_mask <= vm_page_mask)
  {
    v8 = vm_page_mask;
  }

  else
  {
    v8 = vm_kernel_page_mask;
  }

  if (vm_kernel_page_mask <= vm_page_mask)
  {
    v7 = vm_page_mask;
  }

  else
  {
    v7 = vm_kernel_page_mask;
  }

  v6 = (v9 + v8) & ~v7;
  if (vm_kernel_page_shift <= vm_page_shift)
  {
    v5 = vm_page_shift;
  }

  else
  {
    v5 = vm_kernel_page_shift;
  }

  v10 = v6 >> v5;
  if (!(v6 >> v5))
  {
    return 0;
  }

  if (vm_page_shift <= __clz(__rbit64(a2)))
  {
    return large_malloc(a1, v10, __clz(__rbit64(a2)), 0);
  }

  else
  {
    return large_malloc(a1, v10, vm_page_shift, 0);
  }
}

uint64_t szone_size_try_large(uint64_t a1, unint64_t a2)
{
  v7 = 0;
  v2 = 0;
  atomic_compare_exchange_strong_explicit((a1 + 18816), &v2, *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24), memory_order_acquire, memory_order_acquire);
  if (v2)
  {
    os_unfair_lock_lock_with_options();
  }

  v6 = large_entry_for_pointer_no_lock(a1, a2);
  if (v6)
  {
    v7 = *(v6 + 8);
  }

  v3 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
  v4 = v3;
  atomic_compare_exchange_strong_explicit((a1 + 18816), &v4, 0, memory_order_release, memory_order_relaxed);
  if (v4 != v3)
  {
    os_unfair_lock_unlock((a1 + 18816));
  }

  return v7;
}

char *szone_realloc(uint64_t a1, char *a2, unint64_t a3)
{
  if (!a2)
  {
    return szone_malloc(a1, a3);
  }

  if (!a3)
  {
    szone_free(a1, a2);
    return szone_malloc(a1, 1uLL);
  }

  v6 = szone_size(a1, a2);
  if (!v6)
  {
    malloc_zone_error(*(a1 + 16392), 1, "pointer %p being reallocated was not allocated\n", a2);
    return 0;
  }

  v5 = szone_good_size(a1, a3);
  if (v5 == v6)
  {
    return a2;
  }

  if (v5 <= 0x3F0)
  {
    if (v6 <= 0x3F0)
    {
      if (v5 <= v6 >> 1)
      {
        return tiny_try_shrink_in_place(a1 + 16512, a2, v6, v5);
      }

      if (v5 <= v6)
      {
        if ((*(a1 + 16392) & 0x20) != 0)
        {
          _platform_memset();
        }

        return a2;
      }

      if (tiny_try_realloc_in_place(a1 + 16512, a2, v6, v5))
      {
        if ((*(a1 + 16392) & 0x20) != 0)
        {
          _platform_memset();
        }

        return a2;
      }
    }

    goto LABEL_48;
  }

  if (v5 <= 0x3C00)
  {
    if (v6 > 0x3F0 && v6 <= 0x3C00)
    {
      if (v5 <= v6 >> 1)
      {
        return small_try_shrink_in_place(a1 + 17280, a2, v6, v5);
      }

      if (v5 <= v6)
      {
        if ((*(a1 + 16392) & 0x20) != 0)
        {
          _platform_memset();
        }

        return a2;
      }

      if (small_try_realloc_in_place(a1 + 17280, a2, v6, v5))
      {
        if ((*(a1 + 16392) & 0x20) != 0)
        {
          _platform_memset();
        }

        return a2;
      }
    }

LABEL_48:
    if (v5 <= v6 >> 1 || v5 > v6)
    {
      v4 = szone_malloc(a1, a3);
      if (v4)
      {
        _platform_memmove();
        szone_free(a1, a2);
        return v4;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      if ((*(a1 + 16392) & 0x20) != 0)
      {
        _platform_memset();
      }

      return a2;
    }
  }

  if ((*(a1 + 16392) & 0x80) != 0 || v6 <= 0x3C00)
  {
    goto LABEL_48;
  }

  if (v5 <= v6 >> 1)
  {
    return large_try_shrink_in_place(a1, a2, v6, v5);
  }

  if (v5 > v6)
  {
    if (!large_try_realloc_in_place(a1, a2, v6, v5))
    {
      goto LABEL_48;
    }

    if ((*(a1 + 16392) & 0x20) != 0)
    {
      _platform_memset();
    }

    return a2;
  }

  else
  {
    if ((*(a1 + 16392) & 0x20) != 0)
    {
      _platform_memset();
    }

    return a2;
  }
}

unint64_t szone_good_size(uint64_t a1, unint64_t a2)
{
  if (a2 > 0x3F0)
  {
    if (a2 > 0x3C00)
    {
      if (vm_kernel_page_mask <= vm_page_mask)
      {
        v6 = vm_page_mask;
      }

      else
      {
        v6 = vm_kernel_page_mask;
      }

      if (vm_kernel_page_mask <= vm_page_mask)
      {
        v5 = vm_page_mask;
      }

      else
      {
        v5 = vm_kernel_page_mask;
      }

      if (a2 <= ((a2 + v6) & ~v5))
      {
        if (vm_kernel_page_mask <= vm_page_mask)
        {
          v4 = vm_page_mask;
        }

        else
        {
          v4 = vm_kernel_page_mask;
        }

        if (vm_kernel_page_mask <= vm_page_mask)
        {
          v3 = vm_page_mask;
        }

        else
        {
          v3 = vm_kernel_page_mask;
        }

        return (a2 + v4) & ~v3;
      }

      else
      {
        return -1;
      }
    }

    else
    {
      v8 = (a2 + 511) >> 9;
      if (!v8)
      {
        v8 = 1;
      }

      return v8 << 9;
    }
  }

  else
  {
    v7 = (a2 + 15) >> 4;
    if (!v7)
    {
      v7 = 1;
    }

    return 16 * v7;
  }
}

uint64_t szone_batch_malloc(uint64_t a1, unint64_t a2, uint64_t *a3, unsigned int a4)
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

void szone_batch_free(uint64_t result, uint64_t a2, unsigned int a3)
{
  v5 = a3;
  if (a3)
  {
    tiny_batch_free(result, a2, a3);
    while (v5--)
    {
      v4 = *(a2 + 8 * v5);
      if (v4)
      {
        szone_free(result, v4);
      }
    }
  }
}

BOOL szone_claimed_address(uint64_t a1, unint64_t a2)
{
  v3 = 1;
  if (!tiny_claimed_address(a1 + 16512, a2))
  {
    v3 = 1;
    if (!small_claimed_address(a1 + 17280, a2))
    {
      return large_claimed_address(a1, a2);
    }
  }

  return v3;
}

uint64_t scalable_zone_info_task(unsigned int a1, unsigned int (*a2)(void, void, uint64_t, uint64_t *), uint64_t a3, uint64_t a4, unsigned int a5)
{
  v16 = a1;
  v15 = a2;
  v14 = a3;
  v13 = a4;
  v12 = a5;
  v11 = a3;
  v10 = 0;
  v9 = 0;
  v8 = 0;
  i = 0;
  v6 = 0;
  if (a2(a1, *(a3 + 17136), 2560, &v6))
  {
    return 0;
  }

  else
  {
    for (i = -1; i < *(v11 + 17120); ++i)
    {
      v10 += *(v6 + 2560 * i + 2136);
      v10 += *(v6 + 2560 * i + 2128);
      v9 += *(v6 + 2560 * i + 2168);
      v8 += *(v6 + 2560 * i + 2152);
    }

    v22 = v9;
    v23 = v8;
    if (v15(v16, *(v11 + 17904), 2560, &v6))
    {
      return 0;
    }

    else
    {
      v9 = 0;
      v8 = 0;
      for (i = -1; i < *(v11 + 17888); ++i)
      {
        v10 += *(v6 + 2560 * i + 2136);
        v10 += *(v6 + 2560 * i + 2128);
        v9 += *(v6 + 2560 * i + 2168);
        v8 += *(v6 + 2560 * i + 2152);
      }

      v24 = v9;
      v25 = v8;
      v26 = *(v11 + 18820);
      v27 = *(v11 + 18840);
      v28 = 0;
      v29 = *(v11 + 16392);
      v18 = v22 + v9 + v26 + HIDWORD(v27);
      v19 = v23 + v8 + v27;
      v21 = ((*(v11 + 17288) - *(v11 + 17296)) << 23) + ((*(v11 + 16520) - *(v11 + 16528)) << 20) + v27;
      v20 = v21 - v10;
      _platform_memmove();
      return 1;
    }
  }
}

uint64_t _malloc_default_reader_0(unsigned int a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = 1;
  if (a1)
  {
    v5 = mach_task_is_self() != 0;
  }

  if (!v5)
  {
    __break(1u);
    JUMPOUT(0x207E0);
  }

  *a4 = a2;
  return 0;
}

uint64_t szone_pressure_relief(uint64_t a1, uint64_t a2)
{
  if (malloc_tracing_enabled)
  {
    kdebug_trace();
  }

  if (malloc_tracing_enabled)
  {
    kdebug_trace();
  }

  return 0;
}

uint64_t scalable_zone_statistics(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    switch(a3)
    {
      case 1:
        v8 = 0;
        v7 = 0;
        v6 = 0;
        for (i = -1; i < *(a1 + 17888); ++i)
        {
          v8 += *(*(a1 + 17904) + 2560 * i + 2136) + *(*(a1 + 17904) + 2560 * i + 2128);
          v7 += *(*(a1 + 17904) + 2560 * i + 2168);
          v6 += *(*(a1 + 17904) + 2560 * i + 2152);
        }

        *a2 = v7;
        *(a2 + 8) = v6;
        *(a2 + 24) = (*(a1 + 17288) - *(a1 + 17296)) << 23;
        *(a2 + 16) = *(a2 + 24) - v8;
        return 1;
      case 2:
        *a2 = *(a1 + 18820);
        *(a2 + 8) = *(a1 + 18840);
        v3 = *(a2 + 8);
        *(a2 + 24) = v3;
        *(a2 + 16) = v3;
        return 1;
      case 3:
        *a2 = 0;
        *(a2 + 8) = 0;
        *(a2 + 24) = 0;
        *(a2 + 16) = 0;
        return 1;
      case 4:
        *a2 = 0;
        *(a2 + 8) = 0;
        *(a2 + 24) = 0;
        *(a2 + 16) = *(a2 + 24);
        return 1;
      default:
        return 0;
    }
  }

  else
  {
    v12 = 0;
    v11 = 0;
    v10 = 0;
    for (j = -1; j < *(a1 + 17120); ++j)
    {
      v12 += *(*(a1 + 17136) + 2560 * j + 2136) + *(*(a1 + 17136) + 2560 * j + 2128);
      v11 += *(*(a1 + 17136) + 2560 * j + 2168);
      v10 += *(*(a1 + 17136) + 2560 * j + 2152);
    }

    *a2 = v11;
    *(a2 + 8) = v10;
    *(a2 + 24) = (*(a1 + 16520) - *(a1 + 16528)) << 20;
    *(a2 + 16) = *(a2 + 24) - v12;
    return 1;
  }
}

uint64_t szone_ptr_in_use_enumerator(unsigned int a1, uint64_t a2, int a3, uint64_t a4, uint64_t (*a5)(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t *a4), void (*a6)(void, uint64_t, uint64_t, __int128 *, uint64_t))
{
  v16 = a1;
  v15 = a2;
  v14 = a3;
  v13 = a4;
  v12 = a5;
  v11 = a6;
  v10 = 0;
  v12 = reader_or_in_memory_fallback_0(a5, a1);
  v7 = v12(v16, v13, 18944, &v10);
  if (v7)
  {
    return v7;
  }

  else
  {
    v8 = tiny_in_use_enumerator(v16, v15, v14, v10, v12, v11);
    if (v8)
    {
      return v8;
    }

    else
    {
      v9 = small_in_use_enumerator(v16, v15, v14, v10, v12, v11);
      if (v9)
      {
        return v9;
      }

      else
      {
        return large_in_use_enumerator(v16, v15, v14, *(v10 + 18832), *(v10 + 18824), v12, v11);
      }
    }
  }
}

uint64_t szone_check(uint64_t a1)
{
  if (!(++szone_check_counter % 0x2710u))
  {
    malloc_report(5u, "at szone_check counter=%d\n", szone_check_counter);
  }

  if (szone_check_counter >= szone_check_start)
  {
    if (szone_check_counter % szone_check_modulo)
    {
      return 1;
    }

    else
    {
      return szone_check_all(a1);
    }
  }

  else
  {
    return 1;
  }
}

uint64_t szone_print_self(char *a1, int a2)
{
  if (a2)
  {
    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  return szone_print(mach_task_self_, v2, a1, _malloc_default_reader_0, malloc_report_simple);
}

uint64_t szone_force_lock(uint64_t a1)
{
  for (i = 0; i < *(a1 + 17120); ++i)
  {
    szone_force_lock_magazine(a1, *(a1 + 17136) + 2560 * i);
  }

  szone_force_lock_magazine(a1, *(a1 + 17136) - 2560);
  for (j = 0; j < *(a1 + 17888); ++j)
  {
    szone_force_lock_magazine(a1, *(a1 + 17904) + 2560 * j);
  }

  result = szone_force_lock_magazine(a1, *(a1 + 17904) - 2560);
  v2 = 0;
  atomic_compare_exchange_strong_explicit((a1 + 18816), &v2, *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24), memory_order_acquire, memory_order_acquire);
  if (v2)
  {
    return os_unfair_lock_lock_with_options();
  }

  return result;
}

void szone_force_unlock(uint64_t a1)
{
  v1 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
  v2 = v1;
  atomic_compare_exchange_strong_explicit((a1 + 18816), &v2, 0, memory_order_release, memory_order_relaxed);
  if (v2 != v1)
  {
    os_unfair_lock_unlock((a1 + 18816));
  }

  for (i = -1; i < *(a1 + 17888); ++i)
  {
    v17 = (*(a1 + 17904) + 2560 * i);
    v3 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
    v4 = v3;
    atomic_compare_exchange_strong_explicit(v17, &v4, 0, memory_order_release, memory_order_relaxed);
    if (v4 != v3)
    {
      os_unfair_lock_unlock(v17);
    }

    lock = (*(a1 + 17904) + 2560 * i + 4);
    v5 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
    v6 = v5;
    atomic_compare_exchange_strong_explicit(lock, &v6, 0, memory_order_release, memory_order_relaxed);
    if (v6 != v5)
    {
      os_unfair_lock_unlock(lock);
    }
  }

  for (j = -1; j < *(a1 + 17120); ++j)
  {
    v16 = (*(a1 + 17136) + 2560 * j);
    v7 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
    v8 = v7;
    atomic_compare_exchange_strong_explicit(v16, &v8, 0, memory_order_release, memory_order_relaxed);
    if (v8 != v7)
    {
      os_unfair_lock_unlock(v16);
    }

    v15 = (*(a1 + 17136) + 2560 * j + 4);
    v9 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
    v10 = v9;
    atomic_compare_exchange_strong_explicit(v15, &v10, 0, memory_order_release, memory_order_relaxed);
    if (v10 != v9)
    {
      os_unfair_lock_unlock(v15);
    }
  }
}

uint64_t szone_locked(uint64_t a1)
{
  v1 = 0;
  atomic_compare_exchange_strong_explicit((a1 + 18816), &v1, *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24), memory_order_acquire, memory_order_acquire);
  if (v1)
  {
    return 1;
  }

  else
  {
    v2 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
    v3 = v2;
    atomic_compare_exchange_strong_explicit((a1 + 18816), &v3, 0, memory_order_release, memory_order_relaxed);
    if (v3 != v2)
    {
      os_unfair_lock_unlock((a1 + 18816));
    }

    for (i = -1; i < *(a1 + 17888); ++i)
    {
      v4 = 0;
      atomic_compare_exchange_strong_explicit((*(a1 + 17904) + 2560 * i), &v4, *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24), memory_order_acquire, memory_order_acquire);
      if (v4)
      {
        return 1;
      }

      v24 = (*(a1 + 17904) + 2560 * i);
      v5 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
      v6 = v5;
      atomic_compare_exchange_strong_explicit(v24, &v6, 0, memory_order_release, memory_order_relaxed);
      if (v6 != v5)
      {
        os_unfair_lock_unlock(v24);
      }

      v7 = 0;
      atomic_compare_exchange_strong_explicit((*(a1 + 17904) + 2560 * i + 4), &v7, *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24), memory_order_acquire, memory_order_acquire);
      if (v7)
      {
        return 1;
      }

      v21 = (*(a1 + 17904) + 2560 * i + 4);
      v8 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
      v9 = v8;
      atomic_compare_exchange_strong_explicit(v21, &v9, 0, memory_order_release, memory_order_relaxed);
      if (v9 != v8)
      {
        os_unfair_lock_unlock(v21);
      }
    }

    for (j = -1; j < *(a1 + 17120); ++j)
    {
      v10 = 0;
      atomic_compare_exchange_strong_explicit((*(a1 + 17136) + 2560 * j), &v10, *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24), memory_order_acquire, memory_order_acquire);
      if (v10)
      {
        return 1;
      }

      v23 = (*(a1 + 17136) + 2560 * j);
      v11 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
      v12 = v11;
      atomic_compare_exchange_strong_explicit(v23, &v12, 0, memory_order_release, memory_order_relaxed);
      if (v12 != v11)
      {
        os_unfair_lock_unlock(v23);
      }

      v13 = 0;
      atomic_compare_exchange_strong_explicit((*(a1 + 17136) + 2560 * j + 4), &v13, *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24), memory_order_acquire, memory_order_acquire);
      if (v13)
      {
        return 1;
      }

      v22 = (*(a1 + 17136) + 2560 * j + 4);
      v14 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
      v15 = v14;
      atomic_compare_exchange_strong_explicit(v22, &v15, 0, memory_order_release, memory_order_relaxed);
      if (v15 != v14)
      {
        os_unfair_lock_unlock(v22);
      }
    }

    return 0;
  }
}

uint64_t szone_reinit_lock(uint64_t result)
{
  *(result + 18816) = 0;
  for (i = -1; i < *(result + 17888); ++i)
  {
    *(*(result + 17904) + 2560 * i) = 0;
    *(*(result + 17904) + 2560 * i + 4) = 0;
  }

  for (j = -1; j < *(result + 17120); ++j)
  {
    *(*(result + 17136) + 2560 * j) = 0;
    *(*(result + 17136) + 2560 * j + 4) = 0;
  }

  return result;
}

uint64_t szone_statistics_task(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = a1;
  v16 = a2;
  v14 = a4;
  v15 = reader_or_in_memory_fallback_0(a3, a1);
  v13 = 0;
  v12 = v15(v17, v16, 18944, &v13);
  if (v12)
  {
    return v12;
  }

  else
  {
    v11 = 0;
    v10 = 0;
    v9 = 0;
    v8 = 0;
    i = 0;
    v6 = 0;
    v12 = v15(v17, *(v13 + 17136), 2560 * *(v13 + 17120), &v6);
    if (v12)
    {
      return v12;
    }

    else
    {
      for (i = -1; i < *(v13 + 17120); ++i)
      {
        v10 += *(v6 + 2560 * i + 2136);
        v10 += *(v6 + 2560 * i + 2128);
        v9 += *(v6 + 2560 * i + 2168);
        v8 += *(v6 + 2560 * i + 2152);
      }

      v12 = v15(v17, *(v13 + 17904), 2560 * *(v13 + 17888), &v6);
      if (v12)
      {
        return v12;
      }

      else
      {
        for (i = -1; i < *(v13 + 17888); ++i)
        {
          v10 += *(v6 + 2560 * i + 2136);
          v10 += *(v6 + 2560 * i + 2128);
          v9 += *(v6 + 2560 * i + 2168);
          v8 += *(v6 + 2560 * i + 2152);
        }

        v11 = *(v13 + 18840);
        *v14 = v9 + *(v13 + 18820);
        *(v14 + 8) = v8 + v11;
        v4 = ((*(v13 + 17288) - *(v13 + 17296)) << 23) + ((*(v13 + 16520) - *(v13 + 16528)) << 20) + v11;
        *(v14 + 24) = v4;
        *(v14 + 16) = v4;
        *(v14 + 16) -= v10;
        return 0;
      }
    }
  }
}

char *create_scalable_szone(uint64_t a1, int a2)
{
  pages = mvm_allocate_pages((vm_page_size + 18943) & ~(vm_page_size - 1), 0, 0x40000000u, 1);
  if (!pages)
  {
    return 0;
  }

  if (mvm_aslr_enabled())
  {
    v43 = a2 & 0xBFFFFFFF;
  }

  else
  {
    v43 = a2 | 0x40000000;
  }

  if (max_magazines > 1)
  {
    if (max_magazines >= 0x40)
    {
      v40 = 64;
    }

    else
    {
      v40 = max_magazines;
    }

    v39 = v40;
  }

  else
  {
    v39 = 1;
  }

  rack_init((pages + 16512), 1, v39, v43);
  rack_init((pages + 17280), 2, v39, v43);
  *(pages + 2357) = malloc_entropy[0];
  *(pages + 26) = 16;
  v38 = 0;
  if (szone_size)
  {
    v38 = szone_size;
  }

  v37 = 0;
  if (v38)
  {
    v37 = v38;
  }

  *(pages + 2) = v37;
  v36 = 0;
  if (szone_malloc)
  {
    v36 = szone_malloc;
  }

  v35 = 0;
  if (v36)
  {
    v35 = v36;
  }

  *(pages + 3) = v35;
  v34 = 0;
  if (szone_calloc)
  {
    v34 = szone_calloc;
  }

  v33 = 0;
  if (v34)
  {
    v33 = v34;
  }

  *(pages + 4) = v33;
  v32 = 0;
  if (szone_valloc)
  {
    v32 = szone_valloc;
  }

  v31 = 0;
  if (v32)
  {
    v31 = v32;
  }

  *(pages + 5) = v31;
  v30 = 0;
  if (szone_free)
  {
    v30 = szone_free;
  }

  v29 = 0;
  if (v30)
  {
    v29 = v30;
  }

  *(pages + 6) = v29;
  v28 = 0;
  if (szone_realloc)
  {
    v28 = szone_realloc;
  }

  v27 = 0;
  if (v28)
  {
    v27 = v28;
  }

  *(pages + 7) = v27;
  v26 = 0;
  if (szone_destroy)
  {
    v26 = szone_destroy;
  }

  v25 = 0;
  if (v26)
  {
    v25 = v26;
  }

  *(pages + 8) = v25;
  v24 = 0;
  if (szone_batch_malloc)
  {
    v24 = szone_batch_malloc;
  }

  v23 = 0;
  if (v24)
  {
    v23 = v24;
  }

  *(pages + 10) = v23;
  v22 = 0;
  if (szone_batch_free)
  {
    v22 = szone_batch_free;
  }

  v21 = 0;
  if (v22)
  {
    v21 = v22;
  }

  *(pages + 11) = v21;
  *(pages + 12) = &szone_introspect;
  v20 = 0;
  if (szone_memalign)
  {
    v20 = szone_memalign;
  }

  v19 = 0;
  if (v20)
  {
    v19 = v20;
  }

  *(pages + 14) = v19;
  v18 = 0;
  if (szone_free_definite_size)
  {
    v18 = szone_free_definite_size;
  }

  v17 = 0;
  if (v18)
  {
    v17 = v18;
  }

  *(pages + 15) = v17;
  v16 = 0;
  if (szone_pressure_relief)
  {
    v16 = szone_pressure_relief;
  }

  v15 = 0;
  if (v16)
  {
    v15 = v16;
  }

  *(pages + 16) = v15;
  v14 = 0;
  if (szone_claimed_address)
  {
    v14 = szone_claimed_address;
  }

  v13 = 0;
  if (v14)
  {
    v13 = v14;
  }

  *(pages + 17) = v13;
  v12 = 0;
  if (szone_try_free_default)
  {
    v12 = szone_try_free_default;
  }

  v11 = 0;
  if (v12)
  {
    v11 = v12;
  }

  *(pages + 18) = v11;
  v10 = 0;
  if (szone_malloc_type_malloc)
  {
    v10 = szone_malloc_type_malloc;
  }

  v9 = 0;
  if (v10)
  {
    v9 = v10;
  }

  *(pages + 20) = v9;
  v8 = 0;
  if (szone_malloc_type_calloc)
  {
    v8 = szone_malloc_type_calloc;
  }

  v7 = 0;
  if (v8)
  {
    v7 = v8;
  }

  *(pages + 21) = v7;
  v6 = 0;
  if (szone_malloc_type_realloc)
  {
    v6 = szone_malloc_type_realloc;
  }

  v5 = 0;
  if (v6)
  {
    v5 = v6;
  }

  *(pages + 22) = v5;
  v4 = 0;
  if (szone_malloc_type_memalign)
  {
    v4 = szone_malloc_type_memalign;
  }

  v3 = 0;
  if (v4)
  {
    v3 = v4;
  }

  *(pages + 23) = v3;
  *pages = 0;
  *(pages + 1) = 0;
  mprotect(pages, 0xC8uLL, 1);
  *(pages + 4098) = v43;
  *(pages + 4704) = 0;
  *(pages + 2048) = -1;
  return pages;
}

void szone_destroy(uint64_t a1)
{
  v6 = a1;
  v5 = 0;
  v4 = 0;
  v2 = 0;
  v3 = 0;
  v5 = *(a1 + 18824);
  while (v5--)
  {
    v4 = *(v6 + 2354) + 24 * v5;
    if (*v4)
    {
      mvm_deallocate_pages(*v4, *(v4 + 8), *(v6 + 4098));
    }
  }

  large_entries_free_no_lock(v6, *(v6 + 2354), *(v6 + 4706), &v2);
  if (v3)
  {
    mvm_deallocate_pages(v2, v3, *(v6 + 4098));
  }

  rack_destroy_regions((v6 + 16512), 0x100000uLL);
  rack_destroy_regions((v6 + 17280), 0x800000uLL);
  rack_destroy((v6 + 16512));
  rack_destroy((v6 + 17280));
  mvm_deallocate_pages(v6, (vm_page_size + 18943) & ~(vm_page_size - 1), 0);
}

uint64_t tiny_region_for_ptr_no_lock(uint64_t a1, uint64_t a2)
{
  v4 = hash_lookup_region_no_lock(*(*(a1 + 24) + 16), **(a1 + 24), *(*(a1 + 24) + 8), a2 & 0xFFFFFFFFFFF00000);
  if (v4)
  {
    return *v4;
  }

  else
  {
    return 0;
  }
}

uint64_t small_region_for_ptr_no_lock(uint64_t a1, uint64_t a2)
{
  v4 = hash_lookup_region_no_lock(*(*(a1 + 24) + 16), **(a1 + 24), *(*(a1 + 24) + 8), a2 & 0xFFFFFFFFFF800000);
  if (v4)
  {
    return *v4;
  }

  else
  {
    return 0;
  }
}

uint64_t hash_lookup_region_no_lock(uint64_t a1, uint64_t a2, char a3, unint64_t a4)
{
  if (!a2)
  {
    return 0;
  }

  v5 = (0x9E3779B97F4A7C55 * (a4 >> 20)) >> (64 - a3);
  do
  {
    if (!*(a1 + 8 * v5))
    {
      return 0;
    }

    if (*(a1 + 8 * v5) == a4)
    {
      return a1 + 8 * v5;
    }

    if (++v5 == a2)
    {
      v5 = 0;
    }
  }

  while (v5 != (0x9E3779B97F4A7C55 * (a4 >> 20)) >> (64 - a3));
  return 0;
}

uint64_t (*reader_or_in_memory_fallback_0(uint64_t a1, unsigned int a2))(unsigned int a1, uint64_t a2, uint64_t a3, void *a4)
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
    JUMPOUT(0x23AC4);
  }

  return _malloc_default_reader_0;
}

uint64_t szone_check_all(uint64_t a1)
{
  if (tiny_check(a1 + 16512, szone_check_counter))
  {
    for (i = 0; i < **(a1 + 17304); ++i)
    {
      v7 = *(*(*(a1 + 17304) + 16) + 8 * i);
      if (v7 != -1 && v7)
      {
        v6 = mag_lock_zine_for_region_trailer(*(a1 + 17904), v7, *(v7 + 24));
        if (!small_check_region(a1 + 17280, v7, i, szone_check_counter))
        {
          v1 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
          v2 = v1;
          atomic_compare_exchange_strong_explicit(v6, &v2, 0, memory_order_release, memory_order_relaxed);
          if (v2 != v1)
          {
            os_unfair_lock_unlock(v6);
          }

          *(a1 + 16392) &= ~0x80000000;
          return 0;
        }

        v3 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
        v4 = v3;
        atomic_compare_exchange_strong_explicit(v6, &v4, 0, memory_order_release, memory_order_relaxed);
        if (v4 != v3)
        {
          os_unfair_lock_unlock(v6);
        }
      }
    }

    for (j = 0; j < 0x1F; ++j)
    {
      if (!small_free_list_check(a1 + 17280, j, szone_check_counter))
      {
        *(a1 + 16392) &= ~0x80000000;
        return 0;
      }
    }

    return 1;
  }

  else
  {
    *(a1 + 16392) &= ~0x80000000;
    return 0;
  }
}

atomic_uint *mag_lock_zine_for_region_trailer(uint64_t a1, uint64_t a2, int a3)
{
  v10 = a3;
  v8 = (a1 + 2560 * a3);
  v3 = 0;
  atomic_compare_exchange_strong_explicit(v8, &v3, *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24), memory_order_acquire, memory_order_acquire);
  if (v3)
  {
    os_unfair_lock_lock_with_options();
  }

  while (1)
  {
    v9 = *(a2 + 24);
    if (v10 == v9)
    {
      break;
    }

    v4 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
    v5 = v4;
    atomic_compare_exchange_strong_explicit(v8, &v5, 0, memory_order_release, memory_order_relaxed);
    if (v5 != v4)
    {
      os_unfair_lock_unlock(v8);
    }

    v10 = v9;
    v8 = (a1 + 2560 * v9);
    v6 = 0;
    atomic_compare_exchange_strong_explicit(v8, &v6, *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24), memory_order_acquire, memory_order_acquire);
    if (v6)
    {
      os_unfair_lock_lock_with_options();
    }
  }

  return v8;
}

uint64_t szone_print(unsigned int a1, int a2, char *a3, unsigned int (*a4)(void, unint64_t, uint64_t, uint64_t *), uint64_t (*a5)(const char *))
{
  v24 = a1;
  v23 = a2;
  v22 = a3;
  v21 = a4;
  v20 = a5;
  i = 0;
  v18 = 0;
  v17 = 0;
  v16 = a3;
  v15 = 0;
  if (a4(a1, a3, 18944, &v15))
  {
    return v20("Failed to read szone structure\n");
  }

  if (!scalable_zone_info_task(v24, v21, v15, v25, 0xDu))
  {
    return v20("Failed to get scalable zone info\n");
  }

  (v20)("Scalable zone %p: inUse=%u(%u) touched=%u allocated=%u flags=0x%x\n", v22, v25[0], v25[1], v25[2], v25[3], v25[12]);
  (v20)("\ttiny=%u(%u) small=%u(%u) large=%u(%u)\n", v25[4], v25[5], v25[6], v25[7], v25[8], v25[9]);
  if (!mach_task_is_self())
  {
    return v20("(unable to safely further examine remote process)\n");
  }

  (v20)("%lu tiny regions:\n", *(v15 + 16520));
  if (*(v15 + 16528))
  {
    (v20)("[%lu tiny regions have been vm_deallocate'd]\n", *(v15 + 16528));
  }

  v14 = 0;
  v13 = 0;
  v12 = 0;
  if (v21(v24, *(v15 + 16536), 32, &v14))
  {
    return v20("Failed to map tiny rack region_generation\n");
  }

  if (v21(v24, v14[2], 8, &v13))
  {
    return v20("Failed to map tiny rack hashed_regions\n");
  }

  if (v21(v24, *(v15 + 17136), 2560 * *(v15 + 17120), &v12))
  {
    return v20("Failed to map tiny rack magazines\n");
  }

  v10 = 0;
  for (i = 0; i < *v14; ++i)
  {
    v18 = *(v13 + 8 * i);
    if (v18 && v18 != -1)
    {
      if (v21(v24, v18, 0x100000, &v17))
      {
        return (v20)("Failed to map region %p\n", v18);
      }

      v9 = *(v17 + 24);
      if (v9 == -1)
      {
        ++v10;
      }

      if (v18 == *(v12 + 2560 * v9 + 2144))
      {
        v7 = *(v12 + 2560 * v9 + 2136);
      }

      else
      {
        v7 = 0;
      }

      if (v18 == *(v12 + 2560 * v9 + 2144))
      {
        print_tiny_region(v24, v21, v20, v23, v18, v7, *(v12 + 2560 * v9 + 2128));
      }

      else
      {
        print_tiny_region(v24, v21, v20, v23, v18, v7, 0);
      }
    }
  }

  if (*(v12 - 408))
  {
    (v20)("Tiny recirc depot: total bytes: %llu, in-use bytes: %llu, allocations: %llu, regions: %d (min # retained regions: %d)\n", *(v12 - 400), *(v12 - 408), *(v12 - 392), v10, recirc_retained_regions);
  }

  else
  {
    v20("Tiny recirc depot is empty\n");
  }

  if (v23)
  {
    print_tiny_free_list(v24, v21, v20, v16 + 16512);
  }

  (v20)("%lu small regions:\n", *(v15 + 17288));
  if (*(v15 + 17296))
  {
    (v20)("[%lu small regions have been vm_deallocate'd]\n", *(v15 + 17296));
  }

  if (v21(v24, *(v15 + 17304), 32, &v14))
  {
    return v20("Failed to map small rack region_generation\n");
  }

  if (v21(v24, v14[2], 8, &v13))
  {
    return v20("Failed to map small rack hashed_regions\n");
  }

  if (v21(v24, *(v15 + 17904), 2560 * *(v15 + 17888), &v12))
  {
    return v20("Failed to map small rack magazines\n");
  }

  v11 = 0;
  for (i = 0; i < *v14; ++i)
  {
    v18 = *(v13 + 8 * i);
    if (v18 && v18 != -1)
    {
      if (v21(v24, v18, 0x800000, &v17))
      {
        return (v20)("Failed to map region %p\n", v18);
      }

      v8 = *(v17 + 24);
      if (v8 == -1)
      {
        ++v11;
      }

      if (v18 == *(v12 + 2560 * v8 + 2144))
      {
        v6 = *(v12 + 2560 * v8 + 2136);
      }

      else
      {
        v6 = 0;
      }

      if (v18 == *(v12 + 2560 * v8 + 2144))
      {
        print_small_region(v24, v21, v20, v15, v23, v18, v6, *(v12 + 2560 * v8 + 2128));
      }

      else
      {
        print_small_region(v24, v21, v20, v15, v23, v18, v6, 0);
      }
    }
  }

  if (*(v12 - 408))
  {
    (v20)("Small recirc depot: total bytes: %llu, in-use bytes: %llu, allocations: %llu, regions: %d (min # retained regions: %d)\n", *(v12 - 400), *(v12 - 408), *(v12 - 392), v11, recirc_retained_regions);
  }

  else
  {
    v20("Small recirc depot is empty\n");
  }

  if (v23)
  {
    print_small_free_list(v24, v21, v20, (v16 + 17280));
  }

  return large_debug_print(v24, v23, v22, v21, v20);
}

uint64_t szone_force_lock_magazine(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  atomic_compare_exchange_strong_explicit((a2 + 4), &v2, *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24), memory_order_acquire, memory_order_acquire);
  if (v2)
  {
    result = os_unfair_lock_lock_with_options();
  }

  v4 = 0;
  atomic_compare_exchange_strong_explicit(a2, &v4, *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24), memory_order_acquire, memory_order_acquire);
  if (v4)
  {
    return os_unfair_lock_lock_with_options();
  }

  return result;
}

void *small_finalize_region(void *result, uint64_t a2)
{
  v9 = result;
  if (*(a2 + 2128))
  {
    v7 = *(a2 + 2144) + 0x800000 - *(a2 + 2128);
    v5 = *(a2 + 2128) >> 9;
    v3 = ((v7 - ((v7 & 0xFFFFFFFFFF800000) + 33280)) >> 9) & 0x3FFF;
    v4 = *&stru_20.segname[2 * (((v7 - 1 - (((v7 - 1) & 0xFFFFFFFFFF800000) + 33280)) >> 9) & 0x3FFF) + ((v7 - 1) & 0xFFFFFFFFFF800000)] & 0x7FFF;
    if (v3)
    {
      if (v4 <= v3)
      {
        v6 = v7 - (v4 << 9);
        if ((*&stru_20.segname[2 * (((v6 - ((v6 & 0xFFFFFFFFFF800000) + 33280)) >> 9) & 0x3FFF) + (v6 & 0xFFFFFFFFFF800000)] & 0x8000) != 0)
        {
          v2 = small_free_list_find_by_ptr(result, a2, v6, v4);
          small_free_list_remove_ptr(v9, a2, v2, v4);
          v7 -= v4 << 9;
          v5 += v4;
        }
      }
    }

    result = small_free_list_add_ptr(v9, a2, v7, v5);
    *(a2 + 2128) = 0;
  }

  *(a2 + 2144) = 0;
  return result;
}

uint64_t small_free_list_find_by_ptr(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int16 a4)
{
  if (*&stru_20.segname[2 * (((a3 - ((a3 & 0xFFFFFFFFFF800000) + 33280)) >> 9) & 0x3FFF) + (a3 & 0xFFFFFFFFFF800000)] != (a4 | 0x8000))
  {
    malloc_zone_error(*(a1 + 620), 1, "small_free_list_find_by_ptr: ptr is not free (ptr metadata !SMALL_IS_FREE), ptr=%p msize=%d metadata=0x%x\n", a3, a4, *&stru_20.segname[2 * (((a3 - ((a3 & 0xFFFFFFFFFF800000) + 33280)) >> 9) & 0x3FFF) + (a3 & 0xFFFFFFFFFF800000)]);
    __break(1u);
    JUMPOUT(0x24FE4);
  }

  if (small_needs_oob_free_entry(a3, a4))
  {
    v6 = a3 & 0xFFFFFFFFFF800000;
    for (i = 0; i < 0x21; ++i)
    {
      if (*(&loc_7FA4 + 18 * i + (a3 & 0xFFFFFFFFFF800000) + 18) && small_oob_free_entry_get_ptr(v6 + 32678 + 18 * i) == a3)
      {
        return v6 + 32678 + 18 * i;
      }
    }
  }

  return a3;
}

void *small_free_list_add_ptr(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int16 a4)
{
  if (a4 > 0x1Fu)
  {
    v5 = 30;
  }

  else
  {
    v5 = a4 - 1;
  }

  v6 = *(a2 + 32 + 8 * v5);
  v10 = small_free_list_from_ptr(a1, a3, a4);
  small_free_list_set_previous(a1, v10, 0);
  small_free_list_set_next(a1, v10, v6);
  small_free_mark_free(a1, v10, a4);
  if (small_free_list_get_ptr(v6))
  {
    small_free_list_set_previous(a1, v6, v10);
  }

  else
  {
    *(a2 + 2088 + 4 * (v5 >> 5)) |= 1 << (v5 & 0x1F);
  }

  *(a2 + 32 + 8 * v5) = v10;
  return v10;
}

uint64_t small_free_detach_region(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = a3 + 33280;
  v9 = a3 + 0x800000;
  v8 = 0;
  v7 = ((a3 + 33280) & 0xFFFFFFFFFF800000) + 40;
  while (v10 < v9)
  {
    v6 = *(v7 + 2 * (((v10 - ((v10 & 0xFFFFFFFFFF800000) + 33280)) >> 9) & 0x3FFF));
    v5 = v6 & 0x7FFF;
    if ((v6 & 0x7FFF) == 0)
    {
      break;
    }

    if (v6 < 0)
    {
      v3 = small_free_list_find_by_ptr(a1, a2, v10, v5);
      small_free_list_remove_ptr_no_clear(a1, a2, v3, v5);
    }

    else
    {
      ++v8;
    }

    v10 += v5 << 9;
  }

  return v8;
}

uint64_t small_free_list_remove_ptr_no_clear(uint64_t a1, uint64_t a2, unsigned __int8 *a3, unsigned __int16 a4)
{
  if (a4 > 0x1Fu)
  {
    v13 = 30;
  }

  else
  {
    v13 = a4 - 1;
  }

  previous = small_free_list_get_previous(a1, a3);
  next = small_free_list_get_next(a1, a3);
  if (small_free_list_get_ptr(previous))
  {
    v15 = small_free_list_get_next(a1, previous);
    ptr = small_free_list_get_ptr(v15);
    if (ptr != small_free_list_get_ptr(a3))
    {
      v11 = *(a1 + 620);
      v10 = small_free_list_get_ptr(a3);
      v4 = small_free_list_get_ptr(v15);
      malloc_zone_error(v11, 1, "small_free_list_remove_ptr_no_clear: Internal invariant broken (next ptr of prev) for %p, prev_next=%p\n", v10, v4);
      __break(1u);
    }

    small_free_list_set_next(a1, previous, next);
  }

  else
  {
    *(a2 + 32 + 8 * v13) = next;
    if (!small_free_list_get_ptr(next))
    {
      *(a2 + 2088 + 4 * (v13 >> 5)) &= ~(1 << (v13 & 0x1F));
    }
  }

  if (small_free_list_get_ptr(next))
  {
    v14 = small_free_list_get_previous(a1, next);
    v9 = small_free_list_get_ptr(v14);
    if (v9 != small_free_list_get_ptr(a3))
    {
      v8 = *(a1 + 620);
      v7 = small_free_list_get_ptr(a3);
      v5 = small_free_list_get_ptr(v14);
      malloc_zone_error(v8, 1, "small_free_list_remove_ptr_no_clear: Internal invariant broken (prev ptr of next) for %p, next_prev=%p\n", v7, v5);
      __break(1u);
    }

    small_free_list_set_previous(a1, next, previous);
  }

  result = small_is_oob_free_entry(a3);
  if (result)
  {
    return small_oob_free_entry_set_free(a3);
  }

  return result;
}

uint64_t small_free_reattach_region(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a3 + 33280;
  v8 = a3 + 0x800000;
  v7 = 0;
  v6 = ((a3 + 33280) & 0xFFFFFFFFFF800000) + 40;
  while (v9 < v8)
  {
    v5 = *(v6 + 2 * (((v9 - ((v9 & 0xFFFFFFFFFF800000) + 33280)) >> 9) & 0x3FFF));
    v4 = v5 & 0x7FFF;
    if ((v5 & 0x7FFF) == 0)
    {
      break;
    }

    if (v5 < 0)
    {
      small_free_list_add_ptr(a1, a2, v9, v4);
    }

    else
    {
      v7 += v4 << 9;
    }

    v9 += v4 << 9;
  }

  return v7;
}

void small_free_scan_madvise_free(uint64_t a1, os_unfair_lock_s *a2, uint64_t a3)
{
  v34 = a1;
  v33 = a2;
  v32 = a3;
  v31 = a3 + 33280;
  v30 = a3 + 33280;
  v29 = a3 + 0x800000;
  v28 = (a3 + 33280) & 0xFFFFFFFFFF800000 | 0x28;
  v27 = v8;
  v13 = &v8[-((4 * ((vm_kernel_page_size + 8355327) >> vm_kernel_page_shift >> 1) + 15) & 0xFFFFFFFFFFFFFFF0)];
  v26 = (vm_kernel_page_size + 8355327) >> vm_kernel_page_shift >> 1;
  v25 = 0;
  while (v30 < v29)
  {
    v24 = ((v30 - 33280) >> 9) & 0x3FFF;
    v23 = *(v28 + 2 * v24);
    v22 = v23 & 0x8000;
    v21 = v23 & 0x7FFF;
    if (v23 < 0 && !v21 && v30 == v31)
    {
      v20 = (v31 + vm_kernel_page_mask + 10) & ~vm_kernel_page_mask;
      v19 = (v31 + 8388606) & ~vm_kernel_page_mask;
      if (v20 < v19)
      {
        v3 = v13;
        *&v13[4 * v25] = (v20 - v31) >> vm_kernel_page_shift;
        *&v3[4 * v25++ + 2] = (v19 - v20) >> vm_kernel_page_shift;
      }

      break;
    }

    if (!v21)
    {
      break;
    }

    if (v22)
    {
      v18 = (v30 + vm_kernel_page_mask + 10) & ~vm_kernel_page_mask;
      v17 = (v30 + (v21 << 9) - 2) & ~vm_kernel_page_mask;
      if (v18 < v17)
      {
        v4 = v13;
        *&v13[4 * v25] = (v18 - v32) >> vm_kernel_page_shift;
        *&v4[4 * v25++ + 2] = (v17 - v18) >> vm_kernel_page_shift;
      }
    }

    v30 += v21 << 9;
  }

  if (v25 >= 1)
  {
    i = 0;
    v35 = v32 + 28;
    v47 = 1;
    v46 = v32 + 28;
    v45 = 1;
    add = atomic_fetch_add((v32 + 28), 1u);
    v36 = v33;
    v39 = v33;
    v53 = v33;
    v54 = 3;
    v55 = 3;
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v52 = *(StatusReg + 24);
    v51 = 0;
    v50 = v52;
    v49 = 0;
    v5 = v52;
    v6 = v52;
    atomic_compare_exchange_strong_explicit(v33, &v6, 0, memory_order_release, memory_order_relaxed);
    v11 = v6;
    v12 = v6 == v5;
    if (v6 != v5)
    {
      v50 = v11;
    }

    v48 = v12;
    if (!v12)
    {
      os_unfair_lock_unlock(v53);
    }

    for (i = 0; i < v25; ++i)
    {
      v15 = (v32 + (*&v13[4 * i] << vm_kernel_page_shift));
      v14 = *&v13[4 * i + 2] << vm_kernel_page_shift;
      mvm_madvise_free(v34, v32, v15, &v15[v14], 0, *(v34 + 620) & 0x20);
    }

    v37 = v33;
    v40 = v33;
    v63 = v33;
    v62 = 327680;
    v64 = 3;
    v65 = 3;
    v66 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v61 = *(v66 + 24);
    v60 = 0;
    v59 = v61;
    v58 = v61;
    v7 = 0;
    atomic_compare_exchange_strong_explicit(v33, &v7, v61, memory_order_acquire, memory_order_acquire);
    v9 = v7;
    v10 = v7 == 0;
    if (v7)
    {
      v60 = v9;
    }

    v57 = v10;
    if (!v10)
    {
      os_unfair_lock_lock_with_options();
    }

    v38 = v32 + 28;
    v43 = -1;
    v42 = v32 + 28;
    v41 = -1;
    atomic_fetch_add((v32 + 28), 0xFFFFFFFF);
  }
}

unint64_t small_memalign(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = (a4 + 511) >> 9;
  should_clear = small_malloc_should_clear(a1 + 17280, v17, 0);
  if (!should_clear)
  {
    return 0;
  }

  if ((should_clear & (a2 - 1)) != 0)
  {
    v9 = a2 - (should_clear & (a2 - 1));
  }

  else
  {
    v9 = 0;
  }

  v15 = (a3 + 511) >> 9;
  v14 = (v9 + 511) >> 9;
  v13 = v17 - v15 - v14;
  if (v14)
  {
    v12 = mag_lock_zine_for_region_trailer_0(*(a1 + 17904), should_clear & 0xFFFFFFFFFF800000, *(&dword_18 + (should_clear & 0xFFFFFFFFFF800000)));
    small_meta_header_set_in_use((should_clear & 0xFFFFFFFFFF800000) + 40, ((should_clear - ((should_clear & 0xFFFFFFFFFF800000) + 33280)) >> 9) & 0x3FFF, v14);
    small_meta_header_set_in_use(((should_clear + v9) & 0xFFFFFFFFFF800000) + 40, ((should_clear + v9 - (((should_clear + v9) & 0xFFFFFFFFFF800000) + 33280)) >> 9) & 0x3FFF, v17 - v14);
    ++*(v12 + 542);
    v4 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
    v5 = v4;
    atomic_compare_exchange_strong_explicit(v12, &v5, 0, memory_order_release, memory_order_relaxed);
    if (v5 != v4)
    {
      os_unfair_lock_unlock(v12);
    }

    free_small(a1 + 17280, should_clear, (should_clear & 0xFFFFFFFFFF800000), v14 << 9);
    should_clear += v9;
  }

  if (v13)
  {
    v11 = should_clear + (v15 << 9);
    v10 = mag_lock_zine_for_region_trailer_0(*(a1 + 17904), should_clear & 0xFFFFFFFFFF800000, *(&dword_18 + (should_clear & 0xFFFFFFFFFF800000)));
    small_meta_header_set_in_use((should_clear & 0xFFFFFFFFFF800000) + 40, ((should_clear - ((should_clear & 0xFFFFFFFFFF800000) + 33280)) >> 9) & 0x3FFF, v15);
    small_meta_header_set_in_use((v11 & 0xFFFFFFFFFF800000) + 40, ((v11 - ((v11 & 0xFFFFFFFFFF800000) + 33280)) >> 9) & 0x3FFF, v13);
    ++*(v10 + 542);
    v6 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
    v7 = v6;
    atomic_compare_exchange_strong_explicit(v10, &v7, 0, memory_order_release, memory_order_relaxed);
    if (v7 != v6)
    {
      os_unfair_lock_unlock(v10);
    }

    free_small(a1 + 17280, v11, (v11 & 0xFFFFFFFFFF800000), v13 << 9);
  }

  return should_clear;
}

unint64_t small_malloc_should_clear(uint64_t a1, unsigned __int16 a2, int a3)
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

    if (a3)
    {
      _platform_memset();
    }

    return v33;
  }

  else
  {
    while (1)
    {
      v34 = small_malloc_from_free_list(a1, v31, v32, a2);
      if (v34)
      {
        v6 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
        v7 = v6;
        atomic_compare_exchange_strong_explicit(v31, &v7, 0, memory_order_release, memory_order_relaxed);
        if (v7 != v6)
        {
          os_unfair_lock_unlock(v31);
        }

        if (a3)
        {
          _platform_memset();
        }

        return v34;
      }

      if (small_get_region_from_depot(a1, v31, v32, a2))
      {
        v35 = small_malloc_from_free_list(a1, v31, v32, a2);
        if (v35)
        {
          v8 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
          v9 = v8;
          atomic_compare_exchange_strong_explicit(v31, &v9, 0, memory_order_release, memory_order_relaxed);
          if (v9 != v8)
          {
            os_unfair_lock_unlock(v31);
          }

          if (a3)
          {
            _platform_memset();
          }

          return v35;
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
      pages = mvm_allocate_pages(0x800000uLL, 0x17u, *(a1 + 620) & 0xFFFFFFFE, 2);
    }

    else
    {
      pages = mvm_allocate_pages(0x800000uLL, 0x17u, *(a1 + 620) & 0xFFFFFFFC, 2);
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
      region_set_cookie((v30 + 33276));
      v36 = small_malloc_from_region_no_lock(a1, v31, v32, a2, v30);
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

      return v36;
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

atomic_uint *mag_lock_zine_for_region_trailer_0(uint64_t a1, uint64_t a2, int a3)
{
  v10 = a3;
  v8 = (a1 + 2560 * a3);
  v3 = 0;
  atomic_compare_exchange_strong_explicit(v8, &v3, *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24), memory_order_acquire, memory_order_acquire);
  if (v3)
  {
    os_unfair_lock_lock_with_options();
  }

  while (1)
  {
    v9 = *(a2 + 24);
    if (v10 == v9)
    {
      break;
    }

    v4 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
    v5 = v4;
    atomic_compare_exchange_strong_explicit(v8, &v5, 0, memory_order_release, memory_order_relaxed);
    if (v5 != v4)
    {
      os_unfair_lock_unlock(v8);
    }

    v10 = v9;
    v8 = (a1 + 2560 * v9);
    v6 = 0;
    atomic_compare_exchange_strong_explicit(v8, &v6, *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24), memory_order_acquire, memory_order_acquire);
    if (v6)
    {
      os_unfair_lock_lock_with_options();
    }
  }

  return v8;
}

void free_small(uint64_t a1, unint64_t a2, _DWORD *a3, uint64_t a4)
{
  v22 = a2;
  v19 = *(&dword_18 + (a2 & 0xFFFFFFFFFF800000));
  v18 = *(a1 + 624) + 2560 * v19;
  if (a4)
  {
    v20 = (a4 + 511) >> 9;
  }

  else
  {
    v20 = *&stru_20.segname[2 * (((a2 - ((a2 & 0xFFFFFFFFFF800000) + 33280)) >> 9) & 0x3FFF) + (a2 & 0xFFFFFFFFFF800000)] & 0x7FFF;
    if ((*&stru_20.segname[2 * (((a2 - ((a2 & 0xFFFFFFFFFF800000) + 33280)) >> 9) & 0x3FFF) + (a2 & 0xFFFFFFFFFF800000)] & 0x8000) != 0)
    {
LABEL_4:
      free_small_botch(a1, v22);
      return;
    }
  }

  v4 = 0;
  atomic_compare_exchange_strong_explicit(v18, &v4, *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24), memory_order_acquire, memory_order_acquire);
  if (v4)
  {
    os_unfair_lock_lock_with_options();
  }

  if (v19 != -1)
  {
    v17 = *(v18 + 8);
    v16 = *(v18 + 16);
    v15 = *(v18 + 24);
    if (v22 == v17)
    {
      v5 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
      v6 = v5;
      atomic_compare_exchange_strong_explicit(v18, &v6, 0, memory_order_release, memory_order_relaxed);
      if (v6 != v5)
      {
        os_unfair_lock_unlock(v18);
      }

      goto LABEL_4;
    }

    if ((*(a1 + 620) & 0x20) != 0 && v20)
    {
      _platform_memset();
    }

    *(v18 + 8) = v22;
    *(v18 + 16) = v20;
    *(v18 + 24) = a3;
    if (!v17)
    {
      v7 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
      v8 = v7;
      atomic_compare_exchange_strong_explicit(v18, &v8, 0, memory_order_release, memory_order_relaxed);
      if (v8 != v7)
      {
        os_unfair_lock_unlock(v18);
      }

      return;
    }

    v20 = v16;
    v22 = v17;
    a3 = v15;
  }

  while (1)
  {
    v14 = a3[6];
    if (v19 == v14)
    {
      break;
    }

    v9 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
    v10 = v9;
    atomic_compare_exchange_strong_explicit(v18, &v10, 0, memory_order_release, memory_order_relaxed);
    if (v10 != v9)
    {
      os_unfair_lock_unlock(v18);
    }

    v19 = v14;
    v18 = *(a1 + 624) + 2560 * v14;
    v11 = 0;
    atomic_compare_exchange_strong_explicit(v18, &v11, *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24), memory_order_acquire, memory_order_acquire);
    if (v11)
    {
      os_unfair_lock_lock_with_options();
    }
  }

  if (small_free_no_lock(a1, v18, v19, a3, v22, v20))
  {
    v12 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
    v13 = v12;
    atomic_compare_exchange_strong_explicit(v18, &v13, 0, memory_order_release, memory_order_relaxed);
    if (v13 != v12)
    {
      os_unfair_lock_unlock(v18);
    }
  }
}

BOOL small_claimed_address(uint64_t a1, unint64_t a2)
{
  v4 = small_region_for_ptr_no_lock(a1, a2);
  v3 = 0;
  if (v4)
  {
    v3 = 0;
    if (a2 >= v4 + 33280)
    {
      return a2 < v4 + 0x800000;
    }
  }

  return v3;
}

uint64_t small_try_shrink_in_place(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v10 = a4 >> 9;
  v9 = (a3 >> 9) - v10;
  if (v9)
  {
    v8 = a2 + (v10 << 9);
    v7 = mag_lock_zine_for_region_trailer_0(*(a1 + 624), a2 & 0xFFFFFFFFFF800000, *(&dword_18 + (a2 & 0xFFFFFFFFFF800000)));
    small_meta_header_set_in_use((a2 & 0xFFFFFFFFFF800000) + 40, ((a2 - ((a2 & 0xFFFFFFFFFF800000) + 33280)) >> 9) & 0x3FFF, v10);
    small_meta_header_set_in_use((v8 & 0xFFFFFFFFFF800000) + 40, ((v8 - ((v8 & 0xFFFFFFFFFF800000) + 33280)) >> 9) & 0x3FFF, v9);
    ++*(v7 + 542);
    v4 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
    v5 = v4;
    atomic_compare_exchange_strong_explicit(v7, &v5, 0, memory_order_release, memory_order_relaxed);
    if (v5 != v4)
    {
      os_unfair_lock_unlock(v7);
    }

    free_small(a1, v8, (v8 & 0xFFFFFFFFFF800000), 0);
  }

  return a2;
}

uint64_t small_try_realloc_in_place(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v27 = (a2 & 0xFFFFFFFFFF800000) + 40;
  v26 = ((a2 - ((a2 & 0xFFFFFFFFFF800000) + 33280)) >> 9) & 0x3FFF;
  v25 = a3 >> 9;
  v24 = (a4 + 511) >> 9;
  v23 = (((a2 - ((a2 & 0xFFFFFFFFFF800000) + 33280)) >> 9) & 0x3FFF) + v25;
  if (v23 >= 0x3FBF)
  {
    return 0;
  }

  v22 = a2 + a3;
  v4 = mag_lock_zine_for_region_trailer_0(*(a1 + 624), a2 & 0xFFFFFFFFFF800000, *(&dword_18 + (a2 & 0xFFFFFFFFFF800000)));
  v18 = v4;
  if (*(&dword_18 + (a2 & 0xFFFFFFFFFF800000)) == -1)
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

  v17 = v24 - v25;
  v16 = *(v4 + 8);
  if (*(v4 + 1) == v22 && v25 + v16 >= v24)
  {
    if (v16 == v17)
    {
      *(v4 + 1) = 0;
      *(v4 + 8) = 0;
      *(v4 + 3) = 0;
    }

    else
    {
      *(v4 + 8) -= v17;
      *(v4 + 1) += a4 - a3;
      small_meta_header_set_in_use(v27, v26 + v24, v16 - v17);
    }

    small_meta_header_set_in_use(v27, v26, v24);
    small_meta_header_set_middle(v27, v23);
    goto LABEL_30;
  }

  if (*(v4 + 268) == (a2 & 0xFFFFFFFFFF800000) && v17 < (*(v4 + 266) >> 9) && (a2 & 0xFFFFFFFFFF800000) + 0x800000 - *(v4 + 266) == a2 + a3)
  {
    small_meta_header_set_in_use(v27, v26, v24);
    small_meta_header_set_middle(v27, v23);
    *(v18 + 2128) -= v17 << 9;
    small_meta_header_set_in_use(v27, v26 + v24, *(v18 + 2128) >> 9);
LABEL_30:
    *(v18 + 2152) += (v24 - v25) << 9;
    v14 = *(dword_10 + (a2 & 0xFFFFFFFFFF800000)) + ((v24 - v25) << 9);
    *(dword_10 + (a2 & 0xFFFFFFFFFF800000)) = v14;
    if (v14 >= 0x5F9E80)
    {
      *(&stru_20.cmd + (a2 & 0xFFFFFFFFFF800000)) = 0;
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

  v21 = *(v27 + 2 * v23);
  if (v21 < 0)
  {
    v20 = v21 & 0x7FFF;
    if (v25 + (v21 & 0x7FFF) >= v24)
    {
      v15 = small_free_list_find_by_ptr(a1, v4, v22, v20);
      small_free_list_remove_ptr(a1, v18, v15, v20);
      small_meta_header_set_middle(v27, v23);
      v19 = v25 + v20 - v24;
      if (v19)
      {
        small_free_list_add_ptr(a1, v18, a2 + (v24 << 9), v19);
      }

      small_meta_header_set_in_use(v27, v26, v24);
      goto LABEL_30;
    }

    v9 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
    v10 = v9;
    atomic_compare_exchange_strong_explicit(v4, &v10, 0, memory_order_release, memory_order_relaxed);
    if (v10 != v9)
    {
      os_unfair_lock_unlock(v4);
    }

    return 0;
  }

  else
  {
    v7 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
    v8 = v7;
    atomic_compare_exchange_strong_explicit(v4, &v8, 0, memory_order_release, memory_order_relaxed);
    if (v8 != v7)
    {
      os_unfair_lock_unlock(v4);
    }

    return 0;
  }
}

uint64_t small_check_region(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v36 = a1;
  v35 = a2;
  v34 = a3;
  v33 = a4;
  v32 = a2 + 33280;
  v31 = ((a2 + 33280) & 0xFFFFFFFFFF800000) + 40;
  v30 = (a2 + 0x800000);
  v29 = 0;
  v28 = 0;
  v27 = 0;
  v26 = 0;
  v25 = 0;
  v24 = 0;
  v23 = 0;
  v22 = 0;
  v21 = *(&dword_18 + ((a2 + 33280) & 0xFFFFFFFFFF800000));
  v20 = (*(a1 + 624) + 2560 * v21);
  if (a2 == v20[268])
  {
    v32 += v20[267];
    v30 -= v20[266];
  }

  while (v32 < v30)
  {
    v4 = (v32 & 0xFFFFFFFFFF800000) + 33280;
    v28 = ((v32 - v4) >> 9) & 0x3FFF;
    v27 = *(v31 + 2 * (((v32 - v4) >> 9) & 0x3FFF));
    if ((v27 & 0x8000) != 0)
    {
      v26 = v27 & 0x7FFF;
      v19 = v32;
      v25 = v32;
      v22 = (v32 + ((v27 & 0x7FFF) << 9));
      if ((v27 & 0x7FFF) == 0)
      {
        malloc_zone_check_fail(small_check_fail_msg[0], "%ld, counter=%d\n*** invariant broken for free block %p this msize=%d\n", v34, v33, v32, 0);
        return 0;
      }

      if (small_needs_oob_free_entry(v32, v26))
      {
        ptr = small_oob_free_find_ptr(v32);
        if (ptr)
        {
          v25 = ptr;
        }
      }

      previous = small_free_list_get_previous(v36, v25);
      v24 = previous;
      next = small_free_list_get_next(v36, v25);
      v23 = next;
      if (previous)
      {
        v14 = (small_free_list_get_ptr(v24) & 0xFFFFFFFFFF800000) + 40;
        v15 = small_free_list_get_ptr(v24);
        if ((*(v14 + 2 * (((v15 - ((small_free_list_get_ptr(v24) & 0xFFFFFFFFFF800000) + 33280)) >> 9) & 0x3FFF)) & 0x8000) == 0)
        {
          v13 = small_check_fail_msg[0];
          v5 = small_free_list_get_ptr(v24);
          malloc_zone_check_fail(v13, "%ld, counter=%d\n*** invariant broken for %p (previous %p is not a free pointer)\n", v34, v33, v32, v5);
          return 0;
        }
      }

      if (v23)
      {
        v11 = (small_free_list_get_ptr(v23) & 0xFFFFFFFFFF800000) + 40;
        v12 = small_free_list_get_ptr(v23);
        if ((*(v11 + 2 * (((v12 - ((small_free_list_get_ptr(v23) & 0xFFFFFFFFFF800000) + 33280)) >> 9) & 0x3FFF)) & 0x8000) == 0)
        {
          v10 = small_check_fail_msg[0];
          v6 = small_free_list_get_ptr(v23);
          malloc_zone_check_fail(v10, "%ld, counter=%d\n*** invariant broken for %p (next %p is not a free pointer)\n", v34, v33, v32, v6);
          return 0;
        }
      }

      if ((*&stru_20.segname[2 * ((&v22[-((v22 - 2) & 0xFFFFFFFFFF800000) - 33282] >> 9) & 0x3FFF) + ((v22 - 2) & 0xFFFFFFFFFF800000)] & 0x7FFF) != v26)
      {
        v7 = *&stru_20.segname[2 * ((&v22[-((v22 - 2) & 0xFFFFFFFFFF800000) - 33282] >> 9) & 0x3FFF) + ((v22 - 2) & 0xFFFFFFFFFF800000)] & 0x7FFF;
        v9[9] = v9;
        malloc_zone_check_fail(small_check_fail_msg[0], "%ld, counter=%d\n*** invariant broken for small free %p followed by %p in region [%p-%p] (end marker incorrect) should be %d; in fact %d\n", v34, v33, v32, v22, (v35 + 33280), v30, v26, v7);
        return 0;
      }

      v32 = v22;
      v29 = 0x8000;
    }

    else
    {
      v26 = v27;
      if (!v27)
      {
        malloc_zone_check_fail(small_check_fail_msg[0], "%ld, counter=%d\n*** invariant broken: null msize ptr=%p num_small_regions=%d end=%p\n", v34, v33, v32, *(v36 + 8), v30);
        return 0;
      }

      v32 += v26 << 9;
      v29 = 0;
    }
  }

  return 1;
}

BOOL small_needs_oob_free_entry(uint64_t a1, unsigned __int16 a2)
{
  v3 = 0;
  if ((a1 & ~(vm_page_size - 1)) == a1)
  {
    return a2 << 9 >= vm_kernel_page_size;
  }

  return v3;
}

unint64_t small_oob_free_find_ptr(uint64_t a1)
{
  v3 = a1 & 0xFFFFFFFFFF800000;
  for (i = 0; i < 0x21; ++i)
  {
    if (small_oob_free_entry_get_ptr(v3 + 32678 + 18 * i) == a1 && (*(v3 + 32678 + 18 * i + 16) & 0x8000) != 0)
    {
      return v3 + 32678 + 18 * i;
    }
  }

  return 0;
}

uint64_t small_free_list_get_previous(uint64_t a1, unsigned __int8 *a2)
{
  if (!a2)
  {
    __break(1u);
    JUMPOUT(0x28A64);
  }

  if (small_is_oob_free_entry(a2))
  {
    return small_oob_free_entry_get_previous(a2);
  }

  else
  {
    return small_inplace_free_entry_get_previous(a1, a2);
  }
}

uint64_t small_free_list_get_next(uint64_t a1, unint64_t a2)
{
  if (!a2)
  {
    __break(1u);
    JUMPOUT(0x28ADCLL);
  }

  if (small_is_oob_free_entry(a2))
  {
    return small_oob_free_entry_get_next(a2);
  }

  else
  {
    return small_inplace_free_entry_get_next(a1, a2);
  }
}

unint64_t small_free_list_get_ptr(unint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  if (small_is_oob_free_entry(a1))
  {
    return small_oob_free_entry_get_ptr(a1);
  }

  return a1;
}

uint64_t small_in_use_enumerator(unsigned int a1, uint64_t a2, int a3, uint64_t a4, uint64_t (*a5)(void, unint64_t, unint64_t, uint64_t *), void (*a6)(void, uint64_t, uint64_t, uint64_t *, uint64_t))
{
  v38 = a1;
  v37 = a2;
  v36 = a3;
  v35 = a4;
  v34 = a5;
  v33 = a6;
  v32 = 0;
  i = 0;
  v30 = 0;
  v29 = 0;
  v28 = 0;
  v27 = 0;
  v25 = 0;
  v26 = 0;
  v23 = 0;
  v24 = 0;
  v21 = 0;
  v22 = 0;
  v20 = 0;
  v19 = 0;
  v18 = 0;
  v17 = 0;
  v16 = 0;
  v15 = 0;
  v14 = 0;
  v13 = 0;
  v28 = a5(a1, *(a4 + 17304), 32uLL, &v13);
  if (v28)
  {
    return v28;
  }

  else
  {
    v32 = *v13;
    v28 = v34(v38, v13[2], 8 * v32, &v30);
    if (v28)
    {
      return v28;
    }

    else if ((v36 & 1) != 0 && (v28 = v34(v38, *(v35 + 17904), 2560 * *(v35 + 17888), &v14)) != 0)
    {
      return v28;
    }

    else
    {
      for (i = 0; i < v32; ++i)
      {
        v27 = *(v30 + 8 * i);
        if (v27 && v27 != -1)
        {
          v25 = v27 + 33280;
          v26 = 8355328;
          if ((v36 & 4) != 0)
          {
            v23 = v27;
            v24 = 32678;
            v33(v38, v37, 4, &v23, 1);
          }

          if ((v36 & 6) != 0)
          {
            v21 = v25;
            v22 = 8355328;
            v33(v38, v37, 2, &v21, 1);
          }

          if (v36)
          {
            v28 = v34(v38, v27, 0x800000uLL, &v20);
            if (v28)
            {
              return v28;
            }

            v10 = (v14 + 2560 * *(v20 + 24));
            v9 = 0;
            for (j = 0; j < *(v35 + 17888); ++j)
            {
              if (v27 == *(v14 + 2560 * j + 24))
              {
                ++v9;
              }
            }

            v19 = v20 + 40;
            v18 = 0;
            v17 = 16319;
            if (v27 == v10[268])
            {
              v18 += v10[267] >> 9;
              v17 -= v10[266] >> 9;
            }

            while (v18 < v17)
            {
              v16 = *(v19 + 2 * v18);
              v15 = v16 & 0x7FFF;
              if ((v16 & 0x7FFF) == 0)
              {
                return 5;
              }

              if ((v16 & 0x8000) == 0)
              {
                v8 = v27 + 33280 + (v18 << 9);
                v7 = 0;
                if (v9)
                {
                  for (k = 0; k < *(v35 + 17888); ++k)
                  {
                    if (v8 == *(v14 + 2560 * k + 8))
                    {
                      v7 = 1;
                      --v9;
                      break;
                    }
                  }
                }

                if (!v7)
                {
                  *&v40[v29] = v8;
                  *(&v40[v29++] + 1) = v15 << 9;
                  if (v29 >= 0x100)
                  {
                    v33(v38, v37, 1, v40, v29);
                    v29 = 0;
                  }
                }
              }

              v18 += v15;
            }

            if (v29)
            {
              v33(v38, v37, 1, v40, v29);
              v29 = 0;
            }
          }
        }
      }

      return 0;
    }
  }
}

unint64_t small_malloc_from_free_list(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int16 a4)
{
  if (a4 > 0x1Fu)
  {
    v5 = 30;
  }

  else
  {
    v5 = a4 - 1;
  }

  v12 = a2 + 32;
  v11 = (a2 + 32 + 8 * v5);
  if (small_free_list_get_ptr(*v11))
  {
    ptr = small_free_list_get_ptr(*v11);
    v14 = a4;
    small_free_list_remove_ptr(a1, a2, *v11, a4);
  }

  else
  {
    v8 = v5 >> 5;
    v10 = 0;
    for (i = ~((1 << (v5 & 0x1F)) - 1); !v8; i = -1)
    {
      v10 = *(a2 + 2088) & i;
      if (v10)
      {
        break;
      }

      v8 = 1;
    }

    if ((v10 || v8 != 1) && (v13 = (v12 + 8 * (__clz(__rbit32(v10)) + 32 * v8)), (ptr = small_free_list_get_ptr(*v13)) != 0))
    {
      v14 = *&stru_20.segname[2 * (((ptr - ((ptr & 0xFFFFFFFFFF800000) + 33280)) >> 9) & 0x3FFF) + (ptr & 0xFFFFFFFFFF800000)] & 0x7FFF;
      small_free_list_remove_ptr(a1, a2, *v13, v14);
      if (v14 > a4)
      {
        small_free_list_add_ptr(a1, a2, ptr + (a4 << 9), v14 - a4);
        v14 = a4;
      }
    }

    else
    {
      if (*(a2 + 2128) < (a4 << 9))
      {
        return 0;
      }

      ptr = *(a2 + 2144) + 0x800000 - *(a2 + 2128);
      *(a2 + 2128) -= a4 << 9;
      if (*(a2 + 2128))
      {
        small_meta_header_set_in_use((ptr & 0xFFFFFFFFFF800000) + 40, ((ptr + (a4 << 9) - (((ptr + (a4 << 9)) & 0xFFFFFFFFFF800000) + 33280)) >> 9) & 0x3FFF, *(a2 + 2128) >> 9);
      }

      v14 = a4;
    }
  }

  ++*(a2 + 2168);
  *(a2 + 2152) += v14 << 9;
  region_check_cookie((ptr & 0xFFFFFFFFFF800000), ((ptr & 0xFFFFFFFFFF800000) + 33276));
  v6 = *(dword_10 + (ptr & 0xFFFFFFFFFF800000)) + (v14 << 9);
  *(dword_10 + (ptr & 0xFFFFFFFFFF800000)) = v6;
  if (v6 >= 0x5F9E80)
  {
    *(&stru_20.cmd + (ptr & 0xFFFFFFFFFF800000)) = 0;
  }

  small_meta_header_set_in_use((ptr & 0xFFFFFFFFFF800000) + 40, ((ptr - ((ptr & 0xFFFFFFFFFF800000) + 33280)) >> 9) & 0x3FFF, v14);
  return ptr;
}

uint64_t small_get_region_from_depot(uint64_t a1, uint64_t a2, int a3, unsigned __int16 a4)
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
    msize_region = small_find_msize_region(a1, v16, 0xFFFFFFFFLL, v14);
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

    if (++v14 > 0x1Eu)
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
  v13 = small_free_detach_region(a1, v16, msize_region);
  *(msize_region + 24) = a3;
  if (*(msize_region + 28))
  {
    __break(1u);
    JUMPOUT(0x299FCLL);
  }

  v12 = small_free_reattach_region(a1, a2, msize_region);
  *(v16 + 2152) -= v12;
  *(v16 + 2160) -= 8355328;
  *(v16 + 2168) -= v13;
  *(a2 + 2152) += v12;
  *(a2 + 2160) += 8355328;
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

uint64_t region_set_cookie(_DWORD *a1)
{
  result = region_cookie();
  *a1 = result;
  return result;
}

unint64_t small_malloc_from_region_no_lock(atomic_uint *a1, uint64_t a2, int a3, unsigned __int16 a4, unint64_t a5)
{
  if (*(a2 + 2128) != 0)
  {
    small_finalize_region(a1, a2);
  }

  *(a5 + 24) = a3;
  rack_region_insert(a1, a5);
  *(a2 + 2144) = a5;
  *(a5 + 16) = a4 << 9;
  small_meta_header_set_in_use(((a5 + 33280) & 0xFFFFFFFFFF800000) + 40, 0, a4);
  ++*(a2 + 2168);
  *(a2 + 2152) += a4 << 9;
  *(a2 + 2160) += 8355328;
  small_meta_header_set_in_use(((a5 + 33280) & 0xFFFFFFFFFF800000) + 40, a4, 16319 - a4);
  *(a2 + 2128) = (16319 - a4) << 9;
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
  return a5 + 33280;
}

uint64_t small_size(uint64_t a1, uint64_t a2)
{
  if (!small_region_for_ptr_no_lock(a1, a2))
  {
    return 0;
  }

  if ((((a2 - ((a2 & 0xFFFFFFFFFF800000) + 33280)) >> 9) & 0x3FFF) >= 0x3FBF)
  {
    return 0;
  }

  v5 = *&stru_20.segname[2 * (((a2 - ((a2 & 0xFFFFFFFFFF800000) + 33280)) >> 9) & 0x3FFF) + (a2 & 0xFFFFFFFFFF800000)];
  if ((v5 & 0x8000) == 0)
  {
    v3 = *(&dword_18 + (a2 & 0xFFFFFFFFFF800000));
    if (v3 == -1)
    {
      for (i = 0; i < *(a1 + 608); ++i)
      {
        if (a2 == *(*(a1 + 624) + 2560 * i + 8))
        {
          return 0;
        }
      }
    }

    else if (a2 == *(*(a1 + 624) + 2560 * v3 + 8))
    {
      return 0;
    }

    return v5 << 9;
  }

  return 0;
}

uint64_t small_free_no_lock(uint64_t a1, uint64_t a2, unsigned int a3, _DWORD *a4, unint64_t a5, unsigned __int16 a6)
{
  v19 = a5;
  v18 = a6;
  v17 = a5 & 0xFFFFFFFFFF800000 | 0x28;
  v16 = ((a5 - 33280) >> 9) & 0x3FFF;
  v15 = a6 << 9;
  v14 = a5 + v15;
  v13 = v16 + a6;
  if (malloc_tracing_enabled)
  {
    kdebug_trace();
  }

  v12 = v19;
  region_check_cookie(a4, a4 + 8319);
  if (v16 && (*(v17 + 2 * (v16 - 1)) & 0x8000) != 0)
  {
    v11 = *(v17 + 2 * (v16 - 1)) & 0x7FFF;
    if (*(v17 + 2 * (v16 - v11)) != (v11 | 0x8000))
    {
      qword_D8128 = "small free list metadata inconsistency (headers[previous] != previous size)";
      __break(1u);
      JUMPOUT(0x2A268);
    }

    v10 = small_free_list_find_by_ptr(a1, a2, &v19[-512 * v11], v11);
    small_free_list_remove_ptr(a1, a2, v10, v11);
    v19 -= 512 * v11;
    small_meta_header_set_middle(v17, v16);
    v18 += v11;
  }

  if (v14 < (a4 + 0x200000) && (*(v17 + 2 * v13) & 0x8000) != 0)
  {
    v9 = *(v17 + 2 * v13) & 0x7FFF;
    v8 = small_free_list_find_by_ptr(a1, a2, v14, v9);
    small_free_list_remove_ptr(a1, a2, v8, v9);
    v18 += v9;
  }

  if ((*(a1 + 620) & 0x20) != 0)
  {
    if (v18)
    {
      _platform_memset();
    }

    else
    {
      malloc_zone_error(*(a1 + 620), 1, "incorrect size information for %p - block header was damaged\n", v19);
    }
  }

  v7 = small_free_list_add_ptr(a1, a2, v19, v18);
  *(a2 + 2152) -= v15;
  a4[4] -= v15;
  if (aggressive_madvise_enabled)
  {
    small_madvise_free_range_no_lock(a1, a2, a4, v7, v18, v12, v15);
  }

  return small_free_try_recirc_to_depot(a1, a2, a3, a4, v7, v18, v12, v15);
}

uint64_t print_small_free_list(unsigned int a1, unsigned int (*a2)(void, uint64_t, uint64_t, uint64_t *), void (*a3)(const char *), uint64_t a4)
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
      return (v18)("Failed to map small rack\n");
    }

    else if (v19(v20, *(v13 + 624), 2560 * *(v13 + 608), &v12))
    {
      return (v18)("Failed to map small rack magazines\n");
    }

    else
    {
      _simple_sappend();
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

        while (v11 < 0x1F)
        {
          v16 = *(v12 + 2560 * i + 32 + 8 * v11);
          if (small_free_list_get_ptr_task(v20, v19, v18, v16))
          {
            v10 = v15;
            v5 = ">=";
            if (v11 != 30)
            {
              v5 = &unk_B18C2;
            }

            v9 = v5;
            v6 = small_free_list_count(v20, v19, v18, v17, v16);
            _simple_sprintf(v10, "%s%y[%d]; ", v9, (v11 + 1) << 9, v6);
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

  return result;
}

unint64_t small_free_list_get_ptr_task(unsigned int a1, unsigned int (*a2)(void, void, void, void), void (*a3)(const char *), unint64_t a4)
{
  if (!a4)
  {
    return 0;
  }

  if (small_is_oob_free_entry(a4))
  {
    return small_oob_free_entry_get_ptr_task(a1, a2, a3, a4);
  }

  return a4;
}

uint64_t small_free_list_count(unsigned int a1, unsigned int (*a2)(void, uint64_t, uint64_t, uint64_t *), void (*a3)(const char *), uint64_t a4, unint64_t next_task)
{
  v6 = 0;
  while (next_task)
  {
    ++v6;
    next_task = small_free_list_get_next_task(a1, a2, a3, a4, next_task);
  }

  return v6;
}

uint64_t print_small_region(unsigned int a1, uint64_t (*a2)(void, void, void, void), uint64_t (*a3)(const char *, ...), uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v33 = a1;
  v32 = a2;
  v31 = a3;
  v30 = a4;
  v29 = a5;
  v28 = a6;
  v27 = a7;
  v26 = a8;
  v25 = 0;
  v24 = (a6 + 33280);
  v23 = a6 + 33280 + a7;
  v22 = a6 + 0x800000 - a8;
  v21 = 0;
  v16 = 0;
  if (a2(a1, a6 + 33280, 0x800000, &v21))
  {
    return v31("Failed to map small region at %p\n", v24);
  }

  v15 = v21 - v24;
  v14 = v21;
  if (v28 == -1)
  {
    result = _simple_salloc();
    if (result)
    {
      _simple_sprintf(result, "Small region [unknown address] was returned to the OS\n");
      v12 = v31;
      v9 = _simple_string();
      v12("%s\n", v9);
      return _simple_sfree();
    }
  }

  else
  {
    _platform_memset();
    while (v23 < v22)
    {
      v20 = *((v23 & 0xFFFFFFFFFF800000) + 40 + 2 * (((v23 - ((v23 & 0xFFFFFFFFFF800000) + 33280)) >> 9) & 0x3FFF) + v15);
      v19 = v20 & 0x7FFF;
      if ((v20 & 0x7FFF) == 0)
      {
        v31("*** error with %p: msize=%d, free: %x\n", v23, 0, v20 & 0x8000);
        break;
      }

      if ((*((v23 & 0xFFFFFFFFFF800000) + 40 + 2 * (((v23 - ((v23 & 0xFFFFFFFFFF800000) + 33280)) >> 9) & 0x3FFF) + v15) & 0x8000) != 0)
      {
        if (((v23 + 10 + vm_page_size - 1) & ~(vm_page_size - 1)) < ((v23 + (v19 << 9) - 2) & ~(vm_page_size - 1)))
        {
          v16 += ((v23 + (v19 << 9) - 2) & ~(vm_page_size - 1)) - ((v23 + 10 + vm_page_size - 1) & ~(vm_page_size - 1));
        }
      }

      else
      {
        if (v19 < 0x400u)
        {
          ++v34[v19];
        }

        ++v25;
      }

      v23 += v19 << 9;
    }

    result = _simple_salloc();
    v17 = result;
    if (result)
    {
      v13 = *(v14 + 24);
      _simple_sprintf(result, "Small region %p [%p-%p, %y] \t", v28, v24, v28 + 0x800000, 0x800000);
      if (v13 == -1)
      {
        _simple_sprintf(v17, "Recirc depot \t");
      }

      else
      {
        _simple_sprintf(v17, "Magazine=%d \t", v13);
      }

      _simple_sprintf(v17, "Allocations in use=%d \t Bytes in use=%ly (%d%%) \t", v25, *(v14 + 16), (100.0 * *(v14 + 16)) / 0x800000uLL);
      if (v26 || v27)
      {
        _simple_sprintf(v17, "Untouched=%ly ", v26 + v27);
      }

      if (v13 == -1)
      {
        _simple_sprintf(v17, "Advised MADV_FREE=%ly", v16);
      }

      else
      {
        _simple_sprintf(v17, "Fragments subject to reclamation=%ly", v16);
        if (small_region_below_recirc_threshold(v14))
        {
          _simple_sprintf(v17, "\tEmpty enough to be moved to recirc depot");
        }

        else
        {
          _simple_sprintf(v17, "\tNot empty enough to be moved to recirc depot");
        }
      }

      if (v29 >= 2 && v25)
      {
        _simple_sappend();
        for (i = 0; i < 0x400; ++i)
        {
          if (v34[i])
          {
            _simple_sprintf(v17, "%y[%d] ", i << 9, v34[i]);
          }
        }
      }

      v11 = v31;
      v10 = _simple_string();
      v11("%s\n", v10);
      return _simple_sfree();
    }
  }

  return result;
}

uint64_t small_free_list_check(uint64_t a1, unsigned int a2, int a3)
{
  for (i = -1; i < *(a1 + 608); ++i)
  {
    v20 = (*(a1 + 624) + 2560 * i);
    v3 = 0;
    atomic_compare_exchange_strong_explicit(v20, &v3, *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24), memory_order_acquire, memory_order_acquire);
    if (v3)
    {
      os_unfair_lock_lock_with_options();
    }

    v19 = 0;
    next = *(*(a1 + 624) + 2560 * i + 32 + 8 * a2);
    v17 = 0;
    for (j = small_free_list_get_ptr(next); ; j = small_free_list_get_ptr(next))
    {
      v16 = j;
      if (!j)
      {
        break;
      }

      if ((*&stru_20.segname[2 * (((j - ((j & 0xFFFFFFFFFF800000) + 33280)) >> 9) & 0x3FFF) + (j & 0xFFFFFFFFFF800000)] & 0x8000) == 0)
      {
        malloc_zone_check_fail(small_freelist_fail_msg, " (slot=%u), counter=%d\n*** in-use ptr in free list slot=%u count=%d ptr=%p\n", a2, a3, a2, v19, j);
        v5 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
        v6 = v5;
        atomic_compare_exchange_strong_explicit(v20, &v6, 0, memory_order_release, memory_order_relaxed);
        if (v6 != v5)
        {
          os_unfair_lock_unlock(v20);
        }

        return 0;
      }

      if ((j & 0x1FF) != 0)
      {
        malloc_zone_check_fail(small_freelist_fail_msg, " (slot=%u), counter=%d\n*** unaligned ptr in free list slot=%u count=%d ptr=%p\n", a2, a3, a2, v19, j);
        v7 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
        v8 = v7;
        atomic_compare_exchange_strong_explicit(v20, &v8, 0, memory_order_release, memory_order_relaxed);
        if (v8 != v7)
        {
          os_unfair_lock_unlock(v20);
        }

        return 0;
      }

      if (!small_region_for_ptr_no_lock(a1, j))
      {
        malloc_zone_check_fail(small_freelist_fail_msg, " (slot=%u), counter=%d\n*** ptr not in szone slot=%d count=%d ptr=%p\n", a2, a3, a2, v19, v16);
        v9 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
        v10 = v9;
        atomic_compare_exchange_strong_explicit(v20, &v10, 0, memory_order_release, memory_order_relaxed);
        if (v10 != v9)
        {
          os_unfair_lock_unlock(v20);
        }

        return 0;
      }

      if (small_free_list_get_previous(a1, next) != v17)
      {
        malloc_zone_check_fail(small_freelist_fail_msg, " (slot=%u), counter=%d\n*** previous incorrectly set slot=%u count=%d ptr=%p\n", a2, a3, a2, v19, v16);
        v11 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
        v12 = v11;
        atomic_compare_exchange_strong_explicit(v20, &v12, 0, memory_order_release, memory_order_relaxed);
        if (v12 != v11)
        {
          os_unfair_lock_unlock(v20);
        }

        return 0;
      }

      v17 = next;
      next = small_free_list_get_next(a1, next);
      ++v19;
    }

    v13 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
    v14 = v13;
    atomic_compare_exchange_strong_explicit(v20, &v14, 0, memory_order_release, memory_order_relaxed);
    if (v14 != v13)
    {
      os_unfair_lock_unlock(v20);
    }
  }

  return 1;
}

unint64_t small_oob_free_entry_get_ptr(uint64_t a1)
{
  if ((*(a1 + 16) & 0x8000) != 0)
  {
    return (a1 & 0xFFFFFFFFFF800000) + ((*(a1 + 16) & 0x7FFF) << 9);
  }

  else
  {
    return 0;
  }
}

uint64_t small_free_mark_middle(uint64_t a1, unint64_t a2, unsigned __int16 a3)
{
  ptr = small_free_list_get_ptr(a2);
  v6 = (ptr & 0xFFFFFFFFFF800000) + 40;
  v5 = ((ptr - ((ptr & 0xFFFFFFFFFF800000) + 33280)) >> 9) & 0x3FFF;
  v4 = ((ptr + (a3 << 9) - 1 - (((ptr + (a3 << 9) - 1) & 0xFFFFFFFFFF800000) + 33280)) >> 9) & 0x3FFF;
  if (v5 > v4)
  {
    __break(1u);
    JUMPOUT(0x2B6B4);
  }

  if ((*&stru_20.segname[2 * v5 + (ptr & 0xFFFFFFFFFF800000)] & 0x7FFF) != a3)
  {
    __break(1u);
    JUMPOUT(0x2B6E0);
  }

  small_meta_header_set_middle(v6, v5);
  return small_meta_header_set_middle(v6, v4);
}

unint64_t small_free_list_from_ptr(uint64_t a1, uint64_t a2, unsigned __int16 a3)
{
  if (!a3)
  {
    __break(1u);
    JUMPOUT(0x2B744);
  }

  v6 = a2;
  if (small_needs_oob_free_entry(a2, a3))
  {
    empty = small_oob_free_find_empty(a2);
    if (empty)
    {
      small_oob_free_entry_set_ptr(empty, a2);
      return empty;
    }
  }

  return v6;
}

void *small_free_list_set_previous(uint64_t a1, void *a2, uint64_t a3)
{
  if (small_is_oob_free_entry(a2))
  {
    return small_oob_free_entry_set_previous(a2, a3);
  }

  else
  {
    return small_inplace_free_entry_set_previous(a1, a2, a3);
  }
}

uint64_t small_free_list_set_next(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (small_is_oob_free_entry(a2))
  {
    return small_oob_free_entry_set_next(a2, a3);
  }

  else
  {
    return small_inplace_free_entry_set_next(a1, a2, a3);
  }
}

uint64_t small_free_mark_free(uint64_t a1, unint64_t a2, __int16 a3)
{
  ptr = small_free_list_get_ptr(a2);
  v6 = (ptr & 0xFFFFFFFFFF800000) + 40;
  v5 = ((ptr - ((ptr & 0xFFFFFFFFFF800000) + 33280)) >> 9) & 0x3FFF;
  v4 = ((ptr + (a3 << 9) - 1 - (((ptr + (a3 << 9) - 1) & 0xFFFFFFFFFF800000) + 33280)) >> 9) & 0x3FFF;
  if (v5 > v4)
  {
    __break(1u);
    JUMPOUT(0x2B928);
  }

  small_meta_header_set_is_free(v6, v5, a3);
  return small_meta_header_set_is_free(v6, v4, a3);
}

unint64_t small_oob_free_find_empty(uint64_t a1)
{
  for (i = 0; i < 0x21; ++i)
  {
    if (!*(&loc_7FA4 + 18 * i + (a1 & 0xFFFFFFFFFF800000) + 18))
    {
      return (a1 & 0xFFFFFFFFFF800000) + 32678 + 18 * i;
    }
  }

  return 0;
}

BOOL small_is_oob_free_entry(unint64_t a1)
{
  v2 = 0;
  if (a1 >= (a1 & 0xFFFFFFFFFF800000) + 32678)
  {
    return a1 < (a1 & 0xFFFFFFFFFF800000) + 33272;
  }

  return v2;
}

uint64_t small_inplace_checksum_ptr(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a3 ^ *(result + 632) ^ result;
  *(a2 + 8) = ((((v3 + HIDWORD(v3)) >> 16) + v3 + WORD2(v3)) >> 8) + ((v3 + HIDWORD(v3)) >> 16) + v3 + BYTE4(v3);
  *a2 = a3;
  return result;
}

uint64_t small_oob_free_entry_set_free(uint64_t result)
{
  *result = -1;
  *(result + 8) = -1;
  *(result + 16) = 0;
  return result;
}

uint64_t small_inplace_unchecksum_ptr(uint64_t a1, unsigned __int8 *a2)
{
  v3 = *a2 ^ *(a1 + 632) ^ a1;
  if (a2[8] != (((((v3 + HIDWORD(v3)) >> 16) + v3 + WORD2(v3)) >> 8) + ((v3 + HIDWORD(v3)) >> 16) + v3 + BYTE4(v3)))
  {
    free_list_checksum_botch(a1, a2, *a2);
    __break(1u);
    JUMPOUT(0x2BD30);
  }

  return *a2;
}

void region_check_cookie(const void *a1, _DWORD *a2)
{
  v2 = *a2;
  if (v2 != region_cookie())
  {
    malloc_zone_error(64, 1, "Region cookie corrupted for region %p (value is %x)[%p]\n", a1, *a2, a2);
    __break(1u);
  }
}

unint64_t small_find_msize_region(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int16 a4)
{
  if (a4 > 0x1Fu)
  {
    v5 = 30;
  }

  else
  {
    v5 = a4 - 1;
  }

  v10 = a2 + 32;
  ptr = small_free_list_get_ptr(*(a2 + 32 + 8 * v5));
  if (ptr)
  {
    return ptr & 0xFFFFFFFFFF800000;
  }

  v7 = v5 >> 5;
  v8 = 0;
  for (i = ~((1 << (v5 & 0x1F)) - 1); !v7; i = -1)
  {
    v8 = *(a2 + 2088) & i;
    if (v8)
    {
      break;
    }

    v7 = 1;
  }

  if (!v8 && v7 == 1)
  {
    return 0;
  }

  v9 = (v10 + 240);
  v11 = (v10 + 8 * (__clz(__rbit32(v8)) + 32 * v7));
  if (v11 < v9)
  {
    v13 = small_free_list_get_ptr(*v11);
    if (v13)
    {
      return v13 & 0xFFFFFFFFFF800000;
    }
  }

  v14 = small_free_list_get_ptr(*v9);
  if (v14)
  {
    return v14 & 0xFFFFFFFFFF800000;
  }

  else
  {
    return 0;
  }
}

uint64_t small_madvise_free_range_no_lock(uint64_t a1, atomic_uint *a2, uint64_t a3, unsigned __int8 *a4, unsigned __int16 a5, uint64_t a6, uint64_t a7)
{
  ptr = small_free_list_get_ptr(a4);
  v13 = 10;
  result = small_is_oob_free_entry(a4);
  if (result)
  {
    v13 = 0;
  }

  if (((ptr + v13 + vm_kernel_page_mask) & ~vm_kernel_page_mask) < ((ptr + (a5 << 9)) & ~vm_kernel_page_mask))
  {
    v12 = (((ptr + v13 + vm_kernel_page_mask) & ~vm_kernel_page_mask) <= (a6 & ~vm_kernel_page_mask) ? a6 & ~vm_kernel_page_mask : (ptr + v13 + vm_kernel_page_mask) & ~vm_kernel_page_mask);
    v11 = (((ptr + (a5 << 9)) & ~vm_kernel_page_mask) >= ((a6 + a7 + v13 + vm_kernel_page_mask) & ~vm_kernel_page_mask) ? (a6 + a7 + v13 + vm_kernel_page_mask) & ~vm_kernel_page_mask : (ptr + (a5 << 9)) & ~vm_kernel_page_mask);
    if (v12 < v11)
    {
      small_free_mark_unfree(a1, a4, a5);
      small_free_list_remove_ptr_no_clear(a1, a2, a4, a5);
      atomic_fetch_add((a3 + 28), 1u);
      v8 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
      v9 = v8;
      atomic_compare_exchange_strong_explicit(a2, &v9, 0, memory_order_release, memory_order_relaxed);
      if (v9 != v8)
      {
        os_unfair_lock_unlock(a2);
      }

      mvm_madvise_free(a1, a3, v12, v11, (a1 + 640), *(a1 + 620) & 0x20);
      v10 = 0;
      atomic_compare_exchange_strong_explicit(a2, &v10, *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24), memory_order_acquire, memory_order_acquire);
      if (v10)
      {
        os_unfair_lock_lock_with_options();
      }

      atomic_fetch_add((a3 + 28), 0xFFFFFFFF);
      return small_free_list_add_ptr(a1, a2, ptr, a5);
    }
  }

  return result;
}

uint64_t small_free_try_recirc_to_depot(uint64_t a1, atomic_uint *a2, unsigned int a3, uint64_t a4, unsigned __int8 *a5, unsigned __int16 a6, uint64_t a7, uint64_t a8)
{
  v12 = *(a4 + 16);
  if (a3 != -1)
  {
    if (small_region_below_recirc_threshold(a4))
    {
      *(a4 + 32) = 1;
    }

    if (small_magazine_below_recirc_threshold(a2))
    {
      return small_free_do_recirc_to_depot(a1, a2);
    }

    return 1;
  }

  if ((aggressive_madvise_enabled & 1) == 0)
  {
    small_madvise_free_range_no_lock(a1, a2, a4, a5, a6, a7, a8);
  }

  if (v12 || *(a4 + 28) > 0)
  {
    return 1;
  }

  v11 = small_free_try_depot_unmap_no_lock(a1, a2, a4);
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
      mvm_deallocate_pages(v11, 0x800000uLL, *(a1 + 620) & 0xFFFE);
    }

    else
    {
      mvm_deallocate_pages(v11, 0x800000uLL, *(a1 + 620) & 0xFFFC);
    }
  }

  return 0;
}

uint64_t small_free_mark_unfree(uint64_t a1, unint64_t a2, unsigned __int16 a3)
{
  ptr = small_free_list_get_ptr(a2);
  v6 = (ptr & 0xFFFFFFFFFF800000) + 40;
  v5 = ((ptr - ((ptr & 0xFFFFFFFFFF800000) + 33280)) >> 9) & 0x3FFF;
  v4 = ((ptr + (a3 << 9) - 1 - (((ptr + (a3 << 9) - 1) & 0xFFFFFFFFFF800000) + 33280)) >> 9) & 0x3FFF;
  if (v5 > v4)
  {
    __break(1u);
    JUMPOUT(0x2C7C4);
  }

  small_meta_header_set_not_free(v6, v5);
  return small_meta_header_set_not_free(v6, v4);
}

BOOL small_magazine_below_recirc_threshold(uint64_t a1)
{
  v4 = *(a1 + 2160);
  v3 = *(a1 + 2152);
  v2 = 0;
  if (v4 - v3 > 0xBF3D00)
  {
    return v3 < v4 - (v4 >> 2);
  }

  return v2;
}

uint64_t small_free_do_recirc_to_depot(uint64_t a1, uint64_t a2)
{
  for (i = *(a2 + 2176); ; i = *(i + 8))
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
    v14 = i & 0xFFFFFFFFFF800000;
    if ((i & 0xFFFFFFFFFF800000) == *(a2 + 2144) && (*(a2 + 2128) || *(a2 + 2136)))
    {
      small_finalize_region(a1, a2);
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
    v13 = small_free_detach_region(a1, a2, v14);
    v12 = *(a1 + 624) - 2560;
    v2 = 0;
    atomic_compare_exchange_strong_explicit(v12, &v2, *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24), memory_order_acquire, memory_order_acquire);
    if (v2)
    {
      os_unfair_lock_lock_with_options();
    }

    *(&dword_18 + (i & 0xFFFFFFFFFF800000)) = -1;
    *(i + 28) = 0;
    v11 = small_free_reattach_region(a1, v12, v14);
    *(a2 + 2152) -= v11;
    *(a2 + 2160) -= 8355328;
    *(a2 + 2168) -= v13;
    v3 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
    v4 = v3;
    atomic_compare_exchange_strong_explicit(a2, &v4, 0, memory_order_release, memory_order_relaxed);
    if (v4 != v3)
    {
      os_unfair_lock_unlock(a2);
    }

    *(v12 + 2152) += v11;
    *(v12 + 2160) += 8355328;
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
      small_free_scan_madvise_free(a1, v12, v14);
    }

    v10 = small_free_try_depot_unmap_no_lock(a1, v12, i);
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
        mvm_deallocate_pages(v10, 0x800000uLL, *(a1 + 620) & 0xFFFE);
      }

      else
      {
        mvm_deallocate_pages(v10, 0x800000uLL, *(a1 + 620) & 0xFFFC);
      }
    }

    return 0;
  }

  else
  {
    return 1;
  }
}

const void *small_free_try_depot_unmap_no_lock(uint64_t a1, uint64_t a2, uint64_t a3)
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
  v5 = (a3 & 0xFFFFFFFFFF800000);
  v4 = small_free_detach_region(a1, a2, a3 & 0xFFFFFFFFFF800000);
  if (v4)
  {
    malloc_zone_error(*(a1 + 620), 1, "small_free_try_depot_unmap_no_lock objects_in_use not zero: %d\n", v4);
    return 0;
  }

  else if (rack_region_remove(a1, v5, a3))
  {
    *(a2 + 2160) -= 8355328;
    return v5;
  }

  else
  {
    return 0;
  }
}

unint64_t small_oob_free_entry_get_ptr_task(unsigned int a1, unsigned int (*a2)(void, void, void, void), void (*a3)(const char *), uint64_t a4)
{
  v9 = a1;
  v8 = a2;
  v7 = a3;
  v6 = a4;
  v5 = 0;
  if (a2(a1, a4, 18, &v5))
  {
    v7("Failed to map small oobe pointer\n");
    return 0;
  }

  else if ((*(v5 + 16) & 0x8000) != 0)
  {
    return (v6 & 0xFFFFFFFFFF800000) + ((*(v5 + 16) & 0x7FFF) << 9);
  }

  else
  {
    return 0;
  }
}

uint64_t small_free_list_get_next_task(unsigned int a1, unsigned int (*a2)(void, uint64_t, uint64_t, uint64_t *), void (*a3)(const char *), uint64_t a4, unint64_t a5)
{
  if (!a5)
  {
    __break(1u);
    JUMPOUT(0x2D1ACLL);
  }

  if (small_is_oob_free_entry(a5))
  {
    return small_oob_free_entry_get_next_task(a1, a2, a3, a5);
  }

  else
  {
    return small_inplace_free_entry_get_next_task(a1, a2, a3, a4, a5);
  }
}

uint64_t small_oob_free_entry_get_next_task(unsigned int a1, unsigned int (*a2)(void, void, void, void), void (*a3)(const char *), uint64_t a4)
{
  v8 = a1;
  v7 = a2;
  v6 = a3;
  v5[1] = a4;
  v5[0] = 0;
  if (!a2(a1, a4, 18, v5))
  {
    return *(v5[0] + 8);
  }

  v6("Failed to map small oobe pointer\n");
  return 0;
}

uint64_t small_inplace_unchecksum_ptr_task(unsigned int a1, unsigned int (*a2)(void, uint64_t, uint64_t, uint64_t *), void (*a3)(const char *, ...), uint64_t a4, const void *a5)
{
  v13 = a1;
  v12 = a2;
  v11 = a3;
  v10 = a4;
  v9 = a5;
  v8 = 0;
  v7 = 0;
  if (a2(a1, a5, 16, &v8))
  {
    v11("Unable to map small linkage pointer %p\n", v9);
    return 0;
  }

  else if (v12(v13, v10, 768, &v7))
  {
    v11("Failed to map small rack\n");
    return 0;
  }

  else
  {
    v5 = *(v8 + 8);
    v18 = *v8 ^ *(v7 + 632) ^ v10;
    v17 = v18 + HIDWORD(v18);
    v16 = HIWORD(v17) + v17;
    v15 = HIBYTE(v16) + v16;
    if (v5 != (HIBYTE(v16) + v16))
    {
      free_list_checksum_botch(v10, v9, *v8);
      __break(1u);
      JUMPOUT(0x2D428);
    }

    return *v8;
  }
}

uint64_t trace_decode(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v14 = a1;
  v13 = a2;
  v12 = a3;
  v11 = a4;
  v10 = 0;
  for (i = 0; i < v11; ++i)
  {
    v8 = 0;
    v7 = varint_decode(v14 + v10, v13 - v10, &v8);
    if (!v7)
    {
      break;
    }

    v10 += v7;
    v6 = codeoffset_decode(v8);
    if (i)
    {
      v5 = *(v12 + 8 * (i - 1));
    }

    else
    {
      v5 = 0;
    }

    *(v12 + 8 * i) = v6 + v5;
  }

  return i;
}

uint64_t varint_decode(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = 0;
  v4 = 0;
  do
  {
    if (v4 == a2)
    {
      return 0;
    }

    v5 |= (*(a1 + v4) & 0x7F) << (7 * v4);
    ++v4;
  }

  while ((*(a1 + v4 - 1) & 0x80) == 0);
  *a3 = v5;
  return v4;
}

uint64_t trace_collect(uint64_t a1, uint64_t a2)
{
  v3 = backtrace(&v7, 65);
  if (v3 > 1)
  {
    return trace_encode(a1, a2, &v8, v3 - 1);
  }

  else
  {
    return 0;
  }
}

uint64_t trace_encode(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v9 = 0;
  for (i = 0; i < a4; ++i)
  {
    v5 = i ? *(a3 + 8 * (i - 1)) : 0;
    v7 = codeoffset_encode(*(a3 + 8 * i) - v5);
    v6 = varint_encode(a1 + v9, a2 - v9, v7);
    if (!v6)
    {
      break;
    }

    v9 += v6;
  }

  return v9;
}

unint64_t zigzag_decode(unint64_t a1)
{
  if (a1)
  {
    return ~(a1 >> 1);
  }

  else
  {
    return a1 >> 1;
  }
}

uint64_t varint_encode(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = 0;
  do
  {
    if (v4 == a2)
    {
      return 0;
    }

    *(a1 + v4) = a3 & 0x7F;
    a3 >>= 7;
    ++v4;
  }

  while (a3);
  *(a1 + v4 - 1) |= 0x80u;
  return v4;
}

uint64_t zigzag_encode(uint64_t a1)
{
  if (a1 < 0)
  {
    return ~(2 * a1);
  }

  else
  {
    return 2 * a1;
  }
}

__n128 xzm_metapool_init(__n128 *a1, unsigned __int8 a2, unsigned __int8 a3, unsigned __int32 a4, unsigned int a5, unsigned int a6, unint64_t a7)
{
  if (a5)
  {
    if (a4 % a6)
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion slab_size % block_size == 0 failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_metapool.c:13)";
      __break(1u);
      JUMPOUT(0x2DA14);
    }

    if (((a6 - 1) & a6) != 0)
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion powerof2(block_size) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_metapool.c:14)";
      __break(1u);
      JUMPOUT(0x2DA4CLL);
    }

    if (((a5 - 1) & a5) != 0)
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion powerof2(block_align) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_metapool.c:15)";
      __break(1u);
      JUMPOUT(0x2DA84);
    }

    if (a6 < a5)
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion block_size >= block_align failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_metapool.c:16)";
      __break(1u);
      JUMPOUT(0x2DABCLL);
    }
  }

  if ((a4 & 0x3FFF) != 0)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion slab_size % PAGE_MAX_SIZE == 0 failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_metapool.c:18)";
    __break(1u);
    JUMPOUT(0x2DAF4);
  }

  v10 = 1;
  if (!a7)
  {
    v10 = a6 > 0xF;
  }

  if (!v10)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion metadata_pool || block_size >= sizeof(struct xzm_metapool_slab_s) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_metapool.c:22)";
    __break(1u);
    JUMPOUT(0x2DB4CLL);
  }

  v9 = 1;
  if (a7)
  {
    v9 = *(a7 + 20) > 0xFu;
  }

  if (!v9)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion !metadata_pool || metadata_pool->xzmp_block_size >= sizeof(struct xzm_metapool_slab_s) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_metapool.c:27)";
    __break(1u);
    JUMPOUT(0x2DBA8);
  }

  v8 = 1;
  if (a7)
  {
    v8 = *(a7 + 20) > 0xFu;
  }

  if (!v8)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion !metadata_pool || metadata_pool->xzmp_block_size >= sizeof(struct xzm_metapool_block_s) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_metapool.c:29)";
    __break(1u);
    JUMPOUT(0x2DC04);
  }

  v11.n128_u32[0] = 0;
  v11.n128_u8[4] = a2;
  v11.n128_u8[5] = a3;
  v11.n128_u32[2] = a4;
  v11.n128_u32[3] = a4 / a6 * a6;
  v12.n128_u32[0] = 0;
  v12.n128_u64[1] = a7;
  result = v11;
  a1[3] = v12;
  a1[2] = 0uLL;
  a1[1] = __PAIR64__(a6, a5);
  *a1 = v11;
  return result;
}

uint64_t xzm_metapool_alloc(atomic_uint *a1)
{
  v17 = a1;
  v16 = 0;
  v15 = 0;
  v18 = a1;
  v26 = a1;
  v25 = 327680;
  v27 = 3;
  v28 = 3;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v24 = *(StatusReg + 24);
  v23 = 0;
  v22 = v24;
  v21 = v24;
  v1 = 0;
  atomic_compare_exchange_strong_explicit(a1, &v1, v24, memory_order_acquire, memory_order_acquire);
  if (v1)
  {
    v23 = v1;
  }

  v20 = v1 == 0;
  if (v1)
  {
    os_unfair_lock_lock_with_options();
  }

  v16 = *(v17 + 4);
  if (v16)
  {
    *(v17 + 4) = **(v17 + 4);
    v15 = v16[1];
    if (*(v17 + 7))
    {
      xzm_metapool_free(*(v17 + 7), v16);
    }

    else
    {
      v14 = 0uLL;
      *v16 = 0uLL;
    }
  }

  else
  {
    if (!*(v17 + 5) || *(v17 + 12) == *(v17 + 3))
    {
      v13 = *(v17 + 2);
      if (*(v17 + 4))
      {
        v6 = __clz(__rbit32(*(v17 + 4)));
      }

      else
      {
        v6 = 0;
      }

      v12 = v6;
      v11 = 0x2000;
      plat = mvm_allocate_plat(0, v13, v6, 1, 0x2000, 1, 0);
      if (!plat)
      {
        qword_D8128 = "BUG IN CLIENT OF LIBMALLOC: failed to allocate malloc metadata, out of virtual address space, client likely has a memory leak";
        __break(1u);
        JUMPOUT(0x2DEE4);
      }

      if (*(v17 + 5) != 1)
      {
        address = plat;
        v5 = *(v17 + 4) ? *(v17 + 4) - 1 : 0;
        if (mach_vm_map(mach_task_self_, &address, v13, v5, (*(v17 + 5) << 24) | 0x4000, 0, 0, 0, 3, 7, 1u))
        {
          qword_D8128 = "BUG IN LIBMALLOC: Failed to overwrite malloc metadata";
          __break(1u);
          JUMPOUT(0x2DFD4);
        }
      }

      if (*(v17 + 7))
      {
        v8 = xzm_metapool_alloc(*(v17 + 7));
        *(v17 + 12) = 0;
      }

      else
      {
        v8 = plat;
        *(v17 + 12) = *(v17 + 5);
      }

      *&v7 = 0;
      *(&v7 + 1) = plat;
      *v8 = v7;
      *(v17 + 5) = v8;
      *v8 = *(v17 + 3);
      *(v17 + 3) = v8;
    }

    v15 = *(*(v17 + 5) + 8) + *(v17 + 12);
    *(v17 + 12) += *(v17 + 5);
  }

  v19 = v17;
  v35 = v17;
  v36 = 3;
  v37 = 3;
  v38 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v34 = *(v38 + 24);
  v33 = 0;
  v32 = v34;
  v31 = 0;
  v2 = v34;
  v3 = v34;
  atomic_compare_exchange_strong_explicit(v17, &v3, 0, memory_order_release, memory_order_relaxed);
  if (v3 != v2)
  {
    v32 = v3;
  }

  v30 = v3 == v2;
  if (v3 != v2)
  {
    os_unfair_lock_unlock(v35);
  }

  if (!v15)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion block failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_metapool.c:184)";
    __break(1u);
    JUMPOUT(0x2E1A0);
  }

  return v15;
}

void xzm_metapool_free(uint64_t a1, void *a2)
{
  v2 = 0;
  atomic_compare_exchange_strong_explicit(a1, &v2, *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24), memory_order_acquire, memory_order_acquire);
  if (v2)
  {
    os_unfair_lock_lock_with_options();
  }

  if (!_xzm_metapool_block_is_allocated(a1, a2))
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion _xzm_metapool_block_is_allocated(mp, blockp) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_metapool.c:215)";
    __break(1u);
    JUMPOUT(0x2E2E8);
  }

  if (*(a1 + 56))
  {
    v5 = xzm_metapool_alloc(*(a1 + 56));
    if (_xzm_metapool_should_madvise(a1))
    {
      mvm_madvise_plat(a2, *(a1 + 20), 7);
    }
  }

  else
  {
    v5 = a2;
  }

  v5[1] = a2;
  *v5 = *(a1 + 32);
  *(a1 + 32) = v5;
  v3 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
  v4 = v3;
  atomic_compare_exchange_strong_explicit(a1, &v4, 0, memory_order_release, memory_order_relaxed);
  if (v4 != v3)
  {
    os_unfair_lock_unlock(a1);
  }
}

uint64_t _xzm_metapool_block_is_allocated(uint64_t a1, unint64_t a2)
{
  if (_xzm_metapool_slab_for_block(a1, a2))
  {
    for (i = *(a1 + 32); i; i = *i)
    {
      if (i[1] == a2)
      {
        v6 = 0;
        return v6 & 1;
      }
    }

    v6 = 1;
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

BOOL _xzm_metapool_should_madvise(uint64_t a1)
{
  v2 = 0;
  if (*(a1 + 56))
  {
    return *(a1 + 20) >= vm_page_size;
  }

  return v2;
}

void *_xzm_metapool_slab_for_block(uint64_t a1, unint64_t a2)
{
  for (i = *(a1 + 24); ; i = *i)
  {
    if (!i)
    {
      return 0;
    }

    v3 = i[1];
    if (a2 >= v3 && a2 < i[1] + *(a1 + 8))
    {
      break;
    }
  }

  if ((a2 - v3) % *(a1 + 20))
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion !((block_ptr - slab_base) % mp->xzmp_block_size) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_metapool.c:61)";
    __break(1u);
    JUMPOUT(0x2E64CLL);
  }

  return i;
}

uint64_t rack_init(uint64_t a1, int a2, int a3, int a4)
{
  *(a1 + 4) = a2;
  *(a1 + 56) = a1 + 64;
  *(a1 + 88) = a1 + 32;
  *(a1 + 24) = a1 + 32;
  *(*(a1 + 24) + 16) = a1 + 96;
  **(a1 + 24) = 64;
  *(*(a1 + 24) + 8) = 6;
  result = _platform_memset();
  *(a1 + 632) = malloc_entropy[0];
  if (a2 == 2)
  {
    *(a1 + 632) = ~*(a1 + 632);
  }

  *(a1 + 620) = a4;
  *(a1 + 608) = a3;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 624) = 0;
  if (a3)
  {
    result = mvm_allocate_pages((vm_page_size + 2560 * (a3 + 1) - 1) & -vm_page_size, 0, 0x40000003u, 1);
    if (!result)
    {
      malloc_report(3u, "*** FATAL ERROR - unable to allocate magazine array.\n");
      qword_D8128 = "FATAL ERROR - unable to allocate magazine array";
      __break(1u);
      JUMPOUT(0x2E820);
    }

    *(a1 + 624) = result + 2560;
    *(a1 + 616) = 0;
    for (i = 1; i <= a3 - 1; i *= 2)
    {
      ++*(a1 + 616);
    }

    *(a1 + 612) = i - 1;
    *(a1 + 640) = 0;
    *a1 = 0;
    *(*(a1 + 624) - 2560) = 0;
    *(*(a1 + 624) - 2556) = 0;
    for (j = 0; j < *(a1 + 608); ++j)
    {
      result = 2560;
      *(*(a1 + 624) + 2560 * j) = 0;
      *(*(a1 + 624) + 2560 * j + 4) = 0;
    }
  }

  return result;
}

void rack_destroy_regions(uint64_t result, mach_vm_size_t a2)
{
  for (i = 0; i < **(result + 24); ++i)
  {
    if (*(*(*(result + 24) + 16) + 8 * i) && *(*(*(result + 24) + 16) + 8 * i) != -1)
    {
      v2 = *(*(*(result + 24) + 16) + 8 * i);
      if ((*(result + 620) & 4) != 0)
      {
        mvm_deallocate_pages(v2, a2, *(result + 620) & 0xFFFE);
      }

      else
      {
        mvm_deallocate_pages(v2, a2, *(result + 620) & 0xFFFC);
      }

      *(*(*(result + 24) + 16) + 8 * i) = -1;
    }
  }
}

void rack_destroy(uint64_t result)
{
  if (*(*(result + 24) + 16) != result + 96)
  {
    mvm_deallocate_pages(*(*(result + 24) + 16), (vm_page_size - 1 + 8 * **(result + 24)) & ~(vm_page_size - 1), 0);
  }

  if (*(result + 608) > 0)
  {
    mvm_deallocate_pages((*(result + 624) - 2560), (2560 * (*(result + 608) + 1) + vm_page_size - 1) & ~(vm_page_size - 1), 3);
    *(result + 624) = 0;
  }
}

void rack_region_insert(atomic_uint *a1, unint64_t a2)
{
  v9 = a1;
  v8 = a2;
  v10 = a1;
  v18 = a1;
  v17 = 327680;
  v19 = 3;
  v20 = 3;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v16 = *(StatusReg + 24);
  v15 = 0;
  v14 = v16;
  v13 = v16;
  v2 = 0;
  atomic_compare_exchange_strong_explicit(a1, &v2, v16, memory_order_acquire, memory_order_acquire);
  if (v2)
  {
    v15 = v2;
  }

  v12 = v2 == 0;
  if (v2)
  {
    os_unfair_lock_lock_with_options();
  }

  if (**(v9 + 3) < (2 * *(v9 + 1)))
  {
    v7 = 0;
    v6 = 0;
    v5 = *(*(v9 + 3) + 8);
    v7 = hash_regions_grow_no_lock(*(*(v9 + 3) + 16), **(v9 + 3), &v5, &v6);
    *(*(*(v9 + 3) + 24) + 16) = v7;
    **(*(v9 + 3) + 24) = v6;
    *(*(*(v9 + 3) + 24) + 8) = v5;
    __dmb(0xBu);
    *(v9 + 3) = *(*(v9 + 3) + 24);
  }

  hash_region_insert_no_lock(*(*(v9 + 3) + 16), **(v9 + 3), *(*(v9 + 3) + 8), v8);
  ++*(v9 + 1);
  v11 = v9;
  v27 = v9;
  v28 = 3;
  v29 = 3;
  v30 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v26 = *(v30 + 24);
  v25 = 0;
  v24 = v26;
  v23 = 0;
  v3 = v26;
  v4 = v26;
  atomic_compare_exchange_strong_explicit(v9, &v4, 0, memory_order_release, memory_order_relaxed);
  if (v4 != v3)
  {
    v24 = v4;
  }

  v22 = v4 == v3;
  if (v4 != v3)
  {
    os_unfair_lock_unlock(v27);
  }
}

char *hash_regions_grow_no_lock(uint64_t a1, unint64_t a2, void *a3, uint64_t *a4)
{
  *a4 = 2 * a2;
  ++*a3;
  v7 = hash_regions_alloc_no_lock(*a4);
  for (i = 0; i < a2; ++i)
  {
    v5 = *(a1 + 8 * i);
    if (v5)
    {
      if (v5 != -1)
      {
        hash_region_insert_no_lock(v7, *a4, *a3, v5);
      }
    }
  }

  return v7;
}

uint64_t hash_region_insert_no_lock(uint64_t result, uint64_t a2, char a3, unint64_t a4)
{
  v5 = (0x9E3779B97F4A7C55 * (a4 >> 20)) >> (64 - a3);
  while (1)
  {
    v4 = (result + 8 * v5);
    if (!*v4 || *v4 == -1)
    {
      break;
    }

    if (++v5 == a2)
    {
      v5 = 0;
    }

    if (v5 == (0x9E3779B97F4A7C55 * (a4 >> 20)) >> (64 - a3))
    {
      return result;
    }
  }

  *v4 = a4;
  return result;
}

uint64_t rack_region_remove(uint64_t a1, const void *a2, uint64_t a3)
{
  v8 = 1;
  v3 = 0;
  atomic_compare_exchange_strong_explicit(a1, &v3, *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24), memory_order_acquire, memory_order_acquire);
  if (v3)
  {
    os_unfair_lock_lock_with_options();
  }

  v7 = hash_lookup_region_no_lock(*(*(a1 + 24) + 16), **(a1 + 24), *(*(a1 + 24) + 8), a2);
  if (*(a3 + 36))
  {
    *(a3 + 36) |= 2u;
    v8 = 0;
  }

  if (v7)
  {
    *v7 = -1;
    atomic_fetch_add_explicit((a1 + 16), 1uLL, memory_order_relaxed);
  }

  else
  {
    malloc_zone_error(*(a1 + 620), 1, "tiny_free_try_depot_unmap_no_lock hash lookup failed: %p\n", a2);
    v8 = 0;
  }

  v4 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
  v5 = v4;
  atomic_compare_exchange_strong_explicit(a1, &v5, 0, memory_order_release, memory_order_relaxed);
  if (v5 != v4)
  {
    os_unfair_lock_unlock(a1);
  }

  return v8 & 1;
}

uint64_t rack_region_maybe_dispose(uint64_t a1, char *a2, mach_vm_size_t a3, uint64_t a4)
{
  v8 = 0;
  v4 = 0;
  atomic_compare_exchange_strong_explicit(a1, &v4, *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24), memory_order_acquire, memory_order_acquire);
  if (v4)
  {
    os_unfair_lock_lock_with_options();
  }

  if ((*(a4 + 36) & 2) != 0)
  {
    if ((*(a1 + 620) & 4) != 0)
    {
      mvm_deallocate_pages(a2, a3, *(a1 + 620) & 0xFFFE);
    }

    else
    {
      mvm_deallocate_pages(a2, a3, *(a1 + 620) & 0xFFFC);
    }

    v8 = 1;
  }

  else
  {
    *(a4 + 36) &= ~1u;
  }

  v5 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
  v6 = v5;
  atomic_compare_exchange_strong_explicit(a1, &v6, 0, memory_order_release, memory_order_relaxed);
  if (v6 != v5)
  {
    os_unfair_lock_unlock(a1);
  }

  return v8 & 1;
}

uint64_t rack_get_thread_index(uint64_t a1)
{
  if (_os_cpu_number_override == -1)
  {
    v2 = _malloc_cpu_number();
    if (*(a1 + 608) == ncpuclusters)
    {
      return _malloc_cpu_cluster_number();
    }
  }

  else
  {
    v2 = _os_cpu_number_override;
    if (*(a1 + 608) == ncpuclusters)
    {
      return _malloc_get_cluster_from_cpu(_os_cpu_number_override);
    }
  }

  return v2;
}

char *create_legacy_scalable_zone(uint64_t a1, int a2)
{
  scalable_zone = create_scalable_zone(a1, a2);
  if (!scalable_zone)
  {
    return 0;
  }

  mprotect(scalable_zone, 0xC8uLL, 3);
  v4 = 0;
  if (legacy_valloc)
  {
    v4 = legacy_valloc;
  }

  v3 = 0;
  if (v4)
  {
    v3 = v4;
  }

  *(scalable_zone + 5) = v3;
  *(scalable_zone + 15) = 0;
  mprotect(scalable_zone, 0xC8uLL, 1);
  return scalable_zone;
}

char *legacy_valloc(uint64_t a1, uint64_t a2)
{
  if (vm_kernel_page_mask <= vm_page_mask)
  {
    v5 = vm_page_mask;
  }

  else
  {
    v5 = vm_kernel_page_mask;
  }

  if (vm_kernel_page_mask <= vm_page_mask)
  {
    v4 = vm_page_mask;
  }

  else
  {
    v4 = vm_kernel_page_mask;
  }

  if (vm_kernel_page_shift <= vm_page_shift)
  {
    v3 = vm_page_shift;
  }

  else
  {
    v3 = vm_kernel_page_shift;
  }

  return large_malloc(a1, ((a2 + v5) & ~v4) >> v3, 0, 1);
}

uint64_t mvm_aslr_init()
{
  v7 = 0x16FE00000;
  v6 = 7;
  result = mvm_aslr_enabled();
  if (result)
  {
    if (!entropic_address)
    {
      v5 = v7 - 0x100000 - ((qword_DA448 & ((1 << v6) - 1)) << 25);
      address = 0;
      result = mach_vm_allocate(mach_task_self_, &address, vm_page_size, 117440513);
      if (!result)
      {
        if (address > v7)
        {
          v5 = (address + 0x200000000) & 0xFFFFFFFFFE000000;
          v22 = 0;
          v21 = address;
          v20 = &entropic_base;
          v19 = address;
          v1 = 0;
          atomic_compare_exchange_strong_explicit(&entropic_base, &v1, address, memory_order_relaxed, memory_order_relaxed);
          if (v1)
          {
            v22 = v1;
          }

          v18 = v1 == 0;
        }

        result = mach_vm_deallocate(mach_task_self_, address, vm_page_size);
      }

      v17 = 0;
      v16 = v5;
      v15 = &entropic_limit;
      v14 = v5;
      v2 = 0;
      atomic_compare_exchange_strong_explicit(&entropic_limit, &v2, v5, memory_order_relaxed, memory_order_relaxed);
      if (v2)
      {
        v17 = v2;
      }

      v13 = v2 == 0;
      v12 = 0;
      v11 = v5 - 0x10000000;
      v10 = &entropic_address;
      v9 = v5 - 0x10000000;
      v3 = 0;
      atomic_compare_exchange_strong_explicit(&entropic_address, &v3, v5 - 0x10000000, memory_order_relaxed, memory_order_relaxed);
      if (v3)
      {
        v12 = v3;
      }

      v8 = v3 == 0;
    }
  }

  else
  {
    malloc_entropy[0] = 0;
    qword_DA448 = 0;
  }

  return result;
}

double mvm_guarded_range_init()
{
  v10 = mvm_random_page_aligned(0x100000u);
  v9 = v10 + 0x400000;
  v8 = 0x100000;
  v7 = v10 + 3145728 - 2 * vm_page_size;
  v6 = mvm_random_page_aligned(v10 + 3145728 - 2 * vm_page_size);
  address = 0;
  v2 = mach_vm_map(mach_task_self_, &address, v10 + 0x400000, 0, 16777217, 0, 0, 0, 0, 0, 1u);
  if (v2)
  {
    malloc_zone_error(64, 0, "Failed to map guarded range: %d\n", v2);
  }

  v4 = address + vm_page_size + v6;
  v3 = mach_vm_deallocate(mach_task_self_, v4, v8);
  if (v3)
  {
    malloc_zone_error(64, 0, "Failed to create carveout at 0x%lx in malloc guarded range 0x%lx: %d\n", v4, address, v3);
  }

  *&v1 = address;
  *(&v1 + 1) = v9;
  result = *&address;
  malloc_guarded_range_config = v1;
  qword_DA438 = v4;
  return result;
}

mach_vm_address_t mvm_allocate_plat(mach_vm_address_t a1, mach_vm_size_t a2, char a3, int a4, int a5, int a6, uint64_t a7)
{
  v18 = a1;
  v17 = a2;
  v16 = a3;
  v15 = a4;
  v14 = a5;
  v13 = a6;
  v12 = a7;
  v11 = 0;
  v10 = 0;
  if (a1 && (v15 & 1) != 0)
  {
    malloc_zone_error(v14 | 0x40, 0, "Unsupported anywhere allocation at address 0x%lx of size 0x%lx with flags %d\n", v18, v17, v15);
  }

  if ((v14 & 0x1200) != 0)
  {
    malloc_zone_error(v14 | 0x40, 0, "Unsupported unpopulated allocation at address 0x%lx of size 0x%lx with flags %d\n", v18, v17, v15);
  }

  if ((v14 & 0x2000) != 0)
  {
    if (v18 || v13 != 1)
    {
      malloc_zone_error(v14 | 0x40, 0, "Unsupported guarded metadata allocation at address 0x%lx of size 0x%lx with flags %d and label %d\n", v18, v17, v15, v13);
    }

    v18 = malloc_guarded_range_config;
  }

  if ((v14 & 0x800) != 0)
  {
    v15 |= 0x2000u;
  }

  address = v18;
  v10 = mach_vm_map(mach_task_self_, &address, v17, (1 << v16) - 1, v15 | (v13 << 24), 0, 0, 0, 3, 7, 1u);
  if (v10)
  {
    return 0;
  }

  else
  {
    return address;
  }
}

char *mvm_allocate_pages_plat(vm_size_t a1, unsigned __int8 a2, unsigned int a3, int a4, uint64_t a5)
{
  v41 = a1;
  v40 = a2;
  v39 = a3;
  v38 = a4;
  v37 = a5;
  v36 = a3 & 1;
  v35 = a3 & 2;
  v34 = a3 & 0x80;
  v33 = (a3 & 0x40000000) == 0;
  address = 0;
  v30 = (a1 + vm_page_size - 1) & ~(vm_page_size - 1);
  v29 = (1 << a2) - 1;
  v28 = (a4 << 24) | 1;
  if (!v30)
  {
    v30 = vm_page_size;
  }

  if (v35 || v36)
  {
    if (v36 && v40 > vm_page_shift)
    {
      if (vm_kernel_page_size <= vm_page_size)
      {
        v18 = vm_page_size;
      }

      else
      {
        v18 = vm_kernel_page_size;
      }

      v30 += v18 + (1 << v40);
    }

    else
    {
      if (v36 && v35)
      {
        if (vm_kernel_page_size <= vm_page_size)
        {
          v17 = vm_page_size;
        }

        else
        {
          v17 = vm_kernel_page_size;
        }

        v16 = 2 * v17;
      }

      else
      {
        if (vm_kernel_page_size <= vm_page_size)
        {
          v15 = vm_page_size;
        }

        else
        {
          v15 = vm_kernel_page_size;
        }

        v16 = v15;
      }

      v30 += v16;
    }
  }

  if (v34)
  {
    v28 = (a4 << 24) | 3;
  }

  if ((v39 & 0x800) != 0)
  {
    v28 |= 0x2000u;
  }

  if (v30 < v41)
  {
    return 0;
  }

  while (1)
  {
    if (v33)
    {
      v14 = entropic_address;
    }

    else
    {
      v14 = vm_page_size;
    }

    address = v14;
    v25 = mach_vm_map(mach_task_self_, &address, v30, v29, v28, 0, 0, 0, 3, 7, 1u);
    if (v25 == 3 && v33)
    {
      address = vm_page_size;
      v25 = mach_vm_map(mach_task_self_, &address, v30, v29, v28, 0, 0, 0, 3, 7, 1u);
    }

    if (v25)
    {
      if (v25 != 3)
      {
        malloc_zone_error(v39, 0, "can't allocate region\n:*** mach_vm_map(size=%lu, flags: %x) failed (error code=%d)\n", v41, v39, v25);
      }

      return 0;
    }

    v31 = address;
    if (!v33)
    {
      break;
    }

    if (address + v30 <= entropic_limit || (v24 = entropic_address, v23 = entropic_address - 0x10000000, entropic_address - 0x10000000 >= entropic_address) || v23 < entropic_base)
    {
      if (address < entropic_address)
      {
        v22 = entropic_address - 0x10000000;
        if (entropic_address >= 0x10000000 && v22 >= entropic_base)
        {
          v47 = entropic_address;
          v46 = entropic_address - 0x10000000;
          v45 = &entropic_address;
          v44 = entropic_address - 0x10000000;
          v7 = entropic_address;
          v8 = entropic_address;
          atomic_compare_exchange_strong_explicit(&entropic_address, &v8, v22, memory_order_relaxed, memory_order_relaxed);
          if (v8 != v7)
          {
            v47 = v8;
          }

          v43 = v8 == v7;
        }
      }

      break;
    }

    mach_vm_deallocate(mach_task_self_, address, v30);
    v52 = v24;
    v51 = v23;
    v50 = &entropic_address;
    v49 = v23;
    v5 = v24;
    v6 = v24;
    atomic_compare_exchange_strong_explicit(&entropic_address, &v6, v23, memory_order_relaxed, memory_order_relaxed);
    if (v6 != v5)
    {
      v52 = v6;
    }

    v48 = v6 == v24;
  }

  if (v35 || v36)
  {
    if (v36 && v40 > vm_page_shift)
    {
      if (vm_kernel_page_size <= vm_page_size)
      {
        v13 = vm_page_size;
      }

      else
      {
        v13 = vm_kernel_page_size;
      }

      v21 = &v31[v13 - 1 + (1 << v40)] & ~((1 << v40) - 1);
      if (vm_kernel_page_size <= vm_page_size)
      {
        v12 = vm_page_size;
      }

      else
      {
        v12 = vm_kernel_page_size;
      }

      size = v21 - v31 - v12;
      if (vm_kernel_page_size <= vm_page_size)
      {
        v11 = vm_page_size;
      }

      else
      {
        v11 = vm_kernel_page_size;
      }

      v19 = (1 << v40) - v11 - size;
      v26 = mach_vm_deallocate(mach_task_self_, v31, size);
      if (v26)
      {
        malloc_zone_error(v39, 0, "can't unmap excess guard region\n*** mach_vm_deallocate(addr=%p, size=%lu) failed (code=%d)\n", v31, size, v26);
        return 0;
      }

      if (v19)
      {
        v27 = mach_vm_deallocate(mach_task_self_, &v31[v30 - v19], v19);
        if (v27)
        {
          malloc_zone_error(v39, 0, "can't unmap excess trailing guard region\n*** mach_vm_deallocate(addr=%p, size=%lu) failed (code=%d)\n", &v31[v30 - v19], v19, v27);
          return 0;
        }
      }

      v31 = v21;
      mvm_protect_plat(v21, v41, 0, v39);
    }

    else
    {
      if (v36)
      {
        if (vm_kernel_page_size <= vm_page_size)
        {
          v10 = vm_page_size;
        }

        else
        {
          v10 = vm_kernel_page_size;
        }

        v31 += v10;
      }

      mvm_protect_plat(v31, v41, 0, v39);
    }
  }

  return v31;
}

void mvm_protect_plat(uint64_t result, uint64_t a2, int a3, char a4)
{
  if ((a4 & 1) != 0 && (a4 & 8) == 0)
  {
    v9 = vm_kernel_page_size <= vm_page_size ? vm_page_size : vm_kernel_page_size;
    v8 = (result - v9);
    if (vm_kernel_page_size <= vm_page_size ? mprotect(v8, vm_page_size, a3) : mprotect(v8, vm_kernel_page_size, a3))
    {
      if (vm_kernel_page_size <= vm_page_size)
      {
        v7 = vm_page_size;
      }

      else
      {
        v7 = vm_kernel_page_size;
      }

      malloc_report(3u, "*** can't mvm_protect(%u) region for prelude guard page at %p\n", a3, (result - v7));
    }
  }

  if ((a4 & 2) != 0 && (a4 & 0x10) == 0)
  {
    v6 = ((result + a2 + vm_page_size - 1) & ~(vm_page_size - 1));
    if (vm_kernel_page_size <= vm_page_size)
    {
      v5 = mprotect(v6, vm_page_size, a3);
    }

    else
    {
      v5 = mprotect(v6, vm_kernel_page_size, a3);
    }

    if (v5)
    {
      malloc_report(3u, "*** can't mvm_protect(%u) region for postlude guard page at %p\n", a3, (result + a2));
    }
  }
}

void mvm_deallocate_plat(const void *a1, mach_vm_size_t a2, __int16 a3)
{
  v3 = mach_vm_deallocate(mach_task_self_, a1, a2);
  if (v3)
  {
    malloc_zone_error(a3, 0, "Failed to deallocate at address %p of size 0x%lx: %d\n", a1, a2, v3);
  }
}

void mvm_deallocate_pages_plat(char *a1, mach_vm_size_t a2, __int16 a3)
{
  v7 = a1;
  v6 = a2;
  if (a3)
  {
    if (vm_kernel_page_size <= vm_page_size)
    {
      v5 = vm_page_size;
    }

    else
    {
      v5 = vm_kernel_page_size;
    }

    v7 = &a1[-v5];
    if (vm_kernel_page_size <= vm_page_size)
    {
      v4 = vm_page_size;
    }

    else
    {
      v4 = vm_kernel_page_size;
    }

    v6 = a2 + v4;
  }

  if ((a3 & 2) != 0)
  {
    if (vm_kernel_page_size <= vm_page_size)
    {
      v3 = vm_page_size;
    }

    else
    {
      v3 = vm_kernel_page_size;
    }

    v6 += v3;
  }

  mvm_deallocate_plat(v7, v6, a3);
}

BOOL mvm_madvise_plat(void *a1, size_t a2, int a3)
{
  if (madvise(a1, a2, a3))
  {
    v4 = *__error();
  }

  else
  {
    v4 = 0;
  }

  return v4 != 0;
}

uint64_t mvm_madvise_free_plat(uint64_t a1, uint64_t a2, _BYTE *a3, _BYTE *a4, void **a5, int a6)
{
  if (a4 <= a3)
  {
    return 0;
  }

  if (a6 && malloc_zero_policy)
  {
    _platform_memset();
  }

  if (!a5)
  {
LABEL_9:
    if (mvm_madvise(a3, a4 - a3, 7, 0))
    {
      return 1;
    }

    if (malloc_tracing_enabled)
    {
      kdebug_trace();
    }

    return 0;
  }

  if (*a5 != a3)
  {
    *a5 = a3;
    goto LABEL_9;
  }

  return 0;
}

BOOL _malloc_detect_interposition()
{
  v3 = 1;
  if (!_malloc_symbol_interposed(malloc))
  {
    v3 = 1;
    if (!_malloc_symbol_interposed(calloc))
    {
      v3 = 1;
      if (!_malloc_symbol_interposed(free))
      {
        v3 = 1;
        if (!_malloc_symbol_interposed(realloc))
        {
          v3 = 1;
          if (!_malloc_symbol_interposed(valloc))
          {
            v3 = 1;
            if (!_malloc_symbol_interposed(aligned_alloc))
            {
              v3 = 1;
              if (!_malloc_symbol_interposed(posix_memalign))
              {
                v3 = 1;
                if (!_malloc_symbol_interposed(malloc_zone_malloc))
                {
                  v3 = 1;
                  if (!_malloc_symbol_interposed(malloc_zone_calloc))
                  {
                    v3 = 1;
                    if (!_malloc_symbol_interposed(malloc_zone_free))
                    {
                      v3 = 1;
                      if (!_malloc_symbol_interposed(malloc_zone_realloc))
                      {
                        v3 = 1;
                        if (!_malloc_symbol_interposed(malloc_zone_valloc))
                        {
                          v3 = _malloc_symbol_interposed(malloc_zone_memalign);
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
  }

  result = _malloc_symbol_interposed(malloc_type_malloc);
  v2 = 1;
  if (!result)
  {
    result = _malloc_symbol_interposed(malloc_type_calloc);
    v2 = 1;
    if (!result)
    {
      result = _malloc_symbol_interposed(malloc_type_free);
      v2 = 1;
      if (!result)
      {
        result = _malloc_symbol_interposed(malloc_type_realloc);
        v2 = 1;
        if (!result)
        {
          result = _malloc_symbol_interposed(malloc_type_valloc);
          v2 = 1;
          if (!result)
          {
            result = _malloc_symbol_interposed(malloc_type_aligned_alloc);
            v2 = 1;
            if (!result)
            {
              result = _malloc_symbol_interposed(malloc_type_posix_memalign);
              v2 = 1;
              if (!result)
              {
                result = _malloc_symbol_interposed(malloc_type_zone_malloc);
                v2 = 1;
                if (!result)
                {
                  result = _malloc_symbol_interposed(malloc_type_zone_calloc);
                  v2 = 1;
                  if (!result)
                  {
                    result = _malloc_symbol_interposed(malloc_type_zone_free);
                    v2 = 1;
                    if (!result)
                    {
                      result = _malloc_symbol_interposed(malloc_type_zone_realloc);
                      v2 = 1;
                      if (!result)
                      {
                        result = _malloc_symbol_interposed(malloc_type_zone_valloc);
                        v2 = 1;
                        if (!result)
                        {
                          result = _malloc_symbol_interposed(malloc_type_zone_memalign);
                          v2 = result;
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
  }

  v1 = 0;
  if (v3)
  {
    v1 = !(v2 & 1);
  }

  if ((malloc_interposition_compat & 1) != v1)
  {
    malloc_interposition_compat = v1;
  }

  return result;
}

BOOL _malloc_symbol_interposed(unint64_t a1)
{
  v2 = 1;
  if (a1 >= &dword_0)
  {
    return a1 >= &unk_C42B0;
  }

  return v2;
}

void *malloc_type_malloc(size_t a1, uint64_t a2)
{
  v3 = 1;
  if (!malloc_logger)
  {
    v3 = 1;
    if ((malloc_slowpath & 1) == 0)
    {
      v3 = a1 > malloc_absolute_max_size;
    }
  }

  if (v3)
  {
    return _malloc_type_malloc_outlined(a1, a2, 1);
  }

  v5 = *malloc_zones;
  if (*(*malloc_zones + 104) >= 0x10u)
  {
    return (*(v5 + 160))(v5, a1, a2);
  }

  if (*(v5 + 104) >= 0xDu)
  {
    return (*(v5 + 24))(v5, a1);
  }

  return _malloc_type_malloc_outlined(a1, a2, 1);
}

void *malloc_type_calloc(size_t a1, size_t a2, uint64_t a3)
{
  v4 = 1;
  if (!malloc_logger)
  {
    v4 = malloc_slowpath;
  }

  if ((v4 & 1) == 0)
  {
    v5 = *malloc_zones;
    if (*(*malloc_zones + 104) >= 0x10u)
    {
      return (*(v5 + 168))(v5, a1, a2, a3);
    }

    if (*(v5 + 104) >= 0xDu)
    {
      return (*(v5 + 32))(v5, a1, a2);
    }
  }

  return _malloc_type_calloc_outlined(a1, a2, a3);
}

id malloc_type_realloc(void *a1, size_t a2, uint64_t a3)
{
  v4 = 1;
  if (!malloc_logger)
  {
    v4 = 1;
    if ((malloc_slowpath & 1) == 0)
    {
      v4 = a2 > malloc_absolute_max_size;
    }
  }

  if (v4)
  {
    return _malloc_type_realloc_outlined(a1, a2, a3);
  }

  if (a1 && a2)
  {
    registered_zone = find_registered_zone(a1, 0, 0);
    if (!registered_zone)
    {
      return _realloc(a1, a2);
    }

    if (registered_zone == default_zone)
    {
      registered_zone = *malloc_zones;
    }

    if (*(registered_zone + 26) >= 0x10u)
    {
      v6 = registered_zone[22](registered_zone, a1, a2, a3);
    }

    else
    {
      v6 = (registered_zone[7])(registered_zone, a1, a2);
    }
  }

  else
  {
    v11 = *malloc_zones;
    if (*(*malloc_zones + 104) < 0x10u)
    {
      if (*(v11 + 104) >= 0xDu)
      {
        v12 = (*(v11 + 24))(v11, a2);
      }

      else
      {
        v12 = _malloc_type_malloc_outlined(a2, a3, 0);
      }
    }

    else
    {
      v12 = (*(v11 + 160))(v11, a2, a3);
    }

    v6 = v12;
  }

  if (v6)
  {
    if (!a2)
    {
      _free(a1);
    }
  }

  else
  {
    malloc_set_errno_fast(1, 12);
  }

  return v6;
}

void *malloc_type_valloc(size_t a1, uint64_t a2)
{
  v4 = a2;
  v5 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 904);
  if (!a2)
  {
    v4 = 1;
  }

  *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 904) = v4;
  if ((malloc_interposition_compat & 1) == 0 || v5)
  {
    v3 = _malloc_zone_valloc(default_zone, a1, 1u);
  }

  else
  {
    v3 = j__valloc(a1);
  }

  *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 904) = v5;
  return v3;
}

void *malloc_type_aligned_alloc(size_t a1, size_t a2, uint64_t a3)
{
  v4 = 1;
  if (!malloc_logger)
  {
    v4 = 1;
    if ((malloc_slowpath & 1) == 0)
    {
      v4 = a2 > malloc_absolute_max_size;
    }
  }

  if (v4 || *(*malloc_zones + 104) < 0x10u || a1 < 8 || ((a1 - 1) & a1) != 0 || (a2 & (a1 - 1)) != 0)
  {
    return _malloc_type_aligned_alloc_outlined(a1, a2, a3);
  }

  v5 = (*(*malloc_zones + 184))(*malloc_zones, a1, a2, a3);
  if (!v5)
  {
    malloc_set_errno_fast(1, 12);
  }

  return v5;
}

uint64_t malloc_type_posix_memalign(void **a1, size_t a2, size_t a3, uint64_t a4)
{
  v5 = 1;
  if (!malloc_logger)
  {
    v5 = 1;
    if ((malloc_slowpath & 1) == 0)
    {
      v5 = a3 > malloc_absolute_max_size;
    }
  }

  if (v5 || *(*malloc_zones + 104) < 0x10u || a2 < 8 || ((a2 - 1) & a2) != 0)
  {
    return _malloc_type_posix_memalign_outlined(a1, a2, a3, a4);
  }

  else
  {
    v6 = (*(*malloc_zones + 184))(*malloc_zones, a2, a3, a4);
    if (v6)
    {
      *a1 = v6;
      return 0;
    }

    else
    {
      return 12;
    }
  }
}

void *malloc_type_zone_malloc(malloc_zone_t *a1, size_t a2, uint64_t a3)
{
  v5 = a1;
  v4 = 1;
  if (!malloc_logger)
  {
    v4 = 1;
    if ((malloc_slowpath & 1) == 0)
    {
      v4 = a2 > malloc_absolute_max_size;
    }
  }

  if (!v4)
  {
    if (a1 == default_zone)
    {
      v5 = *malloc_zones;
    }

    if (v5->version >= 0x10)
    {
      return (v5[1].size)(v5, a2, a3);
    }

    if (v5->version >= 0xD)
    {
      return (v5->malloc)(v5, a2);
    }
  }

  return _malloc_type_zone_malloc_outlined(v5, a2, a3);
}

void *malloc_type_zone_calloc(uint64_t (**a1)(void *, uint64_t, uint64_t, uint64_t), size_t a2, size_t a3, uint64_t a4)
{
  v6 = a1;
  v5 = 1;
  if (!malloc_logger)
  {
    v5 = malloc_slowpath;
  }

  if ((v5 & 1) == 0)
  {
    if (a1 == default_zone)
    {
      v6 = *malloc_zones;
    }

    if (*(v6 + 26) >= 0x10u)
    {
      return v6[21](v6, a2, a3, a4);
    }

    if (*(v6 + 26) >= 0xDu)
    {
      return (v6[4])(v6, a2, a3);
    }
  }

  return _malloc_type_zone_calloc_outlined(v6, a2, a3, a4);
}

void *malloc_type_zone_realloc(malloc_zone_t *a1, void *a2, size_t a3, uint64_t a4)
{
  v6 = a1;
  v5 = 1;
  if (!malloc_logger)
  {
    v5 = 1;
    if ((malloc_slowpath & 1) == 0)
    {
      v5 = a3 > malloc_absolute_max_size;
    }
  }

  if (v5)
  {
    return _malloc_type_zone_realloc_outlined(a1, a2, a3, a4);
  }

  if (a1 == default_zone)
  {
    v6 = *malloc_zones;
  }

  if (*(v6 + 26) >= 0x10u)
  {
    return v6[22](v6, a2, a3, a4);
  }

  else
  {
    return _malloc_zone_realloc(v6, a2, a3, a4);
  }
}

void *malloc_type_zone_valloc(malloc_zone_t *a1, size_t a2, uint64_t a3)
{
  v5 = a3;
  v6 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 904);
  if (!a3)
  {
    v5 = 1;
  }

  *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 904) = v5;
  if ((malloc_interposition_compat & 1) == 0 || v6)
  {
    v4 = _malloc_zone_valloc(a1, a2, 0);
  }

  else
  {
    v4 = j__malloc_zone_valloc(a1, a2);
  }

  *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 904) = v6;
  return v4;
}

void *malloc_type_zone_memalign(malloc_zone_t *a1, size_t a2, size_t a3, uint64_t a4)
{
  v6 = a1;
  v5 = 1;
  if (!malloc_logger)
  {
    v5 = 1;
    if ((malloc_slowpath & 1) == 0)
    {
      v5 = a3 > malloc_absolute_max_size;
    }
  }

  if (v5)
  {
    return _malloc_type_zone_memalign_outlined(v6, a2, a3, a4);
  }

  if (a1 == default_zone)
  {
    v6 = *malloc_zones;
  }

  if (v6->version < 0x10 || a2 < 8 || ((a2 - 1) & a2) != 0)
  {
    return _malloc_type_zone_memalign_outlined(v6, a2, a3, a4);
  }

  else
  {
    return (v6[1].valloc)(v6, a2, a3, a4);
  }
}

void *_malloc_type_malloc_outlined(size_t a1, uint64_t a2, char a3)
{
  v5 = a2;
  v6 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 904);
  if (!a2)
  {
    v5 = 1;
  }

  *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 904) = v5;
  if (malloc_interposition_compat & 1) != 0 && !v6 && (a3)
  {
    v4 = j__malloc(a1);
  }

  else
  {
    v4 = _malloc_zone_malloc(default_zone, a1, 1u);
  }

  *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 904) = v6;
  return v4;
}

void *_malloc_type_calloc_outlined(size_t a1, size_t a2, uint64_t a3)
{
  v5 = a3;
  v6 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 904);
  if (!a3)
  {
    v5 = 1;
  }

  *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 904) = v5;
  if ((malloc_interposition_compat & 1) == 0 || v6)
  {
    v4 = _malloc_zone_calloc(default_zone, a1, a2, 1u);
  }

  else
  {
    v4 = j__calloc(a1, a2);
  }

  *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 904) = v6;
  return v4;
}

id _malloc_type_realloc_outlined(void *a1, size_t a2, uint64_t a3)
{
  v5 = a3;
  v6 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 904);
  if (!a3)
  {
    v5 = 1;
  }

  *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 904) = v5;
  if ((malloc_interposition_compat & 1) == 0 || v6)
  {
    v4 = _realloc(a1, a2);
  }

  else
  {
    v4 = j__realloc(a1, a2);
  }

  *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 904) = v6;
  return v4;
}

void *_malloc_type_aligned_alloc_outlined(size_t a1, size_t a2, uint64_t a3)
{
  v5 = a3;
  v6 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 904);
  if (!a3)
  {
    v5 = 1;
  }

  *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 904) = v5;
  if ((malloc_interposition_compat & 1) == 0 || v6)
  {
    v4 = _malloc_zone_memalign(default_zone, a1, a2, 3u, 0);
  }

  else
  {
    v4 = j__aligned_alloc(a1, a2);
  }

  *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 904) = v6;
  return v4;
}

uint64_t _malloc_type_posix_memalign_outlined(void **a1, size_t a2, size_t a3, uint64_t a4)
{
  v6 = a4;
  v7 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 904);
  if (!a4)
  {
    v6 = 1;
  }

  *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 904) = v6;
  if ((malloc_interposition_compat & 1) == 0 || v7)
  {
    v5 = _posix_memalign(a1, a2, a3);
  }

  else
  {
    v5 = j__posix_memalign(a1, a2, a3);
  }

  *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 904) = v7;
  return v5;
}

void *_malloc_type_zone_malloc_outlined(malloc_zone_t *a1, size_t a2, uint64_t a3)
{
  v5 = a3;
  v6 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 904);
  if (!a3)
  {
    v5 = 1;
  }

  *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 904) = v5;
  if ((malloc_interposition_compat & 1) == 0 || v6)
  {
    v4 = _malloc_zone_malloc(a1, a2, 0);
  }

  else
  {
    v4 = j__malloc_zone_malloc(a1, a2);
  }

  *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 904) = v6;
  return v4;
}

void *_malloc_type_zone_calloc_outlined(malloc_zone_t *a1, size_t a2, size_t a3, uint64_t a4)
{
  v6 = a4;
  v7 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 904);
  if (!a4)
  {
    v6 = 1;
  }

  *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 904) = v6;
  if ((malloc_interposition_compat & 1) == 0 || v7)
  {
    v5 = _malloc_zone_calloc(a1, a2, a3, 0);
  }

  else
  {
    v5 = j__malloc_zone_calloc(a1, a2, a3);
  }

  *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 904) = v7;
  return v5;
}

void *_malloc_type_zone_realloc_outlined(malloc_zone_t *a1, void *a2, size_t a3, uint64_t a4)
{
  v6 = a4;
  v7 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 904);
  if (!a4)
  {
    v6 = 1;
  }

  *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 904) = v6;
  if ((malloc_interposition_compat & 1) == 0 || v7)
  {
    v5 = _malloc_zone_realloc(a1, a2, a3, 0);
  }

  else
  {
    v5 = j__malloc_zone_realloc(a1, a2, a3);
  }

  *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 904) = v7;
  return v5;
}

void *_malloc_type_zone_memalign_outlined(malloc_zone_t *a1, size_t a2, size_t a3, uint64_t a4)
{
  v6 = a4;
  v7 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 904);
  if (!a4)
  {
    v6 = 1;
  }

  *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 904) = v6;
  if ((malloc_interposition_compat & 1) == 0 || v7)
  {
    v5 = _malloc_zone_memalign(a1, a2, a3, 0, 0);
  }

  else
  {
    v5 = j__malloc_zone_memalign(a1, a2, a3);
  }

  *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 904) = v7;
  return v5;
}

void *malloc_type_zone_malloc_with_options(malloc_zone_t *a1, size_t a2, size_t a3, uint64_t a4, uint64_t a5)
{
  v10 = a1;
  if (a2 == 8)
  {
    goto LABEL_8;
  }

  v9 = 0;
  if (a2)
  {
    v8 = 1;
    if (((a2 - 1) & a2) == 0)
    {
      v8 = (a3 & (a2 - 1)) != 0;
    }

    v9 = v8;
  }

  if (v9)
  {
    return 0;
  }

LABEL_8:
  v7 = 1;
  if (!malloc_logger)
  {
    v7 = malloc_slowpath;
  }

  if (v7)
  {
    return _malloc_type_zone_malloc_with_options_outlined(v10, a2, a3, a4, a5);
  }

  if (a1 == default_zone)
  {
    v10 = *malloc_zones;
  }

  if (!v10)
  {
    v10 = *malloc_zones;
  }

  if (v10->version < 0x10)
  {
    return _malloc_type_zone_malloc_with_options_outlined(v10, a2, a3, a4, a5);
  }

  free = 0;
  if (v10[1].free)
  {
    free = v10[1].free;
  }

  if (!free)
  {
    return _malloc_type_zone_malloc_with_options_outlined(v10, a2, a3, a4, a5);
  }

  else
  {
    return (v10[1].free)(v10, a2, a3, a5, a4);
  }
}

void *_malloc_type_zone_malloc_with_options_outlined(malloc_zone_t *a1, size_t a2, size_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a4;
  v7 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 904);
  if (!a4)
  {
    v6 = 1;
  }

  *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 904) = v6;
  result = _malloc_zone_malloc_with_options_outlined(a1, a2, a3, a5);
  *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 904) = v7;
  return result;
}

atomic_uint *mfm_lock()
{
  if (mfm_arena)
  {
    return __mfm_lock(mfm_arena);
  }

  return result;
}

atomic_uint *__mfm_lock(atomic_uint *result)
{
  v1 = 0;
  atomic_compare_exchange_strong_explicit(result, &v1, *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24), memory_order_acquire, memory_order_acquire);
  if (v1)
  {
    return os_unfair_lock_lock_with_options();
  }

  return result;
}

void mfm_unlock()
{
  if (mfm_arena)
  {
    __mfm_unlock(mfm_arena);
  }
}

void __mfm_unlock(atomic_uint *a1)
{
  v1 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
  v2 = v1;
  atomic_compare_exchange_strong_explicit(a1, &v2, 0, memory_order_release, memory_order_relaxed);
  if (v2 != v1)
  {
    os_unfair_lock_unlock(a1);
  }
}

void mfm_reinit_lock()
{
  if (mfm_arena)
  {
    *mfm_arena = 0;
  }
}

uint64_t mfm_initialize()
{
  pages_plat = 0;
  v7 = 0;
  v8 = 1073741827;
  mfm_memtag_enabled = malloc_has_sec_transition & 1;
  v1 = 0;
  if (malloc_has_sec_transition)
  {
    v1 = malloc_sec_transition_early_malloc_support;
  }

  mfm_memtag_enabled = v1 & 1;
  if (v1)
  {
    v7 |= 0x2000u;
  }

  pages_plat = mvm_allocate_pages_plat(0x400000uLL, 0, v8, 1, 0);
  if (!pages_plat)
  {
    qword_D8128 = "BUG IN LIBMALLOC: failed to allocate memory";
    qword_D8158 = 0;
    __break(1u);
    JUMPOUT(0x3406CLL);
  }

  address = pages_plat;
  v7 |= 0x7004000u;
  v5 = mach_vm_map(mach_task_self_, &address, 0x400000uLL, 0, v7, 0, 0, 0, 3, 7, 1u);
  if (v5)
  {
    qword_D8128 = "BUG IN LIBMALLOC: failed to overwrite mfm arena";
    qword_D8158 = v5;
    __break(1u);
    JUMPOUT(0x3411CLL);
  }

  *pages_plat = 0;
  *(pages_plat + 27) = 0x8000000000000000;
  for (i = 0; i <= 0xA; ++i)
  {
    v3 = &pages_plat[16 * i + 32];
    v2 = __mfm_block_offset(pages_plat, v3);
    __mfm_block_set_next(v3, v2);
    *(v3 + 1) = v2;
  }

  result = __mfm_block_mark_start(pages_plat, 0);
  atomic_store(pages_plat, &mfm_arena);
  return result;
}

uint64_t mfm_alloc_size(uint64_t a1)
{
  v3 = mfm_arena;
  v4 = a1 & 0xF0FFFFFFFFFFFFFFLL;
  if (!__mfm_address_owned(mfm_arena, a1 & 0xF0FFFFFFFFFFFFFFLL))
  {
    return 0;
  }

  if (v4 % 0x10)
  {
    return 0;
  }

  v2 = __mfm_block_index(v3, v4);
  if (__mfm_block_is_allocated(v3, v2))
  {
    return 16 * __mfm_block_size(v3, v2);
  }

  else
  {
    return 0;
  }
}

BOOL __mfm_address_owned(uint64_t a1, unint64_t a2)
{
  v3 = 0;
  if (a1)
  {
    v3 = 0;
    if (a2 >= a1 + 0x10000)
    {
      return a2 < a1 + 0x400000;
    }
  }

  return v3;
}

uint64_t __mfm_block_index(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0xF) != 0)
  {
    qword_D8128 = "BUG IN CLIENT OF LIBMALLOC: invalid address";
    qword_D8158 = a2;
    __break(1u);
    JUMPOUT(0x34450);
  }

  return (a2 - a1 - 0x10000) >> 4;
}

uint64_t __mfm_block_size(uint64_t a1, uint64_t a2)
{
  v10 = (a2 + 1) >> 6;
  v9 = (a2 + 1) & 0x3F;
  v6 = *(a1 + 224 + 16 * v10) >> ((a2 + 1) & 0x3F);
  if (v6)
  {
    return (__clz(__rbit64(v6)) + 1);
  }

  v7 = *(a1 + 224 + 8 * (2 * v10 + 2));
  if (v7)
  {
    return (__clz(__rbit64(v7)) + 65) - v9;
  }

  v8 = *(a1 + 224 + 8 * (2 * v10 + 1));
  if (v9 + 18 > 0x40)
  {
    *&v2 = *(a1 + 224 + 8 * (2 * v10 + 1));
    *(&v2 + 1) = *(a1 + 224 + 8 * (2 * v10 + 3));
    v8 = v2;
  }

  v3 = *(&v8 + 1) >> (v9 - 64);
  if (v9 < 0x40)
  {
    v3 = (v8 >> v9) | (*(&v8 + 1) << (64 - v9));
  }

  v4 = v8;
  if (((a2 + 1) & 0x3F) != 0)
  {
    v4 = v3;
  }

  return (v4 & 0x3FFFF) + 1;
}

unint64_t mfm_alloc(unint64_t a1)
{
  v18 = mfm_arena;
  v17 = 0;
  if (a1 > 0x4000)
  {
    return 0;
  }

  if (a1)
  {
    if (a1 % 0x10)
    {
      v11 = a1 / 0x10 + 1;
    }

    else
    {
      v11 = a1 / 0x10;
    }

    v10 = v11;
  }

  else
  {
    v10 = 1;
  }

  __mfm_lock(mfm_arena);
  for (i = __mfm_size_class_up(v10); i < 0xB; ++i)
  {
    v15 = (v18 + 16 * __mfm_block_next(v18 + 32 + 16 * i));
    if ((v18 + 32 + 16 * i) != v15)
    {
      __mfm_block_remove(v18, v15);
      v13 = (v15 - v18 - 0x10000) / 16;
      v14 = __mfm_block_size(v18, v13);
      if (v14 > v10)
      {
        __mfm_block_mark_start(v18, v13 + v10);
        __mfm_free_block(v18, v13 + v10, v14 - v10);
      }

      __mfm_block_mark_allocated(v18, v13, v10);
      v17 = v15;
      *(v18 + 4) += v10;
      ++*(v18 + 24);
      goto LABEL_19;
    }
  }

  if (v10 < 258048 - *(mfm_arena + 8))
  {
    v12 = *(mfm_arena + 8);
    __mfm_block_mark_start(v18, v12 + v10);
    __mfm_block_mark_allocated(v18, v12, v10);
    *(mfm_arena + 8) += v10;
    *(v18 + 4) += v10;
    ++*(v18 + 24);
    v17 = v18 + 0x10000 + 16 * v12;
    if (*(mfm_arena + 16) < *(mfm_arena + 8))
    {
      *(mfm_arena + 16) = *(mfm_arena + 8);
    }
  }

LABEL_19:
  __mfm_unlock(v18);
  if (mfm_memtag_enabled)
  {
    v17 = memtag_assign_tag(v17, 16 * v10);
    v21 = 16 * v10;
    if (16 * v10 % 0x10)
    {
      __break(1u);
      JUMPOUT(0x34A68);
    }

    if (v17 % 0x10)
    {
      __break(1u);
      JUMPOUT(0x34A8CLL);
    }

    _X8 = v17;
    __asm { STG             X8, [X8] }

    _X8 = v17 + v21;
    __asm { STG             X8, [X8,#-0x10] }

    if (v21 > 0x20)
    {
      _X8 = (v17 + 31) & 0xFFFFFFFFFFFFFFE0;
      __asm { ST2G            X8, [X8] }

      _X8 = (v17 + v21) & 0xFFFFFFFFFFFFFFE0;
      __asm { ST2G            X8, [X8,#-0x20] }
    }

    for (j = (v17 + 63) & 0xFFFFFFFFFFFFFFC0; j < ((v17 + v21) & 0xFFFFFFFFFFFFFFC0); j += 64)
    {
      __asm { DC              GVA, X8 }
    }
  }

  return v17;
}

uint64_t __mfm_size_class_up(unint64_t a1)
{
  if (a1 <= 1)
  {
    return 0;
  }

  else
  {
    v3 = 64 - __clz(a1 - 1);
    if (v3 >= 0xA)
    {
      return 10;
    }

    else
    {
      return v3;
    }
  }
}

void *__mfm_block_remove(uint64_t a1, void *a2)
{
  v7 = a2;
  if (mfm_memtag_enabled)
  {
    v7 = __mfm_block_fixup_ptr(a2);
  }

  v6 = __mfm_block_next(v7);
  v5 = v7[1];
  v4 = a1 + 16 * v6;
  v3 = (a1 + 16 * v5);
  if (mfm_memtag_enabled)
  {
    v4 = __mfm_block_fixup_ptr(v4);
    v3 = __mfm_block_fixup_ptr(v3);
  }

  *(v4 + 8) = v5;
  result = __mfm_block_set_next(v3, v6);
  *v7 = 0;
  v7[1] = 0;
  return result;
}

void *__mfm_free_block(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v4 = (a1 + 32 + 16 * __mfm_size_class_down(a3));
  __mfm_block_mark_free(a1, a2, a3);
  return __mfm_block_insert_head(a1, v4, (a1 + 0x10000 + 16 * a2));
}

double __mfm_block_mark_allocated(uint64_t result, unint64_t a2, unint64_t a3)
{
  if (a3 >= 0x40)
  {
    return __mfm_block_set_sizes(result, 1, a2, a3);
  }

  *(result + 224 + 8 * (2 * (a2 >> 6) + 1)) |= 1 << (a2 & 0x3F);
  v3 = 2 * ((a2 + a3 - 1) >> 6) + 1;
  *(result + 224 + 8 * v3) |= 1 << ((a2 + a3 - 1) & 0x3F);
  return v4;
}

void mfm_free(uint64_t a1)
{
  v15 = a1;
  v14 = mfm_arena;
  v11 = a1 & 0xF0FFFFFFFFFFFFFFLL;
  if (!__mfm_address_owned(mfm_arena, a1 & 0xF0FFFFFFFFFFFFFFLL))
  {
    qword_D8128 = "BUG IN LIBMALLOC: not MFM owned";
    qword_D8158 = v15;
    __break(1u);
    JUMPOUT(0x34F34);
  }

  v13 = __mfm_block_index(v14, v11);
  if (!__mfm_block_is_allocated(v14, v13))
  {
    qword_D8128 = "BUG IN CLIENT OF LIBMALLOC: not an allocated block";
    qword_D8158 = v15;
    __break(1u);
    JUMPOUT(0x34F8CLL);
  }

  v12 = __mfm_block_size(v14, v13);
  if (mfm_memtag_enabled)
  {
    v15 = memtag_assign_tag(v15, 16 * v12);
    v17 = 16 * v12;
    if ((v15 & 0xF) != 0)
    {
      __break(1u);
      JUMPOUT(0x35004);
    }

    _X8 = v15;
    __asm { STG             X8, [X8] }

    _X8 = v15 + v17;
    __asm { STG             X8, [X8,#-0x10] }

    if (v17 >= 0x21)
    {
      _X8 = (v15 + 31) & 0xFFFFFFFFFFFFFFE0;
      __asm { ST2G            X8, [X8] }

      _X8 = (v15 + v17) & 0xFFFFFFFFFFFFFFE0;
      __asm { ST2G            X8, [X8,#-0x20] }
    }

    for (i = (v15 + 63) & 0xFFFFFFFFFFFFFFC0; i < ((v15 + v17) & 0xFFFFFFFFFFFFFFC0); i += 64)
    {
      __asm { DC              GVA, X8 }
    }
  }

  _platform_bzero();
  __mfm_lock(v14);
  if (!__mfm_block_is_allocated(v14, v13) || v12 != __mfm_block_size(v14, v13))
  {
    qword_D8128 = "BUG IN CLIENT OF LIBMALLOC: double free detected";
    qword_D8158 = v15;
    __break(1u);
    JUMPOUT(0x35150);
  }

  *(v14 + 4) -= v12;
  --*(v14 + 24);
  if (!__mfm_prev_block_is_allocated(v14, v13))
  {
    block_size = __mfm_prev_block_size(v14, v13);
    __mfm_block_clear_start(v14, v13);
    __mfm_block_remove(v14, (v14 + 16 * (v13 - block_size) + 0x10000));
    v13 -= block_size;
    v12 += block_size;
  }

  if (v13 + v12 < *(v14 + 8) && !__mfm_block_is_allocated(v14, v13 + v12))
  {
    v9 = __mfm_block_size(v14, v13 + v12);
    __mfm_block_clear_start(v14, v13 + v12);
    __mfm_block_remove(v14, (v14 + 16 * (v13 + v12) + 0x10000));
    v12 += v9;
  }

  if (v13 + v12 == *(v14 + 8))
  {
    __mfm_block_clear_start(v14, v13 + v12);
    __mfm_block_mark_free(v14, v13, v12);
    *(v14 + 8) = v13;
  }

  else
  {
    __mfm_free_block(v14, v13, v12);
  }

  __mfm_unlock(v14);
}

uint64_t __mfm_prev_block_size(uint64_t a1, uint64_t a2)
{
  v9 = (a2 - 1) >> 6;
  v8 = (a2 - 1) & 0x3F;
  v5 = *(a1 + 224 + 16 * v9) << (63 - ((a2 - 1) & 0x3F));
  if (v5)
  {
    return (__clz(v5) + 1);
  }

  v6 = *(a1 + 224 + 8 * (2 * v9 - 2));
  if (v6)
  {
    return __clz(v6) + v8 + 2;
  }

  *&v2 = 0;
  *(&v2 + 1) = *(a1 + 224 + 8 * (2 * v9 + 1));
  v7 = v2;
  if (v8 < 0x12)
  {
    v7 = v2 | *(a1 + 224 + 8 * (2 * v9 - 1));
  }

  v3 = *(&v7 + 1) >> (v8 - 18);
  if (v8 + 46 < 0x40)
  {
    v3 = (v7 >> (v8 + 46)) | (*(&v7 + 1) << (18 - v8));
  }

  return (v3 & 0x3FFFF) + 1;
}

double __mfm_block_mark_free(uint64_t result, unint64_t a2, unint64_t a3)
{
  if (a3 >= 0x40)
  {
    return __mfm_block_set_sizes(result, 0, a2, a3);
  }

  *(result + 224 + 8 * (2 * (a2 >> 6) + 1)) &= ~(1 << (a2 & 0x3F));
  v3 = 2 * ((a2 + a3 - 1) >> 6) + 1;
  *(result + 224 + 8 * v3) &= ~(1 << ((a2 + a3 - 1) & 0x3F));
  return v4;
}

BOOL mfm_claimed_address(uint64_t a1)
{
  v8 = __mfm_address_owned(mfm_arena, a1 & 0xF0FFFFFFFFFFFFFFLL);
  if (!v8)
  {
    return v8;
  }

  if ((mfm_memtag_enabled & 1) == 0)
  {
    return v8;
  }

  _X8 = a1;
  __asm { LDG             X8, [X8] }

  return (HIBYTE(a1) & 0xF) == (HIBYTE(_X8) & 0xF) && v8;
}

uint64_t mfmi_enumerator(unsigned int a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, void (*a6)(void, uint64_t, uint64_t, _OWORD *, uint64_t))
{
  v20 = a1;
  v19 = a2;
  v18 = a3;
  v17 = a4;
  v16 = a5;
  v15 = a6;
  v14 = 0;
  zone = mfmi_read_zone(a1, a4, a5, &v14);
  if (zone)
  {
    return zone;
  }

  else
  {
    if ((v18 & 4) != 0)
    {
      v12[0] = v17;
      v12[1] = 0x10000;
      v15(v20, v19, 4, v12, 1);
    }

    if ((v18 & 2) != 0)
    {
      v11[0] = v17 + 0x10000;
      v11[1] = 4128768;
      v15(v20, v19, 2, v11, 1);
    }

    if (v18)
    {
      v9 = 0;
      for (i = 0; i < *(v14 + 8); i += v8)
      {
        v10 = v14 + 0x10000 + 16 * i;
        v8 = __mfm_block_size(v14, i);
        if (__mfm_block_is_allocated(v14, i))
        {
          if (v9 == 32)
          {
            v15(v20, v19, 1, v22, v9);
            v9 = 0;
          }

          *&v22[v9] = v17 + v10 - v14;
          *(&v22[v9++] + 1) = 16 * v8;
        }
      }

      if (v9)
      {
        v15(v20, v19, 1, v22, v9);
      }
    }

    return 0;
  }
}

unint64_t mfmi_good_size(uint64_t a1, unint64_t a2)
{
  if (a2 > 0x4000)
  {
    return 0;
  }

  if (a2 % 0x10)
  {
    return a2 + 16 - a2 % 0x10;
  }

  else
  {
    return a2;
  }
}

uint64_t mfmi_print_self(uint64_t a1, int a2)
{
  if (mfm_arena)
  {
    return print_mfm_arena(mfm_arena, a2 != 0, malloc_report_simple);
  }

  return result;
}

uint64_t mfmi_statistics_self(uint64_t a1, uint64_t a2)
{
  v3 = mfm_arena;
  result = _platform_bzero();
  if (v3)
  {
    return mfmi_statistics(v3, a2);
  }

  return result;
}

uint64_t mfmi_locked()
{
  v4 = mfm_arena;
  if (!mfm_arena)
  {
    return 0;
  }

  v0 = 0;
  atomic_compare_exchange_strong_explicit(mfm_arena, &v0, *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24), memory_order_acquire, memory_order_acquire);
  if (v0)
  {
    return 0;
  }

  else
  {
    v1 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
    v2 = v1;
    atomic_compare_exchange_strong_explicit(v4, &v2, 0, memory_order_release, memory_order_relaxed);
    if (v2 != v1)
    {
      os_unfair_lock_unlock(v4);
    }

    return 1;
  }
}

uint64_t mfmi_print_task(unsigned int a1, unsigned int a2, const void *a3, uint64_t a4, uint64_t (*a5)(const char *))
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  v7 = a5;
  v6 = 0;
  if (mfmi_read_zone(a1, a3, a4, &v6))
  {
    return v7("Failed to read ProbGuard zone at %p\n", v9);
  }

  else
  {
    return mfmi_print(v6, v10 >= 2, v7);
  }
}

uint64_t mfmi_statistics_task(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = a1;
  v9 = a2;
  v8 = a3;
  v7 = a4;
  v6 = 0;
  zone = mfmi_read_zone(a1, a2, a3, &v6);
  result = _platform_bzero();
  if (!zone)
  {
    return mfmi_statistics(v6, v7);
  }

  return result;
}

uint64_t __mfm_block_fixup_ptr(uint64_t _X0)
{
  __asm { LDG             X0, [X0] }

  return result;
}

uint64_t __mfm_size_class_down(unint64_t a1)
{
  v3 = 63 - __clz(a1);
  if (v3 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v3;
  }
}

void *__mfm_block_insert_head(uint64_t a1, void *a2, void *a3)
{
  v7 = __mfm_block_offset(a1, a2);
  v5 = __mfm_block_next(a2);
  v6 = __mfm_block_offset(a1, a3);
  v4 = a1 + 16 * v5;
  if (mfm_memtag_enabled)
  {
    a3 = __mfm_block_fixup_ptr(a3);
    v4 = __mfm_block_fixup_ptr(v4);
  }

  a3[1] = v7;
  __mfm_block_set_next(a3, v5);
  result = __mfm_block_set_next(a2, v6);
  *(v4 + 8) = v6;
  return result;
}

double __mfm_block_set_sizes(uint64_t a1, char a2, unint64_t a3, uint64_t a4)
{
  v22 = a3 >> 6;
  v20 = a3 & 0x3F;
  v24 = 2 * (a4 - 1) + (a2 & 1);
  v4 = 0x7FFFFLL << v20;
  v5 = 0x7FFFFLL << (v20 - 64);
  if (v20 < 0x40)
  {
    v5 = 0x7FFFFuLL >> (64 - v20);
  }

  else
  {
    v4 = 0;
  }

  v6 = 0;
  if ((a3 & 0x3F) != 0)
  {
    v6 = v5;
  }

  v7 = v4;
  v8 = v6;
  v9 = v24 << v20;
  v10 = v24 << (v20 - 64);
  if (v20 < 0x40)
  {
    v10 = (v24 >> (64 - v20)) | (*(&v24 + 1) << v20);
  }

  else
  {
    v9 = 0;
  }

  v11 = 0;
  if ((a3 & 0x3F) != 0)
  {
    v11 = v10;
  }

  *(a1 + 224 + 8 * (2 * v22 + 1)) &= ~v7;
  *(a1 + 224 + 8 * (2 * v22 + 1)) |= v9;
  if (v20 + 18 >= 0x40)
  {
    *(a1 + 224 + 8 * (2 * v22 + 3)) &= ~v8;
    *(a1 + 224 + 8 * (2 * v22 + 3)) |= v11;
  }

  v23 = (a3 + a4 - 1) >> 6;
  v21 = (a3 + a4 - 1) & 0x3F;
  v25 = a4 - 1 + ((a2 & 1) << 18);
  v12 = 0x7FFFFLL << (v21 + 46);
  v13 = 0x7FFFFLL << (((a3 + a4 - 1) & 0x3F) - 18);
  if ((v21 + 46) < 0x40)
  {
    v13 = 0x7FFFFuLL >> (18 - ((a3 + a4 - 1) & 0x3F));
  }

  else
  {
    v12 = 0;
  }

  v14 = 0;
  if (((a3 + a4 - 1) & 0x3F) != 0xFFFFFFFFFFFFFFD2)
  {
    v14 = v13;
  }

  v15 = v12;
  v16 = v14;
  v17 = v25 << (v21 + 46);
  *&v18 = v25 << (v21 - 18);
  if ((v21 + 46) < 0x40)
  {
    *&v18 = (v25 >> (18 - v21)) | (*(&v25 + 1) << (v21 + 46));
  }

  else
  {
    v17 = 0;
  }

  if ((v21 + 47) <= 0x40)
  {
    *(a1 + 224 + 8 * (2 * v23 - 1)) &= ~v15;
    *(a1 + 224 + 8 * (2 * v23 - 1)) |= v17;
  }

  *(a1 + 224 + 8 * (2 * v23 + 1)) &= ~v16;
  result = v18;
  *(a1 + 224 + 8 * (2 * v23 + 1)) |= *&v18;
  return result;
}