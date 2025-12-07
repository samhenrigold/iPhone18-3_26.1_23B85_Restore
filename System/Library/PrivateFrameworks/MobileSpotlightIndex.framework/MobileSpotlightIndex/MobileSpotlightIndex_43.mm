CFTypeID __termUpdateSetProcessVector_block_invoke()
{
  termUpdateSetProcessVector_sArrayTypeID = CFArrayGetTypeID();
  result = CFDictionaryGetTypeID();
  termUpdateSetProcessVector_sDictionaryTypeID = result;
  return result;
}

uint64_t ___hashTableIterate_block_invoke(uint64_t result, uint64_t a2)
{
  v2 = *(result + 40);
  v3 = *(*(result + 32) + 8);
  v4 = *(v3 + 24);
  *(v3 + 24) = v4 + 1;
  *(v2 + 8 * v4) = a2 + 16;
  return result;
}

uint64_t termUpdateSetApplier(uint64_t a1, uint64_t (**a2)(void))
{
  if (*(a1 + 16) >= 0x415u)
  {
    v4 = __si_assert_copy_extra_332();
    v5 = v4;
    v6 = "";
    if (v4)
    {
      v6 = v4;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "TermUpdateSet.c", 2574, "tu->termLen <= (1024+20)", v6);
    free(v5);
    if (__valid_fs(-1))
    {
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    MEMORY[0xC00] = -559038737;
    abort();
  }

  v2 = *a2;

  return v2();
}

void SIUserCtxSetArgumentDictionary(uint64_t a1, CFTypeRef cf)
{
  if (a1)
  {
    v4 = *(a1 + 168);
    if (v4)
    {
      CFRelease(v4);
    }

    *(a1 + 168) = 0;
    if (cf)
    {
      CFRetain(cf);
    }

    *(a1 + 168) = cf;
  }
}

uint64_t SIUserCtxSetEntitlements(uint64_t result, int a2)
{
  if (result)
  {
    *(result + 176) = a2;
  }

  return result;
}

uint64_t SIUserCtxGetEntitlements(uint64_t result)
{
  if (result)
  {
    return *(result + 176);
  }

  return result;
}

uint64_t SISetDefaultSchemaData(void *a1, size_t a2)
{
  if (gDefaultSchema)
  {

    return munmap(a1, a2);
  }

  else
  {
    result = _MDPlistContainerCreateWithBytes();
    gDefaultSchema = result;
  }

  return result;
}

_DWORD *TokenDataCreate(const char *a1, int a2)
{
  v4 = strlen(a1);
  v5 = 0;
  if (v4)
  {
    v6 = v4;
    if (v4 <= 1022)
    {
      if (v4 >= 2 && a1[v4 - 1] == 42 && a1[v4 - 2] != 92)
      {
        a2 |= 1u;
        v6 = v4 - 1;
      }

      if (v6 <= utf8_byte_length_noerror(unsigned char)::utf8_len_table[*a1 >> 4])
      {
        return 0;
      }

      else
      {
        if (*MEMORY[0x1E69E9AC8] <= 0x2FuLL)
        {
          ++sTotal_4537;
        }

        v5 = malloc_type_zone_calloc(queryZone, 1uLL, 0x30uLL, 0x5BAF1CEAuLL);
        if (!v5)
        {
          _log_fault_for_malloc_failure();
        }

        *v5 = 0;
        v5[5] = v6;
        *(v5 + 1) = strndup(a1, v6);
        v5[4] = a2;
      }
    }
  }

  return v5;
}

uint64_t TokenDataAddRange(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  v2 = a2;
  os_unfair_lock_lock(a1);
  v4 = *(a1 + 32);
  v6 = *(a1 + 40);
  v5 = *(a1 + 44);
  v7 = (v6 - v5) >> 2;
  if (v7 < 1)
  {
    v10 = 0;
    v14 = 0;
LABEL_13:
    v16 = v10 < v7 && v14;
    v17 = v10 + v16;
    if (v5 <= 3)
    {
      v18 = 2 * v6;
      if (!v6)
      {
        v18 = 128;
      }

      do
      {
        v19 = v18;
        v18 *= 2;
      }

      while (v19 < 4);
      v20 = malloc_type_malloc(v19, 0x78811436uLL);
      v4 = v20;
      v21 = v6 - v5;
      if (v21)
      {
        memcpy(&v20[v19 - v21], (*(a1 + 32) + *(a1 + 40) - v21), v21);
        free(*(a1 + 32));
      }

      *(a1 + 32) = v4;
      *(a1 + 40) = v19;
      LODWORD(v5) = v19 - v21;
    }

    v22 = v5 - 4;
    *(a1 + 44) = v22;
    if (v17)
    {
      memmove(&v4[v22], &v4[v5], 4 * v17);
      v4 = *(a1 + 32);
      LODWORD(v22) = *(a1 + 44);
    }

    else
    {
      v17 = 0;
    }

    *&v4[4 * v17 + v22] = v2;
    if ((v2 >> 16) + v2 == *(a1 + 20))
    {
      ++*(a1 + 24);
    }

    v15 = 1;
  }

  else
  {
    v8 = 0;
    v9 = (v6 - v5) >> 2;
    while (1)
    {
      v10 = (v9 + v8) >> 1;
      v11 = &v4[4 * v10 + v5];
      v12 = *(v11 + 1);
      v13 = HIWORD(v2) + v2 - (*v11 + v12);
      if (!v13)
      {
        v13 = HIWORD(v2) - v12;
        if (HIWORD(v2) == v12)
        {
          break;
        }
      }

      if (v13 >= 0)
      {
        v8 = v10 + 1;
      }

      else
      {
        LODWORD(v9) = (v9 + v8) >> 1;
      }

      if (v8 >= v9)
      {
        v14 = v13 > 0;
        goto LABEL_13;
      }
    }

    v15 = 0;
  }

  os_unfair_lock_unlock(a1);
  return v15;
}

uint64_t TokenDataGetTokens(uint64_t result, uint64_t a2, __n128 a3)
{
  v12[8] = *MEMORY[0x1E69E9840];
  if (*(result + 24))
  {
    v4 = result;
    v5 = *(result + 44);
    v6 = *(result + 32) + v5;
    v7 = (*(result + 40) - v5) >> 2;
    MEMORY[0x1EEE9AC00](a3);
    v9 = &v12[-1] - ((v8 + 15) & 0x3FFFFFFF0);
    bzero(v9, v8);
    v10 = *(v4 + 20);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 0x40000000;
    v12[2] = __TokenDataGetTokens_block_invoke;
    v12[3] = &unk_1E81939F0;
    v12[4] = a2;
    v12[5] = v6;
    v12[6] = v9;
    v12[7] = v4;
    return TokenDataProcessStrings(v6, (v7 - 1), v10, v9, 0, v12);
  }

  return result;
}

uint64_t __TokenDataGetTokens_block_invoke(void *a1, unsigned __int16 a2)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v4 = v10 - ((4 * a2 + 15) & 0x7FFF0);
  bzero(v4, 4 * a2);
  if (((a2 - 1) & 0x8000) == 0)
  {
    v5 = a1[5];
    v6 = a1[6];
    v7 = 2 * (a2 - 1);
    v8 = v4;
    do
    {
      *v8++ = *(v5 + 4 * *(v6 + v7));
      v7 -= 2;
    }

    while (v7 != -2);
  }

  return (*(a1[4] + 16))();
}

uint64_t TokenDataProcessStrings(uint64_t result, int a2, int a3, uint64_t a4, int a5, uint64_t a6)
{
  if ((a2 & 0x80000000) == 0)
  {
    v10 = a2;
    v11 = result;
    v12 = (a5 + 1);
    do
    {
      while (1)
      {
        v13 = (v11 + 4 * v10);
        v14 = *v13;
        v15 = v13[1] + *v13;
        v16 = v10;
        if (v15 != a3)
        {
          break;
        }

        *(a4 + 2 * a5) = v10;
        if (v14)
        {
          v10 = (v10 - 1);
          result = TokenDataProcessStrings(v11, v10, v14, a4, v12, a6);
        }

        else
        {
          result = (*(a6 + 16))(a6, v12);
          --v10;
        }

        if (v16 <= 0)
        {
          return result;
        }
      }

      --v10;
    }

    while (v15 >= a3 && v16 > 0);
  }

  return result;
}

void TokenDataDispose(void **a1)
{
  if (a1)
  {
    free(a1[1]);
    free(a1[4]);

    free(a1);
  }
}

void _qsort_offset_triple(uint64_t a1, uint64_t a2, uint64_t a3)
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
        v8 = 128;
      }

      else
      {
        v8 = v7;
      }

      v9 = &v6[2 * v7 + 1];
      while (a3 - a2 > 16)
      {
        v10 = _partition_offset_triple(a1, a2, a3);
        if (v10 < a2)
        {
          v21 = __si_assert_copy_extra(0);
          v22 = v21;
          v23 = "";
          if (v21)
          {
            v23 = v21;
          }

          __message_assert("%s:%u: failed assertion '%s' %s ", "FileTree.c", 1311, "q>=left", v23);
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

        if (v8 == v7)
        {
          heapsort_b((a1 + 24 * a2), a3 - a2 + 1, 0x18uLL, &__block_literal_global_4557);
          v7 = v8;
          goto LABEL_21;
        }

        if (v10 - a2 <= a3 - v10)
        {
          *(v9 - 1) = a2;
          *v9 = v10 - 1;
          a2 = v10;
        }

        else
        {
          *(v9 - 1) = v10;
          *v9 = a3;
          a3 = v10 - 1;
        }

        ++v7;
        v9 += 2;
        if (a3 <= a2)
        {
          goto LABEL_21;
        }
      }

      v11 = a1 + 32 + 24 * a2;
      v12 = a2;
      do
      {
        v13 = v12++;
        v14 = (a1 + 24 * v13);
        v15 = v14[3];
        v16 = *v14;
        v25 = *(v14 + 1);
        v26 = *(v14 + 2);
        v17 = v12;
        if (v16 > v15)
        {
          v18 = v11;
          do
          {
            v17 = v13;
            *(v18 - 1) = v16;
            *v18 = v25;
            if (v13 <= a2)
            {
              break;
            }

            v16 = *(v18 - 7);
            v25 = *(v18 - 3);
            --v13;
            v18 = (v18 - 24);
          }

          while (v16 > v15);
        }

        v19 = a1 + 24 * v17;
        *v19 = v15;
        *(v19 + 8) = v26;
        v11 += 24;
      }

      while (v12 != a3);
    }

LABEL_21:
    --v7;
    v20 = &v6[2 * v7];
    a2 = *v20;
    a3 = v20[1];
  }

  while (v7);

  free(v6);
}

uint64_t _partition_offset_triple(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t ___qsort_offset_triple_block_invoke(uint64_t a1, void *a2, void *a3)
{
  if (*a2 == *a3)
  {
    v3 = 0;
  }

  else
  {
    v3 = -1;
  }

  if (*a2 > *a3)
  {
    return 1;
  }

  else
  {
    return v3;
  }
}

void _qsort_big_offset_triple(uint64_t *a1)
{
  v1 = a1[1];
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v38 = a1[6];
  v39 = *a1;
  v6 = *(a1 + 14);
  v37 = *(a1 + 15);
  OSAtomicEnqueue(&qsort_cached_allocations_4560, a1, 0);
  if (v2 > v1)
  {
    for (i = v4 + 1; ; ++i)
    {
      v8 = v2 - v1;
      if (v2 - v1 <= v5 || i > 9)
      {
        break;
      }

      if (v6 <= 1)
      {
        v6 = 1;
      }

      v10 = getSize_memSize_4562;
      if (!getSize_memSize_4562)
      {
        v43 = 0u;
        v44 = 0u;
        *host_info_out = 0u;
        v11 = MEMORY[0x1C6920B70]();
        host_info_outCnt = 12;
        v12 = host_info(v11, 1, host_info_out, &host_info_outCnt);
        if (v12)
        {
          mach_error("flushsize", v12);
          exit(1);
        }

        v10 = *(&v44 + 1);
        getSize_memSize_4562 = *(&v44 + 1);
      }

      v13 = 3 * v10;
      v14 = (v13 * 0xCCCCCCCCCCCCCCCDLL) >> 64;
      v15 = v3;
      if (24 * v8 > v13 / 5)
      {
        v15 = dispatch_group_create();
      }

      if (v8 <= v38 || 24 * v8 >= v14 >> 2)
      {
        v19 = _partition_offset_triple(v39, v1, v2);
      }

      else
      {
        v16 = qos_class_self();
        global_queue = dispatch_get_global_queue(v16, 2uLL);
        v19 = _big_partition_offset_triple(v39, v1, v2, global_queue, v6, v18);
      }

      v20 = v19;
      v21 = v19 - v1;
      if (v19 < v1)
      {
        v33 = __si_assert_copy_extra(0);
        v34 = v33;
        v35 = "";
        if (v33)
        {
          v35 = v33;
        }

        __message_assert("%s:%u: failed assertion '%s' %s ", "FileTree.c", 1311, "q>=left", v35);
        free(v34);
        if (__valid_fs(-1))
        {
          v36 = 2989;
        }

        else
        {
          v36 = 3072;
        }

        *v36 = -559038737;
        abort();
      }

      v22 = OSAtomicDequeue(&qsort_cached_allocations_4560, 0);
      if (!v22)
      {
        v22 = malloc_type_malloc(0x40uLL, 0x102004053A8A26AuLL);
      }

      *(v22 + 4) = i;
      *(v22 + 5) = v5;
      *(v22 + 6) = v38;
      v23 = v2 - v20;
      if (v21 <= v2 - v20)
      {
        v24 = v20 - 1;
      }

      else
      {
        v23 = v20 - 1 - v1;
        v24 = v2;
      }

      if (v21 > v2 - v20)
      {
        v25 = v20;
      }

      else
      {
        v25 = v1;
      }

      if (v21 > v2 - v20)
      {
        v2 = v20 - 1;
      }

      else
      {
        v1 = v20;
      }

      *v22 = v39;
      *(v22 + 1) = v25;
      v26 = (((v23 + 1) / (v24 - v25 + 1)) * v6);
      if (v26 <= 1)
      {
        v27 = 1;
      }

      else
      {
        v27 = v26;
      }

      if (v6 >= v26)
      {
        v28 = v27;
      }

      else
      {
        v28 = 0;
      }

      v22[14] = v6 - v28;
      v22[15] = v37;
      *(v22 + 2) = v24;
      *(v22 + 3) = v15;
      if (v15 == v3)
      {
        if (v6 >= v26)
        {
          v6 = v27;
        }

        v31 = qos_class_self();
        v32 = dispatch_get_global_queue(v31, 2uLL);
        dispatch_group_async_f(v15, v32, v22, _qsort_big_offset_triple);
      }

      else
      {
        v22[14] = v6;
        _qsort_big_offset_triple(v22);
        dispatch_group_wait(v15, 0xFFFFFFFFFFFFFFFFLL);
        dispatch_release(v15);
        v29 = qos_class_self();
        v30 = dispatch_get_global_queue(v29, 2uLL);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 0x40000000;
        block[2] = ___qsort_big_offset_triple_block_invoke;
        block[3] = &__block_descriptor_tmp_62;
        block[4] = v22;
        dispatch_async(v30, block);
      }

      if (v2 <= v1)
      {
        return;
      }
    }

    _qsort_offset_triple(v39, v1, v2);
  }
}

uint64_t _big_partition_offset_triple(uint64_t a1, uint64_t a2, uint64_t a3, NSObject *a4, signed int a5, __n128 a6)
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

  return parallel_partition_offset_triple(v10, v9, *v29, a4, a5, a6) + a2;
}

void ___qsort_big_offset_triple_block_invoke(uint64_t a1)
{
  madvise((**(a1 + 32) + 24 * *(*(a1 + 32) + 8)), 24 * (*(*(a1 + 32) + 16) - *(*(a1 + 32) + 8)), 4);
  v2 = *(a1 + 32);

  OSAtomicEnqueue(&qsort_cached_allocations_4560, v2, 0);
}

uint64_t parallel_partition_offset_triple(void *a1, uint64_t a2, uint64_t a3, NSObject *a4, signed int a5, __n128 a6)
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
  context[4] = 0;
  context[5] = 0;
  v15 = a2 - v14;
  context[7] = a3;
  context[8] = v13;
  if (v6 >= 1)
  {
    memset(v13, 255, v11);
  }

  v16 = v14 + 0x2000;
  if (v15 > v14 + 0x2000)
  {
    v16 = a2 - ((a2 / 0x4000) << 13);
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

  dispatch_apply_f(v6, a4, context, partition_phase_offset_triple);
  return sequential_fixup_offset_triple(context, a2, v6);
}

uint64_t sequential_fixup_offset_triple(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v6 = a3;
  qsort(*(a1 + 64), a3, 8uLL, index_comp_4567);
  v53 = 0;
  v54 = 0;
  v7 = *(a1 + 64);
  v8 = (a3 - 1);
  v9 = 0;
  if (a3 < 1)
  {
    goto LABEL_91;
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
  }

  else
  {
LABEL_91:
    do
    {
      if (*(v7 + 8 * v8) != -1)
      {
        break;
      }

      --v8;
    }

    while (v8);
  }

  while (v9 < v8)
  {
    v10 = neutralize_offset_triple(*(a1 + 48) + 24 * *(v7 + 8 * v9), *(a1 + 48) + 24 * *(v7 + 8 * v8), *(a1 + 56), &v53, &v54);
    v7 = *(a1 + 64);
    if ((v10 & 1) == 0)
    {
      v11 = *(v7 + 8 * v9);
      if ((v11 & 0x8000000000000000) == 0 && v11 < *(a1 + 32))
      {
        *(v7 + 8 * v9) = -1;
        *(a1 + 32) += 0x2000;
      }

      ++v9;
      v53 = 0;
      if ((v10 - 1) > 1)
      {
        continue;
      }
    }

    v12 = *(v7 + 8 * v8);
    v13 = v12 >= a2 || v12 < a2 - *(a1 + 40);
    if (!v13)
    {
      *(v7 + 8 * v8) = -1;
      *(a1 + 40) += 0x2000;
    }

    --v8;
    v54 = 0;
  }

  v15 = *(a1 + 32);
  v14 = *(a1 + 40);
  v16 = malloc_type_malloc(0x30000uLL, 0x1000040504FFAC1uLL);
  if (a3 < 1)
  {
    v34 = *a1;
    v33 = *(a1 + 16) - 1;
  }

  else
  {
    v17 = 0;
    v18 = ~v14 + a2;
    v19 = a3;
    v20 = *(a1 + 64);
    v21 = 8 * a3;
    do
    {
      v22 = v20[v17];
      if (v22 != -1 && v18 <= v22)
      {
        break;
      }

      if (v22 != -1)
      {
        if (v15 <= v22)
        {
          break;
        }

        v24 = *(a1 + 32);
        if (v24 > v22)
        {
          v25 = 0;
          do
          {
            if (v20[v25 / 8] == v24)
            {
              v24 += 0x2000;
              *(a1 + 32) = v24;
            }

            v25 += 8;
          }

          while (v21 != v25);
          if (v24 >= *a1)
          {
            break;
          }

          memcpy(v16, (*(a1 + 48) + 24 * v20[v17]), 0x30000uLL);
          memcpy((*(a1 + 48) + 24 * *(*(a1 + 64) + 8 * v17)), (*(a1 + 48) + 24 * *(a1 + 32)), 0x30000uLL);
          memcpy((*(a1 + 48) + 24 * *(a1 + 32)), v16, 0x30000uLL);
          v26 = *(a1 + 32);
          v20 = *(a1 + 64);
          v20[v17] = v26;
          *(a1 + 32) = v26 + 0x2000;
        }
      }

      ++v17;
    }

    while (v17 != v19);
    v27 = v19;
    do
    {
      v28 = v27 - 1;
      v29 = v20[v27 - 1];
      if (v15 > v29)
      {
        break;
      }

      if (v29 != -1)
      {
        if (v18 > v29)
        {
          break;
        }

        v30 = *(a1 + 40) + 0x2000;
        *(a1 + 40) = v30;
        v31 = v19 - 1;
        do
        {
          if (v20[v31] == a2 - v30)
          {
            v30 += 0x2000;
            *(a1 + 40) = v30;
          }

          v32 = v31-- + 1;
        }

        while (v32 > 1);
        if ((a2 - v30) < *(a1 + 16))
        {
          break;
        }

        memcpy(v16, (*(a1 + 48) + 24 * v20[v28]), 0x30000uLL);
        memcpy((*(a1 + 48) + 24 * *(*(a1 + 64) + 8 * v28)), (*(a1 + 48) + 24 * (a2 - *(a1 + 40))), 0x30000uLL);
        memcpy((*(a1 + 48) + 24 * (a2 - *(a1 + 40))), v16, 0x30000uLL);
        v20 = *(a1 + 64);
        v20[v28] = a2 - *(a1 + 40);
      }

      v13 = v27-- <= 1;
    }

    while (!v13);
    v33 = *(a1 + 16) - 1;
    v34 = *a1;
    do
    {
      v36 = *v20++;
      v35 = v36;
      if (v36 != -1)
      {
        if (v35 < v34)
        {
          v34 = v35;
        }

        v37 = v35 + 0x2000;
        v38 = v35 + 0x1FFF;
        if (v37 > v33)
        {
          v33 = v38;
        }

        if (v33 >= a2)
        {
          v49 = __si_assert_copy_extra(0);
          v50 = v49;
          v51 = "";
          if (v49)
          {
            v51 = v49;
          }

          __message_assert("%s:%u: failed assertion '%s' %s ", "FileTree.c", 1311, "right < count", v51);
          free(v50);
          if (__valid_fs(-1))
          {
            v52 = 2989;
          }

          else
          {
            v52 = 3072;
          }

          *v52 = -559038737;
          abort();
        }
      }

      --v19;
    }

    while (v19);
  }

  free(v16);
  if (v34 >= v33)
  {
    v39 = v34;
  }

  else
  {
    v39 = v34;
    do
    {
      v41 = *(a1 + 48);
      v40 = *(a1 + 56);
      v42 = (v41 + 24 * v34);
      while (*v42 < v40)
      {
        ++v39;
        v42 += 3;
        if (v39 >= v33)
        {
          if (v33 <= v34 + 1)
          {
            v39 = v34 + 1;
          }

          else
          {
            v39 = v33;
          }

          goto LABEL_80;
        }
      }

      if (v39 < v33)
      {
        v43 = (v41 + 24 * v33);
        while (*v43 > v40)
        {
          --v33;
          v43 -= 3;
          if (v39 >= v33)
          {
            goto LABEL_80;
          }
        }

        v44 = v43[2];
        v45 = *v43;
        v46 = v42[2];
        *v43 = *v42;
        v43[2] = v46;
        v47 = *(a1 + 48) + 24 * v39;
        *v47 = v45;
        *(v47 + 16) = v44;
        ++v39;
        --v33;
      }

      v34 = v39;
    }

    while (v39 < v33);
  }

LABEL_80:
  if (*(*(a1 + 48) + 24 * v39) >= *(a1 + 56))
  {
    return v39;
  }

  else
  {
    return v39 + 1;
  }
}

uint64_t neutralize_offset_triple(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v5 = *a4;
  v6 = *a5;
  while (1)
  {
    if (v5 < 0x2000)
    {
      v7 = (a1 + 24 * v5);
      while (1)
      {
        v8 = *v7;
        v7 += 3;
        if (v8 > a3)
        {
          break;
        }

        if (++v5 == 0x2000)
        {
          v9 = 0x2000;
          goto LABEL_8;
        }
      }
    }

    v9 = v5;
LABEL_8:
    if (v6 < 0x2000)
    {
      v10 = (a2 + 24 * v6);
      while (1)
      {
        v11 = *v10;
        v10 += 3;
        if (v11 < a3)
        {
          break;
        }

        if (++v6 == 0x2000)
        {
          v5 = v9;
          goto LABEL_17;
        }
      }
    }

    v12 = v6;
    if (v9 == 0x2000 || v6 == 0x2000)
    {
      break;
    }

    v13 = (a2 + 24 * v6);
    v14 = *(v13 + 2);
    v15 = *v13;
    v16 = (a1 + 24 * v9);
    v17 = *(v16 + 2);
    *v13 = *v16;
    *(v13 + 2) = v17;
    *v16 = v15;
    *(v16 + 2) = v14;
    v5 = v9 + 1;
    v6 = v12 + 1;
    if (v9 > 8190 || v12 >= 0x1FFF)
    {
      goto LABEL_17;
    }
  }

  v5 = v9;
LABEL_17:
  *a4 = v5;
  *a5 = v6;
  if (v6 == 0x2000 && v5 == 0x2000)
  {
    return 2;
  }

  else
  {
    return v5 != 0x2000;
  }
}

uint64_t index_comp_4567(void *a1, void *a2)
{
  if (*a1 >= *a2)
  {
    v2 = 0;
  }

  else
  {
    v2 = -1;
  }

  if (*a1 > *a2)
  {
    return 1;
  }

  else
  {
    return v2;
  }
}

int64_t partition_phase_offset_triple(OSAtomic_int64_aligned64_t *a1, uint64_t a2)
{
  v4 = a1[6];
  Left_Block_offset_triple = Get_Left_Block_offset_triple(a1);
  Right_Block_offset_triple = Get_Right_Block_offset_triple(a1);
  v14 = 0;
  v15 = 0;
  if (Right_Block_offset_triple == -1 || Left_Block_offset_triple == -1)
  {
    v12 = 0;
    v11 = 0;
  }

  else
  {
    v7 = 0;
    v8 = 0;
    do
    {
      v9 = neutralize_offset_triple(v4 + 24 * Left_Block_offset_triple, v4 + 24 * Right_Block_offset_triple, a1[7], &v15, &v14);
      if ((v9 & 1) == 0)
      {
        v10 = v9;
        Left_Block_offset_triple = Get_Left_Block_offset_triple(a1);
        v15 = 0;
        ++v8;
        if ((v10 - 1) > 1)
        {
          continue;
        }
      }

      Right_Block_offset_triple = Get_Right_Block_offset_triple(a1);
      v14 = 0;
      ++v7;
    }

    while (Right_Block_offset_triple != -1 && Left_Block_offset_triple != -1);
    v11 = v8 << 13;
    v12 = v7 << 13;
  }

  if (Left_Block_offset_triple == -1)
  {
    Left_Block_offset_triple = Right_Block_offset_triple;
  }

  *(a1[8] + 8 * a2) = Left_Block_offset_triple;
  OSAtomicAdd64(v11, a1 + 4);

  return OSAtomicAdd64(v12, a1 + 5);
}

int64_t Get_Left_Block_offset_triple(OSAtomic_int64_aligned64_t *__theValue)
{
  if (*__theValue >= __theValue[1])
  {
    return -1;
  }

  v2 = OSAtomicAdd64(0x2000, __theValue);
  if (v2 <= __theValue[1])
  {
    return v2 - 0x2000;
  }

  OSAtomicAdd64(-8192, __theValue);
  return -1;
}

int64_t Get_Right_Block_offset_triple(uint64_t a1)
{
  v1 = (a1 + 16);
  if (*(a1 + 16) > *(a1 + 24))
  {
    result = OSAtomicAdd64(-8192, v1);
    if (result >= *(a1 + 24))
    {
      return result;
    }

    OSAtomicAdd64(0x2000, v1);
  }

  return -1;
}

void pqinit_offset_ptr(uint64_t a1)
{
  *(a1 + 8) = xmmword_1C2BFA370;
  v2 = malloc_type_zone_malloc(queryZone, 0x220uLL, 0xA4971684uLL);
  if (!v2)
  {
    _log_fault_for_malloc_failure();
  }

  *a1 = v2;
  *v2 = 0;
  v2[1] = 0;
}

void _directoryStoreGetFileListOffsets(uint64_t *a1, unsigned __int16 *a2, uint64_t a3, int a4, unint64_t *a5, _BYTE *a6, int a7, unint64_t a8, __n128 q0_0, __n128 a10, uint64_t a9)
{
  v124 = 0;
  DirectoryWithPath = directoryStoreReaderGetDirectoryWithPath(a1, a2, a4 - 1, a5, q0_0, a10);
  if (!DirectoryWithPath)
  {
    return;
  }

  v18 = *(DirectoryWithPath + 1);
  if ((v18 & 0x8000000000000000) == 0)
  {
    if (!v18)
    {
      return;
    }

    if (a7)
    {
      ptr = 0;
      v122 = 0;
      v123 = 0;
      v19 = *DirectoryWithPath;
      pqinit_offset_ptr(&ptr);
      v21 = v123;
      v22 = ptr;
      if ((v123 + 2) >= v122)
      {
        v23 = 4;
        if (v122 >= 4)
        {
          v23 = 2 * v122;
        }

        v122 = v23;
        v24 = 16 * v23;
        if (ptr)
        {
          v25 = malloc_type_zone_realloc(queryZone, ptr, v24 + 32, 0xA1A7ADA0uLL);
        }

        else
        {
          v25 = malloc_type_zone_malloc(queryZone, v24 + 32, 0x566E289CuLL);
        }

        v22 = v25;
        if (!v25)
        {
          _log_fault_for_malloc_failure();
        }

        ptr = v22;
        *v22 = 0;
        v22[1] = 0;
      }

      v38 = v21 + 1;
      v123 = v21 + 1;
      v39 = &v22[2 * v21];
      *v39 = v18;
      v39[1] = v19;
      if (v21 >= 2)
      {
        do
        {
          v40 = &v22[2 * v21];
          v41 = &v22[2 * (v21 >> 1)];
          if ((v40->n128_u64[0] & 0x3FFFFFFFFFFFFFFFLL) > (v41->n128_u64[0] & 0x3FFFFFFFFFFFFFFFLL))
          {
            break;
          }

          v125 = *v40;
          *v40 = *v41;
          *v41 = v125;
          v42 = v21 > 3;
          v21 >>= 1;
        }

        while (v42);
        v38 = v123;
      }

      v43 = xmmword_1C2BFA360;
      while (1)
      {
        v44 = v38 - 1;
        if (v38 == 1)
        {
          v45 = 0;
          v46 = 0;
          v48 = ptr;
          v47 = v122;
          v44 = 1;
          goto LABEL_65;
        }

        v48 = ptr;
        v47 = v122;
        v45 = *(ptr + 2);
        v46 = *(ptr + 3);
        v43 = *(ptr + v38 - 1);
        v49 = v122 >> 1;
        v50 = *(ptr + 2 * v38 - 2);
        *(ptr + 1) = v43;
        v123 = v38 - 1;
        v51 = v50 & 0x3FFFFFFFFFFFFFFFLL;
        v52 = 1;
        v53 = 2;
        v54 = 3;
        while (1)
        {
          v55 = *&v48[2 * v53];
          if (v54 >= v38)
          {
            v20 = xmmword_1C2BFA360;
            if (v53 >= v38)
            {
              goto LABEL_64;
            }
          }

          else
          {
            v20 = *&v48[2 * v54];
          }

          v56 = v55.i64[0] & 0x3FFFFFFFFFFFFFFFLL;
          v57 = v20.n128_u64[0] & 0x3FFFFFFFFFFFFFFFLL;
          if ((v55.i64[0] & 0x3FFFFFFFFFFFFFFFuLL) < v51)
          {
            _CF = v57 >= v56;
            v59 = v57 < v56;
            if (_CF)
            {
              v54 = v53;
            }

            v60 = vdup_n_s32(v59);
            v61.i64[0] = v60.u32[0];
            v61.i64[1] = v60.u32[1];
            v20 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v61, 0x3FuLL)), v20, v55);
            goto LABEL_57;
          }

          if (v57 >= v51)
          {
            break;
          }

LABEL_57:
          _X13 = &v48[4 * v54];
          __asm { PRFM            #1, [X13] }

          if (v54 != v52)
          {
            v53 = 2 * v54;
            *&v48[2 * v54] = v43;
            *&v48[2 * v52] = v20;
            v52 = v54;
            v42 = v54 < v49;
            v54 = (2 * v54) | 1;
            if (v42)
            {
              continue;
            }
          }

          goto LABEL_64;
        }

        _X8 = &v48[4 * v52];
        __asm { PRFM            #1, [X8] }

LABEL_64:
        if (v45 >= 0x4000000000000000)
        {
          Page = _directoryStoreReaderGetPage(a1, v45, &v124, v43, v20);
          Size = directoryStorePageGetSize(Page);
          if (Size)
          {
            v85 = Size;
            v86 = 0;
            v87 = 0;
            v88 = Page + 4;
            do
            {
              v89 = &v88[8 * v86];
              v90 = *v89;
              if (*v89 >= 2 && (!a3 || (Child = negativeFindChild(a3 + 440, *v89, &v125)) == 0 || *(Child + 8) != v46))
              {
                v92 = v89[1];
                if (v92 < 0)
                {
                  v95 = v92 & 0x7FFFFFFFFFFFFFFFLL;
                  if ((v92 & 0x7FFFFFFFFFFFFFFFuLL) < a8)
                  {
                    if (!a9 || HIDWORD(v95))
                    {
LABEL_134:
                      v110 = __si_assert_copy_extra(0);
                      v111 = v110;
                      v112 = "";
                      if (v110)
                      {
                        v112 = v110;
                      }

                      __message_assert("%s:%u: failed assertion '%s' %s invalid posting 0x%llx for 0x%llx", "FileTree.c", 1723, "postingOffset", v112, v92, a8);
                      goto LABEL_137;
                    }

                    v95 |= a9;
                  }

                  if (!v95)
                  {
                    goto LABEL_134;
                  }

                  oqpush_4581(a6, v95, v84);
                }

                else if (v92)
                {
                  if ((v44 + 2) >= v47)
                  {
                    if (v47 >= 4)
                    {
                      v47 *= 2;
                    }

                    else
                    {
                      v47 = 4;
                    }

                    v93 = 16 * v47;
                    if (v48)
                    {
                      v94 = malloc_type_zone_realloc(queryZone, v48, v93 + 32, 0xA1A7ADA0uLL);
                    }

                    else
                    {
                      v94 = malloc_type_zone_malloc(queryZone, v93 + 32, 0x566E289CuLL);
                    }

                    v48 = v94;
                    if (!v94)
                    {
                      _log_fault_for_malloc_failure();
                    }

                    *v48 = 0;
                    v48[1] = 0;
                  }

                  v96 = v44 + 1;
                  v97 = &v48[2 * v44];
                  *v97 = v92;
                  v97[1] = v90;
                  if (v44 >= 2)
                  {
                    do
                    {
                      v98 = &v48[2 * v44];
                      v99 = &v48[2 * (v44 >> 1)];
                      if ((v98->n128_u64[0] & 0x3FFFFFFFFFFFFFFFLL) > (v99->n128_u64[0] & 0x3FFFFFFFFFFFFFFFLL))
                      {
                        break;
                      }

                      v125 = *v98;
                      *v98 = *v99;
                      v43 = v125;
                      *v99 = v125;
                      v42 = v44 > 3;
                      v44 >>= 1;
                    }

                    while (v42);
                  }

                  v44 = v96;
                }
              }

              v86 = ++v87;
            }

            while (v85 > v87);
          }
        }

        else
        {
LABEL_65:
          v69 = _directoryStoreReaderGetPage(a1, v45, &v124, v43, v20);
          v70 = directoryTreePageGetSize(*v69, *(v69 + 2));
          if (v70)
          {
            v71 = v70;
            v72 = 0;
            v73 = 0;
            v74 = v69 + 4;
            while (1)
            {
              v75 = *&v74[4 * v72];
              if (v75 < 0)
              {
                break;
              }

              if (v75)
              {
                if ((v44 + 2) >= v47)
                {
                  if (v47 >= 4)
                  {
                    v47 *= 2;
                  }

                  else
                  {
                    v47 = 4;
                  }

                  v76 = 16 * v47;
                  if (v48)
                  {
                    v77 = malloc_type_zone_realloc(queryZone, v48, v76 + 32, 0xA1A7ADA0uLL);
                  }

                  else
                  {
                    v77 = malloc_type_zone_malloc(queryZone, v76 + 32, 0x566E289CuLL);
                  }

                  v48 = v77;
                  if (!v77)
                  {
                    _log_fault_for_malloc_failure();
                  }

                  *v48 = 0;
                  v48[1] = 0;
                }

                v78 = v44 + 1;
                v79 = &v48[2 * v44];
                *v79 = v75;
                v79[1] = v46;
                if (v44 >= 2)
                {
                  do
                  {
                    v80 = &v48[2 * v44];
                    v81 = &v48[2 * (v44 >> 1)];
                    if ((v80->n128_u64[0] & 0x3FFFFFFFFFFFFFFFLL) > (v81->n128_u64[0] & 0x3FFFFFFFFFFFFFFFLL))
                    {
                      break;
                    }

                    v125 = *v80;
                    *v80 = *v81;
                    v43 = v125;
                    *v81 = v125;
                    v42 = v44 > 3;
                    v44 >>= 1;
                  }

                  while (v42);
                }

                v44 = v78;
              }

              v72 = ++v73;
              if (v71 <= v73)
              {
                goto LABEL_114;
              }
            }

            v100 = __si_assert_copy_extra(0);
            v101 = v100;
            v102 = "";
            if (v100)
            {
              v102 = v100;
            }

            __message_assert("%s:%u: failed assertion '%s' %s ", "FileTree.c", 1742, "!(offset & (1ull << 63))", v102);
LABEL_120:
            v32 = v101;
LABEL_121:
            free(v32);
            if (__valid_fs(-1))
            {
              v103 = 2989;
            }

            else
            {
              v103 = 3072;
            }

            *v103 = -559038737;
            abort();
          }
        }

LABEL_114:
        v122 = v47;
        v123 = v44;
        v38 = v44;
        ptr = v48;
        if (v44 == 1)
        {
          free(v48);
          return;
        }
      }
    }

    if (!(v18 >> 62))
    {
      ItemOffset = directoryStoreReaderTreeFindItemOffset(a1, v18, *a5, 0, v16, v17);
      if (!ItemOffset)
      {
        return;
      }

      v28 = *(ItemOffset + 1);
      if ((v28 & 0x8000000000000000) == 0)
      {
        v104 = __si_assert_copy_extra(0);
        v101 = v104;
        v105 = "";
        if (v104)
        {
          v105 = v104;
        }

        __message_assert("%s:%u: failed assertion '%s' %s ", "FileTree.c", 1772, "(offset & (1ull << 63))", v105);
        goto LABEL_120;
      }

      v26 = v28 & 0x7FFFFFFFFFFFFFFFLL;
      if ((v28 & 0x7FFFFFFFFFFFFFFFuLL) < a8)
      {
        if (!a9 || HIDWORD(v26))
        {
          goto LABEL_26;
        }

        v26 |= a9;
      }

      if (!v26)
      {
LABEL_26:
        v29 = __si_assert_copy_extra(0);
        v30 = v29;
        v31 = "";
        if (v29)
        {
          v31 = v29;
        }

        __message_assert("%s:%u: failed assertion '%s' %s invalid posting 0x%llx for 0x%llx", "FileTree.c", 1774, "postingOffset", v31, v28, a8);
        v32 = v30;
        goto LABEL_121;
      }

      goto LABEL_15;
    }

    v33 = _directoryStoreReaderGetPage(a1, v18, &v124, v16, v17);
    if (!v33)
    {
      return;
    }

    LODWORD(ptr) = 0;
    v34 = directoryStorePageFindItemOffset(*(*a1 + 216), v33, *a5, &ptr, 0);
    if (!v34)
    {
      return;
    }

    v36 = v34[1];
    if ((v36 & 0x8000000000000000) == 0)
    {
      v106 = __si_assert_copy_extra(0);
      v107 = v106;
      v108 = "";
      if (v106)
      {
        v108 = v106;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "FileTree.c", 1761, "(offset & (1ull << 63))", v108);
      free(v107);
      if (__valid_fs(-1))
      {
        v109 = 2989;
      }

      else
      {
        v109 = 3072;
      }

      *v109 = -559038737;
      abort();
    }

    v37 = v36 & 0x7FFFFFFFFFFFFFFFLL;
    if ((v36 & 0x7FFFFFFFFFFFFFFFuLL) < a8)
    {
      if (!a9 || HIDWORD(v37))
      {
LABEL_144:
        v116 = __si_assert_copy_extra(0);
        v111 = v116;
        v117 = "";
        if (v116)
        {
          v117 = v116;
        }

        __message_assert("%s:%u: failed assertion '%s' %s invalid posting 0x%llx for 0x%llx", "FileTree.c", 1763, "postingOffset", v117, v36, a8);
        goto LABEL_137;
      }

      v37 |= a9;
    }

    if (v37)
    {
      oqpush_4581(a6, v37, v35);
      return;
    }

    goto LABEL_144;
  }

  v26 = v18 & 0x7FFFFFFFFFFFFFFFLL;
  if ((v18 & 0x7FFFFFFFFFFFFFFFLL) < a8)
  {
    if (!a9 || HIDWORD(v26))
    {
      goto LABEL_141;
    }

    v26 |= a9;
  }

  if (!v26)
  {
LABEL_141:
    v114 = __si_assert_copy_extra(0);
    v111 = v114;
    v115 = "";
    if (v114)
    {
      v115 = v114;
    }

    __message_assert("%s:%u: failed assertion '%s' %s invalid posting 0x%llx for 0x%llx", "FileTree.c", 1700, "postingOffset", v115, v18, a8);
LABEL_137:
    free(v111);
    if (__valid_fs(-1))
    {
      v113 = 2989;
    }

    else
    {
      v113 = 3072;
    }

    *v113 = -559038737;
    abort();
  }

LABEL_15:

  oqpush_4581(a6, v26, v15);
}

unsigned __int16 *directoryStoreReaderGetDirectoryWithPath(uint64_t *a1, unsigned __int16 *Page, int a3, uint64_t a4, __n128 a5, __n128 a6)
{
  if (a3 != -1)
  {
    v17 = v6;
    v18 = v7;
    v16 = 0;
    v8 = *(Page + 1);
    if (v8 < 1)
    {
      return 0;
    }

    else
    {
      Page = _directoryStoreReaderGetPage(a1, *(Page + 1), &v16, a5, a6);
      if (Page)
      {
        if (v16)
        {
          ItemOffset = directoryStorePageFindItemOffset(*(*a1 + 216), Page, *(a4 + 8 * a3), 0, 0);
        }

        else
        {
          ItemOffset = directoryStoreReaderTreeFindItemOffset(a1, v8, *(a4 + 8 * a3), 0, v12, v13);
        }

        Page = ItemOffset;
        if (ItemOffset)
        {
          return directoryStoreReaderGetDirectoryWithPath(a1, ItemOffset, a3 - 1, a4);
        }
      }
    }
  }

  return Page;
}

void oqpush_4581(_BYTE *result, uint64_t a2, size_t size)
{
  if (*result == 1)
  {
    v17 = __si_assert_copy_extra(0);
    v18 = v17;
    v19 = "";
    if (v17)
    {
      v19 = v17;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "OQueue.h", 332, "!oqueue->has_meta", v19);
    free(v18);
    if (__valid_fs(-1))
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

  if (*(result + 14))
  {
    if (*(result + 8) < (a2 & 0x3FFFFFFFFFFFFFFFuLL))
    {
      v21 = __si_assert_copy_extra(0);
      v7 = v21;
      v8 = "";
      if (v21)
      {
        v8 = v21;
      }

      v9 = "!queue->split || queue->splitPoint >= offset_t_GET_VALUE(value)";
LABEL_25:
      __message_assert("%s:%u: failed assertion '%s' %s ", "OQueue.h", 252, v9, v8);
      free(v7);
      if (__valid_fs(-1))
      {
        v22 = 2989;
      }

      else
      {
        v22 = 3072;
      }

      *v22 = -559038737;
      abort();
    }

    v5 = *(result + 4);
    if (v5 >= *(result + 3))
    {
      v6 = __si_assert_copy_extra(0);
      v7 = v6;
      v8 = "";
      if (v6)
      {
        v8 = v6;
      }

      v9 = "!queue->split";
      goto LABEL_25;
    }
  }

  else
  {
    v10 = *(result + 3);
    v5 = *(result + 4);
    if (v5 >= v10)
    {
      v11 = 2 * v10;
      if (!v10)
      {
        v11 = 4;
      }

      *(result + 3) = v11;
      v12 = *(result + 2);
      v13 = 8 * v11;
      if (v12)
      {
        v14 = malloc_type_zone_realloc(queryZone, v12, v13, 0xA1A7ADA0uLL);
      }

      else
      {
        v14 = malloc_type_zone_malloc(queryZone, v13, 0x566E289CuLL);
      }

      v15 = v14;
      if (!v14)
      {
        _log_fault_for_malloc_failure();
      }

      *(result + 2) = v15;
      v5 = *(result + 4);
    }
  }

  v16 = *(result + 2);
  *(result + 4) = v5 + 1;
  *(v16 + 8 * v5) = a2;
}

unsigned __int16 *_directoryStoreReaderGetPage(uint64_t *a1, unint64_t a2, BOOL *a3, __n128 a4, __n128 a5)
{
  *a3 = a2 >> 62 == 1;
  v6 = a2 & 0x3FFFFFFFFFFFFFFFLL;
  v7 = *a1;
  if ((a2 & 0x3FFFFFFFFFFFFFFFLL) >= *(v7 + 232))
  {
    return 0;
  }

  ptr = storage_reader_get_ptr(v7, a1[1], v6, 8, a4, a5);
  if (ptr == -1)
  {
    return 0;
  }

  result = storage_reader_get_ptr(*a1, a1[1], v6, 64 << *(ptr + 2), v9, v10);
  if (result + 1 < 2)
  {
    return 0;
  }

  if ((64 << *(result + 2)) - 8 < *result)
  {
    v12 = result;
    v13 = __si_assert_copy_extra(0);
    v14 = v13;
    v15 = "";
    if (v13)
    {
      v15 = v13;
    }

    __message_assert("%s:%u: failed assertion '%s' %s Got end %d and size %d", "FileTree.c", 254, "storePageEnd((StorePageRef)page) <= storePageDataSize((StorePageRef)page) && storePageDataSize((StorePageRef)page)", v15, *v12, (64 << *(v12 + 2)) - 8);
    free(v14);
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

  return result;
}

unsigned __int16 *directoryStorePageGetSize(unsigned __int16 *result)
{
  if (result)
  {
    v1 = *result;
    v2 = (64 << *(result + 2)) - 8;
    result = (v2 >> 4);
    if (result < v1 >> 4)
    {
      v3 = __si_assert_copy_extra(0);
      v4 = v3;
      v5 = "";
      if (v3)
      {
        v5 = v3;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "FileTree.c", 293, "storePageEnd((StorePageRef)page)/sizeof(CIDirectory_t) <= storePageDataSize((StorePageRef)page)/sizeof(CIDirectory_t)", v5);
      free(v4);
      if (__valid_fs(-1))
      {
        v6 = 2989;
      }

      else
      {
        v6 = 3072;
      }

      *v6 = -559038737;
      abort();
    }

    if (((v2 / 16 + 1) ^ (v2 / 16)) <= v2 / 16)
    {
      v7 = __si_assert_copy_extra(0);
      v8 = v7;
      v9 = "";
      if (v7)
      {
        v9 = v7;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "FileTree.c", 295, "__builtin_popcount((storePageDataSize((StorePageRef)page))/((int)(sizeof(CIDirectory_t))) + 1) == 1", v9);
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

  return result;
}

unint64_t directoryTreePageGetSize(unsigned __int16 a1, char a2)
{
  v2 = (64 << a2) - 8;
  if (v2 < a1)
  {
    v4 = __si_assert_copy_extra(0);
    v5 = v4;
    v6 = "";
    if (v4)
    {
      v6 = v4;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "FileTree.c", 310, "storePageEnd((StorePageRef)page) <= storePageDataSize((StorePageRef)page)", v6);
    free(v5);
    if (__valid_fs(-1))
    {
      v7 = 2989;
    }

    else
    {
      v7 = 3072;
    }

    *v7 = -559038737;
    abort();
  }

  if ((((v2 >> 3) + 1) ^ (v2 >> 3)) <= v2 >> 3)
  {
    v8 = __si_assert_copy_extra(0);
    v9 = v8;
    v10 = "";
    if (v8)
    {
      v10 = v8;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "FileTree.c", 314, "__builtin_popcount((storePageDataSize((StorePageRef)page))/((int)(sizeof(disk_offset_t))) + 1) == 1", v10);
    free(v9);
    if (__valid_fs(-1))
    {
      v11 = 2989;
    }

    else
    {
      v11 = 3072;
    }

    *v11 = -559038737;
    abort();
  }

  return v2 >> 3;
}

void *directoryStorePageFindItemOffset(_DWORD *a1, uint64_t a2, uint64_t a3, unsigned int *a4, uint64_t a5)
{
  Size = directoryStorePageGetSize(a2);
  if (a5 == 1 && !*(a2 + 6))
  {
    v36 = __si_assert_copy_extra(a1);
    v30 = v36;
    v37 = "";
    if (v36)
    {
      v37 = v36;
    }

    __message_assert("%s:%u: failed assertion '%s' %s Expected depth %d; page has %d", "FileTree.c", 960, "getNum16(page->depth)==(unsigned)depth", v37, 1, *(a2 + 6));
LABEL_43:
    free(v30);
    if (!__valid_fsp(a1))
    {
      v32 = 3072;
LABEL_46:
      *v32 = -559038737;
      abort();
    }

LABEL_44:
    v32 = 2989;
    goto LABEL_46;
  }

  if (*(a2 + 6) != a5)
  {
    v29 = __si_assert_copy_extra(a1);
    v30 = v29;
    v31 = "";
    if (v29)
    {
      v31 = v29;
    }

    __message_assert("%s:%u: failed assertion '%s' %s Expected depth %d; page has %d", "FileTree.c", 962, "getNum16(page->depth)==(unsigned)depth", v31, a5, *(a2 + 6));
    goto LABEL_43;
  }

  v41 = 0;
  Hash = getHash(a3, Size, *(a2 + 2), a5, 10, &v41);
  v10 = Hash;
  v11 = (8 * a5);
  if (*(a2 + 3))
  {
    v41 <<= 8 * a5;
  }

  v12 = a2 + 8;
  v13 = Hash;
  v14 = *(a2 + 8 + 16 * Hash);
  v15 = a4;
  if (!v14)
  {
LABEL_30:
    v20 = -1;
    goto LABEL_32;
  }

  v16 = 0;
  v17 = Size + 1;
  while (1)
  {
    v19 = v17-- != 0;
    v20 = -1;
    if (v14 == a3 || !v19)
    {
      goto LABEL_32;
    }

    if (v14 == 1)
    {
      v33 = __si_assert_copy_extra(0);
      v34 = v33;
      if (v33)
      {
        v35 = v33;
      }

      else
      {
        v35 = "";
      }

      __message_assert("%s:%u: Unexpected code path %s ", "FileTree.c", 981, v35);
      free(v34);
      goto LABEL_44;
    }

    if (v15)
    {
      break;
    }

LABEL_26:
    v27 = v10 + 1;
    v16 |= Size <= v27;
    if (Size > v27)
    {
      v13 = v10 + 1;
    }

    else
    {
      v13 = 0;
    }

    v10 = v13;
    v14 = *(v12 + 16 * v13);
    if (!v14)
    {
      goto LABEL_30;
    }
  }

  v40 = 0;
  v21 = a5;
  v22 = a5;
  v23 = v11;
  v24 = getHash(v14, Size, *(a2 + 2), v22, 10, &v40);
  v11 = v23;
  if (*(a2 + 3))
  {
    v25 = v23;
  }

  else
  {
    v25 = 0;
  }

  v26 = v40 << v25;
  if (v26 > v41)
  {
    v15 = a4;
    if ((v16 ^ (v24 <= v10)))
    {
      goto LABEL_31;
    }

    goto LABEL_24;
  }

  v15 = a4;
  if (v14 <= a3 || v26 != v41 || ((v16 ^ (v24 <= v10)) & 1) == 0)
  {
LABEL_24:
    if ((v16 & (v24 <= v10)) == 1)
    {
      goto LABEL_31;
    }

    a5 = v21;
    goto LABEL_26;
  }

LABEL_31:
  v20 = v10;
LABEL_32:
  result = (v12 + 16 * v13);
  if (*result == a3)
  {
    if (!v15)
    {
      return result;
    }

LABEL_38:
    *v15 = v10;
  }

  else
  {
    result = 0;
    if (v15)
    {
      if (v20 != -1)
      {
        v10 = v20;
      }

      goto LABEL_38;
    }
  }

  return result;
}

unsigned __int16 *directoryStoreReaderTreeFindItemOffset(uint64_t *a1, int64_t a2, unint64_t a3, int a4, __n128 a5, __n128 a6)
{
  while (1)
  {
    v6 = a4;
    v7 = a3;
    v8 = a1;
    v21 = 0;
    result = _directoryStoreReaderGetPage(a1, a2, &v21, a5, a6);
    if (!result)
    {
      break;
    }

    if (v21)
    {
      v12 = __si_assert_copy_extra(0);
      v13 = v12;
      v14 = "";
      if (v12)
      {
        v14 = v12;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "FileTree.c", 847, "!flat", v14);
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

    v10 = result;
    if (result[3] != v6)
    {
      v16 = __si_assert_copy_extra(0);
      v17 = v16;
      v18 = "";
      if (v16)
      {
        v18 = v16;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "FileTree.c", 849, "getNum16(page->depth)==(unsigned)pageDepth", v18);
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

    Size = directoryTreePageGetSize(*result, *(result + 2));
    a2 = *&v10[4 * getHash(v7, Size, 0, v6 + 1, 0, 0) + 4];
    if (!a2)
    {
      return 0;
    }

    if (a2 >= 0x4000000000000000)
    {
      result = _directoryStoreReaderGetPage(v8, a2, &v21, a5, a6);
      if (result)
      {
        return directoryStorePageFindItemOffset(*(*v8 + 216), result, v7, &v20, (v6 + 1));
      }

      return result;
    }

    a4 = v6 + 1;
    a1 = v8;
    a3 = v7;
  }

  return result;
}

uint64_t getHash(unint64_t a1, uint64_t a2, char a3, char a4, int a5, unint64_t *a6)
{
  if (!a2)
  {
    v17 = __si_assert_copy_extra(0);
    v18 = v17;
    v19 = "";
    if (v17)
    {
      v19 = v17;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "FileTree.c", 220, "pageSize", v19);
    free(v18);
    if (__valid_fs(-1))
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

  v10 = a2;
  v11 = hash64(a1);
  if (a6)
  {
    *a6 = v11;
  }

  if (a5)
  {
    v12 = ~(-1 << a5);
  }

  else
  {
    v12 = v10;
  }

  v13 = v12 & (v11 >> -(a5 + 8 * a4));
  v14 = a5 - a3 - 2;
  if (!a5)
  {
    v14 = 0;
  }

  v15 = v13 >> v14;
  if (v15 <= 1)
  {
    v15 = 1;
  }

  return v15 - 1;
}

unint64_t hash64(unint64_t result)
{
  v1 = 0;
  do
  {
    v2 = vaddvq_s64(vandq_s8(vdupq_n_s64(v1 | result), xmmword_1C2BFA410));
    v3 = (0x9E3779B97F4A7C13 - v2) ^ ((v2 - 8) << 9);
    v4 = (-v2 - v3 + 16) ^ (v3 >> 8);
    v5 = (v2 - 8 - v3 - v4) ^ (v4 >> 38);
    v6 = (v3 - v4 - v5) ^ (v5 << 23);
    v7 = (v4 - v5 - v6) ^ (v6 >> 5);
    v8 = (v5 - v6 - v7) ^ (v7 >> 35);
    v9 = (v6 - v7 - v8) ^ (v8 << 49);
    v10 = (v7 - v8 - v9) ^ (v9 >> 11);
    v11 = (v8 - v9 - v10) ^ (v10 >> 12);
    result = (v10 - v11 - ((v9 - v10 - v11) ^ (v11 << 18))) ^ (((v9 - v10 - v11) ^ (v11 << 18)) >> 22);
    ++v1;
  }

  while ((~(((result & 0x7F7F7F7F7F7F7F7FLL) + 0x7F7F7F7F7F7F7F7FLL) | result) & 0x8080808080808080) != 0);
  return result;
}

uint64_t directoryStoreValidate(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v2 = *(a2 + 8);
    if (*(result + 4400) && v2 >= 1)
    {
      v4 = v2 & 0x3FFFFFFFFFFFFFFFLL;
      if ((v2 & 0x3FFFFFFFFFFFFFFFuLL) >= *(result + 232))
      {
        v5 = result;
        v6 = __si_assert_copy_extra(*(result + 216));
        v7 = v6;
        v8 = "";
        if (v6)
        {
          v8 = v6;
        }

        __message_assert("%s:%u: failed assertion '%s' %s Expected offset (%llx) to be less than free region (%llx)", "FileTree.c", 1507, "CHILDLESS(offset) || MASKPAGE(offset) <storageGetCount(store)", v8, v4, *(v5 + 232));
        free(v7);
        if (__valid_fsp(*(v5 + 216)))
        {
          v9 = 2989;
        }

        else
        {
          v9 = 3072;
        }

        *v9 = -559038737;
        abort();
      }
    }
  }

  return result;
}

unsigned __int16 *_directoryStoreGetPageInner(uint64_t a1, unint64_t a2, BOOL *a3)
{
  *a3 = a2 >> 62 == 1;
  v5 = storageResolvePtr(a1, a2 & 0x3FFFFFFFFFFFFFFFLL, 8, 1);
  result = storageResolvePtr(a1, a2 & 0x3FFFFFFFFFFFFFFFLL, 64 << *(v5 + 2), 1);
  v7 = result;
  if (result && (64 << *(result + 2)) - 8 < *result)
  {
    v8 = __si_assert_copy_extra(0);
    v9 = v8;
    v10 = "";
    if (v8)
    {
      v10 = v8;
    }

    __message_assert("%s:%u: failed assertion '%s' %s Got end %d and size %d", "FileTree.c", 269, "storePageEnd((StorePageRef)page) <= storePageDataSize((StorePageRef)page)", v10, *v7, (64 << *(v7 + 2)) - 8);
    free(v9);
    if (__valid_fs(-1))
    {
      v11 = 2989;
    }

    else
    {
      v11 = 3072;
    }

    *v11 = -559038737;
    abort();
  }

  return result;
}

unsigned __int16 *directoryStoreGetDirectoryWithPath(unsigned __int16 *result, uint64_t a2, unint64_t *a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = a7;
  v10 = result;
  if (a4 == -1)
  {
    if (a7)
    {
      v17 = a3[1];
      if (v17)
      {
        *(a7 + 112) = 1603;
        *(a7 + 104) = v17;
        result = _directoryStoreGetPageInner(a2, v17, v33);
        if (*(v7 + 24) != result[3])
        {
          v23 = __si_assert_copy_extra(0);
          v24 = v23;
          v25 = "";
          if (v23)
          {
            v25 = v23;
          }

          __message_assert("%s:%u: failed assertion '%s' %s ", "FileTree.c", 1607, "refPage->pathDepth==getNum16(page->depth)", v25);
          free(v24);
          if (__valid_fs(-1))
          {
            v26 = 2989;
          }

          else
          {
            v26 = 3072;
          }

          *v26 = -559038737;
          abort();
        }
      }
    }

    *v10 = *a3;
    *(v10 + 2) = a3[2];
  }

  else
  {
    v34 = 0;
    memset(v33, 0, sizeof(v33));
    if (!a7)
    {
      v7 = v33;
    }

    v32 = 0;
    v14 = a3[1];
    v15 = *(*a3 + 8);
    if (v14)
    {
      result = _directoryStoreGetPageInner(a2, v14, &v32);
      *a3 = &result[8 * *(a3 + 4) + 4];
      v16 = result == 0;
    }

    else
    {
      v16 = 1;
    }

    v31 = 0;
    if (v15 <= 0)
    {
      if (a6)
      {
LABEL_25:
        v22 = *(a5 + 8 * a4);
        v28 = 0;
        memset(v27, 0, sizeof(v27));
        v29 = *a3;
        v30 = a3[2];
        insertDirectoryFT(v27, a2, &v29, v31, v22, v22, 0, &v28, v7);
        v19 = a4 - 1;
        v21 = v27;
        return directoryStoreGetDirectoryWithPath(v10, a2, v21, v19, a5, a6, v7);
      }
    }

    else
    {
      PageInner = _directoryStoreGetPageInner(a2, v15, &v32);
      if (v32)
      {
        result = directoryStorePageFindItemOffset(*(a2 + 216), PageInner, *(a5 + 8 * a4), &v31, 0);
        if (result)
        {
          *(v7 + 14) = 0;
          v7[5] = 0u;
          v7[6] = 0u;
          v7[3] = 0u;
          v7[4] = 0u;
          v7[1] = 0u;
          v7[2] = 0u;
          *v7 = 0u;
          v19 = a4 - 1;
          *&v29 = result;
          *(&v29 + 1) = v15;
          LODWORD(v30) = v31;
LABEL_21:
          HIDWORD(v30) = 0;
          v21 = &v29;
          return directoryStoreGetDirectoryWithPath(v10, a2, v21, v19, a5, a6, v7);
        }
      }

      else
      {
        result = directoryStoreTreeFindItemOffset(a2, v15, *(a5 + 8 * a4), v7, &v31, 0, a6);
        if (result)
        {
          v20 = *(v7 + 13);
          if (a4)
          {
            *(v7 + 14) = 0;
            v7[5] = 0u;
            v7[6] = 0u;
            v7[3] = 0u;
            v7[4] = 0u;
            v7[1] = 0u;
            v7[2] = 0u;
            *v7 = 0u;
          }

          v19 = a4 - 1;
          *&v29 = result;
          *(&v29 + 1) = v20;
          LODWORD(v30) = v31;
          goto LABEL_21;
        }
      }

      if (a6)
      {
        if (!v16)
        {
          *a3 = &_directoryStoreGetPageInner(a2, a3[1], &v32)[8 * *(a3 + 4) + 4];
        }

        goto LABEL_25;
      }
    }

    *v10 = 0;
    *(v10 + 1) = 0;
    *(v10 + 2) = 0;
  }

  return result;
}

unint64_t shiftEntriesForDelete(uint64_t a1, unint64_t a2, unint64_t a3, char a4)
{
  if (a2 + 1 >= a3)
  {
LABEL_6:
    if (a2)
    {
      v15 = 0;
      v11 = a3 - 1;
      v8 = a1 + 8;
      v16 = (a1 + 8);
      while (1)
      {
        result = *v16;
        if (*v16 <= 1)
        {
          break;
        }

        v17 = v15;
        result = getHash(result, a3, *(a1 + 2), a4, 10, 0);
        v13 = (v8 + 16 * v11);
        if (v17 == result)
        {
          goto LABEL_22;
        }

        v18 = *v16;
        v16 += 2;
        *v13 = v18;
        v15 = v17 + 1;
        v11 = v17;
        if (a2 == v17 + 1)
        {
          goto LABEL_11;
        }
      }

      if (*v16 != 1)
      {
        goto LABEL_21;
      }

      v22 = __si_assert_copy_extra(0);
      v23 = v22;
      v24 = "";
      if (v22)
      {
        v24 = v22;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "FileTree.c", 1089, "!(page->items[i].fileId.storeOID==markerOid.storeOID)", v24);
      free(v23);
      if (!__valid_fs(-1))
      {
        v25 = 3072;
LABEL_28:
        *v25 = -559038737;
        abort();
      }
    }

    else
    {
LABEL_11:
      v19 = __si_assert_copy_extra(0);
      v20 = v19;
      if (v19)
      {
        v21 = v19;
      }

      else
      {
        v21 = "";
      }

      __message_assert("%s:%u: Unexpected code path %s ", "FileTree.c", 1110, v21);
      free(v20);
    }

    v25 = 2989;
    goto LABEL_28;
  }

  v8 = a1 + 8;
  v9 = a3 - 1;
  v10 = (a1 + 16 * a2 + 24);
  v11 = a2;
  while (1)
  {
    result = *v10;
    if (*v10 <= 1)
    {
      break;
    }

    result = getHash(result, a3, *(a1 + 2), a4, 10, 0);
    v13 = v10 - 2;
    if (v11 + 1 == result)
    {
      goto LABEL_22;
    }

    v14 = *v10;
    v10 += 2;
    *v13 = v14;
    if (v9 == ++v11)
    {
      goto LABEL_6;
    }
  }

  if (*v10 == 1)
  {
    v26 = __si_assert_copy_extra(0);
    v27 = v26;
    v28 = "";
    if (v26)
    {
      v28 = v26;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "FileTree.c", 1058, "!(page->items[i].fileId.storeOID==markerOid.storeOID)", v28);
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

LABEL_21:
  v13 = (v8 + 16 * v11);
LABEL_22:
  *v13 = 0;
  v13[1] = 0;
  return result;
}

void *directoryStoreTreeFindItemOffset(uint64_t a1, int64_t a2, uint64_t a3, uint64_t a4, unsigned int *a5, int a6, int a7)
{
  while (1)
  {
    v7 = a7;
    v8 = a6;
    v9 = a5;
    v10 = a4;
    v11 = a3;
    v12 = a2;
    v13 = a1;
    v46 = 0;
    PageInner = _directoryStoreGetPageInner(a1, a2, &v46);
    if (v46)
    {
      v30 = __si_assert_copy_extra(0);
      __message_assert("%s:%u: failed assertion '%s' %s ");
      goto LABEL_31;
    }

    v15 = PageInner;
    if (PageInner[3] != v8)
    {
      v32 = __si_assert_copy_extra(0);
      v33 = v32;
      v34 = "";
      if (v32)
      {
        v34 = v32;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "FileTree.c", 884, "getNum16(page->depth)==(unsigned)depth", v34);
      goto LABEL_39;
    }

    Size = directoryTreePageGetSize(*PageInner, *(PageInner + 2));
    if (v10)
    {
      if (v12 <= 0)
      {
        v35 = __si_assert_copy_extra(0);
        v33 = v35;
        v36 = "";
        if (v35)
        {
          v36 = v35;
        }

        __message_assert("%s:%u: failed assertion '%s' %s ", "FileTree.c", 889, "!((pageOffset & (1ull << 63)) || pageOffset==0)", v36);
        goto LABEL_39;
      }

      *(v10 + 4 * *(v10 + 96) + 64) = 890;
      v17 = *(v10 + 96);
      *(v10 + 96) = v17 + 1;
      *(v10 + 8 * v17) = v12;
    }

    Hash = getHash(v11, Size, 0, v8 + 1, 0, 0);
    v19 = Hash;
    if (v7)
    {
      v20 = *&v15[4 * Hash + 4];
      v44 = v11;
      v45 = v20;
      v43 = 0;
      v42[1] = 0;
      v42[2] = 0;
      v42[0] = &v44;
      result = directoryStoreEnsurePage(v13, v42, 4 * (v20 == 0), v20 != 0, &v43, &v46, v8 + 1, v10);
      if (!result)
      {
        return result;
      }

      v22 = result;
      if (v43 == 1)
      {
        v23 = _directoryStoreGetPageInner(v13, v12, &v46);
        if (v46)
        {
          v38 = __si_assert_copy_extra(0);
          v33 = v38;
          v39 = "";
          if (v38)
          {
            v39 = v38;
          }

          __message_assert("%s:%u: failed assertion '%s' %s ", "FileTree.c", 906, "flat==0", v39);
          goto LABEL_39;
        }

        *&v23[4 * v19 + 4] = v45;
        dirtyStoragePage(v13, v23);
      }

      if (v22 < 0x4000000000000000)
      {
        return directoryStoreTreeFindItemOffset(v13, v22, v11, v10, v9, v8 + 1, 1);
      }

      v27 = _directoryStoreGetPageInner(v13, v22, &v46);
      v28 = v27;
      if (v10)
      {
        *(v10 + 104) = v22;
        *(v10 + 112) = 917;
      }

      v29 = *v27;
      if ((64 << *(v27 + 2)) - 8 >= v29)
      {
        if (5 * (v29 >> 4) + 5 < 4 * directoryStorePageGetSize(v27))
        {
          return directoryStorePageFindItemOffset(*(v13 + 216), v28, v11, v9, (v8 + 1));
        }

        v40 = __si_assert_copy_extra(0);
        v33 = v40;
        v41 = "";
        if (v40)
        {
          v41 = v40;
        }

        __message_assert("%s:%u: failed assertion '%s' %s ", "FileTree.c", 920, "(directoryStorePageGetItemCount(subPage)+1) * 5 < (directoryStorePageGetSize(subPage)) * 4", v41);
LABEL_39:
        free(v33);
        if (__valid_fs(-1))
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

      v30 = __si_assert_copy_extra(0);
      __message_assert("%s:%u: failed assertion '%s' %s Got end %d and size %d");
LABEL_31:
      free(v30);
      if (__valid_fs(-1))
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

    v24 = *&v15[4 * Hash + 4];
    if (!v24)
    {
      return 0;
    }

    if (v24 >= 0x4000000000000000)
    {
      break;
    }

    a6 = v8 + 1;
    a1 = v13;
    a2 = v24;
    a3 = v11;
    a4 = v10;
    a5 = v9;
    a7 = 0;
  }

  v25 = _directoryStoreGetPageInner(v13, v24, &v46);
  if (v10)
  {
    *(v10 + 104) = v24;
    *(v10 + 112) = 933;
  }

  v26 = *(v13 + 216);

  return directoryStorePageFindItemOffset(v26, v25, v11, v9, (v8 + 1));
}

unint64_t directoryStoreEnsurePage(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, _BYTE *a5, BOOL *a6, unsigned int a7, uint64_t a8)
{
  v108 = a7;
  v123 = *MEMORY[0x1E69E9840];
  v14 = *a2;
  v15 = *(v14 + 8);
  *a6 = 1;
  *a5 = 0;
  v16 = *(v14 + 8);
  if (v16 <= 0)
  {
    directoryStoreValidate(a1, v14);
    v22 = *(a2 + 8);
    if (v22)
    {
      PageInner = _directoryStoreGetPageInner(a1, v22, a6);
      v24 = &PageInner[8 * *(a2 + 16) + 4];
      *a2 = v24;
    }

    else
    {
      PageInner = 0;
      v24 = *a2;
    }

    *a5 = 1;
    if (a4)
    {
      v25 = (v16 >> 63) + 1;
    }

    else
    {
      v25 = a3;
    }

    v26 = *v24;
    v27 = v16 & (v16 >> 63) & 0x7FFFFFFFFFFFFFFFLL;
    if ((16 * v25) <= 0x4000)
    {
      if (a8)
      {
        *(a8 + 96) = v108;
      }

      v28 = 16 * v25;
      v29 = 64;
      do
      {
        v30 = v29;
        v29 *= 2;
      }

      while (v30 < v28);
      v121 = 0u;
      v122 = 0u;
      v119 = 0u;
      v120 = 0u;
      v117 = 0u;
      v118 = 0u;
      v115 = 0u;
      v116 = 0u;
      v114 = 0u;
      v113 = 0u;
      v112 = 0u;
      v111 = 0u;
      v109 = 0;
      v31 = storageAllocOffset(a1, v30, &v111, &v109);
      if (v109)
      {
        dirtyStorageOffsets(a1, &v111, v109);
      }

      if (v31)
      {
        v32 = storageResolvePtr(a1, v31, v30, 1);
        bzero(v32, v30);
        *v32 = 0;
        v33 = __clz(__rbit32(v30 >> 6));
        if (!v30)
        {
          v33 = -1;
        }

        *(v32 + 2) = v33;
        v32[3] = v108;
        v32[2] = 668;
        *(v32 + 3) = 0;
        dirtyStoragePage(a1, v32);
      }

      v15 = v31 | 0x4000000000000000;
      if (!v27)
      {
        goto LABEL_53;
      }
    }

    else
    {
      v15 = directoryStoreNewTreePage(a1, v108, 663, 0);
      *a6 = 0;
      if (!v27)
      {
        goto LABEL_53;
      }
    }

    v109 = 0;
    v34 = _directoryStoreGetPageInner(a1, v15, a6);
    if (*a6)
    {
      v35 = v34;
      ItemOffset = directoryStorePageFindItemOffset(*(a1 + 216), v34, v26, &v109, v108);
    }

    else
    {
      *&v118 = 0;
      v116 = 0u;
      v117 = 0u;
      v114 = 0u;
      v115 = 0u;
      v113 = 0u;
      v112 = 0u;
      v111 = 0u;
      ItemOffset = directoryStoreTreeFindItemOffset(a1, v15, v26, &v111, &v109, v108, 1);
      v35 = _directoryStoreGetPageInner(a1, *(&v117 + 1), &v110);
    }

    if (ItemOffset)
    {
      v88 = __si_assert_copy_extra(0);
      v76 = v88;
      v89 = "";
      if (v88)
      {
        v89 = v88;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "FileTree.c", 686, "element==0", v89);
      goto LABEL_94;
    }

    v50 = v109;
    if (*&v35[8 * v109 + 4] >= 2uLL)
    {
      Size = directoryStorePageGetSize(v35);
      shiftEntries(v35, v50, Size);
      v50 = v109;
    }

    v52 = &v35[8 * v50 + 4];
    *v52 = v26;
    v52[1] = v27 | 0x8000000000000000;
    *v35 += 16;
LABEL_53:
    v53 = *(a2 + 8);
    if (v53)
    {
      PageInner = _directoryStoreGetPageInner(a1, v53, a6);
      *a2 = &PageInner[8 * *(a2 + 16) + 4];
    }

    if (PageInner)
    {
      dirtyStoragePage(a1, PageInner);
    }

    goto LABEL_83;
  }

  if (!(v16 >> 62))
  {
    return v15;
  }

  directoryStoreValidate(a1, v14);
  v17 = _directoryStoreGetPageInner(a1, v16, a6);
  v18 = v17;
  v19 = *v17;
  if (a4)
  {
    v20 = (64 << *(v17 + 2)) - 8;
    if (v20 < v19)
    {
      goto LABEL_101;
    }

    a3 = (v19 >> 4) + 1;
  }

  else
  {
    v20 = (64 << *(v17 + 2)) - 8;
  }

  if (v20 < v19)
  {
    v83 = __si_assert_copy_extra(0);
    v84 = v83;
    v85 = "";
    if (v83)
    {
      v85 = v83;
    }

    __message_assert("%s:%u: failed assertion '%s' %s Got end %d and size %d", "FileTree.c", 287, "storePageEnd((StorePageRef)page) <= storePageDataSize((StorePageRef)page)", v85, *v18, (64 << *(v18 + 2)) - 8);
    goto LABEL_120;
  }

  v37 = v19 >> 4;
  if (a3 >= v37)
  {
    v38 = a3;
  }

  else
  {
    v38 = (v37 + 1);
  }

  if (v38 >= 3)
  {
    v39 = v38;
  }

  else
  {
    v39 = v38 + 1;
  }

  if (5 * v39 < 4 * directoryStorePageGetSize(v17))
  {
    return v15;
  }

  *a5 = 1;
  if (directoryStorePageGetSize(v18) != 1023 && (5 * v39) < 0xFFDuLL)
  {
    v41 = *(a2 + 8);
    if (v41)
    {
      v42 = _directoryStoreGetPageInner(a1, v41, a6);
      *a2 = &v42[8 * *(a2 + 16) + 4];
      dirtyStoragePage(a1, v42);
    }

    v15 = *(*a2 + 8);
    v43 = _directoryStoreGetPageInner(a1, v15, &v110);
    v44 = v43;
    v45 = 64 << *(v43 + 2);
    v46 = ((20 * v39) & 0xFFFFFFF0) + 16;
    LODWORD(v39) = v45;
    do
    {
      v39 = (2 * v39);
    }

    while (v46 > v39);
    if ((v45 - 8) < *v43)
    {
      v90 = __si_assert_copy_extra(0);
      v76 = v90;
      v91 = "";
      if (v90)
      {
        v91 = v90;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "FileTree.c", 587, "storePageEnd((StorePageRef)page) <= storePageDataSize((StorePageRef)page)", v91);
      goto LABEL_94;
    }

    dirtyStoragePage(a1, v43);
    v47 = directoryStorePageGetSize(v44);
    if (storageExtendOffset(a1, v15, v45, v39))
    {
      v48 = _directoryStoreGetPageInner(a1, v15, &v111);
      *(v48 + 2) = __clz(__rbit32(v39 >> 6));
      dirtyStoragePage(a1, v48);
      if (*(a1 + 232) > v15)
      {
        v49 = _directoryStoreGetPageInner(a1, v15, &v110);
        rehashPage(a1, v49, v47, v108);
        dirtyStoragePage(a1, v49);
        if (!v15)
        {
          return v15;
        }

        goto LABEL_80;
      }

      v94 = __si_assert_copy_extra(*(a1 + 216));
      v95 = v94;
      v96 = "";
      if (v94)
      {
        v96 = v94;
      }

      __message_assert("%s:%u: failed assertion '%s' %s file tree", "FileTree.c", 595, "getOffset(info) < storageGetCount(store)", v96);
      free(v95);
      if (!__valid_fsp(*(a1 + 216)))
      {
        goto LABEL_116;
      }

      goto LABEL_121;
    }

    v121 = 0u;
    v122 = 0u;
    v119 = 0u;
    v120 = 0u;
    v117 = 0u;
    v118 = 0u;
    v115 = 0u;
    v116 = 0u;
    v114 = 0u;
    v113 = 0u;
    v112 = 0u;
    v111 = 0u;
    v109 = 0;
    if (v39 <= 0x4000)
    {
      v69 = storageGrowOffset(a1, v15 & 0x3FFFFFFFFFFFFFFFLL, v45, v39, &v111, &v109, 0);
      if (v69)
      {
        v15 = v69;
        storageResolvePtr(a1, v69, v39, 1);
        if (v109)
        {
          dirtyStorageOffsets(a1, &v111, v109);
        }

        if (v15 < *(a1 + 232))
        {
          v70 = _directoryStoreGetPageInner(a1, v15, &v110);
          v71 = v108;
          v70[3] = v108;
          v70[2] = 808;
          *(v70 + 2) = __clz(__rbit32(v39 >> 6));
          rehashPage(a1, v70, v47, v71);
          dirtyStoragePage(a1, v70);
LABEL_80:
          v72 = *(a2 + 8);
          if (v72)
          {
            v73 = _directoryStoreGetPageInner(a1, v72, a6);
            *a2 = &v73[8 * *(a2 + 16) + 4];
            dirtyStoragePage(a1, v73);
          }

          v15 |= 0x4000000000000000uLL;
LABEL_83:
          *(*a2 + 8) = v15;
          return v15;
        }

        v104 = __si_assert_copy_extra(*(a1 + 216));
        v101 = v104;
        v105 = "";
        if (v104)
        {
          v105 = v104;
        }

        __message_assert("%s:%u: failed assertion '%s' %s file tree", "FileTree.c", 617, "getOffset(*newOffset) < storageGetCount(store)", v105);
      }

      else
      {
        v100 = __si_assert_copy_extra(*(a1 + 216));
        v101 = v100;
        if (v100)
        {
          v102 = v100;
        }

        else
        {
          v102 = "";
        }

        v103 = __error();
        __message_assert("%s:%u: failed assertion '%s' %s error %d expanding from old:%d new:%d", "FileTree.c", 323, "newRealOffset", v102, *v103, v45, v39);
      }

      free(v101);
      if (__valid_fsp(*(a1 + 216)))
      {
        v106 = 2989;
      }

      else
      {
        v106 = 3072;
      }

      *v106 = -559038737;
      abort();
    }

    v98 = __si_assert_copy_extra(0);
    v84 = v98;
    v99 = "";
    if (v98)
    {
      v99 = v98;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "FileTree.c", 609, "reSize<=((1<<(10))* sizeof(CIDirectory_t))", v99);
LABEL_120:
    free(v84);
    if (!__valid_fs(-1))
    {
LABEL_116:
      v97 = 3072;
      goto LABEL_122;
    }

LABEL_121:
    v97 = 2989;
LABEL_122:
    *v97 = -559038737;
    abort();
  }

  if ((64 << *(v18 + 2)) - 8 < *v18)
  {
LABEL_101:
    v86 = __si_assert_copy_extra(0);
    v76 = v86;
    v87 = "";
    if (v86)
    {
      v87 = v86;
    }

    __message_assert("%s:%u: failed assertion '%s' %s Got end %d and size %d", "FileTree.c", 287, "storePageEnd((StorePageRef)page) <= storePageDataSize((StorePageRef)page)", v87, *v18, (64 << *(v18 + 2)) - 8);
    goto LABEL_94;
  }

  MEMORY[0x1EEE9AC00](v40);
  v55 = &v107[-v54];
  bzero(&v107[-v54], v54);
  v56 = directoryStorePageGetSize(v18);
  v57 = *(v18 + 3);
  v58 = 0;
  if (v56)
  {
    v59 = v18 + 4;
    do
    {
      if (*v59 >= 2)
      {
        *&v55[2 * v58++] = *v59;
      }

      ++v59;
      v56 = (v56 - 1);
    }

    while (v56);
  }

  *&v111 = v16 & 0x3FFFFFFFFFFFFFFFLL;
  storageFreeOffset(a1, v16 & 0x3FFFFFFFFFFFFFFFLL, 64 << *(v18 + 2));
  dirtyStorageOffsets(a1, &v111, 1u);
  v15 = directoryStoreNewTreePage(a1, v108, 749, v57);
  if (v58)
  {
    while (1)
    {
      v109 = 0;
      *&v118 = 0;
      v116 = 0u;
      v117 = 0u;
      v114 = 0u;
      v115 = 0u;
      v113 = 0u;
      v112 = 0u;
      v111 = 0u;
      v60 = _directoryStoreGetPageInner(a1, v15, a6);
      dirtyStoragePage(a1, v60);
      if (*a6)
      {
        break;
      }

      directoryStoreTreeFindItemOffset(a1, v15, *v55, &v111, &v109, v108, 1);
      v61 = _directoryStoreGetPageInner(a1, *(&v117 + 1), a6);
      if (!*a6)
      {
        v78 = __si_assert_copy_extra(0);
        v76 = v78;
        v79 = "";
        if (v78)
        {
          v79 = v78;
        }

        __message_assert("%s:%u: failed assertion '%s' %s ", "FileTree.c", 762, "*flat", v79);
        goto LABEL_94;
      }

      if (*(&v117 + 1) == v15)
      {
        v80 = __si_assert_copy_extra(0);
        v76 = v80;
        v81 = "";
        if (v80)
        {
          v81 = v80;
        }

        __message_assert("%s:%u: failed assertion '%s' %s ", "FileTree.c", 763, "l_outPage.leafPageOffset != getOffset(newChildPage)", v81);
        goto LABEL_94;
      }

      v62 = v61;
      v63 = v61 + 4;
      v64 = v109;
      if (*&v61[8 * v109 + 4] >= 2uLL)
      {
        v65 = directoryStorePageGetSize(v61);
        shiftEntries(v62, v64, v65);
        v64 = v109;
      }

      v66 = *v55;
      v55 += 2;
      *&v63[8 * v64] = v66;
      *v62 += 16;
      dirtyStoragePage(a1, v62);
      if (!--v58)
      {
        goto LABEL_70;
      }
    }

    v75 = __si_assert_copy_extra(0);
    v76 = v75;
    v77 = "";
    if (v75)
    {
      v77 = v75;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "FileTree.c", 759, "*flat==0", v77);
LABEL_94:
    free(v76);
    if (__valid_fs(-1))
    {
      v82 = 2989;
    }

    else
    {
      v82 = 3072;
    }

    *v82 = -559038737;
    abort();
  }

LABEL_70:
  v67 = *(a2 + 8);
  if (v67)
  {
    v68 = _directoryStoreGetPageInner(a1, v67, a6);
    *a2 = &v68[8 * *(a2 + 16) + 4];
    dirtyStoragePage(a1, v68);
  }

  *(*a2 + 8) = v15;
  *a6 = 0;
  if (!_directoryStoreGetPageInner(a1, v15, a6))
  {
    v92 = __si_assert_copy_extra(0);
    v84 = v92;
    v93 = "";
    if (v92)
    {
      v93 = v92;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "FileTree.c", 796, "page", v93);
    goto LABEL_120;
  }

  return v15;
}

unint64_t directoryStoreNewTreePage(uint64_t a1, __int16 a2, __int16 a3, int a4)
{
  v21 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    v10 = __si_assert_copy_extra(0);
    v11 = v10;
    v12 = "";
    if (v10)
    {
      v12 = v10;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "FileTree.c", 371, "specialBits == 0", v12);
    free(v11);
    if (__valid_fs(-1))
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

  memset(v20, 0, sizeof(v20));
  v19 = 0;
  v7 = storageAllocOffset(a1, 0x800u, v20, &v19);
  v18 = v7;
  if (v19)
  {
    dirtyStorageOffsets(a1, v20, v19);
  }

  if (v7)
  {
    v8 = storageResolvePtr(a1, v7, 2048, 1);
    bzero(v8, 0x800uLL);
    *(v8 + 2) = 5;
    *(v8 + 6) = a2;
    *(v8 + 4) = a3;
    directoryTreePageGetSize(0, 5);
    dirtyStorageOffsets(a1, &v18, 1u);
    if (v7 >> 62 == 1)
    {
      v14 = __si_assert_copy_extra(0);
      v15 = v14;
      v16 = "";
      if (v14)
      {
        v16 = v14;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "FileTree.c", 407, "!(((realOffset & (1ull << 63)) ==0) && (realOffset & (1ull << 62))==(1ull << 62))", v16);
      free(v15);
      if (__valid_fs(-1))
      {
        v17 = 2989;
      }

      else
      {
        v17 = 3072;
      }

      *v17 = -559038737;
      abort();
    }
  }

  return v7;
}

uint64_t shiftEntries(uint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = (result + 8);
  v4 = (result + 8 + 16 * a2);
  v5 = *v4;
  if (!*v4)
  {
    v16 = __si_assert_copy_extra(0);
    v17 = v16;
    v18 = "";
    if (v16)
    {
      v18 = v16;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "FileTree.c", 1196, "dir.fileId.storeOID!=0", v18);
    goto LABEL_43;
  }

  if (v5 == 1)
  {
    v19 = __si_assert_copy_extra(0);
    v17 = v19;
    v20 = "";
    if (v19)
    {
      v20 = v19;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "FileTree.c", 1197, "getStoreOID(dir.fileId)!=1", v20);
    goto LABEL_43;
  }

  v6 = v4[1];
  if (a2 + 1 >= a3)
  {
    v10 = v4[1];
    v9 = *v4;
LABEL_9:
    if (!a2)
    {
LABEL_12:
      v13 = __si_assert_copy_extra(0);
      v14 = v13;
      if (v13)
      {
        v15 = v13;
      }

      else
      {
        v15 = "";
      }

      __message_assert("%s:%u: Unexpected code path %s ", "FileTree.c", 1226, v15);
      free(v14);
      goto LABEL_44;
    }

    while (1)
    {
      v11 = *v3;
      if (*v3 <= 1)
      {
        break;
      }

      v12 = v3[1];
      *v3 = v9;
      v3[1] = v10;
      v3 += 2;
      v9 = v11;
      v10 = v12;
      if (!--a2)
      {
        goto LABEL_12;
      }
    }

    if (*v3 == 1)
    {
      v21 = __si_assert_copy_extra(0);
      v22 = v21;
      v23 = "";
      if (v21)
      {
        v23 = v21;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "FileTree.c", 1215, "page->items[i].fileId.storeOID!=markerOid.storeOID", v23);
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

    if (!v3[1])
    {
      *v3 = v9;
      v3[1] = v10;
      return result;
    }

    v25 = __si_assert_copy_extra(0);
    v17 = v25;
    v26 = "";
    if (v25)
    {
      v26 = v25;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "FileTree.c", 1216, "page->items[i].childPage.offset==0", v26);
LABEL_43:
    free(v17);
    if (!__valid_fs(-1))
    {
      v31 = 3072;
LABEL_46:
      *v31 = -559038737;
      abort();
    }

LABEL_44:
    v31 = 2989;
    goto LABEL_46;
  }

  v7 = ~a2 + a3;
  v8 = (result + 16 * a2 + 32);
  while (1)
  {
    v9 = *(v8 - 1);
    v10 = *v8;
    if (v9 <= 1)
    {
      break;
    }

    *(v8 - 1) = v5;
    *v8 = v6;
    v8 += 2;
    v5 = v9;
    v6 = v10;
    if (!--v7)
    {
      goto LABEL_9;
    }
  }

  if (v10)
  {
    v27 = __si_assert_copy_extra(0);
    v17 = v27;
    v28 = "";
    if (v27)
    {
      v28 = v27;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "FileTree.c", 1203, "page->items[i].childPage.offset==0", v28);
    goto LABEL_43;
  }

  if (v9 == 1)
  {
    v29 = __si_assert_copy_extra(0);
    v17 = v29;
    v30 = "";
    if (v29)
    {
      v30 = v29;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "FileTree.c", 1204, "page->items[i].fileId.storeOID!=markerOid.storeOID", v30);
    goto LABEL_43;
  }

  *(v8 - 1) = v5;
  *v8 = v6;
  return result;
}

void rehashPage(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = *MEMORY[0x1E69E9840];
  Size = directoryStorePageGetSize(a2);
  v28 = 0;
  if (*(a2 + 6) != a4)
  {
    v22 = __si_assert_copy_extra(0);
    v23 = v22;
    v24 = "";
    if (v22)
    {
      v24 = v22;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "FileTree.c", 459, "getNum16(page->depth)==(unsigned)depth", v24);
    free(v23);
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

  v9 = Size;
  v10 = a2 + 8;
  bzero((a2 + 8 + 16 * a3), 16 * (Size - a3));
  MEMORY[0x1EEE9AC00](v11);
  v12 = &v27[-2 * a3 - 1];
  bzero(v12, 16 * a3);
  if (a3)
  {
    v13 = 0;
    v14 = 8;
    do
    {
      v15 = a2 + v14;
      v16 = *(a2 + v14);
      if (v16)
      {
        if (v16 != 1)
        {
          *&v12[2 * v13++] = *v15;
        }

        *v15 = 0;
        *(v15 + 8) = 0;
      }

      v14 += 16;
      --a3;
    }

    while (a3);
    for (*a2 = 0; v13; --v13)
    {
      v17 = *v12;
      v27[0] = 0;
      v18 = *(a2 + 2);
      v26 = v17;
      v19 = v17;
      Hash = getHash(v17, v9, v18, a4, 10, v27);
      v28 = Hash;
      if (*(v10 + 16 * Hash))
      {
        directoryStorePageFindItemOffset(*(a1 + 216), a2, v19, &v28, a4);
        v21 = v28;
        if (*(v10 + 16 * v28))
        {
          shiftEntries(a2, v28, v9);
          v21 = v28;
        }
      }

      else
      {
        v21 = Hash;
      }

      *(v10 + 16 * v21) = v26;
      *a2 += 16;
      v12 += 2;
    }
  }

  else
  {
    *a2 = 0;
  }
}

void insertDirectoryFT(uint64_t a1, uint64_t a2, __int128 *a3, unsigned int a4, uint64_t a5, uint64_t a6, uint64_t a7, _BYTE *a8, uint64_t a9)
{
  v52 = a4;
  if (a6 <= 1)
  {
    v33 = __si_assert_copy_extra(0);
LABEL_41:
    __message_assert("%s:%u: failed assertion '%s' %s ");
LABEL_42:
    free(v33);
    if (__valid_fs(-1))
    {
      v42 = 2989;
    }

    else
    {
      v42 = 3072;
    }

    *v42 = -559038737;
    abort();
  }

  v51 = 0;
  v16 = *(a3 + 1);
  if (v16)
  {
    *a3 = &_directoryStoreGetPageInner(a2, v16, &v51)[8 * *(a3 + 4) + 4];
  }

  v43 = *a3;
  *&v44 = *(a3 + 2);
  v17 = directoryStoreEnsurePage(a2, &v43, 0, 1, a8, &v51, 0, a9);
  if (a6 != a5)
  {
    v34 = __si_assert_copy_extra(0);
    v35 = v34;
    v36 = "";
    if (v34)
    {
      v36 = v34;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "FileTree.c", 1248, "getStoreOID(newDirectory.fileId)==fileid", v36);
LABEL_36:
    free(v35);
    if (__valid_fs(-1))
    {
      v41 = 2989;
    }

    else
    {
      v41 = 3072;
    }

    *v41 = -559038737;
    abort();
  }

  v18 = v17;
  if (*a8 != 1)
  {
    v22 = v17;
    if (v17 > 0x3FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_17;
    }

    v50 = 0;
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v43 = 0u;
    if (!directoryStoreTreeFindItemOffset(a2, v17, a5, &v43, &v52, 0, 1))
    {
      PageInner = _directoryStoreGetPageInner(a2, *(&v49 + 1), &v51);
      if (v51)
      {
        v21 = PageInner;
        v22 = *(&v49 + 1);
        goto LABEL_16;
      }
    }

    goto LABEL_40;
  }

  if (v17 < 0x4000000000000000)
  {
    ItemOffset = directoryStoreTreeFindItemOffset(a2, v17, a5, a9, &v52, 0, 1);
    v20 = _directoryStoreGetPageInner(a2, *(a9 + 104), &v51);
    if (v51)
    {
      v21 = v20;
      v22 = *(a9 + 104);
      goto LABEL_15;
    }

LABEL_40:
    v33 = __si_assert_copy_extra(0);
    goto LABEL_41;
  }

  v24 = _directoryStoreGetPageInner(a2, v17, &v51);
  if (!v51)
  {
    goto LABEL_40;
  }

  v21 = v24;
  ItemOffset = directoryStorePageFindItemOffset(*(a2 + 216), v24, a5, &v52, 0);
  v22 = v18;
LABEL_15:
  if (ItemOffset)
  {
    v39 = __si_assert_copy_extra(0);
    v35 = v39;
    v40 = "";
    if (v39)
    {
      v40 = v39;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "FileTree.c", 1268, "elem==0", v40);
    goto LABEL_36;
  }

LABEL_16:
  if (v21)
  {
    goto LABEL_19;
  }

LABEL_17:
  v25 = _directoryStoreGetPageInner(a2, v18, &v51);
  if (!v51)
  {
    v37 = __si_assert_copy_extra(0);
    v35 = v37;
    v38 = "";
    if (v37)
    {
      v38 = v37;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "FileTree.c", 1281, "flat", v38);
    goto LABEL_36;
  }

  v21 = v25;
LABEL_19:
  v26 = v21 + 4;
  v27 = v52;
  if (*&v21[8 * v52 + 4] >= 2uLL)
  {
    Size = directoryStorePageGetSize(v21);
    shiftEntries(v21, v27, Size);
    v27 = v52;
  }

  v29 = &v26[8 * v27];
  *v29 = a5;
  *(v29 + 1) = a7;
  *v21 += 16;
  v30 = directoryStorePageGetSize(v21);
  v31 = *v21;
  if ((64 << *(v21 + 2)) - 8 < v31)
  {
    v33 = __si_assert_copy_extra(0);
    __message_assert("%s:%u: failed assertion '%s' %s Got end %d and size %d");
    goto LABEL_42;
  }

  if (5 * (v31 >> 4) >= 4 * v30)
  {
    goto LABEL_40;
  }

  dirtyStoragePage(a2, v21);
  v32 = v52;
  *a1 = &v26[8 * v52];
  *(a1 + 8) = v22;
  *(a1 + 16) = v32;
}

uint64_t directoryStoreMoveDirectory(uint64_t result, int a2, uint64_t *a3, int a4, uint64_t a5)
{
  if (result)
  {
    v9 = result;
    v10 = (result + 4424);
    v11 = setCrashStateTarget(3);
    *v9 = 1;
    if (a2)
    {
      if (a3[a2 - 1] == *v10)
      {
        v12 = -3;
      }

      else
      {
        v12 = -2;
      }

      v13 = v12 + a2;
      if (a4)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v13 = -2;
      if (a4)
      {
LABEL_7:
        v14 = ~(*(a5 + 8 * a4 - 8) == *v10) + a4;
        v15 = *v10;
        goto LABEL_10;
      }
    }

    v15 = *v10;
    v14 = -1;
LABEL_10:
    if (v15 != 2)
    {
      v50 = __si_assert_copy_extra(0);
      v51 = v50;
      v52 = "";
      if (v50)
      {
        v52 = v50;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "FileTree.c", 1991, "getStoreOID(root->fileId)==2", v52);
      goto LABEL_61;
    }

    v80 = 0;
    v79 = 1;
    if (!storageResolvePtr(v9 + 8, 0, 1, 1))
    {
LABEL_54:
      result = setCrashStateTarget(v11);
      if (v79)
      {
        return result;
      }

      result = directoryStoreValidate(v9 + 8, v10);
      if (*v10 == 2)
      {
        return result;
      }

      v54 = __si_assert_copy_extra(0);
      __message_assert("%s:%u: failed assertion '%s' %s ");
LABEL_66:
      free(v54);
      if (__valid_fs(-1))
      {
        v55 = 2989;
      }

      else
      {
        v55 = 3072;
      }

      *v55 = -559038737;
      abort();
    }

    v16 = OSAtomicIncrement32(&exceptionSequenceNum);
    v78 = 0;
    v77 = 0;
    v17 = *(v9 + 224);
    if (v17)
    {
      v18 = *(v17 + 44);
    }

    else
    {
      v18 = -1;
    }

    v19 = setThreadIdAndInfo(v18, sStorageExceptionCallbacks, v9 + 8, 1, v16);
    v78 = __PAIR64__(v19, HIDWORD(v19));
    v77 = __PAIR64__(v20, v21);
    v22 = threadData[9 * v19 + 1] + 320 * HIDWORD(v19);
    v23 = *(v22 + 312);
    v24 = *(v22 + 224);
    if (v24)
    {
      v24(*(v22 + 288));
    }

    v76 = v78;
    v75 = v77;
    if (_setjmp(v22))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", buf, 2u);
      }

      *(v22 + 312) = v23;
      CIOnThreadCleanUpReset(v75);
      dropThreadId(HIDWORD(v76), 1, v16);
      CICleanUpReset(HIDWORD(v76), HIDWORD(v75));
      goto LABEL_54;
    }

    directoryStoreValidate(v9 + 8, v10);
    *&buf[8] = 0;
    *&v82 = 0;
    v62[0] = 0;
    v64 = 0uLL;
    *&v65 = 0;
    *buf = v10;
    directoryStoreGetDirectoryWithPath(&v64, v9 + 8, buf, v13, (a3 + 1), 0, 0);
    if (!v64)
    {
      v33 = 0;
      v27 = 0;
      goto LABEL_31;
    }

    v25 = *(v64 + 8);
    if (v25 >= 1)
    {
      v26 = *(v64 + 8);
      if (!(v25 >> 62))
      {
        v27 = 0;
        v88 = 0;
        v86 = 0u;
        v87 = 0u;
        v84 = 0u;
        v85 = 0u;
        v82 = 0u;
        v83 = 0u;
        *buf = 0u;
        LODWORD(v73) = 0;
        ItemOffset = directoryStoreTreeFindItemOffset(v9 + 8, v26, *a3, buf, &v73, 0, 0);
        if (ItemOffset)
        {
          v29 = *ItemOffset;
          v59 = ItemOffset[1];
          *ItemOffset = 0;
          ItemOffset[1] = 0;
          PageInner = _directoryStoreGetPageInner(v9 + 8, *(&v87 + 1), v62);
          *PageInner -= 16;
          v31 = v73;
          Size = directoryStorePageGetSize(PageInner);
          shiftEntriesForDelete(PageInner, v31, Size, v87);
          if (v62[0])
          {
            v27 = v59;
            dirtyStoragePage(v9 + 8, PageInner);
            v33 = v29;
            goto LABEL_31;
          }

          v56 = __si_assert_copy_extra(0);
          v51 = v56;
          v57 = "";
          if (v56)
          {
            v57 = v56;
          }

          __message_assert("%s:%u: failed assertion '%s' %s ", "FileTree.c", 1888, "flat", v57);
LABEL_61:
          free(v51);
          if (__valid_fs(-1))
          {
            v53 = 2989;
          }

          else
          {
            v53 = 3072;
          }

          *v53 = -559038737;
          abort();
        }

        v33 = 0;
LABEL_31:
        directoryStoreValidate(v9 + 8, v10);
        if (!v33)
        {
LABEL_51:
          v79 = 0;
          v48 = threadData[9 * HIDWORD(v76) + 1] + 320 * v76;
          *(v48 + 312) = v23;
          v49 = *(v48 + 232);
          if (v49)
          {
            v49(*(v48 + 288));
          }

          dropThreadId(HIDWORD(v76), 0, v16);
          goto LABEL_54;
        }

        v88 = 0;
        v86 = 0u;
        v87 = 0u;
        v84 = 0u;
        v85 = 0u;
        v82 = 0u;
        v83 = 0u;
        *buf = 0u;
        v73 = 0uLL;
        v74 = 0;
        *&v65 = 0;
        v64 = v10;
        directoryStoreGetDirectoryWithPath(&v73, v9 + 8, &v64, v14, a5, 1, buf);
        if (*(&v73 + 1))
        {
          v39 = _directoryStoreGetPageInner(v9 + 8, *(&v73 + 1), &v80);
          if (v39)
          {
            *&v73 = &v39[8 * v74 + 4];
            v40 = 0;
          }

          else
          {
            v40 = 1;
          }
        }

        else
        {
          v40 = 1;
        }

        v72 = 0;
        v41 = *(v73 + 8);
        if (v41 < 1)
        {
          v63 = 0;
          v45 = 0;
LABEL_50:
          v71 = 0;
          v69 = 0u;
          v70 = 0u;
          v67 = 0u;
          v68 = 0u;
          v65 = 0u;
          v66 = 0u;
          v64 = 0u;
          v60 = v73;
          v61 = v74;
          insertDirectoryFT(v62, v9 + 8, &v60, v45, v33, v33, v27, &v63, &v64);
          goto LABEL_51;
        }

        v42 = _directoryStoreGetPageInner(v9 + 8, v41, &v80);
        if (v80)
        {
          v43 = 0;
          v44 = directoryStorePageFindItemOffset(*(v9 + 224), v42, v33, &v72, 0);
          if (!v44)
          {
LABEL_46:
            if ((v40 & 1) == 0)
            {
              v47 = _directoryStoreGetPageInner(v9 + 8, *(&v73 + 1), &v80);
              *&v73 = &v47[8 * v74 + 4];
            }

            v63 = 0;
            if (v43)
            {
              goto LABEL_51;
            }

            v45 = v72;
            goto LABEL_50;
          }

          if (*v44 == v33)
          {
            v43 = 1;
            goto LABEL_46;
          }
        }

        else
        {
          v71 = 0;
          v69 = 0u;
          v70 = 0u;
          v67 = 0u;
          v68 = 0u;
          v65 = 0u;
          v66 = 0u;
          v64 = 0u;
          v46 = directoryStoreTreeFindItemOffset(v9 + 8, *(v73 + 8), v33, &v64, &v72, 0, 0);
          if (!v46 || *v46 == v33)
          {
            v43 = v46 != 0;
            goto LABEL_46;
          }
        }

        v54 = __si_assert_copy_extra(0);
        __message_assert("%s:%u: failed assertion '%s' %s %lld != %lld");
        goto LABEL_66;
      }

      v34 = _directoryStoreGetPageInner(v9 + 8, v26, v62);
      *buf = 0;
      v35 = directoryStorePageFindItemOffset(*(v9 + 224), v34, *a3, buf, 0);
      if (v35)
      {
        v36 = v35[1];
        v58 = *v35;
        *v35 = xmmword_1C2BFA340;
        *v34 -= 16;
        v37 = *buf;
        v38 = directoryStorePageGetSize(v34);
        shiftEntriesForDelete(v34, v37, v38, 0);
        dirtyStoragePage(v9 + 8, v34);
        v27 = v36;
        v33 = v58;
        goto LABEL_31;
      }
    }

    v27 = 0;
    v33 = 0;
    goto LABEL_31;
  }

  return result;
}

uint64_t directoryStoreMergeUpdateSet(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = setCrashStateTarget(3);
  if (storageResolvePtr(a1 + 8, 0, 1, 1))
  {
    v7 = OSAtomicIncrement32(&exceptionSequenceNum);
    v8 = *(a1 + 224);
    if (v8)
    {
      v9 = *(v8 + 44);
    }

    else
    {
      v9 = -1;
    }

    v10 = setThreadIdAndInfo(v9, sStorageExceptionCallbacks, a1 + 8, 1, v7);
    v30 = HIDWORD(v10);
    v31 = v10;
    v29 = __PAIR64__(v11, v12);
    v13 = threadData[9 * v10 + 1] + 320 * HIDWORD(v10);
    v14 = *(v13 + 312);
    v15 = *(v13 + 224);
    if (v15)
    {
      v15(*(v13 + 288));
    }

    v28 = v31;
    v27 = v30;
    v26 = v29;
    if (_setjmp(v13))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        LOWORD(buf) = 0;
        _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", &buf, 2u);
      }

      *(v13 + 312) = v14;
      CIOnThreadCleanUpReset(v26);
      dropThreadId(v28, 1, v7);
      CICleanUpReset(v28, HIDWORD(v26));
    }

    else
    {
      *a1 = 1;
      v16 = *(a1 + 4424);
      if (!v16)
      {
        v16 = 2;
        *(a1 + 4424) = 2;
      }

      if (*a2 != v16)
      {
        v20 = __si_assert_copy_extra(0);
        v21 = v20;
        v22 = "";
        if (v20)
        {
          v22 = v20;
        }

        __message_assert("%s:%u: failed assertion '%s' %s ", "FileTree.c", 2306, "rootDirectory->fileid == getStoreOID(root.directory->fileId)", v22);
        free(v21);
        if (__valid_fs(-1))
        {
          v23 = 2989;
        }

        else
        {
          v23 = 3072;
        }

        *v23 = -559038737;
        abort();
      }

      v25 = 0;
      buf = (a1 + 4424);
      mergeOne(a1 + 8, &buf, a2, a3);
      v17 = threadData[9 * v28 + 1] + 320 * v27;
      *(v17 + 312) = v14;
      v18 = *(v17 + 232);
      if (v18)
      {
        v18(*(v17 + 288));
      }

      dropThreadId(v28, 0, v7);
    }
  }

  return setCrashStateTarget(v6);
}

uint64_t mergeOne(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v48 = 0;
  v8 = *(a2 + 1);
  if (v8)
  {
    v9 = &_directoryStoreGetPageInner(a1, v8, &v48)[8 * *(a2 + 4) + 4];
    *a2 = v9;
  }

  else
  {
    v9 = *a2;
  }

  directoryStoreValidate(a1, v9);
  v10 = *(a2 + 1);
  if (*(a3 + 8))
  {
    if (v10)
    {
      v11 = &_directoryStoreGetPageInner(a1, v10, &v48)[8 * *(a2 + 4) + 4];
      *a2 = v11;
    }

    else
    {
      v11 = *a2;
    }

    directoryStoreValidate(a1, v11);
    v12 = *(a2 + 1);
    if (v12)
    {
      *a2 = &_directoryStoreGetPageInner(a1, v12, &v48)[8 * *(a2 + 4) + 4];
    }

    v47 = 0;
    v13 = **(a3 + 8);
    v37 = *a2;
    *&v38 = *(a2 + 2);
    directoryStoreEnsurePage(a1, &v37, v13, 0, &v47, &v47 + 1, 0, 0);
    v14 = *(a2 + 1);
    if (v14)
    {
      *a2 = &_directoryStoreGetPageInner(a1, v14, &v47 + 1)[8 * *(a2 + 4) + 4];
    }

    v46 = 0;
    v45 = 0uLL;
    v15 = *(a3 + 8);
    if (*(v15 + 8))
    {
      v16 = 0;
      v17 = 16;
      do
      {
        if (*(v15 + v17) >= 2)
        {
          v18 = *(a2 + 1);
          if (v18)
          {
            *a2 = &_directoryStoreGetPageInner(a1, v18, &v47 + 1)[8 * *(a2 + 4) + 4];
            v15 = *(a3 + 8);
          }

          v44 = 0;
          v42 = 0u;
          v43 = 0u;
          v40 = 0u;
          v41 = 0u;
          v38 = 0u;
          v39 = 0u;
          v37 = 0u;
          v35 = *a2;
          v36 = *(a2 + 2);
          directoryStoreGetDirectoryWithPath(&v45, a1, &v35, 0, v15 + v17, 1, &v37);
          v35 = v45;
          v36 = v46;
          mergeOne(a1, &v35, v15 + v17, a4);
          v15 = *(a3 + 8);
        }

        ++v16;
        v17 += 32;
      }

      while (v16 < *(v15 + 8));
    }

    v10 = *(a2 + 1);
  }

  if (v10)
  {
    v19 = &_directoryStoreGetPageInner(a1, v10, &v48)[8 * *(a2 + 4) + 4];
    *a2 = v19;
  }

  else
  {
    v19 = *a2;
  }

  directoryStoreValidate(a1, v19);
  v20 = *(a2 + 1);
  if (v20)
  {
    *a2 = &_directoryStoreGetPageInner(a1, v20, &v48)[8 * *(a2 + 4) + 4];
  }

  if (*(a3 + 24))
  {
    v21 = *(a4 + 16);
    v22 = *(a4 + 8) + 1;
    if (v22 >= v21)
    {
      if (!v21)
      {
        v21 = 1024;
        *(a4 + 16) = 1024;
      }

      if (v22 >= v21)
      {
        do
        {
          v23 = v22 >= 2 * v21;
          v21 *= 2;
        }

        while (v23);
        *(a4 + 16) = v21;
      }

      *a4 = malloc_type_realloc(*a4, 24 * v21, 0x10200409F4E64B8uLL);
    }

    v24 = *a2;
    v25 = *(*a2 + 8);
    if ((v25 & 0x8000000000000000) == 0)
    {
      if (v25)
      {
        v44 = 0;
        v42 = 0u;
        v43 = 0u;
        v40 = 0u;
        v41 = 0u;
        v38 = 0u;
        v39 = 0u;
        v37 = 0u;
        v45 = 0uLL;
        v46 = 0;
        v35 = *a2;
        v36 = *(a2 + 2);
        directoryStoreGetDirectoryWithPath(&v45, a1, &v35, 0, a3, 1, &v37);
        v26 = v45;
        v25 = *(v45 + 8);
        if ((v25 & 0x8000000000000000) == 0)
        {
          if (v25)
          {
            v32 = __si_assert_copy_extra(0);
            v33 = v32;
            if (v32)
            {
              v34 = v32;
            }

            else
            {
              v34 = "";
            }

            __message_assert("%s:%u: Unexpected code path %s ", "FileTree.c", 2249, v34);
            free(v33);
            MEMORY[0xBAD] = -559038737;
            abort();
          }

          v25 = (*(a4 + 24) + 1);
          *(a4 + 24) = v25;
          *(v26 + 8) = v25 | 0x8000000000000000;
        }
      }

      else
      {
        v25 = (*(a4 + 24) + 1);
        *(a4 + 24) = v25;
        *(v24 + 8) = v25 | 0x8000000000000000;
      }
    }

    v27 = *a4;
    v28 = *(a4 + 8);
    v27[6 * v28] = v25;
    *&v27[6 * v28 + 2] = a3 + 16;
    *(a4 + 8) = v28 + 1;
  }

  v29 = *(a2 + 1);
  if (v29)
  {
    v30 = &_directoryStoreGetPageInner(a1, v29, &v48)[8 * *(a2 + 4) + 4];
    *a2 = v30;
  }

  else
  {
    v30 = *a2;
  }

  return directoryStoreValidate(a1, v30);
}

void freeForwardDirectoryStore(void *a1)
{
  storageClose((a1 + 1));
  v2 = a1[550];
  if (v2)
  {
    CFRelease(v2);
  }

  free(a1);
}

BOOL dirStoreInit(uint64_t a1, _DWORD *a2, int a3, char a4, void *aBlock)
{
  v78 = *MEMORY[0x1E69E9840];
  v67 = 0;
  if (!a3)
  {
    bzero(v77, 0x400uLL);
    v14 = fd_pread(a2, v77, 0x400uLL, 64);
    if (v14 == 1024)
    {
      v60 = v77 + 8;
      v67 = storageHeaderRestore(a1 + 8, &v60);
      v15 = v67 && storageInit(a1 + 8, 0x10000, 0x40uLL, a2, 0, 1, a4, 102, aBlock);
      v67 = v15;
      if (v15)
      {
        v22 = v60;
        v23 = 0;
        v24 = 0;
        do
        {
          v25 = *v22++;
          v26 = v24;
          v27 = ((v25 & 0x7F) << v24) | v23;
          v28 = v22;
          if ((v25 & 0x80) == 0)
          {
            break;
          }

          v24 += 7;
          v23 = v27;
        }

        while (v26 != 63);
        *(a1 + 4432) = v27;
        v29 = 0;
        v30 = 0;
        do
        {
          v31 = v30;
          v32 = ((*v28 & 0x7F) << v30) | v29;
          if ((*v28 & 0x80) == 0)
          {
            break;
          }

          ++v28;
          v30 += 7;
          v29 = v32;
        }

        while (v31 != 63);
        *(a1 + 4424) = v32;
        v33 = *MEMORY[0x1E695E480];
        *(a1 + 4384) = xmmword_1C2BFA3A0;
        Mutable = CFBitVectorCreateMutable(v33, 0x2000);
        *(a1 + 4400) = Mutable;
        CFBitVectorSetCount(Mutable, 0x2000);
        if (*(a1 + 4400))
        {
          goto LABEL_42;
        }

        goto LABEL_21;
      }

      bzero(v76, 0x400uLL);
      v17 = *__error();
      v38 = _SILogForLogForCategory(6);
      if (!os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
LABEL_25:
        *__error() = v17;
        goto LABEL_42;
      }

      v50 = fd_realpath(a2, v76);
      *buf = 136315650;
      v69 = "dirStoreInit";
      v70 = 1024;
      v71 = 2368;
      v72 = 2080;
      v73 = v50;
      v19 = "%s:%d: init storage failed %s";
      v20 = v38;
      v21 = 28;
    }

    else
    {
      v16 = v14;
      bzero(v76, 0x400uLL);
      v17 = *__error();
      v18 = _SILogForLogForCategory(6);
      if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_25;
      }

      *buf = 136315906;
      v69 = "dirStoreInit";
      v70 = 1024;
      v71 = 2377;
      v72 = 2080;
      v73 = fd_realpath(a2, v76);
      v74 = 2048;
      v75 = v16;
      v19 = "%s:%d: init storage failed %s; could not read header got %ld bytes";
      v20 = v18;
      v21 = 38;
    }

    _os_log_error_impl(&dword_1C278D000, v20, OS_LOG_TYPE_ERROR, v19, buf, v21);
    goto LABEL_25;
  }

  v67 = storageInit(a1 + 8, 0x10000, 0x40uLL, a2, 1, 1, a4, 102, aBlock);
  v9 = *MEMORY[0x1E695E480];
  *(a1 + 4384) = xmmword_1C2BFA3A0;
  v10 = CFBitVectorCreateMutable(v9, 0x2000);
  *(a1 + 4400) = v10;
  CFBitVectorSetCount(v10, 0x2000);
  if (!*(a1 + 4400))
  {
LABEL_21:
    v35 = __si_assert_copy_extra(0);
    v36 = v35;
    v37 = "";
    if (v35)
    {
      v37 = v35;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "bit_vector.h", 47, "bv->_cfbv", v37);
    goto LABEL_50;
  }

  if (!v67)
  {
    goto LABEL_42;
  }

  v67 = 0;
  if (!storageResolvePtr(a1 + 8, 0, 1, 1))
  {
    goto LABEL_42;
  }

  v11 = OSAtomicIncrement32(&exceptionSequenceNum);
  v12 = *(a1 + 224);
  if (v12)
  {
    v13 = *(v12 + 44);
  }

  else
  {
    v13 = -1;
  }

  v39 = setThreadIdAndInfo(v13, sStorageExceptionCallbacks, a1 + 8, 1, v11);
  *buf = HIDWORD(v39);
  v76[0] = v39;
  LODWORD(v60) = v40;
  v66 = v41;
  v42 = threadData[9 * v39 + 1] + 320 * HIDWORD(v39);
  v43 = *(v42 + 312);
  v44 = *(v42 + 224);
  if (v44)
  {
    v44(*(v42 + 288));
  }

  v65 = v76[0];
  v64 = *buf;
  v63 = v60;
  v62 = v66;
  if (_setjmp(v42))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      LOWORD(v77[0]) = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v77, 2u);
    }

    *(v42 + 312) = v43;
    CIOnThreadCleanUpReset(v62);
    dropThreadId(v65, 1, v11);
    CICleanUpReset(v65, v63);
    goto LABEL_42;
  }

  memset(v77, 0, 192);
  v61 = 0;
  v45 = storageAllocOffset(a1 + 8, 0x400u, v77, &v61);
  if (v61)
  {
    dirtyStorageOffsets(a1 + 8, v77, v61);
  }

  if (v67)
  {
    v54 = __si_assert_copy_extra(0);
    v55 = v54;
    v56 = "";
    if (v54)
    {
      v56 = v54;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "FileTree.c", 2340, "!result", v56);
    free(v55);
    if (__valid_fs(-1))
    {
      v57 = 2989;
    }

    else
    {
      v57 = 3072;
    }

    *v57 = -559038737;
    abort();
  }

  if (v45)
  {
    if (v45 == 64)
    {
      v46 = storageResolvePtr(a1 + 8, 0x40uLL, 1024, 1);
      bzero(v46, 0x400uLL);
      *(v46 + 2) = 4;
      dirtyStoragePage(a1 + 8, v46);
      *(v46 + 4) = 0;
      goto LABEL_39;
    }

    v58 = __si_assert_copy_extra(0);
    v36 = v58;
    v59 = "";
    if (v58)
    {
      v59 = v58;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "FileTree.c", 2342, "realOffset==(64)", v59);
LABEL_50:
    free(v36);
    if (__valid_fs(-1))
    {
      v53 = 2989;
    }

    else
    {
      v53 = 3072;
    }

    *v53 = -559038737;
    abort();
  }

LABEL_39:
  v67 = 1;
  v47 = threadData[9 * v65 + 1] + 320 * v64;
  *(v47 + 312) = v43;
  v48 = *(v47 + 232);
  if (v48)
  {
    v48(*(v47 + 288));
  }

  dropThreadId(v65, 0, v11);
LABEL_42:
  *(a1 + 4408) = 1;
  if (v67 && !*(a1 + 224))
  {
    v51 = __si_assert_copy_extra(0);
    v36 = v51;
    v52 = "";
    if (v51)
    {
      v52 = v51;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "FileTree.c", 2382, "storageFdPtr(&dirStore->store)!=0", v52);
    goto LABEL_50;
  }

  return v67;
}

void *flushForwardStore(void *result, uint64_t a2)
{
  v2 = result;
  if (result[30] == result[31])
  {
    *result = 0;
  }

  else if (*result)
  {
    v4 = setCrashStateTarget(3);
    if (storageResolvePtr((v2 + 1), 0, 1, 1))
    {
      v5 = OSAtomicIncrement32(&exceptionSequenceNum);
      v6 = v2[28];
      if (v6)
      {
        v7 = *(v6 + 44);
      }

      else
      {
        v7 = -1;
      }

      v8 = setThreadIdAndInfo(v7, sStorageExceptionCallbacks, (v2 + 1), 1, v5);
      v24 = HIDWORD(v8);
      v25 = v8;
      v23 = __PAIR64__(v9, v10);
      v11 = threadData[9 * v8 + 1] + 320 * HIDWORD(v8);
      v12 = *(v11 + 312);
      v13 = *(v11 + 224);
      if (v13)
      {
        v13(*(v11 + 288));
      }

      v22 = v25;
      v21 = v24;
      v20 = v23;
      if (_setjmp(v11))
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          LOWORD(v19) = 0;
          _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", &v19, 2u);
        }

        *(v11 + 312) = v12;
        CIOnThreadCleanUpReset(v20);
        dropThreadId(v22, 1, v5);
        CICleanUpReset(v22, HIDWORD(v20));
      }

      else
      {
        *storageResolvePtr((v2 + 1), 0, 8, 1) = a2;
        v14 = storageResolvePtr((v2 + 1), 0x40uLL, 1024, 1);
        v19 = v14 + 8;
        storageHeaderStore((v2 + 1), &v19);
        v15 = v19;
        v16 = writeVInt64(v19, 0, v2[554]);
        writeVInt64(v15, v16, v2[553]);
        dirtyStoragePage((v2 + 1), v14);
        storageSyncPages((v2 + 1), (v2 + 548), 0x20000uLL);
        v17 = threadData[9 * v22 + 1] + 320 * v21;
        *(v17 + 312) = v12;
        v18 = *(v17 + 232);
        if (v18)
        {
          v18(*(v17 + 288));
        }

        dropThreadId(v22, 0, v5);
      }
    }

    return setCrashStateTarget(v4);
  }

  return result;
}

void bit_vector_init_4656(uint64_t a1)
{
  if (!a1)
  {
    v4 = __si_assert_copy_extra(0);
    v5 = v4;
    v6 = "";
    if (v4)
    {
      v6 = v4;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "bit_vector.h", 41, "bv", v6);
    free(v5);
    if (__valid_fs(-1))
    {
      v7 = 2989;
    }

    else
    {
      v7 = 3072;
    }

    *v7 = -559038737;
    abort();
  }

  v2 = *MEMORY[0x1E695E480];
  *a1 = xmmword_1C2BFA3A0;
  Mutable = CFBitVectorCreateMutable(v2, 0x2000);
  *(a1 + 16) = Mutable;
  CFBitVectorSetCount(Mutable, 0x2000);
  if (!*(a1 + 16))
  {
    v8 = __si_assert_copy_extra(0);
    v9 = v8;
    v10 = "";
    if (v8)
    {
      v10 = v8;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "bit_vector.h", 47, "bv->_cfbv", v10);
    free(v9);
    if (__valid_fs(-1))
    {
      v11 = 2989;
    }

    else
    {
      v11 = 3072;
    }

    *v11 = -559038737;
    abort();
  }
}

void *createForwardStore(int a1, const char *a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v6 = malloc_type_calloc(1uLL, 0x1168uLL, 0x10A0040377E5B1DuLL);
  bzero(v14, 0x400uLL);
  __sprintf_chk(v14, 0, 0x400uLL, "%s%s", a2, "directoryStoreFile");
  v7 = fd_create_protected(a1, v14, 1538, 3u);
  if (dirStoreInit(v6, v7, 1, 0, a3))
  {
    v8 = *__error();
    v9 = _SILogForLogForCategory(0);
    v10 = 2 * (gSILogLevels[0] < 4);
    if (os_log_type_enabled(v9, v10))
    {
      *buf = 136315138;
      v13 = v14;
      _os_log_impl(&dword_1C278D000, v9, v10, "createForwardStore:%s", buf, 0xCu);
    }

    *__error() = v8;
    v6[554] = 0;
    v6[553] = 2;
    flushForwardStore(v6, 0);
    *v6 = 1;
  }

  else
  {
    freeForwardDirectoryStore(v6);
    return 0;
  }

  return v6;
}

uint64_t recoverForwardStore(uint64_t a1, const char *a2, _DWORD *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  bzero(v13, 0x400uLL);
  __sprintf_chk(v13, 0, 0x400uLL, "%s%s", a2, "directoryStoreFile");
  bzero(v12, 0x400uLL);
  __sprintf_chk(v12, 0, 0x400uLL, "%s%s", a2, "directoryStoreFile.shadow");
  v6 = *__error();
  v7 = _SILogForLogForCategory(0);
  v8 = 2 * (gSILogLevels[0] < 4);
  if (os_log_type_enabled(v7, v8))
  {
    *buf = 136315138;
    v11 = v13;
    _os_log_impl(&dword_1C278D000, v7, v8, "recoverForwardStore:%s", buf, 0xCu);
  }

  *__error() = v6;
  return copyFileFallback(a1, v12, a1, v13, a3, 1, 1);
}

void *openForwardStore(int a1, const char *a2, int a3, int a4, int a5, void *a6)
{
  v170 = *MEMORY[0x1E69E9840];
  v158 = malloc_type_calloc(1uLL, 0x1168uLL, 0x10A0040377E5B1DuLL);
  bzero(v167, 0x400uLL);
  v11 = "directoryStoreFile";
  if (a5)
  {
    v11 = "directoryStoreFile.shadow";
  }

  v12 = a5 | a4;
  v13 = a5 | a4;
  __sprintf_chk(v167, 0, 0x400uLL, "%s%s", a2, v11);
  v14 = *__error();
  v15 = _SILogForLogForCategory(0);
  v16 = 2 * (gSILogLevels[0] < 4);
  if (os_log_type_enabled(v15, v16))
  {
    *buf = 136315138;
    *&buf[4] = v167;
    _os_log_impl(&dword_1C278D000, v15, v16, "openForwardStore:%s", buf, 0xCu);
  }

  *__error() = v14;
  if (v12)
  {
    v17 = 0;
  }

  else
  {
    v17 = 2;
  }

  v18 = fd_create_protected(a1, v167, v17, 3u);
  v19 = v158;
  if (dirStoreInit(v158, v18, 0, v13, a6))
  {
    v20 = v158;
    if ((v13 & 1) == 0)
    {
      v165 = 0;
      if (storageResolvePtr((v158 + 1), 0, 1, 1))
      {
        v21 = OSAtomicIncrement32(&exceptionSequenceNum);
        *buf = 0;
        v169[0] = 0;
        LODWORD(v166) = 0;
        v164 = 0;
        v22 = v158[28];
        if (v22)
        {
          v23 = *(v22 + 44);
        }

        else
        {
          v23 = -1;
        }

        v27 = setThreadIdAndInfo(v23, sStorageExceptionCallbacks, (v158 + 1), 1, v21);
        v169[0] = HIDWORD(v27);
        *buf = v27;
        LODWORD(v166) = v28;
        v164 = v29;
        v30 = threadData[9 * v27 + 1] + 320 * HIDWORD(v27);
        v31 = *(v30 + 312);
        v32 = *(v30 + 224);
        if (v32)
        {
          v32(*(v30 + 288));
        }

        v163 = *buf;
        v162 = v169[0];
        v161 = v166;
        v160 = v164;
        if (_setjmp(v30))
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *v159 = 0;
            _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v159, 2u);
          }

          *(v30 + 312) = v31;
          CIOnThreadCleanUpReset(v160);
          dropThreadId(v163, 1, v21);
          CICleanUpReset(v163, v161);
        }

        else
        {
          for (i = 0; i != 24; ++i)
          {
            freeListVerify((v158 + 1), i);
          }

          v165 = 1;
          v34 = threadData[9 * v163 + 1] + 320 * v162;
          *(v34 + 312) = v31;
          v35 = *(v34 + 232);
          if (v35)
          {
            v35(*(v34 + 288));
          }

          dropThreadId(v163, 0, v21);
        }
      }

      if ((v165 & 1) == 0)
      {
        v24 = *__error();
        v25 = _SILogForLogForCategory(10);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "openForwardStore";
          *&buf[12] = 1024;
          *&buf[14] = 2511;
          goto LABEL_43;
        }

        goto LABEL_14;
      }
    }

    v158[553] = 2;
    if (a3)
    {
      v36 = v158[554];
      v37 = v36;
      for (j = 2; j != 26; ++j)
      {
        if (!freeListVerify((v158 + 1), j - 2))
        {
          v158[j] = 0;
        }
      }

      if (*(v158 + 1102) && v36 > 0)
      {
        if ((v36 & 0x3FFFFFFFFFFFFFFFuLL) >= v158[30])
        {
          goto LABEL_168;
        }

        v39 = malloc_type_zone_malloc(queryZone, 0x300uLL, 0xA4971684uLL);
        if (!v39)
        {
          _log_fault_for_malloc_failure();
        }

        memset(buf, 0, 24);
        pqinit_offset_ptr(buf);
        v40 = v36 & 0x3F;
        v41 = *&buf[16];
        if (*&buf[16] + 2 >= *&buf[8])
        {
          v43 = 4;
          if (*&buf[8] >= 4)
          {
            v43 = 2 * *&buf[8];
          }

          *&buf[8] = v43;
          v44 = 16 * v43;
          if (*buf)
          {
            v45 = malloc_type_zone_realloc(queryZone, *buf, v44 + 32, 0xA1A7ADA0uLL);
          }

          else
          {
            v45 = malloc_type_zone_malloc(queryZone, v44 + 32, 0x566E289CuLL);
          }

          v46 = v45;
          if (!v45)
          {
            _log_fault_for_malloc_failure();
          }

          *buf = v46;
          *v46 = 0;
          v46[1] = 0;
          v42 = v46;
        }

        else
        {
          v42 = *buf;
        }

        *&buf[16] = v41 + 1;
        v47 = &v42[2 * v41];
        *v47 = v37;
        v47[1] = 0;
        if (v41 >= 2)
        {
          v48 = v41;
          do
          {
            v49 = v48;
            v50 = &v42[2 * v48];
            v51 = &v42[2 * (v49 >> 1)];
            if ((*v50 & 0x3FFFFFFFFFFFFFFFuLL) > (*v51 & 0x3FFFFFFFFFFFFFFFuLL))
            {
              break;
            }

            *v169 = *v50;
            *v50 = *v51;
            *v51 = *v169;
            v48 = v49 >> 1;
          }

          while (v49 > 3);
        }

        if (v40)
        {
          free(*buf);
          free(v39);
          goto LABEL_168;
        }

        v52 = *&buf[16];
        v53 = 32;
        v54 = 0;
        v55 = v39;
        while (1)
        {
          v56 = v55;
          v57 = v54;
          if (v52 == 1)
          {
            v58 = 0;
            v52 = 1;
            goto LABEL_77;
          }

          v59 = *buf;
          v58 = *(*buf + 16);
          v60 = *(*buf + 16 * v52 - 16);
          v61 = *&buf[8] >> 1;
          v62 = *(*buf + 16 * v52 - 16);
          *(*buf + 16) = v60;
          *&buf[16] = v52 - 1;
          v63 = v62 & 0x3FFFFFFFFFFFFFFFLL;
          v64 = 3;
          v65 = 2;
          v66 = 1;
          while (1)
          {
            v67 = v64;
            v68 = *(v59 + 16 * v65);
            if (v64 >= v52)
            {
              v69 = xmmword_1C2BFA360;
              if (v65 >= v52)
              {
                goto LABEL_76;
              }
            }

            else
            {
              v69 = *(v59 + 16 * v64);
            }

            v70 = v68.i64[0] & 0x3FFFFFFFFFFFFFFFLL;
            v71 = v69.i64[0] & 0x3FFFFFFFFFFFFFFFLL;
            if ((v68.i64[0] & 0x3FFFFFFFFFFFFFFFuLL) < v63)
            {
              _CF = v71 >= v70;
              v72 = v71 < v70;
              if (_CF)
              {
                v67 = v65;
              }

              v73 = vdup_n_s32(v72);
              v74.i64[0] = v73.u32[0];
              v74.i64[1] = v73.u32[1];
              v75 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v74, 0x3FuLL)), v69, v68);
              goto LABEL_69;
            }

            v75 = v69;
            if (v71 >= v63)
            {
              break;
            }

LABEL_69:
            _X15 = v59 + 32 * v67;
            __asm { PRFM            #1, [X15] }

            if (v67 != v66)
            {
              v65 = 2 * v67;
              v64 = (2 * v67) | 1;
              *(v59 + 16 * v67) = v60;
              *(v59 + 16 * v66) = v75;
              v66 = v67;
              if (v67 < v61)
              {
                continue;
              }
            }

            goto LABEL_76;
          }

          _X8 = v59 + 32 * v66;
          __asm { PRFM            #1, [X8] }

LABEL_76:
          --v52;
LABEL_77:
          v83 = (v58 & 0x3F) == 0;
          LOBYTE(v166) = 0;
          v157 = v58;
          PageInner = _directoryStoreGetPageInner((v20 + 1), v58, &v166);
          v85 = PageInner;
          if (v166 == 1)
          {
            Size = directoryStorePageGetSize(PageInner);
            v87 = *buf;
            v88 = *&buf[8];
            if (Size)
            {
              v89 = 0;
              v90 = v85 + 4;
              v91 = v53;
              v92 = v57;
              v93 = v56;
              v94 = 0;
              v95 = v52;
              v96 = *&buf[8];
              v97 = *buf;
              v152 = v90;
              v153 = Size;
              do
              {
                v98 = v96;
                v99 = v92;
                v100 = v91;
                v101 = &v90[8 * v89];
                if (*v101 >= 2 && *(v158 + 1102))
                {
                  v102 = v101[1];
                  if (v102 < 0)
                  {
                    v108 = v102 & 0x7FFFFFFFFFFFFFFFLL;
                    v109 = v93;
                    if (v92 >= 1)
                    {
                      do
                      {
                        v110 = *v109;
                        v109 += 3;
                        LOBYTE(v83) = v83 & (v110 != v108);
                        --v92;
                      }

                      while (v92);
                    }

                    if (v99 >= v100)
                    {
                      if (v100)
                      {
                        v100 *= 2;
                      }

                      else
                      {
                        v100 = 4;
                      }

                      v111 = (v93 ? malloc_type_zone_realloc(queryZone, v93, 24 * v100, 0xA1A7ADA0uLL) : malloc_type_zone_malloc(queryZone, 24 * v100, 0x566E289CuLL));
                      v93 = v111;
                      v90 = v152;
                      Size = v153;
                      if (!v111)
                      {
                        _log_fault_for_malloc_failure();
                        v90 = v152;
                        Size = v153;
                      }
                    }

                    v117 = &v93[3 * v99];
                    *v117 = v108;
                    v117[1] = v157;
                    v117[2] = v89;
                    ++v99;
                  }

                  else if (v102)
                  {
                    v103 = v102;
                    _CF = (v102 & 0x3F) != 0 || (v102 & 0x3FFFFFFFFFFFFFFFuLL) >= v158[30];
                    v105 = !_CF;
                    if (v95 + 2 >= v96)
                    {
                      if (v96 >= 4)
                      {
                        v98 = 2 * v96;
                      }

                      else
                      {
                        v98 = 4;
                      }

                      v106 = 16 * v98;
                      if (v97)
                      {
                        v107 = malloc_type_zone_realloc(queryZone, v97, v106 + 32, 0xA1A7ADA0uLL);
                      }

                      else
                      {
                        v107 = malloc_type_zone_malloc(queryZone, v106 + 32, 0x566E289CuLL);
                      }

                      v97 = v107;
                      v90 = v152;
                      Size = v153;
                      if (!v107)
                      {
                        _log_fault_for_malloc_failure();
                        v90 = v152;
                        Size = v153;
                      }

                      *v97 = 0;
                      v97[1] = 0;
                    }

                    LOBYTE(v83) = v83 & v105;
                    v112 = v95 + 1;
                    v113 = &v97[2 * v95];
                    *v113 = v103;
                    v113[1] = 0;
                    if (v95 >= 2)
                    {
                      do
                      {
                        v114 = v95;
                        v115 = &v97[2 * v95];
                        v95 = v95 >> 1;
                        v116 = &v97[2 * v95];
                        if ((*v115 & 0x3FFFFFFFFFFFFFFFuLL) > (*v116 & 0x3FFFFFFFFFFFFFFFuLL))
                        {
                          break;
                        }

                        *v169 = *v115;
                        *v115 = *v116;
                        *v116 = *v169;
                      }

                      while (v114 > 3);
                    }

                    v95 = v112;
                  }
                }

                v96 = v98;
                v92 = v99;
                v53 = v100;
                v91 = v100;
                v57 = v92;
                v118 = v93;
                LOBYTE(v87) = v83;
                v89 = ++v94;
                v52 = v95;
                v88 = v96;
                v119 = v97;
              }

              while (Size > v94);
              goto LABEL_145;
            }

LABEL_144:
            v118 = v56;
            v119 = v87;
            LOBYTE(v87) = v83;
            goto LABEL_145;
          }

          v120 = directoryTreePageGetSize(*PageInner, *(PageInner + 2));
          v87 = *buf;
          v88 = *&buf[8];
          if (!v120)
          {
            goto LABEL_144;
          }

          v154 = v57;
          v155 = v56;
          v121 = v85 + 4;
          v122 = 0;
          v123 = v83;
          v124 = 0;
          v125 = v52;
          v126 = *&buf[8];
          v127 = *buf;
          do
          {
            v128 = v124;
            v129 = *&v121[4 * v122];
            if (v129)
            {
              v131 = (v129 & 0x3F) == 0 && (v129 & 0x3FFFFFFFFFFFFFFFuLL) < v19[30];
              if (v125 + 2 >= v126)
              {
                if (v126 >= 4)
                {
                  v134 = 2 * v126;
                }

                else
                {
                  v134 = 4;
                }

                v135 = 16 * v134;
                if (v127)
                {
                  v136 = malloc_type_zone_realloc(queryZone, v127, v135 + 32, 0xA1A7ADA0uLL);
                }

                else
                {
                  v136 = malloc_type_zone_malloc(queryZone, v135 + 32, 0x566E289CuLL);
                }

                v137 = v136;
                if (!v136)
                {
                  _log_fault_for_malloc_failure();
                }

                *v137 = 0;
                v137[1] = 0;
                v132 = v137;
                v88 = v134;
                v19 = v158;
              }

              else
              {
                v132 = v127;
                v88 = v126;
              }

              v87 = (v123 & v131);
              v133 = v125 + 1;
              v138 = &v132[2 * v125];
              *v138 = v129;
              v138[1] = 0;
              if (v125 >= 2)
              {
                do
                {
                  v139 = &v132[2 * v125];
                  v140 = &v132[2 * (v125 >> 1)];
                  if ((*v139 & 0x3FFFFFFFFFFFFFFFuLL) > (*v140 & 0x3FFFFFFFFFFFFFFFuLL))
                  {
                    break;
                  }

                  v141 = v125;
                  *v169 = *v139;
                  *v139 = *v140;
                  *v140 = *v169;
                  v125 = v125 >> 1;
                }

                while (v141 > 3);
              }
            }

            else
            {
              v132 = v127;
              v88 = v126;
              v133 = v125;
              v87 = v123;
            }

            v122 = (v128 + 1);
            v123 = v87;
            v124 = v128 + 1;
            v125 = v133;
            v126 = v88;
            v127 = v132;
          }

          while (v120 > v122);
          v57 = v154;
          v118 = v155;
          v52 = v133;
          v119 = v132;
LABEL_145:
          v142 = v87;
          *&buf[8] = v88;
          *&buf[16] = v52;
          *buf = v119;
          v20 = v158;
          v19 = v158;
          if (v52 != 1)
          {
            v54 = v57;
            v55 = v118;
            if (v87)
            {
              continue;
            }
          }

          free(v119);
          if (v57 >= 2)
          {
            if (qos_class_self() >= 0x12 && v57 > 2047)
            {
              v143 = OSAtomicDequeue(&qsort_cached_allocations_4560, 0);
              if (!v143)
              {
                v143 = malloc_type_malloc(0x40uLL, 0x102004053A8A26AuLL);
              }

              v144 = dispatch_group_create();
              v143[3] = v144;
              v143[4] = 0;
              v143[1] = 0;
              v143[2] = v57 - 1;
              *v143 = v118;
              v145 = thread_count_4561;
              if (!thread_count_4561)
              {
                *v169 = 0x1900000006;
                v166 = 4;
                sysctl(v169, 2u, &thread_count_4561, &v166, 0, 0);
                v145 = thread_count_4561;
              }

              *(v143 + 14) = v145;
              v143[5] = sqrt(v57) / 2;
              if (!v145)
              {
                *v169 = 0x1900000006;
                v166 = 4;
                sysctl(v169, 2u, &thread_count_4561, &v166, 0, 0);
                v145 = thread_count_4561;
              }

              v146 = v57 / (2 * v145);
              if (v146 <= 0x8000)
              {
                v146 = 0x8000;
              }

              else if (!v145)
              {
                *v169 = 0x1900000006;
                v166 = 4;
                sysctl(v169, 2u, &thread_count_4561, &v166, 0, 0);
                v146 = v57 / (2 * thread_count_4561);
              }

              v143[6] = v146;
              if (v143[5] <= 2047)
              {
                v143[5] = 2048;
              }

              _qsort_big_offset_triple(v143);
              dispatch_group_wait(v144, 0xFFFFFFFFFFFFFFFFLL);
              dispatch_release(v144);
            }

            else
            {
              _qsort_offset_triple(v118, 0, v57 - 1);
            }

            v147 = v57 - 1;
            v148 = v118;
            v149 = v142;
            do
            {
              v150 = *v148;
              v151 = v148[3];
              v148 += 3;
              v149 &= v151 != v150;
              v142 = v149;
              --v147;
            }

            while (v147);
          }

          free(v118);
          if (v142)
          {
            return v19;
          }

LABEL_168:
          v24 = *__error();
          v25 = _SILogForLogForCategory(10);
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "openForwardStore";
            *&buf[12] = 1024;
            *&buf[14] = 2526;
LABEL_43:
            _os_log_error_impl(&dword_1C278D000, v25, OS_LOG_TYPE_ERROR, "%s:%d: Failed to open dir store", buf, 0x12u);
          }

          goto LABEL_14;
        }
      }
    }

    return v19;
  }

  else
  {
    v24 = *__error();
    v25 = _SILogForLogForCategory(10);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "openForwardStore";
      *&buf[12] = 1024;
      *&buf[14] = 2483;
      goto LABEL_43;
    }

LABEL_14:
    *__error() = v24;
    freeForwardDirectoryStore(v19);
    return 0;
  }
}

void shadowForwardStore(uint64_t a1, int a2, _DWORD *a3)
{
  v4 = a2;
  v91 = *MEMORY[0x1E69E9840];
  if ((*a1 & 1) != 0 || a2)
  {
    memset(v90, 0, 255);
    memset(v89, 0, 255);
    v6 = fd_name(*(a1 + 224), v90, 0xFFuLL);
    if (v6)
    {
      v7 = v6;
      __strlcpy_chk(v89, v6, 255, 255);
      strlcat(v7, ".shadow", 0xFFuLL);
      v8 = *(a1 + 224);
      if (v8)
      {
        v9 = *(v8 + 44);
      }

      else
      {
        v9 = 0xFFFFFFFFLL;
      }

      if (isRegisteredForCloning(v9) && (copyFileFallback(v9, v89, v9, v7, a3, 0, 1) & 1) != 0)
      {
        bit_vector_set_bits_4698((a1 + 4384), 0, *(a1 + 4384));
        return;
      }

      v12 = *(a1 + 240);
      directoryStoreValidate(a1 + 8, a1 + 4424);
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
      v66 = 0u;
      memset(v65, 0, sizeof(v65));
      v55 = 0;
      v56 = 0;
      sibling_protected = fd_create_sibling_protected(*(a1 + 224), v7, 514, 0);
      fd_no_cache(sibling_protected);
      if (!sibling_protected)
      {
        v19 = *__error();
        v20 = *__error();
        v21 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315906;
          v58 = "shadowForwardStore";
          v59 = 1024;
          v60 = 2607;
          v61 = 1024;
          v62 = v19;
          v63 = 2080;
          v64 = v7;
          _os_log_error_impl(&dword_1C278D000, v21, OS_LOG_TYPE_ERROR, "%s:%d: open err: %d, %s", buf, 0x22u);
        }

        v16 = 0;
        goto LABEL_66;
      }

      v14 = (v12 + 0x1FFFF) >> 17;
      if ((v4 & 1) == 0 && v14 >= *(a1 + 4384))
      {
        v14 = *(a1 + 4384);
      }

      v15 = malloc_type_malloc(0x20000uLL, 0x47A6DE18uLL);
      if (!v15)
      {
        v45 = __si_assert_copy_extra(0);
        v46 = v45;
        v47 = "";
        if (v45)
        {
          v47 = v45;
        }

        __message_assert("%s:%u: failed assertion '%s' %s ", "FileTree.c", 2617, "readBuffer", v47);
        free(v46);
        if (__valid_fs(-1))
        {
          v48 = 2989;
        }

        else
        {
          v48 = 3072;
        }

        *v48 = -559038737;
        abort();
      }

      v16 = v15;
      v17 = *(a1 + 240);
      v18 = *(a1 + 224);
      if (v17 >> 17)
      {
        v22 = _fd_acquire_fd(v18, &v55);
        if (v22 != -1)
        {
          LODWORD(v23) = v22;
          v24 = _fd_acquire_fd(sibling_protected, &v56);
          if (v24 != -1)
          {
            v54 = v24;
            if (v14 < 1)
            {
LABEL_57:
              _fd_release_fd(*(a1 + 224), v23, 0, v55);
              _fd_release_fd(sibling_protected, v54, 0, v56);
              goto LABEL_58;
            }

            __fd = v23;
            v25 = 0;
            v26 = 0;
            while (v26 != 100)
            {
LABEL_41:
              if ((v4 & 1) != 0 || *(a1 + 4384) > v25 && CFBitVectorGetBitAtIndex(*(a1 + 4400), v25))
              {
                *&v65[4 * v26++] = v25;
              }

              if (++v25 == v14)
              {
                v23 = __fd;
                if (v26)
                {
                  v29 = v26;
                  v30 = v65;
                  while (1)
                  {
                    if (*a3 == 1 || *a3 == -1 && (v4 & 1) != 0)
                    {
                      goto LABEL_74;
                    }

                    v31 = v23;
                    v32 = *v30;
                    if (prot_pread(v31, v16, 0x20000uLL, v32 << 17) == -1)
                    {
                      break;
                    }

                    v33 = v54;
                    if (*a3 == 1 || *a3 == -1 && (v4 & 1) != 0)
                    {
                      LODWORD(v23) = __fd;
                      goto LABEL_69;
                    }

                    if (prot_pwrite_guarded(v54, &v56, v16, 0x20000uLL, v32 << 17) == -1)
                    {
                      v52 = *__error();
                      v20 = *__error();
                      v50 = _SILogForLogForCategory(0);
                      if (!os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
                      {
                        goto LABEL_89;
                      }

                      *buf = 136315650;
                      v58 = "shadowForwardStore";
                      v59 = 1024;
                      v60 = 2699;
                      v61 = 1024;
                      v62 = v52;
                      v51 = "%s:%d: pwrite err: %d";
                      goto LABEL_93;
                    }

                    bit_vector_internal_touch_for_set_4691((a1 + 4384), v32);
                    CFBitVectorSetBitAtIndex(*(a1 + 4400), v32, 0);
                    v30 += 4;
                    --v29;
                    v23 = __fd;
                    if (!v29)
                    {
                      goto LABEL_57;
                    }
                  }

                  v49 = *__error();
                  v20 = *__error();
                  v50 = _SILogForLogForCategory(0);
                  if (!os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
                  {
LABEL_89:
                    LODWORD(v23) = __fd;
                    goto LABEL_80;
                  }

                  *buf = 136315650;
                  v58 = "shadowForwardStore";
                  v59 = 1024;
                  v60 = 2690;
                  v61 = 1024;
                  v62 = v49;
                  v51 = "%s:%d: pread err: %d";
LABEL_93:
                  _os_log_error_impl(&dword_1C278D000, v50, OS_LOG_TYPE_ERROR, v51, buf, 0x18u);
                  goto LABEL_89;
                }

                goto LABEL_57;
              }
            }

            v27 = 0;
            while (*a3 != 1 && (*a3 != -1 || (v4 & 1) == 0))
            {
              v28 = *&v65[v27];
              if (prot_pread(__fd, v16, 0x20000uLL, v28 << 17) == -1)
              {
                v41 = *__error();
                v20 = *__error();
                v42 = _SILogForLogForCategory(0);
                v33 = v54;
                if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
                {
                  *buf = 136315650;
                  v58 = "shadowForwardStore";
                  v59 = 1024;
                  v60 = 2653;
                  v61 = 1024;
                  v62 = v41;
                  _os_log_error_impl(&dword_1C278D000, v42, OS_LOG_TYPE_ERROR, "%s:%d: read err: %d", buf, 0x18u);
                }

                LODWORD(v23) = __fd;
                goto LABEL_68;
              }

              if (*a3 == 1 || *a3 == -1 && (v4 & 1) != 0)
              {
                break;
              }

              if (prot_pwrite_guarded(v54, &v56, v16, 0x20000uLL, v28 << 17) == -1)
              {
                v43 = *__error();
                v20 = *__error();
                v44 = _SILogForLogForCategory(0);
                LODWORD(v23) = __fd;
                if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
                {
                  *buf = 136315650;
                  v58 = "shadowForwardStore";
                  v59 = 1024;
                  v60 = 2662;
                  v61 = 1024;
                  v62 = v43;
                  _os_log_error_impl(&dword_1C278D000, v44, OS_LOG_TYPE_ERROR, "%s:%d: pwrite err: %d", buf, 0x18u);
                }

LABEL_80:
                v33 = v54;
                goto LABEL_68;
              }

              bit_vector_internal_touch_for_set_4691((a1 + 4384), v28);
              CFBitVectorSetBitAtIndex(*(a1 + 4400), v28, 0);
              v27 += 4;
              if (v27 == 400)
              {
                v26 = 0;
                goto LABEL_41;
              }
            }

            LODWORD(v23) = __fd;
LABEL_74:
            v33 = v54;
            goto LABEL_69;
          }

          v39 = *__error();
          v20 = *__error();
          v40 = _SILogForLogForCategory(0);
          if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315650;
            v58 = "shadowForwardStore";
            v59 = 1024;
            v60 = 2640;
            v61 = 1024;
            v62 = v39;
            _os_log_error_impl(&dword_1C278D000, v40, OS_LOG_TYPE_ERROR, "%s:%d: fd_open err: %d", buf, 0x18u);
          }

LABEL_67:
          v33 = -1;
LABEL_68:
          *__error() = v20;
LABEL_69:
          free(v16);
          _fd_release_fd(*(a1 + 224), v23, 0, v55);
          _fd_release_fd(sibling_protected, v33, 0, v56);
          fd_release(sibling_protected);
          return;
        }

        v37 = *__error();
        v20 = *__error();
        v35 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          v58 = "shadowForwardStore";
          v59 = 1024;
          v60 = 2634;
          v61 = 1024;
          v62 = v37;
          v36 = "%s:%d: fd_open err: %d";
          goto LABEL_65;
        }
      }

      else
      {
        if (fd_pread(v18, v16, v17, 0) != -1)
        {
          if (fd_pwrite(sibling_protected, v16, *(a1 + 240), 0) != -1)
          {
            bit_vector_internal_touch_for_set_4691((a1 + 4384), 0);
            CFBitVectorSetBitAtIndex(*(a1 + 4400), 0, 0);
LABEL_58:
            fd_release(sibling_protected);
            free(v16);
            return;
          }

          v38 = *__error();
          v20 = *__error();
          v35 = _SILogForLogForCategory(0);
          if (!os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_66;
          }

          *buf = 136315650;
          v58 = "shadowForwardStore";
          v59 = 1024;
          v60 = 2626;
          v61 = 1024;
          v62 = v38;
          v36 = "%s:%d: pwrite err: %d";
          goto LABEL_65;
        }

        v34 = *__error();
        v20 = *__error();
        v35 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          v58 = "shadowForwardStore";
          v59 = 1024;
          v60 = 2621;
          v61 = 1024;
          v62 = v34;
          v36 = "%s:%d: read err: %d";
LABEL_65:
          _os_log_error_impl(&dword_1C278D000, v35, OS_LOG_TYPE_ERROR, v36, buf, 0x18u);
        }
      }

LABEL_66:
      LODWORD(v23) = -1;
      goto LABEL_67;
    }

    v10 = *__error();
    v11 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *v65 = 136315394;
      *&v65[4] = "shadowForwardStore";
      *&v65[12] = 1024;
      *&v65[14] = 2572;
      _os_log_error_impl(&dword_1C278D000, v11, OS_LOG_TYPE_ERROR, "%s:%d: no path for shadow", v65, 0x12u);
    }

    *__error() = v10;
  }
}

void bit_vector_internal_touch_for_set_4691(CFIndex *a1, CFIndex a2)
{
  v4 = a1[1];
  if (v4 <= a2)
  {
    if (v4)
    {
      v5 = a1[1];
    }

    else
    {
      v5 = 32;
    }

    while (1)
    {
      v5 *= 2;
      if (v5 > a2)
      {
        break;
      }

      if (v5 <= v4)
      {
        v6 = __si_assert_copy_extra(0);
        v7 = v6;
        v8 = "";
        if (v6)
        {
          v8 = v6;
        }

        __message_assert("%s:%u: failed assertion '%s' %s ", "bit_vector.h", 124, "newCapacity > bv->capacity", v8);
        free(v7);
        if (__valid_fs(-1))
        {
          v9 = 2989;
        }

        else
        {
          v9 = 3072;
        }

        *v9 = -559038737;
        abort();
      }
    }

    v10 = a1[2];
    v11 = *MEMORY[0x1E695E480];
    if (v10)
    {
      MutableCopy = CFBitVectorCreateMutableCopy(v11, v5, v10);
    }

    else
    {
      MutableCopy = CFBitVectorCreateMutable(v11, v5);
    }

    v13 = MutableCopy;
    if (!MutableCopy)
    {
      v15 = __si_assert_copy_extra(0);
      v16 = v15;
      v17 = "";
      if (v15)
      {
        v17 = v15;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "bit_vector.h", 128, "newBV", v17);
      free(v16);
      if (__valid_fs(-1))
      {
        v18 = 2989;
      }

      else
      {
        v18 = 3072;
      }

      *v18 = -559038737;
      abort();
    }

    CFBitVectorSetCount(MutableCopy, v5);
    v14 = a1[2];
    if (v14)
    {
      CFRelease(v14);
    }

    a1[1] = v5;
    a1[2] = v13;
  }

  if (*a1 <= a2)
  {
    *a1 = a2 + 1;
  }
}

void bit_vector_set_bits_4698(CFIndex *a1, CFIndex a2, CFIndex a3)
{
  if (a2 < 0)
  {
    v8 = __si_assert_copy_extra(0);
    v9 = v8;
    v10 = "";
    if (v8)
    {
      v10 = v8;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "bit_vector.h", 164, "range.location >= 0", v10);
    free(v9);
    if (__valid_fs(-1))
    {
      v11 = 2989;
    }

    else
    {
      v11 = 3072;
    }

    *v11 = -559038737;
    abort();
  }

  if (a3 >= 1)
  {
    bit_vector_internal_touch_for_set_4691(a1, a3 + a2 - 1);
    v6 = a1[2];
    v7.location = a2;
    v7.length = a3;

    CFBitVectorSetBits(v6, v7, 0);
  }
}

uint64_t directoryStoreMakePathWithPostingsOffset(uint64_t a1, int a2, void *a3, unint64_t a4, uint64_t a5)
{
  v66 = 0;
  v10 = setCrashStateTarget(3);
  if (!storageResolvePtr(a1 + 8, 0, 1, 1))
  {
    goto LABEL_38;
  }

  v11 = OSAtomicIncrement32(&exceptionSequenceNum);
  v65 = 0;
  v64 = 0;
  v12 = *(a1 + 224);
  if (v12)
  {
    v13 = *(v12 + 44);
  }

  else
  {
    v13 = -1;
  }

  v14 = setThreadIdAndInfo(v13, sStorageExceptionCallbacks, a1 + 8, 1, v11);
  v65 = __PAIR64__(v14, HIDWORD(v14));
  v64 = __PAIR64__(v15, v16);
  v17 = threadData[9 * v14 + 1] + 320 * HIDWORD(v14);
  v18 = *(v17 + 312);
  v19 = *(v17 + 224);
  if (v19)
  {
    v19(*(v17 + 288));
  }

  v63 = v65;
  v62 = v64;
  if (_setjmp(v17))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", buf, 2u);
    }

    *(v17 + 312) = v18;
    CIOnThreadCleanUpReset(v62);
    dropThreadId(HIDWORD(v63), 1, v11);
    CICleanUpReset(HIDWORD(v63), HIDWORD(v62));
    goto LABEL_38;
  }

  *a1 = 1;
  if (a4 >= 0x7FFFFFFFFFFFFFFFLL)
  {
    v35 = __si_assert_copy_extra(0);
    v27 = v35;
    v36 = "";
    if (v35)
    {
      v36 = v35;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "FileTree.c", 2763, "postings<9223372036854775807", v36);
    goto LABEL_45;
  }

  v20 = (a1 + 4424);
  if (*(a1 + 4424) != 2)
  {
    v37 = __si_assert_copy_extra(0);
    v27 = v37;
    v38 = "";
    if (v37)
    {
      v38 = v37;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "FileTree.c", 2765, "getStoreOID(root.directory->fileId)==2", v38);
    goto LABEL_45;
  }

  if (a2)
  {
    v21 = a2 - (a3[a2 - 1] == 2);
    if (v21 < 2)
    {
      v23 = 0;
      a2 -= a3[a2 - 1] == 2;
    }

    else
    {
      v22 = a3[1];
      v23 = *a3 == v22;
      if (*a3 == v22)
      {
        ++a3;
        a2 = v21 - 1;
      }

      else
      {
        a2 -= a3[a2 - 1] == 2;
      }
    }
  }

  else
  {
    v23 = 0;
  }

  directoryStoreValidate(a1 + 8, a1 + 4424);
  v61 = 0;
  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  *buf = 0u;
  v52 = 0uLL;
  v53 = 0;
  v51 = 0;
  v50 = v20;
  directoryStoreGetDirectoryWithPath(&v52, a1 + 8, &v50, a2 - 1, a3, 1, buf);
  v24 = v52;
  if (!a4)
  {
    if (v52)
    {
      goto LABEL_33;
    }

    v29 = __si_assert_copy_extra(0);
    v27 = v29;
    v30 = "";
    if (v29)
    {
      v30 = v29;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "FileTree.c", 2849, "target.directory", v30);
LABEL_45:
    free(v27);
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

  v25 = *(v52 + 8);
  if (v23)
  {
    if (v25)
    {
      v61 = 0;
      v59 = 0u;
      v60 = 0u;
      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      *buf = 0u;
      v48 = v52;
      v49 = v53;
      directoryStoreGetDirectoryWithPath(&v50, a1 + 8, &v48, 0, a3, 1, buf);
      v52 = v50;
      v24 = v50;
      v53 = v51;
      if (*(v50 + 8))
      {
        v26 = __si_assert_copy_extra(0);
        v27 = v26;
        v28 = "";
        if (v26)
        {
          v28 = v26;
        }

        __message_assert("%s:%u: failed assertion '%s' %s ", "FileTree.c", 2842, "!target.directory->childPage.offset", v28);
        goto LABEL_45;
      }
    }
  }

  else if (v25)
  {
    v45 = __si_assert_copy_extra(0);
    v41 = v45;
    v46 = "";
    if (v45)
    {
      v46 = v45;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "FileTree.c", 2844, "!target.directory->childPage.offset", v46);
LABEL_58:
    free(v41);
    if (__valid_fs(-1))
    {
      v47 = 2989;
    }

    else
    {
      v47 = 3072;
    }

    *v47 = -559038737;
    abort();
  }

  *(v24 + 8) = a4 | 0x8000000000000000;
LABEL_33:
  directoryStoreValidate(a1 + 8, a1 + 4424);
  if (*v20 != 2)
  {
    v40 = __si_assert_copy_extra(0);
    v41 = v40;
    v42 = "";
    if (v40)
    {
      v42 = v40;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "FileTree.c", 2851, "getStoreOID(root.directory->fileId)==2", v42);
    goto LABEL_58;
  }

  memcpy(a5, a3, 8 * a2);
  *(a5 + 4096) = a2;
  v31 = *buf;
  *(a5 + 4104) = *(&v60 + 1);
  *(a5 + 4112) = v31;
  if (v31 < 0)
  {
    v43 = __si_assert_copy_extra(0);
    v41 = v43;
    v44 = "";
    if (v43)
    {
      v44 = v43;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "FileTree.c", 2857, "!((refPage.pageOffset[0] & (1ull << 63)) || refPage.pageOffset[0]==0)", v44);
    goto LABEL_58;
  }

  *(a5 + 4120) = v60;
  v66 = 1;
  v32 = threadData[9 * HIDWORD(v63) + 1] + 320 * v63;
  *(v32 + 312) = v18;
  v33 = *(v32 + 232);
  if (v33)
  {
    v33(*(v32 + 288));
  }

  dropThreadId(HIDWORD(v63), 0, v11);
LABEL_38:
  setCrashStateTarget(v10);
  return v66;
}

void dumpDirectoryStore(__n128 a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v106[1] = *MEMORY[0x1E69E9840];
  bzero(v104, 0x1000uLL);
  v103 = 0;
  bzero(&v101, 0x6038uLL);
  v98 = 0;
  __new = 0;
  v100 = 0;
  storage_reader_init((v8 + 1), &v98);
  v97 = 0;
  v9 = setCrashStateTarget(3);
  if (v100 == 1)
  {
    v10 = OSAtomicIncrement32(&exceptionSequenceNum);
    v11 = setThreadIdAndInfo(-1, sStorageReaderExceptionCallbacks, &v98, 0, v10);
    v95 = HIDWORD(v11);
    *buf = v11;
    v93 = v13;
    v94 = v12;
    v14 = threadData[9 * v11 + 1] + 320 * HIDWORD(v11);
    v15 = *(v14 + 312);
    v16 = *(v14 + 224);
    if (v16)
    {
      v16(*(v14 + 288));
    }

    v92 = *buf;
    v91 = v95;
    v90 = __PAIR64__(v94, v93);
    if (_setjmp(v14))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *v89 = 0;
        _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v89, 2u);
      }

      *(v14 + 312) = v15;
      CIOnThreadCleanUpReset(v90);
      dropThreadId(v92, 1, v10);
      CICleanUpReset(v92, HIDWORD(v90));
      goto LABEL_88;
    }

    v88 = v10;
    v17 = CICleanUpThreadLoc();
    v86 = threadData[9 * v17 + 4];
    v87 = v17;
    CICleanUpPush(v17, cleanup, &v101);
    v106[0] = 2;
    v20 = v8[554];
    v21 = v8[555];
    v22 = v8[556];
    v23 = v22 - v21 < 0x100000001 && v22 > v21;
    v24 = v22 & 0xFFFFFFFF00000000;
    if (v23)
    {
      v25 = v24;
    }

    else
    {
      v25 = 0;
    }

    v85 = v21;
    if ((v20 & 0x8000000000000000) == 0)
    {
      if (v20)
      {
        v26 = v103 + 1;
        if (!(v20 >> 62))
        {
          v27 = v101;
          v28 = &v102[3 * v101];
          *v28 = v26;
          *(v28 + 12) = 0x200000000;
          *(v28 + 4) = 0;
          *(v28 + 20) = 0;
          *(v28 + 28) = 0;
          *(v28 + 36) = 0;
          *(v28 + 11) = 0;
          *(v28 + 3) = v20;
          v29 = v27 + 1;
          v101 = v27 + 1;
          if (v27 == -1)
          {
            goto LABEL_85;
          }

LABEL_29:
          v32 = 24;
          v33 = v29;
          while (1)
          {
            if ((v97 & 1) != 0 || *v4)
            {
              goto LABEL_85;
            }

            v34 = v33 - 1;
            v35 = v102[3 * v33 - 2];
            if (v35 != 2)
            {
              break;
            }

            if (!*v4)
            {
              v42 = v15;
              v43 = v32;
              v89[0] = 0;
              v44 = &v102[3 * v34];
              Page = _directoryStoreReaderGetPage(&v98, *(v44 + 3), v89, v18, v19);
              if (Page)
              {
                if (v89[0] == 1)
                {
                  v80 = __si_assert_copy_extra(0);
                  __message_assert("%s:%u: failed assertion '%s' %s ");
                  goto LABEL_97;
                }

                v46 = Page;
                Size = directoryTreePageGetSize(*Page, *(Page + 2));
                v48 = *(v44 + 1);
                if (Size <= v48)
                {
LABEL_46:
                  v53 = v101 - 1;
LABEL_47:
                  v101 = v53;
                }

                else
                {
                  *(v44 + 1) = v48 + 1;
                  v49 = *v44;
                  v50 = &v46[4 * v48 + 4];
                  v51 = v48 + 2;
                  v52 = Size - v48;
                  while (!*v4)
                  {
                    if (*v50 >= 1)
                    {
                      v71 = *v50;
                      if (!(*v50 >> 62))
                      {
                        v72 = v101;
                        v73 = &v102[3 * v101];
                        *v73 = v49;
                        *(v73 + 4) = 0;
                        *(v73 + 20) = 0;
                        *(v73 + 28) = 0;
                        *(v73 + 36) = 0;
                        *(v73 + 12) = 0x200000000;
                        *(v73 + 11) = 0;
                        *(v73 + 3) = v71;
                        v53 = v72 + 1;
                        goto LABEL_47;
                      }

                      dumpDirectoryStorePage(&v98, v4, v71, v49, &v101, v102, v18, v19);
                      break;
                    }

                    *(v44 + 1) = v51;
                    ++v50;
                    ++v51;
                    if (!--v52)
                    {
                      goto LABEL_46;
                    }
                  }
                }
              }

              v32 = v43;
              v15 = v42;
            }

LABEL_69:
            v33 = v101;
            if (!v101)
            {
              goto LABEL_85;
            }
          }

          if (v35 != 1)
          {
            v82 = __si_assert_copy_extra(0);
            v83 = v82;
            if (v82)
            {
              v84 = v82;
            }

            else
            {
              v84 = "";
            }

            __message_assert("%s:%u: Unexpected code path %s ", "FileTree.c", 3171, v84);
            free(v83);
            goto LABEL_93;
          }

          v36 = &v102[3 * v34];
          v37 = *(v36 + 1);
          v38 = *v36;
          v39 = *v36;
          v40 = *v36;
          if (v37 == *(v36 + 5))
          {
            if (*(v36 + 24) || (v6 & 1) != 0)
            {
              free(*(v36 + 4));
              --v101;
              v62 = 0;
LABEL_68:
              v97 = v62;
              goto LABEL_69;
            }

            *(v36 + 1) = 0;
            *(v36 + 24) = 1;
            v41 = *(v36 + 4);
            v37 = 0;
          }

          else
          {
            if (!*(v36 + 24))
            {
              v63 = *(v36 + 4) + 24 * v37;
              v66 = *(v63 + 8);
              v65 = v63 + 8;
              v64 = v66;
              if (v66 < 2)
              {
                goto LABEL_66;
              }

              v67 = *(v65 + 8);
              v59 = v67;
              v104[511 - v38] = v64;
              if ((v67 & 0x8000000000000000) != 0)
              {
                v74 = v67 & 0x7FFFFFFFFFFFFFFFLL;
                v75 = v67 & 0x7FFFFFFFFFFFFFFFLL;
                if ((v67 & 0x7FFFFFFFFFFFFFFFLL) < v85)
                {
                  if (!v25 || HIDWORD(v74))
                  {
LABEL_106:
                    v78 = __si_assert_copy_extra(0);
                    __message_assert("%s:%u: failed assertion '%s' %s invalid posting 0x%llx for 0x%llx");
LABEL_92:
                    free(v78);
                    if (__valid_fs(-1))
                    {
LABEL_93:
                      v79 = 2989;
                    }

                    else
                    {
                      v79 = 3072;
                    }

                    *v79 = -559038737;
                    abort();
                  }

                  v75 = v74 | v25;
                }

                if (!v75)
                {
                  goto LABEL_106;
                }

                if (v38 < 1 || v64 == v104[512 - v38])
                {
                  v70 = (*(v2 + 16))(v2, (v40 + 1), &v106[-v38], v75);
                }

                else
                {
                  v104[510 - v38] = v64;
                  v70 = (*(v2 + 16))(v2, (v40 + 2), &v106[-v38 - 1]);
                }

                goto LABEL_67;
              }

              if (!v67)
              {
                goto LABEL_66;
              }

              if ((v6 & 1) == 0)
              {
                v70 = (*(v2 + 16))(v2, (v38 + 1), &v106[-v38], 0);
                goto LABEL_67;
              }

              if (!(v67 >> 62))
              {
                v68 = &v102[3 * v33];
                *v68 = v39 + 1;
                *(v68 + 4) = 0;
                *(v68 + 20) = 0;
                *(v68 + 28) = 0;
                *(v68 + 36) = 0;
                *(v68 + 12) = 0x200000000;
                *(v68 + 11) = 0;
                *(v68 + 3) = v67;
                goto LABEL_56;
              }

              v69 = v4;
              v60 = v38 + 1;
LABEL_65:
              dumpDirectoryStorePage(&v98, v69, v59, v60, &v101, v102, v18, v19);
              goto LABEL_66;
            }

            v41 = *(v36 + 4);
          }

          if (v6)
          {
            v78 = __si_assert_copy_extra(0);
            __message_assert("%s:%u: failed assertion '%s' %s ");
            goto LABEL_92;
          }

          v54 = v41 + v37 * v32;
          v57 = *(v54 + 8);
          v55 = v54 + 8;
          v56 = v57;
          if (v57 < 2)
          {
            goto LABEL_66;
          }

          v58 = *(v55 + 8);
          if (v58 < 1)
          {
            goto LABEL_66;
          }

          v59 = v58;
          v104[511 - v38] = v56;
          v60 = v40 + 1;
          if (!(v58 >> 62))
          {
            v61 = &v102[3 * v33];
            *v61 = v60;
            *(v61 + 4) = 0;
            *(v61 + 20) = 0;
            *(v61 + 28) = 0;
            *(v61 + 36) = 0;
            *(v61 + 12) = 0x200000000;
            *(v61 + 11) = 0;
            *(v61 + 3) = v59;
LABEL_56:
            v101 = v33 + 1;
LABEL_66:
            v70 = 0;
LABEL_67:
            ++*(v36 + 1);
            v62 = v70;
            goto LABEL_68;
          }

          v69 = v4;
          goto LABEL_65;
        }

        dumpDirectoryStorePage(&v98, v4, v20, v26, &v101, v102, v18, v19);
      }

LABEL_28:
      v29 = v101;
      if (!v101)
      {
LABEL_85:
        CICleanUpReset(v87, v86);
        v76 = threadData[9 * v92 + 1] + 320 * v91;
        *(v76 + 312) = v15;
        v77 = *(v76 + 232);
        if (v77)
        {
          v77(*(v76 + 288));
        }

        dropThreadId(v92, 0, v88);
        goto LABEL_88;
      }

      goto LABEL_29;
    }

    v30 = v20 & 0x7FFFFFFFFFFFFFFFLL;
    v31 = v30;
    if (v30 < v21)
    {
      if (HIDWORD(v30) || !v25)
      {
        goto LABEL_105;
      }

      v31 = v25 | v30;
    }

    if (v31)
    {
      v105 = 2;
      (*(v2 + 16))(v2);
      goto LABEL_28;
    }

LABEL_105:
    v80 = __si_assert_copy_extra(0);
    __message_assert("%s:%u: failed assertion '%s' %s invalid posting 0x%llx for 0x%llx");
LABEL_97:
    free(v80);
    if (__valid_fs(-1))
    {
      v81 = 2989;
    }

    else
    {
      v81 = 3072;
    }

    *v81 = -559038737;
    abort();
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Skipping because index is shut down", buf, 2u);
  }

LABEL_88:
  setCrashStateTarget(v9);
  if (__new)
  {
    _release_read_window(&availableReaders, __new);
  }
}

void dumpDirectoryStorePage(uint64_t *a1, _DWORD *a2, unint64_t a3, int a4, _DWORD *a5, uint64_t a6, __n128 a7, __n128 a8)
{
  v32 = 0;
  Page = _directoryStoreReaderGetPage(a1, a3, &v32, a7, a8);
  if (Page)
  {
    if (!v32)
    {
      v27 = __si_assert_copy_extra(0);
      v25 = v27;
      v28 = "";
      if (v27)
      {
        v28 = v27;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "FileTree.c", 3032, "flat", v28);
LABEL_21:
      free(v25);
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

    if (!*a2)
    {
      v13 = Page;
      v14 = *Page;
      if ((64 << *(Page + 2)) - 8 < v14)
      {
        v30 = __si_assert_copy_extra(0);
        __message_assert("%s:%u: failed assertion '%s' %s Got end %d and size %d");
      }

      else
      {
        Size = directoryStorePageGetSize(Page);
        if (v14 < 0x10)
        {
          return;
        }

        v16 = Size;
        v17 = v14 >> 4;
        v18 = malloc_type_malloc(24 * v17, 0x1000040504FFAC1uLL);
        v19 = 0;
        if (v16)
        {
          v20 = v13 + 4;
          do
          {
            if (*v20)
            {
              v21 = &v18[24 * v19];
              *(v21 + 1) = *v20;
              *v21 = hash64(v21[1]);
              ++v19;
            }

            else if (*(v20 + 1))
            {
              v24 = __si_assert_copy_extra(0);
              v25 = v24;
              v26 = "";
              if (v24)
              {
                v26 = v24;
              }

              __message_assert("%s:%u: failed assertion '%s' %s ", "FileTree.c", 3010, "page->items[i].childPage.offset==0", v26);
              goto LABEL_21;
            }

            v20 += 8;
            v16 = (v16 - 1);
          }

          while (v16);
        }

        if (v19 == v17)
        {
          qsort_b(v18, v17, 0x18uLL, &__block_literal_global_125_4713);
          v22 = a6 + 48 * *a5;
          *v22 = a4;
          *(v22 + 4) = 0;
          *(v22 + 12) = 0x100000000;
          *(v22 + 20) = 0;
          *(v22 + 44) = 0;
          *(v22 + 36) = 0;
          *(v22 + 28) = 0;
          LODWORD(v22) = *a5;
          v23 = a6 + 48 * *a5;
          *(v23 + 24) = 0;
          *(v23 + 32) = v18;
          *(v23 + 40) = v17;
          *a5 = v22 + 1;
          return;
        }

        v30 = __si_assert_copy_extra(0);
        __message_assert("%s:%u: failed assertion '%s' %s ");
      }

      free(v30);
      if (__valid_fs(-1))
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
  }
}

uint64_t __dumpSpecialDirectoryStorePage_block_invoke(uint64_t a1, void *a2, void *a3)
{
  if (*a2 < *a3)
  {
    return 0xFFFFFFFFLL;
  }

  if (*a2 > *a3)
  {
    return 1;
  }

  if (a2[1] < a3[1])
  {
    return 0xFFFFFFFFLL;
  }

  return 1;
}

void cleanup(unsigned int *a1)
{
  v1 = *a1;
  if (v1)
  {
    v3 = 0;
    v4 = (a1 + 10);
    do
    {
      if (*(v4 - 4) == 1)
      {
        free(*v4);
        v1 = *a1;
      }

      ++v3;
      v4 += 6;
    }

    while (v3 < v1);
  }
}

void compactForwardDirectoryStore(__n128 a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v2 = v1;
  v4 = v3;
  v6 = v5;
  bzero(v7, 0x1020uLL);
  dumpDirectoryStore(*v4);
  if (!*v2)
  {
    flushForwardStore(v6, 0);
  }
}

uint64_t __compactForwardDirectoryStore_block_invoke(uint64_t a1, int a2, void *a3, unint64_t a4)
{
  if (a4)
  {
    v7 = *(a1 + 32);
    if (v7)
    {
      v8 = uint32_map_get(v7, a4);
      a4 = *storageResolvePtr(*(a1 + 40), 8 * v8, 8, 1);
    }
  }

  if (!directoryStoreMakePathWithPostingsOffset(*(a1 + 48), a2, a3, a4, *(a1 + 56)) || **(a1 + 64))
  {
    return 1;
  }

  v11 = *(a1 + 88);
  v10 = *(a1 + 96);

  return v11(v10);
}

void subvertForwardDirectoryStore(void *a1, uint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  memset(v17, 0, 255);
  v4 = fd_name(a1[28], v17, 0xFFuLL);
  memset(v16, 0, 255);
  v5 = fd_name(a1[28], v16, 0xFFuLL);
  v6 = v5;
  if (v5)
  {
    strlcat(v5, ".shadow", 0xFFuLL);
    sibling_protected = fd_create_sibling_protected(a1[28], v6, 0, 0);
    if (sibling_protected)
    {
      v8 = sibling_protected;
      _fd_unlink_with_origin(sibling_protected, 0);
      fd_release(v8);
    }
  }

  _fd_unlink_with_origin(a1[28], 0);
  freeForwardDirectoryStore(a1);
  if (strstr(v6, ".shadow.shadow"))
  {
    v11 = __si_assert_copy_extra(0);
    v12 = v11;
    v13 = "";
    if (v11)
    {
      v13 = v11;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "FileTree.c", 3225, "0==strstr(shadowpathPtr, .shadow.shadow)", v13);
    free(v12);
    if (__valid_fs(-1))
    {
      v14 = 2989;
    }

    else
    {
      v14 = 3072;
    }

    *v14 = -559038737;
    abort();
  }

  memset(v15, 0, 255);
  v9 = fd_name(*(a2 + 224), v15, 0xFFuLL);
  strlcat(v9, ".shadow", 0xFFuLL);
  v10 = fd_create_sibling_protected(*(a2 + 224), v9, 0, 0);
  fd_rename(*(a2 + 224), v4);
  if (v10)
  {
    fd_rename(v10, v6);
    fd_release(v10);
  }
}

uint64_t unlinkDirectoryStore(const char *a1)
{
  v4 = *MEMORY[0x1E69E9840];
  bzero(__str, 0x400uLL);
  snprintf(__str, 0x400uLL, "%s%s", a1, "directoryStoreFile");
  return unlink(__str);
}

uint64_t unlinkDirectoryStoreShadow(const char *a1)
{
  v4 = *MEMORY[0x1E69E9840];
  bzero(__str, 0x400uLL);
  snprintf(__str, 0x400uLL, "%s%s.shadow", a1, "directoryStoreFile");
  return unlink(__str);
}

uint64_t directoryStoreGetParent(uint64_t a1, unint64_t a2)
{
  v4 = setCrashStateTarget(2);
  db_read_lock(a1 + 4424);
  v27 = 0;
  __new = 0;
  v29 = 0;
  storage_reader_init(a1, &v27);
  if (v29 != 1)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Skipping because index is shut down", buf, 2u);
    }

    goto LABEL_10;
  }

  v5 = OSAtomicIncrement32(&exceptionSequenceNum);
  v6 = setThreadIdAndInfo(-1, sStorageReaderExceptionCallbacks, &v27, 0, v5);
  v25 = HIDWORD(v6);
  *buf = v6;
  v24 = __PAIR64__(v7, v8);
  v9 = threadData[9 * v6 + 1] + 320 * HIDWORD(v6);
  v10 = *(v9 + 312);
  v11 = *(v9 + 224);
  if (v11)
  {
    v11(*(v9 + 288));
  }

  v23 = *buf;
  v22 = v25;
  v21 = v24;
  if (_setjmp(v9))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *v20 = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v20, 2u);
    }

    *(v9 + 312) = v10;
    CIOnThreadCleanUpReset(v21);
    dropThreadId(v23, 1, v5);
    CICleanUpReset(v23, HIDWORD(v21));
LABEL_10:
    v14 = 0;
    goto LABEL_11;
  }

  ItemOffset = directoryStoreReaderTreeFindItemOffset(&v27, 1088, a2, 0, v12, v13);
  if (ItemOffset)
  {
    v17 = *(ItemOffset + 1);
  }

  else
  {
    v17 = 0;
  }

  v18 = threadData[9 * v23 + 1] + 320 * v22;
  *(v18 + 312) = v10;
  v19 = *(v18 + 232);
  if (v19)
  {
    v19(*(v18 + 288));
  }

  dropThreadId(v23, 0, v5);
  v14 = v17;
LABEL_11:
  db_read_unlock(a1 + 4424);
  if (__new)
  {
    _release_read_window(&availableReaders, __new);
    __new = 0;
  }

  setCrashStateTarget(v4);
  return v14;
}

uint64_t directoryStoreGetPath(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = setCrashStateTarget(2);
  db_read_lock(a1 + 4424);
  v32 = 0;
  __new = 0;
  v34 = 0;
  storage_reader_init(a1, &v32);
  if (v34 != 1)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      v16 = 0;
      *buf = 0;
      _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Skipping because index is shut down", buf, 2u);
      goto LABEL_21;
    }

    goto LABEL_10;
  }

  v7 = OSAtomicIncrement32(&exceptionSequenceNum);
  v8 = setThreadIdAndInfo(-1, sStorageReaderExceptionCallbacks, &v32, 0, v7);
  v30 = HIDWORD(v8);
  *buf = v8;
  v29 = __PAIR64__(v9, v10);
  v11 = threadData[9 * v8 + 1] + 320 * HIDWORD(v8);
  v12 = *(v11 + 312);
  v13 = *(v11 + 224);
  if (v13)
  {
    v13(*(v11 + 288));
  }

  v28 = *buf;
  v27 = v30;
  v26 = v29;
  if (_setjmp(v11))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *v25 = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v25, 2u);
    }

    *(v11 + 312) = v12;
    CIOnThreadCleanUpReset(v26);
    dropThreadId(v28, 1, v7);
    CICleanUpReset(v28, HIDWORD(v26));
LABEL_10:
    v16 = 0;
    goto LABEL_21;
  }

  if (a2 == 2)
  {
    v16 = 0;
  }

  else
  {
    v17 = 0;
    v18 = a2;
    do
    {
      v19 = v17;
      ItemOffset = directoryStoreReaderTreeFindItemOffset(&v32, 1088, v18, 0, v14, v15);
      if (!ItemOffset)
      {
        break;
      }

      v21 = *(ItemOffset + 1);
      if (!v21)
      {
        break;
      }

      v18 = *(ItemOffset + 1);
      v17 = v19 + 1;
      *(a3 + 8 * v19++) = v21;
    }

    while (v21 != 2);
    v16 = v19;
  }

  v22 = threadData[9 * v28 + 1] + 320 * v27;
  *(v22 + 312) = v12;
  v23 = *(v22 + 232);
  if (v23)
  {
    v23(*(v22 + 288));
  }

  dropThreadId(v28, 0, v7);
LABEL_21:
  db_read_unlock(a1 + 4424);
  if (__new)
  {
    _release_read_window(&availableReaders, __new);
    __new = 0;
  }

  setCrashStateTarget(v6);
  return v16;
}

uint64_t directoryStoreWriterGetParent(uint64_t a1, uint64_t a2)
{
  v4 = setCrashStateTarget(2);
  _db_write_lock(a1 + 4424);
  v5 = 0;
  if (storageResolvePtr(a1, 0, 1, 1))
  {
    v6 = OSAtomicIncrement32(&exceptionSequenceNum);
    v7 = *(a1 + 216);
    if (v7)
    {
      v8 = *(v7 + 44);
    }

    else
    {
      v8 = -1;
    }

    v9 = setThreadIdAndInfo(v8, sStorageExceptionCallbacks, a1, 1, v6);
    v24 = HIDWORD(v9);
    v25 = v9;
    v23 = __PAIR64__(v10, v11);
    v12 = threadData[9 * v9 + 1] + 320 * HIDWORD(v9);
    v13 = *(v12 + 312);
    v14 = *(v12 + 224);
    if (v14)
    {
      v14(*(v12 + 288));
    }

    v22 = v25;
    v21 = v24;
    v20 = v23;
    if (_setjmp(v12))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v19[0] = 0;
        _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v19, 2u);
      }

      *(v12 + 312) = v13;
      CIOnThreadCleanUpReset(v20);
      dropThreadId(v22, 1, v6);
      CICleanUpReset(v22, HIDWORD(v20));
      v5 = 0;
    }

    else
    {
      Parent = _directoryStoreGetParent(a1, a2);
      v16 = threadData[9 * v22 + 1] + 320 * v21;
      *(v16 + 312) = v13;
      v17 = *(v16 + 232);
      if (v17)
      {
        v17(*(v16 + 288));
      }

      dropThreadId(v22, 0, v6);
      v5 = Parent;
    }
  }

  db_write_unlock(a1 + 4424);
  setCrashStateTarget(v4);
  return v5;
}

uint64_t _directoryStoreGetParent(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v11 = 0;
  v10 = 0u;
  memset(v9, 0, sizeof(v9));
  ItemOffset = directoryStoreTreeFindItemOffset(a1, 1088, a2, v9, 0, 0, 0);
  if (ItemOffset)
  {
    result = ItemOffset[1];
    if (result)
    {
      v4 = 1;
    }

    else
    {
      v4 = dword_1EBF46AE4 < 5;
    }

    if (!v4)
    {
      v5 = *__error();
      v6 = _SILogForLogForCategory(6);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v13 = *(&v10 + 1);
        v7 = "leafPageOffset: %llx";
LABEL_13:
        _os_log_impl(&dword_1C278D000, v6, OS_LOG_TYPE_DEFAULT, v7, buf, 0xCu);
        goto LABEL_14;
      }

      goto LABEL_14;
    }
  }

  else
  {
    if (dword_1EBF46AE4 >= 5)
    {
      v5 = *__error();
      v6 = _SILogForLogForCategory(6);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v13 = *(&v10 + 1);
        v7 = "_directoryStoreGetParent failed. leafPageOffset: %llx";
        goto LABEL_13;
      }

LABEL_14:
      v8 = __error();
      result = 0;
      *v8 = v5;
      return result;
    }

    return 0;
  }

  return result;
}

uint64_t dirtyStore(uint64_t a1)
{
  if (*(a1 + 4416))
  {
    v2 = *(a1 + 4640);
    if (v2)
    {
      (*(v2 + 16))();
    }

    v3 = storageResolvePtr(a1, 0x40uLL, 1024, 1);
    *(v3 + 4) = 0;
    dirtyStoragePage(a1, v3);
    v4 = *MEMORY[0x1E69E9AB8];
    fd_system_status_stall_if_busy();
    msync((v3 & ~v4), 0x1000uLL, 16);
    result = fd_sync(*(a1 + 216), 1);
    *(a1 + 4416) = 0;
  }

  else
  {
    if (*(a1 + 232) <= 0x43FuLL)
    {
      storageAllocOffsetFromEnd(a1, *(a1 + 224) + 960);
    }

    result = storageResolvePtr(a1, 0x40uLL, 1024, 1);
    *(result + 4) = 0;
  }

  return result;
}

uint64_t directoryStoreSetParentForMove(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v50 = *MEMORY[0x1E69E9840];
  v45 = 0;
  v44 = 0;
  v43 = 0u;
  memset(v42, 0, sizeof(v42));
  v6 = setCrashStateTarget(2);
  if (!a3)
  {
    v32 = __si_assert_copy_extra(*(a1 + 216));
    v33 = v32;
    v34 = "";
    if (v32)
    {
      v34 = v32;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "FileTree.c", 3492, "parent", v34);
    free(v33);
    if (__valid_fsp(*(a1 + 216)))
    {
      v35 = 2989;
    }

    else
    {
      v35 = 3072;
    }

    *v35 = -559038737;
    abort();
  }

  v7 = v6;
  _db_write_lock(a1 + 4424);
  if (storageResolvePtr(a1, 0, 1, 1))
  {
    v8 = OSAtomicIncrement32(&exceptionSequenceNum);
    v9 = *(a1 + 216);
    if (v9)
    {
      v10 = *(v9 + 44);
    }

    else
    {
      v10 = -1;
    }

    v11 = setThreadIdAndInfo(v10, sStorageExceptionCallbacks, a1, 1, v8);
    v40 = HIDWORD(v11);
    v41 = v11;
    v38 = v13;
    v39 = v12;
    v14 = threadData[9 * v11 + 1] + 320 * HIDWORD(v11);
    v15 = *(v14 + 312);
    v16 = *(v14 + 224);
    if (v16)
    {
      v16(*(v14 + 288));
    }

    if (_setjmp(v14))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", buf, 2u);
      }

      *(v14 + 312) = v15;
      CIOnThreadCleanUpReset(v38);
      dropThreadId(v41, 1, v8);
      CICleanUpReset(v41, v39);
    }

    else
    {
      if (dword_1EBF46AE4 >= 5)
      {
        v36 = *__error();
        v37 = _SILogForLogForCategory(6);
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218240;
          v47 = a2;
          v48 = 2048;
          v49 = a3;
          _os_log_impl(&dword_1C278D000, v37, OS_LOG_TYPE_DEFAULT, "Move %llx/%llx", buf, 0x16u);
        }

        *__error() = v36;
      }

      dirtyStore(a1);
      ItemOffset = directoryStoreTreeFindItemOffset(a1, 1088, a2, v42, &v45, 0, 1);
      PageInner = _directoryStoreGetPageInner(a1, *(&v43 + 1), buf);
      v19 = PageInner;
      v20 = PageInner;
      if (ItemOffset)
      {
        if (*ItemOffset != a2 || (v21 = v45, &PageInner[8 * v45 + 4] != ItemOffset))
        {
          v22 = __si_assert_copy_extra(*(a1 + 216));
          v23 = v22;
          v24 = "";
          if (v22)
          {
            v24 = v22;
          }

          __message_assert("%s:%u: failed assertion '%s' %s ", "FileTree.c", 3513, "(getStoreOID(element->fileId)==item && &page->items[slot]==element)", v24);
          free(v23);
          if (__valid_fsp(*(a1 + 216)))
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
      }

      else
      {
        v26 = v45;
        if (*&PageInner[8 * v45 + 4] >= 2uLL)
        {
          Size = directoryStorePageGetSize(PageInner);
          shiftEntries(v20, v26, Size);
          v26 = v45;
        }

        *v20 += 16;
        v21 = v26;
      }

      v28 = &v19[8 * v21];
      *(v28 + 1) = a2;
      *(v28 + 2) = a3;
      dirtyStoragePage(a1, v20);
      v29 = threadData[9 * v41 + 1] + 320 * v40;
      *(v29 + 312) = v15;
      v30 = *(v29 + 232);
      if (v30)
      {
        v30(*(v29 + 288));
      }

      dropThreadId(v41, 0, v8);
    }
  }

  db_write_unlock(a1 + 4424);
  return setCrashStateTarget(v7);
}

uint64_t _directoryStoreSetParent(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v36 = *MEMORY[0x1E69E9840];
  v31 = 0;
  v30 = 0;
  v29 = 0u;
  memset(v28, 0, sizeof(v28));
  if (!a3)
  {
    v16 = __si_assert_copy_extra(*(a1 + 216));
    v10 = v16;
    v17 = "";
    if (v16)
    {
      v17 = v16;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "FileTree.c", 3541, "parent", v17);
LABEL_18:
    free(v10);
    if (__valid_fsp(*(a1 + 216)))
    {
      v18 = 2989;
    }

    else
    {
      v18 = 3072;
    }

    *v18 = -559038737;
    abort();
  }

  if (a2 == a3)
  {
    v19 = __si_assert_copy_extra(*(a1 + 216));
    v20 = v19;
    v21 = "";
    if (v19)
    {
      v21 = v19;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "FileTree.c", 3542, "item!=parent", v21);
    free(v20);
    if (!__valid_fsp(*(a1 + 216)))
    {
      goto LABEL_30;
    }

    goto LABEL_23;
  }

  dirtyStore(a1);
  if (dword_1EBF46AE4 >= 5)
  {
    v23 = *__error();
    v24 = _SILogForLogForCategory(6);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      v33 = a2;
      v34 = 2048;
      v35 = a3;
      _os_log_impl(&dword_1C278D000, v24, OS_LOG_TYPE_DEFAULT, "Set %llx/%llx", buf, 0x16u);
    }

    *__error() = v23;
  }

  ItemOffset = directoryStoreTreeFindItemOffset(a1, 1088, a2, v28, &v31, 0, 1);
  PageInner = _directoryStoreGetPageInner(a1, *(&v29 + 1), buf);
  v8 = PageInner;
  if (ItemOffset)
  {
    if (*ItemOffset != a2 || ItemOffset[1] != a3)
    {
      v9 = __si_assert_copy_extra(*(a1 + 216));
      v10 = v9;
      v11 = "";
      if (v9)
      {
        v11 = v9;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "FileTree.c", 3549, "(element==0 || (getStoreOID(element->fileId)==item && getOffset(element->childPage) == (offset_t)parent))", v11);
      goto LABEL_18;
    }
  }

  else
  {
    v12 = v31;
    if (*&PageInner[8 * v31 + 4] >= 2uLL)
    {
      Size = directoryStorePageGetSize(PageInner);
      shiftEntries(v8, v12, Size);
    }

    *v8 += 16;
  }

  v14 = &v8[8 * v31];
  *(v14 + 1) = a2;
  *(v14 + 2) = a3;
  dirtyStoragePage(a1, v8);
  result = _directoryStoreGetParent(a1, a2);
  if (result != a3)
  {
    v25 = __si_assert_copy_extra(0);
    v26 = v25;
    v27 = "";
    if (v25)
    {
      v27 = v25;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "FileTree.c", 3567, "parent == _directoryStoreGetParent(store, item)", v27);
    free(v26);
    if (!__valid_fs(-1))
    {
LABEL_30:
      v22 = 3072;
LABEL_31:
      *v22 = -559038737;
      abort();
    }

LABEL_23:
    v22 = 2989;
    goto LABEL_31;
  }

  return result;
}

uint64_t directoryStoreEnsurePath(uint64_t a1, uint64_t a2, uint64_t *a3, int a4, uint64_t a5, BOOL *a6, void *a7, _DWORD *a8)
{
  v109 = *MEMORY[0x1E69E9840];
  v16 = setCrashStateTarget(2);
  *a6 = 0;
  if (!a2)
  {
    return 0;
  }

  v17 = v16;
  _db_write_lock(a1 + 4424);
  LODWORD(v18) = 0;
  v100 = 0;
  if (!storageResolvePtr(a1, 0, 1, 1))
  {
    v23 = 0;
    goto LABEL_70;
  }

  v86 = a7;
  v19 = OSAtomicIncrement32(&exceptionSequenceNum);
  v20 = *(a1 + 216);
  v84 = a4;
  if (v20)
  {
    v21 = *(v20 + 44);
  }

  else
  {
    v21 = -1;
  }

  v24 = setThreadIdAndInfo(v21, sStorageExceptionCallbacks, a1, 1, v19);
  v98 = HIDWORD(v24);
  v99 = v24;
  v96 = v26;
  v97 = v25;
  v18 = threadData[9 * v24 + 1] + 320 * HIDWORD(v24);
  v27 = *(v18 + 312);
  v28 = *(v18 + 224);
  if (v28)
  {
    v28(*(v18 + 288));
  }

  if (_setjmp(v18))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", buf, 2u);
    }

    *(v18 + 312) = v27;
    CIOnThreadCleanUpReset(v96);
    dropThreadId(v99, 1, v19);
    CICleanUpReset(v99, v97);
    v23 = 0;
    LODWORD(v18) = 0;
    goto LABEL_70;
  }

  v88 = v27;
  dirtyStore(a1);
  v29 = OSAtomicIncrement32(&exceptionSequenceNum);
  v30 = setThreadIdAndInfo(-1, sAssertExceptionCallbacks, 0, 0, v29);
  v94 = HIDWORD(v30);
  v95 = v30;
  v92 = v32;
  v93 = v31;
  v33 = threadData[9 * v30 + 1] + 320 * HIDWORD(v30);
  v85 = *(v33 + 312);
  v34 = *(v33 + 224);
  if (v34)
  {
    v34(*(v33 + 288));
  }

  v89 = v19;
  if (_setjmp(v33))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", buf, 2u);
    }

    *(v33 + 312) = v85;
    CIOnThreadCleanUpReset(v92);
    dropThreadId(v95, 1, v29);
    CICleanUpReset(v95, v93);
    v23 = 0;
    LODWORD(v18) = 0;
    v35 = v88;
    goto LABEL_67;
  }

  v87 = v29;
  v90 = v17;
  v91 = a8;
  v18 = 0;
  v36 = 0xFFFFFFFFLL;
  v37 = a2;
  while (1)
  {
    v23 = v37 != 2;
    if (v37 == 2)
    {
      if (v36 != -1)
      {
        v44 = v36;
        v45 = v18;
LABEL_48:
        if (v44 < 1)
        {
          v52 = a2;
LABEL_55:
          v57 = &a3[v44];
          if (v45 && v44 == v45)
          {
            v58 = *(v57 - 1);
            v59 = v44;
            if (v58 != 2)
            {
              _directoryStoreSetParent(a1, v58, 2);
              v59 = v44 + 1;
              *v57 = 2;
            }
          }

          else
          {
            v59 = v45;
            if (!v45 && !v44 && v52 != 2)
            {
              _directoryStoreSetParent(a1, v52, 2);
              *a3 = 2;
              v42 = 1;
              goto LABEL_63;
            }
          }

          if (v44)
          {
            *v86 = *(v57 - 1);
          }

          v42 = v59;
          goto LABEL_63;
        }

        dirtyStore(a1);
        v49 = v44;
        v50 = a3;
        v51 = a2;
        while (1)
        {
          v52 = v51;
          v53 = v50;
          _directoryStoreSetParent(a1, v51, *v50);
          v54 = v53;
          v17 = v90;
          v56 = *v54;
          v50 = v54 + 1;
          v55 = v56;
          if (v56 == 2)
          {
            goto LABEL_55;
          }

          if (v55 == a2)
          {
            break;
          }

          v52 = v55;
          v51 = v55;
          if (!--v49)
          {
            goto LABEL_55;
          }
        }

        v81 = __si_assert_copy_extra(*(a1 + 216));
        v67 = v81;
        v82 = "";
        if (v81)
        {
          v82 = v81;
        }

        __message_assert("%s:%u: failed assertion '%s' %s ", "FileTree.c", 3643, "item!=inItem", v82);
LABEL_93:
        free(v67);
        if (__valid_fsp(*(a1 + 216)))
        {
          v83 = 2989;
        }

        else
        {
          v83 = 3072;
        }

        *v83 = -559038737;
        abort();
      }

      if (v18)
      {
        if (a3[v18 - 1] == 2)
        {
          v44 = v18;
          v45 = v18;
          goto LABEL_48;
        }

        v48 = v18;
      }

      else
      {
        v48 = 0;
      }

      a3[v48] = 2;
      v45 = v18 + 1;
      v44 = v18 + 1;
      goto LABEL_48;
    }

    Parent = _directoryStoreGetParent(a1, v37);
    if (Parent)
    {
      if (v18 < 0x200)
      {
        if (v37 != Parent)
        {
          a3[v18] = Parent;
          if (v36 == -1)
          {
            v39 = v18;
          }

          else
          {
            v39 = v36;
          }

          v40 = Parent;
          goto LABEL_33;
        }

        v43 = v37;
        v42 = v18;
LABEL_39:
        v46 = *__error();
        v47 = _SILogForLogForCategory(6);
        if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
        {
          v65 = *a3;
          *buf = 136315906;
          v102 = "directoryStoreEnsurePath";
          v103 = 1024;
          v104 = 3658;
          v105 = 2048;
          v106 = v43;
          v107 = 2048;
          v108 = v65;
          _os_log_error_impl(&dword_1C278D000, v47, OS_LOG_TYPE_ERROR, "%s:%d: Move would loop in reverse directory store, skipping %lld to %lld", buf, 0x26u);
        }

        *__error() = v46;
LABEL_63:
        v60 = v85;
        v100 = 1;
        LODWORD(v18) = v42;
        a8 = v91;
        goto LABEL_64;
      }

      v66 = __si_assert_copy_extra(*(a1 + 216));
      v67 = v66;
      v68 = "";
      if (v66)
      {
        v68 = v66;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "FileTree.c", 3614, "depth<512", v68);
      goto LABEL_93;
    }

    if (v18 >= v84)
    {
      v69 = __si_assert_copy_extra(*(a1 + 216));
      __message_assert("%s:%u: failed assertion '%s' %s %d, %d, %d, %llx", "FileTree.c");
      goto LABEL_83;
    }

    v40 = a3[v18];
    if (v37 == v40)
    {
      v69 = __si_assert_copy_extra(*(a1 + 216));
      __message_assert("%s:%u: failed assertion '%s' %s %d, %d, %d, %llx, %llx", "FileTree.c", 3606);
LABEL_83:
      free(v69);
      if (__valid_fsp(*(a1 + 216)))
      {
        v70 = 2989;
      }

      else
      {
        v70 = 3072;
      }

      *v70 = -559038737;
      abort();
    }

    if (v36 != -1)
    {
      break;
    }

    v39 = 0xFFFFFFFFLL;
LABEL_33:
    v41 = v18 + 1;
    if (v40 != a2)
    {
      ++v18;
      v36 = v39;
      v37 = v40;
      if (v40 != a5)
      {
        continue;
      }
    }

    v42 = v41;
    v43 = v40;
    goto LABEL_39;
  }

  v71 = __si_assert_copy_extra(*(a1 + 216));
  v79 = v71;
  v80 = "";
  if (v71)
  {
    v80 = v71;
  }

  si_analytics_log_4767(v71, v72, v73, v74, v75, v76, v77, v78, "FileTree.c", 3608, "hitPath==-1", v80, v18, v84, v36);
  free(v79);
  v23 = 0;
  a8 = v91;
  v60 = v85;
LABEL_64:
  *a6 = v23;
  v61 = threadData[9 * v95 + 1] + 320 * v94;
  *(v61 + 312) = v60;
  v62 = *(v61 + 232);
  v35 = v88;
  if (v62)
  {
    v62(*(v61 + 288));
  }

  dropThreadId(v95, 0, v87);
LABEL_67:
  v63 = threadData[9 * v99 + 1] + 320 * v98;
  *(v63 + 312) = v35;
  v64 = *(v63 + 232);
  if (v64)
  {
    v64(*(v63 + 288));
  }

  dropThreadId(v99, 0, v89);
LABEL_70:
  db_write_unlock(a1 + 4424);
  *a8 = v18;
  setCrashStateTarget(v17);
  if (v23)
  {
    return 0xFFFFFFFFLL;
  }

  if (v100)
  {
    return v18;
  }

  return 0xFFFFFFFFLL;
}

void si_analytics_log_4767(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  v13 = *MEMORY[0x1E69E9840];
  string[0] = 0;
  va_copy(&string[1], va);
  vasprintf(string, "%s:%u: failure log '%s' %s %d, %d, %d", va);
  SISetCrashCStr(string[0]);
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
  {
    *keys = 136315138;
    *&keys[4] = string[0];
    _os_log_fault_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "%s", keys, 0xCu);
  }

  *keys = "crash_string";
  v8 = xpc_string_create(string[0]);
  values = v8;
  v9 = xpc_dictionary_create(keys, &values, 1uLL);
  analytics_send_event();
  xpc_release(v9);
  xpc_release(v8);
  free(string[0]);
}

uint64_t directoryStoreWriterGetPath(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = setCrashStateTarget(2);
  _db_write_lock(a1 + 4424);
  if (!storageResolvePtr(a1, 0, 1, 1))
  {
LABEL_11:
    v16 = 0;
    goto LABEL_21;
  }

  v7 = OSAtomicIncrement32(&exceptionSequenceNum);
  v8 = *(a1 + 216);
  if (v8)
  {
    v9 = *(v8 + 44);
  }

  else
  {
    v9 = -1;
  }

  v10 = setThreadIdAndInfo(v9, sStorageExceptionCallbacks, a1, 1, v7);
  v30 = HIDWORD(v10);
  v31 = v10;
  v29 = __PAIR64__(v11, v12);
  v13 = threadData[9 * v10 + 1] + 320 * HIDWORD(v10);
  v14 = *(v13 + 312);
  v15 = *(v13 + 224);
  if (v15)
  {
    v15(*(v13 + 288));
  }

  v28 = v31;
  v27 = v30;
  v26 = v29;
  if (_setjmp(v13))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *v25 = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v25, 2u);
    }

    *(v13 + 312) = v14;
    CIOnThreadCleanUpReset(v26);
    dropThreadId(v28, 1, v7);
    CICleanUpReset(v28, HIDWORD(v26));
    goto LABEL_11;
  }

  if (a2 == 2)
  {
    v17 = 0;
  }

  else
  {
    v18 = 0;
    v19 = a2;
    do
    {
      v20 = v18;
      Parent = _directoryStoreGetParent(a1, v19);
      if (!Parent)
      {
        break;
      }

      v19 = Parent;
      v18 = v20 + 1;
      *(a3 + 8 * v20++) = Parent;
    }

    while (Parent != 2);
    v17 = v20;
  }

  v22 = threadData[9 * v28 + 1] + 320 * v27;
  *(v22 + 312) = v14;
  v23 = *(v22 + 232);
  if (v23)
  {
    v23(*(v22 + 288));
  }

  dropThreadId(v28, 0, v7);
  v16 = v17;
LABEL_21:
  db_write_unlock(a1 + 4424);
  setCrashStateTarget(v6);
  return v16;
}

BOOL reverseDirStoreInit(uint64_t a1, atomic_uint *a2, int a3, char a4, void *aBlock)
{
  v56 = *MEMORY[0x1E69E9840];
  v46 = 0;
  if (a3)
  {
    v46 = storageInit(a1, 0x10000, 0x40uLL, a2, 1, 1, a4, 102, aBlock);
    if (v46)
    {
      v46 = 0;
      if (storageResolvePtr(a1, 0, 1, 1))
      {
        v9 = OSAtomicIncrement32(&exceptionSequenceNum);
        v10 = *(a1 + 216);
        if (v10)
        {
          v11 = *(v10 + 44);
        }

        else
        {
          v11 = -1;
        }

        v24 = setThreadIdAndInfo(v11, sStorageExceptionCallbacks, a1, 1, v9);
        *buf = HIDWORD(v24);
        LODWORD(v53[0]) = v24;
        LODWORD(v39) = v25;
        v45 = v26;
        v27 = threadData[9 * v24 + 1] + 320 * HIDWORD(v24);
        v28 = *(v27 + 312);
        v29 = *(v27 + 224);
        if (v29)
        {
          v29(*(v27 + 288));
        }

        v44 = v53[0];
        v43 = *buf;
        v42 = v39;
        v41 = v45;
        if (_setjmp(v27))
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            LOWORD(v55[0]) = 0;
            _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v55, 2u);
          }

          *(v27 + 312) = v28;
          CIOnThreadCleanUpReset(v41);
          dropThreadId(v44, 1, v9);
          CICleanUpReset(v44, v42);
        }

        else
        {
          memset(v55, 0, 192);
          v40 = 0;
          v30 = storageAllocOffset(a1, 0x400u, v55, &v40);
          if (v40)
          {
            dirtyStorageOffsets(a1, v55, v40);
          }

          if (v30)
          {
            v31 = storageResolvePtr(a1, v30, 1024, 1);
            bzero(v31, 0x400uLL);
            v31[2] = 4;
          }

          if (directoryStoreNewTreePage(a1, 0, 3730, 0) != 1088)
          {
            v35 = __si_assert_copy_extra(*(a1 + 216));
            v36 = v35;
            v37 = "";
            if (v35)
            {
              v37 = v35;
            }

            __message_assert("%s:%u: failed assertion '%s' %s ", "FileTree.c", 3731, "getOffset(addr) == REVERSE_MAP_ROOT_OFFSET", v37);
            free(v36);
            if (__valid_fsp(*(a1 + 216)))
            {
              v38 = 2989;
            }

            else
            {
              v38 = 3072;
            }

            *v38 = -559038737;
            abort();
          }

          v46 = 1;
          v32 = threadData[9 * v44 + 1] + 320 * v43;
          *(v32 + 312) = v28;
          v33 = *(v32 + 232);
          if (v33)
          {
            v33(*(v32 + 288));
          }

          dropThreadId(v44, 0, v9);
        }
      }
    }
  }

  else
  {
    bzero(v55, 0x400uLL);
    v39 = v55;
    if (fd_pread(a2, v55, 0x400uLL, 72) == 1024)
    {
      v46 = storageHeaderRestore(a1, &v39);
      if (v46)
      {
        return storageInit(a1, 0x10000, 0x40uLL, a2, 0, 1, a4, 102, aBlock);
      }

      else
      {
        v54 = 0;
        v12 = v55;
        v13.i64[0] = 0xA0A0A0A0A0A0A0A0;
        v13.i64[1] = 0xA0A0A0A0A0A0A0A0;
        v14.i64[0] = 0x3030303030303030;
        v14.i64[1] = 0x3030303030303030;
        v15.i64[0] = 0x3737373737373737;
        v15.i64[1] = 0x3737373737373737;
        v16.i64[0] = 0xF0F0F0F0F0F0F0FLL;
        v16.i64[1] = 0xF0F0F0F0F0F0F0FLL;
        memset(v53, 0, sizeof(v53));
        v17.i64[0] = 0xA0A0A0A0A0A0A0ALL;
        v17.i64[1] = 0xA0A0A0A0A0A0A0ALL;
        for (i = 0; i != 8; i += 2)
        {
          v19 = *v12++;
          v20 = &v53[i];
          v57.val[0] = vbslq_s8(vcgtq_u8(v13, v19), vsraq_n_u8(v14, v19, 4uLL), vsraq_n_u8(v15, v19, 4uLL));
          v21 = vandq_s8(v19, v16);
          v57.val[1] = vbslq_s8(vcgtq_u8(v17, v21), vorrq_s8(v21, v14), vaddq_s8(v21, v15));
          vst2q_s8(v20, v57);
        }

        v22 = *__error();
        v23 = _SILogForLogForCategory(6);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          v48 = "reverseDirStoreInit";
          v49 = 1024;
          v50 = 3751;
          v51 = 2080;
          v52 = v53;
          _os_log_error_impl(&dword_1C278D000, v23, OS_LOG_TYPE_ERROR, "%s:%d: init reverse failed %s", buf, 0x1Cu);
        }

        *__error() = v22;
        fd_release(a2);
      }
    }
  }

  return v46;
}

void _reverseStoreIterate(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    _db_write_lock(a1 + 4424);
    v27 = 0;
    __new = 0;
    v29 = 0;
    storage_reader_init(a1, &v27);
    if (v29 == 1)
    {
      v4 = OSAtomicIncrement32(&exceptionSequenceNum);
      v5 = setThreadIdAndInfo(-1, sStorageReaderExceptionCallbacks, &v27, 0, v4);
      v25 = HIDWORD(v5);
      *buf = v5;
      v24 = __PAIR64__(v6, v7);
      v8 = threadData[9 * v5 + 1] + 320 * HIDWORD(v5);
      v9 = *(v8 + 312);
      v10 = *(v8 + 224);
      if (v10)
      {
        v10(*(v8 + 288));
      }

      v23 = *buf;
      v22 = v25;
      v21 = v24;
      if (_setjmp(v8))
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *v20 = 0;
          _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v20, 2u);
        }

        *(v8 + 312) = v9;
        CIOnThreadCleanUpReset(v21);
        dropThreadId(v23, 1, v4);
        CICleanUpReset(v23, HIDWORD(v21));
      }

      else
      {
        v20[0] = 0;
        Page = _directoryStoreReaderGetPage(&v27, 0x440uLL, v20, v11, v12);
        if (Page)
        {
          if (v20[0])
          {
            v16 = __si_assert_copy_extra(*(a1 + 216));
            v17 = v16;
            v18 = "";
            if (v16)
            {
              v18 = v16;
            }

            __message_assert("%s:%u: failed assertion '%s' %s ", "FileTree.c", 3976, "(!page)", v18);
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

          _reverseStoreIterateTreePage(a1, &v27, Page, 0x440, 0, a2);
        }

        v14 = threadData[9 * v23 + 1] + 320 * v22;
        *(v14 + 312) = v9;
        v15 = *(v14 + 232);
        if (v15)
        {
          v15(*(v14 + 288));
        }

        dropThreadId(v23, 0, v4);
      }
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Skipping because index is shut down", buf, 2u);
    }

    db_write_unlock(a1 + 4424);
    if (__new)
    {
      _release_read_window(&availableReaders, __new);
    }
  }
}

uint64_t _reverseStoreIterateTreePage(uint64_t a1, uint64_t *a2, unsigned __int16 *a3, unsigned __int16 *a4, int a5, uint64_t a6)
{
  *(&v71[2] + 6) = *MEMORY[0x1E69E9840];
  if (a3)
  {
    Size = directoryTreePageGetSize(*a3, *(a3 + 2));
    v15 = a3[3];
    v62 = Size;
    if (dword_1EBF46AE4 >= 5)
    {
      v50 = a1;
      v51 = a3[2];
      v52 = *__error();
      v53 = _SILogForLogForCategory(6);
      if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134219008;
        v67 = a3;
        v68 = 1024;
        *v69 = a5;
        *&v69[4] = 1024;
        *&v69[6] = v15;
        v70 = 1024;
        LODWORD(v71[0]) = v51;
        WORD2(v71[0]) = 1024;
        *(v71 + 6) = v62;
        _os_log_impl(&dword_1C278D000, v53, OS_LOG_TYPE_DEFAULT, "Tree page:%p level: %d depth: %d origin: %d size: %d", buf, 0x24u);
      }

      *__error() = v52;
      a1 = v50;
      Size = v62;
    }

    if (v15 != a5)
    {
      v16 = a2;
      v17 = *__error();
      v18 = _SILogForLogForCategory(6);
      v19 = dword_1EBF46AE4 < 3;
      if (os_log_type_enabled(v18, (dword_1EBF46AE4 < 3)))
      {
        *buf = 134218496;
        v67 = a4;
        v68 = 1024;
        *v69 = v15;
        *&v69[4] = 1024;
        *&v69[6] = a5;
        _os_log_impl(&dword_1C278D000, v18, v19, "*warn* Flat page: 0x%8.8llx depth: %d exected: %d", buf, 0x18u);
      }

      *__error() = v17;
      a2 = v16;
      Size = v62;
    }

    if (Size)
    {
      v54 = v15;
      v20 = 0;
      v55 = a3;
      v21 = a3 + 4;
      v22 = a5 + 1;
      v13.n128_u64[0] = 134218496;
      v61 = a3 + 4;
      v63 = v22;
      v59 = a2;
      v60 = a1;
      do
      {
        v23 = *&v21[4 * v20];
        if (v23)
        {
          if (dword_1EBF46AE4 >= 5)
          {
            v38 = *__error();
            v39 = _SILogForLogForCategory(6);
            if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 134218752;
              v67 = v55;
              v68 = 1024;
              *v69 = v54;
              *&v69[4] = 1024;
              *&v69[6] = v20;
              v70 = 2048;
              v71[0] = v23;
              _os_log_impl(&dword_1C278D000, v39, OS_LOG_TYPE_DEFAULT, "page:%p depth: %d idx: %d offset: 0x%8.8llx", buf, 0x22u);
            }

            *__error() = v38;
            v22 = v63;
          }

          v64 = 0;
          Page = _directoryStoreReaderGetPage(a2, v23, &v64, v13, v14);
          v25 = Page;
          if (v64)
          {
            v65 = 0;
            if (Page)
            {
              v26 = directoryStorePageGetSize(Page);
              v27 = *v25;
              if ((64 << *(v25 + 2)) - 8 < v27)
              {
                v43 = __si_assert_copy_extra(0);
                v44 = v43;
                v45 = "";
                if (v43)
                {
                  v45 = v43;
                }

                __message_assert("%s:%u: failed assertion '%s' %s Got end %d and size %d", "FileTree.c", 287, "storePageEnd((StorePageRef)page) <= storePageDataSize((StorePageRef)page)", v45, *v25, (64 << *(v25 + 2)) - 8);
                free(v44);
                if (__valid_fs(-1))
                {
                  goto LABEL_53;
                }

LABEL_57:
                v46 = 3072;
LABEL_58:
                *v46 = -559038737;
                abort();
              }

              v28 = v26;
              v29 = v25[3];
              if (dword_1EBF46AE4 >= 5)
              {
                v58 = v25[2];
                v40 = *__error();
                v41 = _SILogForLogForCategory(6);
                if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 134219008;
                  v67 = v25;
                  v68 = 1024;
                  *v69 = v63;
                  *&v69[4] = 1024;
                  *&v69[6] = v29;
                  v70 = 1024;
                  LODWORD(v71[0]) = v58;
                  WORD2(v71[0]) = 1024;
                  *(v71 + 6) = v28;
                  _os_log_impl(&dword_1C278D000, v41, OS_LOG_TYPE_DEFAULT, "Flat page:%p level: %d depth: %d origin: %d size: %d", buf, 0x24u);
                }

                *__error() = v40;
                v21 = v61;
                v22 = v63;
              }

              if (v22 != v29)
              {
                v56 = *__error();
                v30 = _SILogForLogForCategory(6);
                v31 = dword_1EBF46AE4 < 3;
                if (os_log_type_enabled(v30, (dword_1EBF46AE4 < 3)))
                {
                  *buf = 134218496;
                  v67 = v23;
                  v68 = 1024;
                  *v69 = v29;
                  *&v69[4] = 1024;
                  *&v69[6] = v63;
                  _os_log_impl(&dword_1C278D000, v30, v31, "*warn* Flat page: 0x%8.8llx depth: %d exected: %d", buf, 0x18u);
                }

                *__error() = v56;
                v21 = v61;
                v22 = v63;
              }

              if (v28)
              {
                v32 = v27 >> 4;
                v33 = (v25 + 8);
                v34 = 1;
                Size = v62;
                do
                {
                  v35 = *(v33 - 1);
                  if (v35)
                  {
                    v36 = *v33;
                    if (dword_1EBF46AE4 >= 5)
                    {
                      v57 = *__error();
                      v37 = _SILogForLogForCategory(6);
                      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 134218240;
                        v67 = v35;
                        v68 = 2048;
                        *v69 = v36;
                        _os_log_impl(&dword_1C278D000, v37, OS_LOG_TYPE_DEFAULT, "oid: %lld parent: %lld", buf, 0x16u);
                      }

                      *__error() = v57;
                      Size = v62;
                    }

                    --v32;
                    if (a6)
                    {
                      (*(a6 + 16))(a6, v35, v36, &v65);
                    }
                  }

                  if (v34 >= v28)
                  {
                    break;
                  }

                  v33 += 2;
                  ++v34;
                }

                while ((v65 & 1) == 0);
                v21 = v61;
                v22 = v63;
                if ((v65 & 1) == 0 && v32)
                {
LABEL_54:
                  v47 = __si_assert_copy_extra(*(v60 + 216));
                  v48 = v47;
                  v49 = "";
                  if (v47)
                  {
                    v49 = v47;
                  }

                  __message_assert("%s:%u: failed assertion '%s' %s ", "FileTree.c", 3839, "itemCount == 0", v49);
                  free(v48);
                  if (!__valid_fsp(*(v60 + 216)))
                  {
                    goto LABEL_57;
                  }

LABEL_53:
                  v46 = 2989;
                  goto LABEL_58;
                }

                a2 = v59;
                a1 = v60;
                if (v65)
                {
                  return 1;
                }
              }

              else
              {
                Size = v62;
                if (v27 > 0xF)
                {
                  goto LABEL_54;
                }

                a2 = v59;
                a1 = v60;
              }
            }
          }

          else if (_reverseStoreIterateTreePage(a1, a2, Page, v23, v22, a6))
          {
            return 1;
          }
        }

        ++v20;
      }

      while (v20 != Size);
    }
  }

  return 0;
}