uint64_t mdb_cursor_next(uint64_t a1, void *a2, void *a3, int a4)
{
  v8 = *(a1 + 68);
  if (a4 == 9 && (v8 & 8) != 0)
  {
    return 4294936498;
  }

  if (v8)
  {
    v10 = *(a1 + 66);
    v11 = *(a1 + 72 + 8 * v10);
    if ((v8 & 2) != 0)
    {
      if (((*(v11 + 12) - 16) >> 1) - 1 <= *(a1 + 2 * v10 + 328))
      {
        return 4294936498;
      }

      *(a1 + 68) = v8 & 0xFFFFFFFD;
    }

    if ((*(*(a1 + 40) + 4) & 4) == 0)
    {
      goto LABEL_13;
    }

    v15 = v11 + *(v11 + 2 * *(a1 + 2 * v10 + 328) + 16);
    if ((*(v15 + 4) & 4) != 0)
    {
      if ((a4 & 0xFFFFFFFE) == 8)
      {
        result = mdb_cursor_next(*(a1 + 16), a3, 0, 8);
        if (a4 != 8 || result != -30798)
        {
          if (!a2 || result)
          {
            return result;
          }

          v17 = *(v15 + 6);
          v18 = v15 + 8;
LABEL_37:
          *a2 = v17;
          a2[1] = v18;
          return result;
        }
      }

LABEL_13:
      v12 = *(a1 + 68);
      if ((v12 & 8) != 0)
      {
        *(a1 + 68) = v12 & 0xFFFFFFF7;
      }

      else
      {
        v13 = *(a1 + 66);
        v14 = *(a1 + 328 + 2 * v13) + 1;
        if (v14 >= (*(v11 + 12) - 16) >> 1)
        {
          result = mdb_cursor_sibling(a1, 1);
          if (result)
          {
            *(a1 + 68) |= 2u;
            return result;
          }

          v11 = *(a1 + 72 + 8 * *(a1 + 66));
        }

        else
        {
          *(a1 + 328 + 2 * v13) = v14;
        }
      }

      if ((*(v11 + 10) & 0x20) != 0)
      {
        result = 0;
        v17 = **(a1 + 40);
        v18 = v11 + *(a1 + 2 * *(a1 + 66) + 328) * v17 + 16;
      }

      else
      {
        v16 = v11 + *(v11 + 2 * *(a1 + 2 * *(a1 + 66) + 328) + 16);
        if ((*(v16 + 4) & 4) != 0)
        {
          mdb_xcursor_init1(a1, v11 + *(v11 + 2 * *(a1 + 2 * *(a1 + 66) + 328) + 16));
          result = mdb_cursor_first(*(a1 + 16), a3, 0);
          if (result)
          {
            return result;
          }
        }

        else if (a3)
        {
          result = mdb_node_read(a1, (v11 + *(v11 + 2 * *(a1 + 2 * *(a1 + 66) + 328) + 16)), a3);
          if (result)
          {
            return result;
          }
        }

        result = 0;
        if (!a2)
        {
          return result;
        }

        v17 = *(v16 + 6);
        v18 = v16 + 8;
      }

      goto LABEL_37;
    }

    *(*(a1 + 16) + 68) &= 0xFFFFFFFC;
    if (a4 != 9)
    {
      goto LABEL_13;
    }

    return 4294936498;
  }

  return mdb_cursor_first(a1, a2, a3);
}

uint64_t mdb_cursor_last(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 16);
  if (v6)
  {
    *(v6 + 68) &= 0xFFFFFFFC;
  }

  v7 = *(a1 + 68);
  if ((v7 & 1) != 0 && !*(a1 + 66))
  {
    v9 = 0;
  }

  else
  {
    result = mdb_page_search(a1, 0, 8);
    if (result)
    {
      return result;
    }

    v9 = *(a1 + 66);
    v7 = *(a1 + 68);
  }

  v10 = *(a1 + 8 * v9 + 72);
  v11 = ((*(v10 + 12) + 131056) >> 1) - 1;
  *(a1 + 2 * v9 + 328) = v11;
  *(a1 + 68) = v7 | 3;
  v12 = v10 + 16;
  if ((*(v10 + 10) & 0x20) != 0)
  {
    if (a2)
    {
      v14 = **(a1 + 40);
      *a2 = v14;
      v15 = v12 + v14 * v11;
LABEL_18:
      result = 0;
      a2[1] = v15;
      return result;
    }

    return 0;
  }

  v13 = v10 + *(v12 + 2 * v11);
  if ((*(v13 + 4) & 4) != 0)
  {
    mdb_xcursor_init1(a1, v13);
    result = mdb_cursor_last(*(a1 + 16), a3, 0);
    if (result)
    {
      return result;
    }

LABEL_16:
    if (a2)
    {
      *a2 = *(v13 + 6);
      v15 = v13 + 8;
      goto LABEL_18;
    }

    return 0;
  }

  if (!a3)
  {
    goto LABEL_16;
  }

  result = mdb_node_read(a1, v13, a3);
  if (!result)
  {
    goto LABEL_16;
  }

  return result;
}

uint64_t mdb_cursor_sibling(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 64);
  if (v4 < 2)
  {
    return 4294936498;
  }

  v14[5] = v2;
  v14[6] = v3;
  v6 = a2;
  *(a1 + 64) = v4 - 1;
  LOWORD(v9) = *(a1 + 66) - 1;
  *(a1 + 66) = v9;
  v8 = a1 + 328;
  v9 = v9;
  v10 = *(a1 + 328 + 2 * v9);
  if (!a2)
  {
    if (!*(a1 + 328 + 2 * v9))
    {
      goto LABEL_9;
    }

    LOWORD(v10) = v10 - 1;
LABEL_8:
    *(v8 + 2 * v9) = v10;
    goto LABEL_11;
  }

  if (++v10 < (*(*(a1 + 8 * v9 + 72) + 12) - 16) >> 1)
  {
    goto LABEL_8;
  }

LABEL_9:
  result = mdb_cursor_sibling(a1, a2);
  v9 = *(a1 + 66);
  if (result)
  {
    *(a1 + 66) = v9 + 1;
    ++*(a1 + 64);
    return result;
  }

LABEL_11:
  v14[0] = 0;
  v11 = (*(a1 + 72 + 8 * v9) + *(*(a1 + 72 + 8 * v9) + 2 * *(v8 + 2 * v9) + 16));
  result = mdb_page_get(a1, *v11 | (*(v11 + 2) << 32), v14, 0);
  if (result)
  {
    *(a1 + 68) &= 0xFFFFFFFC;
  }

  else
  {
    v12 = v14[0];
    v13 = *(a1 + 64);
    if (v13 < 0x20)
    {
      *(a1 + 64) = v13 + 1;
      *(a1 + 66) = v13;
      *(a1 + 72 + 8 * v13) = v12;
      *(v8 + 2 * v13) = 0;
    }

    else
    {
      *(*(a1 + 24) + 124) |= 2u;
    }

    result = 0;
    if (!v6)
    {
      *(v8 + 2 * *(a1 + 66)) = ((*(v12 + 12) + 131056) >> 1) - 1;
    }
  }

  return result;
}

uint64_t mdb_cursor_prev(uint64_t a1, void *a2, void *a3, int a4)
{
  if (*(a1 + 68))
  {
    v9 = *(a1 + 66);
  }

  else
  {
    result = mdb_cursor_last(a1, a2, a3);
    if (result)
    {
      return result;
    }

    v9 = *(a1 + 66);
    ++*(a1 + 2 * v9 + 328);
  }

  v10 = *(a1 + 72 + 8 * v9);
  if ((*(*(a1 + 40) + 4) & 4) != 0)
  {
    v11 = *(a1 + 2 * v9 + 328);
    if (v11 < (*(v10 + 12) - 16) >> 1)
    {
      v12 = v10 + *(v10 + 2 * v11 + 16);
      if ((*(v12 + 4) & 4) != 0)
      {
        if ((a4 & 0xFFFFFFFE) == 0xC)
        {
          result = mdb_cursor_prev(*(a1 + 16), a3, 0, 12);
          if (a4 != 12 || result != -30798)
          {
            if (!result)
            {
              if (a2)
              {
                *a2 = *(v12 + 6);
                a2[1] = v12 + 8;
              }

              result = 0;
              *(a1 + 68) &= ~2u;
            }

            return result;
          }

          v9 = *(a1 + 66);
        }
      }

      else
      {
        *(*(a1 + 16) + 68) &= 0xFFFFFFFC;
        if (a4 == 13)
        {
          return 4294936498;
        }
      }
    }
  }

  *(a1 + 68) &= 0xFFFFFFF5;
  LOWORD(v13) = *(a1 + 328 + 2 * v9);
  if (!v13)
  {
    result = mdb_cursor_sibling(a1, 0);
    if (result)
    {
      return result;
    }

    v9 = *(a1 + 66);
    v10 = *(a1 + 72 + 8 * v9);
    v13 = (*(v10 + 12) + 131056) >> 1;
  }

  v14 = v13 - 1;
  *(a1 + 328 + 2 * v9) = v14;
  v15 = *(v10 + 10);
  if ((v15 & 2) == 0)
  {
    return 4294936500;
  }

  if ((v15 & 0x20) != 0)
  {
    result = 0;
    v17 = **(a1 + 40);
    v18 = v10 + v14 * v17 + 16;
LABEL_28:
    *a2 = v17;
    a2[1] = v18;
    return result;
  }

  v16 = v10 + *(v10 + 2 * v14 + 16);
  if ((*(v16 + 4) & 4) != 0)
  {
    mdb_xcursor_init1(a1, v10 + *(v10 + 2 * v14 + 16));
    result = mdb_cursor_last(*(a1 + 16), a3, 0);
    if (result)
    {
      return result;
    }

    goto LABEL_26;
  }

  if (!a3 || (result = mdb_node_read(a1, (v10 + *(v10 + 2 * v14 + 16)), a3), !result))
  {
LABEL_26:
    result = 0;
    if (!a2)
    {
      return result;
    }

    v17 = *(v16 + 6);
    v18 = v16 + 8;
    goto LABEL_28;
  }

  return result;
}

uint64_t mdb_cursor_first(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 16);
  if (v6)
  {
    *(v6 + 68) &= 0xFFFFFFFC;
  }

  v7 = *(a1 + 68);
  if ((v7 & 1) != 0 && !*(a1 + 66))
  {
    v9 = 0;
  }

  else
  {
    result = mdb_page_search(a1, 0, 4);
    if (result)
    {
      return result;
    }

    v9 = *(a1 + 66);
    v7 = *(a1 + 68);
  }

  v10 = *(a1 + 8 * v9 + 72);
  v11 = v10 + 16;
  v12 = *(v10 + 16);
  *(a1 + 68) = v7 & 0xFFFFFFFC | 1;
  *(a1 + 2 * v9 + 328) = 0;
  if ((*(v10 + 10) & 0x20) != 0)
  {
    if (a2)
    {
      *a2 = **(a1 + 40);
LABEL_18:
      result = 0;
      a2[1] = v11;
      return result;
    }

    return 0;
  }

  v13 = v10 + v12;
  if ((*(v10 + v12 + 4) & 4) != 0)
  {
    mdb_xcursor_init1(a1, v10 + v12);
    result = mdb_cursor_first(*(a1 + 16), a3, 0);
    if (result)
    {
      return result;
    }

LABEL_16:
    if (a2)
    {
      *a2 = *(v13 + 6);
      v11 = v13 + 8;
      goto LABEL_18;
    }

    return 0;
  }

  if (!a3)
  {
    goto LABEL_16;
  }

  result = mdb_node_read(a1, (v10 + v12), a3);
  if (!result)
  {
    goto LABEL_16;
  }

  return result;
}

uint64_t mdb_page_spill(uint64_t a1, void *a2, void *a3)
{
  if ((*(a1 + 68) & 4) != 0)
  {
    return 0;
  }

  v4 = *(a1 + 24);
  v5 = *(*(a1 + 40) + 6);
  if (*(a1 + 32) >= 2u)
  {
    v5 += *(*(v4 + 88) + 54);
  }

  if (a2)
  {
    v6 = *(*(v4 + 32) + 16);
    v5 += (*a2 + *a3 + v6 + 8) / v6;
  }

  if (*(v4 + 128) > (2 * v5))
  {
    return 0;
  }

  v8 = *(v4 + 72);
  v9 = *(v4 + 64);
  if (v9)
  {
    v10 = *v9;
    if (*v9)
    {
      LODWORD(v11) = 0;
      if ((v10 + 1) > 2)
      {
        v12 = (v10 + 1);
      }

      else
      {
        v12 = 2;
      }

      v13 = (v9 + 2);
      v14 = v12 - 1;
      do
      {
        v16 = *v13++;
        v15 = v16;
        if ((v16 & 1) == 0)
        {
          LODWORD(v11) = v11 + 1;
          *&v9[2 * v11] = v15;
        }

        --v14;
      }

      while (v14);
      v11 = v11;
    }

    else
    {
      v11 = 0;
    }

    *v9 = v11;
  }

  else
  {
    v17 = mdb_midl_alloc(0x1FFFF);
    *(v4 + 64) = v17;
    if (!v17)
    {
      return 12;
    }
  }

  result = mdb_pages_xkeep(a1, 16, 1);
  if (!result)
  {
    v18 = *v8;
    if (*v8)
    {
      if ((2 * v5) < 0x4000)
      {
        v19 = 0x3FFF;
      }

      else
      {
        v19 = 2 * v5;
      }

      do
      {
        v20 = &v8[4 * v18];
        v21 = v20[1];
        if ((*(v21 + 10) & 0xC000) == 0)
        {
          v22 = 2 * *v20;
          v23 = *v4;
          if (*v4)
          {
            while (1)
            {
              v24 = v23[8];
              if (v24)
              {
                v25 = mdb_midl_search(v24, v22);
                v26 = v23[8];
                if (*v26 >= v25 && v26[v25] == v22)
                {
                  break;
                }
              }

              v23 = *v23;
              if (!v23)
              {
                goto LABEL_34;
              }
            }

            *(v21 + 10) |= 0x8000u;
          }

          else
          {
LABEL_34:
            result = mdb_midl_append((v4 + 64), v22);
            if (result)
            {
              goto LABEL_42;
            }

            --v19;
          }
        }

        --v18;
      }

      while (v18 && v19);
    }

    mdb_midl_sort(*(v4 + 64));
    result = mdb_page_flush(v4, v18);
    if (!result)
    {
      result = mdb_pages_xkeep(a1, 32784, v18);
    }
  }

LABEL_42:
  if (result)
  {
    v27 = 2;
  }

  else
  {
    v27 = 8;
  }

  *(v4 + 124) |= v27;
  return result;
}

void mdb_page_new(uint64_t a1, __int16 a2, uint64_t a3, uint64_t **a4)
{
  v5 = a3;
  v10 = 0;
  mdb_page_alloc(a1, a3, &v10);
  if (!v8)
  {
    v9 = v10;
    *(v10 + 5) = a2 | 0x10;
    *(v9 + 6) = 16;
    *(v9 + 7) = *(*(*(a1 + 24) + 32) + 16);
    if (a2)
    {
      ++*(*(a1 + 40) + 8);
    }

    else if ((a2 & 2) != 0)
    {
      ++*(*(a1 + 40) + 16);
    }

    else if ((a2 & 4) != 0)
    {
      *(*(a1 + 40) + 24) += v5;
      *(v9 + 3) = v5;
    }

    *a4 = v9;
  }
}

void mdb_cursor_touch(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 >= 2 && (**(a1 + 56) & 0x21) == 0)
  {
    v10 = 0;
    memset(v9, 0, sizeof(v9));
    memset(v8, 0, sizeof(v8));
    v6 = *(a1 + 24);
    if (*(*(v6 + 96) + 4 * v2) != *(*(*(v6 + 32) + 152) + 4 * v2))
    {
      return;
    }

    mdb_cursor_init(v9, v6, 1u, v8);
    mdb_page_search(v9, *(a1 + 48), 1);
    if (v7)
    {
      return;
    }

    **(a1 + 56) |= 1u;
  }

  *(a1 + 66) = 0;
  if (*(a1 + 64))
  {
    do
    {
      mdb_page_touch(a1);
      v3 = *(a1 + 64);
      if (v4)
      {
        break;
      }

      v5 = *(a1 + 66) + 1;
      *(a1 + 66) = v5;
    }

    while (v3 > v5);
    *(a1 + 66) = v3 - 1;
  }
}

void mdb_update_key(uint64_t a1, const void **a2)
{
  v3 = *(a1 + 66);
  v4 = *(a1 + 2 * v3 + 328);
  v5 = *(a1 + 8 * v3 + 72);
  v6 = v5[v4 + 8];
  v7 = (v5 + v6);
  v8 = *a2;
  v9 = (*a2 + 1) & 0xFFFFFFFE;
  v10 = *(v5 + v6 + 6);
  v11 = (v10 + 1) & 0x1FFFE;
  v12 = v9 - v11;
  if (v9 != v11)
  {
    if (v12 <= 0)
    {
      v13 = v5[6];
    }

    else
    {
      v13 = v5[6];
      if (v12 > (v5[7] - v13))
      {
        v15 = *v7 | (v7[2] << 32);
        mdb_node_del(a1, 0);

        mdb_page_split(a1, a2, 0, v15, 0x40000);
        return;
      }
    }

    v16 = ((v13 + 131056) >> 1);
    if (((v13 + 131056) >> 1))
    {
      v17 = v5 + 8;
      do
      {
        v18 = *v17;
        if (v18 <= v6)
        {
          *v17 = v18 - v12;
        }

        ++v17;
        --v16;
      }

      while (v16);
    }

    memmove(v5 + v5[7] - v12, v5 + v5[7], v6 - v5[7] + 8);
    v5[7] -= v12;
    v7 = (v5 + v5[v4 + 8]);
    v10 = v7[3];
    v8 = *a2;
  }

  if (v8 != v10)
  {
    v7[3] = v8;
  }

  if (v8)
  {
    memcpy(v7 + 4, a2[1], v8);
  }
}

void mdb_page_alloc(uint64_t a1, signed int a2, uint64_t **a3)
{
  v3 = a2;
  v4 = *(a1 + 24);
  v5 = *(v4 + 32);
  v7 = (v5 + 176);
  v6 = *(v5 + 176);
  if (v6)
  {
    v8 = *v6;
  }

  else
  {
    v8 = 0;
  }

  v40 = 0;
  v39 = 0;
  memset(v38, 0, sizeof(v38));
  v9 = (a2 - 1);
  if (a2 == 1)
  {
    v10 = *(v4 + 48);
    if (v10)
    {
      *(v4 + 48) = v10[6];
      --*(v4 + 56);
      *a3 = v10;
      return;
    }
  }

  *a3 = 0;
  if (!*(v4 + 128))
  {
    goto LABEL_54;
  }

  oldest = 0;
  v12 = 0;
  v35 = 0;
  v13 = 1;
  v14 = 1 - a2;
  v33 = 60 * a2;
  while (1)
  {
    v41 = 0;
    v42 = 0;
    v36 = 0;
    v37 = 0;
    if (v8 > v9)
    {
      v15 = v7;
      v16 = v8;
      v17 = v8;
      while (1)
      {
        v18 = v6[v17];
        if (v6[v14 + v17] == v18 + v9)
        {
          goto LABEL_41;
        }

        if (--v17 <= v9)
        {
          v3 = a2;
          v19 = v33-- < 1;
          v8 = v16;
          if (v19)
          {
            goto LABEL_39;
          }

          v7 = v15;
          break;
        }
      }
    }

    if (v13)
    {
      v40 = *(v5 + 184);
      oldest = *(v5 + 168);
      mdb_cursor_init(v38, v4, 0, 0);
      v20 = v40;
      if (v40)
      {
        v42 = &v40;
        v41 = 8;
        v12 = 17;
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v20 = v40;
    }

    v21 = v20 + 1;
    v40 = v21;
    if (oldest <= v21)
    {
      if (!v35)
      {
        oldest = mdb_find_oldest(v4);
        *(v5 + 168) = oldest;
        v21 = v40;
      }

      if (oldest <= v21)
      {
        goto LABEL_39;
      }

      v35 = 1;
    }

    mdb_cursor_get(v38, &v41, 0, v12);
    if (v22)
    {
      break;
    }

    v23 = *v42;
    v40 = v23;
    if (oldest <= v23)
    {
      if (!v35)
      {
        oldest = mdb_find_oldest(v4);
        *(v5 + 168) = oldest;
        v23 = v40;
      }

      if (oldest <= v23)
      {
        goto LABEL_39;
      }

      v35 = 1;
    }

    if (mdb_node_read(v38, (*(&v38[4] + WORD1(v38[4]) + 1) + *(*(&v38[4] + WORD1(v38[4]) + 1) + 2 * *(&v38[20] + WORD1(v38[4]) + 4) + 16)), &v36))
    {
      goto LABEL_54;
    }

    v24 = v37;
    if (v6)
    {
      if (mdb_midl_need(v7, *v37))
      {
        goto LABEL_54;
      }

      v6 = *v7;
    }

    else
    {
      v6 = mdb_midl_alloc(*v37);
      *v7 = v6;
      if (!v6)
      {
        goto LABEL_54;
      }
    }

    *(v5 + 184) = v40;
    mdb_midl_xmerge(v6, v24);
    v13 = 0;
    v8 = *v6;
    v12 = 8;
  }

  if (v22 != -30798)
  {
    goto LABEL_54;
  }

LABEL_39:
  v16 = v8;
  v18 = *(v4 + 16);
  if ((v18 + v3) >= *(v5 + 128))
  {
    goto LABEL_54;
  }

  v17 = 0;
LABEL_41:
  if ((*(v5 + 14) & 8) != 0)
  {
    v25 = (*(v5 + 56) + v18 * *(v5 + 16));
  }

  else
  {
    v25 = mdb_page_malloc(v4, a2);
    if (!v25)
    {
LABEL_54:
      *(v4 + 124) |= 2u;
      return;
    }
  }

  if (v17)
  {
    v26 = v16 - a2;
    *v6 = v26;
    v27 = v17 - a2;
    if (v17 - a2 < v26)
    {
      v28 = v26 - v27;
      v29 = &v6[v27 + 1];
      v30 = v17 + 1;
      do
      {
        *v29++ = v6[v30++];
        --v28;
      }

      while (v28);
    }
  }

  else
  {
    *(v4 + 16) = v18 + a2;
  }

  *v25 = v18;
  v31 = mdb_mid2l_append;
  if ((*(v4 + 124) & 0x80000) == 0)
  {
    v31 = mdb_mid2l_insert;
  }

  v41 = v18;
  v42 = v25;
  v31(*(v4 + 72), &v41);
  --*(v4 + 128);
  *a3 = v25;
}

void *mdb_node_del(void *result, int a2)
{
  v2 = *(result + 33);
  v3 = result[v2 + 9];
  v4 = *(result + v2 + 164);
  v5 = v3[6];
  v6 = v5 + 131056;
  v7 = v3[5];
  if ((v7 & 0x20) != 0)
  {
    v12 = a2;
    v13 = ~v4 + (v6 >> 1);
    if (v13)
    {
      v14 = v3 + v4 * a2 + 16;
      result = memmove(v14, &v14[a2], v13 * a2);
      LOWORD(v5) = v3[6];
    }

    v3[6] = v5 - 2;
    v15 = v12 + v3[7] - 2;
  }

  else
  {
    v8 = v3[v4 + 8];
    v9 = v3 + v8;
    v10 = *(v3 + v8 + 6);
    v11 = v10 + 8;
    if ((v7 & 2) != 0)
    {
      if (*(v9 + 2))
      {
        v11 = v10 + 16;
      }

      else
      {
        v11 += *v9;
      }
    }

    v16 = (v11 + 1) & 0xFFFFFFFE;
    v17 = (v6 >> 1);
    if (v17)
    {
      v18 = 0;
      v19 = v3 + 8;
      do
      {
        if (v4)
        {
          v20 = *v19;
          if (v20 >= v8)
          {
            v21 = 0;
          }

          else
          {
            v21 = v16;
          }

          v3[v18++ + 8] = v20 + v21;
        }

        ++v19;
        --v4;
        --v17;
      }

      while (v17);
    }

    result = memmove(v3 + v3[7] + v16, v3 + v3[7], v8 - v3[7]);
    v3[6] -= 2;
    v15 = v3[7] + v16;
  }

  v3[7] = v15;
  return result;
}

uint64_t mdb_page_get(uint64_t a1, unint64_t a2, unint64_t *a3, int *a4)
{
  v7 = *(a1 + 24);
  if ((*(a1 + 70) & 0xA) != 0)
  {
LABEL_10:
    if (*(v7 + 16) <= a2)
    {
      *(v7 + 124) |= 2u;
      return 4294936499;
    }

    v9 = 0;
  }

  else
  {
    v8 = 2 * a2;
    v9 = 1;
    v10 = *(a1 + 24);
    while (1)
    {
      v11 = v10[8];
      v12 = v10[9];
      if (v11)
      {
        v13 = mdb_midl_search(v11, 2 * a2);
        v14 = v10[8];
        if (*v14 >= v13 && v14[v13] == v8)
        {
          break;
        }
      }

      if (*v12)
      {
        v15 = mdb_mid2l_search(v12, a2);
        if (*v12 >= v15 && *&v12[4 * v15] == a2)
        {
          v16 = *&v12[4 * v15 + 2];
          goto LABEL_13;
        }
      }

      ++v9;
      v10 = *v10;
      if (!v10)
      {
        goto LABEL_10;
      }
    }
  }

  v16 = *(*(v7 + 32) + 56) + *(*(v7 + 32) + 16) * a2;
LABEL_13:
  *a3 = v16;
  result = 0;
  if (a4)
  {
    *a4 = v9;
  }

  return result;
}

uint64_t mdb_page_unspill(uint64_t a1, _WORD *a2, char **a3)
{
  v6 = *(a1 + 32);
  v7 = 2 * *a2;
  v8 = a1;
  while (1)
  {
    v9 = v8[8];
    if (v9)
    {
      v10 = mdb_midl_search(v9, v7);
      v11 = v8[8];
      if (*v11 >= v10)
      {
        v12 = v10;
        if (v11[v10] == v7)
        {
          break;
        }
      }
    }

    v8 = *v8;
    if (!v8)
    {
      return 0;
    }
  }

  if (!*(a1 + 128))
  {
    return 4294936508;
  }

  if ((a2[5] & 4) != 0)
  {
    v14 = *(a2 + 3);
  }

  else
  {
    v14 = 1;
  }

  if ((*(v6 + 14) & 8) != 0)
  {
    v16 = a2;
  }

  else
  {
    v15 = mdb_page_malloc(a1, v14);
    if (!v15)
    {
      return 12;
    }

    v16 = v15;
    v17 = *(v6 + 16);
    if (v14 < 2)
    {
      mdb_page_copy(v15, a2, v17);
    }

    else
    {
      memcpy(v15, a2, (v17 * v14));
    }
  }

  if (v8 == a1)
  {
    v18 = *(a1 + 64);
    if (*v18 == v12)
    {
      *v18 = v12 - 1;
    }

    else
    {
      v18[v12] |= 1uLL;
    }
  }

  v19 = mdb_mid2l_append;
  if ((*(a1 + 124) & 0x80000) == 0)
  {
    v19 = mdb_mid2l_insert;
  }

  v20[0] = *v16;
  v20[1] = v16;
  (v19)(*(a1 + 72), v20);
  result = 0;
  --*(a1 + 128);
  *(v16 + 5) |= 0x10u;
  *a3 = v16;
  return result;
}

char *mdb_page_malloc(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + 32);
  v4 = *(v3 + 16);
  if (a2 == 1)
  {
    v5 = *(v3 + 192);
    if (v5)
    {
      *(v3 + 192) = *v5;
      return v5;
    }

    v7 = v4 - 16;
    v6 = 16;
  }

  else
  {
    v6 = v4 * a2 - v4;
    v7 = *(v3 + 16);
    v4 = v4 * a2;
  }

  v8 = malloc_type_malloc(v4, 0xE790C6D3uLL);
  v5 = v8;
  if (v8)
  {
    if ((*(v3 + 15) & 1) == 0)
    {
      bzero(&v8[v6], v7);
      *(v5 + 4) = 0;
    }
  }

  else
  {
    *(a1 + 124) |= 2u;
  }

  return v5;
}

uint64_t mdb_ovpage_free(uint64_t a1, _WORD *a2)
{
  v3 = *(a1 + 24);
  v4 = *a2;
  v5 = *(a2 + 3);
  v6 = *(v3 + 32);
  v7 = (v6 + 176);
  if (!*(v6 + 176) || *v3)
  {
LABEL_3:
    result = mdb_midl_append_range((v3 + 40), v4, v5);
    if (result)
    {
      return result;
    }

    goto LABEL_4;
  }

  v10 = *(v3 + 64);
  if ((a2[5] & 0x10) != 0)
  {
    v12 = 0;
  }

  else
  {
    if (!v10)
    {
      goto LABEL_3;
    }

    v11 = mdb_midl_search(*(v3 + 64), 2 * v4);
    if (*v10 < v11)
    {
      goto LABEL_3;
    }

    v12 = v11;
    if (v10[v11] != 2 * v4)
    {
      goto LABEL_3;
    }
  }

  result = mdb_midl_need(v7, v5);
  if (!result)
  {
    if ((a2[5] & 0x10) == 0)
    {
      if (*v10 == v12)
      {
        *v10 = v12 - 1;
      }

      else
      {
        v10[v12] |= 1uLL;
      }

LABEL_23:
      v23 = *v7;
      v24 = **v7;
      if (v24)
      {
        while (1)
        {
          v25 = v5 + v24;
          v26 = *&v23[2 * v24];
          if (v26 >= v4)
          {
            break;
          }

          *&v23[2 * v25] = v26;
          if (!--v24)
          {
            v25 = v5;
            break;
          }
        }
      }

      else
      {
        v25 = v5;
      }

      if (v25 > v24)
      {
        v27 = 0;
        v28 = v25 + ~v24;
        v29 = vdupq_n_s64(v28);
        v30 = &v23[2 * v25];
        do
        {
          v31 = vmovn_s64(vcgeq_u64(v29, vorrq_s8(vdupq_n_s64(v27), xmmword_100018810)));
          if (v31.i8[0])
          {
            *v30 = v4 + v27;
          }

          if (v31.i8[4])
          {
            *(v30 - 1) = v4 + v27 + 1;
          }

          v27 += 2;
          v30 -= 4;
        }

        while (((v28 + 2) & 0x1FFFFFFFELL) != v27);
      }

      *v23 += v5;
LABEL_4:
      result = 0;
      *(*(a1 + 40) + 24) -= v5;
      return result;
    }

    v13 = *(v3 + 72);
    v14 = (*v13)--;
    v15 = &v13[2 * v14];
    v16 = v15[1];
    if (v16 == a2)
    {
LABEL_20:
      ++*(v3 + 128);
      if ((*(v6 + 14) & 8) == 0)
      {
        mdb_dpage_free(v6, a2);
      }

      goto LABEL_23;
    }

    v17 = v14;
    v18 = *v15;
    v19 = v14 + 1;
    v20 = &v13[2 * v17 - 1];
    while (--v19 >= 2)
    {
      v21 = *(v20 - 1);
      v22 = *v20;
      *(v20 - 1) = v18;
      *v20 = v16;
      v20 -= 2;
      v16 = v22;
      v18 = v21;
      if (v22 == a2)
      {
        goto LABEL_20;
      }
    }

    v32 = *v13 + 1;
    *v13 = v32;
    v33 = &v13[2 * v32];
    *v33 = v18;
    v33[1] = v16;
    *(v3 + 124) |= 2u;
    return 4294936517;
  }

  return result;
}

void mdb_page_split(uint64_t a1, const void **a2, size_t *a3, size_t a4, int a5)
{
  v9 = *(*(a1 + 24) + 32);
  v207[0] = 0uLL;
  v205 = 0;
  v206 = 0;
  v203 = 0;
  v204 = 0;
  v201 = 0;
  v202 = 0;
  v200 = 0;
  memset(v199, 0, sizeof(v199));
  v197 = 0u;
  v198 = 0u;
  v10 = (a1 + 72);
  v11 = *(a1 + 66);
  v12 = *(a1 + 72 + 8 * v11);
  v195 = 0u;
  v196 = 0u;
  v13 = (a1 + 328);
  v14 = *(a1 + 328 + 2 * v11);
  v15 = *(v12 + 12);
  mdb_page_new(a1, *(v12 + 10), 1, &v202);
  if (v16)
  {
    return;
  }

  v166 = a2;
  v167 = v14;
  v164 = v15;
  v160 = a4;
  v162 = v10;
  v17 = v202;
  *(v202 + 4) = *(v12 + 8);
  v18 = *(a1 + 66);
  if (*(a1 + 66))
  {
    v155 = 0;
    v156 = a3;
    v161 = v9;
    v19 = v14;
    v20 = v18 - 1;
    goto LABEL_4;
  }

  mdb_page_new(a1, 1, 1, &v201);
  if (v27)
  {
LABEL_179:
    *(*(a1 + 24) + 124) |= 2u;
    return;
  }

  v28 = *(a1 + 64);
  if (*(a1 + 64))
  {
    v29 = v28 + 1;
    v30 = (a1 + 2 * v28 + 328);
    v31 = (a1 + 8 * v28 + 72);
    v32 = v31;
    v33 = v30;
    do
    {
      v35 = *--v32;
      v34 = v35;
      LOWORD(v35) = *--v33;
      *v31 = v34;
      *v30 = v35;
      --v29;
      v31 = v32;
      v30 = v33;
    }

    while (v29 > 1);
  }

  v36 = v201;
  *(a1 + 72) = v201;
  *(a1 + 328) = 0;
  v37 = *(a1 + 40);
  *(v37 + 40) = *v36;
  v18 = *(v37 + 6);
  *(v37 + 6) = v18 + 1;
  mdb_node_add(a1, 0, 0, 0, *v12, 0);
  if (v38)
  {
    *(a1 + 72) = *(a1 + 80);
    *(a1 + 328) = *(a1 + 330);
    v39 = *(a1 + 40);
    *(v39 + 40) = *v12;
    --*(v39 + 6);
    goto LABEL_179;
  }

  v155 = v18;
  v156 = a3;
  v161 = v9;
  v19 = v14;
  v20 = 0;
  ++*(a1 + 64);
  LOWORD(v18) = *(a1 + 66) + 1;
  *(a1 + 66) = v18;
LABEL_4:
  mdb_cursor_copy(a1, &v195);
  *&v196 = 0;
  v21 = WORD1(v199[0]);
  *(v199 + WORD1(v199[0]) + 1) = v17;
  v163 = v13;
  v158 = v20;
  *(&v199[16] + v20 + 4) = v13[v20] + 1;
  if ((a5 & 0x20000) != 0)
  {
    v157 = 0;
    v40 = 0;
    *(&v199[16] + v21 + 4) = 0;
    v207[0] = *a2;
    v41 = *&v207[0];
    v165 = v19;
    LODWORD(v42) = v20;
    goto LABEL_72;
  }

  v22 = v164 - 16;
  v23 = (v164 - 16) >> 1;
  v24 = (v23 + 1) >> 1;
  v165 = v24;
  if ((*(v17 + 5) & 0x20) == 0)
  {
    if ((*(v12 + 10) & 2) != 0)
    {
      v25 = v22 >> 1;
      v51 = v161;
      v52 = *a2 + 16;
      if (*a2 + *v156 + 8 <= *(v161 + 220))
      {
        v52 = *a2 + *v156 + 8;
      }

      LODWORD(v26) = (v52 + 3) & 0xFFFFFFFE;
    }

    else
    {
      v25 = v22 >> 1;
      if (a2)
      {
        v26 = *a2 + 10;
      }

      else
      {
        LODWORD(v26) = 10;
      }

      v51 = v161;
    }

    v54 = *(v51 + 16);
    v55 = mdb_page_malloc(*(a1 + 24), 1u);
    if (!v55)
    {
      goto LABEL_179;
    }

    v56 = v54 - 16;
    v57 = (v26 + 1) & 0xFFFFFFFE;
    *v55 = *v12;
    *(v55 + 5) = *(v12 + 10);
    *(v55 + 6) = 16;
    v161 = v51;
    *(v55 + 7) = *(v51 + 16);
    v40 = v55;
    if (v22 > 1)
    {
      v63 = 0;
      v64 = v55 + 16;
      v65 = (v12 + 16);
      if (v25 <= 1)
      {
        v66 = 1;
      }

      else
      {
        v66 = v25;
      }

      v19 = v167;
      v67 = v167;
      LODWORD(v42) = v20;
      v59 = v165;
      do
      {
        if (!v67)
        {
          *&v64[2 * v63++] = 0;
        }

        v68 = *v65++;
        *&v64[2 * v63++] = v68;
        --v67;
        --v66;
      }

      while (v66);
      if (v56 >= 0)
      {
        v69 = v56;
      }

      else
      {
        v69 = v56 + 15;
      }

      v58 = v25 > v167;
      if (v22 >= 0x40 && v57 <= v69 >> 4 && v25 > v167)
      {
        goto LABEL_69;
      }
    }

    else
    {
      v19 = v167;
      v58 = v25 > v167;
      LODWORD(v42) = v20;
      v59 = v165;
    }

    if (v59 < v19 && v58)
    {
      v60 = v59 - 1;
      v61 = -1;
      v58 = 1;
      LODWORD(v62) = v25;
    }

    else
    {
      if (v58)
      {
        v58 = 0;
        LODWORD(v62) = 0;
        v60 = v59 + ((*(v12 + 10) >> 1) & 1) + 1;
        v61 = 1;
        goto LABEL_56;
      }

      LODWORD(v62) = 0;
      v61 = 1;
      v60 = v25;
    }

    if (v62 != v60)
    {
LABEL_56:
      v70 = 0;
      v71 = v61;
      v72 = v60 - v61;
      v73 = -v62;
      v74 = -v60;
      v62 = v62;
      while (1)
      {
        if (v19 == v62)
        {
          v70 += v57;
        }

        else
        {
          v75 = v12 + *&v40[2 * v62 + 16];
          v76 = v70 + *(v75 + 6) + 10;
          if ((*(v12 + 10) & 2) != 0)
          {
            if (*(v75 + 4))
            {
              v76 += 8;
            }

            else
            {
              v76 += *v75;
            }
          }

          v70 = (v76 + 1) & 0xFFFFFFFE;
        }

        if (v70 > v56 || v72 == v62)
        {
          break;
        }

        v62 += v71;
        v73 -= v71;
        if (v74 == v73)
        {
          goto LABEL_69;
        }
      }

      v59 = v58 - v73;
    }

LABEL_69:
    v157 = v25;
    if (v59 == v19)
    {
      v41 = *a2;
      v77 = a2[1];
      *&v207[0] = *a2;
      *(&v207[0] + 1) = v77;
      v165 = v19;
    }

    else
    {
      v165 = v59;
      v78 = v12 + *&v40[2 * v59 + 16];
      v41 = *(v78 + 6);
      *&v207[0] = v41;
      *(&v207[0] + 1) = v78 + 8;
    }

    goto LABEL_72;
  }

  v43 = v19;
  v44 = v13[v18];
  v45 = v44 - v24;
  v41 = **(a1 + 40);
  v46 = v12 + 16 + v41 * v24;
  v157 = v23;
  v47 = v41 * (v23 - v24);
  *(v12 + 12) -= 2 * (v23 - v24);
  *(v17 + 6) += 2 * (v23 - v24);
  v48 = v41 * (v23 - v24) - 2 * (v23 - v24);
  *(v12 + 14) += v48;
  *(v17 + 7) -= v48;
  *&v207[0] = v41;
  v49 = v46;
  if (v24 == v43)
  {
    v49 = a2[1];
  }

  *(&v207[0] + 1) = v49;
  if (v45 < 0)
  {
    v53 = (v12 + 16 + v41 * v163[*(a1 + 66)]);
    memcpy(v17 + 2, (v12 + 16 + v41 * v24), v41 * (v23 - v24));
    *(&v207[0] + 1) = v17 + 2;
    memmove(&v53[v41], v53, (v165 - v163[*(a1 + 66)]) * v41);
    v19 = v167;
    memcpy(v53, a2[1], v41);
    v40 = 0;
    *(v12 + 12) += 2;
    *(v12 + 14) = *(v12 + 14) - v41 + 2;
  }

  else
  {
    v50 = (v45 * v41);
    if (v44 != v24)
    {
      memcpy(v17 + 2, (v12 + 16 + v41 * v24), (v45 * v41));
    }

    memcpy(v17 + v50 + 16, a2[1], v41);
    memcpy(v17 + v50 + v41 + 16, (v46 + v50), (v47 - v50));
    v40 = 0;
    *(v17 + 6) += 2;
    *(v17 + 7) = *(v17 + 7) - v41 + 2;
    v163[*(a1 + 66)] = v45;
    v19 = v167;
  }

  LODWORD(v42) = v158;
LABEL_72:
  v153 = *(*(v199 + v42 + 1) + 14) - *(*(v199 + v42 + 1) + 12);
  v154 = v41 + 10;
  if (v41 + 10 <= v153)
  {
    --WORD1(v199[0]);
    mdb_node_add(&v195, *(&v199[16] + v42 + 4), v207, 0, *v17, 0);
    ++WORD1(v199[0]);
    v87 = a5;
    v88 = v163;
    if (!v85)
    {
      goto LABEL_93;
    }

    goto LABEL_78;
  }

  v79 = v19;
  v80 = v40;
  v168 = v79;
  v81 = *(a1 + 64);
  --LOWORD(v199[0]);
  --WORD1(v199[0]);
  v194 = 0;
  v192 = 0u;
  v193 = 0u;
  v190 = 0u;
  v191 = 0u;
  v188 = 0u;
  v189 = 0u;
  v186 = 0u;
  v187 = 0u;
  v184 = 0u;
  v185 = 0u;
  v182 = 0u;
  v183 = 0u;
  v180 = 0u;
  v181 = 0u;
  v178 = 0u;
  v179 = 0u;
  v176 = 0u;
  v177 = 0u;
  v174 = 0u;
  v175 = 0u;
  v172 = 0u;
  v173 = 0u;
  v170 = 0u;
  v171 = 0u;
  v82 = *(*(&v196 + 1) + 104);
  v83 = v197;
  v84 = &v195;
  if ((BYTE4(v199[0]) & 4) != 0)
  {
    DWORD1(v174) = 1;
    *&v171 = &v195;
    v84 = &v170;
  }

  *v84 = *(v82 + 8 * v197);
  *(v82 + 8 * v83) = v84;
  v85 = mdb_page_split(&v195, v207, 0, *v17, 0);
  *(v82 + 8 * v83) = *v84;
  if (v85)
  {
    v86 = v161;
    v40 = v80;
    goto LABEL_176;
  }

  if (*(a1 + 64) <= v81)
  {
    v42 = v158;
  }

  else
  {
    v42 = v158 + 1;
  }

  v89 = *(v199 + v42 + 1);
  v90 = v162[v42];
  if (v89 == v90)
  {
    v87 = a5;
    v40 = v80;
    v19 = v168;
    v88 = v163;
    goto LABEL_93;
  }

  v88 = v163;
  v87 = a5;
  if (v163[v42] < (*(v90 + 12) - 16) >> 1)
  {
    v40 = v80;
    v19 = v168;
    goto LABEL_93;
  }

  v40 = v80;
  if (v42 >= 1)
  {
    for (i = 0; i < v42; ++i)
    {
      *&v163[4 * i - 128] = *(v199 + i + 1);
      v163[i] = *(&v199[16] + i + 4);
    }
  }

  v162[v42] = v89;
  v19 = v168;
  if (*(&v199[16] + v42 + 4))
  {
    v163[v42] = *(&v199[16] + v42 + 4) - 1;
    goto LABEL_93;
  }

  v163[v42] = 0;
  v85 = mdb_cursor_sibling(a1, 0);
  if (v85)
  {
LABEL_78:
    if (v85 == -30798)
    {
      v85 = -30779;
    }

    goto LABEL_175;
  }

LABEL_93:
  if ((v87 & 0x20000) != 0)
  {
    v114 = *(a1 + 66);
    v162[v114] = v17;
    v88[v114] = 0;
    mdb_node_add(a1, 0, a2, v156, v160, v87);
    if (v85)
    {
      goto LABEL_175;
    }

    v113 = v154;
    if (*(a1 + 66))
    {
      memcpy(v88, &v199[16] + 8, 2 * *(a1 + 66));
    }

LABEL_138:
    v126 = *(*(*(a1 + 24) + 104) + 8 * *(a1 + 32));
    if (v126)
    {
      v96 = v40;
      v127 = *(v12 + 12) - 16;
      v128 = v127 >> 1;
      v129 = *(a1 + 68);
      v130 = v202;
      v131 = 8 * v155 + 80;
      v132 = 2 * v155 + 330;
      while (1)
      {
        v133 = v126;
        if ((v129 & 4) != 0)
        {
          v133 = v126[2];
        }

        if (v133 == a1 || (*(v126 + 17) & *(v133 + 17) & 1) == 0)
        {
          goto LABEL_171;
        }

        if (!v155)
        {
          break;
        }

        if (v133[9] == v12)
        {
          v134 = (v133 + v131);
          v135 = (v133 + v132);
          v136 = v155 + 1;
          v137 = (v133 + v132);
          v138 = (v133 + v131);
          do
          {
            v139 = *--v137;
            *v135 = v139;
            v140 = *--v138;
            *v134 = v140;
            v135 = v137;
            v134 = v138;
          }

          while (v136-- > 1);
          *(v133 + 164) = v128 <= *(v133 + 164);
          v133[9] = *v162;
          ++*(v133 + 32);
          v142 = *(v133 + 33) + 1;
          *(v133 + 33) = v142;
          goto LABEL_151;
        }

LABEL_171:
        v126 = *v126;
        if (!v126)
        {
          v85 = 0;
          goto LABEL_173;
        }
      }

      v142 = *(v133 + 33);
LABEL_151:
      v143 = *(a1 + 66);
      if (v143 <= v142 && v133[v143 + 9] == v12)
      {
        v145 = v133 + 41;
        v146 = *(v133 + v143 + 164);
        if ((v87 & 0x40000) == 0 && v146 >= v19)
        {
          *(v145 + v143) = v146 + 1;
          v143 = *(a1 + 66);
          v146 = *(v145 + v143);
        }

        if (v128 <= v146)
        {
          v133[v143 + 9] = v130;
          *(v145 + v143) = v146 - (v127 >> 1);
          if (*(a1 + 66))
          {
            v147 = 0;
            do
            {
              *(v145 + v147) = *(&v199[16] + v147 + 4);
              v145[v147 - 32] = *(v199 + v147 + 1);
              ++v147;
            }

            while (v147 < *(a1 + 66));
          }
        }
      }

      else if (v113 <= v153 && v42 <= v142 && v133[v42 + 9] == v162[v42])
      {
        v144 = *(v133 + v42 + 164);
        if (v144 >= v88[v42])
        {
          *(v133 + v42 + 164) = v144 + 1;
        }
      }

      if ((*(v12 + 10) & 2) != 0)
      {
        v148 = v133[2];
        if (v148)
        {
          if (*(v148 + 68))
          {
            v149 = *(a1 + 66);
            v150 = v133[v149 + 9];
            v151 = *(v133 + v149 + 164);
            if (v151 < (*(v150 + 12) - 16) >> 1)
            {
              v152 = v150 + *(v150 + 2 * v151 + 16);
              if ((*(v152 + 4) & 6) == 4)
              {
                *(v148 + 72) = v152 + *(v152 + 6) + 8;
              }
            }
          }
        }
      }

      goto LABEL_171;
    }

    v85 = 0;
LABEL_175:
    v86 = v161;
    goto LABEL_176;
  }

  if ((*(v12 + 10) & 0x20) != 0)
  {
    v113 = v154;
    if (v165 <= v19)
    {
      v162[*(a1 + 66)] = v17;
      v115 = v88[v42] + 1;
      v88[v42] = v115;
      v116 = v162[v42];
      if (*(v199 + v42 + 1) != v116 && (*(v116 + 12) - 16) >> 1 <= v115 && (v42 & 0x80000000) == 0)
      {
        v117 = (v42 + 1);
        v118 = 328;
        v119 = 72;
        do
        {
          *(a1 + v119) = *(&v195 + v119);
          *(a1 + v118) = *(&v195 + v118);
          v118 += 2;
          v119 += 8;
          --v117;
        }

        while (v117);
      }
    }

    goto LABEL_138;
  }

  v159 = v42;
  v92 = v19;
  v93 = v87;
  v94 = 0;
  v95 = 0;
  v162[*(a1 + 66)] = v17;
  v96 = v40;
  v97 = (v40 + 16);
  v98 = &v203;
  v99 = v165;
  while (1)
  {
    if (v99 == v92)
    {
      v100 = v166[1];
      v205 = *v166;
      v206 = v100;
      if ((*(v12 + 10) & 2) != 0)
      {
        v98 = v156;
      }

      else
      {
        v94 = v160;
      }

      v163[*(a1 + 66)] = v95;
      v101 = *(v12 + 10);
      LODWORD(v102) = v93;
    }

    else
    {
      v103 = (v12 + v97[v99]);
      v104 = *(v103 + 3);
      v205 = v104;
      v206 = v103 + 2;
      v101 = *(v12 + 10);
      if ((v101 & 2) != 0)
      {
        v203 = *v103;
        v204 = &v104[(v103 + 2)];
        LODWORD(v102) = *(v103 + 2);
        v98 = &v203;
      }

      else
      {
        v102 = *(v103 + 2);
        v94 = *v103 | (v102 << 32);
      }
    }

    if (!(v101 & 2 | v95))
    {
      v205 = 0;
    }

    mdb_node_add(a1, v95, &v205, v98, v94, v102);
    if (v85)
    {
      break;
    }

    if (v99 == v157)
    {
      v99 = 0;
      v95 = 0;
      v162[*(a1 + 66)] = v96;
    }

    else
    {
      ++v99;
      ++v95;
    }

    if (v99 == v165)
    {
      v40 = v96;
      v105 = *(v96 + 6);
      v106 = (v105 - 16) >> 1;
      v87 = v93;
      v19 = v92;
      LODWORD(v42) = v159;
      v88 = v163;
      if ((v105 - 16) >= 2)
      {
        v107 = (v12 + 16);
        if (v106 <= 1)
        {
          v108 = 1;
        }

        else
        {
          v108 = v106;
        }

        v109 = v97;
        do
        {
          v110 = *v109++;
          *v107++ = v110;
          --v108;
        }

        while (v108);
        LOWORD(v105) = *(v96 + 6);
      }

      *(v12 + 12) = v105;
      v111 = *(v96 + 7);
      *(v12 + 14) = v111;
      memcpy((v12 + *(v12 + 2 * v106 - 2 + 16)), &v96[v97[v106 - 1]], (*(v161 + 16) - v111));
      if (v165 <= v19)
      {
        v112 = *(a1 + 66);
        v162[v112] = v202;
        v120 = v163[v159] + 1;
        v163[v159] = v120;
        v121 = v162[v159];
        v113 = v154;
        if (*(v199 + v159 + 1) != v121 && (*(v121 + 12) - 16) >> 1 <= v120 && (v159 & 0x80000000) == 0)
        {
          v122 = v159 + 1;
          v123 = 328;
          v124 = 72;
          do
          {
            *(a1 + v124) = *(&v195 + v124);
            *(a1 + v123) = *(&v195 + v123);
            v123 += 2;
            v124 += 8;
            --v122;
          }

          while (v122);
        }
      }

      else
      {
        v112 = *(a1 + 66);
        v162[v112] = v12;
        v113 = v154;
      }

      if ((v87 & 0x10000) != 0)
      {
        v125 = v162[v112] + *(v162[v112] + 2 * v163[v112] + 16);
        if ((*(v125 + 4) & 1) == 0)
        {
          v156[1] = v125 + *(v125 + 6) + 8;
        }
      }

      goto LABEL_138;
    }
  }

LABEL_173:
  v86 = v161;
  v40 = v96;
LABEL_176:
  if (v40)
  {
    *v40 = *(v86 + 192);
    *(v86 + 192) = v40;
  }

  if (v85)
  {
    goto LABEL_179;
  }
}

void mdb_node_add(uint64_t a1, int a2, const void **a3, size_t *a4, size_t a5, int a6)
{
  v8 = *(a1 + 8 * *(a1 + 66) + 72);
  v36 = 0;
  v9 = v8[5];
  if ((v9 & 0x20) != 0)
  {
    v15 = **(a1 + 40);
    v16 = ((v8[6] - 16) >> 1) - a2;
    if (v16 >= 1)
    {
      memmove(v8 + v15 * a2 + v15 + 16, v8 + v15 * a2 + 16, v16 * v15);
    }

    memcpy(v8 + v15 * a2 + 16, a3[1], v15);
    v8[6] += 2;
    v8[7] = v8[7] - v15 + 2;
    return;
  }

  v10 = a6;
  v13 = v8[6];
  if (a3)
  {
    v14 = *a3 + 8;
  }

  else
  {
    v14 = 8;
  }

  v17 = (v8[7] - v13) - 2;
  if ((v9 & 2) == 0)
  {
    v18 = v14;
    goto LABEL_16;
  }

  if (a6)
  {
    v18 = v14 + 8;
LABEL_16:
    v21 = (v18 + 1) & 0xFFFFFFFFFFFFFFFELL;
    if (v21 > v17)
    {
      v19 = *(a1 + 24);
      goto LABEL_18;
    }

    goto LABEL_19;
  }

  v18 = *a4 + v14;
  v19 = *(a1 + 24);
  v20 = *(v19 + 32);
  if (v18 <= *(v20 + 220))
  {
    goto LABEL_16;
  }

  v21 = (v14 + 9) & 0xFFFFFFFFFFFFFFFELL;
  if (v21 > v17)
  {
LABEL_18:
    *(v19 + 124) |= 2u;
    return;
  }

  mdb_page_new(a1, 4, ((*a4 + 15) / *(v20 + 16)) + 1, &v36);
  if (v22)
  {
    return;
  }

  v10 |= 1u;
  v13 = v8[6];
LABEL_19:
  v23 = (v13 - 16) >> 1;
  if (v23 > a2)
  {
    v24 = &v8[v23 + 8];
    v25 = v24;
    do
    {
      --v23;
      v26 = *--v25;
      *v24 = v26;
      v24 = v25;
    }

    while (v23 > a2);
    LOWORD(v13) = v8[6];
  }

  v27 = v8[7] - v21;
  v8[a2 + 8] = v27;
  v8[7] = v27;
  v8[6] = v13 + 2;
  v28 = v8 + v27;
  if (a3)
  {
    v29 = *a3;
  }

  else
  {
    v29 = 0;
  }

  *(v28 + 3) = v29;
  *(v28 + 2) = v10;
  v30 = v8[5];
  if ((v30 & 2) != 0)
  {
    a5 = *a4;
  }

  else
  {
    *(v28 + 2) = WORD2(a5);
  }

  *v28 = a5;
  if (a3)
  {
    memcpy(v28 + 8, a3[1], *a3);
    v30 = v8[5];
  }

  if ((v30 & 2) != 0)
  {
    v31 = &v28[v29 + 8];
    if (v36)
    {
      v32 = v36 + 2;
      *v31 = *v36;
      if ((v10 & 0x10000) != 0)
      {
        a4[1] = v32;
        return;
      }

      v34 = *a4;
      v33 = a4[1];
      v35 = v32;
    }

    else
    {
      if (v10)
      {
        *v31 = *a4[1];
        return;
      }

      if ((v10 & 0x10000) != 0)
      {
        a4[1] = v31;
        return;
      }

      v34 = *a4;
      v33 = a4[1];
      v35 = &v28[v29 + 8];
    }

    memcpy(v35, v33, v34);
  }
}

uint64_t mdb_xcursor_init1(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  v3 = *(v2 + 68) & 0xA0004;
  *(v2 + 68) = v3;
  if ((*(a2 + 4) & 2) != 0)
  {
    v8 = a2 + *(a2 + 6);
    v9 = *(v8 + 8);
    v10 = *(v8 + 40);
    *(v2 + 408) = *(v8 + 24);
    *(v2 + 424) = v10;
    *(v2 + 392) = v9;
    *(v2 + 72) = 0;
    *(v2 + 64) = 0;
  }

  else
  {
    v4 = a2 + *(a2 + 6);
    *(v2 + 392) = 0x1000000000000;
    v6 = *(v4 + 8);
    v5 = (v4 + 8);
    *(v2 + 400) = xmmword_100018810;
    *(v2 + 416) = 0;
    *(v2 + 424) = (v5[6] - 16) >> 1;
    *(v2 + 432) = v6;
    *(v2 + 434) = v5[1];
    *(v2 + 436) = v5[2];
    *(v2 + 438) = v5[3];
    *(v2 + 64) = 1;
    *(v2 + 68) = v3 | 1;
    *(v2 + 72) = v5;
    *(v2 + 328) = 0;
    v7 = *(result + 40);
    if ((*(v7 + 4) & 0x10) != 0)
    {
      *(v2 + 396) = 16;
      *(v2 + 392) = v5[4];
      if ((*(v7 + 4) & 0x20) != 0)
      {
        *(v2 + 396) = 24;
      }
    }
  }

  *(v2 + 488) = 56;
  if (*(v2 + 456) == mdb_cmp_int && *(v2 + 392) == 8)
  {
    *(v2 + 456) = mdb_cmp_cint;
  }

  return result;
}

__n128 mdb_xcursor_init2(uint64_t a1, uint64_t a2, int a3)
{
  v3 = *(a1 + 16);
  if (a3)
  {
    v4 = *(v3 + 68) | 1;
    *(v3 + 64) = 1;
    *(v3 + 68) = v4;
    *(v3 + 328) = 0;
    *(v3 + 488) = 56;
    *(v3 + 456) = *(a2 + 456);
  }

  else if ((*(v3 + 68) & 1) == 0)
  {
    return result;
  }

  result = *(a2 + 392);
  v6 = *(a2 + 424);
  *(v3 + 408) = *(a2 + 408);
  *(v3 + 424) = v6;
  *(v3 + 392) = result;
  *(v3 + 72) = *(a2 + 72);
  return result;
}

void mdb_cursor_del(uint64_t a1, int a2)
{
  if ((*(*(a1 + 24) + 124) & 0x20013) != 0)
  {
    return;
  }

  if ((*(a1 + 68) & 1) == 0)
  {
    return;
  }

  v3 = a1 + 328;
  if (*(a1 + 328 + 2 * *(a1 + 66)) >= (*(*(a1 + 72 + 8 * *(a1 + 66)) + 12) - 16) >> 1 || (a2 & 0x8000) == 0 && mdb_page_spill(a1, 0, 0))
  {
    return;
  }

  mdb_cursor_touch(a1);
  if (v5)
  {
    return;
  }

  v6 = *(a1 + 66);
  v7 = *(a1 + 72 + 8 * v6);
  v8 = *(v7 + 10);
  if ((v8 & 2) == 0)
  {
    return;
  }

  if ((v8 & 0x20) != 0)
  {
    goto LABEL_37;
  }

  v9 = v7 + 16;
  v10 = v7 + *(v7 + 16 + 2 * *(v3 + 2 * v6));
  v11 = *(v10 + 4);
  if ((v11 & 4) == 0)
  {
    if (((v11 ^ a2) & 2) != 0)
    {
      goto LABEL_42;
    }

    goto LABEL_36;
  }

  if ((a2 & 0x20) != 0)
  {
    v12 = *(a1 + 16);
    *(*(a1 + 40) + 32) = *(*(a1 + 40) + 32) - *(v12 + 424) + 1;
    *(v12 + 68) &= ~1u;
    if ((v11 & 2) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_33;
  }

  if ((v11 & 2) == 0)
  {
    *(*(a1 + 16) + 72) = v10 + *(v10 + 6) + 8;
  }

  if (!mdb_cursor_del(*(a1 + 16), 0x8000))
  {
    v12 = *(a1 + 16);
    if (*(v12 + 424))
    {
      if ((*(v10 + 4) & 2) != 0)
      {
        v18 = v10 + *(v10 + 6);
        v20 = *(v12 + 408);
        v19 = *(v12 + 424);
        *(v18 + 8) = *(v12 + 392);
        *(v18 + 24) = v20;
        *(v18 + 40) = v19;
      }

      else
      {
        mdb_node_shrink(v7, *(v3 + 2 * *(a1 + 66)));
        v13 = *(a1 + 66);
        v14 = v7 + *(v9 + 2 * *(v3 + 2 * v13));
        *(*(a1 + 16) + 72) = v14 + *(v14 + 6) + 8;
        for (i = *(*(*(a1 + 24) + 104) + 8 * *(a1 + 32)); i; i = *i)
        {
          if (i != a1 && *(i + 32) >= *(a1 + 64) && (*(i + 68) & 1) != 0 && i[v13 + 9] == v7)
          {
            v16 = i[2];
            if (v16)
            {
              if ((*(v16 + 68) & 1) != 0 && *(i + v13 + 164) < (*(v7 + 12) - 16) >> 1)
              {
                v17 = v7 + *(v9 + 2 * *(i + v13 + 164));
                if ((*(v17 + 4) & 6) == 4)
                {
                  *(v16 + 72) = v17 + *(v17 + 6) + 8;
                }
              }
            }
          }
        }
      }

      --*(*(a1 + 40) + 32);
      return;
    }

    *(v12 + 68) &= ~1u;
    LOWORD(v11) = *(v10 + 4);
    if ((v11 & 2) == 0)
    {
LABEL_36:
      if (v11)
      {
        v21 = 0;
        if (mdb_page_get(a1, *(v10 + *(v10 + 6) + 8), &v21, 0) || mdb_ovpage_free(a1, v21))
        {
          goto LABEL_42;
        }
      }

LABEL_37:

      mdb_cursor_del0(a1);
      return;
    }

LABEL_33:
    if (mdb_drop0(v12, 0))
    {
LABEL_42:
      *(*(a1 + 24) + 124) |= 2u;
      return;
    }

    LOWORD(v11) = *(v10 + 4);
    goto LABEL_36;
  }
}

char *mdb_node_shrink(char *result, unsigned int a2)
{
  v3 = result;
  v4 = result + 16;
  v5 = *&result[2 * a2 + 16];
  v6 = &result[v5];
  v7 = *&result[v5 + 6];
  v8 = &result[v5 + v7];
  v9 = *(v8 + 10);
  v10 = *(v8 + 11) - v9;
  v11 = *&result[v5] - v10;
  if ((*(v8 + 9) & 0x20) != 0)
  {
    v15 = *&result[v5] - v10;
    if (v11)
    {
      return result;
    }
  }

  else
  {
    if ((v9 - 16) >= 2)
    {
      v12 = (v9 - 16) >> 1;
      v13 = v12 + 1;
      v14 = &result[2 * v12 + 22 + v5 + v7];
      do
      {
        *&v14[v10] = *v14 - v10;
        --v13;
        v14 -= 2;
      }

      while (v13 > 1);
    }

    v15 = 16;
  }

  v16 = v8 + 8;
  *(v16 + 7) = v9;
  *v16 = *result;
  *v6 = v11;
  *(v6 + 1) = 0;
  result = memmove(&result[*(result + 7) + v10], &result[*(result + 7)], &v16[v15] - &result[*(result + 7)]);
  v17 = *(v3 + 6) - 16;
  if (v17 >= 2)
  {
    v18 = *&v4[2 * a2];
    v19 = v17 >> 1;
    v20 = v19 + 1;
    v21 = &v3[2 * v19 + 14];
    do
    {
      v22 = *v21;
      if (v22 <= v18)
      {
        *v21 = v22 + v10;
      }

      --v20;
      v21 -= 2;
    }

    while (v20 > 1);
  }

  *(v3 + 7) += v10;
  return result;
}

uint64_t mdb_drop0(uint64_t a1, int a2)
{
  mdb_page_search(a1, 0, 4);
  if (result)
  {
    if (result == -30798)
    {
      result = 0;
    }

    else
    {
      result = result;
    }

    goto LABEL_59;
  }

  v31 = *(a1 + 24);
  v35 = 0;
  memset(v34, 0, sizeof(v34));
  memset(v33, 0, sizeof(v33));
  v5 = *(a1 + 68);
  if (((v5 & 4) != 0 || !a2 && !*(*(a1 + 40) + 24)) && *(a1 + 64))
  {
    v6 = *(a1 + 64) - 1;
    *(a1 + 64) = v6;
    if (v6)
    {
      --*(a1 + 66);
    }

    else
    {
      *(a1 + 68) = v5 & 0xFFFFFFFE;
    }
  }

  mdb_cursor_copy(a1, v33);
  if (!*(a1 + 64))
  {
    goto LABEL_56;
  }

  v7 = a1 + 72;
  v8 = (a1 + 328);
  v9 = a1 + 330;
  while (1)
  {
    while (1)
    {
      v10 = *(v7 + 8 * *(a1 + 66));
      v11 = v10[6] - 16;
      v12 = v11 >> 1;
      if ((v10[5] & 2) != 0)
      {
        if (v11 >= 2)
        {
          v14 = 0;
          v13 = v12 <= 1 ? 1 : v12;
          do
          {
            v15 = v10 + v10[v14 + 8];
            v16 = *(v15 + 4);
            if (v16)
            {
              v32 = 0;
              v17 = *(v15 + *(v15 + 6) + 8);
              result = mdb_page_get(a1, v17, &v32, 0);
              if (result)
              {
                goto LABEL_58;
              }

              v18 = v32;
              result = mdb_midl_append_range((v31 + 40), v17, *(v32 + 12));
              if (result)
              {
                goto LABEL_58;
              }

              v19 = *(a1 + 40);
              v20 = *(v19 + 24) - *(v18 + 12);
              *(v19 + 24) = v20;
              if (!a2 && !v20)
              {
                v7 = a1 + 72;
                v8 = (a1 + 328);
                goto LABEL_48;
              }
            }

            else if (a2)
            {
              if ((v16 & 2) != 0)
              {
                mdb_xcursor_init1(a1, v15);
                result = mdb_drop0(*(a1 + 16), 0);
                if (result)
                {
                  goto LABEL_58;
                }
              }
            }

            ++v14;
          }

          while (v13 != v14);
          v7 = a1 + 72;
          v8 = (a1 + 328);
          if (a2)
          {
            goto LABEL_42;
          }
        }

        else
        {
          LOWORD(v13) = 0;
          if (a2)
          {
            goto LABEL_42;
          }
        }

        if (!*(*(a1 + 40) + 24))
        {
          break;
        }
      }

      else
      {
        result = mdb_midl_need((v31 + 40), v11 >> 1);
        if (result)
        {
          goto LABEL_58;
        }

        if (v11 >= 2)
        {
          v21 = v10 + 8;
          v22 = *(v31 + 40);
          v23 = v12 <= 1 ? 1 : v12;
          LOWORD(v13) = v23;
          do
          {
            v24 = *v21++;
            v25 = *(v10 + v24) | (*(v10 + v24 + 4) << 32);
            v26 = *v22 + 1;
            *v22 = v26;
            v22[v26] = v25;
            --v23;
          }

          while (v23);
        }

        else
        {
          LOWORD(v13) = 0;
        }
      }

LABEL_42:
      if (!*(a1 + 66))
      {
        goto LABEL_56;
      }

      v8[*(a1 + 66)] = v13;
      result = mdb_cursor_sibling(a1, 1);
      if (result == -30798)
      {
        break;
      }

      if (result)
      {
        goto LABEL_57;
      }

      if (!*(a1 + 64))
      {
        goto LABEL_56;
      }
    }

LABEL_48:
    v27 = *(a1 + 64);
    if (!v27)
    {
      goto LABEL_55;
    }

    v28 = v27 - 1;
    *(a1 + 64) = v27 - 1;
    if (v27 == 1)
    {
      break;
    }

    --*(a1 + 66);
    *(a1 + 328) = 0;
    if ((v27 - 1) != 1)
    {
      v29 = 0;
      v30 = v28 - 1;
      do
      {
        *(v9 + 2 * v29) = 0;
        *(v9 + 8 * v29 - 250) = *(v34 + v29);
        ++v29;
      }

      while (v30 != v29);
    }
  }

  *(a1 + 68) &= ~1u;
LABEL_55:
  *v8 = 0;
LABEL_56:
  result = mdb_midl_append((v31 + 40), *(*(a1 + 40) + 40));
LABEL_57:
  if (result)
  {
LABEL_58:
    *(v31 + 124) |= 2u;
  }

LABEL_59:
  *(a1 + 68) &= ~1u;
  return result;
}

uint64_t mdb_cursor_del0(uint64_t a1)
{
  v2 = a1 + 328;
  v3 = *(a1 + 66);
  v4 = *(a1 + 328 + 2 * v3);
  v5 = *(a1 + 32);
  v6 = a1 + 72;
  v7 = *(a1 + 72 + 8 * v3);
  mdb_node_del(a1, **(a1 + 40));
  --*(*(a1 + 40) + 32);
  for (i = *(*(*(a1 + 24) + 104) + 8 * v5); i; i = *i)
  {
    v9 = i;
    if ((*(a1 + 68) & 4) != 0)
    {
      v9 = i[2];
    }

    if (v9 != a1)
    {
      v10 = *(v9 + 17);
      if ((*(i + 17) & v10 & 1) != 0 && *(v9 + 32) >= *(a1 + 64))
      {
        v11 = *(a1 + 66);
        if (v9[v11 + 9] == v7)
        {
          v12 = v9 + 41;
          v13 = *(v9 + v11 + 164);
          if (v13 == v4)
          {
            *(v9 + 17) = v10 | 8;
            if ((*(*(a1 + 40) + 4) & 4) != 0)
            {
              *(v9[2] + 68) &= 0xFFFFFFFC;
            }
          }

          else
          {
            if (v13 > v4)
            {
              *(v12 + v11) = v13 - 1;
            }

            v14 = v9[2];
            if (v14)
            {
              if ((*(v14 + 68) & 1) != 0 && *(v12 + *(a1 + 66)) < (*(v7 + 12) - 16) >> 1)
              {
                v15 = v7 + *(v7 + 16 + 2 * *(v12 + *(a1 + 66)));
                if ((*(v15 + 4) & 6) == 4)
                {
                  *(v14 + 72) = v15 + *(v15 + 6) + 8;
                }
              }
            }
          }
        }
      }
    }
  }

  result = mdb_rebalance(a1);
  if (!result)
  {
    if (!*(a1 + 64))
    {
      result = 0;
      v17 = (a1 + 68);
      goto LABEL_22;
    }

    v19 = *(*(*(a1 + 24) + 104) + 8 * v5);
    if (!v19)
    {
LABEL_47:
      result = 0;
      v17 = (a1 + 68);
      v18 = 8;
      goto LABEL_48;
    }

    v20 = *(v6 + 8 * *(a1 + 66));
    v21 = (*(v20 + 12) - 16) >> 1;
    while (1)
    {
      v22 = v19;
      if ((*(a1 + 68) & 4) != 0)
      {
        v22 = *(v19 + 16);
      }

      v23 = (v22 + 68);
      if ((*(v19 + 68) & *(v22 + 68) & 1) == 0)
      {
        goto LABEL_46;
      }

      if (*(v22 + 64) < *(a1 + 64))
      {
        goto LABEL_46;
      }

      v24 = *(a1 + 66);
      if (*(v22 + 72 + 8 * v24) != v20)
      {
        goto LABEL_46;
      }

      v25 = *(v22 + 328 + 2 * v24);
      if (v25 < *(v2 + 2 * v24))
      {
        goto LABEL_46;
      }

      if (v21 <= v25)
      {
        result = mdb_cursor_sibling(v22, 1);
        if (result == -30798)
        {
          v29 = 2;
          goto LABEL_45;
        }

        if (result)
        {
          break;
        }
      }

      v26 = *(v22 + 16);
      if (!v26 || (*v23 & 2) != 0)
      {
        goto LABEL_46;
      }

      v27 = *(v22 + 72 + 8 * *(v22 + 66)) + *(*(v22 + 72 + 8 * *(v22 + 66)) + 2 * *(v22 + 328 + 2 * *(v22 + 66)) + 16);
      v28 = *(v27 + 4);
      if ((v28 & 4) != 0)
      {
        if (*(v26 + 68))
        {
          if ((v28 & 2) == 0)
          {
            *(v26 + 72) = v27 + *(v27 + 6) + 8;
          }
        }

        else
        {
          mdb_xcursor_init1(v22, v27);
          result = mdb_cursor_first(*(v22 + 16), 0, 0);
          if (result)
          {
            break;
          }
        }
      }

      v23 = (*(v22 + 16) + 68);
      v29 = 8;
LABEL_45:
      *v23 |= v29;
LABEL_46:
      v19 = *v19;
      if (!v19)
      {
        goto LABEL_47;
      }
    }
  }

  v17 = (*(a1 + 24) + 124);
LABEL_22:
  v18 = 2;
LABEL_48:
  *v17 |= v18;
  return result;
}

uint64_t mdb_cursor_open(uint64_t a1, unsigned int a2, void *a3)
{
  result = 22;
  if (a1 && a3 && *(a1 + 120) > a2 && (*(*(a1 + 112) + a2) & 8) != 0)
  {
    v7 = *(a1 + 124);
    if ((v7 & 0x13) != 0)
    {
      return 4294936514;
    }

    else if (v7 & 0x20000 | a2)
    {
      if ((*(*(a1 + 88) + 48 * a2 + 4) & 4) != 0)
      {
        v8 = 888;
      }

      else
      {
        v8 = 392;
      }

      v9 = malloc_type_malloc(v8, 0xDB9F4F9BuLL);
      if (v9)
      {
        v10 = v9;
        mdb_cursor_init(v9, a1, a2, (v9 + 98));
        v11 = *(a1 + 104);
        if (v11)
        {
          *v10 = *(v11 + 8 * a2);
          *(v11 + 8 * a2) = v10;
          v10[17] |= 0x40u;
        }

        result = 0;
        *a3 = v10;
      }

      else
      {
        return 12;
      }
    }
  }

  return result;
}

uint64_t mdb_cursor_renew(uint64_t a1, uint64_t a2)
{
  result = 22;
  if (a1)
  {
    if (a2)
    {
      v4 = *(a2 + 32);
      if (v4 < *(a1 + 120) && (*(*(a1 + 112) + v4) & 8) != 0 && (*(a2 + 68) & 0x40) == 0 && !*(a1 + 104))
      {
        if ((*(a1 + 124) & 0x13) != 0)
        {
          return 4294936514;
        }

        else
        {
          mdb_cursor_init(a2, a1, v4, *(a2 + 16));
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t mdb_cursor_count(uint64_t a1, uint64_t *a2)
{
  v2 = 22;
  if (a1 && a2)
  {
    v3 = *(a1 + 16);
    if (!v3)
    {
      return 4294936512;
    }

    if ((*(*(a1 + 24) + 124) & 0x13) != 0)
    {
      return 4294936514;
    }

    v4 = *(a1 + 68);
    if ((v4 & 1) == 0)
    {
      return 22;
    }

    if (*(a1 + 64))
    {
      if ((v4 & 2) == 0)
      {
        v5 = *(a1 + 66);
        goto LABEL_14;
      }

      v5 = *(a1 + 66);
      if (*(a1 + 2 * v5 + 328) < (*(*(a1 + 8 * v5 + 72) + 12) - 16) >> 1)
      {
        *(a1 + 68) = v4 & 0xFFFFFFFD;
LABEL_14:
        if ((*(*(a1 + 8 * v5 + 72) + *(*(a1 + 8 * v5 + 72) + 2 * *(a1 + 2 * v5 + 328) + 16) + 4) & 4) != 0)
        {
          if ((*(v3 + 68) & 1) == 0)
          {
            return 22;
          }

          v6 = *(v3 + 424);
        }

        else
        {
          v6 = 1;
        }

        v2 = 0;
        *a2 = v6;
        return v2;
      }
    }

    return 4294936498;
  }

  return v2;
}

void mdb_cursor_close(void *a1)
{
  if (a1 && !*(a1 + 1))
  {
    if ((*(a1 + 68) & 0x40) != 0)
    {
      v1 = *(*(a1 + 3) + 104);
      if (v1)
      {
        v2 = (v1 + 8 * *(a1 + 8));
        do
        {
          v3 = v2;
          v2 = *v2;
          if (v2)
          {
            v4 = v2 == a1;
          }

          else
          {
            v4 = 1;
          }
        }

        while (!v4);
        if (v2 == a1)
        {
          *v3 = *a1;
        }
      }
    }

    free(a1);
  }
}

void mdb_del(uint64_t a1, unsigned int a2, void *a3, __int128 *a4)
{
  if (a1 && a3 && *(a1 + 120) > a2 && (*(*(a1 + 112) + a2) & 0x10) != 0 && (*(a1 + 124) & 0x20013) == 0)
  {
    if ((*(*(a1 + 88) + 48 * a2 + 4) & 4) == 0)
    {
      a4 = 0;
    }

    mdb_del0(a1, a2, a3, a4, 0);
  }
}

void mdb_del0(uint64_t a1, unsigned int a2, void *a3, __int128 *a4, int a5)
{
  memset(v16, 0, 392);
  memset(v15, 0, sizeof(v15));
  v14 = 0uLL;
  v13 = 0;
  mdb_cursor_init(v16, a1, a2, v15);
  if (a4)
  {
    v14 = *a4;
    v10 = &v14;
    v11 = 2;
  }

  else
  {
    v10 = 0;
    a5 |= 0x20u;
    v11 = 15;
  }

  if (!mdb_cursor_set(v16, a3, v10, v11, &v13))
  {
    v12 = *(a1 + 104);
    v16[0] = *(v12 + 8 * a2);
    *(v12 + 8 * a2) = v16;
    mdb_cursor_del(v16, a5);
    *(*(a1 + 104) + 8 * a2) = v16[0];
  }
}

void mdb_put(uint64_t a1, unsigned int a2, size_t *a3, uint64_t a4, int a5)
{
  if (a1)
  {
    if (a3)
    {
      if (a4)
      {
        if (*(a1 + 120) > a2)
        {
          v13 = 0;
          memset(v12, 0, sizeof(v12));
          memset(v11, 0, sizeof(v11));
          if ((a5 & 0xFFF8FFCF) == 0 && (*(*(a1 + 112) + a2) & 0x10) != 0 && (*(a1 + 124) & 0x20013) == 0)
          {
            mdb_cursor_init(v12, a1, a2, v11);
            v10 = *(a1 + 104);
            *&v12[0] = *(v10 + 8 * a2);
            *(v10 + 8 * a2) = v12;
            mdb_cursor_put(v12, a3, a4, a5);
            *(*(a1 + 104) + 8 * a2) = *&v12[0];
          }
        }
      }
    }
  }
}

uint64_t mdb_dbi_open(uint64_t a1, char *__s, unsigned int a3, unsigned int *a4)
{
  if ((a3 & 0xFFFBFF81) != 0)
  {
    return 22;
  }

  if ((*(a1 + 124) & 0x13) != 0)
  {
    return 4294936514;
  }

  v69 = 0;
  memset(v68, 0, sizeof(v68));
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  if (!__s)
  {
    *a4 = 1;
    if ((a3 & 0x7E) != 0)
    {
      v17 = *(a1 + 88);
      v18 = *(v17 + 52);
      v19 = a3 & 0x7E | v18;
      if (v19 != v18)
      {
        *(v17 + 52) = v19;
        *(a1 + 124) |= 4u;
      }
    }

    mdb_default_cmp(a1, 1u);
    return 0;
  }

  if (!*(*(a1 + 80) + 64))
  {
    mdb_default_cmp(a1, 1u);
  }

  v70 = 0uLL;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v10 = strlen(__s);
  v11 = *(a1 + 120);
  if (v11 < 3)
  {
    goto LABEL_20;
  }

  v12 = 0;
  v13 = (*(a1 + 80) + 104);
  for (i = 2; i != v11; ++i)
  {
    v15 = *(v13 - 1);
    if (v15)
    {
      if (v10 == v15 && !strncmp(__s, *v13, v10))
      {
        v4 = 0;
        *a4 = i;
        return v4;
      }
    }

    else if (!v12)
    {
      v12 = i;
    }

    v13 += 6;
  }

  if (v12)
  {
    v16 = 0;
  }

  else
  {
LABEL_20:
    if (v11 >= *(*(a1 + 32) + 36))
    {
      return 4294936505;
    }

    v12 = 0;
    v16 = 1;
  }

  if ((*(*(a1 + 88) + 52) & 0xC) == 0)
  {
    v60 = 0;
    v71[0] = v10;
    v71[1] = __s;
    mdb_cursor_init(&v64, a1, 1u, 0);
    v20 = mdb_cursor_set(&v64, v71, &v70, 15, &v60);
    if (v20 == -30798)
    {
      if (a3 < 0x40000)
      {
        return 4294936498;
      }

      if ((*(a1 + 126) & 2) != 0)
      {
        return 13;
      }

      v30 = strdup(__s);
      if (v30)
      {
        v22 = v30;
        *&v70 = 48;
        *(&v70 + 1) = &v61;
        v61 = 0u;
        v62 = 0u;
        *&v63 = 0;
        *(&v63 + 1) = -1;
        WORD2(v61) = a3;
        v59 = 0;
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
        v47 = 0u;
        v48 = 0u;
        v45 = 0u;
        v46 = 0u;
        v43 = 0u;
        v44 = 0u;
        v41 = 0u;
        v42 = 0u;
        v39 = 0u;
        v40 = 0u;
        v37 = 0u;
        v38 = 0u;
        v35 = 0u;
        v36 = 0u;
        v31 = *(*(&v65 + 1) + 104);
        v32 = v66;
        v33 = &v64;
        if ((BYTE4(v68[0]) & 4) != 0)
        {
          DWORD1(v39) = 1;
          *&v36 = &v64;
          v33 = &v35;
        }

        *v33 = *(v31 + 8 * v66);
        *(v31 + 8 * v32) = v33;
        mdb_cursor_put(&v64, v71, &v70, 2);
        *(v31 + 8 * v32) = *v33;
        if (v34)
        {
          v4 = v34;
          free(v22);
          return v4;
        }

        v23 = 29;
        if (!v16)
        {
LABEL_38:
          v24 = (*(a1 + 80) + 48 * v12);
          *v24 = v10;
          v24[1] = v22;
          v24[4] = 0;
          *(*(a1 + 112) + v12) = v23;
          v25 = *(*(a1 + 32) + 152);
          LODWORD(v24) = *(v25 + 4 * v12) + 1;
          *(v25 + 4 * v12) = v24;
          v26 = *(a1 + 88);
          *(*(a1 + 96) + 4 * v12) = v24;
          v27 = (v26 + 48 * v12);
          v28 = **(&v70 + 1);
          v29 = *(*(&v70 + 1) + 32);
          v27[1] = *(*(&v70 + 1) + 16);
          v27[2] = v29;
          *v27 = v28;
          *a4 = v12;
          mdb_default_cmp(a1, v12);
          if (v16)
          {
            v4 = 0;
            ++*(a1 + 120);
            return v4;
          }

          return 0;
        }

LABEL_37:
        v12 = *(a1 + 120);
        goto LABEL_38;
      }
    }

    else
    {
      v4 = v20;
      if (v20)
      {
        return v4;
      }

      if ((*(*(v68 + WORD1(v68[0]) + 1) + *(*(v68 + WORD1(v68[0]) + 1) + 2 * *(&v68[16] + WORD1(v68[0]) + 4) + 16) + 4) & 6) != 2)
      {
        return 4294936512;
      }

      v21 = strdup(__s);
      if (v21)
      {
        v22 = v21;
        v23 = 28;
        if (!v16)
        {
          goto LABEL_38;
        }

        goto LABEL_37;
      }
    }

    return 12;
  }

  if (a3 >= 0x40000)
  {
    return 4294936512;
  }

  else
  {
    return 4294936498;
  }
}

uint64_t mdb_default_cmp(uint64_t result, unsigned int a2)
{
  v2 = *(*(result + 88) + 48 * a2 + 4);
  v3 = mdb_cmp_cint;
  if ((v2 & 8) == 0)
  {
    v3 = mdb_cmp_memn;
  }

  if ((v2 & 2) != 0)
  {
    v3 = mdb_cmp_memnr;
  }

  v4 = *(result + 80);
  *(v4 + 48 * a2 + 16) = v3;
  if ((v2 & 4) != 0)
  {
    if ((v2 & 0x20) != 0)
    {
      v6 = (v2 & 0x10) == 0;
      v5 = mdb_cmp_int;
      v7 = mdb_cmp_cint;
    }

    else
    {
      v6 = (v2 & 0x40) == 0;
      v5 = mdb_cmp_memnr;
      v7 = mdb_cmp_memn;
    }

    if (v6)
    {
      v5 = v7;
    }
  }

  else
  {
    v5 = 0;
  }

  *(v4 + 48 * a2 + 24) = v5;
  return result;
}

void mdb_dbi_close(uint64_t a1, unsigned int a2)
{
  if (a2 >= 2 && *(a1 + 36) > a2)
  {
    v2 = *(a1 + 136);
    v3 = *(v2 + 48 * a2 + 8);
    if (v3)
    {
      v4 = (v2 + 48 * a2);
      *v4 = 0;
      v4[1] = 0;
      v5 = *(a1 + 152);
      *(*(a1 + 144) + 2 * a2) = 0;
      ++*(v5 + 4 * a2);
      free(v3);
    }
  }
}

uint64_t mdb_dbi_flags(uint64_t a1, unsigned int a2, int *a3)
{
  if (!a1 || *(a1 + 120) <= a2 || (*(*(a1 + 112) + a2) & 0x10) == 0)
  {
    return 22;
  }

  result = 0;
  *a3 = *(*(a1 + 88) + 48 * a2 + 4) & 0x7FFF;
  return result;
}

uint64_t mdb_drop(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v3 = 22;
  if (a1)
  {
    if (a3 <= 1 && *(a1 + 120) > a2)
    {
      v13 = 0;
      if ((*(*(a1 + 112) + a2) & 0x10) != 0)
      {
        if ((*(a1 + 126) & 2) != 0)
        {
          return 13;
        }

        else if (*(*(a1 + 96) + 4 * a2) == *(*(*(a1 + 32) + 152) + 4 * a2))
        {
          v3 = mdb_cursor_open(a1, a2, &v13);
          if (!v3)
          {
            v7 = mdb_drop0(v13, *(v13[5] + 4) & 4);
            v3 = v7;
            for (i = *(*(a1 + 104) + 8 * a2); i; i = *i)
            {
              *(i + 17) &= 0xFFFFFFFC;
            }

            if (v7)
            {
              goto LABEL_19;
            }

            if (a2 >= 2 && a3)
            {
              mdb_del0(a1, 1u, v13[6], 0, 2);
              v3 = v9;
              if (!v9)
              {
                *(*(a1 + 112) + a2) = 2;
                mdb_dbi_close(*(a1 + 32), a2);
                goto LABEL_19;
              }

              v10 = *(a1 + 124) | 2;
            }

            else
            {
              v3 = 0;
              *(*(a1 + 112) + a2) |= 1u;
              v11 = *(a1 + 88) + 48 * a2;
              *(v11 + 38) = 0;
              *(v11 + 22) = 0u;
              *(v11 + 6) = 0u;
              *(v11 + 40) = -1;
              v10 = *(a1 + 124) | 4;
            }

            *(a1 + 124) = v10;
LABEL_19:
            mdb_cursor_close(v13);
          }
        }

        else
        {
          return 4294936516;
        }
      }
    }
  }

  return v3;
}

uint64_t mdb_set_compare(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (!a1 || *(a1 + 120) <= a2 || (*(*(a1 + 112) + a2) & 0x10) == 0)
  {
    return 22;
  }

  result = 0;
  *(*(a1 + 80) + 48 * a2 + 16) = a3;
  return result;
}

uint64_t mdb_set_dupsort(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (!a1 || *(a1 + 120) <= a2 || (*(*(a1 + 112) + a2) & 0x10) == 0)
  {
    return 22;
  }

  result = 0;
  *(*(a1 + 80) + 48 * a2 + 24) = a3;
  return result;
}

uint64_t mdb_set_relfunc(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (!a1 || *(a1 + 120) <= a2 || (*(*(a1 + 112) + a2) & 0x10) == 0)
  {
    return 22;
  }

  result = 0;
  *(*(a1 + 80) + 48 * a2 + 32) = a3;
  return result;
}

uint64_t mdb_set_relctx(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (!a1 || *(a1 + 120) <= a2 || (*(*(a1 + 112) + a2) & 0x10) == 0)
  {
    return 22;
  }

  result = 0;
  *(*(a1 + 80) + 48 * a2 + 40) = a3;
  return result;
}

uint64_t mdb_reader_pid(uint64_t a1, int a2, int a3)
{
  v5 = a3;
  v12 = 0x300000000;
  v10 = a3;
  v11 = 1;
  if (fcntl(*(a1 + 4), a2, &v10))
  {
    while (1)
    {
      result = *__error();
      if (result != 4)
      {
        break;
      }

      v11 = 1;
      v12 = 0x300000000;
      v7 = *(a1 + 4);
      v10 = v5;
      if (!fcntl(v7, a2, &v10))
      {
        goto LABEL_4;
      }
    }
  }

  else
  {
LABEL_4:
    v9 = a2 == 7 && WORD2(v12) != 2;
    return (v9 << 31 >> 31);
  }

  return result;
}

void mdb_dpage_free(uint64_t a1, void *a2)
{
  if ((*(a2 + 5) & 4) != 0 && *(a2 + 3) != 1)
  {
    free(a2);
  }

  else
  {
    *a2 = *(a1 + 192);
    *(a1 + 192) = a2;
  }
}

void mdb_page_search(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 24);
  if ((*(v4 + 124) & 0x13) == 0)
  {
    v5 = a3;
    if ((**(a1 + 56) & 2) != 0)
    {
      v18 = 0;
      memset(v17, 0, sizeof(v17));
      if (*(*(v4 + 96) + 4 * *(a1 + 32)) != *(*(*(v4 + 32) + 152) + 4 * *(a1 + 32)))
      {
        return;
      }

      mdb_cursor_init(v17, v4, 1u, 0);
      if (mdb_page_search(v17, *(a1 + 48), 0))
      {
        return;
      }

      v15 = 0;
      v16 = 0;
      v14 = 0;
      v10 = mdb_node_search(v17, *(a1 + 48), &v14);
      if (!v14)
      {
        return;
      }

      if ((*(v10 + 2) & 6) != 2)
      {
        return;
      }

      if (mdb_node_read(v17, v10, &v15))
      {
        return;
      }

      v11 = *(a1 + 40);
      if ((*(v11 + 4) & 0x7FFF) != *(v16 + 2))
      {
        return;
      }

      v12 = *v16;
      v13 = v16[2];
      *(v11 + 16) = v16[1];
      *(v11 + 32) = v13;
      *v11 = v12;
      **(a1 + 56) &= ~2u;
    }

    v7 = *(*(a1 + 40) + 40);
    if (v7 != -1 && ((v8 = *(a1 + 72)) != 0 && *v8 == v7 || !mdb_page_get(a1, v7, (a1 + 72), 0)))
    {
      *(a1 + 64) = 1;
      if ((v5 & 1) == 0 || (mdb_page_touch(a1), !v9))
      {
        if ((v5 & 2) == 0)
        {
          mdb_page_search_root(a1, a2, v5);
        }
      }
    }
  }
}

char *mdb_node_search(uint64_t a1, void *a2, int *a3)
{
  v5 = *(a1 + 8 * *(a1 + 66) + 72);
  v19 = 0;
  v20 = 0;
  v6 = v5[6] - 16;
  v7 = v6 >> 1;
  v8 = v5[5];
  v9 = ((v8 >> 1) & 1) == 0;
  v10 = (v6 >> 1) - 1;
  v11 = *(*(a1 + 48) + 16);
  if (v11 == mdb_cmp_cint)
  {
    if (v8)
    {
      if (*(v5 + v5[9] + 6) == 8)
      {
        v11 = mdb_cmp_long;
      }

      else
      {
        v11 = mdb_cmp_int;
      }

      if ((v8 & 0x20) == 0)
      {
        goto LABEL_3;
      }
    }

    else
    {
      v11 = mdb_cmp_cint;
      if ((v8 & 0x20) == 0)
      {
        goto LABEL_3;
      }
    }
  }

  else if ((v8 & 0x20) == 0)
  {
LABEL_3:
    if (v9 < v7)
    {
      v17 = v5[6] - 16;
      v18 = a3;
      while (1)
      {
        LODWORD(v12) = (v10 + v9) >> 1;
        v13 = v5 + *(v5 + (2 * v12) + 16);
        v19 = *(v13 + 3);
        v20 = (v13 + 8);
        v14 = v11(a2, &v19);
        if (!v14)
        {
          goto LABEL_30;
        }

        if (v14 <= 0)
        {
          v10 = v12 - 1;
        }

        else
        {
          v9 = v12 + 1;
        }

        if (v9 > v10)
        {
          goto LABEL_26;
        }
      }
    }

    LODWORD(v12) = 0;
    v13 = 0;
    goto LABEL_33;
  }

  v19 = **(a1 + 40);
  v13 = v5 + v5[8];
  if (v9 < v7)
  {
    v17 = v6;
    v18 = a3;
    while (1)
    {
      v12 = (v10 + v9) >> 1;
      v20 = v5 + v19 * v12 + 16;
      v14 = v11(a2, &v19);
      if (!v14)
      {
        break;
      }

      if (v14 <= 0)
      {
        v10 = v12 - 1;
      }

      else
      {
        v9 = v12 + 1;
      }

      if (v9 > v10)
      {
LABEL_26:
        a3 = v18;
        v6 = v17;
        if (v14 < 1 || (LODWORD(v12) = v12 + 1, (v5[5] & 0x20) != 0))
        {
          v15 = 0;
          if (v18)
          {
            goto LABEL_34;
          }
        }

        else
        {
          v15 = 0;
          v13 = v5 + v5[v12 + 8];
          if (v18)
          {
            goto LABEL_34;
          }
        }

        goto LABEL_37;
      }
    }

LABEL_30:
    v15 = 1;
    a3 = v18;
    v6 = v17;
    if (!v18)
    {
      goto LABEL_37;
    }

    goto LABEL_34;
  }

  LODWORD(v12) = 0;
LABEL_33:
  v15 = 1;
  if (!a3)
  {
    goto LABEL_37;
  }

LABEL_34:
  if (v6 <= 1)
  {
    v15 = 0;
  }

  *a3 = v15;
LABEL_37:
  *(a1 + 2 * *(a1 + 66) + 328) = v12;
  if (v12 >= v7)
  {
    return 0;
  }

  else
  {
    return v13;
  }
}

void mdb_page_touch(uint64_t a1)
{
  v2 = a1 + 72;
  v3 = *(a1 + 72 + 8 * *(a1 + 66));
  __dst = 0;
  v4 = *(a1 + 24);
  v5 = v3[5];
  if ((v5 & 0x10) == 0)
  {
    if ((*(v4 + 124) & 8) != 0)
    {
      if (mdb_page_unspill(*(a1 + 24), v3, &__dst))
      {
        goto LABEL_15;
      }

      v7 = __dst;
      if (__dst)
      {
LABEL_20:
        v16 = *(a1 + 66);
        *(v2 + 8 * v16) = v7;
        v17 = *(*(v4 + 104) + 8 * *(a1 + 32));
        if ((*(a1 + 68) & 4) != 0)
        {
          if (v17)
          {
            v21 = *(a1 + 64);
            do
            {
              v22 = v17[2];
              if (*(v22 + 64) >= v21)
              {
                v23 = v22 + 72;
                if (*(v23 + 8 * v16) == v3)
                {
                  *(v23 + 8 * v16) = v7;
                }
              }

              v17 = *v17;
            }

            while (v17);
          }
        }

        else if (v17)
        {
          v18 = *(a1 + 64);
          do
          {
            if (v17 != a1 && *(v17 + 32) >= v18 && v17[v16 + 9] == v3)
            {
              v17[v16 + 9] = v7;
              if ((*(v7 + 5) & 2) != 0)
              {
                v19 = v17[2];
                if (v19)
                {
                  if ((*(v19 + 68) & 1) != 0 && *(v17 + v16 + 164) < (*(v7 + 6) - 16) >> 1)
                  {
                    v20 = &v7[*&v7[2 * *(v17 + v16 + 164) + 16]];
                    if ((*(v20 + 2) & 6) == 4)
                    {
                      *(v19 + 72) = &v20[*(v20 + 3) + 8];
                    }
                  }
                }
              }
            }

            v17 = *v17;
          }

          while (v17);
        }

        return;
      }
    }

    if (!mdb_midl_need((v4 + 40), 1))
    {
      mdb_page_alloc(a1, 1, &__dst);
      if (!v6)
      {
        v7 = __dst;
        v8 = *__dst;
        v9 = *(v4 + 40);
        v10 = *v9 + 1;
        *v9 = v10;
        v9[v10] = *v3;
        if (*(a1 + 66))
        {
          v11 = *(v2 + 8 * (*(a1 + 66) - 1)) + *(*(v2 + 8 * (*(a1 + 66) - 1)) + 2 * *(a1 + 2 * (*(a1 + 66) - 1) + 328) + 16);
          *v11 = v8;
          *(v11 + 4) = WORD2(v8);
        }

        else
        {
          *(*(a1 + 40) + 40) = v8;
        }

LABEL_18:
        mdb_page_copy(v7, v3, *(*(v4 + 32) + 16));
        *v7 = v8;
        *(v7 + 5) |= 0x10u;
        goto LABEL_20;
      }
    }

LABEL_15:
    *(v4 + 124) |= 2u;
    return;
  }

  if ((v5 & 0x40) != 0 || !*v4)
  {
    return;
  }

  v12 = *(v4 + 72);
  v8 = *v3;
  if (!*v12 || (v13 = mdb_mid2l_search(*(v4 + 72), *v3), *v12 < v13) || (v14 = &v12[4 * v13], *v14 != v8))
  {
    v15 = mdb_page_malloc(v4, 1u);
    if (!v15)
    {
      return;
    }

    v7 = v15;
    v24[0] = v8;
    v24[1] = v15;
    mdb_mid2l_insert(v12, v24);
    goto LABEL_18;
  }

  if (v3 != *(v14 + 1))
  {
    *(a1 + 68) &= 0xFFFFFFFC;
    *(v4 + 124) |= 2u;
  }
}

void mdb_page_search_root(uint64_t a1, void *a2, char a3)
{
  v4 = a1 + 72;
  v5 = *(a1 + 66);
  v6 = *(a1 + 72 + 8 * v5);
  v16 = v6;
  v7 = *(v6 + 10);
  if (v7)
  {
    v10 = a3 & 0xC;
    v11 = a1 + 328;
    do
    {
      if (v10)
      {
        if ((a3 & 8) != 0)
        {
          v12 = ((*(v6 + 12) + 131056) >> 1) - 1;
          if ((*(a1 + 68) & 1) != 0 && *(v11 + 2 * v5) == v12)
          {
            v5 = *(a1 + 64);
            *(a1 + 64) = v5 + 1;
            *(a1 + 66) = v5;
            v6 = *(v4 + 8 * v5);
            v16 = v6;
            if (a3)
            {
              goto LABEL_16;
            }

            goto LABEL_18;
          }
        }

        else
        {
          LOWORD(v12) = 0;
        }
      }

      else
      {
        v15 = 0;
        if (mdb_node_search(a1, a2, &v15))
        {
          LOWORD(v12) = *(v11 + 2 * *(a1 + 66)) - (v15 == 0);
        }

        else
        {
          v12 = ((*(v6 + 12) + 131056) >> 1) - 1;
        }
      }

      v13 = (v6 + *(v6 + 2 * v12 + 16));
      if (mdb_page_get(a1, *v13 | (*(v13 + 2) << 32), &v16, 0))
      {
        return;
      }

      *(v11 + 2 * *(a1 + 66)) = v12;
      v5 = *(a1 + 64);
      if (v5 > 0x1F)
      {
        *(*(a1 + 24) + 124) |= 2u;
        return;
      }

      v6 = v16;
      *(a1 + 64) = v5 + 1;
      *(a1 + 66) = v5;
      *(v4 + 8 * v5) = v6;
      *(v11 + 2 * v5) = 0;
      if (a3)
      {
LABEL_16:
        mdb_page_touch(a1);
        if (v14)
        {
          return;
        }

        v5 = *(a1 + 66);
        v6 = *(v4 + 8 * v5);
        v16 = v6;
      }

LABEL_18:
      v7 = *(v6 + 10);
    }

    while ((v7 & 1) != 0);
  }

  if ((v7 & 2) != 0)
  {
    *(a1 + 68) = *(a1 + 68) & 0xFFFFFFFC | 1;
  }

  else
  {
    *(*(a1 + 24) + 124) |= 2u;
  }
}

void *mdb_page_copy(char *__dst, _WORD *__src, int a3)
{
  v4 = __src;
  v5 = __dst;
  v6 = __src[7];
  v7 = __src[6];
  if (((v6 - v7) & 0xFFF8) == 0 || (__src[5] & 0x20) != 0)
  {
    v9 = a3 - ((v6 - v7) & 0xFFF8u);
  }

  else
  {
    v8 = v6 & 0xFFF8;
    memcpy(__dst, __src, (v7 + 7) & 0x1FFF8);
    v9 = (a3 - v8);
    __dst = &v5[v8];
    __src = (v4 + v8);
  }

  return memcpy(__dst, __src, v9);
}

uint64_t mdb_env_reader_dest(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = getpid();
  if (v2 == result)
  {
    *(a1 + 8) = 0;
  }

  return result;
}

uint64_t mdb_pages_xkeep(uint64_t a1, int a2, int a3)
{
  v5 = *(a1 + 24);
  v27 = 0;
  v26 = 0;
  v6 = *(v5 + 120);
  v7 = v6;
  v8 = a1;
  do
  {
LABEL_2:
    if (*(v8 + 68))
    {
      v12 = v8;
      do
      {
        v13 = *(v12 + 64);
        if (*(v12 + 64))
        {
          v14 = 0;
          do
          {
            v15 = *(v12 + 72 + 8 * v14);
            v16 = *(v15 + 10);
            if ((v16 & 0xC050) == a2)
            {
              *(v15 + 10) = v16 ^ 0x8000;
            }

            ++v14;
          }

          while (v13 != v14);
          v17 = v14 - 1;
        }

        else
        {
          v15 = 0;
          v17 = 0xFFFFFFFFLL;
        }

        v18 = *(v12 + 16);
        if (!v18)
        {
          break;
        }

        if (!v15)
        {
          break;
        }

        if ((*(v18 + 68) & 1) == 0)
        {
          break;
        }

        if ((*(v15 + 10) & 2) == 0)
        {
          break;
        }

        v19 = *(v15 + *(v15 + 2 * *(v12 + 2 * v17 + 328) + 16) + 4);
        v12 = *(v12 + 16);
      }

      while ((v19 & 2) != 0);
    }

    v8 = *v8;
    if (v8)
    {
      v9 = v8 == a1;
    }

    else
    {
      v9 = 1;
    }
  }

  while (!v9);
  v10 = 8 * v7 - 8;
  while (v10 != -8)
  {
    v8 = *(*(v5 + 104) + v10);
    v10 -= 8;
    --v7;
    if (v8)
    {
      v11 = v8 == a1;
    }

    else
    {
      v11 = 1;
    }

    if (!v11)
    {
      goto LABEL_2;
    }
  }

  result = 0;
  if (a3 && v6)
  {
    v21 = 0;
    v22 = 40;
    do
    {
      if (*(*(v5 + 112) + v21))
      {
        v23 = *(*(v5 + 88) + v22);
        if (v23 != -1)
        {
          result = mdb_page_get(a1, v23, &v27, &v26);
          if (result)
          {
            return result;
          }

          v24 = *(v27 + 10);
          if ((v24 & 0xC050) == a2 && v26 <= 1)
          {
            *(v27 + 10) = v24 ^ 0x8000;
          }
        }
      }

      ++v21;
      v22 += 48;
    }

    while (v21 < *(v5 + 120));
    return 0;
  }

  return result;
}

unint64_t mdb_find_oldest(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = *(a1 + 24) - 1;
  v3 = *(v1 + 64);
  if (v3)
  {
    v4 = *(v3 + 16);
    if (v4 >= 1)
    {
      v5 = v4 + 1;
      v6 = v3 + (v4 << 6) + 136;
      v7 = v6;
      do
      {
        v8 = *v7;
        v7 -= 16;
        if (v8)
        {
          v9 = *(v6 - 8);
          if (result >= v9)
          {
            result = v9;
          }
        }

        --v5;
        v6 = v7;
      }

      while (v5 > 1);
    }
  }

  return result;
}

uint64_t mdb_rebalance(uint64_t a1)
{
  v124 = 0;
  memset(v123, 0, sizeof(v123));
  v121 = 0u;
  v122 = 0u;
  v119 = 0u;
  v120 = 0u;
  v2 = (a1 + 72);
  v3 = *(a1 + 66);
  v4 = *(a1 + 72 + 8 * v3);
  if (v4[5])
  {
    v5 = 2;
  }

  else
  {
    v5 = 1;
  }

  if (v4[5])
  {
    v6 = 1;
  }

  else
  {
    v6 = 250;
  }

  v7 = *(a1 + 24);
  v8 = (*(*(v7 + 32) + 16) - 16);
  v9 = v4[7];
  v10 = v4[6];
  if (1000 * (v8 - (v9 - v10)) / v8 >= v6 && v5 <= (v10 - 16) >> 1)
  {
    return 0;
  }

  if (*(a1 + 64) > 1u)
  {
    v21 = v3 - 1;
    mdb_cursor_copy(a1, &v119);
    *&v120 = 0;
    v22 = a1 + 328;
    v118 = *(a1 + 328 + 2 * v3);
    v23 = *(a1 + 328 + 2 * (v3 - 1));
    v24 = *(&v123[16] + (v3 - 1) + 4);
    if (*(a1 + 328 + 2 * (v3 - 1)))
    {
      v25 = v24 - 1;
      *(&v123[16] + v21 + 4) = v25;
      v26 = (v2[v21] + *(v2[v21] + 2 * v25 + 16));
      v15 = mdb_page_get(a1, *v26 | (*(v26 + 2) << 32), v123 + WORD1(v123[0]) + 1, 0);
      if (v15)
      {
        return v15;
      }

      LOWORD(v27) = 0;
      v28 = WORD1(v123[0]);
      *(&v123[16] + WORD1(v123[0]) + 4) = ((*(*(v123 + WORD1(v123[0]) + 1) + 12) + 131056) >> 1) - 1;
      v29 = *(a1 + 66);
    }

    else
    {
      v30 = v24 + 1;
      *(&v123[16] + v21 + 4) = v30;
      v31 = (v2[v21] + *(v2[v21] + 2 * v30 + 16));
      v15 = mdb_page_get(a1, *v31 | (*(v31 + 2) << 32), v123 + WORD1(v123[0]) + 1, 0);
      if (v15)
      {
        return v15;
      }

      v28 = WORD1(v123[0]);
      *(&v123[16] + WORD1(v123[0]) + 4) = 0;
      v29 = *(a1 + 66);
      v27 = (*(v2[v29] + 12) + 131056) >> 1;
    }

    *(v22 + 2 * v29) = v27;
    v32 = (*(*(*(a1 + 24) + 32) + 16) - 16);
    v33 = *(v123 + v28 + 1);
    v34 = *(v33 + 14);
    v35 = *(v33 + 12);
    if (1000 * (v32 - (v34 - v35)) / v32 < v6 || v5 >= (v35 - 16) >> 1)
    {
      if (v23)
      {
        *(&v123[16] + v28 + 4) += *(v22 + 2 * v28) + 1;
        v174 = 0;
        v47 = v118 + ((v35 + 131056) >> 1);
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
        v162 = 0u;
        v163 = 0u;
        v160 = 0u;
        v161 = 0u;
        v158 = 0u;
        v159 = 0u;
        v156 = 0u;
        v157 = 0u;
        v154 = 0u;
        v155 = 0u;
        v152 = 0u;
        v153 = 0u;
        v150 = 0u;
        v151 = 0u;
        v48 = *(*(&v120 + 1) + 104);
        v49 = v121;
        v50 = &v119;
        if ((BYTE4(v123[0]) & 4) != 0)
        {
          DWORD1(v154) = 1;
          *&v151 = &v119;
          v50 = &v150;
        }

        *v50 = *(v48 + 8 * v121);
        *(v48 + 8 * v49) = v50;
        mdb_page_merge(a1, &v119);
        v20 = v51;
        *(v48 + 8 * v49) = *v50;
        mdb_cursor_copy(&v119, a1);
      }

      else
      {
        mdb_page_merge(&v119, a1);
        v20 = v53;
        LOWORD(v47) = v118;
      }

      *(a1 + 68) &= ~2u;
      goto LABEL_77;
    }

    mdb_page_touch(&v119);
    if (v36)
    {
      goto LABEL_73;
    }

    mdb_page_touch(a1);
    if (v36)
    {
      goto LABEL_73;
    }

    v177 = 0;
    v178 = 0;
    v150 = 0u;
    v151 = 0u;
    v152 = 0u;
    v153 = 0u;
    v154 = 0u;
    v155 = 0u;
    v156 = 0u;
    v157 = 0u;
    v158 = 0u;
    v159 = 0u;
    v160 = 0u;
    v161 = 0u;
    v162 = 0u;
    v163 = 0u;
    v164 = 0u;
    v165 = 0u;
    v166 = 0u;
    v167 = 0u;
    v168 = 0u;
    v169 = 0u;
    v170 = 0u;
    v171 = 0u;
    v172 = 0u;
    v173 = 0u;
    v174 = 0;
    v37 = *(v123 + WORD1(v123[0]) + 1);
    v38 = *(v37 + 10);
    if ((v38 & 0x20) != 0)
    {
      LODWORD(v41) = 0;
      v61 = 0;
      v62 = v37 + *(&v123[16] + WORD1(v123[0]) + 4) * **(&v121 + 1) + 16;
      v177 = **(&v121 + 1);
      v178 = v62;
      v175 = 0;
      v176 = 0;
    }

    else
    {
      v39 = (v37 + *(v37 + 2 * *(&v123[16] + WORD1(v123[0]) + 4) + 16));
      v40 = *v39;
      v41 = *(v39 + 2);
      if ((v38 & 1) == 0 || *(&v123[16] + WORD1(v123[0]) + 4))
      {
        v63 = *(v39 + 3);
        v177 = v63;
        v178 = v39 + 2;
      }

      else
      {
        v117 = *v39;
        v42 = v123[0];
        mdb_page_search_lowest(&v119);
        if (v36)
        {
          goto LABEL_73;
        }

        v43 = *(v123 + WORD1(v123[0]) + 1);
        if ((*(v43 + 10) & 0x20) != 0)
        {
          v45 = **(&v121 + 1);
          v46 = (v43 + 16);
        }

        else
        {
          v44 = v43 + *(v43 + 16);
          v45 = *(v44 + 6);
          v46 = (v44 + 8);
        }

        v40 = v117;
        v177 = v45;
        v178 = v46;
        LOWORD(v123[0]) = v42;
        WORD1(v123[0]) = v42 - 1;
        v63 = *(v39 + 3);
      }

      v61 = v40 | (v41 << 32);
      v175 = *v39;
      v176 = v39 + v63 + 8;
    }

    *&v151 = 0;
    v64 = *(a1 + 66);
    if ((*(v2[v64] + 10) & 1) != 0 && !*(v22 + 2 * v64))
    {
      v79 = *(a1 + 64);
      v125 = 0uLL;
      mdb_cursor_copy(a1, &v150);
      mdb_page_search_lowest(&v150);
      if (v36)
      {
        goto LABEL_73;
      }

      v80 = *(&v154 + WORD1(v154) + 1);
      if ((*(v80 + 10) & 0x20) != 0)
      {
        v82 = **(&v152 + 1);
        v83 = v80 + 16;
      }

      else
      {
        v81 = v80 + *(v80 + 16);
        v82 = *(v81 + 6);
        v83 = v81 + 8;
      }

      *&v125 = v82;
      *(&v125 + 1) = v83;
      LOWORD(v154) = v79;
      WORD1(v154) = v79 - 1;
      *(&v170 + (v79 - 1) + 4) = 0;
      mdb_update_key(&v150, &v125);
      if (v36)
      {
        goto LABEL_73;
      }

      v64 = *(a1 + 66);
    }

    mdb_node_add(a1, *(v22 + 2 * v64), &v177, &v175, v61, v41);
    if (v36)
    {
LABEL_73:
      v20 = v36;
LABEL_74:
      LOWORD(v47) = v118;
      goto LABEL_75;
    }

    mdb_node_del(&v119, v177);
    v66 = *(v123 + WORD1(v123[0]) + 1);
    if (v23)
    {
      v67 = *(*(*(&v120 + 1) + 104) + 8 * v121);
      if (v67)
      {
        v68 = v2[WORD1(v123[0])];
        v69 = BYTE4(v123[0]);
        do
        {
          v70 = v67;
          if ((v69 & 4) != 0)
          {
            v70 = *(v67 + 2);
          }

          if ((*(v70 + 68) & 1) != 0 && *(v70 + 33) >= WORD1(v123[0]))
          {
            if (v70 != a1 && *(v70 + WORD1(v123[0]) + 9) == v68)
            {
              v71 = *(v70 + WORD1(v123[0]) + 164);
              if (v71 >= *(v22 + 2 * WORD1(v123[0])))
              {
                *(v70 + WORD1(v123[0]) + 164) = v71 + 1;
              }
            }

            if (v70 != &v119)
            {
              v72 = WORD1(v123[0]);
              if (*(v70 + WORD1(v123[0]) + 9) == v66)
              {
                v73 = v70 + 41;
                if (*(v70 + WORD1(v123[0]) + 164) == *(&v123[16] + WORD1(v123[0]) + 4))
                {
                  v74 = *(a1 + 66);
                  *(v70 + WORD1(v123[0]) + 9) = v2[v74];
                  *(v73 + v72) = *(v22 + 2 * v74);
                  ++*(v73 + WORD1(v123[0]) - 1);
                }
              }
            }

            if ((*(v66 + 10) & 2) != 0)
            {
              v75 = *(v70 + 2);
              if (v75)
              {
                if (*(v75 + 68))
                {
                  v76 = *(v70 + WORD1(v123[0]) + 9);
                  v77 = *(v70 + WORD1(v123[0]) + 164);
                  if (v77 < (*(v76 + 12) - 16) >> 1)
                  {
                    v78 = v76 + *(v76 + 2 * v77 + 16);
                    if ((*(v78 + 4) & 6) == 4)
                    {
                      *(v75 + 72) = v78 + *(v78 + 6) + 8;
                    }
                  }
                }
              }
            }
          }

          v67 = *v67;
        }

        while (v67);
      }
    }

    else
    {
      v84 = *(*(*(&v120 + 1) + 104) + 8 * v121);
      if (v84)
      {
        v85 = BYTE4(v123[0]);
        do
        {
          v86 = v84;
          if ((v85 & 4) != 0)
          {
            v86 = *(v84 + 2);
          }

          if (v86 != &v119 && (*(v86 + 68) & 1) != 0)
          {
            v87 = WORD1(v123[0]);
            if (*(v86 + 33) >= WORD1(v123[0]))
            {
              v88 = v86 + 9;
              if (*(v86 + WORD1(v123[0]) + 9) == v66)
              {
                v89 = v86 + 41;
                v90 = v86 + WORD1(v123[0]) + 164;
                v91 = *v90;
                if (!*v90)
                {
                  v92 = *(a1 + 66);
                  v88[WORD1(v123[0])] = v2[v92];
                  *(v89 + v87) = *(v22 + 2 * v92);
                  v93 = v89 + 2 * WORD1(v123[0]);
                  v94 = *(v93 - 2);
                  v90 = (v93 - 2);
                  v91 = v94;
                }

                *v90 = v91 - 1;
                if ((*(v66 + 10) & 2) != 0)
                {
                  v95 = *(v86 + 2);
                  if (v95)
                  {
                    if (*(v95 + 68))
                    {
                      v96 = v88[WORD1(v123[0])];
                      v97 = *(v89 + WORD1(v123[0]));
                      if (v97 < (*(v96 + 12) - 16) >> 1)
                      {
                        v98 = v96 + *(v96 + 2 * v97 + 16);
                        if ((*(v98 + 4) & 6) == 4)
                        {
                          *(v95 + 72) = v98 + *(v98 + 6) + 8;
                        }
                      }
                    }
                  }
                }
              }
            }
          }

          v84 = *v84;
        }

        while (v84);
      }
    }

    v99 = WORD1(v123[0]);
    if (!*(&v123[16] + WORD1(v123[0]) + 4))
    {
      if (*(&v123[16] + WORD1(v123[0]) + 3))
      {
        v101 = *(v123 + WORD1(v123[0]) + 1);
        if ((*(v101 + 10) & 0x20) != 0)
        {
          v103 = (v101 + 16);
        }

        else
        {
          v102 = v101 + *(v101 + 16);
          v177 = *(v102 + 6);
          v103 = (v102 + 8);
        }

        v178 = v103;
        v108 = &v150;
        mdb_cursor_copy(&v119, &v150);
        LOWORD(v154) = v154 - 1;
        --WORD1(v154);
        v149 = 0;
        v147 = 0u;
        v148 = 0u;
        v145 = 0u;
        v146 = 0u;
        v143 = 0u;
        v144 = 0u;
        v141 = 0u;
        v142 = 0u;
        v139 = 0u;
        v140 = 0u;
        v137 = 0u;
        v138 = 0u;
        v135 = 0u;
        v136 = 0u;
        v133 = 0u;
        v134 = 0u;
        v131 = 0u;
        v132 = 0u;
        v129 = 0u;
        v130 = 0u;
        v127 = 0u;
        v128 = 0u;
        v125 = 0u;
        v126 = 0u;
        v109 = *(*(&v151 + 1) + 104);
        v110 = v152;
        if ((BYTE4(v154) & 4) != 0)
        {
          DWORD1(v129) = 1;
          *&v126 = &v150;
          v108 = &v125;
        }

        *v108 = *(v109 + 8 * v152);
        *(v109 + 8 * v110) = v108;
        mdb_update_key(&v150, &v177);
        *(v109 + 8 * v110) = *v108;
        if (v36)
        {
          goto LABEL_73;
        }

        v99 = WORD1(v123[0]);
      }

      if (*(*(v123 + v99 + 1) + 10))
      {
        v111 = *(&v123[16] + v99 + 4);
        v125 = 0uLL;
        *(&v123[16] + v99 + 4) = 0;
        mdb_update_key(&v119, &v125);
        LODWORD(v99) = WORD1(v123[0]);
        *(&v123[16] + WORD1(v123[0]) + 4) = v111;
      }
    }

    v100 = *(a1 + 66);
    if (*(v22 + 2 * v100))
    {
      v20 = 0;
      goto LABEL_74;
    }

    if (*(v22 + 2 * v100 - 2))
    {
      v104 = *(*(v123 + v99 + 1) + 10);
      v105 = v2[v100];
      if ((v104 & 0x20) != 0)
      {
        v107 = (v105 + 16);
      }

      else
      {
        v106 = v105 + *(v105 + 16);
        v177 = *(v106 + 6);
        v107 = (v106 + 8);
      }

      LOWORD(v47) = v118;
      v178 = v107;
      v112 = &v150;
      mdb_cursor_copy(a1, &v150);
      LOWORD(v154) = v154 - 1;
      --WORD1(v154);
      v149 = 0;
      v147 = 0u;
      v148 = 0u;
      v145 = 0u;
      v146 = 0u;
      v143 = 0u;
      v144 = 0u;
      v141 = 0u;
      v142 = 0u;
      v139 = 0u;
      v140 = 0u;
      v137 = 0u;
      v138 = 0u;
      v135 = 0u;
      v136 = 0u;
      v133 = 0u;
      v134 = 0u;
      v131 = 0u;
      v132 = 0u;
      v129 = 0u;
      v130 = 0u;
      v127 = 0u;
      v128 = 0u;
      v125 = 0u;
      v126 = 0u;
      v113 = *(*(&v151 + 1) + 104);
      v114 = v152;
      if ((BYTE4(v154) & 4) != 0)
      {
        DWORD1(v129) = 1;
        *&v126 = &v150;
        v112 = &v125;
      }

      *v112 = *(v113 + 8 * v152);
      *(v113 + 8 * v114) = v112;
      mdb_update_key(&v150, &v177);
      *(v113 + 8 * v114) = *v112;
      if (v115)
      {
        v20 = v115;
        goto LABEL_75;
      }

      v100 = *(a1 + 66);
    }

    else
    {
      LOWORD(v47) = v118;
    }

    if (*(v2[v100] + 10))
    {
      v116 = *(v22 + 2 * v100);
      v125 = 0uLL;
      *(v22 + 2 * v100) = 0;
      mdb_update_key(a1, &v125);
      v20 = 0;
      *(v22 + 2 * *(a1 + 66)) = v116;
    }

    else
    {
      v20 = 0;
    }

LABEL_75:
    if (v23)
    {
      LOWORD(v47) = v47 + 1;
    }

LABEL_77:
    *(v22 + 2 * *(a1 + 66)) = v47;
    return v20;
  }

  v11 = *v2;
  v12 = *(*v2 + 10);
  if ((v12 & 0x40) != 0)
  {
    return 0;
  }

  v13 = *(v11 + 12) - 16;
  if (v13 <= 1)
  {
    v14 = *(a1 + 40);
    *(v14 + 40) = -1;
    *(v14 + 6) = 0;
    *(v14 + 16) = 0;
    v15 = mdb_midl_append((v7 + 40), *v11);
    if (!v15)
    {
      v16 = *(a1 + 68) & 0xFFFFFFFE;
      *(a1 + 64) = 0;
      *(a1 + 68) = v16;
      v17 = *(*(*(a1 + 24) + 104) + 8 * *(a1 + 32));
      if (v17)
      {
        do
        {
          v18 = v17;
          if ((*(a1 + 68) & 4) != 0)
          {
            v18 = v17[2];
          }

          v19 = *(v18 + 17);
          if ((v19 & 1) != 0 && *(v18 + 32) >= *(a1 + 64) && v18[9] == v11)
          {
            *(v18 + 16) = 0;
            *(v18 + 17) = v19 & 0xFFFFFFFE;
          }

          v20 = 0;
          v17 = *v17;
        }

        while (v17);
        return v20;
      }

      return 0;
    }

    return v15;
  }

  v20 = 0;
  if ((v12 & 1) == 0 || (v13 & 0xFFFFFFFE) != 2)
  {
    return v20;
  }

  v15 = mdb_midl_append((v7 + 40), *v11);
  if (v15)
  {
    return v15;
  }

  v52 = *(v11 + *(v11 + 16)) | (*(v11 + *(v11 + 16) + 4) << 32);
  *(*(a1 + 40) + 40) = v52;
  v15 = mdb_page_get(a1, v52, v2, 0);
  if (v15)
  {
    return v15;
  }

  v54 = *(a1 + 40);
  --*(v54 + 6);
  --*(v54 + 8);
  *(a1 + 328) = *(a1 + 330);
  if (*(v54 + 6) >= 2u)
  {
    v55 = 0;
    do
    {
      *(a1 + 8 * v55 + 80) = *(a1 + 8 * v55 + 88);
      *(a1 + 2 * v55 + 330) = *(a1 + 2 * v55 + 332);
      v56 = v55 + 2;
      ++v55;
    }

    while (v56 < *(v54 + 6));
  }

  v57 = *(*(*(a1 + 24) + 104) + 8 * *(a1 + 32));
  if (!v57)
  {
    return 0;
  }

  v58 = *(a1 + 68);
  do
  {
    v59 = v57;
    if ((v58 & 4) != 0)
    {
      v59 = v57[2];
    }

    if (v59 != a1 && (*(v59 + 68) & 1) != 0 && v59[9] == v11)
    {
      if (*(v54 + 6))
      {
        v60 = 0;
        do
        {
          v59[v60 + 9] = v59[v60 + 10];
          *(v59 + v60 + 164) = *(v59 + v60 + 165);
          v54 = *(a1 + 40);
          ++v60;
        }

        while (v60 < *(v54 + 6));
      }

      --*(v59 + 32);
      --*(v59 + 33);
    }

    v20 = 0;
    v57 = *v57;
  }

  while (v57);
  return v20;
}

uint64_t mdb_cursor_copy(uint64_t result, uint64_t a2)
{
  *(a2 + 24) = *(result + 24);
  *(a2 + 32) = *(result + 32);
  *(a2 + 40) = *(result + 40);
  v2 = *(result + 64);
  *(a2 + 64) = v2;
  *(a2 + 66) = *(result + 66);
  *(a2 + 68) = *(result + 68);
  if (v2)
  {
    v3 = 0;
    v4 = result + 328;
    v5 = a2 + 328;
    do
    {
      v6 = *(v4 + 2 * v3);
      *(v5 + 8 * v3 - 256) = *(v4 + 8 * v3 - 256);
      *(v5 + 2 * v3++) = v6;
    }

    while (v3 < *(result + 64));
  }

  return result;
}

void mdb_page_merge(uint64_t a1, uint64_t a2)
{
  v54 = 0;
  v55 = 0;
  v4 = a1 + 72;
  v5 = *(a1 + 72 + 8 * *(a1 + 66));
  mdb_page_touch(a2);
  if (v6)
  {
    return;
  }

  v56 = 0;
  v57 = 0;
  v7 = *(a2 + 8 * *(a2 + 66) + 72);
  v47 = *(v7 + 12) + 131056;
  if ((*(v5 + 10) & 0x20) == 0)
  {
    if ((*(v5 + 12) & 0xFFFE) != 0x10)
    {
      v8 = 0;
      v9 = v47 >> 1;
      do
      {
        v10 = (v5 + *(v5 + 16 + 2 * v8));
        if (!v8 && (*(v5 + 10) & 1) != 0)
        {
          v53 = 0;
          memset(v52, 0, sizeof(v52));
          v50 = 0u;
          v51 = 0u;
          v48 = 0u;
          v49 = 0u;
          mdb_cursor_copy(a1, &v48);
          *&v49 = 0;
          mdb_page_search_lowest(&v48);
          if (v13)
          {
            return;
          }

          v14 = *(v52 + WORD1(v52[0]) + 1);
          if ((*(v14 + 10) & 0x20) != 0)
          {
            v56 = **(&v50 + 1);
            v16 = (v14 + 16);
          }

          else
          {
            v15 = v14 + *(v14 + 16);
            v56 = *(v15 + 6);
            v16 = (v15 + 8);
          }

          v57 = v16;
          v11 = *(v10 + 3);
        }

        else
        {
          v11 = *(v10 + 3);
          v56 = v11;
          v57 = v10 + 2;
        }

        v54 = *v10;
        v55 = v10 + v11 + 8;
        mdb_node_add(a2, v9, &v56, &v54, v54 | (*(v10 + 2) << 32), *(v10 + 2));
        if (v12)
        {
          return;
        }

        ++v8;
        LOWORD(v9) = v9 + 1;
      }

      while ((*(v5 + 12) - 16) >> 1 > v8);
    }

LABEL_21:
    --*(a1 + 66);
    mdb_node_del(a1, 0);
    v20 = *(a1 + 66);
    if (!*(a1 + 328 + 2 * v20))
    {
      v56 = 0;
      mdb_update_key(a1, &v56);
      LOWORD(v20) = *(a1 + 66);
      if (v30)
      {
        *(a1 + 66) = v20 + 1;
        return;
      }
    }

    v21 = v20 + 1;
    *(a1 + 66) = v21;
    v22 = *(v4 + 8 * v21);
    v23 = *v22;
    v24 = *(a1 + 24);
    v25 = *(v22 + 10);
    if ((v25 & 0x10) != 0 && *(a1 + 32))
    {
      if (!*v24)
      {
LABEL_35:
        *(v22 + 48) = *(v24 + 48);
        *(v24 + 48) = v22;
        ++*(v24 + 56);
        v29 = v25 | 0x4000;
        *(v22 + 10) = v29;
LABEL_36:
        v31 = (v29 & 2) == 0;
        v32 = 16;
        if (v31)
        {
          v32 = 8;
        }

        --*(*(a1 + 40) + v32);
        v33 = *(*(*(a1 + 24) + 104) + 8 * *(a1 + 32));
        if (v33)
        {
          v34 = *(a1 + 66);
          v35 = *(a1 + 68);
          v36 = v34 - 1;
          do
          {
            v37 = v33;
            if ((v35 & 4) != 0)
            {
              v37 = v33[2];
            }

            if (v37 != a1 && *(v37 + 32) >= *(a1 + 64))
            {
              v38 = v37 + 9;
              v39 = v37[v34 + 9];
              if (v39 == v22)
              {
                v38[v34] = v7;
                *(v37 + v34 + 164) += v47 >> 1;
                *(v37 + v36 + 164) = *(a2 + 328 + 2 * v36);
                v39 = v7;
              }

              else if (v38[v36] == *(v4 + 8 * v36))
              {
                v40 = *(v37 + v36 + 164);
                if (v40 > *(a1 + 328 + 2 * v36))
                {
                  *(v37 + v36 + 164) = v40 - 1;
                }
              }

              if ((*(v22 + 10) & 2) != 0)
              {
                v41 = v37[2];
                if (v41)
                {
                  if (*(v41 + 68))
                  {
                    v42 = *(v37 + v34 + 164);
                    if (v42 < (*(v39 + 12) - 16) >> 1)
                    {
                      v43 = v39 + *(v39 + 2 * v42 + 16);
                      if ((*(v43 + 4) & 6) == 4)
                      {
                        *(v41 + 72) = v43 + *(v43 + 6) + 8;
                      }
                    }
                  }
                }
              }
            }

            v33 = *v33;
          }

          while (v33);
        }

        v44 = *(a2 + 64);
        v45 = *(*(a2 + 40) + 6);
        if (v44)
        {
          *(a2 + 64) = v44 - 1;
          if (v44 == 1)
          {
            *(a2 + 68) &= ~1u;
          }

          else
          {
            --*(a2 + 66);
          }
        }

        mdb_rebalance(a2);
        v46 = *(*(a2 + 40) + 6) - v45 + v44;
        *(a2 + 64) = v46;
        *(a2 + 66) = v46 - 1;
        return;
      }

      v26 = *(v24 + 72);
      if (*v26)
      {
        v27 = mdb_mid2l_search(*(v24 + 72), *v22);
        if (*v26 >= v27)
        {
          v28 = &v26[2 * v27];
          if (*v28 == v23)
          {
            if (v28[1] != v22)
            {
              *(a1 + 68) &= 0xFFFFFFFC;
              *(v24 + 124) |= 2u;
              return;
            }

            v25 = *(v22 + 10);
            goto LABEL_35;
          }
        }
      }
    }

    if (mdb_midl_append((v24 + 40), v23))
    {
      return;
    }

    v29 = *(v22 + 10);
    goto LABEL_36;
  }

  v56 = **(a1 + 40);
  v57 = (v5 + 16);
  if ((*(v5 + 12) & 0xFFFE) == 0x10)
  {
    goto LABEL_21;
  }

  v17 = 0;
  v18 = v47 >> 1;
  while (1)
  {
    mdb_node_add(a2, v18, &v56, 0, 0, 0);
    if (v19)
    {
      break;
    }

    v57 = (v57 + v56);
    ++v17;
    LOWORD(v18) = v18 + 1;
    if ((*(v5 + 12) - 16) >> 1 <= v17)
    {
      goto LABEL_21;
    }
  }
}

void mdb_page_search_lowest(uint64_t a1)
{
  v2 = a1 + 72;
  v5 = *(a1 + 72 + 8 * *(a1 + 66));
  if (!mdb_page_get(a1, *(v5 + *(v5 + 16)) | (*(v5 + *(v5 + 16) + 4) << 32), &v5, 0))
  {
    *(a1 + 328 + 2 * *(a1 + 66)) = 0;
    v3 = *(a1 + 64);
    if (v3 < 0x20)
    {
      v4 = v5;
      *(a1 + 64) = v3 + 1;
      *(v2 + 8 * v3) = v4;
      *(a1 + 66) = v3;
      *(a1 + 328 + 2 * v3) = 0;

      mdb_page_search_root(a1, 0, 4);
    }

    else
    {
      *(*(a1 + 24) + 124) |= 2u;
    }
  }
}

uint64_t mdb_cmp_memnr(void *a1, void *a2)
{
  v2 = a1[1];
  v3 = v2 + *a1;
  v4 = *a1 - *a2;
  v5 = v2 + (v4 & ~(v4 >> 63));
  if (v4 >= 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = *a1 - *a2;
  }

  v7 = (*a2 + a2[1] - 1);
  while (v3 > v5)
  {
    v9 = *--v3;
    v8 = v9;
    v10 = *v7--;
    result = (v8 - v10);
    if (v8 != v10)
    {
      return result;
    }
  }

  if (v6 < 0)
  {
    return -1;
  }

  else
  {
    return v6;
  }
}

uint64_t mdb_cmp_memn(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = *a2;
  v4 = a2[1];
  v7 = v3 - v5;
  v6 = v3 <= v5;
  if (v3 < v5)
  {
    v7 = -1;
  }

  if (v3 > v5)
  {
    LODWORD(v3) = v5;
  }

  if (v6)
  {
    v8 = v7;
  }

  else
  {
    v8 = 1;
  }

  LODWORD(result) = memcmp(v2, v4, v3);
  if (result)
  {
    return result;
  }

  else
  {
    return v8;
  }
}

uint64_t mdb_midl_search(unsigned int *a1, unint64_t a2)
{
  v2 = *a1;
  if (!*a1)
  {
    return 1;
  }

  v3 = 0;
  do
  {
    v4 = v2 >> 1;
    v5 = v3 + (v2 >> 1) + 1;
    v6 = *&a1[2 * v5];
    if (v6 >= a2)
    {
      if (v6 <= a2)
      {
        return v5;
      }

      v4 = v2 + ~v4;
      v3 += (v2 >> 1) + 1;
    }

    v2 = v4;
  }

  while (v4);
  if (v6 <= a2)
  {
    return v5;
  }

  else
  {
    return (v5 + 1);
  }
}

void *mdb_midl_alloc(int a1)
{
  v2 = malloc_type_malloc(8 * a1 + 16, 0x100004000313F17uLL);
  if (!v2)
  {
    return 0;
  }

  v2[1] = 0;
  v3 = v2 + 1;
  *v2 = a1;
  return v3;
}

void mdb_midl_free(uint64_t a1)
{
  if (a1)
  {
    free((a1 - 8));
  }
}

void *mdb_midl_shrink(uint64_t *a1)
{
  v2 = *a1;
  v4 = *(v2 - 8);
  result = (v2 - 8);
  if (v4 >= 0x20000)
  {
    result = malloc_type_realloc(result, 0x100008uLL, 0x100004000313F17uLL);
    if (result)
    {
      *result++ = 0x1FFFFLL;
      *a1 = result;
    }
  }

  return result;
}

uint64_t mdb_midl_need(_DWORD **a1, int a2)
{
  v3 = *a1;
  v4 = (*v3 + a2);
  v6 = *(v3 - 1);
  v5 = v3 - 2;
  if (v6 >= v4)
  {
    return 0;
  }

  v7 = (v4 + (v4 >> 2) + 258) & 0xFFFFFF00;
  v8 = malloc_type_realloc(v5, 8 * v7, 0x100004000313F17uLL);
  if (!v8)
  {
    return 12;
  }

  v9 = v8;
  result = 0;
  *v9 = (v7 - 2);
  *a1 = v9 + 8;
  return result;
}

uint64_t mdb_midl_append(unint64_t **a1, unint64_t a2)
{
  v3 = *a1;
  v4 = **a1;
  if (v4 >= *(*a1 - 1))
  {
    if (mdb_midl_grow(a1, 0x1FFFF))
    {
      return 12;
    }

    v3 = *a1;
    v4 = **a1;
  }

  result = 0;
  v7 = v4 + 1;
  *v3 = v7;
  v3[v7] = a2;
  return result;
}

uint64_t mdb_midl_grow(void *a1, int a2)
{
  v4 = malloc_type_realloc((*a1 - 8), 8 * (*(*a1 - 8) + a2) + 16, 0x100004000313F17uLL);
  if (!v4)
  {
    return 12;
  }

  v5 = v4;
  result = 0;
  *v5 += a2;
  *a1 = v5 + 1;
  return result;
}

uint64_t mdb_midl_append_list(uint64_t **a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = **a1;
  if (v4 + v5 >= *(*a1 - 1))
  {
    if (mdb_midl_grow(a1, v4))
    {
      return 12;
    }

    v3 = *a1;
    v5 = **a1;
    v4 = *a2;
  }

  memcpy(&v3[v5 + 1], a2 + 1, 8 * v4);
  result = 0;
  *v3 += *a2;
  return result;
}

uint64_t mdb_midl_append_range(unint64_t **a1, uint64_t a2, unsigned int a3)
{
  v5 = *a1;
  v6 = **a1;
  v7 = v6 + a3;
  if (v7 > *(*a1 - 1))
  {
    if (mdb_midl_grow(a1, a3 | 0x1FFFF))
    {
      return 12;
    }

    v5 = *a1;
  }

  *v5 = v7;
  if (a3)
  {
    v10 = 0;
    v11 = vdupq_n_s64(a3 - 1);
    v12 = &v5[v6 + a3];
    do
    {
      v13 = vmovn_s64(vcgeq_u64(v11, vorrq_s8(vdupq_n_s64(v10), xmmword_100018810)));
      if (v13.i8[0])
      {
        *v12 = a2 + v10;
      }

      if (v13.i8[4])
      {
        *(v12 - 1) = a2 + v10 + 1;
      }

      v10 += 2;
      v12 -= 2;
    }

    while (((a3 + 1) & 0x1FFFFFFFELL) != v10);
  }

  return 0;
}

uint64_t *mdb_midl_xmerge(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  v3 = *result;
  v4 = *result + *a2;
  *result = -1;
  if (v2)
  {
    v5 = result[v3];
    v6 = v4;
    do
    {
      v7 = a2[v2];
      if (v5 >= v7)
      {
        v9 = v3;
        v8 = v6;
      }

      else
      {
        do
        {
          v8 = v6 - 1;
          result[v6] = v5;
          v9 = v3 - 1;
          v5 = result[v3 - 1];
          --v6;
          --v3;
        }

        while (v5 < v7);
      }

      v6 = v8 - 1;
      result[v8] = v7;
      v3 = v9;
      --v2;
    }

    while (v2);
  }

  *result = v4;
  return result;
}

int *mdb_midl_sort(int *result)
{
  LODWORD(v1) = 0;
  v2 = result + 2;
  v3 = *result;
  LODWORD(v4) = 1;
LABEL_2:
  while (2)
  {
    v5 = v4 + 1;
    while (v3 - v4 > 7)
    {
      v6 = (v3 + v4) >> 1;
      v7 = *&result[2 * v6];
      *&result[2 * v6] = *&result[2 * v5];
      *&result[2 * v5] = v7;
      v8 = *&result[2 * v4];
      v9 = *&result[2 * v3];
      if (v8 < v9)
      {
        *&result[2 * v4] = v9;
        *&result[2 * v3] = v8;
        v7 = *&result[2 * v5];
        v9 = v8;
      }

      if (v7 < v9)
      {
        *&result[2 * v5] = v9;
        *&result[2 * v3] = v7;
        v7 = *&result[2 * v5];
      }

      v10 = *&result[2 * v4];
      if (v10 < v7)
      {
        *&result[2 * v4] = v7;
        *&result[2 * v5] = v10;
        v7 = v10;
      }

      LODWORD(v11) = v4 + 1;
      v12 = v3;
      while (1)
      {
        v13 = &v2[2 * v11];
        v11 = v11;
        do
        {
          ++v11;
          v15 = *v13;
          v13 += 2;
          v14 = v15;
        }

        while (v15 > v7);
        v16 = v12 + 1;
        v17 = &result[2 * v12];
        do
        {
          v19 = *(v17 - 1);
          v17 -= 2;
          v18 = v19;
          --v12;
          --v16;
        }

        while (v19 < v7);
        if (v16 <= v11)
        {
          break;
        }

        *(v13 - 1) = v18;
        *v17 = v14;
      }

      *&result[2 * v5] = v18;
      *v17 = v7;
      v20 = v1;
      v1 = v1 + 2;
      v21 = &v26[v20];
      if (v3 - v11 + 1 < v12 - v4)
      {
        v26[v1] = v12 - 1;
        v21[1] = v4;
        LODWORD(v4) = v11;
        goto LABEL_2;
      }

      v26[v1] = v3;
      v21[1] = v11;
      v3 = v12 - 1;
    }

    if (v3 > v4)
    {
      v4 = v4;
      do
      {
        v22 = v4++;
        v23 = *&result[2 * v4];
        if (v22 >= 1)
        {
          while (1)
          {
            v24 = &result[2 * v22];
            if (*v24 >= v23)
            {
              break;
            }

            *(v24 + 1) = *v24;
            v25 = __OFSUB__(v22, 1);
            LODWORD(v22) = v22 - 1;
            if ((v22 < 0) ^ v25 | (v22 == 0))
            {
              LODWORD(v22) = 0;
              break;
            }
          }
        }

        *&v2[2 * v22] = v23;
      }

      while (v4 != v3);
    }

    if (v1)
    {
      LODWORD(v4) = v26[v1 - 1];
      v3 = v26[v1];
      LODWORD(v1) = v1 - 2;
      continue;
    }

    return result;
  }
}

uint64_t mdb_mid2l_search(unsigned int *a1, unint64_t a2)
{
  v2 = *a1;
  if (!*a1)
  {
    return 1;
  }

  v3 = 0;
  do
  {
    v4 = v2 >> 1;
    v5 = v3 + (v2 >> 1) + 1;
    v6 = *&a1[4 * v5];
    if (v6 <= a2)
    {
      if (v6 >= a2)
      {
        return v5;
      }

      v4 = v2 + ~v4;
      v3 += (v2 >> 1) + 1;
    }

    v2 = v4;
  }

  while (v4);
  if (v6 >= a2)
  {
    return v5;
  }

  else
  {
    return (v5 + 1);
  }
}

__n128 mdb_mid2l_insert(unsigned int *a1, unint64_t *a2)
{
  v4 = *a2;
  v5 = mdb_mid2l_search(a1, *a2);
  if (v5)
  {
    v7 = *a1;
    if ((*a1 < v5 || *&a1[4 * v5] != v4) && v7 <= 0x1FFFE)
    {
      v8 = v7 + 1;
      *a1 = v7 + 1;
      if (v5 < v7 + 1)
      {
        v9 = &a1[4 * v7 + 4];
        do
        {
          *v9 = *(v9 - 1);
          v9 -= 4;
          --v8;
        }

        while (v5 < v8);
      }

      result = *a2;
      *&a1[4 * v5] = *a2;
    }
  }

  return result;
}

__n128 mdb_mid2l_append(unint64_t *a1, __n128 *a2)
{
  if (*a1 <= 0x1FFFE)
  {
    v2 = *a1 + 1;
    *a1 = v2;
    result = *a2;
    *&a1[2 * v2] = *a2;
  }

  return result;
}

void MTLArchiveUsageDB::store(uint64_t a1, uint8_t *buf)
{
  *buf = 136315138;
  *(buf + 4) = a1;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "mdb_put error: %s", buf, 0xCu);
}

void MTLArchiveUsageDB::prune(uint64_t a1, uint8_t *buf)
{
  *buf = 136315138;
  *(buf + 4) = a1;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "mdb_cursor_open error: %s", buf, 0xCu);
}

void ___ZN17MTLAssetUpgraderD26listPrioritizedAppLaunchesEv_block_invoke_cold_1(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  OUTLINED_FUNCTION_0(a1, a2, 4.8149e-34);
  OUTLINED_FUNCTION_2(&_mh_execute_header, &_os_log_default, v6, "appLaunch iteration error: %s\n", v7);
}

void MTLAssetUpgraderD::getArchiveType()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

{
  OUTLINED_FUNCTION_8(__stack_chk_guard);
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void MTLAssetUpgraderD::getDynamicLibraryType()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void MTLAssetUpgraderD::addRecompilationWork(uint8_t *buf, _BYTE *a2)
{
  *buf = 0;
  *a2 = 0;
  _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "addRecompilationWork: queued recompilation", buf, 2u);
}

void MTLAssetUpgraderD::getCacheDirectory()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_2(&_mh_execute_header, &_os_log_default, v3, "Cache directory identification failed: %@", v4);
}

void MTLWorkQueue<RecompilationWork>::push(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_0(a1, a2, 4.8149e-34);
  OUTLINED_FUNCTION_2(&_mh_execute_header, &_os_log_default, v2, "mdb_cursor_open error: %s", v3);
}

{
  OUTLINED_FUNCTION_0(a1, a2, 4.8149e-34);
  OUTLINED_FUNCTION_2(&_mh_execute_header, &_os_log_default, v2, "mdb_put error: %s", v3);
}

{
  OUTLINED_FUNCTION_0(a1, a2, 4.8149e-34);
  OUTLINED_FUNCTION_2(&_mh_execute_header, &_os_log_default, v2, "mdb_cursor_get failure: %s", v3);
}

void MTLWorkQueue<RecompilationWork>::push()
{
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void MTLAssetUpgraderD::processAppEvent()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void MTLAssetUpgraderD::processAppEvent(uint8_t *buf, uint64_t a2, void *a3)
{
  *buf = 138412290;
  *a3 = a2;
  _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "processAppEvent: metallib: %@", buf, 0xCu);
}

void ___ZN17MTLAssetUpgraderD15setupAppHandlerEv_block_invoke_cold_1()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void ___ZN17MTLAssetUpgraderD15setupAppHandlerEv_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void ___ZN17MTLAssetUpgraderD15setupAppHandlerEv_block_invoke_cold_5()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void MTLAssetUpgraderD::recompileSingleStep()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_2(&_mh_execute_header, &_os_log_default, v3, "recompilation: not on filesystem - archive %@ ", v4);
}

{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_2(&_mh_execute_header, &_os_log_default, v3, "recompilation: serialization of dynamic library %@ failed", v4);
}

{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_2(&_mh_execute_header, &_os_log_default, v3, "recompilation: creation of target archive failed': %@", v4);
}

{
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_10();
  *v1 = 136315138;
  *(v1 + 4) = v2;
  OUTLINED_FUNCTION_2(&_mh_execute_header, &_os_log_default, v3, "recompilation: invalid app for recompilation bundleID=%s", v4);
  if (*(v0 + 23) < 0)
  {
    operator delete(*v0);
  }
}

{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_10();
  v2 = *(v1 + 12);
  v3 = *(v1 + 16);
  *v4 = 136315650;
  *(v4 + 4) = v5;
  *(v4 + 12) = 1024;
  *(v4 + 14) = v2;
  *(v4 + 18) = 1024;
  *(v4 + 20) = v3;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "recompilation: detected crash for work item (%s, %08X %08X) - skipping", v6, 0x18u);
  if (*(v0 + 23) < 0)
  {
    operator delete(*v0);
  }
}

void MTLAssetUpgraderD::recompileSingleStep(void *a1, void *a2, uint8_t *buf)
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2112;
  *(buf + 14) = a2;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "recompilation: open/rebuild of dynamic library %@ failed: %@", buf, 0x16u);
}

void ___ZN17MTLAssetUpgraderD25kickRecompilationActivityEv_block_invoke_cold_1(int a1, uint8_t *buf)
{
  *buf = 67109120;
  *(buf + 1) = a1;
  _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "com.apple.MTLAssetUpgraderD.recompilationActivity: entered state %d", buf, 8u);
}

void MTLArchiveMapDB::store(char *a1, void *a2, uint64_t *a3)
{
  if (*a1 >= 0)
  {
    v3 = a2;
  }

  else
  {
    v3 = *a2;
  }

  if (*(a3 + 23) >= 0)
  {
    v4 = a3;
  }

  else
  {
    v4 = *a3;
  }

  v5 = 136315394;
  v6 = v3;
  v7 = 2080;
  v8 = v4;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "storeArchive('%s', '%s') invalid payload", &v5, 0x16u);
}

void MTLVersionedDB::openDB(int a1)
{
  mdb_strerror(a1);
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void MTLVersionedDB::openDB(uint64_t a1, uint64_t a2, int a3)
{
  mdb_strerror(a3);
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void MTLVersionedDB::MTLVersionedDB()
{
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void MTLVersionedDB::Transaction::Transaction(int a1)
{
  mdb_strerror(a1);
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

{
  mdb_strerror(a1);
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void MTLVersionedDB::Transaction::~Transaction(uint64_t a1, uint8_t *buf)
{
  *buf = 136315138;
  *(buf + 4) = a1;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "mdb_txn_commit error: %s", buf, 0xCu);
}

void operator delete[]()
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new[]()
{
    ;
  }
}

void operator new()
{
    ;
  }
}

uint64_t mdb_env_share_locks(uint64_t a1, int *a2)
{
  *(*(a1 + 64) + 8) = *(*(a1 + 72 + 8 * ((*(a1 + 12) >> 25) & 1 ^ (*(*(a1 + 72) + 128) < *(*(a1 + 80) + 128)))) + 128);
  v7 = 0x100000000;
  v6 = xmmword_100018810;
  do
  {
    result = fcntl(*(a1 + 4), 8, &v6);
    if (!result)
    {
      break;
    }

    result = *__error();
  }

  while (result == 4);
  if (result)
  {
    v5 = -1;
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

uint64_t mdb_env_create(void *a1)
{
  v2 = malloc_type_calloc(1uLL, 0xF8uLL, 0x10B004020E85D84uLL);
  if (!v2)
  {
    return 12;
  }

  v3 = v2;
  v2[6] = 126;
  *(v2 + 4) = 0x200000002;
  *v2 = -1;
  v2[2] = -1;
  v2[10] = getpid();
  v4 = sysconf(29);
  result = 0;
  v3[5] = v4;
  *a1 = v3;
  return result;
}

uint64_t mdb_env_map(uint64_t a1, char *a2)
{
  v4 = *(a1 + 12);
  if ((v4 & 0x80000) != 0)
  {
    if (ftruncate(*a1, *(a1 + 112)) < 0)
    {
      return *__error();
    }

    v5 = 3;
  }

  else
  {
    v5 = 1;
  }

  v6 = mmap(a2, *(a1 + 112), v5, 1, *a1, 0);
  *(a1 + 56) = v6;
  if (v6 == -1)
  {
    *(a1 + 56) = 0;
    return *__error();
  }

  if ((v4 & 0x800000) != 0)
  {
    madvise(v6, *(a1 + 112), 1);
    v6 = *(a1 + 56);
  }

  if (a2 && v6 != a2)
  {
    return 16;
  }

  v7 = 0;
  v8 = &v6[*(a1 + 16) + 16];
  *(a1 + 72) = v6 + 16;
  *(a1 + 80) = v8;
  return v7;
}

uint64_t mdb_env_open(uint64_t a1, const char *a2, unsigned int a3, uint64_t a4)
{
  v27 = -1;
  v4 = 22;
  if ((a3 & 0xFC00BFFE) != 0)
  {
    return v4;
  }

  if (*a1 != -1)
  {
    return v4;
  }

  v25 = 0;
  v26 = 0;
  v8 = *(a1 + 12) | a3;
  v4 = mdb_fname_init(a2, v8, &v25);
  if (v4)
  {
    return v4;
  }

  v9 = v8 | 0x20000000;
  if ((v8 & 0x20000) != 0)
  {
    v9 = v8 & 0xDFF7FFFF | 0x20000000;
  }

  else
  {
    v10 = mdb_midl_alloc(0x1FFFF);
    *(a1 + 200) = v10;
    if (!v10 || (v11 = malloc_type_calloc(0x20000uLL, 0x10uLL, 0x108004057E67DB5uLL), (*(a1 + 208) = v11) == 0))
    {
      *(a1 + 12) = v9;
LABEL_27:
      v4 = 12;
      goto LABEL_28;
    }
  }

  *(a1 + 12) = v9;
  *(a1 + 48) = strdup(a2);
  *(a1 + 136) = malloc_type_calloc(*(a1 + 36), 0x30uLL, 0x1080040226B62D8uLL);
  *(a1 + 144) = malloc_type_calloc(*(a1 + 36), 2uLL, 0x1000040BDFB0063uLL);
  v12 = malloc_type_calloc(*(a1 + 36), 4uLL, 0x100004052888210uLL);
  *(a1 + 152) = v12;
  v13 = *(a1 + 136);
  if (!v13 || !*(a1 + 48))
  {
    goto LABEL_27;
  }

  v4 = 12;
  if (!*(a1 + 144) || !v12)
  {
    goto LABEL_28;
  }

  *(v13 + 16) = mdb_cmp_long;
  if ((v9 & 0x420000) == 0)
  {
    v16 = mdb_env_setup_locks(a1, &v25, a4, &v27);
    if (v16)
    {
LABEL_33:
      v4 = v16;
      goto LABEL_28;
    }

    if ((v9 & 0x2000000) != 0 && !v27)
    {
      v4 = 35;
      goto LABEL_28;
    }
  }

  v14 = v9 & 0x20000;
  if ((v9 & 0x20000) != 0)
  {
    v15 = 0;
  }

  else
  {
    v15 = 514;
  }

  v16 = mdb_fopen(a1, &v25, v15, a4, a1);
  if (v16)
  {
    goto LABEL_33;
  }

  if ((v9 & 0x420000) == 0x20000)
  {
    v16 = mdb_env_setup_locks(a1, &v25, a4, &v27);
    if (v16)
    {
      goto LABEL_33;
    }
  }

  v16 = mdb_env_open2(a1, v9 & 0x2000000);
  if (v16)
  {
    goto LABEL_33;
  }

  v16 = mdb_fopen(a1, &v25, 20971521, a4, (a1 + 8));
  if (v16)
  {
    goto LABEL_33;
  }

  if ((v9 & 0x2000000) != 0 || v27 < 1)
  {
    if (v14)
    {
      v4 = 0;
      goto LABEL_29;
    }

    goto LABEL_38;
  }

  v17 = mdb_env_share_locks(a1, &v27);
  if (!(v17 | v14))
  {
LABEL_38:
    v19 = *(a1 + 36);
    v20 = malloc_type_calloc(1uLL, *(a1 + 16), 0x4D3CF501uLL);
    *(a1 + 88) = v20;
    if (!v20)
    {
      goto LABEL_28;
    }

    v21 = malloc_type_calloc(1uLL, 61 * v19 + 136, 0xB3B38C76uLL);
    if (!v21)
    {
      goto LABEL_28;
    }

    v4 = 0;
    v22 = *(a1 + 36);
    v23 = &v21[6 * v22 + 17];
    v24 = v23 + 8 * v22;
    v21[12] = v24;
    v21[13] = v23;
    v21[14] = v24 + 4 * v22;
    v21[4] = a1;
    v21[10] = *(a1 + 136);
    v21[11] = v21 + 17;
    *(v21 + 31) = 1;
    *(a1 + 104) = v21;
    goto LABEL_29;
  }

  v4 = v17;
  if (v17)
  {
LABEL_28:
    mdb_env_close1(a1);
  }

LABEL_29:
  if (HIDWORD(v25))
  {
    free(v26);
  }

  return v4;
}

uint64_t mdb_fname_init(const char *a1, int a2, uint64_t a3)
{
  v5 = ~a2 & 0x404000;
  *(a3 + 4) = 0;
  v6 = strlen(a1);
  *a3 = v6;
  if (v5)
  {
    v8 = malloc_type_malloc(v6 + 10, 0x53DCED66uLL);
    *(a3 + 8) = v8;
    if (v8)
    {
      *(a3 + 4) = 1;
      strcpy(v8, a1);
      return 0;
    }

    else
    {
      return 12;
    }
  }

  else
  {
    result = 0;
    *(a3 + 8) = a1;
  }

  return result;
}

uint64_t mdb_env_setup_locks(uint64_t a1, int *a2, unsigned __int16 a3, int *a4)
{
  v6 = mdb_fopen(a1, a2, 16777734, a3, (a1 + 4));
  if (!v6)
  {
    if ((*(a1 + 14) & 0x20) == 0)
    {
      v8 = pthread_key_create((a1 + 160), mdb_env_reader_dest);
      if (v8)
      {
        return v8;
      }

      *(a1 + 12) |= 0x10000000u;
    }

    v17 = 0x300000000;
    v16 = xmmword_100018810;
    do
    {
      if (!fcntl(*(a1 + 4), 8, &v16))
      {
        goto LABEL_13;
      }

      v9 = *__error();
    }

    while (v9 == 4);
    if (v9)
    {
      WORD2(v17) = 1;
      do
      {
        if (!fcntl(*(a1 + 4), 9, &v16))
        {
          LODWORD(v7) = 0;
          goto LABEL_14;
        }

        v7 = *__error();
      }

      while (v7 == 4);
      if (!v7)
      {
        goto LABEL_14;
      }

      return v7;
    }

LABEL_13:
    LODWORD(v7) = 1;
LABEL_14:
    *a4 = v7;
    v10 = lseek(*(a1 + 4), 0, 2);
    if (v10 != -1)
    {
      v11 = ((*(a1 + 24) - 1) << 6) + 256;
      if (v10 >= v11 || *a4 < 1)
      {
        *(a1 + 24) = ((v10 + 0x3FFFFFFF00) >> 6) + 1;
        v11 = v10;
      }

      else if (ftruncate(*(a1 + 4), ((*(a1 + 24) - 1) << 6) + 256))
      {
        return *__error();
      }

      v12 = mmap(0, v11, 3, 1, *(a1 + 4), 0);
      if (v12 != -1)
      {
        *(a1 + 64) = v12;
        if (*a4 < 1)
        {
          if (*v12 != -1091583778)
          {
            return 4294936503;
          }

          if (*(v12 + 1) != 774479874)
          {
            return 4294936502;
          }

          v7 = *__error();
          if (v7 <= 0x23 && ((1 << v7) & 0x800002001) != 0)
          {
            return 0;
          }
        }

        else
        {
          v16.__sig = 0;
          *v16.__opaque = 0;
          *(v12 + 24) = 0u;
          *(v12 + 40) = 0u;
          *(v12 + 56) = 0u;
          *(v12 + 72) = 0u;
          v13 = *(a1 + 64);
          v13[8] = 0u;
          v13[9] = 0u;
          v13[10] = 0u;
          v13[11] = 0u;
          v8 = pthread_mutexattr_init(&v16);
          if (v8)
          {
            return v8;
          }

          v14 = pthread_mutexattr_setpshared(&v16, 1);
          if (v14 || (v14 = pthread_mutex_init((*(a1 + 64) + 24), &v16), v14))
          {
            v7 = v14;
            pthread_mutexattr_destroy(&v16);
          }

          else
          {
            v7 = pthread_mutex_init((*(a1 + 64) + 128), &v16);
            pthread_mutexattr_destroy(&v16);
            if (!v7)
            {
              **(a1 + 64) = -1091583778;
              *(*(a1 + 64) + 4) = 774479874;
              *(*(a1 + 64) + 8) = 0;
              *(*(a1 + 64) + 16) = 0;
            }
          }
        }

        return v7;
      }
    }

    return *__error();
  }

  v7 = v6;
  if (v6 == 30)
  {
    if ((*(a1 + 14) & 2) == 0)
    {
      return 30;
    }

    return 0;
  }

  return v7;
}

uint64_t mdb_fopen(unsigned int *a1, int *a2, int a3, uint64_t a4, int *a5)
{
  if (a2[1])
  {
    strcpy((*(a2 + 1) + *a2), (&(&mdb_suffixes)[2 * (a3 == 16777734)])[(a1[3] >> 14) & 1]);
  }

  v10 = open(*(a2 + 1), a3 & 0x1400A03, a4);
  v11 = v10;
  if (v10 == -1)
  {
    result = *__error();
  }

  else
  {
    if (a3 == 16779777 && a1[4] >= a1[5])
    {
      fcntl(v10, 48, 1);
    }

    result = 0;
  }

  *a5 = v11;
  return result;
}

uint64_t mdb_env_open2(uint64_t a1, int a2)
{
  v4 = 0;
  v5 = *(a1 + 12);
  memset(v16, 0, 136);
  v26 = 0;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = 1;
  __buf = 0u;
  while (1)
  {
    v7 = v6;
    v8 = pread(*a1, &__buf, 0x98uLL, v4);
    if (v8 != 152)
    {
      break;
    }

    result = 4294936503;
    if ((BYTE10(__buf) & 8) == 0 || v18 != -1091583778)
    {
      goto LABEL_20;
    }

    if (DWORD1(v18) != 1)
    {
      result = 4294936502;
      goto LABEL_20;
    }

    if (!v4)
    {
      goto LABEL_9;
    }

    if (!a2)
    {
      if (v26 <= v16[16])
      {
        goto LABEL_10;
      }

LABEL_9:
      *v16 = v18;
      *&v16[8] = v22;
      *&v16[6] = v21;
      *&v16[4] = v20;
      *&v16[2] = v19;
      v16[16] = v26;
      *&v16[14] = v25;
      *&v16[12] = v24;
      *&v16[10] = v23;
      goto LABEL_10;
    }

    if (v26 < v16[16])
    {
      goto LABEL_9;
    }

LABEL_10:
    v6 = 0;
    v10 = v16[3];
    v4 += LODWORD(v16[3]);
    if ((v7 & 1) == 0)
    {
      goto LABEL_39;
    }
  }

  if (!(v4 | v8))
  {
    result = 2;
    goto LABEL_20;
  }

  if ((v8 & 0x80000000) == 0)
  {
    result = 4294936503;
    goto LABEL_20;
  }

  result = *__error();
  if (result)
  {
LABEL_20:
    if (result != 2)
    {
      return result;
    }

    v11 = 0;
    v10 = *(a1 + 20);
    if (v10 >= 0x8000)
    {
      v10 = 0x8000;
    }

    *(a1 + 16) = v10;
    memset(&v16[3], 0, 112);
    *&v16[1] = 0u;
    v16[0] = 0x1BEEFC0DELL;
    WORD2(v16[3]) = *(a1 + 12) | 8;
    v16[8] = -1;
    v16[2] = 0x100000;
    v12 = *(a1 + 112);
    LODWORD(v16[3]) = v10;
    *&v16[14] = xmmword_100018820;
    if (!v12)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v10 = v16[3];
LABEL_39:
    *(a1 + 16) = v10;
    v12 = *(a1 + 112);
    v11 = 1;
    if (!v12)
    {
LABEL_24:
      v12 = v16[2];
      *(a1 + 112) = v16[2];
    }
  }

  v13 = v10 * v16[15] + v10;
  if (v12 < v13)
  {
    *(a1 + 112) = v13;
    v12 = v13;
  }

  v16[2] = v12;
  if (v11)
  {
    if (v5)
    {
      v14 = v16[1];
      goto LABEL_33;
    }

LABEL_32:
    v14 = 0;
LABEL_33:
    result = mdb_env_map(a1, v14);
    if (!result)
    {
LABEL_34:
      result = 0;
      v15 = *(a1 + 16);
      *(a1 + 216) = ((v15 - 16) >> 3) - 1;
      *(a1 + 220) = (((v15 - 16) >> 1) & 0x7FFFFFFE) - 2;
      *(a1 + 128) = *(a1 + 112) / v15;
    }
  }

  else if (v5)
  {
    result = mdb_env_map(a1, v16[1]);
    if (!result)
    {
      v16[1] = *(a1 + 56);
      result = mdb_env_init_meta(a1, v16);
      if (!result)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    result = mdb_env_init_meta(a1, v16);
    if (!result)
    {
      goto LABEL_32;
    }
  }

  return result;
}

uint64_t mdb_env_close1(uint64_t result)
{
  if ((*(result + 15) & 0x20) != 0)
  {
    v1 = result;
    v2 = *(result + 136);
    if (v2)
    {
      v3 = *(v1 + 36);
      if (v3 >= 3)
      {
        v4 = v3 + 1;
        v5 = 48 * v3 - 40;
        do
        {
          free(*(*(v1 + 136) + v5));
          --v4;
          v5 -= 48;
        }

        while (v4 > 3);
        v2 = *(v1 + 136);
      }

      free(v2);
    }

    free(*(v1 + 88));
    free(*(v1 + 152));
    free(*(v1 + 144));
    free(*(v1 + 48));
    free(*(v1 + 208));
    free(*(v1 + 104));
    mdb_midl_free(*(v1 + 200));
    if ((*(v1 + 15) & 0x10) != 0)
    {
      pthread_key_delete(*(v1 + 160));
    }

    v6 = *(v1 + 56);
    if (v6)
    {
      munmap(v6, *(v1 + 112));
    }

    v7 = *(v1 + 8);
    if (v7 != -1)
    {
      close(v7);
    }

    if (*v1 != -1)
    {
      close(*v1);
    }

    if (*(v1 + 64))
    {
      v8 = getpid();
      v9 = *(v1 + 28);
      if (v9 >= 1)
      {
        v10 = v9 + 1;
        v11 = (v9 << 6) + 136;
        do
        {
          v12 = *(v1 + 64);
          if (*(v12 + v11) == v8)
          {
            *(v12 + v11) = 0;
          }

          --v10;
          v11 -= 64;
        }

        while (v10 > 1);
      }

      munmap(*(v1 + 64), ((*(v1 + 24) - 1) << 6) + 256);
    }

    result = *(v1 + 4);
    if (result != -1)
    {
      result = close(result);
    }

    *(v1 + 12) &= 0xCFFFFFFF;
  }

  return result;
}

void mdb_env_close(void *a1)
{
  if (a1)
  {
    while (1)
    {
      v2 = a1[24];
      if (!v2)
      {
        break;
      }

      a1[24] = *v2;
      free(v2);
    }

    mdb_env_close1(a1);

    free(a1);
  }
}

uint64_t mdb_env_init_meta(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = malloc_type_calloc(2uLL, v4, 0xFC816637uLL);
  if (!v5)
  {
    return 12;
  }

  v6 = v5;
  *v5 = 0;
  *(v5 + 5) = 8;
  *(v5 + 1) = *a2;
  v7 = *(a2 + 16);
  v8 = *(a2 + 32);
  v9 = *(a2 + 48);
  *(v5 + 5) = *(a2 + 64);
  *(v5 + 4) = v9;
  *(v5 + 3) = v8;
  *(v5 + 2) = v7;
  v10 = *(a2 + 80);
  v11 = *(a2 + 96);
  v12 = *(a2 + 112);
  *(v5 + 18) = *(a2 + 128);
  *(v5 + 8) = v12;
  *(v5 + 7) = v11;
  *(v5 + 6) = v10;
  v13 = &v5[v4];
  *v13 = 1;
  *(v13 + 5) = 8;
  *(v13 + 1) = *a2;
  v14 = *(a2 + 16);
  v15 = *(a2 + 32);
  v16 = *(a2 + 48);
  *(v13 + 5) = *(a2 + 64);
  *(v13 + 4) = v16;
  *(v13 + 3) = v15;
  *(v13 + 2) = v14;
  v17 = *(a2 + 80);
  v18 = *(a2 + 96);
  v19 = *(a2 + 112);
  *(v13 + 18) = *(a2 + 128);
  *(v13 + 8) = v19;
  *(v13 + 7) = v18;
  *(v13 + 6) = v17;
  v20 = (2 * v4);
  while (1)
  {
    v21 = pwrite(*a1, v6, v20, 0);
    if (v21 != -1)
    {
      break;
    }

    if (*__error() != 4)
    {
      goto LABEL_11;
    }
  }

  if (v21 < 0)
  {
LABEL_11:
    v22 = *__error();
    goto LABEL_12;
  }

  if (v20 == v21)
  {
    v22 = 0;
  }

  else
  {
    v22 = 28;
  }

LABEL_12:
  free(v6);
  return v22;
}