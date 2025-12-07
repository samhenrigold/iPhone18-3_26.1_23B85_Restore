unint64_t burstFlat(uint64_t a1, int *a2, uint64_t a3, unint64_t a4)
{
  v41 = *MEMORY[0x1E69E9840];
  v7 = a3 << 6;
  v8 = storageResolvePtr(a1 + 160, a3 << 6, 8, 1);
  v9 = storageResolvePtr(a1 + 160, v7, 64 << *(v8 + 2), 1);
  v10 = *v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v29 - v12);
  bzero(v40, 0x414uLL);
  memcpy(v13, v9, v10 + 8);
  v14 = *(a1 + 408);
  v29 = 64 << v9[2];
  v30 = v10;
  if (v14 >= 1)
  {
    v15 = (a1 + 432);
    v16 = 1;
    while (1)
    {
      v17 = *v15;
      if (*v15 && (v18 = v17[1], v18 + 1 >= 2) && v18 <= v9 && (v20 = v17[2], v18 - v20 + v17[3] > v9))
      {
        v19 = &v9[v20 - v18];
        if (v16 >= v14)
        {
          goto LABEL_13;
        }
      }

      else
      {
        v19 = -1;
        if (v16 >= v14)
        {
          goto LABEL_13;
        }
      }

      ++v16;
      ++v15;
      if (v19 != -1)
      {
        goto LABEL_13;
      }
    }
  }

  v19 = -1;
LABEL_13:
  bit_vector_set_4242((a1 + 4536), (v19 >> 17));
  if ((v19 >> 17) != (v19 + v29) >> 17)
  {
    bit_vector_set_4242((a1 + 4536), (v19 >> 17) + 1);
  }

  storageFreeOffset(a1 + 160, v7, 64 << v9[2]);
  v31 = *a2;
  v32 = 0;
  v21 = *v13;
  v34 = 0;
  v35 = v13 + 4;
  v33 = 0;
  v36 = 0;
  v37 = v21;
  if (v21 != v30)
  {
    v24 = __si_assert_copy_extra_2708(*(a1 + 376));
    v25 = v24;
    v26 = "";
    if (v24)
    {
      v26 = v24;
    }

    __message_assert("%s:%u: failed assertion '%s' %s flat store", "FlatStore.c", 730, "oldPageEnd == iter.pageEnd", v26);
LABEL_28:
    free(v25);
    if (__valid_fsp(*(a1 + 376)))
    {
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    MEMORY[0xC00] = -559038737;
    abort();
  }

  v38 = 0u;
  for (i = 0u; FlatStorePageIteratorGetNext(&v31, &v38); a4 = insertFromBurst(a1, a2, v40, v22, i, *(&i + 1), a4))
  {
    v22 = (v38 + DWORD1(v38));
    if (v22 > 0x413)
    {
      break;
    }

    memcpy(&v40[DWORD1(v38)], *(&v38 + 1), v38);
  }

  if (v36 != v37)
  {
    v27 = __si_assert_copy_extra_2708(*(a1 + 376));
    v25 = v27;
    v28 = "";
    if (v27)
    {
      v28 = v27;
    }

    __message_assert("%s:%u: failed assertion '%s' %s flat store", "FlatStore.c", 739, "iter.pageCursor==iter.pageEnd", v28);
    goto LABEL_28;
  }

  return a4;
}

uint64_t FlatStorePageIteratorGetNext(uint64_t *a1, uint64_t a2)
{
  v3 = a1[4];
  v2 = a1[5];
  v4 = (a1 + 4);
  if (v3 >= v2)
  {
    return 0;
  }

  v5 = a1[3];
  v6 = v3 + 1;
  v7 = v5 + v3;
  v8 = *(v5 + v3);
  if (*(v5 + v3) < 0)
  {
    if (v8 > 0xBF)
    {
      if (v8 > 0xDF)
      {
        if (v8 > 0xEF)
        {
          v8 = *(v5 + v6);
          v6 = v3 + 5;
        }

        else
        {
          v8 = ((v8 & 0xF) << 24) | (*(v5 + v6) << 16) | (*(v7 + 2) << 8) | *(v7 + 3);
          v6 = v3 + 4;
        }
      }

      else
      {
        v8 = ((v8 & 0x1F) << 16) | (*(v5 + v6) << 8) | *(v7 + 2);
        v6 = v3 + 3;
      }
    }

    else
    {
      v9 = *(v5 + v6) | ((v8 & 0x3F) << 8);
      v6 = v3 + 2;
      v8 = v9;
    }
  }

  *v4 = v6;
  *a2 = v8;
  if (v8)
  {
    v10 = 1;
  }

  else
  {
    v10 = v6 == 1;
  }

  if (!v10)
  {
    v29 = __si_assert_copy_extra_2708(0);
    v30 = v29;
    v31 = "";
    if (v29)
    {
      v31 = v29;
    }

    __message_assert("%s:%u: failed assertion '%s' %s %d, %ld", "FlatStore.h", 424, "entry->len > 0 || iter->pageCursor == v2_vInt32Size(0)", v31, *a2, *v4);
    free(v30);
    if (__valid_fs(-1))
    {
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    MEMORY[0xC00] = -559038737;
    abort();
  }

  v11 = v6 + 1;
  v12 = v5 + v6;
  v13 = *(v5 + v6);
  if (*(v5 + v6) < 0)
  {
    if (v13 > 0xBF)
    {
      if (v13 > 0xDF)
      {
        if (v13 > 0xEF)
        {
          v13 = *(v5 + v11);
          v11 = v6 + 5;
        }

        else
        {
          v13 = ((v13 & 0xF) << 24) | (*(v5 + v11) << 16) | (*(v12 + 2) << 8) | *(v12 + 3);
          v11 = v6 + 4;
        }
      }

      else
      {
        v13 = ((v13 & 0x1F) << 16) | (*(v5 + v11) << 8) | *(v12 + 2);
        v11 = v6 + 3;
      }
    }

    else
    {
      v14 = *(v5 + v11) | ((v13 & 0x3F) << 8);
      v11 = v6 + 2;
      v13 = v14;
    }
  }

  *(a2 + 4) = v13;
  *(a2 + 8) = v5 + v11;
  v15 = v11 + v8;
  *v4 = v15;
  if (v15 > v2)
  {
    return 0;
  }

  if (*a1)
  {
    v17 = *(a1 + 4);
    v18 = a1;
    v20 = v2_readVInt64_2873(v5, v4) + v17;
    *(v18 + 4) = v20;
    *(a2 + 16) = v20;
    VInt64_2873 = v2_readVInt64_2873(v18[3], v4);
    if (VInt64_2873)
    {
      v22 = VInt64_2873;
      a1 = v18;
      v23 = *(v18 + 12) + v22;
      *(v18 + 12) = v23;
      *(a2 + 24) = v23;
    }

    else
    {
      *(a2 + 24) = 0;
      a1 = v18;
    }
  }

  else
  {
    v24 = v15 + 1;
    v25 = v5 + v15;
    v26 = *(v5 + v15);
    if (*(v5 + v15) < 0)
    {
      if (v26 > 0xBF)
      {
        if (v26 > 0xDF)
        {
          if (v26 > 0xEF)
          {
            v26 = *(v5 + v24);
            v24 = v15 + 5;
          }

          else
          {
            v26 = ((v26 & 0xF) << 24) | (*(v5 + v24) << 16) | (*(v25 + 2) << 8) | *(v25 + 3);
            v24 = v15 + 4;
          }
        }

        else
        {
          v26 = ((v26 & 0x1F) << 16) | (*(v5 + v24) << 8) | *(v25 + 2);
          v24 = v15 + 3;
        }
      }

      else
      {
        v27 = *(v5 + v24) | ((v26 & 0x3F) << 8);
        v24 = v15 + 2;
        v26 = v27;
      }
    }

    *v4 = v24;
    *(a2 + 16) = v26;
  }

  if (a1[4] > a1[5])
  {
    v32 = __si_assert_copy_extra_2708(0);
    v33 = v32;
    v34 = "";
    if (v32)
    {
      v34 = v32;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "FlatStore.h", 463, "iter->pageCursor <= iter->pageEnd", v34);
    free(v33);
    if (__valid_fs(-1))
    {
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    MEMORY[0xC00] = -559038737;
    abort();
  }

  return 1;
}

unint64_t dumpFlatData(uint64_t a1, char a2, uint64_t *a3, unint64_t a4, unsigned int a5, uint64_t a6, _DWORD *a7, void (*a8)(uint64_t, _BYTE *, void, void, uint64_t), __n128 q0_0, __n128 a10, uint64_t a9)
{
  v50 = *MEMORY[0x1E69E9840];
  if (HIDWORD(a4))
  {
    v17 = 0;
  }

  else
  {
    v17 = a4 << 6;
  }

  ptr = storage_reader_get_ptr(*a3, a3[1], v17, 8, q0_0, a10);
  if (ptr == -1)
  {
    goto LABEL_40;
  }

  v21 = *ptr;
  v22 = *(ptr + 2);
  v23 = ((64 << v22) - 8);
  if (v23 < v21)
  {
    if (isExFat(*(a1 + 152)) || isMsDos(*(a1 + 152)) || isFat32(*(a1 + 152)))
    {
      v35 = __si_assert_copy_extra_2708(*(a1 + 376));
      si_analytics_log_3138("%s:%u: failure log '%s' %s flat store, pageSize = %u, pageEnd = %u");
LABEL_39:
      free(v35);
      goto LABEL_40;
    }

    v39 = __si_assert_copy_extra_2708(*(a1 + 376));
    __message_assert("%s:%u: failed assertion '%s' %s flat store");
LABEL_45:
    free(v39);
    if (__valid_fsp(*(a1 + 376)))
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

  if (v22 >= 0x1A && (a2 & 1) == 0)
  {
    if (isExFat(*(a1 + 152)) || isMsDos(*(a1 + 152)) || isFat32(*(a1 + 152)))
    {
      v35 = __si_assert_copy_extra_2708(*(a1 + 376));
      si_analytics_log_3138("%s:%u: failure log '%s' %s flat store, pageSize = %u, sizeShift = %d");
      goto LABEL_39;
    }

    v39 = __si_assert_copy_extra_2708(*(a1 + 376));
    __message_assert("%s:%u: failed assertion '%s' %s flat store, pageSize = %u, sizeShift = %d");
    goto LABEL_45;
  }

  v24 = storage_reader_get_ptr(*a3, a3[1], v17, v23 + 8, v19, v20);
  if (v24 == -1)
  {
LABEL_40:
    result = 0;
    *a7 = 1;
    return result;
  }

  v25 = v24;
  bzero(v49, 0x414uLL);
  __memcpy_chk();
  *__src = 0u;
  v48 = 0u;
  *&v43[4] = 0;
  v26 = *(a1 + 4584);
  if ((a2 & 1) == 0)
  {
    if (!v26)
    {
      goto LABEL_11;
    }

LABEL_23:
    v32 = __si_assert_copy_extra_2708(0);
    v33 = v32;
    v34 = "";
    if (v32)
    {
      v34 = v32;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "FlatStore.c", 803, "(!compacted && t->type==kTermInfoTypeId) || (compacted && t->type!=kTermInfoTypeId)", v34);
    free(v33);
    if (__valid_fs(-1))
    {
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    MEMORY[0xC00] = -559038737;
    abort();
  }

  if (!v26)
  {
    goto LABEL_23;
  }

LABEL_11:
  v27 = 0;
  v41 = *(a1 + 4584);
  *v43 = 0;
  v42 = 0;
  v28 = *v25;
  v44 = v25 + 4;
  v45 = 0;
  v46 = v28;
  if (!*a7)
  {
    do
    {
      if (!FlatStorePageIteratorGetNext(&v41, __src))
      {
        break;
      }

      v29 = HIDWORD(__src[0]) + a5 + LODWORD(__src[0]);
      if (v29 > 0x413)
      {
        break;
      }

      memcpy(&v49[a5 + HIDWORD(__src[0])], __src[1], LODWORD(__src[0]));
      v49[v29] = 0;
      a8(v29, v49, v48, *(&v48 + 1), a9);
    }

    while (!*a7);
    v27 = v45;
    v28 = v46;
  }

  if (*a7)
  {
    v30 = 1;
  }

  else
  {
    v30 = v27 == v28;
  }

  if (!v30)
  {
    v36 = __si_assert_copy_extra_2708(*(a1 + 376));
    v37 = v36;
    v38 = "";
    if (v36)
    {
      v38 = v36;
    }

    __message_assert("%s:%u: failed assertion '%s' %s flat store", "FlatStore.c", 815, "*canceled || iter.pageCursor==iter.pageEnd", v38);
    free(v37);
    if (__valid_fsp(*(a1 + 376)))
    {
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    MEMORY[0xC00] = -559038737;
    abort();
  }

  return v17 + v21;
}

uint64_t flatLastCompactTermOffset(uint64_t a1, unint64_t a2)
{
  v2 = 0;
  if (!HIDWORD(a2) && a2)
  {
    if (*(a1 + 4584) == 1 && (v3 = a2 << 6, v5 = storageResolvePtr(a1 + 160, a2 << 6, 8, 1), v5 + 1 >= 2) && (v6 = *v5, v7 = ((64 << *(v5 + 2)) - 8), v8 = storageResolvePtr(a1 + 160, v3, v7 + 8, 1), v8 + 1 >= 2) && v7 >= v6)
    {
      v2 = 0;
      v18 = 0u;
      v19 = 0u;
      v11 = *(a1 + 4584);
      v10 = *v8;
      v12 = 0;
      v14 = 0;
      v15 = v8 + 4;
      v13 = 0;
      v16 = 0;
      v17 = v10;
      while (FlatStorePageIteratorGetNext(&v11, &v18))
      {
        v2 = v19;
      }
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

uint64_t _indexMarkInvalid(uint64_t result)
{
  if (result)
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t _indexMatchAddress(uint64_t result, unint64_t a2)
{
  v64 = *MEMORY[0x1E69E9840];
  if (!result)
  {
    return result;
  }

  v2 = result;
  v3 = *(result + 14408);
  if (v3 + 1 >= 2 && v3 <= a2)
  {
    v33 = *(result + 72);
    if (v3 + 8 * v33 > a2)
    {
      v34 = *(result + 14448);
      v35 = "index docId array";
      goto LABEL_81;
    }
  }

  v3 = *(result + 14416);
  if (v3 + 1 >= 2 && v3 <= a2)
  {
    v33 = *(result + 72);
    if (v3 + 4 * v33 > a2)
    {
      v34 = *(result + 14456);
      v35 = "index date array";
      goto LABEL_81;
    }
  }

  v3 = *(result + 14424);
  if (v3 + 1 >= 2 && v3 <= a2)
  {
    v33 = *(result + 72);
    if (v3 + 8 * v33 > a2)
    {
      v34 = *(result + 14464);
      v35 = "index score array";
      goto LABEL_81;
    }
  }

  v3 = *(result + 14432);
  if (v3 + 1 >= 2 && v3 <= a2)
  {
    v33 = *(result + 72);
    if (*(result + 45) != 1)
    {
      v33 = (4 * v33 + 4) / 5uLL;
    }

    if (v3 + v33 > a2)
    {
      v34 = *(result + 14472);
      v35 = "index group array";
      goto LABEL_81;
    }
  }

  v3 = *(result + 112);
  if (v3 + 1 >= 2 && v3 <= a2)
  {
    v33 = *(result + 136);
    if (v3 + v33 > a2)
    {
      v34 = *(result + 208);
      v35 = "bases";
LABEL_81:
      log_map_access_error(a2, v3, v33, v35, v34);
      return 1;
    }
  }

  v3 = *(result + 104);
  if (v3 + 1 >= 2 && v3 <= a2)
  {
    v33 = *(result + 244);
    if (v3 + 1028 * v33 > a2)
    {
      v34 = *(result + 4672);
      v35 = "fat bases";
      goto LABEL_81;
    }
  }

  v8 = *(result + 504);
  if (v8 < 1)
  {
    goto LABEL_35;
  }

  v9 = 1;
  v10 = (result + 528);
  do
  {
    v11 = *v10;
    if (!*v10 || (v12 = v11[1], v12 + 1 < 2) || v12 > a2 || (v14 = v11[2], v12 - v14 + v11[3] <= a2))
    {
      v13 = 1;
      if (v9 >= v8)
      {
        break;
      }

      goto LABEL_29;
    }

    v13 = a2 - v12 + v14 == -1;
    if (v9 >= v8)
    {
      break;
    }

LABEL_29:
    ++v9;
    ++v10;
  }

  while (v13);
  if (!v13)
  {
    v29 = a2;
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    *__str = 0u;
    v49 = 0u;
    v36 = snprintf(__str, 0xFFuLL, "c:%d s:%lld", v8, *(result + 480));
    if (*(v2 + 504) >= 1 && v36 <= 0xFE)
    {
      v37 = 0;
      v38 = v36;
      v39 = 255 - v36;
      do
      {
        snprintf(&__str[v38], v39, "%d:(mem:%p so:%lld eo:%lld)", v37, *(*(v2 + 528 + 8 * v37) + 8), *(*(v2 + 528 + 8 * v37) + 16), *(*(v2 + 528 + 8 * v37) + 24));
        ++v37;
      }

      while (v37 < *(v2 + 504));
    }

    v31 = *(v2 + 472);
    goto LABEL_95;
  }

LABEL_35:
  v15 = *(result + 5232);
  if (v15 < 1)
  {
    goto LABEL_46;
  }

  v16 = 1;
  v17 = (result + 5256);
  while (2)
  {
    v18 = *v17;
    if (!*v17 || (v19 = v18[1], v19 + 1 < 2) || v19 > a2 || (v21 = v18[2], v19 - v21 + v18[3] <= a2))
    {
      v20 = 1;
      if (v16 >= v15)
      {
        goto LABEL_45;
      }

LABEL_40:
      ++v16;
      ++v17;
      if (!v20)
      {
        goto LABEL_45;
      }

      continue;
    }

    break;
  }

  v20 = a2 - v19 + v21 == -1;
  if (v16 < v15)
  {
    goto LABEL_40;
  }

LABEL_45:
  if (!v20)
  {
    v29 = a2;
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    *__str = 0u;
    v49 = 0u;
    v40 = snprintf(__str, 0xFFuLL, "c:%d s:%lld", v15, *(result + 5208));
    if (*(v2 + 5232) >= 1 && v40 <= 0xFE)
    {
      v41 = 0;
      v42 = v40;
      v43 = 255 - v40;
      do
      {
        snprintf(&__str[v42], v43, "%d:(mem:%p so:%lld eo:%lld)", v41, *(*(v2 + 5256 + 8 * v41) + 8), *(*(v2 + 5256 + 8 * v41) + 16), *(*(v2 + 5256 + 8 * v41) + 24));
        ++v41;
      }

      while (v41 < *(v2 + 5232));
    }

    v31 = *(v2 + 5200);
    goto LABEL_95;
  }

LABEL_46:
  v22 = *(result + 9952);
  if (v22 < 1)
  {
LABEL_57:
    v29 = a2;
    v30 = *(result + 4928);
    if (v30 && _windowsAddressOffset(v30 + 224, a2) != -1)
    {
      v62 = 0u;
      v63 = 0u;
      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      v56 = 0u;
      v57 = 0u;
      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      *__str = 0u;
      v49 = 0u;
      storage_describe_windows(v30 + 8, __str);
      v31 = *(*(v2 + 4928) + 224);
      v32 = v2 + 15208;
      goto LABEL_96;
    }

    result = *(v2 + 4912);
    if (result)
    {
      result = vectorIndexValidAddress(result, v29);
      if (result)
      {
        v62 = 0u;
        v63 = 0u;
        v60 = 0u;
        v61 = 0u;
        v58 = 0u;
        v59 = 0u;
        v56 = 0u;
        v57 = 0u;
        v54 = 0u;
        v55 = 0u;
        v52 = 0u;
        v53 = 0u;
        v50 = 0u;
        v51 = 0u;
        *__str = 0u;
        v49 = 0u;
        v31 = *(*(v2 + 4928) + 224);
        v32 = v2 + 15208;
        goto LABEL_96;
      }
    }

    return result;
  }

  v23 = 1;
  v24 = (result + 9976);
  while (2)
  {
    v25 = *v24;
    if (!*v24 || (v26 = v25[1], v26 + 1 < 2) || v26 > a2 || (v28 = v25[2], v26 - v28 + v25[3] <= a2))
    {
      v27 = 1;
      if (v23 >= v22)
      {
        goto LABEL_56;
      }

LABEL_51:
      ++v23;
      ++v24;
      if (!v27)
      {
        goto LABEL_56;
      }

      continue;
    }

    break;
  }

  v27 = a2 - v26 + v28 == -1;
  if (v23 < v22)
  {
    goto LABEL_51;
  }

LABEL_56:
  if (v27)
  {
    goto LABEL_57;
  }

  v29 = a2;
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  *__str = 0u;
  v49 = 0u;
  v44 = snprintf(__str, 0xFFuLL, "c:%d s:%lld", v22, *(result + 9928));
  if (*(v2 + 9952) >= 1 && v44 <= 0xFE)
  {
    v45 = 0;
    v46 = v44;
    v47 = 255 - v44;
    do
    {
      snprintf(&__str[v46], v47, "%d:(mem:%p so:%lld eo:%lld)", v45, *(*(v2 + 9976 + 8 * v45) + 8), *(*(v2 + 9976 + 8 * v45) + 16), *(*(v2 + 9976 + 8 * v45) + 24));
      ++v45;
    }

    while (v45 < *(v2 + 9952));
  }

  v31 = *(v2 + 9920);
LABEL_95:
  v32 = v2 + 15208;
LABEL_96:
  log_map_access_error_mini(v32, v29, __str, v31);
  return 1;
}

int *log_map_access_error(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v39 = *MEMORY[0x1E69E9840];
  if (a5)
  {
    v9 = *(a5 + 44);
  }

  else
  {
    v9 = -1;
  }

  memset(&v15, 0, sizeof(v15));
  memset(v38, 0, sizeof(v38));
  v10 = fd_name(a5, v38, 0x100uLL);
  v11 = fstatat(v9, v10, &v15, 32);
  v12 = *__error();
  v13 = _SILogForLogForCategory(0);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    *buf = 136317698;
    v17 = "log_map_access_error";
    v18 = 1024;
    v19 = 5038;
    v20 = 2080;
    v21 = a4;
    v22 = 2080;
    v23 = v10;
    v24 = 2048;
    v25 = a1;
    v26 = 2048;
    v27 = a2;
    v28 = 2048;
    v29 = a2 + a3;
    v30 = 1024;
    v31 = v11;
    v32 = 2048;
    st_size = v15.st_size;
    v34 = 1024;
    st_dev = v15.st_dev;
    v36 = 2048;
    st_ino = v15.st_ino;
    _os_log_error_impl(&dword_1C278D000, v13, OS_LOG_TYPE_ERROR, "%s:%d: Got exception on %s %s addr:%p start:%p map end:%p sres:%d file_size:%lld dev:%d ino:%lld", buf, 0x64u);
  }

  result = __error();
  *result = v12;
  return result;
}

int *log_map_access_error_mini(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    v7 = *(a4 + 44);
  }

  else
  {
    v7 = -1;
  }

  memset(&v13, 0, sizeof(v13));
  memset(v34, 0, sizeof(v34));
  v8 = fd_name(a4, v34, 0x100uLL);
  v9 = fstatat(v7, v8, &v13, 32);
  v10 = *__error();
  v11 = _SILogForLogForCategory(0);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    *buf = 136317442;
    v15 = "log_map_access_error_mini";
    v16 = 1024;
    v17 = 5048;
    v18 = 2080;
    v19 = a1;
    v20 = 2080;
    v21 = v8;
    v22 = 2048;
    v23 = a2;
    v24 = 2080;
    v25 = a3;
    v26 = 1024;
    v27 = v9;
    v28 = 2048;
    st_size = v13.st_size;
    v30 = 1024;
    st_dev = v13.st_dev;
    v32 = 2048;
    st_ino = v13.st_ino;
    _os_log_error_impl(&dword_1C278D000, v11, OS_LOG_TYPE_ERROR, "%s:%d: Got exception on %s %s addr:%p %s sres:%d file_size:%lld dev:%d ino:%lld", buf, 0x5Au);
  }

  result = __error();
  *result = v10;
  return result;
}

uint64_t indexCopyDeleteDocIds(uint64_t a1, int a2, CFIndex **a3)
{
  if (a2)
  {
    db_read_lock(a1 + 14504);
  }

  LODWORD(v6) = *(a1 + 68);
  v7 = malloc_type_malloc(0x18uLL, 0x10200403ED2C137uLL);
  if (!v7)
  {
    v20 = __si_assert_copy_extra_3233(0, -1);
    v21 = v20;
    v22 = "";
    if (v20)
    {
      v22 = v20;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "bit_vector.h", 41, "bv", v22);
LABEL_34:
    free(v21);
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

  v8 = v7;
  v9 = *MEMORY[0x1E695E480];
  if (v6 <= 0x80)
  {
    v6 = 128;
  }

  else
  {
    v6 = v6;
  }

  *v8 = 0;
  v8[1] = v6;
  Mutable = CFBitVectorCreateMutable(v9, v6);
  v8[2] = Mutable;
  CFBitVectorSetCount(Mutable, v6);
  if (!v8[2])
  {
    v23 = __si_assert_copy_extra_3233(0, -1);
    v21 = v23;
    v24 = "";
    if (v23)
    {
      v24 = v23;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "bit_vector.h", 47, "bv->_cfbv", v24);
    goto LABEL_34;
  }

  v11 = *(a1 + 68);
  if (v11 < 2)
  {
    v12 = 0;
    goto LABEL_23;
  }

  v12 = 0;
  v13 = -1;
  v14 = 1;
  v15 = 6;
  v16 = 1;
  v17 = -1;
  do
  {
    if (*(a1 + 45) == 1)
    {
      if ((*(*(a1 + 14432) + v14) & 0xDF) == 0)
      {
        goto LABEL_10;
      }
    }

    else if (((*(*(a1 + 14432) + (((3435973837u * v14) >> 32) & 0xFFFFFFFC)) >> (v15 - 30 * (v14 / 5))) & 0x1F) == 0)
    {
LABEL_10:
      if (v13 == -1)
      {
        v13 = v14;
      }

      v12 = (v12 + 1);
      v17 = v14;
      goto LABEL_13;
    }

    if (v13 != -1)
    {
      bit_vector_set_bits(v8, v13, (v17 + v16 + 1));
      v11 = *(a1 + 68);
      v17 = -1;
      v13 = -1;
    }

LABEL_13:
    ++v14;
    v16 = -v13;
    v15 += 6;
  }

  while (v14 < v11);
  if (v13 != -1)
  {
    bit_vector_set_bits(v8, v13, v17 - v13 + 1);
  }

LABEL_23:
  if (a2)
  {
    pthread_mutex_lock((a1 + 14504));
    v18 = *(a1 + 14700) - 1;
    *(a1 + 14700) = v18;
    if (!v18)
    {
      db_rwlock_wakeup(a1 + 14504, 0, 0);
    }

    pthread_mutex_unlock((a1 + 14504));
  }

  *a3 = v8;
  return v12;
}

char *__si_assert_copy_extra_3233(_DWORD *a1, int a2)
{
  v15 = *MEMORY[0x1E69E9840];
  bzero(v14, 0x400uLL);
  if (a1)
  {
    v13 = 0;
    v4 = _fd_acquire_fd(a1, &v13);
    if (v4 != -1)
    {
      v5 = v14;
      v6 = v4;
      v7 = fcntl(v4, 50, v14);
      v8 = v14[0];
      _fd_release_fd(a1, v6, 0, v13);
      if ((v7 & 0x80000000) == 0)
      {
        if (v8)
        {
          goto LABEL_12;
        }
      }
    }
  }

  else if (a2 != -1)
  {
    v5 = v14;
    if ((fcntl(a2, 50, v14) & 0x80000000) == 0)
    {
      if (v14[0])
      {
        goto LABEL_12;
      }
    }
  }

  v9 = getcwd(v14, 0x400uLL);
  if (v9)
  {
    v5 = v9;
  }

  else
  {
    v5 = "";
  }

LABEL_12:
  v13 = 0;
  v10 = pthread_getspecific(__THREAD_STR_DATA_KEY[0]);
  if (v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = "";
  }

  asprintf(&v13, "%s %s", v5, v11);
  return v13;
}

void bit_vector_set_bits(CFIndex *a1, CFIndex a2, CFIndex a3)
{
  if (a2 < 0)
  {
    v8 = __si_assert_copy_extra_3233(0, -1);
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
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    MEMORY[0xC00] = -559038737;
    abort();
  }

  if (a3 >= 1)
  {
    bit_vector_internal_touch_for_set(a1, a3 + a2 - 1);
    v6 = a1[2];
    v7.location = a2;
    v7.length = a3;

    CFBitVectorSetBits(v6, v7, 1u);
  }
}

CFIndex *bit_vector_internal_touch_for_set(CFIndex *result, CFIndex a2)
{
  v2 = result[1];
  if (v2 <= a2)
  {
    if (v2)
    {
      v3 = result[1];
    }

    else
    {
      v3 = 32;
    }

    while (1)
    {
      v3 *= 2;
      if (v3 > a2)
      {
        break;
      }

      if (v3 <= v2)
      {
        v4 = __si_assert_copy_extra_3233(0, -1);
        v5 = v4;
        v6 = "";
        if (v4)
        {
          v6 = v4;
        }

        __message_assert("%s:%u: failed assertion '%s' %s ", "bit_vector.h", 124, "newCapacity > bv->capacity", v6);
        free(v5);
        if (__valid_fs(-1))
        {
          MEMORY[0xBAD] = -559038737;
          abort();
        }

        MEMORY[0xC00] = -559038737;
        abort();
      }
    }

    v7 = a2;
    v8 = result;
    v9 = result[2];
    v10 = *MEMORY[0x1E695E480];
    if (v9)
    {
      MutableCopy = CFBitVectorCreateMutableCopy(v10, v3, v9);
    }

    else
    {
      MutableCopy = CFBitVectorCreateMutable(v10, v3);
    }

    v12 = MutableCopy;
    if (!MutableCopy)
    {
      v13 = __si_assert_copy_extra_3233(0, -1);
      v14 = v13;
      v15 = "";
      if (v13)
      {
        v15 = v13;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "bit_vector.h", 128, "newBV", v15);
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

    CFBitVectorSetCount(MutableCopy, v3);
    result = v8;
    if (v8[2])
    {
      CFRelease(v8[2]);
      result = v8;
    }

    result[1] = v3;
    result[2] = v12;
    a2 = v7;
  }

  if (*result <= a2)
  {
    *result = a2 + 1;
  }

  return result;
}

{
  v2 = result[1];
  if (v2 <= a2)
  {
    if (v2)
    {
      v3 = result[1];
    }

    else
    {
      v3 = 32;
    }

    while (1)
    {
      v3 *= 2;
      if (v3 > a2)
      {
        break;
      }

      if (v3 <= v2)
      {
        v4 = __si_assert_copy_extra_332();
        v5 = v4;
        v6 = "";
        if (v4)
        {
          v6 = v4;
        }

        __message_assert("%s:%u: failed assertion '%s' %s ", "bit_vector.h", 124, "newCapacity > bv->capacity", v6);
        free(v5);
        if (__valid_fs(-1))
        {
          MEMORY[0xBAD] = -559038737;
          abort();
        }

        MEMORY[0xC00] = -559038737;
        abort();
      }
    }

    v7 = a2;
    v8 = result;
    v9 = result[2];
    v10 = *MEMORY[0x1E695E480];
    if (v9)
    {
      MutableCopy = CFBitVectorCreateMutableCopy(v10, v3, v9);
    }

    else
    {
      MutableCopy = CFBitVectorCreateMutable(v10, v3);
    }

    v12 = MutableCopy;
    if (!MutableCopy)
    {
      v13 = __si_assert_copy_extra_332();
      v14 = v13;
      v15 = "";
      if (v13)
      {
        v15 = v13;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "bit_vector.h", 128, "newBV", v15);
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

    CFBitVectorSetCount(MutableCopy, v3);
    result = v8;
    if (v8[2])
    {
      CFRelease(v8[2]);
      result = v8;
    }

    result[1] = v3;
    result[2] = v12;
    a2 = v7;
  }

  if (*result <= a2)
  {
    *result = a2 + 1;
  }

  return result;
}

uint64_t index_FlushCache(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v317 = *MEMORY[0x1E69E9840];
  v10 = a1 + 12288;
  v11 = index_FlushCache_physMem;
  if (!index_FlushCache_physMem)
  {
    memset(host_info_out, 0, sizeof(host_info_out));
    *host_info_outCnt = 12;
    v12 = MEMORY[0x1C6920B70]();
    v13 = host_info(v12, 1, host_info_out, host_info_outCnt);
    v14 = *&host_info_out[10];
    if (*&host_info_out[10] >= 0x80000000uLL)
    {
      v14 = 0x80000000;
    }

    if (v13)
    {
      v11 = 0x40000000;
    }

    else
    {
      v11 = v14;
    }

    index_FlushCache_physMem = v11;
  }

  if (*(v10 + 2915) == 1)
  {
    if ((index_FlushCache__COUNT_ & 1) == 0)
    {
      index_FlushCache__COUNT_ = 1;
      v15 = *__error();
      v16 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        host_info_out[0] = 136315650;
        *&host_info_out[1] = "index_FlushCache";
        LOWORD(host_info_out[3]) = 1024;
        *(&host_info_out[3] + 2) = 312;
        HIWORD(host_info_out[4]) = 2080;
        *&host_info_out[5] = a1 + 15208;
        _os_log_error_impl(&dword_1C278D000, v16, OS_LOG_TYPE_ERROR, "%s:%d: trying to modify read only index %s", host_info_out, 0x1Cu);
      }

      *__error() = v15;
    }

    (*(a5 + 16))(a5);
    return 1;
  }

  if (!*(a1 + 14392))
  {
    (*(a5 + 16))(a5);
    return 0;
  }

  v293 = a3;
  v291 = *MEMORY[0x1E69E9AC8];
  v18 = v11 >> 3;
  v19 = (v11 >> 3) - 0x800000;
  if (v11 <= 0x40000007)
  {
    v19 = v11 >> 3;
  }

  v297 = v19;
  HIDWORD(v21) = qos_class_self() - 9;
  LODWORD(v21) = HIDWORD(v21);
  v20 = v21 >> 2;
  if (v20 > 6)
  {
    v22 = 0;
  }

  else
  {
    v22 = dword_1C2BFF8F0[v20];
  }

  pthread_mutex_lock((a1 + 14720));
  if (*(a1 + 14904) || *(a1 + 14916) || (*(v10 + 2644) & 1) != 0)
  {
LABEL_24:
    db_rwlock_wait(a1 + 14720, v22, 2);
    goto LABEL_25;
  }

  if (v22 <= 5)
  {
    v86 = v22 - 6;
    v87 = (a1 + 16 * v22 + 14784);
    while (!*v87)
    {
      v87 += 2;
      v88 = __CFADD__(v86++, 1);
      if (v88)
      {
        goto LABEL_109;
      }
    }

    goto LABEL_24;
  }

LABEL_109:
  *(a1 + 14904) = pthread_self();
LABEL_25:
  pthread_mutex_unlock((a1 + 14720));
  if (*(a1 + 14400))
  {
    v243 = __si_assert_copy_extra_3233(0, *(a1 + 64));
    v244 = v243;
    v245 = "";
    if (v243)
    {
      v245 = v243;
    }

    __message_assert("%s:%u: failed assertion '%s' %s Expected cindex->_oldSet==0, got %p", "JHContentIndex.c", 410, "cindex->_oldSet==0", v245, *(a1 + 14400));
    free(v244);
    if (!__valid_fs(*(a1 + 64)))
    {
      goto LABEL_397;
    }

    goto LABEL_369;
  }

  v290 = v11;
  v23 = *(a1 + 14392);
  *(a1 + 14400) = v23;
  TermUpdateSetRemoveFromAccounting(v23);
  v24 = *(a1 + 68);
  if (*(a1 + 46))
  {
    v25 = 32;
  }

  else
  {
    v25 = 0;
  }

  *(v10 + 3376) = 0;
  *(a1 + 14392) = TermUpdateSetCreate(_indexProgress, a1, *(a1 + 80), v24, v25, *(a1 + 14384), *(a1 + 56), *(a1 + 4936));
  (*(a5 + 16))(a5);
  v26 = *(a1 + 14392);
  if (v26)
  {
    if (*(v10 + 2914) == 1)
    {
      *(v26 + 608) = getPropertyStringCallback;
    }

    *(v26 + 280) = a1 + 14184;
  }

  pthread_mutex_lock((a1 + 14720));
  *(a1 + 14924) = 0;
  v27 = *(a1 + 14896);
  *(a1 + 14896) = 0u;
  v28 = *(a1 + 14916) != 0;
  *(v10 + 2644) = 0;
  db_rwlock_wakeup(a1 + 14720, v28, 0);
  pthread_mutex_unlock((a1 + 14720));
  if (v27)
  {
    pthread_override_qos_class_end_np(v27);
  }

  v29 = *(a1 + 14400);
  v292 = v24;
  if (a2)
  {
    if (!v29)
    {
      HIDWORD(v31) = qos_class_self() - 9;
      LODWORD(v31) = HIDWORD(v31);
      v30 = v31 >> 2;
      if (v30 > 6)
      {
        v32 = 0;
      }

      else
      {
        v32 = dword_1C2BFF8F0[v30];
      }

      pthread_mutex_lock((a1 + 14720));
      if (!*(a1 + 14904) && !*(a1 + 14916) && (*(v10 + 2644) & 1) == 0)
      {
        if (v32 > 5)
        {
LABEL_168:
          *(a1 + 14904) = pthread_self();
          goto LABEL_101;
        }

        v115 = v32 - 6;
        v116 = (a1 + 16 * v32 + 14784);
        while (!*v116)
        {
          v116 += 2;
          v88 = __CFADD__(v115++, 1);
          if (v88)
          {
            goto LABEL_168;
          }
        }
      }

      db_rwlock_wait(a1 + 14720, v32, 2);
LABEL_101:
      pthread_mutex_unlock((a1 + 14720));
      goto LABEL_331;
    }
  }

  else
  {
    *(v29 + 592) = _termUpdateSetProgress;
    *(v29 + 600) = 0;
  }

  v33 = *(a1 + 15576);
  **(a1 + 104) = v33;
  **(a1 + 112) = v33;
  v34 = storageResolvePtr(a1 + 256, 0, 8, 1);
  if (!v34)
  {
    v50 = *__error();
    v51 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
    {
      v114 = *__error();
      host_info_out[0] = 136315650;
      *&host_info_out[1] = "index_FlushCache";
      LOWORD(host_info_out[3]) = 1024;
      *(&host_info_out[3] + 2) = 484;
      HIWORD(host_info_out[4]) = 1024;
      host_info_out[5] = v114;
      _os_log_error_impl(&dword_1C278D000, v51, OS_LOG_TYPE_ERROR, "%s:%d: error %d updating sync count", host_info_out, 0x18u);
    }

    *__error() = v50;
    v17 = *__error();
    goto LABEL_323;
  }

  v287 = v18;
  v288 = a4;
  *v34 = *(a1 + 15576);
  v299 = 0;
  v35 = atomic_load((a1 + 36));
  if ((v35 & 0xC) == 8)
  {
    indexCopyDeleteDocIds(a1, a2 ^ 1, &v299);
  }

  v282 = *(a1 + 4928);
  Current = CFAbsoluteTimeGetCurrent();
  v37 = v299;
  v294 = *(a1 + 4912);
  v298 = *(a1 + 14400);
  v38 = atomic_load((a1 + 36));
  v280 = v38;
  bzero(v313, 0x848uLL);
  v39 = *(a1 + 9400);
  v314 = v293;
  v315 = a4;
  *&v313[1044] = 0u;
  *host_info_out = a1 + 96;
  *&host_info_out[2] = 0;
  memset(&host_info_out[6], 0, 24);
  *&host_info_out[4] = v39;
  ++generation;
  v40 = CFAbsoluteTimeGetCurrent();
  v41 = *__error();
  v42 = _SILogForLogForCategory(10);
  v43 = 2 * (dword_1EBF46AF4 < 4);
  if (os_log_type_enabled(v42, v43))
  {
    *host_info_outCnt = 0;
    _os_log_impl(&dword_1C278D000, v42, v43, "Merge update set ... ", host_info_outCnt, 2u);
  }

  *__error() = v41;
  currentSet = v298;
  currentCount = 0;
  if (__THREAD_SLOT_KEY[0])
  {
    v44 = pthread_getspecific(__THREAD_SLOT_KEY[0]);
    if (v44)
    {
      goto LABEL_47;
    }
  }

  else
  {
    makeThreadId();
    v44 = pthread_getspecific(__THREAD_SLOT_KEY[0]);
    if (v44)
    {
LABEL_47:
      if (v44 < 0x801)
      {
        goto LABEL_48;
      }
    }
  }

  makeThreadId();
  v44 = pthread_getspecific(__THREAD_SLOT_KEY[0]);
LABEL_48:
  v45 = v44 - 1;
  v46 = malloc_type_zone_calloc(indexingZone, 1uLL, 0x38uLL, 0x10A0040FEFBC11AuLL);
  *v46 = a1 + 96;
  v46[1] = v298;
  v295 = v46;
  CIOnThreadCleanUpPush(v45, TrieMergeCleanup, v46);
  HIDWORD(v48) = qos_class_self() - 9;
  LODWORD(v48) = HIDWORD(v48);
  v47 = v48 >> 2;
  if (v47 > 6)
  {
    v49 = 0;
  }

  else
  {
    v49 = dword_1C2BFF8F0[v47];
  }

  pthread_mutex_lock((a1 + 4696));
  v286 = v45;
  if (!*(a1 + 4880) && !*(a1 + 4892) && (*(a1 + 4908) & 1) == 0)
  {
    if (v49 > 5)
    {
LABEL_117:
      *(a1 + 4880) = pthread_self();
      *(a1 + 4908) = 1;
      goto LABEL_58;
    }

    v89 = v49 - 6;
    v90 = (a1 + 16 * v49 + 4760);
    while (!*v90)
    {
      v90 += 2;
      v88 = __CFADD__(v89++, 1);
      if (v88)
      {
        goto LABEL_117;
      }
    }
  }

  db_rwlock_wait(a1 + 4696, v49, 3);
LABEL_58:
  pthread_mutex_unlock((a1 + 4696));
  *(v295 + 49) = 1;
  db_read_lock(v298 + 304);
  *(v295 + 48) = 1;
  v284 = *(v298 + 592);
  v285 = *(v298 + 600);
  v52 = atomic_load((*(v298 + 24) + 16));
  if (!v52 && !*(v298 + 80) && !*(v298 + 48))
  {
    v17 = 0;
    v60 = 1;
    goto LABEL_70;
  }

  v279 = v37;
  v283 = v10;
  v53 = atomic_load((*(v298 + 24) + 16));
  v54 = malloc_type_zone_malloc(indexingZone, 8 * (v53 + 1), 0x2004093837F09uLL);
  v295[2] = v54;
  v55 = malloc_type_zone_malloc(indexingZone, 16 * (v53 + 1), 0x1000040451B5BE8uLL);
  v295[3] = v55;
  v56 = malloc_type_zone_malloc(indexingZone, 16 * (v53 + 1), 0x1000040451B5BE8uLL);
  v295[5] = v56;
  v57 = malloc_type_zone_calloc(indexingZone, v53 + 1, 0x18uLL, 0x10200409F4E64B8uLL);
  v295[4] = v57;
  if (v54)
  {
    v58 = v55 == 0;
  }

  else
  {
    v58 = 1;
  }

  if (v58 || v57 == 0)
  {
    v17 = 0xFFFFFFFFLL;
    v60 = 1;
    v10 = v283;
LABEL_70:
    v61 = v45;
    goto LABEL_302;
  }

  v281 = v57;
  __base = v55;
  v62 = *__error();
  v63 = _SILogForLogForCategory(10);
  v64 = 2 * (dword_1EBF46AF4 < 4);
  if (os_log_type_enabled(v63, v64))
  {
    *host_info_outCnt = 134217984;
    *&host_info_outCnt[4] = v53;
    _os_log_impl(&dword_1C278D000, v63, v64, "Merge %lu terms", host_info_outCnt, 0xCu);
  }

  *__error() = v62;
  if (v284(v285) == -1)
  {
    v83 = *__error();
    v84 = _SILogForLogForCategory(10);
    v85 = 2 * (dword_1EBF46AF4 < 4);
    if (!os_log_type_enabled(v84, v85))
    {
      goto LABEL_160;
    }

    *host_info_outCnt = 0;
LABEL_159:
    _os_log_impl(&dword_1C278D000, v84, v85, "Merge Canceled", host_info_outCnt, 2u);
    goto LABEL_160;
  }

  v66 = CFAbsoluteTimeGetCurrent();
  v67 = *(v298 + 24);
  *&__n[1] = 0;
  v301 = &__n[1];
  LODWORD(v303) = 0;
  v302 = 0x2000000000;
  *host_info_outCnt = MEMORY[0x1E69E9820];
  *&host_info_outCnt[8] = 0x40000000;
  *&host_info_outCnt[16] = ___hashTableIterate_block_invoke;
  *&host_info_outCnt[24] = &unk_1E81939A0;
  *&host_info_outCnt[32] = &__n[1];
  *&host_info_outCnt[40] = v54;
  _TermTrieWalkFatWithOptions((v67 + 32), 0, 1, 0, host_info_outCnt, 0, 0);
  _Block_object_dispose(&__n[1], 8);
  v68 = *__error();
  v69 = _SILogForLogForCategory(10);
  v70 = 2 * (dword_1EBF46AF4 < 4);
  if (os_log_type_enabled(v69, v70))
  {
    v71 = CFAbsoluteTimeGetCurrent();
    *host_info_outCnt = 134217984;
    *&host_info_outCnt[4] = v71 - v66;
    _os_log_impl(&dword_1C278D000, v69, v70, "Copied term data: %f seconds", host_info_outCnt, 0xCu);
  }

  *__error() = v68;
  if (v284(v285) == -1)
  {
    v83 = *__error();
    v84 = _SILogForLogForCategory(10);
    v85 = 2 * (dword_1EBF46AF4 < 4);
    if (!os_log_type_enabled(v84, v85))
    {
      goto LABEL_160;
    }

    *host_info_outCnt = 0;
    goto LABEL_159;
  }

  v273 = *(a1 + 4944);
  v274 = *(a1 + 4952);
  v72 = CFAbsoluteTimeGetCurrent();
  __n[0] = 0;
  if (v53)
  {
    v73 = 0;
    v74 = 0;
    LODWORD(v75) = 0;
    v76 = __base;
    do
    {
      while (1)
      {
        v77 = &v76[16 * v73];
        *v77 = v75;
        Offset = bt_getOffset(a1 + 96, *(v54[v75] + 16), v54[v75] + 18, __n);
        *(v77 + 1) = Offset;
        v75 = (v75 + 1);
        if (!Offset)
        {
          break;
        }

        if (v75 < v53)
        {
          v79 = __n[0];
          while (1)
          {
            v80 = v54[v75];
            if (v79 >= *(v80 + 16) || memcmp((v54[*v77] + 18), (v80 + 18), v79))
            {
              break;
            }

            if (v53 == ++v75)
            {
              LODWORD(v75) = v53;
              break;
            }
          }

          v76 = __base;
        }

        *(v77 + 1) = v75;
        ++v73;
        if (v75 >= v53)
        {
          goto LABEL_93;
        }
      }

      v81 = &v56[v74];
      *v81 = *v77;
      *(v81 + 2) = 0;
      if (v75 < v53)
      {
        while (!bt_getOffset(a1 + 96, *(v54[v75] + 16), v54[v75] + 18, __n))
        {
          if (v53 == ++v75)
          {
            LODWORD(v75) = v53;
            break;
          }
        }
      }

      *(v81 + 1) = v75;
      ++v74;
      v76 = __base;
    }

    while (v75 < v53);
LABEL_93:
    if (v73 > v53)
    {
      v259 = __si_assert_copy_extra_2708(0);
      v260 = v259;
      v261 = "";
      if (v259)
      {
        v261 = v259;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "BurstTrie.c", 2351, "j<=count", v261);
    }

    else
    {
      if (v74 <= v53)
      {
        v82 = v73;
        goto LABEL_119;
      }

      v262 = __si_assert_copy_extra_2708(0);
      v260 = v262;
      v263 = "";
      if (v262)
      {
        v263 = v262;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "BurstTrie.c", 2352, "z<=count", v263);
    }

    free(v260);
    if (__valid_fs(-1))
    {
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    MEMORY[0xC00] = -559038737;
    abort();
  }

  v74 = 0;
  v73 = 0;
  v82 = 0;
  v76 = __base;
LABEL_119:
  if (v73 + v74 > v53)
  {
    v264 = __si_assert_copy_extra_2708(0);
    v265 = v264;
    v266 = "";
    if (v264)
    {
      v266 = v264;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "BurstTrie.c", 2353, "j+z<=count", v266);
LABEL_396:
    free(v265);
    if (!__valid_fs(-1))
    {
LABEL_397:
      v246 = 3072;
LABEL_398:
      *v246 = -559038737;
      abort();
    }

LABEL_369:
    v246 = 2989;
    goto LABEL_398;
  }

  qsort(v76, v82, 0x10uLL, mergeRangeCompare);
  if (v74)
  {
    v91 = v74;
    v92 = v56;
    do
    {
      v93 = v73 + 1;
      v94 = *v92++;
      *&v76[16 * v73++] = v94;
      --v91;
    }

    while (v91);
  }

  else
  {
    v93 = v73;
  }

  v295[5] = 0;
  free(v56);
  v95 = *__error();
  v96 = _SILogForLogForCategory(10);
  v97 = 2 * (dword_1EBF46AF4 < 4);
  if (os_log_type_enabled(v96, v97))
  {
    v98 = CFAbsoluteTimeGetCurrent();
    *host_info_outCnt = 134217984;
    *&host_info_outCnt[4] = v98 - v72;
    _os_log_impl(&dword_1C278D000, v96, v97, "Computed ranges: %f seconds", host_info_outCnt, 0xCu);
  }

  *__error() = v95;
  if (v284(v285) == -1)
  {
    v83 = *__error();
    v84 = _SILogForLogForCategory(10);
    v85 = 2 * (dword_1EBF46AF4 < 4);
    if (os_log_type_enabled(v84, v85))
    {
      *host_info_outCnt = 0;
      goto LABEL_159;
    }

LABEL_160:
    *__error() = v83;
    v17 = 89;
    v60 = 1;
    v10 = v283;
    goto LABEL_301;
  }

  v99 = CFAbsoluteTimeGetCurrent();
  db_upgrade_lock(a1 + 4696);
  v275 = v93;
  if (!v93)
  {
    v276 = 0;
    v101 = 0;
    v289 = 0;
    goto LABEL_171;
  }

  v100 = 0;
  v289 = 0;
  v101 = 0;
  v102 = 1;
  v277 = v93;
  while (1)
  {
    v276 = v102;
    pthread_mutex_lock((a1 + 4696));
    *(a1 + 4908) = 1;
    db_rwlock_wakeup(a1 + 4696, 1, 1);
    pthread_mutex_unlock((a1 + 4696));
    v103 = &__base[16 * v100];
    if (v100)
    {
      v104 = *(v103 + 1);
      v105 = v104 << 6;
      if (HIDWORD(v104))
      {
        v105 = 0;
      }

      v106 = *(v103 - 1);
      v107 = v106 << 6 > v105 && HIDWORD(v106) == 0;
      v108 = v107 || v106 == 0;
      if (v108 && v104 != 0)
      {
        v267 = __si_assert_copy_extra_2708(0);
        v265 = v267;
        v268 = "";
        if (v267)
        {
          v268 = v267;
        }

        __message_assert("%s:%u: failed assertion '%s' %s ", "BurstTrie.c", 2458, "(flatStoreGetOffset(range[k].info) >= flatStoreGetOffset(range[k-1].info) && range[k-1].info.next !=0) || range[k].info.next==0", v268);
        goto LABEL_396;
      }
    }

    db_upgrade_lock(a1 + 4696);
    v110 = *v103;
    if (v110 < *(v103 + 1))
    {
      break;
    }

LABEL_130:
    v102 = ++v100 < v277;
    if (v100 == v277)
    {
      v276 = 0;
      goto LABEL_170;
    }
  }

  v111 = &v281[24 * v110 + 8];
  while (1)
  {
    v112 = bt_mergeTerm(*(v54[v110] + 16), (v54[v110] + 18), host_info_out);
    if (!v112)
    {
      break;
    }

    if (v112 > v101)
    {
      v101 = v112;
    }

    *(v111 - 2) = v112;
    *v111 = v54[v110];
    if (*(a1 + 4688))
    {
      v113 = v289 <= 9999;
    }

    else
    {
      v113 = 0;
    }

    if (v113)
    {
      v289 += db_writer_yield_lock(a1 + 4696);
    }

    ++v110;
    v111 += 24;
    if (v110 >= *(v103 + 1))
    {
      goto LABEL_130;
    }
  }

LABEL_170:
  v93 = v275;
LABEL_171:
  v295[4] = 0;
  *&__n[1] = v281;
  v301 = v53;
  v302 = v53;
  v303 = v101;
  v117 = v298;
  if (v282)
  {
    directoryStoreMergeUpdateSet(v282, (v298 + 48), &__n[1]);
  }

  if (!v294)
  {
    goto LABEL_262;
  }

  if (_os_feature_enabled_impl())
  {
    v278 = *(v298 + 80);
  }

  else
  {
    v278 = 0;
  }

  if (!__THREAD_SLOT_KEY[0])
  {
    makeThreadId();
    v118 = pthread_getspecific(__THREAD_SLOT_KEY[0]);
    if (!v118)
    {
      goto LABEL_400;
    }

LABEL_179:
    if (v118 >= 0x801)
    {
      goto LABEL_400;
    }

    v119 = 0;
    goto LABEL_181;
  }

  v118 = pthread_getspecific(__THREAD_SLOT_KEY[0]);
  if (v118)
  {
    goto LABEL_179;
  }

LABEL_400:
  makeThreadId();
  v118 = pthread_getspecific(__THREAD_SLOT_KEY[0]);
  v119 = 0;
  if (v118)
  {
LABEL_181:
    if (v118 <= 0x800)
    {
      v120 = &threadData[9 * v118];
      v119 = *(v120 - 11);
      *(v120 - 11) = 1;
    }
  }

  if (!__THREAD_SLOT_KEY[0])
  {
    makeThreadId();
    v121 = pthread_getspecific(__THREAD_SLOT_KEY[0]);
    if (!v121)
    {
      goto LABEL_403;
    }

LABEL_185:
    if (v121 >= 0x801)
    {
      goto LABEL_403;
    }

    v122 = 0;
    goto LABEL_187;
  }

  v121 = pthread_getspecific(__THREAD_SLOT_KEY[0]);
  if (v121)
  {
    goto LABEL_185;
  }

LABEL_403:
  makeThreadId();
  v121 = pthread_getspecific(__THREAD_SLOT_KEY[0]);
  v122 = 0;
  if (v121)
  {
LABEL_187:
    if (v121 <= 0x800)
    {
      v123 = &threadData[9 * v121];
      v122 = *(v123 - 11);
      *(v123 - 11) = 1;
    }
  }

  if (*(v294 + 12) == 1 && v278[2])
  {
    v124 = *__error();
    v125 = _SILogForLogForCategory(16);
    if (os_log_type_enabled(v125, OS_LOG_TYPE_ERROR))
    {
      v240 = (v294 + 128);
      if (*(v294 + 151) < 0)
      {
        v240 = *v240;
      }

      v241 = (v294 + 104);
      if (*(v294 + 127) < 0)
      {
        v241 = *v241;
      }

      v242 = v278[2];
      *host_info_outCnt = 136316162;
      *&host_info_outCnt[4] = "mergeUpdateSet";
      *&host_info_outCnt[12] = 1024;
      *&host_info_outCnt[14] = 4445;
      *&host_info_outCnt[18] = 2080;
      *&host_info_outCnt[20] = v240;
      *&host_info_outCnt[28] = 2080;
      *&host_info_outCnt[30] = v241;
      *&host_info_outCnt[38] = 2048;
      *&host_info_outCnt[40] = v242;
      _os_log_error_impl(&dword_1C278D000, v125, OS_LOG_TYPE_ERROR, "%s:%d: [%s] mergeUpdateSet readonly %s updateSet %zu", host_info_outCnt, 0x30u);
    }

    *__error() = v124;
    if (*(v294 + 12) == 1)
    {
      if (v278[2])
      {
        v269 = __si_assert_copy_extra_332();
        v265 = v269;
        v270 = "";
        if (v269)
        {
          v270 = v269;
        }

        __message_assert("%s:%u: failed assertion '%s' %s ", "IVFVectorIndex.hh", 4446, "!fReadOnly || updateSet->vectorIndexes.size() == 0", v270);
        goto LABEL_396;
      }
    }
  }

  v271 = v122;
  v272 = v119;
  v126 = *v278;
  if (*v278 != v278 + 1)
  {
    do
    {
      v128 = v126[5];
      v127 = v126[6];
      if (v127)
      {
        atomic_fetch_add_explicit(&v127->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v310 = 0;
      v311 = 0;
      v129 = *(v128 + 12);
      if (v129 == 512)
      {
        v130 = 1;
      }

      else
      {
        v130 = 3;
      }

      if (v129 == 768)
      {
        v130 = 2;
      }

      if (v129 == 256)
      {
        v131 = 0;
      }

      else
      {
        v131 = v130;
      }

      v132 = *(v128 + 16);
      if (v132 == 2)
      {
        v133 = 1;
      }

      else
      {
        v133 = 3;
      }

      if (v132 == 4)
      {
        v134 = 0;
      }

      else
      {
        v134 = v133;
      }

      IVFVectorIndex_s::getOrCreateVectorIndex(&v310, (v294 + 8), *(v128 + 8), *(v128 + 20), v131, v134, *(v128 + 22));
      __dst[0] = 0;
      __dst[1] = 0;
      v309 = 0;
      (*(*v310 + 312))(host_info_outCnt);
      if (host_info_outCnt[23] >= 0)
      {
        v135 = host_info_outCnt;
      }

      else
      {
        v135 = *host_info_outCnt;
      }

      v136 = strlen(v135);
      if (v136 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::vector<long long>::__throw_length_error[abi:nn200100]();
      }

      v137 = v136;
      if (v136 >= 0x17)
      {
        operator new();
      }

      HIBYTE(v309) = v136;
      if (v136)
      {
        memmove(__dst, v135, v136);
      }

      *(__dst + v137) = 0;
      if ((host_info_outCnt[23] & 0x80000000) != 0)
      {
        operator delete(*host_info_outCnt);
      }

      v138 = v310;
      (*(*v310 + 96))(v310, v128, v298 + 88, &__n[1]);
      v139 = *__error();
      v140 = _SILogForLogForCategory(16);
      if (os_log_type_enabled(v140, OS_LOG_TYPE_DEFAULT))
      {
        v141 = v294 + 128;
        if (*(v294 + 151) < 0)
        {
          v141 = *(v294 + 128);
        }

        v305 = 3;
        LODWORD(v304) = 4085052;
        (*(*v128 + 312))(__p, v128, &v304);
        if (v307 >= 0)
        {
          v142 = __p;
        }

        else
        {
          v142 = __p[0];
        }

        if (v309 >= 0)
        {
          v143 = __dst;
        }

        else
        {
          v143 = __dst[0];
        }

        v144 = (*(*v138 + 16))(v138);
        *host_info_outCnt = 136316162;
        *&host_info_outCnt[4] = v141;
        *&host_info_outCnt[12] = 2048;
        *&host_info_outCnt[14] = v278;
        *&host_info_outCnt[22] = 2080;
        *&host_info_outCnt[24] = v142;
        *&host_info_outCnt[32] = 2080;
        *&host_info_outCnt[34] = v143;
        *&host_info_outCnt[42] = 1024;
        *&host_info_outCnt[44] = v144;
        _os_log_impl(&dword_1C278D000, v140, OS_LOG_TYPE_DEFAULT, "[%s] mergeUpdateSet %p %s to %s total %u", host_info_outCnt, 0x30u);
        if (v307 < 0)
        {
          operator delete(__p[0]);
        }

        if (v305 < 0)
        {
          operator delete(v304);
        }
      }

      *__error() = v139;
      if (SHIBYTE(v309) < 0)
      {
        operator delete(__dst[0]);
      }

      v145 = v311;
      v117 = v298;
      if (v311 && !atomic_fetch_add(&v311->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v145->__on_zero_shared)(v145);
        std::__shared_weak_count::__release_weak(v145);
      }

      if (v127 && !atomic_fetch_add(&v127->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v127->__on_zero_shared)(v127);
        std::__shared_weak_count::__release_weak(v127);
      }

      v146 = v126[1];
      if (v146)
      {
        do
        {
          v147 = v146;
          v146 = *v146;
        }

        while (v146);
      }

      else
      {
        do
        {
          v147 = v126[2];
          v58 = *v147 == v126;
          v126 = v147;
        }

        while (!v58);
      }

      v126 = v147;
    }

    while (v147 != v278 + 1);
  }

  v148 = __THREAD_SLOT_KEY[0];
  if (!__THREAD_SLOT_KEY[0])
  {
    makeThreadId();
    v148 = __THREAD_SLOT_KEY[0];
  }

  v149 = pthread_getspecific(v148);
  v93 = v275;
  if (v149 && v149 < 0x801 || (makeThreadId(), (v149 = pthread_getspecific(__THREAD_SLOT_KEY[0])) != 0))
  {
    if (v149 <= 0x800)
    {
      *(&threadData[9 * v149 - 5] - 1) = v271;
    }
  }

  if (!__THREAD_SLOT_KEY[0])
  {
    makeThreadId();
    v150 = pthread_getspecific(__THREAD_SLOT_KEY[0]);
    if (!v150)
    {
      goto LABEL_406;
    }

LABEL_259:
    if (v150 >= 0x801)
    {
      goto LABEL_406;
    }

    goto LABEL_260;
  }

  v150 = pthread_getspecific(__THREAD_SLOT_KEY[0]);
  if (v150)
  {
    goto LABEL_259;
  }

LABEL_406:
  makeThreadId();
  v150 = pthread_getspecific(__THREAD_SLOT_KEY[0]);
  if (v150)
  {
LABEL_260:
    if (v150 <= 0x800)
    {
      *(&threadData[9 * v150 - 5] - 1) = v272;
    }
  }

LABEL_262:
  v152 = *&__n[1];
  v151 = v301;
  v295[4] = *&__n[1];
  v153 = v303;
  if (v289)
  {
    v154 = *__error();
    v155 = _SILogForLogForCategory(10);
    v156 = 2 * (dword_1EBF46AF4 < 4);
    if (os_log_type_enabled(v155, v156))
    {
      *host_info_outCnt = 67109120;
      *&host_info_outCnt[4] = v289;
      _os_log_impl(&dword_1C278D000, v155, v156, "Flush yielded %d times.", host_info_outCnt, 8u);
    }

    *__error() = v154;
    v117 = v298;
    v93 = v275;
  }

  if (v276)
  {
    v157 = 0;
    v17 = 0xFFFFFFFFLL;
    v10 = v283;
  }

  else
  {
    if (v93 <= 0x200)
    {
      v157 = 0;
    }

    else
    {
      v157 = v93;
    }

    v295[3] = 0;
    free(__base);
    v158 = *(v117 + 232);
    if (v158)
    {
      do
      {
        v159 = *v158;
        madvise(v158, v158[2] - v158, 4);
        v158 = v159;
      }

      while (v159);
    }

    v160 = *(a1 + 9400);
    v88 = v153 >= v160;
    v161 = v153 - v160;
    if (v88 && (v162 = termIdStoreAllocBulk(a1 + 4984, v161 + 1), v162) || (v163 = *(a1 + 14120), v88 = v153 >= v163, v164 = v153 - v163, v88) && (v162 = termIdStoreAllocBulk(a1 + 9704, v164 + 1), v162))
    {
      v17 = v162;
      v10 = v283;
    }

    else
    {
      if (v151)
      {
        *&v152[6 * v151 + 2] = *&v152[6 * v151 - 4];
        db_downgrade_lock((a1 + 4696));
      }

      v295[2] = 0;
      free(v54);
      storageDeactivateAll(a1 + 256, 0);
      storageUnmap(a1 + 256);
      db_write_unlock(a1 + 4696);
      *(v295 + 49) = 0;
      v165 = *__error();
      v166 = _SILogForLogForCategory(10);
      v167 = 2 * (dword_1EBF46AF4 < 4);
      if (os_log_type_enabled(v166, v167))
      {
        v168 = CFAbsoluteTimeGetCurrent();
        *host_info_outCnt = 134217984;
        *&host_info_outCnt[4] = v168 - v99;
        _os_log_impl(&dword_1C278D000, v166, v167, "Merged terms: %f seconds", host_info_outCnt, 0xCu);
      }

      *__error() = v165;
      v10 = v283;
      if (v284(v285) == -1)
      {
        v176 = *__error();
        v177 = _SILogForLogForCategory(10);
        v178 = 2 * (dword_1EBF46AF4 < 4);
        if (os_log_type_enabled(v177, v178))
        {
          *host_info_outCnt = 0;
          _os_log_impl(&dword_1C278D000, v177, v178, "Merge Canceled", host_info_outCnt, 2u);
        }

        *__error() = v176;
        v17 = 89;
      }

      else
      {
        if (v151 >= 2)
        {
          _qsort_termids(v152, v151 - 1);
        }

        v169.n128_f64[0] = CFAbsoluteTimeGetCurrent();
        v170 = v169.n128_f64[0];
        v171 = v298;
        v172 = atomic_load((v298 + 100));
        v173 = compressPostings(v169, a1 + 4944, v172, *(v171 + 88), *(v171 + 8), v151, v152, *(v171 + 16), v293, v288);
        if (v173)
        {
          v17 = v173;
          v174 = *__error();
          v175 = _SILogForLogForCategory(0);
          if (os_log_type_enabled(v175, OS_LOG_TYPE_ERROR))
          {
            *host_info_outCnt = 136315650;
            *&host_info_outCnt[4] = "TrieMergeUpdates";
            *&host_info_outCnt[12] = 1024;
            *&host_info_outCnt[14] = 2722;
            *&host_info_outCnt[18] = 1024;
            *&host_info_outCnt[20] = v17;
            _os_log_error_impl(&dword_1C278D000, v175, OS_LOG_TYPE_ERROR, "%s:%d: compressPostings err:%d", host_info_outCnt, 0x18u);
          }

          *__error() = v174;
        }

        else
        {
          storageUnmap(a1 + 4984);
          v179 = CFAbsoluteTimeGetCurrent() - v170;
          *&TrieMergeUpdates_postingsCompressionTime = *&TrieMergeUpdates_postingsCompressionTime + v179;
          v180 = *__error();
          v181 = _SILogForLogForCategory(10);
          v182 = 2 * (dword_1EBF46AF4 < 4);
          if (os_log_type_enabled(v181, v182))
          {
            *host_info_outCnt = 134218240;
            *&host_info_outCnt[4] = v179;
            *&host_info_outCnt[12] = 2048;
            *&host_info_outCnt[14] = TrieMergeUpdates_postingsCompressionTime;
            _os_log_impl(&dword_1C278D000, v181, v182, "Compressed postings data: %f seconds %f total", host_info_outCnt, 0x16u);
          }

          *__error() = v180;
          *host_info_outCnt = 0;
          v183 = _fd_acquire_fd(*(a1 + 9432), host_info_outCnt);
          v184 = v183;
          v185 = *(a1 + 4952);
          v186 = v274 - v185;
          if (v274 <= v185)
          {
            sync_invalidate_fd(v183, v273, *(a1 + 4944) - v273);
            v185 = *(a1 + 4952);
            v186 = *(a1 + 4968) - v185;
          }

          sync_invalidate_fd(v184, v185, v186);
          v10 = v283;
          fsync(v184);
          _fd_release_fd(*(a1 + 9432), v184, 0, *host_info_outCnt);
          v17 = mergeFlushPositions(v298, v279, (a1 + 9664), v152, v151, (v280 >> 3) & 1, v293, v288);
          if (!v17)
          {
            storageUnmap(a1 + 9704);
            v187 = _fd_acquire_fd(*(a1 + 14152), host_info_outCnt);
            fsync(v187);
            _fd_release_fd(*(a1 + 14152), v187, 0, *host_info_outCnt);
          }
        }
      }
    }
  }

  v60 = v157 == 0;
LABEL_301:
  v61 = v286;
LABEL_302:
  CIOnThreadCleanUpPop(v61);
  ++thingCount;
  if (!v17)
  {
    *(a1 + 4684) = 1;
    v188 = CFAbsoluteTimeGetCurrent();
    v189 = *__error();
    v190 = _SILogForLogForCategory(10);
    v191 = 2 * (dword_1EBF46AF4 < 4);
    if (os_log_type_enabled(v190, v191))
    {
      *host_info_outCnt = 0;
      _os_log_impl(&dword_1C278D000, v190, v191, "Done", host_info_outCnt, 2u);
    }

    v192 = v188 - v40;
    *__error() = v189;
    v193 = *__error();
    v194 = _SILogForLogForCategory(10);
    v195 = 2 * (dword_1EBF46AF4 < 4);
    if (os_log_type_enabled(v194, v195))
    {
      v196 = v192;
      *host_info_outCnt = 134217984;
      *&host_info_outCnt[4] = v196;
      _os_log_impl(&dword_1C278D000, v194, v195, "Merge took %f seconds", host_info_outCnt, 0xCu);
    }

    *__error() = v193;
    *&bt_mergeSet_accTime = *&bt_mergeSet_accTime + v192;
    v197 = *__error();
    v198 = _SILogForLogForCategory(10);
    v199 = 2 * (dword_1EBF46AF4 < 4);
    if (os_log_type_enabled(v198, v199))
    {
      v200 = *&bt_mergeSet_accTime;
      *host_info_outCnt = 134217984;
      *&host_info_outCnt[4] = v200;
      _os_log_impl(&dword_1C278D000, v198, v199, "Total merge time: %f seconds", host_info_outCnt, 0xCu);
    }

    *__error() = v197;
    if (gSILogLevels[0] >= 5)
    {
      v247 = *__error();
      v248 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v248, OS_LOG_TYPE_DEFAULT))
      {
        v249 = *(a1 + 128);
        v250 = v249 * 100.0 / *(a1 + 136);
        *host_info_outCnt = 134218240;
        *&host_info_outCnt[4] = v249 >> 10;
        *&host_info_outCnt[12] = 2048;
        *&host_info_outCnt[14] = v250;
        _os_log_impl(&dword_1C278D000, v248, OS_LOG_TYPE_DEFAULT, "Mapped Bases: %luKB (%f%% used)", host_info_outCnt, 0x16u);
      }

      *__error() = v247;
      if (gSILogLevels[0] >= 5)
      {
        v251 = *__error();
        v252 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v252, OS_LOG_TYPE_DEFAULT))
        {
          v254 = *(a1 + 240);
          v253 = *(a1 + 244);
          *host_info_outCnt = 134218496;
          *&host_info_outCnt[4] = ((257 * v253) >> 8) & 0x3FFFFFFFFFFFFFLL;
          *&host_info_outCnt[12] = 1024;
          *&host_info_outCnt[14] = v254;
          *&host_info_outCnt[18] = 2048;
          *&host_info_outCnt[20] = v254 * 100.0 / v253;
          _os_log_impl(&dword_1C278D000, v252, OS_LOG_TYPE_DEFAULT, "Sparse Bases: %luKB for %d entries (%f%% used)", host_info_outCnt, 0x1Cu);
        }

        *__error() = v251;
        if (gSILogLevels[0] >= 5)
        {
          v255 = *__error();
          v256 = _SILogForLogForCategory(0);
          if (os_log_type_enabled(v256, OS_LOG_TYPE_DEFAULT))
          {
            v257 = *(a1 + 480);
            v258 = *(a1 + 488) * 100.0 / v257;
            *host_info_outCnt = 134218240;
            *&host_info_outCnt[4] = v257 >> 10;
            *&host_info_outCnt[12] = 2048;
            *&host_info_outCnt[14] = v258;
            _os_log_impl(&dword_1C278D000, v256, OS_LOG_TYPE_DEFAULT, "String arrays: %lluKB %f%% used", host_info_outCnt, 0x16u);
          }

          *__error() = v255;
        }
      }
    }
  }

  v201 = CFAbsoluteTimeGetCurrent();
  v202 = v299;
  if (v299)
  {
    v203 = *(v299 + 2);
    if (v203)
    {
      CFRelease(v203);
    }

    free(v202);
  }

  if (!v60 && *(a1 + 128) + 1028 * *(a1 + 240) + *(a1 + 488) > v290 / (4 * v291 / 5uLL) && ((v204 = atomic_load((a1 + 36)), (v204 & 0x800) != 0) ? (v205 = 4) : (v205 = 10), v201 - Current > v205) || *(a1 + 128) + 1028 * *(a1 + 240) + *(a1 + 488) >= 0x8000001)
  {
    *(a1 + 15200) |= 2u;
  }

  v18 = v287;
LABEL_323:
  HIDWORD(v207) = qos_class_self() - 9;
  LODWORD(v207) = HIDWORD(v207);
  v206 = v207 >> 2;
  if (v206 > 6)
  {
    v208 = 0;
  }

  else
  {
    v208 = dword_1C2BFF8F0[v206];
  }

  pthread_mutex_lock((a1 + 14720));
  if (*(a1 + 14904) || *(a1 + 14916) || (*(v10 + 2644) & 1) != 0)
  {
LABEL_329:
    db_rwlock_wait(a1 + 14720, v208, 2);
  }

  else
  {
    if (v208 <= 5)
    {
      v238 = v208 - 6;
      v239 = (a1 + 16 * v208 + 14784);
      while (!*v239)
      {
        v239 += 2;
        v88 = __CFADD__(v238++, 1);
        if (v88)
        {
          goto LABEL_360;
        }
      }

      goto LABEL_329;
    }

LABEL_360:
    *(a1 + 14904) = pthread_self();
  }

  pthread_mutex_unlock((a1 + 14720));
  if (!v17)
  {
LABEL_331:
    if (v292)
    {
      *(a1 + 4960) = *(a1 + 4952);
      *(a1 + 9680) = *(a1 + 9672);
      *(a1 + 60) = v292 - 1;
    }

    v209 = indexFastFlush(a1, 0);
    v17 = v209;
    if (v209)
    {
      if (*(a1 + 8) == 1)
      {
        *(a1 + 8) = 0;
        *(a1 + 12) = v209;
      }

      v210 = *__error();
      v211 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v211, OS_LOG_TYPE_ERROR))
      {
        host_info_out[0] = 136315906;
        *&host_info_out[1] = "index_FlushCache";
        LOWORD(host_info_out[3]) = 1024;
        *(&host_info_out[3] + 2) = 572;
        HIWORD(host_info_out[4]) = 2080;
        *&host_info_out[5] = a1 + 15208;
        LOWORD(host_info_out[7]) = 1024;
        *(&host_info_out[7] + 2) = 572;
        _os_log_error_impl(&dword_1C278D000, v211, OS_LOG_TYPE_ERROR, "%s:%d: %s marking invalid at %d", host_info_out, 0x22u);
      }

      *__error() = v210;
    }

    else
    {
      *(a1 + 15040) = CFAbsoluteTimeGetCurrent();
      v212 = *(a1 + 14400);
      v213 = *(v212 + 120);
      v214 = *(v212 + 136);
      v215 = *(v212 + 152);
      v216 = *(v212 + 168);
      v217 = *(v212 + 184);
      v218 = *(v212 + 200);
      v219 = *(v212 + 216);
      v220.i64[0] = 0xFFFFFFFFLL;
      v220.i64[1] = 0xFFFFFFFFLL;
      *(v10 + 2696) = vaddq_s64(*(v10 + 2696), vandq_s8(v216, v220));
      *(v10 + 2648) = vaddq_s64(*(v10 + 2648), vandq_s8(v213, v220));
      *(v10 + 2680) = vaddq_s64(*(v10 + 2680), vandq_s8(v215, v220));
      *(v10 + 2664) = vaddq_s64(*(v10 + 2664), vandq_s8(v214, v220));
      *(v10 + 2712) = vaddq_s64(*(v10 + 2712), vandq_s8(v217, v220));
      *(v10 + 2728) = vaddq_s64(*(v10 + 2728), vandq_s8(v218, v220));
      *(a1 + 15032) += v219;
    }
  }

  TermUpdateSetRelease(*(a1 + 14400));
  *(a1 + 14400) = 0;
  v221 = *(a1 + 9688);
  if (v221 >= v18 || *(a1 + 9664) + v221 - *(a1 + 9672) >= v297)
  {
    v222 = v18;
    v223 = *__error();
    v224 = _SILogForLogForCategory(10);
    v225 = 2 * (dword_1EBF46AF4 < 4);
    if (os_log_type_enabled(v224, v225))
    {
      v226 = *(a1 + 9688);
      v227 = *(a1 + 9664) + v226 - *(a1 + 9672);
      host_info_out[0] = 134218752;
      *&host_info_out[1] = v226;
      LOWORD(host_info_out[3]) = 2048;
      *(&host_info_out[3] + 2) = v222;
      HIWORD(host_info_out[5]) = 2048;
      *&host_info_out[6] = v227;
      LOWORD(host_info_out[8]) = 2048;
      *(&host_info_out[8] + 2) = v297;
      _os_log_impl(&dword_1C278D000, v224, v225, "Force split for large index %lld (%lld) %lld (%lld)", host_info_out, 0x2Au);
    }

    *__error() = v223;
    v228 = *(v10 + 2912) | 2;
    *(v10 + 2912) = v228;
    if ((v228 & 6) == 0)
    {
LABEL_347:
      if (*(a1 + 68) >= 0x2711u)
      {
        v229 = atomic_load((a1 + 16));
        if (*(a1 + 68) < 4 * v229)
        {
          v230 = *__error();
          v231 = _SILogForLogForCategory(10);
          v232 = 2 * (dword_1EBF46AF4 < 4);
          if (os_log_type_enabled(v231, v232))
          {
            v233 = *(a1 + 68);
            v234 = atomic_load((a1 + 16));
            host_info_out[0] = 67109376;
            host_info_out[1] = v233;
            LOWORD(host_info_out[2]) = 1024;
            *(&host_info_out[2] + 2) = v234;
            _os_log_impl(&dword_1C278D000, v231, v232, "Force split for high delete count; %d %d", host_info_out, 0xEu);
          }

          *__error() = v230;
          *(v10 + 2912) |= 2u;
        }
      }
    }
  }

  else if ((*(v10 + 2912) & 6) == 0)
  {
    goto LABEL_347;
  }

  pthread_mutex_lock((a1 + 14720));
  *(a1 + 14924) = 0;
  v235 = *(a1 + 14896);
  *(a1 + 14896) = 0u;
  v236 = *(a1 + 14916) != 0;
  *(v10 + 2644) = 0;
  db_rwlock_wakeup(a1 + 14720, v236, 0);
  pthread_mutex_unlock((a1 + 14720));
  if (v235)
  {
    pthread_override_qos_class_end_np(v235);
  }

  return v17;
}

uint64_t indexFastFlush(uint64_t a1, _DWORD *a2)
{
  v98 = *MEMORY[0x1E69E9840];
  v94 = 0u;
  *v95 = 0u;
  v92 = 0u;
  v93 = 0u;
  bzero(__str, 0x400uLL);
  snprintf(__str, 0x400uLL, "%s%s", (a1 + 15208), "indexUpdates");
  unlinkat(*(a1 + 64), __str, 0);
  if (a2)
  {
    v4 = 1538;
    v5 = 0;
  }

  else
  {
    v4 = 536872450;
    v5 = 3;
  }

  v6 = fd_create_protected(*(a1 + 64), __str, v4, v5);
  *buf = 0;
  v7 = _fd_acquire_fd(v6, buf);
  v8 = v7;
  v9 = *buf;
  if ((store_stream_init_fd(&v92, v7, *buf, 0, 1) & 1) == 0)
  {
    _fd_release_fd(v6, v8, 0, v9);
    return v93;
  }

  v95[1] = v6;
  v10 = *(&v94 + 1);
  if (v94 - *(&v94 + 1) < 6uLL)
  {
    *&buf[9] = 0;
    *&buf[1] = 0;
    *&buf[24] = 0;
    *&buf[17] = 0;
    buf[0] = 2;
    store_stream_write_bytes_3266(&v92, buf, 1uLL);
  }

  else
  {
    *(v95[0] + *(&v94 + 1)) = 2;
    *(&v94 + 1) = v10 + 1;
  }

  v11 = *(a1 + 4928);
  v12 = atomic_load((a1 + 36));
  if ((v12 & 2) != 0)
  {
    v13 = 0;
    if (!*(a1 + 4928))
    {
      goto LABEL_18;
    }

    goto LABEL_16;
  }

  v13 = *(a1 + 9408);
  if (*(a1 + 14128) > v13)
  {
    v13 = *(a1 + 14128);
  }

  if (*(a1 + 4632) > v13)
  {
    v13 = *(a1 + 4632);
  }

  if (*(a1 + 4928))
  {
LABEL_16:
    if (*(v11 + 4384) > v13)
    {
      v13 = *(v11 + 4384);
    }
  }

LABEL_18:
  v16 = v13 + 7;
  v15 = v13 < -7;
  v17 = v13 + 14;
  if (!v15)
  {
    v17 = v16;
  }

  v18 = v17 >> 3;
  v19 = malloc_type_malloc(v17 >> 3, 0xF249986EuLL);
  if (!v19)
  {
    v42 = __si_assert_copy_extra_3233(0, -1);
    v43 = v42;
    v44 = "";
    if (v42)
    {
      v44 = v42;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "JHContentIndex.c", 2812, "bits", v44);
    free(v43);
    if (__valid_fs(-1))
    {
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    MEMORY[0xC00] = -559038737;
    abort();
  }

  v20 = v19;
  v21 = atomic_load((a1 + 36));
  if ((v21 & 2) != 0)
  {
    v22 = *(&v94 + 1);
    if (v94 - *(&v94 + 1) < 6uLL)
    {
      memset(buf, 0, 32);
      store_stream_write_bytes_3266(&v92, buf, 1uLL);
      v23 = *(&v94 + 1);
    }

    else
    {
      v23 = *(&v94 + 1) + 1;
      *(v95[0] + *(&v94 + 1)) = 0;
      *(&v94 + 1) = v22 + 1;
    }

    if ((v94 - v23) < 6)
    {
      memset(buf, 0, 32);
      store_stream_write_bytes_3266(&v92, buf, 1uLL);
      v24 = *(&v94 + 1);
    }

    else
    {
      v24 = v23 + 1;
      *(v95[0] + v23) = 0;
      *(&v94 + 1) = v23 + 1;
    }

    if ((v94 - v24) < 6)
    {
      memset(buf, 0, 32);
      store_stream_write_bytes_3266(&v92, buf, 1uLL);
    }

    else
    {
      *(v95[0] + v24) = 0;
      *(&v94 + 1) = v24 + 1;
    }
  }

  else
  {
    store_stream_write_vint32(&v92, *(a1 + 9408));
    store_stream_write_vint32(&v92, *(a1 + 14128));
    store_stream_write_vint32(&v92, *(a1 + 4632));
  }

  v25 = atomic_load((a1 + 36));
  if (v25 < 0)
  {
    if (v11)
    {
      v26 = *(v11 + 4384);
    }

    else
    {
      v26 = 0;
    }

    store_stream_write_vint32(&v92, v26);
  }

  if (dword_1EBF46AF4 >= 5)
  {
    v45 = *__error();
    v46 = _SILogForLogForCategory(10);
    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *&buf[4] = *(&v93 + 1) + *(&v94 + 1);
      _os_log_impl(&dword_1C278D000, v46, OS_LOG_TYPE_DEFAULT, "Post counts at %lld", buf, 0xCu);
    }

    *__error() = v45;
  }

  v27 = (a1 + 36);
  v28 = atomic_load((a1 + 36));
  if ((v28 & 2) != 0)
  {
    goto LABEL_84;
  }

  v29.length = *(a1 + 9408);
  if (v29.length)
  {
    v29.location = 0;
    CFBitVectorGetBits(*(a1 + 9424), v29, v20);
  }

  else
  {
    bzero(v20, v18);
  }

  v30 = *(a1 + 9408);
  v31 = v30 + 7;
  v15 = v30 < -7;
  v32 = v30 + 14;
  if (!v15)
  {
    v32 = v31;
  }

  v33 = v32 >> 3;
  v34 = *(&v94 + 1);
  v35 = v94;
  v36 = v20;
  if (v33 + *(&v94 + 1) >= v94)
  {
    while (1)
    {
      v47 = v35 - v34;
      v89 = v36;
      memcpy(v95[0] + v34, v36, v35 - v34);
      *(&v94 + 1) += v47;
      if (store_stream_flush(&v92, 0))
      {
        break;
      }

      v36 = &v89[v47];
      v33 -= v47;
      v34 = *(&v94 + 1);
      v35 = v94;
      if (*(&v94 + 1) + v33 < v94)
      {
        goto LABEL_42;
      }
    }
  }

  else
  {
LABEL_42:
    memcpy(v95[0] + v34, v36, v33);
    *(&v94 + 1) += v33;
  }

  if (dword_1EBF46AF4 >= 5)
  {
    v48 = *__error();
    v49 = _SILogForLogForCategory(10);
    if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *&buf[4] = *(&v93 + 1) + *(&v94 + 1);
      _os_log_impl(&dword_1C278D000, v49, OS_LOG_TYPE_DEFAULT, "Post bv1 at %lld", buf, 0xCu);
    }

    *__error() = v48;
    v37.length = *(a1 + 14128);
    if (v37.length)
    {
      goto LABEL_45;
    }

LABEL_66:
    v41 = 0;
    goto LABEL_67;
  }

  v37.length = *(a1 + 14128);
  if (!v37.length)
  {
    goto LABEL_66;
  }

LABEL_45:
  v37.location = 0;
  CFBitVectorGetBits(*(a1 + 14144), v37, v20);
  v38 = *(a1 + 14128);
  v39 = v38 + 7;
  v15 = v38 < -7;
  v40 = v38 + 14;
  if (!v15)
  {
    v40 = v39;
  }

  v41 = v40 >> 3;
LABEL_67:
  v50 = *(&v94 + 1);
  v51 = v94;
  v52 = v20;
  if (v41 + *(&v94 + 1) >= v94)
  {
    while (1)
    {
      v58 = v51 - v50;
      v90 = v52;
      memcpy(v95[0] + v50, v52, v51 - v50);
      *(&v94 + 1) += v58;
      if (store_stream_flush(&v92, 0))
      {
        break;
      }

      v52 = &v90[v58];
      v41 -= v58;
      v50 = *(&v94 + 1);
      v51 = v94;
      if (*(&v94 + 1) + v41 < v94)
      {
        goto LABEL_68;
      }
    }
  }

  else
  {
LABEL_68:
    memcpy(v95[0] + v50, v52, v41);
    *(&v94 + 1) += v41;
  }

  if (dword_1EBF46AF4 >= 5)
  {
    v59 = *__error();
    v60 = _SILogForLogForCategory(10);
    if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *&buf[4] = *(&v93 + 1) + *(&v94 + 1);
      _os_log_impl(&dword_1C278D000, v60, OS_LOG_TYPE_DEFAULT, "Post bv2 at %lld", buf, 0xCu);
    }

    *__error() = v59;
    v53.length = *(a1 + 4632);
    if (v53.length)
    {
      goto LABEL_71;
    }

LABEL_80:
    v57 = 0;
    goto LABEL_81;
  }

  v53.length = *(a1 + 4632);
  if (!v53.length)
  {
    goto LABEL_80;
  }

LABEL_71:
  v53.location = 0;
  CFBitVectorGetBits(*(a1 + 4648), v53, v20);
  v54 = *(a1 + 4632);
  v55 = v54 + 7;
  v15 = v54 < -7;
  v56 = v54 + 14;
  if (!v15)
  {
    v56 = v55;
  }

  v57 = v56 >> 3;
LABEL_81:
  v61 = *(&v94 + 1);
  v62 = v94;
  v63 = v20;
  if (v57 + *(&v94 + 1) >= v94)
  {
    while (1)
    {
      v81 = v62 - v61;
      v91 = v63;
      memcpy(v95[0] + v61, v63, v62 - v61);
      *(&v94 + 1) += v81;
      if (store_stream_flush(&v92, 0))
      {
        break;
      }

      v63 = &v91[v81];
      v57 -= v81;
      v61 = *(&v94 + 1);
      v62 = v94;
      if (*(&v94 + 1) + v57 < v94)
      {
        goto LABEL_82;
      }
    }
  }

  else
  {
LABEL_82:
    memcpy(v95[0] + v61, v63, v57);
    *(&v94 + 1) += v57;
  }

  if (dword_1EBF46AF4 < 5)
  {
LABEL_84:
    v64 = atomic_load(v27);
    if (v64 < 0)
    {
      goto LABEL_85;
    }

    goto LABEL_95;
  }

  v82 = *__error();
  v83 = _SILogForLogForCategory(10);
  if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    *&buf[4] = *(&v93 + 1) + *(&v94 + 1);
    _os_log_impl(&dword_1C278D000, v83, OS_LOG_TYPE_DEFAULT, "Post bv3 at %lld", buf, 0xCu);
  }

  *__error() = v82;
  v84 = atomic_load(v27);
  if (v84 < 0)
  {
LABEL_85:
    if (*(a1 + 4928))
    {
      if (v11 && (v65.length = *(v11 + 4384)) != 0)
      {
        v65.location = 0;
        CFBitVectorGetBits(*(v11 + 4400), v65, v20);
        v66 = *(v11 + 4384);
        v67 = v66 + 7;
        v15 = v66 < -7;
        v68 = v66 + 14;
        if (!v15)
        {
          v68 = v67;
        }

        v69 = v68 >> 3;
      }

      else
      {
        v69 = 0;
      }

      v70 = *(&v94 + 1);
      v71 = v94;
      v72 = v20;
      if (*(&v94 + 1) + v69 >= v94)
      {
        while (1)
        {
          v85 = v71 - v70;
          v86 = v72;
          memcpy(v95[0] + v70, v72, v71 - v70);
          *(&v94 + 1) += v85;
          if (store_stream_flush(&v92, 0))
          {
            break;
          }

          v72 = &v86[v85];
          v69 -= v85;
          v70 = *(&v94 + 1);
          v71 = v94;
          if (*(&v94 + 1) + v69 < v94)
          {
            goto LABEL_93;
          }
        }
      }

      else
      {
LABEL_93:
        memcpy(v95[0] + v70, v72, v69);
        *(&v94 + 1) += v69;
      }

      if (dword_1EBF46AF4 >= 5)
      {
        v87 = *__error();
        v88 = _SILogForLogForCategory(10);
        if (os_log_type_enabled(v88, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          *&buf[4] = *(&v93 + 1) + *(&v94 + 1);
          _os_log_impl(&dword_1C278D000, v88, OS_LOG_TYPE_DEFAULT, "Post bv4 at %lld", buf, 0xCu);
        }

        *__error() = v87;
      }
    }
  }

LABEL_95:
  free(v20);
  v73 = atomic_load((a1 + 36));
  if ((v73 & 2) != 0)
  {
    v79 = atomic_load((a1 + 36));
    TermUpdateSetStore(0, 0, &v92, (v79 & 8) != 0);
  }

  else
  {
    *buf = 0;
    if (a2)
    {
      v74 = atomic_load((a1 + 36));
      if ((v74 & 0xC) == 8)
      {
        indexCopyDeleteDocIds(a1, 0, buf);
      }
    }

    v75 = *buf;
    v76 = atomic_load((a1 + 36));
    TermUpdateSetStore(a2, v75, &v92, (v76 & 8) != 0);
    v77 = *buf;
    if (*buf)
    {
      v78 = *(*buf + 16);
      if (v78)
      {
        CFRelease(v78);
      }

      free(v77);
    }
  }

  store_stream_flush(&v92, 1);
  v14 = v93;
  if (v95[0])
  {
    free(v95[0]);
    v95[0] = 0;
    *&v94 = 0;
    if (v92 != -1 && v95[1])
    {
      _fd_release_fd(v95[1], v92, 0, *(&v92 + 1));
      LODWORD(v92) = -1;
    }

    v95[1] = 0;
  }

  fd_release(v6);
  return v14;
}

uint64_t store_stream_write_bytes_3266(uint64_t a1, char *a2, size_t __n)
{
  v3 = __n;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (v5 + __n >= v6)
  {
    while (1)
    {
      v8 = v6 - v5;
      v9 = a2;
      memcpy((*(a1 + 48) + v5), a2, v6 - v5);
      *(a1 + 40) += v8;
      result = store_stream_flush(a1, 0);
      if (result)
      {
        break;
      }

      a2 = &v9[v8];
      v3 -= v8;
      v6 = *(a1 + 32);
      v5 = *(a1 + 40);
      if (v5 + v3 < v6)
      {
        goto LABEL_2;
      }
    }
  }

  else
  {
LABEL_2:
    result = memcpy((*(a1 + 48) + v5), a2, v3);
    *(a1 + 40) += v3;
  }

  return result;
}

uint64_t termIdStoreReaderGetNext(uint64_t a1, uint64_t a2, unsigned int a3, __n128 a4, __n128 a5)
{
  ptr = storage_reader_get_ptr(a1, a2, 8 * a3, 8, a4, a5);
  if (ptr == -1)
  {
    v8 = __si_assert_copy_extra_3233(0, -1);
    v9 = v8;
    v10 = "";
    if (v8)
    {
      v10 = v8;
    }

    __message_assert("%s:%u: failed assertion '%s' %s failed to read offset for term %d", "TermIdStore.h", 89, "(intptr_t)ptr!=-1", v10, a3);
    free(v9);
    if (__valid_fs(-1))
    {
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    MEMORY[0xC00] = -559038737;
    abort();
  }

  return *ptr;
}

uint64_t oqpush_3290(uint64_t result, uint64_t a2, size_t size)
{
  if (*result == 1)
  {
    v19 = __si_assert_copy_extra_3233(0, -1);
    v20 = v19;
    v21 = "";
    if (v19)
    {
      v21 = v19;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "OQueue.h", 332, "!oqueue->has_meta", v21);
    free(v20);
    if (__valid_fs(-1))
    {
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    MEMORY[0xC00] = -559038737;
    abort();
  }

  if (*(result + 56))
  {
    if (*(result + 64) < (a2 & 0x3FFFFFFFFFFFFFFFuLL))
    {
      v22 = __si_assert_copy_extra_3233(0, -1);
      v5 = v22;
      v6 = "";
      if (v22)
      {
        v6 = v22;
      }

      v7 = "!queue->split || queue->splitPoint >= offset_t_GET_VALUE(value)";
LABEL_26:
      __message_assert("%s:%u: failed assertion '%s' %s ", "OQueue.h", 252, v7, v6);
      free(v5);
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

    v3 = *(result + 32);
    if (v3 >= *(result + 24))
    {
      v4 = __si_assert_copy_extra_3233(0, -1);
      v5 = v4;
      v6 = "";
      if (v4)
      {
        v6 = v4;
      }

      v7 = "!queue->split";
      goto LABEL_26;
    }
  }

  else
  {
    v8 = *(result + 24);
    v3 = *(result + 32);
    if (v3 >= v8)
    {
      v9 = a2;
      v10 = 2 * v8;
      if (!v8)
      {
        v10 = 4;
      }

      *(result + 24) = v10;
      v11 = result;
      v12 = *(result + 16);
      v13 = 8 * v10;
      if (v12)
      {
        v14 = malloc_type_zone_realloc(queryZone, v12, v13, 0xA1A7ADA0uLL);
      }

      else
      {
        v14 = malloc_type_zone_malloc(queryZone, v13, 0x566E289CuLL);
      }

      v15 = v14;
      a2 = v9;
      result = v11;
      if (!v15)
      {
        v16 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT);
        a2 = v9;
        v17 = v16;
        result = v11;
        if (v17)
        {
          *buf = 0;
          _os_log_fault_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "allocation function returned null", buf, 2u);
          result = v11;
          a2 = v9;
        }
      }

      *(result + 16) = v15;
      v3 = *(result + 32);
    }
  }

  v18 = *(result + 16);
  *(result + 32) = v3 + 1;
  *(v18 + 8 * v3) = a2;
  return result;
}

uint64_t oq_meta_at_index(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 1) == 0)
  {
    v3 = __si_assert_copy_extra_3233(0, -1);
    v4 = v3;
    v5 = "";
    if (v3)
    {
      v5 = v3;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "OQueue.h", 323, "oqueue->has_meta", v5);
    free(v4);
    if (__valid_fs(-1))
    {
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    MEMORY[0xC00] = -559038737;
    abort();
  }

  return *(*(a1 + 16) + 16 * a2 + 8);
}

uint64_t oq_set_offset_with_meta_at_index(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((*result & 1) == 0)
  {
    v5 = __si_assert_copy_extra_3233(0, -1);
    v6 = v5;
    v7 = "";
    if (v5)
    {
      v7 = v5;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "OQueue.h", 472, "queue->has_meta", v7);
    free(v6);
    if (__valid_fs(-1))
    {
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    MEMORY[0xC00] = -559038737;
    abort();
  }

  v4 = (*(result + 16) + 16 * a2);
  *v4 = a3;
  v4[1] = a4;
  return result;
}

uint64_t index_DeleteIndex(uint64_t a1, uint64_t a2, const char *a3, int a4)
{
  v24 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v8 = *__error();
    v9 = _SILogForLogForCategory(10);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 64);
      v11 = *(a1 + 56);
      buf[0].st_dev = 67109634;
      *&buf[0].st_mode = v10;
      LOWORD(buf[0].st_ino) = 1024;
      *(&buf[0].st_ino + 2) = v11;
      HIWORD(buf[0].st_ino) = 2080;
      *&buf[0].st_uid = a1 + 15208;
      _os_log_impl(&dword_1C278D000, v9, OS_LOG_TYPE_DEFAULT, "### delete index [%d] %d %s", buf, 0x18u);
    }

    *__error() = v8;
    fd_zero_truncate(*(a1 + 4672));
    fd_zero_truncate(*(a1 + 208));
    fd_zero_truncate(*(a1 + 472));
    v12 = *(a1 + 5200);
    if (v12)
    {
      fd_zero_truncate(v12);
    }

    fd_zero_truncate(*(a1 + 9432));
    v13 = *(a1 + 9920);
    if (v13)
    {
      fd_zero_truncate(v13);
    }

    fd_zero_truncate(*(a1 + 14152));
    fd_zero_truncate(*(a1 + 14448));
    fd_zero_truncate(*(a1 + 14456));
    fd_zero_truncate(*(a1 + 14464));
    fd_zero_truncate(*(a1 + 14472));
    fd_zero_truncate(*(a1 + 14480));
    fd_zero_truncate(*(a1 + 14488));
    v14 = *(a1 + 4928);
    if (v14)
    {
      fd_zero_truncate(*(v14 + 224));
    }

    v15 = *(a1 + 4912);
    if (v15)
    {
      truncateVectorIndex(v15);
    }

    a2 = *(a1 + 64);
    if (a4)
    {
      freeIndex(a1);
    }
  }

  if (a2 == -1)
  {
    v19 = __si_assert_copy_extra_3233(0, -1);
    v20 = v19;
    v21 = "";
    if (v19)
    {
      v21 = v19;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "JHContentIndex.c", 1045, "parentDirFd!=-1", v21);
    free(v20);
    if (__valid_fs(-1))
    {
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    MEMORY[0xC00] = -559038737;
    abort();
  }

  memset(buf, 0, 144);
  if (!fstat(a2, buf))
  {
    v16 = open(".", 4);
    if (MEMORY[0x1C6921200](a2))
    {
      if ((v16 & 0x80000000) != 0)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }

    bzero(buf, 0x400uLL);
    snprintf(buf, 0x400uLL, "%s%s", a3, "indexDirectory");
    unlink(buf);
    snprintf(buf, 0x400uLL, "%s%s", a3, "indexCompactDirectory");
    unlink(buf);
    snprintf(buf, 0x400uLL, "%s%s", a3, "indexPostings");
    unlink(buf);
    snprintf(buf, 0x400uLL, "%s%s", a3, "indexPositions");
    unlink(buf);
    snprintf(buf, 0x400uLL, "%s%s", a3, "indexArrays");
    unlink(buf);
    snprintf(buf, 0x400uLL, "%s%s", a3, "indexTermIds");
    unlink(buf);
    snprintf(buf, 0x400uLL, "%s%s", a3, "indexPositionTable");
    unlink(buf);
    MEMORY[0x1C6921200](v16);
    if ((v16 & 0x80000000) == 0)
    {
LABEL_18:
      close(v16);
    }
  }

LABEL_19:
  memset(buf, 0, 144);
  if (!fstat(a2, buf))
  {
    v17 = open(".", 4);
    if (!MEMORY[0x1C6921200](a2))
    {
      bzero(__str, 0x400uLL);
      snprintf(__str, 0x400uLL, "%s%s", a3, "indexHead");
      unlink(__str);
      snprintf(__str, 0x400uLL, "%s%s", a3, "indexId");
      unlink(__str);
      snprintf(__str, 0x400uLL, "%s%s", a3, "indexIds");
      unlink(__str);
      snprintf(__str, 0x400uLL, "%s%s", a3, "indexDates");
      unlink(__str);
      snprintf(__str, 0x400uLL, "%s%s", a3, "indexBigDates");
      unlink(__str);
      snprintf(__str, 0x400uLL, "%s%s", a3, "indexScores");
      unlink(__str);
      snprintf(__str, 0x400uLL, "%s%s", a3, "indexGroups");
      unlink(__str);
      snprintf(__str, 0x400uLL, "%s%s", a3, "indexUpdates");
      unlink(__str);
      snprintf(__str, 0x400uLL, "%s%s", a3, "topK.v2.mdplistc");
      unlink(__str);
      bzero(buf, 0x400uLL);
      snprintf(buf, 0x400uLL, "%s%s", a3, "directoryStoreFile");
      unlink(buf);
      IVFVectorIndex_s::unlink(".", a3, 0);
      MEMORY[0x1C6921200](v17);
      if ((v17 & 0x80000000) != 0)
      {
        return index_DeleteShadow(a2, a3, 0);
      }

      goto LABEL_22;
    }

    if ((v17 & 0x80000000) == 0)
    {
LABEL_22:
      close(v17);
    }
  }

  return index_DeleteShadow(a2, a3, 0);
}

void freeIndex(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 14432);
    if (v2 + 1 >= 2)
    {
      v3 = *(a1 + 72);
      if (*(a1 + 45))
      {
        v4 = v3;
      }

      else
      {
        v4 = (4 * v3 + 4) / 5;
      }

      munmap(v2, v4);
      *(a1 + 14432) = 0;
    }

    free(*(a1 + 14440));
    *(a1 + 14440) = 0;
    fd_release(*(a1 + 14472));
    *(a1 + 14472) = 0;
    v5 = *(a1 + 14408);
    if (v5)
    {
      munmap(v5, 8 * *(a1 + 72));
      *(a1 + 14408) = 0;
    }

    v6 = *(a1 + 14416);
    if (v6)
    {
      munmap(v6, 4 * *(a1 + 72));
      *(a1 + 14416) = 0;
    }

    v7 = *(a1 + 14424);
    if (v7)
    {
      munmap(v7, 8 * *(a1 + 72));
      *(a1 + 14424) = 0;
    }

    v8 = *(a1 + 14496);
    if (v8)
    {
      CFRelease(v8);
      *(a1 + 14496) = 0;
    }

    v9 = *(a1 + 14488);
    if (v9)
    {
      fd_release(v9);
      *(a1 + 14488) = 0;
    }

    fd_release(*(a1 + 14448));
    *(a1 + 14448) = 0;
    fd_release(*(a1 + 14456));
    *(a1 + 14456) = 0;
    fd_release(*(a1 + 14464));
    *(a1 + 14464) = 0;
    v10 = *(a1 + 9440);
    if (v10 != -1)
    {
      _fd_release_fd(*(a1 + 9432), v10, 0, *(a1 + 9448));
      *(a1 + 9440) = -1;
    }

    fd_release(*(a1 + 9432));
    *(a1 + 9432) = 0;
    storageClose(a1 + 4984);
    v11 = *(a1 + 14160);
    if (v11 != -1)
    {
      _fd_release_fd(*(a1 + 14152), v11, 0, *(a1 + 14168));
      *(a1 + 14160) = -1;
    }

    fd_release(*(a1 + 14152));
    *(a1 + 14152) = 0;
    storageClose(a1 + 9704);
    fd_release(*(a1 + 4672));
    *(a1 + 4672) = 0;
    v12 = *(a1 + 104);
    if (v12 + 1 >= 2)
    {
      munmap(v12, 1028 * *(a1 + 244));
      *(a1 + 104) = 0;
    }

    closeMF(a1 + 112);
    storageClose(a1 + 256);
    fd_release(*(a1 + 14480));
    *(a1 + 14480) = 0;
    v13 = *(a1 + 4928);
    if (v13)
    {
      storageClose((v13 + 1));
      v14 = v13[550];
      if (v14)
      {
        CFRelease(v14);
      }

      free(v13);
      *(a1 + 4928) = 0;
    }

    v15 = *(a1 + 4912);
    if (v15)
    {
      IVFVectorIndex_s::~IVFVectorIndex_s((v15 + 8));
      MEMORY[0x1C691FEF0](v15, 0x1032C40E78FF076);
      *(a1 + 4912) = 0;
    }

    freePayload(a1 + 4944);
    freePayload(a1 + 9664);
    bt_freeTrie(a1 + 96);
    v16 = *(a1 + 14392);
    if (v16)
    {
      TermUpdateSetRemoveFromAccounting(v16);
      TermUpdateSetRelease(*(a1 + 14392));
      atomic_fetch_add(gTermUpdateSetCount, 0xFFFFFFFF);
    }

    v17 = *(a1 + 14400);
    if (v17)
    {
      TermUpdateSetRelease(v17);
    }

    db_rwlock_destroy((a1 + 14720));
    db_rwlock_destroy((a1 + 14504));
    pthread_mutex_destroy((a1 + 15056));
    pthread_mutex_destroy((a1 + 15120));
    dispatch_release(*(a1 + 15696));
    free(*(a1 + 14440));
    *(a1 + 14440) = 0;
    v18 = *(a1 + 15184);
    if (v18)
    {
      _Block_release(v18);
    }

    *(a1 + 15184) = 0;
    _Block_release(*(a1 + 4936));

    free(a1);
  }
}

uint64_t index_DeleteShadow(uint64_t a1, const char *a2, char a3)
{
  v11 = *MEMORY[0x1E69E9840];
  memset(&v10, 0, sizeof(v10));
  if (!fstat(a1, &v10))
  {
    v6 = open(".", 4);
    if (MEMORY[0x1C6921200](a1))
    {
      if ((v6 & 0x80000000) != 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }

    bzero(&v10, 0x400uLL);
    snprintf(&v10, 0x400uLL, "%s%s", a2, "shadowIndexDirectory");
    unlink(&v10);
    snprintf(&v10, 0x400uLL, "%s%s", a2, "shadowIndexCompactDirectory");
    unlink(&v10);
    snprintf(&v10, 0x400uLL, "%s%s", a2, "shadowIndexArrays");
    unlink(&v10);
    MEMORY[0x1C6921200](v6);
    if ((v6 & 0x80000000) == 0)
    {
LABEL_4:
      close(v6);
    }
  }

LABEL_5:
  memset(&v10, 0, sizeof(v10));
  result = fstat(a1, &v10);
  if (result)
  {
    return result;
  }

  v8 = open(".", 4);
  result = MEMORY[0x1C6921200](a1);
  if (result)
  {
    if ((v8 & 0x80000000) != 0)
    {
      return result;
    }

    return close(v8);
  }

  bzero(__str, 0x400uLL);
  if ((a3 & 1) == 0)
  {
    snprintf(__str, 0x400uLL, "%s%s", a2, "shadowIndexHead");
    unlink(__str);
    snprintf(__str, 0x400uLL, "%s%s", a2, "shadowIndexGroups");
    unlink(__str);
    bzero(&v10, 0x400uLL);
    snprintf(&v10, 0x400uLL, "%s%s.shadow", a2, "directoryStoreFile");
    unlink(&v10);
    IVFVectorIndex_s::unlink(".", a2, 1);
  }

  snprintf(__str, 0x400uLL, "%s%s", a2, "shadowIndexTermIds");
  unlink(__str);
  snprintf(__str, 0x400uLL, "%s%s", a2, "shadowIndexPositionTable");
  unlink(__str);
  result = MEMORY[0x1C6921200](v8);
  if ((v8 & 0x80000000) == 0)
  {
    return close(v8);
  }

  return result;
}

uint64_t createIndex(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, unsigned int a5, char a6, int a7, int *a8, int a9, uint64_t a10, uint64_t a11, const void *a12, int a13)
{
  v77 = *MEMORY[0x1E69E9840];
  bzero(__str, 0x400uLL);
  memset(&v75, 0, 144);
  if (fstat(a1, &v75))
  {
    return 0;
  }

  v23 = open(".", 4);
  if (MEMORY[0x1C6921200](a1))
  {
    if ((v23 & 0x80000000) == 0)
    {
      close(v23);
    }

    return 0;
  }

  v67 = v23;
  *a8 = -1;
  v24 = "";
  if (a2)
  {
    v24 = a2;
  }

  v68 = v24;
  if ((a5 & 0x1000) != 0)
  {
    v30 = *__error();
    v31 = _SILogForLogForCategory(10);
    v32 = 2 * (dword_1EBF46AF4 < 4);
    if (os_log_type_enabled(v31, v32))
    {
      LOWORD(v75.f_bsize) = 0;
      _os_log_impl(&dword_1C278D000, v31, v32, "creating new index not allowed during locked indexing", &v75, 2u);
    }

    *__error() = v30;
    v33 = v67;
    v34 = v68;
    goto LABEL_83;
  }

  v25 = *__error();
  v26 = _SILogForLogForCategory(10);
  v27 = 2 * (dword_1EBF46AF4 < 4);
  if (os_log_type_enabled(v26, v27))
  {
    v75.f_bsize = 136315138;
    *&v75.f_iosize = v68;
    _os_log_impl(&dword_1C278D000, v26, v27, "creating index at %s", &v75, 0xCu);
  }

  *__error() = v25;
  index_DeleteIndex(0, a1, v68, 1);
  v28 = malloc_type_calloc(1uLL, 0x3D68uLL, 0x10F00405C9458FEuLL);
  if (!v28)
  {
    *a8 = -1;
    v33 = v67;
    v34 = v68;
LABEL_83:
    index_DeleteIndex(0, a1, v34, 1);
    v21 = 0;
    goto LABEL_84;
  }

  v21 = v28;
  v66 = v28 + 12288;
  initIndex(v28, a12);
  __strlcpy_chk(v21 + 15208, v68, 255, 255);
  *(v21 + 4) = a9;
  if (a7 && (a6 & 1) == 0)
  {
    atomic_fetch_or((v21 + 36), 8u);
  }

  *(v21 + 80) = a3;
  *(v21 + 88) = 1447;
  if (a11)
  {
    v29 = (*(a11 + 16))(a11, 0);
  }

  else
  {
    v29 = 0;
  }

  *(v21 + 56) = v29;
  *(v21 + 64) = a1;
  *(v21 + 15716) = a13;
  __strlcpy_chk(v21 + 15463, buildVersionCStr, 32, 32);
  __strlcpy_chk(v21 + 15495, sysVersionCStr, 32, 32);
  *(v21 + 68) = 0x100000000001;
  v66[2914] = (a5 & 0x10) != 0;
  *(v21 + 45) = BYTE1(a5) & 1;
  *(v21 + 46) = (a5 & 0x400) != 0;
  *(v66 + 3425) = 0;
  bzero(&v75, 0x878uLL);
  if (fstatfs(a1, &v75))
  {
    v35 = *__error();
    v36 = _SILogForLogForCategory(10);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "createIndex";
      *&buf[12] = 1024;
      *&buf[14] = 1469;
      *&buf[18] = 2080;
      *&buf[20] = a4;
      _os_log_error_impl(&dword_1C278D000, v36, OS_LOG_TYPE_ERROR, "%s:%d: Couldn't statfs parent directory: %s", buf, 0x1Cu);
    }
  }

  else
  {
    v37 = 0;
    v38 = *v75.f_fstypename;
    v39 = *v75.f_fstypename == 1634105445 && *&v75.f_fstypename[4] == 116;
    v40 = v39;
    v66[3425] = v40;
    if (v38 ^ 0x73667061 | v75.f_fstypename[4] && v38 != 7562856)
    {
      v37 = (*v75.f_fstypename != 1634105445 || *&v75.f_fstypename[4] != 116) && (*v75.f_fstypename != 1868854125 || *&v75.f_fstypename[4] != 115);
    }

    v43 = 0;
    if ((a5 & 0x8000) != 0 && !v37)
    {
      v43 = (a5 & 0x20) == 0;
    }

    v66[3426] = v43;
    v35 = *__error();
    v44 = _SILogForLogForCategory(10);
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
    {
      v39 = v66[3426] == 0;
      *buf = 136316162;
      v45 = "";
      if (v39)
      {
        v45 = "not";
      }

      *&buf[4] = v68;
      *&buf[12] = 2080;
      *&buf[14] = v45;
      *&buf[22] = 2080;
      *&buf[24] = v75.f_fstypename;
      v71 = 1024;
      v72 = (a5 >> 15) & 1;
      v73 = 1024;
      v74 = (a5 >> 5) & 1;
      _os_log_impl(&dword_1C278D000, v44, OS_LOG_TYPE_DEFAULT, "createIndex(%s) VectorIndex %s supported on %s isLocalVolume: %d, isBackup: %d", buf, 0x2Cu);
    }
  }

  *__error() = v35;
  v34 = v68;
  snprintf(__str, 0x400uLL, "%s%s", v68, "indexHead");
  v46 = open_index_file(a1, __str, 1538, 0, 0, 0, 0, 0, a8);
  *(v21 + 14480) = v46;
  if (v46)
  {
    v47 = v46;
    *buf = 0;
    v48 = _fd_acquire_fd(v46, buf);
    if (v48 != -1)
    {
      *(v47 + 28) |= 1u;
      v49 = v48;
      fcntl(v48, 48, 1);
      fcntl(v49, 76, v47[7] & 1);
      _fd_release_fd(v47, v49, 0, *buf);
    }

    v50 = *(v21 + 56);
    if (v50)
    {
      memset(buf, 0, sizeof(buf));
      v69 = buf;
      storeVInt64(&v69, v50);
      v51 = v69 - buf;
      if (v69 != buf)
      {
        snprintf(__str, 0x400uLL, "%s%s", v68, "indexId");
        v52 = open_index_file(a1, __str, 1538, 0, 0, 1, 0, 2, a8);
        if (v52)
        {
          v53 = v52;
          fd_pwrite(v52, buf, v51, 0);
          fd_release(v53);
        }
      }
    }

    v54 = *__error();
    v55 = _SILogForLogForCategory(10);
    if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
    {
      v56 = *(v21 + 56);
      *buf = 67109378;
      *&buf[4] = v56;
      *&buf[8] = 2080;
      *&buf[10] = __str;
      _os_log_impl(&dword_1C278D000, v55, OS_LOG_TYPE_DEFAULT, "create indexid %u %s", buf, 0x12u);
    }

    *__error() = v54;
    snprintf(__str, 0x400uLL, "%s%s", v68, "indexIds");
    v57 = open_index_file(a1, __str, 1538, 0x8000, 0, 1, (v21 + 14408), 3, a8);
    *(v21 + 14448) = v57;
    if (v57)
    {
      v66[2917] = 1;
      snprintf(__str, 0x400uLL, "%s%s", v68, "indexBigDates");
      *(v21 + 14456) = open_index_file(a1, __str, 1538, 0x4000, 0, 1, (v21 + 14416), 3, a8);
      if ((a5 & 0x100) != 0)
      {
        snprintf(__str, 0x400uLL, "%s%s", v68, "indexScores");
        *(v21 + 14464) = open_index_file(a1, __str, 1538, 0x8000, 0, 1, (v21 + 14424), 3, a8);
      }

      snprintf(__str, 0x400uLL, "%s%s", v68, "indexGroups");
      v58 = *(v21 + 45) ? 4096 : 3277;
      v59 = open_index_file(a1, __str, 1538, v58, 0, 1, (v21 + 14432), 3, a8);
      *(v21 + 14472) = v59;
      if (v59)
      {
        if (openPayload(v21 + 4944, *(v21 + 64), v68, "indexPostings", "indexTermIds", __str, 0, 0, a6 ^ 1, *(v21 + 4), *(v21 + 4936)) && openPayload(v21 + 9664, *(v21 + 64), v68, "indexPositions", "indexPositionTable", __str, 0, 0, a6 ^ 1, *(v21 + 4), *(v21 + 4936)))
        {
          if (bt_openTrie(v21 + 96, *(v21 + 64), v68, 0, 0, 0, *(v21 + 4), *(v21 + 4936)))
          {
            snprintf(__str, 0x400uLL, "%s%s", v68, "indexUpdates");
            v60 = fd_create_protected(a1, __str, 1538, 0);
            fd_release(v60);
            if ((a5 & 0x40) == 0 || (atomic_fetch_or((v21 + 36), 0x80u), ForwardStore = createForwardStore(a1, v68, *(v21 + 4936)), (*(v21 + 4928) = ForwardStore) != 0))
            {
              if (_os_feature_enabled_impl() && v66[3426] == 1)
              {
                v62 = *__error();
                v63 = _SILogForLogForCategory(10);
                if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
                {
                  v64 = *(v21 + 56);
                  *buf = 67109120;
                  *&buf[4] = v64;
                  _os_log_impl(&dword_1C278D000, v63, OS_LOG_TYPE_DEFAULT, "create vector index for indexid %d", buf, 8u);
                }

                *__error() = v62;
                v65 = *(v21 + 56);
                if (v65)
                {
                  createVectorIndex(a1, v68, a10, v65);
                }
              }

              *(v21 + 8) = 1;
              *a8 = 0;
              v33 = v67;
              goto LABEL_84;
            }
          }
        }
      }
    }
  }

  if (*a8)
  {
    freeIndex(v21);
    v33 = v67;
    goto LABEL_83;
  }

  v33 = v67;
LABEL_84:
  MEMORY[0x1C6921200](v33);
  if ((v33 & 0x80000000) == 0)
  {
    close(v33);
  }

  return v21;
}

void *initIndex(uint64_t a1, const void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  *a1 = -1163003219;
  v5.__sig = 0;
  *v5.__opaque = 0;
  pthread_mutexattr_init(&v5);
  pthread_mutex_init((a1 + 15056), &v5);
  pthread_mutex_init((a1 + 15120), &v5);
  pthread_mutexattr_destroy(&v5);
  *(a1 + 15688) = 0;
  *(a1 + 15696) = dispatch_semaphore_create(0);
  *(a1 + 14720) = 0u;
  *(a1 + 14736) = 0u;
  *(a1 + 14752) = 0u;
  *(a1 + 14768) = 0u;
  *(a1 + 14784) = 0u;
  *(a1 + 14800) = 0u;
  *(a1 + 14816) = 0u;
  *(a1 + 14832) = 0u;
  *(a1 + 14848) = 0u;
  *(a1 + 14864) = 0u;
  *(a1 + 14880) = 0u;
  *(a1 + 14896) = 0u;
  *(a1 + 14912) = 0u;
  *(a1 + 14928) = 0;
  pthread_mutex_init((a1 + 14720), 0);
  *(a1 + 14504) = 0u;
  *(a1 + 14520) = 0u;
  *(a1 + 14536) = 0u;
  *(a1 + 14552) = 0u;
  *(a1 + 14568) = 0u;
  *(a1 + 14584) = 0u;
  *(a1 + 14600) = 0u;
  *(a1 + 14616) = 0u;
  *(a1 + 14632) = 0u;
  *(a1 + 14648) = 0u;
  *(a1 + 14664) = 0u;
  *(a1 + 14680) = 0u;
  *(a1 + 14696) = 0u;
  *(a1 + 14712) = 0;
  pthread_mutex_init((a1 + 14504), 0);
  *(a1 + 9440) = -1;
  memset(&v6, 0, sizeof(v6));
  pthread_rwlockattr_init(&v6);
  pthread_rwlock_init((a1 + 9464), &v6);
  pthread_rwlockattr_destroy(&v6);
  *(a1 + 14160) = -1;
  memset(&v6, 0, sizeof(v6));
  pthread_rwlockattr_init(&v6);
  pthread_rwlock_init((a1 + 14184), &v6);
  pthread_rwlockattr_destroy(&v6);
  *(a1 + 4904) = 0;
  *(a1 + 4872) = 0u;
  *(a1 + 4888) = 0u;
  *(a1 + 4840) = 0u;
  *(a1 + 4856) = 0u;
  *(a1 + 4808) = 0u;
  *(a1 + 4824) = 0u;
  *(a1 + 4776) = 0u;
  *(a1 + 4792) = 0u;
  *(a1 + 4744) = 0u;
  *(a1 + 4760) = 0u;
  *(a1 + 4712) = 0u;
  *(a1 + 4728) = 0u;
  *(a1 + 4696) = 0u;
  pthread_mutex_init((a1 + 4696), 0);
  result = _Block_copy(a2);
  *(a1 + 4936) = result;
  return result;
}

void *open_index_file(int a1, const char *a2, int a3, uint64_t a4, off_t a5, int a6, uint64_t *a7, uint64_t a8, int *a9)
{
  v46 = *MEMORY[0x1E69E9840];
  v15 = fd_create_protected(a1, a2, a3 | (((a3 & 3) != 0) << 29), 3u);
  if (!v15)
  {
    *a9 = *__error();
    v27 = *__error();
    v28 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v33 = *a9;
      v45.st_dev = 136315906;
      *&v45.st_mode = "open_index_file";
      WORD2(v45.st_ino) = 1024;
      *(&v45.st_ino + 6) = 1311;
      HIWORD(v45.st_uid) = 1024;
      v45.st_gid = v33;
      LOWORD(v45.st_rdev) = 2080;
      *(&v45.st_rdev + 2) = a2;
      _os_log_error_impl(&dword_1C278D000, v28, OS_LOG_TYPE_ERROR, "%s:%d: open file error: %d, %s\n", &v45, 0x22u);
    }

    *__error() = v27;
    goto LABEL_23;
  }

  if (a5)
  {
    memset(&v45, 0, sizeof(v45));
    do
    {
      v16 = fstatat(*(v15 + 11), v15[9], &v45, 2048);
      v17 = g_prot_error_callback;
      if (v16 != -1 || g_prot_error_callback == 0)
      {
        break;
      }

      v19 = *(v15 + 10);
      v20 = __error();
    }

    while (((*(v17 + 16))(v17, v19, *v20, 8) & 1) != 0);
    if (v45.st_size < a5)
    {
      *a9 = -1;
      v21 = *__error();
      v22 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v35 = 136316162;
        v36 = "open_index_file";
        v37 = 1024;
        v38 = 1319;
        v39 = 1024;
        st_size = v45.st_size;
        v41 = 1024;
        v42 = a5;
        v43 = 2080;
        v44 = a2;
        v23 = "%s:%d: bad file size: %d, min size %d, %s\n";
        v24 = &v35;
        v25 = v22;
        v26 = 40;
LABEL_27:
        _os_log_error_impl(&dword_1C278D000, v25, OS_LOG_TYPE_ERROR, v23, v24, v26);
      }

LABEL_22:
      *__error() = v21;
LABEL_23:
      fd_release(v15);
      return 0;
    }
  }

  if (a7)
  {
    v29 = fd_mmap(v15, a4, a8, 1025, 0);
    *a7 = v29;
    if (v29 == -1)
    {
      *a9 = *__error();
      v21 = *__error();
      v30 = _SILogForLogForCategory(0);
      if (!os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_22;
      }

      v34 = *a9;
      v45.st_dev = 136316162;
      *&v45.st_mode = "open_index_file";
      WORD2(v45.st_ino) = 1024;
      *(&v45.st_ino + 6) = 1327;
      HIWORD(v45.st_uid) = 1024;
      v45.st_gid = v34;
      LOWORD(v45.st_rdev) = 2048;
      *(&v45.st_rdev + 2) = a4;
      WORD1(v45.st_atimespec.tv_sec) = 2080;
      *(&v45.st_atimespec.tv_sec + 4) = a2;
      v23 = "%s:%d: map error: %d, size: %lld, %s";
      goto LABEL_26;
    }
  }

  if (a6 && fd_truncate(v15, a4) == -1)
  {
    *a9 = *__error();
    v21 = *__error();
    v30 = _SILogForLogForCategory(0);
    if (!os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_22;
    }

    v31 = *a9;
    v45.st_dev = 136316162;
    *&v45.st_mode = "open_index_file";
    WORD2(v45.st_ino) = 1024;
    *(&v45.st_ino + 6) = 1333;
    HIWORD(v45.st_uid) = 1024;
    v45.st_gid = v31;
    LOWORD(v45.st_rdev) = 2048;
    *(&v45.st_rdev + 2) = a4;
    WORD1(v45.st_atimespec.tv_sec) = 2080;
    *(&v45.st_atimespec.tv_sec + 4) = a2;
    v23 = "%s:%d: ftruncate error: %d, size: %lld, %s";
LABEL_26:
    v24 = &v45;
    v25 = v30;
    v26 = 44;
    goto LABEL_27;
  }

  return v15;
}

uint64_t *storeVInt64(uint64_t *result, unint64_t a2)
{
  v2 = *result;
  if (HIDWORD(a2))
  {
    if ((a2 & 0x8000000000000000) != 0)
    {
      *v2 = a2 | 0x80;
      v5 = vdupq_n_s64(a2);
      v5.i64[0] = *&vmovn_s32(vuzp1q_s32(vshlq_u64(v5, xmmword_1C2BFA320), vshlq_u64(v5, xmmword_1C2BFA310))) | 0x80008000800080;
      *(v2 + 1) = vuzp1_s8(*v5.i8, *v5.i8).u32[0];
      *(v2 + 5) = (a2 >> 35) | 0x80;
      *(v2 + 6) = (a2 >> 42) | 0x80;
      *(v2 + 7) = (a2 >> 49) | 0x80;
      *(v2 + 8) = HIBYTE(a2);
      *(v2 + 9) = 1;
      v3 = 10;
    }

    else if (HIBYTE(a2))
    {
      *v2 = a2 | 0x80;
      v6 = vdupq_n_s64(a2);
      v6.i64[0] = *&vmovn_s32(vuzp1q_s32(vshlq_u64(v6, xmmword_1C2BFA320), vshlq_u64(v6, xmmword_1C2BFA310))) | 0x80008000800080;
      *(v2 + 1) = vuzp1_s8(*v6.i8, *v6.i8).u32[0];
      *(v2 + 5) = (a2 >> 35) | 0x80;
      *(v2 + 6) = (a2 >> 42) | 0x80;
      *(v2 + 7) = (a2 >> 49) | 0x80;
      *(v2 + 8) = HIBYTE(a2);
      v3 = 9;
    }

    else if (a2 >> 49)
    {
      *v2 = a2 | 0x80;
      v7 = vdupq_n_s64(a2);
      v7.i64[0] = *&vmovn_s32(vuzp1q_s32(vshlq_u64(v7, xmmword_1C2BFA320), vshlq_u64(v7, xmmword_1C2BFA310))) | 0x80008000800080;
      *(v2 + 1) = vuzp1_s8(*v7.i8, *v7.i8).u32[0];
      *(v2 + 5) = (a2 >> 35) | 0x80;
      *(v2 + 6) = (a2 >> 42) | 0x80;
      *(v2 + 7) = a2 >> 49;
      v3 = 8;
    }

    else
    {
      *v2 = a2 | 0x80;
      v4 = vdupq_n_s64(a2);
      v4.i64[0] = *&vmovn_s32(vuzp1q_s32(vshlq_u64(v4, xmmword_1C2BFA320), vshlq_u64(v4, xmmword_1C2BFA310))) | 0x80008000800080;
      *(v2 + 1) = vuzp1_s8(*v4.i8, *v4.i8).u32[0];
      if (a2 >> 42)
      {
        *(v2 + 5) = (a2 >> 35) | 0x80;
        *(v2 + 6) = a2 >> 42;
        v3 = 7;
      }

      else
      {
        *(v2 + 5) = a2 >> 35;
        v3 = 6;
      }
    }
  }

  else if (a2 >> 28)
  {
    *v2 = a2 | 0x80;
    *(v2 + 1) = (a2 >> 7) | 0x80;
    *(v2 + 2) = (a2 >> 14) | 0x80;
    *(v2 + 3) = (a2 >> 21) | 0x80;
    *(v2 + 4) = a2 >> 28;
    v3 = 5;
  }

  else if (a2 >= 0x200000)
  {
    *v2 = a2 | 0x80;
    *(v2 + 1) = (a2 >> 7) | 0x80;
    *(v2 + 2) = (a2 >> 14) | 0x80;
    *(v2 + 3) = a2 >> 21;
    v3 = 4;
  }

  else if (a2 >= 0x4000)
  {
    *v2 = a2 | 0x80;
    *(v2 + 1) = (a2 >> 7) | 0x80;
    *(v2 + 2) = a2 >> 14;
    v3 = 3;
  }

  else if (a2 >= 0x80)
  {
    *v2 = a2 | 0x80;
    *(v2 + 1) = a2 >> 7;
    v3 = 2;
  }

  else
  {
    *v2 = a2;
    v3 = 1;
  }

  *result += v3;
  return result;
}

BOOL openPayload(uint64_t a1, int a2, const char *a3, const char *a4, const char *a5, char *__str, uint64_t a7, char a8, char a9, int a10, void *a11)
{
  v12 = a7;
  v66 = *MEMORY[0x1E69E9840];
  if (a7)
  {
    v17 = 0;
  }

  else
  {
    v17 = 536871426;
  }

  snprintf(__str, 0x400uLL, "%s%s", a3, a4);
  v18 = fd_create_protected(a2, __str, v17, 3u);
  if (v18)
  {
    v19 = v18;
    if (a8)
    {
      result = initPayload(a1, v18, 0, v12, a9, a10, a11);
      if (result)
      {
        memset(&v47, 0, sizeof(v47));
        v21 = *(a1 + 4488);
        if (!v21)
        {
          goto LABEL_28;
        }

        while (1)
        {
          v22 = fstatat(*(v21 + 44), *(v21 + 72), &v47, 2048);
          v23 = g_prot_error_callback;
          if (v22 != -1 || g_prot_error_callback == 0)
          {
            break;
          }

          v25 = *(v21 + 40);
          v26 = __error();
          if (((*(v23 + 16))(v23, v25, *v26, 8) & 1) == 0)
          {
            goto LABEL_28;
          }
        }

        if (v22 == -1)
        {
LABEL_28:
          v36 = *__error();
          v37 = _SILogForLogForCategory(0);
          if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
          {
            v40 = *__error();
            *buf = 136315650;
            v59 = "openPayload";
            v60 = 1024;
            v61 = 1223;
            v62 = 1024;
            v63 = v40;
            _os_log_error_impl(&dword_1C278D000, v37, OS_LOG_TYPE_ERROR, "%s:%d: stat err: %d", buf, 0x18u);
          }

          v38 = __error();
          result = 0;
          *v38 = v36;
        }

        else if (v47.st_size >= *(a1 + 24))
        {
          return 1;
        }

        else
        {
          bzero(buf, 0x400uLL);
          v33 = *__error();
          v34 = _SILogForLogForCategory(0);
          if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
          {
            st_size = v47.st_size;
            v43 = *(a1 + 24);
            v44 = fd_realpath(*(a1 + 4488), buf);
            *v48 = 136316162;
            v49 = "openPayload";
            v45 = "";
            v50 = 1024;
            if (v44)
            {
              v45 = v44;
            }

            v51 = 1228;
            v52 = 2048;
            v53 = st_size;
            v54 = 2048;
            v55 = v43;
            v56 = 2080;
            v57 = v45;
            _os_log_error_impl(&dword_1C278D000, v34, OS_LOG_TYPE_ERROR, "%s:%d: bad file size: %lldd, min size %lldd, %s\n", v48, 0x30u);
          }

          v35 = __error();
          result = 0;
          *v35 = v33;
        }
      }
    }

    else
    {
      snprintf(__str, 0x400uLL, "%s%s", a3, a5);
      v30 = fd_create_protected(a2, __str, v17, 3u);
      if (v30)
      {

        return initPayload(a1, v19, v30, v12, a9, a10, a11);
      }

      else
      {
        v31 = *__error();
        v32 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          v41 = *__error();
          *buf = 136315906;
          v59 = "openPayload";
          v60 = 1024;
          v61 = 1210;
          v62 = 1024;
          v63 = v41;
          v64 = 2080;
          v65 = __str;
          _os_log_error_impl(&dword_1C278D000, v32, OS_LOG_TYPE_ERROR, "%s:%d: open err: %d, %s", buf, 0x22u);
        }

        *__error() = v31;
        fd_release(v19);
        return 0;
      }
    }
  }

  else
  {
    v27 = *__error();
    v28 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v39 = *__error();
      *buf = 136315906;
      v59 = "openPayload";
      v60 = 1024;
      v61 = 1198;
      v62 = 1024;
      v63 = v39;
      v64 = 2080;
      v65 = __str;
      _os_log_error_impl(&dword_1C278D000, v28, OS_LOG_TYPE_ERROR, "%s:%d: open err: %d, %s", buf, 0x22u);
    }

    v29 = __error();
    result = 0;
    *v29 = v27;
  }

  return result;
}

uint64_t indexRestoreFromBuffer(uint64_t a1, const char **a2, uint64_t a3, uint64_t a4, uint64_t a5, _BYTE *a6, int a7)
{
  v144 = *MEMORY[0x1E69E9840];
  v10 = *a2;
  result = indexRestoreHeaderFromBuffer(a1, a2, a3, a4, a5, a6);
  if (!result)
  {
    return result;
  }

  v12 = **a2;
  *a2 += 4;
  *(a1 + 60) = restoreVInt32_3354(a2);
  *(a1 + 68) = restoreVInt32_3354(a2);
  *(a1 + 72) = restoreVInt32_3354(a2);
  *(a1 + 14936) = restoreVInt32_3354(a2);
  *(a1 + 14944) = restoreVInt32_3354(a2);
  if (*(a1 + 4) >= 0x57u)
  {
    *(a1 + 14952) = restoreVInt32_3354(a2);
    *(a1 + 15008) = restoreVInt32_3354(a2);
  }

  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = *a2;
  do
  {
    v17 = v14 + 1;
    v18 = *(v16 + v14);
    v15 |= (v18 & 0x7F) << v13;
    if ((v18 & 0x80) == 0)
    {
      break;
    }

    v14 = v17;
    v19 = v13 == 63;
    v13 += 7;
  }

  while (!v19);
  *a2 = v16 + v17;
  *(a1 + 80) = v15;
  *(a1 + 88) = 5391;
  atomic_store(restoreVInt32_3354(a2), (a1 + 16));
  *(a1 + 52) = restoreVInt32_3354(a2);
  *(a1 + 24) = restoreVInt32_3354(a2);
  *(a1 + 96) = restoreVInt32_3354(a2);
  *(a1 + 240) = restoreVInt32_3354(a2);
  v20 = restoreVInt32_3354(a2);
  v21 = 0;
  v22 = 0;
  v23 = 0;
  *(a1 + 244) = v20;
  v24 = *a2;
  do
  {
    ++v22;
    v25 = *v24;
    v24 = (v24 + 1);
    v23 |= (v25 & 0x7F) << v21;
    if ((v25 & 0x80) == 0)
    {
      break;
    }

    v19 = v21 == 63;
    v21 += 7;
  }

  while (!v19);
  v26 = 0;
  v27 = 0;
  v28 = 0;
  v29 = &(*a2)[v22];
  *a2 = v29;
  *(a1 + 4944) = v23;
  do
  {
    ++v27;
    v30 = *v24;
    v24 = (v24 + 1);
    v28 |= (v30 & 0x7F) << v26;
    if ((v30 & 0x80) == 0)
    {
      break;
    }

    v19 = v26 == 63;
    v26 += 7;
  }

  while (!v19);
  v31 = 0;
  v32 = 0;
  v33 = 0;
  v34 = &v29[v27];
  *a2 = v34;
  *(a1 + 4952) = v28;
  *(a1 + 4960) = v28;
  do
  {
    ++v32;
    v35 = *v24;
    v24 = (v24 + 1);
    v33 |= (v35 & 0x7F) << v31;
    if ((v35 & 0x80) == 0)
    {
      break;
    }

    v19 = v31 == 63;
    v31 += 7;
  }

  while (!v19);
  v36 = 0;
  v37 = 0;
  v38 = 0;
  v39 = &v34[v32];
  *a2 = v39;
  *(a1 + 4968) = v33;
  do
  {
    ++v37;
    v40 = *v24;
    v24 = (v24 + 1);
    v38 |= (v40 & 0x7F) << v36;
    if ((v40 & 0x80) == 0)
    {
      break;
    }

    v19 = v36 == 63;
    v36 += 7;
  }

  while (!v19);
  *a2 = &v39[v37];
  *(a1 + 4976) = v38;
  *(a1 + 40) = restoreVInt32_3354(a2);
  *(a1 + 44) = restoreVInt32_3354(a2) != 0;
  *(a1 + 9400) = restoreVInt32_12670(a2);
  v41 = restoreVInt32_12670(a2);
  v42 = 0;
  v43 = 0;
  v44 = 0;
  *(a1 + 9404) = v41;
  v45 = *(a1 + 9400);
  *(a1 + 5216) = 8 * v45;
  *(a1 + 5208) = 8 * v41;
  v46 = *a2;
  do
  {
    ++v43;
    v47 = *v46;
    v46 = (v46 + 1);
    v44 |= (v47 & 0x7F) << v42;
    if ((v47 & 0x80) == 0)
    {
      break;
    }

    v19 = v42 == 63;
    v42 += 7;
  }

  while (!v19);
  v48 = 0;
  v49 = 0;
  v50 = 0;
  v51 = &(*a2)[v43];
  *a2 = v51;
  *(a1 + 9664) = v44;
  do
  {
    ++v49;
    v52 = *v46;
    v46 = (v46 + 1);
    v50 |= (v52 & 0x7F) << v48;
    if ((v52 & 0x80) == 0)
    {
      break;
    }

    v19 = v48 == 63;
    v48 += 7;
  }

  while (!v19);
  v53 = 0;
  v54 = 0;
  v55 = 0;
  v56 = &v51[v49];
  *a2 = v56;
  *(a1 + 9672) = v50;
  *(a1 + 9680) = v50;
  do
  {
    ++v54;
    v57 = *v46;
    v46 = (v46 + 1);
    v55 |= (v57 & 0x7F) << v53;
    if ((v57 & 0x80) == 0)
    {
      break;
    }

    v19 = v53 == 63;
    v53 += 7;
  }

  while (!v19);
  v141 = a7;
  v58 = 0;
  v59 = 0;
  v60 = 0;
  v61 = &v56[v54];
  *a2 = v61;
  *(a1 + 9688) = v55;
  do
  {
    ++v59;
    v62 = *v46;
    v46 = (v46 + 1);
    v60 |= (v62 & 0x7F) << v58;
    if ((v62 & 0x80) == 0)
    {
      break;
    }

    v19 = v58 == 63;
    v58 += 7;
  }

  while (!v19);
  *a2 = &v61[v59];
  *(a1 + 9696) = v60;
  restoreVInt32_3354(a2);
  restoreVInt32_3354(a2);
  *(a1 + 14120) = restoreVInt32_12670(a2);
  v63 = restoreVInt32_12670(a2);
  *(a1 + 14124) = v63;
  v64 = *(a1 + 14120);
  *(a1 + 9936) = 8 * v64;
  *(a1 + 9928) = 8 * v63;
  *(a1 + 120) = restoreVInt32_3928(a2);
  *(a1 + 128) = restoreVInt32_3928(a2);
  *(a1 + 136) = restoreVInt32_3928(a2);
  *(a1 + 144) = restoreVInt32_3928(a2);
  *(a1 + 148) = restoreVInt32_3928(a2);
  *(a1 + 152) = restoreVInt32_3928(a2);
  *(a1 + 156) = restoreVInt32_3928(a2);
  *(a1 + 160) = restoreVInt32_3928(a2);
  *(a1 + 164) = restoreVInt32_3928(a2);
  *(a1 + 168) = restoreVInt32_3928(a2);
  *(a1 + 172) = restoreVInt32_3928(a2);
  *(a1 + 176) = restoreVInt32_3928(a2);
  *(a1 + 180) = restoreVInt32_3928(a2);
  *(a1 + 184) = restoreVInt32_3928(a2);
  *(a1 + 188) = restoreVInt32_3928(a2);
  *(a1 + 192) = restoreVInt32_3928(a2);
  *(a1 + 196) = restoreVInt32_3928(a2);
  *(a1 + 200) = restoreVInt32_3928(a2);
  *(a1 + 204) = restoreVInt32_3928(a2);
  v139 = *(a1 + 128);
  v140 = *(a1 + 136);
  v65 = storageHeaderRestore(a1 + 256, a2);
  memset(__s, 0, sizeof(__s));
  __strlcpy_chk(a1 + 15495, *a2, 32, 32);
  v66 = &(*a2)[strlen((a1 + 15495)) + 1];
  *a2 = v66;
  __strlcpy_chk(a1 + 15463, v66, 32, 32);
  v67 = &(*a2)[strlen((a1 + 15463)) + 1];
  *a2 = v67;
  __strlcpy_chk(__s, v67, 32, 32);
  v68 = &(*a2)[strlen(__s) + 1];
  *a2 = v68;
  __strlcpy_chk(a1 + 15527, v68, 32, 32);
  v69 = strlen((a1 + 15527));
  v70 = 0;
  v71 = 0;
  v72 = 0;
  v73 = &(*a2)[v69 + 1];
  *a2 = v73;
  v74 = v73;
  do
  {
    ++v71;
    v75 = *v74++;
    v72 |= (v75 & 0x7F) << v70;
    if ((v75 & 0x80) == 0)
    {
      break;
    }

    v19 = v70 == 63;
    v70 += 7;
  }

  while (!v19);
  v76 = 0;
  v77 = 0;
  v78 = 0;
  v79 = &v73[v71];
  *a2 = &v73[v71];
  *(a1 + 15560) = v72;
  do
  {
    ++v77;
    v80 = *v74++;
    v78 |= (v80 & 0x7F) << v76;
    if ((v80 & 0x80) == 0)
    {
      break;
    }

    v19 = v76 == 63;
    v76 += 7;
  }

  while (!v19);
  v81 = 0;
  v82 = 0;
  v83 = 0;
  v84 = &v79[v77];
  *a2 = &v79[v77];
  *(a1 + 15584) = v78;
  do
  {
    ++v82;
    v85 = *v74++;
    v83 |= (v85 & 0x7F) << v81;
    if ((v85 & 0x80) == 0)
    {
      break;
    }

    v19 = v81 == 63;
    v81 += 7;
  }

  while (!v19);
  v86 = 0;
  v87 = 0;
  v88 = 0;
  v89 = &v84[v82];
  *a2 = &v84[v82];
  *(a1 + 15592) = v83;
  do
  {
    ++v87;
    v90 = *v74++;
    v88 |= (v90 & 0x7F) << v86;
    if ((v90 & 0x80) == 0)
    {
      break;
    }

    v19 = v86 == 63;
    v86 += 7;
  }

  while (!v19);
  v91 = 0;
  v92 = 0;
  v93 = 0;
  v94 = &v89[v87];
  *a2 = &v89[v87];
  *(a1 + 15600) = v88;
  do
  {
    ++v92;
    v95 = *v74++;
    v93 |= (v95 & 0x7F) << v91;
    if ((v95 & 0x80) == 0)
    {
      break;
    }

    v19 = v91 == 63;
    v91 += 7;
  }

  while (!v19);
  v96 = 0;
  v97 = 0;
  v98 = 0;
  v99 = &v94[v92];
  *a2 = &v94[v92];
  *(a1 + 15608) = v93;
  do
  {
    ++v97;
    v100 = *v74++;
    v98 |= (v100 & 0x7F) << v96;
    if ((v100 & 0x80) == 0)
    {
      break;
    }

    v19 = v96 == 63;
    v96 += 7;
  }

  while (!v19);
  v101 = 0;
  v102 = 0;
  v103 = 0;
  v104 = &v99[v97];
  *a2 = &v99[v97];
  *(a1 + 15616) = v98;
  do
  {
    ++v102;
    v105 = *v74++;
    v103 |= (v105 & 0x7F) << v101;
    if ((v105 & 0x80) == 0)
    {
      break;
    }

    v19 = v101 == 63;
    v101 += 7;
  }

  while (!v19);
  v106 = 0;
  v107 = 0;
  v108 = 0;
  v109 = &v104[v102];
  *a2 = v109;
  *(a1 + 15624) = v103;
  do
  {
    ++v107;
    v110 = *v74++;
    v108 |= (v110 & 0x7F) << v106;
    if ((v110 & 0x80) == 0)
    {
      break;
    }

    v19 = v106 == 63;
    v106 += 7;
  }

  while (!v19);
  v111 = 0;
  v112 = 0;
  v113 = 0;
  v114 = &v109[v107];
  *a2 = v114;
  *(a1 + 15632) = v108;
  do
  {
    ++v112;
    v115 = *v74++;
    v113 |= (v115 & 0x7F) << v111;
    if ((v115 & 0x80) == 0)
    {
      break;
    }

    v19 = v111 == 63;
    v111 += 7;
  }

  while (!v19);
  *a2 = &v114[v112];
  *(a1 + 15640) = v113;
  *(a1 + 15576) = v78;
  *(a1 + 14984) = v83;
  *(a1 + 14992) = v88;
  *(a1 + 15032) = v93;
  *(a1 + 14960) = v98;
  *(a1 + 14968) = v103;
  *(a1 + 15024) = v108;
  if (v113)
  {
    v72 = v113;
  }

  *(a1 + 15568) = v72;
  *(a1 + 15016) = *(a1 + 15648);
  v116 = (v12 - 4);
  v117 = *a2;
  v118 = (*a2 - v10);
  if (v118 < v116)
  {
    v119 = *(a1 + 4);
    if (v141)
    {
      if (v119 >= 0x72)
      {
        v120 = 0;
        v121 = 0;
        v122 = 0;
        do
        {
          v123 = *(v117 + v121++);
          v122 |= (v123 & 0x7F) << v120;
          if ((v123 & 0x80) == 0)
          {
            break;
          }

          v19 = v120 == 63;
          v120 += 7;
        }

        while (!v19);
LABEL_91:
        v117 = (v117 + v121);
        *(a1 + 15656) = v122;
        v118 = (v117 - v10);
      }
    }

    else if (v119 >= 0x65)
    {
      v124 = 0;
      v121 = 0;
      v122 = 0;
      do
      {
        v125 = *(v117 + v121++);
        v122 |= (v125 & 0x7F) << v124;
        if ((v125 & 0x80) == 0)
        {
          break;
        }

        v19 = v124 == 63;
        v124 += 7;
      }

      while (!v19);
      goto LABEL_91;
    }
  }

  v126 = v116 <= v118;
  v127 = v116 - v118;
  if (v126)
  {
    v127 = 0;
  }

  v128 = (v117 + v127);
  v131 = *v128;
  v129 = (v128 + 1);
  v130 = v131;
  *a2 = v129;
  if (v12 == v131)
  {
    v132 = v129 - v10 == v12 && v65 && v140 >= v139;
    v133 = v132 && v63 >= v64;
    if (v133 && v41 >= v45)
    {
      return 1;
    }
  }

  v135 = *__error();
  v136 = _SILogForLogForCategory(0);
  if (os_log_type_enabled(v136, OS_LOG_TYPE_ERROR))
  {
    v138 = *a2 - v10;
    *__s = 136316162;
    *&__s[4] = "indexRestoreFromBuffer";
    *&__s[12] = 1024;
    *&__s[14] = 5506;
    *&__s[18] = 1024;
    *&__s[20] = v12;
    *&__s[24] = 1024;
    *&__s[26] = v130;
    *&__s[30] = 1024;
    v143 = v138;
    _os_log_error_impl(&dword_1C278D000, v136, OS_LOG_TYPE_ERROR, "%s:%d: invalid file (%d, %d, %d)\n", __s, 0x24u);
  }

  v137 = __error();
  result = 0;
  *v137 = v135;
  *(a1 + 4) = 0;
  return result;
}

uint64_t indexRestoreHeaderFromBuffer(_DWORD *a1, unsigned int **a2, int a3, int a4, int a5, _BYTE *a6)
{
  v31 = *MEMORY[0x1E69E9840];
  v12 = *(*a2)++;
  a1[1] = v12;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v23 = 67109120;
    LODWORD(v24) = v12;
    _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Restored header version %d", &v23, 8u);
  }

  if (a3 < a4 || a3 > a5 || v12 == a3)
  {
    if (v12 == a3)
    {
LABEL_8:
      v14 = *a2;
      v15 = *(*a2)++;
      atomic_store(v15, a1 + 8);
      v16 = v14[1];
      *a2 = v14 + 2;
      atomic_store(v16, a1 + 9);
      v17 = v14[2];
      *a2 = v14 + 3;
      a1[12] = v17;
      return 1;
    }
  }

  else
  {
    v13 = a1[1];
    if (v13 >= a4 && v13 <= a5)
    {
      goto LABEL_8;
    }
  }

  if (a6)
  {
    *a6 = 1;
  }

  v19 = *__error();
  v20 = _SILogForLogForCategory(0);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    v22 = a1[1];
    v23 = 136315906;
    v24 = "indexRestoreHeaderFromBuffer";
    v25 = 1024;
    v26 = 5364;
    v27 = 1024;
    v28 = v22;
    v29 = 1024;
    v30 = a3;
    _os_log_error_impl(&dword_1C278D000, v20, OS_LOG_TYPE_ERROR, "%s:%d: Invalid version (%d) expected (%d)", &v23, 0x1Eu);
  }

  v21 = __error();
  result = 0;
  *v21 = v19;
  return result;
}

uint64_t restoreVInt32_3354(char **a1)
{
  v1 = *a1;
  v2 = **a1;
  if (**a1 < 0)
  {
    v4 = v1[1];
    if (v1[1] < 0)
    {
      v5 = v1[2];
      if (v1[2] < 0)
      {
        v7 = v1[3];
        if (v1[3] < 0)
        {
          v9 = v1[4];
          if (v9 < 0)
          {
            v12 = __si_assert_copy_extra_3233(0, -1);
            v13 = v12;
            v14 = "";
            if (v12)
            {
              v14 = v12;
            }

            __message_assert("%s:%u: failed assertion '%s' %s readVInt32: exceeds max size for uint32_t", "VIntUtils.h", 342, "(b4 & 0x80) == 0", v14);
            free(v13);
            if (__valid_fs(-1))
            {
              MEMORY[0xBAD] = -559038737;
              abort();
            }

            MEMORY[0xC00] = -559038737;
            abort();
          }

          v10 = ((v7 & 0x7F) << 21) | (v9 << 28) | ((v5 & 0x7F) << 14) | ((v4 & 0x7F) << 7) | (v2 & 0x7F);
          v3 = 5;
          v2 = v10;
        }

        else
        {
          v8 = ((v5 & 0x7F) << 14) | (v7 << 21) | ((v4 & 0x7F) << 7) | (v2 & 0x7F);
          v3 = 4;
          v2 = v8;
        }
      }

      else
      {
        v6 = ((v4 & 0x7F) << 7) | (v5 << 14) | (v2 & 0x7F);
        v3 = 3;
        v2 = v6;
      }
    }

    else
    {
      v2 = v2 & 0x7F | (v4 << 7);
      v3 = 2;
    }
  }

  else
  {
    v3 = 1;
  }

  *a1 = &v1[v3];
  return v2;
}

void __openIndexShadow_block_invoke(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, int a9)
{
  v9 = *(result + 32);
  *(v9 + 4920) += a9;
  if (a8 == 4 && *(v9 + 45) == 1)
  {
    writeVectorIndexDrop(*(v9 + 15716), a9, *(v9 + 15203), *(result + 40), a3);
  }
}

void writeVectorIndexDrop(uint64_t a1, int a2, int a3, const char *a4, int a5)
{
  v20 = a5;
  valuePtr = a2;
  v19 = 4;
  v8 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v10 = CFNumberCreate(v8, kCFNumberIntType, &valuePtr);
  if (v10)
  {
    v11 = v10;
    CFDictionaryAddValue(Mutable, @"vectorcount", v10);
    CFRelease(v11);
  }

  v12 = MEMORY[0x1E695E4D0];
  if (!a3)
  {
    v12 = MEMORY[0x1E695E4C0];
  }

  CFDictionaryAddValue(Mutable, @"readonly", *v12);
  if (a4)
  {
    v13 = CFStringCreateWithCString(v8, a4, 0x8000100u);
    if (v13)
    {
      v14 = v13;
      CFDictionaryAddValue(Mutable, @"prefix", v13);
      CFRelease(v14);
    }
  }

  v15 = CFNumberCreate(v8, kCFNumberNSIntegerType, &v20);
  if (v15)
  {
    v16 = v15;
    CFDictionaryAddValue(Mutable, @"propertyname", v15);
    CFRelease(v16);
  }

  v17 = CFNumberCreate(v8, kCFNumberIntType, &v19);
  if (v17)
  {
    v18 = v17;
    CFDictionaryAddValue(Mutable, @"dropreason", v17);
    CFRelease(v18);
  }

  if (Mutable)
  {
    (*(sVectorIndexDropCallback + 16))(sVectorIndexDropCallback, a1, Mutable);
    CFRelease(Mutable);
  }
}

uint64_t index_read_index_id(int a1, const char *a2, char *__str)
{
  v22 = *MEMORY[0x1E69E9840];
  snprintf(__str, 0x400uLL, "%s%s", a2, "indexId");
  v16 = -1;
  memset(&v19, 0, sizeof(v19));
  std::string::append[abi:nn200100]<char const*,0>(&v19, ".", "");
  v6 = strlen(a2);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::vector<long long>::__throw_length_error[abi:nn200100]();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  v18 = v6;
  if (v6)
  {
    memcpy(&__dst, a2, v6);
  }

  *(&__dst + v7) = 0;
  IVFVectorIndex_s::metaFilename(__p, &v19, &__dst);
  LODWORD(v8) = IVFVectorIndex_s::readIndexId(__p);
  if ((SBYTE7(v21) & 0x80000000) == 0)
  {
    if ((v18 & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

LABEL_21:
    operator delete(__dst);
    if ((SHIBYTE(v19.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_22;
  }

  operator delete(__p[0]);
  if (v18 < 0)
  {
    goto LABEL_21;
  }

LABEL_9:
  if ((SHIBYTE(v19.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_10;
  }

LABEL_22:
  operator delete(v19.__r_.__value_.__l.__data_);
LABEL_10:
  if (v8 == -1)
  {
    v8 = 0;
  }

  else
  {
    v8 = v8;
  }

  if (!v8)
  {
    v9 = open_index_file(a1, __str, 0, 0, 0, 0, 0, 0, &v16);
    if (v9)
    {
      v10 = v9;
      *__p = 0u;
      v21 = 0u;
      v11 = __p;
      fd_pread(v9, __p, 0x20uLL, 0);
      v12 = 0;
      v8 = 0;
      do
      {
        v13 = *v11;
        v11 = (v11 + 1);
        v8 |= (v13 & 0x7F) << v12;
        if ((v13 & 0x80) == 0)
        {
          break;
        }

        v14 = v12 == 63;
        v12 += 7;
      }

      while (!v14);
      fd_release(v10);
    }

    else
    {
      return 0;
    }
  }

  return v8;
}

char *openIndex(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, _DWORD *a10, unsigned int a11, uint64_t a12, uint64_t a13, const void *a14, int a15)
{
  MEMORY[0x1EEE9AC00](a1);
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v295 = v21;
  v278 = v22;
  v24 = v23;
  v26 = v25;
  v289 = v27;
  v321 = *MEMORY[0x1E69E9840];
  bzero(v320, 0x400uLL);
  bzero(v319, 0x1000uLL);
  v297 = v16;
  *v16 = -1;
  v294 = v20;
  v28 = v20 & 0x100;
  if ((v20 & 0x100) != 0)
  {
    v29 = 111;
  }

  else
  {
    v29 = 95;
  }

  if ((v20 & 0x100) != 0)
  {
    v30 = 114;
  }

  else
  {
    v30 = 102;
  }

  v312 = 0u;
  v313 = 0u;
  if (v26)
  {
    v31 = v26;
  }

  else
  {
    v31 = "";
  }

  v310 = 0uLL;
  v311 = 0uLL;
  LODWORD(v310) = -1;
  v32 = *__error();
  v33 = _SILogForLogForCategory(10);
  v34 = 2 * (dword_1EBF46AF4 < 4);
  if (os_log_type_enabled(v33, v34))
  {
    buf[0].st_dev = 136315138;
    *&buf[0].st_mode = v31;
    _os_log_impl(&dword_1C278D000, v33, v34, "open index at %s", buf, 0xCu);
  }

  *__error() = v32;
  result = malloc_type_calloc(1uLL, 0x3D68uLL, 0x10F00405C9458FEuLL);
  if (!result)
  {
    *v297 = -1;
    return result;
  }

  v279 = v30;
  v296 = v18;
  v36 = result;
  v37 = result + 12288;
  v38 = result + 12288;
  v290 = v28;
  v39 = v28 >> 8;
  v40 = result;
  initIndex(result, a14);
  v292 = v40 + 15208;
  v288 = v31;
  __strlcpy_chk((v40 + 15208), v31, 255, 255);
  *(v36 + 10) = v24;
  *(v36 + 22) = 1913;
  *(v36 + 16) = v289;
  *(v36 + 3929) = a15;
  v37[2914] = (v294 & 0x10) != 0;
  v36[45] = v39;
  v36[46] = (v294 & 0x400) != 0;
  v293 = v40;
  atomic_fetch_and(v40 + 9, 0xFFFFF7FF);
  atomic_fetch_or(v40 + 9, 0x800u);
  *(v37 + 3425) = 0;
  bzero(&v318, 0x878uLL);
  if (fstatfs(v289, &v318))
  {
    v41 = *__error();
    v42 = _SILogForLogForCategory(10);
    v43 = v295;
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      buf[0].st_dev = 136315650;
      *&buf[0].st_mode = "openIndex";
      WORD2(buf[0].st_ino) = 1024;
      *(&buf[0].st_ino + 6) = 1932;
      HIWORD(buf[0].st_uid) = 2080;
      *&buf[0].st_gid = v278;
      _os_log_error_impl(&dword_1C278D000, v42, OS_LOG_TYPE_ERROR, "%s:%d: Couldn't statfs parent directory: %s", buf, 0x1Cu);
    }

    v44 = v297;
    v45 = v38;
    v46 = v31;
  }

  else
  {
    v47 = 0;
    v48 = *v318.f_fstypename;
    v49 = *v318.f_fstypename == 1634105445 && *&v318.f_fstypename[4] == 116;
    v50 = v49;
    v38[3425] = v50;
    v43 = v295;
    v45 = v38;
    if (v48 ^ 0x73667061 | v318.f_fstypename[4])
    {
      v44 = v297;
      v46 = v31;
      if (v48 != 7562856)
      {
        v47 = (*v318.f_fstypename != 1634105445 || *&v318.f_fstypename[4] != 116) && (*v318.f_fstypename != 1868854125 || *&v318.f_fstypename[4] != 115);
      }
    }

    else
    {
      v44 = v297;
      v46 = v31;
    }

    v53 = 0;
    if ((v294 & 0x8000) != 0 && !v47)
    {
      v53 = (v294 & 0x20) == 0;
    }

    v45[3426] = v53;
    v41 = *__error();
    v54 = _SILogForLogForCategory(10);
    if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
    {
      v55 = v45[3426];
      buf[0].st_dev = 136316162;
      *&buf[0].st_mode = v46;
      WORD2(buf[0].st_ino) = 2080;
      v49 = v55 == 0;
      v56 = "";
      if (v49)
      {
        v56 = "not";
      }

      *(&buf[0].st_ino + 6) = v56;
      HIWORD(buf[0].st_gid) = 2080;
      *&buf[0].st_rdev = v318.f_fstypename;
      LOWORD(buf[0].st_atimespec.tv_sec) = 1024;
      *(&buf[0].st_atimespec.tv_sec + 2) = (v294 >> 15) & 1;
      HIWORD(buf[0].st_atimespec.tv_sec) = 1024;
      LODWORD(buf[0].st_atimespec.tv_nsec) = (v294 >> 5) & 1;
      _os_log_impl(&dword_1C278D000, v54, OS_LOG_TYPE_DEFAULT, "openIndex(%s) VectorIndex %s supported on %s isLocalVolume: %d, isBackup: %d", buf, 0x2Cu);
    }
  }

  *__error() = v41;
  snprintf(v320, 0x400uLL, "%s%s", v46, "indexHead");
  if (v43)
  {
    v57 = 0;
  }

  else
  {
    v57 = 2;
  }

  v58 = open_index_file(v289, v320, v57, 4096, 4096, 0, 0, 0, v44);
  *(v36 + 1810) = v58;
  if (v58)
  {
    v59 = v43;
    if ((v43 & 1) == 0)
    {
      v60 = v58;
      *&buf[0].st_dev = 0;
      v61 = _fd_acquire_fd(v58, buf);
      if (v61 != -1)
      {
        v62 = v36;
        v63 = v44;
        v64 = v59;
        v65 = v61;
        *(v60 + 28) |= 1u;
        fcntl(v61, 48, 1);
        fcntl(v65, 76, v60[7] & 1);
        v66 = v65;
        v59 = v64;
        v44 = v63;
        v36 = v62;
        _fd_release_fd(v60, v66, 0, *&buf[0].st_dev);
      }
    }

    index_id = index_read_index_id(v289, v46, v320);
    *(v36 + 14) = index_id;
    if (a13 && !index_id && (v59 & 1) == 0)
    {
      *(v36 + 14) = (*(a13 + 16))(a13, 0);
    }

    v68 = *(v36 + 1810);
    if (!v68)
    {
      goto LABEL_242;
    }

    v69 = fd_pread(v68, v319, 0x1000uLL, 0);
    if (v69 != 4096)
    {
      if (v69 != -1)
      {
        goto LABEL_242;
      }

      v70 = *__error();
      if (v70)
      {
LABEL_243:
        *v44 = v70;
        goto LABEL_244;
      }
    }

    v71 = v59;
    v309 = v319;
    if (!indexRestoreFromBuffer(v36, &v309, a11, v29, v279, 0, v290 != 0))
    {
      goto LABEL_244;
    }

    v72 = *__error();
    v73 = _SILogForLogForCategory(10);
    if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
    {
      v74 = *(v36 + 14);
      buf[0].st_dev = 67109378;
      *&buf[0].st_mode = v74;
      LOWORD(buf[0].st_ino) = 2080;
      *(&buf[0].st_ino + 2) = v320;
      _os_log_impl(&dword_1C278D000, v73, OS_LOG_TYPE_DEFAULT, "open indexid %u at %s", buf, 0x12u);
    }

    *__error() = v72;
    if ((v294 & 0x400) == 0)
    {
      v75 = *(v36 + 1);
      if (v290)
      {
        if (v75 <= 0x70)
        {
          goto LABEL_71;
        }
      }

      else if (v75 != 98 && v75 < 0x64)
      {
LABEL_71:
        if (v71)
        {
          v45[2915] = 1;
        }

        v76 = atomic_load(v293 + 9);
        v77 = atomic_load(v293 + 9);
        v78 = atomic_load(v293 + 8);
        if (v78 == -1073623027)
        {
          v79 = *(v36 + 18);
          if (v36[45] == 1)
          {
            v80 = (v79 + 3) >> 2;
          }

          else
          {
            v80 = (v79 + 4) / 5uLL;
          }

          v85 = (8 * *MEMORY[0x1E69E9AC8] - 1 + v80) / (8 * *MEMORY[0x1E69E9AC8]);
          v86 = 1650497869;
        }

        else
        {
          v81 = atomic_load(v293 + 8);
          if (v81 != 1)
          {
            v87 = atomic_load(v293 + 8);
            if (v87 != -804450864)
            {
              v112 = atomic_load(v293 + 8);
              if (v112 != 2)
              {
                v113 = *(v36 + 15);
                if (*(v36 + 17) > v113)
                {
                  *(v36 + 17) = v113 + 1;
                }

                goto LABEL_244;
              }

              v89 = 1;
              v88 = 1;
              goto LABEL_89;
            }

            v88 = 0;
LABEL_88:
            v89 = 0;
LABEL_89:
            v90 = v88;
            v287 = v89;
            v91 = v57;
            snprintf(v320, 0x400uLL, "%s%s", v46, "indexIds");
            v92 = *(v36 + 17);
            v93 = *(v36 + 18);
            if (v92 >= 2)
            {
              v94 = 8 * v92;
            }

            else
            {
              v94 = 0;
            }

            if (v92 <= v93)
            {
              v95 = 8 * v93;
            }

            else
            {
              *(v36 + 18) = v92;
              v95 = 8 * v92;
            }

            v286 = v76;
            if (v295)
            {
              v96 = 1;
            }

            else
            {
              v96 = 3;
            }

            v97 = v295 | ((v76 & 2) >> 1);
            v285 = v91;
            v98 = open_index_file(v289, v320, v91, v95, v94, v97 ^ 1, v293 + 1801, v96, v44);
            *(v36 + 1806) = v98;
            if (!v98)
            {
              goto LABEL_244;
            }

            snprintf(v320, 0x400uLL, "%s%s", v46, "indexBigDates");
            v99 = *(v36 + 17);
            if (v99 >= 2)
            {
              v100 = 4 * v99;
            }

            else
            {
              v100 = 0;
            }

            v101 = open_index_file(v289, v320, v91, 4 * *(v36 + 18), v100, v97 ^ 1, v293 + 1802, v96, v44);
            *(v36 + 1807) = v101;
            if (!v101)
            {
              *(v36 + 1807) = open_index_file(v289, v320, 1538, 4 * *(v36 + 18), 0, 1, v293 + 1802, 3, v44);
            }

            if (v290)
            {
              snprintf(v320, 0x400uLL, "%s%s", v288, "indexScores");
              v102 = *(v36 + 17);
              v103 = v102 >= 2 ? 8 * v102 : 0;
              v104 = open_index_file(v289, v320, v91, 8 * *(v36 + 18), v103, v295 ^ 1u, v293 + 1803, v96, v44);
              *(v36 + 1808) = v104;
              if (!v104)
              {
                *(v36 + 1808) = open_index_file(v289, v320, 1538, 8 * *(v36 + 18), 0, 1, v293 + 1803, 3, v44);
              }
            }

            v105 = v288;
            snprintf(v320, 0x400uLL, "%s%s", v288, "indexGroups");
            v106 = *(v36 + 18);
            if (v36[45] == 1)
            {
              v107 = *(v36 + 17);
            }

            else
            {
              v106 = (4 * v106 + 4) / 5;
              v107 = (4 * *(v36 + 17) + 4) / 5u;
            }

            v108 = open_index_file(v289, v320, v91, v106, v107, v97 ^ 1, v293 + 1804, v96, v44);
            *(v36 + 1809) = v108;
            if (!v108)
            {
              goto LABEL_244;
            }

            if (!openPayload((v293 + 4944), *(v36 + 16), v288, "indexPostings", "indexTermIds", v320, v97, (v77 & 4) != 0, 1, *(v36 + 1), *(v36 + 617)))
            {
              goto LABEL_244;
            }

            if (!openPayload((v293 + 9664), *(v36 + 16), v288, "indexPositions", "indexPositionTable", v320, v97, (v77 & 4) != 0, 1, *(v36 + 1), *(v36 + 617)))
            {
              goto LABEL_244;
            }

            v291 = v90;
            if (!bt_openTrie((v293 + 96), *(v36 + 16), v288, (v77 >> 2) & 1, v97, 0, *(v36 + 1), *(v36 + 617)))
            {
              goto LABEL_244;
            }

            v109 = v289;
            v110 = v71;
            if ((v294 & 0x40) != 0)
            {
              v111 = openForwardStore(*(v36 + 16), v288, (v294 >> 14) & 1, v71, 0, *(v36 + 617));
              *(v36 + 616) = v111;
              if (v111)
              {
                atomic_fetch_or(v293 + 9, 0x80u);
              }

              else
              {
                v114 = *__error();
                v115 = _SILogForLogForCategory(10);
                if (os_log_type_enabled(v115, OS_LOG_TYPE_ERROR))
                {
                  buf[0].st_dev = 136315394;
                  *&buf[0].st_mode = "openIndex";
                  WORD2(buf[0].st_ino) = 1024;
                  *(&buf[0].st_ino + 6) = 2062;
                  _os_log_error_impl(&dword_1C278D000, v115, OS_LOG_TYPE_ERROR, "%s:%d: Failed to open path index", buf, 0x12u);
                }

                *__error() = v114;
                if (!v290)
                {
                  goto LABEL_244;
                }

                *(v36 + 616) = 0;
                v116 = *__error();
                v117 = _SILogForLogForCategory(10);
                if (os_log_type_enabled(v117, OS_LOG_TYPE_ERROR))
                {
                  buf[0].st_dev = 136315394;
                  *&buf[0].st_mode = "openIndex";
                  WORD2(buf[0].st_ino) = 1024;
                  *(&buf[0].st_ino + 6) = 2065;
                  _os_log_error_impl(&dword_1C278D000, v117, OS_LOG_TYPE_ERROR, "%s:%d: Ignoring failed dirstore open for corespotlight", buf, 0x12u);
                }

                *__error() = v116;
                v109 = v289;
                v110 = v71;
              }
            }

            if (!*(v36 + 616) || (v118 = atomic_load(v293 + 9), (v118 & 0x24) != 4) || !*(v36 + 13))
            {
LABEL_152:
              if (_os_feature_enabled_impl())
              {
                if (v45[3426])
                {
                  v135 = *__error();
                  v136 = _SILogForLogForCategory(10);
                  if (os_log_type_enabled(v136, OS_LOG_TYPE_DEFAULT))
                  {
                    v137 = *(v36 + 14);
                    buf[0].st_dev = 67109120;
                    *&buf[0].st_mode = v137;
                    _os_log_impl(&dword_1C278D000, v136, OS_LOG_TYPE_DEFAULT, "open vector index for indexid %d", buf, 8u);
                  }

                  *__error() = v135;
                  if ((v294 & 0x2000) != 0)
                  {
                    bzero(buf, 0x400uLL);
                    v109 = v289;
                    v155 = fcntl(v289, 50, buf);
                    if (LOBYTE(buf[0].st_dev))
                    {
                      v156 = v155 < 0;
                    }

                    else
                    {
                      v156 = 1;
                    }

                    if (v156)
                    {
                      v157 = 0;
                    }

                    else
                    {
                      v157 = buf;
                    }

                    IVFVectorIndex_s::unlink(v157, v105, 0);
                    if (v36[45] == 1)
                    {
                      writeVectorIndexDrop(*(v36 + 3929), 1, v45[2915], v105, 0);
                    }
                  }

                  else
                  {
                    v109 = v289;
                    if (*(v36 + 14))
                    {
                      v138 = *(v36 + 16);
                      if (v110)
                      {
                        v139 = 1;
                      }

                      else
                      {
                        v212 = atomic_load(v293 + 9);
                        v139 = (v212 & 0x26) != 0;
                      }

                      v140 = *(v36 + 14);
                      v301[0] = MEMORY[0x1E69E9820];
                      v301[1] = 0x40000000;
                      v301[2] = __openIndex_block_invoke;
                      v301[3] = &__block_descriptor_tmp_17;
                      v301[4] = v36;
                      v301[5] = v105;
                      openVectorIndex(v138, v105, v139, a12, v140, v301);
                    }
                  }
                }
              }

              else if (v45[3426])
              {
                bzero(buf, 0x400uLL);
                v141 = fcntl(v109, 50, buf);
                if (LOBYTE(buf[0].st_dev))
                {
                  v142 = v141 < 0;
                }

                else
                {
                  v142 = 1;
                }

                if (v142)
                {
                  v143 = 0;
                }

                else
                {
                  v143 = buf;
                }

                IVFVectorIndex_s::unlink(v143, v105, 0);
              }

              if ((v294 & 0x1100) == 0x100)
              {
                snprintf(v320, 0x400uLL, "%s%s", v105, "topK.v2.mdplistc");
                v144 = fd_create_protected(v109, v320, 0, 0);
                *(v36 + 1811) = v144;
                if (v144)
                {
                  memset(buf, 0, 144);
                  if (fd_stat(v144, buf) != -1)
                  {
                    v145 = fd_mmap(*(v36 + 1811), buf[0].st_size, 1, 1, 0);
                    if (v145 != -1)
                    {
                      v146 = v145;
                      *v314 = v145;
                      *&v314[8] = buf[0].st_size;
                      *&v314[16] = 0;
                      v300[0] = 1;
                      v300[1] = v314;
                      add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
                      v308 = 0;
                      v307 = 0;
                      v306 = 0;
                      v305 = 0;
                      v148 = setThreadIdAndInfo(-1, sMappingExceptionCallbacks, v300, 0, add_explicit + 1);
                      v307 = HIDWORD(v148);
                      v308 = v148;
                      v306 = v149;
                      v305 = v150;
                      v151 = threadData[9 * v148 + 1] + 320 * HIDWORD(v148);
                      *(v151 + 216) = 0;
                      v152 = *(v151 + 312);
                      v153 = *(v151 + 224);
                      v154 = v151;
                      if (v153)
                      {
                        v153(*(v151 + 288));
                      }

                      v304 = v308;
                      v303 = v307;
                      v302 = v306;
                      v299 = v305;
                      if (_setjmp(v154))
                      {
                        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                        {
                          *v298 = 0;
                          _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v298, 2u);
                        }

                        v154[78] = v152;
                        CIOnThreadCleanUpReset(v299);
                        dropThreadId(v304, 1, add_explicit + 1);
                        CICleanUpReset(v304, v302);
                      }

                      else
                      {
                        *(v36 + 1812) = _MDPlistContainerCreateWithBytes();
                        v158 = threadData[9 * v304 + 1] + 320 * v303;
                        *(v158 + 312) = v152;
                        v159 = *(v158 + 232);
                        if (v159)
                        {
                          v159(*(v158 + 288));
                        }

                        dropThreadId(v304, 0, add_explicit + 1);
                      }

                      v105 = v288;
                      v109 = v289;
                      if (!*(v36 + 1812))
                      {
                        munmap(v146, buf[0].st_size);
                      }
                    }
                  }
                }
              }

              v160 = *(v36 + 1947);
              if (!v160)
              {
LABEL_233:
                v181 = a10;
                if ((v286 & 2) != 0)
                {
                  goto LABEL_234;
                }

                snprintf(v320, 0x400uLL, "%s%s", v105, "indexUpdates");
                if ((v294 & 0x1000) != 0)
                {
                  if (v287)
                  {
                    v214 = __si_assert_copy_extra_3233(0, -1);
                    v215 = v214;
                    v216 = "";
                    if (v214)
                    {
                      v216 = v214;
                    }

                    v271 = "!wasFastFlush";
                    v272 = v216;
                    v217 = 2215;
                    goto LABEL_302;
                  }

                  v189 = 0;
                }

                else
                {
                  v189 = fd_create_protected(v109, v320, v285, 0);
                  if (!v189)
                  {
                    goto LABEL_244;
                  }
                }

                LOBYTE(v302) = 0;
                v36[8] = 1;
                v195 = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
                *v314 = 0;
                LODWORD(v300[0]) = 0;
                v308 = 0;
                v307 = 0;
                v196 = setThreadIdAndInfo(*(v36 + 16), sIndexExceptionCallbacks, v36, 0x20000000, v195 + 1);
                LODWORD(v300[0]) = HIDWORD(v196);
                *v314 = v196;
                v308 = v197;
                v307 = v198;
                v199 = threadData[9 * v196 + 1] + 320 * HIDWORD(v196);
                *(v199 + 216) = 0;
                v200 = *(v199 + 312);
                v201 = *(v199 + 224);
                if (v201)
                {
                  v201(*(v199 + 288));
                }

                v306 = *v314;
                v305 = v300[0];
                v304 = v308;
                v303 = v307;
                if (_setjmp(v199))
                {
                  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                  {
                    LOWORD(buf[0].st_dev) = 0;
                    _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", buf, 2u);
                  }

                  *(v199 + 312) = v200;
                  if ((~*(v199 + 212) & 0xA0000000) == 0)
                  {
                    v202 = *(v199 + 288);
                    if (v202)
                    {
                      _CIMakeInvalid(v202);
                    }
                  }

                  CIOnThreadCleanUpReset(v303);
                  dropThreadId(v306, 1, v195 + 1);
                  CICleanUpReset(v306, v304);
                  v36[8] = 0;
                  goto LABEL_264;
                }

                if ((v294 & 0x1000) != 0)
                {
                  v207 = 0;
                  LOBYTE(v208) = 0;
LABEL_286:
                  v209 = v208;
                  v210 = threadData[9 * v306 + 1] + 320 * v305;
                  *(v210 + 312) = v200;
                  v211 = *(v210 + 232);
                  if (v211)
                  {
                    v211(*(v210 + 288));
                  }

                  dropThreadId(v306, 0, v195 + 1);
                  v36[8] = 0;
                  if (v209)
                  {
                    if (v189)
                    {
                      store_stream_destroy(&v310);
                      fd_release(v189);
                    }

                    goto LABEL_244;
                  }

                  v181 = a10;
                  if (v207)
                  {
                    free(v207);
                  }

LABEL_264:
                  if ((v294 & 0x1000) == 0)
                  {
                    store_stream_destroy(&v310);
                    fd_release(v189);
                    if (v311)
                    {
                      goto LABEL_244;
                    }
                  }

                  if (*v181)
                  {
                    goto LABEL_244;
                  }

LABEL_234:
                  v182 = *(v36 + 1799);
                  v183 = v293;
                  if (v182)
                  {
                    if (v45[2914] == 1)
                    {
                      *(v182 + 608) = getPropertyStringCallback;
                    }

                    *(v182 + 280) = v293 + 14184;
                  }

                  v36[8] = 1;
                  if ((v291 | v295))
                  {
                    if (!v296)
                    {
LABEL_241:
                      *v44 = 0;
                      goto LABEL_244;
                    }

LABEL_240:
                    v184 = *(v183 + 14936);
                    v185 = *(v183 + 14968);
                    *(v296 + 16) = *(v183 + 14952);
                    *(v296 + 32) = v185;
                    *v296 = v184;
                    v186 = *(v183 + 14984);
                    v187 = *(v183 + 15000);
                    v188 = *(v183 + 15016);
                    *(v296 + 96) = *(v36 + 1879);
                    *(v296 + 64) = v187;
                    *(v296 + 80) = v188;
                    *(v296 + 48) = v186;
                    goto LABEL_241;
                  }

                  if (indexShadowFiles(v36, 1, v319, v181))
                  {
                    *v44 = -1;
                    v190 = *__error();
                    v191 = _SILogForLogForCategory(0);
                    if (!os_log_type_enabled(v191, OS_LOG_TYPE_ERROR))
                    {
LABEL_282:
                      *__error() = v190;
                      goto LABEL_244;
                    }

                    v192 = *v44;
                    buf[0].st_dev = 136315906;
                    *&buf[0].st_mode = "openIndex";
                    WORD2(buf[0].st_ino) = 1024;
                    *(&buf[0].st_ino + 6) = 2420;
                    HIWORD(buf[0].st_uid) = 1024;
                    buf[0].st_gid = v192;
                    LOWORD(buf[0].st_rdev) = 2080;
                    *(&buf[0].st_rdev + 2) = v292;
                    v193 = "%s:%d: index shadow err:%d at %s\n";
                    v194 = buf;
                  }

                  else
                  {
                    bzero(buf, 0x1000uLL);
                    v300[0] = buf;
                    indexStoreToBuffer(v36, v300);
                    if (!indexCommitShadow(v36, buf))
                    {
                      fd_sync(*(v36 + 1809), 1);
                      v183 = v293;
                      if (!v296)
                      {
                        goto LABEL_241;
                      }

                      goto LABEL_240;
                    }

                    *v44 = -1;
                    v190 = *__error();
                    v191 = _SILogForLogForCategory(0);
                    if (!os_log_type_enabled(v191, OS_LOG_TYPE_ERROR))
                    {
                      goto LABEL_282;
                    }

                    v213 = *v44;
                    *v314 = 136315906;
                    *&v314[4] = "openIndex";
                    *&v314[12] = 1024;
                    *&v314[14] = 2429;
                    *&v314[18] = 1024;
                    *&v314[20] = v213;
                    v315 = 2080;
                    v316 = v292;
                    v193 = "%s:%d: index commit shadow err:%d at %s\n";
                    v194 = v314;
                  }

                  _os_log_error_impl(&dword_1C278D000, v191, OS_LOG_TYPE_ERROR, v193, v194, 0x22u);
                  goto LABEL_282;
                }

                v203 = store_stream_init(&v310, v189, 0);
                if (dword_1EBF46AF4 >= 5)
                {
                  v218 = v203;
                  v219 = *__error();
                  v220 = _SILogForLogForCategory(10);
                  if (os_log_type_enabled(v220, OS_LOG_TYPE_DEFAULT))
                  {
                    buf[0].st_dev = 134217984;
                    *&buf[0].st_mode = *(&v311 + 1) - v312 + *(&v312 + 1);
                    _os_log_impl(&dword_1C278D000, v220, OS_LOG_TYPE_DEFAULT, "Post init at %lld", buf, 0xCu);
                  }

                  *__error() = v219;
                  v203 = v218;
                }

                if (v311)
                {
                  v204 = 0;
                }

                else
                {
                  v204 = v203;
                }

                if (v204 != 1)
                {
                  goto LABEL_284;
                }

                v205 = v287;
                if (!v312)
                {
                  v205 = 0;
                }

                if (v205 != 1)
                {
LABEL_284:
                  v207 = 0;
                  LOBYTE(v208) = 0;
LABEL_285:
                  v44 = v297;
                  goto LABEL_286;
                }

                if (dword_1EBF46AF4 >= 5)
                {
                  v221 = *__error();
                  v222 = _SILogForLogForCategory(10);
                  if (os_log_type_enabled(v222, OS_LOG_TYPE_DEFAULT))
                  {
                    buf[0].st_dev = 134217984;
                    *&buf[0].st_mode = *(&v311 + 1) - v312 + *(&v312 + 1);
                    _os_log_impl(&dword_1C278D000, v222, OS_LOG_TYPE_DEFAULT, "At start %lld", buf, 0xCu);
                  }

                  *__error() = v221;
                  if ((v294 & 0x40) == 0)
                  {
                    goto LABEL_279;
                  }
                }

                else if ((v294 & 0x40) == 0)
                {
LABEL_279:
                  v206 = 0;
                  goto LABEL_312;
                }

                v206 = *(v36 + 616) + 4384;
LABEL_312:
                v280 = v206;
                vint32_3407 = store_stream_read_vint32_3407(&v310);
                v224 = vint32_3407;
                if (dword_1EBF46AF4 >= 5)
                {
                  v257 = *__error();
                  v258 = _SILogForLogForCategory(10);
                  if (os_log_type_enabled(v258, OS_LOG_TYPE_DEFAULT))
                  {
                    buf[0].st_dev = 134217984;
                    *&buf[0].st_mode = *(&v311 + 1) - v312 + *(&v312 + 1);
                    _os_log_impl(&dword_1C278D000, v258, OS_LOG_TYPE_DEFAULT, "Post version at %lld", buf, 0xCu);
                  }

                  *__error() = v257;
                  if (v224 != 2)
                  {
                    goto LABEL_374;
                  }
                }

                else if (vint32_3407 != 2)
                {
                  goto LABEL_374;
                }

                v225 = a11 - 111 < 4;
                if (!v290)
                {
                  v225 = a11 - 95 < 8;
                }

                if (v225)
                {
                  v226 = store_stream_read_vint32_3407(&v310);
                  v283 = store_stream_read_vint32_3407(&v310);
                  numBits = store_stream_read_vint32_3407(&v310);
                  v227 = atomic_load(v293 + 9);
                  if (v227 < 0)
                  {
                    v228 = store_stream_read_vint32_3407(&v310);
                  }

                  else
                  {
                    v228 = 0;
                  }

                  v229 = v228;
                  if (v283 <= v226)
                  {
                    v230 = v226;
                  }

                  else
                  {
                    v230 = v283;
                  }

                  if (v230 <= numBits)
                  {
                    v231 = numBits;
                  }

                  else
                  {
                    v231 = v230;
                  }

                  v281 = v229;
                  if (v229 > v231)
                  {
                    v231 = v229;
                  }

                  v232 = malloc_type_malloc((v231 + 7) >> 3, 0xF4248005uLL);
                  if (v232)
                  {
                    v233 = v232;
                    if (dword_1EBF46AF4 >= 5)
                    {
                      v261 = *__error();
                      v262 = _SILogForLogForCategory(10);
                      if (os_log_type_enabled(v262, OS_LOG_TYPE_DEFAULT))
                      {
                        buf[0].st_dev = 134217984;
                        *&buf[0].st_mode = *(&v311 + 1) - v312 + *(&v312 + 1);
                        _os_log_impl(&dword_1C278D000, v262, OS_LOG_TYPE_DEFAULT, "Pre-loop at %lld", buf, 0xCu);
                      }

                      *__error() = v261;
                    }

                    bytes = v233;
                    if (*a10)
                    {
                      goto LABEL_369;
                    }

                    if (store_stream_read_bytes_3410(&v310, v233, (v226 + 7) >> 3) == (v226 + 7) >> 3)
                    {
                      v234 = CFBitVectorCreate(0, v233, v226);
                      if (v234)
                      {
                        v235 = v234;
                        if (v226)
                        {
                          for (i = 0; i != v226; ++i)
                          {
                            v237 = CFBitVectorGetBitAtIndex(v235, i) != 0;
                            bit_vector_set_3411(v293 + 1176, i, v237);
                          }
                        }

                        CFRelease(v235);
                        if (dword_1EBF46AF4 >= 5)
                        {
                          v263 = *__error();
                          v264 = _SILogForLogForCategory(10);
                          if (os_log_type_enabled(v264, OS_LOG_TYPE_DEFAULT))
                          {
                            buf[0].st_dev = 134217984;
                            *&buf[0].st_mode = *(&v311 + 1) - v312 + *(&v312 + 1);
                            _os_log_impl(&dword_1C278D000, v264, OS_LOG_TYPE_DEFAULT, "Post bv1 at %lld", buf, 0xCu);
                          }

                          *__error() = v263;
                        }

                        if (*a10)
                        {
                          goto LABEL_369;
                        }

                        if (store_stream_read_bytes_3410(&v310, bytes, (v283 + 7) >> 3) == (v283 + 7) >> 3)
                        {
                          v238 = CFBitVectorCreate(0, bytes, v283);
                          if (v238)
                          {
                            v239 = v238;
                            if (v283)
                            {
                              for (j = 0; j != v283; ++j)
                              {
                                v241 = CFBitVectorGetBitAtIndex(v239, j) != 0;
                                bit_vector_set_3411(v293 + 1766, j, v241);
                              }
                            }

                            CFRelease(v239);
                            if (dword_1EBF46AF4 >= 5)
                            {
                              v265 = *__error();
                              v266 = _SILogForLogForCategory(10);
                              if (os_log_type_enabled(v266, OS_LOG_TYPE_DEFAULT))
                              {
                                buf[0].st_dev = 134217984;
                                *&buf[0].st_mode = *(&v311 + 1) - v312 + *(&v312 + 1);
                                _os_log_impl(&dword_1C278D000, v266, OS_LOG_TYPE_DEFAULT, "Post bv2 at %lld", buf, 0xCu);
                              }

                              *__error() = v265;
                            }

                            if (*a10)
                            {
                              goto LABEL_369;
                            }

                            if (store_stream_read_bytes_3410(&v310, bytes, (numBits + 7) >> 3) == (numBits + 7) >> 3)
                            {
                              v242 = CFBitVectorCreate(0, bytes, numBits);
                              if (v242)
                              {
                                v243 = v242;
                                if (numBits)
                                {
                                  for (k = 0; k != numBits; ++k)
                                  {
                                    v245 = CFBitVectorGetBitAtIndex(v243, k) != 0;
                                    bit_vector_set_3411(v293 + 579, k, v245);
                                  }
                                }

                                CFRelease(v243);
                                if (dword_1EBF46AF4 >= 5)
                                {
                                  v267 = *__error();
                                  v268 = _SILogForLogForCategory(10);
                                  if (os_log_type_enabled(v268, OS_LOG_TYPE_DEFAULT))
                                  {
                                    buf[0].st_dev = 134217984;
                                    *&buf[0].st_mode = *(&v311 + 1) - v312 + *(&v312 + 1);
                                    _os_log_impl(&dword_1C278D000, v268, OS_LOG_TYPE_DEFAULT, "Post bv3 at %lld", buf, 0xCu);
                                  }

                                  *__error() = v267;
                                  if ((v294 & 0x40) == 0)
                                  {
LABEL_360:
                                    if (!*a10)
                                    {
                                      if (dword_1EBF46AF4 >= 5)
                                      {
                                        v269 = *__error();
                                        v270 = _SILogForLogForCategory(10);
                                        if (os_log_type_enabled(v270, OS_LOG_TYPE_DEFAULT))
                                        {
                                          buf[0].st_dev = 134217984;
                                          *&buf[0].st_mode = *(&v311 + 1) - v312 + *(&v312 + 1);
                                          _os_log_impl(&dword_1C278D000, v270, OS_LOG_TYPE_DEFAULT, "Post bv4 at %lld", buf, 0xCu);
                                        }

                                        *__error() = v269;
                                      }

                                      if (v36[46])
                                      {
                                        v251 = 32;
                                      }

                                      else
                                      {
                                        v251 = 0;
                                      }

                                      v252 = *(v36 + 10);
                                      v253 = *(v36 + 17);
                                      v254 = atomic_load(v293 + 9);
                                      updated = TermUpdateSetRestore(v246, &v310, _indexProgress, v36, v252, v253, v251, v253, (v254 >> 3) & 1, *(v36 + 1798), *(v36 + 14), *(v36 + 617));
                                      *(v36 + 1799) = updated;
                                      if (!updated)
                                      {
                                        v256 = v311;
                                        if (v311 == 22)
                                        {
                                          __si_set_error_str(1, "%s:%u: %s", "JHContentIndex.c", 2342, "invalid term update set");
                                          _si_set_invalid_term_update_set();
                                        }

                                        else
                                        {
                                          bzero(buf, 0x400uLL);
                                          snprintf(buf, 0x400uLL, "restoring term update set failed %d", v256);
                                          __si_set_error_str(1, "%s:%u: %s", "JHContentIndex.c", 2347, buf);
                                        }

                                        if (!v311)
                                        {
                                          LODWORD(v311) = -1;
                                        }
                                      }

                                      LOBYTE(v208) = 0;
                                      if (!v226 && !v283 && !numBits && !v281)
                                      {
                                        v208 = *(v36 + 1799);
                                        if (v208)
                                        {
                                          atomic_load((*(v208 + 24) + 16));
                                          LOBYTE(v208) = 0;
                                        }
                                      }

                                      goto LABEL_370;
                                    }

LABEL_369:
                                    LOBYTE(v208) = 0;
LABEL_370:
                                    v207 = bytes;
                                    goto LABEL_285;
                                  }
                                }

                                else if ((v294 & 0x40) == 0)
                                {
                                  goto LABEL_360;
                                }

                                if (!*(v36 + 616))
                                {
                                  goto LABEL_360;
                                }

                                if (*a10)
                                {
                                  goto LABEL_369;
                                }

                                if (store_stream_read_bytes_3410(&v310, bytes, (v281 + 7) >> 3) == (v281 + 7) >> 3)
                                {
                                  v247 = CFBitVectorCreate(0, bytes, v281);
                                  if (v247)
                                  {
                                    v248 = v247;
                                    if (v281)
                                    {
                                      for (m = 0; m != v281; ++m)
                                      {
                                        v250 = CFBitVectorGetBitAtIndex(v248, m) != 0;
                                        bit_vector_set_3411(v280, m, v250);
                                      }
                                    }

                                    **(v36 + 616) = 1;
                                    CFRelease(v248);
                                    goto LABEL_360;
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }

                    LODWORD(v311) = -1;
                    goto LABEL_369;
                  }

                  v259 = __si_assert_copy_extra_3233(0, -1);
                  v215 = v259;
                  v260 = "";
                  if (v259)
                  {
                    v260 = v259;
                  }

                  v271 = "bits";
                  v272 = v260;
                  v217 = 2276;
LABEL_302:
                  __message_assert("%s:%u: failed assertion '%s' %s ", "JHContentIndex.c", v217, v271, v272);
                  free(v215);
                  if (__valid_fs(-1))
                  {
                    MEMORY[0xBAD] = -559038737;
                    abort();
                  }

                  MEMORY[0xC00] = -559038737;
                  abort();
                }

LABEL_374:
                v207 = 0;
                LODWORD(v311) = -1;
                LOBYTE(v208) = 1;
                goto LABEL_285;
              }

              LOBYTE(v302) = 0;
              v36[8] = 1;
              v161 = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
              *v314 = 0;
              LODWORD(v300[0]) = 0;
              v308 = 0;
              v307 = 0;
              v162 = setThreadIdAndInfo(*(v36 + 16), sIndexExceptionCallbacks, v36, 0x20000000, v161 + 1);
              LODWORD(v300[0]) = HIDWORD(v162);
              *v314 = v162;
              v308 = v163;
              v307 = v164;
              v165 = threadData[9 * v162 + 1] + 320 * HIDWORD(v162);
              *(v165 + 216) = 0;
              v166 = *(v165 + 312);
              v167 = *(v165 + 224);
              if (v167)
              {
                v167(*(v165 + 288));
              }

              v306 = *v314;
              v305 = v300[0];
              v304 = v308;
              v303 = v307;
              v109 = v289;
              if (_setjmp(v165))
              {
                if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                {
                  LOWORD(buf[0].st_dev) = 0;
                  _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", buf, 2u);
                }

                *(v165 + 312) = v166;
                if ((~*(v165 + 212) & 0xA0000000) == 0)
                {
                  v168 = *(v165 + 288);
                  if (v168)
                  {
                    _CIMakeInvalid(v168);
                  }
                }

                CIOnThreadCleanUpReset(v303);
                dropThreadId(v306, 1, v161 + 1);
                CICleanUpReset(v306, v304);
                goto LABEL_232;
              }

              v169 = **(v36 + 13);
              v170 = **(v36 + 14);
              v171 = *storageResolvePtr((v293 + 256), 0, 8, 1);
              v172 = *(v36 + 616);
              if (v172)
              {
                v173 = *storageResolvePtr(v172 + 8, 0, 8, 1);
              }

              else
              {
                v173 = 0;
              }

              v277 = v173;
              v274 = v160;
              v276 = *__error();
              v174 = _SILogForLogForCategory(10);
              v175 = v174;
              if (v169 <= v160 && v170 <= v160 && v171 <= v160 && v277 <= v160)
              {
                v176 = 2 * (dword_1EBF46AF4 < 4);
                if (os_log_type_enabled(v174, v176))
                {
                  buf[0].st_dev = 134219008;
                  *&buf[0].st_mode = v274;
                  WORD2(buf[0].st_ino) = 2048;
                  *(&buf[0].st_ino + 6) = v169;
                  HIWORD(buf[0].st_gid) = 2048;
                  *&buf[0].st_rdev = v170;
                  LOWORD(buf[0].st_atimespec.tv_sec) = 2048;
                  *(&buf[0].st_atimespec.tv_sec + 2) = v171;
                  WORD1(buf[0].st_atimespec.tv_nsec) = 2048;
                  *(&buf[0].st_atimespec.tv_nsec + 4) = v277;
                  _os_log_impl(&dword_1C278D000, v175, v176, "head:%lld fat:%lld compact:%lld flat:%lld dir:%lld", buf, 0x34u);
                }

                *__error() = v276;
                LOBYTE(v302) = 1;
                v109 = v289;
                v105 = v288;
                goto LABEL_229;
              }

              if (os_log_type_enabled(v174, OS_LOG_TYPE_ERROR))
              {
                buf[0].st_dev = 136316674;
                *&buf[0].st_mode = "openIndex";
                WORD2(buf[0].st_ino) = 1024;
                *(&buf[0].st_ino + 6) = 2184;
                HIWORD(buf[0].st_uid) = 2048;
                *&buf[0].st_gid = v169;
                *(&buf[0].st_rdev + 2) = 2048;
                *(&buf[0].st_rdev + 6) = v170;
                HIWORD(buf[0].st_atimespec.tv_sec) = 2048;
                buf[0].st_atimespec.tv_nsec = v171;
                LOWORD(buf[0].st_mtimespec.tv_sec) = 2048;
                *(&buf[0].st_mtimespec.tv_sec + 2) = v277;
                WORD1(buf[0].st_mtimespec.tv_nsec) = 2048;
                *(&buf[0].st_mtimespec.tv_nsec + 4) = v160;
                _os_log_error_impl(&dword_1C278D000, v175, OS_LOG_TYPE_ERROR, "%s:%d: unexpected sync count %lld %lld %lld %lld, expected %lld", buf, 0x44u);
              }

              *__error() = v276;
              v178 = v169 == v170 && v170 == v171;
              if (v290)
              {
                v109 = v289;
                v105 = v288;
                if (!v178 || v169 != v160 + 1 || v277 > v160 + 1)
                {
                  goto LABEL_229;
                }
              }

              else
              {
                if (v171 != v277)
                {
                  v178 = 0;
                }

                v109 = v289;
                v105 = v288;
                if (!v178 || v277 != v160 + 1)
                {
                  goto LABEL_229;
                }
              }

              LOBYTE(v302) = 1;
LABEL_229:
              v179 = threadData[9 * v306 + 1] + 320 * v305;
              *(v179 + 312) = v166;
              v180 = *(v179 + 232);
              if (v180)
              {
                v180(*(v179 + 288));
              }

              dropThreadId(v306, 0, v161 + 1);
LABEL_232:
              v36[8] = 0;
              if (v302)
              {
                goto LABEL_233;
              }

              goto LABEL_242;
            }

            memset(buf, 0, 144);
            if (fd_stat(*(v36 + 1179), buf) == -1 || (st_size = buf[0].st_size, buf[0].st_size < 0x100000001uLL))
            {
LABEL_151:
              v109 = v289;
              goto LABEL_152;
            }

            LOBYTE(v299) = 0;
            v36[8] = 1;
            v120 = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
            LODWORD(v300[0]) = 0;
            v308 = 0;
            v307 = 0;
            v306 = 0;
            v121 = setThreadIdAndInfo(*(v36 + 16), sIndexExceptionCallbacks, v36, 0x20000000, v120 + 1);
            v308 = HIDWORD(v121);
            LODWORD(v300[0]) = v121;
            v307 = v122;
            v306 = v123;
            v124 = threadData[9 * v121 + 1] + 320 * HIDWORD(v121);
            *(v124 + 216) = 0;
            v125 = *(v124 + 312);
            v126 = *(v124 + 224);
            v127 = v124;
            if (v126)
            {
              v126(*(v124 + 288));
            }

            v305 = v300[0];
            v304 = v308;
            v303 = v307;
            v302 = v306;
            if (_setjmp(v127))
            {
              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                *v314 = 0;
                _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v314, 2u);
              }

              *(v127 + 312) = v125;
              if ((~*(v127 + 212) & 0xA0000000) == 0)
              {
                v128 = *(v127 + 288);
                if (v128)
                {
                  _CIMakeInvalid(v128);
                }
              }

              CIOnThreadCleanUpReset(v302);
              dropThreadId(v305, 1, v120 + 1);
              CICleanUpReset(v305, v303);
              v129 = 0;
            }

            else
            {
              CompactTermOffset = bt_lastCompactTermOffset((v293 + 96));
              v273 = *__error();
              v130 = _SILogForLogForCategory(10);
              v131 = 2 * (dword_1EBF46AF4 < 4);
              if (os_log_type_enabled(v130, v131))
              {
                *v314 = 134217984;
                *&v314[4] = CompactTermOffset;
                _os_log_impl(&dword_1C278D000, v130, v131, "last term offset: %llu", v314, 0xCu);
              }

              *__error() = v273;
              LOBYTE(v299) = 1;
              v132 = threadData[9 * v305 + 1] + 320 * v304;
              *(v132 + 312) = v125;
              v133 = *(v132 + 232);
              if (v133)
              {
                v133(*(v132 + 288));
              }

              dropThreadId(v305, 0, v120 + 1);
              v129 = CompactTermOffset;
            }

            v44 = v297;
            v36[8] = 0;
            if (v299 == 1)
            {
              v134 = *(v36 + 616);
              *(v134 + 4440) = v129;
              *(v134 + 4448) = st_size;
              v105 = v288;
              v110 = v71;
              goto LABEL_151;
            }

LABEL_242:
            v70 = -1;
            goto LABEL_243;
          }

          v82 = *(v36 + 15);
          if (*(v36 + 17) > v82)
          {
            *(v36 + 17) = v82 + 1;
          }

          v83 = *(v36 + 18);
          if (v36[45] == 1)
          {
            v84 = (v83 + 3) >> 2;
          }

          else
          {
            v84 = (v83 + 4) / 5uLL;
          }

          v85 = (8 * *MEMORY[0x1E69E9AC8] - 1 + v84) / (8 * *MEMORY[0x1E69E9AC8]);
          v86 = 2950786367;
        }

        *(v36 + 1805) = malloc_type_calloc(1uLL, v85, v86);
        v88 = 1;
        goto LABEL_88;
      }
    }

    v36[46] = 1;
    goto LABEL_71;
  }

LABEL_244:
  if (!*v44)
  {
    return v36;
  }

  freeIndex(v36);
  return 0;
}

void __openIndex_block_invoke(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, int a9)
{
  v9 = *(a1 + 32);
  *(v9 + 4920) += a9;
  if (a8 == 4 && *(v9 + 45) == 1)
  {
    writeVectorIndexDrop(*(v9 + 15716), a9, *(v9 + 15203), *(a1 + 40), a3);
  }
}

uint64_t store_stream_read_vint32_3407(unsigned int *a1)
{
  v1 = a1;
  v2 = *(a1 + 5);
  if ((*(a1 + 4) - v2) < 6)
  {
    v16 = 0;
    LODWORD(result) = 0;
    __dst = 0;
    while (1)
    {
      v17 = result;
      v18 = v1;
      if (store_stream_read_bytes_3410(v1, &__dst, 1uLL) != 1)
      {
        break;
      }

      result = ((__dst & 0x7F) << v16) | v17;
      v16 += 7;
      v1 = v18;
      if ((__dst & 0x80) == 0)
      {
        return result;
      }
    }

    return 0;
  }

  else
  {
    v3 = *(a1 + 6);
    v4 = v2 + 1;
    result = *(v3 + v2);
    if (*(v3 + v2) < 0)
    {
      v6 = v2 + 2;
      v7 = *(v3 + v4);
      v8 = *(v3 + v4);
      if (v7 < 0)
      {
        v9 = v2 + 3;
        v10 = *(v3 + v6);
        v11 = v10;
        if (v10 < 0)
        {
          v12 = v2 + 4;
          v13 = *(v3 + v9);
          v14 = *(v3 + v9);
          if (v13 < 0)
          {
            v15 = *(v3 + v12);
            *(v1 + 5) = v2 + 5;
            if (v15 < 0)
            {
              return ((v14 & 0x7F) << 21) | (v15 << 28) | ((v11 & 0x7F) << 14) | ((v8 & 0x7F) << 7) | (result & 0x7F);
            }

            else
            {
              result = 0;
              v1[4] = 22;
            }
          }

          else
          {
            result = ((v11 & 0x7F) << 14) | (v14 << 21) | ((v8 & 0x7F) << 7) | (result & 0x7F);
            *(v1 + 5) = v12;
          }
        }

        else
        {
          result = ((v8 & 0x7F) << 7) | (v10 << 14) | (result & 0x7F);
          *(v1 + 5) = v9;
        }
      }

      else
      {
        result = result & 0x7F | (v8 << 7);
        *(v1 + 5) = v6;
      }
    }

    else
    {
      *(v1 + 5) = v4;
    }
  }

  return result;
}

size_t store_stream_read_bytes_3410(unsigned int *a1, char *__dst, size_t __n)
{
  v4 = __dst;
  v6 = *(a1 + 4);
  v7 = *(a1 + 5);
  if (v7 + __n > v6)
  {
    v8 = v6 - v7;
    if (v6 != v7)
    {
      memcpy(__dst, (*(a1 + 6) + v7), v6 - v7);
      v6 = *(a1 + 4);
      *(a1 + 5) += v8;
    }

    v11 = prot_pread(*a1, *(a1 + 6), v6, *(a1 + 3));
    if (v11 == -1)
    {
      v8 = 0;
    }

    else
    {
      *(a1 + 4) = v11;
      *(a1 + 5) = 0;
      *(a1 + 3) += v11;
      if (!v11)
      {
        v9 = 0;
        return v8 + v9;
      }

      v4 += v8;
      __n -= v8;
      if (__n <= v11)
      {
        v7 = 0;
        goto LABEL_3;
      }

      __na = v11;
      while (1)
      {
        memcpy(v4, *(a1 + 6), __na);
        v12 = *(a1 + 6);
        *(a1 + 5) += __na;
        v13 = prot_pread(*a1, v12, *(a1 + 4), *(a1 + 3));
        if (v13 == -1)
        {
          break;
        }

        *(a1 + 4) = v13;
        *(a1 + 5) = 0;
        *(a1 + 3) += v13;
        if (!v13)
        {
          v9 = v8;
          v8 = __na;
          return v8 + v9;
        }

        v7 = 0;
        v4 += __na;
        __n -= __na;
        v8 += __na;
        __na = v13;
        if (__n <= v13)
        {
          goto LABEL_3;
        }
      }
    }

    a1[4] = *__error();
    v9 = v8;
    v8 = 0;
    return v8 + v9;
  }

  v8 = 0;
LABEL_3:
  memcpy(v4, (*(a1 + 6) + v7), __n);
  *(a1 + 5) += __n;
  v9 = v8;
  v8 = __n;
  return v8 + v9;
}

void bit_vector_set_3411(CFIndex *a1, CFIndex a2, CFBit a3)
{
  if (a2 < 0)
  {
    v7 = __si_assert_copy_extra_3233(0, -1);
    v8 = v7;
    v9 = "";
    if (v7)
    {
      v9 = v7;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "bit_vector.h", 142, "bitIndex >= 0", v9);
    free(v8);
    if (__valid_fs(-1))
    {
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    MEMORY[0xC00] = -559038737;
    abort();
  }

  bit_vector_internal_touch_for_set(a1, a2);
  v6 = a1[2];

  CFBitVectorSetBitAtIndex(v6, a2, a3);
}

uint64_t indexShadowFiles(uint64_t a1, char a2, _DWORD *a3, _DWORD *a4)
{
  v73 = *MEMORY[0x1E69E9840];
  bzero(__str, 0x400uLL);
  if (*(a1 + 15203) == 1)
  {
    if (indexShadowFiles__COUNT_)
    {
      v8 = 0;
LABEL_29:
      v28 = 22;
      goto LABEL_30;
    }

    indexShadowFiles__COUNT_ = 1;
    v29 = *__error();
    v30 = _SILogForLogForCategory(0);
    if (!os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
LABEL_28:
      v8 = 0;
      *__error() = v29;
      goto LABEL_29;
    }

    *buf = 136315650;
    *&buf[4] = "indexShadowFiles";
    v68 = 1024;
    v69 = 3223;
    v70 = 2080;
    *v71 = a1 + 15208;
    v31 = "%s:%d: trying to modify read only index %s";
LABEL_50:
    _os_log_error_impl(&dword_1C278D000, v30, OS_LOG_TYPE_ERROR, v31, buf, 0x1Cu);
    goto LABEL_28;
  }

  if (*(a1 + 8) != 1 || *(a1 + 15196) == -1)
  {
    v29 = *__error();
    v30 = _SILogForLogForCategory(0);
    if (!os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_28;
    }

    *buf = 136315650;
    *&buf[4] = "indexShadowFiles";
    v68 = 1024;
    v69 = 3232;
    v70 = 2080;
    *v71 = a1 + 15208;
    v31 = "%s:%d: can't shadow %s";
    goto LABEL_50;
  }

  v9 = (a1 + 36);
  v10 = atomic_load((a1 + 36));
  if ((v10 & 1) == 0 || (v11 = atomic_load(v9), (v11 & 2) != 0) || (v12 = *(a1 + 14392)) != 0 && (v13 = atomic_load((*(v12 + 24) + 16))) != 0)
  {
    v14 = 0;
  }

  else
  {
    atomic_fetch_or((a1 + 36), 2u);
    v42 = *__error();
    v43 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      v44 = *(a1 + 56);
      *buf = 136315394;
      *&buf[4] = a1 + 15208;
      v68 = 1024;
      v69 = v44;
      _os_log_impl(&dword_1C278D000, v43, OS_LOG_TYPE_DEFAULT, "mark index %s (%u) read-only during shadow", buf, 0x12u);
    }

    *__error() = v42;
    v45 = atomic_load((a1 + 36));
    a3[2] = v45;
    v46 = *(a1 + 14392);
    if (v46)
    {
      if (atomic_load((*(v46 + 24) + 16)))
      {
        v64 = __si_assert_copy_extra_3233(0, -1);
        v65 = v64;
        v66 = "";
        if (v64)
        {
          v66 = v64;
        }

        __message_assert("%s:%u: failed assertion '%s' %s ", "JHContentIndex.c", 3258, "0 == TermUpdateSetTermCount(cindex->_deltaSet)", v66);
        free(v65);
        if (__valid_fs(-1))
        {
          MEMORY[0xBAD] = -559038737;
          abort();
        }

        MEMORY[0xC00] = -559038737;
        abort();
      }

      _db_write_lock(a1 + 14720);
      TermUpdateSetRelease(*(a1 + 14392));
      atomic_fetch_add(gTermUpdateSetCount, 0xFFFFFFFF);
      *(a1 + 14392) = 0;
      db_write_unlock(a1 + 14720);
    }

    v14 = 1;
  }

  v15 = atomic_load(v9);
  v16 = (a1 + 15208);
  snprintf(__str, 0x400uLL, "%s%s", (a1 + 15208), "shadowIndexHead");
  v17 = fd_create_protected(*(a1 + 64), __str, 536872450, 3u);
  if (!v17)
  {
    v28 = *__error();
    v35 = *__error();
    v36 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      *&buf[4] = "indexShadowFiles";
      v68 = 1024;
      v69 = 3277;
      v70 = 1024;
      *v71 = v28;
      *&v71[4] = 2080;
      *&v71[6] = __str;
      _os_log_error_impl(&dword_1C278D000, v36, OS_LOG_TYPE_ERROR, "%s:%d: open err: %d, %s", buf, 0x22u);
    }

    v8 = 0;
    *__error() = v35;
    goto LABEL_30;
  }

  v8 = v17;
  *buf = 0;
  v18 = _fd_acquire_fd(v17, buf);
  if (v18 != -1)
  {
    *(v8 + 56) |= 1u;
    v19 = v18;
    fcntl(v18, 48, 1);
    fcntl(v19, 76, *(v8 + 56) & 1);
    _fd_release_fd(v8, v19, 0, *buf);
  }

  *a3 = 1;
  v20 = fd_pwrite(v8, a3, 0x1000uLL, 0);
  *a3 = *(a1 + 4);
  if (v20 == -1)
  {
    v28 = *__error();
    v37 = *__error();
    v38 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "indexShadowFiles";
      v68 = 1024;
      v69 = 3288;
      v70 = 1024;
      *v71 = v28;
      v39 = "%s:%d: write err: %d";
LABEL_42:
      v40 = v38;
      v41 = 24;
LABEL_54:
      _os_log_error_impl(&dword_1C278D000, v40, OS_LOG_TYPE_ERROR, v39, buf, v41);
      goto LABEL_80;
    }

    goto LABEL_80;
  }

  if (_gSystemStatusBool == 1)
  {
    pthread_mutex_lock(&_gSystemStatusLock);
    if (_gSystemStatusBool == 1)
    {
      do
      {
        pthread_cond_wait(&_gSystemStatusCond, &_gSystemStatusLock);
      }

      while ((_gSystemStatusBool & 1) != 0);
    }

    pthread_mutex_unlock(&_gSystemStatusLock);
    v16 = (a1 + 15208);
  }

  *buf = 0;
  v21 = _fd_acquire_fd(v8, buf);
  if (v21 != -1)
  {
    v22 = v21;
    prot_fsync(v21, 0);
    _fd_release_fd(v8, v22, 0, *buf);
  }

  if ((v15 & 2) != 0)
  {
    goto LABEL_64;
  }

  v23 = v14;
  Current = CFAbsoluteTimeGetCurrent();
  snprintf(__str, 0x400uLL, "%s%s", v16, "shadowIndexTermIds");
  v25 = fd_create_protected(*(a1 + 64), __str, 536871426, 3u);
  if (!v25)
  {
    v28 = *__error();
    v37 = *__error();
    v48 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      *&buf[4] = "indexShadowFiles";
      v68 = 1024;
      v69 = 3303;
      v70 = 1024;
      *v71 = v28;
      *&v71[4] = 2080;
      *&v71[6] = __str;
      v39 = "%s:%d: open err: %d, %s";
LABEL_53:
      v40 = v48;
      v41 = 34;
      goto LABEL_54;
    }

LABEL_80:
    *__error() = v37;
    goto LABEL_30;
  }

  v26 = v25;
  fd_no_cache(v25);
  v27 = termIdStoreShadow(a1 + 4984, v26, a2 & 1, a4);
  if (v27)
  {
LABEL_24:
    v28 = v27;
    fd_release(v26);
LABEL_30:
    v32 = *__error();
    v33 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      *&buf[4] = "indexShadowFiles";
      v68 = 1024;
      v69 = 3400;
      v70 = 2080;
      *v71 = a1 + 15208;
      *&v71[8] = 1024;
      *&v71[10] = 3400;
      _os_log_error_impl(&dword_1C278D000, v33, OS_LOG_TYPE_ERROR, "%s:%d: %s marking invalid at %d", buf, 0x22u);
    }

    *__error() = v32;
    if (*(a1 + 8) == 1)
    {
      *(a1 + 8) = 0;
      *(a1 + 12) = v28;
    }

    fd_release(v8);
    if (v28)
    {
      return v28;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  fd_sync(v26, 0);
  fd_release(v26);
  v49 = *__error();
  v50 = _SILogForLogForCategory(10);
  v51 = 2 * (dword_1EBF46AF4 < 4);
  if (os_log_type_enabled(v50, v51))
  {
    v52 = CFAbsoluteTimeGetCurrent() - Current;
    *buf = 134217984;
    *&buf[4] = v52;
    _os_log_impl(&dword_1C278D000, v50, v51, "shadowIndexTermIds took %f seconds", buf, 0xCu);
  }

  *__error() = v49;
  v53 = CFAbsoluteTimeGetCurrent();
  snprintf(__str, 0x400uLL, "%s%s", v16, "shadowIndexPositionTable");
  v54 = fd_create_protected(*(a1 + 64), __str, 536871426, 3u);
  if (!v54)
  {
    v28 = *__error();
    v37 = *__error();
    v48 = _SILogForLogForCategory(0);
    if (!os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_80;
    }

    *buf = 136315906;
    *&buf[4] = "indexShadowFiles";
    v68 = 1024;
    v69 = 3324;
    v70 = 1024;
    *v71 = v28;
    *&v71[4] = 2080;
    *&v71[6] = __str;
    v39 = "%s:%d: open err: %d, %s";
    goto LABEL_53;
  }

  v26 = v54;
  fd_no_cache(v54);
  v27 = termIdStoreShadow(a1 + 9704, v26, a2 & 1, a4);
  if (v27)
  {
    goto LABEL_24;
  }

  fd_sync(v26, 0);
  fd_release(v26);
  v55 = *__error();
  v56 = _SILogForLogForCategory(10);
  v57 = 2 * (dword_1EBF46AF4 < 4);
  if (os_log_type_enabled(v56, v57))
  {
    v58 = CFAbsoluteTimeGetCurrent() - v53;
    *buf = 134217984;
    *&buf[4] = v58;
    _os_log_impl(&dword_1C278D000, v56, v57, "shadowIndexPositionTable took %f seconds", buf, 0xCu);
  }

  *__error() = v55;
  v59 = bt_shadowTrie(a1 + 96, v16, a2 & 1, a4);
  if (v59)
  {
LABEL_67:
    v28 = v59;
    goto LABEL_30;
  }

  v60 = *(a1 + 4912);
  v14 = v23;
  if (v60)
  {
    shadowVectorIndex(v60, a2 & 1, a4);
  }

LABEL_64:
  v61 = *(a1 + 4928);
  if (v61)
  {
    shadowForwardStore(v61, a2 & 1, a4);
  }

  v59 = _indexShadowGroups(a1, 0);
  if (v59)
  {
    goto LABEL_67;
  }

  if (fd_pwrite(v8, a3, 0x1000uLL, 0) == -1)
  {
    v28 = *__error();
    v37 = *__error();
    v38 = _SILogForLogForCategory(0);
    if (!os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_80;
    }

    *buf = 136315650;
    *&buf[4] = "indexShadowFiles";
    v68 = 1024;
    v69 = 3361;
    v70 = 1024;
    *v71 = v28;
    v39 = "%s:%d: write err: %d";
    goto LABEL_42;
  }

  fd_sync(v8, 0);
  if (v14)
  {
    fd_sync(v8, 1);
    if (_os_feature_enabled_impl())
    {
      v62 = *(a1 + 4912);
      if (v62)
      {
        IVFVectorIndex_s::makeReadOnly((v62 + 8));
      }
    }

    storageTruncateAndMakeReadOnly(a1 + 256);
    fd_truncate_and_make_readonly(*(a1 + 208), *(a1 + 128));
    fd_truncate_and_make_readonly(*(a1 + 4672), 1028 * (*(a1 + 240) + 1));
    fd_truncate(*(a1 + 14448), 8 * *(a1 + 68));
    fd_truncate(*(a1 + 14456), 4 * *(a1 + 68));
    fd_truncate(*(a1 + 14464), 8 * *(a1 + 68));
    v63 = atomic_load((a1 + 36));
    if ((v63 & 4) == 0)
    {
      storageTruncateAndMakeReadOnly(a1 + 4984);
      storageTruncateAndMakeReadOnly(a1 + 9704);
    }

    index_DeleteShadow(*(a1 + 64), v16, 1);
  }

  fd_release(v8);
  return 0;
}

uint64_t *indexStoreToBuffer(uint64_t a1, void **a2)
{
  v4 = *a2;
  bzero(*a2, 0x1000uLL);
  v5 = *a2;
  *v5++ = *(a1 + 4);
  *a2 = v5;
  v6 = atomic_load((a1 + 32));
  *v5++ = v6;
  *a2 = v5;
  v7 = atomic_load((a1 + 36));
  v8 = v5;
  *v5 = v7;
  v5[1] = *(a1 + 48);
  v5[2] = 0;
  v9 = v5 + 3;
  *a2 = v9;
  v10 = *(a1 + 60);
  if (v10 >> 28)
  {
    *(v8 + 12) = v10 | 0x80;
    *(v8 + 13) = (v10 >> 7) | 0x80;
    *(v8 + 14) = (v10 >> 14) | 0x80;
    *(v8 + 15) = (v10 >> 21) | 0x80;
    *(v8 + 16) = v10 >> 28;
    v11 = 5;
  }

  else if (v10 >= 0x200000)
  {
    *(v8 + 12) = v10 | 0x80;
    *(v8 + 13) = (v10 >> 7) | 0x80;
    *(v8 + 14) = (v10 >> 14) | 0x80;
    *(v8 + 15) = v10 >> 21;
    v11 = 4;
  }

  else if (v10 >= 0x4000)
  {
    *(v8 + 12) = v10 | 0x80;
    *(v8 + 13) = (v10 >> 7) | 0x80;
    *(v8 + 14) = v10 >> 14;
    v11 = 3;
  }

  else if (v10 >= 0x80)
  {
    *(v8 + 12) = v10 | 0x80;
    *(v8 + 13) = v10 >> 7;
    v11 = 2;
  }

  else
  {
    *v9 = v10;
    v11 = 1;
  }

  v12 = *a2 + v11;
  *a2 = v12;
  v13 = *(a1 + 68);
  if (v13 >> 28)
  {
    *v12 = v13 | 0x80;
    v12[1] = (v13 >> 7) | 0x80;
    v12[2] = (v13 >> 14) | 0x80;
    v12[3] = (v13 >> 21) | 0x80;
    v12[4] = v13 >> 28;
    v14 = 5;
  }

  else if (v13 >= 0x200000)
  {
    *v12 = v13 | 0x80;
    v12[1] = (v13 >> 7) | 0x80;
    v12[2] = (v13 >> 14) | 0x80;
    v12[3] = v13 >> 21;
    v14 = 4;
  }

  else if (v13 >= 0x4000)
  {
    *v12 = v13 | 0x80;
    v12[1] = (v13 >> 7) | 0x80;
    v12[2] = v13 >> 14;
    v14 = 3;
  }

  else if (v13 >= 0x80)
  {
    *v12 = v13 | 0x80;
    v12[1] = v13 >> 7;
    v14 = 2;
  }

  else
  {
    *v12 = v13;
    v14 = 1;
  }

  v15 = *a2 + v14;
  *a2 = v15;
  v16 = *(a1 + 72);
  if (v16 >> 28)
  {
    *v15 = v16 | 0x80;
    v15[1] = (v16 >> 7) | 0x80;
    v15[2] = (v16 >> 14) | 0x80;
    v15[3] = (v16 >> 21) | 0x80;
    v15[4] = v16 >> 28;
    v17 = 5;
  }

  else if (v16 >= 0x200000)
  {
    *v15 = v16 | 0x80;
    v15[1] = (v16 >> 7) | 0x80;
    v15[2] = (v16 >> 14) | 0x80;
    v15[3] = v16 >> 21;
    v17 = 4;
  }

  else if (v16 >= 0x4000)
  {
    *v15 = v16 | 0x80;
    v15[1] = (v16 >> 7) | 0x80;
    v15[2] = v16 >> 14;
    v17 = 3;
  }

  else if (v16 >= 0x80)
  {
    *v15 = v16 | 0x80;
    v15[1] = v16 >> 7;
    v17 = 2;
  }

  else
  {
    *v15 = v16;
    v17 = 1;
  }

  v18 = *a2 + v17;
  *a2 = v18;
  v19 = *(a1 + 14936);
  if (v19 >> 28)
  {
    *v18 = v19 | 0x80;
    v18[1] = (v19 >> 7) | 0x80;
    v18[2] = (v19 >> 14) | 0x80;
    v18[3] = (v19 >> 21) | 0x80;
    v18[4] = v19 >> 28;
    v20 = 5;
  }

  else if (v19 >= 0x200000)
  {
    *v18 = v19 | 0x80;
    v18[1] = (v19 >> 7) | 0x80;
    v18[2] = (v19 >> 14) | 0x80;
    v18[3] = v19 >> 21;
    v20 = 4;
  }

  else if (v19 >= 0x4000)
  {
    *v18 = v19 | 0x80;
    v18[1] = (v19 >> 7) | 0x80;
    v18[2] = v19 >> 14;
    v20 = 3;
  }

  else if (v19 >= 0x80)
  {
    *v18 = v19 | 0x80;
    v18[1] = v19 >> 7;
    v20 = 2;
  }

  else
  {
    *v18 = v19;
    v20 = 1;
  }

  v21 = *a2 + v20;
  *a2 = v21;
  v22 = *(a1 + 14944);
  if (v22 >> 28)
  {
    *v21 = v22 | 0x80;
    v21[1] = (v22 >> 7) | 0x80;
    v21[2] = (v22 >> 14) | 0x80;
    v21[3] = (v22 >> 21) | 0x80;
    v21[4] = v22 >> 28;
    v23 = 5;
  }

  else if (v22 >= 0x200000)
  {
    *v21 = v22 | 0x80;
    v21[1] = (v22 >> 7) | 0x80;
    v21[2] = (v22 >> 14) | 0x80;
    v21[3] = v22 >> 21;
    v23 = 4;
  }

  else if (v22 >= 0x4000)
  {
    *v21 = v22 | 0x80;
    v21[1] = (v22 >> 7) | 0x80;
    v21[2] = v22 >> 14;
    v23 = 3;
  }

  else if (v22 >= 0x80)
  {
    *v21 = v22 | 0x80;
    v21[1] = v22 >> 7;
    v23 = 2;
  }

  else
  {
    *v21 = v22;
    v23 = 1;
  }

  v24 = *a2 + v23;
  *a2 = v24;
  if (*(a1 + 4) >= 0x57u)
  {
    v25 = *(a1 + 14952);
    if (v25 >> 28)
    {
      *v24 = v25 | 0x80;
      v24[1] = (v25 >> 7) | 0x80;
      v24[2] = (v25 >> 14) | 0x80;
      v24[3] = (v25 >> 21) | 0x80;
      v24[4] = v25 >> 28;
      v26 = 5;
    }

    else if (v25 >= 0x200000)
    {
      *v24 = v25 | 0x80;
      v24[1] = (v25 >> 7) | 0x80;
      v24[2] = (v25 >> 14) | 0x80;
      v24[3] = v25 >> 21;
      v26 = 4;
    }

    else if (v25 >= 0x4000)
    {
      *v24 = v25 | 0x80;
      v24[1] = (v25 >> 7) | 0x80;
      v24[2] = v25 >> 14;
      v26 = 3;
    }

    else if (v25 >= 0x80)
    {
      *v24 = v25 | 0x80;
      v24[1] = v25 >> 7;
      v26 = 2;
    }

    else
    {
      *v24 = v25;
      v26 = 1;
    }

    v27 = *a2 + v26;
    *a2 = v27;
    v28 = *(a1 + 15008);
    if (v28 >> 28)
    {
      *v27 = v28 | 0x80;
      v27[1] = (v28 >> 7) | 0x80;
      v27[2] = (v28 >> 14) | 0x80;
      v27[3] = (v28 >> 21) | 0x80;
      v27[4] = v28 >> 28;
      v29 = 5;
    }

    else if (v28 >= 0x200000)
    {
      *v27 = v28 | 0x80;
      v27[1] = (v28 >> 7) | 0x80;
      v27[2] = (v28 >> 14) | 0x80;
      v27[3] = v28 >> 21;
      v29 = 4;
    }

    else if (v28 >= 0x4000)
    {
      *v27 = v28 | 0x80;
      v27[1] = (v28 >> 7) | 0x80;
      v27[2] = v28 >> 14;
      v29 = 3;
    }

    else if (v28 >= 0x80)
    {
      *v27 = v28 | 0x80;
      v27[1] = v28 >> 7;
      v29 = 2;
    }

    else
    {
      *v27 = v28;
      v29 = 1;
    }

    *a2 = *a2 + v29;
  }

  storeVInt64(a2, *(a1 + 80));
  v30 = atomic_load((a1 + 16));
  v31 = *a2;
  if (v30 >> 28)
  {
    *v31 = v30 | 0x80;
    v31[1] = (v30 >> 7) | 0x80;
    v31[2] = (v30 >> 14) | 0x80;
    v31[3] = (v30 >> 21) | 0x80;
    v31[4] = v30 >> 28;
    v32 = 5;
  }

  else if (v30 >= 0x200000)
  {
    *v31 = v30 | 0x80;
    v31[1] = (v30 >> 7) | 0x80;
    v31[2] = (v30 >> 14) | 0x80;
    v31[3] = v30 >> 21;
    v32 = 4;
  }

  else if (v30 >= 0x4000)
  {
    *v31 = v30 | 0x80;
    v31[1] = (v30 >> 7) | 0x80;
    v31[2] = v30 >> 14;
    v32 = 3;
  }

  else if (v30 >= 0x80)
  {
    *v31 = v30 | 0x80;
    v31[1] = v30 >> 7;
    v32 = 2;
  }

  else
  {
    *v31 = v30;
    v32 = 1;
  }

  v33 = *a2 + v32;
  *a2 = v33;
  v34 = *(a1 + 52);
  if (v34 >> 28)
  {
    *v33 = v34 | 0x80;
    v33[1] = (v34 >> 7) | 0x80;
    v33[2] = (v34 >> 14) | 0x80;
    v33[3] = (v34 >> 21) | 0x80;
    v33[4] = v34 >> 28;
    v35 = 5;
  }

  else if (v34 >= 0x200000)
  {
    *v33 = v34 | 0x80;
    v33[1] = (v34 >> 7) | 0x80;
    v33[2] = (v34 >> 14) | 0x80;
    v33[3] = v34 >> 21;
    v35 = 4;
  }

  else if (v34 >= 0x4000)
  {
    *v33 = v34 | 0x80;
    v33[1] = (v34 >> 7) | 0x80;
    v33[2] = v34 >> 14;
    v35 = 3;
  }

  else if (v34 >= 0x80)
  {
    *v33 = v34 | 0x80;
    v33[1] = v34 >> 7;
    v35 = 2;
  }

  else
  {
    *v33 = v34;
    v35 = 1;
  }

  v36 = *a2 + v35;
  *a2 = v36;
  v37 = *(a1 + 24);
  if (v37 >> 28)
  {
    *v36 = v37 | 0x80;
    v36[1] = (v37 >> 7) | 0x80;
    v36[2] = (v37 >> 14) | 0x80;
    v36[3] = (v37 >> 21) | 0x80;
    v36[4] = v37 >> 28;
    v38 = 5;
  }

  else if (v37 >= 0x200000)
  {
    *v36 = v37 | 0x80;
    v36[1] = (v37 >> 7) | 0x80;
    v36[2] = (v37 >> 14) | 0x80;
    v36[3] = v37 >> 21;
    v38 = 4;
  }

  else if (v37 >= 0x4000)
  {
    *v36 = v37 | 0x80;
    v36[1] = (v37 >> 7) | 0x80;
    v36[2] = v37 >> 14;
    v38 = 3;
  }

  else if (v37 >= 0x80)
  {
    *v36 = v37 | 0x80;
    v36[1] = v37 >> 7;
    v38 = 2;
  }

  else
  {
    *v36 = v37;
    v38 = 1;
  }

  v39 = *a2 + v38;
  *a2 = v39;
  v40 = *(a1 + 96);
  if (v40 >> 28)
  {
    *v39 = v40 | 0x80;
    v39[1] = (v40 >> 7) | 0x80;
    v39[2] = (v40 >> 14) | 0x80;
    v39[3] = (v40 >> 21) | 0x80;
    v39[4] = v40 >> 28;
    v41 = 5;
  }

  else if (v40 >= 0x200000)
  {
    *v39 = v40 | 0x80;
    v39[1] = (v40 >> 7) | 0x80;
    v39[2] = (v40 >> 14) | 0x80;
    v39[3] = v40 >> 21;
    v41 = 4;
  }

  else if (v40 >= 0x4000)
  {
    *v39 = v40 | 0x80;
    v39[1] = (v40 >> 7) | 0x80;
    v39[2] = v40 >> 14;
    v41 = 3;
  }

  else if (v40 >= 0x80)
  {
    *v39 = v40 | 0x80;
    v39[1] = v40 >> 7;
    v41 = 2;
  }

  else
  {
    *v39 = v40;
    v41 = 1;
  }

  v42 = *a2 + v41;
  *a2 = v42;
  v43 = *(a1 + 240);
  if (v43 >> 28)
  {
    *v42 = v43 | 0x80;
    v42[1] = (v43 >> 7) | 0x80;
    v42[2] = (v43 >> 14) | 0x80;
    v42[3] = (v43 >> 21) | 0x80;
    v42[4] = v43 >> 28;
    v44 = 5;
  }

  else if (v43 >= 0x200000)
  {
    *v42 = v43 | 0x80;
    v42[1] = (v43 >> 7) | 0x80;
    v42[2] = (v43 >> 14) | 0x80;
    v42[3] = v43 >> 21;
    v44 = 4;
  }

  else if (v43 >= 0x4000)
  {
    *v42 = v43 | 0x80;
    v42[1] = (v43 >> 7) | 0x80;
    v42[2] = v43 >> 14;
    v44 = 3;
  }

  else if (v43 >= 0x80)
  {
    *v42 = v43 | 0x80;
    v42[1] = v43 >> 7;
    v44 = 2;
  }

  else
  {
    *v42 = v43;
    v44 = 1;
  }

  v45 = *a2 + v44;
  *a2 = v45;
  v46 = *(a1 + 244);
  if (v46 >> 28)
  {
    *v45 = v46 | 0x80;
    v45[1] = (v46 >> 7) | 0x80;
    v45[2] = (v46 >> 14) | 0x80;
    v45[3] = (v46 >> 21) | 0x80;
    v45[4] = v46 >> 28;
    v47 = 5;
  }

  else if (v46 >= 0x200000)
  {
    *v45 = v46 | 0x80;
    v45[1] = (v46 >> 7) | 0x80;
    v45[2] = (v46 >> 14) | 0x80;
    v45[3] = v46 >> 21;
    v47 = 4;
  }

  else if (v46 >= 0x4000)
  {
    *v45 = v46 | 0x80;
    v45[1] = (v46 >> 7) | 0x80;
    v45[2] = v46 >> 14;
    v47 = 3;
  }

  else if (v46 >= 0x80)
  {
    *v45 = v46 | 0x80;
    v45[1] = v46 >> 7;
    v47 = 2;
  }

  else
  {
    *v45 = v46;
    v47 = 1;
  }

  *a2 = *a2 + v47;
  storeVInt64(a2, *(a1 + 4944));
  storeVInt64(a2, *(a1 + 4952));
  storeVInt64(a2, *(a1 + 4968));
  storeVInt64(a2, *(a1 + 4976));
  v48 = *(a1 + 40);
  v49 = *a2;
  if (v48 >> 28)
  {
    *v49 = v48 | 0x80;
    v49[1] = (v48 >> 7) | 0x80;
    v49[2] = (v48 >> 14) | 0x80;
    v49[3] = (v48 >> 21) | 0x80;
    v49[4] = v48 >> 28;
    v50 = 5;
  }

  else if (v48 >= 0x200000)
  {
    *v49 = v48 | 0x80;
    v49[1] = (v48 >> 7) | 0x80;
    v49[2] = (v48 >> 14) | 0x80;
    v49[3] = v48 >> 21;
    v50 = 4;
  }

  else if (v48 >= 0x4000)
  {
    *v49 = v48 | 0x80;
    v49[1] = (v48 >> 7) | 0x80;
    v49[2] = v48 >> 14;
    v50 = 3;
  }

  else if (v48 >= 0x80)
  {
    *v49 = v48 | 0x80;
    v49[1] = v48 >> 7;
    v50 = 2;
  }

  else
  {
    *v49 = v48;
    v50 = 1;
  }

  v51 = *a2;
  *a2 = *a2 + v50;
  v51[v50] = *(a1 + 44);
  *a2 = *a2 + 1;
  termIdStoreHeaderStore(a1 + 4984, a2);
  storeVInt64(a2, *(a1 + 9664));
  storeVInt64(a2, *(a1 + 9672));
  storeVInt64(a2, *(a1 + 9688));
  storeVInt64(a2, *(a1 + 9696));
  **a2 = 0;
  v52 = *a2 + 1;
  *a2 = v52;
  *v52 = 0;
  *a2 = *a2 + 1;
  termIdStoreHeaderStore(a1 + 9704, a2);
  v53 = *(a1 + 120);
  v54 = *a2;
  if (v53 >> 28)
  {
    *v54 = v53 | 0x80;
    v54[1] = (v53 >> 7) | 0x80;
    v54[2] = (v53 >> 14) | 0x80;
    v54[3] = (v53 >> 21) | 0x80;
    v54[4] = v53 >> 28;
    v55 = 5;
  }

  else if (v53 >= 0x200000)
  {
    *v54 = v53 | 0x80;
    v54[1] = (v53 >> 7) | 0x80;
    v54[2] = (v53 >> 14) | 0x80;
    v54[3] = v53 >> 21;
    v55 = 4;
  }

  else if (v53 >= 0x4000)
  {
    *v54 = v53 | 0x80;
    v54[1] = (v53 >> 7) | 0x80;
    v54[2] = v53 >> 14;
    v55 = 3;
  }

  else if (v53 >= 0x80)
  {
    *v54 = v53 | 0x80;
    v54[1] = v53 >> 7;
    v55 = 2;
  }

  else
  {
    *v54 = v53;
    v55 = 1;
  }

  v56 = *a2 + v55;
  *a2 = v56;
  v57 = *(a1 + 128);
  if (v57 >> 28)
  {
    *v56 = v57 | 0x80;
    v56[1] = (v57 >> 7) | 0x80;
    v56[2] = (v57 >> 14) | 0x80;
    v56[3] = (v57 >> 21) | 0x80;
    v56[4] = v57 >> 28;
    v58 = 5;
  }

  else if (v57 >= 0x200000)
  {
    *v56 = v57 | 0x80;
    v56[1] = (v57 >> 7) | 0x80;
    v56[2] = (v57 >> 14) | 0x80;
    v56[3] = v57 >> 21;
    v58 = 4;
  }

  else if (v57 >= 0x4000)
  {
    *v56 = v57 | 0x80;
    v56[1] = (v57 >> 7) | 0x80;
    v56[2] = v57 >> 14;
    v58 = 3;
  }

  else if (v57 >= 0x80)
  {
    *v56 = v57 | 0x80;
    v56[1] = v57 >> 7;
    v58 = 2;
  }

  else
  {
    *v56 = v57;
    v58 = 1;
  }

  v59 = *a2 + v58;
  *a2 = v59;
  v60 = *(a1 + 136);
  if (v60 >> 28)
  {
    *v59 = v60 | 0x80;
    v59[1] = (v60 >> 7) | 0x80;
    v59[2] = (v60 >> 14) | 0x80;
    v59[3] = (v60 >> 21) | 0x80;
    v59[4] = v60 >> 28;
    v61 = 5;
  }

  else if (v60 >= 0x200000)
  {
    *v59 = v60 | 0x80;
    v59[1] = (v60 >> 7) | 0x80;
    v59[2] = (v60 >> 14) | 0x80;
    v59[3] = v60 >> 21;
    v61 = 4;
  }

  else if (v60 >= 0x4000)
  {
    *v59 = v60 | 0x80;
    v59[1] = (v60 >> 7) | 0x80;
    v59[2] = v60 >> 14;
    v61 = 3;
  }

  else if (v60 >= 0x80)
  {
    *v59 = v60 | 0x80;
    v59[1] = v60 >> 7;
    v61 = 2;
  }

  else
  {
    *v59 = v60;
    v61 = 1;
  }

  v62 = 0;
  v63 = *a2 + v61;
  *a2 = v63;
  do
  {
    v65 = *(a1 + 144 + v62);
    if (v65 >> 28)
    {
      *v63 = v65 | 0x80;
      v63[1] = (v65 >> 7) | 0x80;
      v63[2] = (v65 >> 14) | 0x80;
      v63[3] = (v65 >> 21) | 0x80;
      v63[4] = v65 >> 28;
      v64 = 5;
    }

    else if (v65 >= 0x200000)
    {
      *v63 = v65 | 0x80;
      v63[1] = (v65 >> 7) | 0x80;
      v63[2] = (v65 >> 14) | 0x80;
      v63[3] = v65 >> 21;
      v64 = 4;
    }

    else if (v65 >= 0x4000)
    {
      *v63 = v65 | 0x80;
      v63[1] = (v65 >> 7) | 0x80;
      v63[2] = v65 >> 14;
      v64 = 3;
    }

    else if (v65 >= 0x80)
    {
      *v63 = v65 | 0x80;
      v63[1] = v65 >> 7;
      v64 = 2;
    }

    else
    {
      *v63 = v65;
      v64 = 1;
    }

    v63 = *a2 + v64;
    *a2 = v63;
    v62 += 4;
  }

  while (v62 != 64);
  storageHeaderStore(a1 + 256, a2);
  strlcpy(*a2, (a1 + 15495), 0x20uLL);
  v66 = strlen((a1 + 15495));
  if ((v66 & 0xFFFFFFE0) != 0)
  {
    v80 = __si_assert_copy_extra_3233(0, -1);
    v81 = v80;
    v82 = "";
    if (v80)
    {
      v82 = v80;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "JHContentIndex.c", 5280, "len > 0 && len <= 32", v82);
LABEL_188:
    free(v81);
    if (__valid_fs(-1))
    {
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    MEMORY[0xC00] = -559038737;
    abort();
  }

  v67 = *a2 + (v66 & 0x1F) + 1;
  *a2 = v67;
  strlcpy(v67, (a1 + 15463), 0x20uLL);
  v68 = strlen((a1 + 15463));
  if ((v68 & 0xFFFFFFE0) != 0)
  {
    v83 = __si_assert_copy_extra_3233(0, -1);
    v84 = v83;
    v85 = "";
    if (v83)
    {
      v85 = v83;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "JHContentIndex.c", 5286, "len > 0 && len <= 32", v85);
LABEL_194:
    free(v84);
    if (__valid_fs(-1))
    {
      v90 = 2989;
    }

    else
    {
      v90 = 3072;
    }

    *v90 = -559038737;
    abort();
  }

  v69 = *a2 + (v68 & 0x1F) + 1;
  *a2 = v69;
  strlcpy(v69, sysVersionCStr, 0x20uLL);
  v70 = strlen(sysVersionCStr);
  if ((v70 & 0xFFFFFFE0) != 0)
  {
    v86 = __si_assert_copy_extra_3233(0, -1);
    v81 = v86;
    v87 = "";
    if (v86)
    {
      v87 = v86;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "JHContentIndex.c", 5292, "len > 0 && len <= 32", v87);
    goto LABEL_188;
  }

  v71 = *a2 + (v70 & 0x1F) + 1;
  *a2 = v71;
  strlcpy(v71, buildVersionCStr, 0x20uLL);
  v72 = strlen(buildVersionCStr);
  if ((v72 & 0xFFFFFFE0) != 0)
  {
    v88 = __si_assert_copy_extra_3233(0, -1);
    v84 = v88;
    v89 = "";
    if (v88)
    {
      v89 = v88;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "JHContentIndex.c", 5298, "len > 0 && len <= 32", v89);
    goto LABEL_194;
  }

  *a2 = *a2 + (v72 & 0x1F) + 1;
  storeVInt64(a2, *(a1 + 15560));
  v73 = (a1 + 15584);
  *(a1 + 15584) = *(a1 + 15576);
  *(a1 + 15592) = *(a1 + 14984);
  *(a1 + 15608) = *(a1 + 15032);
  *(a1 + 15616) = *(a1 + 14960);
  *(a1 + 15632) = *(a1 + 15024);
  *(a1 + 15640) = *(a1 + 15568);
  *(a1 + 15648) = *(a1 + 15016);
  v74 = *(a1 + 4);
  if (*(a1 + 45) == 1)
  {
    if (v74 <= 0x71)
    {
      v75 = 9;
      goto LABEL_177;
    }

    goto LABEL_175;
  }

  if (v74 >= 0x65)
  {
LABEL_175:
    *(a1 + 15656) = *(a1 + 56);
    v75 = 10;
    goto LABEL_177;
  }

  v75 = 9;
  do
  {
LABEL_177:
    v76 = *v73++;
    result = storeVInt64(a2, v76);
    --v75;
  }

  while (v75);
  v78 = *a2;
  v79 = *a2 - v4 + 4;
  *v78 = v79;
  *a2 = v78 + 1;
  v8[2] = v79;
  return result;
}

uint64_t indexCommitShadow(uint64_t a1, _DWORD *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  bzero(__str, 0x400uLL);
  v4 = a2;
  atomic_store(0xC001D00D, (a1 + 32));
  *a2 = *(a1 + 4);
  v5 = atomic_load((a1 + 32));
  a2[1] = v5;
  v6 = atomic_load((a1 + 36));
  a2[2] = v6;
  a2[3] = *(a1 + 48);
  v7 = *(a1 + 14480);
  if (v7)
  {
    v8 = fd_pwrite(*(a1 + 14480), v4, 0x1000uLL, 0);
    if (v8 == -1)
    {
      result = *__error();
      if (result)
      {
        return result;
      }
    }

    else
    {
      if (v8 != 4096)
      {
        return 0xFFFFFFFFLL;
      }

      if (_gSystemStatusBool == 1)
      {
        pthread_mutex_lock(&_gSystemStatusLock);
        if (_gSystemStatusBool == 1)
        {
          do
          {
            pthread_cond_wait(&_gSystemStatusCond, &_gSystemStatusLock);
          }

          while ((_gSystemStatusBool & 1) != 0);
        }

        pthread_mutex_unlock(&_gSystemStatusLock);
      }

      v14 = 0;
      v9 = _fd_acquire_fd(v7, &v14);
      if (v9 != -1)
      {
        v10 = v9;
        prot_fsync(v9, 0);
        _fd_release_fd(v7, v10, 0, v14);
      }
    }
  }

  v12 = atomic_load((a1 + 36));
  if ((v12 & 2) == 0)
  {
    snprintf(__str, 0x400uLL, "%s%s", (a1 + 15208), "indexUpdates");
    unlinkat(*(a1 + 64), __str, 0);
    v13 = fd_create_protected(*(a1 + 64), __str, 536872450, 3u);
    fd_release(v13);
  }

  return 0;
}

uint64_t _indexShadowGroups(uint64_t a1, int a2)
{
  v86 = *MEMORY[0x1E69E9840];
  bzero(__str, 0x400uLL);
  Current = CFAbsoluteTimeGetCurrent();
  snprintf(__str, 0x400uLL, "%s%s", (a1 + 15208), "shadowIndexGroups");
  v5 = fd_create_protected(*(a1 + 64), __str, 536871426, 3u);
  v6 = v5;
  if (!v5)
  {
    v19 = *__error();
    v20 = *__error();
    v21 = _SILogForLogForCategory(0);
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_78;
    }

    *buf = 136315906;
    *&buf[4] = "_indexShadowGroups";
    v77 = 1024;
    v78 = 3113;
    v79 = 1024;
    v80 = v19;
    v81 = 2080;
    *v82 = __str;
    v22 = "%s:%d: open err: %d, %s";
    v23 = v21;
    v24 = 34;
    goto LABEL_77;
  }

  *buf = 0;
  v7 = _fd_acquire_fd(v5, buf);
  if (v7 != -1)
  {
    *(v6 + 56) |= 1u;
    v8 = v7;
    fcntl(v7, 48, 1);
    fcntl(v8, 76, *(v6 + 56) & 1);
    _fd_release_fd(v6, v8, 0, *buf);
  }

  v9 = *(a1 + 14440);
  if (__THREAD_SLOT_KEY[0])
  {
    v10 = pthread_getspecific(__THREAD_SLOT_KEY[0]);
    if (v10)
    {
      goto LABEL_6;
    }
  }

  else
  {
    makeThreadId();
    v10 = pthread_getspecific(__THREAD_SLOT_KEY[0]);
    if (v10)
    {
LABEL_6:
      if (v10 < 0x801)
      {
        goto LABEL_7;
      }
    }
  }

  makeThreadId();
  v10 = pthread_getspecific(__THREAD_SLOT_KEY[0]);
LABEL_7:
  v11 = v10 - 1;
  v12 = CICleanUpPush(v10 - 1, fd_release, v6);
  if (!v9)
  {
    v25 = *(a1 + 68);
    if (*(a1 + 45))
    {
      v26 = v25;
    }

    else
    {
      v26 = (4 * v25 + 4) / 5;
    }

    v27 = fd_pwrite(v6, *(a1 + 14432), v26, 0);
    CICleanUpClearItem(v11, v12);
    CICleanUpPop(v11);
    if (v27 == v26)
    {
      v28 = *(a1 + 72);
      v29 = (v28 + 4) / 5uLL;
      v30 = (v28 + 3) >> 2;
      if (*(a1 + 45) == 1)
      {
        v29 = v30;
      }

      *(a1 + 14440) = malloc_type_calloc(1uLL, (8 * *MEMORY[0x1E69E9AC8] - 1 + v29) / (8 * *MEMORY[0x1E69E9AC8]), 0x72313C74uLL);
      goto LABEL_25;
    }

    if (v27 == -1)
    {
      v19 = *__error();
    }

    else
    {
      v19 = 0;
    }

    v20 = *__error();
    v59 = _SILogForLogForCategory(0);
    if (!os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
    {
LABEL_78:
      *__error() = v20;
      fd_release(v6);
      if (v19)
      {
        return v19;
      }

      else
      {
        return 0xFFFFFFFFLL;
      }
    }

    *buf = 136316418;
    *&buf[4] = "_indexShadowGroups";
    v77 = 1024;
    v78 = 3143;
    v79 = 1024;
    v80 = v26;
    v81 = 1024;
    *v82 = v27;
    *&v82[4] = 1024;
    *&v82[6] = v19;
    v83 = 2080;
    v84 = __str;
    v22 = "%s:%d: write(%d) %d err: %d, %s";
LABEL_76:
    v23 = v59;
    v24 = 46;
LABEL_77:
    _os_log_error_impl(&dword_1C278D000, v23, OS_LOG_TYPE_ERROR, v22, buf, v24);
    goto LABEL_78;
  }

  v75 = 0;
  v13 = _fd_acquire_fd(v6, &v75);
  v14 = *(a1 + 68);
  v15 = MEMORY[0x1E69E9AC8];
  v16 = 8 * *MEMORY[0x1E69E9AC8];
  v17 = v16 - 1;
  if (*(a1 + 45) == 1)
  {
    v18 = v17 + ((v14 + 3) >> 2);
    if (v16 <= v18)
    {
LABEL_32:
      v68 = v11;
      v36 = 0;
      v74 = 4 * *MEMORY[0x1E69E9AC8];
      v69 = v18 / v16;
      v73 = v12;
      do
      {
        if (*(*(a1 + 14440) + v36))
        {
          v37 = 0;
          v38 = 8 * v36;
          while (1)
          {
            if ((*(*(a1 + 14440) + v36) >> v37))
            {
              v39 = *v15;
              v40 = v38 + v37;
              v41 = 4 * (v38 + v37);
              v42 = *(a1 + 68);
              if (*(a1 + 45) != 1)
              {
                v42 = (4 * v42 + 4) / 5uLL;
              }

              if ((v41 + 4) * *v15 < v42)
              {
                v71 = 0;
                v43 = *(a1 + 14432) + 4 * v39 * v40;
                v44 = v41 * v39;
                v45 = v74;
                while (1)
                {
                  while (1)
                  {
                    v46 = guarded_pwrite_np();
                    if ((v46 & 0x8000000000000000) == 0)
                    {
                      break;
                    }

                    v47 = g_prot_error_callback;
                    if (g_prot_error_callback)
                    {
                      v48 = __error();
                      if ((*(v47 + 16))(v47, v13, *v48, 5))
                      {
                        continue;
                      }
                    }

                    v19 = *__error();
                    LODWORD(v49) = -1;
                    goto LABEL_64;
                  }

                  v49 = v46 + v71;
                  v50 = v45 > v46;
                  v45 -= v46;
                  if (!v50)
                  {
                    break;
                  }

                  v71 += v46;
                  v43 += v46;
                  v44 += v46;
                }

                v38 = 8 * v36;
                v12 = v73;
                v15 = MEMORY[0x1E69E9AC8];
                if (v49 == v74)
                {
                  goto LABEL_36;
                }

                v19 = 0;
LABEL_64:
                v20 = *__error();
                v59 = _SILogForLogForCategory(0);
                if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
                {
                  *buf = 136316418;
                  *&buf[4] = "_indexShadowGroups";
                  v77 = 1024;
                  v78 = 3165;
                  v79 = 1024;
                  v80 = v74;
                  v81 = 1024;
                  *v82 = v49;
                  *&v82[4] = 1024;
                  *&v82[6] = v19;
                  v83 = 2080;
                  v84 = __str;
                  v22 = "%s:%d: write(%d) %d err: %d, %s";
                  goto LABEL_76;
                }

                goto LABEL_78;
              }

              v51 = 4 * v39 * v40;
              v52 = v42 - v51;
              v53 = *(a1 + 14432) + v51;
              v54 = v41 * v39;
              v70 = v42 - v51;
              v72 = 0;
              do
              {
                while (1)
                {
                  v55 = guarded_pwrite_np();
                  if ((v55 & 0x8000000000000000) != 0)
                  {
                    break;
                  }

                  v58 = v55 + v72;
                  v50 = v52 > v55;
                  v52 -= v55;
                  if (!v50)
                  {
                    goto LABEL_58;
                  }

                  v72 += v55;
                  v53 += v55;
                  v54 += v55;
                }

                v56 = g_prot_error_callback;
                if (!g_prot_error_callback)
                {
                  break;
                }

                v57 = __error();
              }

              while (((*(v56 + 16))(v56, v13, *v57, 5) & 1) != 0);
              v58 = -1;
LABEL_58:
              v12 = v73;
              v38 = 8 * v36;
              v15 = MEMORY[0x1E69E9AC8];
              if (v58 != v70)
              {
                break;
              }
            }

LABEL_36:
            if (++v37 == 8)
            {
              goto LABEL_60;
            }
          }

          v67 = v58;
          if (v58 == -1)
          {
            v19 = *__error();
          }

          else
          {
            v19 = 0;
          }

          v20 = *__error();
          v59 = _SILogForLogForCategory(0);
          if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
          {
            *buf = 136316418;
            *&buf[4] = "_indexShadowGroups";
            v77 = 1024;
            v78 = 3176;
            v79 = 1024;
            v80 = v70;
            v81 = 1024;
            *v82 = v67;
            *&v82[4] = 1024;
            *&v82[6] = v19;
            v83 = 2080;
            v84 = __str;
            v22 = "%s:%d: write(%d) %d err: %d, %s";
            goto LABEL_76;
          }

          goto LABEL_78;
        }

LABEL_60:
        ++v36;
      }

      while (v36 != v69);
      LODWORD(v14) = *(a1 + 68);
      v11 = v68;
      if ((*(a1 + 45) & 1) == 0)
      {
        goto LABEL_21;
      }
    }
  }

  else
  {
    v18 = v17 + (v14 + 4) / 5uLL;
    if (v16 <= v18)
    {
      goto LABEL_32;
    }

LABEL_21:
    LODWORD(v14) = (4 * v14 + 4) / 5u;
  }

  _fd_ftruncate_guarded(v13, &v75, v14);
  _fd_release_fd(v6, v13, 0, v75);
  CICleanUpClearItem(v11, v12);
  CICleanUpPop(v11);
  v31 = *(a1 + 68);
  v32 = (v31 + 4) / 5uLL;
  v33 = (v31 + 3) >> 2;
  if (*(a1 + 45) == 1)
  {
    v32 = v33;
  }

  bzero(*(a1 + 14440), (8 * *v15 - 1 + v32) / (8 * *v15));
LABEL_25:
  if (_gSystemStatusBool == 1)
  {
    pthread_mutex_lock(&_gSystemStatusLock);
    if (_gSystemStatusBool == 1)
    {
      do
      {
        pthread_cond_wait(&_gSystemStatusCond, &_gSystemStatusLock);
      }

      while ((_gSystemStatusBool & 1) != 0);
    }

    pthread_mutex_unlock(&_gSystemStatusLock);
  }

  *buf = 0;
  v34 = _fd_acquire_fd(v6, buf);
  if (v34 != -1)
  {
    if (a2)
    {
      v35 = (*(v6 + 56) & 8) == 0;
    }

    else
    {
      v35 = 0;
    }

    v60 = v34;
    prot_fsync(v34, v35);
    _fd_release_fd(v6, v60, 0, *buf);
  }

  fd_release(v6);
  v61 = *__error();
  v62 = _SILogForLogForCategory(10);
  v63 = 2 * (dword_1EBF46AF4 < 4);
  if (os_log_type_enabled(v62, v63))
  {
    v64 = CFAbsoluteTimeGetCurrent() - Current;
    *buf = 134217984;
    *&buf[4] = v64;
    _os_log_impl(&dword_1C278D000, v62, v63, "shadowIndexGroups took %f seconds", buf, 0xCu);
  }

  v65 = __error();
  result = 0;
  *v65 = v61;
  return result;
}