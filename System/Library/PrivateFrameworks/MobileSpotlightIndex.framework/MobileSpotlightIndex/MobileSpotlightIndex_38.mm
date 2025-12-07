int *_PayloadWriteData(int *result, void *a2, char *a3, int64_t a4)
{
  v5 = result;
  v6 = &a3[a4];
  if (a4)
  {
    v7 = a4;
    do
    {
      if (*(v5 + 4))
      {
        break;
      }

      v9 = *(v5 + 3);
      if (v7 >= v9)
      {
        v10 = *(v5 + 3);
      }

      else
      {
        v10 = v7;
      }

      a2[1] -= v10;
      v11 = v9 - v10;
      *(v5 + 3) = v11;
      v6 -= v10;
      result = memcpy((*v5 + v11), v6, v10);
      if (!*(v5 + 3))
      {
        result = PayloadWriteBufferWrite(v5, a2);
      }

      v7 -= v10;
    }

    while (v7);
  }

  if (v6 != a3 && !*(v5 + 4))
  {
    v12 = __si_assert_copy_extra_2708(0);
    v13 = v12;
    v14 = "";
    if (v12)
    {
      v14 = v12;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "JHPayload.h", 146, "src == ptr || wb->err", v14);
    free(v13);
    if (__valid_fs(-1))
    {
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    MEMORY[0xC00] = -559038737;
    abort();
  }

  return result;
}

uint64_t ___qsort_termids_block_invoke(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  if (*a3 == *a2)
  {
    v3 = 0;
  }

  else
  {
    v3 = -1;
  }

  if (*a3 > *a2)
  {
    return 1;
  }

  else
  {
    return v3;
  }
}

uint64_t mergeRangeCompare(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (HIDWORD(v3))
  {
    v4 = 0;
  }

  else
  {
    v4 = v3 << 6;
  }

  if ((v2 - 0x100000000) > 0xFFFFFFFF00000000)
  {
    if (v4)
    {
      if (v2 << 6 > v4)
      {
        return 1;
      }

      else
      {
        return 0xFFFFFFFFLL;
      }
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  else
  {
    result = 1;
    if (!v4)
    {
      if (*a1 > *a2)
      {
        return 1;
      }

      else
      {
        return 0xFFFFFFFFLL;
      }
    }
  }

  return result;
}

void TrieMergeCleanup(uint64_t *a1)
{
  if (*(a1 + 49) == 1)
  {
    v2 = *a1;
    pthread_mutex_lock((*a1 + 4600));
    *(v2 + 4804) = 0;
    v3 = *(v2 + 4776);
    *(v2 + 4776) = 0u;
    v4 = *(v2 + 4796) != 0;
    *(v2 + 4812) = 0;
    db_rwlock_wakeup(v2 + 4600, v4, 0);
    pthread_mutex_unlock((v2 + 4600));
    if (v3)
    {
      pthread_override_qos_class_end_np(v3);
    }
  }

  if (*(a1 + 48) == 1)
  {
    v5 = a1[1];
    pthread_mutex_lock((v5 + 304));
    v6 = *(v5 + 500) - 1;
    *(v5 + 500) = v6;
    if (!v6)
    {
      db_rwlock_wakeup(v5 + 304, 0, 0);
    }

    pthread_mutex_unlock((v5 + 304));
  }

  free(a1[2]);
  free(a1[3]);
  free(a1[4]);
  free(a1[5]);

  free(a1);
}

void __trie_resolve_fuzzy_transition_block_invoke(uint64_t a1, unint64_t a2, char *a3, int a4)
{
  v5 = a1 + 64;
  v6 = *(a1 + 32);
  *(v6 + 1272) = v5;
  findAddFlatBucket(v6, a2, *(a1 + 48), *(a1 + 56), a3, a4);
  *(*(a1 + 32) + 1272) = 0;
}

void __trie_resolve_fuzzy_transition_block_invoke_2(uint64_t a1, unint64_t a2, uint64_t a3, const void *a4, int a5)
{
  v10 = (*(a1 + 48) + a5);
  v11 = malloc_type_zone_malloc(queryZone, (v10 + 1), 0xA4971684uLL);
  if (!v11 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
  {
    LOWORD(v17) = 0;
    _os_log_fault_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "allocation function returned null", &v17, 2u);
  }

  memcpy(v11, *(a1 + 40), *(a1 + 48));
  memcpy(&v11[*(a1 + 48)], a4, a5);
  v11[v10] = 0;
  if (a3)
  {
    v12 = la_new_state_from_state_with_char_at_index(*(*(a1 + 88) + 1264), *(a1 + 56), *(a1 + 64), (*(a3 + 16) + *(a1 + 64)));
    *&v17 = v12;
    *(&v17 + 1) = v13;
    if (!v12)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v17 = *(a1 + 72);
    v12 = v17;
    if (!v17)
    {
LABEL_10:
      free(v11);
      return;
    }
  }

  if (!HIDWORD(a2))
  {
    v14 = *(a1 + 88);
    *(v14 + 1272) = &v17;
    findAddFlatBucket(v14, a2, v11, v10, 0, 0);
    *(*(a1 + 88) + 1272) = 0;
    goto LABEL_10;
  }

  v15 = *(a1 + 96);
  v16 = *(&v17 + 1);

  trie_level_list_insert_with_state(v15, a2, v11, v10, v12, v16);
}

uint64_t _trie_resolve_sub_trie(uint64_t result, unint64_t a2, char **a3, uint64_t a4, int a5, char a6, uint64_t a7, uint64_t a8)
{
  v8 = a2;
  if (!a2)
  {
    return result;
  }

  if (a3 && *(a3 + 18))
  {
    v13 = result;
    if (*(a3 + 16) != 255)
    {
      v14 = a2;
      v15 = a6;
      result = (*(a8 + 16))(a8);
      a6 = v15;
      a2 = v14;
    }

    v16 = HIDWORD(a2);
    if (!HIDWORD(a2))
    {
      v17 = *(a7 + 16);

      return v17();
    }

    if (a6)
    {
      if (!*(a3 + 18) || (**a3 & 0x80000000) == 0)
      {
        v19 = 0;
        v20 = 0;
        while (1)
        {
          if (v16 == 1)
          {
            result = mgetBase(v13, v8);
            v22 = (result + 4);
            if ((*(result + 4 + 4 * (v19 >> 5)) >> v19))
            {
              if (v19 >= 0x40)
              {
                v25 = vcnt_s8(*v22);
                v25.i16[0] = vaddlv_u8(v25);
                v23 = v25.u32[0];
              }

              else
              {
                v23 = 0;
              }

              v26 = vcnt_s8((*&v22[v19 >> 6] & ~(-1 << v19)));
              v26.i16[0] = vaddlv_u8(v26);
              v21 = *(result + 38 + 4 * (v26.u32[0] + v23));
              goto LABEL_28;
            }
          }

          else if (v16 == 3)
          {
            v21 = *(v13[1] + 1028 * v8 + 4 + 4 * v19);
LABEL_28:
            v27 = v21 >> 1;
            v28 = v21 >> 3;
            v29 = (v21 & 7) << 32;
            if ((v21 & 3) == 1)
            {
              v29 = 0x100000000;
              v28 = v21 >> 2;
            }

            v30 = (v21 & 1) == 0;
            if (v21)
            {
              v31 = v29;
            }

            else
            {
              v31 = 0;
            }

            if (!v30)
            {
              v27 = v28;
            }

            v24 = v31 | v27;
            goto LABEL_36;
          }

          v24 = 0;
LABEL_36:
          *(a4 + a5) = tcmr[v19];
          if (v20 < *(a3 + 18) && v19 == (*a3)[v20])
          {
            if (v24)
            {
              result = _trie_resolve_sub_trie(v13, v24, *&a3[1][8 * v20], a4, a5 + 1, 1, a7, a8);
            }

            ++v20;
          }

          else if (v24)
          {
            result = (*(a8 + 16))(a8, v24, 0, a4, (a5 + 1));
          }

          if (++v19 == 128)
          {
            return result;
          }
        }
      }
    }

    else if (!*(a3 + 18))
    {
      return result;
    }

    v32 = 0;
    while (1)
    {
      v35 = (*a3)[v32];
      if (v16 != 1)
      {
        if (v16 != 3)
        {
          goto LABEL_46;
        }

        v36 = *(v13[1] + 1028 * v8 + 4 * v35 + 4);
        v37 = v36 >> 3;
        v38 = (v36 & 7) << 32;
        if ((v36 & 3) == 1)
        {
          v37 = v36 >> 2;
          v38 = 0x100000000;
        }

        v34 = (v36 & 1) != 0 ? v37 : v36 >> 1;
        v33 = (*(v13[1] + 1028 * v8 + 4 * v35 + 4) & 1) != 0 ? v38 : 0;
        if (!v34)
        {
          goto LABEL_46;
        }

LABEL_45:
        *(a4 + a5) = tcmr[v35];
        result = _trie_resolve_sub_trie(v13, v33 | v34, *&a3[1][8 * v32], a4, a5 + 1, 0, a7, a8);
        goto LABEL_46;
      }

      result = mgetBase(v13, v8);
      v39 = (result + 4);
      if (((*(result + 4 + ((v35 >> 3) & 0x1C)) >> v35) & 1) == 0)
      {
        goto LABEL_46;
      }

      v40 = 0;
      v41 = v35 >> 6;
      if ((v35 >> 6) > 1)
      {
        break;
      }

      v42 = v35 >> 6;
      if (v41)
      {
        goto LABEL_66;
      }

LABEL_67:
      v46 = vcnt_s8((*&v39[v41] & ~(-1 << v35)));
      v46.i16[0] = vaddlv_u8(v46);
      v47 = *(result + 38 + 4 * (v46.u32[0] + v42));
      if (v47)
      {
        if ((v47 & 3) == 1)
        {
          v34 = v47 >> 2;
          v33 = 0x100000000;
          if (!(v47 >> 2))
          {
            goto LABEL_46;
          }
        }

        else
        {
          v34 = v47 >> 3;
          v33 = (v47 & 7) << 32;
          if (!(v47 >> 3))
          {
            goto LABEL_46;
          }
        }

        goto LABEL_45;
      }

      v33 = 0;
      v34 = v47 >> 1;
      if (v47 >> 1)
      {
        goto LABEL_45;
      }

LABEL_46:
      if (++v32 >= *(a3 + 18))
      {
        return result;
      }
    }

    if (v41 != 2)
    {
      v43 = vcnt_s8(*(result + 20));
      v43.i16[0] = vaddlv_u8(v43);
      v40 = v43.u32[0];
    }

    v44 = vcnt_s8(*(result + 12));
    v44.i16[0] = vaddlv_u8(v44);
    v40 += v44.u32[0];
LABEL_66:
    v45 = vcnt_s8(*v39);
    v45.i16[0] = vaddlv_u8(v45);
    v42 = v45.u32[0] + v40;
    goto LABEL_67;
  }

  v18 = *(a8 + 16);

  return v18(a8);
}

void _trie_resolve_combining(uint64_t a1, unint64_t *a2, int *a3)
{
  v138 = 204;
  v6 = *(a1 + 8);
  v7 = *a2;
  v8 = HIDWORD(*a2);
  if (v8 == 3)
  {
    v13 = *(v6[1] + 1028 * v7 + 136);
    v14 = v13 >> 1;
    v15 = v13 >> 3;
    v16 = v13 & 7;
    if ((v13 & 3) == 1)
    {
      v16 = 1;
      v15 = v13 >> 2;
    }

    v17 = (v13 & 1) == 0;
    if (v13)
    {
      v12 = v16;
    }

    else
    {
      v12 = 0;
    }

    if (!v17)
    {
      v14 = v15;
    }

    if (v14)
    {
LABEL_15:
      if (v12)
      {
        v18 = 128;
        do
        {
          BYTE1(v138) = v18;
          v19 = *(a2 + 1);
          v135 = *a2;
          v136 = v19;
          v137 = a2[4];
          trie_resolve_sub_string(a1, &v135, &v138, 2, a3);
          v20 = v18++ >= 0xBF;
        }

        while (!v20);
      }

      else
      {
        v21 = *(a2 + 1);
        v135 = *a2;
        v136 = v21;
        v137 = a2[4];
        trie_resolve_sub_string(a1, &v135, &v138, 1, a3);
      }
    }
  }

  else if (v8 == 1)
  {
    v9 = mgetBase(v6, v7);
    if ((*(v9 + 8) & 2) != 0)
    {
      v10 = vcnt_s8((*(v9 + 4) & 0x1FFFFFFFFLL));
      v10.i16[0] = vaddlv_u8(v10);
      v11 = *(v9 + 4 * v10.u32[0] + 38);
      if (v11)
      {
        if ((*(v9 + 4 * v10.u32[0] + 38) & 3) == 1)
        {
          if (!(v11 >> 2))
          {
            goto LABEL_21;
          }

          v12 = 1;
        }

        else
        {
          if (!(v11 >> 3))
          {
            goto LABEL_21;
          }

          v12 = *(v9 + 4 * v10.u32[0] + 38) & 7;
        }
      }

      else
      {
        if (!(v11 >> 1))
        {
          goto LABEL_21;
        }

        v12 = 0;
      }

      goto LABEL_15;
    }
  }

LABEL_21:
  LOBYTE(v138) = -51;
  v22 = *(a1 + 8);
  v23 = *a2;
  v24 = HIDWORD(*a2);
  if (v24 == 3)
  {
    v29 = *(v22[1] + 1028 * v23 + 140);
    v30 = v29 >> 1;
    v31 = v29 >> 3;
    v32 = v29 & 7;
    if ((v29 & 3) == 1)
    {
      v32 = 1;
      v31 = v29 >> 2;
    }

    v33 = (v29 & 1) == 0;
    if (v29)
    {
      v28 = v32;
    }

    else
    {
      v28 = 0;
    }

    if (!v33)
    {
      v30 = v31;
    }

    if (v30)
    {
LABEL_35:
      if (v28)
      {
        v34 = 128;
        do
        {
          BYTE1(v138) = v34;
          v35 = *(a2 + 1);
          v135 = *a2;
          v136 = v35;
          v137 = a2[4];
          trie_resolve_sub_string(a1, &v135, &v138, 2, a3);
          v20 = v34++ >= 0xDF;
        }

        while (!v20);
      }

      else
      {
        v36 = *(a2 + 1);
        v135 = *a2;
        v136 = v36;
        v137 = a2[4];
        trie_resolve_sub_string(a1, &v135, &v138, 1, a3);
      }
    }
  }

  else if (v24 == 1)
  {
    v25 = mgetBase(v22, v23);
    if ((*(v25 + 8) & 4) != 0)
    {
      v26 = vcnt_s8((*(v25 + 4) & 0x3FFFFFFFFLL));
      v26.i16[0] = vaddlv_u8(v26);
      v27 = *(v25 + 4 * v26.u32[0] + 38);
      if (v27)
      {
        if ((*(v25 + 4 * v26.u32[0] + 38) & 3) == 1)
        {
          if (!(v27 >> 2))
          {
            goto LABEL_41;
          }

          v28 = 1;
        }

        else
        {
          if (!(v27 >> 3))
          {
            goto LABEL_41;
          }

          v28 = *(v25 + 4 * v26.u32[0] + 38) & 7;
        }
      }

      else
      {
        if (!(v27 >> 1))
        {
          goto LABEL_41;
        }

        v28 = 0;
      }

      goto LABEL_35;
    }
  }

LABEL_41:
  LOBYTE(v138) = 45;
  v37 = *(a2 + 1);
  v135 = *a2;
  v136 = v37;
  v137 = a2[4];
  trie_resolve_sub_string(a1, &v135, &v138, 1, a3);
  LOWORD(v138) = -32542;
  BYTE2(v138) = -112;
  v38 = *(a2 + 1);
  v135 = *a2;
  v136 = v38;
  v137 = a2[4];
  trie_resolve_sub_string(a1, &v135, &v138, 3, a3);
  LOBYTE(v138) = -42;
  v39 = *(a1 + 8);
  v40 = *a2;
  v41 = HIDWORD(*a2);
  if (v41 == 3)
  {
    v49 = *(v39[1] + 1028 * v40 + 860);
    v50 = v49 >> 1;
    v51 = v49 >> 3;
    v52 = v49 & 7;
    if ((v49 & 3) == 1)
    {
      v52 = 1;
      v51 = v49 >> 2;
    }

    v53 = (v49 & 1) == 0;
    if (v49)
    {
      v48 = v52;
    }

    else
    {
      v48 = 0;
    }

    if (!v53)
    {
      v50 = v51;
    }

    if (v50)
    {
LABEL_55:
      if (v48)
      {
        v54 = 145;
        do
        {
          BYTE1(v138) = v54;
          v55 = *(a2 + 1);
          v135 = *a2;
          v136 = v55;
          v137 = a2[4];
          trie_resolve_sub_string(a1, &v135, &v138, 2, a3);
          v20 = v54++ >= 0xBF;
        }

        while (!v20);
      }

      else
      {
        v56 = *(a2 + 1);
        v135 = *a2;
        v136 = v56;
        v137 = a2[4];
        trie_resolve_sub_string(a1, &v135, &v138, 1, a3);
      }
    }
  }

  else if (v41 == 1)
  {
    v42 = mgetBase(v39, v40);
    if ((*(v42 + 30) & 0x40) != 0)
    {
      v43 = vaddvq_s64(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(*(v42 + 12))))));
      v44 = vcnt_s8(*(v42 + 4));
      v44.i16[0] = vaddlv_u8(v44);
      v45 = v44.u32[0] + *&v43;
      v43.i32[0] = *(v42 + 28) & 0x3FFFFF;
      v46 = vcnt_s8(v43);
      v46.i16[0] = vaddlv_u8(v46);
      v47 = *(v42 + 4 * (v46.u32[0] + v45) + 38);
      if (v47)
      {
        if ((v47 & 3) == 1)
        {
          if (!(v47 >> 2))
          {
            goto LABEL_61;
          }

          v48 = 1;
        }

        else
        {
          if (!(v47 >> 3))
          {
            goto LABEL_61;
          }

          v48 = v47 & 7;
        }
      }

      else
      {
        if (!(v47 >> 1))
        {
          goto LABEL_61;
        }

        v48 = 0;
      }

      goto LABEL_55;
    }
  }

LABEL_61:
  LOBYTE(v138) = -41;
  v57 = *(a1 + 8);
  v58 = *a2;
  v59 = HIDWORD(*a2);
  if (v59 != 3)
  {
    if (v59 != 1)
    {
      goto LABEL_79;
    }

    v60 = mgetBase(v57, v58);
    if ((*(v60 + 30) & 0x80) == 0)
    {
      goto LABEL_79;
    }

    v61 = vaddvq_s64(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(*(v60 + 12))))));
    v62 = vcnt_s8(*(v60 + 4));
    v62.i16[0] = vaddlv_u8(v62);
    v63 = v62.u32[0] + *&v61;
    v61.i32[0] = *(v60 + 28) & 0x7FFFFF;
    v64 = vcnt_s8(v61);
    v64.i16[0] = vaddlv_u8(v64);
    v65 = *(v60 + 4 * (v64.u32[0] + v63) + 38);
    if (v65)
    {
      if ((v65 & 3) == 1)
      {
        if (!(v65 >> 2))
        {
          goto LABEL_79;
        }

        v66 = 1;
      }

      else
      {
        if (!(v65 >> 3))
        {
          goto LABEL_79;
        }

        v66 = v65 & 7;
      }
    }

    else
    {
      if (!(v65 >> 1))
      {
        goto LABEL_79;
      }

      v66 = 0;
    }

    goto LABEL_75;
  }

  v67 = *(v57[1] + 1028 * v58 + 864);
  v68 = v67 >> 1;
  v69 = v67 >> 3;
  v70 = v67 & 7;
  if ((v67 & 3) == 1)
  {
    v70 = 1;
    v69 = v67 >> 2;
  }

  v71 = (v67 & 1) == 0;
  if (v67)
  {
    v66 = v70;
  }

  else
  {
    v66 = 0;
  }

  if (!v71)
  {
    v68 = v69;
  }

  if (v68)
  {
LABEL_75:
    if (v66)
    {
      BYTE1(v138) = 0x80;
      v72 = *(a2 + 1);
      v135 = *a2;
      v136 = v72;
      v137 = a2[4];
      trie_resolve_sub_string(a1, &v135, &v138, 2, a3);
      BYTE1(v138) = -127;
      v73 = *(a2 + 1);
      v135 = *a2;
      v136 = v73;
      v137 = a2[4];
      trie_resolve_sub_string(a1, &v135, &v138, 2, a3);
      BYTE1(v138) = -126;
      v74 = *(a2 + 1);
      v135 = *a2;
      v136 = v74;
      v137 = a2[4];
      trie_resolve_sub_string(a1, &v135, &v138, 2, a3);
      BYTE1(v138) = -125;
      v75 = *(a2 + 1);
      v135 = *a2;
      v136 = v75;
      v137 = a2[4];
      trie_resolve_sub_string(a1, &v135, &v138, 2, a3);
      BYTE1(v138) = -124;
      v76 = *(a2 + 1);
      v135 = *a2;
      v136 = v76;
      v137 = a2[4];
      v77 = a1;
      v78 = 2;
    }

    else
    {
      v79 = *(a2 + 1);
      v135 = *a2;
      v136 = v79;
      v137 = a2[4];
      v77 = a1;
      v78 = 1;
    }

    trie_resolve_sub_string(v77, &v135, &v138, v78, a3);
  }

LABEL_79:
  LOWORD(v138) = -32029;
  v80 = *(a1 + 8);
  v81 = *a2;
  v82 = HIDWORD(*a2);
  if (v82 == 3)
  {
    v89 = *(v80[1] + 1028 * v81 + 912);
    v90 = v89 & 7;
    v91 = v89 >> 2;
    if ((v89 & 3) == 1)
    {
      v90 = 1;
    }

    else
    {
      v91 = v89 >> 3;
    }

    if (v89)
    {
      v88 = v90;
    }

    else
    {
      v88 = 0;
    }

    if (v89)
    {
      v87 = v91;
    }

    else
    {
      v87 = v89 >> 1;
    }

    if (!v87)
    {
      goto LABEL_150;
    }
  }

  else
  {
    if (v82 != 1)
    {
      goto LABEL_150;
    }

    v83 = mgetBase(*(a1 + 8), v81);
    if ((*(v83 + 32) & 8) == 0)
    {
      goto LABEL_150;
    }

    v84 = vcnt_s8(*(v83 + 4));
    v84.i16[0] = vaddlv_u8(v84);
    v85 = vcnt_s8((*(v83 + 28) & 0x7FFFFFFFFLL));
    v85.i16[0] = vaddlv_u8(v85);
    v86 = *(v83 + 4 * (v85.u32[0] + v84.u32[0] + vaddvq_s64(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(*(v83 + 12))))))) + 38);
    if (v86)
    {
      if ((v86 & 3) == 1)
      {
        v87 = v86 >> 2;
        if (!(v86 >> 2))
        {
          goto LABEL_150;
        }

        v88 = 1;
      }

      else
      {
        v87 = v86 >> 3;
        if (!(v86 >> 3))
        {
          goto LABEL_150;
        }

        v88 = v86 & 7;
      }
    }

    else
    {
      v87 = v86 >> 1;
      if (!(v86 >> 1))
      {
        goto LABEL_150;
      }

      v88 = 0;
    }
  }

  if (!v88)
  {
    v102 = 1;
    goto LABEL_148;
  }

  if (v88 != 1)
  {
    if (v88 != 3)
    {
      goto LABEL_150;
    }

    v92 = *(v80[1] + 1028 * v87 + 524);
    if (v92)
    {
      if ((v92 & 3) == 1)
      {
        if (!(v92 >> 2))
        {
          goto LABEL_150;
        }

        v93 = 1;
      }

      else
      {
        if (!(v92 >> 3))
        {
          goto LABEL_150;
        }

        v93 = v92 & 7;
      }
    }

    else
    {
      if (!(v92 >> 1))
      {
        goto LABEL_150;
      }

      v93 = 0;
    }

    goto LABEL_145;
  }

  v94 = mgetBase(v80, v87);
  if ((*(v94 + 20) & 4) != 0)
  {
    v95.i32[0] = *(v94 + 20) & 3;
    v96 = vcnt_s8(v95);
    v96.i16[0] = vaddlv_u8(v96);
    v97 = *(v94 + 4 * (v96.u32[0] + vaddvq_s64(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(*(v94 + 4))))))) + 38);
    v98 = v97 >> 1;
    v99 = v97 >> 2;
    if ((v97 & 3) == 1)
    {
      v100 = 1;
    }

    else
    {
      v100 = v97 & 7;
    }

    if ((v97 & 3) != 1)
    {
      v99 = v97 >> 3;
    }

    v101 = (v97 & 1) == 0;
    if (v97)
    {
      v93 = v100;
    }

    else
    {
      v93 = 0;
    }

    if (!v101)
    {
      v98 = v99;
    }

    if (v98)
    {
LABEL_145:
      if (v93)
      {
        BYTE2(v138) = -103;
        v103 = *(a2 + 1);
        v135 = *a2;
        v136 = v103;
        v137 = a2[4];
        trie_resolve_sub_string(a1, &v135, &v138, 3, a3);
        BYTE2(v138) = -102;
        v104 = *(a2 + 1);
        v135 = *a2;
        v136 = v104;
        v137 = a2[4];
        trie_resolve_sub_string(a1, &v135, &v138, 3, a3);
        BYTE2(v138) = -101;
        v105 = *(a2 + 1);
        v135 = *a2;
        v136 = v105;
        v137 = a2[4];
        trie_resolve_sub_string(a1, &v135, &v138, 3, a3);
        BYTE2(v138) = -100;
        v106 = *(a2 + 1);
        v135 = *a2;
        v136 = v106;
        v137 = a2[4];
        v107 = a1;
        v102 = 3;
LABEL_149:
        trie_resolve_sub_string(v107, &v135, &v138, v102, a3);
        goto LABEL_150;
      }

      v102 = 2;
LABEL_148:
      v108 = *(a2 + 1);
      v135 = *a2;
      v136 = v108;
      v137 = a2[4];
      v107 = a1;
      goto LABEL_149;
    }
  }

LABEL_150:
  LOWORD(v138) = -16657;
  v109 = *(a1 + 8);
  v110 = *a2;
  v111 = HIDWORD(*a2);
  if (v111 == 3)
  {
    v118 = *(v109[1] + 1028 * v110 + 960);
    v119 = v118 & 7;
    v120 = v118 >> 2;
    if ((v118 & 3) == 1)
    {
      v119 = 1;
    }

    else
    {
      v120 = v118 >> 3;
    }

    if (v118)
    {
      v117 = v119;
    }

    else
    {
      v117 = 0;
    }

    if (v118)
    {
      v116 = v120;
    }

    else
    {
      v116 = v118 >> 1;
    }

    if (!v116)
    {
      return;
    }
  }

  else
  {
    if (v111 != 1)
    {
      return;
    }

    v112 = mgetBase(*(a1 + 8), v110);
    if ((*(v112 + 33) & 0x80) == 0)
    {
      return;
    }

    v113 = vcnt_s8(*(v112 + 4));
    v113.i16[0] = vaddlv_u8(v113);
    v114 = vcnt_s8((*(v112 + 28) & 0x7FFFFFFFFFFFLL));
    v114.i16[0] = vaddlv_u8(v114);
    v115 = *(v112 + 4 * (v114.u32[0] + v113.u32[0] + vaddvq_s64(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(*(v112 + 12))))))) + 38);
    if (v115)
    {
      if ((v115 & 3) == 1)
      {
        v116 = v115 >> 2;
        if (!(v115 >> 2))
        {
          return;
        }

        v117 = 1;
      }

      else
      {
        v116 = v115 >> 3;
        if (!(v115 >> 3))
        {
          return;
        }

        v117 = v115 & 7;
      }
    }

    else
    {
      v116 = v115 >> 1;
      if (!(v115 >> 1))
      {
        return;
      }

      v117 = 0;
    }
  }

  if (!v117)
  {
    v130 = 1;
    goto LABEL_199;
  }

  if (v117 != 1)
  {
    if (v117 != 3)
    {
      return;
    }

    v121 = *(v109[1] + 1028 * v116 + 764);
    if (v121)
    {
      if ((v121 & 3) == 1)
      {
        if (!(v121 >> 2))
        {
          return;
        }

        v122 = 1;
      }

      else
      {
        if (!(v121 >> 3))
        {
          return;
        }

        v122 = v121 & 7;
      }
    }

    else
    {
      if (!(v121 >> 1))
      {
        return;
      }

      v122 = 0;
    }

    goto LABEL_196;
  }

  v123 = mgetBase(v109, v116);
  if ((*(v123 + 27) & 0x40) != 0)
  {
    v124 = vcnt_s8((*(v123 + 20) & 0x3FFFFFFFFFFFFFFFLL));
    v124.i16[0] = vaddlv_u8(v124);
    v125 = *(v123 + 4 * (v124.u32[0] + vaddvq_s64(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(*(v123 + 4))))))) + 38);
    v126 = v125 >> 1;
    v127 = v125 >> 2;
    if ((v125 & 3) == 1)
    {
      v128 = 1;
    }

    else
    {
      v128 = v125 & 7;
    }

    if ((v125 & 3) != 1)
    {
      v127 = v125 >> 3;
    }

    v129 = (v125 & 1) == 0;
    v122 = (v125 & 1) != 0 ? v128 : 0;
    if (!v129)
    {
      v126 = v127;
    }

    if (v126)
    {
LABEL_196:
      if (v122)
      {
        BYTE2(v138) = -98;
        v131 = *(a2 + 1);
        v135 = *a2;
        v136 = v131;
        v137 = a2[4];
        trie_resolve_sub_string(a1, &v135, &v138, 3, a3);
        BYTE2(v138) = -97;
        v132 = *(a2 + 1);
        v135 = *a2;
        v136 = v132;
        v137 = a2[4];
        v133 = a1;
        v130 = 3;
LABEL_200:
        trie_resolve_sub_string(v133, &v135, &v138, v130, a3);
        return;
      }

      v130 = 2;
LABEL_199:
      v134 = *(a2 + 1);
      v135 = *a2;
      v136 = v134;
      v137 = a2[4];
      v133 = a1;
      goto LABEL_200;
    }
  }
}

void _trie_resolve_sub_string_ignore_diacritics(uint64_t a1, __int128 *a2, unsigned __int8 *a3, int a4, int *a5, char *a6, int a7)
{
  if (!a4)
  {
    return;
  }

  v10 = 0;
  v11 = utf8_byte_length_noerror(unsigned char)::utf8_len_table[*a3 >> 4];
  v12 = *(a1 + 8);
  v13 = HIDWORD(*a2);
  v14 = *a2;
  while (1)
  {
    if (v13 == 3)
    {
      v21 = *(v12[1] + 1028 * v14 + 4 * *(&tcm + a3[v10]) + 4);
      if (v21)
      {
        goto LABEL_18;
      }

      goto LABEL_11;
    }

    if (v13 != 1)
    {
      break;
    }

    v15 = mgetBase(v12, v14);
    v16 = *(&tcm + a3[v10]);
    v17 = (v15 + 4);
    if (((*(v15 + 4 + ((v16 >> 3) & 0x1C)) >> v16) & 1) == 0)
    {
      return;
    }

    v18 = 0;
    v19 = v16 >> 6;
    if ((v16 >> 6) > 1)
    {
      if (v19 != 2)
      {
        v22 = vcnt_s8(*(v15 + 20));
        v22.i16[0] = vaddlv_u8(v22);
        v18 = v22.u32[0];
      }

      v23 = vcnt_s8(*(v15 + 12));
      v23.i16[0] = vaddlv_u8(v23);
      v18 += v23.u32[0];
LABEL_16:
      v24 = vcnt_s8(*v17);
      v24.i16[0] = vaddlv_u8(v24);
      v20 = v24.u32[0] + v18;
      goto LABEL_17;
    }

    v20 = v16 >> 6;
    if (v19)
    {
      goto LABEL_16;
    }

LABEL_17:
    v25 = vcnt_s8((*&v17[v19] & ~(-1 << v16)));
    v25.i16[0] = vaddlv_u8(v25);
    v21 = *(v15 + 38 + 4 * (v25.u32[0] + v20));
    if (v21)
    {
LABEL_18:
      if ((v21 & 3) == 1)
      {
        v14 = v21 >> 2;
        if (!(v21 >> 2))
        {
          return;
        }

        v13 = 1;
      }

      else
      {
        v14 = v21 >> 3;
        if (!(v21 >> 3))
        {
          return;
        }

        v13 = v21 & 7;
      }

      goto LABEL_3;
    }

LABEL_11:
    v14 = v21 >> 1;
    if (!(v21 >> 1))
    {
      return;
    }

    v13 = 0;
LABEL_3:
    if (v11 == ++v10)
    {
      LODWORD(v10) = v11;
      if (v11)
      {
        goto LABEL_28;
      }

      return;
    }
  }

  if (v13)
  {
    return;
  }

  if (!v14)
  {
    return;
  }

  v13 = 0;
  if (!v10)
  {
    return;
  }

LABEL_28:
  v26 = v14;
  memcpy(&a6[a7], a3, v10);
  v27 = v10 + a7;
  if (!v13)
  {
    v31 = a1;
    v32 = *(a2 + 1);
    v33 = *(a2 + 4);
    v34 = v27;
    v35 = v26;
    v36 = a6;
    goto LABEL_38;
  }

  if (v10 != v11)
  {
    return;
  }

  if (a4 == v11)
  {
    v28 = *(a2 + 4) + v27;
    if (v28 <= 4094)
    {
      v29 = malloc_type_zone_malloc(queryZone, v28 + 1, 0xA4971684uLL);
      if (!v29)
      {
        _log_fault_for_malloc_failure();
      }

      memcpy(v29, *(a2 + 1), *(a2 + 4));
      memcpy(&v29[*(a2 + 4)], a6, v27);
      v29[*(a2 + 4) + v27] = 0;
      v30 = *(a2 + 4) + v27;

      trie_level_list_insert_with_state(a5, v26 | (v13 << 32), v29, v30, 0, 0);
    }

    return;
  }

  *a2 = v26 | (v13 << 32);
  v37 = a2[1];
  v275 = *a2;
  v276 = v37;
  v277 = *(a2 + 4);
  v267 = a4 - v11;
  _trie_resolve_sub_string_ignore_diacritics(a1, &v275, &a3[v11], a4 - v11, a5, a6, v27);
  v38 = &a6[v27];
  a6[v27] = -52;
  v39 = *(a1 + 8);
  v263 = v27;
  v265 = &a6[v27];
  if (v13 == 3)
  {
    v40 = v26;
    v47 = *(v39[1] + 1028 * v26 + 136);
    v48 = v47 >> 3;
    v49 = v47 & 7;
    if ((v47 & 3) == 1)
    {
      v49 = 1;
      v48 = v47 >> 2;
    }

    if (v47)
    {
      v50 = v49;
    }

    else
    {
      v50 = 0;
    }

    if (v47)
    {
      v51 = v48;
    }

    else
    {
      v51 = v47 >> 1;
    }

    if (!v51)
    {
      *v38 = -51;
      v52 = a1;
      v53 = *(a1 + 8);
      goto LABEL_118;
    }

    goto LABEL_70;
  }

  v40 = v26;
  if (v13 != 1)
  {
    goto LABEL_111;
  }

  v41 = mgetBase(v39, v26);
  v42 = *(&tcm + *v38);
  v43 = (v41 + 4);
  if (((*(v41 + 4 + ((v42 >> 3) & 0x1C)) >> v42) & 1) == 0)
  {
    goto LABEL_109;
  }

  v44 = 0;
  v45 = v42 >> 6;
  if ((v42 >> 6) > 1)
  {
    if (v45 != 2)
    {
      v54 = vcnt_s8(*(v41 + 20));
      v54.i16[0] = vaddlv_u8(v54);
      v44 = v54.u32[0];
    }

    v55 = vcnt_s8(*(v41 + 12));
    v55.i16[0] = vaddlv_u8(v55);
    v44 += v55.u32[0];
    goto LABEL_60;
  }

  v46 = v42 >> 6;
  if (v45)
  {
LABEL_60:
    v56 = vcnt_s8(*v43);
    v56.i16[0] = vaddlv_u8(v56);
    v46 = v56.u32[0] + v44;
  }

  v57 = vcnt_s8((*&v43[v45] & ~(-1 << v42)));
  v57.i16[0] = vaddlv_u8(v57);
  v58 = *(v41 + 38 + 4 * (v57.u32[0] + v46));
  if ((v58 & 1) == 0)
  {
    v51 = v58 >> 1;
    if (v58 >> 1)
    {
      v50 = 0;
      goto LABEL_69;
    }

LABEL_109:
    *v38 = -51;
    v52 = a1;
    v53 = *(a1 + 8);
    v40 = v26;
LABEL_113:
    v79 = mgetBase(v53, v40);
    v80 = *(&tcm + *v38);
    v81 = (v79 + 4);
    LODWORD(v27) = v263;
    if (((*(v79 + 4 + ((v80 >> 3) & 0x1C)) >> v80) & 1) == 0)
    {
      goto LABEL_179;
    }

    v82 = 0;
    v83 = v80 >> 6;
    if ((v80 >> 6) > 1)
    {
      if (v83 != 2)
      {
        v91 = vcnt_s8(*(v79 + 20));
        v91.i16[0] = vaddlv_u8(v91);
        v82 = v91.u32[0];
      }

      v92 = vcnt_s8(*(v79 + 12));
      v92.i16[0] = vaddlv_u8(v92);
      v82 += v92.u32[0];
    }

    else
    {
      v84 = v80 >> 6;
      if (!v83)
      {
LABEL_132:
        v94 = vcnt_s8((*&v81[v83] & ~(-1 << v80)));
        v94.i16[0] = vaddlv_u8(v94);
        v95 = *(v79 + 38 + 4 * (v94.u32[0] + v84));
        if ((v95 & 1) == 0)
        {
          v89 = v95 >> 1;
          if (v95 >> 1)
          {
            v88 = 0;
            goto LABEL_140;
          }

LABEL_179:
          *v38 = 45;
          v90 = *(v52 + 8);
          v40 = v26;
LABEL_195:
          v125 = mgetBase(v90, v40);
          v126 = *(&tcm + *v38);
          v127 = (v125 + 4);
          v121 = a6;
          if (((*(v125 + 4 + ((v126 >> 3) & 0x1C)) >> v126) & 1) == 0)
          {
            goto LABEL_214;
          }

          v128 = 0;
          v129 = v126 >> 6;
          if ((v126 >> 6) > 1)
          {
            if (v129 != 2)
            {
              v131 = vcnt_s8(*(v125 + 20));
              v131.i16[0] = vaddlv_u8(v131);
              v128 = v131.u32[0];
            }

            v132 = vcnt_s8(*(v125 + 12));
            v132.i16[0] = vaddlv_u8(v132);
            v128 += v132.u32[0];
          }

          else
          {
            v130 = v126 >> 6;
            if (!v129)
            {
LABEL_204:
              v134 = vcnt_s8((*&v127[v129] & ~(-1 << v126)));
              v134.i16[0] = vaddlv_u8(v134);
              v135 = *(v125 + 38 + 4 * (v134.u32[0] + v130));
              if ((v135 & 1) == 0)
              {
                v120 = v135 >> 1;
                if (v135 >> 1)
                {
                  v119 = 0;
                  goto LABEL_212;
                }

LABEL_214:
                *v38 = -30;
                v122 = v27 + 1;
                v270 = &a6[v122];
                *&a6[v122] = -28544;
                v266 = v27 + 2;
                v123 = *(v52 + 8);
                v124 = v123 + 1;
                v40 = v26;
LABEL_219:
                v137 = mgetBase(v123, v40);
                v138 = *(&tcm + *v38);
                v139 = (v137 + 4);
                if (((*(v137 + 4 + ((v138 >> 3) & 0x1C)) >> v138) & 1) == 0)
                {
                  goto LABEL_252;
                }

                v140 = 0;
                v141 = v138 >> 6;
                if ((v138 >> 6) > 1)
                {
                  if (v141 != 2)
                  {
                    v150 = vcnt_s8(*(v137 + 20));
                    v150.i16[0] = vaddlv_u8(v150);
                    v140 = v150.u32[0];
                  }

                  v151 = vcnt_s8(*(v137 + 12));
                  v151.i16[0] = vaddlv_u8(v151);
                  v140 += v151.u32[0];
                }

                else
                {
                  v142 = v138 >> 6;
                  if (!v141)
                  {
LABEL_238:
                    v153 = vcnt_s8((*&v139[v141] & ~(-1 << v138)));
                    v153.i16[0] = vaddlv_u8(v153);
                    v154 = *(v137 + 38 + 4 * (v153.u32[0] + v142));
                    if ((v154 & 1) == 0)
                    {
                      v147 = v154 >> 1;
                      if (v154 >> 1)
                      {
                        v146 = 0;
                        goto LABEL_246;
                      }

LABEL_252:
                      *v38 = -42;
                      v148 = a1;
                      v149 = *(a1 + 8);
                      v40 = v26;
LABEL_318:
                      v189 = mgetBase(v149, v40);
                      v190 = *(&tcm + *v38);
                      v191 = (v189 + 4);
                      if (((*(v189 + 4 + ((v190 >> 3) & 0x1C)) >> v190) & 1) == 0)
                      {
                        goto LABEL_383;
                      }

                      v192 = 0;
                      v193 = v190 >> 6;
                      if ((v190 >> 6) > 1)
                      {
                        if (v193 != 2)
                        {
                          v201 = vcnt_s8(*(v189 + 20));
                          v201.i16[0] = vaddlv_u8(v201);
                          v192 = v201.u32[0];
                        }

                        v202 = vcnt_s8(*(v189 + 12));
                        v202.i16[0] = vaddlv_u8(v202);
                        v192 += v202.u32[0];
                      }

                      else
                      {
                        v194 = v190 >> 6;
                        if (!v193)
                        {
LABEL_336:
                          v204 = vcnt_s8((*&v191[v193] & ~(-1 << v190)));
                          v204.i16[0] = vaddlv_u8(v204);
                          v205 = *(v189 + 38 + 4 * (v204.u32[0] + v194));
                          if ((v205 & 1) == 0)
                          {
                            v199 = v205 >> 1;
                            if (v205 >> 1)
                            {
                              v198 = 0;
                              goto LABEL_344;
                            }

LABEL_383:
                            *v38 = -41;
                            v200 = *(v148 + 8);
                            v40 = v26;
LABEL_388:
                            v226 = mgetBase(v200, v40);
                            v227 = *(&tcm + *v38);
                            v228 = (v226 + 4);
                            if (((*(v226 + 4 + ((v227 >> 3) & 0x1C)) >> v227) & 1) == 0)
                            {
                              return;
                            }

                            v229 = 0;
                            v230 = v227 >> 6;
                            if ((v227 >> 6) > 1)
                            {
                              if (v230 != 2)
                              {
                                v237 = vcnt_s8(*(v226 + 20));
                                v237.i16[0] = vaddlv_u8(v237);
                                v229 = v237.u32[0];
                              }

                              v238 = vcnt_s8(*(v226 + 12));
                              v238.i16[0] = vaddlv_u8(v238);
                              v229 += v238.u32[0];
                            }

                            else
                            {
                              v231 = v227 >> 6;
                              if (!v230)
                              {
                                goto LABEL_406;
                              }
                            }

                            v239 = vcnt_s8(*v228);
                            v239.i16[0] = vaddlv_u8(v239);
                            v231 = v239.u32[0] + v229;
LABEL_406:
                            v240 = vcnt_s8((*&v228[v230] & ~(-1 << v227)));
                            v240.i16[0] = vaddlv_u8(v240);
                            v241 = *(v226 + 38 + 4 * (v240.u32[0] + v231));
                            if (v241)
                            {
                              if ((v241 & 3) == 1)
                              {
                                v236 = v241 >> 2;
                                if (!(v241 >> 2))
                                {
                                  return;
                                }

                                v235 = 1;
                              }

                              else
                              {
                                v236 = v241 >> 3;
                                if (!(v241 >> 3))
                                {
                                  return;
                                }

                                v235 = v241 & 7;
                              }
                            }

                            else
                            {
                              v236 = v241 >> 1;
                              if (!(v241 >> 1))
                              {
                                return;
                              }

                              v235 = 0;
                            }

LABEL_414:
                            if (v235)
                            {
                              v242 = 0x80u;
                              while (1)
                              {
                                *v270 = v242;
                                v243 = *(a1 + 8);
                                if (v235 != 3)
                                {
                                  break;
                                }

                                v251 = *(v243[1] + 1028 * v236 + 4 * *(&tcm + v242) + 4);
                                v252 = v251 >> 3;
                                v253 = v251 & 7;
                                if ((v251 & 3) == 1)
                                {
                                  v253 = 1;
                                  v252 = v251 >> 2;
                                }

                                if (v251)
                                {
                                  v235 = v253;
                                }

                                else
                                {
                                  v235 = 0;
                                }

                                if (v251)
                                {
                                  v254 = v252;
                                }

                                else
                                {
                                  v254 = v251 >> 1;
                                }

                                v250 = a6;
                                if (v254)
                                {
LABEL_447:
                                  if (v235)
                                  {
                                    *a2 = v254 | (v235 << 32);
                                    v262 = a2[1];
                                    v275 = *a2;
                                    v276 = v262;
                                    v277 = *(a2 + 4);
                                    _trie_resolve_sub_string_ignore_diacritics(a1, &v275, &a3[v11], v267, a5, v250, v266);
                                  }

                                  else
                                  {
                                    findAddFlatBucket(a1, v254, *(a2 + 1), *(a2 + 4), v250, v266);
                                  }

                                  v236 = v254;
                                  goto LABEL_417;
                                }

                                v235 = 3;
LABEL_417:
                                if (++v242 == 133)
                                {
                                  return;
                                }
                              }

                              if (v235 != 1)
                              {
                                goto LABEL_417;
                              }

                              v244 = mgetBase(v243, v236);
                              v245 = *(&tcm + v38[1]);
                              v246 = (v244 + 4);
                              if (((*(v244 + 4 + ((v245 >> 3) & 0x1C)) >> v245) & 1) == 0)
                              {
LABEL_416:
                                v235 = 1;
                                goto LABEL_417;
                              }

                              v247 = 0;
                              v248 = v245 >> 6;
                              if ((v245 >> 6) > 1)
                              {
                                v250 = a6;
                                if (v248 != 2)
                                {
                                  v255 = vcnt_s8(*(v244 + 20));
                                  v255.i16[0] = vaddlv_u8(v255);
                                  v247 = v255.u32[0];
                                }

                                v256 = vcnt_s8(*(v244 + 12));
                                v256.i16[0] = vaddlv_u8(v256);
                                v247 += v256.u32[0];
                              }

                              else
                              {
                                v249 = v245 >> 6;
                                v250 = a6;
                                if (!v248)
                                {
LABEL_438:
                                  v258 = vcnt_s8((*&v246[v248] & ~(-1 << v245)));
                                  v258.i16[0] = vaddlv_u8(v258);
                                  v259 = *(v244 + 38 + 4 * (v258.u32[0] + v249));
                                  v260 = v259 >> 3;
                                  v261 = v259 & 7;
                                  if ((v259 & 3) == 1)
                                  {
                                    v261 = 1;
                                    v260 = v259 >> 2;
                                  }

                                  if (v259)
                                  {
                                    v235 = v261;
                                  }

                                  else
                                  {
                                    v235 = 0;
                                  }

                                  if (v259)
                                  {
                                    v254 = v260;
                                  }

                                  else
                                  {
                                    v254 = v259 >> 1;
                                  }

                                  if (v254)
                                  {
                                    goto LABEL_447;
                                  }

                                  goto LABEL_416;
                                }
                              }

                              v257 = vcnt_s8(*v246);
                              v257.i16[0] = vaddlv_u8(v257);
                              v249 = v257.u32[0] + v247;
                              goto LABEL_438;
                            }

                            v31 = a1;
                            v32 = *(a2 + 1);
                            v33 = *(a2 + 4);
                            v35 = v236;
                            v36 = a6;
                            v34 = v122;
LABEL_38:

                            findAddFlatBucket(v31, v35, v32, v33, v36, v34);
                            return;
                          }

                          if ((v205 & 3) == 1)
                          {
                            v199 = v205 >> 2;
                            if (!(v205 >> 2))
                            {
                              goto LABEL_383;
                            }

                            v198 = 1;
                          }

                          else
                          {
                            v199 = v205 >> 3;
                            if (!(v205 >> 3))
                            {
                              goto LABEL_383;
                            }

                            v198 = v205 & 7;
                          }

LABEL_344:
                          v40 = v26;
                          goto LABEL_345;
                        }
                      }

                      v203 = vcnt_s8(*v191);
                      v203.i16[0] = vaddlv_u8(v203);
                      v194 = v203.u32[0] + v192;
                      goto LABEL_336;
                    }

                    if ((*(v137 + 38 + 4 * (v153.u32[0] + v142)) & 3) == 1)
                    {
                      v147 = v154 >> 2;
                      if (!(v154 >> 2))
                      {
                        goto LABEL_252;
                      }

                      v146 = 1;
                    }

                    else
                    {
                      v147 = v154 >> 3;
                      if (!(v154 >> 3))
                      {
                        goto LABEL_252;
                      }

                      v146 = *(v137 + 38 + 4 * (v153.u32[0] + v142)) & 7;
                    }

LABEL_246:
                    v40 = v26;
                    goto LABEL_247;
                  }
                }

                v152 = vcnt_s8(*v139);
                v152.i16[0] = vaddlv_u8(v152);
                v142 = v152.u32[0] + v140;
                goto LABEL_238;
              }

              if ((*(v125 + 38 + 4 * (v134.u32[0] + v130)) & 3) == 1)
              {
                v120 = v135 >> 2;
                if (!(v135 >> 2))
                {
                  goto LABEL_214;
                }

                v119 = 1;
              }

              else
              {
                v120 = v135 >> 3;
                if (!(v135 >> 3))
                {
                  goto LABEL_214;
                }

                v119 = v135 & 7;
              }

              goto LABEL_212;
            }
          }

          v133 = vcnt_s8(*v127);
          v133.i16[0] = vaddlv_u8(v133);
          v130 = v133.u32[0] + v128;
          goto LABEL_204;
        }

        if ((v95 & 3) == 1)
        {
          v89 = v95 >> 2;
          if (!(v95 >> 2))
          {
            goto LABEL_179;
          }

          v88 = 1;
        }

        else
        {
          v89 = v95 >> 3;
          if (!(v95 >> 3))
          {
            goto LABEL_179;
          }

          v88 = v95 & 7;
        }

LABEL_140:
        v40 = v26;
LABEL_141:
        if (v88)
        {
          v269 = v27 + 2;
          v96 = 0x80u;
          while (1)
          {
            v38[1] = v96;
            v102 = *(v52 + 8);
            if (v88 != 3)
            {
              break;
            }

            v97 = *(v102[1] + 1028 * v89 + 4 * *(&tcm + v96) + 4);
            v98 = v97 >> 3;
            v99 = v97 & 7;
            if ((v97 & 3) == 1)
            {
              v99 = 1;
              v98 = v97 >> 2;
            }

            if (v97)
            {
              v88 = v99;
            }

            else
            {
              v88 = 0;
            }

            if (v97)
            {
              v100 = v98;
            }

            else
            {
              v100 = v97 >> 1;
            }

            if (v100)
            {
LABEL_152:
              if (v88)
              {
                *a2 = v100 | (v88 << 32);
                v101 = a2[1];
                v275 = *a2;
                v276 = v101;
                v277 = *(a2 + 4);
                _trie_resolve_sub_string_ignore_diacritics(a1, &v275, &a3[v11], v267, a5, a6, v269);
              }

              else
              {
                findAddFlatBucket(a1, v100, *(a2 + 1), *(a2 + 4), a6, v269);
              }

              v89 = v100;
              v52 = a1;
              v40 = v26;
              v38 = v265;
              goto LABEL_155;
            }

            v88 = 3;
            v52 = a1;
LABEL_155:
            if (++v96 == 224)
            {
              goto LABEL_181;
            }
          }

          if (v88 != 1)
          {
            goto LABEL_155;
          }

          v103 = mgetBase(v102, v89);
          v104 = *(&tcm + v38[1]);
          v105 = (v103 + 4);
          if (((*(v103 + 4 + ((v104 >> 3) & 0x1C)) >> v104) & 1) == 0)
          {
            v88 = 1;
            v40 = v26;
            goto LABEL_155;
          }

          v106 = 0;
          v107 = v104 >> 6;
          v40 = v26;
          if ((v104 >> 6) > 1)
          {
            if (v107 != 2)
            {
              v109 = vcnt_s8(*(v103 + 20));
              v109.i16[0] = vaddlv_u8(v109);
              v106 = v109.u32[0];
            }

            v110 = vcnt_s8(*(v103 + 12));
            v110.i16[0] = vaddlv_u8(v110);
            v106 += v110.u32[0];
          }

          else
          {
            v108 = v104 >> 6;
            if (!v107)
            {
              goto LABEL_169;
            }
          }

          v111 = vcnt_s8(*v105);
          v111.i16[0] = vaddlv_u8(v111);
          v108 = v111.u32[0] + v106;
LABEL_169:
          v112 = vcnt_s8((*&v105[v107] & ~(-1 << v104)));
          v112.i16[0] = vaddlv_u8(v112);
          v113 = *(v103 + 38 + 4 * (v112.u32[0] + v108));
          v114 = v113 >> 3;
          v115 = v113 & 7;
          if ((v113 & 3) == 1)
          {
            v115 = 1;
            v114 = v113 >> 2;
          }

          if (v113)
          {
            v88 = v115;
          }

          else
          {
            v88 = 0;
          }

          if (v113)
          {
            v100 = v114;
          }

          else
          {
            v100 = v113 >> 1;
          }

          if (v100)
          {
            goto LABEL_152;
          }

          v88 = 1;
          v52 = a1;
          goto LABEL_155;
        }

        findAddFlatBucket(v52, v89, *(a2 + 1), *(a2 + 4), a6, v27 + 1);
        v40 = v26;
        goto LABEL_181;
      }
    }

    v93 = vcnt_s8(*v81);
    v93.i16[0] = vaddlv_u8(v93);
    v84 = v93.u32[0] + v82;
    goto LABEL_132;
  }

  if ((v58 & 3) == 1)
  {
    v51 = v58 >> 2;
    if (!(v58 >> 2))
    {
      goto LABEL_109;
    }

    v50 = 1;
  }

  else
  {
    v51 = v58 >> 3;
    if (!(v58 >> 3))
    {
      goto LABEL_109;
    }

    v50 = v58 & 7;
  }

LABEL_69:
  v40 = v26;
LABEL_70:
  if (v50)
  {
    v268 = v27 + 2;
    v59 = 0x80u;
    while (1)
    {
      v38[1] = v59;
      v65 = *(a1 + 8);
      if (v50 == 3)
      {
        break;
      }

      if (v50 != 1)
      {
        goto LABEL_85;
      }

      v66 = mgetBase(v65, v51);
      v67 = *(&tcm + v38[1]);
      v68 = (v66 + 4);
      if ((*(v66 + 4 + ((v67 >> 3) & 0x1C)) >> v67))
      {
        v69 = 0;
        v70 = v67 >> 6;
        v40 = v26;
        if ((v67 >> 6) > 1)
        {
          if (v70 != 2)
          {
            v72 = vcnt_s8(*(v66 + 20));
            v72.i16[0] = vaddlv_u8(v72);
            v69 = v72.u32[0];
          }

          v73 = vcnt_s8(*(v66 + 12));
          v73.i16[0] = vaddlv_u8(v73);
          v69 += v73.u32[0];
        }

        else
        {
          v71 = v67 >> 6;
          if (!v70)
          {
            goto LABEL_99;
          }
        }

        v74 = vcnt_s8(*v68);
        v74.i16[0] = vaddlv_u8(v74);
        v71 = v74.u32[0] + v69;
LABEL_99:
        v75 = vcnt_s8((*&v68[v70] & ~(-1 << v67)));
        v75.i16[0] = vaddlv_u8(v75);
        v76 = *(v66 + 38 + 4 * (v75.u32[0] + v71));
        v77 = v76 >> 3;
        v78 = v76 & 7;
        if ((v76 & 3) == 1)
        {
          v78 = 1;
          v77 = v76 >> 2;
        }

        if (v76)
        {
          v50 = v78;
        }

        else
        {
          v50 = 0;
        }

        if (v76)
        {
          v63 = v77;
        }

        else
        {
          v63 = v76 >> 1;
        }

        if (!v63)
        {
          v50 = 1;
          goto LABEL_85;
        }

LABEL_81:
        if (v50)
        {
          *a2 = v63 | (v50 << 32);
          v64 = a2[1];
          v275 = *a2;
          v276 = v64;
          v277 = *(a2 + 4);
          _trie_resolve_sub_string_ignore_diacritics(a1, &v275, &a3[v11], v267, a5, a6, v268);
        }

        else
        {
          findAddFlatBucket(a1, v63, *(a2 + 1), *(a2 + 4), a6, v268);
        }

        v51 = v63;
        goto LABEL_84;
      }

      v50 = 1;
LABEL_84:
      v40 = v26;
LABEL_85:
      if (++v59 == 192)
      {
        goto LABEL_111;
      }
    }

    v60 = *(v65[1] + 1028 * v51 + 4 * *(&tcm + v59) + 4);
    v61 = v60 >> 3;
    v62 = v60 & 7;
    if ((v60 & 3) == 1)
    {
      v62 = 1;
      v61 = v60 >> 2;
    }

    if (v60)
    {
      v50 = v62;
    }

    else
    {
      v50 = 0;
    }

    if (v60)
    {
      v63 = v61;
    }

    else
    {
      v63 = v60 >> 1;
    }

    if (!v63)
    {
      v50 = 3;
      goto LABEL_85;
    }

    goto LABEL_81;
  }

  findAddFlatBucket(a1, v51, *(a2 + 1), *(a2 + 4), a6, v27 + 1);
  v40 = v26;
LABEL_111:
  *v38 = -51;
  v52 = a1;
  v53 = *(a1 + 8);
  if (v13 == 3)
  {
    LODWORD(v27) = v263;
LABEL_118:
    v85 = *(v53[1] + 1028 * v40 + 140);
    v86 = v85 >> 3;
    v87 = v85 & 7;
    if ((v85 & 3) == 1)
    {
      v87 = 1;
      v86 = v85 >> 2;
    }

    if (v85)
    {
      v88 = v87;
    }

    else
    {
      v88 = 0;
    }

    if (v85)
    {
      v89 = v86;
    }

    else
    {
      v89 = v85 >> 1;
    }

    if (!v89)
    {
      *v38 = 45;
      v90 = *(v52 + 8);
      goto LABEL_183;
    }

    goto LABEL_141;
  }

  if (v13 == 1)
  {
    goto LABEL_113;
  }

LABEL_181:
  *v38 = 45;
  v90 = *(v52 + 8);
  if (v13 == 1)
  {
    LODWORD(v27) = v263;
    goto LABEL_195;
  }

  LODWORD(v27) = v263;
  if (v13 != 3)
  {
    LODWORD(v122) = v263 + 1;
    v121 = a6;
    goto LABEL_217;
  }

LABEL_183:
  v116 = *(v90[1] + 1028 * v40 + 144);
  v117 = v116 & 7;
  v118 = v116 >> 2;
  if ((v116 & 3) == 1)
  {
    v117 = 1;
  }

  else
  {
    v118 = v116 >> 3;
  }

  if (v116)
  {
    v119 = v117;
  }

  else
  {
    v119 = 0;
  }

  if (v116)
  {
    v120 = v118;
  }

  else
  {
    v120 = v116 >> 1;
  }

  v121 = a6;
  if (v120)
  {
LABEL_212:
    LODWORD(v122) = v27 + 1;
    if (v119)
    {
      *a2 = v120 | (v119 << 32);
      v136 = a2[1];
      v275 = *a2;
      v276 = v136;
      v277 = *(a2 + 4);
      _trie_resolve_sub_string_ignore_diacritics(v52, &v275, &a3[v11], v267, a5, v121, v27 + 1);
    }

    else
    {
      findAddFlatBucket(v52, v120, *(a2 + 1), *(a2 + 4), v121, v122);
    }

    v40 = v26;
LABEL_217:
    *v38 = -30;
    v122 = v122;
    v270 = &v121[v122];
    *v270 = 0x80;
    v266 = v27 + 2;
    v121[v266] = -112;
    v123 = *(v52 + 8);
    v124 = v123 + 1;
    if (v13 != 3)
    {
      if (v13 == 1)
      {
        goto LABEL_219;
      }

      goto LABEL_316;
    }

    goto LABEL_223;
  }

  *v38 = -30;
  v122 = v27 + 1;
  v270 = &a6[v122];
  *&a6[v122] = -28544;
  v266 = v27 + 2;
  v123 = *(v52 + 8);
  v124 = v123 + 1;
LABEL_223:
  v143 = *(v123[1] + 1028 * v40 + 908);
  v144 = v143 & 7;
  v145 = v143 >> 2;
  if ((v143 & 3) == 1)
  {
    v144 = 1;
  }

  else
  {
    v145 = v143 >> 3;
  }

  if (v143)
  {
    v146 = v144;
  }

  else
  {
    v146 = 0;
  }

  if (v143)
  {
    v147 = v145;
  }

  else
  {
    v147 = v143 >> 1;
  }

  if (!v147)
  {
    *v38 = -42;
    v148 = a1;
    v149 = *(a1 + 8);
    goto LABEL_322;
  }

LABEL_247:
  if (v146 != 1)
  {
    if (v146 != 3)
    {
      goto LABEL_284;
    }

    v155 = *(*v124 + 1028 * v147 + 4 * *(&tcm + v38[1]) + 4);
    if (v155)
    {
      if ((*(*v124 + 1028 * v147 + 4 * *(&tcm + v38[1]) + 4) & 3) == 1)
      {
        v147 = v155 >> 2;
        if (!(v155 >> 2))
        {
          goto LABEL_316;
        }

        v146 = 1;
      }

      else
      {
        v147 = v155 >> 3;
        if (!(v155 >> 3))
        {
          goto LABEL_316;
        }

        v146 = v155 & 7;
      }
    }

    else
    {
      v147 = v155 >> 1;
      if (!(v155 >> 1))
      {
        goto LABEL_316;
      }

      v146 = 0;
    }

    goto LABEL_279;
  }

  v156 = mgetBase(v123, v147);
  v157 = *(&tcm + v38[1]);
  v158 = (v156 + 4);
  if (((*(v156 + 4 + ((v157 >> 3) & 0x1C)) >> v157) & 1) == 0)
  {
    goto LABEL_315;
  }

  v159 = 0;
  v160 = v157 >> 6;
  v40 = v26;
  if ((v157 >> 6) > 1)
  {
    if (v160 != 2)
    {
      v162 = vcnt_s8(*(v156 + 20));
      v162.i16[0] = vaddlv_u8(v162);
      v159 = v162.u32[0];
    }

    v163 = vcnt_s8(*(v156 + 12));
    v163.i16[0] = vaddlv_u8(v163);
    v159 += v163.u32[0];
    goto LABEL_263;
  }

  v161 = v157 >> 6;
  if (v160)
  {
LABEL_263:
    v164 = vcnt_s8(*v158);
    v164.i16[0] = vaddlv_u8(v164);
    v161 = v164.u32[0] + v159;
  }

  v165 = vcnt_s8((*&v158[v160] & ~(-1 << v157)));
  v165.i16[0] = vaddlv_u8(v165);
  v166 = *(v156 + 38 + 4 * (v165.u32[0] + v161));
  v167 = v166 >> 3;
  if ((v166 & 3) == 1)
  {
    v168 = 1;
  }

  else
  {
    v168 = v166 & 7;
  }

  if ((v166 & 3) == 1)
  {
    v167 = v166 >> 2;
  }

  if (v166)
  {
    v146 = v168;
  }

  else
  {
    v146 = 0;
  }

  if (v166)
  {
    v147 = v167;
  }

  else
  {
    v147 = v166 >> 1;
  }

  if (!v147)
  {
    goto LABEL_316;
  }

LABEL_279:
  if (v146 != 1)
  {
    if (v146 == 3)
    {
      v169 = *(*v124 + 1028 * v147 + 4 * *(&tcm + v38[2]) + 4);
      v170 = a1;
      if (v169)
      {
        v171 = v267;
        v172 = v263;
        if ((*(*v124 + 1028 * v147 + 4 * *(&tcm + v38[2]) + 4) & 3) == 1)
        {
          v147 = v169 >> 2;
          if (!(v169 >> 2))
          {
            goto LABEL_316;
          }

          v173 = 1;
        }

        else
        {
          v147 = v169 >> 3;
          if (!(v169 >> 3))
          {
            goto LABEL_316;
          }

          v173 = v169 & 7;
        }
      }

      else
      {
        v147 = v169 >> 1;
        v171 = v267;
        v172 = v263;
        if (!(v169 >> 1))
        {
          goto LABEL_316;
        }

        v173 = 0;
      }

LABEL_312:
      if (v173)
      {
        *a2 = v147 | (v173 << 32);
        v188 = a2[1];
        v275 = *a2;
        v276 = v188;
        v277 = *(a2 + 4);
        _trie_resolve_sub_string_ignore_diacritics(v170, &v275, &a3[v11], v171, a5, v121, v172 + 3);
        goto LABEL_315;
      }

LABEL_314:
      findAddFlatBucket(v170, v147, *(a2 + 1), *(a2 + 4), v121, v122);
      goto LABEL_315;
    }

LABEL_284:
    v170 = a1;
    if (v146)
    {
      goto LABEL_316;
    }

    goto LABEL_314;
  }

  v174 = mgetBase(v123, v147);
  v175 = *(&tcm + v38[2]);
  v176 = (v174 + 4);
  if (((*(v174 + 4 + ((v175 >> 3) & 0x1C)) >> v175) & 1) == 0)
  {
LABEL_315:
    v40 = v26;
    goto LABEL_316;
  }

  v177 = 0;
  v178 = v174 + 38;
  v179 = v175 >> 6;
  v40 = v26;
  if ((v175 >> 6) > 1)
  {
    v171 = v267;
    v172 = v263;
    if (v179 != 2)
    {
      v181 = vcnt_s8(*(v174 + 20));
      v181.i16[0] = vaddlv_u8(v181);
      v177 = v181.u32[0];
    }

    v182 = vcnt_s8(*(v174 + 12));
    v182.i16[0] = vaddlv_u8(v182);
    v177 += v182.u32[0];
    v170 = a1;
    goto LABEL_296;
  }

  v180 = v175 >> 6;
  v170 = a1;
  v171 = v267;
  v172 = v263;
  if (v179)
  {
LABEL_296:
    v183 = vcnt_s8(*v176);
    v183.i16[0] = vaddlv_u8(v183);
    v180 = v183.u32[0] + v177;
  }

  v184 = vcnt_s8((*&v176[v179] & ~(-1 << v175)));
  v184.i16[0] = vaddlv_u8(v184);
  v185 = *(v178 + 4 * (v184.u32[0] + v180));
  v186 = v185 >> 3;
  if ((v185 & 3) == 1)
  {
    v187 = 1;
  }

  else
  {
    v187 = v185 & 7;
  }

  if ((v185 & 3) == 1)
  {
    v186 = v185 >> 2;
  }

  if (v185)
  {
    v173 = v187;
  }

  else
  {
    v173 = 0;
  }

  if (v185)
  {
    v147 = v186;
  }

  else
  {
    v147 = v185 >> 1;
  }

  if (v147)
  {
    goto LABEL_312;
  }

LABEL_316:
  *v38 = -42;
  v148 = a1;
  v149 = *(a1 + 8);
  if (v13 != 3)
  {
    if (v13 != 1)
    {
      goto LABEL_386;
    }

    goto LABEL_318;
  }

LABEL_322:
  v195 = *(v149[1] + 1028 * v40 + 860);
  v196 = v195 >> 3;
  v197 = v195 & 7;
  if ((v195 & 3) == 1)
  {
    v197 = 1;
    v196 = v195 >> 2;
  }

  if (v195)
  {
    v198 = v197;
  }

  else
  {
    v198 = 0;
  }

  if (v195)
  {
    v199 = v196;
  }

  else
  {
    v199 = v195 >> 1;
  }

  if (!v199)
  {
    *v38 = -41;
    v200 = *(v148 + 8);
    goto LABEL_392;
  }

LABEL_345:
  if (v198)
  {
    v264 = v122;
    v206 = 0x91u;
    while (1)
    {
      *v270 = v206;
      v212 = *(v148 + 8);
      if (v198 != 3)
      {
        break;
      }

      v207 = *(v212[1] + 1028 * v199 + 4 * *(&tcm + v206) + 4);
      v208 = v207 >> 3;
      v209 = v207 & 7;
      if ((v207 & 3) == 1)
      {
        v209 = 1;
        v208 = v207 >> 2;
      }

      if (v207)
      {
        v198 = v209;
      }

      else
      {
        v198 = 0;
      }

      if (v207)
      {
        v210 = v208;
      }

      else
      {
        v210 = v207 >> 1;
      }

      if (v210)
      {
LABEL_356:
        if (v198)
        {
          *a2 = v210 | (v198 << 32);
          v211 = a2[1];
          v275 = *a2;
          v276 = v211;
          v277 = *(a2 + 4);
          _trie_resolve_sub_string_ignore_diacritics(a1, &v275, &a3[v11], v267, a5, a6, v266);
        }

        else
        {
          findAddFlatBucket(a1, v210, *(a2 + 1), *(a2 + 4), a6, v266);
        }

        v199 = v210;
        v148 = a1;
        v40 = v26;
        v38 = v265;
        goto LABEL_359;
      }

      v198 = 3;
      v148 = a1;
LABEL_359:
      if (++v206 == 192)
      {
        v122 = v264;
        goto LABEL_386;
      }
    }

    if (v198 != 1)
    {
      goto LABEL_359;
    }

    v213 = mgetBase(v212, v199);
    v214 = *(&tcm + v38[1]);
    v215 = (v213 + 4);
    if (((*(v213 + 4 + ((v214 >> 3) & 0x1C)) >> v214) & 1) == 0)
    {
      v198 = 1;
      v40 = v26;
      goto LABEL_359;
    }

    v216 = 0;
    v217 = v214 >> 6;
    v40 = v26;
    if ((v214 >> 6) > 1)
    {
      if (v217 != 2)
      {
        v219 = vcnt_s8(*(v213 + 20));
        v219.i16[0] = vaddlv_u8(v219);
        v216 = v219.u32[0];
      }

      v220 = vcnt_s8(*(v213 + 12));
      v220.i16[0] = vaddlv_u8(v220);
      v216 += v220.u32[0];
    }

    else
    {
      v218 = v214 >> 6;
      if (!v217)
      {
        goto LABEL_373;
      }
    }

    v221 = vcnt_s8(*v215);
    v221.i16[0] = vaddlv_u8(v221);
    v218 = v221.u32[0] + v216;
LABEL_373:
    v222 = vcnt_s8((*&v215[v217] & ~(-1 << v214)));
    v222.i16[0] = vaddlv_u8(v222);
    v223 = *(v213 + 38 + 4 * (v222.u32[0] + v218));
    v224 = v223 >> 3;
    v225 = v223 & 7;
    if ((v223 & 3) == 1)
    {
      v225 = 1;
      v224 = v223 >> 2;
    }

    if (v223)
    {
      v198 = v225;
    }

    else
    {
      v198 = 0;
    }

    if (v223)
    {
      v210 = v224;
    }

    else
    {
      v210 = v223 >> 1;
    }

    if (v210)
    {
      goto LABEL_356;
    }

    v198 = 1;
    v148 = a1;
    goto LABEL_359;
  }

  findAddFlatBucket(v148, v199, *(a2 + 1), *(a2 + 4), a6, v122);
  v40 = v26;
LABEL_386:
  *v38 = -41;
  v200 = *(v148 + 8);
  if (v13 != 3)
  {
    if (v13 != 1)
    {
      return;
    }

    goto LABEL_388;
  }

LABEL_392:
  v232 = *(v200[1] + 1028 * v40 + 864);
  v233 = v232 >> 3;
  v234 = v232 & 7;
  if ((v232 & 3) == 1)
  {
    v234 = 1;
    v233 = v232 >> 2;
  }

  if (v232)
  {
    v235 = v234;
  }

  else
  {
    v235 = 0;
  }

  if (v232)
  {
    v236 = v233;
  }

  else
  {
    v236 = v232 >> 1;
  }

  if (v236)
  {
    goto LABEL_414;
  }
}

double oq_force_meta(uint64_t a1)
{
  if ((*a1 & 1) == 0)
  {
    if (*(a1 + 32))
    {
      v3 = __si_assert_copy_extra_2708(0);
      v4 = v3;
      v5 = "";
      if (v3)
      {
        v5 = v3;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "OQueue.h", 457, "queue->just_offsets.count == 0", v5);
      free(v4);
      if (__valid_fs(-1))
      {
        MEMORY[0xBAD] = -559038737;
        abort();
      }

      MEMORY[0xC00] = -559038737;
      abort();
    }

    free(*(a1 + 16));
    *a1 = 1;
    result = 0.0;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *(a1 + 44) = 0u;
    *(a1 + 64) = 0xFFFFFFFFLL;
    *(a1 + 8) = 0;
  }

  return result;
}

_DWORD *___bt_findBulk_block_invoke(_DWORD *result, uint64_t *a2)
{
  v2 = *(result + 4);
  v3 = *(v2 + 1176);
  if (v3 < result[10])
  {
    v5 = result;
    v6 = v3 + 1;
    *(v2 + 1176) = v3 + 1;
    v7 = (8 * **(*(v2 + 40) + 8 * v3)) & 0x7FFFFFFC0;
    if (v6 >= result[10])
    {
      LODWORD(v9) = 0x10000;
    }

    else
    {
      v8 = 0;
      v9 = 0x10000;
      do
      {
        v10 = (8 * **(*(v2 + 40) + 8 * v6)) & 0x7FFFFFFC0;
        if (v10 <= v7 + v9)
        {
          v9 = v10 - v7 + 0x10000;
        }

        else
        {
          v11 = *a2;
          v12 = v7 >> *(*a2 + 264);
          if (v12 < *(*a2 + 248) && (v13 = *(v11 + 8 * v12 + 272)) != 0 && (v14 = v13[2], v14 <= v7) && (v15 = v9 + v7, v13[3] >= v15) && *(v11 + 224) >= v15)
          {
            madvise((v13[1] + v7 - v14), v9, 3);
          }

          else
          {
            v22 = v7;
            v23 = v9;
            fd_read_advise(*(v11 + 216), &v22);
          }

          v8 += v9;
          v2 = *(v5 + 4);
          v9 = 0x10000;
          v7 = v10;
        }

        v6 = *(v2 + 1176) + 1;
        *(v2 + 1176) = v6;
      }

      while (v6 < v5[10] && v8 < 0x70000);
    }

    v16 = *a2;
    v17 = v7 >> *(*a2 + 264);
    if (v17 < *(*a2 + 248) && (v18 = *(v16 + 8 * v17 + 272)) != 0 && (v19 = v18[2], v19 <= v7) && (v20 = v7 + v9, v18[3] >= v20) && *(v16 + 224) >= v20)
    {
      v21 = (v18[1] + v7 - v19);

      return madvise(v21, v9, 3);
    }

    else
    {
      v22 = v7;
      v23 = v9;
      return fd_read_advise(*(v16 + 216), &v22);
    }
  }

  return result;
}

void ___bt_findBulk_block_invoke_81(uint64_t a1, unint64_t a2)
{
  v301 = *MEMORY[0x1E69E9840];
  if (*(*(a1 + 56) + 8 * a2) >= *(a1 + 112) || (*(*(*(a1 + 48) + 8) + 24) & 1) != 0)
  {
    return;
  }

  makeThreadId();
  v4 = *(a1 + 72);
  v277 = a1;
  v256 = *(a1 + 64);
  v257 = a2;
  v5 = (v256 + 1296 * a2);
  memcpy(v5, v4, 0x510uLL);
  if (v5[145])
  {
    v6 = *(v5 + 288);
    if (v6 >> 14)
    {
      v7 = 0;
    }

    else
    {
      v7 = 8 * v6 > *MEMORY[0x1E69E9AC8];
    }

    if (v7)
    {
      ++sTotal;
    }

    v8 = malloc_type_zone_calloc(queryZone, v6, 8uLL, 0x5BAF1CEAuLL);
    if (!v8 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "allocation function returned null", buf, 2u);
    }

    v5[145] = v8;
    if (*(v5 + 288))
    {
      v9 = MEMORY[0x1E69E9C10];
      v10 = 0;
      do
      {
        v12 = malloc_type_zone_malloc(queryZone, 0x48uLL, 0xA4971684uLL);
        if (!v12 && os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_fault_impl(&dword_1C278D000, v9, OS_LOG_TYPE_FAULT, "allocation function returned null", buf, 2u);
        }

        *&v5[145][8 * v10] = v12;
        v11 = *&v5[145][8 * v10];
        *v11 = 0;
        *(v11 + 44) = 0u;
        *(v11 + 16) = 0u;
        *(v11 + 32) = 0u;
        *(v11 + 64) = 0xFFFFFFFFLL;
        *(v11 + 8) = 0;
        ++v10;
      }

      while (v10 < *(v5 + 288));
    }
  }

  if (v5[146])
  {
    v13 = *(v5 + 288);
    if (!(v13 >> 14) && 8 * v13 > *MEMORY[0x1E69E9AC8])
    {
      ++sTotal;
    }

    v14 = malloc_type_zone_calloc(queryZone, v13, 8uLL, 0x5BAF1CEAuLL);
    if (!v14 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "allocation function returned null", buf, 2u);
    }

    v5[146] = v14;
    v15 = *(v5 + 288);
    if (v15)
    {
      v16 = 0;
      do
      {
        v19 = v15;
        if (*(v4[146] + 8 * v16))
        {
          if (*MEMORY[0x1E69E9AC8] <= 0x47uLL)
          {
            ++sTotal;
          }

          v17 = malloc_type_zone_calloc(queryZone, 1uLL, 0x48uLL, 0x5BAF1CEAuLL);
          if (!v17 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
          {
            *buf = 0;
            _os_log_fault_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "allocation function returned null", buf, 2u);
          }

          *&v5[146][8 * v16] = v17;
          v18 = *&v5[146][8 * v16];
          *v18 = 0;
          *(v18 + 44) = 0u;
          *(v18 + 16) = 0u;
          *(v18 + 32) = 0u;
          *(v18 + 64) = 0xFFFFFFFFLL;
          *(v18 + 8) = 0;
          v19 = *(v5 + 288);
        }

        ++v16;
        v15 = v19;
      }

      while (v16 < v19);
    }
  }

  v286 = 0;
  v20 = malloc_type_zone_malloc(queryZone, 0x18uLL, 0xA4971684uLL);
  v21 = a1;
  if (v20)
  {
    storage_reader_init(*(a1 + 80) + 160, v20);
    v22 = v257;
  }

  else
  {
    v22 = v257;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "allocation function returned null", buf, 2u);
    }

    storage_reader_init(*(a1 + 80) + 160, 0);
  }

  v23 = *(*(a1 + 56) + 8 * v22);
  v24 = v277[12];
  v25 = *(v277[11] + 8 * v22);
  if (v24)
  {
    if (*(v24 + 8) != 1)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Skipping because index is shut down", buf, 2u);
      }

      goto LABEL_325;
    }

    add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
    v27 = *(v24 + 64);
    v28 = v24;
    v29 = add_explicit;
  }

  else
  {
    v29 = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
    v27 = -1;
    v28 = 0;
  }

  v30 = v29;
  v31 = setThreadIdAndInfo(v27, sIndexExceptionCallbacks, v28, 0x20000000, v29 + 1);
  v285 = v31;
  v32 = threadData[9 * v31 + 1] + 320 * HIDWORD(v31);
  v283 = v33;
  v284 = HIDWORD(v31);
  v282 = v34;
  *(v32 + 216) = 0;
  v35 = *(v32 + 312);
  v36 = *(v32 + 224);
  if (v36)
  {
    v36(*(v32 + 288));
  }

  if (!_setjmp(v32))
  {
    v271 = v23;
    v273 = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
    v44 = setThreadIdAndInfo(-1, sAssertExceptionCallbacks, 0, 0, v273 + 1);
    v281 = v45;
    v280 = v46;
    v47 = threadData[9 * v44 + 1] + 320 * HIDWORD(v44);
    v272 = *(v47 + 312);
    v48 = *(v47 + 224);
    if (v48)
    {
      v48(*(v47 + 288));
    }

    if (_setjmp(v47))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", buf, 2u);
      }

      *(v47 + 312) = v272;
      if (__THREAD_SLOT_KEY[0])
      {
        v49 = pthread_getspecific(__THREAD_SLOT_KEY[0]);
        if (!v49)
        {
          goto LABEL_352;
        }
      }

      else
      {
        makeThreadId();
        v49 = pthread_getspecific(__THREAD_SLOT_KEY[0]);
        if (!v49)
        {
          goto LABEL_352;
        }
      }

      v50 = v49;
      if (v49 < 0x801)
      {
LABEL_70:
        v51 = &threadData[9 * v50];
        v53 = *(v51 - 4);
        v52 = (v51 - 2);
        if (v53 > v280)
        {
          v54 = v50 - 1;
          do
          {
            CIOnThreadCleanUpPop(v54);
          }

          while (*v52 > v280);
        }

        dropThreadId(v44, 1, v273 + 1);
        CICleanUpReset(v44, v281);
LABEL_322:
        v232 = threadData[9 * v285 + 1] + 320 * v284;
        *(v232 + 312) = v35;
        v233 = *(v232 + 232);
        if (v233)
        {
          v233(*(v232 + 288));
        }

        dropThreadId(v285, 0, v30 + 1);
        goto LABEL_325;
      }

LABEL_352:
      makeThreadId();
      v50 = pthread_getspecific(__THREAD_SLOT_KEY[0]);
      goto LABEL_70;
    }

    if (v20 && *(v20 + 16) != 1)
    {
      v67 = v273;
      v68 = v272;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Skipping because index is shut down", buf, 2u);
      }

      goto LABEL_319;
    }

    v270 = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
    v55 = setThreadIdAndInfo(-1, sStorageReaderExceptionCallbacks, v20, 0, v270 + 1);
    v279 = v56;
    v278 = v57;
    v58 = threadData[9 * v55 + 1] + 320 * HIDWORD(v55);
    v59 = *(v58 + 312);
    v60 = *(v58 + 224);
    if (v60)
    {
      v60(*(v58 + 288));
    }

    if (_setjmp(v58))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", buf, 2u);
      }

      *(v58 + 312) = v59;
      if (__THREAD_SLOT_KEY[0])
      {
        v61 = pthread_getspecific(__THREAD_SLOT_KEY[0]);
        if (!v61)
        {
          goto LABEL_354;
        }
      }

      else
      {
        makeThreadId();
        v61 = pthread_getspecific(__THREAD_SLOT_KEY[0]);
        if (!v61)
        {
          goto LABEL_354;
        }
      }

      v62 = v61;
      if (v61 < 0x801)
      {
LABEL_84:
        v63 = &threadData[9 * v62];
        v65 = *(v63 - 4);
        v64 = (v63 - 2);
        if (v65 > v278)
        {
          v66 = v62 - 1;
          do
          {
            CIOnThreadCleanUpPop(v66);
          }

          while (*v64 > v278);
        }

        dropThreadId(v55, 1, v270 + 1);
        CICleanUpReset(v55, v279);
LABEL_318:
        v67 = v273;
        v68 = v272;
LABEL_319:
        v230 = threadData[9 * v44 + 1] + 320 * HIDWORD(v44);
        *(v230 + 312) = v68;
        v231 = *(v230 + 232);
        if (v231)
        {
          v231(*(v230 + 288));
        }

        dropThreadId(v44, 0, v67 + 1);
        goto LABEL_322;
      }

LABEL_354:
      makeThreadId();
      v62 = pthread_getspecific(__THREAD_SLOT_KEY[0]);
      goto LABEL_84;
    }

    v269 = v59;
    v276 = v20;
    if (dword_1EBF46AD0 >= 5)
    {
      v247 = *__error();
      v248 = _SILogForLogForCategory(1);
      if (os_log_type_enabled(v248, OS_LOG_TYPE_DEFAULT))
      {
        v249 = *(v277[7] + 8 * v257);
        v250 = *(v277[11] + 8 * v257);
        *buf = 134218496;
        v297 = v257;
        *v298 = 2048;
        *&v298[2] = v249;
        *&v298[10] = 2048;
        *&v299 = v250;
        _os_log_impl(&dword_1C278D000, v248, OS_LOG_TYPE_DEFAULT, "Applier %lu starting at %lu ending at %lu", buf, 0x20u);
      }

      *__error() = v247;
      v21 = v277;
    }

    v69 = (v25 - v271);
    v70 = v271;
    if (v25 == v271)
    {
LABEL_315:
      v286 = 1;
      v228 = threadData[9 * v55 + 1] + 320 * HIDWORD(v55);
      *(v228 + 312) = v269;
      v229 = *(v228 + 232);
      if (v229)
      {
        v229(*(v228 + 288));
      }

      dropThreadId(v55, 0, v270 + 1);
      goto LABEL_318;
    }

    v71 = 0;
    __dst = v5 + 11;
    v267 = v5 + 11;
    v265 = v5 + 89;
    v263 = v5 + 91;
    v264 = v5 + 90;
    v275 = v30;
    v274 = v35;
    v268 = (v25 - v271);
    while (1)
    {
      v72 = **(v21 + 104);
      if ((v72 & 1) == 0)
      {
        break;
      }

LABEL_307:
      v225 = *(v21 + 40);
      if (v225)
      {
        (*(v225 + 16))(v225, v20);
      }

      if (++v71 >= v69 || (v72 & 1) != 0)
      {
        goto LABEL_315;
      }
    }

    v262 = **(v21 + 104);
    v73 = *(v21 + 116);
    v261 = v71;
    v74 = &v71[v70];
    v75 = *&v5[5][8 * &v71[v70]];
    v76 = *(v21 + 32);
    v77 = v75[1];
    v78 = 3;
    if ((*v75 & 3) == 0)
    {
      v78 = 2;
    }

    memcpy(__dst, &v75[v78], v77);
    v265[v77] = 0;
    v81 = *&v5[5][8 * v74];
    v82 = *v81 >> 3;
    if (dword_1EBF46AD0 >= 5)
    {
      v226 = *__error();
      v227 = _SILogForLogForCategory(1);
      if (os_log_type_enabled(v227, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218754;
        v297 = v261;
        *v298 = 1024;
        *&v298[2] = v82;
        *&v298[6] = 1024;
        *&v298[8] = v77;
        LOWORD(v299) = 2080;
        *(&v299 + 2) = v5 + 11;
        _os_log_impl(&dword_1C278D000, v227, OS_LOG_TYPE_DEFAULT, "bucket[%ld] %x %d %s\n", buf, 0x22u);
      }

      *__error() = v226;
      v83 = *&v5[5][8 * v74];
      v84 = *v83;
    }

    else
    {
      v83 = *&v5[5][8 * v74];
      v84 = *v81;
    }

    v20 = v276;
    v113 = (v84 & 3) == 0;
    v85 = 12;
    if (v113)
    {
      v85 = 8;
    }

    v86 = v83 + v83[1] + v85 + 1;
    if (*(v5 + 1289) == 1 && v73)
    {
      v87 = -1;
      v88 = 0;
      v89 = 0;
      do
      {
        v90 = &v5[143][v89];
        if ((v90[16] & 4) == 0 && **v90 == 42)
        {
          if (v87 == -1)
          {
            if (((*(v86 + (v88 >> 3)) >> (v88 & 7)) & 1) == 0)
            {
              break;
            }

            v87 = v88;
          }

          else
          {
            *(v86 + (v88 >> 3)) |= 1 << (v88 & 7);
          }
        }

        ++v88;
        v89 += 64;
      }

      while (v73 != v88);
    }

    v260 = v86;
    ptr = storage_reader_get_ptr(*v276, v276[1], v82 << 6, 8, v79, v80);
    if (ptr == -1 || (v94 = storage_reader_get_ptr(*v276, v276[1], v82 << 6, 64 << *(ptr + 2), v92, v93), v94 + 1 <= 1))
    {
      v95 = *__error();
      v96 = _SILogForLogForCategory(0);
      v35 = v274;
      if (os_log_type_enabled(v96, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v297 = "match_function";
        *v298 = 1024;
        *&v298[2] = 3688;
        _os_log_error_impl(&dword_1C278D000, v96, OS_LOG_TYPE_ERROR, "%s:%d: can't resolve flat store page", buf, 0x12u);
      }

      *__error() = v95;
      v30 = v275;
      goto LABEL_306;
    }

    v259 = v82 << 6;
    v299 = 0uLL;
    *buf = *(v5 + 12);
    v297 = 0;
    memset(v298, 0, sizeof(v298));
    v98 = *v94;
    v97 = v98;
    *&v299 = v94 + 4;
    v300 = v98;
    v99 = v260;
    if (v98)
    {
      v258 = v76;
      v100 = 0;
      v101 = 0;
      v102 = 0;
      while (1)
      {
        v106 = v101;
        v107 = v299;
        v108 = v102 + 1;
        v109 = v299 + v102;
        v110 = *(v299 + v102);
        if (*(v299 + v102) < 0)
        {
          if (v110 > 0xBF)
          {
            if (v110 > 0xDF)
            {
              if (v110 > 0xEF)
              {
                v111 = *(v299 + v108);
                v112 = v102 + 5;
              }

              else
              {
                v111 = ((v110 & 0xF) << 24) | (*(v299 + v108) << 16) | (*(v109 + 2) << 8) | *(v109 + 3);
                v112 = v102 + 4;
              }
            }

            else
            {
              v111 = ((v110 & 0x1F) << 16) | (*(v299 + v108) << 8) | *(v109 + 2);
              v112 = v102 + 3;
            }
          }

          else
          {
            v112 = v102 + 2;
            v111 = *(v299 + v108) | ((v110 & 0x3F) << 8);
          }
        }

        else
        {
          v111 = *(v299 + v102);
          v112 = v102 + 1;
        }

        if (v111)
        {
          v113 = 1;
        }

        else
        {
          v113 = v112 == 1;
        }

        if (!v113)
        {
          v243 = __si_assert_copy_extra_2708(0);
          v244 = v243;
          v245 = "";
          if (v243)
          {
            v245 = v243;
          }

          __message_assert("%s:%u: failed assertion '%s' %s %d, %ld", "FlatStore.h", 424, "entry->len > 0 || iter->pageCursor == v2_vInt32Size(0)", v245, 0, v112);
          v242 = v244;
          goto LABEL_347;
        }

        v114 = v112 + 1;
        v115 = v299 + v112;
        v116 = *(v299 + v112);
        if (*(v299 + v112) < 0)
        {
          if (v116 > 0xBF)
          {
            if (v116 > 0xDF)
            {
              if (v116 > 0xEF)
              {
                v117 = *(v299 + v114);
                v118 = v112 + 5;
              }

              else
              {
                v117 = ((v116 & 0xF) << 24) | (*(v299 + v114) << 16) | (*(v115 + 2) << 8) | *(v115 + 3);
                v118 = v112 + 4;
              }
            }

            else
            {
              v117 = ((v116 & 0x1F) << 16) | (*(v299 + v114) << 8) | *(v115 + 2);
              v118 = v112 + 3;
            }
          }

          else
          {
            v118 = v112 + 2;
            v117 = *(v299 + v114) | ((v116 & 0x3F) << 8);
          }
        }

        else
        {
          v117 = *(v299 + v112);
          v118 = v112 + 1;
        }

        v119 = v111;
        v120 = v118 + v111;
        *(&v299 + 1) = v120;
        if (v120 > v97)
        {
          break;
        }

        if (*buf)
        {
          v254 = v299;
          v121 = v297;
          v297 = v2_readVInt64_2873(v299, &v299 + 1) + v121;
          v101 = HIDWORD(v297);
          v122 = v297;
          VInt64_2873 = v2_readVInt64_2873(v299, &v299 + 1);
          if (VInt64_2873)
          {
            *v298 += VInt64_2873;
            v124 = v122;
            v100 = *v298;
          }

          else
          {
            v124 = v122;
            v100 = 0;
          }

          v99 = v260;
          v107 = v254;
        }

        else
        {
          v125 = v120 + 1;
          v126 = v299 + v120;
          v127 = *(v299 + v120);
          if (*(v299 + v120) < 0)
          {
            if (v127 > 0xBF)
            {
              if (v127 > 0xDF)
              {
                if (v127 > 0xEF)
                {
                  v128 = *(v299 + v125);
                  v125 = v120 + 5;
                }

                else
                {
                  v128 = ((v127 & 0xF) << 24) | (*(v299 + v125) << 16) | (*(v126 + 2) << 8) | *(v126 + 3);
                  v125 = v120 + 4;
                }
              }

              else
              {
                v128 = ((v127 & 0x1F) << 16) | (*(v299 + v125) << 8) | *(v126 + 2);
                v125 = v120 + 3;
              }
            }

            else
            {
              v128 = *(v299 + v125) | ((v127 & 0x3F) << 8);
              v125 = v120 + 2;
            }
          }

          else
          {
            v128 = *(v299 + v120);
          }

          *(&v299 + 1) = v125;
          v124 = v128;
          v101 = v106;
        }

        if (*(&v299 + 1) > v300)
        {
          v239 = __si_assert_copy_extra_2708(0);
          v240 = v239;
          v241 = "";
          if (v239)
          {
            v241 = v239;
          }

          __message_assert("%s:%u: failed assertion '%s' %s ", "FlatStore.h", 463, "iter->pageCursor <= iter->pageEnd", v241);
          v242 = v240;
LABEL_347:
          free(v242);
          if (__valid_fs(-1))
          {
            v246 = 2989;
          }

          else
          {
            v246 = 3072;
          }

          *v246 = -559038737;
          abort();
        }

        v129 = v111 + v77 + v117;
        if (v129 > 0x413)
        {
          v104 = v300;
          v105 = *(&v299 + 1);
          goto LABEL_301;
        }

        if (v111)
        {
          v130 = (v107 + v118);
          v131 = v267 + v77 + v117;
          do
          {
            v132 = *v130++;
            *v131++ = tcmr[v132];
            --v119;
          }

          while (v119);
        }

        __dst[v129] = 0;
        *(v5 + 285) = v129;
        if (v258)
        {
          v103 = (*(v258 + 16))();
          v99 = v260;
          if (!v103)
          {
            goto LABEL_305;
          }
        }

        else if (*(v5 + 288))
        {
          v133 = 0;
          v255 = v124 | (v101 << 32);
          while (1)
          {
            if (((*(v99 + (v133 >> 3)) >> (v133 & 7)) & 1) == 0)
            {
              goto LABEL_167;
            }

            v134 = &v5[143][64 * v133];
            v5[155] = v134;
            v135 = v5[145];
            if (v135)
            {
              v135 = *&v135[8 * v133];
            }

            v5[156] = v135;
            v136 = v5[146];
            if (v136)
            {
              v136 = *&v136[8 * v133];
            }

            v5[157] = v136;
            ++*(v5 + 320);
            v137 = *(v134 + 4);
            if (v137 & 0x610) != 0 || (**v5)
            {
              goto LABEL_167;
            }

            if ((v137 & 4) != 0)
            {
              break;
            }

            if ((v137 & 0x8000) == 0 && **v134 == 42 && !(*v134)[1])
            {
              v198 = termFieldMatch(*(v134 + 5), __dst, *(v5 + 285), *(v134 + 4));
              v99 = v260;
              if (!v198)
              {
                goto LABEL_167;
              }

              goto LABEL_255;
            }

            v138 = v134[5];
            if (!v134[4])
            {
              if (v138)
              {
LABEL_266:
                if (*__dst != 1)
                {
                  v207 = termPropertyID(__dst, *(v5 + 285));
                  v206 = 0;
                  v205 = v207;
                  goto LABEL_278;
                }

                v203 = *v265;
                if (v203 == 2)
                {
                  v204 = *v264;
                  if ((*v264 & 0x80000000) == 0)
                  {
                    v205 = *v264;
                    v206 = 3;
                    goto LABEL_278;
                  }

                  v208 = *v263;
                  if ((*v263 & 0x80000000) == 0)
                  {
                    v209 = v204 & 0x7F | (v208 << 7);
                    v210 = 4;
                    goto LABEL_277;
                  }

                  v215 = *(v5 + 92);
                  if ((*(v5 + 92) & 0x80000000) == 0)
                  {
                    v205 = ((v208 & 0x7F) << 7) | (v215 << 14) | v204 & 0x7F;
                    v206 = 5;
                    goto LABEL_278;
                  }

                  v217 = *(v5 + 93);
                  if ((*(v5 + 93) & 0x80000000) == 0)
                  {
                    v218 = ((v215 & 0x7F) << 14) | (v217 << 21) | ((v208 & 0x7F) << 7) | v204 & 0x7F;
                    v206 = 6;
                    goto LABEL_293;
                  }

                  v220 = *(v5 + 94);
                  if (v220 < 0)
                  {
                    goto LABEL_358;
                  }

                  v221 = ((v217 & 0x7F) << 21) | (v220 << 28) | ((v215 & 0x7F) << 14) | ((v208 & 0x7F) << 7) | v204 & 0x7F;
                  v206 = 7;
LABEL_298:
                  v205 = v221;
                }

                else
                {
                  if ((v203 & 0x80) == 0)
                  {
                    v205 = *v265;
                    v206 = 2;
                    goto LABEL_278;
                  }

                  v211 = *v264;
                  if (*v264 < 0)
                  {
                    v216 = *v263;
                    if (*v263 < 0)
                    {
                      v219 = *(v5 + 92);
                      if (*(v5 + 92) < 0)
                      {
                        v222 = *(v5 + 93);
                        if (v222 < 0)
                        {
LABEL_358:
                          v251 = __si_assert_copy_extra_2708(0);
                          v252 = v251;
                          v253 = "";
                          if (v251)
                          {
                            v253 = v251;
                          }

                          __message_assert("%s:%u: failed assertion '%s' %s readVInt32: exceeds max size for uint32_t", "VIntUtils.h", 342, "(b4 & 0x80) == 0", v253);
                          free(v252);
                          if (__valid_fs(-1))
                          {
                            MEMORY[0xBAD] = -559038737;
                            abort();
                          }

                          MEMORY[0xC00] = -559038737;
                          abort();
                        }

                        v221 = ((v219 & 0x7F) << 21) | (v222 << 28) | ((v216 & 0x7F) << 14) | ((v211 & 0x7F) << 7) | v203 & 0x7F;
                        v206 = 6;
                        goto LABEL_298;
                      }

                      v218 = ((v216 & 0x7F) << 14) | (v219 << 21) | ((v211 & 0x7F) << 7) | v203 & 0x7F;
                      v206 = 5;
LABEL_293:
                      v205 = v218;
                    }

                    else
                    {
                      v205 = ((v211 & 0x7F) << 7) | (v216 << 14) | v203 & 0x7F;
                      v206 = 4;
                    }
                  }

                  else
                  {
                    v209 = v203 & 0x7F | (v211 << 7);
                    v210 = 3;
LABEL_277:
                    v212 = v210;
                    v205 = v209;
                    v206 = v212;
                  }
                }

LABEL_278:
                v99 = v260;
                if (*(v134 + 5) == v205)
                {
                  v213 = (*(v5 + 285) - v206);
                  while (v213 >= 1)
                  {
                    v214 = __dst[v206 - 1 + v213];
                    if (v214 > 5)
                    {
                      TermIDsContextMatchPatternsReg = __findTermIDsContextMatchPatternsRegExMatch(*(v5[155] + 5), v267 + v206, v213);
                      goto LABEL_183;
                    }

                    v213 = (v213 - 1);
                    if ((v214 & 5) != 1)
                    {
                      goto LABEL_167;
                    }
                  }
                }

                goto LABEL_167;
              }

              v151 = *(v5 + 285);
              if (*(v134 + 5) == 1)
              {
                v152 = termPropertyID(__dst, v151);
                v99 = v260;
                if (v152 != 1)
                {
                  goto LABEL_167;
                }

                v151 = *(v5 + 285);
              }

              v153 = *v134;
              v154 = *v134;
              v155 = *(v134 + 6);
              v156 = **v134;
              if (v156 > 4)
              {
                if (v156 == 42)
                {
                  v189 = termPropertyID(__dst, v151);
                  v99 = v260;
                  v165 = (v5 + 11);
                  if (v189 == 2)
                  {
                    goto LABEL_167;
                  }
                }

                else
                {
                  v165 = (v5 + 11);
                }
              }

              else
              {
                if (v156 != *__dst)
                {
                  goto LABEL_167;
                }

                v157 = (v153 + 1);
                v158 = *(v153 + 1);
                if (v158 != *v265)
                {
                  goto LABEL_167;
                }

                v159 = v158;
                v160 = v157;
                v161 = v5 + 90;
                if (v158 == 2)
                {
                  v164 = v154[2];
                  v163 = v154 + 2;
                  v162 = v164;
                  if (v164 != *v264)
                  {
                    goto LABEL_167;
                  }

                  v159 = v162;
                  v160 = v163;
                  v161 = v5 + 91;
                }

                v154 = v160 + 1;
                if (v159 < 0)
                {
                  v200 = *v154;
                  if (v200 != *v161)
                  {
                    goto LABEL_167;
                  }

                  v154 = v160 + 2;
                  if (v200 < 0)
                  {
                    v201 = *v154;
                    if (v201 != v161[1])
                    {
                      goto LABEL_167;
                    }

                    if (v201 < 0)
                    {
                      v202 = v160[3];
                      if (v202 < 0 || v161[2] != v202)
                      {
                        goto LABEL_167;
                      }

                      v165 = v161 + 3;
                      v154 = v160 + 4;
                    }

                    else
                    {
                      v165 = v161 + 2;
                      v154 = v160 + 3;
                    }
                  }

                  else
                  {
                    v165 = v161 + 1;
                  }
                }

                else
                {
                  v165 = v161;
                }
              }

              v199 = matche(v154, v165, v155, 0, 0);
              v99 = v260;
              if (!v199)
              {
                goto LABEL_167;
              }

              goto LABEL_255;
            }

            if (v138)
            {
              goto LABEL_266;
            }

            v139 = termFieldMatch(*(v134 + 5), __dst, *(v5 + 285), *(v134 + 4));
            v99 = v260;
            if (v139)
            {
              *v287 = 0;
              TermIDsContextMatchPatternsReg = icu_search_match();
LABEL_183:
              v99 = v260;
              if (TermIDsContextMatchPatternsReg)
              {
                v141 = 1;
LABEL_166:
                findHandleMatch(v5, v255, v100, __dst, *(v5 + 285), v141);
                v99 = v260;
              }
            }

LABEL_167:
            if (++v133 >= *(v5 + 288))
            {
              goto LABEL_118;
            }
          }

          v142 = *__dst;
          if ((v142 - 2) > 2 || v142 != **v134)
          {
            goto LABEL_167;
          }

          v143 = *v134 + 1;
          if ((v137 & 0x20) != 0)
          {
            v166 = (v256 + 1296 * v257 + 89);
            do
            {
              v168 = *v166++;
              v167 = v168;
              v170 = *v143++;
              v169 = v170;
              if (v167)
              {
                v171 = v167 == v169;
              }

              else
              {
                v171 = 0;
              }
            }

            while (v171);
            v172 = v169 != 0;
            v173 = v167 < v169;
            if (v167)
            {
              v174 = v173;
            }

            else
            {
              v174 = v172;
            }

            if (v174)
            {
              goto LABEL_167;
            }
          }

          else
          {
            v144 = (v256 + 1296 * v257 + 89);
            do
            {
              v146 = *v144++;
              v145 = v146;
              v148 = *v143++;
              v147 = v148;
              if (v145)
              {
                v149 = v145 == v147;
              }

              else
              {
                v149 = 0;
              }
            }

            while (v149);
            if (v145)
            {
              v150 = v145 >= v147;
            }

            else
            {
              v150 = 0;
            }

            if (!v150)
            {
              goto LABEL_167;
            }
          }

          v175 = *__dst;
          v176 = v134[1];
          v177 = *v176;
          v178 = v142 == 0;
          v179 = v142 != v177 || v142 == 0;
          if ((v137 & 0x40) != 0)
          {
            if (!v179)
            {
              v190 = v176 + 1;
              v191 = (v256 + 1296 * v257 + 89);
              do
              {
                v193 = *v191++;
                v192 = v193;
                v194 = v193 == 0;
                v196 = *v190++;
                v195 = v196;
                if (v192)
                {
                  v197 = v192 == v195;
                }

                else
                {
                  v197 = 0;
                }
              }

              while (v197);
              v177 = v195;
              v175 = v192;
              LOBYTE(v178) = v194;
            }

            if (v175 >= v177 && !v178)
            {
              goto LABEL_167;
            }
          }

          else
          {
            if (!v179)
            {
              v180 = v176 + 1;
              v181 = (v256 + 1296 * v257 + 89);
              do
              {
                v183 = *v181++;
                v182 = v183;
                v184 = v183 == 0;
                v186 = *v180++;
                v185 = v186;
                if (v182)
                {
                  v187 = v182 == v185;
                }

                else
                {
                  v187 = 0;
                }
              }

              while (v187);
              v177 = v185;
              v175 = v182;
              v178 = v184;
            }

            if (v177)
            {
              v188 = -1;
            }

            else
            {
              v188 = 0;
            }

            if (!v178)
            {
              v188 = (v175 < v177) << 31;
            }

            if ((v188 & 0x80000000) == 0)
            {
              goto LABEL_167;
            }
          }

LABEL_255:
          if ((v137 & 0x8000) != 0)
          {
            goto LABEL_167;
          }

          v141 = 0;
          goto LABEL_166;
        }

LABEL_118:
        v102 = *(&v299 + 1);
        v97 = v300;
        v104 = v300;
        v105 = *(&v299 + 1);
        if (*(&v299 + 1) >= v300)
        {
          goto LABEL_301;
        }
      }

      v104 = v97;
      v105 = v120;
LABEL_301:
      if (v105 != v104)
      {
        v223 = *__error();
        v224 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v224, OS_LOG_TYPE_ERROR))
        {
          *v287 = 136316162;
          *&v287[4] = "match_function";
          v288 = 1024;
          v289 = 3726;
          v290 = 2048;
          v291 = v259;
          v292 = 2048;
          v293 = v105;
          v294 = 2048;
          v295 = v104;
          _os_log_error_impl(&dword_1C278D000, v224, OS_LOG_TYPE_ERROR, "%s:%d: invalid flat store page (0x%llx). cursor(%ld) != end(%ld)", v287, 0x30u);
        }

        *__error() = v223;
      }
    }

LABEL_305:
    v20 = v276;
    v21 = v277;
    v30 = v275;
    v35 = v274;
LABEL_306:
    v70 = v271;
    v69 = v268;
    v72 = v262;
    v71 = v261;
    goto LABEL_307;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", buf, 2u);
  }

  *(v32 + 312) = v35;
  if ((~*(v32 + 212) & 0xA0000000) == 0)
  {
    v37 = *(v32 + 288);
    if (v37)
    {
      _CIMakeInvalid(v37);
    }
  }

  if (__THREAD_SLOT_KEY[0])
  {
    v38 = pthread_getspecific(__THREAD_SLOT_KEY[0]);
    if (!v38)
    {
LABEL_343:
      makeThreadId();
      v39 = pthread_getspecific(__THREAD_SLOT_KEY[0]);
      goto LABEL_56;
    }
  }

  else
  {
    makeThreadId();
    v38 = pthread_getspecific(__THREAD_SLOT_KEY[0]);
    if (!v38)
    {
      goto LABEL_343;
    }
  }

  v39 = v38;
  if (v38 >= 0x801)
  {
    goto LABEL_343;
  }

LABEL_56:
  v40 = &threadData[9 * v39];
  v42 = *(v40 - 4);
  v41 = (v40 - 2);
  if (v42 > v282)
  {
    v43 = v39 - 1;
    do
    {
      CIOnThreadCleanUpPop(v43);
    }

    while (*v41 > v282);
  }

  dropThreadId(v285, 1, v30 + 1);
  CICleanUpReset(v285, v283);
LABEL_325:
  v234 = *(v20 + 1);
  if (v234 && atomic_fetch_add(v234 + 2, 0xFFFFFFFF) == 1)
  {
    for (i = 73; i != 585; ++i)
    {
      v236 = *&v234[2 * i];
      if (v236)
      {
        v237 = *&v234[2 * i];
        if (atomic_fetch_add(v236, 0xFFFFFFFF) == 1)
        {
          if ((*(v237 + 8) + 1) >= 2)
          {
            v238 = v237;
            munmap(*(v237 + 8), *(v237 + 24) - *(v237 + 16));
            v237 = v238;
          }

          free(v237);
        }

        *&v234[2 * i] = 0;
      }
    }

    OSAtomicEnqueue(&availableReaders, v234, 0);
  }

  free(v20);
  if ((v286 & 1) == 0)
  {
    *(*(*(v21 + 48) + 8) + 24) = 1;
  }
}

unint64_t v2_readVInt64_2873(uint64_t a1, unint64_t *a2)
{
  v2 = *a2;
  if (*a2 == -1)
  {
    return 0;
  }

  v3 = v2 + 1;
  v5 = (a1 + v2);
  v6 = *(a1 + v2);
  result = *(a1 + v2);
  if ((v6 & 0x80000000) == 0)
  {
    *a2 = v3;
    return result;
  }

  if (v6 <= 0xBFu)
  {
    if (v2 != -2)
    {
      result = *(a1 + v3) | ((result & 0x3F) << 8);
      *a2 = v2 + 2;
      return result;
    }

    return 0;
  }

  if (v6 <= 0xDFu)
  {
    if (v2 <= 0xFFFFFFFFFFFFFFFCLL)
    {
      result = ((result & 0x1F) << 16) | (*(a1 + v3) << 8) | v5[2];
      *a2 = v2 + 3;
      return result;
    }

    return 0;
  }

  if (v6 <= 0xEFu)
  {
    if (v2 <= 0xFFFFFFFFFFFFFFFBLL)
    {
      result = ((result & 0xF) << 24) | (*(a1 + v3) << 16) | (v5[2] << 8) | v5[3];
      *a2 = v2 + 4;
      return result;
    }

    return 0;
  }

  if (v6 <= 0xF7u)
  {
    if (v2 <= 0xFFFFFFFFFFFFFFFALL)
    {
      result = ((result & 7) << 32) | (*(a1 + v3) << 24) | (v5[2] << 16) | (v5[3] << 8) | v5[4];
      *a2 = v2 + 5;
      return result;
    }

    return 0;
  }

  if (v6 <= 0xFBu)
  {
    if (v2 <= 0xFFFFFFFFFFFFFFF9)
    {
      result = ((result & 3) << 40) | (*(a1 + v3) << 32) | (v5[2] << 24) | (v5[3] << 16) | (v5[4] << 8) | v5[5];
      *a2 = v2 + 6;
      return result;
    }

    return 0;
  }

  if (v6 <= 0xFDu)
  {
    if (v2 <= 0xFFFFFFFFFFFFFFF8)
    {
      result = ((result & 1) << 48) | (*(a1 + v3) << 40) | (v5[2] << 32) | (v5[3] << 24) | (v5[4] << 16) | (v5[5] << 8) | v5[6];
      *a2 = v2 + 7;
      return result;
    }

    return 0;
  }

  if (v6 == 255)
  {
    if (v2 <= 0xFFFFFFFFFFFFFFF6)
    {
      result = *(a1 + v3);
      *a2 = v2 + 9;
      return result;
    }

    return 0;
  }

  if (v2 > 0xFFFFFFFFFFFFFFF7)
  {
    return 0;
  }

  result = (*(a1 + v3) << 48) | (v5[2] << 40) | (v5[3] << 32) | (v5[4] << 24) | (v5[5] << 16) | (v5[6] << 8) | v5[7];
  *a2 = v2 + 8;
  return result;
}

uint64_t termPropertyID(unsigned __int8 *a1, unsigned int a2)
{
  if (a2 < 2)
  {
    return 0;
  }

  if (*a1 > 3u)
  {
    v6 = &a1[a2];
    v7 = v6 - 6;
    if (a2 < 6)
    {
      v7 = a1 + 1;
    }

    v8 = *(v6 - 1);
    if (v8 < 0)
    {
      return 0;
    }

    v10 = *(v6 - 2);
    v9 = v6 - 2;
    if (v10 == 1 && v8 == 3)
    {
      --v9;
    }

    if (v9 <= v7)
    {
LABEL_20:
      if (*v9 != 1)
      {
        return 0;
      }
    }

    else
    {
      while (*v9 < 0)
      {
        if (--v9 <= v7)
        {
          v9 = v7;
          goto LABEL_20;
        }
      }

      if (*v9 != 1)
      {
        return 0;
      }
    }

    result = v9[1];
    if (v9[1] < 0)
    {
      v12 = v9[2];
      if ((v9[2] & 0x80000000) == 0)
      {
        return result & 0x7F | (v12 << 7);
      }

      v13 = v9[3];
      if ((v9[3] & 0x80000000) == 0)
      {
        v14 = (v12 & 0x7F) << 7;
        goto LABEL_32;
      }

      v19 = v9[4];
      if ((v9[4] & 0x80000000) == 0)
      {
        v17 = ((v13 & 0x7F) << 14) | (v19 << 21) | ((v12 & 0x7F) << 7);
        return v17 & 0xFFFFFF80 | result & 0x7F;
      }

      v20 = v9[5];
      if ((v20 & 0x80000000) == 0)
      {
        v17 = ((v19 & 0x7F) << 21) | (v20 << 28) | ((v13 & 0x7F) << 14) | ((v12 & 0x7F) << 7);
        return v17 & 0xFFFFFF80 | result & 0x7F;
      }

      goto LABEL_41;
    }
  }

  else
  {
    v4 = a1[1];
    result = a1[1];
    if (v4 < 0)
    {
      v5 = a1[2];
      if ((a1[2] & 0x80000000) == 0)
      {
        return result & 0x7F | (v5 << 7);
      }

      v13 = a1[3];
      if ((a1[3] & 0x80000000) == 0)
      {
        v14 = (v5 & 0x7F) << 7;
LABEL_32:
        v17 = v14 | (v13 << 14);
        return v17 & 0xFFFFFF80 | result & 0x7F;
      }

      v15 = a1[4];
      if ((a1[4] & 0x80000000) == 0)
      {
        v16 = ((v13 & 0x7F) << 14) | (v15 << 21);
        return v16 & 0xFFFFC000 | ((v5 & 0x7F) << 7) | result & 0x7F;
      }

      v18 = a1[5];
      if ((v18 & 0x80000000) == 0)
      {
        v16 = ((v15 & 0x7F) << 21) | (v18 << 28) | ((v13 & 0x7F) << 14);
        return v16 & 0xFFFFC000 | ((v5 & 0x7F) << 7) | result & 0x7F;
      }

LABEL_41:
      v21 = __si_assert_copy_extra_2708(0);
      v22 = v21;
      v23 = "";
      if (v21)
      {
        v23 = v21;
      }

      __message_assert("%s:%u: failed assertion '%s' %s readVInt32: exceeds max size for uint32_t", "VIntUtils.h", 342, "(b4 & 0x80) == 0", v23);
      free(v22);
      if (__valid_fs(-1))
      {
        MEMORY[0xBAD] = -559038737;
        abort();
      }

      MEMORY[0xC00] = -559038737;
      abort();
    }
  }

  return result;
}

void findMatchTermExpansion(uint64_t a1, unsigned int a2, unsigned __int8 *a3)
{
  v4 = 0;
  v5 = a3 + 1;
  v6 = *a3;
  v29 = *(a1 + 52);
  v7 = a1 + 88;
  while (1)
  {
    v8 = *(a1 + 8);
    v9 = *(a1 + 52);
    v10 = *(&tcm + v6);
    if (HIDWORD(v9) == 1)
    {
      v17 = mgetBase(v8, v9);
      v18 = (v17 + 4);
      if (((*(v17 + 4 + 4 * (v10 >> 5)) >> v10) & 1) == 0)
      {
        goto LABEL_33;
      }

      v19 = 0;
      v20 = v10 >> 6;
      if (v10 >> 6 > 1)
      {
        if (v20 != 2)
        {
          v22 = vcnt_s8(*(v17 + 20));
          v22.i16[0] = vaddlv_u8(v22);
          v19 = v22.u32[0];
        }

        v23 = vcnt_s8(*(v17 + 12));
        v23.i16[0] = vaddlv_u8(v23);
        v19 += v23.u32[0];
      }

      else
      {
        v21 = v10 >> 6;
        if (!v20)
        {
LABEL_22:
          v25 = vcnt_s8((*&v18[v20] & ~(-1 << v10)));
          v25.i16[0] = vaddlv_u8(v25);
          v26 = *(v17 + 38 + 4 * (v25.u32[0] + v21));
          if (v26)
          {
            if ((*(v17 + 38 + 4 * (v25.u32[0] + v21)) & 3) == 1)
            {
              v15 = v26 >> 2;
              v16 = 0x100000000;
              if (!v15)
              {
                goto LABEL_33;
              }
            }

            else
            {
              v16 = (v26 & 7) << 32;
              v15 = v26 >> 3;
              if (!v15)
              {
                goto LABEL_33;
              }
            }
          }

          else
          {
            v16 = 0;
            v15 = v26 >> 1;
            if (!v15)
            {
              goto LABEL_33;
            }
          }

          goto LABEL_29;
        }
      }

      v24 = vcnt_s8(*v18);
      v24.i16[0] = vaddlv_u8(v24);
      v21 = v24.u32[0] + v19;
      goto LABEL_22;
    }

    if (HIDWORD(v9) != 3)
    {
      goto LABEL_33;
    }

    v11 = *(v8[1] + 1028 * v9 + 4 * v10 + 4);
    v12 = v11 >> 3;
    v13 = (v11 & 7) << 32;
    if ((v11 & 3) == 1)
    {
      v12 = v11 >> 2;
      v13 = 0x100000000;
    }

    v14 = (v11 & 1) == 0;
    v15 = (v11 & 1) != 0 ? v12 : v11 >> 1;
    v16 = v14 ? 0 : v13;
    if (!v15)
    {
      goto LABEL_33;
    }

LABEL_29:
    *(a1 + 52) = v15;
    *(a1 + 56) = HIDWORD(v16);
    v27 = *(a1 + 1140);
    *(a1 + 1140) = v27 + 1;
    *(v7 + v27) = v6;
    *(v7 + *(a1 + 1140)) = 0;
    if (!v16)
    {
      break;
    }

    v6 = v5[v4++];
    if (!v6)
    {
      *(a1 + 1224) += a2;
      findMatchTerm(a1, 0);
      *(a1 + 1224) -= a2;
      goto LABEL_33;
    }
  }

  LODWORD(v4) = v4 + 1;
  findAddFlatBucket(a1, v15, 0, 0, 0, 0);
LABEL_33:
  *(a1 + 1140) -= v4;
  *(a1 + 52) = v29;
}

void findMatchIgnoringDiacritics(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = HIDWORD(a2);
  if (HIDWORD(a2) == 1)
  {
    v7 = a2;
    v8 = mgetBase(v4, a2);
    if ((*(v8 + 8) & 2) == 0)
    {
      v9 = *(a1 + 8);
      goto LABEL_26;
    }

    v10 = vcnt_s8((*(v8 + 4) & 0x1FFFFFFFFLL));
    v10.i16[0] = vaddlv_u8(v10);
    v6 = *(v8 + 4 * v10.u32[0] + 38);
    goto LABEL_7;
  }

  if (HIDWORD(a2) == 3)
  {
    v6 = *(v4[1] + 1028 * a2 + 136);
LABEL_7:
    v11 = v6 >> 1;
    v12 = v6 >> 3;
    v13 = (v6 & 7) << 32;
    if ((v6 & 3) == 1)
    {
      v12 = v6 >> 2;
      v13 = 0x100000000;
    }

    if (v6)
    {
      v11 = v12;
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    if (v11)
    {
      v15 = v11;
      v16 = *(a1 + 1140);
      *(a1 + 1140) = v16 + 1;
      *(a1 + 88 + v16) = -52;
      if (v14)
      {
        v17 = HIDWORD(v14);
        if (HIDWORD(v14) == 1)
        {
          if (*(a1 + 72) <= v15)
          {
            v184 = __si_assert_copy_extra_2708(*(*(a1 + 8) + 112));
            v185 = v184;
            v186 = "";
            if (v184)
            {
              v186 = v184;
            }

            __message_assert("%s:%u: failed assertion '%s' %s next: %d, max: %d", "BurstTrie.c", 4457, "child.next < ctx->trie_max", v186, v15, *(a1 + 64));
            free(v185);
            if (__valid_fsp(*(*(a1 + 8) + 112)))
            {
              v187 = 2989;
            }

            else
            {
              v187 = 3072;
            }

            *v187 = -559038737;
            abort();
          }
        }

        else if (HIDWORD(v14) == 3 && *(a1 + 64) <= v15)
        {
          v18 = __si_assert_copy_extra_2708(*(*(a1 + 8) + 4576));
          v19 = v18;
          v20 = "";
          if (v18)
          {
            v20 = v18;
          }

          __message_assert("%s:%u: failed assertion '%s' %s next: %d, max: %d", "BurstTrie.c", 4455, "child.next < ctx->trie_fat_max", v20, v15, *(a1 + 64));
          free(v19);
          if (__valid_fsp(*(*(a1 + 8) + 4576)))
          {
            MEMORY[0xBAD] = -559038737;
            abort();
          }

          MEMORY[0xC00] = -559038737;
          abort();
        }

        v71 = 0x80u;
        while (1)
        {
          v72 = *(a1 + 8);
          v73 = *(&tcm + v71);
          if (v17 != 1)
          {
            if (v17 != 3)
            {
              goto LABEL_110;
            }

            v74 = *(v72[1] + 1028 * v15 + 4 * v73 + 4);
            v75 = v74 >> 3;
            v76 = (v74 & 7) << 32;
            if ((v74 & 3) == 1)
            {
              v75 = v74 >> 2;
              v76 = 0x100000000;
            }

            v77 = (v74 & 1) != 0 ? v75 : v74 >> 1;
            v78 = (*(v72[1] + 1028 * v15 + 4 * v73 + 4) & 1) != 0 ? v76 : 0;
            if (!v77)
            {
              goto LABEL_110;
            }

LABEL_138:
            v89 = *(a1 + 1140);
            *(a1 + 1140) = v89 + 1;
            *(a1 + 88 + v89) = v71;
            if (v78)
            {
              *(a1 + 52) = v77;
              *(a1 + 56) = HIDWORD(v78);
              findMatchTerm(a1, 0);
              *(a1 + 52) = a2;
            }

            else
            {
              findAddFlatBucket(a1, v77, 0, 0, 0, 0);
            }

            --*(a1 + 1140);
            goto LABEL_110;
          }

          v79 = mgetBase(v72, v15);
          v80 = (v79 + 4);
          if ((*(v79 + 4 + 4 * (v73 >> 5)) >> v73))
          {
            break;
          }

LABEL_110:
          if (++v71 == 192)
          {
            goto LABEL_22;
          }
        }

        v81 = 0;
        v82 = v73 >> 6;
        if (v73 >> 6 > 1)
        {
          if (v82 != 2)
          {
            v84 = vcnt_s8(*(v79 + 20));
            v84.i16[0] = vaddlv_u8(v84);
            v81 = v84.u32[0];
          }

          v85 = vcnt_s8(*(v79 + 12));
          v85.i16[0] = vaddlv_u8(v85);
          v81 += v85.u32[0];
        }

        else
        {
          v83 = v73 >> 6;
          if (!v82)
          {
LABEL_131:
            v87 = vcnt_s8((*&v80[v82] & ~(-1 << v73)));
            v87.i16[0] = vaddlv_u8(v87);
            v88 = *(v79 + 38 + 4 * (v87.u32[0] + v83));
            if (v88)
            {
              if ((v88 & 3) == 1)
              {
                v77 = v88 >> 2;
                v78 = 0x100000000;
                if (v88 >> 2)
                {
                  goto LABEL_138;
                }
              }

              else
              {
                v77 = v88 >> 3;
                v78 = (v88 & 7) << 32;
                if (v88 >> 3)
                {
                  goto LABEL_138;
                }
              }
            }

            else
            {
              v78 = 0;
              v77 = v88 >> 1;
              if (v88 >> 1)
              {
                goto LABEL_138;
              }
            }

            goto LABEL_110;
          }
        }

        v86 = vcnt_s8(*v80);
        v86.i16[0] = vaddlv_u8(v86);
        v83 = v86.u32[0] + v81;
        goto LABEL_131;
      }

      findAddFlatBucket(a1, v15, 0, 0, 0, 0);
LABEL_22:
      --*(a1 + 1140);
    }
  }

  v9 = *(a1 + 8);
  if (v5 == 3)
  {
    v23 = *(v9[1] + 1028 * a2 + 140);
    goto LABEL_30;
  }

  if (v5 != 1)
  {
    goto LABEL_72;
  }

  v7 = a2;
LABEL_26:
  v21 = mgetBase(v9, v7);
  if ((*(v21 + 8) & 4) == 0)
  {
    v22 = *(a1 + 8);
LABEL_75:
    v51 = mgetBase(v22, v7);
    if ((*(v51 + 8) & 8) == 0)
    {
      v52 = *(a1 + 8);
      goto LABEL_91;
    }

    v54 = vcnt_s8((*(v51 + 4) & 0x7FFFFFFFFLL));
    v54.i16[0] = vaddlv_u8(v54);
    v53 = *(v51 + 4 * v54.u32[0] + 38);
    goto LABEL_79;
  }

  v24 = vcnt_s8((*(v21 + 4) & 0x3FFFFFFFFLL));
  v24.i16[0] = vaddlv_u8(v24);
  v23 = *(v21 + 4 * v24.u32[0] + 38);
LABEL_30:
  v25 = v23 >> 1;
  v26 = v23 >> 3;
  v27 = (v23 & 7) << 32;
  if ((v23 & 3) == 1)
  {
    v26 = v23 >> 2;
    v27 = 0x100000000;
  }

  if (v23)
  {
    v25 = v26;
    v28 = v27;
  }

  else
  {
    v28 = 0;
  }

  if (v25)
  {
    v29 = v25;
    v30 = *(a1 + 1140);
    *(a1 + 1140) = v30 + 1;
    *(a1 + 88 + v30) = -51;
    if (v28)
    {
      v31 = HIDWORD(v28);
      v32 = 0x80u;
      while (1)
      {
        v33 = *(a1 + 8);
        v34 = *(&tcm + v32);
        if (v31 != 1)
        {
          if (v31 != 3)
          {
            goto LABEL_40;
          }

          v35 = *(v33[1] + 1028 * v29 + 4 * v34 + 4);
          v36 = v35 >> 3;
          v37 = (v35 & 7) << 32;
          if ((v35 & 3) == 1)
          {
            v36 = v35 >> 2;
            v37 = 0x100000000;
          }

          v38 = (v35 & 1) != 0 ? v36 : v35 >> 1;
          v39 = (*(v33[1] + 1028 * v29 + 4 * v34 + 4) & 1) != 0 ? v37 : 0;
          if (!v38)
          {
            goto LABEL_40;
          }

LABEL_68:
          v50 = *(a1 + 1140);
          *(a1 + 1140) = v50 + 1;
          *(a1 + 88 + v50) = v32;
          if (v39)
          {
            *(a1 + 52) = v38;
            *(a1 + 56) = HIDWORD(v39);
            findMatchTerm(a1, 0);
            *(a1 + 52) = a2;
          }

          else
          {
            findAddFlatBucket(a1, v38, 0, 0, 0, 0);
          }

          --*(a1 + 1140);
          goto LABEL_40;
        }

        v40 = mgetBase(v33, v29);
        v41 = (v40 + 4);
        if ((*(v40 + 4 + 4 * (v34 >> 5)) >> v34))
        {
          break;
        }

LABEL_40:
        if (++v32 == 224)
        {
          goto LABEL_71;
        }
      }

      v42 = 0;
      v43 = v34 >> 6;
      if (v34 >> 6 > 1)
      {
        if (v43 != 2)
        {
          v45 = vcnt_s8(*(v40 + 20));
          v45.i16[0] = vaddlv_u8(v45);
          v42 = v45.u32[0];
        }

        v46 = vcnt_s8(*(v40 + 12));
        v46.i16[0] = vaddlv_u8(v46);
        v42 += v46.u32[0];
      }

      else
      {
        v44 = v34 >> 6;
        if (!v43)
        {
LABEL_61:
          v48 = vcnt_s8((*&v41[v43] & ~(-1 << v34)));
          v48.i16[0] = vaddlv_u8(v48);
          v49 = *(v40 + 38 + 4 * (v48.u32[0] + v44));
          if (v49)
          {
            if ((v49 & 3) == 1)
            {
              v38 = v49 >> 2;
              v39 = 0x100000000;
              if (v49 >> 2)
              {
                goto LABEL_68;
              }
            }

            else
            {
              v38 = v49 >> 3;
              v39 = (v49 & 7) << 32;
              if (v49 >> 3)
              {
                goto LABEL_68;
              }
            }
          }

          else
          {
            v39 = 0;
            v38 = v49 >> 1;
            if (v49 >> 1)
            {
              goto LABEL_68;
            }
          }

          goto LABEL_40;
        }
      }

      v47 = vcnt_s8(*v41);
      v47.i16[0] = vaddlv_u8(v47);
      v44 = v47.u32[0] + v42;
      goto LABEL_61;
    }

    findAddFlatBucket(a1, v29, 0, 0, 0, 0);
LABEL_71:
    --*(a1 + 1140);
  }

LABEL_72:
  v22 = *(a1 + 8);
  if (v5 == 3)
  {
    v53 = *(v22[1] + 1028 * a2 + 144);
LABEL_79:
    v55 = v53 >> 1;
    v56 = v53 >> 3;
    v57 = (v53 & 7) << 32;
    if ((v53 & 3) == 1)
    {
      v56 = v53 >> 2;
      v57 = 0x100000000;
    }

    if (v53)
    {
      v55 = v56;
      v58 = v57;
    }

    else
    {
      v58 = 0;
    }

    if (v55)
    {
      if (v58)
      {
        v59 = *(a1 + 1140);
        *(a1 + 1140) = v59 + 1;
        *(a1 + v59 + 88) = 45;
        findMatchTerm(a1, 0);
        --*(a1 + 1140);
      }

      else
      {
        findAddFlatBucket(a1, v55, 0, 0, 0, 0);
      }
    }

    goto LABEL_88;
  }

  if (v5 == 1)
  {
    v7 = a2;
    goto LABEL_75;
  }

LABEL_88:
  v52 = *(a1 + 8);
  if (v5 == 3)
  {
    v62 = *(v52[1] + 1028 * a2 + 908);
    v63 = v62 >> 1;
    v64 = v62 >> 3;
    v65 = (v62 & 7) << 32;
    if ((v62 & 3) == 1)
    {
      v64 = v62 >> 2;
      v65 = 0x100000000;
    }

    if (v62)
    {
      v63 = v64;
      v66 = v65;
    }

    else
    {
      v66 = 0;
    }

    if (v63)
    {
      goto LABEL_141;
    }

    goto LABEL_176;
  }

  if (v5 != 1)
  {
    goto LABEL_176;
  }

  v7 = a2;
LABEL_91:
  v60 = mgetBase(v52, v7);
  if ((*(v60 + 32) & 4) == 0)
  {
    v61 = *(a1 + 8);
    goto LABEL_179;
  }

  v67 = vcnt_s8(*(v60 + 4));
  v67.i16[0] = vaddlv_u8(v67);
  v68 = v67.u32[0] + vaddvq_s64(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(*(v60 + 12))))));
  v69 = vcnt_s8((*(v60 + 28) & 0x3FFFFFFFFLL));
  v69.i16[0] = vaddlv_u8(v69);
  v70 = *(v60 + 4 * (v69.u32[0] + v68) + 38);
  if ((v70 & 1) == 0)
  {
    v66 = 0;
    v63 = v70 >> 1;
    if (!v63)
    {
      goto LABEL_176;
    }

LABEL_141:
    v90 = v63;
    v91 = a1 + 88;
    v92 = *(a1 + 1140);
    *(a1 + 1140) = v92 + 1;
    *(a1 + 88 + v92) = -30;
    if (!v66)
    {
      findAddFlatBucket(a1, v90, 0, 0, 0, 0);
      goto LABEL_175;
    }

    v93 = *(a1 + 8);
    v94 = HIDWORD(v66);
    if (v94 == 1)
    {
      v110 = mgetBase(v93, v90);
      if ((*(v110 + 20) & 1) == 0)
      {
        goto LABEL_175;
      }

      v111 = *(v110 + 4 * vaddvq_s64(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(*(v110 + 4)))))) + 38);
      if (v111)
      {
        if ((v111 & 3) == 1)
        {
          v96 = v111 >> 2;
          v99 = 0x100000000;
        }

        else
        {
          v99 = (v111 & 7) << 32;
          v96 = v111 >> 3;
        }
      }

      else
      {
        v99 = 0;
        v96 = v111 >> 1;
      }
    }

    else
    {
      if (v94 != 3)
      {
        goto LABEL_175;
      }

      v95 = *(v93[1] + 1028 * v90 + 516);
      v96 = v95 >> 1;
      v97 = v95 >> 3;
      v98 = (v95 & 7) << 32;
      if ((v95 & 3) == 1)
      {
        v97 = v95 >> 2;
        v98 = 0x100000000;
      }

      if (v95)
      {
        v96 = v97;
        v99 = v98;
      }

      else
      {
        v99 = 0;
      }
    }

    if (v96)
    {
      v100 = v96;
      v101 = *(a1 + 1140);
      *(a1 + 1140) = v101 + 1;
      *(v91 + v101) = 0x80;
      if (v99)
      {
        v102 = *(a1 + 8);
        v103 = HIDWORD(v99);
        if (v103 == 1)
        {
          v112 = mgetBase(v102, v100);
          if (*(v112 + 22))
          {
            v113 = vcnt_s8(*(v112 + 20));
            v113.i16[0] = vaddlv_u8(v113);
            v114 = *(v112 + 4 * (v113.u32[0] + vaddvq_s64(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(*(v112 + 4))))))) + 38);
            if (v114)
            {
              if ((v114 & 3) == 1)
              {
                v105 = v114 >> 2;
                v108 = 0x100000000;
              }

              else
              {
                v108 = (v114 & 7) << 32;
                v105 = v114 >> 3;
              }
            }

            else
            {
              v108 = 0;
              v105 = v114 >> 1;
            }

LABEL_158:
            if (v105)
            {
              v109 = *(a1 + 1140);
              *(a1 + 1140) = v109 + 1;
              *(v91 + v109) = -112;
              if (v108)
              {
                *(a1 + 52) = v105;
                *(a1 + 56) = HIDWORD(v108);
                findMatchTerm(a1, 0);
                *(a1 + 52) = a2;
              }

              else
              {
                findAddFlatBucket(a1, v105, 0, 0, 0, 0);
              }

              --*(a1 + 1140);
            }
          }
        }

        else if (v103 == 3)
        {
          v104 = *(v102[1] + 1028 * v100 + 580);
          v105 = v104 >> 1;
          v106 = v104 >> 3;
          v107 = (v104 & 7) << 32;
          if ((v104 & 3) == 1)
          {
            v106 = v104 >> 2;
            v107 = 0x100000000;
          }

          if (v104)
          {
            v105 = v106;
            v108 = v107;
          }

          else
          {
            v108 = 0;
          }

          goto LABEL_158;
        }
      }

      else
      {
        findAddFlatBucket(a1, v100, 0, 0, 0, 0);
      }

      --*(a1 + 1140);
    }

LABEL_175:
    --*(a1 + 1140);
    goto LABEL_176;
  }

  if ((*(v60 + 4 * (v69.u32[0] + v68) + 38) & 3) != 1)
  {
    v66 = (v70 & 7) << 32;
    v63 = v70 >> 3;
    if (!v63)
    {
      goto LABEL_176;
    }

    goto LABEL_141;
  }

  v63 = v70 >> 2;
  v66 = 0x100000000;
  if (v63)
  {
    goto LABEL_141;
  }

LABEL_176:
  v61 = *(a1 + 8);
  if (v5 == 3)
  {
    v117 = *(v61[1] + 1028 * a2 + 860);
    v118 = v117 >> 1;
    v119 = v117 >> 3;
    v120 = (v117 & 7) << 32;
    if ((v117 & 3) == 1)
    {
      v119 = v117 >> 2;
      v120 = 0x100000000;
    }

    if (v117)
    {
      v118 = v119;
      v121 = v120;
    }

    else
    {
      v121 = 0;
    }

    if (!v118)
    {
      goto LABEL_231;
    }

    goto LABEL_195;
  }

  if (v5 == 1)
  {
    v7 = a2;
LABEL_179:
    v115 = mgetBase(v61, v7);
    if ((*(v115 + 30) & 0x40) == 0)
    {
      v116 = *(a1 + 8);
      goto LABEL_234;
    }

    v122 = vcnt_s8(*(v115 + 4));
    v122.i16[0] = vaddlv_u8(v122);
    v123 = v122.u32[0];
    v124 = vaddvq_s64(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(*(v115 + 12))))));
    v125 = v123 + *&v124;
    v124.i32[0] = *(v115 + 28) & 0x3FFFFF;
    v126 = vcnt_s8(v124);
    v126.i16[0] = vaddlv_u8(v126);
    v127 = *(v115 + 4 * (v126.u32[0] + v125) + 38);
    if ((v127 & 1) == 0)
    {
      v121 = 0;
      v118 = v127 >> 1;
      if (!v118)
      {
        goto LABEL_231;
      }

      goto LABEL_195;
    }

    if ((*(v115 + 4 * (v126.u32[0] + v125) + 38) & 3) == 1)
    {
      v118 = v127 >> 2;
      v121 = 0x100000000;
      if (!v118)
      {
        goto LABEL_231;
      }

      goto LABEL_195;
    }

    v121 = (v127 & 7) << 32;
    v118 = v127 >> 3;
    if (v118)
    {
LABEL_195:
      v128 = v118;
      v129 = *(a1 + 1140);
      *(a1 + 1140) = v129 + 1;
      *(a1 + 88 + v129) = -42;
      if (!v121)
      {
        findAddFlatBucket(a1, v128, 0, 0, 0, 0);
LABEL_230:
        --*(a1 + 1140);
        goto LABEL_231;
      }

      v130 = HIDWORD(v121);
      v131 = 0x91u;
      while (1)
      {
        v132 = *(a1 + 8);
        v133 = *(&tcm + v131);
        if (v130 != 1)
        {
          if (v130 != 3)
          {
            goto LABEL_199;
          }

          v134 = *(v132[1] + 1028 * v128 + 4 * v133 + 4);
          v135 = v134 >> 3;
          v136 = (v134 & 7) << 32;
          if ((v134 & 3) == 1)
          {
            v135 = v134 >> 2;
            v136 = 0x100000000;
          }

          v137 = (v134 & 1) != 0 ? v135 : v134 >> 1;
          v138 = (*(v132[1] + 1028 * v128 + 4 * v133 + 4) & 1) != 0 ? v136 : 0;
          if (!v137)
          {
            goto LABEL_199;
          }

LABEL_227:
          v149 = *(a1 + 1140);
          *(a1 + 1140) = v149 + 1;
          *(a1 + 88 + v149) = v131;
          if (v138)
          {
            *(a1 + 52) = v137;
            *(a1 + 56) = HIDWORD(v138);
            findMatchTerm(a1, 0);
            *(a1 + 52) = a2;
          }

          else
          {
            findAddFlatBucket(a1, v137, 0, 0, 0, 0);
          }

          --*(a1 + 1140);
          goto LABEL_199;
        }

        v139 = mgetBase(v132, v128);
        v140 = (v139 + 4);
        if ((*(v139 + 4 + 4 * (v133 >> 5)) >> v133))
        {
          break;
        }

LABEL_199:
        if (++v131 == 192)
        {
          goto LABEL_230;
        }
      }

      v141 = 0;
      v142 = v133 >> 6;
      if (v133 >> 6 > 1)
      {
        if (v142 != 2)
        {
          v144 = vcnt_s8(*(v139 + 20));
          v144.i16[0] = vaddlv_u8(v144);
          v141 = v144.u32[0];
        }

        v145 = vcnt_s8(*(v139 + 12));
        v145.i16[0] = vaddlv_u8(v145);
        v141 += v145.u32[0];
      }

      else
      {
        v143 = v133 >> 6;
        if (!v142)
        {
LABEL_220:
          v147 = vcnt_s8((*&v140[v142] & ~(-1 << v133)));
          v147.i16[0] = vaddlv_u8(v147);
          v148 = *(v139 + 38 + 4 * (v147.u32[0] + v143));
          if (v148)
          {
            if ((v148 & 3) == 1)
            {
              v137 = v148 >> 2;
              v138 = 0x100000000;
              if (v148 >> 2)
              {
                goto LABEL_227;
              }
            }

            else
            {
              v137 = v148 >> 3;
              v138 = (v148 & 7) << 32;
              if (v148 >> 3)
              {
                goto LABEL_227;
              }
            }
          }

          else
          {
            v138 = 0;
            v137 = v148 >> 1;
            if (v148 >> 1)
            {
              goto LABEL_227;
            }
          }

          goto LABEL_199;
        }
      }

      v146 = vcnt_s8(*v140);
      v146.i16[0] = vaddlv_u8(v146);
      v143 = v146.u32[0] + v141;
      goto LABEL_220;
    }
  }

LABEL_231:
  v116 = *(a1 + 8);
  if (v5 == 3)
  {
    v159 = *(v116[1] + 1028 * a2 + 864);
    v158 = v159 >> 1;
    v160 = v159 >> 3;
    v161 = (v159 & 7) << 32;
    if ((v159 & 3) == 1)
    {
      v160 = v159 >> 2;
      v161 = 0x100000000;
    }

    if (v159)
    {
      v158 = v160;
      v157 = v161;
    }

    else
    {
      v157 = 0;
    }

    goto LABEL_242;
  }

  if (v5 != 1)
  {
    return;
  }

  v7 = a2;
LABEL_234:
  v150 = mgetBase(v116, v7);
  if ((*(v150 + 30) & 0x80) == 0)
  {
    return;
  }

  v151 = vcnt_s8(*(v150 + 4));
  v151.i16[0] = vaddlv_u8(v151);
  v152 = v151.u32[0];
  v153 = vaddvq_s64(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(*(v150 + 12))))));
  v154 = v152 + *&v153;
  v153.i32[0] = *(v150 + 28) & 0x7FFFFF;
  v155 = vcnt_s8(v153);
  v155.i16[0] = vaddlv_u8(v155);
  v156 = *(v150 + 4 * (v155.u32[0] + v154) + 38);
  if (v156)
  {
    if ((*(v150 + 4 * (v155.u32[0] + v154) + 38) & 3) == 1)
    {
      v158 = v156 >> 2;
      v157 = 0x100000000;
    }

    else
    {
      v157 = (v156 & 7) << 32;
      v158 = v156 >> 3;
    }
  }

  else
  {
    v157 = 0;
    v158 = v156 >> 1;
  }

LABEL_242:
  if (v158)
  {
    v162 = v158;
    v163 = *(a1 + 1140);
    *(a1 + 1140) = v163 + 1;
    *(a1 + 88 + v163) = -41;
    if (v157)
    {
      v164 = HIDWORD(v157);
      v165 = 0x80u;
      while (1)
      {
        v166 = *(a1 + 8);
        v167 = *(&tcm + v165);
        if (v164 != 1)
        {
          if (v164 != 3)
          {
            goto LABEL_247;
          }

          v168 = *(v166[1] + 1028 * v162 + 4 * v167 + 4);
          v169 = v168 >> 3;
          v170 = (v168 & 7) << 32;
          if ((v168 & 3) == 1)
          {
            v169 = v168 >> 2;
            v170 = 0x100000000;
          }

          v171 = (v168 & 1) != 0 ? v169 : v168 >> 1;
          v172 = (*(v166[1] + 1028 * v162 + 4 * v167 + 4) & 1) != 0 ? v170 : 0;
          if (!v171)
          {
            goto LABEL_247;
          }

LABEL_275:
          v183 = *(a1 + 1140);
          *(a1 + 1140) = v183 + 1;
          *(a1 + 88 + v183) = v165;
          if (v172)
          {
            *(a1 + 52) = v171;
            *(a1 + 56) = HIDWORD(v172);
            findMatchTerm(a1, 0);
            *(a1 + 52) = a2;
          }

          else
          {
            findAddFlatBucket(a1, v171, 0, 0, 0, 0);
          }

          --*(a1 + 1140);
          goto LABEL_247;
        }

        v173 = mgetBase(v166, v162);
        v174 = (v173 + 4);
        if ((*(v173 + 4 + 4 * (v167 >> 5)) >> v167))
        {
          break;
        }

LABEL_247:
        if (++v165 == 133)
        {
          goto LABEL_280;
        }
      }

      v175 = 0;
      v176 = v167 >> 6;
      if (v167 >> 6 > 1)
      {
        if (v176 != 2)
        {
          v178 = vcnt_s8(*(v173 + 20));
          v178.i16[0] = vaddlv_u8(v178);
          v175 = v178.u32[0];
        }

        v179 = vcnt_s8(*(v173 + 12));
        v179.i16[0] = vaddlv_u8(v179);
        v175 += v179.u32[0];
      }

      else
      {
        v177 = v167 >> 6;
        if (!v176)
        {
LABEL_268:
          v181 = vcnt_s8((*&v174[v176] & ~(-1 << v167)));
          v181.i16[0] = vaddlv_u8(v181);
          v182 = *(v173 + 38 + 4 * (v181.u32[0] + v177));
          if (v182)
          {
            if ((v182 & 3) == 1)
            {
              v171 = v182 >> 2;
              v172 = 0x100000000;
              if (v182 >> 2)
              {
                goto LABEL_275;
              }
            }

            else
            {
              v171 = v182 >> 3;
              v172 = (v182 & 7) << 32;
              if (v182 >> 3)
              {
                goto LABEL_275;
              }
            }
          }

          else
          {
            v172 = 0;
            v171 = v182 >> 1;
            if (v182 >> 1)
            {
              goto LABEL_275;
            }
          }

          goto LABEL_247;
        }
      }

      v180 = vcnt_s8(*v174);
      v180.i16[0] = vaddlv_u8(v180);
      v177 = v180.u32[0] + v175;
      goto LABEL_268;
    }

    findAddFlatBucket(a1, v162, 0, 0, 0, 0);
LABEL_280:
    --*(a1 + 1140);
  }
}

uint64_t get_follows_pos(uint64_t a1, unsigned int a2)
{
  v2 = 0;
  v3 = (a1 + 4);
  v4 = a2 >> 6;
  if (a2 >> 6 > 1)
  {
    if (v4 != 2)
    {
      v6 = vcnt_s8(*(a1 + 20));
      v6.i16[0] = vaddlv_u8(v6);
      v2 = v6.i32[0];
    }

    v7 = vcnt_s8(*(a1 + 12));
    v7.i16[0] = vaddlv_u8(v7);
    v2 += v7.i32[0];
  }

  else
  {
    v5 = a2 >> 6;
    if (!v4)
    {
      goto LABEL_8;
    }
  }

  v8 = vcnt_s8(*v3);
  v8.i16[0] = vaddlv_u8(v8);
  v5 = v2 + v8.i32[0];
LABEL_8:
  v9 = vcnt_s8((*&v3[v4] & ~(-1 << a2)));
  v9.i16[0] = vaddlv_u8(v9);
  return v5 + v9.i32[0];
}

void findMatchTermChar(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v5 = *(a1 + 8);
  v6 = *(&tcm + a3);
  if (HIDWORD(a2) != 1)
  {
    if (HIDWORD(a2) != 3)
    {
      return;
    }

    v7 = *(v5[1] + 1028 * a2 + 4 * v6 + 4);
    v8 = v7 >> 1;
    v9 = v7 >> 3;
    v10 = (v7 & 7) << 32;
    if ((v7 & 3) == 1)
    {
      v9 = v7 >> 2;
      v10 = 0x100000000;
    }

    if (v7)
    {
      v8 = v9;
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    goto LABEL_21;
  }

  v12 = a3;
  v13 = mgetBase(v5, a2);
  v14 = (v13 + 4);
  if (((*(v13 + 4 + 4 * (v6 >> 5)) >> v6) & 1) == 0)
  {
    return;
  }

  LOBYTE(a3) = v12;
  v15 = 0;
  v16 = v6 >> 6;
  if (v6 >> 6 > 1)
  {
    if (v16 != 2)
    {
      v18 = vcnt_s8(*(v13 + 20));
      v18.i16[0] = vaddlv_u8(v18);
      v15 = v18.u32[0];
    }

    v19 = vcnt_s8(*(v13 + 12));
    v19.i16[0] = vaddlv_u8(v19);
    v15 += v19.u32[0];
    goto LABEL_15;
  }

  v17 = v6 >> 6;
  if (v16)
  {
LABEL_15:
    v20 = vcnt_s8(*v14);
    v20.i16[0] = vaddlv_u8(v20);
    v17 = v20.u32[0] + v15;
  }

  v21 = vcnt_s8((*&v14[v16] & ~(-1 << v6)));
  v21.i16[0] = vaddlv_u8(v21);
  v22 = *(v13 + 38 + 4 * (v21.u32[0] + v17));
  if (v22)
  {
    if ((*(v13 + 38 + 4 * (v21.u32[0] + v17)) & 3) == 1)
    {
      v8 = v22 >> 2;
      v11 = 0x100000000;
    }

    else
    {
      v11 = (v22 & 7) << 32;
      v8 = v22 >> 3;
    }
  }

  else
  {
    v11 = 0;
    v8 = v22 >> 1;
  }

LABEL_21:
  if (v8)
  {
    v23 = a1 + 88;
    v24 = *(a1 + 1140);
    *(a1 + 1140) = v24 + 1;
    *(v23 + v24) = a3;
    *(v23 + *(a1 + 1140)) = 0;
    ++*(a1 + 1224);
    if (v11)
    {
      *(a1 + 52) = v8;
      *(a1 + 56) = HIDWORD(v11);
      findMatchTerm(a1, 0);
      *(a1 + 52) = a2;
    }

    else
    {
      findAddFlatBucket(a1, v8, 0, 0, 0, 0);
    }

    --*(a1 + 1224);
    --*(a1 + 1140);
  }
}

unsigned __int8 *localizedFieldTermMatch(uint64_t a1, int a2, unsigned __int8 *a3, int a4, int a5)
{
  result = termFieldMatch(a2, a3, a4, a5);
  if (result)
  {
    return icu_search_match();
  }

  return result;
}

uint64_t termMatch(unsigned __int8 *a1, unsigned int a2, unsigned __int8 *a3, uint64_t a4)
{
  v4 = a1;
  v5 = *a3;
  if (v5 > 4)
  {
    if (v5 == 42)
    {
      v11 = a4;
      v12 = a3;
      v13 = termPropertyID(a1, a2);
      a3 = v12;
      a4 = v11;
      if (v13 == 2)
      {
        return 0;
      }
    }
  }

  else
  {
    if (v5 != *a1)
    {
      return 0;
    }

    v6 = a3 + 1;
    v7 = a3[1];
    if (v7 != a1[1])
    {
      return 0;
    }

    if (v7 == 2)
    {
      v10 = a3[2];
      v8 = a3 + 2;
      v9 = v10;
      if (v10 != a1[2])
      {
        return 0;
      }

      v4 = a1 + 3;
      v6 = v8;
      a3 = v8 + 1;
      if (v9 < 0)
      {
LABEL_12:
        v15 = *a3;
        if (v15 == *v4)
        {
          a3 = v6 + 2;
          if ((v15 & 0x80000000) == 0)
          {
            ++v4;
            goto LABEL_15;
          }

          v16 = *a3;
          if (v16 == v4[1])
          {
            if ((v16 & 0x80000000) == 0)
            {
              v4 += 2;
              a3 = v6 + 3;
              goto LABEL_15;
            }

            v17 = v6[3];
            if ((v17 & 0x80000000) == 0 && v4[2] == v17)
            {
              v4 += 3;
              a3 = v6 + 4;
              goto LABEL_15;
            }
          }
        }

        return 0;
      }
    }

    else
    {
      v4 = a1 + 2;
      a3 += 2;
      if ((v7 & 0x80) != 0)
      {
        goto LABEL_12;
      }
    }
  }

LABEL_15:

  return matche(a3, v4, a4, 0, 0);
}

uint64_t termNumberCompare(_BYTE *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a1 == 0;
  v4 = *a2;
  if (*a1)
  {
    v5 = v2 == v4;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    v6 = a2 + 1;
    v7 = a1 + 1;
    do
    {
      v8 = *v7++;
      v2 = v8;
      v3 = v8 == 0;
      v9 = *v6++;
      v4 = v9;
      if (v2)
      {
        v10 = v2 == v4;
      }

      else
      {
        v10 = 0;
      }
    }

    while (v10);
  }

  if (v4)
  {
    v11 = -1;
  }

  else
  {
    v11 = 0;
  }

  if (v2 < v4)
  {
    v12 = -1;
  }

  else
  {
    v12 = 1;
  }

  if (v3)
  {
    return v11;
  }

  else
  {
    return v12;
  }
}

void _findMatchTermWildcard(uint64_t a1, uint64_t a2, unint64_t a3, char a4, int a5)
{
  v6 = *(a1 + 1140);
  if (v6 >= 0x414)
  {
    v9 = __si_assert_copy_extra_2708(*(*(a1 + 8) + 4576));
    v10 = v9;
    v11 = "";
    if (v9)
    {
      v11 = v9;
    }

    __message_assert("%s:%u: failed assertion '%s' %s max depth exceeded: %d", "BurstTrie.c", 4340, "ctx->stringLen<CI_UTF8CHARS_BUFFER_SIZE", v11, *(a1 + 1140));
    free(v10);
    if (__valid_fsp(*(*(a1 + 8) + 4576)))
    {
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    MEMORY[0xC00] = -559038737;
    abort();
  }

  v7 = a1 + 88;
  *(a1 + 1140) = v6 + 1;
  *(v7 + v6) = a4;
  *(v7 + *(a1 + 1140)) = 0;
  if (HIDWORD(a3))
  {
    *(a1 + 52) = a3;
    if (a5)
    {
      findMatchTermWildcard(a1, *(a1 + 52), 0, 1);
    }

    else
    {
      findMatchTerm(a1, 0);
    }

    *(a1 + 52) = a2;
  }

  else
  {
    findAddFlatBucket(a1, a3, 0, 0, 0, 0);
  }

  --*(a1 + 1140);
}

uint64_t _bt_dumpTrie(unint64_t a1, int a2, _DWORD *a3, void *a4, uint64_t a5, uint64_t a6)
{
  if (__THREAD_SLOT_KEY[0])
  {
    v12 = pthread_getspecific(__THREAD_SLOT_KEY[0]);
    if (v12)
    {
      goto LABEL_3;
    }
  }

  else
  {
    makeThreadId();
    v12 = pthread_getspecific(__THREAD_SLOT_KEY[0]);
    if (v12)
    {
LABEL_3:
      v13 = v12;
      if (v12 < 0x801)
      {
        goto LABEL_4;
      }
    }
  }

  makeThreadId();
  v13 = pthread_getspecific(__THREAD_SLOT_KEY[0]);
LABEL_4:
  v14 = v13 - 1;
  v15 = v13 - 1;
  v16 = LODWORD(threadData[9 * v13 - 5]);
  db_read_lock(a1 + 4600);
  CIOnThreadCleanUpPush(v14, si_dglock_rdunlock, a1 + 4600);
  v17 = a4;
  if (!a4)
  {
    v17 = malloc_type_malloc(0x5160uLL, 0x10A00408BF7D057uLL);
    CICleanUpPush(v15, MEMORY[0x1E69E9B38], v17);
  }

  v18 = v16;
  v19 = malloc_type_malloc(0x18uLL, 0x1020040F21E5318uLL);
  storage_reader_init(a1 + 160, v19);
  CICleanUpPush(v15, storage_reader_free, v19);
  *v17 = v19;
  v17[1] = a5;
  v17[2] = a6;
  *(v17 + 6) = 0;
  v22 = *(a1 + 4584);
  v51 = 0;
  if (!*(v19 + 1))
  {
    if (a2)
    {
      v38 = &v51;
    }

    else
    {
      v38 = *(v19 + 1);
    }

    bt_dumpTrieFatData(a1, v22 == 1, 1u, 0, (v17 + 2092), v38, a3, v17, v20, v21);
    goto LABEL_32;
  }

  if (*(v19 + 16) == 1)
  {
    add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
    v23 = setThreadIdAndInfo(-1, sStorageReaderExceptionCallbacks, v19, 0, add_explicit + 1);
    v49 = HIDWORD(v23);
    *buf = v23;
    v48 = __PAIR64__(v24, v25);
    v26 = threadData[9 * v23 + 1] + 320 * HIDWORD(v23);
    v27 = *(v26 + 312);
    v28 = *(v26 + 224);
    if (v28)
    {
      v28(*(v26 + 288));
    }

    v47 = *buf;
    v46 = v49;
    v45 = v48;
    if (_setjmp(v26))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *v44 = 0;
        _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v44, 2u);
      }

      *(v26 + 312) = v27;
      v31 = v45;
      if (__THREAD_SLOT_KEY[0])
      {
        v32 = pthread_getspecific(__THREAD_SLOT_KEY[0]);
        if (!v32)
        {
          goto LABEL_36;
        }
      }

      else
      {
        makeThreadId();
        v32 = pthread_getspecific(__THREAD_SLOT_KEY[0]);
        if (!v32)
        {
          goto LABEL_36;
        }
      }

      v33 = v32;
      if (v32 < 0x801)
      {
LABEL_16:
        v34 = &threadData[9 * v33];
        v36 = *(v34 - 4);
        v35 = (v34 - 2);
        if (v36 > v31)
        {
          v37 = v33 - 1;
          do
          {
            CIOnThreadCleanUpPop(v37);
          }

          while (*v35 > v31);
        }

        dropThreadId(v47, 1, add_explicit + 1);
        CICleanUpReset(v47, HIDWORD(v45));
        goto LABEL_32;
      }

LABEL_36:
      makeThreadId();
      v33 = pthread_getspecific(__THREAD_SLOT_KEY[0]);
      goto LABEL_16;
    }

    if (a2)
    {
      v39 = &v51;
    }

    else
    {
      v39 = 0;
    }

    bt_dumpTrieFatData(a1, v22 == 1, 1u, 0, (v17 + 2092), v39, a3, v17, v29, v30);
    v40 = threadData[9 * v47 + 1] + 320 * v46;
    *(v40 + 312) = v27;
    v41 = *(v40 + 232);
    if (v41)
    {
      v41(*(v40 + 288));
    }

    dropThreadId(v47, 0, add_explicit + 1);
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Skipping because index is shut down", buf, 2u);
  }

LABEL_32:
  CIOnThreadCleanUpPop(v15);
  return CICleanUpReset(v15, v18);
}

unint64_t bt_dumpTrieFatData(unint64_t result, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, unint64_t *a6, _DWORD *a7, uint64_t **a8, __n128 a9, __n128 a10)
{
  v11 = result;
  if (*(result + 144) < a3)
  {
    v47 = __si_assert_copy_extra_2708(*(result + 4576));
    v48 = v47;
    v49 = "";
    if (v47)
    {
      v49 = v47;
    }

    __message_assert("%s:%u: failed assertion '%s' %s s: %d, c: %d", "BurstTrie.c", 3237, "s<=getNum(t->baseFatCount)", v49, a3, *(v11 + 144));
    free(v48);
    if (__valid_fsp(*(v11 + 4576)))
    {
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    MEMORY[0xC00] = -559038737;
    abort();
  }

  v12 = a8;
  v15 = a5;
  v16 = a4;
  v17 = a2;
  v18 = *(*(result + 8) + 1028 * a3);
  if (a2)
  {
    v19 = a3;
    if ((v18 & 1) == 0 && v18)
    {
      result = dumpFlatData(result, 1, *a8, v18 >> 1, a4, a5, a7, a8[1], a9, a10, a8[2]);
    }
  }

  else
  {
    v19 = a3;
    if (v18)
    {
      *(a5 + a4) = 0;
      result = (a8[1])(a4, a5, *(*(result + 8) + 1028 * a3), 0, a8[2]);
    }
  }

  if (!*a7)
  {
    v20 = 0;
    v55 = a6;
    v56 = v12;
    v54 = v15;
    v53 = v17;
    do
    {
      v21 = *(*(v11 + 8) + 1028 * v19 + 4 * v20 + 4);
      v22 = (v21 & 7) << 32;
      v23 = v21 >> 2;
      if ((v21 & 3) == 1)
      {
        v22 = 0x100000000;
      }

      else
      {
        v23 = v21 >> 3;
      }

      if (v21)
      {
        v24 = v22;
      }

      else
      {
        v24 = 0;
      }

      if (v21)
      {
        v25 = v23;
      }

      else
      {
        v25 = v21 >> 1;
      }

      if (v25)
      {
        *(v15 + v16) = v20;
        if (HIDWORD(v24) == 1)
        {
          result = bt_dumpTrieData(v11, v17, v25, v16 + 1, v15, a6, a7, v12);
        }

        else if (HIDWORD(v24) == 3)
        {
          result = bt_dumpTrieFatData(v11, v17, v25, v16 + 1, v15, a6, a7, v12);
        }

        else
        {
          if (v24)
          {
            v50 = __si_assert_copy_extra_2708(0);
            v51 = v50;
            if (v50)
            {
              v52 = v50;
            }

            else
            {
              v52 = "";
            }

            __message_assert("%s:%u: Unexpected code path %s ", "BurstTrie.c", 3274, v52);
            free(v51);
            MEMORY[0xBAD] = -559038737;
            abort();
          }

          result = dumpFlatData(v11, v17, *v12, v25, v16 + 1, v15, a7, v12[1], a9, a10, v12[2]);
          if (a6)
          {
            v26 = *a6;
            if (result > *a6 && result - *a6 > 0x10000)
            {
              v57 = *v12;
              v58 = result;
              v27 = result & ~*MEMORY[0x1E69E9AB8];
              v28 = (*v12)[1];
              if (v28)
              {
                v29 = *(v28 + 560);
                if (v29 >= 1)
                {
                  for (i = 0; i < v29; ++i)
                  {
                    v31 = *(v28 + 584 + 8 * i);
                    if (v31)
                    {
                      v32 = v31[2];
                      v33 = v26 >= v32;
                      v34 = v26 - v32;
                      if (v33)
                      {
                        v35 = v31[3];
                        v36 = v31[1];
                        if (v35 <= v27)
                        {
                          v37 = 0;
                        }

                        else
                        {
                          v37 = v34;
                        }

                        result = sync_invalidate_mapping((v36 + v37), v27 - v26);
                        v29 = *(v28 + 560);
                      }
                    }
                  }
                }
              }

              v38 = *v57;
              if (*v57)
              {
                v39 = *(v38 + 248);
                if (v39 >= 1)
                {
                  for (j = 0; j < v39; ++j)
                  {
                    v41 = *(v38 + 272 + 8 * j);
                    if (v41)
                    {
                      v42 = v41[2];
                      v33 = v26 >= v42;
                      v43 = v26 - v42;
                      if (v33)
                      {
                        v44 = v41[3];
                        v45 = v41[1];
                        if (v44 <= v27)
                        {
                          v46 = 0;
                        }

                        else
                        {
                          v46 = v43;
                        }

                        result = sync_invalidate_mapping((v45 + v46), v27 - v26);
                        v39 = *(v38 + 248);
                      }
                    }
                  }
                }
              }

              a6 = v55;
              v12 = v56;
              *v55 = v58 & ~*MEMORY[0x1E69E9AB8];
              v15 = v54;
              v17 = v53;
              v19 = a3;
            }
          }
        }
      }

      if (*a7)
      {
        break;
      }

      v33 = v20++ >= 0xFF;
    }

    while (!v33);
  }

  return result;
}

unint64_t bt_dumpTrieData(void *a1, uint64_t a2, unsigned int a3, int a4, uint64_t a5, unint64_t *a6, _DWORD *a7, _DWORD *a8)
{
  v9 = a7;
  v10 = a6;
  v11 = a5;
  v12 = a2;
  v66 = 0;
  v59 = &a8[4 * a8[6] + 8];
  v60 = a2;
  for (result = mgetBase(a1, a3); ; result = mgetBase(a1, v16))
  {
    v68 = result;
    v18 = *result;
    if (v12)
    {
      if ((v18 & 1) == 0 && v18)
      {
        result = dumpFlatData(a1, 1, *a8, v18 >> 1, v66 + a4, v11, v9, *(a8 + 1), v14, v15, *(a8 + 2));
      }
    }

    else if (v18)
    {
      result = (*(a8 + 1))((v66 + a4), v11, v18, 0, *(a8 + 2));
    }

    v19 = 0;
    v65 = v66;
    if (*v9)
    {
      break;
    }

LABEL_11:
    if (v19 > 255)
    {
      break;
    }

    v20 = (v68 + 4);
    v69 = v65 + a4;
    v66 = v65 + 1;
    while (1)
    {
      if (((v20->i32[v19 >> 5] >> v19) & 1) == 0)
      {
        goto LABEL_39;
      }

      v21 = 0;
      v22 = v19 >> 6;
      if (v19 >> 6 > 1u)
      {
        if (v22 != 2)
        {
          v24 = vcnt_s8(*(v68 + 20));
          v24.i16[0] = vaddlv_u8(v24);
          v21 = v24.u32[0];
        }

        v25 = vcnt_s8(*(v68 + 12));
        v25.i16[0] = vaddlv_u8(v25);
        v21 += v25.u32[0];
LABEL_20:
        v26 = vcnt_s8(*v20);
        v26.i16[0] = vaddlv_u8(v26);
        v23 = v26.u32[0] + v21;
        goto LABEL_21;
      }

      v23 = v19 >> 6;
      if (v22)
      {
        goto LABEL_20;
      }

LABEL_21:
      v14.n128_u64[0] = vcnt_s8((*&v20[v22] & ~(-1 << v19)));
      v14.n128_u16[0] = vaddlv_u8(v14.n128_u64[0]);
      v27 = *(v68 + 38 + 4 * (v14.n128_u32[0] + v23));
      if (v27)
      {
        break;
      }

      *(v11 + v69) = v19;
      result = dumpFlatData(a1, v12, *a8, v27 >> 1, v69 + 1, v11, v9, *(a8 + 1), v14, v15, *(a8 + 2));
      if (!v10)
      {
        goto LABEL_39;
      }

      v28 = result;
      v29 = *v10;
      if (result <= *v10 || result - *v10 <= 0x10000)
      {
        goto LABEL_39;
      }

      v30 = result & ~*MEMORY[0x1E69E9AB8];
      v64 = *a8;
      v31 = *(*a8 + 8);
      if (v31)
      {
        v32 = *(v31 + 560);
        if (v32 >= 1)
        {
          for (i = 0; i < v32; ++i)
          {
            v34 = *(v31 + 584 + 8 * i);
            if (v34)
            {
              v35 = v34[2];
              v36 = v29 >= v35;
              v37 = v29 - v35;
              if (v36)
              {
                v38 = v34[3];
                v39 = v34[1];
                if (v38 <= v30)
                {
                  v40 = 0;
                }

                else
                {
                  v40 = v37;
                }

                result = sync_invalidate_mapping((v39 + v40), v30 - v29);
                v32 = *(v31 + 560);
              }
            }
          }
        }
      }

      v44 = *v64;
      if (*v64)
      {
        v45 = *(v44 + 248);
        if (v45 >= 1)
        {
          for (j = 0; j < v45; ++j)
          {
            v47 = *(v44 + 272 + 8 * j);
            if (v47)
            {
              v48 = v47[2];
              v36 = v29 >= v48;
              v49 = v29 - v48;
              if (v36)
              {
                v50 = v47[3];
                v51 = v47[1];
                if (v50 <= v30)
                {
                  v52 = 0;
                }

                else
                {
                  v52 = v49;
                }

                result = sync_invalidate_mapping((v51 + v52), v30 - v29);
                v45 = *(v44 + 248);
              }
            }
          }
        }
      }

      v10 = a6;
      v9 = a7;
      *a6 = v28 & ~*MEMORY[0x1E69E9AB8];
      v11 = a5;
      v12 = v60;
      if (*a7)
      {
        goto LABEL_54;
      }

LABEL_40:
      if (v19++ >= 255)
      {
        goto LABEL_54;
      }
    }

    if ((*(v68 + 38 + 4 * (v14.n128_u32[0] + v23)) & 3) == 1)
    {
      v16 = v27 >> 2;
      *(v11 + v69) = v19;
      goto LABEL_3;
    }

    v16 = v27 >> 3;
    v41 = *(v68 + 38 + 4 * (v14.n128_u32[0] + v23)) & 7;
    *(v11 + v69) = v19;
    if (v41 == 3)
    {
      v42 = a8[6];
      a8[6] = v66 + v42;
      result = bt_dumpTrieFatData(a1, v12, v16, v69 + 1, v11, v10, v9, a8);
      a8[6] = v42;
LABEL_39:
      if (*v9)
      {
        break;
      }

      goto LABEL_40;
    }

    if (v41 != 1)
    {
      v55 = __si_assert_copy_extra_2708(0);
      v56 = v55;
      if (v55)
      {
        v57 = v55;
      }

      else
      {
        v57 = "";
      }

      __message_assert("%s:%u: Unexpected code path %s ", "BurstTrie.c", 3376, v57);
      free(v56);
      MEMORY[0xBAD] = -559038737;
      abort();
    }

LABEL_3:
    v17 = &v59[4 * v65];
    v17[2] = v19;
    *v17 = v68;
  }

LABEL_54:
  while (1)
  {
    v53 = v65;
    if (!v65)
    {
      return result;
    }

    --v65;
    v54 = &v59[4 * v53 - 4];
    v19 = v54[2] + 1;
    v68 = *v54;
    if (!*v9)
    {
      goto LABEL_11;
    }
  }
}

uint64_t checkTrieFatData(uint64_t result, unsigned int a2, unint64_t a3, unint64_t a4, int *a5)
{
  v6 = result;
  if (*(result + 144) < a2)
  {
    v24 = __si_assert_copy_extra_2708(*(result + 4576));
    v25 = v24;
    v26 = "";
    if (v24)
    {
      v26 = v24;
    }

    __message_assert("%s:%u: failed assertion '%s' %s s: %d, c: %d", "BurstTrie.c", 3062, "s<=getNum(t->baseFatCount)", v26, a2, *(v6 + 144));
    free(v25);
    if (!__valid_fsp(*(v6 + 4576)))
    {
      goto LABEL_30;
    }

    goto LABEL_25;
  }

  v10 = 1028 * a2 + 4;
  v11 = 256;
  do
  {
    v12 = *(*(v6 + 8) + v10);
    v13 = v12 >> 1;
    v14 = v12 >> 3;
    v15 = (v12 & 7) << 32;
    if ((v12 & 3) == 1)
    {
      v15 = 0x100000000;
      v14 = v12 >> 2;
    }

    v16 = (v12 & 1) == 0;
    if (v12)
    {
      v17 = v15;
    }

    else
    {
      v17 = 0;
    }

    if (v16)
    {
      v18 = v13;
    }

    else
    {
      v18 = v14;
    }

    if (v18)
    {
      if (HIDWORD(v17) == 1)
      {
        result = checkTrieData(v6, v18, a3, a4, a5);
      }

      else if (HIDWORD(v17) == 3)
      {
        result = checkTrieFatData(v6, v18, a3, a4);
      }

      else
      {
        if (v17)
        {
          v27 = __si_assert_copy_extra_2708(0);
          v28 = v27;
          if (v27)
          {
            v29 = v27;
          }

          else
          {
            v29 = "";
          }

          __message_assert("%s:%u: Unexpected code path %s ", "BurstTrie.c", 3079, v29);
          free(v28);
LABEL_25:
          v23 = 2989;
          goto LABEL_31;
        }

        if (v18 << 6 > a3 && v18 << 6 < a4)
        {
          v20 = __si_assert_copy_extra_2708(0);
          v21 = v20;
          v22 = "";
          if (v20)
          {
            v22 = v20;
          }

          __message_assert("%s:%u: failed assertion '%s' %s ", "BurstTrie.c", 3077, "!(offset>flatPagePtr && offset<flatPageEnd)", v22);
          free(v21);
          if (__valid_fs(-1))
          {
            goto LABEL_25;
          }

LABEL_30:
          v23 = 3072;
LABEL_31:
          *v23 = -559038737;
          abort();
        }
      }
    }

    v10 += 4;
    --v11;
  }

  while (v11);
  return result;
}

uint64_t checkTrieData(void *a1, unsigned int a2, unint64_t a3, unint64_t a4, int *a5)
{
  v8 = 0;
  v35 = &a5[4 * *a5 + 2];
  result = mgetBase(a1, a2);
LABEL_4:
  v12 = result;
  v13 = 0;
  v14 = v8;
LABEL_5:
  v15 = (v12 + 4);
  do
  {
    if (((v15->i32[v13 >> 5] >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }

    v18 = 0;
    v19 = v13 >> 6;
    if (v13 >> 6 > 1u)
    {
      if (v19 != 2)
      {
        v21 = vcnt_s8(*(v12 + 20));
        v21.i16[0] = vaddlv_u8(v21);
        v18 = v21.u32[0];
      }

      v22 = vcnt_s8(*(v12 + 12));
      v22.i16[0] = vaddlv_u8(v22);
      v18 += v22.u32[0];
LABEL_19:
      v23 = vcnt_s8(*v15);
      v23.i16[0] = vaddlv_u8(v23);
      v20 = v23.u32[0] + v18;
      goto LABEL_20;
    }

    v20 = v13 >> 6;
    if (v19)
    {
      goto LABEL_19;
    }

LABEL_20:
    v24 = vcnt_s8((*&v15[v19] & ~(-1 << v13)));
    v24.i16[0] = vaddlv_u8(v24);
    v25 = *(v12 + 38 + 4 * (v24.u32[0] + v20));
    if (v25)
    {
      if ((*(v12 + 38 + 4 * (v24.u32[0] + v20)) & 3) == 1)
      {
        v10 = v25 >> 2;
LABEL_3:
        v11 = &v35[4 * v14];
        v11[2] = v13;
        *v11 = v12;
        v8 = v14 + 1;
        result = mgetBase(a1, v10);
        goto LABEL_4;
      }

      v10 = v25 >> 3;
      v26 = *(v12 + 38 + 4 * (v24.u32[0] + v20)) & 7;
      if (v26 != 3)
      {
        if (v26 != 1)
        {
          v29 = __si_assert_copy_extra_2708(0);
          v30 = v29;
          if (v29)
          {
            v31 = v29;
          }

          else
          {
            v31 = "";
          }

          __message_assert("%s:%u: Unexpected code path %s ", "BurstTrie.c", 3043, v31);
          free(v30);
          MEMORY[0xBAD] = -559038737;
          abort();
        }

        goto LABEL_3;
      }

      v27 = *a5;
      *a5 += v14 + 1;
      result = checkTrieFatData(a1, v10, a3, a4);
      *a5 = v27;
    }

    else
    {
      v16 = 32 * v25;
      if (v16 > a3 && v16 < a4)
      {
        v32 = __si_assert_copy_extra_2708(0);
        v33 = v32;
        v34 = "";
        if (v32)
        {
          v34 = v32;
        }

        __message_assert("%s:%u: failed assertion '%s' %s ", "BurstTrie.c", 3041, "!(offset>flatPagePtr && offset<flatPageEnd)", v34);
        free(v33);
        if (__valid_fs(-1))
        {
          MEMORY[0xBAD] = -559038737;
          abort();
        }

        MEMORY[0xC00] = -559038737;
        abort();
      }
    }

LABEL_11:
    ++v13;
  }

  while (v13 != 256);
  while (v14)
  {
    --v14;
    v28 = &v35[4 * v14];
    v13 = v28[2] + 1;
    v12 = *v28;
    if (v13 <= 255)
    {
      goto LABEL_5;
    }
  }

  return result;
}

uint64_t bt_lastCompactTermOffset(uint64_t a1)
{
  if (*(a1 + 4584) != 1)
  {
    return 0;
  }

  v1 = 0;
  v2 = 1;
  while (1)
  {
LABEL_3:
    if (v2 > *(a1 + 144))
    {
      return 0;
    }

    v3 = *(a1 + 8);
    v4 = *(v3 + 1028 * v2);
    v5 = v4 >> 1;
    v6 = v4 >> 3;
    v7 = (v4 & 7) << 32;
    if ((v4 & 3) == 1)
    {
      v7 = 0x100000000;
      v6 = v4 >> 2;
    }

    if (v4)
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    if (*(v3 + 1028 * v2))
    {
      v5 = v6;
    }

    v9 = v3 + 1028 * v2;
    v10 = 1024;
    while (1)
    {
      v11 = *(v9 + v10);
      v12 = v11 >> 1;
      v13 = v11 >> 3;
      v14 = (v11 & 7) << 32;
      if ((v11 & 3) == 1)
      {
        v14 = 0x100000000;
        v13 = v11 >> 2;
      }

      v15 = (v11 & 1) != 0 ? v14 : 0;
      v2 = (*(v9 + v10) & 1) != 0 ? v13 : v12;
      if (v2)
      {
        break;
      }

      v10 -= 4;
      if (!v10)
      {
        v15 = v8;
        v2 = v5;
        goto LABEL_48;
      }
    }

    if (v15 != 0x300000000)
    {
      break;
    }

    if (++v1 == 1045)
    {
      return 0;
    }
  }

  if (!v15)
  {
LABEL_48:
    v61 = v15 | v2;
LABEL_49:

    return flatLastCompactTermOffset(a1, v61);
  }

  if (v15 != 0x100000000)
  {
    return 0;
  }

  do
  {
    if (v1 > 0x413)
    {
      return 0;
    }

    v16 = a1;
    v17 = mgetBase(a1, v2);
    v19 = *v17;
    if (*v17)
    {
      if ((*v17 & 3) == 1)
      {
        v21 = v19 >> 2;
        v20 = 0x100000000;
      }

      else
      {
        v20 = (v19 & 7) << 32;
        v21 = v19 >> 3;
      }
    }

    else
    {
      v20 = 0;
      v21 = v19 >> 1;
    }

    a1 = v16;
    v22 = v17[1];
    v23 = v17[2];
    v24 = v23 & v22;
    v25 = v23 ^ v22;
    v26 = v17[3];
    v27 = v17[4];
    v28 = v25 ^ v26;
    v29 = v25 & v26;
    v30 = v28 & v27;
    v31 = v28 & v27 | v29;
    v32 = v28 ^ v27;
    v33 = v30 & v24;
    v34 = v31 ^ v24;
    v35 = v17[5];
    v36 = v17[6];
    v37 = v32 ^ v35;
    v38 = (v32 ^ v35) & v36 | v32 & v35;
    v39 = v37 ^ v36;
    v40 = v17[7];
    v41 = v17[8];
    v42 = v39 ^ v40;
    v43 = (v39 ^ v40) & v41 | v39 & v40;
    v44 = v42 ^ v41;
    v45 = v38 ^ v34;
    v46 = (v43 & (v38 ^ v34) | v38 & v34) ^ v33;
    v18.i32[0] = v43 & v45 & v33;
    v47 = vcnt_s8(v18);
    v47.i16[0] = vaddlv_u8(v47);
    v48 = v47.i32[0];
    v47.i32[0] = v46;
    v49 = vcnt_s8(v47);
    v49.i16[0] = vaddlv_u8(v49);
    v50 = v49.i32[0];
    v49.i32[0] = v43 ^ v45;
    v51 = vcnt_s8(v49);
    v51.i16[0] = vaddlv_u8(v51);
    v52 = v51.i32[0];
    v51.i32[0] = v44;
    v53 = vcnt_s8(v51);
    v53.i16[0] = vaddlv_u8(v53);
    v54 = v53.i32[0] + 2 * v52 + 8 * v48 + 4 * v50;
    if (!v54)
    {
      goto LABEL_52;
    }

    v55 = *(&v17[v54 - 1 + 9] + 2);
    v56 = v55 >> 1;
    v57 = v55 >> 3;
    v58 = (v55 & 7) << 32;
    if ((v55 & 3) == 1)
    {
      v58 = 0x100000000;
      v57 = v55 >> 2;
    }

    v59 = (v55 & 1) == 0;
    v60 = (v55 & 1) != 0 ? v58 : 0;
    v2 = v59 ? v56 : v57;
    if (!v2)
    {
LABEL_52:
      v63 = v20 | v21;
      goto LABEL_53;
    }

    ++v1;
  }

  while (HIDWORD(v60) == 1);
  if (HIDWORD(v60) != 3)
  {
    if (v60)
    {
      return 0;
    }

    v20 = 0;
    v63 = v2;
LABEL_53:
    v61 = v20 | v63;
    goto LABEL_49;
  }

  if (++v1 <= 0x414)
  {
    goto LABEL_3;
  }

  return 0;
}

uint64_t ___bt_findTokens_block_invoke(void *a1, _DWORD *a2, unsigned int a3)
{
  v6 = *a2 - a2[2];
  v7 = *(*(a1[5] + 8) + 24);
  if (*(*(a1[4] + 8) + 24) + 1 >= v7)
  {
    v8 = 2 * v7;
    if (((v7 >> 10) & 0x7FFFFFFFFFFFLL) == 0 && v7 << 7 > *MEMORY[0x1E69E9AC8])
    {
      ++sTotal;
    }

    v10 = malloc_type_zone_calloc(queryZone, v8, 0x40uLL, 0x5BAF1CEAuLL);
    if (!v10 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      *v13 = 0;
      _os_log_fault_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "allocation function returned null", v13, 2u);
    }

    memcpy(v10, *(*(a1[6] + 8) + 24), *(*(a1[5] + 8) + 24) << 6);
    if (*(*(a1[5] + 8) + 24) >= 0x21uLL)
    {
      free(*(*(a1[6] + 8) + 24));
    }

    *(*(a1[6] + 8) + 24) = v10;
    *(*(a1[5] + 8) + 24) = v8;
  }

  result = TokenDataAddRange(a1[7], v6 | (a3 << 16));
  if (result)
  {
    if (v6 + a3 < *(a1[7] + 20))
    {
      *(*(*(a1[6] + 8) + 24) + (*(*(a1[4] + 8) + 24) << 6)) = *a2 + a3;
      *(*(*(a1[6] + 8) + 24) + (*(*(a1[4] + 8) + 24) << 6) + 56) = a2[14] - a3;
      *(*(*(a1[6] + 8) + 24) + (*(*(a1[4] + 8) + 24) << 6) + 8) = *(a2 + 1);
      v12 = a2[5];
      *(*(*(a1[6] + 8) + 24) + (*(*(a1[4] + 8) + 24) << 6) + 16) = a2[4];
      *(*(*(a1[6] + 8) + 24) + ((*(*(a1[4] + 8) + 24))++ << 6) + 20) = v12;
    }
  }

  return result;
}

void ___bt_resolveTokens_block_invoke(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 1152))
  {
    for (i = 0; i < *(a2 + 1152); ++i)
    {
      if (**a2 == 1)
      {
        return;
      }

      v4 = (*(a2 + 1144) + (i << 6));
      *(a2 + 1240) = v4;
      v5 = *v4;
      *(a2 + 1224) = *v4;
      *(a2 + 1232) = v5;
      *(a2 + 1140) = 0;
      *(a2 + 88) = 0;
      v6 = *(a2 + 8);
      v7 = *v6;
      v8 = v7 >> 1;
      v9 = v7 >> 3;
      v10 = (v7 & 7) << 32;
      if ((v7 & 3) == 1)
      {
        v10 = 0x100000000;
        v9 = v7 >> 2;
      }

      if (v7)
      {
        v11 = v10;
      }

      else
      {
        v11 = 0;
      }

      if (*v6)
      {
        v12 = v9;
      }

      else
      {
        v12 = v8;
      }

      *(a2 + 52) = v11 | v12;
      v13 = *v4;
      if (!*v4 || *v13 > 3u)
      {
        goto LABEL_31;
      }

      v14 = v13[1];
      if (v13[1] < 0)
      {
        v16 = v13[2];
        if (v13[2] < 0)
        {
          v17 = v13[3];
          if (v13[3] < 0)
          {
            v19 = v13[4];
            if (v13[4] < 0)
            {
              v21 = v13[5];
              if (v21 < 0)
              {
                goto LABEL_141;
              }

              v22 = ((v19 & 0x7F) << 21) | (v21 << 28) | ((v17 & 0x7F) << 14) | ((v16 & 0x7F) << 7) | v14 & 0x7F;
              v15 = 6;
              v14 = v22;
            }

            else
            {
              v20 = ((v17 & 0x7F) << 14) | (v19 << 21) | ((v16 & 0x7F) << 7) | v14 & 0x7F;
              v15 = 5;
              v14 = v20;
            }
          }

          else
          {
            v18 = ((v16 & 0x7F) << 7) | (v17 << 14) | v14 & 0x7F;
            v15 = 4;
            v14 = v18;
          }
        }

        else
        {
          v14 = v14 & 0x7F | (v16 << 7);
          v15 = 3;
        }
      }

      else
      {
        v15 = 2;
      }

      if ((v14 - 1) <= 5)
      {
        v23 = v15 + 1;
        if (v13[v15] < 0)
        {
          v24 = v15 + 2;
          if ((v13[v23] & 0x80000000) == 0)
          {
            goto LABEL_29;
          }

          v23 = v15 + 3;
          if (v13[v24] < 0)
          {
            v24 = v15 + 4;
            if (v13[v23] < 0)
            {
              if (v13[v24] < 0)
              {
                v77 = __si_assert_copy_extra_2708(0);
                v78 = v77;
                v79 = "";
                if (v77)
                {
                  v79 = v77;
                }

                __message_assert("%s:%u: failed assertion '%s' %s readVInt32: exceeds max size for uint32_t", "VIntUtils.h", 342, "(b4 & 0x80) == 0", v79);
                free(v78);
                if (__valid_fs(-1))
                {
                  MEMORY[0xBAD] = -559038737;
                  abort();
                }

                MEMORY[0xC00] = -559038737;
                abort();
              }

              v15 += 5;
              goto LABEL_30;
            }

LABEL_29:
            v15 = v24;
            goto LABEL_30;
          }
        }

        v15 = v23;
      }

LABEL_30:
      *(a2 + 1232) = &v5[v15];
LABEL_31:
      v81 = *(a1 + 32);
      v25 = *(v4 + 14);
      v26 = v13;
      if (*(v4 + 5) < 7)
      {
        goto LABEL_88;
      }

      v26 = v13;
      if (*v13 != 1)
      {
        goto LABEL_88;
      }

      v27 = v13[1];
      if (v13[1] < 0)
      {
        v29 = v13[2];
        if (v13[2] < 0)
        {
          v30 = v13[3];
          if (v13[3] < 0)
          {
            v31 = v13[4];
            if (v13[4] < 0)
            {
              v32 = v13[5];
              if (v32 < 0)
              {
                goto LABEL_141;
              }

              v28 = 6;
              if ((((v31 & 0x7F) << 21) | (v32 << 28) | ((v30 & 0x7F) << 14) | ((v29 & 0x7F) << 7) | v27 & 0x7F) != 2)
              {
                goto LABEL_55;
              }
            }

            else
            {
              v28 = 5;
              if ((((v30 & 0x7F) << 14) | (v31 << 21) | ((v29 & 0x7F) << 7) | v27 & 0x7F) != 2)
              {
                goto LABEL_55;
              }
            }
          }

          else
          {
            v28 = 4;
            if ((((v29 & 0x7F) << 7) | (v30 << 14) | v27 & 0x7F) != 2)
            {
              goto LABEL_55;
            }
          }
        }

        else
        {
          v28 = 3;
          if ((v27 & 0x7F | (v29 << 7)) != 2)
          {
            goto LABEL_55;
          }
        }
      }

      else
      {
        v28 = 2;
        if (v27 != 2)
        {
          goto LABEL_55;
        }
      }

      v33 = v28 + 1;
      if (v13[v28] < 0)
      {
        v34 = v28 + 2;
        if ((v13[v33] & 0x80000000) == 0)
        {
          goto LABEL_54;
        }

        v33 = v28 + 3;
        if (v13[v34] < 0)
        {
          v34 = v28 + 4;
          if (v13[v33] < 0)
          {
            if (v13[v34] < 0)
            {
LABEL_141:
              v73 = __si_assert_copy_extra_2708(0);
              v74 = v73;
              v75 = "";
              if (v73)
              {
                v75 = v73;
              }

              __message_assert("%s:%u: failed assertion '%s' %s readVInt32: exceeds max size for uint32_t", "VIntUtils.h", 342, "(b4 & 0x80) == 0", v75);
              free(v74);
              if (__valid_fs(-1))
              {
                v76 = 2989;
              }

              else
              {
                v76 = 3072;
              }

              *v76 = -559038737;
              abort();
            }

            v28 += 5;
            goto LABEL_55;
          }

LABEL_54:
          v28 = v34;
          goto LABEL_55;
        }
      }

      v28 = v33;
LABEL_55:
      v26 = v13;
      if (v28 > v25)
      {
        goto LABEL_88;
      }

      v35 = 0;
      v36 = HIDWORD(v11);
      while (1)
      {
        if (v36 == 3)
        {
          v43 = *(v6[1] + 1028 * v12 + 4 * *(&tcm + v13[v35]) + 4);
          if (v43)
          {
            goto LABEL_75;
          }

          v12 = v43 >> 1;
          if (!(v43 >> 1))
          {
            goto LABEL_80;
          }

          goto LABEL_58;
        }

        if (v36 != 1)
        {
          break;
        }

        v37 = mgetBase(v6, v12);
        v38 = *(&tcm + v13[v35]);
        v39 = (v37 + 4);
        if (((*(v37 + 4 + ((v38 >> 3) & 0x1C)) >> v38) & 1) == 0)
        {
          goto LABEL_80;
        }

        v40 = 0;
        v41 = v38 >> 6;
        if ((v38 >> 6) > 1)
        {
          if (v41 != 2)
          {
            v44 = vcnt_s8(*(v37 + 20));
            v44.i16[0] = vaddlv_u8(v44);
            v40 = v44.u32[0];
          }

          v45 = vcnt_s8(*(v37 + 12));
          v45.i16[0] = vaddlv_u8(v45);
          v40 += v45.u32[0];
        }

        else
        {
          v42 = v38 >> 6;
          if (!v41)
          {
            goto LABEL_72;
          }
        }

        v46 = vcnt_s8(*v39);
        v46.i16[0] = vaddlv_u8(v46);
        v42 = v46.u32[0] + v40;
LABEL_72:
        v47 = vcnt_s8((*&v39[v41] & ~(-1 << v38)));
        v47.i16[0] = vaddlv_u8(v47);
        v43 = *(v37 + 38 + 4 * (v47.u32[0] + v42));
        if (v43)
        {
LABEL_75:
          if ((v43 & 3) == 1)
          {
            v12 = v43 >> 2;
            if (!(v43 >> 2))
            {
              goto LABEL_80;
            }

            v36 = 1;
          }

          else
          {
            v12 = v43 >> 3;
            if (!(v43 >> 3))
            {
LABEL_80:
              v26 = v13;
              goto LABEL_88;
            }

            v36 = v43 & 7;
          }

          goto LABEL_59;
        }

        v12 = v43 >> 1;
        if (!(v43 >> 1))
        {
          goto LABEL_80;
        }

LABEL_58:
        v36 = 0;
LABEL_59:
        if (v28 == ++v35)
        {
          v26 = &v13[v28];
          if (v36)
          {
            *(a2 + 52) = v12 | (v36 << 32);
            goto LABEL_88;
          }

          goto LABEL_87;
        }
      }

      v26 = v13;
      if (v35)
      {
        v26 = v13;
        if (!v36)
        {
          v26 = v13;
          if (v12)
          {
            v28 = v35;
            v26 = &v13[v35];
LABEL_87:
            findAddFlatBucket(a2, v12, v13, v28, 0, 0);
          }
        }
      }

LABEL_88:
      if (!v13)
      {
        continue;
      }

      v48 = &v13[v25];
      if (v26 >= v48)
      {
        continue;
      }

LABEL_90:
      v49 = 0;
      v50 = utf8_byte_length_noerror(unsigned char)::utf8_len_table[*v26 >> 4];
      v51 = *(a2 + 8);
      v52 = *(a2 + 52);
      v53 = HIDWORD(v52);
      v54 = v52;
LABEL_92:
      if (v53 == 3)
      {
        v61 = *(v51[1] + 1028 * v54 + 4 * *(&tcm + v26[v49]) + 4);
        if ((v61 & 1) == 0)
        {
          goto LABEL_99;
        }

LABEL_106:
        if ((v61 & 3) == 1)
        {
          v54 = v61 >> 2;
          if (!(v61 >> 2))
          {
            continue;
          }

          v53 = 1;
        }

        else
        {
          v54 = v61 >> 3;
          if (!(v61 >> 3))
          {
            continue;
          }

          v53 = v61 & 7;
        }

LABEL_91:
        if (v50 == ++v49)
        {
          goto LABEL_114;
        }

        goto LABEL_92;
      }

      if (v53 == 1)
      {
        v55 = mgetBase(v51, v54);
        v56 = *(&tcm + v26[v49]);
        v57 = (v55 + 4);
        if (((*(v55 + 4 + ((v56 >> 3) & 0x1C)) >> v56) & 1) == 0)
        {
          continue;
        }

        v58 = 0;
        v59 = v56 >> 6;
        if ((v56 >> 6) > 1)
        {
          if (v59 != 2)
          {
            v62 = vcnt_s8(*(v55 + 20));
            v62.i16[0] = vaddlv_u8(v62);
            v58 = v62.u32[0];
          }

          v63 = vcnt_s8(*(v55 + 12));
          v63.i16[0] = vaddlv_u8(v63);
          v58 += v63.u32[0];
        }

        else
        {
          v60 = v56 >> 6;
          if (!v59)
          {
LABEL_105:
            v65 = vcnt_s8((*&v57[v59] & ~(-1 << v56)));
            v65.i16[0] = vaddlv_u8(v65);
            v61 = *(v55 + 38 + 4 * (v65.u32[0] + v60));
            if (v61)
            {
              goto LABEL_106;
            }

LABEL_99:
            v54 = v61 >> 1;
            if (!(v61 >> 1))
            {
              continue;
            }

            v53 = 0;
            goto LABEL_91;
          }
        }

        v64 = vcnt_s8(*v57);
        v64.i16[0] = vaddlv_u8(v64);
        v60 = v64.u32[0] + v58;
        goto LABEL_105;
      }

      if (v53 || !v54)
      {
        continue;
      }

      v53 = 0;
      LODWORD(v50) = v49;
LABEL_114:
      if (!v50)
      {
        continue;
      }

      v26 += v50;
      v66 = v54 | (v53 << 32);
      *(a2 + 52) = v66;
      switch(v53)
      {
        case 1:
          v67 = mgetBase(*(a2 + 8), v54);
LABEL_119:
          v68 = *v67;
          if (*(a2 + 48) == 1)
          {
            v69 = v68 >> 1;
            v70 = v68 >> 3;
            v71 = (v68 & 7) << 32;
            if ((v68 & 3) == 1)
            {
              v71 = 0x100000000;
              v70 = v68 >> 2;
            }

            if (v68)
            {
              v72 = v71;
            }

            else
            {
              v72 = 0;
            }

            if (*v67)
            {
              v69 = v70;
            }

            if (v69)
            {
              findAddFlatBucket(a2, v72 | v69, v13, v26 - v13, 0, 0);
            }
          }

          else if (v81 && *v67)
          {
            (*(v81 + 16))(v81, *(a2 + 1240), (v26 - v13));
          }

          if (v26 >= v48)
          {
            break;
          }

          goto LABEL_90;
        case 3:
          v67 = *(*(a2 + 8) + 8);
          goto LABEL_119;
        case 0:
          findAddFlatBucket(a2, v66, v13, v26 - v13, 0, 0);
          break;
      }
    }
  }
}

BOOL ___bt_resolveTokens_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v125 = *MEMORY[0x1E69E9840];
  if (!*(a2 + 1152))
  {
    return 0;
  }

  v3 = a3;
  v5 = a1;
  v6 = 0;
  v7 = 0;
  v8 = (a2 + 88);
  v105 = (a2 + 89);
  v106 = (a2 + 88);
  while (2)
  {
    if (((*(v3 + (v6 >> 3)) >> (v6 & 7)) & 1) == 0)
    {
      goto LABEL_4;
    }

    v9 = *(a2 + 1144);
    *(a2 + 1240) = v9 + (v6 << 6);
    ++*(a2 + 1280);
    v10 = *(a2 + 1140);
    if (v10 < 3)
    {
      goto LABEL_3;
    }

    v11 = *(v9 + (v6 << 6));
    v110 = *(a2 + 1140);
    v12 = termPropertyID(v8, v10);
    v13 = *(a2 + 1240);
    v14 = *(v13 + 20);
    if ((*(v13 + 19) & 4) == 0)
    {
      if (!v14)
      {
        v15 = v110;
        if (v12 == 2)
        {
          goto LABEL_3;
        }

        goto LABEL_19;
      }

      goto LABEL_12;
    }

    if (v14)
    {
LABEL_12:
      v15 = v110;
      if (v12 != 1)
      {
        goto LABEL_3;
      }

      v16 = v8[v110 - 1];
      v17 = v16 == 3;
      if (v16 > 3)
      {
        goto LABEL_3;
      }

      v18 = -2;
      if (!v17)
      {
        v18 = -1;
      }

      if (v8[v110 + v18] == 2)
      {
        goto LABEL_3;
      }

      goto LABEL_19;
    }

    v15 = v110;
    if (v12 != 2)
    {
LABEL_3:
      ++v7;
      goto LABEL_4;
    }

LABEL_19:
    v103 = v7;
    v104 = v7 + 1;
    v19 = 0;
    v20 = 0;
    v109 = v15 & 0xFFFFFFFFFFFFFFFELL;
    v113 = v15;
    v108 = (&v118 + v15);
    for (i = v8; ; i += v38)
    {
      v22 = *v11;
      v23 = *v11 >> 4;
      if ((v22 & 0x80000000) != 0)
      {
        v24 = utf8_byte_length(unsigned char)::utf8_len_table[v23];
        v25 = v22 & utf8_to_code_point(unsigned char const*)::utf8_first_char_mask[v24];
        if ((~v23 & 0xC) != 0)
        {
          v22 &= utf8_to_code_point(unsigned char const*)::utf8_first_char_mask[v24];
        }

        else
        {
          if (v24 <= 2)
          {
            v26 = 2;
          }

          else
          {
            v26 = utf8_byte_length(unsigned char)::utf8_len_table[v23];
          }

          v27 = v26 - 1;
          v28 = v11 + 1;
          do
          {
            v29 = *v28++;
            v22 = v29 & 0x3F | (v25 << 6);
            v25 = v22;
            --v27;
          }

          while (v27);
        }
      }

      v30 = *i;
      v31 = v30 >> 4;
      if ((v30 & 0x80) != 0)
      {
        v32 = utf8_byte_length(unsigned char)::utf8_len_table[v31];
        v33 = utf8_to_code_point(unsigned char const*)::utf8_first_char_mask[v32] & v30;
        if ((~(v30 >> 4) & 0xC) != 0)
        {
          LODWORD(v30) = utf8_to_code_point(unsigned char const*)::utf8_first_char_mask[v32] & v30;
        }

        else
        {
          if (v32 <= 2)
          {
            v34 = 2;
          }

          else
          {
            v34 = utf8_byte_length(unsigned char)::utf8_len_table[v31];
          }

          v35 = v34 - 1;
          v36 = (i + 1);
          do
          {
            v37 = *v36++;
            LODWORD(v30) = v37 & 0x3F | (v33 << 6);
            v33 = v30;
            --v35;
          }

          while (v35);
        }
      }

      v38 = utf8_byte_length_noerror(unsigned char)::utf8_len_table[v31];
      v39 = utf8_byte_length_noerror(unsigned char)::utf8_len_table[v23];
      if (v30 < 2)
      {
        if (v19 && v22 - 12448 < 0x60 || v20 && v22 - 12352 < 0x60)
        {
          v7 = v104;
          goto LABEL_140;
        }

LABEL_44:
        v111 = utf8_byte_length_noerror(unsigned char)::utf8_len_table[v23];
        v112 = v38;
        if (v113 > 1043)
        {
LABEL_116:
          (*(*(v5 + 32) + 16))();
          v39 = v111;
          v38 = v112;
          goto LABEL_117;
        }

        bzero(&v119, 0x415uLL);
        __memcpy_chk();
        v40 = v110;
        if (!v110)
        {
          v55 = 0;
          v54 = 0;
          v53 = 0;
          v52 = 0;
          *(&v119 + v113) = 0;
          goto LABEL_69;
        }

        v41 = v105;
        v42 = &v120;
        v43 = v109;
        if (v110 == 1)
        {
          v44 = 0;
        }

        else
        {
          do
          {
            v45 = *(v41 - 1);
            v46 = *v41;
            v41 += 2;
            v47 = tcmn[v46];
            *(v42 - 1) = tcmn[v45];
            *v42 = v47;
            v42 += 2;
            v43 -= 2;
          }

          while (v43);
          v44 = v109;
          if (v109 == v113)
          {
            goto LABEL_52;
          }
        }

        v48 = v113 - v44;
        v49 = (&v119 + v44);
        v50 = &v8[v44];
        do
        {
          v51 = *v50++;
          *v49++ = tcmn[v51];
          --v48;
        }

        while (v48);
LABEL_52:
        *(&v119 + v113) = 0;
        if (v113 < 2)
        {
          goto LABEL_67;
        }

        v52 = v119;
        if (v119 - 2 < 3)
        {
          v53 = v120;
          if (v120 < 0)
          {
            if (v121 < 0)
            {
              if (v122 < 0)
              {
                if (v123 < 0)
                {
                  if (v124 < 0)
                  {
                    v88 = __si_assert_copy_extra_332();
                    v89 = v88;
                    v90 = "";
                    if (v88)
                    {
                      v90 = v88;
                    }

                    __message_assert("%s:%u: failed assertion '%s' %s readVInt32: exceeds max size for uint32_t", "VIntUtils.h", 342, "(b4 & 0x80) == 0", v90);
                    free(v89);
                    if (__valid_fs(-1))
                    {
                      v91 = 2989;
                    }

                    else
                    {
                      v91 = 3072;
                    }

                    *v91 = -559038737;
                    abort();
                  }

                  v54 = 0;
                  v55 = 6;
                  v53 = ((v123 & 0x7F) << 21) | (v124 << 28) | ((v122 & 0x7F) << 14) | ((v121 & 0x7F) << 7) | v120 & 0x7F;
                }

                else
                {
                  v54 = 0;
                  v55 = 5;
                  v53 = ((v122 & 0x7F) << 14) | (v123 << 21) | ((v121 & 0x7F) << 7) | v120 & 0x7F;
                }
              }

              else
              {
                v54 = 0;
                v55 = 4;
                v53 = ((v121 & 0x7F) << 7) | (v122 << 14) | v120 & 0x7F;
              }
            }

            else
            {
              v54 = 0;
              v53 = v120 & 0x7F | (v121 << 7);
              v55 = 3;
            }
          }

          else
          {
            v54 = 0;
            v55 = 2;
          }

          goto LABEL_69;
        }

        if (v119 == 1)
        {
          v54 = v120 == 2;
          if (v120 == 2)
          {
            v56 = 2;
          }

          else
          {
            v56 = 1;
          }

          v55 = v56 + 1;
          if (v120 == 2)
          {
            v53 = v121;
          }

          else
          {
            v53 = v120;
          }

          if ((v53 & 0x80) != 0)
          {
            v57 = v56 + 2;
            v58 = *(&v119 + v55);
            v59 = v58;
            if (v58 < 0)
            {
              v79 = v56 + 3;
              v80 = *(&v119 + v57);
              v81 = *(&v119 + v57);
              if (v80 < 0)
              {
                v55 = v56 | 4;
                v82 = *(&v119 + v79);
                v83 = *(&v119 + v79);
                if (v82 < 0)
                {
                  v85 = *(&v119 + v55);
                  if (v85 < 0)
                  {
                    v92 = __si_assert_copy_extra_332();
                    v93 = v92;
                    v94 = "";
                    if (v92)
                    {
                      v94 = v92;
                    }

                    __message_assert("%s:%u: failed assertion '%s' %s readVInt32: exceeds max size for uint32_t", "VIntUtils.h", 342, "(b4 & 0x80) == 0", v94);
                    free(v93);
                    if (__valid_fs(-1))
                    {
                      MEMORY[0xBAD] = -559038737;
                      abort();
                    }

                    MEMORY[0xC00] = -559038737;
                    abort();
                  }

                  v52 = 0;
                  v55 = v56 + 5;
                  v84 = ((v83 & 0x7F) << 21) | (v85 << 28) | ((v81 & 0x7F) << 14);
                }

                else
                {
                  v52 = 0;
                  v84 = ((v81 & 0x7F) << 14) | (v83 << 21);
                }

                v53 = v84 & 0xFFFFC000 | ((v59 & 0x7F) << 7) | v53 & 0x7F;
                v40 = v110;
              }

              else
              {
                v52 = 0;
                v55 = v56 + 3;
                v53 = ((v59 & 0x7F) << 7) | (v81 << 14) | v53 & 0x7F;
                v40 = v110;
              }
            }

            else
            {
              v52 = 0;
              v53 = v53 & 0x7F | (v58 << 7);
              v55 = v56 + 2;
            }

LABEL_69:
            v60 = &v119 + v55;
            v61 = *v108;
            if (v61 <= 5)
            {
              if (v108 <= v60)
              {
                v64 = v108;
                v69 = "";
                v67 = "";
                v68 = "[*] ";
                if (v61 != 1)
                {
                  if (!v53)
                  {
LABEL_114:
                    if (dword_1EBF46AD0 < 5)
                    {
                      goto LABEL_115;
                    }

                    v101 = *__error();
                    logb = _SILogForLogForCategory(1);
                    if (os_log_type_enabled(logb, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 136315906;
                      v115 = "match ";
                      v116 = 2080;
                      *v117 = v67;
                      *&v117[8] = 2080;
                      *&v117[10] = v69;
                      *&v117[18] = 2080;
                      *&v117[20] = v60;
                      _os_log_impl(&dword_1C278D000, logb, OS_LOG_TYPE_DEFAULT, "%s%s%s%s", buf, 0x2Au);
                    }

                    v71 = v101;
LABEL_134:
                    *__error() = v71;
                    goto LABEL_115;
                  }

LABEL_82:
                  if (v52)
                  {
                    if (dword_1EBF46AD0 >= 5)
                    {
                      v98 = v52;
                      v70 = v53;
                      v71 = *__error();
                      log = _SILogForLogForCategory(1);
                      if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 136315906;
                        v115 = "match ";
                        v116 = 1024;
                        *v117 = v70;
                        *&v117[4] = 1024;
                        *&v117[6] = v98;
                        *&v117[10] = 2080;
                        *&v117[12] = v60;
                        _os_log_impl(&dword_1C278D000, log, OS_LOG_TYPE_DEFAULT, "%s(%d) [%d] %s", buf, 0x22u);
                      }

                      goto LABEL_134;
                    }
                  }

                  else
                  {
                    v17 = v61 == 3;
                    v72 = v61 == 3;
                    v73 = "";
                    if (v17)
                    {
                      v73 = "[f] ";
                      v74 = 1;
                    }

                    else
                    {
                      v74 = v54;
                    }

                    v17 = !v54 || !v72;
                    v75 = "[l] ";
                    if (!v17)
                    {
                      v75 = "[fl] ";
                    }

                    if (v54)
                    {
                      v76 = v75;
                    }

                    else
                    {
                      v76 = v73;
                    }

                    if (v74 == 1)
                    {
                      if (dword_1EBF46AD0 >= 5)
                      {
                        v99 = v53;
                        v71 = *__error();
                        loga = _SILogForLogForCategory(1);
                        if (os_log_type_enabled(loga, OS_LOG_TYPE_DEFAULT))
                        {
                          *buf = 136315906;
                          v115 = "match ";
                          v116 = 1024;
                          *v117 = v99;
                          *&v117[4] = 2080;
                          *&v117[6] = v76;
                          *&v117[14] = 2080;
                          *&v117[16] = v60;
                          _os_log_impl(&dword_1C278D000, loga, OS_LOG_TYPE_DEFAULT, "%s(%d) %s%s", buf, 0x26u);
                        }

                        goto LABEL_134;
                      }
                    }

                    else if (dword_1EBF46AD0 >= 5)
                    {
                      v100 = v53;
                      v71 = *__error();
                      v77 = _SILogForLogForCategory(1);
                      if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 136315650;
                        v115 = "match ";
                        v116 = 1024;
                        *v117 = v100;
                        *&v117[4] = 2080;
                        *&v117[6] = v60;
                        _os_log_impl(&dword_1C278D000, v77, OS_LOG_TYPE_DEFAULT, "%s(%d) %s", buf, 0x1Cu);
                      }

                      goto LABEL_134;
                    }
                  }

LABEL_115:
                  v8 = v106;
                  v5 = a1;
                  goto LABEL_116;
                }

LABEL_113:
                *v64 = 0;
                v69 = v68;
                if (!v53)
                {
                  goto LABEL_114;
                }

                goto LABEL_82;
              }

              v62 = v40 - v55;
              v63 = 1;
              v64 = v108;
              v65 = v108;
              while (1)
              {
                v66 = *--v65;
                if (v66 > 5)
                {
                  break;
                }

                ++v63;
                v64 = v65;
                if (v65 <= v60)
                {
                  v63 = v62;
                  v64 = v60;
                  break;
                }
              }

              if (*v64 == 1)
              {
                if (v63 == 1)
                {
                  v67 = "";
                  v68 = "[*] ";
                  goto LABEL_113;
                }

                v78 = v64[1];
                if ((v78 - 4) < 2)
                {
                  v68 = "[*] ";
                }

                else
                {
                  if (v78 != 1)
                  {
                    if (v78 == 2)
                    {
                      v67 = "(0) ";
                      v68 = "";
                    }

                    else
                    {
                      v68 = "";
                      v67 = "";
                    }

                    goto LABEL_113;
                  }

                  v68 = "";
                }

                v67 = "(2) ";
                goto LABEL_113;
              }
            }

            v69 = "";
            v67 = "";
            if (!v53)
            {
              goto LABEL_114;
            }

            goto LABEL_82;
          }
        }

        else
        {
LABEL_67:
          v55 = 0;
          v54 = 0;
          v53 = 0;
        }

        v52 = 0;
        goto LABEL_69;
      }

      if (!v22)
      {
        break;
      }

LABEL_117:
      if (!v22 || v22 != v30)
      {
        goto LABEL_137;
      }

      v19 = v22 - 12448 < 0x60;
      v20 = v22 - 12352 < 0x60;
      v11 += v39;
    }

    if ((*(*(a2 + 1240) + 17) & 8) != 0)
    {
      goto LABEL_44;
    }

    v22 = 0;
LABEL_137:
    v86 = v22 >= v30;
    v7 = v103;
    if (v86)
    {
      v7 = v104;
    }

LABEL_140:
    v3 = a3;
LABEL_4:
    if (++v6 < *(a2 + 1152))
    {
      continue;
    }

    return v7 > 0;
  }
}

uint64_t si_fileProvidersPsid_oid_to_oid_path(uint64_t a1, uint64_t a2, void *a3, int a4, uint64_t a5, int *a6, const __CFString *a7, const __CFString *a8, uint64_t a9, uint64_t a10)
{
  v30 = *MEMORY[0x1E69E9840];
  if (!a7 || !a9)
  {
    goto LABEL_8;
  }

  v17 = (*(copyFPItemAllParentsBlock + 16))(copyFPItemAllParentsBlock, a7, a8, a9, a10);
  if (!v17)
  {
    if (*__error() == 60)
    {
      return 0xFFFFFFFFLL;
    }

LABEL_8:
    *__error() = 2;
    return 0xFFFFFFFFLL;
  }

  v18 = v17;
  Count = CFArrayGetCount(v17);
  if (Count < 0)
  {
    goto LABEL_8;
  }

  v20 = Count;
  if (a4)
  {
    *a3 = a2;
    v21 = 1;
  }

  else
  {
    v21 = 0;
  }

  bzero(buffer, 0x400uLL);
  v27 = *(a1 + 16);
  v28 = -1;
  if (v20)
  {
    v24 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v18, v24);
      if (!CFStringGetCString(ValueAtIndex, buffer, 1024, 0x8000100u))
      {
        break;
      }

      if (strstr(buffer, "NSFileProviderRootContainerItemIdentifier"))
      {
        v26 = 2;
      }

      else
      {
        si_get_object_for_identifier_createParentDBO(*v27, a7, ValueAtIndex, a8, 1, &v28, 0, 1);
        v26 = v28;
      }

      a3[(v21 + v24++)] = v26;
      if (v20 == v24)
      {
        v22 = 0;
        v21 += v24;
        goto LABEL_22;
      }
    }

    *__error() = 2;
    v22 = 0xFFFFFFFFLL;
    v21 += v24;
  }

  else
  {
    v22 = 0;
  }

LABEL_22:
  *a6 = v21;
  CFRelease(v18);
  return v22;
}

uint64_t si_fileProvidersPsid_oid_to_parent(uint64_t a1, uint64_t a2, uint64_t a3, const __CFString *a4, const __CFString *a5, uint64_t a6, uint64_t a7)
{
  v11 = *(a1 + 16);
  v12 = __error();
  if (a4 && a6)
  {
    *v12 = 0;
    v13 = (*(copyFPItemParentBlock + 16))(copyFPItemParentBlock, a4, a5, a6, a7);
    v16 = -1;
    if (!v13)
    {
      goto LABEL_9;
    }

    v14 = v13;
    if (CFStringHasSuffix(v13, @"NSFileProviderRootContainerItemIdentifier"))
    {
      v16 = 2;
    }

    else
    {
      si_get_object_for_identifier_createParentDBO(*v11, a4, v14, a5, 1, &v16, 0, 1);
    }

    CFRelease(v14);
    if (v16 == -1)
    {
LABEL_9:
      if (*__error() != 60)
      {
        *__error() = 2;
      }
    }

    return v16;
  }

  else
  {
    *v12 = 22;
    return -1;
  }
}

uint64_t si_fileProvidersPsid_close(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = *(v1 + 8);
  if ((result & 0x80000000) == 0)
  {
    result = close(result);
    *(v1 + 8) = -1;
  }

  return result;
}

uint64_t si_fileProvidersPsid_path_to_oid_path(uint64_t a1, char *__s, uint64_t a3, uint64_t a4)
{
  v33 = *MEMORY[0x1E69E9840];
  if (!__s)
  {
    goto LABEL_14;
  }

  if (*__s == 47)
  {
    v5 = strlen(__s);
    v6 = CFURLCreateFromFileSystemRepresentation(*MEMORY[0x1E695E480], __s, v5, 0);
    if (!v6)
    {
      return 0;
    }

    v7 = v6;
    v8 = (*(copyFPItemBlock + 16))(copyFPItemBlock, v6);
    CFRelease(v7);
    if (!v8)
    {
      return 0;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(v8, 0);
    v10 = CFArrayGetValueAtIndex(v8, 1);
    if (gSILogLevels[0] >= 5)
    {
      theString = v10;
      v21 = *__error();
      v22 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *cStr = 136315394;
        CStringPtr = CFStringGetCStringPtr(ValueAtIndex, 0x8000100u);
        v31 = 2080;
        v32 = CFStringGetCStringPtr(theString, 0x8000100u);
        _os_log_impl(&dword_1C278D000, v22, OS_LOG_TYPE_DEFAULT, "path_to_oid_path, bundleID: %s, uniqueID: %s", cStr, 0x16u);
      }

      *__error() = v21;
    }

    v12 = oidPathDepthFromBundleIDUniqueID(v11);
    v13 = v8;
    goto LABEL_13;
  }

  if (!strchr(__s, 58))
  {
LABEL_14:
    *__error() = 22;
    return 0xFFFFFFFFLL;
  }

  bzero(cStr, 0x400uLL);
  bzero(v28, 0x400uLL);
  __strncpy_chk();
  strlen(__s);
  __strncpy_chk();
  if (gSILogLevels[0] >= 5)
  {
    v19 = *__error();
    v20 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v25 = cStr;
      v26 = 2080;
      v27 = v28;
      _os_log_impl(&dword_1C278D000, v20, OS_LOG_TYPE_DEFAULT, "specialPath_to_oid_path, bundleIDStr: %s, identifierStr: %s", buf, 0x16u);
    }

    *__error() = v19;
  }

  v14 = *MEMORY[0x1E695E480];
  v15 = CFStringCreateWithCString(*MEMORY[0x1E695E480], cStr, 0x8000100u);
  v16 = CFStringCreateWithCString(v14, v28, 0x8000100u);
  v12 = oidPathDepthFromBundleIDUniqueID(v17);
  if (v15)
  {
    CFRelease(v15);
  }

  if (v16)
  {
    v13 = v16;
LABEL_13:
    CFRelease(v13);
  }

  return v12;
}