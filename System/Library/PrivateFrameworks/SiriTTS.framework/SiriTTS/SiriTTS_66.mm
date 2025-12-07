uint64_t tag_memmsc(uint64_t a1, unsigned int *a2, unsigned int *a3)
{
  v4 = *(a1 + 44);
  v5 = *a2;
  tag_expsc(a1, a2, a3);
  result = xvm_expma(a3, a3, 0, v4 * v4 * v5);
  v16 = v5;
  if (v5)
  {
    v7 = 0;
    v8 = 0;
    do
    {
      if (v4)
      {
        v9 = 0;
        v10 = v7;
        do
        {
          v11 = 0;
          v12 = v4;
          v13 = v10;
          do
          {
            v11 = fix16_add(v11, a3[v13++]);
            --v12;
          }

          while (v12);
          v14 = v4;
          v15 = v10;
          do
          {
            result = fix16_div(a3[v15], v11);
            a3[v15++] = result;
            --v14;
          }

          while (v14);
          ++v9;
          v10 += v4;
        }

        while (v9 != v4);
      }

      ++v8;
      v7 += v4 * v4;
    }

    while (v8 != v16);
  }

  return result;
}

uint64_t tag_expsc(uint64_t result, unsigned int *a2, uint64_t a3)
{
  v4 = *(result + 80);
  v42 = result;
  v5 = *(result + 44);
  v6 = *a2;
  v7 = *(a2 + 2);
  if (v7)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 1;
  }

  v39 = *a2;
  if (v8)
  {
    if (!v6)
    {
      return result;
    }
  }

  else
  {
    v9 = 0;
    v10 = 0;
    do
    {
      if (v5)
      {
        v11 = 0;
        v12 = v9;
        do
        {
          v13 = v5;
          v14 = v12;
          do
          {
            *(a3 + 4 * v14) = 0x80000000;
            v14 += v5;
            --v13;
          }

          while (v13);
          ++v11;
          ++v12;
        }

        while (v11 != v5);
      }

      ++v10;
      v9 += v5 * v5;
    }

    while (v10 != v39);
  }

  v43 = 0;
  *&v40[8] = 0;
  v37 = a2 + 6;
  *v40 = (v5 * v5);
  do
  {
    if (v5)
    {
      v15 = 0;
      v16 = v43;
      v17 = &v37[8 * *&v40[4]];
      do
      {
        if (!v7 || *(v7 + 4 * (v5 * *&v40[4] + v15)) || ((v18 = *v17, v18 != -1) ? (v19 = v15 == v18) : (v19 = 0), v19))
        {
          v20 = v17[1];
          if (v20)
          {
            LODWORD(result) = 0;
            v21 = *(v17 + 2);
            v22 = *(v42 + 64);
            do
            {
              v23 = *v21++;
              result = fix16_add(result, *(v4 + 4 * (*(v22 + 4 * v23) + v15)));
              --v20;
            }

            while (v20);
          }

          else
          {
            result = 0;
          }

          v24 = v5;
          v25 = v16;
          do
          {
            *(a3 + 4 * v25) = result;
            v25 += v5;
            --v24;
          }

          while (v24);
        }

        ++v15;
        ++v16;
      }

      while (v15 != v5);
    }

    v43 += *v40;
    ++*&v40[4];
  }

  while (*&v40[4] != v39);
  if (v39 >= 2)
  {
    for (i = 1; i != v39; ++i)
    {
      if (v5)
      {
        *&v41[8] = 0;
        v26 = 0;
        v27 = &v37[8 * i];
        *v41 = (v5 * (i - 1));
        v44 = v5 * i;
        do
        {
          if (!v7 || *(v7 + 4 * (*v41 + *&v41[4])) || v37[8 * i - 8] != -1 && *&v41[4] == *v27)
          {
            v28 = 0;
            v45 = (v44 + *&v41[4]) * v5;
            do
            {
              if (!v7 || *(v7 + 4 * (v44 + v28)) || ((v29 = *v27, v29 != -1) ? (v30 = v28 == v29) : (v30 = 0), v30))
              {
                v31 = v7;
                v32 = v27[2];
                if (v32)
                {
                  v33 = 0;
                  v34 = *(v27 + 3);
                  v35 = *(v42 + 72);
                  do
                  {
                    v36 = *v34++;
                    v33 = fix16_add(v33, *(v4 + 4 * (*(v35 + 4 * v36) + v26)));
                    --v32;
                  }

                  while (v32);
                }

                else
                {
                  v33 = 0;
                }

                result = fix16_add(*(a3 + 4 * (v45 + v28)), v33);
                *(a3 + 4 * (v45 + v28)) = result;
                v7 = v31;
              }

              ++v28;
              ++v26;
            }

            while (v28 != v5);
          }

          ++*&v41[4];
        }

        while (*&v41[4] != v5);
      }
    }
  }

  return result;
}

uint64_t tag_forced(uint64_t result, unsigned int *a2, uint64_t a3, int a4)
{
  v4 = *(result + 44);
  v5 = *a2;
  v6 = (a4 == 0) << 31;
  if (v5)
  {
    v7 = 0;
    v8 = 0;
    v9 = v4 * v4;
    v10 = v4 * v4;
    do
    {
      v11 = a2[8 * v8 + 6];
      if (v11 != -1)
      {
        if (v8 && v4)
        {
          LODWORD(result) = 0;
          v12 = v7;
          do
          {
            if (result != v11)
            {
              v13 = v4;
              v14 = v12;
              do
              {
                *(a3 + 4 * v14) = v6;
                v14 += v4;
                --v13;
              }

              while (v13);
            }

            result = (result + 1);
            ++v12;
          }

          while (result != v4);
        }

        if (v8 != v5 - 1 && v4)
        {
          LODWORD(result) = 0;
          v15 = v10;
          do
          {
            if (result != v11)
            {
              v16 = v4;
              v17 = v15;
              do
              {
                *(a3 + 4 * v17++) = v6;
                --v16;
              }

              while (v16);
            }

            result = (result + 1);
            v15 += v4;
          }

          while (result != v4);
        }
      }

      ++v8;
      v7 += v9;
      v10 += v9;
    }

    while (v8 != v5);
  }

  v18 = a2[6];
  if (v18 != -1 && v4 != 0)
  {
    v20 = 0;
    do
    {
      if (v18 != v20)
      {
        v21 = v4;
        v22 = v20;
        do
        {
          *(a3 + 4 * v22) = v6;
          v22 += v4;
          --v21;
        }

        while (v21);
      }

      ++v20;
    }

    while (v20 != v4);
  }

  return result;
}

uint64_t tag_memmsc_sparse(uint64_t a1, unsigned int *a2, unsigned int *a3)
{
  v4 = *(a1 + 44);
  v5 = *a2;
  tag_expsc_sparse(a1, a2, a3);
  result = xvm_expma(a3, a3, 0, v4 * v4 * v5);
  v16 = v5;
  if (v5)
  {
    v7 = 0;
    v8 = 0;
    do
    {
      if (v4)
      {
        v9 = 0;
        v10 = v7;
        do
        {
          v11 = 0;
          v12 = v4;
          v13 = v10;
          do
          {
            v11 = fix16_add(v11, a3[v13++]);
            --v12;
          }

          while (v12);
          v14 = v4;
          v15 = v10;
          do
          {
            result = fix16_div(a3[v15], v11);
            a3[v15++] = result;
            --v14;
          }

          while (v14);
          ++v9;
          v10 += v4;
        }

        while (v9 != v4);
      }

      ++v8;
      v7 += v4 * v4;
    }

    while (v8 != v16);
  }

  return result;
}

uint64_t tag_expsc_sparse(uint64_t result, unsigned int *a2, uint64_t a3)
{
  v4 = a2;
  v5 = result;
  v6 = *(result + 88);
  v7 = *(result + 44);
  v8 = *a2;
  if (*(a2 + 2))
  {
    v9 = v8 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    if (!v8)
    {
      return result;
    }
  }

  else
  {
    v10 = 0;
    v11 = 0;
    do
    {
      if (v7)
      {
        v12 = 0;
        v13 = v10;
        do
        {
          v14 = v7;
          v15 = v13;
          do
          {
            *(a3 + 4 * v15) = 0x80000000;
            v15 += v7;
            --v14;
          }

          while (v14);
          ++v12;
          ++v13;
        }

        while (v12 != v7);
      }

      ++v11;
      v10 += v7 * v7;
    }

    while (v11 != v8);
  }

  v47 = 0;
  v16 = 0;
  v44 = a2 + 6;
  v17 = -v7;
  v46 = v8;
  do
  {
    if (v7)
    {
      v18 = 0;
      v19 = &v44[8 * v16];
      v20 = v47;
      v49 = v17;
      do
      {
        v21 = *(v4 + 2);
        if (!v21 || *(v21 + 4 * (v7 * v16 + v18)) || ((v22 = *v19, v22 != -1) ? (v23 = v18 == v22) : (v23 = 0), v23))
        {
          v51 = v20;
          if (v19[1])
          {
            v24 = 0;
            v25 = 0;
            do
            {
              v26 = sparray_get(v6, *(*(v5 + 64) + 4 * *(*(v19 + 2) + 4 * v24)) + v18);
              result = fix16_add(v25, v26);
              v25 = result;
              ++v24;
            }

            while (v24 < v19[1]);
          }

          else
          {
            v25 = 0;
          }

          v27 = 0;
          v20 = v51;
          v28 = v51;
          v17 = v49;
          do
          {
            if (!v16 || (v29 = *(v4 + 2)) == 0 || *(v29 + 4 * (v49 + v27)) || v44[8 * (v16 - 1)] != -1 && v27 == *v19)
            {
              *(a3 + 4 * v28) = v25;
            }

            ++v27;
            v28 += v7;
          }

          while (v7 != v27);
        }

        ++v18;
        ++v20;
      }

      while (v18 != v7);
    }

    ++v16;
    v47 += v7 * v7;
    v17 += v7;
  }

  while (v16 != v46);
  if (v46 >= 2)
  {
    for (i = 1; i != v46; ++i)
    {
      if (v7)
      {
        v30 = 0;
        v31 = 0;
        v32 = &v44[8 * i];
        v50 = v7 * i;
        do
        {
          v33 = *(v4 + 2);
          v48 = v30;
          if (!v33 || *(v33 + 4 * (v7 * (i - 1) + v30)) || ((v34 = v44[8 * i - 8], v34 != -1) ? (v35 = v30 == v34) : (v35 = 0), v35))
          {
            v36 = 0;
            v52 = (v50 + v30) * v7;
            do
            {
              v37 = *(v4 + 2);
              if (!v37 || *(v37 + 4 * (v50 + v36)) || ((v38 = *v32, v38 != -1) ? (v39 = v36 == v38) : (v39 = 0), v39))
              {
                v40 = v4;
                if (v32[2])
                {
                  v41 = 0;
                  v42 = 0;
                  do
                  {
                    v43 = sparray_get(v6, *(*(v5 + 72) + 4 * *(*(v32 + 3) + 4 * v41)) + v31);
                    v42 = fix16_add(v42, v43);
                    ++v41;
                  }

                  while (v41 < v32[2]);
                }

                else
                {
                  v42 = 0;
                }

                result = fix16_add(*(a3 + 4 * (v52 + v36)), v42);
                *(a3 + 4 * (v52 + v36)) = result;
                v4 = v40;
              }

              ++v36;
              ++v31;
            }

            while (v36 != v7);
          }

          else
          {
            v31 += v7;
          }

          v30 = v48 + 1;
        }

        while (v48 + 1 != v7);
      }
    }
  }

  return result;
}

void *kh_init_32(uint64_t a1)
{
  result = heap_Calloc(*(a1 + 8), 1, 48);
  if (result)
  {
    *result = a1;
  }

  return result;
}

void *kh_destroy_32(uint64_t *a1)
{
  v2 = *a1;
  heap_Free(*(*a1 + 8), a1[4]);
  heap_Free(*(v2 + 8), a1[3]);
  heap_Free(*(v2 + 8), a1[5]);
  v3 = *(v2 + 8);

  return heap_Free(v3, a1);
}

uint64_t kh_get_32(uint64_t a1, int a2)
{
  result = *(a1 + 8);
  if (result)
  {
    v4 = 9 * ((~(a2 << 15) + a2) ^ ((~(a2 << 15) + a2) >> 10));
    v5 = (v4 ^ (v4 >> 6)) + ~((v4 ^ (v4 >> 6)) << 11);
    v6 = (result - 1) & (v5 ^ HIWORD(v5));
    v7 = 1;
    v8 = v6;
    while (1)
    {
      v9 = *(*(a1 + 24) + 4 * (v8 >> 4)) >> (2 * (v8 & 0xF));
      if ((v9 & 2) != 0 || (v9 & 1) == 0 && *(*(a1 + 32) + 4 * v8) == a2)
      {
        break;
      }

      v8 = (v8 + v7++) & (result - 1);
      if (v8 == v6)
      {
        return result;
      }
    }

    if ((v9 & 3) != 0)
    {
      return result;
    }

    else
    {
      return v8;
    }
  }

  return result;
}

uint64_t kh_resize_32(uint64_t *a1, int a2)
{
  v2 = (a2 - 1) | ((a2 - 1) >> 1) | (((a2 - 1) | ((a2 - 1) >> 1)) >> 2);
  v3 = v2 | (v2 >> 4) | ((v2 | (v2 >> 4)) >> 8);
  v4 = v3 | HIWORD(v3);
  if ((v4 + 1) > 4)
  {
    v5 = v4 + 1;
  }

  else
  {
    v5 = 4;
  }

  v6 = 3 * v5 + 2;
  if (*(a1 + 3) >= v6)
  {
    return 0;
  }

  v8 = *a1;
  v9 = *(*a1 + 8);
  if ((v4 + 1) >= 0x10)
  {
    v10 = (v5 >> 2) & 0x3FFFFFFC;
  }

  else
  {
    v10 = 4;
  }

  v11 = heap_Alloc(v9, v10);
  if (v11)
  {
    v12 = v11;
    memset(v11, 170, v10);
    v13 = *(a1 + 2);
    if (v13 >= v5)
    {
      goto LABEL_13;
    }

    v14 = heap_Realloc(*(v8 + 8), a1[4], 4 * v5);
    if (v14)
    {
      a1[4] = v14;
      v15 = heap_Realloc(*(v8 + 8), a1[5], 4 * v5);
      if (v15)
      {
        a1[5] = v15;
        v13 = *(a1 + 2);
        if (!v13)
        {
LABEL_26:
          heap_Free(*(v8 + 8), a1[3]);
          result = 0;
          a1[3] = v12;
          *(a1 + 2) = v5;
          *(a1 + 4) = *(a1 + 3);
          *(a1 + 5) = v6;
          return result;
        }

LABEL_13:
        v16 = 0;
        v17 = a1[3];
        v18 = v5 - 1;
        do
        {
          v19 = *(v17 + 4 * (v16 >> 4));
          if (((v19 >> (2 * (v16 & 0xF))) & 3) == 0)
          {
            v20 = a1[4];
            v21 = a1[5];
            v22 = *(v20 + 4 * v16);
            v23 = *(v21 + 4 * v16);
            *(v17 + 4 * (v16 >> 4)) = v19 | (1 << (2 * (v16 & 0xF)));
            while (1)
            {
              v24 = 9 * ((v22 + ~(v22 << 15)) ^ ((v22 + ~(v22 << 15)) >> 10));
              v25 = (v24 ^ (v24 >> 6)) + ~((v24 ^ (v24 >> 6)) << 11);
              v26 = (v25 ^ HIWORD(v25)) & v18;
              v27 = v26 >> 4;
              v28 = *(v12 + 4 * v27);
              v29 = 2 * (v26 & 0xF);
              v30 = 2 << v29;
              if (((2 << v29) & v28) == 0)
              {
                v31 = 1;
                do
                {
                  v26 = (v26 + v31) & v18;
                  v27 = v26 >> 4;
                  v28 = *(v12 + 4 * v27);
                  v29 = 2 * (v26 & 0xF);
                  v30 = 2 << v29;
                  ++v31;
                }

                while (((2 << v29) & v28) == 0);
              }

              *(v12 + 4 * v27) = v28 & ~v30;
              if (v26 >= *(a1 + 2) || ((*(v17 + 4 * v27) >> v29) & 3) != 0)
              {
                break;
              }

              v32 = *(v20 + 4 * v26);
              *(v20 + 4 * v26) = v22;
              v33 = *(v21 + 4 * v26);
              *(v21 + 4 * v26) = v23;
              *(v17 + 4 * v27) |= 1 << v29;
              v22 = v32;
              v23 = v33;
            }

            *(v20 + 4 * v26) = v22;
            *(v21 + 4 * v26) = v23;
            v13 = *(a1 + 2);
          }

          ++v16;
        }

        while (v16 != v13);
        if (v13 > v5)
        {
          a1[4] = heap_Realloc(*(v8 + 8), a1[4], 4 * v5);
          a1[5] = heap_Realloc(*(v8 + 8), a1[5], 4 * v5);
        }

        goto LABEL_26;
      }
    }

    heap_Free(*(v8 + 8), v12);
  }

  return 0xFFFFFFFFLL;
}

uint64_t kh_put_32(uint64_t a1, int a2, int *a3)
{
  if (*(a1 + 16) >= *(a1 + 20))
  {
    v6 = *(a1 + 8);
    v7 = v6 <= *(a1 + 12) >> 1 ? v6 + 1 : v6 - 1;
    if ((kh_resize_32(a1, v7) & 0x80000000) != 0)
    {
      *a3 = -1;
      return *(a1 + 8);
    }
  }

  v8 = *(a1 + 8);
  v9 = 9 * ((~(a2 << 15) + a2) ^ ((~(a2 << 15) + a2) >> 10));
  v10 = (v9 ^ (v9 >> 6)) + ~((v9 ^ (v9 >> 6)) << 11);
  v11 = (v8 - 1) & (v10 ^ HIWORD(v10));
  v12 = *(a1 + 24);
  if (((*(v12 + 4 * (v11 >> 4)) >> (2 * (v11 & 0xF))) & 2) != 0)
  {
    result = v11;
  }

  else
  {
    v14 = 1;
    v15 = v11;
    LODWORD(result) = *(a1 + 8);
    do
    {
      v16 = *(v12 + 4 * (v15 >> 4)) >> (2 * (v15 & 0xF));
      if ((v16 & 2) != 0 || (v16 & 1) == 0 && *(*(a1 + 32) + 4 * v15) == a2)
      {
        v17 = ((*(v12 + 4 * (v15 >> 4)) >> (2 * (v15 & 0xF))) & 2) == 0;
        goto LABEL_20;
      }

      if (v16)
      {
        result = v15;
      }

      else
      {
        result = result;
      }

      v15 = (v15 + v14++) & (v8 - 1);
    }

    while (v15 != v11);
    if (result != v8)
    {
      goto LABEL_26;
    }

    v17 = 1;
    LODWORD(result) = *(a1 + 8);
    v15 = v11;
LABEL_20:
    if (result == v8 || v17)
    {
      result = v15;
    }

    else
    {
      result = result;
    }
  }

LABEL_26:
  v19 = result >> 4;
  v20 = 2 * (result & 0xF);
  v21 = *(v12 + 4 * (result >> 4)) >> v20;
  if ((v21 & 2) != 0)
  {
    *(*(a1 + 32) + 4 * result) = a2;
    *(v12 + 4 * v19) &= ~(3 << v20);
    *(a1 + 12) = vadd_s32(*(a1 + 12), 0x400000004);
    v22 = 1;
  }

  else
  {
    if ((v21 & 1) == 0)
    {
      *a3 = 0;
      return result;
    }

    *(*(a1 + 32) + 4 * result) = a2;
    *(v12 + 4 * v19) &= ~(3 << v20);
    *(a1 + 12) += 4;
    v22 = 2;
  }

  *a3 = v22;
  return result;
}

_DWORD *xvm_expma(_DWORD *result, unsigned int *a2, int a3, unsigned int a4)
{
  if (a4)
  {
    v6 = result;
    v7 = a4;
    do
    {
      v8 = *a2++;
      v9 = fix16_exp(v8);
      result = fix16_sub(v9, a3);
      *v6++ = result;
      --v7;
    }

    while (v7);
  }

  return result;
}

uint64_t _parse_one_rule(uint64_t a1, char *__s1, uint64_t a3)
{
  v6 = *(a3 + 16) + 16 * *(a3 + 8);
  while (1)
  {
    v7 = *__s1;
    if (v7 != 32)
    {
      break;
    }

    ++__s1;
  }

  if (!*__s1 || v7 == 35)
  {
    return 0;
  }

  v8 = 2585796618;
  v9 = strstr(__s1, ")-->");
  if (v9 && (v10 = v9, strlen(v9) >= 5))
  {
    v11 = strlen(v10 + 4);
    v12 = heap_Calloc(*(a1 + 8), 1, (v11 + 1));
    *(v6 + 8) = v12;
    if (!v12)
    {
      return v8;
    }

    strcpy(v12, v10 + 4);
  }

  else
  {
    wapiti_info(*(a1 + 32), "invalid rule label: %s");
  }

  v13 = strlen(__s1);
  v14 = heap_Calloc(*(a1 + 8), 1, (v13 + 2));
  if (v14)
  {
    v15 = v14;
    v16 = 0;
    v34 = 0;
    *v6 = 0;
    v17 = __s1;
    do
    {
      if (!strstr(v17, ")^") && !strstr(v17, ")-->"))
      {
        break;
      }

      *v6 = ++v16;
      v18 = strstr(v17, ")^");
      v17 = v18 + 2;
    }

    while (v18);
    v19 = *(a3 + 32);
    v20 = *(a3 + 36);
    if (v19 + 4 * v16 <= v20)
    {
LABEL_19:
      *(v6 + 4) = v19;
      while (1)
      {
        v22 = strstr(__s1, ")^");
        if (!v22)
        {
          v22 = strstr(__s1, ")-->");
          if (!v22)
          {
            break;
          }
        }

        *v22 = 0;
        v23 = strchr(__s1, 40);
        if (!v23)
        {
          wapiti_info(*(a1 + 32), "invalid feature id: %s");
          break;
        }

        *v23 = 0;
        v24 = *__s1;
        v25 = v24 == 33;
        if (v24 == 33)
        {
          v26 = __s1 + 1;
        }

        else
        {
          v26 = __s1;
        }

        v27 = strchr(v26, 95);
        if (v27)
        {
          *v27 = 0;
          v28 = atoi(v26);
          v26 += strlen(v26) + 1;
        }

        else
        {
          wapiti_info(*(a1 + 32), "invalid offset: %s");
          v28 = 0;
        }

        v29 = atoi(v26);
        v30 = &v26[strlen(v26) + 1];
        *v15 = 124;
        v31 = strcat(v15, v30);
        *&v15[strlen(v31)] = 124;
        if ((qrk_str2id(a1, *a3, v15, &v34, 0) & 0x80000000) != 0)
        {
          goto LABEL_33;
        }

        v32 = *(a3 + 24);
        *(v32 + 4 * *(a3 + 32)) = v25;
        *(v32 + 4 * (*(a3 + 32) + 1)) = v28;
        *(v32 + 4 * (*(a3 + 32) + 2)) = v29;
        *(v32 + 4 * (*(a3 + 32) + 3)) = v34;
        *(a3 + 32) += 4;
        __s1 = &v30[strlen(v30) + 2];
      }

      ++*(a3 + 8);
LABEL_33:
      heap_Free(*(a1 + 8), v15);
      return 0;
    }

    v21 = heap_Realloc(*(a1 + 8), *(a3 + 24), 4 * (v16 + v20 + 50));
    if (v21)
    {
      v19 = *(a3 + 32);
      *(a3 + 36) += *v6 + 50;
      *(a3 + 24) = v21;
      goto LABEL_19;
    }
  }

  return v8;
}

uint64_t wapiti_rules_load(uint64_t a1, const char *a2, int a3, uint64_t *a4)
{
  wapiti_info(*(a1 + 32), "Load wapiti forcing rules...");
  result = heap_Calloc(*(a1 + 8), 1, 40);
  if (result)
  {
    v9 = result;
    if (!a3)
    {
      goto LABEL_4;
    }

    if (strncmp(a2, "Rule_Number: ", 0xDuLL))
    {
      goto LABEL_4;
    }

    v10 = atoi(a2 + 13);
    v11 = strlen(a2);
    if (!v10)
    {
      goto LABEL_4;
    }

    v12 = v11;
    if ((qrk_new(a1, v9) & 0x80000000) != 0)
    {
      return 0;
    }

    v13 = heap_Calloc(*(a1 + 8), 1, 16 * v10);
    *(v9 + 16) = v13;
    if (!v13)
    {
      return 2585796618;
    }

    result = heap_Calloc(*(a1 + 8), 300, 4);
    *(v9 + 24) = result;
    if (result)
    {
      v14 = &a2[v12 + 1];
      *(v9 + 36) = 300;
      *(v9 + 8) = 0;
      v15 = &a2[a3];
      while (v14 < v15)
      {
        v16 = strlen(v14);
        _parse_one_rule(a1, v14, v9);
        v14 += v16 + 1;
      }

LABEL_4:
      result = 0;
      *a4 = v9;
    }
  }

  return result;
}

uint64_t _apply_one_rule(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, int a5, char *a6)
{
  if (!*a3)
  {
    return *(a3 + 8);
  }

  v10 = 0;
  v22 = a4 + 24;
  for (i = 3; ; i += 4)
  {
    v12 = a2[3];
    v13 = i + *(a3 + 4);
    v14 = *(v12 + 4 * (v13 - 3));
    v15 = *(v12 + 4 * (v13 - 2)) + a5;
    if (v15 < 0 || v15 >= *a4 || (v16 = *(v12 + 4 * (v13 - 1)), v16 >= *(*(a4 + 16) + 4 * v15)))
    {
      v18 = 0;
    }

    else
    {
      v25 = qrk_id2str(a1, *a2, *(v12 + 4 * v13));
      *a6 = 124;
      v17 = strcat(a6, *(*(v22 + 8 * v15) + 8 * v16));
      *&a6[strlen(v17)] = 124;
      v18 = strstr(v25, a6);
    }

    if (!v14 && v18 == 0)
    {
      break;
    }

    if (v14 == 1 && v18 != 0)
    {
      break;
    }

    if (++v10 >= *a3)
    {
      return *(a3 + 8);
    }
  }

  return 0;
}

uint64_t wapiti_rules_apply(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  wapiti_info(*(a1 + 32), "Apply wapiti forcing rules...");
  v6 = *a3;
  if (v6)
  {
    v7 = 0;
    v8 = 0;
    do
    {
      v9 = *(*(a3 + 2) + 4 * v7);
      if (v9)
      {
        v10 = *&a3[2 * v7 + 6];
        do
        {
          v11 = *v10++;
          v12 = strlen(v11);
          if (v8 <= v12)
          {
            v8 = v12;
          }

          --v9;
        }

        while (v9);
      }

      ++v7;
    }

    while (v7 != v6);
    v13 = v8 + 10;
  }

  else
  {
    v13 = 10;
  }

  v14 = 2585796618;
  v15 = heap_Calloc(*(a1 + 8), 1, v13);
  if (v15)
  {
    v16 = v15;
    if (*(a3 + 1) || (v17 = heap_Calloc(*(a1 + 8), 1, 8 * *a3), (*(a3 + 1) = v17) != 0))
    {
      if (*a3)
      {
        v18 = 0;
        LODWORD(v19) = *(a2 + 8);
        while (!v19)
        {
          v22 = *(a3 + 1);
          if (!*(v22 + 8 * v18))
          {
            goto LABEL_26;
          }

LABEL_23:
          if (++v18 >= *a3)
          {
            goto LABEL_27;
          }
        }

        v20 = 0;
        v21 = 1;
        do
        {
          *(*(a3 + 1) + 8 * v18) = _apply_one_rule(a1, a2, *(a2 + 16) + v20, a3, v18, v16);
          v22 = *(a3 + 1);
          v23 = *(v22 + 8 * v18);
          v19 = *(a2 + 8);
          v20 += 16;
        }

        while (v21++ < v19 && v23 == 0);
        if (v23)
        {
          goto LABEL_23;
        }

LABEL_26:
        *(v22 + 8 * v18) = "";
        goto LABEL_23;
      }

LABEL_27:
      heap_Free(*(a1 + 8), v16);
      return 0;
    }
  }

  return v14;
}

uint64_t wapiti_rules_unload(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    wapiti_info(*(a1 + 32), "Unload wapiti forcing rules...");
    if (*(a2 + 8) && *(a2 + 16))
    {
      v4 = 0;
      v5 = 8;
      do
      {
        heap_Free(*(a1 + 8), *(*(a2 + 16) + v5));
        ++v4;
        v5 += 16;
      }

      while (v4 < *(a2 + 8));
      heap_Free(*(a1 + 8), *(a2 + 16));
      heap_Free(*(a1 + 8), *(a2 + 24));
    }

    if (*a2)
    {
      qrk_free(a1);
    }

    heap_Free(*(a1 + 8), a2);
  }

  return 0;
}

uint64_t crf_Init_ReadOnly_ReferenceCnt(_WORD *a1, uint64_t a2, _WORD *a3, uint64_t a4, void *a5, int a6, uint64_t a7, uint64_t a8, __int16 a9, char a10, uint64_t a11)
{
  v25 = 0;
  v26 = 0;
  v23 = 0;
  v24 = 0;
  v21[4] = 0;
  v22 = 0;
  result = InitRsrcFunction(a1, a2, &v26);
  if ((result & 0x80000000) == 0)
  {
    result = InitRsrcFunction(a3, a4, &v25);
    if ((result & 0x80000000) == 0)
    {
      v21[0] = a1;
      v21[1] = a2;
      v21[2] = a3;
      v21[3] = a4;
      __strcpy_chk();
      LODWORD(v22) = a6;
      BYTE6(v22) = a10;
      WORD2(v22) = a9;
      v23 = a11;
      ObjcForThisApi = getObjcForThisApi(v26, v25);
      result = objc_GetAddRefCountedObject(ObjcForThisApi, a7, crf_ObjcLoad, crf_ObjcClose, v21, &v24);
      if ((result & 0x80000000) != 0)
      {
        v20 = 0;
      }

      else
      {
        v20 = *(v24 + 32);
      }

      *a5 = v20;
    }
  }

  return result;
}

uint64_t crf_ObjcLoad(_WORD *a1, uint64_t a2, const char *a3, uint64_t a4, uint64_t a5)
{
  v16 = 0;
  v17 = 0;
  result = InitRsrcFunction(a1, a2, &v16);
  if ((result & 0x80000000) == 0)
  {
    result = InitRsrcFunction(*(a5 + 16), *(a5 + 24), &v17);
    if ((result & 0x80000000) == 0)
    {
      memcpy(__dst, v16, sizeof(__dst));
      *&__dst[32] = *(v17 + 32);
      v11 = *(a5 + 40);
      v12 = *(a5 + 48);
      v13 = *(a5 + 44) | (*(a5 + 46) << 16);
      v19 = 0;
      result = ssftriff_reader_ObjOpen(a1, a2, v11, a3, (a5 + 32), v13, &v19);
      if ((result & 0x80000000) == 0)
      {
        v14 = heap_Calloc(*&__dst[8], 1, 344);
        *(a4 + 32) = v14;
        if (v14)
        {
          result = crf_Init(a1, a2, v19, v14);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          strcpy((*(a4 + 32) + 84), a3);
          if (v12)
          {
            v18 = 1;
            result = v12(__dst, *(a4 + 32), &v18);
            if ((result & 0x80000000) != 0)
            {
              return result;
            }

            *(*(*(a4 + 32) + 24) + 24) = v18;
          }

          return ssftriff_reader_ObjClose(v19);
        }

        else
        {
          return 2585796618;
        }
      }
    }
  }

  return result;
}

uint64_t crf_ObjcClose(_WORD *a1, int a2, uint64_t a3)
{
  v7 = 0;
  result = InitRsrcFunction(a1, a2, &v7);
  if ((result & 0x80000000) == 0)
  {
    v5 = *(a3 + 32);
    if (v5)
    {
      v6 = v7;
      crf_Deinit(v5);
      heap_Free(*(v6 + 8), v5);
    }

    return 0;
  }

  return result;
}

uint64_t crf_Deinit_ReadOnly_DereferenceCnt(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjcForThisApi = getObjcForThisApi(a1, a2);

  return objc_ReleaseObject(ObjcForThisApi, a3 + 84);
}

uint64_t crf_Init(_WORD *a1, int a2, uint64_t a3, uint64_t a4)
{
  __dst[13] = *MEMORY[0x1E69E9840];
  v203 = 0;
  v202 = 0;
  *(a4 + 68) = 0;
  Chunk = ssftriff_reader_FindChunk(a3, "FAST", 2 * (*(a4 + 72) != 0), &v203, &v202);
  if (Chunk < 0)
  {
    LODWORD(v10) = Chunk;
    if ((Chunk & 0x1FFF) == 0xA)
    {
      goto LABEL_9;
    }
  }

  else
  {
    *(a4 + 68) = 1;
    v9 = ssftriff_reader_CloseChunk(a3);
    if ((v9 & 0x80000000) != 0)
    {
      return v9;
    }
  }

  *(a4 + 80) = 0;
  v11 = ssftriff_reader_FindChunk(a3, "QPTR", 2 * (*(a4 + 72) != 0), &v203, &v202);
  if (v11 < 0)
  {
    LODWORD(v10) = v11;
    if ((v11 & 0x1FFF) != 0xA)
    {
      goto LABEL_12;
    }

LABEL_9:
    v12 = ssftriff_reader_CloseChunk(a3);
    if (v12 >= 0)
    {
      return v10;
    }

    else
    {
      return v12;
    }
  }

  *(a4 + 80) = 1;
  v9 = ssftriff_reader_CloseChunk(a3);
  if ((v9 & 0x80000000) != 0)
  {
    return v9;
  }

LABEL_12:
  if (!*(a4 + 68))
  {
    v205 = 0;
    __dst[0] = 0;
    v213 = 0;
    BYTE4(v204) = 0;
    LODWORD(v204) = 0;
    *v211 = 0;
    __s = 0;
    v210 = 0;
    HIDWORD(__n) = 0;
    inited = InitRsrcFunction(a1, a2, &__s);
    if ((inited & 0x80000000) != 0)
    {
      goto LABEL_330;
    }

    wapiti_info(*(__s + 4), "CRF COMP Init...");
    inited = rdr_new(__s, 0, v211);
    if ((inited & 0x80000000) != 0)
    {
      goto LABEL_330;
    }

    inited = mdl_new(*v211, &v210);
    if ((inited & 0x80000000) != 0)
    {
      goto LABEL_330;
    }

    v93 = v210;
    *(v210 + 8) = opt_defaults;
    *(v93 + 24) = unk_1C37BE7A4;
    v94 = ssftriff_reader_OpenChunk(a3, &v204, &v205, __dst);
    v95 = 0;
    if ((v94 & 0x80000000) != 0)
    {
LABEL_186:
      if ((v94 & 0x1FFF) == 0x14)
      {
        v10 = 0;
      }

      else
      {
        v10 = v94;
      }

      wapiti_info(*(__s + 4), "OBS Count from model:%I32u, OBSW count:%d");
      goto LABEL_337;
    }

    v10 = 2585796618;
    while (1)
    {
      v96 = heap_Alloc(*(__s + 1), 100);
      if (!v96)
      {
        goto LABEL_337;
      }

      v97 = v96;
      if (!(v204 ^ 0x5453494C | BYTE4(v204)))
      {
        break;
      }

      if (!(v204 ^ 0x41524150 | BYTE4(v204)))
      {
        v98 = _crf_parse_params(__s, __dst[0], v205, a4);
        if ((v98 & 0x80000000) != 0)
        {
          goto LABEL_335;
        }

        goto LABEL_185;
      }

      if (!(v204 ^ 0x454C5552 | BYTE4(v204)))
      {
        v98 = wapiti_rules_load(__s, __dst[0], v205, (*(v210 + 112) + 56));
        if ((v98 & 0x80000000) != 0)
        {
          goto LABEL_335;
        }

        goto LABEL_185;
      }

      if (!(v204 ^ 0x53525053 | BYTE4(v204)))
      {
        *(v210 + 32) = 1;
        v99 = *(__s + 4);
        v100 = "sparse theta ENABLED";
        goto LABEL_132;
      }

      LODWORD(__n) = 0;
      v200 = &v204;
      v201 = v205;
      wapiti_info(*(__s + 4), "ChunkID:%s, cChunk:%d");
      if (!(v204 ^ 0x5753424F | BYTE4(v204)))
      {
        if (*(v210 + 32))
        {
          v98 = mdl_sync_sparse(v210);
          if ((v98 & 0x80000000) != 0)
          {
            goto LABEL_335;
          }
        }

        else
        {
          v98 = mdl_sync(v210);
          if ((v98 & 0x80000000) != 0)
          {
LABEL_335:
            v10 = v98;
LABEL_337:
            v195 = v210;
            goto LABEL_350;
          }
        }
      }

      *(v97 + 96) = 0;
      *(v97 + 64) = 0u;
      *(v97 + 80) = 0u;
      *(v97 + 32) = 0u;
      *(v97 + 48) = 0u;
      *v97 = 0u;
      *(v97 + 16) = 0u;
      v101 = v205;
      if (v205)
      {
        v102 = 0;
        v103 = 0;
        do
        {
          v208 = 0;
          v213 = 100;
          ssftriff_reader_ReadStringZ(a3, __dst[0], v101, v102, v97, &v213);
          if (v204 ^ 0x45444F4D | BYTE4(v204))
          {
            if (v204 ^ 0x52454452 | BYTE4(v204))
            {
              if (v204 ^ 0x4C4B5251 | BYTE4(v204))
              {
                if (v204 ^ 0x4F4B5251 | BYTE4(v204))
                {
                  if (!(v204 ^ 0x5753424F | BYTE4(v204)))
                  {
                    v207 = 0;
                    if (wapiti_scanf_fmt_pair(v97, "=", &v207 + 1, &v207) != 2)
                    {
                      wapiti_fatal(*(__s + 4), "Bad format of OBSW chunk", v200, v201);
                    }

                    if (*(v210 + 32))
                    {
                      sparray_set(*(v210 + 88), HIDWORD(v207), v207);
                    }

                    else
                    {
                      *(*(v210 + 80) + 4 * HIDWORD(v207)) = v207;
                    }

                    v95 = (v95 + 1);
                  }

                  goto LABEL_184;
                }

                v116 = *(v210 + 112);
                if (wapiti_scanf_fmt_1(v97, "#qrk#", &v208 + 1) != 1)
                {
                  HIDWORD(v207) = 0;
                  v117 = wapiti_ns_readline(__s, v97, &v207 + 1);
                  v118 = __s;
                  v119 = *(v116 + 48);
LABEL_172:
                  v98 = qrk_str2id(v118, v119, (v97 + v117), &__n, HIDWORD(v207));
                  if ((v98 & 0x80000000) != 0)
                  {
                    goto LABEL_335;
                  }

                  goto LABEL_184;
                }

                v108 = *(__s + 4);
                v200 = HIDWORD(v208);
                v109 = "Quark O Size:%d";
              }

              else
              {
                v107 = *(v210 + 112);
                if (wapiti_scanf_fmt_1(v97, "#qrk#", &v208 + 1) != 1)
                {
                  HIDWORD(v207) = 0;
                  v117 = wapiti_ns_readline(__s, v97, &v207 + 1);
                  v118 = __s;
                  v119 = *(v107 + 40);
                  goto LABEL_172;
                }

                v108 = *(__s + 4);
                v200 = HIDWORD(v208);
                v109 = "Quark L Size:%d";
              }

              wapiti_info(v108, v109);
            }

            else
            {
              v104 = *(v210 + 112);
              if (wapiti_scanf_fmt_3(v97, "#rdr#", (v104 + 24), (v104 + 20), (v104 + 8)) == 3)
              {
                *(v104 + 12) = 0;
                *(v104 + 16) = 0;
                v105 = *(v104 + 24);
                if (v105)
                {
                  v106 = heap_Calloc(*(__s + 1), 8, v105);
                  *(v104 + 32) = v106;
                  if (!v106)
                  {
                    goto LABEL_337;
                  }
                }

                v103 = 0;
              }

              else if (*(v104 + 24))
              {
                v110 = v95;
                HIDWORD(v207) = 0;
                v111 = wapiti_ns_readline(__s, v97, &v207 + 1);
                v112 = heap_Alloc(*(__s + 1), (HIDWORD(v207) + 1));
                if (!v112)
                {
                  goto LABEL_337;
                }

                v113 = v112;
                v114 = strncpy(v112, (v97 + v111), HIDWORD(v207));
                v114[HIDWORD(v207)] = 0;
                v98 = pat_comp(__s, v113, (*(v104 + 32) + 8 * v103));
                if ((v98 & 0x80000000) != 0)
                {
                  goto LABEL_335;
                }

                v115 = __tolower(*v113);
                if (v115 == 42)
                {
                  *(v104 + 12) = vadd_s32(*(v104 + 12), 0x100000001);
                  v95 = v110;
                }

                else
                {
                  v95 = v110;
                  if (v115 == 98)
                  {
                    ++*(v104 + 16);
                  }

                  else if (v115 == 117)
                  {
                    ++*(v104 + 12);
                  }
                }

                ++v103;
              }

              v120 = *(v104 + 24);
              if (v103 == v120)
              {
                v121 = 0;
              }

              else
              {
                v121 = v103;
              }

              if (v120)
              {
                v103 = v121;
              }
            }
          }

          else if (wapiti_scanf_fmt_2(v97, "#mdl#", &v208, &__n + 1) == 2)
          {
            *(v210 + 40) = v208;
          }

          else
          {
            if (wapiti_scanf_fmt_1(v97, "#mdl#", &__n + 1) != 1)
            {
              wapiti_fatal(*(__s + 4), "crf riff data error, mode chunk format error", v200, v201);
              v10 = 2585796626;
              goto LABEL_337;
            }

            *(v210 + 40) = 0;
          }

LABEL_184:
          v102 += v213;
          *v97 = 0u;
          *(v97 + 16) = 0u;
          *(v97 + 32) = 0u;
          *(v97 + 48) = 0u;
          *(v97 + 64) = 0u;
          *(v97 + 80) = 0u;
          *(v97 + 96) = 0;
          v101 = v205;
        }

        while (v102 < v205);
      }

LABEL_185:
      heap_Free(*(__s + 1), v97);
      ssftriff_reader_CloseChunk(a3);
      v94 = ssftriff_reader_OpenChunk(a3, &v204, &v205, __dst);
      if ((v94 & 0x80000000) != 0)
      {
        goto LABEL_186;
      }
    }

    v99 = *(__s + 4);
    v100 = "ChunkID:%s, cChunk:%d, pChunk:%s";
LABEL_132:
    wapiti_info(v99, v100);
    goto LABEL_185;
  }

  if (!*(a4 + 80))
  {
    v213 = 0;
    *v211 = 0;
    __s = 0;
    __n = 0;
    v210 = 0;
    v206 = 0;
    v205 = 0;
    v204 = 0;
    inited = InitRsrcFunction(a1, a2, v211);
    if ((inited & 0x80000000) == 0)
    {
      inited = rdr_new(*v211, 0, &v210);
      if ((inited & 0x80000000) == 0)
      {
        inited = mdl_new(v210, &v204);
        if ((inited & 0x80000000) == 0)
        {
          v122 = v204;
          *(v204 + 8) = opt_defaults;
          *(v122 + 24) = unk_1C37BE7A4;
          while (1)
          {
            v15 = ssftriff_reader_OpenChunk(a3, &v205, &v213, &__s);
            if ((v15 & 0x80000000) != 0)
            {
LABEL_332:
              if ((v15 & 0x1FFF) == 0x14)
              {
                v10 = 0;
              }

              else
              {
                v10 = v15;
              }

              goto LABEL_349;
            }

            if (!(v205 ^ 0x41524150 | v206))
            {
              StringZ = _crf_parse_params(*v211, __s, v213, a4);
              if ((StringZ & 0x80000000) != 0)
              {
                goto LABEL_348;
              }

              goto LABEL_221;
            }

            if (!(v205 ^ 0x454C5552 | v206))
            {
              StringZ = wapiti_rules_load(*v211, __s, v213, (*(v204 + 112) + 56));
              if ((StringZ & 0x80000000) != 0)
              {
                goto LABEL_348;
              }

              goto LABEL_221;
            }

            if (!(v205 ^ 0x53525053 | v206))
            {
              break;
            }

            if (!(v205 ^ 0x52545051 | v206))
            {
              *(v204 + 36) = 1;
              v127 = *(*v211 + 32);
              v128 = "QP-Tree ENABLED";
              goto LABEL_220;
            }

            if (!(v205 ^ 0x45444F4D | v206))
            {
              if (v213)
              {
                *(v204 + 40) = *__s;
              }

              goto LABEL_221;
            }

            if (v205 ^ 0x52454452 | v206)
            {
              if (v205 ^ 0x4C4B5251 | v206)
              {
                if (!(v205 ^ 0x4C59454B | v206) || !(v205 ^ 0x4C46454C | v206))
                {
                  LODWORD(__n) = 0;
                  if (v205 == 76)
                  {
                    v141 = *__s;
                    LODWORD(__n) = *__s;
                  }

                  else if (v205 == 75 && (v140 = v213, v213))
                  {
                    v141 = 0;
                    v142 = __s;
                    do
                    {
                      if (!*v142++)
                      {
                        LODWORD(__n) = ++v141;
                      }

                      --v140;
                    }

                    while (v140);
                  }

                  else
                  {
                    v141 = 0;
                  }

                  v10 = 2585796618;
                  v155 = heap_Realloc(*(*v211 + 8), *(*(v210 + 40) + 8), 8 * v141);
                  if (!v155)
                  {
                    goto LABEL_349;
                  }

                  v156 = v155;
                  v157 = __n;
                  *(*(v210 + 40) + 24) = __n;
                  v158 = heap_Calloc(*(*v211 + 8), v157, 16);
                  if (!v158)
                  {
                    goto LABEL_342;
                  }

                  v159 = v158;
                  v160 = ssftriff_reader_DetachChunkData(a3, a4, &__s);
                  if ((v160 & 0x80001FFF) == 0x8000000A)
                  {
                    v10 = v160;
LABEL_342:
                    v198 = *(v210 + 40);
LABEL_343:
                    *(v198 + 8) = v156;
                    goto LABEL_349;
                  }

                  if (v205 == 75)
                  {
                    v164 = __n;
                    if (__n)
                    {
                      v165 = 0;
                      v166 = __s;
                      do
                      {
                        *v159 = v165;
                        *(v159 + 8) = v166;
                        *(v156 + 8 * v165) = v159;
                        v166 += strlen(v166) + 1;
                        ++v165;
                        v164 = __n;
                        v159 += 16;
                      }

                      while (v165 < __n);
                    }
                  }

                  else if (v205 == 76)
                  {
                    if (__n)
                    {
                      v161 = 0;
                      v162 = __s + 4;
                      v163 = &__s[__n + 4];
                      do
                      {
                        *v159 = v161;
                        *(v159 + 8) = v163;
                        *(v156 + 8 * v161) = v159;
                        v163 += v162[v161++] + 1;
                        v159 += 16;
                      }

                      while (v161 < __n);
                      v164 = __n;
                    }

                    else
                    {
                      v164 = 0;
                    }
                  }

                  else
                  {
                    v164 = __n;
                  }

                  v182 = *(v210 + 40);
                  goto LABEL_300;
                }

                if (v205 ^ 0x4F4B5251 | v206)
                {
                  if (!(v205 ^ 0x4F59454B | v206) || !(v205 ^ 0x4F46454C | v206))
                  {
                    LODWORD(__n) = 0;
                    if (v205 == 76)
                    {
                      v168 = *__s;
                      LODWORD(__n) = *__s;
                    }

                    else if (v205 == 75 && (v167 = v213, v213))
                    {
                      v168 = 0;
                      v169 = __s;
                      do
                      {
                        if (!*v169++)
                        {
                          LODWORD(__n) = ++v168;
                        }

                        --v167;
                      }

                      while (v167);
                    }

                    else
                    {
                      v168 = 0;
                    }

                    v10 = 2585796618;
                    v183 = heap_Realloc(*(*v211 + 8), *(*(v210 + 48) + 8), 8 * v168);
                    if (!v183)
                    {
                      goto LABEL_349;
                    }

                    v156 = v183;
                    v184 = __n;
                    *(*(v210 + 48) + 24) = __n;
                    v185 = heap_Calloc(*(*v211 + 8), v184, 16);
                    if (!v185)
                    {
                      goto LABEL_355;
                    }

                    v186 = v185;
                    v187 = ssftriff_reader_DetachChunkData(a3, (a4 + 8), &__s);
                    if ((v187 & 0x80001FFF) == 0x8000000A)
                    {
                      v10 = v187;
LABEL_355:
                      v198 = *(v210 + 48);
                      goto LABEL_343;
                    }

                    if (v205 == 75)
                    {
                      v164 = __n;
                      if (__n)
                      {
                        v191 = 0;
                        v192 = __s;
                        do
                        {
                          *v186 = v191;
                          *(v186 + 8) = v192;
                          *(v156 + 8 * v191) = v186;
                          v192 += strlen(v192) + 1;
                          ++v191;
                          v164 = __n;
                          v186 += 16;
                        }

                        while (v191 < __n);
                      }
                    }

                    else if (v205 == 76)
                    {
                      if (__n)
                      {
                        v188 = 0;
                        v189 = __s + 4;
                        v190 = &__s[__n + 4];
                        do
                        {
                          *v186 = v188;
                          *(v186 + 8) = v190;
                          *(v156 + 8 * v188) = v186;
                          v190 += v189[v188++] + 1;
                          v186 += 16;
                        }

                        while (v188 < __n);
                        v164 = __n;
                      }

                      else
                      {
                        v164 = 0;
                      }
                    }

                    else
                    {
                      v164 = __n;
                    }

                    v182 = *(v210 + 48);
LABEL_300:
                    *(v182 + 8) = v156;
                    *(v182 + 20) = v164;
                    goto LABEL_221;
                  }

                  if (v205 ^ 0x5753424F | v206)
                  {
                    if (!(v205 ^ 0x4657424F | v206))
                    {
                      *(a4 + 76) = 1;
                      StringZ = mdl_sync_sparse(v204);
                      if ((StringZ & 0x80000000) != 0)
                      {
                        goto LABEL_348;
                      }

                      StringZ = ssftriff_reader_DetachChunkData(a3, (a4 + 16), &__s);
                      if ((StringZ & 0x80001FFF) == 0x8000000A)
                      {
                        goto LABEL_348;
                      }

                      v123 = __s;
                      v124 = *__s;
                      v125 = *(v204 + 88);
                      *(v125 + 8) = *__s;
                      *(v125 + 12) = *(v123 + 1);
                      *(v125 + 16) = *(v123 + 2);
                      *(v125 + 20) = *(v123 + 3);
                      v126 = (v124 >> 4) + 4;
                      if (v124 < 0x10)
                      {
                        v126 = 5;
                      }

                      *(v125 + 24) = v123 + 16;
                      *(v125 + 32) = &v123[4 * v126];
                      *(v125 + 40) = &v123[4 * v126 + 4 * v124];
                    }
                  }

                  else
                  {
                    if (*(v204 + 32))
                    {
                      StringZ = mdl_sync_sparse(v204);
                      if ((StringZ & 0x80000000) != 0)
                      {
                        goto LABEL_348;
                      }
                    }

                    else
                    {
                      StringZ = mdl_sync(v204);
                      if ((StringZ & 0x80000000) != 0)
                      {
                        goto LABEL_348;
                      }
                    }

                    LODWORD(__n) = v213 >> 2;
                    if (v213 >= 4)
                    {
                      v193 = 0;
                      v194 = __s;
                      do
                      {
                        if (*(v204 + 32))
                        {
                          sparray_set(*(v204 + 88), *&v194[4 * v193], *&v194[4 * v193 + 4]);
                        }

                        else
                        {
                          *(*(v204 + 80) + 4 * *&v194[4 * v193]) = *&v194[4 * v193 + 4];
                        }

                        v193 += 2;
                      }

                      while (v193 < __n);
                    }
                  }
                }

                else
                {
                  LODWORD(__n) = v213 >> 4;
                  v171 = heap_Alloc(*(*v211 + 8), 24 * (v213 >> 4));
                  if (!v171)
                  {
LABEL_340:
                    v10 = 2585796618;
                    goto LABEL_349;
                  }

                  **(v210 + 48) = v171;
                  v172 = **(v210 + 48);
                  v173 = __n;
                  LODWORD(__n) = v213 >> 2;
                  if (v213 >= 4)
                  {
                    v174 = 0;
                    v175 = v172 + 24 * v173;
                    v176 = __s;
                    v177 = v175 - 8;
                    do
                    {
                      v178 = *&v176[4 * v174];
                      if ((v178 & 0x80000000) != 0)
                      {
                        v179 = v175 + 24 * v178;
                      }

                      else
                      {
                        v179 = *(*(*(v210 + 48) + 8) + 8 * v178) | 1;
                      }

                      *(v177 - 16) = v179;
                      v180 = *&v176[4 * v174 + 4];
                      if ((v180 & 0x80000000) != 0)
                      {
                        v181 = v175 + 24 * v180;
                      }

                      else
                      {
                        v181 = *(*(*(v210 + 48) + 8) + 8 * v180) | 1;
                      }

                      *(v177 - 8) = v181;
                      *v177 = *&v176[4 * v174 + 8];
                      *(v177 + 4) = *&v176[4 * v174 + 12];
                      v174 += 4;
                      v177 -= 24;
                    }

                    while (v174 < __n);
                  }
                }
              }

              else
              {
                LODWORD(__n) = v213 >> 4;
                v144 = heap_Alloc(*(*v211 + 8), 24 * (v213 >> 4));
                if (!v144)
                {
                  goto LABEL_340;
                }

                **(v210 + 40) = v144;
                v145 = **(v210 + 40);
                v146 = __n;
                LODWORD(__n) = v213 >> 2;
                if (v213 >= 4)
                {
                  v147 = 0;
                  v148 = v145 + 24 * v146;
                  v149 = __s;
                  v150 = v148 - 8;
                  do
                  {
                    v151 = *&v149[4 * v147];
                    if ((v151 & 0x80000000) != 0)
                    {
                      v152 = v148 + 24 * v151;
                    }

                    else
                    {
                      v152 = *(*(*(v210 + 40) + 8) + 8 * v151) | 1;
                    }

                    *(v150 - 16) = v152;
                    v153 = *&v149[4 * v147 + 4];
                    if ((v153 & 0x80000000) != 0)
                    {
                      v154 = v148 + 24 * v153;
                    }

                    else
                    {
                      v154 = *(*(*(v210 + 40) + 8) + 8 * v153) | 1;
                    }

                    *(v150 - 8) = v154;
                    *v150 = *&v149[4 * v147 + 8];
                    *(v150 + 4) = *&v149[4 * v147 + 12];
                    v147 += 4;
                    v150 -= 24;
                  }

                  while (v147 < __n);
                }
              }
            }

            else
            {
              v129 = v213;
              if (v213)
              {
                v10 = 2585796618;
                v130 = __s;
                v131 = *(v204 + 112);
                v210 = v131;
                v132 = *__s;
                *(v131 + 24) = v132;
                *(v131 + 20) = *(v130 + 1);
                *(v131 + 8) = *(v130 + 2);
                *(v131 + 16) = 0;
                if (v132)
                {
                  v133 = heap_Calloc(*(*v211 + 8), v132, 8);
                  *(v210 + 32) = v133;
                  if (!v133)
                  {
                    goto LABEL_349;
                  }

                  v129 = v213;
                }

                if (v129 >= 0xD)
                {
                  v134 = 0;
                  v135 = 12;
                  do
                  {
                    HIDWORD(__n) = 100;
                    StringZ = ssftriff_reader_ReadStringZ(a3, __s, v129, v135, __dst, &__n + 1);
                    if ((StringZ & 0x80000000) != 0)
                    {
                      goto LABEL_348;
                    }

                    if (*(v210 + 24))
                    {
                      v136 = wapiti_ns_readline(*v211, __dst, &__n);
                      v137 = heap_Alloc(*(*v211 + 8), (__n + 1));
                      if (!v137)
                      {
                        goto LABEL_349;
                      }

                      v138 = v137;
                      *v137 = 0;
                      strncat(v137, __dst + v136, __n);
                      StringZ = pat_comp(*v211, v138, (*(v210 + 32) + 8 * v134));
                      if ((StringZ & 0x80000000) != 0)
                      {
                        goto LABEL_348;
                      }

                      v139 = __tolower(*v138);
                      switch(v139)
                      {
                        case '*':
                          *(v210 + 12) = vadd_s32(*(v210 + 12), 0x100000001);
                          break;
                        case 'b':
                          ++*(v210 + 16);
                          break;
                        case 'u':
                          ++*(v210 + 12);
                          break;
                      }

                      ++v134;
                    }

                    v135 += HIDWORD(__n);
                    v129 = v213;
                  }

                  while (v135 < v213);
                }
              }
            }

LABEL_221:
            StringZ = ssftriff_reader_CloseChunk(a3);
            if ((StringZ & 0x80000000) != 0)
            {
              goto LABEL_348;
            }
          }

          *(v204 + 32) = 1;
          v127 = *(*v211 + 32);
          v128 = "sparse theta ENABLED";
LABEL_220:
          wapiti_info(v127, v128);
          goto LABEL_221;
        }
      }
    }

LABEL_330:
    v10 = inited;
    if ((inited & 0x80000000) != 0)
    {
      goto LABEL_351;
    }

    return v10;
  }

  v213 = 0;
  *v211 = 0;
  __s = 0;
  __n = 0;
  v210 = 0;
  v206 = 0;
  v205 = 0;
  v204 = 0;
  inited = InitRsrcFunction(a1, a2, v211);
  if ((inited & 0x80000000) != 0)
  {
    goto LABEL_330;
  }

  inited = rdr_new_qp(*v211, 0, &v210);
  if ((inited & 0x80000000) != 0)
  {
    goto LABEL_330;
  }

  inited = mdl_new(v210, &v204);
  if ((inited & 0x80000000) != 0)
  {
    goto LABEL_330;
  }

  v14 = v204;
  *(v204 + 24) = unk_1C37BE7A4;
  v10 = 2585796618;
  *(v14 + 8) = opt_defaults;
  *(v14 + 36) = 1;
  while (1)
  {
    v15 = ssftriff_reader_OpenChunk(a3, &v205, &v213, &__s);
    if ((v15 & 0x80000000) != 0)
    {
      goto LABEL_332;
    }

    if (!(v205 ^ 0x41524150 | v206))
    {
      StringZ = _crf_parse_params(*v211, __s, v213, a4);
      if ((StringZ & 0x80000000) != 0)
      {
        goto LABEL_348;
      }

      goto LABEL_107;
    }

    if (!(v205 ^ 0x454C5552 | v206))
    {
      StringZ = wapiti_rules_load(*v211, __s, v213, (*(v204 + 112) + 56));
      if ((StringZ & 0x80000000) != 0)
      {
        goto LABEL_348;
      }

      goto LABEL_107;
    }

    if (!(v205 ^ 0x53525053 | v206))
    {
      *(v204 + 32) = 1;
      wapiti_info(*(*v211 + 32), "sparse theta ENABLED");
      goto LABEL_107;
    }

    if (!(v205 ^ 0x45444F4D | v206))
    {
      if (v213)
      {
        *(v204 + 40) = *__s;
      }

      goto LABEL_107;
    }

    if (!(v205 ^ 0x52454452 | v206))
    {
      break;
    }

    if (v205 ^ 0x4C4B5251 | v206)
    {
      if (!(v205 ^ 0x4C46454C | v206))
      {
        v50 = *(__s + 1);
        LODWORD(__n) = *__s;
        v51 = __n;
        v52 = *(v210 + 40);
        *(v52 + 28) = v50;
        v53 = heap_Realloc(*(*v211 + 8), *(v52 + 8), 8 * v51);
        if (!v53)
        {
          goto LABEL_349;
        }

        v54 = v53;
        v55 = __n;
        *(*(v210 + 40) + 24) = __n;
        v56 = heap_Calloc(*(*v211 + 8), v55, 16);
        if (!v56)
        {
          v196 = *(v210 + 40);
LABEL_345:
          *(v196 + 8) = v54;
          goto LABEL_349;
        }

        v57 = v56;
        StringZ = ssftriff_reader_DetachChunkData(a3, a4, &__s);
        if ((StringZ & 0x80001FFF) == 0x8000000A)
        {
          v197 = *(v210 + 40);
LABEL_347:
          *(v197 + 8) = v54;
          goto LABEL_348;
        }

        if (__n)
        {
          v58 = 0;
          v59 = __s + 8;
          v60 = &__s[__n + 8];
          do
          {
            *v57 = v58;
            *(v57 + 8) = v60;
            *(v54 + 8 * v58) = v57;
            v60 += v59[v58++] + 1;
            v61 = __n;
            v57 += 16;
          }

          while (v58 < __n);
        }

        else
        {
          v61 = 0;
        }

        v90 = *(v210 + 40);
        goto LABEL_106;
      }

      if (v205 ^ 0x4F4B5251 | v206)
      {
        if (!(v205 ^ 0x4F46454C | v206))
        {
          v80 = *(__s + 1);
          LODWORD(__n) = *__s;
          v81 = __n;
          v82 = *(v210 + 48);
          *(v82 + 28) = v80;
          v83 = heap_Realloc(*(*v211 + 8), *(v82 + 8), 8 * v81);
          if (!v83)
          {
            goto LABEL_349;
          }

          v54 = v83;
          v84 = __n;
          *(*(v210 + 48) + 24) = __n;
          v85 = heap_Calloc(*(*v211 + 8), v84, 16);
          if (!v85)
          {
            v196 = *(v210 + 48);
            goto LABEL_345;
          }

          v86 = v85;
          StringZ = ssftriff_reader_DetachChunkData(a3, (a4 + 8), &__s);
          if ((StringZ & 0x80001FFF) == 0x8000000A)
          {
            v197 = *(v210 + 48);
            goto LABEL_347;
          }

          if (__n)
          {
            v87 = 0;
            v88 = __s + 8;
            v89 = &__s[__n + 8];
            do
            {
              *v86 = v87;
              *(v86 + 8) = v89;
              *(v54 + 8 * v87) = v86;
              v89 += v88[v87++] + 1;
              v61 = __n;
              v86 += 16;
            }

            while (v87 < __n);
          }

          else
          {
            v61 = 0;
          }

          v90 = *(v210 + 48);
LABEL_106:
          *(v90 + 8) = v54;
          *(v90 + 20) = v61;
          goto LABEL_107;
        }

        if (v205 ^ 0x5753424F | v206)
        {
          if (!(v205 ^ 0x4657424F | v206))
          {
            *(a4 + 76) = 1;
            StringZ = mdl_sync_sparse(v204);
            if ((StringZ & 0x80000000) != 0)
            {
              goto LABEL_348;
            }

            StringZ = ssftriff_reader_DetachChunkData(a3, (a4 + 16), &__s);
            if ((StringZ & 0x80001FFF) == 0x8000000A)
            {
              goto LABEL_348;
            }

            v17 = __s;
            v18 = *__s;
            v19 = *(v204 + 88);
            *(v19 + 8) = *__s;
            *(v19 + 12) = *(v17 + 1);
            *(v19 + 16) = *(v17 + 2);
            *(v19 + 20) = *(v17 + 3);
            v20 = (v18 >> 4) + 4;
            if (v18 < 0x10)
            {
              v20 = 5;
            }

            *(v19 + 24) = v17 + 16;
            *(v19 + 32) = &v17[4 * v20];
            *(v19 + 40) = &v17[4 * v20 + 4 * v18];
          }
        }

        else
        {
          if (*(v204 + 32))
          {
            StringZ = mdl_sync_sparse(v204);
            if ((StringZ & 0x80000000) != 0)
            {
              goto LABEL_348;
            }
          }

          else
          {
            StringZ = mdl_sync(v204);
            if ((StringZ & 0x80000000) != 0)
            {
              goto LABEL_348;
            }
          }

          LODWORD(__n) = v213 >> 2;
          if (v213 >= 4)
          {
            v91 = 0;
            v92 = __s;
            do
            {
              if (*(v204 + 32))
              {
                sparray_set(*(v204 + 88), *&v92[4 * v91], *&v92[4 * v91 + 4]);
              }

              else
              {
                *(*(v204 + 80) + 4 * *&v92[4 * v91]) = *&v92[4 * v91 + 4];
              }

              v91 += 2;
            }

            while (v91 < __n);
          }
        }
      }

      else
      {
        v62 = *(*(v210 + 48) + 28);
        v63 = heap_Calloc(*(*v211 + 8), v62, 16);
        if (!v63)
        {
          goto LABEL_349;
        }

        **(v210 + 48) = v63;
        v64 = **(v210 + 48);
        v65 = (v213 >> 2) - 2 * v62;
        v66 = heap_Calloc(*(*v211 + 8), v65, 8);
        if (!v66)
        {
          goto LABEL_349;
        }

        ***(v210 + 48) = v66;
        v67 = ***(v210 + 48);
        LODWORD(__n) = v213 >> 2;
        if (v213 >= 4)
        {
          v68 = 0;
          v69 = (v64 + 16 * v62);
          v70 = __s;
          v71 = v67 + 8 * v65;
          v72 = v69;
          do
          {
            v73 = *&v70[4 * v68];
            *(v72 - 2) = v73;
            *(v72 - 1) = *&v70[4 * (v68 + 1)];
            v74 = popcount(v73);
            v71 -= 8 * v74;
            *(v72 - 2) = v71;
            v72 -= 2;
            v75 = v68 + 2;
            if (v74)
            {
              v76 = 0;
              v77 = v68 + 2;
              do
              {
                v78 = *&v70[4 * v77];
                if ((v78 & 0x80000000) != 0)
                {
                  v79 = &v69[2 * v78];
                }

                else
                {
                  v79 = *(*(*(v210 + 48) + 8) + 8 * v78) | 1;
                }

                *(*v72 + v76) = v79;
                v76 += 8;
                ++v77;
              }

              while (8 * v74 != v76);
            }

            v68 = v74 + v75;
          }

          while (v74 + v75 < __n);
        }
      }
    }

    else
    {
      v32 = *(*(v210 + 40) + 28);
      v33 = heap_Calloc(*(*v211 + 8), v32, 16);
      if (!v33)
      {
        goto LABEL_349;
      }

      **(v210 + 40) = v33;
      v34 = **(v210 + 40);
      v35 = (v213 >> 2) - 2 * v32;
      v36 = heap_Calloc(*(*v211 + 8), v35, 8);
      if (!v36)
      {
        goto LABEL_349;
      }

      ***(v210 + 40) = v36;
      v37 = ***(v210 + 40);
      LODWORD(__n) = v213 >> 2;
      if (v213 >= 4)
      {
        v38 = 0;
        v39 = (v34 + 16 * v32);
        v40 = __s;
        v41 = v37 + 8 * v35;
        v42 = v39;
        do
        {
          v43 = *&v40[4 * v38];
          *(v42 - 2) = v43;
          *(v42 - 1) = *&v40[4 * (v38 + 1)];
          v44 = popcount(v43);
          v41 -= 8 * v44;
          *(v42 - 2) = v41;
          v42 -= 2;
          v45 = v38 + 2;
          if (v44)
          {
            v46 = 0;
            v47 = v38 + 2;
            do
            {
              v48 = *&v40[4 * v47];
              if ((v48 & 0x80000000) != 0)
              {
                v49 = &v39[2 * v48];
              }

              else
              {
                v49 = *(*(*(v210 + 40) + 8) + 8 * v48) | 1;
              }

              *(*v42 + v46) = v49;
              v46 += 8;
              ++v47;
            }

            while (8 * v44 != v46);
          }

          v38 = v44 + v45;
        }

        while (v44 + v45 < __n);
      }
    }

LABEL_107:
    StringZ = ssftriff_reader_CloseChunk(a3);
    if ((StringZ & 0x80000000) != 0)
    {
      goto LABEL_348;
    }
  }

  v21 = v213;
  if (!v213)
  {
    goto LABEL_107;
  }

  v22 = __s;
  v23 = *(v204 + 112);
  v210 = v23;
  v24 = *__s;
  *(v23 + 24) = v24;
  *(v23 + 20) = *(v22 + 1);
  *(v23 + 8) = *(v22 + 2);
  *(v23 + 16) = 0;
  if (v24)
  {
    v25 = heap_Calloc(*(*v211 + 8), v24, 8);
    *(v210 + 32) = v25;
    if (!v25)
    {
      goto LABEL_349;
    }

    v21 = v213;
  }

  if (v21 < 0xD)
  {
    goto LABEL_107;
  }

  v26 = 0;
  v27 = 12;
  while (1)
  {
    HIDWORD(__n) = 100;
    StringZ = ssftriff_reader_ReadStringZ(a3, __s, v21, v27, __dst, &__n + 1);
    if ((StringZ & 0x80000000) != 0)
    {
      break;
    }

    if (*(v210 + 24))
    {
      v28 = wapiti_ns_readline(*v211, __dst, &__n);
      v29 = heap_Alloc(*(*v211 + 8), (__n + 1));
      if (!v29)
      {
        goto LABEL_349;
      }

      v30 = v29;
      *v29 = 0;
      strncat(v29, __dst + v28, __n);
      StringZ = pat_comp(*v211, v30, (*(v210 + 32) + 8 * v26));
      if ((StringZ & 0x80000000) != 0)
      {
        break;
      }

      v31 = __tolower(*v30);
      switch(v31)
      {
        case '*':
          *(v210 + 12) = vadd_s32(*(v210 + 12), 0x100000001);
          break;
        case 'b':
          ++*(v210 + 16);
          break;
        case 'u':
          ++*(v210 + 12);
          break;
      }

      ++v26;
    }

    v27 += HIDWORD(__n);
    v21 = v213;
    if (v27 >= v213)
    {
      goto LABEL_107;
    }
  }

LABEL_348:
  v10 = StringZ;
LABEL_349:
  v195 = v204;
LABEL_350:
  *(a4 + 24) = v195;
  if ((v10 & 0x80000000) != 0)
  {
LABEL_351:
    crf_Deinit(a4);
    v9 = ssftriff_reader_CloseChunk(a3);
    if ((v9 & 0x80000000) != 0)
    {
      return v9;
    }
  }

  return v10;
}

uint64_t crf_Deinit(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      v3 = *v2;
      if (*(a1 + 68))
      {
        ssftriff_reader_ReleaseChunkData(*a1);
        ssftriff_reader_ReleaseChunkData(*(a1 + 8));
      }

      if (*(a1 + 76))
      {
        ssftriff_reader_ReleaseChunkData(*(a1 + 16));
      }

      if (*(a1 + 80))
      {
        mdl_free_qp(v2, *(a1 + 76));
      }

      else
      {
        mdl_free(v2, *(a1 + 68), *(a1 + 76));
      }

      *(a1 + 24) = 0;
      v4 = *(a1 + 32);
      if (v4)
      {
        heap_Free(*(v3 + 8), v4);
        *(a1 + 32) = 0;
      }

      v5 = *(a1 + 48);
      if (v5)
      {
        heap_Free(*(v3 + 8), v5);
        *(a1 + 48) = 0;
      }

      v6 = *(a1 + 56);
      if (v6)
      {
        heap_Free(*(v3 + 8), v6);
        *(a1 + 56) = 0;
      }
    }
  }

  return 0;
}

uint64_t crf_Process_Constrained(uint64_t a1, void *a2, unsigned int a3, uint64_t *a4, _DWORD *a5, uint64_t a6, uint64_t a7)
{
  v7 = *(a1 + 24);
  if (*(v7 + 32))
  {
    return tag_label_sparse(v7, a2, a3, a4, a5, a6, a7);
  }

  else
  {
    return tag_label(v7, a2, a3, a4, a5, a6, a7);
  }
}

uint64_t _crf_parse_params(uint64_t a1, const void *a2, unsigned int a3, uint64_t a4)
{
  v8 = 2585796618;
  v9 = (a4 + 48);
  v10 = a3;
  v11 = heap_Realloc(*(a1 + 8), *(a4 + 48), a3);
  if (v11)
  {
    v12 = v11;
    memcpy(v11, a2, v10);
    v12[a3 - 1] = 0;
    *(a4 + 48) = v12;
    v13 = &v12[v10];
    *(a4 + 40) = 0;
    if (a3)
    {
      v14 = 0;
      v15 = v12;
      do
      {
        if (!*v15)
        {
          *(a4 + 40) = ++v14;
        }

        ++v15;
      }

      while (v15 < v13);
      v16 = (v14 + 1) >> 1;
    }

    else
    {
      v16 = 0;
    }

    *(a4 + 40) = v16;
    v17 = heap_Realloc(*(a1 + 8), *(a4 + 32), 16 * v16);
    if (!v17)
    {
      *(a4 + 40) = 0;
      heap_Free(*(a1 + 8), *(a4 + 48));
LABEL_19:
      *v9 = 0;
      return v8;
    }

    v8 = 0;
    *(a4 + 32) = v17;
    v18 = *(a4 + 40);
    if (v18 && a3)
    {
      v9 = (v17 + 8);
      v19 = 1;
      while (1)
      {
        *(v9 - 1) = v12;
        v20 = &v12[strlen(v12) + 1];
        if (v20 >= v13)
        {
          break;
        }

        *v9 = v20;
        v9 += 2;
        v21 = strlen(v20);
        v8 = 0;
        if (v19 < v18)
        {
          v12 = &v20[v21 + 1];
          ++v19;
          if (v12 < v13)
          {
            continue;
          }
        }

        return v8;
      }

      v8 = 0;
      goto LABEL_19;
    }
  }

  return v8;
}

char *hlp_NLUStrAddI(char *__s, char *a2)
{
  if (*__s)
  {
    *&__s[strlen(__s)] = 59;
  }

  v4 = strlen(__s);
  v5 = hlp_NLUStrLength(a2);
  result = strncat(&__s[v4], a2, v5);
  __s[v4] = 73;
  return result;
}

char *hlp_NLUStrLength(char *a1)
{
  result = strchr(a1, 59);
  if (result)
  {
    LOWORD(result) = result - a1;
  }

  else
  {
    LOWORD(result) = strlen(a1);
  }

  return result;
}

char *hlp_NLUStrSearchI(char *a1, uint64_t a2)
{
  v4 = hlp_NLUStrLength(a2);
  if (!a1)
  {
    return 0;
  }

  v5 = v4;
  v6 = v4 - 1;
  while (v5 != hlp_NLUStrLength(a1) || strncmp((a2 + 1), a1 + 1, v6))
  {
    result = strchr(a1, 59);
    a1 = result + 1;
    if (!result)
    {
      return result;
    }
  }

  return 1;
}

char *hlp_NLUStrNext(char *a1)
{
  v1 = strchr(a1, 59);
  if (v1)
  {
    return v1 + 1;
  }

  else
  {
    return 0;
  }
}

char *hlp_NLUStrRemoveI(char *a1, uint64_t a2)
{
  result = hlp_NLUStrLength(a2);
  if (a1)
  {
    v5 = result;
    v6 = result - 1;
    v7 = a1;
    while (v5 != hlp_NLUStrLength(v7) || strncmp((a2 + 1), v7 + 1, v6))
    {
      result = strchr(v7, 59);
      v7 = result + 1;
      if (!result)
      {
        return result;
      }
    }

    hlp_NLUStrStrip(v7);

    return hlp_NLUStrJoin(a1, "");
  }

  return result;
}

char *hlp_NLUStrStrip(char *a1)
{
  result = strchr(a1, 59);
  if (result)
  {
    v3 = result;
    v4 = strlen(result + 1) + 1;

    return memmove(a1, v3 + 1, v4);
  }

  else
  {
    *a1 = 0;
  }

  return result;
}

char *hlp_NLUStrJoin(const char *a1, const char *a2)
{
  v4 = &a1[strlen(a1)];
  if (*a1)
  {
    v5 = *(v4 - 1);
    if (*a2)
    {
      if (v5 != 59 || *v4)
      {
        *v4++ = 59;
      }
    }

    else if (v5 == 59 && !*v4)
    {
      --v4;
    }
  }

  return strcpy(v4, a2);
}

char *hlp_NLUStrKeyLen(char *a1)
{
  v2 = strchr(a1, 59);
  result = strchr(a1, 58);
  if (!result)
  {
    if (!v2)
    {
      LOWORD(result) = strlen(a1);
      return result;
    }

    goto LABEL_6;
  }

  if (v2 && v2 < result)
  {
LABEL_6:
    LOWORD(result) = v2 - a1;
    return result;
  }

  LOWORD(result) = result - a1;
  return result;
}

char *hlp_NLUStrKeyValue(char *a1)
{
  v1 = &a1[hlp_NLUStrKeyLen(a1)];
  v3 = *v1;
  v2 = v1 + 1;
  if (v3 == 58)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

char *hlp_NLUStrValueLen(char *a1)
{
  if (a1)
  {
    return hlp_NLUStrKeyLen(a1);
  }

  return a1;
}

char *hlp_NLUStrFind(char *a1, char *__s, uint64_t *a3, unsigned __int16 *a4)
{
  if (a1)
  {
    v7 = a1;
    v8 = strlen(__s);
    while (hlp_NLUStrKeyLen(v7) != v8 || strncmp(__s, v7, v8))
    {
      v9 = strchr(v7, 59);
      v7 = v9 + 1;
      if (!v9)
      {
        goto LABEL_6;
      }
    }

    v10 = v7[v8];
    v11 = v10 == 58;
    if (v10 == 58)
    {
      v12 = &v7[v8 + 1];
    }

    else
    {
      v12 = 0;
    }

    *a3 = v12;
    if (v11)
    {
      v13 = hlp_NLUStrKeyLen(&v7[v8 + 1]);
    }

    else
    {
      v13 = 0;
    }

    *a4 = v13;
  }

  else
  {
LABEL_6:
    v7 = 0;
    *a4 = 0;
    *a3 = 0;
  }

  return v7;
}

uint64_t hlp_NLUStrExist(char *a1, char *__s)
{
  v4 = strlen(__s);
  if (!a1)
  {
    return 1;
  }

  v5 = v4;
  while (1)
  {
    if (hlp_NLUStrKeyLen(a1) == v5)
    {
      result = strncmp(__s, a1, v5);
      if (!result)
      {
        break;
      }
    }

    v7 = strchr(a1, 59);
    a1 = v7 + 1;
    if (!v7)
    {
      return 1;
    }
  }

  return result;
}

uint64_t hlp_NLUStrRemoveKeyVal(char *a1, const char *a2)
{
  if (a1)
  {
    v3 = a1;
    while (1)
    {
      v4 = hlp_NLUStrKeyLen(v3);
      if (strlen(a2) != v4 || strncmp(a2, v3, v4))
      {
        goto LABEL_8;
      }

      v5 = strchr(v3, 59);
      if (v5)
      {
        v6 = v5;
        v7 = strlen(v5 + 1);
        memmove(v3, v6 + 1, v7);
        v3[v7] = 0;
      }

      else
      {
        *v3 = 0;
LABEL_8:
        v8 = strchr(v3, 59);
        v3 = v8 + 1;
        if (!v8)
        {
          return 0;
        }
      }
    }
  }

  return 0;
}

uint64_t hlp_NLUStrRemoveRangeKey(unsigned __int8 *a1, const char *a2, const char *a3)
{
  if (a1)
  {
    v5 = a1;
    while (1)
    {
        ;
      }

      v6 = *v5 - 69;
      v7 = v6 > 0xE;
      v8 = (1 << v6) & 0x4011;
      if (v7 || v8 == 0)
      {
        goto LABEL_20;
      }

      if (v5[1] != 95)
      {
        goto LABEL_20;
      }

      v10 = strlen(a2);
      if (strncmp(v5 + 2, a2, v10))
      {
        goto LABEL_20;
      }

      v11 = &v5[hlp_NLUStrKeyLen(v5)];
      v13 = *v11;
      v12 = (v11 + 1);
      if (v13 == 58)
      {
        if (!a3)
        {
          goto LABEL_20;
        }

        v14 = hlp_NLUStrLength(v12);
        if (strlen(a3) != v14 || strncmp(a3, v12, v14))
        {
          goto LABEL_20;
        }
      }

      else if (a3 && *a3)
      {
        goto LABEL_20;
      }

      v15 = strchr(v5, 59);
      if (v15)
      {
        v16 = v15;
        v17 = strlen(v15 + 1);
        memmove(v5, v16 + 1, v17);
        v5[v17] = 0;
      }

      else
      {
        *v5 = 0;
LABEL_20:
        v18 = strchr(v5, 59);
        v5 = (v18 + 1);
        if (!v18)
        {
          return 0;
        }
      }
    }
  }

  return 0;
}

uint64_t hlp_NLUStrAppendKeyVal(char *a1, const char *a2, const char *a3)
{
  v6 = strlen(a1);
  if (v6 && a1[v6 - 1] != 59)
  {
    *&a1[strlen(a1)] = 59;
  }

  strcat(a1, a2);
  if (a3 && *a3)
  {
    *&a1[strlen(a1)] = 58;
    strcat(a1, a3);
  }

  return 0;
}

char *hlp_NLUStrSet(char *a1, char *a2, char *__s)
{
  v19 = 0;
  v18 = 0;
  v6 = strlen(__s);
  v7 = hlp_NLUStrFind(a1, a2, &v19, &v18);
  if (v7)
  {
    v8 = v7;
    if (v18 == v6)
    {
      if (!v18)
      {
        return v8;
      }

      v9 = v19;
      v10 = __s;
      v11 = v18;
    }

    else
    {
      v14 = v19;
      if (v18 || v19)
      {
        v17 = strlen(&v19[v18]);
        memmove(&v19[v6], &v19[v18], v17 + 1);
      }

      else
      {
        v15 = &v7[hlp_NLUStrKeyLen(v7)];
        v14 = (v15 + 1);
        v16 = strlen(v15);
        memmove(&v15[v6 + 1], v15, v16 + 1);
        *v15 = 58;
      }

      v11 = v6;
      v9 = v14;
      v10 = __s;
    }

    strncpy(v9, v10, v11);
    return v8;
  }

  v12 = hlp_NLUStrJoin(a1, a2);
  v8 = v12;
  if (!__s || !v6)
  {
    return v8;
  }

  *&v12[strlen(v12)] = 58;

  return strcat(v8, __s);
}

char *hlp_NLUStrAppend(char *a1, char *a2, char *a3, const char *a4)
{
  v16 = 0;
  v15 = 0;
  v8 = hlp_NLUStrFind(a1, a2, &v16, &v15);
  if (v8 && v15)
  {
    v9 = v8;
    v10 = (v16 + v15);
    v11 = strlen(a4);
    v12 = strlen(a3);
    v13 = strlen(v10);
    memmove(&v10[v11 + v12], v10, v13 + 1);
    strncpy(v10, a4, v11);
    strncpy(&v10[v11], a3, v12);
    return v9;
  }

  else
  {

    return hlp_NLUStrSet(a1, a2, a3);
  }
}

char *hlp_NLUStrOverride(char *a1, char *a2, int a3)
{
  v13 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v5 = a2;
    do
    {
      v6 = hlp_NLUStrKeyLen(v5);
      v7 = v5[v6];
      if (v7 == 58)
      {
        v8 = hlp_NLUStrKeyLen(&v5[v6 + 1]);
        __strncpy_chk();
        v12[v6] = 0;
        __strncpy_chk();
      }

      else
      {
        __strncpy_chk();
        v8 = 0;
        v12[v6] = 0;
      }

      v11[v8] = 0;
      if (v12[1] == 95)
      {
        hlp_NLUStrJoin(a1, v12);
        if (v7 == 58)
        {
          *&a1[strlen(a1)] = 58;
          strcat(a1, v11);
        }
      }

      else if (!a3 || *v12 == 4476482)
      {
        hlp_NLUStrSet(a1, v12, v11);
      }

      v9 = strchr(v5, 59);
      v5 = v9 + 1;
    }

    while (v9);
  }

  return a1;
}

uint64_t hlp_dynstr_add(uint64_t a1, uint64_t a2, const char *a3, int a4)
{
  v8 = 2601525248;
  v9 = *a2;
  v10 = strlen(*a2);
  v11 = strlen(a3);
  v12 = *(a2 + 8);
  if (v10 + v11 + 2 >= v12)
  {
    v13 = heap_Realloc(*(a1 + 8), v9, v11 + v12 + *(a2 + 10));
    if (!v13)
    {
      log_OutPublic(*(a1 + 32), "GLOBALBEADAPT", 66000, 0);
      return 2601525258;
    }

    v9 = v13;
    *a2 = v13;
    *(a2 + 8) += v11 + *(a2 + 10);
  }

  if (a4 == 1)
  {
    strcat(v9, a3);
    return 0;
  }

  if (a4 == 2)
  {
    strcpy(v9, a3);
    return 0;
  }

  return v8;
}

uint64_t hlp_dynstr_init(uint64_t a1, uint64_t a2, unsigned int a3, __int16 a4)
{
  v5 = a3;
  v8 = heap_Calloc(*(a1 + 8), 1, a3);
  *a2 = v8;
  if (v8)
  {
    v9 = v8;
    result = 0;
    *(a2 + 8) = v5;
    *(a2 + 10) = a4;
    *v9 = 0;
  }

  else
  {
    log_OutPublic(*(a1 + 32), "GLOBALBEADAPT", 66000, 0);
    return 2601525258;
  }

  return result;
}

uint64_t globalbeadapt_OutputMorphemesToLingDBAsWords(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, char *__s, unsigned __int8 *a6, const char *a7, _DWORD *a8)
{
  v64 = 0;
  __sa = 0;
  v63 = 0;
  v16 = strlen(__s);
  *a8 = 0;
  v60[0] = 0;
  v60[1] = 0;
  v59[0] = 0;
  v59[1] = 0;
  v17 = a6 - 1;
  v58[0] = 0;
  v58[1] = 0;
  do
  {
    v19 = *++v17;
    v18 = v19;
  }

  while (v19 == 32);
  v20 = 0;
  v67 = 0;
  v68 = 0;
  v66 = 0;
  v65 = 0;
  v61 = 0;
  while (v18 == 32)
  {
    --v17;
    do
    {
      v21 = *++v17;
      v18 = v21;
    }

    while (v21 == 32);
    ++v20;
    a6 = v17;
LABEL_10:
    if (v18)
    {
      ++v17;
    }

    v18 = *v17;
  }

  if (v18)
  {
    goto LABEL_10;
  }

  v22 = v17 != a6;
  v23 = a7;
  v24 = a7;
  while (1)
  {
    v25 = *v23;
    if (v25 <= 0x22)
    {
      break;
    }

    if (v25 != 35)
    {
      if (v25 != 47)
      {
        goto LABEL_27;
      }

      if (v23[1] == 84)
      {
        v25 = 47;
        goto LABEL_27;
      }
    }

LABEL_19:
    LOWORD(v18) = v18 + 1;
    while (1)
    {
      if (v25 != 32 && v25 != 35)
      {
        if (v25 != 47)
        {
          goto LABEL_26;
        }

        if (v23[1] == 84)
        {
          break;
        }
      }

      v26 = *++v23;
      v25 = v26;
    }

    v25 = 47;
LABEL_26:
    v24 = v23;
LABEL_27:
    if (v25)
    {
      ++v23;
    }
  }

  if (v25 == 32)
  {
    goto LABEL_19;
  }

  if (*v23)
  {
    goto LABEL_27;
  }

  v27 = v20 + v22;
  if (v23 != v24)
  {
    LOWORD(v18) = v18 + 1;
  }

  if (v27 == v18)
  {
    v28 = (*(a1[1] + 104))(a2, a3, 2, a4, &v68 + 2);
    if ((v28 & 0x80000000) != 0 || (v28 = hlp_dynstr_init(*a1, v60, 0x20u, 16), (v28 & 0x80000000) != 0) || (v28 = hlp_dynstr_init(*a1, v59, 0x20u, 16), (v28 & 0x80000000) != 0) || (v28 = hlp_dynstr_init(*a1, v58, 0x20u, 16), (v28 & 0x80000000) != 0))
    {
LABEL_136:
      v56 = v28;
    }

    else
    {
      v61 = 0;
      v29 = HIWORD(v68);
      if (HIWORD(v68))
      {
        while (1)
        {
          v28 = (*(a1[1] + 168))(a2, a3, v29, 0, 1, &v65, &v68);
          if ((v28 & 0x80000000) != 0)
          {
            goto LABEL_136;
          }

          if ((v65 - 9) >= 6 && v65 != 4)
          {
LABEL_103:
            v45 = 1;
            goto LABEL_128;
          }

          v28 = (*(a1[1] + 168))(a2, a3, HIWORD(v68), 1, 1, &v67, &v68);
          if ((v28 & 0x80000000) != 0)
          {
            goto LABEL_136;
          }

          v28 = (*(a1[1] + 168))(a2, a3, HIWORD(v68), 2, 1, &v66, &v68);
          if ((v28 & 0x80000000) != 0)
          {
            goto LABEL_136;
          }

          v31 = v67;
          if (!v67 || __s[v67 - 1] == 32)
          {
            goto LABEL_59;
          }

          if (v67 == 1 || __s[v67 - 1] != 95)
          {
            v33 = v65;
            if (v65 == 11)
            {
              goto LABEL_59;
            }
          }

          else
          {
            v32 = memchr(":;,", __s[v67 - 2], 4uLL);
            v33 = v65;
            if (v32)
            {
              v34 = 1;
            }

            else
            {
              v34 = v65 == 11;
            }

            if (v34)
            {
              goto LABEL_59;
            }
          }

          if ((v33 - 12) > 2)
          {
            v35 = 0;
            goto LABEL_60;
          }

LABEL_59:
          HIWORD(v61) = v31;
          v35 = 1;
LABEL_60:
          v36 = v66;
          if (v16 <= v66 || (v37 = __s[v66], v37 == 32) || v37 == 95 && memchr(":;,", __s[v66 - 1], 4uLL) || v65 == 11 || (v65 - 12) <= 2)
          {
            LOWORD(v61) = v36;
            v38 = 1;
          }

          else
          {
            v38 = 0;
          }

          v28 = (*(a1[1] + 176))(a2, a3, HIWORD(v68), 3, &v64, &v68);
          if ((v28 & 0x80000000) != 0)
          {
            goto LABEL_136;
          }

          v28 = (*(a1[1] + 176))(a2, a3, HIWORD(v68), 5, &v63, &v68);
          if ((v28 & 0x80000000) != 0)
          {
            goto LABEL_136;
          }

          v28 = hlp_dynstr_add(*a1, v60, v63, 1);
          if ((v28 & 0x80000000) != 0)
          {
            goto LABEL_136;
          }

          v28 = (*(a1[1] + 176))(a2, a3, HIWORD(v68), 14, &__sa, &v68);
          if ((v28 & 0x80000000) != 0)
          {
            goto LABEL_136;
          }

          if (v68)
          {
            hlp_NLUStrRemoveKeyVal(__sa, "POS");
            if (!hlp_NLUStrExist(__sa, "PHR"))
            {
              hlp_NLUStrRemoveKeyVal(__sa, "PHR");
            }

            v28 = hlp_dynstr_add(*a1, v59, __sa, 1);
            if ((v28 & 0x80000000) != 0)
            {
              goto LABEL_136;
            }

            if (*__sa)
            {
              if (__sa[strlen(__sa) - 1] != 59)
              {
                v28 = hlp_dynstr_add(*a1, v59, ";", 1);
                if ((v28 & 0x80000000) != 0)
                {
                  goto LABEL_136;
                }
              }
            }
          }

          if (!*v64)
          {
            goto LABEL_103;
          }

          if (strstr(v64, "-*"))
          {
            v39 = strchr(&__s[v67], 45);
            if (v39)
            {
              if (v39 < &__s[v66])
              {
                do
                {
                  *v39 = 95;
                  v39 = strchr(v39 + 1, 45);
                  if (v39)
                  {
                    v40 = v39 >= &__s[v66];
                  }

                  else
                  {
                    v40 = 1;
                  }
                }

                while (!v40);
              }
            }
          }

          if (v38)
          {
            i = a7;
            if ((v65 - 15) >= 0xFFFFFFFC)
            {
              while (1)
              {
                v42 = *i;
                v44 = v42 > 0x23 || ((1 << v42) & 0x900800001) == 0;
                if (!v44 || v42 == 95)
                {
                  break;
                }

                ++i;
              }
            }

            else
            {
              for (i = a7; ; ++i)
              {
                v42 = *i;
                if (v42 <= 0x23 && ((1 << v42) & 0x900000001) != 0)
                {
                  break;
                }
              }
            }

            if (v42)
            {
              *i++ = 0;
            }

            if (*a7 == 45)
            {
              ++a7;
            }

            log_OutText(*(*a1 + 32), "GLOBALBEADAPT", 5, 0, "write joined word %d,%d POS=%s PHON=%s", HIWORD(v61), v61, v60[0], a7);
            if ((v35 & 1) == 0)
            {
              v28 = (*(a1[1] + 160))(a2, a3, HIWORD(v68), 0, 1, &v65, &v67 + 2);
              if ((v28 & 0x80000000) != 0)
              {
                goto LABEL_136;
              }

              v28 = (*(a1[1] + 160))(a2, a3, HIWORD(v68), 1, 1, &v61 + 2, &v67 + 2);
              if ((v28 & 0x80000000) != 0)
              {
                goto LABEL_136;
              }

              v28 = (*(a1[1] + 160))(a2, a3, HIWORD(v68), 2, 1, &v61, &v67 + 2);
              if ((v28 & 0x80000000) != 0)
              {
                goto LABEL_136;
              }

              v46 = strlen(v60[0]);
              v28 = (*(a1[1] + 160))(a2, a3, HIWORD(v68), 5, (v46 + 1), v60[0], &v67 + 2);
              if ((v28 & 0x80000000) != 0)
              {
                goto LABEL_136;
              }
            }

            v28 = hlp_dynstr_add(*a1, v58, v59[0], 1);
            if ((v28 & 0x80000000) != 0)
            {
              goto LABEL_136;
            }

            v28 = hlp_dynstr_add(*a1, v58, "POS:", 1);
            if ((v28 & 0x80000000) != 0)
            {
              goto LABEL_136;
            }

            v47 = v60[0];
            v48 = hlp_dynstr_add(*a1, v58, v60[0], 1);
            if ((v48 & 0x80000000) != 0)
            {
              v56 = v48;
              if (v47)
              {
                goto LABEL_138;
              }

              goto LABEL_139;
            }

            v49 = strlen(v58[0]);
            v28 = (*(a1[1] + 160))(a2, a3, HIWORD(v68), 14, (v49 + 1), v58[0], &v67 + 2);
            if ((v28 & 0x80000000) != 0)
            {
              goto LABEL_136;
            }

            v50 = strlen(a7);
            v28 = (*(a1[1] + 160))(a2, a3, HIWORD(v68), 3, (v50 + 1), a7, &v67 + 2);
            if ((v28 & 0x80000000) != 0)
            {
              goto LABEL_136;
            }

            while (1)
            {
              v51 = *i;
              v52 = v51 > 0x2F;
              v53 = (1 << v51) & 0x800900000000;
              if (v52 || v53 == 0)
              {
                break;
              }

              ++i;
            }

            v28 = hlp_dynstr_add(*a1, v60, "", 2);
            if ((v28 & 0x80000000) != 0)
            {
              goto LABEL_136;
            }

            v28 = hlp_dynstr_add(*a1, v59, "", 2);
            if ((v28 & 0x80000000) != 0)
            {
              goto LABEL_136;
            }

            v28 = hlp_dynstr_add(*a1, v58, "", 2);
            if ((v28 & 0x80000000) != 0)
            {
              goto LABEL_136;
            }

            v45 = 1;
            a7 = i;
          }

          else
          {
            v45 = 0;
          }

LABEL_128:
          v55 = HIWORD(v68);
          v56 = (*(a1[1] + 120))(a2, a3, HIWORD(v68), &v68 + 2);
          if ((v56 & 0x80000000) == 0)
          {
            if ((v45 & 1) != 0 || (v56 = (*(a1[1] + 192))(a2, a3, v55), (v56 & 0x80000000) == 0))
            {
              v29 = HIWORD(v68);
              if (HIWORD(v68))
              {
                continue;
              }
            }
          }

          goto LABEL_137;
        }
      }

      v56 = 0;
    }

LABEL_137:
    v47 = v60[0];
    if (v60[0])
    {
LABEL_138:
      heap_Free(*(*a1 + 8), v47);
    }

LABEL_139:
    if (v59[0])
    {
      heap_Free(*(*a1 + 8), v59[0]);
    }

    if (v58[0])
    {
      heap_Free(*(*a1 + 8), v58[0]);
    }
  }

  else
  {
    *a8 = 1;
    log_OutText(*(*a1 + 32), "GLOBALBEADAPT", 5, 0, "Could not align morphemes into words, word count in L2=%d, not equal to word count in O1=%d", v27, v18);
    return 0;
  }

  return v56;
}

uint64_t globalbeadapt_SetFEBOOLKeyword(void *a1, uint64_t a2, _DWORD *a3, int a4)
{
  memset(__c, 0, sizeof(__c));
  *a3 = a4;
  if (((*(a1[7] + 96))(a1[5], a1[6], "fecfg", a2, &__c[3], &__c[1], __c) & 0x80000000) == 0 && *&__c[1] == 1 && *&__c[3] != 0)
  {
    v6 = **&__c[3];
    v7 = strchr(**&__c[3], __c[0]);
    if (v7)
    {
      *v7 = 0;
      v6 = **&__c[3];
    }

    v8 = *v6;
    if (v8 == 49)
    {
      if (v6[1])
      {
        return 0;
      }

      *a3 = 1;
      v8 = *v6;
    }

    if (v8 == 48 && !v6[1])
    {
      *a3 = 0;
    }
  }

  return 0;
}

uint64_t globalbeadapt_OutputToLingDB(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, const char *a6)
{
  v30 = 0;
  v31 = 0;
  v29 = 0;
  v28 = 0;
  __s1 = 0;
  result = (*(*(a1 + 8) + 104))(a2, a3, 2, a4, &v31 + 2);
  if ((result & 0x80000000) == 0)
  {
    v12 = HIWORD(v31);
    if (HIWORD(v31))
    {
      while (1)
      {
        result = (*(*(a1 + 8) + 168))(a2, a3, v12, 0, 1, &v28, &v31);
        if ((result & 0x80000000) != 0)
        {
          break;
        }

        if ((v28 - 9) >= 6 && v28 != 4)
        {
          goto LABEL_26;
        }

        result = (*(*(a1 + 8) + 176))(a2, a3, HIWORD(v31), 3, &__s1, &v31);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        if (*__s1)
        {
          if (strstr(__s1, "-*"))
          {
            result = (*(*(a1 + 8) + 168))(a2, a3, HIWORD(v31), 1, 1, &v30, &v31);
            if ((result & 0x80000000) != 0)
            {
              return result;
            }

            result = (*(*(a1 + 8) + 168))(a2, a3, HIWORD(v31), 2, 1, &v29, &v31);
            if ((result & 0x80000000) != 0)
            {
              return result;
            }

            v14 = strchr((a5 + v30), 45);
            if (v14 && v14 < a5 + v29)
            {
              do
              {
                *v14 = 95;
                v14 = strchr(v14 + 1, 45);
                if (v14)
                {
                  v15 = v14 >= a5 + v29;
                }

                else
                {
                  v15 = 1;
                }
              }

              while (!v15);
            }
          }

          for (i = a6; ; ++i)
          {
            v17 = *i;
            if (!*i)
            {
              break;
            }

            if (v17 == 32 || v17 == 35)
            {
              *i++ = 0;
              break;
            }
          }

          v19 = *a6;
          v18 = 1;
          if (*(a1 + 88) && v19 == 95)
          {
            v18 = a6[1] != 0;
          }

          if (v19 == 45)
          {
            ++a6;
          }

          v20 = strlen(a6);
          if (a6[(v20 + 1) - 1] == 45)
          {
            v21 = v20;
          }

          else
          {
            v21 = v20 + 1;
          }

          result = (*(*(a1 + 8) + 160))(a2, a3, HIWORD(v31), 3, v21, a6, &v30 + 2);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          while (1)
          {
            v22 = *i;
            v23 = v22 > 0x2F;
            v24 = (1 << v22) & 0x800900000000;
            if (v23 || v24 == 0)
            {
              break;
            }

            ++i;
          }

          a6 = i;
        }

        else
        {
LABEL_26:
          v18 = 1;
        }

        v26 = HIWORD(v31);
        result = (*(*(a1 + 8) + 120))(a2, a3, HIWORD(v31), &v31 + 2);
        if ((result & 0x80000000) == 0)
        {
          if (v18 || (result = (*(*(a1 + 8) + 192))(a2, a3, v26), (result & 0x80000000) == 0))
          {
            v12 = HIWORD(v31);
            if (HIWORD(v31))
            {
              continue;
            }
          }
        }

        return result;
      }
    }
  }

  return result;
}

uint64_t globalbeadapt_SetupDepesInput(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5, int a6)
{
  v163 = *MEMORY[0x1E69E9840];
  __s1 = 0;
  v140 = 0;
  v135 = 0;
  v136 = 0;
  v133 = 0;
  v12 = *(a1 + 106);
  if (*(a1 + 106))
  {
    bzero(v162, v12);
    memset(__b, 32, v12);
    memset(v160, 126, v12);
    memset_pattern16(v159, &unk_1C37BE170, 4 * v12);
  }

  v162[*(a1 + 224)] = 126;
  v162[*(a1 + 226)] = 126;
  if (*(a1 + 256) == 1)
  {
    v162[*(a1 + 228)] = 126;
  }

  v162[*(a1 + 238)] = 126;
  if (*(a1 + 248))
  {
    v13 = *(a1 + 240);
    v162[v13] = 126;
    v159[v13] = 0;
  }

  v151 = 0;
  v149 = 0;
  v150 = 0;
  v148 = 0;
  v146 = 0;
  p_s = 0;
  v145 = 0;
  v141 = 0;
  v142 = 0;
  v139 = 0;
  v134 = 0;
  v132 = 0;
  com_depes_StartWritingToLayers(a1 + 96);
  v14 = (*(*(a1 + 8) + 176))(a2, a3, a4, 0, &v151, &v150);
  if ((v14 & 0x80000000) != 0)
  {
    return v14;
  }

  v14 = (*(*(a1 + 8) + 104))(a2, a3, 2, a4, &v150 + 2);
  if ((v14 & 0x80000000) != 0)
  {
    return v14;
  }

  v120 = a5;
  v121 = 0;
  v123 = 0;
  v124 = 0;
  v15 = 0;
  v129 = 0;
  v16 = 0;
  v122 = a1 + 208;
  v125 = 0xFFFF;
  v126 = 1;
  v17 = 126;
  while (1)
  {
    v127 = v15;
    if (!HIWORD(v150))
    {
      v94 = *(v122 + 2 * *(a1 + 224));
      if (*(a1 + 248))
      {
        v95 = v126 == 0;
      }

      else
      {
        v95 = 0;
      }

      if (v95)
      {
        if (v140)
        {
          hlp_AddTnTag(a1, v121, v140, v160);
        }

        else if (v15)
        {
          v107 = 0;
          do
          {
            BacktransPOS = com_depes_AddToLayerGen((a1 + 96), *(a1 + 240), " ", 1, 0);
            if ((BacktransPOS & 0x80000000) != 0)
            {
              goto LABEL_274;
            }
          }

          while (++v107 < v15);
        }
      }

      if (!v123 || (BacktransPOS = com_depes_AddToLayer((a1 + 96), *(a1 + 224), "◄"), (BacktransPOS & 0x80000000) == 0) && (BacktransPOS = com_depes_AddToLayer((a1 + 96), *(a1 + 224), "/+"), (BacktransPOS & 0x80000000) == 0) && (BacktransPOS = com_depes_FillToMaxLayerSet(a1 + 96, v159, __b), (BacktransPOS & 0x80000000) == 0))
      {
        if (!v124 || (BacktransPOS = com_depes_AddToLayer((a1 + 96), *(a1 + 224), "↕"), (BacktransPOS & 0x80000000) == 0) && (BacktransPOS = com_depes_AddToLayer((a1 + 96), *(a1 + 224), "►"), (BacktransPOS & 0x80000000) == 0) && (BacktransPOS = com_depes_FillToMaxLayerSet(a1 + 96, v159, __b), (BacktransPOS & 0x80000000) == 0))
        {
          if (!*(a1 + 248) || v140 || (v96 = *(v122 + 2 * *(a1 + 224)) - v94) == 0)
          {
LABEL_256:
            v93 = hlp_ConvertOrthographyLayer(a1);
            if ((v93 & 0x80000000) == 0 && *(a1 + 106))
            {
              v98 = 14;
              do
              {
                v99 = *(a1 + 8 * v98);
                if (v99)
                {
                  log_OutText(*(*a1 + 32), "GLOBALBEADAPT", 5, 0, "%s L%d: %s", v120, v98 - 13, v99);
                  v100 = *(a1 + 32);
                  v101 = *(a1 + 8 * v98);
                  v102 = strlen(v101);
                  v103 = *(a1 + 16);
                  v104 = *(a1 + 24);
                  v105 = v98 - 14 >= *(a1 + 104) ? (*(v100 + 136))(v103, v104, (v98 - 14), v101, v102) : (*(v100 + 120))(v103, v104, (v98 - 14), v101, v102);
                  v93 = v105;
                  if ((v105 & 0x80000000) != 0)
                  {
                    break;
                  }
                }

                v106 = v98 - 13;
                ++v98;
              }

              while (v106 < *(a1 + 106));
            }

            goto LABEL_275;
          }

          v97 = 0;
          while (1)
          {
            BacktransPOS = com_depes_AddToLayerGen((a1 + 96), *(a1 + 240), " ", 1, 0);
            if ((BacktransPOS & 0x80000000) != 0)
            {
              break;
            }

            if (++v97 >= v96)
            {
              goto LABEL_256;
            }
          }
        }
      }

LABEL_274:
      v93 = BacktransPOS;
      goto LABEL_275;
    }

    BacktransPOS = (*(*(a1 + 8) + 168))(a2, a3);
    if ((BacktransPOS & 0x80000000) != 0)
    {
      goto LABEL_274;
    }

    v19 = v148;
    if (v148 == 15)
    {
      BacktransPOS = (*(*(a1 + 8) + 168))(a2, a3, HIWORD(v150), 7, 1, &v134, &v150);
      if ((BacktransPOS & 0x80000000) != 0)
      {
        goto LABEL_274;
      }

      v125 = v134;
      v19 = v148;
    }

    v20 = (v19 - 9) < 6 || v19 == 4;
    if (!v20)
    {
      v28 = v129;
      goto LABEL_199;
    }

    BacktransPOS = (*(*(a1 + 8) + 168))(a2, a3, HIWORD(v150), 1, 1, &v149 + 2, &v150);
    if ((BacktransPOS & 0x80000000) != 0)
    {
      goto LABEL_274;
    }

    BacktransPOS = (*(*(a1 + 8) + 168))(a2, a3, HIWORD(v150), 2, 1, &v149, &v150);
    if ((BacktransPOS & 0x80000000) != 0)
    {
      goto LABEL_274;
    }

    HIDWORD(v124) = v149;
    BacktransPOS = (*(*(a1 + 8) + 176))(a2, a3, HIWORD(v150), 5, &p_s, &v150);
    if ((BacktransPOS & 0x80000000) != 0)
    {
      goto LABEL_274;
    }

    if (*(a1 + 88))
    {
      BacktransPOS = com_mosynt_GetBacktransPOS(*(a1 + 40), *(a1 + 48), *(a1 + 56), p_s, &__s);
      if ((BacktransPOS & 0x80000000) != 0)
      {
        goto LABEL_274;
      }

      p_s = &__s;
      v21 = strlen(&__s);
      BacktransPOS = (*(*(a1 + 8) + 160))(a2, a3, HIWORD(v150), 5, v21, &__s, &v132);
      if ((BacktransPOS & 0x80000000) != 0)
      {
        goto LABEL_274;
      }
    }

    BacktransPOS = (*(*(a1 + 8) + 176))(a2, a3, HIWORD(v150), 6, &v146, &v150);
    if ((BacktransPOS & 0x80000000) != 0)
    {
      goto LABEL_274;
    }

    if (((*(*(a1 + 8) + 184))(a2, a3, HIWORD(v150), 10, &v135) & 0x80000000) != 0 || v135 != 1)
    {
      v141 = "";
    }

    else
    {
      BacktransPOS = (*(*(a1 + 8) + 176))(a2, a3, HIWORD(v150), 10, &v141, &v150);
      if ((BacktransPOS & 0x80000000) != 0)
      {
        goto LABEL_274;
      }
    }

    strcpy(v144, "~");
    if (((*(*(a1 + 8) + 184))(a2, a3, HIWORD(v150), 9, &v135) & 0x80000000) == 0 && v135 == 1)
    {
      BacktransPOS = (*(*(a1 + 8) + 176))(a2, a3, HIWORD(v150), 9, &v145, &v150);
      if ((BacktransPOS & 0x80000000) != 0)
      {
        goto LABEL_274;
      }

      if (*v145)
      {
        v144[0] = *v145;
      }
    }

    v138 = 0;
    if (*(a1 + 88) || *(a1 + 264))
    {
      BacktransPOS = (*(*(a1 + 8) + 176))(a2, a3, HIWORD(v150), 13, &v139, &v150);
      if ((BacktransPOS & 0x80000000) != 0)
      {
        goto LABEL_274;
      }

      v22 = *v139;
      if (!*v139)
      {
        v22 = 48;
      }

      LOBYTE(v138) = v22;
    }

    v23 = HIWORD(v150);
    v158 = 0;
    v156 = 0;
    v157 = 0;
    v155 = 0;
    v154 = 0;
    v152 = 0;
    strcpy(v137, "~");
    if (((*(*(a1 + 8) + 184))(a2, a3, HIWORD(v150), 14, &v158 + 2) & 0x80000000) == 0 && HIWORD(v158) == 1)
    {
      BacktransPOS = (*(*(a1 + 8) + 176))(a2, a3, v23, 14, &v157, &v158);
      if ((BacktransPOS & 0x80000000) != 0)
      {
        goto LABEL_274;
      }

      if (hlp_NLUStrFind(v157, "S_CLASS", &v156, &v155) || hlp_NLUStrFind(v157, "I_CLASS", &v156, &v155) || hlp_NLUStrFind(v157, "E_CLASS", &v156, &v155))
      {
        if (*(a1 + 252))
        {
          v24 = strlen(v156);
          v25 = heap_Alloc(*(*a1 + 8), (v24 + 10));
          if (!v25)
          {
            v93 = 2601525258;
            log_OutPublic(*(*a1 + 32), "GLOBALBEADAPT", 66000, 0);
            goto LABEL_275;
          }

          v26 = v25;
          strcpy(v25, "docclass_");
          strncat(v25, v156, v155);
          v153 = 0;
          v27 = (*(*(a1 + 56) + 96))(*(a1 + 40), *(a1 + 48), "fecfg", v26, &v154, &v153, &v152);
          if ((v27 & 0x80000000) != 0)
          {
            v93 = v27;
            heap_Free(*(*a1 + 8), v26);
            goto LABEL_275;
          }

          if (v153 == 1 && v154)
          {
            v137[0] = **v154;
          }

          heap_Free(*(*a1 + 8), v26);
        }

        else
        {
          v137[0] = *v156;
        }
      }
    }

    BacktransPOS = (*(*(a1 + 8) + 176))(a2, a3, HIWORD(v150), 3, &__s1, &v150);
    if ((BacktransPOS & 0x80000000) != 0)
    {
      goto LABEL_274;
    }

    v29 = __s1;
    if (a6)
    {
      v30 = strlen(__s1);
      if (4 * v30 - 125 >= 0xFFFFFFFFFFFFFF7FLL)
      {
        v31 = 128;
      }

      else
      {
        v31 = (4 * v30 + 4);
      }

      v32 = heap_Realloc(*(*a1 + 8), v16, v31);
      if (!v32)
      {
        v93 = 2601525258;
        log_OutPublic(*(*a1 + 32), "GLOBALBEADAPT", 66000, 0);
        return v93;
      }

      v29 = v32;
      v33 = __s1;
      if (strstr(__s1, "\\TQ\""))
      {
        *(a1 + 268) = 1;
      }

      if (v148 == 11)
      {
        v118 = a6;
      }

      else
      {
        if (v148 != 13)
        {
LABEL_101:
          v50 = strlen(v33);
          if (v50)
          {
            v51 = 0;
            v52 = 0;
            v53 = (v33 + 1);
            do
            {
              v54 = *(v53 - 1);
              if (v52)
              {
                v52 = v54 != 92;
              }

              else if (v54 != 92 || (v55 = *v53, v52 = 1, v55 != 47) && v55 != 84)
              {
                v52 = 0;
                v56 = v51++;
                v29[v56] = v54;
              }

              ++v53;
              --v50;
            }

            while (v50);
            v50 = v51;
          }

          v29[v50] = 0;
          strcpy(__s1, v29);
          v57 = strlen(__s1);
          v58 = utf8_DepesToUtf8(__s1, v57 + 1, 0, v29, v31, &v133, 0);
          if ((v58 & 0x80000000) != 0 || (v59 = strlen(v29), v58 = (*(*(a1 + 8) + 160))(a2, a3, HIWORD(v150), 3, (v59 + 1), v29, &v150), (v58 & 0x80000000) != 0))
          {
            v93 = v58;
            goto LABEL_276;
          }

          __s1 = v29;
          v16 = v29;
          goto LABEL_114;
        }

        v118 = a6;
        v17 = 126;
      }

      v34 = strlen(v33);
      if (v34)
      {
        v115 = v31;
        v116 = a3;
        v35 = 0;
        v36 = 0;
        v37 = v33 + 1;
        v38 = 1;
        v39 = v17;
        v40 = v17;
        while (1)
        {
          v41 = v33[v35];
          if (v36)
          {
            v36 = v41 != 92;
          }

          else
          {
            if (v41 == 92)
            {
              v42 = &v37[v35];
              v43 = v37[v35];
              if (v43 == 47)
              {
                v40 = 126;
                if (v38 == 1)
                {
                  v39 = 126;
                }

                v36 = 1;
                goto LABEL_81;
              }

              if (v43 == 84)
              {
                for (i = 1; ; i = v45 + 1)
                {
                  v45 = i;
                  v46 = v42[i];
                  if (!v46)
                  {
                    break;
                  }

                  if (v46 == 92)
                  {
                    v42[v45] = 0;
                    v47 = *(a1 + 284);
                    if (*(a1 + 284))
                    {
                      v109 = v40;
                      v110 = v38;
                      v111 = v37;
                      v112 = v39;
                      v113 = a2;
                      v48 = *(a1 + 288);
                      while (1)
                      {
                        v49 = *v48;
                        if (*v48)
                        {
                          if (strlen(*v48) >= 4 && strstr(v49 + 3, v42))
                          {
                            break;
                          }
                        }

                        ++v48;
                        if (!--v47)
                        {
                          a2 = v113;
                          v39 = v112;
                          v40 = v109;
                          v38 = v110;
                          goto LABEL_96;
                        }
                      }

                      v40 = *v49;
                      v38 = v110;
                      v39 = v112;
                      if (v110 == 1)
                      {
                        v39 = *v49;
                      }

                      a2 = v113;
LABEL_96:
                      v37 = v111;
                    }

                    v42[v45] = 92;
                    break;
                  }
                }

                v36 = 1;
                a3 = v116;
                goto LABEL_81;
              }
            }

            v36 = 0;
            v38 = 0;
          }

LABEL_81:
          if (++v35 == v34)
          {
            v33 = __s1;
            LODWORD(v31) = v115;
            goto LABEL_100;
          }
        }
      }

      LOBYTE(v39) = v17;
      v40 = v17;
LABEL_100:
      v144[0] = v39;
      v17 = v40;
      a6 = v118;
      goto LABEL_101;
    }

LABEL_114:
    v28 = v129;
    if (!*v29)
    {
      v15 = v127;
      goto LABEL_199;
    }

    if (*(a1 + 248) && !v126)
    {
      if (v140 && HIWORD(v149) != v136)
      {
        if (HIWORD(v149) > HIWORD(v136))
        {
          hlp_AddTnTag(a1, v121, v140, v160);
          v140 = 0;
        }
      }

      else if (v127)
      {
        v60 = 0;
        do
        {
          BacktransPOS = com_depes_AddToLayer((a1 + 96), *(a1 + 240), " ");
          if ((BacktransPOS & 0x80000000) != 0)
          {
            goto LABEL_274;
          }
        }

        while (++v60 < v127);
      }
    }

    v61 = *(a1 + 224);
    v130 = *(v122 + 2 * v61);
    v62 = v148;
    if (v148 != 10 && v123 != 0)
    {
      BacktransPOS = com_depes_AddToLayer((a1 + 96), v61, "◄");
      if ((BacktransPOS & 0x80000000) != 0)
      {
        goto LABEL_274;
      }

      BacktransPOS = com_depes_AddToLayer((a1 + 96), *(a1 + 224), "/+");
      if ((BacktransPOS & 0x80000000) != 0)
      {
        goto LABEL_274;
      }

      BacktransPOS = com_depes_FillToMaxLayerSet(a1 + 96, v159, __b);
      if ((BacktransPOS & 0x80000000) != 0)
      {
        goto LABEL_274;
      }

      v123 = 0;
      v62 = v148;
    }

    if (v62 != 11 && v124)
    {
      BacktransPOS = com_depes_AddToLayer((a1 + 96), *(a1 + 224), "↕");
      if ((BacktransPOS & 0x80000000) != 0)
      {
        goto LABEL_274;
      }

      BacktransPOS = com_depes_AddToLayer((a1 + 96), *(a1 + 224), "►");
      if ((BacktransPOS & 0x80000000) != 0)
      {
        goto LABEL_274;
      }

      BacktransPOS = com_depes_FillToMaxLayerSet(a1 + 96, v159, __b);
      if ((BacktransPOS & 0x80000000) != 0)
      {
        goto LABEL_274;
      }

      LODWORD(v124) = 0;
    }

    if (!v126 && (v125 & 0x80000000) == 0)
    {
      v64 = v125 > 1 ? " /" : " #";
      BacktransPOS = com_depes_AddToLayer((a1 + 96), *(a1 + 224), v64);
      if ((BacktransPOS & 0x80000000) != 0)
      {
        goto LABEL_274;
      }

      BacktransPOS = com_depes_FillToMaxLayerSet(a1 + 96, v159, __b);
      if ((BacktransPOS & 0x80000000) != 0)
      {
        goto LABEL_274;
      }
    }

    LOWORD(v135) = 0;
    if (((*(*(a1 + 8) + 184))(a2, a3, HIWORD(v150), 8, &v135) & 0x80000000) == 0 && v135 == 1)
    {
      BacktransPOS = (*(*(a1 + 8) + 168))(a2, a3, HIWORD(v150), 8, 1, &v135 + 2, &v150);
      if ((BacktransPOS & 0x80000000) != 0)
      {
        goto LABEL_274;
      }
    }

    if (!v126)
    {
      v65 = HIWORD(v149);
      if (*(v151 + HIWORD(v149) - 1))
      {
        PreviousUtf8Offset = utf8_GetPreviousUtf8Offset(v151, HIWORD(v149));
        BacktransPOS = com_depes_AddToLayerN((a1 + 96), *(a1 + 226), (v151 + HIWORD(v149) - (v65 - PreviousUtf8Offset)), (v65 - PreviousUtf8Offset));
        if ((BacktransPOS & 0x80000000) != 0)
        {
          goto LABEL_274;
        }
      }

      else
      {
        log_OutText(*(*a1 + 32), "GLOBALBEADAPT", 5, 0, "unexpected empty orthography when filling depes layer (frompos: %d, topos: %d", HIWORD(v149), v149);
        BacktransPOS = com_depes_AddToLayerGen((a1 + 96), *(a1 + 224), " ", 1, 0);
        if ((BacktransPOS & 0x80000000) != 0)
        {
          goto LABEL_274;
        }
      }

      BacktransPOS = com_depes_FillToMaxLayerSet(a1 + 96, v159, __b);
      if ((BacktransPOS & 0x80000000) != 0)
      {
        goto LABEL_274;
      }
    }

    v67 = v148;
    if (v148 == 10 && !v123)
    {
      BacktransPOS = com_depes_AddToLayer((a1 + 96), *(a1 + 224), "◄");
      if ((BacktransPOS & 0x80000000) != 0)
      {
        goto LABEL_274;
      }

      BacktransPOS = com_depes_AddToLayer((a1 + 96), *(a1 + 224), "/+");
      if ((BacktransPOS & 0x80000000) != 0)
      {
        goto LABEL_274;
      }

      BacktransPOS = com_depes_FillToMaxLayerSet(a1 + 96, v159, __b);
      if ((BacktransPOS & 0x80000000) != 0)
      {
        goto LABEL_274;
      }

      v123 = 1;
      v67 = v148;
    }

    if (v67 == 13)
    {
      BacktransPOS = com_depes_AddToLayer((a1 + 96), *(a1 + 224), "►");
      if ((BacktransPOS & 0x80000000) != 0)
      {
        goto LABEL_274;
      }

      BacktransPOS = com_depes_AddToLayer((a1 + 96), *(a1 + 224), "↕");
      if ((BacktransPOS & 0x80000000) != 0)
      {
        goto LABEL_274;
      }

      BacktransPOS = com_depes_FillToMaxLayerSet(a1 + 96, v159, __b);
      if ((BacktransPOS & 0x80000000) != 0)
      {
        goto LABEL_274;
      }

      LODWORD(v124) = 1;
    }

    v68 = *(a1 + 224);
    v69 = *(v122 + 2 * v68);
    v70 = __s1;
    v71 = strstr(__s1, "▲");
    v142 = v71;
    if (v71)
    {
      *v71 = 0;
      LODWORD(v68) = *(a1 + 224);
      v70 = __s1;
    }

    BacktransPOS = com_depes_AddToLayer((a1 + 96), v68, v70);
    if ((BacktransPOS & 0x80000000) != 0)
    {
      goto LABEL_274;
    }

    BacktransPOS = com_depes_AddToLayerN((a1 + 96), *(a1 + 226), (v151 + HIWORD(v149)), v149 - HIWORD(v149));
    if ((BacktransPOS & 0x80000000) != 0)
    {
      goto LABEL_274;
    }

    v72 = *(a1 + 228);
    v73 = (a1 + 96);
    if (*(a1 + 256) == 1)
    {
      BacktransPOS = com_depes_AddToLayer(v73, v72, p_s);
      if ((BacktransPOS & 0x80000000) != 0)
      {
        goto LABEL_274;
      }
    }

    else
    {
      BacktransPOS = com_depes_AddToLayerN(v73, v72, p_s, 1);
      if ((BacktransPOS & 0x80000000) != 0)
      {
        goto LABEL_274;
      }
    }

    BacktransPOS = com_depes_AddToLayerN((a1 + 96), *(a1 + 230), v146, 1);
    if ((BacktransPOS & 0x80000000) != 0)
    {
      goto LABEL_274;
    }

    BacktransPOS = com_depes_AddToLayerGen((a1 + 96), *(a1 + 232), v144, 1, v144[0] != 126);
    if ((BacktransPOS & 0x80000000) != 0)
    {
      goto LABEL_274;
    }

    BacktransPOS = com_depes_AddToLayerN((a1 + 96), *(a1 + 234), &v138, 1);
    if ((BacktransPOS & 0x80000000) != 0)
    {
      goto LABEL_274;
    }

    BacktransPOS = com_depes_AddToLayerGen((a1 + 96), *(a1 + 236), v137, 1, 0);
    if ((BacktransPOS & 0x80000000) != 0)
    {
      goto LABEL_274;
    }

    BacktransPOS = com_depes_AddToLayer((a1 + 96), *(a1 + 238), v141);
    if ((BacktransPOS & 0x80000000) != 0)
    {
      goto LABEL_274;
    }

    BacktransPOS = com_depes_FillToMaxLayerSet(a1 + 96, v159, v162);
    if ((BacktransPOS & 0x80000000) != 0)
    {
      goto LABEL_274;
    }

    v74 = v142;
    if (v142)
    {
      v142[2] = -78;
      *v74 = -26910;
      BacktransPOS = com_depes_AddToLayer((a1 + 96), *(a1 + 224), v142);
      if ((BacktransPOS & 0x80000000) != 0)
      {
        goto LABEL_274;
      }

      BacktransPOS = com_depes_FillToMaxLayerSet(a1 + 96, v159, v162);
      if ((BacktransPOS & 0x80000000) != 0)
      {
        goto LABEL_274;
      }
    }

    v28 = v69;
    v15 = *(v122 + 2 * *(a1 + 224)) - v69;
    if (*(a1 + 248))
    {
      v75 = v69 - v130;
      v76 = v140;
      if (v140 && HIWORD(v149) != v136)
      {
        v126 = 0;
        v81 = v75 + v121 + v15;
      }

      else
      {
        if (v69 != v130)
        {
          v119 = a6;
          v77 = v16;
          v78 = *(v122 + 2 * *(a1 + 224)) - v69;
          v79 = 0;
          while (1)
          {
            v80 = com_depes_AddToLayerGen((a1 + 96), *(a1 + 240), " ", 1, 0);
            if ((v80 & 0x80000000) != 0)
            {
              break;
            }

            if (++v79 >= v75)
            {
              v76 = v140;
              v28 = v69;
              v15 = v78;
              v16 = v77;
              a6 = v119;
              goto LABEL_193;
            }
          }

          v93 = v80;
          v16 = v77;
          goto LABEL_275;
        }

LABEL_193:
        v126 = 0;
        v20 = v76 == 0;
        v81 = v121;
        if (!v20)
        {
          v81 = v15;
        }
      }

      v121 = v81;
    }

    else
    {
      v126 = 0;
    }

    v125 = 0xFFFF;
LABEL_199:
    v82 = v148;
    if (v148 == 7 && !v124)
    {
      break;
    }

LABEL_214:
    v129 = v28;
    if (v82 != 6)
    {
      goto LABEL_282;
    }

    BacktransPOS = (*(*(a1 + 8) + 168))(a2, a3, HIWORD(v150), 1, 1, &v136, &v150);
    if ((BacktransPOS & 0x80000000) == 0)
    {
      if (*(a1 + 248) && v140 && v136 > HIWORD(v136))
      {
        hlp_AddTnTag(a1, v121, v140, v160);
        v15 = 0;
        v140 = 0;
      }

      BacktransPOS = (*(*(a1 + 8) + 176))(a2, a3, HIWORD(v150), 4, &v140, &v150);
      if ((BacktransPOS & 0x80000000) == 0)
      {
        BacktransPOS = (*(*(a1 + 8) + 168))(a2, a3, HIWORD(v150), 2, 1, &v136 + 2, &v150);
        v121 = v15;
        if ((BacktransPOS & 0x80000000) == 0)
        {
LABEL_282:
          BacktransPOS = (*(*(a1 + 8) + 120))(a2, a3, HIWORD(v150), &v150 + 2);
          if ((BacktransPOS & 0x80000000) == 0)
          {
            continue;
          }
        }
      }
    }

    goto LABEL_274;
  }

  v83 = v28;
  BacktransPOS = (*(*(a1 + 8) + 168))(a2, a3, HIWORD(v150), 1, 1, &v149 + 2, &v150);
  if ((BacktransPOS & 0x80000000) != 0)
  {
    goto LABEL_274;
  }

  BacktransPOS = (*(*(a1 + 8) + 176))(a2, a3, HIWORD(v150), 4, &v142, &v150);
  if ((BacktransPOS & 0x80000000) != 0)
  {
    goto LABEL_274;
  }

  v128 = v16;
  v84 = v15;
  v85 = __s1;
  if (!__s1 || (v86 = strchr(__s1, 42), HIDWORD(v124) - 1 <= HIWORD(v149)) || (v87 = v86) == 0 || strchr(v86 + 1, 42))
  {
    v88 = com_depes_AddToLayer((a1 + 96), *(a1 + 224), "▲");
    if ((v88 & 0x80000000) != 0)
    {
      goto LABEL_233;
    }

    v88 = com_depes_AddToLayer((a1 + 96), *(a1 + 224), v142);
    if ((v88 & 0x80000000) != 0)
    {
      goto LABEL_233;
    }

    v88 = com_depes_AddToLayer((a1 + 96), *(a1 + 224), "▼");
    if ((v88 & 0x80000000) != 0)
    {
      goto LABEL_233;
    }

    v88 = com_depes_FillToMaxLayerSet(a1 + 96, v159, __b);
    if ((v88 & 0x80000000) != 0)
    {
      goto LABEL_233;
    }

LABEL_211:
    if (v140)
    {
      v121 += strlen(v142);
    }

    v15 = v84 + strlen(v142);
    v82 = v148;
    v28 = v83;
    v16 = v128;
    goto LABEL_214;
  }

  v89 = v85 - v87 - v83 + *(v122 + 2 * *(a1 + 224));
  v90 = Utf8_LengthInUtf8chars(v87, v89);
  v88 = com_depes_InsertBeforeEnd((a1 + 96), *(a1 + 224), "▲", v89);
  if ((v88 & 0x80000000) == 0)
  {
    v88 = com_depes_InsertBeforeEnd((a1 + 96), *(a1 + 224), v142, v89);
    if ((v88 & 0x80000000) == 0)
    {
      v88 = com_depes_InsertBeforeEnd((a1 + 96), *(a1 + 224), "▼", v89);
      if ((v88 & 0x80000000) == 0)
      {
        v114 = a2;
        v117 = a3;
        v91 = 0;
        LOWORD(a2) = *(a1 + 238);
        do
        {
          v92 = *(a1 + 228);
          if (v92 < a2)
          {
            do
            {
              v88 = com_depes_InsertBeforeEnd((a1 + 96), v92, " ", v90);
              if ((v88 & 0x80000000) != 0)
              {
                goto LABEL_233;
              }

              LOWORD(v92) = v92 + 1;
              LODWORD(a2) = *(a1 + 238);
            }

            while (a2 > v92);
          }

          ++v91;
        }

        while (strlen(v142) + 2 > v91);
        v88 = com_depes_FillToMaxLayerSet(a1 + 96, v159, __b);
        a3 = v117;
        a2 = v114;
        if ((v88 & 0x80000000) == 0)
        {
          goto LABEL_211;
        }
      }
    }
  }

LABEL_233:
  v93 = v88;
  v16 = v128;
LABEL_275:
  v29 = v16;
  if (v16)
  {
LABEL_276:
    heap_Free(*(*a1 + 8), v29);
  }

  return v93;
}

uint64_t hlp_AddTnTag(uint64_t a1, unsigned int a2, char *__s, uint64_t a4)
{
  v8 = 2 * strlen(__s) - 2;
  result = com_depes_AddToLayer((a1 + 96), *(a1 + 240), "X");
  if (v8 >= a2)
  {
    if ((result & 0x80000000) == 0)
    {
      v14 = strlen(__s);
      result = com_depes_AddToLayerN((a1 + 96), *(a1 + 240), __s + 1, v14 - 2);
      if ((result & 0x80000000) == 0)
      {
        result = com_depes_AddToLayer((a1 + 96), *(a1 + 240), "Y");
        if ((result & 0x80000000) == 0)
        {
          v15 = strlen(__s);
          result = com_depes_AddToLayerN((a1 + 96), *(a1 + 240), __s + 1, v15 - 2);
          if ((result & 0x80000000) == 0)
          {

            return com_depes_FillToMaxAllLayers(a1 + 96, a4);
          }
        }
      }
    }
  }

  else if ((result & 0x80000000) == 0)
  {
    v10 = strlen(__s);
    result = com_depes_AddToLayerN((a1 + 96), *(a1 + 240), __s + 1, v10 - 2);
    if ((result & 0x80000000) == 0)
    {
      v11 = 2 * strlen(__s) - 2;
      if ((v11 & 0xFFFEu) >= a2)
      {
LABEL_7:
        result = com_depes_AddToLayer((a1 + 96), *(a1 + 240), "Y");
        if ((result & 0x80000000) == 0)
        {
          v12 = strlen(__s) - 2;
          v13 = *(a1 + 240);

          return com_depes_AddToLayerN((a1 + 96), v13, __s + 1, v12);
        }
      }

      else
      {
        while (1)
        {
          result = com_depes_AddToLayerGen((a1 + 96), *(a1 + 240), "~", 1, 0);
          if ((result & 0x80000000) != 0)
          {
            break;
          }

          if (a2 <= ++v11)
          {
            goto LABEL_7;
          }
        }
      }
    }
  }

  return result;
}

uint64_t hlp_ConvertOrthographyLayer(uint64_t a1)
{
  v2 = a1 + 176;
  v3 = *(a1 + 176 + 2 * *(a1 + 226));
  if (v3 >= 0x3FFF)
  {
    v4 = -1;
  }

  else
  {
    v4 = 4 * v3;
  }

  v5 = heap_Alloc(*(*a1 + 8), v4);
  if (v5)
  {
    v6 = v5;
    v7 = a1 + 112;
    strcpy(v5, *(a1 + 112 + 8 * *(a1 + 226)));
    v8 = (*(*(a1 + 56) + 104))(*(a1 + 40), *(a1 + 48), "normal", v6, v3);
    v9 = *(*a1 + 8);
    if ((v8 & 0x80000000) != 0)
    {
      heap_Free(v9, v6);
    }

    else
    {
      heap_Free(v9, *(v7 + 8 * *(a1 + 226)));
      v10 = *(a1 + 226);
      *(v7 + 8 * v10) = v6;
      *(v2 + 2 * v10) = v4;
      *(a1 + 2 * *(a1 + 226) + 192) = strlen(v6);
    }
  }

  else
  {
    log_OutPublic(*(*a1 + 32), "GLOBALBEADAPT", 66000, 0);
    return 2601525258;
  }

  return v8;
}

uint64_t globalbeadapt_DoPostprocessing(void *a1, const char *a2, char **a3, int a4)
{
  v7 = a1;
  v101 = 0;
  v100 = 0;
  v99 = 0;
  __s = 0;
  v8 = (*(a1[4] + 128))(a1[2], a1[3], 0, &v101, &v100);
  if ((v8 & 0x80000000) != 0)
  {
    goto LABEL_104;
  }

  v101[v100] = 0;
  v9 = v100;
  if (*a2 == 63 && !v100)
  {
    goto LABEL_104;
  }

  if (a4)
  {
    v8 = utf8_Utf8ToDepes(v101, v100, 0, v101, v100, &v99, 0);
    v9 = v99;
    v100 = v99;
  }

  if (v9)
  {
    v10 = 0;
    do
    {
      v11 = v10;
      v12 = v101[v10];
      if (v12 == 126)
      {
        if (v10 < v9)
        {
          do
          {
            v101[v11] = v101[v11 + 1];
            ++v11;
            v9 = v100;
          }

          while (v11 < v100);
        }

        v100 = --v9;
        --v10;
      }

      else if (v12 == 30)
      {
        if (v10 >= v9)
        {
          v14 = 1;
        }

        else
        {
          v13 = v9 - v10 + 1;
          v14 = 1;
          while (v101[v11] != 31)
          {
            ++v11;
            ++v14;
            if (v9 == v11)
            {
              v10 = v9;
              v14 = v13;
              goto LABEL_20;
            }
          }

          v10 = v11;
        }

LABEL_20:
        if ((v10 - v14 + 1) < v9)
        {
          v15 = (v10 - v14 + 1);
          do
          {
            v101[v15] = v101[v15 + v14];
            ++v15;
            v9 = v100;
          }

          while (v15 < v100);
        }

        v9 -= v14;
        v100 = v9;
        v10 -= v14;
      }

      ++v10;
    }

    while (v10 < v9);
    v16 = v9;
  }

  else
  {
    v16 = 0;
  }

  v101[v16] = 0;
  v17 = v100;
  if (*(v7 + 65) && v100)
  {
    v18 = 0;
    do
    {
      if (v101[v18] == 173)
      {
        v101[v18] = 126;
        v17 = v100;
      }

      ++v18;
    }

    while (v18 < v17);
  }

  v19 = 0;
  if (!a4 || *(v7 + 70) != 1)
  {
    goto LABEL_105;
  }

  if ((v20 = v101, a2[strlen(a2) - 1] != 63) && !strstr(v7[*(v7 + 112) + 14], "*?") && !*(v7 + 67) || strstr(v20, "\\TQ\""))
  {
LABEL_104:
    v19 = 0;
    goto LABEL_105;
  }

  if (*(v7 + 68) == 1)
  {
    if (*(v7 + 69) == 1)
    {
      v21 = 23;
    }

    else
    {
      v21 = 0;
    }

    v94 = v21;
  }

  else
  {
    v94 = 0;
  }

  v22 = heap_Calloc(*(*v7 + 8), 10, 16);
  if (!v22)
  {
LABEL_103:
    v8 = 2601525258;
    log_OutPublic(*(*v7 + 32), "GLOBALBEADAPT", 66000, 0);
    goto LABEL_104;
  }

  v23 = v22;
  __s2[4] = 0;
  *__s2 = 0;
  if (v17)
  {
    v24 = v17 - 1;
  }

  else
  {
    v24 = 0;
  }

  if (v17 >= 2u)
  {
    while (v20[v24] == 32)
    {
      if (!--v24)
      {
        goto LABEL_91;
      }
    }
  }

  if (!v24)
  {
LABEL_91:
    v8 = 0;
    v19 = 0;
    goto LABEL_176;
  }

  v95 = v7;
  v97 = v20;
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v93 = a3;
  v28 = v24;
  v29 = 10;
  do
  {
    if (v28 >= 5 && v20[v28 - 1] == 65 && v20[v28] == 92)
    {
      v30 = &v20[v28];
      v31 = -5;
      while (1)
      {
        if ((v28 + v31) < 1)
        {
          goto LABEL_61;
        }

        if (v30[v31] == 92 && v30[v31 + 1] == 47 && v30[v31 + 2] == 84)
        {
          break;
        }

        if (--v31 == -9)
        {
          goto LABEL_61;
        }
      }

      __s2[4] = 0;
      *__s2 = 0;
      v27 = -4 - v31;
      v45 = v26;
      __strncat_chk();
      LODWORD(v26) = v45;
      v37 = 0;
      v35 = 0;
      v36 = 4;
    }

    else
    {
LABEL_61:
      if (v28 >= (v27 + 3))
      {
        v32 = &v20[(v28 - (v27 + 3))];
        if (*v32 == 92 && v32[1] == 84)
        {
          v33 = v26;
          v34 = strncmp(&v20[(v28 - (v27 + 1))], __s2, v27);
          v26 = v33;
          if (!v34 && v20[v28 - 1] == 65 && v20[v28] == 92)
          {
            v35 = 0;
            v36 = 3;
            v37 = 1;
            goto LABEL_73;
          }
        }
      }

      v38 = v20[v28];
      if (v38 == 32)
      {
        goto LABEL_72;
      }

      if (v38 == 45)
      {
        v37 = 0;
        v36 = 0;
        v35 = 0;
        v25 = (v25 + 1);
        goto LABEL_73;
      }

      if (v94 == v38)
      {
LABEL_72:
        v37 = 0;
        v35 = 0;
        v25 = (v25 + 1);
        v36 = 1;
      }

      else
      {
        if (v38 != 35 && (v38 != 47 || v20[(v28 - 1)] == 92))
        {
          v35 = 0;
          goto LABEL_79;
        }

        v37 = 0;
        v35 = 1;
        v36 = 2;
      }
    }

LABEL_73:
    v39 = v25;
    if (v26 >= v29)
    {
      v40 = v26;
      v41 = heap_Realloc(*(*v95 + 8), v23, 32 * (v29 & 0x7FFF));
      if (v41)
      {
        v29 *= 2;
        v23 = v41;
        LODWORD(v26) = v40;
        goto LABEL_76;
      }

      v7 = v95;
      heap_Free(*(*v95 + 8), v23);
      a3 = v93;
      goto LABEL_103;
    }

LABEL_76:
    v42 = v23;
    v43 = v23 + 16 * v26;
    *v43 = v36;
    *(v43 + 8) = 0;
    *(v43 + 4) = 0;
    v44 = v26;
    __strncat_chk();
    *(v43 + 10) = v27;
    *(v43 + 12) = v28;
    v26 = (v44 + 1);
    if (v37)
    {
      v27 = 0;
      __s2[4] = 0;
      *__s2 = 0;
    }

    v23 = v42;
    v25 = v39;
    v20 = v97;
LABEL_79:
    --v28;
  }

  while (v28 && v25 <= 2 && !v35);
  if (v24 <= v28 || v26)
  {
    if (v26)
    {
      goto LABEL_96;
    }

    a3 = v93;
    v7 = v95;
    goto LABEL_91;
  }

  *v23 = 1;
  *(v23 + 8) = 0;
  *(v23 + 10) = 0;
  *(v23 + 12) = v28;
  LOWORD(v26) = 1;
LABEL_96:
  v46 = v26 - 1;
  v47 = v26;
  if (!v28 && v25 <= 2 && !v35)
  {
    v50 = v23 + 16 * v46;
    v7 = v95;
    v51 = 0;
    if (*v50 != 3)
    {
      *(v50 + 12) = 0;
    }

    goto LABEL_122;
  }

  if (v26 == 1)
  {
    v46 = 0;
    v48 = 1;
    v7 = v95;
  }

  else
  {
    v7 = v95;
    while (1)
    {
      v48 = *(v23 + 16 * v46) == 2;
      if (*(v23 + 16 * v46) != 2)
      {
        break;
      }

      if (!--v46)
      {
        v46 = 0;
        break;
      }
    }
  }

  v52 = v23 + 16 * v46;
  if (!*v52)
  {
LABEL_119:
    v51 = *(v52 + 12) + 1;
    goto LABEL_120;
  }

  if (*v52 != 1)
  {
    v51 = *(v52 + 12);
    goto LABEL_122;
  }

  if (v48)
  {
    v46 = 0;
    goto LABEL_119;
  }

  v87 = v23 + 16 * (v46 - 1);
  v88 = *v87;
  if (*v87 != 1)
  {
    if (v88 == 3)
    {
      LODWORD(v89) = *(v52 + 12);
      if (*(v87 + 12) - v89 == *(v87 + 10) + 4)
      {
        v51 = *(v23 + 16 * (v46 - 1) + 12) - *(v23 + 16 * (v46 - 1) + 10) - 3;
        goto LABEL_185;
      }
    }

    else if (v88 == 4)
    {
      v89 = *(v52 + 12);
      if (*(v87 + 12) - v89 == strlen((v87 + 4)) + 5)
      {
        v51 = *(v23 + 16 * (v46 - 1) + 12) - *(v23 + 16 * (v46 - 1) + 10) - 4;
LABEL_185:
        --v46;
        goto LABEL_122;
      }
    }

    else
    {
      LOWORD(v89) = *(v52 + 12);
    }

    v51 = v89 + 1;
LABEL_120:
    *(v52 + 12) = v51;
    goto LABEL_122;
  }

  if (v46)
  {
    while (1)
    {
      v90 = v23 + 16 * (v46 - 1);
      if (*v90 != 1 || *(v90 + 12) - *(v23 + 16 * v46 + 12) != 1)
      {
        break;
      }

      if (!--v46)
      {
        goto LABEL_190;
      }
    }
  }

  else
  {
LABEL_190:
    v46 = 0;
  }

  v91 = v23 + 16 * v46;
  v51 = *(v91 + 12) + 1;
  *(v91 + 12) = v51;
LABEL_122:
  v53 = v101;
  v54 = v100;
  v102 = v100;
  if (!v100)
  {
    goto LABEL_168;
  }

  __s = heap_Calloc(*(*v7 + 8), v100, 1);
  if (__s)
  {
    v55 = ~v46 | 0xFFFF0000;
    v56 = v55 + v47;
    if ((v55 + v47) >= 0 && v47 > (~v46 + v47))
    {
      v92 = v51;
      v57 = v23;
      v58 = 0;
      v96 = 16 * (v55 + v47);
      v59 = v57;
      v60 = v57 - 16 * v56 + 16 * v47;
      while (1)
      {
        v103 = 0uLL;
        v61 = (v60 + v58);
        *__s2 = *(v60 + v58 - 16);
        if (!v58)
        {
          break;
        }

        if (*__s2 == 4)
        {
          inserted = hlp_insert_question_Tag(v7, &__s, &v102, 3u, &__s2[4]);
          if ((inserted & 0x80000000) != 0)
          {
            goto LABEL_195;
          }

          if (v56 + 1 >= v47)
          {
            if ((v54 - 1) > *&__s2[12])
            {
              v106 = 0;
              v105 = 0;
              v63 = &v105;
              goto LABEL_148;
            }
          }

          else
          {
            v103 = *(v60 + v58 - 32);
            if (v103 <= 1 && !BYTE4(v103))
            {
              v66 = &v103;
              goto LABEL_145;
            }
          }
        }

        else if (*__s2 == 3)
        {
          if (v96 != v58)
          {
            v103 = *v61;
            if (v103 <= 1 && !BYTE4(v103))
            {
              inserted = hlp_insert_question_Tag(v7, &__s, &v102, 1u, &v103 + 4);
              if ((inserted & 0x80000000) != 0)
              {
LABEL_195:
                v8 = inserted;
                goto LABEL_175;
              }
            }
          }

LABEL_138:
          v63 = &__s2[4];
          v64 = v7;
          v65 = 2;
          goto LABEL_151;
        }

LABEL_152:
        v67 = *(v61 - 4);
        v68 = v60 + v58;
        v69 = *(v60 + v58 - 4);
        if (v56 >= v47 - 1)
        {
          if (v67 == 4)
          {
            ++v69;
          }

          v77 = v69;
          v79 = v7;
          v80 = v53;
          v78 = v54;
        }

        else
        {
          v70 = *(v68 - 32);
          v71 = *(v68 - 22);
          v72 = *(v68 - 20);
          if ((v67 - 3) < 2)
          {
            ++v69;
          }

          v73 = v72 - v71;
          v74 = v72 - v71 - 5;
          v75 = v73 - 4;
          if (v70 != 3)
          {
            v75 = v72;
          }

          if (v70 == 4)
          {
            v75 = v74;
          }

          v76 = v72 - 1;
          if (v70 <= 1)
          {
            v75 = v76;
          }

          v77 = v69;
          v78 = v75;
          v79 = v7;
          v80 = v53;
        }

        v81 = hlp_insert_phonemes(v79, &__s, &v102, v80, v77, v78);
        v8 = v81;
        if ((v81 & 0x80000000) == 0)
        {
          ++v56;
          v58 -= 16;
          if (v47 != v56)
          {
            continue;
          }
        }

        v23 = v59;
        v51 = v92;
        if ((v81 & 0x80000000) == 0)
        {
          goto LABEL_168;
        }

        v19 = 0;
        a3 = v93;
        goto LABEL_176;
      }

      if (__s2[4])
      {
        if (*__s2 == 4)
        {
          v63 = &__s2[4];
          v64 = v7;
          v65 = 5;
        }

        else
        {
          if (*__s2 == 3)
          {
            goto LABEL_138;
          }

          v63 = &__s2[4];
          v64 = v7;
          v65 = 4;
        }
      }

      else
      {
        v66 = __s2;
LABEL_145:
        v63 = v66 + 4;
LABEL_148:
        v64 = v7;
        v65 = 0;
      }

LABEL_151:
      v8 = hlp_insert_question_Tag(v64, &__s, &v102, v65, v63);
      if ((v8 & 0x80000000) != 0)
      {
        goto LABEL_175;
      }

      goto LABEL_152;
    }

LABEL_168:
    v82 = __s;
    v83 = strlen(__s);
    v84 = heap_Calloc(*(*v7 + 8), v83 + v51 + 1, 1);
    v19 = v84;
    a3 = v93;
    if (v84)
    {
      v85 = strncat(v84, v101, v51);
      strncat(v85, v82, v83);
      v86 = com_depes_PrepareLayersForLen(v7 + 12, (v51 + v83));
      if ((v86 & 0x80000000) == 0)
      {
        v86 = (*(v7[4] + 120))(v7[2], v7[3], 0, v19, (v51 + v83 + 1));
        if ((v86 & 0x80000000) == 0)
        {
          v86 = (*(v7[4] + 128))(v7[2], v7[3], 0, &v101, &v100);
        }
      }

      v8 = v86;
    }

    else
    {
      v8 = 2601525258;
      log_OutPublic(*(*v7 + 32), "GLOBALBEADAPT", 66000, 0);
    }

    goto LABEL_176;
  }

  v59 = v23;
  v8 = 2601525258;
LABEL_175:
  v19 = 0;
  a3 = v93;
  v23 = v59;
LABEL_176:
  heap_Free(*(*v7 + 8), v23);
LABEL_105:
  if (__s)
  {
    heap_Free(*(*v7 + 8), __s);
  }

  if (v19)
  {
    heap_Free(*(*v7 + 8), v19);
  }

  *a3 = v101;
  return v8;
}

uint64_t globalbeadapt_SplitWordRecordsWithSpecialChar(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5, const char *a6)
{
  v85[0] = 0;
  v83 = 0;
  v84 = 0;
  v82 = 0;
  v80 = 0;
  __s = 0;
  *v78 = 0;
  v79 = 0;
  v76 = 0;
  v77 = 0;
  v74 = 0;
  v75 = 0;
  v72 = 0;
  v73 = 0;
  __strcpy_chk();
  __strcat_chk();
  v68 = 0;
  v69 = 0;
  v70 = 0;
  v71 = 0;
  v12 = hlp_dynstr_init(*a1, &v68, 0x20u, 16);
  if ((v12 & 0x80000000) != 0 || (v12 = hlp_dynstr_init(*a1, &v70, 0x20u, 16), (v12 & 0x80000000) != 0) || (v12 = (*(a1[1] + 104))(a2, a3, 2, a4, v85), (v12 & 0x80000000) != 0))
  {
    v58 = v12;
    v14 = 0;
    goto LABEL_130;
  }

  v64 = a4;
  v65 = strlen(a5) + 1;
  v13 = heap_Alloc(*(*a1 + 8), v65);
  if (!v13)
  {
    v58 = 2601525258;
    log_OutPublic(*(*a1 + 32), "GLOBALBEADAPT", 66000, 0);
    return v58;
  }

  v14 = v13;
  while (1)
  {
    v15 = a1[1];
    if (!v85[0])
    {
      v61 = *(v15 + 160);
      v62 = strlen(a5);
      v16 = v61(a2, a3, v64, 0, (v62 + 1), a5, &v83);
LABEL_139:
      v58 = v16;
      goto LABEL_130;
    }

    v16 = (*(v15 + 168))(a2, a3);
    if ((v16 & 0x80000000) != 0)
    {
      goto LABEL_139;
    }

    v17 = v84 > 0xA || ((1 << v84) & 0x610) == 0;
    if (!v17)
    {
      break;
    }

LABEL_125:
    v58 = (*(a1[1] + 120))(a2, a3, v85[0], v85);
    if ((v58 & 0x80000000) != 0)
    {
      goto LABEL_130;
    }
  }

  v16 = (*(a1[1] + 168))(a2, a3, v85[0], 1, 1, &v75 + 2, &v83 + 2);
  if ((v16 & 0x80000000) != 0)
  {
    goto LABEL_139;
  }

  v16 = (*(a1[1] + 168))(a2, a3, v85[0], 2, 1, &v75, &v83 + 2);
  if ((v16 & 0x80000000) != 0)
  {
    goto LABEL_139;
  }

  v16 = (*(a1[1] + 176))(a2, a3, v85[0], 3, &v82, &v83 + 2);
  if ((v16 & 0x80000000) != 0)
  {
    goto LABEL_139;
  }

  v18 = v82;
  if (v82)
  {
    v19 = 0;
    do
    {
      ++v19;
      v20 = strchr(v18, 23);
      v18 = v20 + 1;
    }

    while (v20);
  }

  else
  {
    v19 = 0;
  }

  v80 = &a5[HIWORD(v75)];
  __s = 0;
  v21 = (v75 - HIWORD(v75));
  strncpy(v14, v80, v21);
  v22 = 0;
  v14[v21] = 0;
  v23 = v14;
  do
  {
    __s = v23;
    ++v22;
    hlp_SearchMorph(a6, v67, &__s);
    v23 = __s + 1;
  }

  while (__s);
  v16 = (*(a1[1] + 176))(a2, a3, v85[0], 5, &v79, &v83 + 2);
  if ((v16 & 0x80000000) != 0)
  {
    goto LABEL_139;
  }

  v16 = (*(a1[1] + 168))(a2, a3, v85[0], 7, 1, &v74 + 2, &v83 + 2);
  if ((v16 & 0x80000000) != 0)
  {
    goto LABEL_139;
  }

  HIWORD(v73) = 0;
  *v78 = 0;
  if (((*(a1[1] + 184))(a2, a3, v85[0], 14, &v73 + 2) & 0x80000000) == 0 && HIWORD(v73) == 1)
  {
    v16 = (*(a1[1] + 176))(a2, a3, v85[0], 14, v78, &v83 + 2);
    if ((v16 & 0x80000000) != 0)
    {
      goto LABEL_139;
    }
  }

  HIWORD(v73) = 0;
  v77 = 0;
  if (((*(a1[1] + 184))(a2, a3, v85[0], 9, &v73 + 2) & 0x80000000) == 0 && HIWORD(v73) == 1)
  {
    v16 = (*(a1[1] + 176))(a2, a3, v85[0], 9, &v77, &v83 + 2);
    if ((v16 & 0x80000000) != 0)
    {
      goto LABEL_139;
    }
  }

  LOWORD(v73) = 0;
  LOWORD(v74) = 0;
  if (((*(a1[1] + 184))(a2, a3, v85[0], 8, &v73) & 0x80000000) == 0 && v73 == 1)
  {
    v16 = (*(a1[1] + 168))(a2, a3, v85[0], 8, 1, &v74, &v83 + 2);
    if ((v16 & 0x80000000) != 0)
    {
      goto LABEL_139;
    }
  }

  HIWORD(v72) = 0;
  if (((*(a1[1] + 184))(a2, a3, v85[0], 13, &v72 + 2) & 0x80000000) == 0 && HIWORD(v72) == 1)
  {
    v16 = (*(a1[1] + 176))(a2, a3, v85[0], 13, &v76, &v83 + 2);
    if ((v16 & 0x80000000) != 0)
    {
      goto LABEL_139;
    }
  }

  if (v19 < 2u || v22 < v19)
  {
    v27 = v75;
LABEL_115:
    if (HIWORD(v75) <= 1u)
    {
      v55 = 1;
    }

    else
    {
      v55 = HIWORD(v75);
    }

    if (v55 < v27)
    {
      v56 = &a5[v55];
      v57 = v55 + 1;
      do
      {
        if (*v56 == 95 && !memchr(";:,", *(v56 - 1), 4uLL))
        {
          *v56 = 45;
        }

        ++v56;
        v17 = v27 == v57++;
      }

      while (!v17);
    }

    goto LABEL_125;
  }

  if (*v78)
  {
    v16 = hlp_dynstr_add(*a1, &v68, *v78, 2);
    if ((v16 & 0x80000000) != 0)
    {
      goto LABEL_139;
    }

    v16 = hlp_dynstr_add(*a1, &v70, *v78, 2);
    if ((v16 & 0x80000000) != 0)
    {
      goto LABEL_139;
    }

    if (!hlp_NLUStrExist(*v78, "S_PUNC"))
    {
      hlp_NLUStrRemoveKeyVal(v70, "S_PUNC");
      hlp_NLUStrRemoveKeyVal(v68, "S_PUNC");
    }

    if (!hlp_NLUStrExist(*v78, "PUNC"))
    {
      hlp_NLUStrRemoveKeyVal(*v78, "PUNC");
      hlp_NLUStrRemoveKeyVal(v70, "PUNC");
    }

    if (!hlp_NLUStrExist(*v78, "BNDSHAPE"))
    {
      hlp_NLUStrRemoveKeyVal(*v78, "BNDSHAPE");
      hlp_NLUStrRemoveKeyVal(v70, "BNDSHAPE");
    }

    if (!hlp_NLUStrExist(*v78, "E_PUNC"))
    {
      hlp_NLUStrRemoveKeyVal(*v78, "E_PUNC");
      hlp_NLUStrRemoveKeyVal(v70, "E_PUNC");
    }
  }

  v24 = v82;
  v25 = strlen(v82) + 1;
  if (v65 >= v25)
  {
LABEL_53:
    v28 = strcpy(v14, v24);
    v29 = strchr(v28, 23);
    __s = v29;
    if (v29)
    {
      *v29 = 0;
      __s = v29 + 1;
    }

    v30 = HIWORD(v75);
    v80 = &a5[HIWORD(v75)];
    v31 = a5[v75];
    a5[v75] = 0;
    v32 = hlp_SearchMorph(a6, v67, &v80);
    v33 = v80 - a5;
    LOWORD(v75) = v80 - a5;
    if (v32 && v30 < v33)
    {
      do
      {
        if (a5[v30] == 95)
        {
          a5[v30] = 45;
        }

        ++v30;
      }

      while (v30 < v33);
    }

    HIWORD(v75) = v33 + 1;
    v16 = (*(a1[1] + 160))(a2, a3, v85[0], 2, 1, &v75, &v83);
    if ((v16 & 0x80000000) != 0)
    {
      goto LABEL_139;
    }

    v63 = v31;
    v34 = strlen(v14);
    v16 = (*(a1[1] + 160))(a2, a3, v85[0], 3, (v34 + 1), v14, &v83);
    if ((v16 & 0x80000000) != 0)
    {
      goto LABEL_139;
    }

    if (v73 == 1)
    {
      v16 = (*(a1[1] + 160))(a2, a3, v85[0], 8, 1, &v72, &v83);
      if ((v16 & 0x80000000) != 0)
      {
        goto LABEL_139;
      }
    }

    if (HIWORD(v72) == 1)
    {
      if (*v76 == 48 && !v76[1])
      {
        v59 = strlen(v76);
        v16 = (*(a1[1] + 160))(a2, a3, v85[0], 13, (v59 + 1), v76, &v83);
        if ((v16 & 0x80000000) != 0)
        {
          goto LABEL_139;
        }
      }

      else
      {
        v16 = (*(a1[1] + 160))(a2, a3, v85[0], 13, 2, "1", &v83);
        if ((v16 & 0x80000000) != 0)
        {
          goto LABEL_139;
        }
      }
    }

    v35 = __s;
    v36 = strchr(__s, 23);
    if (v36)
    {
      v37 = v36;
      v66 = v70;
      do
      {
        *v37 = 0;
        v16 = (*(a1[1] + 80))(a2, a3, v85[0], v85);
        if ((v16 & 0x80000000) != 0)
        {
          goto LABEL_139;
        }

        v16 = (*(a1[1] + 160))(a2, a3, v85[0], 0, 1, &v84, &v83);
        if ((v16 & 0x80000000) != 0)
        {
          goto LABEL_139;
        }

        v16 = (*(a1[1] + 160))(a2, a3, v85[0], 1, 1, &v75 + 2, &v83);
        if ((v16 & 0x80000000) != 0)
        {
          goto LABEL_139;
        }

        v38 = HIWORD(v75);
        v80 = &a5[HIWORD(v75)];
        v39 = hlp_SearchMorph(a6, v67, &v80);
        v40 = v80 - a5;
        LOWORD(v75) = v80 - a5;
        if (v39 && v38 < v40)
        {
          do
          {
            if (a5[v38] == 95)
            {
              a5[v38] = 45;
            }

            ++v38;
          }

          while (v38 < v40);
        }

        HIWORD(v75) = v40 + 1;
        v16 = (*(a1[1] + 160))(a2, a3, v85[0], 2, 1, &v75, &v83);
        if ((v16 & 0x80000000) != 0)
        {
          goto LABEL_139;
        }

        v41 = strlen(v35);
        v16 = (*(a1[1] + 160))(a2, a3, v85[0], 3, (v41 + 1), v35, &v83);
        if ((v16 & 0x80000000) != 0)
        {
          goto LABEL_139;
        }

        v42 = strlen(v79);
        v16 = (*(a1[1] + 160))(a2, a3, v85[0], 5, (v42 + 1), v79, &v83);
        if ((v16 & 0x80000000) != 0)
        {
          goto LABEL_139;
        }

        v16 = (*(a1[1] + 160))(a2, a3, v85[0], 7, 1, &v74 + 2, &v83);
        if ((v16 & 0x80000000) != 0)
        {
          goto LABEL_139;
        }

        if (v73 == 1)
        {
          v16 = (*(a1[1] + 160))(a2, a3, v85[0], 8, 1, &v72, &v83);
          if ((v16 & 0x80000000) != 0)
          {
            goto LABEL_139;
          }
        }

        if (HIWORD(v72) == 1)
        {
          if (*v76 == 48 && !v76[1])
          {
            v45 = strlen(v76);
            v16 = (*(a1[1] + 160))(a2, a3, v85[0], 13, (v45 + 1), v76, &v83);
            if ((v16 & 0x80000000) != 0)
            {
              goto LABEL_139;
            }
          }

          else
          {
            v16 = (*(a1[1] + 160))(a2, a3, v85[0], 13, 2, "1", &v83);
            if ((v16 & 0x80000000) != 0)
            {
              goto LABEL_139;
            }
          }
        }

        if (v66)
        {
          v43 = strlen(v66);
          v16 = (*(a1[1] + 160))(a2, a3, v85[0], 14, (v43 + 1), v66, &v83);
          if ((v16 & 0x80000000) != 0)
          {
            goto LABEL_139;
          }
        }

        if (v77)
        {
          v44 = strlen(v77);
          v16 = (*(a1[1] + 160))(a2, a3, v85[0], 9, (v44 + 1), v77, &v83);
          if ((v16 & 0x80000000) != 0)
          {
            goto LABEL_139;
          }
        }

        v35 = v37 + 1;
        __s = v37 + 1;
        v37 = strchr(v37 + 1, 23);
      }

      while (v37);
    }

    v16 = (*(a1[1] + 80))(a2, a3, v85[0], v85);
    if ((v16 & 0x80000000) != 0)
    {
      goto LABEL_139;
    }

    v16 = (*(a1[1] + 160))(a2, a3, v85[0], 0, 1, &v84, &v83);
    if ((v16 & 0x80000000) != 0)
    {
      goto LABEL_139;
    }

    v16 = (*(a1[1] + 160))(a2, a3, v85[0], 1, 1, &v75 + 2, &v83);
    if ((v16 & 0x80000000) != 0)
    {
      goto LABEL_139;
    }

    v46 = HIWORD(v75);
    v47 = &a5[HIWORD(v75)];
    v80 = v47;
    v48 = strchr(v47, 32);
    v49 = v48 ? v48 - a5 : v46 + strlen(v47);
    LOWORD(v75) = v49;
    v16 = (*(a1[1] + 160))(a2, a3, v85[0], 2, 1, &v75, &v83);
    if ((v16 & 0x80000000) != 0)
    {
      goto LABEL_139;
    }

    v50 = strlen(v35);
    v16 = (*(a1[1] + 160))(a2, a3, v85[0], 3, (v50 + 1), v35, &v83);
    if ((v16 & 0x80000000) != 0)
    {
      goto LABEL_139;
    }

    v51 = strlen(v79);
    v16 = (*(a1[1] + 160))(a2, a3, v85[0], 5, (v51 + 1), v79, &v83);
    if ((v16 & 0x80000000) != 0)
    {
      goto LABEL_139;
    }

    v16 = (*(a1[1] + 160))(a2, a3, v85[0], 7, 1, &v74 + 2, &v83);
    if ((v16 & 0x80000000) != 0)
    {
      goto LABEL_139;
    }

    if (v73 == 1)
    {
      v16 = (*(a1[1] + 160))(a2, a3, v85[0], 8, 1, &v74, &v83);
      if ((v16 & 0x80000000) != 0)
      {
        goto LABEL_139;
      }
    }

    if (HIWORD(v72) == 1)
    {
      v52 = strlen(v76);
      v16 = (*(a1[1] + 160))(a2, a3, v85[0], 13, (v52 + 1), v76, &v83);
      if ((v16 & 0x80000000) != 0)
      {
        goto LABEL_139;
      }
    }

    if (v68)
    {
      v53 = strlen(v68);
      v16 = (*(a1[1] + 160))(a2, a3, v85[0], 14, (v53 + 1), v68, &v83);
      if ((v16 & 0x80000000) != 0)
      {
        goto LABEL_139;
      }
    }

    if (v77)
    {
      v54 = strlen(v77);
      v16 = (*(a1[1] + 160))(a2, a3, v85[0], 9, (v54 + 1), v77, &v83);
      if ((v16 & 0x80000000) != 0)
      {
        goto LABEL_139;
      }
    }

    v27 = v75;
    a5[v75] = v63;
    goto LABEL_115;
  }

  v26 = heap_Realloc(*(*a1 + 8), v14, v25);
  __s = v26;
  if (v26)
  {
    v24 = v82;
    v14 = v26;
    v65 = v25;
    goto LABEL_53;
  }

  v58 = 2601525258;
  log_OutPublic(*(*a1 + 32), "GLOBALBEADAPT", 66000, 0);
LABEL_130:
  if (v68)
  {
    heap_Free(*(*a1 + 8), v68);
    v68 = 0;
  }

  LODWORD(v69) = 0;
  if (v70)
  {
    heap_Free(*(*a1 + 8), v70);
    v70 = 0;
  }

  LODWORD(v71) = 0;
  if (v14)
  {
    heap_Free(*(*a1 + 8), v14);
  }

  return v58;
}

uint64_t hlp_SearchMorph(const char *a1, const char *a2, char **a3)
{
  v4 = *a3;
  if (*a1 && (v6 = strstr(*a3, a2)) != 0)
  {
    v7 = &v6[strlen(a1)];
    v8 = 1;
  }

  else
  {
    v7 = strchr(v4, 95);
    v8 = 0;
  }

  *a3 = v7;
  return v8;
}

uint64_t globalbeadapt_RemoveSpecialChar(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25 = 0;
  v23 = 0;
  v24 = 0;
  __s = 0;
  v7 = (*(a1[1] + 104))(a2, a3, 2, a4, &v25);
  if ((v7 & 0x80000000) == 0)
  {
    v8 = v25;
    if (v25)
    {
      v9 = 0;
      v10 = 0;
      while (1)
      {
        v11 = (*(a1[1] + 168))(a2, a3, v8, 0, 1, &v24, &v23 + 2);
        if ((v11 & 0x80000000) != 0)
        {
          break;
        }

        if (v24 <= 0xA && ((1 << v24) & 0x610) != 0)
        {
          v11 = (*(a1[1] + 176))(a2, a3, v25, 3, &__s, &v23 + 2);
          if ((v11 & 0x80000000) != 0)
          {
            break;
          }

          v13 = __s;
          v14 = strlen(__s) + 1;
          if (v9 < v14)
          {
            v15 = heap_Realloc(*(*a1 + 8), v10, v14);
            if (!v15)
            {
              log_OutPublic(*(*a1 + 32), "GLOBALBEADAPT", 66000, 0);
              v7 = 2601525258;
              if (!v10)
              {
                return v7;
              }

LABEL_22:
              heap_Free(*(*a1 + 8), v10);
              return v7;
            }

            v13 = __s;
            v10 = v15;
            v9 = v14;
          }

          v16 = strcpy(v10, v13);
          v17 = strchr(v16, 23);
          if (v17)
          {
            v18 = v17;
            do
            {
              v19 = strlen(v18);
              memmove(v18, v18 + 1, v19);
              v18 = strchr(v18, 23);
            }

            while (v18);
          }

          v20 = strlen(v10);
          v11 = (*(a1[1] + 160))(a2, a3, v25, 3, (v20 + 1), v10, &v23);
          if ((v11 & 0x80000000) != 0)
          {
            break;
          }
        }

        v7 = (*(a1[1] + 120))(a2, a3, v25, &v25);
        if ((v7 & 0x80000000) == 0)
        {
          v8 = v25;
          if (v25)
          {
            continue;
          }
        }

        goto LABEL_21;
      }

      v7 = v11;
LABEL_21:
      if (!v10)
      {
        return v7;
      }

      goto LABEL_22;
    }
  }

  return v7;
}

void *globalbeadapt_DeInit_SpecialSymbolsFromPhonmap(void *result)
{
  v1 = result;
  v2 = *(result + 142);
  if (*(result + 142) && result[36])
  {
    v3 = 0;
    do
    {
      v4 = *(v1[36] + 8 * v3);
      if (v4)
      {
        heap_Free(*(*v1 + 8), v4);
        v2 = *(v1 + 142);
      }

      ++v3;
    }

    while (v3 < v2);
    result = heap_Free(*(*v1 + 8), v1[36]);
  }

  *(v1 + 142) = 0;
  v1[36] = 0;
  return result;
}

uint64_t globalbeadapt_Init_SpecialSymbolsFromPhonmap(uint64_t a1)
{
  v18 = 0;
  v17 = 0;
  globalbeadapt_DeInit_SpecialSymbolsFromPhonmap(a1);
  Str = paramc_ParamGetStr(*(*a1 + 40), "langcode", &v17);
  if ((Str & 0x80000000) != 0)
  {
    goto LABEL_30;
  }

  if (!*(a1 + 80))
  {
    return Str;
  }

  NullHandle = safeh_GetNullHandle();
  if (safeh_HandlesEqual(*(a1 + 64), *(a1 + 72), NullHandle, v4))
  {
    return Str;
  }

  v18 = 0;
  v5 = (*(*(a1 + 80) + 144))(*(a1 + 64), *(a1 + 72), a1 + 284, &v18, 0);
  if ((v5 & 0x80000000) != 0)
  {
    Str = v5;
LABEL_30:
    globalbeadapt_DeInit_SpecialSymbolsFromPhonmap(a1);
    return Str;
  }

  v6 = heap_Alloc(*(*a1 + 8), v18 + 1);
  if (!v6)
  {
    Str = 2601525258;
    log_OutPublic(*(*a1 + 32), "GLOBALBEADAPT", 64000, 0);
    goto LABEL_30;
  }

  v7 = v6;
  Str = (*(*(a1 + 80) + 144))(*(a1 + 64), *(a1 + 72), a1 + 284, &v18, v6);
  if ((Str & 0x80000000) == 0)
  {
    v8 = heap_Calloc(*(*a1 + 8), *(a1 + 284), 8);
    *(a1 + 288) = v8;
    if (v8)
    {
      if (*v7)
      {
        v9 = 0;
        v10 = v7;
        while (v9 < *(a1 + 284))
        {
          v11 = strchr(v10, 44);
          v12 = v11;
          if (v11)
          {
            *v11 = 0;
          }

          if (strlen(v10) != 3)
          {
            Str = 2601525248;
            break;
          }

          v18 = 0;
          v13 = (*(*(a1 + 80) + 152))(*(a1 + 64), *(a1 + 72), 2, "alphabet", &v18, 0, v10);
          if ((v13 & 0x80000000) != 0)
          {
            Str = 0;
            v18 = 0;
            v14 = 4;
          }

          else
          {
            Str = v13;
            v14 = v18 + 4;
          }

          *(*(a1 + 288) + 8 * v9) = heap_Calloc(*(*a1 + 8), 1, v14);
          if (!*(*(a1 + 288) + 8 * v9))
          {
            goto LABEL_28;
          }

          if (LH_stricmp(v17, v10))
          {
            v15 = __tolower(*v10);
          }

          else
          {
            v15 = 126;
          }

          **(*(a1 + 288) + 8 * v9) = v15;
          strcpy((*(*(a1 + 288) + 8 * v9) + 1), ": ");
          if (!v18 || (Str = (*(*(a1 + 80) + 152))(*(a1 + 64), *(a1 + 72), 2, "alphabet", &v18, *(*(a1 + 288) + 8 * v9) + 3, v10), (Str & 0x80000000) == 0))
          {
            if (v12)
            {
              v10 = v12 + 1;
              ++v9;
              if (*v7)
              {
                continue;
              }
            }
          }

          break;
        }
      }
    }

    else
    {
LABEL_28:
      Str = 2601525258;
      log_OutPublic(*(*a1 + 32), "GLOBALBEADAPT", 64000, 0, v17);
    }
  }

  heap_Free(*(*a1 + 8), v7);
  if ((Str & 0x80000000) != 0)
  {
    goto LABEL_30;
  }

  return Str;
}

uint64_t hlp_insert_question_Tag(uint64_t a1, char **a2, unsigned int *a3, unsigned int a4, char *__s)
{
  v16 = *MEMORY[0x1E69E9840];
  strlen(__s);
  __sa[0] = 0;
  if (a4 > 1)
  {
    if (a4 == 4)
    {
      __strncat_chk();
      __strncat_chk();
    }

    goto LABEL_5;
  }

  if (a4 > 1)
  {
LABEL_5:
    __strncat_chk();
    __strncat_chk();
  }

  __strncat_chk();
  v9 = *a2;
  v10 = strlen(*a2);
  v11 = strlen(__sa);
  v12 = v11 + v10;
  if (v12 < *a3 || (v13 = 2 * v12 * *a3, *a3 = v13, v9 = heap_Realloc(*(*a1 + 8), v9, v13), (*a2 = v9) != 0))
  {
    strncat(v9, __sa, v11);
    return 0;
  }

  else
  {
    log_OutPublic(*(*a1 + 32), "GLOBALBEADAPT", 66000, 0);
    return 2601525258;
  }
}

uint64_t hlp_insert_phonemes(uint64_t a1, char **a2, unsigned int *a3, uint64_t a4, unsigned int a5, unsigned int a6)
{
  v6 = a6 - a5;
  if (a6 < a5)
  {
    return 0;
  }

  v13 = v6 + 1;
  v14 = *a2;
  v15 = strlen(*a2) + (v6 + 1);
  if (v15 < *a3 || (v16 = 2 * v15 * *a3, *a3 = v16, v14 = heap_Realloc(*(*a1 + 8), v14, v16), (*a2 = v14) != 0))
  {
    strncat(v14, (a4 + a5), v13);
    return 0;
  }

  else
  {
    log_OutPublic(*(*a1 + 32), "GLOBALBEADAPT", 66000, 0);
    return 2601525258;
  }
}

BOOL marker_IsReadoutControlDefaultArg(int a1, unsigned int a2, uint64_t a3, int a4)
{
  result = 0;
  if (a1 > 30)
  {
    if (a1 != 31)
    {
      if (a1 != 36)
      {
        return result;
      }

      goto LABEL_7;
    }

    return a2 == a4;
  }

  else
  {
    if (a1 != 7)
    {
      if (a1 != 21)
      {
        return result;
      }

LABEL_7:
      if (!a3)
      {
        return 0;
      }

      v6 = (a3 + a2);
      MarkerArgStr = marker_getMarkerArgStr(1u);
      return strcmp(v6, MarkerArgStr) == 0;
    }

    return a2 == 15;
  }
}

unint64_t marker_GetArgOfLastOfType(uint64_t a1, unsigned int a2, unsigned int a3, int a4)
{
  v5 = a1 + (a2 << 6);
  v6 = *(v5 + 20);
  result = *(v5 + 40);
  if (v6 == 7)
  {
    v8 = result == 43;
    if (a3 > (a2 + 1))
    {
      v9 = result == 43;
      v10 = (a1 + ((a2 + 1) << 6) + 20);
      v11 = (a2 + 1) + 1;
      do
      {
        if (*v10 == 7)
        {
          v12 = v10[5];
          v13 = !v9;
          if (v9)
          {
            v14 = result & 0xFFFFFFFF00000000 | 0xF;
          }

          else
          {
            v14 = result;
          }

          v15 = v13;
          if (v12 == 43)
          {
            result = v14;
          }

          else
          {
            result = result & 0xFFFFFFFF00000000 | v12;
          }

          if (v12 == 43)
          {
            v9 = v15;
          }

          else
          {
            v9 = 0;
          }

          if (a4 == 1)
          {
            *v10 = 999;
          }
        }

        v10 += 16;
        v13 = a3 == v11++;
      }

      while (!v13);
      v8 = v9;
    }

    if (v8)
    {
      return result & 0xFFFFFFFF00000000 | 0xF;
    }
  }

  else if (a3 > (a2 + 1))
  {
    v16 = (a2 + 1);
    v17 = a1 + (v16 << 6) + 20;
    v18 = v16 + 1;
    do
    {
      if (*v17 == v6)
      {
        result = *(v17 + 20);
        if (a4 == 1)
        {
          *v17 = 999;
        }
      }

      v17 += 64;
      v13 = a3 == v18++;
    }

    while (!v13);
  }

  return result;
}

uint64_t marker_CheckForEmptyMarkers(uint64_t a1, int a2, uint64_t a3, unsigned int a4, uint64_t a5, unsigned int a6, unsigned int a7)
{
  if (a4 >= 2)
  {
    v12 = a7;
    v13 = a6;
    v22 = (a5 + 28);
    v14 = 1;
    while (1)
    {
      v15 = a3 + (v14 << 6);
      v16 = *(v15 + 20);
      if (v16 != 999 && v16 != 0x4000)
      {
        if (*v15 == 1)
        {
          if (!a6)
          {
            v17 = v16 > 0x24 || ((1 << v16) & 0x1080200080) == 0;
            if (!v17 && !marker_IsReadoutControlDefaultArg(v16, *(v15 + 40), a1, a2) && *v15 != 1)
            {
              return 0;
            }
          }
        }

        else
        {
          if (!a6)
          {
            goto LABEL_21;
          }

          v18 = 0;
          v19 = v22;
          while (v18 <= v12 || v16 != *(v19 - 2) || *(v15 + 24) != *(v19 - 1) || *(v15 + 28) != *v19)
          {
            ++v18;
            v19 += 16;
            if (v18 >= v13)
            {
              goto LABEL_21;
            }
          }

          if (!*(v19 - 7))
          {
LABEL_21:
            v20 = 0;
            if (v16 > 0x24 || ((1 << v16) & 0x1080200080) == 0)
            {
              return v20;
            }

            if (!marker_IsReadoutControlDefaultArg(v16, *(v15 + 40), a1, a2))
            {
              return 0;
            }
          }
        }
      }

      if (a4 <= ++v14)
      {
        return 1;
      }
    }
  }

  return 1;
}

uint64_t marker_TraceTxt(int a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v19 = 0;
  if (!a3)
  {
    return 0;
  }

  v8 = a6;
  v12 = datac_RequestBlock(a5, a6, 1u, &v19);
  if ((v12 & 0x80000000) == 0)
  {
    v13 = *(v19 + 16);
    if (*(v19 + 16))
    {
      if (v13 < 0x400)
      {
        v14 = heap_Calloc(*(a4 + 8), 1, v13 + 2);
        if (v14)
        {
          v15 = v14;
          v16 = strncpy(v14, *(v19 + 8), *(v19 + 16));
          v16[*(v19 + 16)] = 0;
          v17 = "";
          if (*(v19 + 16))
          {
            v17 = v15;
          }

          log_OutText(*(a4 + 32), a2, 5, 0, "(Txt) (%s) (tag=%d) len=%d (UTF8) %s", a7, v8, *(v19 + 16), v17);
          heap_Free(*(a4 + 8), v15);
        }

        else
        {
          return (a1 << 20) | 0x8000200A;
        }
      }

      else
      {
        log_OutText(*(a4 + 32), a2, 5, 0, "(Txt) (%s) (tag=%d) len=%d (TXT TOO LONG)");
      }
    }

    else
    {
      log_OutText(*(a4 + 32), a2, 5, 0, "(Txt) (%s) (tag=%d) len=%d (EMPTY TXT)");
    }
  }

  return v12;
}

uint64_t marker_TraceMrk(int a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7, int a8, uint64_t a9, unsigned __int16 a10)
{
  v57 = *MEMORY[0x1E69E9840];
  v55 = 0;
  if (!a3)
  {
    return 0;
  }

  v10 = a6;
  v15 = a9;
  log_OutText(*(a4 + 32), a2, 5, 0, "(Mrk) (%s) (tag=%d)", a7, a6);
  if (a9)
  {
    v16 = 0;
    v50 = 0;
    v17 = a10;
    if (!a10)
    {
      return v16;
    }
  }

  else
  {
    v16 = datac_RequestBlock(a5, v10, 1u, &v55);
    v50 = *(v55 + 8);
    v17 = *(v55 + 16);
    if (!*(v55 + 16))
    {
      return v16;
    }
  }

  v45 = a1;
  v46 = v16;
  v18 = 0;
  __s = 0;
  v51 = v17;
  do
  {
    if (v15)
    {
      v56[0] = 0;
      v19 = v15 + (v18 << 6);
      v20 = *(v19 + 40);
      v22 = *(v19 + 20);
      v21 = *(v19 + 24);
      v54 = *(v19 + 28);
      v52 = *(v19 + 36);
      v53 = *(v19 + 32);
      if (v22 == 32)
      {
        v23 = 0;
        if (v20 == 1)
        {
          v24 = 49;
        }

        else
        {
          v24 = 48;
        }

        v56[0] = v24;
        v56[1] = 0;
        v22 = 32;
LABEL_29:
        String = marker_getString(v22);
        goto LABEL_30;
      }

      v23 = 0;
    }

    else
    {
      v25 = v50 + (v18 << 6);
      v22 = *(v25 + 20);
      v21 = *(v25 + 24);
      v54 = *(v25 + 28);
      v53 = *(v25 + 32);
      v52 = *(v25 + 36);
      v23 = *(v25 + 56);
      v20 = *(v25 + 40);
      if (*(v25 + 48))
      {
        v26 = strlen(*(v25 + 48));
        if ((v26 & 0xFFE0) != 0)
        {
          strcpy(v56, "EXTSTR TOO LONG");
        }

        else
        {
          v27 = *(v25 + 24);
          v28 = v26 & 0x1F;
          __strncpy_chk();
          v56[v28] = 0;
          v21 = v27;
        }
      }

      else
      {
        v56[0] = 0;
      }

      if (*(v25 + 20) == 32)
      {
        if (*(v25 + 40) == 1)
        {
          v29 = 49;
        }

        else
        {
          v29 = 48;
        }

        v56[0] = v29;
        v56[1] = 0;
      }

      v15 = a9;
    }

    if (v22 != 7)
    {
      goto LABEL_29;
    }

    if (v20 == 43)
    {
      v22 = 7;
      String = "UTOI_PHONEME_MARKER";
    }

    else
    {
      v36 = &off_1E81A4B98;
      v37 = 19;
      while (*(v36 - 2) != v20)
      {
        v36 += 2;
        if (!--v37)
        {
          v22 = 7;
          String = "UTOI_UNDEF";
          goto LABEL_30;
        }
      }

      String = *v36;
      v22 = 7;
    }

LABEL_30:
    if (marker_hasNonConstCharPtrArg(v22) && v22 <= 0x27 && ((1 << v22) & 0xB400200000) != 0 && a8 == 1 && v20)
    {
      v47 = v21;
      v31 = strlen(v20);
      v32 = v31;
      if (v31 >= 0x401uLL)
      {
        v33 = 1024;
      }

      else
      {
        v33 = v31;
      }

      if (__s)
      {
        if (strlen(__s) >= v33)
        {
          v34 = __s;
        }

        else
        {
          v34 = heap_Realloc(*(a4 + 8), __s, v33 + 1);
          if (!v34)
          {
            return (v45 << 20) | 0x8000200A;
          }
        }
      }

      else
      {
        v34 = heap_Calloc(*(a4 + 8), 1, v33 + 1);
        if (!v34)
        {
          return (v45 << 20) | 0x8000200A;
        }
      }

      v15 = a9;
      __s = v34;
      if (v32 > 0x400)
      {
        strcpy(v34, "ARGSTR TOO LONG");
      }

      else
      {
        v34 = strncpy(v34, v20, v32);
        v34[v32] = 0;
      }

      v35 = v34;
      v21 = v47;
    }

    else
    {
      v35 = "";
    }

    v38 = *(a4 + 32);
    if (v15)
    {
      log_OutText(v38, a2, 5, 0, "[%d] Markers %s[type=%5d %s]  Ref (%u,%u) Cur(%u,%u) %s Ext=%d %s", v18, "", v22, String, v21, v54, v53, v52, v35, v23, v56);
    }

    else
    {
      v39 = v21;
      v40 = v50 + (v18 << 6);
      v41 = "[INT] ";
      if (*v40 != 1)
      {
        v41 = "";
      }

      log_OutText(v38, a2, 5, 0, "[%d] Markers %s[type=%5d %s]  Ref (%u,%u) Cur(%u,%u) %s Ext=%d %s", v18, v41, v22, String, v39, v54, v53, v52, v35, v23, v56);
      if (*(v40 + 16))
      {
        v42 = 0;
        v43 = 0;
        do
        {
          log_OutText(*(a4 + 32), a2, 5, 0, "[UTOI] Offsets[%d] %u,%u", v43++, *(*(v40 + 8) + v42), *(*(v40 + 8) + v42 + 4));
          v42 += 8;
        }

        while (v43 < *(v40 + 16));
      }
    }

    ++v18;
  }

  while (v18 != v51);
  v16 = v46;
  if (__s)
  {
    heap_Free(*(a4 + 8), __s);
  }

  return v16;
}

uint64_t marker_loc_FilterSyncMarkers(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 < 2)
  {
    v5 = 1;
  }

  else
  {
    v2 = *(a1 + 8);
    v3 = (v2 + 84);
    v4 = 1;
    v5 = 1;
    v6 = (v2 + 84);
    do
    {
      v7 = *v6;
      v6 += 16;
      if (v7 != 0x4000)
      {
        v8 = (v3 - 5);
        v9 = (v2 + (v5 << 6));
        v10 = *v8;
        v11 = v8[1];
        v12 = v8[3];
        v9[2] = v8[2];
        v9[3] = v12;
        *v9 = v10;
        v9[1] = v11;
        ++v5;
        v1 = *(a1 + 16);
      }

      ++v4;
      v3 = v6;
    }

    while (v4 < v1);
  }

  *(a1 + 16) = v5;
  return 0;
}

uint64_t ppParam_ClearReadOutParameters(uint64_t a1)
{
  v2 = 0;
  while (1)
  {
    result = paramc_ParamRemove(*(a1 + 40), *(&aTAG2PARAM + v2 + 8));
    if ((result & 0x80000000) != 0 && (result & 0x1FFF) != 0x14)
    {
      break;
    }

    v2 += 16;
    if (v2 == 64)
    {
      return 0;
    }
  }

  return result;
}

uint64_t ppParam_ClearSequencerParameters(uint64_t a1)
{
  v2 = 0;
  while (1)
  {
    result = paramc_ParamRemove(*(a1 + 40), off_1E81A4D00[v2]);
    if ((result & 0x80000000) != 0 && (result & 0x1FFF) != 0x14)
    {
      break;
    }

    if (++v2 == 3)
    {
      return 0;
    }
  }

  return result;
}

uint64_t ppParam_ClearAllPPParameters(uint64_t a1)
{
  result = ppParam_ClearReadOutParameters(a1);
  if ((result & 0x80000000) == 0)
  {

    return ppParam_ClearSequencerParameters(a1);
  }

  return result;
}

uint64_t datac_ObjOpen(_WORD *a1, uint64_t a2, uint64_t *a3, int a4)
{
  v12 = 0;
  if (!a3 || (InitRsrcFunction(a1, a2, &v12) & 0x80000000) != 0)
  {
    v11 = -2147475449;
  }

  else
  {
    *a3 = 0;
    v8 = heap_Alloc(*(v12 + 8), 40);
    if (v8)
    {
      v9 = v8;
      result = 0;
      *(v9 + 32) = 0;
      *v9 = 0u;
      *(v9 + 16) = 0u;
      *v9 = a1;
      *(v9 + 8) = a2;
      *(v9 + 32) = a4;
      *a3 = v9;
      return result;
    }

    v11 = -2147475446;
  }

  return v11 | (a4 << 20);
}

uint64_t datac_ObjClose(uint64_t a1)
{
  v8 = 0;
  if (!a1)
  {
    return 2368741383;
  }

  if ((InitRsrcFunction(*a1, *(a1 + 8), &v8) & 0x80000000) != 0)
  {
    return (*(a1 + 32) << 20) | 0x80002007;
  }

  v2 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v3 = 0;
    v4 = 16;
    do
    {
      v5 = *(*(a1 + 24) + v4);
      if (v5)
      {
        heap_Free(*(v8 + 8), v5);
        v2 = *(a1 + 16);
      }

      ++v3;
      v4 += 32;
    }

    while (v3 < v2);
  }

  v6 = *(a1 + 24);
  if (v6)
  {
    heap_Free(*(v8 + 8), v6);
  }

  heap_Free(*(v8 + 8), a1);
  return 0;
}

double datac_RegisterBlock(uint64_t a1, int a2, int a3, int a4)
{
  v17 = 0;
  if (a1)
  {
    v4 = a3;
    if (a3)
    {
      v6 = a4;
      if (a4)
      {
        if ((InitRsrcFunction(*a1, *(a1 + 8), &v17) & 0x80000000) == 0)
        {
          v9 = *(a1 + 24);
          if (*(a1 + 16))
          {
            v10 = (v9 + 8);
            v11 = *(a1 + 16);
            while (1)
            {
              v12 = *v10;
              v10 += 16;
              if (v12 == a2)
              {
                break;
              }

              if (!--v11)
              {
                goto LABEL_13;
              }
            }
          }

          else
          {
            if (v9)
            {
LABEL_13:
              v13 = heap_Realloc(*(v17 + 8), v9, 32 * *(a1 + 16) + 32);
            }

            else
            {
              v13 = heap_Alloc(*(v17 + 8), 32);
            }

            if (v13)
            {
              *(a1 + 24) = v13;
              v14 = *(a1 + 16) + 1;
              *(a1 + 16) = v14;
              v15 = v13 + 32 * v14;
              result = 0.0;
              *(v15 - 32) = 0u;
              *(v15 - 16) = 0u;
              v16 = *(a1 + 24) + 32 * *(a1 + 16);
              *(v16 - 24) = a2;
              *(v16 - 22) = v4;
              *(v16 - 32) = v6;
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t datac_RequestBlock(uint64_t a1, int a2, unsigned int a3, void *a4)
{
  v18 = 0;
  if (!a1)
  {
    return 2368741383;
  }

  if (!a3 || !a4 || (InitRsrcFunction(*a1, *(a1 + 8), &v18) & 0x80000000) != 0)
  {
    goto LABEL_13;
  }

  *a4 = 0;
  v8 = *(a1 + 16);
  if (!*(a1 + 16))
  {
LABEL_9:
    v10 = *(a1 + 32);
    v11 = -2147475436;
    return v11 | (v10 << 20);
  }

  v9 = *(a1 + 24) + 16;
  while (*(v9 - 8) != a2)
  {
    v9 += 32;
    if (!--v8)
    {
      goto LABEL_9;
    }
  }

  if (*(v9 + 10) < a3)
  {
    v13 = *(v9 - 16);
    if (((v13 + a3) & 0x10000) != 0)
    {
LABEL_13:
      v10 = *(a1 + 32);
      v11 = -2147475449;
      return v11 | (v10 << 20);
    }

    v14 = v13 + v13 * (a3 / v13);
    v15 = *(v18 + 8);
    v16 = *(v9 - 6) * v14;
    if (*v9)
    {
      v17 = heap_Realloc(v15, *v9, v16 + 1);
    }

    else
    {
      v17 = heap_Alloc(v15, v16 + 1);
    }

    if (!v17)
    {
      v10 = *(a1 + 32);
      v11 = -2147475446;
      return v11 | (v10 << 20);
    }

    if (*v9 != v17)
    {
      *v9 = v17;
    }

    bzero((v17 + *(v9 - 6) * *(v9 + 8)), (v14 - *(v9 + 8)) * *(v9 - 6));
    *(v9 + 10) = v14;
  }

  result = 0;
  *a4 = v9 - 8;
  return result;
}

uint64_t bed_ObjOpen(_WORD *a1, uint64_t a2, uint64_t a3, int a4, uint64_t *a5, int a6)
{
  v18 = 0;
  if (!a3 || !a5 || (InitRsrcFunction(a1, a2, &v18) & 0x80000000) != 0)
  {
    v16 = -2147475449;
    return v16 | (a6 << 20);
  }

  *a5 = 0;
  v12 = heap_Alloc(*(v18 + 8), 40);
  if (!v12)
  {
    v16 = -2147475446;
    return v16 | (a6 << 20);
  }

  v13 = v12;
  *v12 = 0u;
  *(v12 + 16) = 0u;
  *(v12 + 32) = 0;
  *v12 = a1;
  *(v12 + 8) = a2;
  *(v12 + 16) = a3;
  *(v12 + 36) = a6;
  v14 = datac_RequestBlock(a3, a4, 1u, (v12 + 24));
  if ((v14 & 0x80000000) != 0)
  {
    v15 = v14;
    bed_ObjClose(v13);
  }

  else
  {
    v15 = 0;
    *a5 = v13;
  }

  return v15;
}

uint64_t bed_ObjClose(uint64_t a1)
{
  v1 = 2368741383;
  v4 = 0;
  if (a1 && (InitRsrcFunction(*a1, *(a1 + 8), &v4) & 0x80000000) == 0)
  {
    heap_Free(*(v4 + 8), a1);
    return 0;
  }

  return v1;
}

uint64_t bed_Goto(uint64_t a1, unsigned int a2)
{
  if (!a1)
  {
    return 2368741383;
  }

  v3 = *(*(a1 + 24) + 16);
  if ((a2 & 0x80000000) != 0)
  {
    v5 = v3 + a2;
    if (v5 >= 0)
    {
      result = 0;
      *(a1 + 32) = v5;
      return result;
    }
  }

  else if (v3 >= a2)
  {
    result = 0;
    *(a1 + 32) = a2;
    return result;
  }

  return (*(a1 + 36) << 20) | 0x8000200F;
}

uint64_t bed_GoForward(uint64_t a1, uint64_t (*a2)(uint64_t, unint64_t), uint64_t a3)
{
  result = 2368741383;
  if (a1 && a2)
  {
    v6 = *(a1 + 24);
    v7 = *(a1 + 32);
    v8 = *(v6 + 16);
    if (v7 < v8)
    {
      v10 = *(v6 + 8) + *(v6 + 2) * *(a1 + 32);
      do
      {
        v11 = a2(a3, v10);
        LOWORD(v7) = *(a1 + 32);
        v8 = *(v6 + 16);
        if (v11)
        {
          break;
        }

        LOWORD(v7) = v7 + 1;
        *(a1 + 32) = v7;
        v10 += *(v6 + 2);
      }

      while (v8 > v7);
    }

    if (v8 <= v7)
    {
      return (*(a1 + 36) << 20) | 0x80002014;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t bed_GoBackward(uint64_t a1, unsigned int (*a2)(uint64_t, unint64_t), uint64_t a3)
{
  if (!a1)
  {
    return 2368741383;
  }

  v5 = -2147475449;
  if (a2)
  {
    v7 = *(a1 + 24);
    v8 = *(a1 + 32);
    v9 = *(v7 + 16);
    if (v8 >= v9)
    {
      LOWORD(v8) = v9 - 1;
      *(a1 + 32) = v9 - 1;
    }

    v10 = *(v7 + 8) + *(v7 + 2) * v8;
    if (v8)
    {
      while (!a2(a3, v10))
      {
        v11 = *(a1 + 32) - 1;
        *(a1 + 32) = v11;
        v10 -= *(v7 + 2);
        if (!v11)
        {
          goto LABEL_11;
        }
      }

      if (*(a1 + 32))
      {
        return 0;
      }
    }

LABEL_11:
    if (a2(a3, v10))
    {
      return 0;
    }

    v5 = -2147475436;
  }

  return v5 | (*(a1 + 36) << 20);
}

uint64_t bed_FindForward(uint64_t a1, uint64_t (*a2)(uint64_t, unint64_t), uint64_t a3, _WORD *a4)
{
  if (!a1)
  {
    return 2368741383;
  }

  v6 = -2147475449;
  if (a2 && a4)
  {
    v8 = *(a1 + 24);
    v9 = *(a1 + 32);
    *a4 = v9;
    v10 = *(v8 + 16);
    if (v9 < v10)
    {
      v12 = *(v8 + 8) + *(v8 + 2) * v9;
      while (1)
      {
        v13 = a2(a3, v12);
        LOWORD(v9) = *a4;
        if (v13)
        {
          break;
        }

        LOWORD(v9) = v9 + 1;
        *a4 = v9;
        v12 += *(v8 + 2);
        v10 = *(v8 + 16);
        if (v10 <= v9)
        {
          goto LABEL_11;
        }
      }

      v10 = *(v8 + 16);
    }

LABEL_11:
    if (v10 > v9)
    {
      return 0;
    }

    v6 = -2147475436;
  }

  return v6 | (*(a1 + 36) << 20);
}

uint64_t bed_FindBackward(uint64_t a1, unsigned int (*a2)(uint64_t, unint64_t), uint64_t a3, _WORD *a4)
{
  if (!a1)
  {
    return 2368741383;
  }

  v6 = -2147475449;
  if (a2 && a4)
  {
    v9 = *(a1 + 24);
    v10 = *(a1 + 32);
    *a4 = v10;
    v11 = *(v9 + 8) + *(v9 + 2) * v10;
    if (v10)
    {
      while (!a2(a3, v11))
      {
        v12 = *a4 - 1;
        *a4 = v12;
        v11 -= *(v9 + 2);
        if (!v12)
        {
          goto LABEL_10;
        }
      }

      if (*a4)
      {
        return 0;
      }
    }

LABEL_10:
    if (a2(a3, v11))
    {
      return 0;
    }

    v6 = -2147475436;
  }

  return v6 | (*(a1 + 36) << 20);
}

uint64_t bed_GetcElem(uint64_t a1, _WORD *a2)
{
  if (!a1)
  {
    return 2368741383;
  }

  if (!a2)
  {
    return (*(a1 + 36) << 20) | 0x80002007;
  }

  result = 0;
  *a2 = *(*(a1 + 24) + 16);
  return result;
}

uint64_t bed_GetiElem(uint64_t a1, _WORD *a2)
{
  if (!a1)
  {
    return 2368741383;
  }

  if (!a2)
  {
    return (*(a1 + 36) << 20) | 0x80002007;
  }

  v2 = *(a1 + 32);
  if (v2 >= *(*(a1 + 24) + 16))
  {
    return (*(a1 + 36) << 20) | 0x8000200F;
  }

  result = 0;
  *a2 = v2;
  return result;
}

uint64_t bed_GetpElem(uint64_t a1, unsigned int a2, void *a3)
{
  if (!a1)
  {
    return 2368741383;
  }

  if (!a3)
  {
    return (*(a1 + 36) << 20) | 0x80002007;
  }

  if (a2 == 0xFFFF)
  {
    a2 = *(a1 + 32);
  }

  v3 = *(a1 + 24);
  if (a2 >= *(v3 + 16))
  {
    return (*(a1 + 36) << 20) | 0x8000200F;
  }

  result = 0;
  *a3 = *(v3 + 8) + *(v3 + 2) * a2;
  return result;
}

uint64_t bed_GetpBlock(uint64_t a1, void *a2)
{
  if (!a1)
  {
    return 2368741383;
  }

  if (!a2)
  {
    return (*(a1 + 36) << 20) | 0x80002007;
  }

  result = 0;
  *a2 = *(a1 + 24);
  return result;
}

uint64_t bed_IsCursorAtEnd(uint64_t a1, _DWORD *a2)
{
  if (!a1)
  {
    return 2368741383;
  }

  if (!a2)
  {
    return (*(a1 + 36) << 20) | 0x80002007;
  }

  result = 0;
  *a2 = *(a1 + 32) >= *(*(a1 + 24) + 16);
  return result;
}

uint64_t bed_Insert(uint64_t a1, void *__src, int a3)
{
  if (!a1)
  {
    return 2368741383;
  }

  if (!__src)
  {
    return (*(a1 + 36) << 20) | 0x80002007;
  }

  if (!a3)
  {
    return 0;
  }

  v6 = (a1 + 24);
  v7 = *(a1 + 24);
  v8 = v7[8];
  if (v8 + a3 > v7[9])
  {
    result = datac_RequestBlock(*(a1 + 16), *v7, (v8 + a3), (a1 + 24));
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    v7 = *v6;
    v8 = (*v6)[8];
  }

  v10 = *(a1 + 32);
  if (v10 < v8)
  {
    memmove((*(v7 + 1) + (v10 + a3) * v7[1]), (*(v7 + 1) + v7[1] * v10), v7[1] * (v8 - v10));
    v10 = *(a1 + 32);
  }

  memmove((*(v7 + 1) + v7[1] * v10), __src, v7[1] * a3);
  result = 0;
  v7[8] += a3;
  *(a1 + 32) += a3;
  return result;
}

uint64_t bed_Remove(uint64_t a1, unsigned int a2, unsigned int a3)
{
  if (!a1)
  {
    return 2368741383;
  }

  v5 = *(a1 + 24);
  v6 = *(v5 + 16);
  if (v6 <= a2)
  {
    return (*(a1 + 36) << 20) | 0x8000200F;
  }

  if (!a3)
  {
    return 0;
  }

  v7 = a3 + a2 <= v6 ? a3 : v6 - a2;
  v8 = a3 + a2 <= v6 ? (v6 - (a3 + a2)) : 0;
  v9 = a2 + v7;
  memmove((*(v5 + 8) + *(v5 + 2) * a2), (*(v5 + 8) + v9 * *(v5 + 2)), v8 * *(v5 + 2));
  *(v5 + 16) -= v7;
  v10 = *(a1 + 32);
  if (v10 <= a2)
  {
    return 0;
  }

  result = 0;
  if (v9 <= v10)
  {
    *(a1 + 32) = v10 - v7;
  }

  else
  {
    *(a1 + 32) = a2;
  }

  return result;
}

uint64_t isEsc(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, _WORD *a5)
{
  v6 = a4;
  v12 = 0;
  memset(v11, 0, sizeof(v11));
  v7 = exePattern("esc", a1, a2, a3, a4, 0x2000, &v12, v11, &v10, 0x3E7u);
  result = 0;
  if ((v7 & 0x80000000) == 0)
  {
    if (v12)
    {
      v9 = LODWORD(v11[0]) == v6;
    }

    else
    {
      v9 = 0;
    }

    if (v9)
    {
      *a5 = WORD2(v11[0]) - v6;
      return 1;
    }
  }

  return result;
}

uint64_t exePattern(const char *a1, uint64_t a2, char *a3, unsigned int a4, uint64_t a5, uint64_t a6, _DWORD *a7, uint64_t a8, _DWORD *a9, unsigned __int16 a10)
{
  v60 = *MEMORY[0x1E69E9840];
  log_OutText(*(*a2 + 32), "PP", 4, 0, "exePattern for pattern: %s", a1);
  *a7 = 0;
  v18 = *(*(a2 + 8) + 8);
  if (a10 == 999)
  {
    v19 = *(v18 + 48);
    if (!*(v18 + 48))
    {
      return 0;
    }

    for (i = *(v18 + 56); strcmp(*(i + 16), a1); i += 24)
    {
      if (!--v19)
      {
        return 0;
      }
    }
  }

  else
  {
    i = *(v18 + 40) + 24 * a10 + 8;
  }

  v21 = *i;
  if (!*i)
  {
    return 0;
  }

  if (*(a2 + 48) >= a4)
  {
    v22 = a4;
  }

  else
  {
    v22 = *(a2 + 48);
  }

  *&v23 = -1;
  *(&v23 + 1) = -1;
  v35 = v23;
  v36 = v23;
  v37 = v23;
  v38 = v23;
  v39 = v23;
  v40 = v23;
  v41 = v23;
  v42 = v23;
  v43 = v23;
  v44 = v23;
  v45 = v23;
  v46 = v23;
  v47 = v23;
  v48 = v23;
  v49 = v23;
  v50 = v23;
  v51 = v23;
  v52 = v23;
  v53 = v23;
  v54 = v23;
  v55 = v23;
  v56 = v23;
  v57 = v23;
  v58 = v23;
  v59 = v23;
  v24 = nuance_pcre_exec(*(a2 + 24), *(a2 + 32), v21, 0, a3, v22, a5, a6, &v35, 100);
  if ((v24 & 0x80000000) == 0)
  {
    if (v24)
    {
      *a8 = v35;
      v26 = v36;
      v25 = DWORD1(v36);
      *(a8 + 16) = v36;
      *(a8 + 20) = v25;
      if (v26 == -1 && v25 == -1)
      {
        v27 = DWORD2(v36);
        if (DWORD2(v36) != -1)
        {
          v28 = HIDWORD(v36);
          if (HIDWORD(v36) != -1)
          {
            *a9 = 1;
            *(a8 + 16) = v27;
            *(a8 + 20) = v28;
          }
        }
      }

      v29 = 0;
      *a7 = 1;
      return v29;
    }

    return 0;
  }

  v30 = nuance_pcre_ErrorToLhError(v24);
  v29 = v30;
  if (v30 >> 20 == 2213)
  {
    v31 = v30 & 0x1FFF;
    if (v31 == 10)
    {
      log_OutPublic(*(*a2 + 32), "PP", 11002, 0, v33, v34);
      return v29;
    }

    if (v31 != 7778)
    {
      if (v31 != 20)
      {
        log_OutPublic(*(*a2 + 32), "PP", 11027, "%s%x");
        return v29;
      }

      return 0;
    }
  }

  return v29;
}

uint64_t isEscOrPartialEsc(uint64_t a1, char *a2, unsigned int a3, uint64_t a4, _WORD *a5)
{
  v6 = a4;
  v12 = 0;
  memset(v11, 0, sizeof(v11));
  v7 = exePattern("esc", a1, a2, a3, a4, 40960, &v12, v11, &v10, 0x3E7u);
  if ((v7 & 0x1FFF) == 0x1E62)
  {
    return 2;
  }

  v9 = v7;
  result = 0;
  if ((v9 & 0x80000000) == 0 && v12 && LODWORD(v11[0]) == v6)
  {
    *a5 = WORD2(v11[0]) - v6;
    return 1;
  }

  return result;
}

uint64_t escseqm_str2enumMapping(void *a1, uint64_t a2)
{
  v2 = a1[1];
  v3 = *(v2 + 8);
  if (!*(v3 + 64))
  {
    return 0;
  }

  v6 = 0;
  v7 = *(a2 + 8);
  while (1)
  {
    v8 = *(v3 + 72) + 16 * v6;
    if (*(v7 + 20) == *v8)
    {
      break;
    }

LABEL_10:
    ++v6;
    v3 = *(v2 + 8);
    if (v6 >= *(v3 + 64))
    {
      return 0;
    }
  }

  v9 = *(v7 + 40);
  if (!*(v8 + 4))
  {
LABEL_9:
    heap_Free(*(*a1 + 8), v9);
    *(*(a2 + 8) + 40) = 0;
    v7 = *(a2 + 8);
    *(v7 + 20) = 0;
    v2 = a1[1];
    goto LABEL_10;
  }

  v10 = 0;
  v11 = 16 * *(v8 + 4);
  while (!v9 || strcmp(*(*(v8 + 8) + v10), v9))
  {
    v10 += 16;
    if (v11 == v10)
    {
      goto LABEL_9;
    }
  }

  heap_Free(*(*a1 + 8), v9);
  *(*(a2 + 8) + 40) = 0;
  *(*(a2 + 8) + 40) = *(*(*(*(a1[1] + 8) + 72) + 16 * v6 + 8) + v10 + 8);
  return 0;
}

uint64_t escseqm_get_token(void *a1, char *a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v7 = a3;
  v86 = 0;
  v87 = 0;
  v84 = 0uLL;
  v85 = 0;
  *a5 = 0;
  v10 = exePattern("esc", a1, a2, a3, 0, 0, &v87, &v84, &v86, 0x3E7u);
  if ((v10 & 0x80000000) != 0 || !v87)
  {
    return v10;
  }

  v12 = v84;
  v11 = DWORD1(v84);
  v13 = exePattern("enhancedescseq", a1, a2, v7, DWORD1(v84), 16, &v87, &v84, &v86, 0x3E7u);
  if ((v13 & 0x80000000) != 0)
  {
    return v13;
  }

  if (v87 != 1)
  {
    v10 = exePattern("esctoi", a1, a2, v7, v11, 16, &v87, &v84, &v86, 0x3E7u);
    if ((v10 & 0x80000000) != 0 || v87 != 1)
    {
      return v10;
    }

    v31 = *(a4 + 8);
    v32 = DWORD1(v84);
    *(v31 + 20) = 7;
    *(v31 + 24) = v12;
    *(v31 + 28) = v32 - v12;
    *(v31 + 32) = v12;
    *(v31 + 36) = v12;
    if (*(*(a1[1] + 8) + 64))
    {
      *(v31 + 40) = 0;
      if (*(&v84 + 1) != -1)
      {
        v33 = *(*a1 + 8);
        v34 = a2[SDWORD2(v84)];
        if (v34 <= 0x5D)
        {
          if (v34 == 43)
          {
            v35 = &unk_1C37BE8E0;
            goto LABEL_78;
          }

          if (v34 == 62)
          {
            v35 = &unk_1C37BE8E4;
            goto LABEL_78;
          }
        }

        else
        {
          switch(v34)
          {
            case '^':
              v35 = "diacritized";
              goto LABEL_78;
            case 'h':
              v35 = "hil";
              goto LABEL_78;
            case 'j':
              v35 = "jeita";
LABEL_78:
              v56 = strlen(v35);
              *(*(a4 + 8) + 40) = heap_Calloc(v33, 1, (v56 + 1));
              v57 = *(*(a4 + 8) + 40);
              if (!v57)
              {
                return 2147491850;
              }

              strcpy(v57, v35);
              goto LABEL_80;
          }
        }

        v31 = *(a4 + 8);
LABEL_83:
        *(v31 + 20) = 0;
        return v10;
      }
    }

    else
    {
      v45 = a2[SDWORD2(v84)];
      if (v45 <= 0x5D)
      {
        if (v45 != 43)
        {
          if (v45 != 62)
          {
            goto LABEL_83;
          }

          v45 = 16;
        }
      }

      else
      {
        switch(v45)
        {
          case '^':
            v45 = 60;
            break;
          case 'h':
            v45 = 108;
            break;
          case 'j':
            break;
          default:
            goto LABEL_83;
        }
      }

      *(v31 + 40) = v45;
    }

LABEL_80:
    *a5 = 2;
    return v10;
  }

  v80 = v12;
  v79 = a5;
  v82 = DWORD1(v84);
  *v83 = v85;
  v89 = 0;
  v88 = 0;
  v15 = DWORD2(v84);
  v14 = HIDWORD(v84);
  v81 = a4;
  *(*(a4 + 8) + 20) = 0;
  v16 = a1[1];
  v17 = *(v16 + 8);
  if (*(v17 + 4))
  {
    v18 = 0;
    v19 = 0;
    v20 = (v14 - v15);
    while (1)
    {
      v21 = *(v17 + 8);
      if (strlen(*(v21 + v18)) == v20 && *(v21 + v18 + 8) == 1)
      {
        v22 = LH_strnicmp(*(v21 + v18), &a2[v15], v20);
        v16 = a1[1];
        if (!v22)
        {
          break;
        }
      }

      ++v19;
      v17 = *(v16 + 8);
      v18 += 24;
      if (v19 >= *(v17 + 4))
      {
        goto LABEL_11;
      }
    }

    v46 = *(*(v16 + 8) + 8) + v18;
    v47 = *(v81 + 8);
    v49 = *(v46 + 12);
    v48 = *(v46 + 16);
    *(v47 + 20) = v49;
    *v81 = 0;
    if (v48 != 9999)
    {
      *(v47 + 40) = v48;
      *v81 = 1;
    }
  }

LABEL_11:
  v23 = v81;
  v24 = *(v81 + 8);
  v25 = v80;
  v24[6] = v80;
  v24[7] = v82 - v80;
  v24[8] = v80;
  v24[9] = v80;
  v26 = v24[5];
  if (v26 == 32)
  {
    if (getTrueEnd(a1, a2, v7, v83[0], &v83[1], 32, &v88))
    {
      v27 = *(v81 + 8);
      v28 = v83[1];
      v29 = v83[1] - v80 + 1;
      v27[6] = v80;
      v27[7] = v29;
      v27[8] = v80;
      v27[9] = v80;
      *v79 = 2;
      v10 = 0;
      if (v83[0] == v28)
      {
        v30 = *(a1 + 14) == 0;
        *(a1 + 14) = v30;
        v27[10] = v30;
      }

      else
      {
        v27[5] = 0;
      }

      goto LABEL_59;
    }

LABEL_54:
    v10 = 0;
    goto LABEL_59;
  }

  v36 = v79;
  if (v83[0] == v83[1])
  {
    if (v26 == 2)
    {
LABEL_26:
      v24[10] = 0;
      setDefaultArgIfAny(a1, v81);
LABEL_27:
      v10 = 0;
      goto LABEL_58;
    }

    v50 = *(a1[1] + 8);
    v51 = *(v50 + 16);
    if (*(v50 + 16))
    {
      v52 = *(v50 + 24);
      do
      {
        v53 = *v52;
        v52 += 3;
        if (v53 == v26)
        {
          goto LABEL_26;
        }
      }

      while (--v51);
    }

    if (!marker_hasNonConstCharPtrArg(v24[5]))
    {
      goto LABEL_27;
    }

    v13 = checkForDefaultArgs(a1, v81, &v89 + 1);
    *v79 = 2;
    if ((v13 & 0x80000000) == 0)
    {
      goto LABEL_54;
    }

    return v13;
  }

  v90 = 0;
  if (!getTrueEnd(a1, a2, v7, v83[0], &v83[1], v26, &v90))
  {
    v38 = 0;
    v89 = 1;
    goto LABEL_56;
  }

  v37 = v83[1];
  v38 = v83[1] + 1;
  if (!v83[1])
  {
    goto LABEL_36;
  }

  v39 = 0;
  v40 = a2 - 1;
  while (1)
  {
    v41 = v40[v83[1]];
    v42 = v41 > 0x20;
    v43 = (1 << v41) & 0x100002600;
    if (v42 || v43 == 0)
    {
      break;
    }

    --v40;
    if (v83[1] == ++v39)
    {
      goto LABEL_36;
    }
  }

  v58 = v83[1] - v39;
  if (v83[1] - v39 <= v83[0])
  {
LABEL_36:
    if (marker_hasNonConstCharPtrArg(*(*(v81 + 8) + 20)) || !*(*(v81 + 8) + 20))
    {
      v10 = checkForDefaultArgs(a1, v81, &v89 + 1);
      goto LABEL_38;
    }

    HIDWORD(v89) = setDefaultArgIfAny(a1, v81);
    if (!HIDWORD(v89))
    {
      HIDWORD(v89) = *(*(v81 + 8) + 20) == 13;
    }

    goto LABEL_56;
  }

  v59 = *(*(v81 + 8) + 20);
  v60 = v90;
  if (v59 == 26 && v90 != 0)
  {
    v13 = parseStringArg(a1, v81, a2, v83[0], v90, &v89 + 1, 0);
    if ((v13 & 0x80000000) != 0)
    {
      return v13;
    }

    v10 = parseStringArg(a1, v81, a2, v60 + 1, v37 - v39, &v89 + 1, 1);
    goto LABEL_100;
  }

  v62 = *(a1[1] + 8);
  v63 = *(v62 + 32);
  if (!*(v62 + 32))
  {
LABEL_94:
    v25 = v80;
    if (marker_hasNonConstCharPtrArg(v59))
    {
LABEL_95:
      v13 = parseStringArg(a1, v81, a2, v83[0], v37 - v39, &v89 + 1, 0);
      if ((v13 & 0x80000000) != 0)
      {
        return v13;
      }

      v67 = *(v81 + 8);
      if (!*(v67 + 20))
      {
        heap_Free(*(*a1 + 8), *(v67 + 40));
        *(*(v81 + 8) + 40) = 0;
      }

      goto LABEL_56;
    }

    v69 = *(*(v81 + 8) + 20);
    if (v69 == 2)
    {
      goto LABEL_112;
    }

    if (!v69)
    {
      goto LABEL_95;
    }

    v70 = *(a1[1] + 8);
    v71 = *(v70 + 16);
    if (*(v70 + 16))
    {
      v72 = *(v70 + 24);
      while (1)
      {
        v73 = *v72;
        v72 += 3;
        if (v73 == v69)
        {
          break;
        }

        if (!--v71)
        {
          goto LABEL_111;
        }
      }

LABEL_112:
      parseNumericArg(a1, v81, a2, v83[0], v37 - v39, &v89 + 1, &v89);
      goto LABEL_56;
    }

LABEL_111:
    HIDWORD(v89) = v69 == 13;
    LODWORD(v89) = 0;
    v36 = v79;
    v23 = v81;
    v25 = v80;
LABEL_56:
    v10 = 0;
    goto LABEL_57;
  }

  v64 = 0;
  v65 = *(v62 + 40);
  v66 = 16;
  while (*(v65 + v66 - 16) != v59)
  {
    ++v64;
    v66 += 24;
    if (v63 == v64)
    {
      goto LABEL_94;
    }
  }

  v93[0] = 0;
  memset(v92, 0, sizeof(v92));
  v10 = exePattern("dummy", a1, &a2[v83[0]], (LOWORD(v83[1]) - LOWORD(v83[0]) - v39), 0, 16, v93, v92, &v91, v64);
  if ((v10 & 0x80000000) == 0)
  {
    if (v93[0] != 1)
    {
      goto LABEL_120;
    }

    if (v37 + LODWORD(v92[0]) - v83[0] - HIDWORD(v92[0]) == v39)
    {
      HIDWORD(v89) = 1;
      v78 = v58;
      v68 = v83[0];
      goto LABEL_123;
    }

    if (*(*(v81 + 8) + 20) == 7 && (v78 = HIDWORD(v92[0]) - LODWORD(v92[0]) + v83[0], v68 = v78 + 1, v78 + 1 < v58) && utf8_BelongsToSet(8u, &a2[v83[0]], HIDWORD(v92[0]), HIDWORD(v92[0]) + 1))
    {
      do
      {
        if (!utf8_BelongsToSet(0, a2, v68, v68 + 1))
        {
          break;
        }

        v68 += utf8_determineUTF8CharLength(a2[v68]);
      }

      while (v68 < v58);
      if (v37 - v68 != v39)
      {
        v74 = (&v89 + 4);
LABEL_122:
        *v74 = 1;
        if (!HIDWORD(v89))
        {
          if (*v81 == 1)
          {
            v89 = 0x100000000;
          }

          goto LABEL_139;
        }

LABEL_123:
        v75 = *(*(*(a1[1] + 8) + 40) + v66);
        if (v75 == 1)
        {
          v13 = parseStringArg(a1, v81, a2, v83[0], v78, &v89 + 1, 0);
          v10 = 0;
          if ((v13 & 0x80000000) != 0)
          {
            return v13;
          }
        }

        else if (!v75)
        {
          *(*(v81 + 8) + 40) = a2[v83[0]];
        }

        if (v83[0] != v68 && v37 - v78 != v39)
        {
          v13 = parseStringArg(a1, v81, a2, v68, v37 - v39, &v89 + 1, 1);
          if ((v13 & 0x80000000) != 0)
          {
            return v13;
          }

          v10 = 0;
        }

        if (!HIDWORD(v89) && *(*(*(a1[1] + 8) + 40) + v66) == 1)
        {
          v76 = *(*(v81 + 8) + 40);
          if (v76)
          {
            heap_Free(*(*a1 + 8), v76);
            v23 = v81;
            *(*(v81 + 8) + 40) = 0;
            v36 = v79;
LABEL_100:
            v25 = v80;
LABEL_38:
            if ((v10 & 0x80000000) != 0)
            {
              return v10;
            }

LABEL_57:
            v54 = *(v23 + 8);
            v54[6] = v25;
            v54[7] = v38 - v25;
            v54[8] = v25;
            v54[9] = v25;
            if (!HIDWORD(v89))
            {
              v54[5] = 0;
              if (v89)
              {
LABEL_59:
                v55 = *(v23 + 8);
                if (*(v55 + 20) == 2)
                {
                  *(v55 + 20) = 3;
                }

                return v10;
              }
            }

LABEL_58:
            *v36 = 2;
            goto LABEL_59;
          }
        }

LABEL_139:
        v36 = v79;
        v23 = v81;
        goto LABEL_100;
      }

      v68 = v37 - v39;
    }

    else
    {
LABEL_120:
      v78 = v58;
      v68 = v83[0];
    }

    HIDWORD(v89) = 0;
    v74 = &v89;
    goto LABEL_122;
  }

  return v10;
}

uint64_t escseqm_ClassOpen(_WORD *a1, uint64_t a2, uint64_t **a3)
{
  v3 = 2147491850;
  v56 = 0;
  v55 = 0;
  if (!a3)
  {
    return 2147491847;
  }

  v5 = a2;
  v53 = 0;
  v54 = 0;
  inited = InitRsrcFunction(a1, a2, &v56);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  v8 = heap_Calloc(*(v56 + 8), 1, 16);
  if (v8)
  {
    v9 = v8;
    UInt = paramc_ParamGetUInt(*(v56 + 40), "ppmaxpcreframeblocks", &v55);
    v11 = v55;
    v12 = paramc_ParamGetUInt(*(v56 + 40), "ppnumframesinblock", &v55);
    v13 = v55;
    v14 = nuance_pcre_ObjOpen(a1, v5, &v53);
    if ((v14 & 0x80000000) != 0)
    {
      v3 = v14;
    }

    else
    {
      if (v12 < 0)
      {
        v15 = 50;
      }

      else
      {
        v15 = v13;
      }

      if (UInt < 0)
      {
        v16 = 30;
      }

      else
      {
        v16 = v11;
      }

      v17 = nuance_pcre_Init(v53, v54, v16, v15);
      v18 = v17;
      if ((v17 & 0x80000000) != 0)
      {
        v3 = v17;
      }

      else
      {
        v19 = v56;
        *v9 = v56;
        v20 = heap_Calloc(*(v19 + 8), 1, 96);
        v9[1] = v20;
        if (v20)
        {
          v21 = v20;
          v50 = v9;
          v22 = v56;
          v24 = v53;
          v23 = v54;
          v59 = 0;
          v58 = 0;
          __s2 = 0;
          paramc_ParamGetStr(*(v56 + 40), "__NUAN_alternative_esc_seq__", &__s2);
          *(v21 + 4) = 34;
          v25 = heap_Calloc(*(v22 + 8), 1, 816);
          *(v21 + 8) = v25;
          if (v25)
          {
            memcpy(v25, &g_pEscMappings, 0x330uLL);
            *(v21 + 16) = 9;
            v26 = heap_Calloc(*(v22 + 8), 9, 12);
            *(v21 + 24) = v26;
            if (v26)
            {
              v26[4] = xmmword_1C37BE890;
              v26[5] = unk_1C37BE8A0;
              *(v26 + 92) = unk_1C37BE8AC;
              *v26 = g_pEscNumericArgs;
              v26[1] = unk_1C37BE860;
              v26[2] = xmmword_1C37BE870;
              v26[3] = unk_1C37BE880;
              *(v21 + 48) = 6;
              v27 = heap_Calloc(*(v22 + 8), 6, 24);
              *(v21 + 56) = v27;
              if (v27)
              {
                v28 = 0;
                v29 = &off_1E81A5050;
                v51 = v21;
                do
                {
                  v30 = *(v29 - 1);
                  *(*(v21 + 56) + v28 + 16) = v30;
                  v31 = __s2;
                  if (__s2 && *__s2 && !strcmp(v30, "esc"))
                  {
                    v52 = *(v22 + 8);
                    v32 = *v29;
                    v33 = v23;
                    v34 = v24;
                    v35 = v22;
                    v36 = strlen(*v29);
                    v37 = v36 + strlen(v31);
                    v22 = v35;
                    v24 = v34;
                    v23 = v33;
                    v21 = v51;
                    v38 = heap_Calloc(v52, 1, v37 + 2);
                    if (!v38)
                    {
                      goto LABEL_36;
                    }

                    v39 = v38;
                    strcpy(v38, v32);
                    v39[strlen(v32) - 1] = 0;
                    *&v39[strlen(v39)] = 124;
                    v40 = strcat(v39, __s2);
                    *&v39[strlen(v40)] = 41;
                    *(*(v51 + 56) + v28) = nuance_pcre_compile(v24, v23, v39, 2048, &v59, &v58, 0);
                    heap_Free(*(v22 + 8), v39);
                  }

                  else
                  {
                    *(*(v21 + 56) + v28) = nuance_pcre_compile(v24, v23, *v29, 2048, &v59, &v58, 0);
                  }

                  v28 += 24;
                  v29 += 2;
                }

                while (v28 != 144);
                *(v21 + 32) = 3;
                v41 = heap_Calloc(*(v22 + 8), 3, 24);
                *(v21 + 40) = v41;
                if (v41)
                {
                  v42 = *(v21 + 56);
                  v43 = v41 + 8;
                  v44 = 3;
                  v45 = &byte_1C37BE8C0;
                  do
                  {
                    *(v43 + 8) = 1;
                    *(v43 - 8) = *(v45 - 1);
                    v46 = *v45;
                    v45 += 12;
                    *v43 = *(v42 + 24 * v46);
                    v43 += 24;
                    --v44;
                  }

                  while (v44);
                  *(v21 + 64) = 2;
                  v47 = heap_Calloc(*(v22 + 8), 1, 32);
                  *(v21 + 72) = v47;
                  if (v47)
                  {
                    *v47 = g_escStr2EnumMappings;
                    v47[1] = unk_1E81A50B8;
                    *(v21 + 80) = 5;
                    v48 = heap_Calloc(*(v22 + 8), 1, 120);
                    *(v21 + 88) = v48;
                    if (v48)
                    {
                      *(v48 + 64) = xmmword_1E81A5108;
                      *(v48 + 80) = unk_1E81A5118;
                      *(v48 + 96) = xmmword_1E81A5128;
                      *(v48 + 112) = &g_escStr2StrMappings_mkEnumList_moderate;
                      *v48 = g_escStr2StrMappings;
                      *(v48 + 16) = *&off_1E81A50D8;
                      *(v48 + 32) = xmmword_1E81A50E8;
                      *(v48 + 48) = *&off_1E81A50F8;
                      *v21 = 1;
                      *a3 = v50;
LABEL_38:
                      nuance_pcre_DeInit(v53, v54);
                      nuance_pcre_ObjClose(v53, v54);
                      return v18;
                    }
                  }
                }
              }
            }
          }

LABEL_36:
          v3 = 2147491850;
        }
      }
    }

    escseqm_ClassClose(*a3);
    v18 = v3;
    goto LABEL_38;
  }

  return 10;
}