atomic_ullong *partition_phase_offset_with_meta_t(atomic_ullong *result, uint64_t a2)
{
  v2 = result[6];
  v3 = result[1];
  if (*result >= v3)
  {
    goto LABEL_4;
  }

  add_explicit = atomic_fetch_add_explicit(result, 0x2000uLL, memory_order_relaxed);
  if ((add_explicit + 0x2000) > v3)
  {
    atomic_fetch_add_explicit(result, 0xFFFFFFFFFFFFE000, memory_order_relaxed);
LABEL_4:
    add_explicit = -1;
  }

  v5 = result[3];
  if (result[2] <= v5)
  {
LABEL_8:
    v7 = 0;
    if (add_explicit == -1)
    {
      v6 = -1;
      v8 = 0;
      goto LABEL_11;
    }

    v8 = 0;
    goto LABEL_12;
  }

  v6 = atomic_fetch_add_explicit(result + 2, 0xFFFFFFFFFFFFE000, memory_order_relaxed) - 0x2000;
  if (v6 < v5)
  {
    atomic_fetch_add_explicit(result + 2, 0x2000uLL, memory_order_relaxed);
    goto LABEL_8;
  }

  if (v6 == -1 || add_explicit == -1)
  {
    v7 = 0;
    v8 = 0;
    if (add_explicit == -1)
    {
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  do
  {
    v14 = v2 + 16 * add_explicit;
    v15 = result[7];
    v16 = v2 + 16 * v6;
    while (1)
    {
      if (v13 < 0x2000)
      {
        v17 = (v14 + 16 * v13);
        while (1)
        {
          v18 = *v17;
          v17 += 2;
          if ((v18 & 0x3FFFFFFFFFFFFFFFuLL) > v15)
          {
            break;
          }

          if (++v13 == 0x2000)
          {
            v19 = 0x2000;
            if (v12 < 0x2000)
            {
              goto LABEL_28;
            }

            goto LABEL_32;
          }
        }
      }

      v19 = v13;
      if (v12 < 0x2000)
      {
LABEL_28:
        v20 = (v16 + 16 * v12);
        while (1)
        {
          v21 = *v20;
          v20 += 2;
          if ((v21 & 0x3FFFFFFFFFFFFFFFuLL) < v15)
          {
            break;
          }

          if (++v12 == 0x2000)
          {
            v13 = v19;
            goto LABEL_36;
          }
        }
      }

LABEL_32:
      v22 = v12;
      if (v19 == 0x2000 || v12 == 0x2000)
      {
        break;
      }

      v23 = *(v16 + 16 * v12);
      *(v16 + 16 * v12) = *(v14 + 16 * v19);
      *(v14 + 16 * v19) = v23;
      v13 = v19 + 1;
      ++v12;
      if (v19 > 8190 || v22 >= 0x1FFF)
      {
        goto LABEL_36;
      }
    }

    v13 = v19;
LABEL_36:
    v24 = v13 != 0x2000;
    if (v12 == 0x2000 && v13 == 0x2000)
    {
      v24 = 2;
    }

    if (v24)
    {
LABEL_47:
      v27 = result[3];
      if (result[2] > v27)
      {
        v6 = atomic_fetch_add_explicit(result + 2, 0xFFFFFFFFFFFFE000, memory_order_relaxed) - 0x2000;
        if (v6 >= v27)
        {
LABEL_51:
          v12 = 0;
          ++v10;
          continue;
        }

        atomic_fetch_add_explicit(result + 2, 0x2000uLL, memory_order_relaxed);
      }

      v6 = -1;
      goto LABEL_51;
    }

    v26 = result[1];
    if (*result < v26)
    {
      add_explicit = atomic_fetch_add_explicit(result, 0x2000uLL, memory_order_relaxed);
      if ((add_explicit + 0x2000) <= v26)
      {
        goto LABEL_46;
      }

      atomic_fetch_add_explicit(result, 0xFFFFFFFFFFFFE000, memory_order_relaxed);
    }

    add_explicit = -1;
LABEL_46:
    v13 = 0;
    ++v11;
    if ((v24 - 1) <= 1)
    {
      goto LABEL_47;
    }
  }

  while (v6 != -1 && add_explicit != -1);
  v8 = v11 << 13;
  v7 = v10 << 13;
  if (add_explicit == -1)
  {
LABEL_11:
    add_explicit = v6;
  }

LABEL_12:
  *(result[8] + 8 * a2) = add_explicit;
  atomic_fetch_add_explicit(result + 4, v8, memory_order_relaxed);
  atomic_fetch_add_explicit(result + 5, v7, memory_order_relaxed);
  return result;
}

uint64_t _big_split_offset_with_meta_t(void *a1, uint64_t a2, uint64_t a3, NSObject *a4, signed int a5, __n128 a6)
{
  v6 = a2 + 1;
  if (a5 >= 3)
  {
    while (v6 < (a5 << 13))
    {
      if (a5-- <= 3)
      {
        a5 = 2;
        return parallel_partition_offset_with_meta_t(a1, v6, a3, a4, a5, a6);
      }
    }
  }

  return parallel_partition_offset_with_meta_t(a1, v6, a3, a4, a5, a6);
}

void *oqinit_offset_t(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = a2;
  if (!a2)
  {
LABEL_5:
    result = 0;
    goto LABEL_6;
  }

  result = malloc_type_zone_malloc(queryZone, 8 * a2, 0xA4971684uLL);
  if (!result)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      *v4 = 0;
      _os_log_fault_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "allocation function returned null", v4, 2u);
    }

    goto LABEL_5;
  }

LABEL_6:
  *(a1 + 8) = result;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0xFFFFFFFFLL;
  *a1 = 0;
  return result;
}

uint64_t ___qsort_offset_t_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v3 = *a2 & 0x3FFFFFFFFFFFFFFFLL;
  v4 = *a3 & 0x3FFFFFFFFFFFFFFFLL;
  v5 = v3 > v4;
  if (v3 == v4)
  {
    v6 = 0;
  }

  else
  {
    v6 = -1;
  }

  if (v5)
  {
    return 1;
  }

  else
  {
    return v6;
  }
}

void _qsort_big_offset_t(uint64_t *a1)
{
  v1 = a1[1];
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v36 = a1[6];
  v37 = *a1;
  v6 = *(a1 + 14);
  v35 = *(a1 + 15);
  OSAtomicEnqueue(&qsort_cached_allocations, a1, 0);
  if (v2 > v1)
  {
    for (i = v4 + 1; ; ++i)
    {
      v10 = v2 - v1;
      if (v2 - v1 <= v5 || i > 9)
      {
        break;
      }

      if (v6 <= 1)
      {
        v6 = 1;
      }

      v12 = getSize_memSize;
      if (!getSize_memSize)
      {
        v42 = 0u;
        v43 = 0u;
        *host_info_out = 0u;
        v13 = MEMORY[0x1C6920B70]();
        host_info_outCnt = 12;
        v14 = host_info(v13, 1, host_info_out, &host_info_outCnt);
        if (v14)
        {
          mach_error("flushsize", v14);
          exit(1);
        }

        v12 = *(&v43 + 1);
        getSize_memSize = *(&v43 + 1);
      }

      v15 = 3 * v12 / 5uLL;
      v16 = v3;
      if (8 * v10 > v15)
      {
        v16 = dispatch_group_create();
      }

      if (v10 <= v36 || 8 * v10 >= v15)
      {
        v20 = _partition_offset_t(v37, v1, v2);
      }

      else
      {
        v17 = qos_class_self();
        global_queue = dispatch_get_global_queue(v17, 2uLL);
        v20 = _big_partition_offset_t(v37, v1, v2, global_queue, v6, v19);
      }

      v21 = v20;
      v22 = v20 - v1;
      if (v20 < v1)
      {
        v32 = __si_assert_copy_extra_332();
        v33 = v32;
        v34 = "";
        if (v32)
        {
          v34 = v32;
        }

        __message_assert(v32, "OQueue.c", 14, "q>=left", v34, v39);
        free(v33);
        if (__valid_fs(-1))
        {
          MEMORY[0xBAD] = -559038737;
          abort();
        }

        MEMORY[0xC00] = -559038737;
        abort();
      }

      v23 = OSAtomicDequeue(&qsort_cached_allocations, 0);
      if (!v23)
      {
        v23 = malloc_type_malloc(0x40uLL, 0x10300409C00947AuLL);
      }

      *(v23 + 4) = i;
      *(v23 + 5) = v5;
      *(v23 + 6) = v36;
      v24 = v2 - v21;
      if (v22 <= v2 - v21)
      {
        v25 = v21 - 1;
      }

      else
      {
        v24 = v21 - 1 - v1;
        v25 = v2;
      }

      if (v22 > v2 - v21)
      {
        v26 = v21;
      }

      else
      {
        v26 = v1;
      }

      if (v22 > v2 - v21)
      {
        v2 = v21 - 1;
      }

      else
      {
        v1 = v21;
      }

      *v23 = v37;
      *(v23 + 1) = v26;
      v27 = (((v24 + 1) * v6) / (v25 - v26 + 1));
      if (v27 <= 1)
      {
        v28 = 1;
      }

      else
      {
        v28 = v27;
      }

      if (v6 >= v27)
      {
        v29 = v28;
      }

      else
      {
        v29 = 0;
      }

      v23[14] = v6 - v29;
      v23[15] = v35;
      *(v23 + 2) = v25;
      *(v23 + 3) = v16;
      if (v16 == v3)
      {
        if (v6 >= v27)
        {
          v6 = v28;
        }

        v8 = qos_class_self();
        v9 = dispatch_get_global_queue(v8, 2uLL);
        dispatch_group_async_f(v16, v9, v23, _qsort_big_offset_t);
      }

      else
      {
        v23[14] = v6;
        _qsort_big_offset_t(v23);
        dispatch_group_wait(v16, 0xFFFFFFFFFFFFFFFFLL);
        dispatch_release(v16);
        v30 = qos_class_self();
        v31 = dispatch_get_global_queue(v30, 2uLL);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 0x40000000;
        v39[0] = ___qsort_big_offset_t_block_invoke;
        v39[1] = &__block_descriptor_tmp_23_4148;
        v39[2] = v23;
        dispatch_async(v31, block);
      }

      if (v2 <= v1)
      {
        return;
      }
    }

    _qsort_offset_t(v37, v1, v2);
  }
}

uint64_t _big_partition_offset_t(uint64_t a1, uint64_t a2, uint64_t a3, NSObject *a4, signed int a5, __n128 a6)
{
  v8 = a3 - a2;
  v9 = a3 - a2 + 1;
  v10 = (a1 + 8 * a2);
  v11 = &v10[(v9 + (v9 >> 63)) >> 1];
  v12 = (a1 + 8 * a3);
  if (v8 < 64)
  {
    v28 = &v10[(v9 + (v9 >> 63)) >> 1];
    v17 = v10;
  }

  else
  {
    v13 = v9 >> 3;
    v14 = &v10[v9 >> 3];
    v15 = *v10 & 0x3FFFFFFFFFFFFFFFLL;
    v16 = *v14 & 0x3FFFFFFFFFFFFFFFLL;
    v17 = v10;
    if (v15 != v16)
    {
      v17 = &v10[2 * v13];
      v18 = *v17 & 0x3FFFFFFFFFFFFFFFLL;
      if (v15 >= v18)
      {
        v19 = &v10[2 * v13];
      }

      else
      {
        v19 = v10;
      }

      if (v16 > v18)
      {
        v19 = &v10[v9 >> 3];
      }

      if (v15 >= v18)
      {
        v20 = v10;
      }

      else
      {
        v20 = &v10[2 * v13];
      }

      if (v16 >= v18)
      {
        v14 = v20;
      }

      if (v15 >= v16)
      {
        v14 = v19;
      }

      if (v18 != v15 && v18 != v16)
      {
        v17 = v14;
      }
    }

    v22 = 2 * v13;
    v23 = -v13;
    v24 = 8 * v13;
    v25 = &v11[v24 / 0xFFFFFFFFFFFFFFF8];
    v26 = v11[v24 / 0xFFFFFFFFFFFFFFF8] & 0x3FFFFFFFFFFFFFFFLL;
    v27 = *v11 & 0x3FFFFFFFFFFFFFFFLL;
    if (v26 == v27)
    {
      v28 = &v11[v24 / 0xFFFFFFFFFFFFFFF8];
    }

    else
    {
      v28 = &v11[v24 / 8];
      v29 = *v28 & 0x3FFFFFFFFFFFFFFFLL;
      if (v29 != v26 && v29 != v27)
      {
        if (v26 >= v27)
        {
          if (v26 < v29)
          {
            v28 = v25;
          }

          if (v27 > v29)
          {
            v28 = &v10[(v9 + (v9 >> 63)) >> 1];
          }
        }

        else
        {
          if (v26 >= v29)
          {
            v28 = v25;
          }

          if (v27 < v29)
          {
            v28 = &v10[(v9 + (v9 >> 63)) >> 1];
          }
        }
      }
    }

    v31 = &v12[-v22];
    v32 = &v12[v23];
    v33 = *v31 & 0x3FFFFFFFFFFFFFFFLL;
    v34 = *v32 & 0x3FFFFFFFFFFFFFFFLL;
    if (v33 == v34)
    {
      v12 = v31;
    }

    else
    {
      v35 = *v12 & 0x3FFFFFFFFFFFFFFFLL;
      if (v33 >= v35)
      {
        v36 = v12;
      }

      else
      {
        v36 = v31;
      }

      if (v34 > v35)
      {
        v36 = v32;
      }

      if (v33 < v35)
      {
        v31 = v12;
      }

      if (v34 < v35)
      {
        v31 = v32;
      }

      if (v33 >= v34)
      {
        v31 = v36;
      }

      if (v35 == v34)
      {
        v31 = v12;
      }

      if (v35 != v33)
      {
        v12 = v31;
      }
    }
  }

  v37 = *v17 & 0x3FFFFFFFFFFFFFFFLL;
  v38 = *v28 & 0x3FFFFFFFFFFFFFFFLL;
  if (v37 == v38)
  {
    v28 = v17;
  }

  else
  {
    v39 = *v12 & 0x3FFFFFFFFFFFFFFFLL;
    if (v39 == v37 || v39 == v38)
    {
      v28 = v12;
    }

    else if (v37 >= v38)
    {
      if (v38 <= v39)
      {
        if (v37 >= v39)
        {
          v28 = v12;
        }

        else
        {
          v28 = v17;
        }
      }
    }

    else if (v38 >= v39)
    {
      if (v37 >= v39)
      {
        v28 = v17;
      }

      else
      {
        v28 = v12;
      }
    }
  }

  return parallel_partition_offset_t(v10, v9, *v28 & 0x3FFFFFFFFFFFFFFFLL, a4, a5, a6) + a2;
}

void ___qsort_big_offset_t_block_invoke(uint64_t a1)
{
  madvise((**(a1 + 32) + 8 * *(*(a1 + 32) + 8)), 8 * (*(*(a1 + 32) + 16) - *(*(a1 + 32) + 8)), 4);
  v2 = *(a1 + 32);

  OSAtomicEnqueue(&qsort_cached_allocations, v2, 0);
}

uint64_t parallel_partition_offset_t(void *a1, uint64_t a2, uint64_t a3, NSObject *a4, signed int a5, __n128 a6)
{
  v6 = a5;
  v18[1] = v18;
  context[9] = *MEMORY[0x1E69E9840];
  context[6] = a1;
  v11 = 8 * a5;
  MEMORY[0x1EEE9AC00](a6);
  v13 = v18 - v12;
  bzero(v18 - v12, v11);
  v14 = (a2 / 0x4000) << 13;
  context[1] = v14;
  context[2] = a2;
  v15 = a2 - v14;
  context[4] = 0;
  context[5] = 0;
  context[7] = a3;
  context[8] = v13;
  if (v6 >= 1)
  {
    memset(v13, 255, v11);
  }

  v16 = v14 + 0x2000;
  if (v15 > v14 + 0x2000)
  {
    v16 = a2 - v14;
  }

  context[3] = v15 + ((v16 - v15 + 0x1FFF) & 0xFFFFFFFFFFFFE000);
  context[0] = 0;
  if (8 * a2 >= (4 * *MEMORY[0x1E69E9AC8]))
  {
    madvise(a1, 8 * a2, 3);
  }

  if (a2 / 0x4000 < v6)
  {
    v6 = a2 / 0x4000;
  }

  dispatch_apply_f(v6, a4, context, partition_phase_offset_t);
  return sequential_fixup_offset_t(context, a2, v6);
}

uint64_t sequential_fixup_offset_t(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v6 = a3;
  qsort(*(a1 + 64), a3, 8uLL, index_comp);
  v7 = *(a1 + 64);
  v8 = (a3 - 1);
  v9 = 0;
  if (a3 < 1)
  {
    goto LABEL_107;
  }

  while (*(v7 + 8 * v9) == -1)
  {
    if (v6 == ++v9)
    {
      v9 = v6;
      break;
    }
  }

  if (a3 == 1)
  {
    v8 = 0;
    if (v9 < 0)
    {
LABEL_9:
      v10 = 0;
      v11 = 0;
      v12 = *(a1 + 48);
      while (1)
      {
        v13 = *(v7 + 8 * v9);
        v14 = v12 + 8 * v13;
        v15 = *(v7 + 8 * v8);
        v16 = v12 + 8 * v15;
        v17 = *(a1 + 56);
        while (1)
        {
          if (v10 < 0x2000)
          {
            while ((*(v14 + 8 * v10) & 0x3FFFFFFFFFFFFFFFuLL) <= v17)
            {
              if (++v10 == 0x2000)
              {
                v18 = 0x2000;
                if (v11 < 0x2000)
                {
                  goto LABEL_18;
                }

                goto LABEL_21;
              }
            }
          }

          v18 = v10;
          if (v11 < 0x2000)
          {
LABEL_18:
            while ((*(v16 + 8 * v11) & 0x3FFFFFFFFFFFFFFFuLL) >= v17)
            {
              if (++v11 == 0x2000)
              {
                v10 = v18;
                goto LABEL_25;
              }
            }
          }

LABEL_21:
          v19 = v11;
          if (v18 == 0x2000 || v11 == 0x2000)
          {
            break;
          }

          v20 = *(v16 + 8 * v11);
          *(v16 + 8 * v19) = *(v14 + 8 * v18);
          *(v14 + 8 * v18) = v20;
          v10 = v18 + 1;
          v11 = v19 + 1;
          if (v18 > 8190 || v19 >= 0x1FFF)
          {
            goto LABEL_25;
          }
        }

        v10 = v18;
LABEL_25:
        v21 = v10 != 0x2000;
        if (v11 == 0x2000 && v10 == 0x2000)
        {
          v21 = 2;
        }

        if (v21)
        {
          goto LABEL_36;
        }

        if ((v13 & 0x8000000000000000) == 0 && v13 < *(a1 + 32))
        {
          *(v7 + 8 * v9) = -1;
          *(a1 + 32) += 0x2000;
        }

        ++v9;
        if ((v21 - 1) > 1)
        {
          v10 = 0;
          if (v9 >= v8)
          {
            break;
          }
        }

        else
        {
          v10 = 0;
          v15 = *(v7 + 8 * v8);
LABEL_36:
          if (v15 < a2 && v15 >= a2 - *(a1 + 40))
          {
            *(v7 + 8 * v8) = -1;
            *(a1 + 40) += 0x2000;
          }

          v11 = 0;
          if (v9 >= --v8)
          {
            break;
          }
        }
      }
    }
  }

  else
  {
LABEL_107:
    do
    {
      if (*(v7 + 8 * v8) != -1)
      {
        break;
      }

      --v8;
    }

    while (v8);
    if (v9 < v8)
    {
      goto LABEL_9;
    }
  }

  v24 = *(a1 + 32);
  v23 = *(a1 + 40);
  v25 = malloc_type_malloc(0x10000uLL, 0x100004000313F17uLL);
  if (a3 < 1)
  {
    v43 = *a1;
    v42 = *(a1 + 16) - 1;
  }

  else
  {
    v26 = 0;
    v27 = ~v23 + a2;
    v28 = a3;
    v29 = *(a1 + 64);
    v30 = 8 * a3;
    do
    {
      v31 = v29[v26];
      v32 = v31 == -1 || v27 > v31;
      if (!v32)
      {
        break;
      }

      if (v31 != -1)
      {
        if (v24 <= v31)
        {
          break;
        }

        v33 = *(a1 + 32);
        if (v33 > v31)
        {
          v34 = 0;
          do
          {
            if (v29[v34 / 8] == v33)
            {
              v33 += 0x2000;
              *(a1 + 32) = v33;
            }

            v34 += 8;
          }

          while (v30 != v34);
          if (v33 >= *a1)
          {
            break;
          }

          memcpy(v25, (*(a1 + 48) + 8 * v29[v26]), 0x10000uLL);
          memcpy((*(a1 + 48) + 8 * *(*(a1 + 64) + 8 * v26)), (*(a1 + 48) + 8 * *(a1 + 32)), 0x10000uLL);
          memcpy((*(a1 + 48) + 8 * *(a1 + 32)), v25, 0x10000uLL);
          v35 = *(a1 + 32);
          v29 = *(a1 + 64);
          v29[v26] = v35;
          *(a1 + 32) = v35 + 0x2000;
        }
      }

      ++v26;
    }

    while (v26 != v28);
    v36 = v28;
    do
    {
      v37 = v36 - 1;
      v38 = v29[v36 - 1];
      if (v24 > v38)
      {
        break;
      }

      if (v38 != -1)
      {
        if (v27 > v38)
        {
          break;
        }

        v39 = *(a1 + 40) + 0x2000;
        *(a1 + 40) = v39;
        v40 = v28 - 1;
        do
        {
          if (v29[v40] == a2 - v39)
          {
            v39 += 0x2000;
            *(a1 + 40) = v39;
          }

          v41 = v40-- + 1;
        }

        while (v41 > 1);
        if ((a2 - v39) < *(a1 + 16))
        {
          break;
        }

        memcpy(v25, (*(a1 + 48) + 8 * v29[v37]), 0x10000uLL);
        memcpy((*(a1 + 48) + 8 * *(*(a1 + 64) + 8 * v37)), (*(a1 + 48) + 8 * (a2 - *(a1 + 40))), 0x10000uLL);
        memcpy((*(a1 + 48) + 8 * (a2 - *(a1 + 40))), v25, 0x10000uLL);
        v29 = *(a1 + 64);
        v29[v37] = a2 - *(a1 + 40);
      }

      v32 = v36-- <= 1;
    }

    while (!v32);
    v42 = *(a1 + 16) - 1;
    v43 = *a1;
    do
    {
      v45 = *v29++;
      v44 = v45;
      if (v45 != -1)
      {
        if (v44 < v43)
        {
          v43 = v44;
        }

        v46 = v44 + 0x2000;
        v47 = v44 + 0x1FFF;
        if (v46 > v42)
        {
          v42 = v47;
        }

        if (v42 >= a2)
        {
          v48 = __si_assert_copy_extra_332();
          v49 = v48;
          v50 = "";
          if (v48)
          {
            v50 = v48;
          }

          __message_assert(v48, "OQueue.c", 14, "right < count", v50);
          free(v49);
          if (__valid_fs(-1))
          {
            MEMORY[0xBAD] = -559038737;
            abort();
          }

          MEMORY[0xC00] = -559038737;
          abort();
        }
      }

      --v28;
    }

    while (v28);
  }

  free(v25);
  v51 = *(a1 + 48);
  if (v43 >= v42)
  {
    v52 = v43;
  }

  else
  {
    v52 = v43;
    do
    {
      v53 = *(a1 + 56);
      while (1)
      {
        v54 = *(v51 + 8 * v52);
        if ((v54 & 0x3FFFFFFFFFFFFFFFuLL) >= v53)
        {
          break;
        }

        if (++v52 >= v42)
        {
          if (v42 <= v43 + 1)
          {
            v52 = v43 + 1;
          }

          else
          {
            v52 = v42;
          }

          goto LABEL_101;
        }
      }

      if (v52 < v42)
      {
        while (1)
        {
          v55 = *(v51 + 8 * v42);
          if ((v55 & 0x3FFFFFFFFFFFFFFFuLL) <= v53)
          {
            break;
          }

          if (v52 >= --v42)
          {
            goto LABEL_101;
          }
        }

        *(v51 + 8 * v42) = v54;
        *(v51 + 8 * v52++) = v55;
        --v42;
      }

      v43 = v52;
    }

    while (v52 < v42);
  }

LABEL_101:
  if ((*(v51 + 8 * v52) & 0x3FFFFFFFFFFFFFFFuLL) >= *(a1 + 56))
  {
    return v52;
  }

  else
  {
    return v52 + 1;
  }
}

atomic_ullong *partition_phase_offset_t(atomic_ullong *result, uint64_t a2)
{
  v2 = result[6];
  v3 = result[1];
  if (*result >= v3)
  {
    goto LABEL_4;
  }

  add_explicit = atomic_fetch_add_explicit(result, 0x2000uLL, memory_order_relaxed);
  if ((add_explicit + 0x2000) > v3)
  {
    atomic_fetch_add_explicit(result, 0xFFFFFFFFFFFFE000, memory_order_relaxed);
LABEL_4:
    add_explicit = -1;
  }

  v5 = result[3];
  if (result[2] <= v5)
  {
LABEL_8:
    v7 = 0;
    if (add_explicit == -1)
    {
      v6 = -1;
      v8 = 0;
      goto LABEL_11;
    }

    v8 = 0;
    goto LABEL_12;
  }

  v6 = atomic_fetch_add_explicit(result + 2, 0xFFFFFFFFFFFFE000, memory_order_relaxed) - 0x2000;
  if (v6 < v5)
  {
    atomic_fetch_add_explicit(result + 2, 0x2000uLL, memory_order_relaxed);
    goto LABEL_8;
  }

  if (v6 == -1 || add_explicit == -1)
  {
    v7 = 0;
    v8 = 0;
    if (add_explicit == -1)
    {
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  do
  {
    v14 = v2 + 8 * add_explicit;
    v15 = result[7];
    v16 = v2 + 8 * v6;
    while (1)
    {
      if (v13 < 0x2000)
      {
        while ((*(v14 + 8 * v13) & 0x3FFFFFFFFFFFFFFFuLL) <= v15)
        {
          if (++v13 == 0x2000)
          {
            v17 = 0x2000;
            if (v12 < 0x2000)
            {
              goto LABEL_27;
            }

            goto LABEL_30;
          }
        }
      }

      v17 = v13;
      if (v12 < 0x2000)
      {
LABEL_27:
        while ((*(v16 + 8 * v12) & 0x3FFFFFFFFFFFFFFFuLL) >= v15)
        {
          if (++v12 == 0x2000)
          {
            v13 = v17;
            goto LABEL_34;
          }
        }
      }

LABEL_30:
      v18 = v12;
      if (v17 == 0x2000 || v12 == 0x2000)
      {
        break;
      }

      v19 = *(v16 + 8 * v12);
      *(v16 + 8 * v18) = *(v14 + 8 * v17);
      *(v14 + 8 * v17) = v19;
      v13 = v17 + 1;
      v12 = v18 + 1;
      if (v17 > 8190 || v18 >= 0x1FFF)
      {
        goto LABEL_34;
      }
    }

    v13 = v17;
LABEL_34:
    v20 = v13 != 0x2000;
    if (v12 == 0x2000 && v13 == 0x2000)
    {
      v20 = 2;
    }

    if (v20)
    {
LABEL_45:
      if (result[2] > v5)
      {
        v6 = atomic_fetch_add_explicit(result + 2, 0xFFFFFFFFFFFFE000, memory_order_relaxed) - 0x2000;
        if (v6 >= v5)
        {
LABEL_49:
          v12 = 0;
          ++v10;
          continue;
        }

        atomic_fetch_add_explicit(result + 2, 0x2000uLL, memory_order_relaxed);
      }

      v6 = -1;
      goto LABEL_49;
    }

    if (*result < v3)
    {
      add_explicit = atomic_fetch_add_explicit(result, 0x2000uLL, memory_order_relaxed);
      if ((add_explicit + 0x2000) <= v3)
      {
        goto LABEL_44;
      }

      atomic_fetch_add_explicit(result, 0xFFFFFFFFFFFFE000, memory_order_relaxed);
    }

    add_explicit = -1;
LABEL_44:
    v13 = 0;
    ++v11;
    if ((v20 - 1) <= 1)
    {
      goto LABEL_45;
    }
  }

  while (v6 != -1 && add_explicit != -1);
  v8 = v11 << 13;
  v7 = v10 << 13;
  if (add_explicit == -1)
  {
LABEL_11:
    add_explicit = v6;
  }

LABEL_12:
  *(result[8] + 8 * a2) = add_explicit;
  atomic_fetch_add_explicit(result + 4, v8, memory_order_relaxed);
  atomic_fetch_add_explicit(result + 5, v7, memory_order_relaxed);
  return result;
}

uint64_t _big_split_offset_t(void *a1, uint64_t a2, uint64_t a3, NSObject *a4, signed int a5, __n128 a6)
{
  v6 = a2 + 1;
  if (a5 >= 3)
  {
    while (v6 < (a5 << 13))
    {
      if (a5-- <= 3)
      {
        a5 = 2;
        return parallel_partition_offset_t(a1, v6, a3, a4, a5, a6);
      }
    }
  }

  return parallel_partition_offset_t(a1, v6, a3, a4, a5, a6);
}

void oqdispose_JustPositionOffset_t(uint64_t a1)
{
  if (*(a1 + 24) >= 1)
  {
    v2 = 0;
    v3 = 8;
    do
    {
      CFRelease(*(*(a1 + 8) + v3));
      ++v2;
      v3 += 16;
    }

    while (v2 < *(a1 + 24));
  }

  if (*(a1 + 48))
  {
    v4 = *(a1 + 32);
    if (v4 < *(a1 + 40))
    {
      v5 = (16 * v4) | 8;
      do
      {
        CFRelease(*(*(a1 + 8) + v5));
        ++v4;
        v5 += 16;
      }

      while (v4 < *(a1 + 40));
    }
  }

  v6 = *(a1 + 8);

  free(v6);
}

void parallel_qsort_JustPositionOffset_t(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x1E69E9840];
  if (a2 > 2047)
  {
    v4 = OSAtomicDequeue(&qsort_cached_allocations, 0);
    if (!v4)
    {
      v4 = malloc_type_malloc(0x40uLL, 0x102004053A8A26AuLL);
    }

    v5 = dispatch_group_create();
    v4[3] = v5;
    v4[4] = 0;
    v4[1] = 0;
    v4[2] = a2 - 1;
    *v4 = a1;
    v6 = thread_count;
    if (!thread_count)
    {
      *v9 = 0x1900000006;
      v8 = 4;
      sysctl(v9, 2u, &thread_count, &v8, 0, 0);
      v6 = thread_count;
    }

    *(v4 + 14) = v6;
    v4[5] = sqrt(a2) / 2;
    if (!v6)
    {
      *v9 = 0x1900000006;
      v8 = 4;
      sysctl(v9, 2u, &thread_count, &v8, 0, 0);
      v6 = thread_count;
    }

    v7 = a2 / (2 * v6);
    if (v7 <= 0x8000)
    {
      v7 = 0x8000;
    }

    else if (!v6)
    {
      *v9 = 0x1900000006;
      v8 = 4;
      sysctl(v9, 2u, &thread_count, &v8, 0, 0);
      v7 = a2 / (2 * thread_count);
    }

    v4[6] = v7;
    if (v4[5] <= 2047)
    {
      v4[5] = 2048;
    }

    _qsort_big_JustPositionOffset_t(v4);
    dispatch_group_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
    dispatch_release(v5);
  }

  else
  {

    _qsort_JustPositionOffset_t(a1, 0, a2 - 1);
  }
}

void _qsort_JustPositionOffset_t(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = malloc_type_malloc(0x800uLL, 0x1000040451B5BE8uLL);
  *v6 = 0;
  v6[1] = 0;
  v7 = 1;
  do
  {
    if (a3 > a2)
    {
      if (v7 <= 128)
      {
        v10 = 128;
      }

      else
      {
        v10 = v7;
      }

      while (1)
      {
        v11 = a3 - a2;
        if (a3 - a2 <= 16)
        {
          break;
        }

        v12 = v11 + 1;
        v13 = (a1 + 16 * a2);
        v14 = &v13[(v11 + 1) >> 1];
        v15 = (a1 + 16 * a3);
        if (v11 < 0x400)
        {
          v23 = &v13[(v11 + 1) >> 1];
          v24 = (a1 + 16 * a3);
          v20 = (a1 + 16 * a2);
        }

        else
        {
          v16 = v12 >> 3;
          v17 = &v13[v12 >> 3];
          v18 = v13->i64[0];
          v19 = v17->i64[0];
          v20 = (a1 + 16 * a2);
          if (v13->i64[0] != v17->i64[0])
          {
            v21 = v13[2 * v16].u64[0];
            v22 = v21 == v18 || v21 == v19;
            v20 = &v13[2 * v16];
            if (!v22)
            {
              v20 = &v13[v12 >> 3];
              if (v18 >= v19)
              {
                if (v19 <= v21)
                {
                  if (v18 >= v21)
                  {
                    v20 = &v13[2 * v16];
                  }

                  else
                  {
                    v20 = (a1 + 16 * a2);
                  }
                }
              }

              else if (v19 >= v21)
              {
                if (v18 >= v21)
                {
                  v20 = (a1 + 16 * a2);
                }

                else
                {
                  v20 = &v13[2 * v16];
                }
              }
            }
          }

          v36 = &v14[-v16];
          v37 = *v36;
          v38 = v14->i64[0];
          if (*v36 == v14->i64[0])
          {
            v23 = &v14[-v16];
          }

          else
          {
            v23 = &v14[v16];
            v39 = v23->i64[0];
            if (v23->i64[0] != v37 && v39 != v38)
            {
              if (v37 >= v39)
              {
                v41 = &v14[v16];
              }

              else
              {
                v41 = &v14[-v16];
              }

              if (v38 > v39)
              {
                v41 = &v13[(v11 + 1) >> 1];
              }

              if (v37 >= v39)
              {
                v23 = &v14[-v16];
              }

              if (v38 < v39)
              {
                v23 = &v13[(v11 + 1) >> 1];
              }

              if (v37 >= v38)
              {
                v23 = v41;
              }
            }
          }

          v42 = &v15[-4 * v16];
          v24 = &v15[-2 * v16];
          v43 = *v42;
          v44 = v24->i64[0];
          if (*v42 == v24->i64[0])
          {
            v24 = v42;
          }

          else
          {
            v45 = *v15;
            if (*v15 == v43 || v45 == v44)
            {
              v24 = (a1 + 16 * a3);
            }

            else if (v43 >= v44)
            {
              if (v44 <= v45)
              {
                if (v43 >= v45)
                {
                  v24 = (a1 + 16 * a3);
                }

                else
                {
                  v24 = v42;
                }
              }
            }

            else if (v44 >= v45)
            {
              if (v43 >= v45)
              {
                v24 = v42;
              }

              else
              {
                v24 = (a1 + 16 * a3);
              }
            }
          }
        }

        v25 = v20->i64[0];
        v26 = v23->i64[0];
        if (v20->i64[0] == v23->i64[0])
        {
          v23 = v20;
        }

        else
        {
          v27 = v24->i64[0];
          if (v24->i64[0] == v25 || v27 == v26)
          {
            v23 = v24;
          }

          else if (v25 >= v26)
          {
            if (v26 <= v27)
            {
              if (v25 >= v27)
              {
                v23 = v24;
              }

              else
              {
                v23 = v20;
              }
            }
          }

          else if (v26 >= v27)
          {
            if (v25 >= v27)
            {
              v23 = v20;
            }

            else
            {
              v23 = v24;
            }
          }
        }

        v29 = *v23;
        *v23 = *v15;
        *v15 = v29;
        v30 = *v13;
        v31 = (a1 + 16 + 16 * a2);
        v32 = a2;
        do
        {
          v33 = *v31;
          if ((vmovn_s64(vcgtq_u64(v30, v29)).u8[0] & 1) == 0)
          {
            v31[-1] = *(a1 + 16 * v32);
            *(a1 + 16 * v32++) = v30;
          }

          ++v31;
          v30 = v33;
          --v11;
        }

        while (v11);
        v34 = *(a1 + 16 * v32);
        *(a1 + 16 * v32) = *v15;
        *v15 = v34;
        if (v32 < a2)
        {
          v56 = __si_assert_copy_extra_332();
          v57 = v56;
          v58 = "";
          if (v56)
          {
            v58 = v56;
          }

          __message_assert(v56, "OQueue.c", 16, "q>=left", v58);
          free(v57);
          if (__valid_fs(-1))
          {
            v59 = 2989;
          }

          else
          {
            v59 = 3072;
          }

          *v59 = -559038737;
          abort();
        }

        if (v7 == v10)
        {
          v8 = v6;
          heapsort_b(v13, v12, 0x10uLL, &__block_literal_global_31_4150);
          v6 = v8;
          v7 = v10;
          goto LABEL_3;
        }

        v35 = &v6[2 * v7];
        if (v32 - a2 <= a3 - v32)
        {
          *v35 = a2;
          v35[1] = v32 - 1;
          a2 = v32;
        }

        else
        {
          *v35 = v32;
          v35[1] = a3;
          a3 = v32 - 1;
        }

        ++v7;
        if (a3 <= a2)
        {
          goto LABEL_3;
        }
      }

      v47 = a1 + 8 + 16 * a2;
      v48 = a2;
      do
      {
        v49 = v48++;
        v50 = *(a1 + 16 * v48);
        v51 = *(a1 + 16 * v49);
        v52 = *(a1 + 16 * v48);
        v53 = v48;
        if (v51 > v52)
        {
          v54 = v47;
          do
          {
            v53 = v49;
            v55 = *v54;
            v54[1] = v51;
            v54[2] = v55;
            if (v53 <= a2)
            {
              break;
            }

            v51 = *(v54 - 3);
            v49 = v53 - 1;
            v54 -= 2;
          }

          while (v51 > v52);
        }

        *(a1 + 16 * v53) = v50;
        v47 += 16;
      }

      while (v48 != a3);
    }

LABEL_3:
    --v7;
    v9 = &v6[2 * v7];
    a2 = *v9;
    a3 = v9[1];
  }

  while (v7);

  free(v6);
}

void _qsort_big_JustPositionOffset_t(void *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  v5 = a1[4];
  v4 = a1[5];
  v64 = a1[6];
  v65 = a1[3];
  v6 = *(a1 + 14);
  v63 = *(a1 + 15);
  OSAtomicEnqueue(&qsort_cached_allocations, a1, 0);
  if (v3 > v2)
  {
    while (1)
    {
      ++v5;
      v9 = v3 - v2;
      if (v3 - v2 <= v4 || v5 > 9)
      {
        break;
      }

      if (v6 <= 1)
      {
        v6 = 1;
      }

      v11 = getSize_memSize;
      if (!getSize_memSize)
      {
        v69 = 0u;
        v70 = 0u;
        *host_info_out = 0u;
        v12 = MEMORY[0x1C6920B70]();
        host_info_outCnt = 12;
        v13 = host_info(v12, 1, host_info_out, &host_info_outCnt);
        if (v13)
        {
          mach_error("flushsize", v13);
          exit(1);
        }

        v11 = *(&v70 + 1);
        getSize_memSize = *(&v70 + 1);
      }

      v14 = 3 * v11 / 5uLL;
      v15 = v65;
      if (16 * v9 > v14)
      {
        v15 = dispatch_group_create();
      }

      if (v9 <= v64 || 16 * v9 >= v14)
      {
        v20 = v9 + 1;
        v21 = (v1 + 16 * v2);
        v22 = &v21[(v9 + 1 + ((v9 + 1) >> 63)) >> 1];
        v23 = (v1 + 16 * v3);
        if (v9 < 1024)
        {
          v30 = &v21[(v9 + 1 + ((v9 + 1) >> 63)) >> 1];
          v31 = (v1 + 16 * v3);
          v28 = (v1 + 16 * v2);
        }

        else
        {
          v24 = v20 >> 3;
          v25 = &v21[v20 >> 3];
          v26 = v21->i64[0];
          v27 = v25->i64[0];
          v28 = (v1 + 16 * v2);
          if (v21->i64[0] != v25->i64[0])
          {
            v28 = &v21[2 * v24];
            v29 = v28->i64[0];
            if (v28->i64[0] != v26 && v29 != v27)
            {
              if (v26 >= v27)
              {
                if (v26 < v29)
                {
                  v28 = (v1 + 16 * v2);
                }

                if (v27 > v29)
                {
                  v28 = v25;
                }
              }

              else
              {
                if (v26 >= v29)
                {
                  v28 = (v1 + 16 * v2);
                }

                if (v27 < v29)
                {
                  v28 = v25;
                }
              }
            }
          }

          v50 = v24;
          v51 = &v22[-v24];
          v52 = *v51;
          v53 = v22->i64[0];
          if (*v51 == v22->i64[0])
          {
            v30 = &v22[-v24];
          }

          else
          {
            v54 = &v22[v50];
            v55 = v22[v24].u64[0];
            if (v55 == v52)
            {
              v30 = &v22[v50];
            }

            else
            {
              v30 = &v22[v50];
              if (v55 != v53)
              {
                v30 = &v21[(v9 + 1 + ((v9 + 1) >> 63)) >> 1];
                if (v52 >= v53)
                {
                  if (v53 <= v55)
                  {
                    if (v52 >= v55)
                    {
                      v30 = v54;
                    }

                    else
                    {
                      v30 = &v22[-v24];
                    }
                  }
                }

                else if (v53 >= v55)
                {
                  if (v52 >= v55)
                  {
                    v30 = &v22[-v24];
                  }

                  else
                  {
                    v30 = v54;
                  }
                }
              }
            }
          }

          v56 = &v23[-4 * v24];
          v31 = &v23[-2 * v24];
          v57 = *v56;
          v58 = v31->i64[0];
          if (*v56 == v31->i64[0])
          {
            v31 = v56;
          }

          else
          {
            v59 = *v23;
            if (*v23 == v57 || v59 == v58)
            {
              v31 = (v1 + 16 * v3);
            }

            else if (v57 >= v58)
            {
              if (v58 <= v59)
              {
                if (v57 >= v59)
                {
                  v31 = (v1 + 16 * v3);
                }

                else
                {
                  v31 = v56;
                }
              }
            }

            else if (v58 >= v59)
            {
              if (v57 >= v59)
              {
                v31 = v56;
              }

              else
              {
                v31 = (v1 + 16 * v3);
              }
            }
          }
        }

        v32 = v28->i64[0];
        v33 = v30->i64[0];
        if (v28->i64[0] == v30->i64[0])
        {
          v30 = v28;
        }

        else
        {
          v34 = v31->i64[0];
          if (v31->i64[0] == v32 || v34 == v33)
          {
            v30 = v31;
          }

          else if (v32 >= v33)
          {
            if (v33 <= v34)
            {
              if (v32 >= v34)
              {
                v30 = v31;
              }

              else
              {
                v30 = v28;
              }
            }
          }

          else if (v33 >= v34)
          {
            if (v32 >= v34)
            {
              v30 = v28;
            }

            else
            {
              v30 = v31;
            }
          }
        }

        v35 = *v30;
        *v30 = *v23;
        *v23 = v35;
        v36 = *v21;
        v37 = (v1 + 16 + 16 * v2);
        v19 = v2;
        do
        {
          v38 = *v37;
          if ((vmovn_s64(vcgtq_u64(v36, v35)).u8[0] & 1) == 0)
          {
            v37[-1] = *(v1 + 16 * v19);
            *(v1 + 16 * v19++) = v36;
          }

          ++v37;
          v36 = v38;
          --v9;
        }

        while (v9);
        v39 = *(v1 + 16 * v19);
        *(v1 + 16 * v19) = *v23;
        *v23 = v39;
      }

      else
      {
        v16 = qos_class_self();
        global_queue = dispatch_get_global_queue(v16, 2uLL);
        v19 = _big_partition_JustPositionOffset_t(v1, v2, v3, global_queue, v6, v18);
      }

      v40 = v19 - v2;
      if (v19 < v2)
      {
        v60 = __si_assert_copy_extra_332();
        v61 = v60;
        v62 = "";
        if (v60)
        {
          v62 = v60;
        }

        __message_assert(v60, "OQueue.c", 16, "q>=left", v62);
        free(v61);
        if (__valid_fs(-1))
        {
          MEMORY[0xBAD] = -559038737;
          abort();
        }

        MEMORY[0xC00] = -559038737;
        abort();
      }

      v41 = OSAtomicDequeue(&qsort_cached_allocations, 0);
      if (!v41)
      {
        v41 = malloc_type_malloc(0x40uLL, 0x102004053A8A26AuLL);
      }

      *(v41 + 4) = v5;
      *(v41 + 5) = v4;
      *(v41 + 6) = v64;
      v42 = v3 - v19;
      if (v40 <= v3 - v19)
      {
        v43 = v19 - 1;
      }

      else
      {
        v42 = v19 - 1 - v2;
        v43 = v3;
      }

      if (v40 > v3 - v19)
      {
        v44 = v19;
      }

      else
      {
        v44 = v2;
      }

      if (v40 > v3 - v19)
      {
        v3 = v19 - 1;
      }

      else
      {
        v2 = v19;
      }

      *v41 = v1;
      *(v41 + 1) = v44;
      v45 = (((v42 + 1) * v6) / (v43 - v44 + 1));
      if (v45 <= 1)
      {
        v46 = 1;
      }

      else
      {
        v46 = v45;
      }

      if (v6 >= v45)
      {
        v47 = v46;
      }

      else
      {
        v47 = 0;
      }

      v41[14] = v6 - v47;
      v41[15] = v63;
      *(v41 + 2) = v43;
      *(v41 + 3) = v15;
      if (v15 == v65)
      {
        if (v6 >= v45)
        {
          v6 = v46;
        }

        v7 = qos_class_self();
        v8 = dispatch_get_global_queue(v7, 2uLL);
        dispatch_group_async_f(v15, v8, v41, _qsort_big_JustPositionOffset_t);
        if (v3 <= v2)
        {
          return;
        }
      }

      else
      {
        v41[14] = v6;
        _qsort_big_JustPositionOffset_t(v41);
        dispatch_group_wait(v15, 0xFFFFFFFFFFFFFFFFLL);
        dispatch_release(v15);
        v48 = qos_class_self();
        v49 = dispatch_get_global_queue(v48, 2uLL);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 0x40000000;
        block[2] = ___qsort_big_JustPositionOffset_t_block_invoke;
        block[3] = &__block_descriptor_tmp_28_4153;
        block[4] = v41;
        dispatch_async(v49, block);
        if (v3 <= v2)
        {
          return;
        }
      }
    }

    _qsort_JustPositionOffset_t(v1, v2, v3);
  }
}

uint64_t _big_partition_JustPositionOffset_t(uint64_t a1, uint64_t a2, uint64_t a3, NSObject *a4, signed int a5, __n128 a6)
{
  v8 = a3 - a2;
  v9 = a3 - a2 + 1;
  v10 = (a1 + 16 * a2);
  v11 = &v10[2 * ((v9 + (v9 >> 63)) >> 1)];
  v12 = (a1 + 16 * a3);
  if (v8 < 64)
  {
    v28 = &v10[2 * ((v9 + (v9 >> 63)) >> 1)];
    v17 = v10;
  }

  else
  {
    v13 = v9 >> 3;
    v14 = &v10[2 * (v9 >> 3)];
    v15 = *v10;
    v16 = *v14;
    v17 = v10;
    if (*v10 != *v14)
    {
      v17 = &v10[4 * v13];
      v18 = *v17;
      if (v15 >= *v17)
      {
        v19 = &v10[4 * v13];
      }

      else
      {
        v19 = v10;
      }

      if (v16 > v18)
      {
        v19 = &v10[2 * (v9 >> 3)];
      }

      if (v15 >= v18)
      {
        v20 = v10;
      }

      else
      {
        v20 = &v10[4 * v13];
      }

      if (v16 >= v18)
      {
        v14 = v20;
      }

      if (v15 >= v16)
      {
        v14 = v19;
      }

      if (v18 != v15 && v18 != v16)
      {
        v17 = v14;
      }
    }

    v22 = 2 * v13;
    v23 = -v13;
    v24 = 16 * v13;
    v25 = &v11[v24 / 0xFFFFFFFFFFFFFFF8];
    v26 = v11[v24 / 0xFFFFFFFFFFFFFFF8];
    v27 = *v11;
    if (v26 == *v11)
    {
      v28 = &v11[v24 / 0xFFFFFFFFFFFFFFF8];
    }

    else
    {
      v28 = &v11[v24 / 8];
      v29 = *v28;
      if (*v28 != v26 && v29 != v27)
      {
        if (v26 >= v29)
        {
          v31 = v28;
        }

        else
        {
          v31 = v25;
        }

        if (v27 > v29)
        {
          v31 = &v10[2 * ((v9 + (v9 >> 63)) >> 1)];
        }

        if (v26 >= v29)
        {
          v28 = v25;
        }

        if (v27 < v29)
        {
          v28 = &v10[2 * ((v9 + (v9 >> 63)) >> 1)];
        }

        if (v26 >= v27)
        {
          v28 = v31;
        }
      }
    }

    v32 = &v12[-2 * v22];
    v33 = &v12[2 * v23];
    v34 = *v32;
    v35 = *v33;
    if (*v32 == *v33)
    {
      v12 = v32;
    }

    else
    {
      v36 = *v12;
      if (v34 >= *v12)
      {
        v37 = v12;
      }

      else
      {
        v37 = v32;
      }

      if (v35 > v36)
      {
        v37 = v33;
      }

      if (v34 < v36)
      {
        v32 = v12;
      }

      if (v35 >= v36)
      {
        v33 = v32;
      }

      if (v34 >= v35)
      {
        v33 = v37;
      }

      if (v36 != v34 && v36 != v35)
      {
        v12 = v33;
      }
    }
  }

  v39 = *v17;
  v40 = *v28;
  if (*v17 == *v28)
  {
    v28 = v17;
  }

  else
  {
    v41 = *v12;
    if (*v12 == v39 || v41 == v40)
    {
      v28 = v12;
    }

    else if (v39 >= v40)
    {
      if (v40 <= v41)
      {
        if (v39 >= v41)
        {
          v28 = v12;
        }

        else
        {
          v28 = v17;
        }
      }
    }

    else if (v40 >= v41)
    {
      if (v39 >= v41)
      {
        v28 = v17;
      }

      else
      {
        v28 = v12;
      }
    }
  }

  return parallel_partition_JustPositionOffset_t(v10, v9, *v28, a4, a5, a6) + a2;
}

uint64_t parallel_partition_JustPositionOffset_t(void *a1, uint64_t a2, uint64_t a3, NSObject *a4, signed int a5, __n128 a6)
{
  v6 = a5;
  v18[1] = v18;
  context[9] = *MEMORY[0x1E69E9840];
  context[6] = a1;
  v11 = 8 * a5;
  MEMORY[0x1EEE9AC00](a6);
  v13 = v18 - v12;
  bzero(v18 - v12, v11);
  v14 = (a2 / 0x4000) << 13;
  context[1] = v14;
  context[2] = a2;
  v15 = a2 - v14;
  context[4] = 0;
  context[5] = 0;
  context[7] = a3;
  context[8] = v13;
  if (v6 >= 1)
  {
    memset(v13, 255, v11);
  }

  v16 = v14 + 0x2000;
  if (v15 > v14 + 0x2000)
  {
    v16 = a2 - v14;
  }

  context[3] = v15 + ((v16 - v15 + 0x1FFF) & 0xFFFFFFFFFFFFE000);
  context[0] = 0;
  if (16 * a2 >= (4 * *MEMORY[0x1E69E9AC8]))
  {
    madvise(a1, 16 * a2, 3);
  }

  if (a2 / 0x4000 < v6)
  {
    v6 = a2 / 0x4000;
  }

  dispatch_apply_f(v6, a4, context, partition_phase_JustPositionOffset_t);
  return sequential_fixup_JustPositionOffset_t(context, a2, v6);
}

uint64_t sequential_fixup_JustPositionOffset_t(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v6 = a3;
  qsort(*(a1 + 64), a3, 8uLL, index_comp);
  v7 = *(a1 + 64);
  v8 = (a3 - 1);
  v9 = 0;
  if (a3 < 1)
  {
    goto LABEL_111;
  }

  while (*(v7 + 8 * v9) == -1)
  {
    if (v6 == ++v9)
    {
      v9 = v6;
      break;
    }
  }

  if (a3 == 1)
  {
    v8 = 0;
    if (v9 >= 0)
    {
      goto LABEL_46;
    }
  }

  else
  {
LABEL_111:
    do
    {
      if (*(v7 + 8 * v8) != -1)
      {
        break;
      }

      --v8;
    }

    while (v8);
    if (v9 >= v8)
    {
      goto LABEL_46;
    }
  }

  v10 = 0;
  v11 = 0;
  do
  {
    v13 = *(a1 + 48);
    v12 = *(a1 + 56);
    v14 = v13 + 16 * *(v7 + 8 * v9);
    v15 = v13 + 16 * *(v7 + 8 * v8);
    while (1)
    {
      if (v10 < 0x2000)
      {
        v16 = (v14 + 16 * v10);
        while (1)
        {
          v17 = *v16;
          v16 += 2;
          if (v17 > v12)
          {
            break;
          }

          if (++v10 == 0x2000)
          {
            v18 = 0x2000;
            if (v11 < 0x2000)
            {
              goto LABEL_20;
            }

            goto LABEL_24;
          }
        }
      }

      v18 = v10;
      if (v11 < 0x2000)
      {
LABEL_20:
        v19 = (v15 + 16 * v11);
        while (1)
        {
          v20 = *v19;
          v19 += 2;
          if (v20 < v12)
          {
            break;
          }

          if (++v11 == 0x2000)
          {
            v10 = v18;
            goto LABEL_28;
          }
        }
      }

LABEL_24:
      v21 = v11;
      if (v18 == 0x2000 || v11 == 0x2000)
      {
        break;
      }

      v22 = *(v15 + 16 * v11);
      *(v15 + 16 * v11) = *(v14 + 16 * v18);
      *(v14 + 16 * v18) = v22;
      v10 = v18 + 1;
      ++v11;
      if (v18 > 8190 || v21 >= 0x1FFF)
      {
        goto LABEL_28;
      }
    }

    v10 = v18;
LABEL_28:
    if (v11 == 0x2000 && v10 == 0x2000)
    {
      v24 = 2;
    }

    else
    {
      v24 = v10 != 0x2000;
    }

    v7 = *(a1 + 64);
    if ((v24 & 1) == 0)
    {
      v25 = *(v7 + 8 * v9);
      if ((v25 & 0x8000000000000000) == 0 && v25 < *(a1 + 32))
      {
        *(v7 + 8 * v9) = -1;
        *(a1 + 32) += 0x2000;
      }

      v10 = 0;
      ++v9;
      if ((v24 - 1) > 1)
      {
        continue;
      }
    }

    v26 = *(v7 + 8 * v8);
    v27 = v26 >= a2 || v26 < a2 - *(a1 + 40);
    if (!v27)
    {
      *(v7 + 8 * v8) = -1;
      *(a1 + 40) += 0x2000;
    }

    v11 = 0;
    --v8;
  }

  while (v9 < v8);
LABEL_46:
  v29 = *(a1 + 32);
  v28 = *(a1 + 40);
  v30 = malloc_type_malloc(0x20000uLL, 0x108004057E67DB5uLL);
  if (a3 < 1)
  {
    v48 = *a1;
    v47 = *(a1 + 16) - 1;
  }

  else
  {
    v31 = 0;
    v32 = ~v28 + a2;
    v33 = a3;
    v34 = *(a1 + 64);
    v35 = 8 * a3;
    do
    {
      v36 = v34[v31];
      if (v36 != -1 && v32 <= v36)
      {
        break;
      }

      if (v36 != -1)
      {
        if (v29 <= v36)
        {
          break;
        }

        v38 = *(a1 + 32);
        if (v38 > v36)
        {
          v39 = 0;
          do
          {
            if (v34[v39 / 8] == v38)
            {
              v38 += 0x2000;
              *(a1 + 32) = v38;
            }

            v39 += 8;
          }

          while (v35 != v39);
          if (v38 >= *a1)
          {
            break;
          }

          memcpy(v30, (*(a1 + 48) + 16 * v34[v31]), 0x20000uLL);
          memcpy((*(a1 + 48) + 16 * *(*(a1 + 64) + 8 * v31)), (*(a1 + 48) + 16 * *(a1 + 32)), 0x20000uLL);
          memcpy((*(a1 + 48) + 16 * *(a1 + 32)), v30, 0x20000uLL);
          v40 = *(a1 + 32);
          v34 = *(a1 + 64);
          v34[v31] = v40;
          *(a1 + 32) = v40 + 0x2000;
        }
      }

      ++v31;
    }

    while (v31 != v33);
    v41 = v33;
    do
    {
      v42 = v41 - 1;
      v43 = v34[v41 - 1];
      if (v29 > v43)
      {
        break;
      }

      if (v43 != -1)
      {
        if (v32 > v43)
        {
          break;
        }

        v44 = *(a1 + 40) + 0x2000;
        *(a1 + 40) = v44;
        v45 = v33 - 1;
        do
        {
          if (v34[v45] == a2 - v44)
          {
            v44 += 0x2000;
            *(a1 + 40) = v44;
          }

          v46 = v45-- + 1;
        }

        while (v46 > 1);
        if ((a2 - v44) < *(a1 + 16))
        {
          break;
        }

        memcpy(v30, (*(a1 + 48) + 16 * v34[v42]), 0x20000uLL);
        memcpy((*(a1 + 48) + 16 * *(*(a1 + 64) + 8 * v42)), (*(a1 + 48) + 16 * (a2 - *(a1 + 40))), 0x20000uLL);
        memcpy((*(a1 + 48) + 16 * (a2 - *(a1 + 40))), v30, 0x20000uLL);
        v34 = *(a1 + 64);
        v34[v42] = a2 - *(a1 + 40);
      }

      v27 = v41-- <= 1;
    }

    while (!v27);
    v47 = *(a1 + 16) - 1;
    v48 = *a1;
    do
    {
      v50 = *v34++;
      v49 = v50;
      if (v50 != -1)
      {
        if (v49 < v48)
        {
          v48 = v49;
        }

        v51 = v49 + 0x2000;
        v52 = v49 + 0x1FFF;
        if (v51 > v47)
        {
          v47 = v52;
        }

        if (v47 >= a2)
        {
          v53 = __si_assert_copy_extra_332();
          v54 = v53;
          v55 = "";
          if (v53)
          {
            v55 = v53;
          }

          __message_assert(v53, "OQueue.c", 16, "right < count", v55);
          free(v54);
          if (__valid_fs(-1))
          {
            MEMORY[0xBAD] = -559038737;
            abort();
          }

          MEMORY[0xC00] = -559038737;
          abort();
        }
      }

      --v33;
    }

    while (v33);
  }

  free(v30);
  if (v48 >= v47)
  {
    v56 = v48;
  }

  else
  {
    v56 = v48;
    do
    {
      v57 = *(a1 + 48);
      v58 = *(a1 + 56);
      v59 = (v57 + 16 * v48);
      while (1)
      {
        v60 = *v59;
        v59 += 2;
        if (v60 >= v58)
        {
          break;
        }

        if (++v56 >= v47)
        {
          if (v47 <= v48 + 1)
          {
            v56 = v48 + 1;
          }

          else
          {
            v56 = v47;
          }

          goto LABEL_105;
        }
      }

      if (v56 < v47)
      {
        v61 = (v57 + 16 * v47);
        while (1)
        {
          v62 = *v61;
          v61 -= 2;
          if (v62 <= v58)
          {
            break;
          }

          if (v56 >= --v47)
          {
            goto LABEL_105;
          }
        }

        v63 = *(v57 + 16 * v47);
        *(v57 + 16 * v47) = *(v57 + 16 * v56);
        *(*(a1 + 48) + 16 * v56++) = v63;
        --v47;
      }

      v48 = v56;
    }

    while (v56 < v47);
  }

LABEL_105:
  if (*(*(a1 + 48) + 16 * v56) >= *(a1 + 56))
  {
    return v56;
  }

  else
  {
    return v56 + 1;
  }
}

atomic_ullong *partition_phase_JustPositionOffset_t(atomic_ullong *result, uint64_t a2)
{
  v2 = result[6];
  v3 = result[1];
  if (*result >= v3)
  {
    goto LABEL_4;
  }

  add_explicit = atomic_fetch_add_explicit(result, 0x2000uLL, memory_order_relaxed);
  if ((add_explicit + 0x2000) > v3)
  {
    atomic_fetch_add_explicit(result, 0xFFFFFFFFFFFFE000, memory_order_relaxed);
LABEL_4:
    add_explicit = -1;
  }

  v5 = result[3];
  if (result[2] <= v5)
  {
LABEL_8:
    v7 = 0;
    if (add_explicit == -1)
    {
      v6 = -1;
      v8 = 0;
      goto LABEL_11;
    }

    v8 = 0;
    goto LABEL_12;
  }

  v6 = atomic_fetch_add_explicit(result + 2, 0xFFFFFFFFFFFFE000, memory_order_relaxed) - 0x2000;
  if (v6 < v5)
  {
    atomic_fetch_add_explicit(result + 2, 0x2000uLL, memory_order_relaxed);
    goto LABEL_8;
  }

  if (v6 == -1 || add_explicit == -1)
  {
    v7 = 0;
    v8 = 0;
    if (add_explicit == -1)
    {
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  do
  {
    v14 = v2 + 16 * add_explicit;
    v15 = result[7];
    v16 = v2 + 16 * v6;
    while (1)
    {
      if (v13 < 0x2000)
      {
        v17 = (v14 + 16 * v13);
        while (1)
        {
          v18 = *v17;
          v17 += 2;
          if (v18 > v15)
          {
            break;
          }

          if (++v13 == 0x2000)
          {
            v19 = 0x2000;
            if (v12 < 0x2000)
            {
              goto LABEL_28;
            }

            goto LABEL_32;
          }
        }
      }

      v19 = v13;
      if (v12 < 0x2000)
      {
LABEL_28:
        v20 = (v16 + 16 * v12);
        while (1)
        {
          v21 = *v20;
          v20 += 2;
          if (v21 < v15)
          {
            break;
          }

          if (++v12 == 0x2000)
          {
            v13 = v19;
            goto LABEL_36;
          }
        }
      }

LABEL_32:
      v22 = v12;
      if (v19 == 0x2000 || v12 == 0x2000)
      {
        break;
      }

      v23 = *(v16 + 16 * v12);
      *(v16 + 16 * v12) = *(v14 + 16 * v19);
      *(v14 + 16 * v19) = v23;
      v13 = v19 + 1;
      ++v12;
      if (v19 > 8190 || v22 >= 0x1FFF)
      {
        goto LABEL_36;
      }
    }

    v13 = v19;
LABEL_36:
    v24 = v13 != 0x2000;
    if (v12 == 0x2000 && v13 == 0x2000)
    {
      v24 = 2;
    }

    if (v24)
    {
LABEL_47:
      v27 = result[3];
      if (result[2] > v27)
      {
        v6 = atomic_fetch_add_explicit(result + 2, 0xFFFFFFFFFFFFE000, memory_order_relaxed) - 0x2000;
        if (v6 >= v27)
        {
LABEL_51:
          v12 = 0;
          ++v10;
          continue;
        }

        atomic_fetch_add_explicit(result + 2, 0x2000uLL, memory_order_relaxed);
      }

      v6 = -1;
      goto LABEL_51;
    }

    v26 = result[1];
    if (*result < v26)
    {
      add_explicit = atomic_fetch_add_explicit(result, 0x2000uLL, memory_order_relaxed);
      if ((add_explicit + 0x2000) <= v26)
      {
        goto LABEL_46;
      }

      atomic_fetch_add_explicit(result, 0xFFFFFFFFFFFFE000, memory_order_relaxed);
    }

    add_explicit = -1;
LABEL_46:
    v13 = 0;
    ++v11;
    if ((v24 - 1) <= 1)
    {
      goto LABEL_47;
    }
  }

  while (v6 != -1 && add_explicit != -1);
  v8 = v11 << 13;
  v7 = v10 << 13;
  if (add_explicit == -1)
  {
LABEL_11:
    add_explicit = v6;
  }

LABEL_12:
  *(result[8] + 8 * a2) = add_explicit;
  atomic_fetch_add_explicit(result + 4, v8, memory_order_relaxed);
  atomic_fetch_add_explicit(result + 5, v7, memory_order_relaxed);
  return result;
}

uint64_t _big_split_JustPositionOffset_t(void *a1, uint64_t a2, uint64_t a3, NSObject *a4, signed int a5, __n128 a6)
{
  v6 = a2 + 1;
  if (a5 >= 3)
  {
    while (v6 < (a5 << 13))
    {
      if (a5-- <= 3)
      {
        a5 = 2;
        return parallel_partition_JustPositionOffset_t(a1, v6, a3, a4, a5, a6);
      }
    }
  }

  return parallel_partition_JustPositionOffset_t(a1, v6, a3, a4, a5, a6);
}

void oqdispose_PositionOffsetWithMeta_t(uint64_t a1)
{
  if (*(a1 + 24) >= 1)
  {
    v2 = 0;
    v3 = 8;
    do
    {
      CFRelease(*(*(a1 + 8) + v3));
      ++v2;
      v3 += 24;
    }

    while (v2 < *(a1 + 24));
  }

  if (*(a1 + 48))
  {
    v4 = *(a1 + 32);
    if (v4 < *(a1 + 40))
    {
      v5 = 24 * v4 + 8;
      do
      {
        CFRelease(*(*(a1 + 8) + v5));
        ++v4;
        v5 += 24;
      }

      while (v4 < *(a1 + 40));
    }
  }

  v6 = *(a1 + 8);

  free(v6);
}

void parallel_qsort_PositionOffsetWithMeta_t(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x1E69E9840];
  if (a2 > 2047)
  {
    v4 = OSAtomicDequeue(&qsort_cached_allocations, 0);
    if (!v4)
    {
      v4 = malloc_type_malloc(0x40uLL, 0x102004053A8A26AuLL);
    }

    v5 = dispatch_group_create();
    v4[3] = v5;
    v4[4] = 0;
    v4[1] = 0;
    v4[2] = a2 - 1;
    *v4 = a1;
    v6 = thread_count;
    if (!thread_count)
    {
      *v9 = 0x1900000006;
      v8 = 4;
      sysctl(v9, 2u, &thread_count, &v8, 0, 0);
      v6 = thread_count;
    }

    *(v4 + 14) = v6;
    v4[5] = sqrt(a2) / 2;
    if (!v6)
    {
      *v9 = 0x1900000006;
      v8 = 4;
      sysctl(v9, 2u, &thread_count, &v8, 0, 0);
      v6 = thread_count;
    }

    v7 = a2 / (2 * v6);
    if (v7 <= 0x8000)
    {
      v7 = 0x8000;
    }

    else if (!v6)
    {
      *v9 = 0x1900000006;
      v8 = 4;
      sysctl(v9, 2u, &thread_count, &v8, 0, 0);
      v7 = a2 / (2 * thread_count);
    }

    v4[6] = v7;
    if (v4[5] <= 2047)
    {
      v4[5] = 2048;
    }

    _qsort_big_PositionOffsetWithMeta_t(v4);
    dispatch_group_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
    dispatch_release(v5);
  }

  else
  {

    _qsort_PositionOffsetWithMeta_t(a1, 0, a2 - 1);
  }
}

void _qsort_PositionOffsetWithMeta_t(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = malloc_type_malloc(0x800uLL, 0x1000040451B5BE8uLL);
  *v6 = 0;
  v6[1] = 0;
  v7 = 1;
  do
  {
    if (a3 > a2)
    {
      if (v7 <= 128)
      {
        v9 = 128;
      }

      else
      {
        v9 = v7;
      }

      v10 = &v6[2 * v7 + 1];
      while (a3 - a2 > 16)
      {
        v11 = _partition_PositionOffsetWithMeta_t(a1, a2, a3);
        if (v11 < a2)
        {
          v21 = __si_assert_copy_extra_332();
          v22 = v21;
          v23 = "";
          if (v21)
          {
            v23 = v21;
          }

          __message_assert(v21, "OQueue.c", 17, "q>=left", v23);
          free(v22);
          if (__valid_fs(-1))
          {
            v24 = 2989;
          }

          else
          {
            v24 = 3072;
          }

          *v24 = -559038737;
          abort();
        }

        if (v9 == v7)
        {
          heapsort_b((a1 + 24 * a2), a3 - a2 + 1, 0x18uLL, &__block_literal_global_36);
          v7 = v9;
          goto LABEL_3;
        }

        if (v11 - a2 <= a3 - v11)
        {
          *(v10 - 1) = a2;
          *v10 = v11 - 1;
          a2 = v11;
        }

        else
        {
          *(v10 - 1) = v11;
          *v10 = a3;
          a3 = v11 - 1;
        }

        ++v7;
        v10 += 2;
        if (a3 <= a2)
        {
          goto LABEL_3;
        }
      }

      v12 = a1 + 32 + 24 * a2;
      v13 = a2;
      do
      {
        v15 = v13++;
        v16 = (a1 + 24 * v15);
        v17 = v16[3];
        v18 = *v16;
        v25 = *(v16 + 1);
        v26 = *(v16 + 2);
        v19 = v13;
        if (v18 > v17)
        {
          v20 = v12;
          do
          {
            v19 = v15;
            *(v20 - 1) = v18;
            *v20 = v25;
            if (v15 <= a2)
            {
              break;
            }

            v18 = *(v20 - 7);
            v25 = *(v20 - 3);
            --v15;
            v20 = (v20 - 24);
          }

          while (v18 > v17);
        }

        v14 = a1 + 24 * v19;
        *v14 = v17;
        *(v14 + 8) = v26;
        v12 += 24;
      }

      while (v13 != a3);
    }

LABEL_3:
    --v7;
    v8 = &v6[2 * v7];
    a2 = *v8;
    a3 = v8[1];
  }

  while (v7);

  free(v6);
}

uint64_t _partition_PositionOffsetWithMeta_t(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3 - a2 + 1;
  v4 = (a1 + 24 * a2);
  v5 = &v4[3 * ((v3 + (v3 >> 63)) >> 1)];
  v6 = (a1 + 24 * a3);
  if (a3 - a2 < 1024)
  {
    v24 = &v4[3 * ((v3 + (v3 >> 63)) >> 1)];
    v25 = (a1 + 24 * a3);
    v11 = (a1 + 24 * a2);
  }

  else
  {
    v7 = v3 >> 3;
    v8 = &v4[3 * (v3 >> 3)];
    v9 = *v4;
    v10 = *v8;
    v11 = (a1 + 24 * a2);
    if (*v4 != *v8)
    {
      v11 = &v4[6 * v7];
      v12 = *v11;
      if (v9 >= *v11)
      {
        v13 = &v4[6 * v7];
      }

      else
      {
        v13 = (a1 + 24 * a2);
      }

      if (v10 > v12)
      {
        v13 = v8;
      }

      if (v9 >= v12)
      {
        v14 = (a1 + 24 * a2);
      }

      else
      {
        v14 = &v4[6 * v7];
      }

      if (v10 >= v12)
      {
        v8 = v14;
      }

      if (v9 >= v10)
      {
        v8 = v13;
      }

      if (v12 != v9 && v12 != v10)
      {
        v11 = v8;
      }
    }

    v16 = 2 * v7;
    v17 = -v7;
    v18 = &v5[-3 * v7];
    v19 = *v18;
    v20 = *v5;
    if (*v18 == *v5)
    {
      v24 = &v5[-3 * v7];
    }

    else
    {
      v21 = &v5[3 * v7];
      v22 = *v21;
      v23 = *v21 == v19 || v22 == v20;
      v24 = &v5[3 * v7];
      if (!v23)
      {
        v24 = v5;
        if (v19 >= v20)
        {
          if (v20 <= v22)
          {
            if (v19 >= v22)
            {
              v24 = v21;
            }

            else
            {
              v24 = v18;
            }
          }
        }

        else if (v20 >= v22)
        {
          if (v19 >= v22)
          {
            v24 = v18;
          }

          else
          {
            v24 = v21;
          }
        }
      }
    }

    v25 = &v6[-3 * v16];
    v26 = &v6[3 * v17];
    v27 = *v25;
    v28 = *v26;
    if (*v25 != *v26)
    {
      v29 = *v6;
      if (v27 >= *v6)
      {
        v30 = (a1 + 24 * a3);
      }

      else
      {
        v30 = v25;
      }

      if (v28 > v29)
      {
        v30 = v26;
      }

      if (v27 < v29)
      {
        v25 = (a1 + 24 * a3);
      }

      if (v28 < v29)
      {
        v25 = v26;
      }

      if (v27 >= v28)
      {
        v25 = v30;
      }

      if (v29 == v27 || v29 == v28)
      {
        v25 = (a1 + 24 * a3);
      }
    }
  }

  v32 = *v11;
  v33 = *v24;
  if (*v11 == *v24)
  {
    v24 = v11;
  }

  else
  {
    v34 = *v25;
    if (*v25 == v32 || v34 == v33)
    {
      v24 = v25;
    }

    else if (v32 >= v33)
    {
      if (v33 <= v34)
      {
        if (v32 >= v34)
        {
          v24 = v25;
        }

        else
        {
          v24 = v11;
        }
      }
    }

    else if (v33 >= v34)
    {
      if (v32 >= v34)
      {
        v24 = v11;
      }

      else
      {
        v24 = v25;
      }
    }
  }

  v36 = *v24;
  v51 = *(v24 + 1);
  v37 = *v6;
  v24[2] = v6[2];
  *v24 = v37;
  *v6 = v36;
  *(v6 + 1) = v51;
  v38 = *v4;
  v50 = *(v4 + 1);
  v39 = a3 - a2;
  if (a3 > a2)
  {
    v40 = (a1 + 24 * a2 + 32);
    do
    {
      v41 = *(v40 - 1);
      v49 = v50;
      v50 = *v40;
      if (v38 <= v36)
      {
        v42 = (a1 + 24 * a2);
        v43 = *v42;
        *(v40 - 2) = *(v42 + 2);
        *(v40 - 2) = v43;
        *v42 = v38;
        *(v42 + 8) = v49;
        ++a2;
      }

      v40 = (v40 + 24);
      v38 = v41;
      --v39;
    }

    while (v39);
  }

  v44 = (a1 + 24 * a2);
  v45 = *(v44 + 2);
  v46 = *v44;
  v47 = v6[2];
  *v44 = *v6;
  *(v44 + 2) = v47;
  *v6 = v46;
  v6[2] = v45;
  return a2;
}

void _qsort_big_PositionOffsetWithMeta_t(uint64_t *a1)
{
  v1 = a1[1];
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v36 = a1[6];
  v37 = *a1;
  v6 = *(a1 + 14);
  v35 = *(a1 + 15);
  OSAtomicEnqueue(&qsort_cached_allocations, a1, 0);
  if (v2 > v1)
  {
    for (i = v4 + 1; ; ++i)
    {
      v10 = v2 - v1;
      if (v2 - v1 <= v5 || i > 9)
      {
        break;
      }

      if (v6 <= 1)
      {
        v6 = 1;
      }

      v12 = getSize_memSize;
      if (!getSize_memSize)
      {
        v42 = 0u;
        v43 = 0u;
        *host_info_out = 0u;
        v13 = MEMORY[0x1C6920B70]();
        host_info_outCnt = 12;
        v14 = host_info(v13, 1, host_info_out, &host_info_outCnt);
        if (v14)
        {
          mach_error("flushsize", v14);
          exit(1);
        }

        v12 = *(&v43 + 1);
        getSize_memSize = *(&v43 + 1);
      }

      v15 = 3 * v12 / 5uLL;
      v16 = v3;
      if (24 * v10 > v15)
      {
        v16 = dispatch_group_create();
      }

      if (v10 <= v36 || 24 * v10 >= v15)
      {
        v20 = _partition_PositionOffsetWithMeta_t(v37, v1, v2);
      }

      else
      {
        v17 = qos_class_self();
        global_queue = dispatch_get_global_queue(v17, 2uLL);
        v20 = _big_partition_PositionOffsetWithMeta_t(v37, v1, v2, global_queue, v6, v19);
      }

      v21 = v20;
      v22 = v20 - v1;
      if (v20 < v1)
      {
        v32 = __si_assert_copy_extra_332();
        v33 = v32;
        v34 = "";
        if (v32)
        {
          v34 = v32;
        }

        __message_assert(v32, "OQueue.c", 17, "q>=left", v34, v39);
        free(v33);
        if (__valid_fs(-1))
        {
          MEMORY[0xBAD] = -559038737;
          abort();
        }

        MEMORY[0xC00] = -559038737;
        abort();
      }

      v23 = OSAtomicDequeue(&qsort_cached_allocations, 0);
      if (!v23)
      {
        v23 = malloc_type_malloc(0x40uLL, 0x102004053A8A26AuLL);
      }

      *(v23 + 4) = i;
      *(v23 + 5) = v5;
      *(v23 + 6) = v36;
      v24 = v2 - v21;
      if (v22 <= v2 - v21)
      {
        v25 = v21 - 1;
      }

      else
      {
        v24 = v21 - 1 - v1;
        v25 = v2;
      }

      if (v22 > v2 - v21)
      {
        v26 = v21;
      }

      else
      {
        v26 = v1;
      }

      if (v22 > v2 - v21)
      {
        v2 = v21 - 1;
      }

      else
      {
        v1 = v21;
      }

      *v23 = v37;
      *(v23 + 1) = v26;
      v27 = (((v24 + 1) * v6) / (v25 - v26 + 1));
      if (v27 <= 1)
      {
        v28 = 1;
      }

      else
      {
        v28 = v27;
      }

      if (v6 >= v27)
      {
        v29 = v28;
      }

      else
      {
        v29 = 0;
      }

      v23[14] = v6 - v29;
      v23[15] = v35;
      *(v23 + 2) = v25;
      *(v23 + 3) = v16;
      if (v16 == v3)
      {
        if (v6 >= v27)
        {
          v6 = v28;
        }

        v8 = qos_class_self();
        v9 = dispatch_get_global_queue(v8, 2uLL);
        dispatch_group_async_f(v16, v9, v23, _qsort_big_PositionOffsetWithMeta_t);
      }

      else
      {
        v23[14] = v6;
        _qsort_big_PositionOffsetWithMeta_t(v23);
        dispatch_group_wait(v16, 0xFFFFFFFFFFFFFFFFLL);
        dispatch_release(v16);
        v30 = qos_class_self();
        v31 = dispatch_get_global_queue(v30, 2uLL);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 0x40000000;
        v39[0] = ___qsort_big_PositionOffsetWithMeta_t_block_invoke;
        v39[1] = &__block_descriptor_tmp_33_4156;
        v39[2] = v23;
        dispatch_async(v31, block);
      }

      if (v2 <= v1)
      {
        return;
      }
    }

    _qsort_PositionOffsetWithMeta_t(v37, v1, v2);
  }
}

uint64_t _big_partition_PositionOffsetWithMeta_t(uint64_t a1, uint64_t a2, uint64_t a3, NSObject *a4, signed int a5, __n128 a6)
{
  v8 = a3 - a2;
  v9 = a3 - a2 + 1;
  v10 = (a1 + 24 * a2);
  v11 = &v10[3 * ((v9 + (v9 >> 63)) >> 1)];
  v12 = (a1 + 24 * a3);
  if (v8 < 64)
  {
    v29 = &v10[3 * ((v9 + (v9 >> 63)) >> 1)];
    v17 = v10;
  }

  else
  {
    v13 = v9 >> 3;
    v14 = &v10[3 * (v9 >> 3)];
    v15 = *v10;
    v16 = *v14;
    v17 = v10;
    if (*v10 != *v14)
    {
      v17 = &v10[6 * v13];
      v18 = *v17;
      if (*v17 != v15 && v18 != v16)
      {
        if (v15 >= v18)
        {
          v20 = &v10[6 * v13];
        }

        else
        {
          v20 = v10;
        }

        if (v16 > v18)
        {
          v20 = &v10[3 * (v9 >> 3)];
        }

        if (v15 >= v18)
        {
          v17 = v10;
        }

        if (v16 < v18)
        {
          v17 = &v10[3 * (v9 >> 3)];
        }

        if (v15 >= v16)
        {
          v17 = v20;
        }
      }
    }

    v21 = 2 * v13;
    v22 = -v13;
    v23 = &v11[-3 * v13];
    v24 = *v23;
    v25 = *v11;
    if (*v23 == *v11)
    {
      v29 = &v11[-3 * v13];
    }

    else
    {
      v26 = &v11[3 * v13];
      v27 = *v26;
      v28 = *v26 == v24 || v27 == v25;
      v29 = &v11[3 * v13];
      if (!v28)
      {
        v29 = &v10[3 * ((v9 + (v9 >> 63)) >> 1)];
        if (v24 >= v25)
        {
          if (v25 <= v27)
          {
            if (v24 >= v27)
            {
              v29 = v26;
            }

            else
            {
              v29 = v23;
            }
          }
        }

        else if (v25 >= v27)
        {
          if (v24 >= v27)
          {
            v29 = v23;
          }

          else
          {
            v29 = v26;
          }
        }
      }
    }

    v30 = &v12[-3 * v21];
    v31 = &v12[3 * v22];
    v32 = *v30;
    v33 = *v31;
    if (*v30 == *v31)
    {
      v12 = v30;
    }

    else
    {
      v34 = *v12;
      if (v32 >= *v12)
      {
        v35 = v12;
      }

      else
      {
        v35 = v30;
      }

      if (v33 > v34)
      {
        v35 = v31;
      }

      if (v32 < v34)
      {
        v30 = v12;
      }

      if (v33 >= v34)
      {
        v31 = v30;
      }

      if (v32 >= v33)
      {
        v31 = v35;
      }

      if (v34 != v32 && v34 != v33)
      {
        v12 = v31;
      }
    }
  }

  v37 = *v17;
  v38 = *v29;
  if (*v17 == *v29)
  {
    v29 = v17;
  }

  else
  {
    v39 = *v12;
    if (*v12 == v37 || v39 == v38)
    {
      v29 = v12;
    }

    else if (v37 >= v38)
    {
      if (v38 <= v39)
      {
        if (v37 >= v39)
        {
          v29 = v12;
        }

        else
        {
          v29 = v17;
        }
      }
    }

    else if (v38 >= v39)
    {
      if (v37 >= v39)
      {
        v29 = v17;
      }

      else
      {
        v29 = v12;
      }
    }
  }

  return parallel_partition_PositionOffsetWithMeta_t(v10, v9, *v29, a4, a5, a6) + a2;
}

uint64_t parallel_partition_PositionOffsetWithMeta_t(void *a1, uint64_t a2, uint64_t a3, NSObject *a4, signed int a5, __n128 a6)
{
  v6 = a5;
  v18[1] = v18;
  context[9] = *MEMORY[0x1E69E9840];
  context[6] = a1;
  v11 = 8 * a5;
  MEMORY[0x1EEE9AC00](a6);
  v13 = v18 - v12;
  bzero(v18 - v12, v11);
  v14 = (a2 / 0x4000) << 13;
  context[1] = v14;
  context[2] = a2;
  v15 = a2 - v14;
  context[4] = 0;
  context[5] = 0;
  context[7] = a3;
  context[8] = v13;
  if (v6 >= 1)
  {
    memset(v13, 255, v11);
  }

  v16 = v14 + 0x2000;
  if (v15 > v14 + 0x2000)
  {
    v16 = a2 - v14;
  }

  context[3] = v15 + ((v16 - v15 + 0x1FFF) & 0xFFFFFFFFFFFFE000);
  context[0] = 0;
  if (24 * a2 >= (4 * *MEMORY[0x1E69E9AC8]))
  {
    madvise(a1, 24 * a2, 3);
  }

  if (a2 / 0x4000 < v6)
  {
    v6 = a2 / 0x4000;
  }

  dispatch_apply_f(v6, a4, context, partition_phase_PositionOffsetWithMeta_t);
  return sequential_fixup_PositionOffsetWithMeta_t(context, a2, v6);
}

uint64_t sequential_fixup_PositionOffsetWithMeta_t(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v6 = a3;
  qsort(*(a1 + 64), a3, 8uLL, index_comp);
  v7 = *(a1 + 64);
  v8 = (a3 - 1);
  v9 = 0;
  if (a3 < 1)
  {
    goto LABEL_111;
  }

  while (*(v7 + 8 * v9) == -1)
  {
    if (v6 == ++v9)
    {
      v9 = v6;
      break;
    }
  }

  if (a3 == 1)
  {
    v8 = 0;
    if (v9 >= 0)
    {
      goto LABEL_46;
    }
  }

  else
  {
LABEL_111:
    do
    {
      if (*(v7 + 8 * v8) != -1)
      {
        break;
      }

      --v8;
    }

    while (v8);
    if (v9 >= v8)
    {
      goto LABEL_46;
    }
  }

  v10 = 0;
  v11 = 0;
  do
  {
    v13 = *(a1 + 48);
    v12 = *(a1 + 56);
    v14 = v13 + 24 * *(v7 + 8 * v9);
    v15 = v13 + 24 * *(v7 + 8 * v8);
    while (1)
    {
      if (v11 < 0x2000)
      {
        v16 = (v14 + 24 * v11);
        while (1)
        {
          v17 = *v16;
          v16 += 3;
          if (v17 > v12)
          {
            break;
          }

          if (++v11 == 0x2000)
          {
            v18 = 0x2000;
            if (v10 < 0x2000)
            {
              goto LABEL_20;
            }

            goto LABEL_24;
          }
        }
      }

      v18 = v11;
      if (v10 < 0x2000)
      {
LABEL_20:
        v19 = (v15 + 24 * v10);
        while (1)
        {
          v20 = *v19;
          v19 += 3;
          if (v20 < v12)
          {
            break;
          }

          if (++v10 == 0x2000)
          {
            v11 = v18;
            goto LABEL_28;
          }
        }
      }

LABEL_24:
      v21 = v10;
      if (v18 == 0x2000 || v10 == 0x2000)
      {
        break;
      }

      v22 = (v15 + 24 * v10);
      v23 = *(v22 + 2);
      v24 = *v22;
      v25 = (v14 + 24 * v18);
      v26 = *(v25 + 2);
      *v22 = *v25;
      *(v22 + 2) = v26;
      *v25 = v24;
      *(v25 + 2) = v23;
      v11 = v18 + 1;
      v10 = v21 + 1;
      if (v18 > 8190 || v21 >= 0x1FFF)
      {
        goto LABEL_28;
      }
    }

    v11 = v18;
LABEL_28:
    if (v10 == 0x2000 && v11 == 0x2000)
    {
      v28 = 2;
    }

    else
    {
      v28 = v11 != 0x2000;
    }

    v7 = *(a1 + 64);
    if ((v28 & 1) == 0)
    {
      v29 = *(v7 + 8 * v9);
      if ((v29 & 0x8000000000000000) == 0 && v29 < *(a1 + 32))
      {
        *(v7 + 8 * v9) = -1;
        *(a1 + 32) += 0x2000;
      }

      v11 = 0;
      ++v9;
      if ((v28 - 1) > 1)
      {
        continue;
      }
    }

    v30 = *(v7 + 8 * v8);
    v31 = v30 >= a2 || v30 < a2 - *(a1 + 40);
    if (!v31)
    {
      *(v7 + 8 * v8) = -1;
      *(a1 + 40) += 0x2000;
    }

    v10 = 0;
    --v8;
  }

  while (v9 < v8);
LABEL_46:
  v33 = *(a1 + 32);
  v32 = *(a1 + 40);
  v34 = malloc_type_malloc(0x30000uLL, 0x10800401842DC26uLL);
  if (a3 < 1)
  {
    v52 = *a1;
    v51 = *(a1 + 16) - 1;
  }

  else
  {
    v35 = 0;
    v36 = ~v32 + a2;
    v37 = a3;
    v38 = *(a1 + 64);
    v39 = 8 * a3;
    do
    {
      v40 = v38[v35];
      if (v40 != -1 && v36 <= v40)
      {
        break;
      }

      if (v40 != -1)
      {
        if (v33 <= v40)
        {
          break;
        }

        v42 = *(a1 + 32);
        if (v42 > v40)
        {
          v43 = 0;
          do
          {
            if (v38[v43 / 8] == v42)
            {
              v42 += 0x2000;
              *(a1 + 32) = v42;
            }

            v43 += 8;
          }

          while (v39 != v43);
          if (v42 >= *a1)
          {
            break;
          }

          memcpy(v34, (*(a1 + 48) + 24 * v38[v35]), 0x30000uLL);
          memcpy((*(a1 + 48) + 24 * *(*(a1 + 64) + 8 * v35)), (*(a1 + 48) + 24 * *(a1 + 32)), 0x30000uLL);
          memcpy((*(a1 + 48) + 24 * *(a1 + 32)), v34, 0x30000uLL);
          v44 = *(a1 + 32);
          v38 = *(a1 + 64);
          v38[v35] = v44;
          *(a1 + 32) = v44 + 0x2000;
        }
      }

      ++v35;
    }

    while (v35 != v37);
    v45 = v37;
    do
    {
      v46 = v45 - 1;
      v47 = v38[v45 - 1];
      if (v33 > v47)
      {
        break;
      }

      if (v47 != -1)
      {
        if (v36 > v47)
        {
          break;
        }

        v48 = *(a1 + 40) + 0x2000;
        *(a1 + 40) = v48;
        v49 = v37 - 1;
        do
        {
          if (v38[v49] == a2 - v48)
          {
            v48 += 0x2000;
            *(a1 + 40) = v48;
          }

          v50 = v49-- + 1;
        }

        while (v50 > 1);
        if ((a2 - v48) < *(a1 + 16))
        {
          break;
        }

        memcpy(v34, (*(a1 + 48) + 24 * v38[v46]), 0x30000uLL);
        memcpy((*(a1 + 48) + 24 * *(*(a1 + 64) + 8 * v46)), (*(a1 + 48) + 24 * (a2 - *(a1 + 40))), 0x30000uLL);
        memcpy((*(a1 + 48) + 24 * (a2 - *(a1 + 40))), v34, 0x30000uLL);
        v38 = *(a1 + 64);
        v38[v46] = a2 - *(a1 + 40);
      }

      v31 = v45-- <= 1;
    }

    while (!v31);
    v51 = *(a1 + 16) - 1;
    v52 = *a1;
    do
    {
      v54 = *v38++;
      v53 = v54;
      if (v54 != -1)
      {
        if (v53 < v52)
        {
          v52 = v53;
        }

        v55 = v53 + 0x2000;
        v56 = v53 + 0x1FFF;
        if (v55 > v51)
        {
          v51 = v56;
        }

        if (v51 >= a2)
        {
          v57 = __si_assert_copy_extra_332();
          v58 = v57;
          v59 = "";
          if (v57)
          {
            v59 = v57;
          }

          __message_assert(v57, "OQueue.c", 17, "right < count", v59);
          free(v58);
          if (__valid_fs(-1))
          {
            MEMORY[0xBAD] = -559038737;
            abort();
          }

          MEMORY[0xC00] = -559038737;
          abort();
        }
      }

      --v37;
    }

    while (v37);
  }

  free(v34);
  if (v52 >= v51)
  {
    v60 = v52;
  }

  else
  {
    v60 = v52;
    do
    {
      v62 = *(a1 + 48);
      v61 = *(a1 + 56);
      v63 = (v62 + 24 * v52);
      while (*v63 < v61)
      {
        ++v60;
        v63 += 3;
        if (v60 >= v51)
        {
          if (v51 <= v52 + 1)
          {
            v60 = v52 + 1;
          }

          else
          {
            v60 = v51;
          }

          goto LABEL_105;
        }
      }

      if (v60 < v51)
      {
        v64 = (v62 + 24 * v51);
        while (*v64 > v61)
        {
          --v51;
          v64 -= 3;
          if (v60 >= v51)
          {
            goto LABEL_105;
          }
        }

        v65 = v64[2];
        v66 = *v64;
        v67 = v63[2];
        *v64 = *v63;
        v64[2] = v67;
        v68 = *(a1 + 48) + 24 * v60;
        *v68 = v66;
        *(v68 + 16) = v65;
        ++v60;
        --v51;
      }

      v52 = v60;
    }

    while (v60 < v51);
  }

LABEL_105:
  if (*(*(a1 + 48) + 24 * v60) >= *(a1 + 56))
  {
    return v60;
  }

  else
  {
    return v60 + 1;
  }
}

atomic_ullong *partition_phase_PositionOffsetWithMeta_t(atomic_ullong *result, uint64_t a2)
{
  v2 = result[6];
  v3 = result[1];
  if (*result >= v3)
  {
    goto LABEL_4;
  }

  add_explicit = atomic_fetch_add_explicit(result, 0x2000uLL, memory_order_relaxed);
  if ((add_explicit + 0x2000) > v3)
  {
    atomic_fetch_add_explicit(result, 0xFFFFFFFFFFFFE000, memory_order_relaxed);
LABEL_4:
    add_explicit = -1;
  }

  v5 = result[3];
  if (result[2] <= v5)
  {
LABEL_8:
    v7 = 0;
    if (add_explicit == -1)
    {
      v6 = -1;
      v8 = 0;
      goto LABEL_11;
    }

    v8 = 0;
    goto LABEL_12;
  }

  v6 = atomic_fetch_add_explicit(result + 2, 0xFFFFFFFFFFFFE000, memory_order_relaxed) - 0x2000;
  if (v6 < v5)
  {
    atomic_fetch_add_explicit(result + 2, 0x2000uLL, memory_order_relaxed);
    goto LABEL_8;
  }

  if (v6 == -1 || add_explicit == -1)
  {
    v7 = 0;
    v8 = 0;
    if (add_explicit == -1)
    {
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  do
  {
    v14 = v2 + 24 * add_explicit;
    v15 = result[7];
    v16 = v2 + 24 * v6;
    while (1)
    {
      if (v13 < 0x2000)
      {
        v17 = (v14 + 24 * v13);
        while (1)
        {
          v18 = *v17;
          v17 += 3;
          if (v18 > v15)
          {
            break;
          }

          if (++v13 == 0x2000)
          {
            v19 = 0x2000;
            if (v12 < 0x2000)
            {
              goto LABEL_28;
            }

            goto LABEL_32;
          }
        }
      }

      v19 = v13;
      if (v12 < 0x2000)
      {
LABEL_28:
        v20 = (v16 + 24 * v12);
        while (1)
        {
          v21 = *v20;
          v20 += 3;
          if (v21 < v15)
          {
            break;
          }

          if (++v12 == 0x2000)
          {
            v13 = v19;
            goto LABEL_36;
          }
        }
      }

LABEL_32:
      v22 = v12;
      if (v19 == 0x2000 || v12 == 0x2000)
      {
        break;
      }

      v23 = v16 + 24 * v12;
      v24 = *(v23 + 16);
      v25 = *v23;
      v26 = v14 + 24 * v19;
      v27 = *(v26 + 16);
      *v23 = *v26;
      *(v23 + 16) = v27;
      *v26 = v25;
      *(v26 + 16) = v24;
      v13 = v19 + 1;
      v12 = v22 + 1;
      if (v19 > 8190 || v22 >= 0x1FFF)
      {
        goto LABEL_36;
      }
    }

    v13 = v19;
LABEL_36:
    v28 = v13 != 0x2000;
    if (v12 == 0x2000 && v13 == 0x2000)
    {
      v28 = 2;
    }

    if (v28)
    {
LABEL_47:
      v31 = result[3];
      if (result[2] > v31)
      {
        v6 = atomic_fetch_add_explicit(result + 2, 0xFFFFFFFFFFFFE000, memory_order_relaxed) - 0x2000;
        if (v6 >= v31)
        {
LABEL_51:
          v12 = 0;
          ++v10;
          continue;
        }

        atomic_fetch_add_explicit(result + 2, 0x2000uLL, memory_order_relaxed);
      }

      v6 = -1;
      goto LABEL_51;
    }

    v30 = result[1];
    if (*result < v30)
    {
      add_explicit = atomic_fetch_add_explicit(result, 0x2000uLL, memory_order_relaxed);
      if ((add_explicit + 0x2000) <= v30)
      {
        goto LABEL_46;
      }

      atomic_fetch_add_explicit(result, 0xFFFFFFFFFFFFE000, memory_order_relaxed);
    }

    add_explicit = -1;
LABEL_46:
    v13 = 0;
    ++v11;
    if ((v28 - 1) <= 1)
    {
      goto LABEL_47;
    }
  }

  while (v6 != -1 && add_explicit != -1);
  v8 = v11 << 13;
  v7 = v10 << 13;
  if (add_explicit == -1)
  {
LABEL_11:
    add_explicit = v6;
  }

LABEL_12:
  *(result[8] + 8 * a2) = add_explicit;
  atomic_fetch_add_explicit(result + 4, v8, memory_order_relaxed);
  atomic_fetch_add_explicit(result + 5, v7, memory_order_relaxed);
  return result;
}

uint64_t _big_split_PositionOffsetWithMeta_t(void *a1, uint64_t a2, uint64_t a3, NSObject *a4, signed int a5, __n128 a6)
{
  v6 = a2 + 1;
  if (a5 >= 3)
  {
    while (v6 < (a5 << 13))
    {
      if (a5-- <= 3)
      {
        a5 = 2;
        return parallel_partition_PositionOffsetWithMeta_t(a1, v6, a3, a4, a5, a6);
      }
    }
  }

  return parallel_partition_PositionOffsetWithMeta_t(a1, v6, a3, a4, a5, a6);
}

void storage_reader_destroy(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    _release_read_window(&availableReaders, v1);
    *(a1 + 8) = 0;
  }
}

void *_storage_reader_match_address(void *result, unint64_t a2)
{
  if (result)
  {
    v2 = result[1];
    if (v2)
    {
      v3 = v2 + 528;
    }

    else
    {
      v3 = *result + 216;
    }

    return storage_windows_contains_address(v3, a2);
  }

  return result;
}

void _storage_reader_exception_cleanup(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 8);
    if (v2)
    {
      _release_read_window(&availableReaders, v2);
      *(a1 + 8) = 0;
    }
  }
}

void storageMakeReadOnly(uint64_t a1)
{
  storageUnmap(a1);
  v3 = *(a1 + 216);
  v2 = a1 + 216;
  fd_make_readonly(v3);
  *(v2 + 4152) = 1;
  *(v2 + 36) = 1;

  _windowsMapInit(v2, 1, 0);
}

void storageUnmap(uint64_t a1)
{
  if ((*(a1 + 252) & 1) == 0 && *(a1 + 254) == 1 && *(a1 + 248) >= 1)
  {
    v2 = 0;
    do
    {
      storageWindowSync(*(a1 + 272 + 8 * v2++), 0);
    }

    while (v2 < *(a1 + 248));
  }

  storageWindowsUnmap(a1 + 216);
}

uint64_t *storageHeaderStore(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 4);
  v5 = *a2;
  if (v4 >> 28)
  {
    *v5 = v4 | 0x80;
    v5[1] = (v4 >> 7) | 0x80;
    v5[2] = (v4 >> 14) | 0x80;
    v5[3] = (v4 >> 21) | 0x80;
    v5[4] = v4 >> 28;
    v6 = 5;
  }

  else if (v4 >= 0x200000)
  {
    *v5 = v4 | 0x80;
    v5[1] = (v4 >> 7) | 0x80;
    v5[2] = (v4 >> 14) | 0x80;
    v5[3] = v4 >> 21;
    v6 = 4;
  }

  else if (v4 >= 0x4000)
  {
    *v5 = v4 | 0x80;
    v5[1] = (v4 >> 7) | 0x80;
    v5[2] = v4 >> 14;
    v6 = 3;
  }

  else if (v4 >= 0x80)
  {
    *v5 = v4 | 0x80;
    v5[1] = v4 >> 7;
    v6 = 2;
  }

  else
  {
    *v5 = v4;
    v6 = 1;
  }

  *a2 += v6;
  storeVInt64(a2, *(a1 + 232));
  result = storeVInt64(a2, *(a1 + 224));
  for (i = 0; i != 128; i += 8)
  {
    v9 = *(a1 + 8 + i);
    if (v9)
    {
      if (v9 >= *(a1 + 232))
      {
        v10 = __si_assert_copy_extra(*(a1 + 216));
        v11 = v10;
        v12 = "";
        if (v10)
        {
          v12 = v10;
        }

        __message_assert("%s:%u: failed assertion '%s' %s offset: 0x%lld, freeRegion: 0x%lld", "storage.c", 192, "(head==0) || (head < storage->_windows._freeRegion)", v12, v9, *(a1 + 232));
        free(v11);
        if (__valid_fsp(*(a1 + 216)))
        {
          v13 = 2989;
        }

        else
        {
          v13 = 3072;
        }

        *v13 = -559038737;
        abort();
      }

      result = storeVInt64(a2, *(a1 + 8 + i));
    }

    else
    {
      *(*a2)++ = 0;
    }
  }

  return result;
}

BOOL storageHeaderRestore(uint64_t a1, char **a2)
{
  v49 = *MEMORY[0x1E69E9840];
  bzero(a1, 0x1140uLL);
  v4 = *a2;
  v5 = **a2;
  if (**a2 < 0)
  {
    v7 = v4[1];
    if (v4[1] < 0)
    {
      v8 = v4[2];
      if (v4[2] < 0)
      {
        v10 = v4[3];
        if (v4[3] < 0)
        {
          v37 = v4[4];
          v38 = ((v10 & 0x7F) << 21) | (v37 << 28) | ((v8 & 0x7F) << 14) | ((v7 & 0x7F) << 7) | v5 & 0x7F;
          v11 = (v4 + 5);
          *a2 = (v4 + 5);
          *(a1 + 4) = v38;
          if ((v37 & 0x80000000) == 0)
          {
            goto LABEL_31;
          }

          goto LABEL_11;
        }

        v9 = ((v8 & 0x7F) << 14) | (v10 << 21) | ((v7 & 0x7F) << 7) | v5 & 0x7F;
        v6 = 4;
      }

      else
      {
        v9 = ((v7 & 0x7F) << 7) | (v8 << 14) | v5 & 0x7F;
        v6 = 3;
      }

      v5 = v9;
    }

    else
    {
      v5 = v5 & 0x7F | (v7 << 7);
      v6 = 2;
    }
  }

  else
  {
    v6 = 1;
  }

  v11 = &v4[v6];
  *a2 = v11;
  *(a1 + 4) = v5;
LABEL_11:
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = v11;
  do
  {
    ++v13;
    v16 = *v15++;
    v14 |= (v16 & 0x7F) << v12;
    if ((v16 & 0x80) == 0)
    {
      break;
    }

    v17 = v12 == 63;
    v12 += 7;
  }

  while (!v17);
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v21 = &v11[v13];
  *a2 = v21;
  *(a1 + 232) = v14;
  do
  {
    ++v19;
    v22 = *v15++;
    v20 |= (v22 & 0x7F) << v18;
    if ((v22 & 0x80) == 0)
    {
      break;
    }

    v17 = v18 == 63;
    v18 += 7;
  }

  while (!v17);
  v23 = 0;
  v24 = &v21[v19];
  *a2 = &v21[v19];
  *(a1 + 224) = v20;
  while (1)
  {
    v25 = 0;
    v26 = 0;
    v27 = 0;
    do
    {
      v28 = v26 + 1;
      v29 = v24[v26];
      v27 |= (v29 & 0x7F) << v25;
      if ((v29 & 0x80) == 0)
      {
        break;
      }

      v26 = v28;
      v17 = v25 == 63;
      v25 += 7;
    }

    while (!v17);
    v24 += v28;
    *a2 = v24;
    if (v27)
    {
      if (*(a1 + 232) <= v27)
      {
        break;
      }
    }

    *(a1 + 8 + 8 * v23) = v27;
    *(a1 + 4374) = 0;
    if (++v23 == 16)
    {
      return *(a1 + 224) >= *(a1 + 232);
    }
  }

  v31 = *__error();
  v32 = _SILogForLogForCategory(0);
  if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
  {
    v36 = *(a1 + 232);
    v39 = 136316162;
    v40 = "_storeageSetFreeListHead";
    v41 = 1024;
    v42 = 200;
    v43 = 1024;
    v44 = v23;
    v45 = 2048;
    v46 = v27;
    v47 = 2048;
    v48 = v36;
    _os_log_error_impl(&dword_1C278D000, v32, OS_LOG_TYPE_ERROR, "%s:%d: %d: offset(%lld) < freeRegion (%lld)", &v39, 0x2Cu);
  }

  *__error() = v31;
LABEL_31:
  v33 = *__error();
  v34 = _SILogForLogForCategory(0);
  if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
  {
    v39 = 136315394;
    v40 = "storageHeaderRestore";
    v41 = 1024;
    v42 = 358;
    _os_log_error_impl(&dword_1C278D000, v34, OS_LOG_TYPE_ERROR, "%s:%d: invalid storage data", &v39, 0x12u);
  }

  v35 = __error();
  result = 0;
  *v35 = v33;
  return result;
}

BOOL storageInit(uint64_t a1, off_t a2, unint64_t a3, uint64_t a4, int a5, int a6, char a7, int a8, void *aBlock)
{
  v27 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    v11 = a5;
    *a1 = a8;
    *(a1 + 4374) = 0;
    if (a5)
    {
      *(a1 + 196) = 0;
      *(a1 + 180) = 0u;
      *(a1 + 164) = 0u;
      *(a1 + 148) = 0u;
      *(a1 + 132) = 0u;
      *(a1 + 116) = 0u;
      *(a1 + 100) = 0u;
      *(a1 + 84) = 0u;
      *(a1 + 68) = 0u;
      *(a1 + 52) = 0u;
      *(a1 + 36) = 0u;
      *(a1 + 20) = 0u;
      *(a1 + 4) = 0u;
    }

    else
    {
      memset(&v26, 0, sizeof(v26));
      v20 = fd_stat(a4, &v26);
      st_size = *(a1 + 224);
      if (!st_size)
      {
        st_size = v26.st_size;
        if (v20)
        {
          st_size = a2;
        }

        *(a1 + 4) = 0;
      }

      a2 = st_size;
    }

    *(a1 + 216) = a4;
    *(a1 + 252) = a7;
    *(a1 + 224) = a2;
    *(a1 + 248) = 1;
    *(a1 + 253) = 0;
    if (aBlock)
    {
      v22 = _Block_copy(aBlock);
    }

    else
    {
      v22 = 0;
    }

    *(a1 + 256) = v22;
    *(a1 + 264) = 26;
    bzero((a1 + 272), 0x1000uLL);
    if (!*(a1 + 232))
    {
      v23 = 8;
      if (a3 > 8)
      {
        v23 = a3;
      }

      *(a1 + 232) = v23;
      *(a1 + 240) = v23;
    }

    *(a1 + 208) = a6;
    v24 = malloc_type_malloc(0xD0uLL, 0x1020040167D79A3uLL);
    *(a1 + 4408) = v24;
    *v24 = 0u;
    v24[1] = 0u;
    v24[2] = 0u;
    v24[3] = 0u;
    v24[4] = 0u;
    v24[5] = 0u;
    v24[6] = 0u;
    v24[7] = 0u;
    v24[8] = 0u;
    v24[9] = 0u;
    v24[10] = 0u;
    v24[11] = 0u;
    v24[12] = 0u;
    pthread_rwlock_init(*(a1 + 4408), 0);
    *(a1 + 252) = a7;
    *(a1 + 254) = 0;
    *(a1 + 4400) = 0;
    _windowsMapInit((a1 + 216), 0, 1);
    if (v11)
    {
      if (a7)
      {
        return 1;
      }

      fd_truncate(a4, 0);
      v25 = *(a1 + 224);
    }

    else
    {
      v25 = *(a1 + 224);
      if (*(a1 + 232) > v25)
      {
        return 0;
      }

      if (a7)
      {
        return 1;
      }
    }

    return !fd_truncate(a4, v25);
  }

  v16 = *__error();
  v17 = _SILogForLogForCategory(0);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    v26.st_dev = 136315394;
    *&v26.st_mode = "storageInit";
    WORD2(v26.st_ino) = 1024;
    *(&v26.st_ino + 6) = 401;
    _os_log_error_impl(&dword_1C278D000, v17, OS_LOG_TYPE_ERROR, "%s:%d: storageInit - inFdPtr == NULL", &v26, 0x12u);
  }

  v18 = __error();
  result = 0;
  *v18 = v16;
  return result;
}

void storageClose(uint64_t a1)
{
  storageWindowsUnmap(a1 + 216);
  storageWindowsClose(a1 + 216);
  v2 = *(a1 + 4408);
  if (v2)
  {
    pthread_rwlock_wrlock(v2);
    _release_read_window(&availableReaders, *(*(a1 + 4408) + 200));
    pthread_rwlock_unlock(*(a1 + 4408));
    pthread_rwlock_destroy(*(a1 + 4408));
    free(*(a1 + 4408));
    *(a1 + 4408) = 0;
  }

  *(a1 + 4372) = 1;
}

uint64_t storageSyncPages(uint64_t a1, uint64_t a2, size_t a3)
{
  v42 = *MEMORY[0x1E69E9840];
  v6 = (a3 + *(a1 + 232) - 1) / a3;
  Current = CFAbsoluteTimeGetCurrent();
  if ((*(a1 + 252) & 1) == 0 && *(a1 + 254) == 1 && *(a1 + 248) >= 1)
  {
    v8 = 0;
    do
    {
      storageWindowSync(*(a1 + 272 + 8 * v8++), 0);
    }

    while (v8 < *(a1 + 248));
  }

  if (!v6)
  {
    v11 = 0;
    v14 = 0;
    goto LABEL_25;
  }

  v9 = 0;
  v10 = 0;
  v11 = 0;
  while (1)
  {
    if (*a2 <= v10 || !CFBitVectorGetBitAtIndex(*(a2 + 16), v10))
    {
      v14 = 0;
      goto LABEL_18;
    }

    v12 = fd_mmap(*(a1 + 216), a3, 3, 1025, v9);
    if (v12 == -1)
    {
      break;
    }

    v13 = v12;
    fd_system_status_stall_if_busy();
    if (msync(v13, a3, 16))
    {
      v14 = *__error();
    }

    else
    {
      v14 = 0;
    }

    if (munmap(v13, a3))
    {
      v14 = *__error();
    }

    ++v11;
    if (v14)
    {
      goto LABEL_25;
    }

LABEL_18:
    ++v10;
    v9 += a3;
    if (v10 >= v6)
    {
      goto LABEL_25;
    }
  }

  v14 = *__error();
  bzero(buf, 0x400uLL);
  v15 = fd_realpath(*(a1 + 216), buf);
  if (!v15)
  {
    v15 = fd_name(*(a1 + 216), buf, 0x400uLL);
  }

  v16 = *__error();
  v17 = _SILogForLogForCategory(0);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    v23 = "";
    v24 = 136316418;
    v25 = "storageSyncPages";
    v26 = 1024;
    if (v15)
    {
      v23 = v15;
    }

    v27 = 555;
    v28 = 1024;
    v29 = a3;
    v30 = 2048;
    v31 = v9;
    v32 = 1024;
    v33 = v14;
    v34 = 2080;
    v35 = v23;
    _os_log_error_impl(&dword_1C278D000, v17, OS_LOG_TYPE_ERROR, "%s:%d: mmap(%d, %lld) err:%d, %s", &v24, 0x32u);
  }

  *__error() = v16;
LABEL_25:
  v18 = *__error();
  v19 = _SILogForLogForCategory(10);
  v20 = 2 * (dword_1EBF46AF4 < 4);
  if (os_log_type_enabled(v19, v20))
  {
    v21 = CFAbsoluteTimeGetCurrent() - Current;
    *buf = 67109632;
    v37 = v6;
    v38 = 1024;
    v39 = v11;
    v40 = 2048;
    v41 = v21;
    _os_log_impl(&dword_1C278D000, v19, v20, "sync pages (%d, %d) took %f seconds", buf, 0x18u);
  }

  *__error() = v18;
  return v14;
}

uint64_t storageInvalidate(uint64_t result, unint64_t a2, uint64_t a3)
{
  v3 = *(result + 248);
  if (v3 >= 1)
  {
    v6 = result;
    v7 = 0;
    v8 = result + 272;
    v9 = a3 + a2;
    do
    {
      v10 = *(v8 + 8 * v7);
      if (v10)
      {
        v11 = v10[2];
        v12 = a2 >= v11;
        v13 = a2 - v11;
        if (v12)
        {
          v14 = v10[3];
          v15 = v10[1];
          if (v14 <= v9)
          {
            v16 = 0;
          }

          else
          {
            v16 = v13;
          }

          result = sync_invalidate_mapping((v15 + v16), a3);
          v3 = *(v6 + 248);
        }
      }

      ++v7;
    }

    while (v7 < v3);
  }

  return result;
}

uint64_t storageDeactivateAll(uint64_t result, int a2)
{
  if (*(result + 248) >= 1)
  {
    v3 = result;
    v4 = 0;
    v5 = result + 272;
    do
    {
      v6 = *(v5 + 8 * v4);
      if (v6)
      {
        v7 = *(v6 + 8);
        if (v7)
        {
          v8 = *(v6 + 24) - *(v6 + 16);
          fd_system_status_stall_if_busy();
          if (a2)
          {
            msync(v7, v8, 16);
            result = madvise(*(v6 + 8), *(v6 + 24) - *(v6 + 16), 4);
          }

          else
          {
            result = msync(v7, v8, 8);
          }
        }
      }

      ++v4;
    }

    while (v4 < *(v3 + 248));
  }

  return result;
}

uint64_t storageAllocOffsetFromEnd(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + 4);
  if (a2 <= v3)
  {
    v5 = 0;
  }

  else
  {
    v4 = (((a2 - v3) ^ (a2 - v3 - 1)) <= a2 - v3 - 1) - __clz(a2 - v3);
    if (v4 <= -29)
    {
      v5 = 0;
    }

    else
    {
      v5 = v4 + 28;
    }
  }

  v6 = 8 << v5;
  v7 = 16 << v5;
  v9 = *(a1 + 224);
  result = *(a1 + 232);
  if (v3 + result + v7 + 8 >= v9)
  {
    if (!_storageExpand(a1, v6))
    {
      return 0;
    }

    v9 = *(a1 + 224);
    result = *(a1 + 232);
  }

  v10 = (v6 + v3);
  v11 = result + v10;
  if (result + v10 < v9)
  {
LABEL_8:
    *(a1 + 232) = v11;
    return result;
  }

  if (_storageWindowsExpandBacking((a1 + 216), v10))
  {
    result = *(a1 + 232);
    v11 = result + v10;
    goto LABEL_8;
  }

  return 0;
}

uint64_t _storageExpand(uint64_t a1, int a2)
{
  v3 = _storageWindowsExpandBacking((a1 + 216), (*(a1 + 4) + 2 * a2 + 8));
  if (v3)
  {
    if (*(a1 + 248) == 1 && (*(a1 + 253) & 1) == 0)
    {
      storageWindowRelease((a1 + 272));
    }

    pthread_rwlock_wrlock(*(a1 + 4408));
    v4 = *(a1 + 4408);
    sig = v4[1].__sig;
    v4[1].__sig = 0;
    pthread_rwlock_unlock(v4);
    _release_read_window(&availableReaders, sig);
  }

  return v3;
}

uint64_t storageTruncate(void *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = fd_truncate(a1[27], a1[29]);
  if (v2 == -1)
  {
    v3 = *__error();
    v4 = *__error();
    v5 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315650;
      v8 = "storageTruncate";
      v9 = 1024;
      v10 = 736;
      v11 = 1024;
      v12 = v3;
      _os_log_error_impl(&dword_1C278D000, v5, OS_LOG_TYPE_ERROR, "%s:%d: ftruncate error %d", &v7, 0x18u);
    }

    *__error() = v4;
  }

  else
  {
    v3 = v2;
    a1[28] = a1[29];
  }

  return v3;
}

uint64_t storageTruncateAndMakeReadOnly(uint64_t a1)
{
  result = storageTruncate(a1);
  if (!result)
  {
    *(a1 + 252) = 1;
    v3 = *(a1 + 248);
    if (v3 >= 1)
    {
      v4 = a1 + 272;
      do
      {
        if (*v4)
        {
          *(*v4 + 40) = 1;
        }

        v4 += 8;
        --v3;
      }

      while (v3);
    }

    v5 = *(a1 + 216);

    return fd_make_readonly(v5);
  }

  return result;
}

unint64_t storageAllocOffset(uint64_t a1, unsigned int a2, uint64_t a3, int *a4)
{
  v51 = *MEMORY[0x1E69E9840];
  v7 = *(a1 + 4);
  v8 = a2 - v7;
  if (a2 <= v7)
  {
    v11 = 0;
    v10 = 8;
  }

  else
  {
    v9 = ((v8 ^ (v8 - 1)) <= v8 - 1) - __clz(v8);
    v10 = 8;
    if (v9 < -28)
    {
      v11 = 0;
    }

    else
    {
      v11 = (v9 + 28);
      if (v11 >= 0x18)
      {
        v23 = __si_assert_copy_extra(0);
        v24 = v23;
        v25 = "";
        if (v23)
        {
          v25 = v23;
        }

        __message_assert("%s:%u: failed assertion '%s' %s ", "storage.c", 766, "idx < (24)", v25);
LABEL_44:
        free(v24);
        if (__valid_fs(-1))
        {
          v40 = 2989;
        }

        else
        {
          v40 = 3072;
        }

        *v40 = -559038737;
        abort();
      }

      v10 = 8 << (v9 + 28);
    }
  }

  if (v10 < v8)
  {
    v26 = __si_assert_copy_extra(0);
    v24 = v26;
    v27 = "";
    if (v26)
    {
      v27 = v26;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "storage.c", 767, "((uint32_t)8<<idx) >= inSize - baseSize", v27);
    goto LABEL_44;
  }

  v12 = v10 + v7;
  if (v12 < a2)
  {
    v28 = __si_assert_copy_extra(0);
    v24 = v28;
    v29 = "";
    if (v28)
    {
      v29 = v28;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "storage.c", 768, "rsize+baseSize >= inSize", v29);
    goto LABEL_44;
  }

  *a4 = 0;
  v13 = *(a1 + 8 + 8 * v11);
  if (!v13)
  {
    v13 = takeBuddyPage_4233(a1, v11);
    if (v13)
    {
      goto LABEL_18;
    }

    v17 = *(a1 + 224);
    v13 = *(a1 + 232);
    if (v7 + (16 << v11) + v13 + 8 >= v17)
    {
      if (!_storageExpand(a1, v10))
      {
        return 0;
      }

      v17 = *(a1 + 224);
      v13 = *(a1 + 232);
    }

    v18 = v13 + v12;
    if (v18 >= v17)
    {
      if (!_storageWindowsExpandBacking((a1 + 216), v10 + v7))
      {
        v13 = 0;
LABEL_18:
        if (v13 >= *(a1 + 232))
        {
          v30 = __si_assert_copy_extra(0);
          v31 = v30;
          v32 = "";
          if (v30)
          {
            v32 = v30;
          }

          __message_assert("%s:%u: failed assertion '%s' %s ", "storage.c", 805, "result < inStorage->_windows._freeRegion", v32);
          free(v31);
          if (__valid_fs(-1))
          {
            v33 = 2989;
          }

          else
          {
            v33 = 3072;
          }

          *v33 = -559038737;
          abort();
        }

        return v13;
      }

      v13 = *(a1 + 232);
      v18 = v13 + v12;
    }

    *(a1 + 232) = v18;
    goto LABEL_18;
  }

  if (v13 >= *(a1 + 232))
  {
    v34 = __si_assert_copy_extra(*(a1 + 216));
    v35 = v34;
    v36 = "";
    if (v34)
    {
      v36 = v34;
    }

    __message_assert("%s:%u: failed assertion '%s' %s offset: 0x%lld, freeRegion: 0x%lld", "storage.c", 192, "(head==0) || (head < storage->_windows._freeRegion)", v36, v13, *(a1 + 232));
    free(v35);
    if (__valid_fsp(*(a1 + 216)))
    {
      v37 = 2989;
    }

    else
    {
      v37 = 3072;
    }

    *v37 = -559038737;
    abort();
  }

  v14 = storageResolvePtr(a1, *(a1 + 8 + 8 * v11), 8, 1);
  if (!v14)
  {
    v38 = __si_assert_copy_extra(0);
    v24 = v38;
    v39 = "";
    if (v38)
    {
      v39 = v38;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "storage.c", 774, "ptr", v39);
    goto LABEL_44;
  }

  v15 = *v14;
  if (!*v14 || *(a1 + 232) > v15)
  {
    *(a1 + 8 + 8 * v11) = v15;
    *(a1 + 4374) = 0;
    v16 = *a4;
    *a4 = v16 + 1;
    *(a3 + 8 * v16) = v13;
    goto LABEL_18;
  }

  v20 = *__error();
  v21 = _SILogForLogForCategory(0);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    v22 = *(a1 + 232);
    *buf = 136316162;
    v42 = "_storeageSetFreeListHead";
    v43 = 1024;
    v44 = 200;
    v45 = 1024;
    v46 = v11;
    v47 = 2048;
    v48 = v15;
    v49 = 2048;
    v50 = v22;
    _os_log_error_impl(&dword_1C278D000, v21, OS_LOG_TYPE_ERROR, "%s:%d: %d: offset(%lld) < freeRegion (%lld)", buf, 0x2Cu);
  }

  v13 = 0;
  *__error() = v20;
  return v13;
}

uint64_t storageResolvePtr(uint64_t a1, unint64_t a2, uint64_t a3, int a4)
{
  v7 = *(a1 + 232);
  if (v7 <= a2)
  {
    if (__valid_fsp(*(a1 + 216)))
    {
      v15 = __si_assert_copy_extra(*(a1 + 216));
      v23 = v15;
      v24 = "";
      if (v15)
      {
        v24 = v15;
      }

      si_analytics_log_4247(v15, v16, v17, v18, v19, v20, v21, v22, "storage.c", 1305, "inOffset<inStorage->_windows._freeRegion", v24, a2, a3, *(a1 + 232));
      free(v23);
      v25 = 2816;
    }

    else
    {
      v25 = 3072;
    }

    *v25 = -559038737;
    abort();
  }

  v8 = a3 + a2;
  if (a3 + a2 > v7 && a4 != 0)
  {
    v26 = __si_assert_copy_extra(*(a1 + 216));
    v27 = v26;
    v28 = "";
    if (v26)
    {
      v28 = v26;
    }

    __message_assert("%s:%u: failed assertion '%s' %s offset:%lld, size:%lld, free_region:%lld", "storage.c", 1306, "!check_size||inOffset+inSize<=inStorage->_windows._freeRegion", v28, a2, a3, *(a1 + 232));
    free(v27);
    if (__valid_fsp(*(a1 + 216)))
    {
LABEL_26:
      v29 = 2989;
      goto LABEL_31;
    }

LABEL_30:
    v29 = 3072;
LABEL_31:
    *v29 = -559038737;
    abort();
  }

  v10 = a2 >> *(a1 + 264);
  if (v10 < *(a1 + 248))
  {
    v11 = *(a1 + 8 * v10 + 272);
    if (v11)
    {
      if (v11[2] <= a2 && v11[3] >= v8 && *(a1 + 224) >= v8 && !v11[1])
      {
        if (a2)
        {
          v33 = 0;
        }

        else
        {
          v33 = a3 == 1;
        }

        v34 = !v33;
        _windowsMapInit((a1 + 216), v34, 0);
      }
    }
  }

  result = _windowsGetPtr(a1 + 216, a2, a3);
  if (result)
  {
    if (result == a2)
    {
      v30 = __si_assert_copy_extra(0);
      v31 = v30;
      v32 = "";
      if (v30)
      {
        v32 = v30;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "storage.c", 1337, "(offset_t)(intptr_t)ptr !=inOffset", v32);
      free(v31);
      if (__valid_fs(-1))
      {
        goto LABEL_26;
      }

      goto LABEL_30;
    }
  }

  else
  {

    return _moveWindowsInner((a1 + 216), a2, a3, 0, v13, v14);
  }

  return result;
}

unint64_t takeBuddyPage_4233(uint64_t a1, uint64_t a2)
{
  v39 = *MEMORY[0x1E69E9840];
  if (a2 > 0x16)
  {
    return 0;
  }

  if (*(a1 + 4))
  {
    return 0;
  }

  v3 = a2;
  if (*(a1 + 200) <= a2)
  {
    return 0;
  }

  v4 = 8 << a2;
  v5 = a2 + 1;
  v6 = *(a1 + 8 + 8 * (a2 + 1));
  if (v6)
  {
    if (v6 >= *(a1 + 232))
    {
      v17 = __si_assert_copy_extra(*(a1 + 216));
      v18 = v17;
      v19 = "";
      if (v17)
      {
        v19 = v17;
      }

      __message_assert("%s:%u: failed assertion '%s' %s offset: 0x%lld, freeRegion: 0x%lld", "storage.c", 192, "(head==0) || (head < storage->_windows._freeRegion)", v19, v6, *(a1 + 232));
      free(v18);
      if (__valid_fsp(*(a1 + 216)))
      {
        v20 = 2989;
      }

      else
      {
        v20 = 3072;
      }

      *v20 = -559038737;
      abort();
    }

    v7 = storageResolvePtr(a1, *(a1 + 8 + 8 * v5), 8, 1);
    if (!v7)
    {
      v21 = __si_assert_copy_extra(0);
      v22 = v21;
      v23 = "";
      if (v21)
      {
        v23 = v21;
      }

      __message_assert("%s:%u: failed assertion '%s' %s get node %lld idx %d bs %d bl %lld", "storage.c", 633, "ptr", v23, v6, v3, *(a1 + 4), *(a1 + 200));
      free(v22);
      if (__valid_fs(-1))
      {
        v24 = 2989;
      }

      else
      {
        v24 = 3072;
      }

      *v24 = -559038737;
      abort();
    }

    v8 = *v7;
    if (*v7 && *(a1 + 232) <= v8)
    {
      v25 = *v7;
      v26 = *__error();
      v27 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v28 = *(a1 + 232);
        *buf = 136316162;
        v30 = "_storeageSetFreeListHead";
        v31 = 1024;
        v32 = 200;
        v33 = 1024;
        v34 = v5;
        v35 = 2048;
        v36 = v25;
        v37 = 2048;
        v38 = v28;
        _os_log_error_impl(&dword_1C278D000, v27, OS_LOG_TYPE_ERROR, "%s:%d: %d: offset(%lld) < freeRegion (%lld)", buf, 0x2Cu);
      }

      *__error() = v26;
      v9 = __si_assert_copy_extra(0);
      __message_assert("%s:%u: failed assertion '%s' %s free idx %d offset %lld bs %d bl %lld", "storage.c");
      goto LABEL_11;
    }

    *(a1 + 8 + 8 * v5) = v8;
    *(a1 + 4374) = 0;
    *v7 = 0;
    if ((_storeageSetFreeListHead(a1, v3, v6 + v4) & 1) == 0)
    {
      v9 = __si_assert_copy_extra(0);
      __message_assert("%s:%u: failed assertion '%s' %s clear idx %d offset %lld bs %d bl %lld", "storage.c");
LABEL_11:
      v10 = v9;
      goto LABEL_19;
    }
  }

  else
  {
    v12 = takeBuddyPage_4233(a1, (a2 + 1));
    v6 = v12;
    if (v12)
    {
      if ((_storeageSetFreeListHead(a1, v3, v12 + v4) & 1) == 0)
      {
        v13 = __si_assert_copy_extra(0);
        v14 = v13;
        v15 = "";
        if (v13)
        {
          v15 = v13;
        }

        __message_assert("%s:%u: failed assertion '%s' %s free idx %d node %lld size %d bs %d bl %lld", "storage.c", 645, "result", v15, v3, v6, 8 << v3, *(a1 + 4), *(a1 + 200));
        v10 = v14;
LABEL_19:
        free(v10);
        if (__valid_fs(-1))
        {
          v16 = 2989;
        }

        else
        {
          v16 = 3072;
        }

        *v16 = -559038737;
        abort();
      }
    }

    else
    {
      *(a1 + 200) = v3;
    }
  }

  return v6;
}

uint64_t _storeageSetFreeListHead(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v16 = a3;
  if (a3 && *(a1 + 232) <= a3)
  {
    v8 = *__error();
    v9 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = *(a1 + 232);
      *buf = 136316162;
      v18 = "_storeageSetFreeListHead";
      v19 = 1024;
      v20 = 200;
      v21 = 1024;
      v22 = a2;
      v23 = 2048;
      v24 = a3;
      v25 = 2048;
      v26 = v11;
      _os_log_error_impl(&dword_1C278D000, v9, OS_LOG_TYPE_ERROR, "%s:%d: %d: offset(%lld) < freeRegion (%lld)", buf, 0x2Cu);
    }

    v7 = 0;
    *__error() = v8;
  }

  else
  {
    v6 = storageResolvePtr(a1, a3, 8, 1);
    if (!v6)
    {
      v12 = __si_assert_copy_extra(0);
      v13 = v12;
      v14 = "";
      if (v12)
      {
        v14 = v12;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "storage.c", 208, "ptr", v14);
      free(v13);
      if (__valid_fs(-1))
      {
        v15 = 2989;
      }

      else
      {
        v15 = 3072;
      }

      *v15 = -559038737;
      abort();
    }

    *v6 = 0;
    v7 = 1;
    dirtyStorageOffsets(a1, &v16, 1u);
    *(a1 + 8 * a2 + 8) = a3;
    *(a1 + 4374) = 0;
  }

  return v7;
}

void dirtyStorageOffsets(uint64_t result, unint64_t *a2, unsigned int a3)
{
  if (a3 >= 1)
  {
    v5 = a3;
    do
    {
      v7 = *a2++;
      v6 = v7;
      bit_vector_set_4242((result + 4376), (v7 >> 17));
      if ((v7 >> 17) != (v7 + 8) >> 17)
      {
        bit_vector_set_4242((result + 4376), (v6 >> 17) + 1);
      }

      --v5;
    }

    while (v5);
  }
}

void bit_vector_set_4242(void *a1, CFIndex idx)
{
  v4 = a1[1];
  if (v4 <= idx)
  {
    if (v4)
    {
      v6 = a1[1];
    }

    else
    {
      v6 = 32;
    }

    while (1)
    {
      v6 *= 2;
      if (v6 > idx)
      {
        break;
      }

      if (v6 <= v4)
      {
        v7 = __si_assert_copy_extra(0);
        v8 = v7;
        v9 = "";
        if (v7)
        {
          v9 = v7;
        }

        __message_assert("%s:%u: failed assertion '%s' %s ", "bit_vector.h", 124, "newCapacity > bv->capacity", v9);
        free(v8);
        if (__valid_fs(-1))
        {
          v10 = 2989;
        }

        else
        {
          v10 = 3072;
        }

        *v10 = -559038737;
        abort();
      }
    }

    v11 = a1[2];
    v12 = *MEMORY[0x1E695E480];
    if (v11)
    {
      MutableCopy = CFBitVectorCreateMutableCopy(v12, v6, v11);
    }

    else
    {
      MutableCopy = CFBitVectorCreateMutable(v12, v6);
    }

    v14 = MutableCopy;
    if (!MutableCopy)
    {
      v16 = __si_assert_copy_extra(0);
      v17 = v16;
      v18 = "";
      if (v16)
      {
        v18 = v16;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "bit_vector.h", 128, "newBV", v18);
      free(v17);
      if (__valid_fs(-1))
      {
        v19 = 2989;
      }

      else
      {
        v19 = 3072;
      }

      *v19 = -559038737;
      abort();
    }

    CFBitVectorSetCount(MutableCopy, v6);
    v15 = a1[2];
    if (v15)
    {
      CFRelease(v15);
    }

    a1[1] = v6;
    a1[2] = v14;
  }

  if (*a1 <= idx)
  {
    *a1 = idx + 1;
  }

  v5 = a1[2];

  CFBitVectorSetBitAtIndex(v5, idx, 1u);
}

void si_analytics_log_4247(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  v11 = *MEMORY[0x1E69E9840];
  v8[0] = 0;
  va_copy(&v8[1], va);
  vasprintf(v8, "%s:%u: failed assertion '%s' %s offset:%lld, size:%lld, free_region:%lld", va);
  SISetCrashCStr(v8[0]);
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
  {
    *buf = 136315138;
    v10 = v8[0];
    _os_log_fault_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "%s", buf, 0xCu);
  }

  free(v8[0]);
}

void storageFreeOffset(uint64_t a1, unint64_t a2, unsigned int a3)
{
  v46 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 4);
  v6 = a3 >= v5;
  v7 = a3 - v5;
  if (v7 != 0 && v6)
  {
    v8 = ((v7 ^ (v7 - 1)) <= v7 - 1) - __clz(v7);
    v10 = 8;
    if (v8 < -28)
    {
      v9 = 0;
    }

    else
    {
      v9 = v8 + 28;
      if ((v8 + 28) >= 0x18)
      {
        v16 = __si_assert_copy_extra(0);
        v17 = v16;
        v18 = "";
        if (v16)
        {
          v18 = v16;
        }

        __message_assert("%s:%u: failed assertion '%s' %s ", "storage.c", 820, "idx < (24)", v18);
LABEL_32:
        free(v17);
        if (__valid_fs(-1))
        {
          v25 = 2989;
        }

        else
        {
          v25 = 3072;
        }

        *v25 = -559038737;
        abort();
      }

      v10 = 8 << v9;
    }
  }

  else
  {
    v9 = 0;
    v10 = 8;
  }

  if (v7 > v10)
  {
    v19 = __si_assert_copy_extra(0);
    v17 = v19;
    v20 = "";
    if (v19)
    {
      v20 = v19;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "storage.c", 821, "inSize - baseSize <= rsize", v20);
    goto LABEL_32;
  }

  if (*(a1 + 224) <= a2)
  {
    v21 = __si_assert_copy_extra(0);
    v17 = v21;
    v22 = "";
    if (v21)
    {
      v22 = v21;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "storage.c", 822, "inOffset < inStorage->_windows._size", v22);
    goto LABEL_32;
  }

  v11 = v10;
  if (a2 + v10 == *(a1 + 232))
  {
    v12 = storageResolvePtr(a1, a2, a3, 1);
    bzero(v12, v11);
    *(a1 + 232) = a2;
    return;
  }

  v13 = storageResolvePtr(a1, a2, v10, 1);
  if (!v13)
  {
    v23 = __si_assert_copy_extra(0);
    v17 = v23;
    v24 = "";
    if (v23)
    {
      v24 = v23;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "storage.c", 834, "ptr", v24);
    goto LABEL_32;
  }

  v14 = v13;
  bzero(v13, v11);
  if (*(a1 + 200) < v9)
  {
    *(a1 + 200) = v9;
  }

  v15 = *(a1 + 8 + 8 * v9);
  if (v15 && v15 >= *(a1 + 232))
  {
    v26 = __si_assert_copy_extra(*(a1 + 216));
    v27 = v26;
    v28 = "";
    if (v26)
    {
      v28 = v26;
    }

    __message_assert("%s:%u: failed assertion '%s' %s offset: 0x%lld, freeRegion: 0x%lld", "storage.c", 192, "(head==0) || (head < storage->_windows._freeRegion)", v28, v15, *(a1 + 232));
    free(v27);
    if (__valid_fsp(*(a1 + 216)))
    {
      v29 = 2989;
    }

    else
    {
      v29 = 3072;
    }

    *v29 = -559038737;
    abort();
  }

  v35 = *(a1 + 8 + 8 * v9);
  *v14 = v15;
  dirtyStorageOffsets(a1, &v35, 1u);
  if (a2 && *(a1 + 232) <= a2)
  {
    v30 = *__error();
    v31 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v32 = *(a1 + 232);
      *buf = 136316162;
      v37 = "_storeageSetFreeListHead";
      v38 = 1024;
      v39 = 200;
      v40 = 1024;
      v41 = v9;
      v42 = 2048;
      v43 = a2;
      v44 = 2048;
      v45 = v32;
      _os_log_error_impl(&dword_1C278D000, v31, OS_LOG_TYPE_ERROR, "%s:%d: %d: offset(%lld) < freeRegion (%lld)", buf, 0x2Cu);
    }

    *__error() = v30;
    v33 = __si_assert_copy_extra(0);
    v17 = v33;
    v34 = "";
    if (v33)
    {
      v34 = v33;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "storage.c", 845, "success", v34);
    goto LABEL_32;
  }

  *(a1 + 8 + 8 * v9) = a2;
  *(a1 + 4374) = 0;
}

uint64_t storageExtendOffset(uint64_t a1, unint64_t a2, unsigned int a3, unsigned int a4)
{
  v50 = *MEMORY[0x1E69E9840];
  v7 = a2 + a3;
  v8 = *(a1 + 232);
  if (v7 == v8)
  {
    v9 = *(a1 + 224);
    if (a2 + a4 <= v9)
    {
      v10 = v7 + a4 - a3;
      if (v10 < v9)
      {
LABEL_4:
        *(a1 + 232) = v10;
        goto LABEL_18;
      }

      v25 = a4 - a3;
      v26 = _storageWindowsExpandBacking((a1 + 216), v25);
      v10 = *(a1 + 232);
      if (v26)
      {
        v10 += v25;
        goto LABEL_4;
      }

LABEL_18:
      if (v10 <= a2)
      {
        v19 = __si_assert_copy_extra(0);
        v20 = v19;
        v21 = "";
        if (v19)
        {
          v21 = v19;
        }

        __message_assert("%s:%u: failed assertion '%s' %s ", "storage.c", 875, "inOffset < inStorage->_windows._freeRegion", v21);
      }

      else
      {
        if (a2 + a4 <= v10)
        {
          return 1;
        }

        v22 = __si_assert_copy_extra(0);
        v20 = v22;
        v23 = "";
        if (v22)
        {
          v23 = v22;
        }

        __message_assert("%s:%u: failed assertion '%s' %s ", "storage.c", 876, "inOffset+inNewSize <= inStorage->_windows._freeRegion", v23);
      }

      free(v20);
      if (__valid_fs(-1))
      {
        v24 = 2989;
      }

      else
      {
        v24 = 3072;
      }

      *v24 = -559038737;
      abort();
    }

    return 0;
  }

  if (a4 > 2 * a3)
  {
    return 0;
  }

  v11 = *(a1 + 4);
  v12 = a3 >= v11;
  v13 = a3 - v11;
  if (v13 != 0 && v12 && (v14 = ((v13 ^ (v13 - 1)) <= v13 - 1) - __clz(v13), v14 > -29))
  {
    v15 = v14 + 28;
  }

  else
  {
    v15 = 0;
  }

  v16 = *(a1 + 8 + 8 * v15);
  if (v16 && v16 >= v8)
  {
    v27 = *(a1 + 8 + 8 * v15);
    v28 = __si_assert_copy_extra(*(a1 + 216));
    v29 = v28;
    v30 = "";
    if (v28)
    {
      v30 = v28;
    }

    __message_assert("%s:%u: failed assertion '%s' %s offset: 0x%lld, freeRegion: 0x%lld", "storage.c", 192, "(head==0) || (head < storage->_windows._freeRegion)", v30, v27, *(a1 + 232));
    free(v29);
    if (__valid_fsp(*(a1 + 216)))
    {
      v31 = 2989;
    }

    else
    {
      v31 = 3072;
    }

    *v31 = -559038737;
    abort();
  }

  if (v16 != v7)
  {
    return 0;
  }

  result = _windowsGetPtr(a1 + 216, v7, a3);
  if (result)
  {
    v18 = *result;
    if (*result && v8 <= v18)
    {
      v32 = *result;
      v33 = *__error();
      v34 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        v35 = *(a1 + 232);
        *buf = 136316162;
        v41 = "_storeageSetFreeListHead";
        v42 = 1024;
        v43 = 200;
        v44 = 1024;
        v45 = v15;
        v46 = 2048;
        v47 = v32;
        v48 = 2048;
        v49 = v35;
        _os_log_error_impl(&dword_1C278D000, v34, OS_LOG_TYPE_ERROR, "%s:%d: %d: offset(%lld) < freeRegion (%lld)", buf, 0x2Cu);
      }

      *__error() = v33;
      v36 = __si_assert_copy_extra(0);
      v37 = v36;
      v38 = "";
      if (v36)
      {
        v38 = v36;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "storage.c", 869, "result", v38);
      free(v37);
      if (__valid_fs(-1))
      {
        v39 = 2989;
      }

      else
      {
        v39 = 3072;
      }

      *v39 = -559038737;
      abort();
    }

    *(a1 + 8 + 8 * v15) = v18;
    *(a1 + 4374) = 0;
    v10 = *(a1 + 232);
    goto LABEL_18;
  }

  return result;
}

unint64_t storageGrowOffset(uint64_t a1, unint64_t a2, unsigned int a3, unsigned int a4, uint64_t a5, int *a6, __n128 a7)
{
  v30[1] = *MEMORY[0x1E69E9840];
  v13 = *(a1 + 4);
  if (a3 <= v13)
  {
    v15 = 0;
  }

  else
  {
    v14 = (((a3 - v13) ^ (a3 - v13 - 1)) <= a3 - v13 - 1) - __clz(a3 - v13);
    if (v14 <= -29)
    {
      v15 = 0;
    }

    else
    {
      v15 = v14 + 28;
    }
  }

  v16 = a4 >= v13;
  v17 = a4 - v13;
  if (v17 != 0 && v16 && (v18 = ((v17 ^ (v17 - 1)) <= v17 - 1) - __clz(v17), v18 > -29))
  {
    v19 = v18 + 28;
  }

  else
  {
    v19 = 0;
  }

  if (v15 > v19)
  {
    v26 = __si_assert_copy_extra(0);
    v27 = v26;
    v28 = "";
    if (v26)
    {
      v28 = v26;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "storage.c", 887, "oldIdx <= newIdx", v28);
    free(v27);
    if (__valid_fs(-1))
    {
      v29 = 2989;
    }

    else
    {
      v29 = 3072;
    }

    *v29 = -559038737;
    abort();
  }

  if (v19 == v15)
  {
    return a2;
  }

  v21 = a3;
  MEMORY[0x1EEE9AC00](a7);
  v22 = storageResolvePtr(a1, a2, a3, 1);
  memcpy(v30 - ((v21 + 15) & 0x1FFFFFFF0), v22, a3);
  storageFreeOffset(a1, a2, a3);
  v20 = storageAllocOffset(a1, a4, a5, a6);
  if (v20)
  {
    v23 = storageResolvePtr(a1, v20, a4, 1);
    memcpy(v23, v30 - ((v21 + 15) & 0x1FFFFFFF0), v21);
  }

  v24 = *a6;
  *(a5 + 8 * v24) = a2;
  *a6 = v24 + 1;
  return v20;
}

uint64_t freeListVerify(uint64_t a1, int a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 8 * a2 + 8);
  if (v2)
  {
    if (v2 >= *(a1 + 232))
    {
      v16 = __si_assert_copy_extra(*(a1 + 216));
      v17 = v16;
      v18 = "";
      if (v16)
      {
        v18 = v16;
      }

      __message_assert("%s:%u: failed assertion '%s' %s offset: 0x%lld, freeRegion: 0x%lld", "storage.c", 192, "(head==0) || (head < storage->_windows._freeRegion)", v18, v2, *(a1 + 232));
      free(v17);
      if (__valid_fsp(*(a1 + 216)))
      {
        v19 = 2989;
      }

      else
      {
        v19 = 3072;
      }

      *v19 = -559038737;
      abort();
    }

    v4 = 0;
    v5 = *(a1 + 8 * a2 + 8);
    while (1)
    {
      result = storageResolvePtr(a1, v2, 8, 1);
      if (!result)
      {
        return result;
      }

      v2 = *result;
      if (*result >= *(a1 + 232))
      {
        break;
      }

      if (v4)
      {
        v5 = *storageResolvePtr(a1, v5, 8, 1);
        if (v5 == v2)
        {
          v7 = *__error();
          v13 = _SILogForLogForCategory(4);
          if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_13;
          }

          v15 = *(a1 + 232);
          *buf = 136316162;
          v21 = "freeListVerify";
          v22 = 1024;
          v23 = 988;
          v24 = 2048;
          v25 = v2;
          v26 = 2048;
          v27 = v2;
          v28 = 2048;
          v29 = v15;
          v10 = "%s:%d: Cycle in free-list: head:0x%llx, probe:0x%llx, freeRegion: 0x%llx";
          v11 = v13;
          v12 = 48;
          goto LABEL_16;
        }
      }

      ++v4;
      if (!v2)
      {
        return 1;
      }
    }

    v7 = *__error();
    v8 = _SILogForLogForCategory(4);
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
LABEL_13:
      v14 = __error();
      result = 0;
      *v14 = v7;
      return result;
    }

    v9 = *(a1 + 232);
    *buf = 136315906;
    v21 = "freeListVerify";
    v22 = 1024;
    v23 = 980;
    v24 = 2048;
    v25 = v2;
    v26 = 2048;
    v27 = v9;
    v10 = "%s:%d: head:0x%llx, freeRegion: 0x%llx";
    v11 = v8;
    v12 = 38;
LABEL_16:
    _os_log_error_impl(&dword_1C278D000, v11, OS_LOG_TYPE_ERROR, v10, buf, v12);
    goto LABEL_13;
  }

  return 1;
}

void dirtyStoragePage(uint64_t a1, unint64_t a2)
{
  v3 = 64 << *(a2 + 2);
  v4 = _windowsAddressOffset(a1 + 216, a2);
  v5 = (v4 >> 17);
  bit_vector_set_4242((a1 + 4376), v5);
  if (v5 != (v4 + v3) >> 17)
  {

    bit_vector_set_4242((a1 + 4376), (v4 >> 17) + 1);
  }
}

char *storage_describe_windows(uint64_t a1, char *__str)
{
  v4 = snprintf(__str, 0xFFuLL, "c:%d s:%lld", *(a1 + 248), *(a1 + 224));
  if (*(a1 + 248) >= 1 && v4 <= 0xFE)
  {
    v5 = 0;
    v6 = &__str[v4];
    v7 = 255 - v4;
    do
    {
      snprintf(v6, v7, "%d:(mem:%p so:%lld eo:%lld)", v5, *(*(a1 + 272 + 8 * v5) + 8), *(*(a1 + 272 + 8 * v5) + 16), *(*(a1 + 272 + 8 * v5) + 24));
      ++v5;
    }

    while (v5 < *(a1 + 248));
  }

  return __str;
}

BOOL uint32_map_init(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5)
{
  bzero(a1, 0x1140uLL);
  *(a1 + 4416) = a3;
  v9 = 4 * a3;
  *(a1 + 224) = v9;
  *(a1 + 232) = v9;
  if (a5)
  {
    v10 = 114;
  }

  else
  {
    v10 = 102;
  }

  return storageInit(a1, 0, 4uLL, a2, 0, 0, 0, v10, 0);
}

uint64_t uint32_map_get(uint64_t a1, unsigned int a2)
{
  v19 = *MEMORY[0x1E69E9840];
  if (a2 && *(a1 + 4416) > a2)
  {
    return *storageResolvePtr(a1, 4 * a2, 4, 1);
  }

  v5 = *__error();
  v6 = _SILogForLogForCategory(0);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v8 = *(a1 + 4416);
    v9 = 136316162;
    v10 = "uint32_map_get";
    v11 = 1024;
    v12 = 1418;
    v13 = 2048;
    v14 = a1;
    v15 = 1024;
    v16 = v8;
    v17 = 1024;
    v18 = a2;
    _os_log_error_impl(&dword_1C278D000, v6, OS_LOG_TYPE_ERROR, "%s:%d: invalid map (%p) count:%d <= pos:%d", &v9, 0x28u);
  }

  v7 = __error();
  result = 0;
  *v7 = v5;
  return result;
}

_DWORD *uint32_map_put(uint64_t a1, unsigned int a2, int a3)
{
  v20 = *MEMORY[0x1E69E9840];
  if (a2 && *(a1 + 4416) > a2)
  {
    result = storageResolvePtr(a1, 4 * a2, 4, 1);
    *result = a3;
  }

  else
  {
    v7 = *__error();
    v8 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 4416);
      v10 = 136316162;
      v11 = "uint32_map_put";
      v12 = 1024;
      v13 = 1430;
      v14 = 2048;
      v15 = a1;
      v16 = 1024;
      v17 = v9;
      v18 = 1024;
      v19 = a2;
      _os_log_error_impl(&dword_1C278D000, v8, OS_LOG_TYPE_ERROR, "%s:%d: invalid map (%p) count:%d <= pos:%d", &v10, 0x28u);
    }

    result = __error();
    *result = v7;
  }

  return result;
}

void __si_retain_service_connection_block_invoke_2(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v2 = *(a1 + 32);
    v3 = gSIMachServicesNames_block_invoke_s_service_connections[*(a1 + 40)];
    v5 = 136315394;
    v6 = v2;
    v7 = 2048;
    v8 = v3;
    _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "### reset client connection %s %p", &v5, 0x16u);
  }

  v4 = gSIMachServicesNames_block_invoke_s_service_connections[*(a1 + 40)];
  if (v4)
  {
    xpc_connection_cancel(v4);
    xpc_release(gSIMachServicesNames_block_invoke_s_service_connections[*(a1 + 40)]);
    gSIMachServicesNames_block_invoke_s_service_connections[*(a1 + 40)] = 0;
  }
}

void __si_xpc_setup_connection_block_invoke(uint64_t a1, _xpc_connection_s *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  if (is_valid_xpc_type(0, a2, MEMORY[0x1E69E9E68]))
  {
    xpc_connection_set_target_queue(a2, *(a1 + 40));
    xpc_connection_set_event_handler(a2, &__block_literal_global_4309);

    xpc_connection_resume(a2);
  }

  else if (!is_valid_xpc_type(0, a2, MEMORY[0x1E69E9E68]) && MEMORY[0x1C6921B10](a2) == MEMORY[0x1E69E9E98])
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v5 = 134217984;
      v6 = a2;
      _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "### Connection error %p", &v5, 0xCu);
    }

    v4 = *(a1 + 32);
    if (v4)
    {
      (*(v4 + 16))();
    }
  }
}

void __si_xpc_setup_connection_block_invoke_2(int a1, xpc_object_t xdict)
{
  remote_connection = xpc_dictionary_get_remote_connection(xdict);
  if (is_valid_xpc_type(remote_connection, xdict, MEMORY[0x1E69E9E80]))
  {
    xpc_dictionary_get_string(xdict, "command");
    if (remote_connection)
    {
      reply = xpc_dictionary_create_reply(xdict);
      if (reply)
      {
        v5 = reply;
        xpc_dictionary_set_int64(reply, "status", -1);
        xpc_connection_send_message(remote_connection, v5);

        dispatch_release(v5);
      }
    }
  }
}

uint64_t _TermUpdateSetLock(uint64_t a1, int a2)
{
  if (a2)
  {
    HIDWORD(v4) = qos_class_self() - 9;
    LODWORD(v4) = HIDWORD(v4);
    v3 = v4 >> 2;
    if (v3 > 6)
    {
      v5 = 0;
    }

    else
    {
      v5 = dword_1C2BFF8F0[v3];
    }

    pthread_mutex_lock((a1 + 304));
    if (!*(a1 + 488) && !*(a1 + 500) && (*(a1 + 516) & 1) == 0)
    {
      if (v5 > 5)
      {
LABEL_20:
        *(a1 + 488) = pthread_self();
        goto LABEL_12;
      }

      v8 = v5 - 6;
      v9 = (a1 + 16 * v5 + 368);
      while (!*v9)
      {
        v9 += 2;
        if (__CFADD__(v8++, 1))
        {
          goto LABEL_20;
        }
      }
    }

    db_rwlock_wait(a1 + 304, v5, 2);
LABEL_12:

    return pthread_mutex_unlock((a1 + 304));
  }

  v6 = a1 + 304;

  return db_read_lock(v6);
}

uint64_t _TermUpdateSetUnlock(uint64_t a1)
{
  pthread_mutex_lock((a1 + 304));
  *(a1 + 508) = 0;
  v2 = *(a1 + 480);
  *(a1 + 480) = 0;
  *(a1 + 488) = 0;
  v3 = *(a1 + 500) != 0;
  *(a1 + 516) = 0;
  db_rwlock_wakeup(a1 + 304, v3, 0);
  result = pthread_mutex_unlock((a1 + 304));
  if (v2)
  {

    return pthread_override_qos_class_end_np(v2);
  }

  return result;
}

void *TermUpdateSetSetVectorStore(void *result, uint64_t a2)
{
  if (result)
  {
    result[6] = a2;
    v3 = *result;
    v4 = result + 1;
    if (*result != result + 1)
    {
      do
      {
        result = (*(*v3[5] + 288))(v3[5], a2);
        v5 = v3[1];
        if (v5)
        {
          do
          {
            v6 = v5;
            v5 = *v5;
          }

          while (v5);
        }

        else
        {
          do
          {
            v6 = v3[2];
            v7 = *v6 == v3;
            v3 = v6;
          }

          while (!v7);
        }

        v3 = v6;
      }

      while (v6 != v4);
    }
  }

  return result;
}

_DWORD *TermUpdateSetStore(_DWORD *result, uint64_t a2, void *a3, char a4)
{
  v64 = *MEMORY[0x1E69E9840];
  v54 = 0u;
  v55 = 0u;
  v53 = 0u;
  if (result)
  {
    v7 = result;
    Current = CFAbsoluteTimeGetCurrent();
    db_read_lock((v7 + 76));
    v9 = atomic_load((*(v7 + 3) + 16));
    v10 = a3[5];
    if ((a3[4] - v10) < 6)
    {
      *(&__p[1] + 1) = 0;
      *(__p + 1) = 0;
      __p[3] = 0;
      *(&__p[2] + 1) = 0;
      LOBYTE(__p[0]) = 11;
      store_stream_write_bytes_3266(a3, __p, 1uLL);
    }

    else
    {
      *(a3[6] + v10) = 11;
      a3[5] = v10 + 1;
    }

    store_stream_write_vint32(a3, v9);
    store_stream_write_vint32(a3, v7[28]);
    v11 = *(v7 + 1);
    v12 = a3[5];
    if ((a3[4] - v12) < 0xB)
    {
      memset(__p, 0, 32);
      v48 = writeVInt64(__p, 0, v11);
      store_stream_write_bytes_3266(a3, __p, v48);
    }

    else
    {
      a3[5] = writeVInt64(a3[6], v12, v11);
    }

    store_stream_write_vint32(a3, v7[4]);
    store_stream_write_vint32(a3, v7[42]);
    store_stream_write_vint32(a3, v7[36]);
    store_stream_write_vint32(a3, v7[30]);
    store_stream_write_vint32(a3, v7[44]);
    store_stream_write_vint32(a3, v7[38]);
    store_stream_write_vint32(a3, v7[32]);
    store_stream_write_vint32(a3, v7[54]);
    store_stream_write_vint32(a3, v7[52]);
    store_stream_write_vint32(a3, v7[34]);
    store_stream_write_vint32(a3, v7[42]);
    store_stream_write_vint32(a3, v7[50]);
    storeDirStoreUpdateSet(*(v7 + 11), v7 + 12, a3);
    v13 = v7[154];
    BYTE8(v55) = a4;
    LODWORD(v55) = 0;
    DWORD1(v55) = v13;
    v14 = *(v7 + 11);
    *&v54 = v7 + 60;
    *(&v54 + 1) = a2;
    *&v53 = a3;
    *(&v53 + 1) = v14;
    v15 = *(v7 + 3);
    v56[0] = 0;
    v56[1] = v56;
    v58 = 0;
    v57 = 0x2000000000;
    __p[0] = MEMORY[0x1E69E9820];
    __p[1] = 0x40000000;
    __p[2] = ___hashTableIterate_block_invoke_2;
    __p[3] = &unk_1E81939C8;
    __p[5] = storeUpdateSetCallback;
    __p[6] = &v53;
    __p[4] = v56;
    _TermTrieWalkFatWithOptions((v15 + 32), 0, 0, 0, __p, 0, 0);
    _Block_object_dispose(v56, 8);
    if (v9 != v55)
    {
      v49 = __si_assert_copy_extra_332();
      v50 = v49;
      v51 = "";
      if (v49)
      {
        v51 = v49;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "TermUpdateSet.c", 930, "updateTermCount == ctx.termCount", v51);
      free(v50);
      if (__valid_fs(-1))
      {
        MEMORY[0xBAD] = -559038737;
        abort();
      }

      MEMORY[0xC00] = -559038737;
      abort();
    }

    v52 = v9;
    v16 = *(v7 + 10);
    if (v16)
    {
      v17 = *(v7 + 11);
      store_stream_write_vint32(a3, *(v16 + 16));
      v18 = *v16;
      if (*v16 != v16 + 8)
      {
        do
        {
          v19 = *__error();
          v20 = _SILogForLogForCategory(16);
          v21 = 2 * (dword_1EBF46B0C < 4);
          if (os_log_type_enabled(v20, v21))
          {
            v22 = v18[5];
            HIBYTE(v57) = 3;
            LODWORD(v56[0]) = 4085052;
            (*(*v22 + 312))(__p);
            v23 = __p;
            if (SHIBYTE(__p[2]) < 0)
            {
              v23 = __p[0];
            }

            *buf = 134218242;
            v61 = v16;
            v62 = 2080;
            v63 = v23;
            _os_log_impl(&dword_1C278D000, v20, v21, "store <UpdateSet> %p %s", buf, 0x16u);
            if (SHIBYTE(__p[2]) < 0)
            {
              operator delete(__p[0]);
              if (SHIBYTE(v57) < 0)
              {
LABEL_40:
                operator delete(v56[0]);
              }
            }

            else if (SHIBYTE(v57) < 0)
            {
              goto LABEL_40;
            }
          }

          *__error() = v19;
          v24 = v18[5];
          v25 = *(v24 + 8);
          if (*(v24 + 22))
          {
            v26 = 0x80000000;
          }

          else
          {
            v26 = 0;
          }

          store_stream_write_vint32(a3, v26 | v25);
          v27 = *(v18[5] + 16);
          if (v27 == 2)
          {
            v28 = 1;
          }

          else
          {
            v28 = 3;
          }

          if (v27 == 4)
          {
            v29 = 0;
          }

          else
          {
            v29 = v28;
          }

          store_stream_write_vint32(a3, v29);
          v30 = *(v18[5] + 12);
          if (v30 == 512)
          {
            v31 = 1;
          }

          else
          {
            v31 = 3;
          }

          if (v30 == 768)
          {
            v31 = 2;
          }

          if (v30 == 256)
          {
            v32 = 0;
          }

          else
          {
            v32 = v31;
          }

          store_stream_write_vint32(a3, v32);
          store_stream_write_vint32(a3, *(v18[5] + 20));
          (*(*v18[5] + 208))(v18[5], v17, a3);
          v33 = v18[1];
          if (v33)
          {
            do
            {
              v34 = v33;
              v33 = *v33;
            }

            while (v33);
          }

          else
          {
            do
            {
              v34 = v18[2];
              v35 = *v34 == v18;
              v18 = v34;
            }

            while (!v35);
          }

          v18 = v34;
        }

        while (v34 != (v16 + 8));
      }
    }

    pthread_mutex_lock((v7 + 76));
    v36 = v7[125] - 1;
    v7[125] = v36;
    if (!v36)
    {
      db_rwlock_wakeup((v7 + 76), 0, 0);
    }

    pthread_mutex_unlock((v7 + 76));
    v37 = *__error();
    v38 = _SILogForLogForCategory(10);
    v39 = 2 * (dword_1EBF46AF4 < 4);
    if (os_log_type_enabled(v38, v39))
    {
      v40 = v7[28];
      v41 = atomic_load(v7 + 25);
      v42 = CFAbsoluteTimeGetCurrent();
      LODWORD(__p[0]) = 67109888;
      HIDWORD(__p[0]) = v52;
      LOWORD(__p[1]) = 1024;
      *(&__p[1] + 2) = v40;
      HIWORD(__p[1]) = 1024;
      LODWORD(__p[2]) = v41;
      WORD2(__p[2]) = 2048;
      *(&__p[2] + 6) = v42 - Current;
      _os_log_impl(&dword_1C278D000, v38, v39, "Store Update Set (t %d, d %d, p %d) took %f seconds", __p, 0x1Eu);
    }

    result = __error();
    *result = v37;
  }

  else
  {
    v43 = a3[5];
    if ((a3[4] - v43) < 6)
    {
      *(&__p[1] + 1) = 0;
      *(__p + 1) = 0;
      __p[3] = 0;
      *(&__p[2] + 1) = 0;
      LOBYTE(__p[0]) = 11;
      result = store_stream_write_bytes_3266(a3, __p, 1uLL);
      v44 = a3[5];
    }

    else
    {
      v44 = v43 + 1;
      *(a3[6] + v43) = 11;
      a3[5] = v43 + 1;
    }

    if ((a3[4] - v44) < 6)
    {
      memset(__p, 0, 32);
      result = store_stream_write_bytes_3266(a3, __p, 1uLL);
      v45 = a3[5];
    }

    else
    {
      v45 = v44 + 1;
      *(a3[6] + v44) = 0;
      a3[5] = v44 + 1;
    }

    if ((a3[4] - v45) < 6)
    {
      memset(__p, 0, 32);
      result = store_stream_write_bytes_3266(a3, __p, 1uLL);
      v46 = a3[5];
    }

    else
    {
      v46 = v45 + 1;
      *(a3[6] + v45) = 0;
      a3[5] = v45 + 1;
    }

    if ((a3[4] - v46) < 6)
    {
      memset(__p, 0, 32);
      result = store_stream_write_bytes_3266(a3, __p, 1uLL);
      v47 = a3[5];
    }

    else
    {
      v47 = v46 + 1;
      *(a3[6] + v46) = 0;
      a3[5] = v46 + 1;
    }

    if ((a3[4] - v47) < 6)
    {
      memset(__p, 0, 32);
      return store_stream_write_bytes_3266(a3, __p, 1uLL);
    }

    else
    {
      *(a3[6] + v47) = 0;
      a3[5] = v47 + 1;
    }
  }

  return result;
}

uint64_t ___hashTableIterate_block_invoke_2(uint64_t a1, uint64_t a2)
{
  result = (*(a1 + 40))(a2 + 16, *(a1 + 48));
  ++*(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t storeUpdateSetCallback(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 16);
  v5 = (a1 + 18);
  ++*(a2 + 8);
  store_stream_write_vint32(*a2, v4);
  v6 = *a2;
  while (1)
  {
    v8 = *(v6 + 32);
    v7 = *(v6 + 40);
    if (v7 + v4 < v8)
    {
      break;
    }

    v9 = v8 - v7;
    memcpy((*(v6 + 48) + v7), v5, v8 - v7);
    *(v6 + 40) += v9;
    if (store_stream_flush(v6, 0))
    {
      goto LABEL_6;
    }

    v5 += v9;
    v4 -= v9;
  }

  memcpy((*(v6 + 48) + v7), v5, v4);
  *(v6 + 40) += v4;
LABEL_6:
  v10 = *a2;
  v11 = a2[1];
  v12 = a2[2];
  v13 = *(a1 + 12);
  v14 = *(a2 + 9);

  return CIWritePostings(v10, v11, v12, a1, v13, v14);
}

char *TermUpdateSetRestore(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int16 a11, const void *a12)
{
  MEMORY[0x1EEE9AC00](a1);
  v13 = v12;
  v233 = v14;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v255 = *MEMORY[0x1E69E9840];
  Current = CFAbsoluteTimeGetCurrent();
  v28 = TermUpdateSetCreate(v24, v22, 0, 0, v16 | 4u, a10, a11, a12);
  vint32_3407 = store_stream_read_vint32_3407(v26);
  v30 = vint32_3407;
  v234 = v28;
  if (v13)
  {
    if (!vint32_3407)
    {
LABEL_239:
      v169 = *__error();
      v170 = _SILogForLogForCategory(10);
      v171 = 2 * (dword_1EBF46AF4 < 4);
      if (os_log_type_enabled(v170, v171))
      {
        v172 = atomic_load((*(v28 + 3) + 16));
        v173 = *(v234 + 28);
        v174 = atomic_load(v234 + 25);
        v175 = CFAbsoluteTimeGetCurrent();
        LODWORD(__dst[0]) = 67109888;
        DWORD1(__dst[0]) = v172;
        v28 = v234;
        WORD4(__dst[0]) = 1024;
        *(__dst + 10) = v173;
        HIWORD(__dst[0]) = 1024;
        LODWORD(__dst[1]) = v174;
        WORD2(__dst[1]) = 2048;
        *(&__dst[1] + 6) = v175 - Current;
        _os_log_impl(&dword_1C278D000, v170, v171, "Restore Update Set (t %d, d %d, p %d) took %f seconds", __dst, 0x1Eu);
      }

      *__error() = v169;
      if ((v28[616] & 2) != 0)
      {
        return v28;
      }

      v239 = 0;
      v237 = 0u;
      v238 = 0u;
      memset(__dst, 0, sizeof(__dst));
      _TermUpdateSetGetStats(v28, __dst, 1);
      v176 = *&__dst[1] + v237 + *&__dst[0];
      if (v176 < 0xFFFFFFFF)
      {
        atomic_fetch_add(&gTotalCurrentUsage, v176);
        *(v28 + 28) = *&__dst[1] + v237 + *&__dst[0];
        return v28;
      }

      v198 = __si_assert_copy_extra_332();
      v196 = v198;
      v199 = "";
      if (v198)
      {
        v199 = v198;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "TermUpdateSet.c", 1286, "(stats.positionInfoUsed+stats.postingInfoUsed+stats.termInfoUsed) < 4294967295U", v199);
LABEL_275:
      free(v196);
      if (__valid_fs(-1))
      {
        MEMORY[0xBAD] = -559038737;
        abort();
      }

      MEMORY[0xC00] = -559038737;
      abort();
    }

    if (vint32_3407 != 11)
    {
      goto LABEL_16;
    }
  }

  else if (vint32_3407 - 7 >= 5)
  {
    if (vint32_3407)
    {
LABEL_16:
      v41 = *__error();
      v42 = _SILogForLogForCategory(0);
      if (!os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_17;
      }

      LODWORD(__dst[0]) = 136316162;
      *(__dst + 4) = "TermUpdateSetRestore";
      WORD6(__dst[0]) = 1024;
      *(__dst + 14) = 976;
      WORD1(__dst[1]) = 1024;
      DWORD1(__dst[1]) = v30;
      WORD4(__dst[1]) = 1024;
      *(&__dst[1] + 10) = 8;
      HIWORD(__dst[1]) = 1024;
      LODWORD(v237) = 7;
      v165 = "%s:%d: invalid store version %d, expected %d or %d";
      v166 = __dst;
      v167 = v42;
      v168 = 36;
      goto LABEL_238;
    }

    goto LABEL_239;
  }

  v31 = store_stream_read_vint32_3407(v26);
  *(v28 + 28) = store_stream_read_vint32_3407(v26);
  v33 = (v26 + 10);
  v32 = *(v26 + 5);
  if (*(v26 + 4) - v32 < 0xB)
  {
    v193 = 0;
    v35 = 0;
    LOBYTE(__dst[0]) = 0;
    while (store_stream_read_bytes_3410(v26, __dst, 1uLL) == 1)
    {
      v35 |= (__dst[0] & 0x7F) << v193;
      v193 += 7;
      if ((__dst[0] & 0x80) == 0)
      {
        goto LABEL_12;
      }
    }

    v35 = 0;
  }

  else
  {
    v34 = 0;
    v35 = 0;
    do
    {
      v36 = *(*(v26 + 6) + v32++);
      v35 |= (v36 & 0x7F) << v34;
      if ((v36 & 0x80) == 0)
      {
        break;
      }

      v37 = v34 == 63;
      v34 += 7;
    }

    while (!v37);
    *v33 = v32;
  }

LABEL_12:
  *(v28 + 1) = v35;
  *(v28 + 4) = store_stream_read_vint32_3407(v26);
  v38 = store_stream_read_vint32_3407(v26);
  if (v30 < 9)
  {
    *(v28 + 15) = v38;
    *(v28 + 16) = store_stream_read_vint32_3407(v26);
    if (v30 == 8)
    {
      *(v28 + 17) = store_stream_read_vint32_3407(v26);
      v39 = v28;
      v40 = 192;
      goto LABEL_22;
    }
  }

  else
  {
    *(v28 + 21) = v38;
    *(v28 + 18) = store_stream_read_vint32_3407(v26);
    *(v28 + 15) = store_stream_read_vint32_3407(v26);
    *(v28 + 22) = store_stream_read_vint32_3407(v26);
    *(v28 + 19) = store_stream_read_vint32_3407(v26);
    *(v28 + 16) = store_stream_read_vint32_3407(v26);
    *(v28 + 27) = store_stream_read_vint32_3407(v26);
    *(v28 + 26) = store_stream_read_vint32_3407(v26);
    *(v28 + 17) = store_stream_read_vint32_3407(v26);
    *(v28 + 24) = store_stream_read_vint32_3407(v26);
    if (v30 != 9)
    {
      v39 = v28;
      v40 = 200;
LABEL_22:
      *&v39[v40] = store_stream_read_vint32_3407(v26);
      v28 = v39;
    }
  }

  if (!*(v28 + 28) && !*(v28 + 1) && !*(v28 + 4))
  {
    *(v28 + 1) = v20;
    *(v28 + 4) = v18;
  }

  if ((restoreDirStoreUpdateSet(v28 + 11, v28 + 3, v26) & 1) == 0)
  {
    v159 = *__error();
    v160 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v160, OS_LOG_TYPE_ERROR))
    {
      LODWORD(__dst[0]) = 136315394;
      *(__dst + 4) = "TermUpdateSetRestore";
      WORD6(__dst[0]) = 1024;
      *(__dst + 14) = 1022;
      _os_log_error_impl(&dword_1C278D000, v160, OS_LOG_TYPE_ERROR, "%s:%d: Failed restoring update set for paths", __dst, 0x12u);
    }

    *__error() = v159;
    if (!v26[4])
    {
      v26[4] = -1;
    }

    goto LABEL_226;
  }

  bzero(__dst, 0x1000uLL);
  v43 = atomic_load(v28 + 62);
  v44 = v43 + v31;
  v45 = *(v28 + 63);
  if (v44 >= v45)
  {
    do
    {
      if (v45)
      {
        v46 = 2 * v45;
      }

      else
      {
        v46 = 0x10000;
      }

      *(v28 + 63) = v46;
      v47 = atomic_load(v28 + 62);
      v48 = v47 + v31;
      v45 = *(v28 + 63);
    }

    while (v48 >= v45);
  }

  v49 = 32 * v45;
  v50 = mmap(0, v49, 3, 4098, -167772160, 0);
  *(v28 + 30) = v50;
  if (v50 == -1)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v207 = *__error();
      v208 = __error();
      v209 = strerror(*v208);
      *v240 = 136317186;
      *&v240[4] = "slab_allocator.h";
      v241 = 1024;
      v242 = 85;
      v243 = 2048;
      *v244 = v49;
      *&v244[8] = 1024;
      *v245 = 3;
      *&v245[4] = 1024;
      v246 = 4098;
      v247 = 1024;
      v248 = -167772160;
      v249 = 1024;
      v250 = -167772159;
      v251 = 1024;
      v252 = v207;
      v253 = 2080;
      v254 = v209;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%s:%u: mmap failed for addr NULL, len 0x%08lx, prot 0x%04x, flags 0x%04x, fd 0x%04x, flags %u, errno %d(%s)", v240, 0x44u);
    }

    v210 = __si_assert_copy_extra_332();
    v205 = v210;
    v211 = "";
    if (v210)
    {
      v211 = v210;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "TermUpdateSet.c", 1039, "kr == 0", v211);
LABEL_291:
    free(v205);
    if (__valid_fs(-1))
    {
      v212 = 2989;
    }

    else
    {
      v212 = 3072;
    }

    *v212 = -559038737;
    abort();
  }

  atomic_fetch_add_explicit(&qword_1EDD78CC0, v49, memory_order_relaxed);
  if (!v50)
  {
    v195 = __si_assert_copy_extra_332();
    v196 = v195;
    v197 = "";
    if (v195)
    {
      v197 = v195;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "TermUpdateSet.c", 1041, "positions->node_table", v197);
    goto LABEL_275;
  }

  if (!v31)
  {
LABEL_227:
    if (_os_feature_enabled_impl())
    {
      v161 = *(v28 + 10);
      if (v161)
      {
        IVFVectorIndexUpdateSet::~IVFVectorIndexUpdateSet(v161);
        MEMORY[0x1C691FEF0]();
      }

      operator new();
    }

    goto LABEL_239;
  }

  v51 = 0;
  v225 = 4 * (v30 != 11);
  v232 = (v26 + 10);
  v221 = v31;
  while (1)
  {
    v222 = v51;
    if (v26[4])
    {
      goto LABEL_18;
    }

    v52 = store_stream_read_vint32_3407(v26);
    v53 = v52;
    if (v52 - 4097 <= 0xFFFFEFFF)
    {
      v41 = *__error();
      v194 = _SILogForLogForCategory(0);
      if (!os_log_type_enabled(v194, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_17;
      }

      *v240 = 136315650;
      *&v240[4] = "TermUpdateSetRestore";
      v241 = 1024;
      v242 = 1053;
      v243 = 1024;
      *v244 = v53;
      v165 = "%s:%d: invalid termLen %d";
      v166 = v240;
      v167 = v194;
      v168 = 24;
      goto LABEL_238;
    }

    v54 = v52;
    v55 = *(v26 + 4);
    v56 = *(v26 + 5);
    if (v56 + v52 <= v55)
    {
      v57 = __dst;
      v58 = v53;
LABEL_41:
      memcpy(v57, (*(v26 + 6) + v56), v54);
      *(v26 + 5) = v56 + v54;
      v28 = v234;
      goto LABEL_42;
    }

    v58 = v52;
    v146 = v52;
    v147 = *(v26 + 6);
    v148 = v55 - v56;
    if (v55 != v56)
    {
      __memcpy_chk();
      *v33 = v55;
      v56 = v55;
    }

    v149 = prot_pread(*v26, v147, v56, *(v26 + 3));
    if (v149 != -1)
    {
      v150 = v149;
      *(v26 + 4) = v149;
      *(v26 + 5) = 0;
      v151 = *(v26 + 3) + v149;
      *(v26 + 3) = v151;
      v28 = v234;
      v59 = v221;
      if (!v149)
      {
        goto LABEL_43;
      }

      v57 = __dst + v148;
      v54 = v58 - v148;
      if (v54 <= v150)
      {
        v56 = 0;
        v33 = (v26 + 10);
        v53 = v146;
        goto LABEL_41;
      }

      v33 = (v26 + 10);
      while (1)
      {
        v156 = *(v26 + 6);
        v231 = v57;
        memcpy(v57, v156, v150);
        *(v26 + 5) = v150;
        v157 = prot_pread(*v26, v156, v150, v151);
        if (v157 == -1)
        {
          break;
        }

        v158 = v157;
        *(v26 + 4) = v157;
        *(v26 + 5) = 0;
        v151 = *(v26 + 3) + v157;
        *(v26 + 3) = v151;
        v28 = v234;
        v53 = v146;
        if (!v157)
        {
          goto LABEL_42;
        }

        v56 = 0;
        v57 = &v231[v150];
        v54 -= v150;
        v150 = v158;
        if (v54 <= v158)
        {
          goto LABEL_41;
        }
      }
    }

    v26[4] = *__error();
    v28 = v234;
    v53 = v146;
LABEL_42:
    v59 = v221;
    if (!v53)
    {
      v62 = 1;
      v61 = v58;
      goto LABEL_52;
    }

LABEL_43:
    if (v53 >= 2)
    {
      v61 = v58;
      v60 = v58 & 0x1FFE;
      v63 = __dst + 1;
      v64 = v60;
      do
      {
        v65 = tcmr[*v63];
        *(v63 - 1) = tcmr[*(v63 - 1)];
        *v63 = v65;
        v63 += 2;
        v64 -= 2;
      }

      while (v64);
      if (v60 == v58)
      {
        goto LABEL_51;
      }
    }

    else
    {
      v60 = 0;
      v61 = v58;
    }

    v66 = v61 - v60;
    v67 = __dst + v60;
    do
    {
      *v67 = tcmr[*v67];
      ++v67;
      --v66;
    }

    while (v66);
LABEL_51:
    v62 = 0;
LABEL_52:
    *(__dst + v61) = 0;
    v68 = store_stream_read_vint32_3407(v26);
    v70 = v68;
    v71 = *(v26 + 4);
    if (v71 < v68)
    {
      v162 = *__error();
      v178 = _SILogForLogForCategory(0);
      if (!os_log_type_enabled(v178, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_232;
      }

      v179 = *(v26 + 4);
      *v240 = 136315906;
      *&v240[4] = "TermUpdateSetRestore";
      v241 = 1024;
      v242 = 1068;
      v243 = 1024;
      *v244 = v70;
      *&v244[4] = 1024;
      *&v244[6] = v179;
      v180 = "%s:%d: invalid  postingCount %u > %u";
      v181 = v178;
      v182 = 30;
      goto LABEL_249;
    }

    v230 = v68;
    if (v68)
    {
      v217 = v62;
      v223 = v53;
      v226 = 0;
      v72 = 0;
      v228 = 0;
      v73 = 0;
      v74 = 0;
      v216 = v61;
      v219 = v61 - 1;
      while (1)
      {
        v75 = *(v26 + 5);
        if (*(v26 + 4) - v75 >= 0xB)
        {
          v76 = 0;
          v77 = 0;
          do
          {
            v78 = *(*(v26 + 6) + v75++);
            v77 |= (v78 & 0x7F) << v76;
            if ((v78 & 0x80) == 0)
            {
              break;
            }

            v37 = v76 == 63;
            v76 += 7;
          }

          while (!v37);
          *v33 = v75;
          if (v26[4])
          {
            goto LABEL_231;
          }

          goto LABEL_61;
        }

        v101 = 0;
        v77 = 0;
        v240[0] = 0;
        while (1)
        {
          v102 = *(v26 + 4);
          v103 = *(v26 + 5);
          if (v103 + 1 <= v102)
          {
            v104 = 0;
            v105 = v240;
            v106 = 1;
LABEL_103:
            memcpy(v105, (*(v26 + 6) + v103), v106);
            *(v26 + 5) = v103 + v106;
            v107 = v104;
            v104 = v106;
            goto LABEL_104;
          }

          v108 = *(v26 + 6);
          v104 = v102 - v103;
          if (v102 != v103)
          {
            __memcpy_chk();
            *v232 = v102;
          }

          __n = prot_pread(*v26, v108, v102, *(v26 + 3));
          if (__n == -1)
          {
            v104 = 0;
          }

          else
          {
            v109 = *(v26 + 3) + __n;
            *(v26 + 4) = __n;
            *(v26 + 5) = 0;
            v214 = v109;
            *(v26 + 3) = v109;
            if (!__n)
            {
              v107 = 0;
              goto LABEL_116;
            }

            v105 = &v240[v104];
            v106 = 1 - v104;
            if (1 - v104 <= __n)
            {
              v103 = 0;
              v28 = v234;
              goto LABEL_103;
            }

            while (1)
            {
              v213 = *(v26 + 6);
              v110 = v105;
              memcpy(v105, v213, __n);
              *(v26 + 5) = __n;
              v111 = prot_pread(*v26, v213, __n, v214);
              if (v111 == -1)
              {
                break;
              }

              v112 = v111;
              *(v26 + 4) = v111;
              *(v26 + 5) = 0;
              v214 = *(v26 + 3) + v111;
              *(v26 + 3) = v214;
              if (!v111)
              {
                v107 = v104;
                v104 = __n;
                goto LABEL_116;
              }

              v103 = 0;
              v105 = &v110[__n];
              v106 -= __n;
              v104 += __n;
              __n = v112;
              v28 = v234;
              if (v106 <= v112)
              {
                goto LABEL_103;
              }
            }
          }

          v26[4] = *__error();
          v107 = v104;
          v104 = 0;
LABEL_116:
          v28 = v234;
LABEL_104:
          if (v104 + v107 != 1)
          {
            break;
          }

          v77 |= (v240[0] & 0x7F) << v101;
          v101 += 7;
          if ((v240[0] & 0x80) == 0)
          {
            goto LABEL_129;
          }
        }

        v77 = 0;
LABEL_129:
        v70 = v230;
        if (v26[4])
        {
LABEL_231:
          v162 = *__error();
          v163 = _SILogForLogForCategory(0);
          if (!os_log_type_enabled(v163, OS_LOG_TYPE_ERROR))
          {
LABEL_232:
            *__error() = v162;
            goto LABEL_18;
          }

          v183 = v26[4];
          *v240 = 136315650;
          *&v240[4] = "TermUpdateSetRestore";
          v241 = 1024;
          v242 = 1077;
          v243 = 1024;
          *v244 = v183;
          v180 = "%s:%d: storeStream error %d";
          v181 = v163;
          v182 = 24;
LABEL_249:
          _os_log_error_impl(&dword_1C278D000, v181, OS_LOG_TYPE_ERROR, v180, v240, v182);
          goto LABEL_232;
        }

LABEL_61:
        if (v74)
        {
          v79 = v74 - (v77 >> 2);
        }

        else
        {
          v79 = v77 >> 2;
        }

        if ((v77 & 2) == 0)
        {
          v74 = v79;
        }

        if (v77)
        {
          v80 = 1;
          if (v73)
          {
            goto LABEL_68;
          }
        }

        else
        {
          v80 = store_stream_read_vint32_3407(v26);
          if (v73)
          {
LABEL_68:
            if ((v77 & 2) != 0)
            {
              v81 = 2;
            }

            else
            {
              v81 = 1;
            }

            v82 = v28;
            v83 = (v28 + 100);
            v84 = atomic_load(v83);
            v85 = v84 + v81;
            v86 = *(v82 + 24);
            if (v85 >= v86)
            {
              v113 = 2 * v86;
              if (!v86)
              {
                v113 = 0x4000;
              }

              *(v234 + 24) = v113;
              if (my_vm_reallocate(v234 + 11, 12 * v86, 12 * v113, 0xF3u, *(v234 + 13)))
              {
                v204 = __si_assert_copy_extra_332();
                v205 = v204;
                v206 = "";
                if (v204)
                {
                  v206 = v204;
                }

                __message_assert("%s:%u: failed assertion '%s' %s ", "DocPosting.h", 250, "0 == kr", v206);
                goto LABEL_291;
              }
            }

            add = atomic_fetch_add(v83, v81);
            v28 = v234;
            if (v228)
            {
              v72 = *(v234 + 11) + 12 * v228;
            }

            v70 = v230;
            if (add)
            {
              v88 = *(v234 + 11);
              *v72 = *v72 & 1 | (2 * add);
              v72 = v88 + 12 * add;
              v228 = add;
              goto LABEL_94;
            }

            *v72 &= 1u;
            v41 = *__error();
            v164 = _SILogForLogForCategory(0);
            if (!os_log_type_enabled(v164, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_17;
            }

            *v240 = 136315394;
            *&v240[4] = "TermUpdateSetRestore";
            v241 = 1024;
            v242 = 1121;
            v165 = "%s:%d: lastPosting==0";
LABEL_245:
            v166 = v240;
            v167 = v164;
            v168 = 18;
LABEL_238:
            _os_log_error_impl(&dword_1C278D000, v167, OS_LOG_TYPE_ERROR, v165, v166, v168);
            goto LABEL_17;
          }
        }

        v89 = *(v28 + 3);
        v90 = *v89;
        v240[0] = 0;
        if (!v90)
        {
          v94 = TermTrieResolve(v69);
LABEL_92:
          v72 = v94;
          goto LABEL_93;
        }

        v91 = (v90 + 0x4000);
        v92 = *(v90 + 0x4000);
        if (v92 < 0)
        {
          v95 = *v90;
          if ((v92 & 0x7FFFFFFF) == 0 && v223 == *(v95 + 16))
          {
            if (v217)
            {
LABEL_83:
              v72 = *v90;
              v70 = v230;
              goto LABEL_93;
            }

            v96 = v89 + 270;
            if (*(v95 + 18) == *(v96 + LOBYTE(__dst[0])))
            {
              v97 = 0;
              while (v219 != v97)
              {
                v98 = *(v95 + v97 + 19);
                v99 = *(v96 + *(__dst + ++v97));
                if (v98 != v99)
                {
                  if (v97 >= v216)
                  {
                    goto LABEL_83;
                  }

                  goto LABEL_89;
                }
              }

              goto LABEL_83;
            }
          }

LABEL_89:
          v100 = *v90;
          v94 = TermTrieResolve(v69);
          if (*(v100 + 4) < *(v94 + 4))
          {
            *v90 = v94;
            *(v90 + 0x4000) = 0x80000000;
          }

          v70 = v230;
          goto LABEL_92;
        }

        v93 = TermTrieResolve(v69);
        *v90 = v93;
        v72 = v93;
        *v91 = 0x80000000;
        v70 = v230;
LABEL_93:
        *(v72 + 12) = 0;
        v226 = v72;
LABEL_94:
        *v72 &= 1u;
        if ((v77 & 2) != 0)
        {
          *v72 = 1;
          *(v72 + 8) = v77 >> 2;
        }

        else
        {
          if (v233 && v79 > v233)
          {
            v185 = *__error();
            v186 = _SILogForLogForCategory(0);
            if (os_log_type_enabled(v186, OS_LOG_TYPE_ERROR))
            {
              v202 = *(v28 + 4);
              *v240 = 136316162;
              *&v240[4] = "TermUpdateSetRestore";
              v241 = 1024;
              v242 = 1133;
              v243 = 1024;
              *v244 = v79;
              *&v244[4] = 1024;
              *&v244[6] = v233;
              *v245 = 1024;
              *&v245[2] = v202;
              _os_log_error_impl(&dword_1C278D000, v186, OS_LOG_TYPE_ERROR, "%s:%d: invalid doc id %d exceeded (%d, %d)", v240, 0x24u);
            }

            *__error() = v185;
            v26[4] = 22;
            goto LABEL_18;
          }

          *v72 = 0;
          *(v72 + 8) = v79;
        }

        *(v72 + 4) = v80;
        ++v73;
        v33 = (v26 + 10);
        if (v73 == v70)
        {
          v71 = *(v26 + 4);
          v59 = v221;
          v114 = v226;
          goto LABEL_132;
        }
      }
    }

    v114 = 0;
LABEL_132:
    if (v71 - *v33 < 0xA)
    {
      *&v240[8] = 0;
      *v240 = 0;
      if (store_stream_read_bytes_3410(v26, v240, 1uLL) == 1 && ((v152 = v2_vInt64DataSize(v240[0]), v152 == 1) || store_stream_read_bytes_3410(v26, &v240[1], (v152 - 1)) == v153))
      {
        __p[0] = 0;
        VInt64_2873 = v2_readVInt64_2873(v240, __p);
      }

      else
      {
        VInt64_2873 = 0;
      }

      v28 = v234;
      v59 = v221;
      v33 = (v26 + 10);
      v70 = v230;
      v116 = v222;
      if (!VInt64_2873)
      {
        goto LABEL_194;
      }
    }

    else
    {
      VInt64_2873 = v2_readVInt64_2873(*(v26 + 6), v33);
      v116 = v222;
      if (!VInt64_2873)
      {
        goto LABEL_194;
      }
    }

    if (!v114)
    {
      v200 = *__error();
      v201 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v201, OS_LOG_TYPE_ERROR))
      {
        *v240 = 136315394;
        *&v240[4] = "TermUpdateSetRestore";
        v241 = 1024;
        v242 = 1148;
        _os_log_error_impl(&dword_1C278D000, v201, OS_LOG_TYPE_ERROR, "%s:%d: value==0", v240, 0x12u);
      }

      *__error() = v200;
      v28 = v234;
      goto LABEL_18;
    }

    v117 = atomic_fetch_add(v28 + 62, 1u);
    *(v114 + 12) = v117;
    v220 = *(v28 + 30) + 32 * v117;
    *(v220 + 16) = VInt64_2873 >> 1;
    if (*(v26 + 4) - *(v26 + 5) >= 0xAuLL)
    {
      break;
    }

    *&v240[8] = 0;
    *v240 = 0;
    if (store_stream_read_bytes_3410(v26, v240, 1uLL) == 1 && ((v154 = v2_vInt64DataSize(v240[0]), v154 == 1) || store_stream_read_bytes_3410(v26, &v240[1], (v154 - 1)) == v155))
    {
      __p[0] = 0;
      v119 = v2_readVInt64_2873(v240, __p);
    }

    else
    {
      v119 = 0;
    }

    v28 = v234;
    v59 = v221;
    v33 = (v26 + 10);
    v70 = v230;
    v116 = v222;
    if (v119)
    {
      goto LABEL_137;
    }

LABEL_194:
    v51 = v116 + 1;
    if (v51 == v59)
    {
      goto LABEL_227;
    }
  }

  v118 = v2_readVInt64_2873(*(v26 + 6), v33);
  LODWORD(v119) = v118;
  v116 = v222;
  if (!v118)
  {
    goto LABEL_194;
  }

LABEL_137:
  v120 = 0;
  v121 = 0;
  v224 = 0;
  v122 = 0;
  while (2)
  {
    v123 = positionInfoAlloc((v28 + 240), v119 + v225 + 8);
    if (!v123)
    {
      v41 = *__error();
      v164 = _SILogForLogForCategory(0);
      if (!os_log_type_enabled(v164, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_17;
      }

      *v240 = 136315394;
      *&v240[4] = "TermUpdateSetRestore";
      v241 = 1024;
      v242 = 1188;
      v165 = "%s:%d: posPtrStart==0";
      goto LABEL_245;
    }

    v124 = v123;
    v227 = v120;
    v229 = v122;
    v125 = (*(v28 + 32) + 8 * v123);
    *v125 = v119;
    v126 = (v125 + 1);
    v127 = *(v26 + 4);
    v128 = *(v26 + 5);
    if (v128 + v119 <= v127)
    {
      v129 = 0;
      v130 = v126;
      v131 = v119;
      goto LABEL_141;
    }

    v129 = v127 - v128;
    if (v127 != v128)
    {
      memcpy(v126, (*(v26 + 6) + v128), v127 - v128);
      v127 = *(v26 + 4);
      *(v26 + 5) += v129;
    }

    v142 = prot_pread(*v26, *(v26 + 6), v127, *(v26 + 3));
    if (v142 == -1)
    {
      v129 = 0;
LABEL_174:
      v26[4] = *__error();
      v132 = v129;
      v129 = 0;
    }

    else
    {
      *(v26 + 4) = v142;
      *(v26 + 5) = 0;
      *(v26 + 3) += v142;
      if (v142)
      {
        v130 = &v126[v129];
        v131 = v119 - v129;
        if (v131 > v142)
        {
          v218 = v142;
          while (1)
          {
            memcpy(v130, *(v26 + 6), v218);
            v144 = *(v26 + 6);
            *(v26 + 5) += v218;
            v145 = prot_pread(*v26, v144, *(v26 + 4), *(v26 + 3));
            if (v145 == -1)
            {
              v70 = v230;
              goto LABEL_174;
            }

            *(v26 + 4) = v145;
            *(v26 + 5) = 0;
            *(v26 + 3) += v145;
            if (!v145)
            {
              break;
            }

            v128 = 0;
            v130 += v218;
            v131 -= v218;
            v129 += v218;
            v218 = v145;
            if (v131 <= v145)
            {
              goto LABEL_141;
            }
          }

          v132 = v129;
          v129 = v218;
        }

        else
        {
          v128 = 0;
LABEL_141:
          memcpy(v130, (*(v26 + 6) + v128), v131);
          *(v26 + 5) += v131;
          v132 = v129;
          v129 = v131;
        }

        v70 = v230;
      }

      else
      {
        v132 = 0;
      }
    }

    if (v119 != v129 + v132)
    {
      v187 = *__error();
      v188 = _SILogForLogForCategory(0);
      if (!os_log_type_enabled(v188, OS_LOG_TYPE_ERROR))
      {
LABEL_258:
        *__error() = v187;
        v28 = v234;
        goto LABEL_18;
      }

      v189 = v26[4];
      *v240 = 136315650;
      *&v240[4] = "TermUpdateSetRestore";
      v241 = 1024;
      v242 = 1198;
      v243 = 1024;
      *v244 = v189;
      v190 = "%s:%d: read error %d";
      v191 = v188;
LABEL_282:
      _os_log_error_impl(&dword_1C278D000, v191, OS_LOG_TYPE_ERROR, v190, v240, 0x18u);
      goto LABEL_258;
    }

    if (v126[(v119 - 1)])
    {
      v187 = *__error();
      v192 = _SILogForLogForCategory(0);
      if (!os_log_type_enabled(v192, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_258;
      }

      v203 = v126[(v119 - 1)];
      *v240 = 136315650;
      *&v240[4] = "TermUpdateSetRestore";
      v241 = 1024;
      v242 = 1206;
      v243 = 1024;
      *v244 = v203;
      v190 = "%s:%d: posStart[len-1]: %d";
      v191 = v192;
      goto LABEL_282;
    }

    v133 = &v126[v119];
    *v133 = 0;
    v28 = v234;
    v134 = *(v234 + 32);
    if (v121)
    {
      v135 = (v121 + v134 - v227);
      if (v227 == v134)
      {
        v135 = v121;
      }

      *v135 = v124;
    }

    else
    {
      v224 = v124;
    }

    v33 = (v26 + 10);
    v136 = *(v26 + 5);
    if ((*(v26 + 4) - v136) < 6)
    {
      *&v240[8] = 0;
      *v240 = 0;
      if (store_stream_read_bytes_3410(v26, v240, 1uLL) == 1 && ((v240[0] & 0x80000000) == 0 || (v240[0] >= 0xC0u ? (v240[0] >= 0xE0u ? (v240[0] < 0xF0u ? (v143 = 3) : (v143 = 4)) : (v143 = 2)) : (v143 = 1), v28 = v234, v33 = (v26 + 10), v70 = v230, store_stream_read_bytes_3410(v26, &v240[1], v143) == v143)))
      {
        __p[0] = 0;
        VInt32 = v2_readVInt32(v240, __p);
      }

      else
      {
        VInt32 = 0;
      }
    }

    else
    {
      v137 = *(v26 + 6);
      v138 = v136 + 1;
      v139 = v137 + v136;
      VInt32 = *(v137 + v136);
      if (*(v137 + v136) < 0)
      {
        if (VInt32 > 0xBF)
        {
          if (VInt32 > 0xDF)
          {
            if (VInt32 > 0xEF)
            {
              VInt32 = *(v137 + v138);
              v138 = v136 + 5;
            }

            else
            {
              VInt32 = ((VInt32 & 0xF) << 24) | (*(v137 + v138) << 16) | (*(v139 + 2) << 8) | *(v139 + 3);
              v138 = v136 + 4;
            }
          }

          else
          {
            VInt32 = ((VInt32 & 0x1F) << 16) | (*(v137 + v138) << 8) | *(v139 + 2);
            v138 = v136 + 3;
          }
        }

        else
        {
          v141 = *(v137 + v138) | ((VInt32 & 0x3F) << 8);
          v138 = v136 + 2;
          VInt32 = v141;
        }
      }

      *v232 = v138;
    }

    if (VInt32)
    {
      if (v229 == v70)
      {
        v41 = *__error();
        v184 = _SILogForLogForCategory(0);
        if (!os_log_type_enabled(v184, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_17;
        }

        *v240 = 136315906;
        *&v240[4] = "TermUpdateSetRestore";
        v241 = 1024;
        v242 = 1253;
        v243 = 1024;
        *v244 = v70;
        *&v244[4] = 1024;
        *&v244[6] = v70;
        v165 = "%s:%d: invalid position data %d %d";
LABEL_261:
        v166 = v240;
        v167 = v184;
        v168 = 30;
        goto LABEL_238;
      }

      v122 = v229 + 1;
      v120 = v134;
      v121 = v133;
      LODWORD(v119) = VInt32;
      continue;
    }

    break;
  }

  if (*(v220 + 16) || v229 + 1 == v70)
  {
    *(v220 + 4) = v224;
    v59 = v221;
    v116 = v222;
    goto LABEL_194;
  }

  v41 = *__error();
  v184 = _SILogForLogForCategory(0);
  if (os_log_type_enabled(v184, OS_LOG_TYPE_ERROR))
  {
    *v240 = 136315906;
    *&v240[4] = "TermUpdateSetRestore";
    v241 = 1024;
    v242 = 1243;
    v243 = 1024;
    *v244 = v229 + 1;
    *&v244[4] = 1024;
    *&v244[6] = v70;
    v165 = "%s:%d: invalid position data %d %d";
    goto LABEL_261;
  }

LABEL_17:
  *__error() = v41;
LABEL_18:
  if (v28)
  {
LABEL_226:
    TermUpdateSetRelease(v28);
    return 0;
  }

  return v28;
}

uint64_t v2_vInt64DataSize(unsigned int a1)
{
  if (a1 == 255)
  {
    v1 = 9;
  }

  else
  {
    v1 = 8;
  }

  if (a1 >= 0xFE)
  {
    v2 = v1;
  }

  else
  {
    v2 = 7;
  }

  if (a1 >= 0xFC)
  {
    v3 = v2;
  }

  else
  {
    v3 = 6;
  }

  if (a1 >= 0xF8)
  {
    v4 = v3;
  }

  else
  {
    v4 = 5;
  }

  if (a1 >= 0xF0)
  {
    v5 = v4;
  }

  else
  {
    v5 = 4;
  }

  if (a1 >= 0xE0)
  {
    v6 = v5;
  }

  else
  {
    v6 = 3;
  }

  if (a1 >= 0xC0)
  {
    v7 = v6;
  }

  else
  {
    v7 = 2;
  }

  if ((a1 & 0x80) != 0)
  {
    return v7;
  }

  else
  {
    return 1;
  }
}

uint64_t TermUpdateSetRemoveFromAccounting(uint64_t result)
{
  v1 = *(result + 224);
  v2 = atomic_load(&gTotalCurrentUsage);
  if (v1 > v2)
  {
    v3 = __si_assert_copy_extra_332();
    v4 = v3;
    v5 = "";
    if (v3)
    {
      v5 = v3;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "TermUpdateSet.c", 1448, "termUpdateSet->reportedSize <= gTotalCurrentUsage", v5);
    free(v4);
    if (__valid_fs(-1))
    {
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    MEMORY[0xC00] = -559038737;
    abort();
  }

  atomic_fetch_add(&gTotalCurrentUsage, -*(result + 224));
  *(result + 224) = 0;
  return result;
}

unint64_t termUpdateSetProcessSingleVector(uint64_t a1, CFDictionaryRef theDict, uint64_t a3, uint64_t a4, uint64_t a5)
{
  number = 0;
  value = 0;
  result = CFDictionaryGetValueIfPresent(theDict, @"vec_data", &value);
  if (result)
  {
    result = CFDictionaryGetValueIfPresent(theDict, @"vec_id", &number);
    if (result)
    {
      v31 = 0;
      valuePtr = 0;
      CFNumberGetValue(number, kCFNumberSInt32Type, &valuePtr);
      if (CFDictionaryGetValueIfPresent(theDict, @"vec_dim", &number))
      {
        v11 = CFGetTypeID(number);
        if (v11 == CFNumberGetTypeID())
        {
          CFNumberGetValue(number, kCFNumberSInt8Type, &v31);
        }
      }

      if (CFDictionaryGetValueIfPresent(theDict, @"vec_format", &number))
      {
        v12 = CFGetTypeID(number);
        if (v12 == CFNumberGetTypeID())
        {
          CFNumberGetValue(number, kCFNumberSInt8Type, &v31 + 4);
        }
      }

      v29 = 0;
      if (CFDictionaryGetValueIfPresent(theDict, @"vec_version", &number))
      {
        v13 = CFGetTypeID(number);
        if (v13 == CFNumberGetTypeID())
        {
          CFNumberGetValue(number, kCFNumberSInt16Type, &v29);
        }
      }

      v14 = -1;
      if (v31 <= 2 && HIDWORD(v31) <= 2)
      {
        v14 = (vector_dimension_vec_sizes_15424[v31] * vector_size_elem_sizes_15423[HIDWORD(v31)]);
      }

      result = CFDataGetLength(value);
      if (v14 <= result)
      {
        v15 = *(a1 + 80);
        v16 = v29;
        v17 = valuePtr;
        BytePtr = CFDataGetBytePtr(value);
        v19 = v31;
        v20 = HIDWORD(v31);
        if (__THREAD_SLOT_KEY[0])
        {
          v21 = pthread_getspecific(__THREAD_SLOT_KEY[0]);
          if (!v21)
          {
            goto LABEL_33;
          }
        }

        else
        {
          makeThreadId();
          v21 = pthread_getspecific(__THREAD_SLOT_KEY[0]);
          if (!v21)
          {
            goto LABEL_33;
          }
        }

        if (v21 < 0x801)
        {
          v22 = 0;
LABEL_20:
          if (v21 <= 0x800)
          {
            v23 = &threadData[9 * v21];
            v22 = *(v23 - 11);
            *(v23 - 11) = 1;
          }

LABEL_22:
          v28 = v22;
          if (!v17)
          {
            v25 = __si_assert_copy_extra_332();
            v26 = v25;
            v27 = "";
            if (v25)
            {
              v27 = v25;
            }

            __message_assert("%s:%u: failed assertion '%s' %s ", "VectorIndex.cpp", 268, "vectorId > 0", v27);
            free(v26);
            if (__valid_fs(-1))
            {
              MEMORY[0xBAD] = -559038737;
              abort();
            }

            MEMORY[0xC00] = -559038737;
            abort();
          }

          IVFVectorIndexUpdateSet::getOrCreateVectorIndex(&v34, v15, a5, v16, v19, v20, 0);
          (*(*v34 + 64))(v34, a5, v17, BytePtr, v19, v20, a3, a4, a1 + 88);
          v24 = v35;
          if (v35 && !atomic_fetch_add(&v35->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v24->__on_zero_shared)(v24);
            std::__shared_weak_count::__release_weak(v24);
          }

          if (__THREAD_SLOT_KEY[0])
          {
            result = pthread_getspecific(__THREAD_SLOT_KEY[0]);
            if (!result)
            {
              goto LABEL_40;
            }
          }

          else
          {
            makeThreadId();
            result = pthread_getspecific(__THREAD_SLOT_KEY[0]);
            if (!result)
            {
              goto LABEL_40;
            }
          }

          if (result < 0x801)
          {
LABEL_29:
            if (result <= 0x800)
            {
              *(&threadData[9 * result - 5] - 1) = v28;
            }

            return result;
          }

LABEL_40:
          makeThreadId();
          result = pthread_getspecific(__THREAD_SLOT_KEY[0]);
          if (!result)
          {
            return result;
          }

          goto LABEL_29;
        }

LABEL_33:
        makeThreadId();
        v21 = pthread_getspecific(__THREAD_SLOT_KEY[0]);
        v22 = 0;
        if (!v21)
        {
          goto LABEL_22;
        }

        goto LABEL_20;
      }
    }
  }

  return result;
}

void pushPropertyTermForWildCard(void **a1, size_t a2, const void *a3, int a4, __n128 a5)
{
  v20[1] = *MEMORY[0x1E69E9840];
  v9 = a2 + 2;
  MEMORY[0x1EEE9AC00](a5);
  v11 = (v20 - ((v10 + 17) & 0xFFFFFFFFFFFFFFF0));
  bzero(v11, v9);
  *v11 = a2;
  memcpy(v11 + 1, a3, a2);
  v12 = 1;
  if (a4 == 2)
  {
    v12 = 2;
  }

  v13 = a1[v12];
  if (!CFSetContainsValue(v13, v11))
  {
    v14 = *a1;
    while (2)
    {
      for (i = atomic_load((v14 + 8)); i + v9 + 8 >= *(v14 + 16); i = atomic_load(v17))
      {
        os_unfair_lock_lock(&_slablock);
        v14 = *a1;
        v17 = *a1 + 1;
        v18 = atomic_load(v17);
        if (v18 + v9 + 8 >= *(v14 + 16))
        {
          i = slab_new_slab(a1, v9, 0xFFFFFFFF);
          os_unfair_lock_unlock(&_slablock);
LABEL_11:
          madvise(((i & 0xFFFFFFFFFFFC0000) + 0x40000), 0x40000uLL, 3);
          goto LABEL_12;
        }

        os_unfair_lock_unlock(&_slablock);
      }

      v15 = i;
      atomic_compare_exchange_strong((v14 + 8), &v15, i + v9);
      if (v15 != i)
      {
        continue;
      }

      break;
    }

    v19 = atomic_load((v14 + 8));
    if ((v19 ^ i) >= 0x40000)
    {
      goto LABEL_11;
    }

LABEL_12:
    memcpy(i, v11, v9);
    CFSetAddValue(v13, i);
  }
}

uint64_t _getContentRankedSubTokensCallback(const void *a1, uint64_t a2, __n128 a3, uint64_t a4, uint64_t a5)
{
  result = 0;
  v16[1] = *MEMORY[0x1E69E9840];
  if (a2 <= 1044)
  {
    v7 = *(a5 + 32);
    if ((v7 - 6) >= 0xFFFFFFFB)
    {
      v8 = a2 + 3;
      MEMORY[0x1EEE9AC00](a3);
      v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
      v12 = v11;
      v14 = v13;
      bzero(v10, v9);
      v12 *= 2;
      memcpy(v10, a1, v12);
      v15 = &v10[v12];
      *v15 = 1;
      *(v15 + 1) = v7;
      *(v15 + 2) = 5;
      return getContentTokensCallback(v10, v8, 1, v14);
    }
  }

  return result;
}

uint64_t decode_prefix(unsigned __int8 *a1, unsigned int a2, char *a3)
{
  v3 = tcmr[*a1] >> 4;
  v4 = utf8_byte_length(unsigned char)::utf8_len_table[v3];
  if ((v3 & 0xC) != 8)
  {
    v5 = a1;
    v6 = a3;
    v7 = v4;
    do
    {
      v8 = *v5++;
      *v6++ = tcmr[v8];
      --v7;
    }

    while (v7);
  }

  v9 = &a3[v4];
  if (v4 >= a2)
  {
    LODWORD(v32) = a3 + v4;
    return (v32 - a3);
  }

  v10 = &a1[v4];
  v11 = &a1[a2];
  v12 = tcmr[a1[v4]] >> 4;
  v13 = utf8_byte_length(unsigned char)::utf8_len_table[v12];
  if ((v12 & 0xC) != 8)
  {
    v14 = &a1[v4];
    v15 = &a3[v4];
    v16 = v13;
    do
    {
      v17 = *v14++;
      *v15++ = tcmr[v17];
      --v16;
    }

    while (v16);
  }

  v18 = &v10[v13];
  if (&v10[v13] >= v11)
  {
    goto LABEL_56;
  }

  v19 = *v9;
  if (v19 < 0)
  {
    v20 = utf8_byte_length(unsigned char)::utf8_len_table[*v9 >> 4];
    v21 = (utf8_to_code_point(unsigned char const*)::utf8_first_char_mask[v20] & *v9);
    if ((~(*v9 >> 4) & 0xC) != 0)
    {
      goto LABEL_17;
    }

    v22 = v20 <= 2 ? 2 : utf8_byte_length(unsigned char)::utf8_len_table[*v9 >> 4];
    v23 = v22 - 1;
    v24 = &a3[v4 + 1];
    do
    {
      v25 = *v24++;
      v21 = v25 & 0x3F | (v21 << 6);
      --v23;
    }

    while (v23);
    if (v21 < 0x10000)
    {
LABEL_17:
      if ((v21 - 12441) >= 4 && (v21 - 65438) >= 2)
      {
        v36 = a3;
        v37 = unicode_combinable(v21);
        a3 = v36;
        if (!v37)
        {
          goto LABEL_34;
        }
      }
    }

    else
    {
      v33 = v21 - 917760;
      v34 = v21 - 127995;
      if (v33 >= 0xF0 && v34 > 4)
      {
        goto LABEL_34;
      }
    }

    v9 += v13;
    v27 = tcmr[*v18] >> 4;
    v13 = utf8_byte_length(unsigned char)::utf8_len_table[v27];
    if ((v27 & 0xC) != 8)
    {
      v28 = v18;
      v29 = v9;
      v30 = v13;
      do
      {
        v31 = *v28++;
        *v29++ = tcmr[v31];
        --v30;
      }

      while (v30);
    }

    v18 += v13;
    if (v18 >= v11)
    {
      goto LABEL_56;
    }

    LOBYTE(v19) = *v9;
  }

LABEL_34:
  if (v19 != 45)
  {
    if (v19 == 239)
    {
      if (v9[1] != 188 || v9[2] != 189)
      {
        goto LABEL_58;
      }
    }

    else if (v19 != 226 || v9[1] != 128 || (v9[2] & 0xFE) != 0x90)
    {
      goto LABEL_58;
    }
  }

  v38 = *a3;
  if (v38 < 0)
  {
    v39 = v38 >> 4;
    v40 = utf8_byte_length(unsigned char)::utf8_len_table[v39];
    v41 = ~v39;
    v42 = (utf8_to_code_point(unsigned char const*)::utf8_first_char_mask[v40] & v38);
    if ((v41 & 0xC) != 0)
    {
      v38 = (utf8_to_code_point(unsigned char const*)::utf8_first_char_mask[v40] & v38);
    }

    else
    {
      if (v40 <= 2)
      {
        v40 = 2;
      }

      else
      {
        v40 = v40;
      }

      v43 = v40 - 1;
      v44 = a3 + 1;
      do
      {
        v45 = *v44++;
        v38 = v45 & 0x3F | (v42 << 6);
        v42 = v38;
        --v43;
      }

      while (v43);
    }
  }

  v46 = a3;
  if (((1 << u_charType(v38)) & 0xE3E) == 0)
  {
    LODWORD(a3) = v46;
    goto LABEL_58;
  }

  v9 += v13;
  v47 = tcmr[*v18] >> 4;
  v13 = utf8_byte_length(unsigned char)::utf8_len_table[v47];
  if ((v47 & 0xC) != 8)
  {
    v48 = v18;
    v49 = v9;
    v50 = v13;
    do
    {
      v51 = *v48++;
      *v49++ = tcmr[v51];
      --v50;
    }

    while (v50);
  }

  v18 += v13;
  LODWORD(a3) = v46;
  if (v18 >= v11)
  {
LABEL_56:
    LODWORD(v32) = v9 + v13;
    return (v32 - a3);
  }

LABEL_58:
  v52 = v13;
  v32 = &v9[v13];
  v53 = tcmr[*v18] >> 4;
  v54 = utf8_byte_length(unsigned char)::utf8_len_table[v53];
  if ((v53 & 0xC) != 8)
  {
    v55 = v32;
    v56 = v54;
    do
    {
      v57 = *v18++;
      *v55++ = tcmr[v57];
      --v56;
    }

    while (v56);
  }

  if (*v32 < 0)
  {
    v58 = *v32;
    v59 = v58 >> 4;
    v60 = utf8_byte_length(unsigned char)::utf8_len_table[v58 >> 4];
    v61 = v58 & utf8_to_code_point(unsigned char const*)::utf8_first_char_mask[v60];
    if ((~v59 & 0xC) != 0)
    {
      goto LABEL_69;
    }

    v60 = v60 <= 2 ? 2 : v60;
    v62 = v60 - 1;
    v63 = &v9[v52 + 1];
    do
    {
      v64 = *v63++;
      v61 = v64 & 0x3F | (v61 << 6);
      --v62;
    }

    while (v62);
    if (v61 < 0x10000)
    {
LABEL_69:
      if ((v61 - 12441) >= 4 && (v61 - 65438) >= 2)
      {
        v70 = a3;
        v71 = unicode_combinable(v61);
        LODWORD(a3) = v70;
        if (!v71)
        {
          return (v32 - a3);
        }
      }

LABEL_73:
      LODWORD(v32) = v32 + v54;
      return (v32 - a3);
    }

    v67 = v61 - 917760;
    v68 = v61 - 127995;
    if (v67 < 0xF0 || v68 <= 4)
    {
      goto LABEL_73;
    }
  }

  return (v32 - a3);
}

uint64_t _getContentRankedTokensCallback(unsigned __int16 *a1, uint64_t a2, __n128 a3, uint64_t a4, uint64_t a5)
{
  v30 = *MEMORY[0x1E69E9840];
  if (a2 < 1)
  {
LABEL_5:
    result = 0;
    if (a2 <= 1044)
    {
      v8 = *(a5 + 32);
      if ((v8 - 6) >= 0xFFFFFFFB)
      {
        v9 = a2 + 3;
        MEMORY[0x1EEE9AC00](a3);
        v11 = &buf[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
        v13 = v12;
        v15 = v14;
        bzero(v11, v10);
        v13 *= 2;
        memcpy(v11, a1, v13);
        v16 = &v11[v13];
        *v16 = 1;
        *(v16 + 1) = v8;
        *(v16 + 2) = 5;
        return getContentTokensCallback(v11, v9, 0, v15);
      }
    }
  }

  else
  {
    v6 = 0;
    while (a1[v6] > 5u)
    {
      if (a2 == ++v6)
      {
        goto LABEL_5;
      }
    }

    if (_getContentRankedTokensCallback_logCount <= 49)
    {
      ++_getContentRankedTokensCallback_logCount;
      v17 = *__error();
      v18 = _SILogForLogForCategory(10);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = a1[v6];
        v20 = __si_error_str_key;
        if (__si_error_str_key)
        {
          v20 = pthread_getspecific(__si_error_str_key);
        }

        v21 = "";
        *buf = 136315906;
        v23 = "_getContentRankedTokensCallback";
        v24 = 1024;
        if (v20)
        {
          v21 = v20;
        }

        v25 = 2045;
        v26 = 1024;
        v27 = v19;
        v28 = 2080;
        v29 = v21;
        _os_log_error_impl(&dword_1C278D000, v18, OS_LOG_TYPE_ERROR, "%s:%d: invalid content token (%d) for %s", buf, 0x22u);
      }

      *__error() = v17;
    }

    return 1;
  }

  return result;
}

void pushPrefixTermsForWildCard(void **a1, int64_t a2, unsigned __int8 *__src, unsigned int a4, const void *a5, int a6)
{
  v45 = *MEMORY[0x1E69E9840];
  v6 = utf8_byte_length(unsigned char)::utf8_len_table[*__src >> 4];
  if (v6 <= a2)
  {
    v11 = &__src[a2];
    v12 = a4;
    v13 = &__src[v6];
    if (v6 >= a2 || (*v13 & 0x80000000) == 0)
    {
      goto LABEL_16;
    }

    v14 = *v13;
    v15 = v14 >> 4;
    v16 = utf8_byte_length(unsigned char)::utf8_len_table[v14 >> 4];
    v17 = v14 & utf8_to_code_point(unsigned char const*)::utf8_first_char_mask[v16];
    if ((~v15 & 0xC) != 0)
    {
      goto LABEL_11;
    }

    v18 = v16 <= 2 ? 2 : v16;
    v19 = v18 - 1;
    v20 = &__src[v6 + 1];
    do
    {
      v21 = *v20++;
      v17 = v21 & 0x3F | (v17 << 6);
      --v19;
    }

    while (v19);
    if (v17 < 0x10000)
    {
LABEL_11:
      v22 = (v17 - 12441) >= 4 && (v17 - 65438) >= 2;
      if (v22 && !unicode_combinable(v17))
      {
        goto LABEL_16;
      }
    }

    else
    {
      v37 = v17 - 917760;
      v38 = v17 - 127995;
      if (v37 >= 0xF0 && v38 > 4)
      {
LABEL_16:
        v43 = 0u;
        v44 = 0u;
        memcpy(&v43, __src, v13 - __src);
        memcpy(&v43 + v13 - __src, a5, v12);
        pushPropertyTermForWildCard(a1, v13 - __src + v12, &v43, a6, v23);
        v24 = utf8_byte_length(unsigned char)::utf8_len_table[*v13 >> 4];
        v25 = &v13[v24];
        if (&v13[v24] > v11)
        {
          return;
        }

        if (&v13[v24] >= v11 || (*v25 & 0x80000000) == 0)
        {
          goto LABEL_31;
        }

        v26 = *v25;
        v27 = v26 >> 4;
        v28 = utf8_byte_length(unsigned char)::utf8_len_table[v26 >> 4];
        v29 = v26 & utf8_to_code_point(unsigned char const*)::utf8_first_char_mask[v28];
        if ((~v27 & 0xC) != 0)
        {
          goto LABEL_26;
        }

        v30 = v28 <= 2 ? 2 : v28;
        v31 = v30 - 1;
        v32 = &v13[v24 + 1];
        do
        {
          v33 = *v32++;
          v29 = v33 & 0x3F | (v29 << 6);
          --v31;
        }

        while (v31);
        if (v29 < 0x10000)
        {
LABEL_26:
          v34 = (v29 - 12441) >= 4 && (v29 - 65438) >= 2;
          if (v34 && !unicode_combinable(v29))
          {
            goto LABEL_31;
          }
        }

        else
        {
          v40 = v29 - 917760;
          v41 = v29 - 127995;
          if (v40 >= 0xF0 && v41 >= 5)
          {
            goto LABEL_31;
          }
        }

        v25 += v28;
LABEL_31:
        v35 = v25 - __src;
        v43 = 0u;
        v44 = 0u;
        memcpy(&v43, __src, v35);
        memcpy(&v43 + v35, a5, v12);
        pushPropertyTermForWildCard(a1, v35 + v12, &v43, a6, v36);
        return;
      }
    }

    v13 += v16;
    goto LABEL_16;
  }
}